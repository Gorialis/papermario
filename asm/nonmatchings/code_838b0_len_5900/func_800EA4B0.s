.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800EA4B0
/* 83960 800EA4B0 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 83964 800EA4B4 AFBF0010 */  sw        $ra, 0x10($sp)
/* 83968 800EA4B8 04800012 */  bltz      $a0, .L800EA504
/* 8396C 800EA4BC 24030001 */   addiu    $v1, $zero, 1
/* 83970 800EA4C0 30824000 */  andi      $v0, $a0, 0x4000
/* 83974 800EA4C4 1040000F */  beqz      $v0, .L800EA504
/* 83978 800EA4C8 00000000 */   nop      
/* 8397C 800EA4CC 0C0441A9 */  jal       get_entity_type
/* 83980 800EA4D0 00000000 */   nop      
/* 83984 800EA4D4 2443FFF9 */  addiu     $v1, $v0, -7
/* 83988 800EA4D8 2C620036 */  sltiu     $v0, $v1, 0x36
/* 8398C 800EA4DC 10400008 */  beqz      $v0, .L800EA500
/* 83990 800EA4E0 00031080 */   sll      $v0, $v1, 2
/* 83994 800EA4E4 3C018011 */  lui       $at, 0x8011
/* 83998 800EA4E8 00220821 */  addu      $at, $at, $v0
/* 8399C 800EA4EC 8C22C040 */  lw        $v0, -0x3fc0($at)
/* 839A0 800EA4F0 00400008 */  jr        $v0
/* 839A4 800EA4F4 00000000 */   nop      
/* 839A8 800EA4F8 0803A941 */  j         .L800EA504
/* 839AC 800EA4FC 0000182D */   daddu    $v1, $zero, $zero
.L800EA500:
/* 839B0 800EA500 24030001 */  addiu     $v1, $zero, 1
.L800EA504:
/* 839B4 800EA504 8FBF0010 */  lw        $ra, 0x10($sp)
/* 839B8 800EA508 0060102D */  daddu     $v0, $v1, $zero
/* 839BC 800EA50C 03E00008 */  jr        $ra
/* 839C0 800EA510 27BD0018 */   addiu    $sp, $sp, 0x18
