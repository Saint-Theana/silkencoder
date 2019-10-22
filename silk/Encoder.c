//
// Created by 朱磊跃 on 2017/9/24.
//
#include <jni.h>


#include <SKP_Silk_SDK_API.h>
#include <malloc.h>
#include <sys/time.h>


#define TAG "SILK"
#define ERROR_BAD_VALUE -2
#define ERROR_INVALID_OPERATION -3

#define MAX_BYTES_PER_FRAME     1024
#define MAX_INPUT_FRAMES        5
#define FRAME_LENGTH_MS         20
#define MAX_API_FS_KHZ          48
#define MAX_AUDIO_FRAME_SIZE 192000

unsigned long GetHighResolutionTime() /* O: time in usec*/
{
    struct timeval tv;
    gettimeofday(&tv, 0);
    return (unsigned long) ((tv.tv_sec * 1000000) + (tv.tv_usec));
}

SKP_SILK_SDK_DecControlStruct decControl;
void *decState;

JNIEXPORT void JNICALL
Java_com_robot_SilkEncoder_pcm2silk(JNIEnv *env, jclass type,
                                                        jstring inputPath_, jint sampleRate,
                                                        jstring outputPath_) {
    
  unsigned long tottime, starttime;
    double    filetime;
    size_t    counter;
    SKP_int32 k, args, totPackets, totActPackets, ret;
    SKP_int16 nBytes;
    double    sumBytes, sumActBytes, avg_rate, act_rate, nrg;
    SKP_uint8 payload[ MAX_BYTES_PER_FRAME * MAX_INPUT_FRAMES ];
    SKP_int16 in[ FRAME_LENGTH_MS * MAX_API_FS_KHZ * MAX_INPUT_FRAMES ];
    
    FILE      *bitOutFile, *speechInFile;
    SKP_int32 encSizeBytes;
    void      *psEnc;
#ifdef _SYSTEM_IS_BIG_ENDIAN
    SKP_int16 nBytes_LE;
#endif
const char *speechInFileName = (*env)->GetStringUTFChars(env, inputPath_, 0);
    const char *bitOutFileName = (*env)->GetStringUTFChars(env, outputPath_, 0);
    /* default settings */
    SKP_int32 API_fs_Hz = 24000;
    SKP_int32 max_internal_fs_Hz = 0;
    SKP_int32 targetRate_bps = sampleRate;
    SKP_int32 smplsSinceLastPacket, packetSize_ms = 20;
    SKP_int32 frameSizeReadFromFile_ms = 20;
    SKP_int32 packetLoss_perc = 0;
#if LOW_COMPLEXITY_ONLY
    SKP_int32 complexity_mode = 0;
#else
    SKP_int32 complexity_mode = 2;
#endif
    SKP_int32 DTX_enabled = 0, INBandFEC_enabled = 0, quiet = 0, tencent = 0, tencent_amr = 0;
    SKP_SILK_SDK_EncControlStruct encControl; // Struct for input to encoder
    SKP_SILK_SDK_EncControlStruct encStatus;  // Struct for status of encoder
    
    /* get arguments */
  
    
    tencent=1;

    /* If no max internal is specified, set to minimum of API fs and 24 kHz */
    if( max_internal_fs_Hz == 0 ) {
        max_internal_fs_Hz = 24000;
        if( API_fs_Hz < max_internal_fs_Hz ) {
            max_internal_fs_Hz = API_fs_Hz;
        }
    }

    /* Print options */
    printf("********** Silk Encoder (Fixed Point) v %s ********************\n", SKP_Silk_SDK_get_version());
        printf("********** Compiled for %d bit cpu ******************************* \n", (int)sizeof(void*) * 8 );
        printf( "Input:                          %s\n",     speechInFileName );
        printf( "Output:                         %s\n",     bitOutFileName );
        printf( "API sampling rate:              %d Hz\n",  API_fs_Hz );
        printf( "Maximum internal sampling rate: %d Hz\n",  max_internal_fs_Hz );
        printf( "Packet interval:                %d ms\n",  packetSize_ms );
        printf( "Inband FEC used:                %d\n",     INBandFEC_enabled );
        printf( "DTX used:                       %d\n",     DTX_enabled );
        printf( "Complexity:                     %d\n",     complexity_mode );
        printf( "Target bitrate:                 %d bps\n", targetRate_bps );

    /* Open files */
    if( sizeof(speechInFileName) == 0 ) {
        
        return ;
    }
    speechInFile = fopen( speechInFileName, "rb" );
    if( speechInFile == NULL ) {
        
        return ;
    }
    bitOutFile = fopen( bitOutFileName, "wb" );
    if( bitOutFile == NULL ) {
        
        return ;
    }

    /* Add Silk header to stream */
    {
        static const char Tencent_amr_header[] = "#!AMR\n";
        static const char Tencent_header[] = "\x02";
        static const char Silk_header[] = "#!SILK_V3";

        if (tencent_amr)
            fwrite(Tencent_amr_header, sizeof(char), strlen(Tencent_amr_header), bitOutFile);
        
        if (tencent)
            fwrite(Tencent_header, sizeof(char), strlen(Tencent_header), bitOutFile);

        fwrite(Silk_header, sizeof(char), strlen(Silk_header), bitOutFile);
    }

    /* Create Encoder */
    ret = SKP_Silk_SDK_Get_Encoder_Size( &encSizeBytes );
    if( ret ) {
        
        return ;
    }

    psEnc = malloc( encSizeBytes );

    /* Reset Encoder */
    ret = SKP_Silk_SDK_InitEncoder( psEnc, &encStatus );
    if( ret ) {
        
        return ;
    }

    /* Set Encoder parameters */
    encControl.API_sampleRate        = API_fs_Hz;
    encControl.maxInternalSampleRate = max_internal_fs_Hz;
    encControl.packetSize            = ( packetSize_ms * API_fs_Hz ) / 1000;
    encControl.packetLossPercentage  = packetLoss_perc;
    encControl.useInBandFEC          = INBandFEC_enabled;
    encControl.useDTX                = DTX_enabled;
    encControl.complexity            = complexity_mode;
    encControl.bitRate               = ( targetRate_bps > 0 ? targetRate_bps : 0 );

    if( API_fs_Hz > MAX_API_FS_KHZ * 1000 || API_fs_Hz < 0 ) {
        
        return ;
    }

    tottime              = 0;
    totPackets           = 0;
    totActPackets        = 0;
    smplsSinceLastPacket = 0;
    sumBytes             = 0.0;
    sumActBytes          = 0.0;
    smplsSinceLastPacket = 0;
    
    while( 1 ) {
        /* Read input from file */
        counter = fread( in, sizeof( SKP_int16 ), ( frameSizeReadFromFile_ms * API_fs_Hz ) / 1000, speechInFile );
#ifdef _SYSTEM_IS_BIG_ENDIAN
        swap_endian( in, counter );
#endif
        if( ( SKP_int )counter < ( ( frameSizeReadFromFile_ms * API_fs_Hz ) / 1000 ) ) {
            break;
        }

        /* max payload size */
        nBytes = MAX_BYTES_PER_FRAME * MAX_INPUT_FRAMES;

        starttime = GetHighResolutionTime();

        /* Silk Encoder */
        ret = SKP_Silk_SDK_Encode( psEnc, &encControl, in, (SKP_int16)counter, payload, &nBytes );
        if( ret ) {
            
        }

        tottime += GetHighResolutionTime() - starttime;

        /* Get packet size */
        packetSize_ms = ( SKP_int )( ( 1000 * ( SKP_int32 )encControl.packetSize ) / encControl.API_sampleRate );

        smplsSinceLastPacket += ( SKP_int )counter;
        
        if( ( ( 1000 * smplsSinceLastPacket ) / API_fs_Hz ) == packetSize_ms ) {
            /* Sends a dummy zero size packet in case of DTX period  */
            /* to make it work with the decoder test program.        */
            /* In practice should be handled by RTP sequence numbers */
            totPackets++;
            sumBytes  += nBytes;
            nrg = 0.0;
            for( k = 0; k < ( SKP_int )counter; k++ ) {
                nrg += in[ k ] * (double)in[ k ];
            }
            if( ( nrg / ( SKP_int )counter ) > 1e3 ) {
                sumActBytes += nBytes;
                totActPackets++;
            }

            /* Write payload size */
#ifdef _SYSTEM_IS_BIG_ENDIAN
            nBytes_LE = nBytes;
            swap_endian( &nBytes_LE, 1 );
            fwrite( &nBytes_LE, sizeof( SKP_int16 ), 1, bitOutFile );
#else
            fwrite( &nBytes, sizeof( SKP_int16 ), 1, bitOutFile );
#endif

            /* Write payload */
            fwrite( payload, sizeof( SKP_uint8 ), nBytes, bitOutFile );

            smplsSinceLastPacket = 0;
        
            if( !quiet ) {
                fprintf( stderr, "\rPackets encoded:                %d", totPackets );
            }
        }
    }

    /* Write dummy because it can not end with 0 bytes */
    nBytes = -1;

    /* Write payload size */
    if (!tencent) {
       fwrite( &nBytes, sizeof( SKP_int16 ), 1, bitOutFile );
    }

    /* Free Encoder */
    free( psEnc );

    fclose( speechInFile );
    fclose( bitOutFile   );

    filetime  = totPackets * 1e-3 * packetSize_ms;
    avg_rate  = 8.0 / packetSize_ms * sumBytes       / totPackets;
    act_rate  = 8.0 / packetSize_ms * sumActBytes    / totActPackets;
    if( !quiet ) {
        printf( "\nFile length:                    %.3f s", filetime );
        printf( "\nTime for encoding:              %.3f s (%.3f%% of realtime)", 1e-6 * tottime, 1e-4 * tottime / filetime );
        printf( "\nAverage bitrate:                %.3f kbps", avg_rate  );
        printf( "\nActive bitrate:                 %.3f kbps", act_rate  );
        printf( "\n\n" );
    } else {
        /* print time and % of realtime */
        
        /* print average and active bitrates */
        
    }

    return ;
}



JNIEXPORT void JNICALL
Java_com_robot_SilkEncoder_ffmpegcmd(JNIEnv *env, jclass type,
        jobjectArray commands){
    int argc = (*env)->GetArrayLength(env,commands);
    char *argv[argc];
    int i;
    for (i = 0; i < argc; i++) {
        jstring js = (jstring) (*env)->GetObjectArrayElement(env,commands, i);
        argv[i] = (char *) (*env)->GetStringUTFChars(env,js, 0);
    }
    jxRun(argc,argv);
}

JNIEXPORT jstring JNICALL
Java_com_robot_SilkEncoder_ffmpegconfig(JNIEnv *env, jclass instance) {
    char info[10000] = {0};
    sprintf(info, "%s\n", avcodec_configuration());
    return (*env)->NewStringUTF(env,info);

}


//mp3转pcm


    
