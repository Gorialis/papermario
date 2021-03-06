.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80053654
/* 2EA54 80053654 27BDFFC8 */  addiu     $sp, $sp, -0x38
/* 2EA58 80053658 AFB3002C */  sw        $s3, 0x2c($sp)
/* 2EA5C 8005365C 0080982D */  daddu     $s3, $a0, $zero
/* 2EA60 80053660 AFBF0034 */  sw        $ra, 0x34($sp)
/* 2EA64 80053664 AFB40030 */  sw        $s4, 0x30($sp)
/* 2EA68 80053668 AFB20028 */  sw        $s2, 0x28($sp)
/* 2EA6C 8005366C AFB10024 */  sw        $s1, 0x24($sp)
/* 2EA70 80053670 AFB00020 */  sw        $s0, 0x20($sp)
/* 2EA74 80053674 9262130C */  lbu       $v0, 0x130c($s3)
/* 2EA78 80053678 24100002 */  addiu     $s0, $zero, 2
/* 2EA7C 8005367C 14500003 */  bne       $v0, $s0, .L8005368C
/* 2EA80 80053680 24020001 */   addiu    $v0, $zero, 1
/* 2EA84 80053684 0C015FAC */  jal       func_80057EB0
/* 2EA88 80053688 A262130C */   sb       $v0, 0x130c($s3)
.L8005368C:
/* 2EA8C 8005368C 92620050 */  lbu       $v0, 0x50($s3)
/* 2EA90 80053690 1040001B */  beqz      $v0, .L80053700
/* 2EA94 80053694 00000000 */   nop      
/* 2EA98 80053698 9262130C */  lbu       $v0, 0x130c($s3)
/* 2EA9C 8005369C 14400018 */  bnez      $v0, .L80053700
/* 2EAA0 800536A0 24020001 */   addiu    $v0, $zero, 1
/* 2EAA4 800536A4 92630053 */  lbu       $v1, 0x53($s3)
/* 2EAA8 800536A8 10620005 */  beq       $v1, $v0, .L800536C0
/* 2EAAC 800536AC 00000000 */   nop      
/* 2EAB0 800536B0 10700009 */  beq       $v1, $s0, .L800536D8
/* 2EAB4 800536B4 00000000 */   nop      
/* 2EAB8 800536B8 08014DBD */  j         .L800536F4
/* 2EABC 800536BC 00000000 */   nop      
.L800536C0:
/* 2EAC0 800536C0 0C015F72 */  jal       func_80057DC8
/* 2EAC4 800536C4 92640052 */   lbu      $a0, 0x52($s3)
/* 2EAC8 800536C8 0C015F82 */  jal       func_80057E08
/* 2EACC 800536CC 92640051 */   lbu      $a0, 0x51($s3)
/* 2EAD0 800536D0 08014DC0 */  j         .L80053700
/* 2EAD4 800536D4 A2600050 */   sb       $zero, 0x50($s3)
.L800536D8:
/* 2EAD8 800536D8 92640052 */  lbu       $a0, 0x52($s3)
/* 2EADC 800536DC 0C015F72 */  jal       func_80057DC8
/* 2EAE0 800536E0 00000000 */   nop      
/* 2EAE4 800536E4 0C015F97 */  jal       func_80057E5C
/* 2EAE8 800536E8 92640051 */   lbu      $a0, 0x51($s3)
/* 2EAEC 800536EC 08014DC0 */  j         .L80053700
/* 2EAF0 800536F0 A2600050 */   sb       $zero, 0x50($s3)
.L800536F4:
/* 2EAF4 800536F4 0C015FAC */  jal       func_80057EB0
/* 2EAF8 800536F8 00000000 */   nop      
/* 2EAFC 800536FC A2600050 */  sb        $zero, 0x50($s3)
.L80053700:
/* 2EB00 80053700 92620041 */  lbu       $v0, 0x41($s3)
/* 2EB04 80053704 10400005 */  beqz      $v0, .L8005371C
/* 2EB08 80053708 00000000 */   nop      
/* 2EB0C 8005370C 92650040 */  lbu       $a1, 0x40($s3)
/* 2EB10 80053710 0C015B73 */  jal       func_80056DCC
/* 2EB14 80053714 0000202D */   daddu    $a0, $zero, $zero
/* 2EB18 80053718 A2600041 */  sb        $zero, 0x41($s3)
.L8005371C:
/* 2EB1C 8005371C 92620045 */  lbu       $v0, 0x45($s3)
/* 2EB20 80053720 10400005 */  beqz      $v0, .L80053738
/* 2EB24 80053724 00000000 */   nop      
/* 2EB28 80053728 92650044 */  lbu       $a1, 0x44($s3)
/* 2EB2C 8005372C 0C015B73 */  jal       func_80056DCC
/* 2EB30 80053730 24040001 */   addiu    $a0, $zero, 1
/* 2EB34 80053734 A2600045 */  sb        $zero, 0x45($s3)
.L80053738:
/* 2EB38 80053738 92620049 */  lbu       $v0, 0x49($s3)
/* 2EB3C 8005373C 10400005 */  beqz      $v0, .L80053754
/* 2EB40 80053740 00000000 */   nop      
/* 2EB44 80053744 92650048 */  lbu       $a1, 0x48($s3)
/* 2EB48 80053748 0C015B73 */  jal       func_80056DCC
/* 2EB4C 8005374C 24040002 */   addiu    $a0, $zero, 2
/* 2EB50 80053750 A2600049 */  sb        $zero, 0x49($s3)
.L80053754:
/* 2EB54 80053754 9262004D */  lbu       $v0, 0x4d($s3)
/* 2EB58 80053758 10400006 */  beqz      $v0, .L80053774
/* 2EB5C 8005375C 0000902D */   daddu    $s2, $zero, $zero
/* 2EB60 80053760 9265004C */  lbu       $a1, 0x4c($s3)
/* 2EB64 80053764 0C015B73 */  jal       func_80056DCC
/* 2EB68 80053768 24040003 */   addiu    $a0, $zero, 3
/* 2EB6C 8005376C A260004D */  sb        $zero, 0x4d($s3)
/* 2EB70 80053770 0000902D */  daddu     $s2, $zero, $zero
.L80053774:
/* 2EB74 80053774 24141320 */  addiu     $s4, $zero, 0x1320
.L80053778:
/* 2EB78 80053778 02748021 */  addu      $s0, $s3, $s4
/* 2EB7C 8005377C 92020042 */  lbu       $v0, 0x42($s0)
/* 2EB80 80053780 92110043 */  lbu       $s1, 0x43($s0)
/* 2EB84 80053784 10400007 */  beqz      $v0, .L800537A4
/* 2EB88 80053788 32220002 */   andi     $v0, $s1, 2
/* 2EB8C 8005378C 0C015BBA */  jal       func_80056EE8
/* 2EB90 80053790 324400FF */   andi     $a0, $s2, 0xff
/* 2EB94 80053794 A2000042 */  sb        $zero, 0x42($s0)
/* 2EB98 80053798 AE00001C */  sw        $zero, 0x1c($s0)
/* 2EB9C 8005379C A2000045 */  sb        $zero, 0x45($s0)
/* 2EBA0 800537A0 32220002 */  andi      $v0, $s1, 2
.L800537A4:
/* 2EBA4 800537A4 10400013 */  beqz      $v0, .L800537F4
/* 2EBA8 800537A8 0200202D */   daddu    $a0, $s0, $zero
/* 2EBAC 800537AC 0C014AFE */  jal       func_80052BF8
/* 2EBB0 800537B0 26050014 */   addiu    $a1, $s0, 0x14
/* 2EBB4 800537B4 8602000C */  lh        $v0, 0xc($s0)
/* 2EBB8 800537B8 92050010 */  lbu       $a1, 0x10($s0)
/* 2EBBC 800537BC AFA20010 */  sw        $v0, 0x10($sp)
/* 2EBC0 800537C0 9202000E */  lbu       $v0, 0xe($s0)
/* 2EBC4 800537C4 AFA20014 */  sw        $v0, 0x14($sp)
/* 2EBC8 800537C8 9202000F */  lbu       $v0, 0xf($s0)
/* 2EBCC 800537CC AFA20018 */  sw        $v0, 0x18($sp)
/* 2EBD0 800537D0 8E020008 */  lw        $v0, 8($s0)
/* 2EBD4 800537D4 AFA2001C */  sw        $v0, 0x1c($sp)
/* 2EBD8 800537D8 8E060000 */  lw        $a2, ($s0)
/* 2EBDC 800537DC 8E070004 */  lw        $a3, 4($s0)
/* 2EBE0 800537E0 0C015BE9 */  jal       func_80056FA4
/* 2EBE4 800537E4 324400FF */   andi     $a0, $s2, 0xff
/* 2EBE8 800537E8 92020044 */  lbu       $v0, 0x44($s0)
/* 2EBEC 800537EC 08014E15 */  j         .L80053854
/* 2EBF0 800537F0 A2020045 */   sb       $v0, 0x45($s0)
.L800537F4:
/* 2EBF4 800537F4 32220008 */  andi      $v0, $s1, 8
/* 2EBF8 800537F8 10400005 */  beqz      $v0, .L80053810
/* 2EBFC 800537FC 32220004 */   andi     $v0, $s1, 4
/* 2EC00 80053800 8E050004 */  lw        $a1, 4($s0)
/* 2EC04 80053804 0C015CD1 */  jal       func_80057344
/* 2EC08 80053808 324400FF */   andi     $a0, $s2, 0xff
/* 2EC0C 8005380C 32220004 */  andi      $v0, $s1, 4
.L80053810:
/* 2EC10 80053810 1040000A */  beqz      $v0, .L8005383C
/* 2EC14 80053814 32220010 */   andi     $v0, $s1, 0x10
/* 2EC18 80053818 9202000F */  lbu       $v0, 0xf($s0)
/* 2EC1C 8005381C 8605000C */  lh        $a1, 0xc($s0)
/* 2EC20 80053820 9207000E */  lbu       $a3, 0xe($s0)
/* 2EC24 80053824 AFA20010 */  sw        $v0, 0x10($sp)
/* 2EC28 80053828 8E060008 */  lw        $a2, 8($s0)
/* 2EC2C 8005382C 0C015CDB */  jal       func_8005736C
/* 2EC30 80053830 324400FF */   andi     $a0, $s2, 0xff
/* 2EC34 80053834 08014E16 */  j         .L80053858
/* 2EC38 80053838 A2000043 */   sb       $zero, 0x43($s0)
.L8005383C:
/* 2EC3C 8005383C 50400006 */  beql      $v0, $zero, .L80053858
/* 2EC40 80053840 A2000043 */   sb       $zero, 0x43($s0)
/* 2EC44 80053844 9205000E */  lbu       $a1, 0xe($s0)
/* 2EC48 80053848 9206000F */  lbu       $a2, 0xf($s0)
/* 2EC4C 8005384C 0C015D52 */  jal       func_80057548
/* 2EC50 80053850 324400FF */   andi     $a0, $s2, 0xff
.L80053854:
/* 2EC54 80053854 A2000043 */  sb        $zero, 0x43($s0)
.L80053858:
/* 2EC58 80053858 26520001 */  addiu     $s2, $s2, 1
/* 2EC5C 8005385C 2E420018 */  sltiu     $v0, $s2, 0x18
/* 2EC60 80053860 1440FFC5 */  bnez      $v0, .L80053778
/* 2EC64 80053864 26940048 */   addiu    $s4, $s4, 0x48
/* 2EC68 80053868 8FBF0034 */  lw        $ra, 0x34($sp)
/* 2EC6C 8005386C 8FB40030 */  lw        $s4, 0x30($sp)
/* 2EC70 80053870 8FB3002C */  lw        $s3, 0x2c($sp)
/* 2EC74 80053874 8FB20028 */  lw        $s2, 0x28($sp)
/* 2EC78 80053878 8FB10024 */  lw        $s1, 0x24($sp)
/* 2EC7C 8005387C 8FB00020 */  lw        $s0, 0x20($sp)
/* 2EC80 80053880 03E00008 */  jr        $ra
/* 2EC84 80053884 27BD0038 */   addiu    $sp, $sp, 0x38
