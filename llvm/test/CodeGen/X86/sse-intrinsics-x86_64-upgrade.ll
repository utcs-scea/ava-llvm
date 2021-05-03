; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc < %s -mtriple=x86_64-apple-darwin -mattr=-sse2 -show-mc-encoding | FileCheck %s --check-prefixes=CHECK,SSE
; RUN: llc < %s -mtriple=x86_64-apple-darwin -mattr=+avx -show-mc-encoding | FileCheck %s --check-prefixes=CHECK,AVX,AVX1
; RUN: llc < %s -mtriple=x86_64-apple-darwin -mattr=+avx512f,+avx512bw,+avx512dq,+avx512vl -show-mc-encoding | FileCheck %s --check-prefixes=CHECK,AVX,AVX512

define <4 x float> @test_x86_sse_cvtsi642ss(<4 x float> %a0, i64 %a1) {
; SSE-LABEL: test_x86_sse_cvtsi642ss:
; SSE:       ## %bb.0:
; SSE-NEXT:    cvtsi2ssq %rdi, %xmm0 ## encoding: [0xf3,0x48,0x0f,0x2a,0xc7]
; SSE-NEXT:    retq ## encoding: [0xc3]
;
; AVX1-LABEL: test_x86_sse_cvtsi642ss:
; AVX1:       ## %bb.0:
; AVX1-NEXT:    vcvtsi2ssq %rdi, %xmm0, %xmm0 ## encoding: [0xc4,0xe1,0xfa,0x2a,0xc7]
; AVX1-NEXT:    retq ## encoding: [0xc3]
;
; AVX512-LABEL: test_x86_sse_cvtsi642ss:
; AVX512:       ## %bb.0:
; AVX512-NEXT:    vcvtsi2ssq %rdi, %xmm0, %xmm0 ## EVEX TO VEX Compression encoding: [0xc4,0xe1,0xfa,0x2a,0xc7]
; AVX512-NEXT:    retq ## encoding: [0xc3]
  %res = call <4 x float> @llvm.x86.sse.cvtsi642ss(<4 x float> %a0, i64 %a1) ; <<4 x float>> [#uses=1]
  ret <4 x float> %res
}
declare <4 x float> @llvm.x86.sse.cvtsi642ss(<4 x float>, i64) nounwind readnone
