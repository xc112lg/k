	.arch armv8-a
	.file	"asm-offsets.c"
// GNU C89 (Eva GCC) version 14.0.0 20231029 (Bleeding Edge) (aarch64-elf)
//	compiled by GNU C version 13.2.1 20231011 (Red Hat 13.2.1-4), GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mgeneral-regs-only -mpc-relative-literal-loads -mabi=lp64 -Os -std=gnu90 -fno-strict-aliasing -fno-common -fno-pic -fno-asynchronous-unwind-tables -fno-delete-null-pointer-checks -fno-allow-store-data-races -fstack-protector-strong -fno-omit-frame-pointer -fno-optimize-sibling-calls -fno-var-tracking-assignments -fno-strict-overflow -fno-merge-all-constants -fmerge-constants -fstack-check=no -fconserve-stack
	.text
	// Start of user assembly
	.irp	num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30
	.equ	.L__reg_num_x\num, \num
	.endr
	.equ	.L__reg_num_xzr, 31

	.macro	mrs_s, rt, sreg
	.inst	0xd5200000|(\sreg)|(.L__reg_num_\rt)
	.endm

	.macro	msr_s, sreg, rt
	.inst	0xd5000000|(\sreg)|(.L__reg_num_\rt)
	.endm

	// End of user assembly
	.section	.text.startup,"ax",@progbits
	.align	2
	.global	main
	.type	main, %function
main:
// ../arch/arm64/kernel/asm-offsets.c:38:   DEFINE(TSK_ACTIVE_MM,		offsetof(struct task_struct, active_mm));
	// Start of user assembly
// 38 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->TSK_ACTIVE_MM 976 offsetof(struct task_struct, active_mm)"	//
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:39:   BLANK();
// 39 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->"
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:41:   DEFINE(TSK_TI_FLAGS,		offsetof(struct task_struct, thread_info.flags));
// 41 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->TSK_TI_FLAGS 0 offsetof(struct task_struct, thread_info.flags)"	//
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:42:   DEFINE(TSK_TI_PREEMPT,	offsetof(struct task_struct, thread_info.preempt_count));
// 42 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->TSK_TI_PREEMPT 24 offsetof(struct task_struct, thread_info.preempt_count)"	//
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:43:   DEFINE(TSK_TI_ADDR_LIMIT,	offsetof(struct task_struct, thread_info.addr_limit));
// 43 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->TSK_TI_ADDR_LIMIT 8 offsetof(struct task_struct, thread_info.addr_limit)"	//
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:44:   DEFINE(TSK_STACK,		offsetof(struct task_struct, stack));
// 44 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->TSK_STACK 40 offsetof(struct task_struct, stack)"	//
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:51:   DEFINE(TSK_TI_TTBR0,		offsetof(struct thread_info, ttbr0));
// 51 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->TSK_TI_TTBR0 16 offsetof(struct thread_info, ttbr0)"	//
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:53:   BLANK();
// 53 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->"
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:54:   DEFINE(THREAD_CPU_CONTEXT,	offsetof(struct task_struct, thread.cpu_context));
// 54 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->THREAD_CPU_CONTEXT 2288 offsetof(struct task_struct, thread.cpu_context)"	//
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:55:   BLANK();
// 55 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->"
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:56:   DEFINE(S_X0,			offsetof(struct pt_regs, regs[0]));
// 56 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X0 0 offsetof(struct pt_regs, regs[0])"	//
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:57:   DEFINE(S_X1,			offsetof(struct pt_regs, regs[1]));
// 57 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X1 8 offsetof(struct pt_regs, regs[1])"	//
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:58:   DEFINE(S_X2,			offsetof(struct pt_regs, regs[2]));
// 58 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X2 16 offsetof(struct pt_regs, regs[2])"	//
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:59:   DEFINE(S_X3,			offsetof(struct pt_regs, regs[3]));
// 59 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X3 24 offsetof(struct pt_regs, regs[3])"	//
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:60:   DEFINE(S_X4,			offsetof(struct pt_regs, regs[4]));
// 60 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X4 32 offsetof(struct pt_regs, regs[4])"	//
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:61:   DEFINE(S_X5,			offsetof(struct pt_regs, regs[5]));
// 61 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X5 40 offsetof(struct pt_regs, regs[5])"	//
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:62:   DEFINE(S_X6,			offsetof(struct pt_regs, regs[6]));
// 62 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X6 48 offsetof(struct pt_regs, regs[6])"	//
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:63:   DEFINE(S_X7,			offsetof(struct pt_regs, regs[7]));
// 63 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X7 56 offsetof(struct pt_regs, regs[7])"	//
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:64:   DEFINE(S_X8,			offsetof(struct pt_regs, regs[8]));
// 64 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X8 64 offsetof(struct pt_regs, regs[8])"	//
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:65:   DEFINE(S_X10,			offsetof(struct pt_regs, regs[10]));
// 65 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X10 80 offsetof(struct pt_regs, regs[10])"	//
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:66:   DEFINE(S_X12,			offsetof(struct pt_regs, regs[12]));
// 66 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X12 96 offsetof(struct pt_regs, regs[12])"	//
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:67:   DEFINE(S_X14,			offsetof(struct pt_regs, regs[14]));
// 67 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X14 112 offsetof(struct pt_regs, regs[14])"	//
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:68:   DEFINE(S_X16,			offsetof(struct pt_regs, regs[16]));
// 68 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X16 128 offsetof(struct pt_regs, regs[16])"	//
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:69:   DEFINE(S_X18,			offsetof(struct pt_regs, regs[18]));
// 69 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X18 144 offsetof(struct pt_regs, regs[18])"	//
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:70:   DEFINE(S_X20,			offsetof(struct pt_regs, regs[20]));
// 70 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X20 160 offsetof(struct pt_regs, regs[20])"	//
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:71:   DEFINE(S_X22,			offsetof(struct pt_regs, regs[22]));
// 71 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X22 176 offsetof(struct pt_regs, regs[22])"	//
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:72:   DEFINE(S_X24,			offsetof(struct pt_regs, regs[24]));
// 72 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X24 192 offsetof(struct pt_regs, regs[24])"	//
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:73:   DEFINE(S_X26,			offsetof(struct pt_regs, regs[26]));
// 73 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X26 208 offsetof(struct pt_regs, regs[26])"	//
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:74:   DEFINE(S_X28,			offsetof(struct pt_regs, regs[28]));
// 74 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X28 224 offsetof(struct pt_regs, regs[28])"	//
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:75:   DEFINE(S_LR,			offsetof(struct pt_regs, regs[30]));
// 75 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_LR 240 offsetof(struct pt_regs, regs[30])"	//
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:76:   DEFINE(S_SP,			offsetof(struct pt_regs, sp));
// 76 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_SP 248 offsetof(struct pt_regs, sp)"	//
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:78:   DEFINE(S_COMPAT_SP,		offsetof(struct pt_regs, compat_sp));
// 78 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_COMPAT_SP 104 offsetof(struct pt_regs, compat_sp)"	//
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:80:   DEFINE(S_PSTATE,		offsetof(struct pt_regs, pstate));
// 80 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_PSTATE 264 offsetof(struct pt_regs, pstate)"	//
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:81:   DEFINE(S_PC,			offsetof(struct pt_regs, pc));
// 81 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_PC 256 offsetof(struct pt_regs, pc)"	//
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:82:   DEFINE(S_ORIG_X0,		offsetof(struct pt_regs, orig_x0));
// 82 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_ORIG_X0 272 offsetof(struct pt_regs, orig_x0)"	//
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:83:   DEFINE(S_SYSCALLNO,		offsetof(struct pt_regs, syscallno));
// 83 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_SYSCALLNO 280 offsetof(struct pt_regs, syscallno)"	//
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:84:   DEFINE(S_ORIG_ADDR_LIMIT,	offsetof(struct pt_regs, orig_addr_limit));
// 84 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_ORIG_ADDR_LIMIT 288 offsetof(struct pt_regs, orig_addr_limit)"	//
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:85:   DEFINE(S_FRAME_SIZE,		sizeof(struct pt_regs));
// 85 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_FRAME_SIZE 304 sizeof(struct pt_regs)"	//
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:86:   BLANK();
// 86 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->"
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:88:   DEFINE(COMPAT_SIGFRAME_REGS_OFFSET,
// 88 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->COMPAT_SIGFRAME_REGS_OFFSET 32 offsetof(struct compat_sigframe, uc) + offsetof(struct compat_ucontext, uc_mcontext) + offsetof(struct compat_sigcontext, arm_r0)"	//
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:92:   DEFINE(COMPAT_RT_SIGFRAME_REGS_OFFSET,
// 92 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->COMPAT_RT_SIGFRAME_REGS_OFFSET 160 offsetof(struct compat_rt_sigframe, sig) + offsetof(struct compat_sigframe, uc) + offsetof(struct compat_ucontext, uc_mcontext) + offsetof(struct compat_sigcontext, arm_r0)"	//
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:97:   BLANK();
// 97 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->"
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:99:   DEFINE(MM_CONTEXT_ID,		offsetof(struct mm_struct, context.id.counter));
// 99 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->MM_CONTEXT_ID 720 offsetof(struct mm_struct, context.id.counter)"	//
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:100:   BLANK();
// 100 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->"
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:101:   DEFINE(VMA_VM_MM,		offsetof(struct vm_area_struct, vm_mm));
// 101 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->VMA_VM_MM 64 offsetof(struct vm_area_struct, vm_mm)"	//
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:102:   DEFINE(VMA_VM_FLAGS,		offsetof(struct vm_area_struct, vm_flags));
// 102 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->VMA_VM_FLAGS 80 offsetof(struct vm_area_struct, vm_flags)"	//
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:103:   BLANK();
// 103 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->"
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:104:   DEFINE(VM_EXEC,	       	VM_EXEC);
// 104 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->VM_EXEC 4 VM_EXEC"	//
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:105:   BLANK();
// 105 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->"
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:106:   DEFINE(PAGE_SZ,	       	PAGE_SIZE);
// 106 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->PAGE_SZ 4096 PAGE_SIZE"	//
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:107:   BLANK();
// 107 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->"
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:108:   DEFINE(DMA_BIDIRECTIONAL,	DMA_BIDIRECTIONAL);
// 108 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->DMA_BIDIRECTIONAL 0 DMA_BIDIRECTIONAL"	//
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:109:   DEFINE(DMA_TO_DEVICE,		DMA_TO_DEVICE);
// 109 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->DMA_TO_DEVICE 1 DMA_TO_DEVICE"	//
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:110:   DEFINE(DMA_FROM_DEVICE,	DMA_FROM_DEVICE);
// 110 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->DMA_FROM_DEVICE 2 DMA_FROM_DEVICE"	//
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:111:   BLANK();
// 111 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->"
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:113:   DEFINE(CPU_BOOT_STACK,	offsetof(struct secondary_data, stack));
// 113 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->CPU_BOOT_STACK 0 offsetof(struct secondary_data, stack)"	//
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:114:   DEFINE(CPU_BOOT_TASK,		offsetof(struct secondary_data, task));
// 114 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->CPU_BOOT_TASK 8 offsetof(struct secondary_data, task)"	//
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:115:   BLANK();
// 115 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->"
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:129:   DEFINE(CPU_SUSPEND_SZ,	sizeof(struct cpu_suspend_ctx));
// 129 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->CPU_SUSPEND_SZ 112 sizeof(struct cpu_suspend_ctx)"	//
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:130:   DEFINE(CPU_CTX_SP,		offsetof(struct cpu_suspend_ctx, sp));
// 130 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->CPU_CTX_SP 96 offsetof(struct cpu_suspend_ctx, sp)"	//
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:131:   DEFINE(MPIDR_HASH_MASK,	offsetof(struct mpidr_hash, mask));
// 131 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->MPIDR_HASH_MASK 0 offsetof(struct mpidr_hash, mask)"	//
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:132:   DEFINE(MPIDR_HASH_SHIFTS,	offsetof(struct mpidr_hash, shift_aff));
// 132 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->MPIDR_HASH_SHIFTS 8 offsetof(struct mpidr_hash, shift_aff)"	//
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:133:   DEFINE(SLEEP_STACK_DATA_SYSTEM_REGS,	offsetof(struct sleep_stack_data, system_regs));
// 133 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->SLEEP_STACK_DATA_SYSTEM_REGS 0 offsetof(struct sleep_stack_data, system_regs)"	//
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:134:   DEFINE(SLEEP_STACK_DATA_CALLEE_REGS,	offsetof(struct sleep_stack_data, callee_saved_regs));
// 134 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->SLEEP_STACK_DATA_CALLEE_REGS 112 offsetof(struct sleep_stack_data, callee_saved_regs)"	//
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:136:   DEFINE(ARM_SMCCC_RES_X0_OFFS,	offsetof(struct arm_smccc_res, a0));
// 136 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->ARM_SMCCC_RES_X0_OFFS 0 offsetof(struct arm_smccc_res, a0)"	//
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:137:   DEFINE(ARM_SMCCC_RES_X2_OFFS,	offsetof(struct arm_smccc_res, a2));
// 137 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->ARM_SMCCC_RES_X2_OFFS 16 offsetof(struct arm_smccc_res, a2)"	//
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:138:   BLANK();
// 138 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->"
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:139:   DEFINE(HIBERN_PBE_ORIG,	offsetof(struct pbe, orig_address));
// 139 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->HIBERN_PBE_ORIG 8 offsetof(struct pbe, orig_address)"	//
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:140:   DEFINE(HIBERN_PBE_ADDR,	offsetof(struct pbe, address));
// 140 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->HIBERN_PBE_ADDR 0 offsetof(struct pbe, address)"	//
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:141:   DEFINE(HIBERN_PBE_NEXT,	offsetof(struct pbe, next));
// 141 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->HIBERN_PBE_NEXT 16 offsetof(struct pbe, next)"	//
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:142:   BLANK();
// 142 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->"
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:144:   DEFINE(TRAMP_VALIAS,		TRAMP_VALIAS);
// 144 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->TRAMP_VALIAS -274903089152 TRAMP_VALIAS"	//
// 0 "" 2
// ../arch/arm64/kernel/asm-offsets.c:147: }
	// End of user assembly
	mov	w0, 0	//,
	ret	
	.size	main, .-main
	.ident	"GCC: (Eva GCC) 14.0.0 20231029 (Bleeding Edge)"
