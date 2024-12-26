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
		-DCMAKE_FIND_ROOT_PATH="${SYSROOT}" \
		-DCMAKE_CXX_FLAGS="-D__MIYOO__" \
		-DCMAKE_C_FLAGS="-D__MIYOO__"
make -j$(nproc) -C build
```

## Installing

You will need alongside `devilutionx` binary following data:
- `assets/` dir
- `spawn.mpq` from shareware ver. or `DIABDAT.MPQ` from OE game