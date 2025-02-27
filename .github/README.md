# DevilutionX (MiyooCFW)

Port of Diablo and Hellfire that strives to make it simple to run the game while providing engine improvements, bug fixes, and some optional quality of life features.

## Cross-Compile for ARM

**Build target via Docker:**

```
mkdir build
cmake -S . -B build \
		-DTARGET_PLATFORM=miyoo \
		-DCMAKE_C_COMPILER=arm-linux-gcc \
		-DCMAKE_CXX_COMPILER=arm-linux-g++ \
		-DCMAKE_BUILD_TYPE=Release \
		-DBUILD_TESTING=OFF \
		-DCMAKE_FIND_ROOT_PATH="${SYSROOT}"
make -j$(nproc) -C build
```

**Generate IPK package**

requires `smpq` tool from e.g. APT if there is no `spawn.mpq` in TOPDIR
also for unpacking you'll need [unpack_and_minify_mpq](https://github.com/diasurgical/devilutionx-mpq-tools) tool

```
export ASSETSDIR="$(mktemp -d)"
test -e spawn.mpq || wget http://ftp.blizzard.com/pub/demos/diablosw.exe
md5sum -c diablosw.hash && smpq -x diablosw.exe spawn.mpq || rm diablosw.exe
! test -f spawn.mpq && echo "WARNING: Couldn't locate\\download spawn.mpq file, for SHAREWARE data" || \
unpack_and_minify_mpq spawn.mpq --output-dir $ASSETSDIR/ && echo "INFO: Succesfuly unpacked 'spawn.mpq' data"
cp -r build/assets $ASSETSDIR
gm2xpkg -i -c -q -f Packaging/miyoo/pkg.cfg
```

**Optimizng build with PGO**

- to generate profile add to cmake options:
```
		-DDEVILUTIONX_PROFILE_GENERATE=ON \
		-DDEVILUTIONX_PROFILE_PATH="/mnt/profile"
```

- place profiling data in TOPDIR and use:
```
		-DDEVILUTIONX_PROFILE_USE=ON \
		-DDEVILUTIONX_PROFILE_PATH="${PWD}/profile"
```

pre-made PGO data can be found at `Packaging/miyoo/profile-${LIBC}` dir

## Installing

You will need alongside `devilutionx` binary following data:
- `assets/` dir
- unpacked MPQ from shareware `spawn.mpq` archive or from OE `DIABDAT.MPQ` with game assets see [devilutionx-mpq-tools](https://github.com/diasurgical/devilutionx-mpq-tools)