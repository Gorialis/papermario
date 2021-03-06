.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel test_player_entity_aabb
/* A71AC 80110AAC 3C058011 */  lui       $a1, %hi(gPlayerStatus)
/* A71B0 80110AB0 24A5EFC8 */  addiu     $a1, $a1, %lo(gPlayerStatus)
/* A71B4 80110AB4 84A300B0 */  lh        $v1, 0xb0($a1)
/* A71B8 80110AB8 C4A0002C */  lwc1      $f0, 0x2c($a1)
/* A71BC 80110ABC 44831000 */  mtc1      $v1, $f2
/* A71C0 80110AC0 00000000 */  nop       
/* A71C4 80110AC4 468010A0 */  cvt.s.w   $f2, $f2
/* A71C8 80110AC8 46020000 */  add.s     $f0, $f0, $f2
/* A71CC 80110ACC C482004C */  lwc1      $f2, 0x4c($a0)
/* A71D0 80110AD0 46001101 */  sub.s     $f4, $f2, $f0
/* A71D4 80110AD4 44800000 */  mtc1      $zero, $f0
/* A71D8 80110AD8 00000000 */  nop       
/* A71DC 80110ADC 4604003C */  c.lt.s    $f0, $f4
/* A71E0 80110AE0 00000000 */  nop       
/* A71E4 80110AE4 4501000B */  bc1t      .L80110B14
/* A71E8 80110AE8 00000000 */   nop      
/* A71EC 80110AEC 8482000E */  lh        $v0, 0xe($a0)
/* A71F0 80110AF0 46002005 */  abs.s     $f0, $f4
/* A71F4 80110AF4 00621021 */  addu      $v0, $v1, $v0
/* A71F8 80110AF8 44821000 */  mtc1      $v0, $f2
/* A71FC 80110AFC 00000000 */  nop       
/* A7200 80110B00 468010A0 */  cvt.s.w   $f2, $f2
/* A7204 80110B04 4600103C */  c.lt.s    $f2, $f0
/* A7208 80110B08 00000000 */  nop       
/* A720C 80110B0C 45000003 */  bc1f      .L80110B1C
/* A7210 80110B10 00000000 */   nop      
.L80110B14:
/* A7214 80110B14 03E00008 */  jr        $ra
/* A7218 80110B18 0000102D */   daddu    $v0, $zero, $zero
.L80110B1C:
/* A721C 80110B1C 84A300B2 */  lh        $v1, 0xb2($a1)
/* A7220 80110B20 8482000C */  lh        $v0, 0xc($a0)
/* A7224 80110B24 3C013FE0 */  lui       $at, 0x3fe0
/* A7228 80110B28 44810800 */  mtc1      $at, $f1
/* A722C 80110B2C 44800000 */  mtc1      $zero, $f0
/* A7230 80110B30 00621021 */  addu      $v0, $v1, $v0
/* A7234 80110B34 44821000 */  mtc1      $v0, $f2
/* A7238 80110B38 00000000 */  nop       
/* A723C 80110B3C 468010A1 */  cvt.d.w   $f2, $f2
/* A7240 80110B40 46201082 */  mul.d     $f2, $f2, $f0
/* A7244 80110B44 00000000 */  nop       
/* A7248 80110B48 84820010 */  lh        $v0, 0x10($a0)
/* A724C 80110B4C 00621821 */  addu      $v1, $v1, $v0
/* A7250 80110B50 44833000 */  mtc1      $v1, $f6
/* A7254 80110B54 00000000 */  nop       
/* A7258 80110B58 468031A1 */  cvt.d.w   $f6, $f6
/* A725C 80110B5C 46203182 */  mul.d     $f6, $f6, $f0
/* A7260 80110B60 00000000 */  nop       
/* A7264 80110B64 C4A40028 */  lwc1      $f4, 0x28($a1)
/* A7268 80110B68 C4800048 */  lwc1      $f0, 0x48($a0)
/* A726C 80110B6C C4A80030 */  lwc1      $f8, 0x30($a1)
/* A7270 80110B70 46002101 */  sub.s     $f4, $f4, $f0
/* A7274 80110B74 C4800050 */  lwc1      $f0, 0x50($a0)
/* A7278 80110B78 46004201 */  sub.s     $f8, $f8, $f0
/* A727C 80110B7C 46002105 */  abs.s     $f4, $f4
/* A7280 80110B80 46004205 */  abs.s     $f8, $f8
/* A7284 80110B84 462010A0 */  cvt.s.d   $f2, $f2
/* A7288 80110B88 4604103C */  c.lt.s    $f2, $f4
/* A728C 80110B8C 00000000 */  nop       
/* A7290 80110B90 4501FFE0 */  bc1t      .L80110B14
/* A7294 80110B94 462031A0 */   cvt.s.d  $f6, $f6
/* A7298 80110B98 4608303C */  c.lt.s    $f6, $f8
/* A729C 80110B9C 00000000 */  nop       
/* A72A0 80110BA0 4501FFDC */  bc1t      .L80110B14
/* A72A4 80110BA4 24020001 */   addiu    $v0, $zero, 1
/* A72A8 80110BA8 03E00008 */  jr        $ra
/* A72AC 80110BAC 00000000 */   nop      
