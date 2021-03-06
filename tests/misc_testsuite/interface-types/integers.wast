(@interface)

(module
 (@interface func (export "i32-to-s8") (param i32) (result s8)
   arg.get 0
   i32-to-s8)
 (@interface func (export "i32-to-s8x") (param i32) (result s8)
   arg.get 0
   i32-to-s8x)
 (@interface func (export "i32-to-u8") (param i32) (result u8)
   arg.get 0
   i32-to-u8)
 (@interface func (export "i32-to-s16") (param i32) (result s16)
   arg.get 0
   i32-to-s16)
 (@interface func (export "i32-to-s16x") (param i32) (result s16)
   arg.get 0
   i32-to-s16x)
 (@interface func (export "i32-to-u16") (param i32) (result u16)
   arg.get 0
   i32-to-u16)
 (@interface func (export "i32-to-s32") (param i32) (result s32)
   arg.get 0
   i32-to-s32)
 (@interface func (export "i32-to-u32") (param i32) (result u32)
   arg.get 0
   i32-to-u32)
 (@interface func (export "i32-to-s64") (param i32) (result s64)
   arg.get 0
   i32-to-s64)
 (@interface func (export "i32-to-u64") (param i32) (result u64)
   arg.get 0
   i32-to-u64)

 (@interface func (export "i64-to-s8") (param i64) (result s8)
   arg.get 0
   i64-to-s8)
 (@interface func (export "i64-to-s8x") (param i64) (result s8)
   arg.get 0
   i64-to-s8x)
 (@interface func (export "i64-to-u8") (param i64) (result u8)
   arg.get 0
   i64-to-u8)
 (@interface func (export "i64-to-s16") (param i64) (result s16)
   arg.get 0
   i64-to-s16)
 (@interface func (export "i64-to-s16x") (param i64) (result s16)
   arg.get 0
   i64-to-s16x)
 (@interface func (export "i64-to-u16") (param i64) (result u16)
   arg.get 0
   i64-to-u16)
 (@interface func (export "i64-to-s32") (param i64) (result s32)
   arg.get 0
   i64-to-s32)
 (@interface func (export "i64-to-s32x") (param i64) (result s32)
   arg.get 0
   i64-to-s32x)
 (@interface func (export "i64-to-u32") (param i64) (result u32)
   arg.get 0
   i64-to-u32)
 (@interface func (export "i64-to-s64") (param i64) (result s64)
   arg.get 0
   i64-to-s64)
 (@interface func (export "i64-to-u64") (param i64) (result u64)
   arg.get 0
   i64-to-u64)

 (@interface func (export "s8-to-i32") (param s8) (result i32)
   arg.get 0
   s8-to-i32)
 (@interface func (export "u8-to-i32") (param u8) (result i32)
   arg.get 0
   u8-to-i32)
 (@interface func (export "s16-to-i32") (param s16) (result i32)
   arg.get 0
   s16-to-i32)
 (@interface func (export "u16-to-i32") (param u16) (result i32)
   arg.get 0
   u16-to-i32)
 (@interface func (export "s32-to-i32") (param s32) (result i32)
   arg.get 0
   s32-to-i32)
 (@interface func (export "u32-to-i32") (param u32) (result i32)
   arg.get 0
   u32-to-i32)
 (@interface func (export "s64-to-i32") (param s64) (result i32)
   arg.get 0
   s64-to-i32)
 (@interface func (export "s64-to-i32x") (param s64) (result i32)
   arg.get 0
   s64-to-i32x)
 (@interface func (export "u64-to-i32") (param u64) (result i32)
   arg.get 0
   u64-to-i32)
 (@interface func (export "u64-to-i32x") (param u64) (result i32)
   arg.get 0
   u64-to-i32x)

 (@interface func (export "s8-to-i64") (param s8) (result i64)
   arg.get 0
   s8-to-i64)
 (@interface func (export "u8-to-i64") (param u8) (result i64)
   arg.get 0
   u8-to-i64)
 (@interface func (export "s16-to-i64") (param s16) (result i64)
   arg.get 0
   s16-to-i64)
 (@interface func (export "u16-to-i64") (param u16) (result i64)
   arg.get 0
   u16-to-i64)
 (@interface func (export "s32-to-i64") (param s32) (result i64)
   arg.get 0
   s32-to-i64)
 (@interface func (export "u32-to-i64") (param u32) (result i64)
   arg.get 0
   u32-to-i64)
 (@interface func (export "s64-to-i64") (param s64) (result i64)
   arg.get 0
   s64-to-i64)
 (@interface func (export "u64-to-i64") (param u64) (result i64)
   arg.get 0
   u64-to-i64)
)

(assert_return (invoke "i32-to-s8"   (i32.const -0x00000080)) (s8.const   0x80))
(assert_return (invoke "i32-to-s8"   (i32.const  0x00000080)) (s8.const  -0x80))
(assert_return (invoke "i32-to-s8"   (i32.const  0x00000081)) (s8.const  -0x7f))
(assert_return (invoke "i32-to-s8"   (i32.const -0x00000081)) (s8.const   0x7f))
(assert_return (invoke "i32-to-s8"   (i32.const  0xffffffff)) (s8.const   0xff))
(assert_return (invoke "i32-to-s8"   (i32.const  0x00000000)) (s8.const   0x00))
(assert_return (invoke "i32-to-s8"   (i32.const  0x00000001)) (s8.const   0x01))
(assert_return (invoke "i32-to-s8"   (i32.const  0x00000100)) (s8.const   0x00))
(assert_return (invoke "i32-to-s8"   (i32.const  0x00000101)) (s8.const   0x01))

(assert_return (invoke "i32-to-s8x"  (i32.const -0x00000080)) (s8.const   0x80))
(assert_trap   (invoke "i32-to-s8x"  (i32.const  0x00000080)) "overflow")
(assert_trap   (invoke "i32-to-s8x"  (i32.const  0x00000081)) "overflow")
(assert_trap   (invoke "i32-to-s8x"  (i32.const -0x00000081)) "overflow")
(assert_return (invoke "i32-to-s8x"  (i32.const  0xffffffff)) (s8.const   0xff))
(assert_return (invoke "i32-to-s8x"  (i32.const  0x00000000)) (s8.const   0x00))
(assert_return (invoke "i32-to-s8x"  (i32.const  0x00000001)) (s8.const   0x01))
(assert_trap   (invoke "i32-to-s8x"  (i32.const  0x00000100)) "overflow")
(assert_trap   (invoke "i32-to-s8x"  (i32.const  0x00000101)) "overflow")

(assert_return (invoke "i32-to-u8"   (i32.const -0x00000080)) (u8.const   0x80))
(assert_return (invoke "i32-to-u8"   (i32.const  0x00000080)) (u8.const   0x80))
(assert_return (invoke "i32-to-u8"   (i32.const  0x00000081)) (u8.const   0x81))
(assert_return (invoke "i32-to-u8"   (i32.const -0x00000081)) (u8.const   0x7f))
(assert_return (invoke "i32-to-u8"   (i32.const  0xffffffff)) (u8.const   0xff))
(assert_return (invoke "i32-to-u8"   (i32.const  0x00000000)) (u8.const   0x00))
(assert_return (invoke "i32-to-u8"   (i32.const  0x00000001)) (u8.const   0x01))
(assert_return (invoke "i32-to-u8"   (i32.const  0x00000100)) (u8.const   0x00))
(assert_return (invoke "i32-to-u8"   (i32.const  0x00000101)) (u8.const   0x01))

(assert_return (invoke "i32-to-s16"  (i32.const -0x00008000)) (s16.const  0x8000))
(assert_return (invoke "i32-to-s16"  (i32.const  0x00008000)) (s16.const -0x8000))
(assert_return (invoke "i32-to-s16"  (i32.const  0x00008001)) (s16.const -0x7fff))
(assert_return (invoke "i32-to-s16"  (i32.const -0x00008001)) (s16.const  0x7fff))
(assert_return (invoke "i32-to-s16"  (i32.const  0xffffffff)) (s16.const  0xffff))
(assert_return (invoke "i32-to-s16"  (i32.const  0x00000000)) (s16.const  0x0000))
(assert_return (invoke "i32-to-s16"  (i32.const  0x00000001)) (s16.const  0x0001))
(assert_return (invoke "i32-to-s16"  (i32.const  0x00010000)) (s16.const  0x0000))
(assert_return (invoke "i32-to-s16"  (i32.const  0x00010001)) (s16.const  0x0001))

(assert_return (invoke "i32-to-s16x" (i32.const -0x00008000)) (s16.const  0x8000))
(assert_trap   (invoke "i32-to-s16x" (i32.const  0x00008000)) "overflow")
(assert_trap   (invoke "i32-to-s16x" (i32.const  0x00008001)) "overflow")
(assert_trap   (invoke "i32-to-s16x" (i32.const -0x00008001)) "overflow")
(assert_return (invoke "i32-to-s16x" (i32.const  0xffffffff)) (s16.const  0xffff))
(assert_return (invoke "i32-to-s16x" (i32.const  0x00000000)) (s16.const  0x0000))
(assert_return (invoke "i32-to-s16x" (i32.const  0x00000001)) (s16.const  0x0001))
(assert_trap   (invoke "i32-to-s16x" (i32.const  0x00010000)) "overflow")
(assert_trap   (invoke "i32-to-s16x" (i32.const  0x00010001)) "overflow")

(assert_return (invoke "i32-to-u16"  (i32.const -0x00008000)) (u16.const  0x8000))
(assert_return (invoke "i32-to-u16"  (i32.const  0x00008000)) (u16.const  0x8000))
(assert_return (invoke "i32-to-u16"  (i32.const  0x00008001)) (u16.const  0x8001))
(assert_return (invoke "i32-to-u16"  (i32.const -0x00008001)) (u16.const  0x7fff))
(assert_return (invoke "i32-to-u16"  (i32.const  0xffffffff)) (u16.const  0xffff))
(assert_return (invoke "i32-to-u16"  (i32.const  0x00000000)) (u16.const  0x0000))
(assert_return (invoke "i32-to-u16"  (i32.const  0x00000001)) (u16.const  0x0001))
(assert_return (invoke "i32-to-u16"  (i32.const  0x00010000)) (u16.const  0x0000))
(assert_return (invoke "i32-to-u16"  (i32.const  0x00010001)) (u16.const  0x0001))

(assert_return (invoke "i32-to-s32"  (i32.const -0x80000000)) (s32.const  0x80000000))
(assert_return (invoke "i32-to-s32"  (i32.const  0x80000000)) (s32.const -0x80000000))
(assert_return (invoke "i32-to-s32"  (i32.const  0x80000001)) (s32.const -0x7fffffff))
(assert_return (invoke "i32-to-s32"  (i32.const  0xffffffff)) (s32.const  0xffffffff))
(assert_return (invoke "i32-to-s32"  (i32.const  0x00000000)) (s32.const  0x00000000))
(assert_return (invoke "i32-to-s32"  (i32.const  0x00000001)) (s32.const  0x00000001))
(assert_return (invoke "i32-to-s32"  (i32.const  0x7fffffff)) (s32.const  0x7fffffff))

(assert_return (invoke "i32-to-u32"  (i32.const -0x80000000)) (u32.const  0x80000000))
(assert_return (invoke "i32-to-u32"  (i32.const  0x80000000)) (u32.const  0x80000000))
(assert_return (invoke "i32-to-u32"  (i32.const  0x80000001)) (u32.const  0x80000001))
(assert_return (invoke "i32-to-u32"  (i32.const  0xffffffff)) (u32.const  0xffffffff))
(assert_return (invoke "i32-to-u32"  (i32.const  0x00000000)) (u32.const  0x00000000))
(assert_return (invoke "i32-to-u32"  (i32.const  0x00000001)) (u32.const  0x00000001))
(assert_return (invoke "i32-to-u32"  (i32.const  0x7fffffff)) (u32.const  0x7fffffff))

(assert_return (invoke "i32-to-s64"  (i32.const -0x80000000)) (s64.const -0x0000000080000000))
(assert_return (invoke "i32-to-s64"  (i32.const  0x80000000)) (s64.const -0x0000000080000000))
(assert_return (invoke "i32-to-s64"  (i32.const  0x80000001)) (s64.const -0x000000007fffffff))
(assert_return (invoke "i32-to-s64"  (i32.const  0xffffffff)) (s64.const  0xffffffffffffffff))
(assert_return (invoke "i32-to-s64"  (i32.const  0x00000000)) (s64.const  0x0000000000000000))
(assert_return (invoke "i32-to-s64"  (i32.const  0x00000001)) (s64.const  0x0000000000000001))
(assert_return (invoke "i32-to-s64"  (i32.const  0x7fffffff)) (s64.const  0x000000007fffffff))

(assert_return (invoke "i32-to-u64"  (i32.const -0x80000000)) (u64.const  0xffffffff80000000))
(assert_return (invoke "i32-to-u64"  (i32.const  0x80000000)) (u64.const  0xffffffff80000000))
(assert_return (invoke "i32-to-u64"  (i32.const  0x80000001)) (u64.const  0xffffffff80000001))
(assert_return (invoke "i32-to-u64"  (i32.const  0xffffffff)) (u64.const  0xffffffffffffffff))
(assert_return (invoke "i32-to-u64"  (i32.const  0x00000000)) (u64.const  0x0000000000000000))
(assert_return (invoke "i32-to-u64"  (i32.const  0x00000001)) (u64.const  0x0000000000000001))
(assert_return (invoke "i32-to-u64"  (i32.const  0x7fffffff)) (u64.const  0x000000007fffffff))



(assert_return (invoke "i64-to-s8"   (i64.const -0x0000000000000080)) (s8.const   0x80))
(assert_return (invoke "i64-to-s8"   (i64.const  0x0000000000000080)) (s8.const  -0x80))
(assert_return (invoke "i64-to-s8"   (i64.const  0x0000000000000081)) (s8.const  -0x7f))
(assert_return (invoke "i64-to-s8"   (i64.const -0x0000000000000081)) (s8.const   0x7f))
(assert_return (invoke "i64-to-s8"   (i64.const  0xffffffffffffffff)) (s8.const   0xff))
(assert_return (invoke "i64-to-s8"   (i64.const  0x0000000000000000)) (s8.const   0x00))
(assert_return (invoke "i64-to-s8"   (i64.const  0x0000000000000001)) (s8.const   0x01))
(assert_return (invoke "i64-to-s8"   (i64.const  0x0000000000000100)) (s8.const   0x00))
(assert_return (invoke "i64-to-s8"   (i64.const  0x0000000000000101)) (s8.const   0x01))

(assert_return (invoke "i64-to-s8x"  (i64.const -0x0000000000000080)) (s8.const   0x80))
(assert_trap   (invoke "i64-to-s8x"  (i64.const  0x0000000000000080)) "overflow")
(assert_trap   (invoke "i64-to-s8x"  (i64.const  0x0000000000000081)) "overflow")
(assert_trap   (invoke "i64-to-s8x"  (i64.const -0x0000000000000081)) "overflow")
(assert_return (invoke "i64-to-s8x"  (i64.const  0xffffffffffffffff)) (s8.const   0xff))
(assert_return (invoke "i64-to-s8x"  (i64.const  0x0000000000000000)) (s8.const   0x00))
(assert_return (invoke "i64-to-s8x"  (i64.const  0x0000000000000001)) (s8.const   0x01))
(assert_trap   (invoke "i64-to-s8x"  (i64.const  0x0000000000000100)) "overflow")
(assert_trap   (invoke "i64-to-s8x"  (i64.const  0x0000000000000101)) "overflow")

(assert_return (invoke "i64-to-u8"   (i64.const -0x0000000000000080)) (u8.const   0x80))
(assert_return (invoke "i64-to-u8"   (i64.const  0x0000000000000080)) (u8.const   0x80))
(assert_return (invoke "i64-to-u8"   (i64.const  0x0000000000000081)) (u8.const   0x81))
(assert_return (invoke "i64-to-u8"   (i64.const -0x0000000000000081)) (u8.const   0x7f))
(assert_return (invoke "i64-to-u8"   (i64.const  0xffffffffffffffff)) (u8.const   0xff))
(assert_return (invoke "i64-to-u8"   (i64.const  0x0000000000000000)) (u8.const   0x00))
(assert_return (invoke "i64-to-u8"   (i64.const  0x0000000000000001)) (u8.const   0x01))
(assert_return (invoke "i64-to-u8"   (i64.const  0x0000000000000100)) (u8.const   0x00))
(assert_return (invoke "i64-to-u8"   (i64.const  0x0000000000000101)) (u8.const   0x01))

(assert_return (invoke "i64-to-s16"  (i64.const -0x0000000000008000)) (s16.const  0x8000))
(assert_return (invoke "i64-to-s16"  (i64.const  0x0000000000008000)) (s16.const -0x8000))
(assert_return (invoke "i64-to-s16"  (i64.const  0x0000000000008001)) (s16.const -0x7fff))
(assert_return (invoke "i64-to-s16"  (i64.const -0x0000000000008001)) (s16.const  0x7fff))
(assert_return (invoke "i64-to-s16"  (i64.const  0xffffffffffffffff)) (s16.const  0xffff))
(assert_return (invoke "i64-to-s16"  (i64.const  0x0000000000000000)) (s16.const  0x0000))
(assert_return (invoke "i64-to-s16"  (i64.const  0x0000000000000001)) (s16.const  0x0001))
(assert_return (invoke "i64-to-s16"  (i64.const  0x0000000000010000)) (s16.const  0x0000))
(assert_return (invoke "i64-to-s16"  (i64.const  0x0000000000010001)) (s16.const  0x0001))

(assert_return (invoke "i64-to-s16x" (i64.const -0x0000000000008000)) (s16.const  0x8000))
(assert_trap   (invoke "i64-to-s16x" (i64.const  0x0000000000008000)) "overflow")
(assert_trap   (invoke "i64-to-s16x" (i64.const  0x0000000000008001)) "overflow")
(assert_trap   (invoke "i64-to-s16x" (i64.const -0x0000000000008001)) "overflow")
(assert_return (invoke "i64-to-s16x" (i64.const  0xffffffffffffffff)) (s16.const  0xffff))
(assert_return (invoke "i64-to-s16x" (i64.const  0x0000000000000000)) (s16.const  0x0000))
(assert_return (invoke "i64-to-s16x" (i64.const  0x0000000000000001)) (s16.const  0x0001))
(assert_trap   (invoke "i64-to-s16x" (i64.const  0x0000000000010000)) "overflow")
(assert_trap   (invoke "i64-to-s16x" (i64.const  0x0000000000010001)) "overflow")

(assert_return (invoke "i64-to-u16"  (i64.const -0x0000000000008000)) (u16.const  0x8000))
(assert_return (invoke "i64-to-u16"  (i64.const  0x0000000000008000)) (u16.const  0x8000))
(assert_return (invoke "i64-to-u16"  (i64.const  0x0000000000008001)) (u16.const  0x8001))
(assert_return (invoke "i64-to-u16"  (i64.const -0x0000000000008001)) (u16.const  0x7fff))
(assert_return (invoke "i64-to-u16"  (i64.const  0xffffffffffffffff)) (u16.const  0xffff))
(assert_return (invoke "i64-to-u16"  (i64.const  0x0000000000000000)) (u16.const  0x0000))
(assert_return (invoke "i64-to-u16"  (i64.const  0x0000000000000001)) (u16.const  0x0001))
(assert_return (invoke "i64-to-u16"  (i64.const  0x0000000000010000)) (u16.const  0x0000))
(assert_return (invoke "i64-to-u16"  (i64.const  0x0000000000010001)) (u16.const  0x0001))

(assert_return (invoke "i64-to-s32"  (i64.const -0x0000000080000000)) (s32.const  0x80000000))
(assert_return (invoke "i64-to-s32"  (i64.const  0x0000000080000000)) (s32.const -0x80000000))
(assert_return (invoke "i64-to-s32"  (i64.const  0x0000000080000001)) (s32.const -0x7fffffff))
(assert_return (invoke "i64-to-s32"  (i64.const -0x0000000080000001)) (s32.const  0x7fffffff))
(assert_return (invoke "i64-to-s32"  (i64.const  0xffffffffffffffff)) (s32.const  0xffffffff))
(assert_return (invoke "i64-to-s32"  (i64.const  0x0000000000000000)) (s32.const  0x00000000))
(assert_return (invoke "i64-to-s32"  (i64.const  0x0000000000000001)) (s32.const  0x00000001))
(assert_return (invoke "i64-to-s32"  (i64.const  0x0000000100000000)) (s32.const  0x00000000))
(assert_return (invoke "i64-to-s32"  (i64.const  0x0000000100000001)) (s32.const  0x00000001))

(assert_return (invoke "i64-to-s32x" (i64.const -0x0000000080000000)) (s32.const  0x80000000))
(assert_trap   (invoke "i64-to-s32x" (i64.const  0x0000000080000000)) "overflow")
(assert_trap   (invoke "i64-to-s32x" (i64.const  0x0000000080000001)) "overflow")
(assert_trap   (invoke "i64-to-s32x" (i64.const -0x0000000080000001)) "overflow")
(assert_return (invoke "i64-to-s32x" (i64.const  0xffffffffffffffff)) (s32.const  0xffffffff))
(assert_return (invoke "i64-to-s32x" (i64.const  0x0000000000000000)) (s32.const  0x00000000))
(assert_return (invoke "i64-to-s32x" (i64.const  0x0000000000000001)) (s32.const  0x00000001))
(assert_trap   (invoke "i64-to-s32x" (i64.const  0x0000000100000000)) "overflow")
(assert_trap   (invoke "i64-to-s32x" (i64.const  0x0000000100000001)) "overflow")

(assert_return (invoke "i64-to-u32"  (i64.const -0x0000000080000000)) (u32.const  0x80000000))
(assert_return (invoke "i64-to-u32"  (i64.const  0x0000000080000000)) (u32.const  0x80000000))
(assert_return (invoke "i64-to-u32"  (i64.const  0x0000000080000001)) (u32.const  0x80000001))
(assert_return (invoke "i64-to-u32"  (i64.const -0x0000000080000001)) (u32.const  0x7fffffff))
(assert_return (invoke "i64-to-u32"  (i64.const  0xffffffffffffffff)) (u32.const  0xffffffff))
(assert_return (invoke "i64-to-u32"  (i64.const  0x0000000000000000)) (u32.const  0x00000000))
(assert_return (invoke "i64-to-u32"  (i64.const  0x0000000000000001)) (u32.const  0x00000001))
(assert_return (invoke "i64-to-u32"  (i64.const  0x0000000100000000)) (u32.const  0x00000000))
(assert_return (invoke "i64-to-u32"  (i64.const  0x0000000100000001)) (u32.const  0x00000001))

(assert_return (invoke "i64-to-s64"  (i64.const -0x8000000000000000)) (s64.const  0x8000000000000000))
(assert_return (invoke "i64-to-s64"  (i64.const  0x8000000000000000)) (s64.const -0x8000000000000000))
(assert_return (invoke "i64-to-s64"  (i64.const  0x8000000000000001)) (s64.const -0x7fffffffffffffff))
(assert_return (invoke "i64-to-s64"  (i64.const  0xffffffffffffffff)) (s64.const  0xffffffffffffffff))
(assert_return (invoke "i64-to-s64"  (i64.const  0x0000000000000000)) (s64.const  0x0000000000000000))
(assert_return (invoke "i64-to-s64"  (i64.const  0x0000000000000001)) (s64.const  0x0000000000000001))
(assert_return (invoke "i64-to-s64"  (i64.const  0x7fffffffffffffff)) (s64.const  0x7fffffffffffffff))

(assert_return (invoke "i64-to-u64"  (i64.const -0x8000000000000000)) (u64.const  0x8000000000000000))
(assert_return (invoke "i64-to-u64"  (i64.const  0x8000000000000000)) (u64.const  0x8000000000000000))
(assert_return (invoke "i64-to-u64"  (i64.const  0x8000000000000001)) (u64.const  0x8000000000000001))
(assert_return (invoke "i64-to-u64"  (i64.const  0xffffffffffffffff)) (u64.const  0xffffffffffffffff))
(assert_return (invoke "i64-to-u64"  (i64.const  0x0000000000000000)) (u64.const  0x0000000000000000))
(assert_return (invoke "i64-to-u64"  (i64.const  0x0000000000000001)) (u64.const  0x0000000000000001))
(assert_return (invoke "i64-to-u64"  (i64.const  0x7fffffffffffffff)) (u64.const  0x7fffffffffffffff))



(assert_return (invoke "s8-to-i32" (s8.const 0x80)) (i32.const -0x00000080))
(assert_return (invoke "s8-to-i32" (s8.const 0xff)) (i32.const  0xffffffff))
(assert_return (invoke "s8-to-i32" (s8.const 0x00)) (i32.const  0x00000000))
(assert_return (invoke "s8-to-i32" (s8.const 0x01)) (i32.const  0x00000001))
(assert_return (invoke "s8-to-i32" (s8.const 0x7f)) (i32.const  0x0000007f))

(assert_return (invoke "u8-to-i32" (u8.const 0x80)) (i32.const  0x00000080))
(assert_return (invoke "u8-to-i32" (u8.const 0xff)) (i32.const  0x000000ff))
(assert_return (invoke "u8-to-i32" (u8.const 0x00)) (i32.const  0x00000000))
(assert_return (invoke "u8-to-i32" (u8.const 0x01)) (i32.const  0x00000001))
(assert_return (invoke "u8-to-i32" (u8.const 0x7f)) (i32.const  0x0000007f))

(assert_return (invoke "s16-to-i32" (s16.const 0x8000)) (i32.const -0x00008000))
(assert_return (invoke "s16-to-i32" (s16.const 0xffff)) (i32.const  0xffffffff))
(assert_return (invoke "s16-to-i32" (s16.const 0x0000)) (i32.const  0x00000000))
(assert_return (invoke "s16-to-i32" (s16.const 0x0001)) (i32.const  0x00000001))
(assert_return (invoke "s16-to-i32" (s16.const 0x7fff)) (i32.const  0x00007fff))

(assert_return (invoke "u16-to-i32" (u16.const 0x8000)) (i32.const  0x00008000))
(assert_return (invoke "u16-to-i32" (u16.const 0xffff)) (i32.const  0x0000ffff))
(assert_return (invoke "u16-to-i32" (u16.const 0x0000)) (i32.const  0x00000000))
(assert_return (invoke "u16-to-i32" (u16.const 0x0001)) (i32.const  0x00000001))
(assert_return (invoke "u16-to-i32" (u16.const 0x7fff)) (i32.const  0x00007fff))

(assert_return (invoke "s32-to-i32" (s32.const 0x80000000)) (i32.const -0x80000000))
(assert_return (invoke "s32-to-i32" (s32.const 0xffffffff)) (i32.const  0xffffffff))
(assert_return (invoke "s32-to-i32" (s32.const 0x00000000)) (i32.const  0x00000000))
(assert_return (invoke "s32-to-i32" (s32.const 0x00000001)) (i32.const  0x00000001))
(assert_return (invoke "s32-to-i32" (s32.const 0x7fffffff)) (i32.const  0x7fffffff))

(assert_return (invoke "u32-to-i32" (u32.const 0x80000000)) (i32.const  0x80000000))
(assert_return (invoke "u32-to-i32" (u32.const 0xffffffff)) (i32.const  0xffffffff))
(assert_return (invoke "u32-to-i32" (u32.const 0x00000000)) (i32.const  0x00000000))
(assert_return (invoke "u32-to-i32" (u32.const 0x00000001)) (i32.const  0x00000001))
(assert_return (invoke "u32-to-i32" (u32.const 0x7fffffff)) (i32.const  0x7fffffff))

(assert_return (invoke "s64-to-i32"  (s64.const -0x0000000080000000)) (i32.const  0x80000000))
(assert_return (invoke "s64-to-i32"  (s64.const  0x0000000080000000)) (i32.const -0x80000000))
(assert_return (invoke "s64-to-i32"  (s64.const  0x0000000080000001)) (i32.const -0x7fffffff))
(assert_return (invoke "s64-to-i32"  (s64.const -0x0000000080000001)) (i32.const  0x7fffffff))
(assert_return (invoke "s64-to-i32"  (s64.const  0xffffffffffffffff)) (i32.const  0xffffffff))
(assert_return (invoke "s64-to-i32"  (s64.const  0x0000000000000000)) (i32.const  0x00000000))
(assert_return (invoke "s64-to-i32"  (s64.const  0x0000000000000001)) (i32.const  0x00000001))
(assert_return (invoke "s64-to-i32"  (s64.const  0x0000000100000000)) (i32.const  0x00000000))
(assert_return (invoke "s64-to-i32"  (s64.const  0x0000000100000001)) (i32.const  0x00000001))

(assert_return (invoke "s64-to-i32x" (s64.const -0x0000000080000000)) (i32.const  0x80000000))
(assert_trap   (invoke "s64-to-i32x" (s64.const  0x0000000080000000)) "overflow")
(assert_trap   (invoke "s64-to-i32x" (s64.const  0x0000000080000001)) "overflow")
(assert_trap   (invoke "s64-to-i32x" (s64.const -0x0000000080000001)) "overflow")
(assert_return (invoke "s64-to-i32x" (s64.const  0xffffffffffffffff)) (i32.const  0xffffffff))
(assert_return (invoke "s64-to-i32x" (s64.const  0x0000000000000000)) (i32.const  0x00000000))
(assert_return (invoke "s64-to-i32x" (s64.const  0x0000000000000001)) (i32.const  0x00000001))
(assert_trap   (invoke "s64-to-i32x" (s64.const  0x0000000100000000)) "overflow")
(assert_trap   (invoke "s64-to-i32x" (s64.const  0x0000000100000001)) "overflow")

(assert_return (invoke "u64-to-i32"  (u64.const  0x0000000080000000)) (i32.const -0x80000000))
(assert_return (invoke "u64-to-i32"  (u64.const  0x0000000080000001)) (i32.const -0x7fffffff))
(assert_return (invoke "u64-to-i32"  (u64.const  0xffffffffffffffff)) (i32.const  0xffffffff))
(assert_return (invoke "u64-to-i32"  (u64.const  0x0000000000000000)) (i32.const  0x00000000))
(assert_return (invoke "u64-to-i32"  (u64.const  0x0000000000000001)) (i32.const  0x00000001))
(assert_return (invoke "u64-to-i32"  (u64.const  0x0000000100000000)) (i32.const  0x00000000))
(assert_return (invoke "u64-to-i32"  (u64.const  0x0000000100000001)) (i32.const  0x00000001))

(assert_trap   (invoke "u64-to-i32x" (u64.const  0x0000000080000000)) "overflow")
(assert_trap   (invoke "u64-to-i32x" (u64.const  0x0000000080000001)) "overflow")
(assert_trap   (invoke "u64-to-i32x" (u64.const  0xffffffffffffffff)) "overflow")
(assert_return (invoke "u64-to-i32x" (u64.const  0x0000000000000000)) (i32.const  0x00000000))
(assert_return (invoke "u64-to-i32x" (u64.const  0x0000000000000001)) (i32.const  0x00000001))
(assert_trap   (invoke "u64-to-i32x" (u64.const  0x0000000100000000)) "overflow")
(assert_trap   (invoke "u64-to-i32x" (u64.const  0x0000000100000001)) "overflow")



(assert_return (invoke "s8-to-i64"  (s8.const 0x80)) (i64.const -0x0000000000000080))
(assert_return (invoke "s8-to-i64"  (s8.const 0xff)) (i64.const  0xffffffffffffffff))
(assert_return (invoke "s8-to-i64"  (s8.const 0x00)) (i64.const  0x0000000000000000))
(assert_return (invoke "s8-to-i64"  (s8.const 0x01)) (i64.const  0x0000000000000001))
(assert_return (invoke "s8-to-i64"  (s8.const 0x7f)) (i64.const  0x000000000000007f))

(assert_return (invoke "u8-to-i64"  (u8.const 0x80)) (i64.const  0x0000000000000080))
(assert_return (invoke "u8-to-i64"  (u8.const 0xff)) (i64.const  0x00000000000000ff))
(assert_return (invoke "u8-to-i64"  (u8.const 0x00)) (i64.const  0x0000000000000000))
(assert_return (invoke "u8-to-i64"  (u8.const 0x01)) (i64.const  0x0000000000000001))
(assert_return (invoke "u8-to-i64"  (u8.const 0x7f)) (i64.const  0x000000000000007f))

(assert_return (invoke "s16-to-i64" (s16.const 0x8000)) (i64.const -0x0000000000008000))
(assert_return (invoke "s16-to-i64" (s16.const 0xffff)) (i64.const  0xffffffffffffffff))
(assert_return (invoke "s16-to-i64" (s16.const 0x0000)) (i64.const  0x0000000000000000))
(assert_return (invoke "s16-to-i64" (s16.const 0x0001)) (i64.const  0x0000000000000001))
(assert_return (invoke "s16-to-i64" (s16.const 0x7fff)) (i64.const  0x0000000000007fff))

(assert_return (invoke "u16-to-i64" (u16.const 0x8000)) (i64.const  0x0000000000008000))
(assert_return (invoke "u16-to-i64" (u16.const 0xffff)) (i64.const  0x000000000000ffff))
(assert_return (invoke "u16-to-i64" (u16.const 0x0000)) (i64.const  0x0000000000000000))
(assert_return (invoke "u16-to-i64" (u16.const 0x0001)) (i64.const  0x0000000000000001))
(assert_return (invoke "u16-to-i64" (u16.const 0x7fff)) (i64.const  0x0000000000007fff))

(assert_return (invoke "s32-to-i64" (s32.const 0x80000000)) (i64.const -0x0000000080000000))
(assert_return (invoke "s32-to-i64" (s32.const 0xffffffff)) (i64.const  0xffffffffffffffff))
(assert_return (invoke "s32-to-i64" (s32.const 0x00000000)) (i64.const  0x0000000000000000))
(assert_return (invoke "s32-to-i64" (s32.const 0x00000001)) (i64.const  0x0000000000000001))
(assert_return (invoke "s32-to-i64" (s32.const 0x7fffffff)) (i64.const  0x000000007fffffff))

(assert_return (invoke "u32-to-i64" (u32.const 0x80000000)) (i64.const  0x0000000080000000))
(assert_return (invoke "u32-to-i64" (u32.const 0xffffffff)) (i64.const  0x00000000ffffffff))
(assert_return (invoke "u32-to-i64" (u32.const 0x00000000)) (i64.const  0x0000000000000000))
(assert_return (invoke "u32-to-i64" (u32.const 0x00000001)) (i64.const  0x0000000000000001))
(assert_return (invoke "u32-to-i64" (u32.const 0x7fffffff)) (i64.const  0x000000007fffffff))

(assert_return (invoke "s64-to-i64" (s64.const 0x8000000000000000)) (i64.const -0x8000000000000000))
(assert_return (invoke "s64-to-i64" (s64.const 0xffffffffffffffff)) (i64.const  0xffffffffffffffff))
(assert_return (invoke "s64-to-i64" (s64.const 0x0000000000000000)) (i64.const  0x0000000000000000))
(assert_return (invoke "s64-to-i64" (s64.const 0x0000000000000001)) (i64.const  0x0000000000000001))
(assert_return (invoke "s64-to-i64" (s64.const 0x7fffffffffffffff)) (i64.const  0x7fffffffffffffff))

(assert_return (invoke "u64-to-i64" (u64.const 0x8000000000000000)) (i64.const  0x8000000000000000))
(assert_return (invoke "u64-to-i64" (u64.const 0xffffffffffffffff)) (i64.const  0xffffffffffffffff))
(assert_return (invoke "u64-to-i64" (u64.const 0x0000000000000000)) (i64.const  0x0000000000000000))
(assert_return (invoke "u64-to-i64" (u64.const 0x0000000000000001)) (i64.const  0x0000000000000001))
(assert_return (invoke "u64-to-i64" (u64.const 0x7fffffffffffffff)) (i64.const  0x7fffffffffffffff))
