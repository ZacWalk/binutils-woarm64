.*: Assembler messages:
.*:4: Error: .*
.*:6: Error: .*
.*:8: Error: .*
.*:10: Error: .*
.*:12: Error: .*
.*:14: Error: .*
.*:16: Error: .*
.*:18: Error: .*
.*:20: Error: .*
.*:22: Error: .*
.*:24: Error: .*
.*:26: Error: .*
.*:28: Error: .*
.*:30: Error: .*
.*:32: Error: .*
.*:34: Error: .*
.*:36: Error: .*
.*:38: Error: .*
.*:40: Error: .*
.*:42: Error: .*
.*:44: Error: .*
.*:46: Error: .*
.*:48: Error: .*
.*:50: Error: .*
.*:52: Error: .*
.*:54: Error: .*
.*:56: Error: .*
.*:58: Error: .*
.*:60: Error: .*
.*:62: Error: .*
.*:64: Error: .*
.*:66: Error: .*
GAS LISTING .*


[ 	]*1[ 	]+\.include "arch-10\.s"
[ 	]*1[ 	]+\# Test -march=
[ 	]*2[ 	]+\.text
[ 	]*3[ 	]+\# cmov feature 
[ 	]*4[ 	]+cmove	%eax,%ebx
[ 	]*5[ 	]+\# clflush
[ 	]*6[ 	]+clflush \(%eax\)
[ 	]*7[ 	]+\# SYSCALL
[ 	]*8[ 	]+syscall
[ 	]*9[ 	]+\# MMX
[ 	]*10[ 	]+paddb %mm4,%mm3
[ 	]*11[ 	]+\# SSE
[ 	]*12[ 	]+addss %xmm4,%xmm3
[ 	]*13[ 	]+\# SSE2
[ 	]*14[ 	]+addsd %xmm4,%xmm3
[ 	]*15[ 	]+\# SSE3
[ 	]*16[ 	]+addsubpd %xmm4,%xmm3
[ 	]*17[ 	]+\# SSSE3
[ 	]*18[ 	]+phaddw %xmm4,%xmm3
[ 	]*19[ 	]+\# SSE4\.1
[ 	]*20[ 	]+phminposuw  %xmm1,%xmm3
[ 	]*21[ 	]+\# SSE4\.2
[ 	]*22[ 	]+crc32   %ecx,%ebx
[ 	]*23[ 	]+\# AVX
[ 	]*24[ 	]+vzeroall
[ 	]*25[ 	]+\# VMX
[ 	]*26[ 	]+vmxoff
[ 	]*27[ 	]+\# SMX
[ 	]*28[ 	]+getsec
[ 	]*29[ 	]+\# Xsave
[ 	]*30[ 	]+xgetbv
[ 	]*31[ 	]+\# Xsaveopt
[ 	]*32[ 	]+xsaveopt \(%ecx\)
[ 	]*33[ 	]+\# AES
[ 	]*34[ 	]+aesenc  \(%ecx\),%xmm0
[ 	]*35[ 	]+\# PCLMUL
[ 	]*36[ 	]+pclmulqdq \$8,%xmm1,%xmm0
[ 	]*37[ 	]+\# AES \+ AVX
[ 	]*38[ 	]+vaesenc  \(%ecx\),%xmm0,%xmm2
[ 	]*39[ 	]+\# PCLMUL \+ AVX
[ 	]*40[ 	]+vpclmulqdq \$8,%xmm4,%xmm6,%xmm2
[ 	]*41[ 	]+\# FMA
[ 	]*42[ 	]+vfmadd132pd %xmm4,%xmm6,%xmm2
[ 	]*43[ 	]+\# MOVBE
[ 	]*44[ 	]+movbe   \(%ecx\),%ebx
[ 	]*45[ 	]+\# EPT
[ 	]*46[ 	]+invept  \(%ecx\),%ebx
[ 	]*47[ 	]+\# RDTSCP
[ 	]*48[ 	]+rdtscp
[ 	]*49[ 	]+\# 3DNow or PRFCHW
[ 	]*50[ 	]+prefetchw 0x1000\(,%esi,2\)
[ 	]*51[ 	]+\# SSE4a
[ 	]*52[ 	]+insertq %xmm2,%xmm1
[ 	]*53[ 	]+\# SVME
[ 	]*54[ 	]+vmload
[ 	]*55[ 	]+\# ABM/LZCNT
[ 	]*56[ 	]+lzcnt %ecx,%ebx
GAS LISTING .*


[ 	]*57[ 	]+\# PadLock
[ 	]*58[ 	]+xstorerng
[ 	]*59[ 	]+\# nop
[ 	]*60[ 	]+nopl \(%eax\)
[ 	]*61[ 	]+\# BMI
[ 	]*62[ 	]+blsr %ecx,%ebx
[ 	]*63[ 	]+\# TBM
[ 	]*64[ 	]+blcfill %ecx,%ebx
[ 	]*65[ 	]+\# MONITOR
[ 	]*66[ 	]+monitor
