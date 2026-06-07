# Build aria2

This repo builds [aria2](https://github.com/aria2/aria2) targeting Windows with minimal dependencies.

## Remarks

* Failed to build with `-flto` in GitHub Actions. The log says gcc(13) has bugs.
* ucrt isn't available yet

## Reference

* https://github.com/aria2/aria2/blob/master/Dockerfile.mingw
* https://github.com/aria2/aria2/blob/master/mingw-config
