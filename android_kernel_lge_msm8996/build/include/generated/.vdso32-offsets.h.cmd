cmd_include/generated/vdso32-offsets.h := ccache /home/rex/toolchains/aarch64-elf/bin/aarch64-elf-nm arch/arm64/kernel/vdso32/vdso.so.dbg | ../arch/arm64/kernel/vdso32/../vdso/gen_vdso_offsets.sh | LC_ALL=C sort > include/generated/vdso32-offsets.h