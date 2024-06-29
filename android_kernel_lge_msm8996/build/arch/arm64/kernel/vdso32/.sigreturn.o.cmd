cmd_arch/arm64/kernel/vdso32/sigreturn.o := ccache /home/rex/toolchains/arm-eabi/bin/arm-eabi-gcc -Wp,-MD,arch/arm64/kernel/vdso32/.sigreturn.o.d -D__KERNEL__ -nostdinc -isystem /home/rex/toolchains/arm-eabi/bin/../lib/gcc/arm-eabi/14.0.0/include -I../arch/arm64/include -Iarch/arm64/include/generated/uapi -Iarch/arm64/include/generated  -I../include -Iinclude -I../arch/arm64/include/uapi -Iarch/arm64/include/generated/uapi -I../include/uapi -Iinclude/generated/uapi -include ../include/linux/kconfig.h -fno-PIE -fno-dwarf2-cfi-asm -mabi=aapcs-linux -mfloat-abi=soft -mlittle-endian -fPIC -fno-builtin -fno-stack-protector -DDISABLE_BRANCH_PROFILING -march=armv8-a -D__LINUX_ARM_ARCH__=8 -D__ASSEMBLY__ -c -o arch/arm64/kernel/vdso32/sigreturn.o ../arch/arm64/kernel/vdso32/sigreturn.S

source_arch/arm64/kernel/vdso32/sigreturn.o := ../arch/arm64/kernel/vdso32/sigreturn.S

deps_arch/arm64/kernel/vdso32/sigreturn.o := \
  ../include/linux/linkage.h \
  ../include/linux/compiler.h \
    $(wildcard include/config/sparse/rcu/pointer.h) \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/kasan.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
    $(wildcard include/config/kprobes.h) \
  ../include/linux/stringify.h \
  ../include/linux/export.h \
    $(wildcard include/config/have/underscore/symbol/prefix.h) \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/modversions.h) \
    $(wildcard include/config/unused/symbols.h) \
  ../arch/arm64/include/asm/linkage.h \
  ../arch/arm64/include/asm/asm-offsets.h \
  include/generated/asm-offsets.h \
  ../arch/arm64/include/asm/unistd32.h \

arch/arm64/kernel/vdso32/sigreturn.o: $(deps_arch/arm64/kernel/vdso32/sigreturn.o)

$(deps_arch/arm64/kernel/vdso32/sigreturn.o):
