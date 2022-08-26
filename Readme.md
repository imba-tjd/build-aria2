# Build aria2

This repo builds [aria2](https://github.com/aria2/aria2) targeting Windows with minimal dependencies.

## Remarks

* Failed to dynamic link: ``CXXLD aria2c.exe /usr/bin/x86_64-w64-mingw32-ld: ./.libs/libaria2.a(ConsoleStatCalc.o):ConsoleStatCalc.cc:(.rdata$_ZTVN5aria218ColorizedStreamBufE[_ZTVN5aria218ColorizedStreamBufE]+0x38): undefined reference to `std::basic_streambuf<char, std::char_traits<char> >::seekpos(std::fpos<_Mbstatet>, std::_Ios_Openmode)'``
* Static link with ucrt: the file size is 182MB
* Failed to build with `-flto`

## Reference

* https://github.com/aria2/aria2/blob/master/Dockerfile.mingw
* https://github.com/aria2/aria2/blob/master/mingw-config
