## How to build

```
cd jni/
ndk-build APP_ABI="armeabi-v7a"
```

## How to run(run as root)

```
adb push libs/armeabi-v7a /data/local/tmp/hello/
adb shell
cd /data/local/tmp/hello/
chmod a+x *

./hello-world-ndk-src

or

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/data/local/tmp/hello
./hello-world-ndk-shared
```
