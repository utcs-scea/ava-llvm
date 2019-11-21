// RUN: llvm-mc -triple x86_64-unknown-unknown --show-encoding %s | FileCheck %s

  vpmadd52luq %xmm4, %xmm5, %xmm6 {%k7}
//CHECK: vpmadd52luq %xmm4, %xmm5, %xmm6 {%k7}
//CHECK: encoding: [0x62,0xf2,0xd5,0x0f,0xb4,0xf4]

  vpmadd52luq %xmm4, %xmm5, %xmm6 {%k7} {z}
//CHECK: vpmadd52luq %xmm4, %xmm5, %xmm6 {%k7} {z}
//CHECK: encoding: [0x62,0xf2,0xd5,0x8f,0xb4,0xf4]

  vpmadd52luq %ymm4, %ymm5, %ymm6 {%k7}
//CHECK: vpmadd52luq %ymm4, %ymm5, %ymm6 {%k7}
//CHECK: encoding: [0x62,0xf2,0xd5,0x2f,0xb4,0xf4]

  vpmadd52luq %ymm4, %ymm5, %ymm6 {%k7} {z}
//CHECK: vpmadd52luq %ymm4, %ymm5, %ymm6 {%k7} {z}
//CHECK: encoding: [0x62,0xf2,0xd5,0xaf,0xb4,0xf4]

  vpmadd52luq %xmm28, %xmm29, %xmm30
//CHECK: vpmadd52luq %xmm28, %xmm29, %xmm30
//CHECK: encoding: [0x62,0x02,0x95,0x00,0xb4,0xf4]

  vpmadd52luq %xmm28, %xmm29, %xmm30 {%k7}
//CHECK: vpmadd52luq %xmm28, %xmm29, %xmm30 {%k7}
//CHECK: encoding: [0x62,0x02,0x95,0x07,0xb4,0xf4]

  vpmadd52luq %xmm28, %xmm29, %xmm30 {%k7} {z}
//CHECK: vpmadd52luq %xmm28, %xmm29, %xmm30 {%k7} {z}
//CHECK: encoding: [0x62,0x02,0x95,0x87,0xb4,0xf4]

  vpmadd52luq (%rcx), %xmm29, %xmm30
//CHECK: vpmadd52luq (%rcx), %xmm29, %xmm30
//CHECK: encoding: [0x62,0x62,0x95,0x00,0xb4,0x31]

  vpmadd52luq 0x123(%rax,%r14,8), %xmm29, %xmm30
//CHECK: vpmadd52luq 291(%rax,%r14,8), %xmm29, %xmm30
//CHECK: encoding: [0x62,0x22,0x95,0x00,0xb4,0xb4,0xf0,0x23,0x01,0x00,0x00]

  vpmadd52luq (%rcx){1to2}, %xmm29, %xmm30
//CHECK: vpmadd52luq (%rcx){1to2}, %xmm29, %xmm30
//CHECK: encoding: [0x62,0x62,0x95,0x10,0xb4,0x31]

  vpmadd52luq 0x7f0(%rdx), %xmm29, %xmm30
//CHECK: vpmadd52luq 2032(%rdx), %xmm29, %xmm30
//CHECK: encoding: [0x62,0x62,0x95,0x00,0xb4,0x72,0x7f]

  vpmadd52luq 0x800(%rdx), %xmm29, %xmm30
//CHECK: vpmadd52luq 2048(%rdx), %xmm29, %xmm30
//CHECK: encoding: [0x62,0x62,0x95,0x00,0xb4,0xb2,0x00,0x08,0x00,0x00]

  vpmadd52luq -0x800(%rdx), %xmm29, %xmm30
//CHECK: vpmadd52luq -2048(%rdx), %xmm29, %xmm30
//CHECK: encoding: [0x62,0x62,0x95,0x00,0xb4,0x72,0x80]

  vpmadd52luq -0x810(%rdx), %xmm29, %xmm30
//CHECK: vpmadd52luq -2064(%rdx), %xmm29, %xmm30
//CHECK: encoding: [0x62,0x62,0x95,0x00,0xb4,0xb2,0xf0,0xf7,0xff,0xff]

  vpmadd52luq 0x3f8(%rdx){1to2}, %xmm29, %xmm30
//CHECK: vpmadd52luq 1016(%rdx){1to2}, %xmm29, %xmm30
//CHECK: encoding: [0x62,0x62,0x95,0x10,0xb4,0x72,0x7f]

  vpmadd52luq 0x400(%rdx){1to2}, %xmm29, %xmm30
//CHECK: vpmadd52luq 1024(%rdx){1to2}, %xmm29, %xmm30
//CHECK: encoding: [0x62,0x62,0x95,0x10,0xb4,0xb2,0x00,0x04,0x00,0x00]

  vpmadd52luq -0x400(%rdx){1to2}, %xmm29, %xmm30
//CHECK: vpmadd52luq -1024(%rdx){1to2}, %xmm29, %xmm30
//CHECK: encoding: [0x62,0x62,0x95,0x10,0xb4,0x72,0x80]

  vpmadd52luq -0x408(%rdx){1to2}, %xmm29, %xmm30
//CHECK: vpmadd52luq -1032(%rdx){1to2}, %xmm29, %xmm30
//CHECK: encoding: [0x62,0x62,0x95,0x10,0xb4,0xb2,0xf8,0xfb,0xff,0xff]

  vpmadd52luq %ymm28, %ymm29, %ymm30
//CHECK: vpmadd52luq %ymm28, %ymm29, %ymm30
//CHECK: encoding: [0x62,0x02,0x95,0x20,0xb4,0xf4]

  vpmadd52luq %ymm28, %ymm29, %ymm30 {%k7}
//CHECK: vpmadd52luq %ymm28, %ymm29, %ymm30 {%k7}
//CHECK: encoding: [0x62,0x02,0x95,0x27,0xb4,0xf4]

  vpmadd52luq %ymm28, %ymm29, %ymm30 {%k7} {z}
//CHECK: vpmadd52luq %ymm28, %ymm29, %ymm30 {%k7} {z}
//CHECK: encoding: [0x62,0x02,0x95,0xa7,0xb4,0xf4]

  vpmadd52luq (%rcx), %ymm29, %ymm30
//CHECK: vpmadd52luq (%rcx), %ymm29, %ymm30
//CHECK: encoding: [0x62,0x62,0x95,0x20,0xb4,0x31]

  vpmadd52luq 0x123(%rax,%r14,8), %ymm29, %ymm30
//CHECK: vpmadd52luq 291(%rax,%r14,8), %ymm29, %ymm30
//CHECK: encoding: [0x62,0x22,0x95,0x20,0xb4,0xb4,0xf0,0x23,0x01,0x00,0x00]

  vpmadd52luq (%rcx){1to4}, %ymm29, %ymm30
//CHECK: vpmadd52luq (%rcx){1to4}, %ymm29, %ymm30
//CHECK: encoding: [0x62,0x62,0x95,0x30,0xb4,0x31]

  vpmadd52luq 0xfe0(%rdx), %ymm29, %ymm30
//CHECK: vpmadd52luq 4064(%rdx), %ymm29, %ymm30
//CHECK: encoding: [0x62,0x62,0x95,0x20,0xb4,0x72,0x7f]

  vpmadd52luq 0x1000(%rdx), %ymm29, %ymm30
//CHECK: vpmadd52luq 4096(%rdx), %ymm29, %ymm30
//CHECK: encoding: [0x62,0x62,0x95,0x20,0xb4,0xb2,0x00,0x10,0x00,0x00]

  vpmadd52luq -0x1000(%rdx), %ymm29, %ymm30
//CHECK: vpmadd52luq -4096(%rdx), %ymm29, %ymm30
//CHECK: encoding: [0x62,0x62,0x95,0x20,0xb4,0x72,0x80]

  vpmadd52luq -0x1020(%rdx), %ymm29, %ymm30
//CHECK: vpmadd52luq -4128(%rdx), %ymm29, %ymm30
//CHECK: encoding: [0x62,0x62,0x95,0x20,0xb4,0xb2,0xe0,0xef,0xff,0xff]

  vpmadd52luq 0x3f8(%rdx){1to4}, %ymm29, %ymm30
//CHECK: vpmadd52luq 1016(%rdx){1to4}, %ymm29, %ymm30
//CHECK: encoding: [0x62,0x62,0x95,0x30,0xb4,0x72,0x7f]

  vpmadd52luq 0x400(%rdx){1to4}, %ymm29, %ymm30
//CHECK: vpmadd52luq 1024(%rdx){1to4}, %ymm29, %ymm30
//CHECK: encoding: [0x62,0x62,0x95,0x30,0xb4,0xb2,0x00,0x04,0x00,0x00]

  vpmadd52luq -0x400(%rdx){1to4}, %ymm29, %ymm30
//CHECK: vpmadd52luq -1024(%rdx){1to4}, %ymm29, %ymm30
//CHECK: encoding: [0x62,0x62,0x95,0x30,0xb4,0x72,0x80]

  vpmadd52luq -0x408(%rdx){1to4}, %ymm29, %ymm30
//CHECK: vpmadd52luq -1032(%rdx){1to4}, %ymm29, %ymm30
//CHECK: encoding: [0x62,0x62,0x95,0x30,0xb4,0xb2,0xf8,0xfb,0xff,0xff]

  vpmadd52luq 0x1234(%rax,%r14,8), %xmm29, %xmm30
//CHECK: vpmadd52luq 4660(%rax,%r14,8), %xmm29, %xmm30
//CHECK: encoding: [0x62,0x22,0x95,0x00,0xb4,0xb4,0xf0,0x34,0x12,0x00,0x00]

  vpmadd52luq 0x1234(%rax,%r14,8), %ymm29, %ymm30
//CHECK: vpmadd52luq 4660(%rax,%r14,8), %ymm29, %ymm30
//CHECK: encoding: [0x62,0x22,0x95,0x20,0xb4,0xb4,0xf0,0x34,0x12,0x00,0x00]

vpmadd52huq %xmm4, %xmm5, %xmm6 {%k7}
//CHECK: vpmadd52huq %xmm4, %xmm5, %xmm6 {%k7}
//CHECK: encoding: [0x62,0xf2,0xd5,0x0f,0xb5,0xf4]

  vpmadd52huq %xmm4, %xmm5, %xmm6 {%k7} {z}
//CHECK: vpmadd52huq %xmm4, %xmm5, %xmm6 {%k7} {z}
//CHECK: encoding: [0x62,0xf2,0xd5,0x8f,0xb5,0xf4]

  vpmadd52huq %ymm4, %ymm5, %ymm6 {%k7}
//CHECK: vpmadd52huq %ymm4, %ymm5, %ymm6 {%k7}
//CHECK: encoding: [0x62,0xf2,0xd5,0x2f,0xb5,0xf4]

  vpmadd52huq %ymm4, %ymm5, %ymm6 {%k7} {z}
//CHECK: vpmadd52huq %ymm4, %ymm5, %ymm6 {%k7} {z}
//CHECK: encoding: [0x62,0xf2,0xd5,0xaf,0xb5,0xf4]

  vpmadd52huq %xmm28, %xmm29, %xmm30
//CHECK: vpmadd52huq %xmm28, %xmm29, %xmm30
//CHECK: encoding: [0x62,0x02,0x95,0x00,0xb5,0xf4]

  vpmadd52huq %xmm28, %xmm29, %xmm30 {%k7}
//CHECK: vpmadd52huq %xmm28, %xmm29, %xmm30 {%k7}
//CHECK: encoding: [0x62,0x02,0x95,0x07,0xb5,0xf4]

  vpmadd52huq %xmm28, %xmm29, %xmm30 {%k7} {z}
//CHECK: vpmadd52huq %xmm28, %xmm29, %xmm30 {%k7} {z}
//CHECK: encoding: [0x62,0x02,0x95,0x87,0xb5,0xf4]

  vpmadd52huq (%rcx), %xmm29, %xmm30
//CHECK: vpmadd52huq (%rcx), %xmm29, %xmm30
//CHECK: encoding: [0x62,0x62,0x95,0x00,0xb5,0x31]

  vpmadd52huq 0x123(%rax,%r14,8), %xmm29, %xmm30
//CHECK: vpmadd52huq 291(%rax,%r14,8), %xmm29, %xmm30
//CHECK: encoding: [0x62,0x22,0x95,0x00,0xb5,0xb4,0xf0,0x23,0x01,0x00,0x00]

  vpmadd52huq (%rcx){1to2}, %xmm29, %xmm30
//CHECK: vpmadd52huq (%rcx){1to2}, %xmm29, %xmm30
//CHECK: encoding: [0x62,0x62,0x95,0x10,0xb5,0x31]

  vpmadd52huq 0x7f0(%rdx), %xmm29, %xmm30
//CHECK: vpmadd52huq 2032(%rdx), %xmm29, %xmm30
//CHECK: encoding: [0x62,0x62,0x95,0x00,0xb5,0x72,0x7f]

  vpmadd52huq 0x800(%rdx), %xmm29, %xmm30
//CHECK: vpmadd52huq 2048(%rdx), %xmm29, %xmm30
//CHECK: encoding: [0x62,0x62,0x95,0x00,0xb5,0xb2,0x00,0x08,0x00,0x00]

  vpmadd52huq -0x800(%rdx), %xmm29, %xmm30
//CHECK: vpmadd52huq -2048(%rdx), %xmm29, %xmm30
//CHECK: encoding: [0x62,0x62,0x95,0x00,0xb5,0x72,0x80]

  vpmadd52huq -0x810(%rdx), %xmm29, %xmm30
//CHECK: vpmadd52huq -2064(%rdx), %xmm29, %xmm30
//CHECK: encoding: [0x62,0x62,0x95,0x00,0xb5,0xb2,0xf0,0xf7,0xff,0xff]

  vpmadd52huq 0x3f8(%rdx){1to2}, %xmm29, %xmm30
//CHECK: vpmadd52huq 1016(%rdx){1to2}, %xmm29, %xmm30
//CHECK: encoding: [0x62,0x62,0x95,0x10,0xb5,0x72,0x7f]

  vpmadd52huq 0x400(%rdx){1to2}, %xmm29, %xmm30
//CHECK: vpmadd52huq 1024(%rdx){1to2}, %xmm29, %xmm30
//CHECK: encoding: [0x62,0x62,0x95,0x10,0xb5,0xb2,0x00,0x04,0x00,0x00]

  vpmadd52huq -0x400(%rdx){1to2}, %xmm29, %xmm30
//CHECK: vpmadd52huq -1024(%rdx){1to2}, %xmm29, %xmm30
//CHECK: encoding: [0x62,0x62,0x95,0x10,0xb5,0x72,0x80]

  vpmadd52huq -0x408(%rdx){1to2}, %xmm29, %xmm30
//CHECK: vpmadd52huq -1032(%rdx){1to2}, %xmm29, %xmm30
//CHECK: encoding: [0x62,0x62,0x95,0x10,0xb5,0xb2,0xf8,0xfb,0xff,0xff]

  vpmadd52huq %ymm28, %ymm29, %ymm30
//CHECK: vpmadd52huq %ymm28, %ymm29, %ymm30
//CHECK: encoding: [0x62,0x02,0x95,0x20,0xb5,0xf4]

  vpmadd52huq %ymm28, %ymm29, %ymm30 {%k7}
//CHECK: vpmadd52huq %ymm28, %ymm29, %ymm30 {%k7}
//CHECK: encoding: [0x62,0x02,0x95,0x27,0xb5,0xf4]

  vpmadd52huq %ymm28, %ymm29, %ymm30 {%k7} {z}
//CHECK: vpmadd52huq %ymm28, %ymm29, %ymm30 {%k7} {z}
//CHECK: encoding: [0x62,0x02,0x95,0xa7,0xb5,0xf4]

  vpmadd52huq (%rcx), %ymm29, %ymm30
//CHECK: vpmadd52huq (%rcx), %ymm29, %ymm30
//CHECK: encoding: [0x62,0x62,0x95,0x20,0xb5,0x31]

  vpmadd52huq 0x123(%rax,%r14,8), %ymm29, %ymm30
//CHECK: vpmadd52huq 291(%rax,%r14,8), %ymm29, %ymm30
//CHECK: encoding: [0x62,0x22,0x95,0x20,0xb5,0xb4,0xf0,0x23,0x01,0x00,0x00]

  vpmadd52huq (%rcx){1to4}, %ymm29, %ymm30
//CHECK: vpmadd52huq (%rcx){1to4}, %ymm29, %ymm30
//CHECK: encoding: [0x62,0x62,0x95,0x30,0xb5,0x31]

  vpmadd52huq 0xfe0(%rdx), %ymm29, %ymm30
//CHECK: vpmadd52huq 4064(%rdx), %ymm29, %ymm30
//CHECK: encoding: [0x62,0x62,0x95,0x20,0xb5,0x72,0x7f]

  vpmadd52huq 0x1000(%rdx), %ymm29, %ymm30
//CHECK: vpmadd52huq 4096(%rdx), %ymm29, %ymm30
//CHECK: encoding: [0x62,0x62,0x95,0x20,0xb5,0xb2,0x00,0x10,0x00,0x00]

  vpmadd52huq -0x1000(%rdx), %ymm29, %ymm30
//CHECK: vpmadd52huq -4096(%rdx), %ymm29, %ymm30
//CHECK: encoding: [0x62,0x62,0x95,0x20,0xb5,0x72,0x80]

  vpmadd52huq -0x1020(%rdx), %ymm29, %ymm30
//CHECK: vpmadd52huq -4128(%rdx), %ymm29, %ymm30
//CHECK: encoding: [0x62,0x62,0x95,0x20,0xb5,0xb2,0xe0,0xef,0xff,0xff]

  vpmadd52huq 0x3f8(%rdx){1to4}, %ymm29, %ymm30
//CHECK: vpmadd52huq 1016(%rdx){1to4}, %ymm29, %ymm30
//CHECK: encoding: [0x62,0x62,0x95,0x30,0xb5,0x72,0x7f]

  vpmadd52huq 0x400(%rdx){1to4}, %ymm29, %ymm30
//CHECK: vpmadd52huq 1024(%rdx){1to4}, %ymm29, %ymm30
//CHECK: encoding: [0x62,0x62,0x95,0x30,0xb5,0xb2,0x00,0x04,0x00,0x00]

  vpmadd52huq -0x400(%rdx){1to4}, %ymm29, %ymm30
//CHECK: vpmadd52huq -1024(%rdx){1to4}, %ymm29, %ymm30
//CHECK: encoding: [0x62,0x62,0x95,0x30,0xb5,0x72,0x80]

  vpmadd52huq -0x408(%rdx){1to4}, %ymm29, %ymm30
//CHECK: vpmadd52huq -1032(%rdx){1to4}, %ymm29, %ymm30
//CHECK: encoding: [0x62,0x62,0x95,0x30,0xb5,0xb2,0xf8,0xfb,0xff,0xff]

  vpmadd52huq 0x1234(%rax,%r14,8), %xmm29, %xmm30
//CHECK: vpmadd52huq 4660(%rax,%r14,8), %xmm29, %xmm30
//CHECK: encoding: [0x62,0x22,0x95,0x00,0xb5,0xb4,0xf0,0x34,0x12,0x00,0x00]

  vpmadd52huq 0x1234(%rax,%r14,8), %ymm29, %ymm30
//CHECK: vpmadd52huq 4660(%rax,%r14,8), %ymm29, %ymm30
//CHECK: encoding: [0x62,0x22,0x95,0x20,0xb5,0xb4,0xf0,0x34,0x12,0x00,0x00]

