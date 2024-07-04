
a.out:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 3fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 72 2f 00 00    	push   0x2f72(%rip)        # 3f98 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 73 2f 00 00 	bnd jmp *0x2f73(%rip)        # 3fa0 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	push   $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	push   $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	push   $0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64 
    1064:	68 03 00 00 00       	push   $0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64 
    1074:	68 04 00 00 00       	push   $0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    107f:	90                   	nop
    1080:	f3 0f 1e fa          	endbr64 
    1084:	68 05 00 00 00       	push   $0x5
    1089:	f2 e9 91 ff ff ff    	bnd jmp 1020 <_init+0x20>
    108f:	90                   	nop

Disassembly of section .plt.got:

0000000000001090 <__cxa_finalize@plt>:
    1090:	f3 0f 1e fa          	endbr64 
    1094:	f2 ff 25 5d 2f 00 00 	bnd jmp *0x2f5d(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    109b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

00000000000010a0 <free@plt>:
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	f2 ff 25 fd 2e 00 00 	bnd jmp *0x2efd(%rip)        # 3fa8 <free@GLIBC_2.2.5>
    10ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010b0 <puts@plt>:
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	f2 ff 25 f5 2e 00 00 	bnd jmp *0x2ef5(%rip)        # 3fb0 <puts@GLIBC_2.2.5>
    10bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010c0 <__stack_chk_fail@plt>:
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	f2 ff 25 ed 2e 00 00 	bnd jmp *0x2eed(%rip)        # 3fb8 <__stack_chk_fail@GLIBC_2.4>
    10cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010d0 <__assert_fail@plt>:
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	f2 ff 25 e5 2e 00 00 	bnd jmp *0x2ee5(%rip)        # 3fc0 <__assert_fail@GLIBC_2.2.5>
    10db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010e0 <malloc@plt>:
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	f2 ff 25 dd 2e 00 00 	bnd jmp *0x2edd(%rip)        # 3fc8 <malloc@GLIBC_2.2.5>
    10eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010f0 <fwrite@plt>:
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	f2 ff 25 d5 2e 00 00 	bnd jmp *0x2ed5(%rip)        # 3fd0 <fwrite@GLIBC_2.2.5>
    10fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000001100 <_start>:
    1100:	f3 0f 1e fa          	endbr64 
    1104:	31 ed                	xor    %ebp,%ebp
    1106:	49 89 d1             	mov    %rdx,%r9
    1109:	5e                   	pop    %rsi
    110a:	48 89 e2             	mov    %rsp,%rdx
    110d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1111:	50                   	push   %rax
    1112:	54                   	push   %rsp
    1113:	45 31 c0             	xor    %r8d,%r8d
    1116:	31 c9                	xor    %ecx,%ecx
    1118:	48 8d 3d ca 00 00 00 	lea    0xca(%rip),%rdi        # 11e9 <main>
    111f:	ff 15 b3 2e 00 00    	call   *0x2eb3(%rip)        # 3fd8 <__libc_start_main@GLIBC_2.34>
    1125:	f4                   	hlt    
    1126:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    112d:	00 00 00 

0000000000001130 <deregister_tm_clones>:
    1130:	48 8d 3d d9 2e 00 00 	lea    0x2ed9(%rip),%rdi        # 4010 <__TMC_END__>
    1137:	48 8d 05 d2 2e 00 00 	lea    0x2ed2(%rip),%rax        # 4010 <__TMC_END__>
    113e:	48 39 f8             	cmp    %rdi,%rax
    1141:	74 15                	je     1158 <deregister_tm_clones+0x28>
    1143:	48 8b 05 96 2e 00 00 	mov    0x2e96(%rip),%rax        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    114a:	48 85 c0             	test   %rax,%rax
    114d:	74 09                	je     1158 <deregister_tm_clones+0x28>
    114f:	ff e0                	jmp    *%rax
    1151:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1158:	c3                   	ret    
    1159:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001160 <register_tm_clones>:
    1160:	48 8d 3d a9 2e 00 00 	lea    0x2ea9(%rip),%rdi        # 4010 <__TMC_END__>
    1167:	48 8d 35 a2 2e 00 00 	lea    0x2ea2(%rip),%rsi        # 4010 <__TMC_END__>
    116e:	48 29 fe             	sub    %rdi,%rsi
    1171:	48 89 f0             	mov    %rsi,%rax
    1174:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1178:	48 c1 f8 03          	sar    $0x3,%rax
    117c:	48 01 c6             	add    %rax,%rsi
    117f:	48 d1 fe             	sar    %rsi
    1182:	74 14                	je     1198 <register_tm_clones+0x38>
    1184:	48 8b 05 65 2e 00 00 	mov    0x2e65(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable@Base>
    118b:	48 85 c0             	test   %rax,%rax
    118e:	74 08                	je     1198 <register_tm_clones+0x38>
    1190:	ff e0                	jmp    *%rax
    1192:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1198:	c3                   	ret    
    1199:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011a0 <__do_global_dtors_aux>:
    11a0:	f3 0f 1e fa          	endbr64 
    11a4:	80 3d 7d 2e 00 00 00 	cmpb   $0x0,0x2e7d(%rip)        # 4028 <completed.0>
    11ab:	75 2b                	jne    11d8 <__do_global_dtors_aux+0x38>
    11ad:	55                   	push   %rbp
    11ae:	48 83 3d 42 2e 00 00 	cmpq   $0x0,0x2e42(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    11b5:	00 
    11b6:	48 89 e5             	mov    %rsp,%rbp
    11b9:	74 0c                	je     11c7 <__do_global_dtors_aux+0x27>
    11bb:	48 8b 3d 46 2e 00 00 	mov    0x2e46(%rip),%rdi        # 4008 <__dso_handle>
    11c2:	e8 c9 fe ff ff       	call   1090 <__cxa_finalize@plt>
    11c7:	e8 64 ff ff ff       	call   1130 <deregister_tm_clones>
    11cc:	c6 05 55 2e 00 00 01 	movb   $0x1,0x2e55(%rip)        # 4028 <completed.0>
    11d3:	5d                   	pop    %rbp
    11d4:	c3                   	ret    
    11d5:	0f 1f 00             	nopl   (%rax)
    11d8:	c3                   	ret    
    11d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011e0 <frame_dummy>:
    11e0:	f3 0f 1e fa          	endbr64 
    11e4:	e9 77 ff ff ff       	jmp    1160 <register_tm_clones>

00000000000011e9 <main>:
    11e9:	f3 0f 1e fa          	endbr64 
    11ed:	55                   	push   %rbp
    11ee:	48 89 e5             	mov    %rsp,%rbp
    11f1:	48 83 ec 30          	sub    $0x30,%rsp
    11f5:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    11fc:	00 00 
    11fe:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1202:	31 c0                	xor    %eax,%eax
    1204:	b8 00 00 00 00       	mov    $0x0,%eax
    1209:	e8 08 02 00 00       	call   1416 <pqInit>
    120e:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    1212:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1216:	48 89 c7             	mov    %rax,%rdi
    1219:	e8 78 05 00 00       	call   1796 <pqGetSize>
    121e:	85 c0                	test   %eax,%eax
    1220:	74 28                	je     124a <main+0x61>
    1222:	48 8d 05 66 0e 00 00 	lea    0xe66(%rip),%rax        # 208f <__PRETTY_FUNCTION__.0>
    1229:	48 89 c1             	mov    %rax,%rcx
    122c:	ba 08 00 00 00       	mov    $0x8,%edx
    1231:	48 8d 05 d0 0d 00 00 	lea    0xdd0(%rip),%rax        # 2008 <_IO_stdin_used+0x8>
    1238:	48 89 c6             	mov    %rax,%rsi
    123b:	48 8d 05 cd 0d 00 00 	lea    0xdcd(%rip),%rax        # 200f <_IO_stdin_used+0xf>
    1242:	48 89 c7             	mov    %rax,%rdi
    1245:	e8 86 fe ff ff       	call   10d0 <__assert_fail@plt>
    124a:	c7 45 d4 0a 00 00 00 	movl   $0xa,-0x2c(%rbp)
    1251:	c7 45 d8 14 00 00 00 	movl   $0x14,-0x28(%rbp)
    1258:	c7 45 dc 1e 00 00 00 	movl   $0x1e,-0x24(%rbp)
    125f:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    1263:	48 8d 45 d4          	lea    -0x2c(%rbp),%rax
    1267:	be 01 00 00 00       	mov    $0x1,%esi
    126c:	48 89 c7             	mov    %rax,%rdi
    126f:	e8 1f 02 00 00       	call   1493 <pqInsert>
    1274:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    1278:	48 8d 45 d8          	lea    -0x28(%rbp),%rax
    127c:	be 02 00 00 00       	mov    $0x2,%esi
    1281:	48 89 c7             	mov    %rax,%rdi
    1284:	e8 0a 02 00 00       	call   1493 <pqInsert>
    1289:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    128d:	48 8d 45 dc          	lea    -0x24(%rbp),%rax
    1291:	be 03 00 00 00       	mov    $0x3,%esi
    1296:	48 89 c7             	mov    %rax,%rdi
    1299:	e8 f5 01 00 00       	call   1493 <pqInsert>
    129e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    12a2:	48 89 c7             	mov    %rax,%rdi
    12a5:	e8 ec 04 00 00       	call   1796 <pqGetSize>
    12aa:	83 f8 03             	cmp    $0x3,%eax
    12ad:	74 28                	je     12d7 <main+0xee>
    12af:	48 8d 05 d9 0d 00 00 	lea    0xdd9(%rip),%rax        # 208f <__PRETTY_FUNCTION__.0>
    12b6:	48 89 c1             	mov    %rax,%rcx
    12b9:	ba 11 00 00 00       	mov    $0x11,%edx
    12be:	48 8d 05 43 0d 00 00 	lea    0xd43(%rip),%rax        # 2008 <_IO_stdin_used+0x8>
    12c5:	48 89 c6             	mov    %rax,%rsi
    12c8:	48 8d 05 52 0d 00 00 	lea    0xd52(%rip),%rax        # 2021 <_IO_stdin_used+0x21>
    12cf:	48 89 c7             	mov    %rax,%rdi
    12d2:	e8 f9 fd ff ff       	call   10d0 <__assert_fail@plt>
    12d7:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    12db:	48 89 c7             	mov    %rax,%rdi
    12de:	e8 25 04 00 00       	call   1708 <pqPeek>
    12e3:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    12e7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    12eb:	8b 00                	mov    (%rax),%eax
    12ed:	83 f8 0a             	cmp    $0xa,%eax
    12f0:	74 28                	je     131a <main+0x131>
    12f2:	48 8d 05 96 0d 00 00 	lea    0xd96(%rip),%rax        # 208f <__PRETTY_FUNCTION__.0>
    12f9:	48 89 c1             	mov    %rax,%rcx
    12fc:	ba 15 00 00 00       	mov    $0x15,%edx
    1301:	48 8d 05 00 0d 00 00 	lea    0xd00(%rip),%rax        # 2008 <_IO_stdin_used+0x8>
    1308:	48 89 c6             	mov    %rax,%rsi
    130b:	48 8d 05 21 0d 00 00 	lea    0xd21(%rip),%rax        # 2033 <_IO_stdin_used+0x33>
    1312:	48 89 c7             	mov    %rax,%rdi
    1315:	e8 b6 fd ff ff       	call   10d0 <__assert_fail@plt>
    131a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    131e:	48 89 c7             	mov    %rax,%rdi
    1321:	e8 88 03 00 00       	call   16ae <pqRemoveMin>
    1326:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    132a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    132e:	8b 00                	mov    (%rax),%eax
    1330:	83 f8 0a             	cmp    $0xa,%eax
    1333:	74 28                	je     135d <main+0x174>
    1335:	48 8d 05 53 0d 00 00 	lea    0xd53(%rip),%rax        # 208f <__PRETTY_FUNCTION__.0>
    133c:	48 89 c1             	mov    %rax,%rcx
    133f:	ba 19 00 00 00       	mov    $0x19,%edx
    1344:	48 8d 05 bd 0c 00 00 	lea    0xcbd(%rip),%rax        # 2008 <_IO_stdin_used+0x8>
    134b:	48 89 c6             	mov    %rax,%rsi
    134e:	48 8d 05 f0 0c 00 00 	lea    0xcf0(%rip),%rax        # 2045 <_IO_stdin_used+0x45>
    1355:	48 89 c7             	mov    %rax,%rdi
    1358:	e8 73 fd ff ff       	call   10d0 <__assert_fail@plt>
    135d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1361:	48 89 c7             	mov    %rax,%rdi
    1364:	e8 2d 04 00 00       	call   1796 <pqGetSize>
    1369:	83 f8 02             	cmp    $0x2,%eax
    136c:	74 28                	je     1396 <main+0x1ad>
    136e:	48 8d 05 1a 0d 00 00 	lea    0xd1a(%rip),%rax        # 208f <__PRETTY_FUNCTION__.0>
    1375:	48 89 c1             	mov    %rax,%rcx
    1378:	ba 1a 00 00 00       	mov    $0x1a,%edx
    137d:	48 8d 05 84 0c 00 00 	lea    0xc84(%rip),%rax        # 2008 <_IO_stdin_used+0x8>
    1384:	48 89 c6             	mov    %rax,%rsi
    1387:	48 8d 05 ca 0c 00 00 	lea    0xcca(%rip),%rax        # 2058 <_IO_stdin_used+0x58>
    138e:	48 89 c7             	mov    %rax,%rdi
    1391:	e8 3a fd ff ff       	call   10d0 <__assert_fail@plt>
    1396:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    139a:	48 89 c7             	mov    %rax,%rdi
    139d:	e8 3e 04 00 00       	call   17e0 <pqFree>
    13a2:	48 8d 05 c7 0c 00 00 	lea    0xcc7(%rip),%rax        # 2070 <_IO_stdin_used+0x70>
    13a9:	48 89 c7             	mov    %rax,%rdi
    13ac:	e8 ff fc ff ff       	call   10b0 <puts@plt>
    13b1:	b8 00 00 00 00       	mov    $0x0,%eax
    13b6:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    13ba:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    13c1:	00 00 
    13c3:	74 05                	je     13ca <main+0x1e1>
    13c5:	e8 f6 fc ff ff       	call   10c0 <__stack_chk_fail@plt>
    13ca:	c9                   	leave  
    13cb:	c3                   	ret    

00000000000013cc <pqGetErrorCode>:
    13cc:	f3 0f 1e fa          	endbr64 
    13d0:	55                   	push   %rbp
    13d1:	48 89 e5             	mov    %rsp,%rbp
    13d4:	48 83 ec 10          	sub    $0x10,%rsp
    13d8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    13dc:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    13e1:	75 2a                	jne    140d <pqGetErrorCode+0x41>
    13e3:	48 8b 05 36 2c 00 00 	mov    0x2c36(%rip),%rax        # 4020 <stderr@GLIBC_2.2.5>
    13ea:	48 89 c1             	mov    %rax,%rcx
    13ed:	ba 1e 00 00 00       	mov    $0x1e,%edx
    13f2:	be 01 00 00 00       	mov    $0x1,%esi
    13f7:	48 8d 05 9a 0c 00 00 	lea    0xc9a(%rip),%rax        # 2098 <__PRETTY_FUNCTION__.0+0x9>
    13fe:	48 89 c7             	mov    %rax,%rdi
    1401:	e8 ea fc ff ff       	call   10f0 <fwrite@plt>
    1406:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    140b:	eb 07                	jmp    1414 <pqGetErrorCode+0x48>
    140d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1411:	8b 40 08             	mov    0x8(%rax),%eax
    1414:	c9                   	leave  
    1415:	c3                   	ret    

0000000000001416 <pqInit>:
    1416:	f3 0f 1e fa          	endbr64 
    141a:	55                   	push   %rbp
    141b:	48 89 e5             	mov    %rsp,%rbp
    141e:	48 83 ec 10          	sub    $0x10,%rsp
    1422:	bf 10 00 00 00       	mov    $0x10,%edi
    1427:	e8 b4 fc ff ff       	call   10e0 <malloc@plt>
    142c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1430:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    1435:	75 35                	jne    146c <pqInit+0x56>
    1437:	48 8b 05 e2 2b 00 00 	mov    0x2be2(%rip),%rax        # 4020 <stderr@GLIBC_2.2.5>
    143e:	48 89 c1             	mov    %rax,%rcx
    1441:	ba 13 00 00 00       	mov    $0x13,%edx
    1446:	be 01 00 00 00       	mov    $0x1,%esi
    144b:	48 8d 05 65 0c 00 00 	lea    0xc65(%rip),%rax        # 20b7 <__PRETTY_FUNCTION__.0+0x28>
    1452:	48 89 c7             	mov    %rax,%rdi
    1455:	e8 96 fc ff ff       	call   10f0 <fwrite@plt>
    145a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    145e:	c7 40 08 03 00 00 00 	movl   $0x3,0x8(%rax)
    1465:	b8 00 00 00 00       	mov    $0x0,%eax
    146a:	eb 25                	jmp    1491 <pqInit+0x7b>
    146c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1470:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
    1477:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    147b:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%rax)
    1482:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1486:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%rax)
    148d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1491:	c9                   	leave  
    1492:	c3                   	ret    

0000000000001493 <pqInsert>:
    1493:	f3 0f 1e fa          	endbr64 
    1497:	55                   	push   %rbp
    1498:	48 89 e5             	mov    %rsp,%rbp
    149b:	48 83 ec 30          	sub    $0x30,%rsp
    149f:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    14a3:	89 75 e4             	mov    %esi,-0x1c(%rbp)
    14a6:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    14aa:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
    14af:	75 2d                	jne    14de <pqInsert+0x4b>
    14b1:	48 8b 05 68 2b 00 00 	mov    0x2b68(%rip),%rax        # 4020 <stderr@GLIBC_2.2.5>
    14b8:	48 89 c1             	mov    %rax,%rcx
    14bb:	ba 15 00 00 00       	mov    $0x15,%edx
    14c0:	be 01 00 00 00       	mov    $0x1,%esi
    14c5:	48 8d 05 ff 0b 00 00 	lea    0xbff(%rip),%rax        # 20cb <__PRETTY_FUNCTION__.0+0x3c>
    14cc:	48 89 c7             	mov    %rax,%rdi
    14cf:	e8 1c fc ff ff       	call   10f0 <fwrite@plt>
    14d4:	b8 01 00 00 00       	mov    $0x1,%eax
    14d9:	e9 24 01 00 00       	jmp    1602 <pqInsert+0x16f>
    14de:	bf 18 00 00 00       	mov    $0x18,%edi
    14e3:	e8 f8 fb ff ff       	call   10e0 <malloc@plt>
    14e8:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    14ec:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    14f1:	75 38                	jne    152b <pqInsert+0x98>
    14f3:	48 8b 05 26 2b 00 00 	mov    0x2b26(%rip),%rax        # 4020 <stderr@GLIBC_2.2.5>
    14fa:	48 89 c1             	mov    %rax,%rcx
    14fd:	ba 1b 00 00 00       	mov    $0x1b,%edx
    1502:	be 01 00 00 00       	mov    $0x1,%esi
    1507:	48 8d 05 d3 0b 00 00 	lea    0xbd3(%rip),%rax        # 20e1 <__PRETTY_FUNCTION__.0+0x52>
    150e:	48 89 c7             	mov    %rax,%rdi
    1511:	e8 da fb ff ff       	call   10f0 <fwrite@plt>
    1516:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    151a:	c7 40 08 03 00 00 00 	movl   $0x3,0x8(%rax)
    1521:	b8 01 00 00 00       	mov    $0x1,%eax
    1526:	e9 d7 00 00 00       	jmp    1602 <pqInsert+0x16f>
    152b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    152f:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    1533:	48 89 10             	mov    %rdx,(%rax)
    1536:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    153a:	8b 55 e4             	mov    -0x1c(%rbp),%edx
    153d:	89 50 08             	mov    %edx,0x8(%rax)
    1540:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1544:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
    154b:	00 
    154c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1550:	48 8b 00             	mov    (%rax),%rax
    1553:	48 85 c0             	test   %rax,%rax
    1556:	74 15                	je     156d <pqInsert+0xda>
    1558:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    155c:	8b 50 08             	mov    0x8(%rax),%edx
    155f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1563:	48 8b 00             	mov    (%rax),%rax
    1566:	8b 40 0 8             	mov    0x8(%rax),%eax
    1569:	39 c2                	cmp    %eax,%edx
    156b:	7d 1c                	jge    1589 <pqInsert+0xf6>
    156d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1571:	48 8b 10             	mov    (%rax),%rdx
    1574:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1578:	48 89 50 10          	mov    %rdx,0x10(%rax)
    157c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1580:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    1584:	48 89 10             	mov    %rdx,(%rax)
    1587:	eb 58                	jmp    15e1 <pqInsert+0x14e>
    1589:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    158d:	48 8b 00             	mov    (%rax),%rax
    1590:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    1594:	eb 0c                	jmp    15a2 <pqInsert+0x10f>
    1596:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    159a:	48 8b 40 10          	mov    0x10(%rax),%rax
    159e:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    15a2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    15a6:	48 8b 40 10          	mov    0x10(%rax),%rax
    15aa:	48 85 c0             	test   %rax,%rax
    15ad:	74 16                	je     15c5 <pqInsert+0x132>
    15af:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    15b3:	48 8b 40 10          	mov    0x10(%rax),%rax
    15b7:	8b 50 08             	mov    0x8(%rax),%edx
    15ba:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    15be:	8b 40 08             	mov    0x8(%rax),%eax
    15c1:	39 c2                	cmp    %eax,%edx
    15c3:	7e d1                	jle    1596 <pqInsert+0x103>
    15c5:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    15c9:	48 8b 50 10          	mov    0x10(%rax),%rdx
    15cd:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    15d1:	48 89 50 10          	mov    %rdx,0x10(%rax)
    15d5:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    15d9:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    15dd:	48 89 50 10          	mov    %rdx,0x10(%rax)
    15e1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    15e5:	8b 40 0c             	mov    0xc(%rax),%eax
    15e8:	8d 50 01             	lea    0x1(%rax),%edx
    15eb:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    15ef:	89 50 0c             	mov    %edx,0xc(%rax)
    15f2:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    15f6:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%rax)
    15fd:	b8 00 00 00 00       	mov    $0x0,%eax
    1602:	c9                   	leave  
    1603:	c3                   	ret    

0000000000001604 <removeFromHead>:
    1604:	f3 0f 1e fa          	endbr64 
    1608:	55                   	push   %rbp
    1609:	48 89 e5             	mov    %rsp,%rbp
    160c:	48 83 ec 20          	sub    $0x20,%rsp
    1610:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    1614:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    1619:	75 2a                	jne    1645 <removeFromHead+0x41>
    161b:	48 8b 05 fe 29 00 00 	mov    0x29fe(%rip),%rax        # 4020 <stderr@GLIBC_2.2.5>
    1622:	48 89 c1             	mov    %rax,%rcx
    1625:	ba 1f 00 00 00       	mov    $0x1f,%edx
    162a:	be 01 00 00 00       	mov    $0x1,%esi
    162f:	48 8d 05 ca 0a 00 00 	lea    0xaca(%rip),%rax        # 2100 <__PRETTY_FUNCTION__.0+0x71>
    1636:	48 89 c7             	mov    %rax,%rdi
    1639:	e8 b2 fa ff ff       	call   10f0 <fwrite@plt>
    163e:	b8 00 00 00 00       	mov    $0x0,%eax
    1643:	eb 67                	jmp    16ac <removeFromHead+0xa8>
    1645:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1649:	48 8b 00             	mov    (%rax),%rax
    164c:	48 85 c0             	test   %rax,%rax
    164f:	75 12                	jne    1663 <removeFromHead+0x5f>
    1651:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1655:	c7 40 08 02 00 00 00 	movl   $0x2,0x8(%rax)
    165c:	b8 00 00 00 00       	mov    $0x0,%eax
    1661:	eb 49                	jmp    16ac <removeFromHead+0xa8>
    1663:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1667:	48 8b 00             	mov    (%rax),%rax
    166a:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    166e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1672:	48 8b 00             	mov    (%rax),%rax
    1675:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1679:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    167d:	48 8b 00             	mov    (%rax),%rax
    1680:	48 8b 50 10          	mov    0x10(%rax),%rdx
    1684:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1688:	48 89 10             	mov    %rdx,(%rax)
    168b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    168f:	48 89 c7             	mov    %rax,%rdi
    1692:	e8 09 fa ff ff       	call   10a0 <free@plt>
    1697:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    169b:	8b 40 0c             	mov    0xc(%rax),%eax
    169e:	8d 50 ff             	lea    -0x1(%rax),%edx
    16a1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    16a5:	89 50 0c             	mov    %edx,0xc(%rax)
    16a8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    16ac:	c9                   	leave  
    16ad:	c3                   	ret    

00000000000016ae <pqRemoveMin>:
    16ae:	f3 0f 1e fa          	endbr64 
    16b2:	55                   	push   %rbp
    16b3:	48 89 e5             	mov    %rsp,%rbp
    16b6:	48 83 ec 10          	sub    $0x10,%rsp
    16ba:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    16be:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    16c3:	75 2a                	jne    16ef <pqRemoveMin+0x41>
    16c5:	48 8b 05 54 29 00 00 	mov    0x2954(%rip),%rax        # 4020 <stderr@GLIBC_2.2.5>
    16cc:	48 89 c1             	mov    %rax,%rcx
    16cf:	ba 18 00 00 00       	mov    $0x18,%edx
    16d4:	be 01 00 00 00       	mov    $0x1,%esi
    16d9:	48 8d 05 40 0a 00 00 	lea    0xa40(%rip),%rax        # 2120 <__PRETTY_FUNCTION__.0+0x91>
    16e0:	48 89 c7             	mov    %rax,%rdi
    16e3:	e8 08 fa ff ff       	call   10f0 <fwrite@plt>
    16e8:	b8 00 00 00 00       	mov    $0x0,%eax
    16ed:	eb 17                	jmp    1706 <pqRemoveMin+0x58>
    16ef:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    16f3:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%rax)
    16fa:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    16fe:	48 89 c7             	mov    %rax,%rdi
    1701:	e8 fe fe ff ff       	call   1604 <removeFromHead>
    1706:	c9                   	leave  
    1707:	c3                   	ret    

0000000000001708 <pqPeek>:
    1708:	f3 0f 1e fa          	endbr64 
    170c:	55                   	push   %rbp
    170d:	48 89 e5             	mov    %rsp,%rbp
    1710:	48 83 ec 10          	sub    $0x10,%rsp
    1714:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1718:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    171d:	75 2a                	jne    1749 <pqPeek+0x41>
    171f:	48 8b 05 fa 28 00 00 	mov    0x28fa(%rip),%rax        # 4020 <stderr@GLIBC_2.2.5>
    1726:	48 89 c1             	mov    %rax,%rcx
    1729:	ba 13 00 00 00       	mov    $0x13,%edx
    172e:	be 01 00 00 00       	mov    $0x1,%esi
    1733:	48 8d 05 ff 09 00 00 	lea    0x9ff(%rip),%rax        # 2139 <__PRETTY_FUNCTION__.0+0xaa>
    173a:	48 89 c7             	mov    %rax,%rdi
    173d:	e8 ae f9 ff ff       	call   10f0 <fwrite@plt>
    1742:	b8 00 00 00 00       	mov    $0x0,%eax
    1747:	eb 4b                	jmp    1794 <pqPeek+0x8c>
    1749:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    174d:	48 8b 00             	mov    (%rax),%rax
    1750:	48 85 c0             	test   %rax,%rax
    1753:	75 35                	jne    178a <pqPeek+0x82>
    1755:	48 8b 05 c4 28 00 00 	mov    0x28c4(%rip),%rax        # 4020 <stderr@GLIBC_2.2.5>
    175c:	48 89 c1             	mov    %rax,%rcx
    175f:	ba 18 00 00 00       	mov    $0x18,%edx
    1764:	be 01 00 00 00       	mov    $0x1,%esi
    1769:	48 8d 05 dd 09 00 00 	lea    0x9dd(%rip),%rax        # 214d <__PRETTY_FUNCTION__.0+0xbe>
    1770:	48 89 c7             	mov    %rax,%rdi
    1773:	e8 78 f9 ff ff       	call   10f0 <fwrite@plt>
    1778:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    177c:	c7 40 08 02 00 00 00 	movl   $0x2,0x8(%rax)
    1783:	b8 00 00 00 00       	mov    $0x0,%eax
    1788:	eb 0a                	jmp    1794 <pqPeek+0x8c>
    178a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    178e:	48 8b 00             	mov    (%rax),%rax
    1791:	48 8b 00             	mov    (%rax),%rax
    1794:	c9                   	leave  
    1795:	c3                   	ret    

0000000000001796 <pqGetSize>:
    1796:	f3 0f 1e fa          	endbr64 
    179a:	55                   	push   %rbp
    179b:	48 89 e5             	mov    %rsp,%rbp
    179e:	48 83 ec 10          	sub    $0x10,%rsp
    17a2:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    17a6:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    17ab:	75 2a                	jne    17d7 <pqGetSize+0x41>
    17ad:	48 8b 05 6c 28 00 00 	mov    0x286c(%rip),%rax        # 4020 <stderr@GLIBC_2.2.5>
    17b4:	48 89 c1             	mov    %rax,%rcx
    17b7:	ba 16 00 00 00       	mov    $0x16,%edx
    17bc:	be 01 00 00 00       	mov    $0x1,%esi
    17c1:	48 8d 05 9e 09 00 00 	lea    0x99e(%rip),%rax        # 2166 <__PRETTY_FUNCTION__.0+0xd7>
    17c8:	48 89 c7             	mov    %rax,%rdi
    17cb:	e8 20 f9 ff ff       	call   10f0 <fwrite@plt>
    17d0:	b8 00 00 00 00       	mov    $0x0,%eax
    17d5:	eb 07                	jmp    17de <pqGetSize+0x48>
    17d7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    17db:	8b 40 0c             	mov    0xc(%rax),%eax
    17de:	c9                   	leave  
    17df:	c3                   	ret    

00000000000017e0 <pqFree>:
    17e0:	f3 0f 1e fa          	endbr64 
    17e4:	55                   	push   %rbp
    17e5:	48 89 e5             	mov    %rsp,%rbp
    17e8:	48 83 ec 20          	sub    $0x20,%rsp
    17ec:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    17f0:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    17f5:	75 25                	jne    181c <pqFree+0x3c>
    17f7:	48 8b 05 22 28 00 00 	mov    0x2822(%rip),%rax        # 4020 <stderr@GLIBC_2.2.5>
    17fe:	48 89 c1             	mov    %rax,%rcx
    1801:	ba 13 00 00 00       	mov    $0x13,%edx
    1806:	be 01 00 00 00       	mov    $0x1,%esi
    180b:	48 8d 05 6b 09 00 00 	lea    0x96b(%rip),%rax        # 217d <__PRETTY_FUNCTION__.0+0xee>
    1812:	48 89 c7             	mov    %rax,%rdi
    1815:	e8 d6 f8 ff ff       	call   10f0 <fwrite@plt>
    181a:	eb 40                	jmp    185c <pqFree+0x7c>
    181c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1820:	48 8b 00             	mov    (%rax),%rax
    1823:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    1827:	eb 20                	jmp    1849 <pqFree+0x69>
    1829:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    182d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1831:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1835:	48 8b 40 10          	mov    0x10(%rax),%rax
    1839:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    183d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1841:	48 89 c7             	mov    %rax,%rdi
    1844:	e8 57 f8 ff ff       	call   10a0 <free@plt>
    1849:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    184e:	75 d9                	jne    1829 <pqFree+0x49>
    1850:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1854:	48 89 c7             	mov    %rax,%rdi
    1857:	e8 44 f8 ff ff       	call   10a0 <free@plt>
    185c:	c9                   	leave  
    185d:	c3                   	ret    

Disassembly of section .fini:

0000000000001860 <_fini>:
    1860:	f3 0f 1e fa          	endbr64 
    1864:	48 83 ec 08          	sub    $0x8,%rsp
    1868:	48 83 c4 08          	add    $0x8,%rsp
    186c:	c3                   	ret    
