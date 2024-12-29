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

```
export ASSETSDIR="$(mktemp -d)"
test -e spawn.mpq || wget https://github.com/diasurgical/devilutionx-assets/releases/latest/download/spawn.mpq
cp spawn.mpq $ASSETSDIR
cp -r build/assets $ASSETSDIR
gm2xpkg -i -c -q -f Packaging/miyoo/pkg.cfg
```

## Installing

You will need alongside `devilutionx` binary following data:
- `assets/` dir
- `spawn.mpq` from shareware ver. or `DIABDAT.MPQ` from OE game