.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel osPfsRequestData
/* 488BC 8006D4BC 27BDFFF0 */  addiu     $sp, $sp, -0x10
/* 488C0 8006D4C0 3C05800A */  lui       $a1, 0x800a
/* 488C4 8006D4C4 90A5A606 */  lbu       $a1, -0x59fa($a1)
/* 488C8 8006D4C8 3C07800E */  lui       $a3, 0x800e
/* 488CC 8006D4CC 24E7A000 */  addiu     $a3, $a3, -0x6000
/* 488D0 8006D4D0 00003021 */  addu      $a2, $zero, $zero
/* 488D4 8006D4D4 24020001 */  addiu     $v0, $zero, 1
/* 488D8 8006D4D8 240300FF */  addiu     $v1, $zero, 0xff
/* 488DC 8006D4DC 3C01800E */  lui       $at, 0x800e
/* 488E0 8006D4E0 AC22A03C */  sw        $v0, -0x5fc4($at)
/* 488E4 8006D4E4 24020001 */  addiu     $v0, $zero, 1
/* 488E8 8006D4E8 A3A20001 */  sb        $v0, 1($sp)
/* 488EC 8006D4EC 24020003 */  addiu     $v0, $zero, 3
/* 488F0 8006D4F0 3C01800A */  lui       $at, 0x800a
/* 488F4 8006D4F4 A024A61C */  sb        $a0, -0x59e4($at)
/* 488F8 8006D4F8 A3A30000 */  sb        $v1, ($sp)
/* 488FC 8006D4FC A3A20002 */  sb        $v0, 2($sp)
/* 48900 8006D500 A3A40003 */  sb        $a0, 3($sp)
/* 48904 8006D504 A3A30004 */  sb        $v1, 4($sp)
/* 48908 8006D508 A3A30005 */  sb        $v1, 5($sp)
/* 4890C 8006D50C A3A30006 */  sb        $v1, 6($sp)
/* 48910 8006D510 18A0000F */  blez      $a1, .L8006D550
/* 48914 8006D514 A3A30007 */   sb       $v1, 7($sp)
.L8006D518:
/* 48918 8006D518 8BA20000 */  lwl       $v0, ($sp)
/* 4891C 8006D51C 9BA20003 */  lwr       $v0, 3($sp)
/* 48920 8006D520 8BA30004 */  lwl       $v1, 4($sp)
/* 48924 8006D524 9BA30007 */  lwr       $v1, 7($sp)
/* 48928 8006D528 A8E20000 */  swl       $v0, ($a3)
/* 4892C 8006D52C B8E20003 */  swr       $v0, 3($a3)
/* 48930 8006D530 A8E30004 */  swl       $v1, 4($a3)
/* 48934 8006D534 B8E30007 */  swr       $v1, 7($a3)
/* 48938 8006D538 3C02800A */  lui       $v0, 0x800a
/* 4893C 8006D53C 9042A606 */  lbu       $v0, -0x59fa($v0)
/* 48940 8006D540 24C60001 */  addiu     $a2, $a2, 1
/* 48944 8006D544 00C2102A */  slt       $v0, $a2, $v0
/* 48948 8006D548 1440FFF3 */  bnez      $v0, .L8006D518
/* 4894C 8006D54C 24E70008 */   addiu    $a3, $a3, 8
.L8006D550:
/* 48950 8006D550 240200FE */  addiu     $v0, $zero, 0xfe
/* 48954 8006D554 A0E20000 */  sb        $v0, ($a3)
/* 48958 8006D558 03E00008 */  jr        $ra
/* 4895C 8006D55C 27BD0010 */   addiu    $sp, $sp, 0x10
