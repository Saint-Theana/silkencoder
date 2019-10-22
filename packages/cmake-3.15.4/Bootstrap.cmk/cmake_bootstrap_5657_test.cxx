
#include <iostream>
#include <memory>
#include <unordered_map>

#if __cplusplus < 201103L
#error "Compiler is not in a mode aware of C++11."
#endif

#if defined(_AIX) && defined(__GNUC__) && !defined(_THREAD_SAFE)
#error "On AIX with GNU we need the -pthread flag."
#endif

#if defined(__SUNPRO_CC) && __SUNPRO_CC < 0x5140
#error "SunPro <= 5.13 mode not supported due to bug in move semantics."
#endif

class Class
{
public:
  int Get() const { return this->Member; }
private:
  int Member = 1;
};
int main()
{
  auto const c = std::unique_ptr<Class>(new Class);
  std::cout << c->Get() << std::endl;
  return 0;
}

