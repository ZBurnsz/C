
lab9.exe:     file format pei-x86-64


Disassembly of section .text:

0000000140001000 <__mingw_invalidParameterHandler>:
   140001000:	c3                   	ret
   140001001:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001008:	00 00 00 00 
   14000100c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001010 <pre_c_init>:
   140001010:	48 83 ec 28          	sub    $0x28,%rsp
   140001014:	48 8b 05 b5 98 00 00 	mov    0x98b5(%rip),%rax        # 14000a8d0 <.refptr.__mingw_initltsdrot_force>
   14000101b:	31 c9                	xor    %ecx,%ecx
   14000101d:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001023:	48 8b 05 b6 98 00 00 	mov    0x98b6(%rip),%rax        # 14000a8e0 <.refptr.__mingw_initltsdyn_force>
   14000102a:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001030:	48 8b 05 b9 98 00 00 	mov    0x98b9(%rip),%rax        # 14000a8f0 <.refptr.__mingw_initltssuo_force>
   140001037:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   14000103d:	48 8b 05 3c 98 00 00 	mov    0x983c(%rip),%rax        # 14000a880 <.refptr.__image_base__>
   140001044:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   140001049:	75 0f                	jne    14000105a <pre_c_init+0x4a>
   14000104b:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   14000104f:	48 01 d0             	add    %rdx,%rax
   140001052:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   140001058:	74 66                	je     1400010c0 <pre_c_init+0xb0>
   14000105a:	48 8b 05 5f 98 00 00 	mov    0x985f(%rip),%rax        # 14000a8c0 <.refptr.__mingw_app_type>
   140001061:	89 0d a5 cf 00 00    	mov    %ecx,0xcfa5(%rip)        # 14000e00c <managedapp>
   140001067:	8b 00                	mov    (%rax),%eax
   140001069:	85 c0                	test   %eax,%eax
   14000106b:	74 43                	je     1400010b0 <pre_c_init+0xa0>
   14000106d:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001072:	e8 b1 6f 00 00       	call   140008028 <__set_app_type>
   140001077:	e8 44 69 00 00       	call   1400079c0 <__p__fmode>
   14000107c:	48 8b 15 1d 99 00 00 	mov    0x991d(%rip),%rdx        # 14000a9a0 <.refptr._fmode>
   140001083:	8b 12                	mov    (%rdx),%edx
   140001085:	89 10                	mov    %edx,(%rax)
   140001087:	e8 44 69 00 00       	call   1400079d0 <__p__commode>
   14000108c:	48 8b 15 ed 98 00 00 	mov    0x98ed(%rip),%rdx        # 14000a980 <.refptr._commode>
   140001093:	8b 12                	mov    (%rdx),%edx
   140001095:	89 10                	mov    %edx,(%rax)
   140001097:	e8 74 0a 00 00       	call   140001b10 <_setargv>
   14000109c:	48 8b 05 8d 97 00 00 	mov    0x978d(%rip),%rax        # 14000a830 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
   1400010a3:	83 38 01             	cmpl   $0x1,(%rax)
   1400010a6:	74 50                	je     1400010f8 <pre_c_init+0xe8>
   1400010a8:	31 c0                	xor    %eax,%eax
   1400010aa:	48 83 c4 28          	add    $0x28,%rsp
   1400010ae:	c3                   	ret
   1400010af:	90                   	nop
   1400010b0:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400010b5:	e8 6e 6f 00 00       	call   140008028 <__set_app_type>
   1400010ba:	eb bb                	jmp    140001077 <pre_c_init+0x67>
   1400010bc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400010c0:	0f b7 50 18          	movzwl 0x18(%rax),%edx
   1400010c4:	66 81 fa 0b 01       	cmp    $0x10b,%dx
   1400010c9:	74 45                	je     140001110 <pre_c_init+0x100>
   1400010cb:	66 81 fa 0b 02       	cmp    $0x20b,%dx
   1400010d0:	75 88                	jne    14000105a <pre_c_init+0x4a>
   1400010d2:	83 b8 84 00 00 00 0e 	cmpl   $0xe,0x84(%rax)
   1400010d9:	0f 86 7b ff ff ff    	jbe    14000105a <pre_c_init+0x4a>
   1400010df:	8b 90 f8 00 00 00    	mov    0xf8(%rax),%edx
   1400010e5:	31 c9                	xor    %ecx,%ecx
   1400010e7:	85 d2                	test   %edx,%edx
   1400010e9:	0f 95 c1             	setne  %cl
   1400010ec:	e9 69 ff ff ff       	jmp    14000105a <pre_c_init+0x4a>
   1400010f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400010f8:	48 8b 0d c1 98 00 00 	mov    0x98c1(%rip),%rcx        # 14000a9c0 <.refptr._matherr>
   1400010ff:	e8 7c 11 00 00       	call   140002280 <__mingw_setusermatherr>
   140001104:	31 c0                	xor    %eax,%eax
   140001106:	48 83 c4 28          	add    $0x28,%rsp
   14000110a:	c3                   	ret
   14000110b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001110:	83 78 74 0e          	cmpl   $0xe,0x74(%rax)
   140001114:	0f 86 40 ff ff ff    	jbe    14000105a <pre_c_init+0x4a>
   14000111a:	44 8b 80 e8 00 00 00 	mov    0xe8(%rax),%r8d
   140001121:	31 c9                	xor    %ecx,%ecx
   140001123:	45 85 c0             	test   %r8d,%r8d
   140001126:	0f 95 c1             	setne  %cl
   140001129:	e9 2c ff ff ff       	jmp    14000105a <pre_c_init+0x4a>
   14000112e:	66 90                	xchg   %ax,%ax

0000000140001130 <pre_cpp_init>:
   140001130:	48 83 ec 38          	sub    $0x38,%rsp
   140001134:	48 8b 05 95 98 00 00 	mov    0x9895(%rip),%rax        # 14000a9d0 <.refptr._newmode>
   14000113b:	4c 8d 05 d6 ce 00 00 	lea    0xced6(%rip),%r8        # 14000e018 <envp>
   140001142:	48 8d 15 d7 ce 00 00 	lea    0xced7(%rip),%rdx        # 14000e020 <argv>
   140001149:	48 8d 0d d8 ce 00 00 	lea    0xced8(%rip),%rcx        # 14000e028 <argc>
   140001150:	8b 00                	mov    (%rax),%eax
   140001152:	89 05 ac ce 00 00    	mov    %eax,0xceac(%rip)        # 14000e004 <startinfo>
   140001158:	48 8b 05 31 98 00 00 	mov    0x9831(%rip),%rax        # 14000a990 <.refptr._dowildcard>
   14000115f:	44 8b 08             	mov    (%rax),%r9d
   140001162:	48 8d 05 9b ce 00 00 	lea    0xce9b(%rip),%rax        # 14000e004 <startinfo>
   140001169:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   14000116e:	e8 a5 6e 00 00       	call   140008018 <__getmainargs>
   140001173:	90                   	nop
   140001174:	48 83 c4 38          	add    $0x38,%rsp
   140001178:	c3                   	ret
   140001179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140001180 <__tmainCRTStartup>:
   140001180:	41 54                	push   %r12
   140001182:	55                   	push   %rbp
   140001183:	57                   	push   %rdi
   140001184:	56                   	push   %rsi
   140001185:	53                   	push   %rbx
   140001186:	48 83 ec 20          	sub    $0x20,%rsp
   14000118a:	48 8b 1d 7f 97 00 00 	mov    0x977f(%rip),%rbx        # 14000a910 <.refptr.__native_startup_lock>
   140001191:	48 8b 2d 70 e0 00 00 	mov    0xe070(%rip),%rbp        # 14000f208 <__imp_Sleep>
   140001198:	31 ff                	xor    %edi,%edi
   14000119a:	65 48 8b 04 25 30 00 	mov    %gs:0x30,%rax
   1400011a1:	00 00 
   1400011a3:	48 8b 70 08          	mov    0x8(%rax),%rsi
   1400011a7:	eb 17                	jmp    1400011c0 <__tmainCRTStartup+0x40>
   1400011a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400011b0:	48 39 c6             	cmp    %rax,%rsi
   1400011b3:	0f 84 67 01 00 00    	je     140001320 <__tmainCRTStartup+0x1a0>
   1400011b9:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
   1400011be:	ff d5                	call   *%rbp
   1400011c0:	48 89 f8             	mov    %rdi,%rax
   1400011c3:	f0 48 0f b1 33       	lock cmpxchg %rsi,(%rbx)
   1400011c8:	48 85 c0             	test   %rax,%rax
   1400011cb:	75 e3                	jne    1400011b0 <__tmainCRTStartup+0x30>
   1400011cd:	48 8b 35 4c 97 00 00 	mov    0x974c(%rip),%rsi        # 14000a920 <.refptr.__native_startup_state>
   1400011d4:	31 ff                	xor    %edi,%edi
   1400011d6:	8b 06                	mov    (%rsi),%eax
   1400011d8:	83 f8 01             	cmp    $0x1,%eax
   1400011db:	0f 84 56 01 00 00    	je     140001337 <__tmainCRTStartup+0x1b7>
   1400011e1:	8b 06                	mov    (%rsi),%eax
   1400011e3:	85 c0                	test   %eax,%eax
   1400011e5:	0f 84 b5 01 00 00    	je     1400013a0 <__tmainCRTStartup+0x220>
   1400011eb:	c7 05 13 ce 00 00 01 	movl   $0x1,0xce13(%rip)        # 14000e008 <has_cctor>
   1400011f2:	00 00 00 
   1400011f5:	8b 06                	mov    (%rsi),%eax
   1400011f7:	83 f8 01             	cmp    $0x1,%eax
   1400011fa:	0f 84 4c 01 00 00    	je     14000134c <__tmainCRTStartup+0x1cc>
   140001200:	85 ff                	test   %edi,%edi
   140001202:	0f 84 65 01 00 00    	je     14000136d <__tmainCRTStartup+0x1ed>
   140001208:	48 8b 05 61 96 00 00 	mov    0x9661(%rip),%rax        # 14000a870 <.refptr.__dyn_tls_init_callback>
   14000120f:	48 8b 00             	mov    (%rax),%rax
   140001212:	48 85 c0             	test   %rax,%rax
   140001215:	74 0c                	je     140001223 <__tmainCRTStartup+0xa3>
   140001217:	45 31 c0             	xor    %r8d,%r8d
   14000121a:	ba 02 00 00 00       	mov    $0x2,%edx
   14000121f:	31 c9                	xor    %ecx,%ecx
   140001221:	ff d0                	call   *%rax
   140001223:	e8 b8 0c 00 00       	call   140001ee0 <_pei386_runtime_relocator>
   140001228:	48 8b 0d 81 97 00 00 	mov    0x9781(%rip),%rcx        # 14000a9b0 <.refptr._gnu_exception_handler>
   14000122f:	ff 15 cb df 00 00    	call   *0xdfcb(%rip)        # 14000f200 <__imp_SetUnhandledExceptionFilter>
   140001235:	48 8b 15 c4 96 00 00 	mov    0x96c4(%rip),%rdx        # 14000a900 <.refptr.__mingw_oldexcpt_handler>
   14000123c:	48 8d 0d bd fd ff ff 	lea    -0x243(%rip),%rcx        # 140001000 <__mingw_invalidParameterHandler>
   140001243:	48 89 02             	mov    %rax,(%rdx)
   140001246:	e8 75 68 00 00       	call   140007ac0 <_set_invalid_parameter_handler>
   14000124b:	e8 a0 0a 00 00       	call   140001cf0 <_fpreset>
   140001250:	8b 1d d2 cd 00 00    	mov    0xcdd2(%rip),%ebx        # 14000e028 <argc>
   140001256:	8d 7b 01             	lea    0x1(%rbx),%edi
   140001259:	48 63 ff             	movslq %edi,%rdi
   14000125c:	48 c1 e7 03          	shl    $0x3,%rdi
   140001260:	48 89 f9             	mov    %rdi,%rcx
   140001263:	e8 48 6e 00 00       	call   1400080b0 <malloc>
   140001268:	4c 8b 25 b1 cd 00 00 	mov    0xcdb1(%rip),%r12        # 14000e020 <argv>
   14000126f:	48 89 c5             	mov    %rax,%rbp
   140001272:	85 db                	test   %ebx,%ebx
   140001274:	0f 8e 46 01 00 00    	jle    1400013c0 <__tmainCRTStartup+0x240>
   14000127a:	48 83 ef 08          	sub    $0x8,%rdi
   14000127e:	31 db                	xor    %ebx,%ebx
   140001280:	49 8b 0c 1c          	mov    (%r12,%rbx,1),%rcx
   140001284:	e8 4f 6e 00 00       	call   1400080d8 <strlen>
   140001289:	48 8d 70 01          	lea    0x1(%rax),%rsi
   14000128d:	48 89 f1             	mov    %rsi,%rcx
   140001290:	e8 1b 6e 00 00       	call   1400080b0 <malloc>
   140001295:	49 89 f0             	mov    %rsi,%r8
   140001298:	48 89 44 1d 00       	mov    %rax,0x0(%rbp,%rbx,1)
   14000129d:	49 8b 14 1c          	mov    (%r12,%rbx,1),%rdx
   1400012a1:	48 89 c1             	mov    %rax,%rcx
   1400012a4:	48 83 c3 08          	add    $0x8,%rbx
   1400012a8:	e8 0b 6e 00 00       	call   1400080b8 <memcpy>
   1400012ad:	48 39 df             	cmp    %rbx,%rdi
   1400012b0:	75 ce                	jne    140001280 <__tmainCRTStartup+0x100>
   1400012b2:	48 01 ef             	add    %rbp,%rdi
   1400012b5:	48 c7 07 00 00 00 00 	movq   $0x0,(%rdi)
   1400012bc:	48 89 2d 5d cd 00 00 	mov    %rbp,0xcd5d(%rip)        # 14000e020 <argv>
   1400012c3:	e8 28 08 00 00       	call   140001af0 <__main>
   1400012c8:	48 8b 05 c1 95 00 00 	mov    0x95c1(%rip),%rax        # 14000a890 <.refptr.__imp___initenv>
   1400012cf:	4c 8b 05 42 cd 00 00 	mov    0xcd42(%rip),%r8        # 14000e018 <envp>
   1400012d6:	8b 0d 4c cd 00 00    	mov    0xcd4c(%rip),%ecx        # 14000e028 <argc>
   1400012dc:	48 8b 00             	mov    (%rax),%rax
   1400012df:	4c 89 00             	mov    %r8,(%rax)
   1400012e2:	48 8b 15 37 cd 00 00 	mov    0xcd37(%rip),%rdx        # 14000e020 <argv>
   1400012e9:	e8 d4 02 00 00       	call   1400015c2 <main>
   1400012ee:	8b 0d 18 cd 00 00    	mov    0xcd18(%rip),%ecx        # 14000e00c <managedapp>
   1400012f4:	89 05 16 cd 00 00    	mov    %eax,0xcd16(%rip)        # 14000e010 <mainret>
   1400012fa:	85 c9                	test   %ecx,%ecx
   1400012fc:	0f 84 c6 00 00 00    	je     1400013c8 <__tmainCRTStartup+0x248>
   140001302:	8b 15 00 cd 00 00    	mov    0xcd00(%rip),%edx        # 14000e008 <has_cctor>
   140001308:	85 d2                	test   %edx,%edx
   14000130a:	74 74                	je     140001380 <__tmainCRTStartup+0x200>
   14000130c:	48 83 c4 20          	add    $0x20,%rsp
   140001310:	5b                   	pop    %rbx
   140001311:	5e                   	pop    %rsi
   140001312:	5f                   	pop    %rdi
   140001313:	5d                   	pop    %rbp
   140001314:	41 5c                	pop    %r12
   140001316:	c3                   	ret
   140001317:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000131e:	00 00 
   140001320:	48 8b 35 f9 95 00 00 	mov    0x95f9(%rip),%rsi        # 14000a920 <.refptr.__native_startup_state>
   140001327:	bf 01 00 00 00       	mov    $0x1,%edi
   14000132c:	8b 06                	mov    (%rsi),%eax
   14000132e:	83 f8 01             	cmp    $0x1,%eax
   140001331:	0f 85 aa fe ff ff    	jne    1400011e1 <__tmainCRTStartup+0x61>
   140001337:	b9 1f 00 00 00       	mov    $0x1f,%ecx
   14000133c:	e8 f7 6c 00 00       	call   140008038 <_amsg_exit>
   140001341:	8b 06                	mov    (%rsi),%eax
   140001343:	83 f8 01             	cmp    $0x1,%eax
   140001346:	0f 85 b4 fe ff ff    	jne    140001200 <__tmainCRTStartup+0x80>
   14000134c:	48 8b 15 fd 95 00 00 	mov    0x95fd(%rip),%rdx        # 14000a950 <.refptr.__xc_z>
   140001353:	48 8b 0d e6 95 00 00 	mov    0x95e6(%rip),%rcx        # 14000a940 <.refptr.__xc_a>
   14000135a:	e8 f1 6c 00 00       	call   140008050 <_initterm>
   14000135f:	c7 06 02 00 00 00    	movl   $0x2,(%rsi)
   140001365:	85 ff                	test   %edi,%edi
   140001367:	0f 85 9b fe ff ff    	jne    140001208 <__tmainCRTStartup+0x88>
   14000136d:	31 c0                	xor    %eax,%eax
   14000136f:	48 87 03             	xchg   %rax,(%rbx)
   140001372:	e9 91 fe ff ff       	jmp    140001208 <__tmainCRTStartup+0x88>
   140001377:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000137e:	00 00 
   140001380:	e8 bb 6c 00 00       	call   140008040 <_cexit>
   140001385:	8b 05 85 cc 00 00    	mov    0xcc85(%rip),%eax        # 14000e010 <mainret>
   14000138b:	48 83 c4 20          	add    $0x20,%rsp
   14000138f:	5b                   	pop    %rbx
   140001390:	5e                   	pop    %rsi
   140001391:	5f                   	pop    %rdi
   140001392:	5d                   	pop    %rbp
   140001393:	41 5c                	pop    %r12
   140001395:	c3                   	ret
   140001396:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000139d:	00 00 00 
   1400013a0:	48 8b 15 c9 95 00 00 	mov    0x95c9(%rip),%rdx        # 14000a970 <.refptr.__xi_z>
   1400013a7:	48 8b 0d b2 95 00 00 	mov    0x95b2(%rip),%rcx        # 14000a960 <.refptr.__xi_a>
   1400013ae:	c7 06 01 00 00 00    	movl   $0x1,(%rsi)
   1400013b4:	e8 97 6c 00 00       	call   140008050 <_initterm>
   1400013b9:	e9 37 fe ff ff       	jmp    1400011f5 <__tmainCRTStartup+0x75>
   1400013be:	66 90                	xchg   %ax,%ax
   1400013c0:	48 89 c7             	mov    %rax,%rdi
   1400013c3:	e9 ed fe ff ff       	jmp    1400012b5 <__tmainCRTStartup+0x135>
   1400013c8:	89 c1                	mov    %eax,%ecx
   1400013ca:	e8 b1 6c 00 00       	call   140008080 <exit>
   1400013cf:	90                   	nop

00000001400013d0 <WinMainCRTStartup>:
   1400013d0:	48 83 ec 28          	sub    $0x28,%rsp

00000001400013d4 <.l_startw>:
   1400013d4:	48 8b 05 e5 94 00 00 	mov    0x94e5(%rip),%rax        # 14000a8c0 <.refptr.__mingw_app_type>
   1400013db:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   1400013e1:	e8 9a fd ff ff       	call   140001180 <__tmainCRTStartup>
   1400013e6:	90                   	nop

00000001400013e7 <.l_endw>:
   1400013e7:	90                   	nop
   1400013e8:	48 83 c4 28          	add    $0x28,%rsp
   1400013ec:	c3                   	ret
   1400013ed:	0f 1f 00             	nopl   (%rax)

00000001400013f0 <mainCRTStartup>:
   1400013f0:	48 83 ec 28          	sub    $0x28,%rsp

00000001400013f4 <.l_start>:
   1400013f4:	48 8b 05 c5 94 00 00 	mov    0x94c5(%rip),%rax        # 14000a8c0 <.refptr.__mingw_app_type>
   1400013fb:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   140001401:	e8 7a fd ff ff       	call   140001180 <__tmainCRTStartup>
   140001406:	90                   	nop

0000000140001407 <.l_end>:
   140001407:	90                   	nop
   140001408:	48 83 c4 28          	add    $0x28,%rsp
   14000140c:	c3                   	ret
   14000140d:	0f 1f 00             	nopl   (%rax)

0000000140001410 <atexit>:
   140001410:	48 83 ec 28          	sub    $0x28,%rsp
   140001414:	e8 47 6c 00 00       	call   140008060 <_onexit>
   140001419:	48 83 f8 01          	cmp    $0x1,%rax
   14000141d:	19 c0                	sbb    %eax,%eax
   14000141f:	48 83 c4 28          	add    $0x28,%rsp
   140001423:	c3                   	ret
   140001424:	90                   	nop
   140001425:	90                   	nop
   140001426:	90                   	nop
   140001427:	90                   	nop
   140001428:	90                   	nop
   140001429:	90                   	nop
   14000142a:	90                   	nop
   14000142b:	90                   	nop
   14000142c:	90                   	nop
   14000142d:	90                   	nop
   14000142e:	90                   	nop
   14000142f:	90                   	nop

0000000140001430 <__gcc_register_frame>:
   140001430:	48 8d 0d 09 00 00 00 	lea    0x9(%rip),%rcx        # 140001440 <__gcc_deregister_frame>
   140001437:	e9 d4 ff ff ff       	jmp    140001410 <atexit>
   14000143c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001440 <__gcc_deregister_frame>:
   140001440:	c3                   	ret
   140001441:	90                   	nop
   140001442:	90                   	nop
   140001443:	90                   	nop
   140001444:	90                   	nop
   140001445:	90                   	nop
   140001446:	90                   	nop
   140001447:	90                   	nop
   140001448:	90                   	nop
   140001449:	90                   	nop
   14000144a:	90                   	nop
   14000144b:	90                   	nop
   14000144c:	90                   	nop
   14000144d:	90                   	nop
   14000144e:	90                   	nop
   14000144f:	90                   	nop

0000000140001450 <fprintf>:
   140001450:	55                   	push   %rbp
   140001451:	48 89 e5             	mov    %rsp,%rbp
   140001454:	48 83 ec 30          	sub    $0x30,%rsp
   140001458:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000145c:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   140001460:	4c 89 45 20          	mov    %r8,0x20(%rbp)
   140001464:	4c 89 4d 28          	mov    %r9,0x28(%rbp)
   140001468:	48 8d 45 20          	lea    0x20(%rbp),%rax
   14000146c:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   140001470:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
   140001474:	48 8b 55 18          	mov    0x18(%rbp),%rdx
   140001478:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000147c:	49 89 c8             	mov    %rcx,%r8
   14000147f:	48 89 c1             	mov    %rax,%rcx
   140001482:	e8 59 16 00 00       	call   140002ae0 <__mingw_vfprintf>
   140001487:	89 45 fc             	mov    %eax,-0x4(%rbp)
   14000148a:	8b 45 fc             	mov    -0x4(%rbp),%eax
   14000148d:	48 83 c4 30          	add    $0x30,%rsp
   140001491:	5d                   	pop    %rbp
   140001492:	c3                   	ret

0000000140001493 <printf>:
   140001493:	55                   	push   %rbp
   140001494:	53                   	push   %rbx
   140001495:	48 83 ec 38          	sub    $0x38,%rsp
   140001499:	48 8d 6c 24 30       	lea    0x30(%rsp),%rbp
   14000149e:	48 89 4d 20          	mov    %rcx,0x20(%rbp)
   1400014a2:	48 89 55 28          	mov    %rdx,0x28(%rbp)
   1400014a6:	4c 89 45 30          	mov    %r8,0x30(%rbp)
   1400014aa:	4c 89 4d 38          	mov    %r9,0x38(%rbp)
   1400014ae:	48 8d 45 28          	lea    0x28(%rbp),%rax
   1400014b2:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   1400014b6:	48 8b 5d f0          	mov    -0x10(%rbp),%rbx
   1400014ba:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400014bf:	48 8b 05 fa 7b 00 00 	mov    0x7bfa(%rip),%rax        # 1400090c0 <__imp___acrt_iob_func>
   1400014c6:	ff d0                	call   *%rax
   1400014c8:	48 89 c1             	mov    %rax,%rcx
   1400014cb:	48 8b 45 20          	mov    0x20(%rbp),%rax
   1400014cf:	49 89 d8             	mov    %rbx,%r8
   1400014d2:	48 89 c2             	mov    %rax,%rdx
   1400014d5:	e8 06 16 00 00       	call   140002ae0 <__mingw_vfprintf>
   1400014da:	89 45 fc             	mov    %eax,-0x4(%rbp)
   1400014dd:	8b 45 fc             	mov    -0x4(%rbp),%eax
   1400014e0:	48 83 c4 38          	add    $0x38,%rsp
   1400014e4:	5b                   	pop    %rbx
   1400014e5:	5d                   	pop    %rbp
   1400014e6:	c3                   	ret

00000001400014e7 <snprintf>:
   1400014e7:	55                   	push   %rbp
   1400014e8:	48 89 e5             	mov    %rsp,%rbp
   1400014eb:	48 83 ec 30          	sub    $0x30,%rsp
   1400014ef:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   1400014f3:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   1400014f7:	4c 89 45 20          	mov    %r8,0x20(%rbp)
   1400014fb:	4c 89 4d 28          	mov    %r9,0x28(%rbp)
   1400014ff:	48 8d 45 28          	lea    0x28(%rbp),%rax
   140001503:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   140001507:	4c 8b 45 f0          	mov    -0x10(%rbp),%r8
   14000150b:	48 8b 4d 20          	mov    0x20(%rbp),%rcx
   14000150f:	48 8b 55 18          	mov    0x18(%rbp),%rdx
   140001513:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140001517:	4d 89 c1             	mov    %r8,%r9
   14000151a:	49 89 c8             	mov    %rcx,%r8
   14000151d:	48 89 c1             	mov    %rax,%rcx
   140001520:	e8 0b 16 00 00       	call   140002b30 <__mingw_vsnprintf>
   140001525:	89 45 fc             	mov    %eax,-0x4(%rbp)
   140001528:	8b 45 fc             	mov    -0x4(%rbp),%eax
   14000152b:	48 83 c4 30          	add    $0x30,%rsp
   14000152f:	5d                   	pop    %rbp
   140001530:	c3                   	ret

0000000140001531 <printComputerArray>:
   140001531:	55                   	push   %rbp
   140001532:	48 89 e5             	mov    %rsp,%rbp
   140001535:	48 83 ec 40          	sub    $0x40,%rsp
   140001539:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000153d:	89 55 18             	mov    %edx,0x18(%rbp)
   140001540:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
   140001547:	eb 69                	jmp    1400015b2 <printComputerArray+0x81>
   140001549:	8b 45 fc             	mov    -0x4(%rbp),%eax
   14000154c:	48 98                	cltq
   14000154e:	48 69 d0 8c 00 00 00 	imul   $0x8c,%rax,%rdx
   140001555:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140001559:	48 01 d0             	add    %rdx,%rax
   14000155c:	48 8d 50 40          	lea    0x40(%rax),%rdx
   140001560:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140001563:	48 98                	cltq
   140001565:	48 69 c8 8c 00 00 00 	imul   $0x8c,%rax,%rcx
   14000156c:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140001570:	48 01 c8             	add    %rcx,%rax
   140001573:	49 89 c0             	mov    %rax,%r8
   140001576:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140001579:	48 98                	cltq
   14000157b:	48 69 c8 8c 00 00 00 	imul   $0x8c,%rax,%rcx
   140001582:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140001586:	48 01 c8             	add    %rcx,%rax
   140001589:	8b 88 84 00 00 00    	mov    0x84(%rax),%ecx
   14000158f:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140001592:	48 89 54 24 20       	mov    %rdx,0x20(%rsp)
   140001597:	4d 89 c1             	mov    %r8,%r9
   14000159a:	41 89 c8             	mov    %ecx,%r8d
   14000159d:	89 c2                	mov    %eax,%edx
   14000159f:	48 8d 05 5a 8a 00 00 	lea    0x8a5a(%rip),%rax        # 14000a000 <.rdata>
   1400015a6:	48 89 c1             	mov    %rax,%rcx
   1400015a9:	e8 e5 fe ff ff       	call   140001493 <printf>
   1400015ae:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
   1400015b2:	8b 45 fc             	mov    -0x4(%rbp),%eax
   1400015b5:	3b 45 18             	cmp    0x18(%rbp),%eax
   1400015b8:	7c 8f                	jl     140001549 <printComputerArray+0x18>
   1400015ba:	90                   	nop
   1400015bb:	90                   	nop
   1400015bc:	48 83 c4 40          	add    $0x40,%rsp
   1400015c0:	5d                   	pop    %rbp
   1400015c1:	c3                   	ret

00000001400015c2 <main>:
   1400015c2:	55                   	push   %rbp
   1400015c3:	48 89 e5             	mov    %rsp,%rbp
   1400015c6:	48 81 ec c0 00 00 00 	sub    $0xc0,%rsp
   1400015cd:	e8 1e 05 00 00       	call   140001af0 <__main>
   1400015d2:	c7 45 f8 05 00 00 00 	movl   $0x5,-0x8(%rbp)
   1400015d9:	8b 45 f8             	mov    -0x8(%rbp),%eax
   1400015dc:	ba 8c 00 00 00       	mov    $0x8c,%edx
   1400015e1:	89 c1                	mov    %eax,%ecx
   1400015e3:	e8 cb 01 00 00       	call   1400017b3 <makeArray>
   1400015e8:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   1400015ec:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
   1400015f1:	75 2a                	jne    14000161d <main+0x5b>
   1400015f3:	b9 02 00 00 00       	mov    $0x2,%ecx
   1400015f8:	48 8b 05 c1 7a 00 00 	mov    0x7ac1(%rip),%rax        # 1400090c0 <__imp___acrt_iob_func>
   1400015ff:	ff d0                	call   *%rax
   140001601:	48 89 c1             	mov    %rax,%rcx
   140001604:	48 8d 05 2d 8a 00 00 	lea    0x8a2d(%rip),%rax        # 14000a038 <.rdata+0x38>
   14000160b:	48 89 c2             	mov    %rax,%rdx
   14000160e:	e8 3d fe ff ff       	call   140001450 <fprintf>
   140001613:	b8 01 00 00 00       	mov    $0x1,%eax
   140001618:	e9 3e 01 00 00       	jmp    14000175b <main+0x199>
   14000161d:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
   140001624:	e9 84 00 00 00       	jmp    1400016ad <main+0xeb>
   140001629:	8b 45 fc             	mov    -0x4(%rbp),%eax
   14000162c:	6b d0 32             	imul   $0x32,%eax,%edx
   14000162f:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140001632:	48 98                	cltq
   140001634:	48 69 c8 8c 00 00 00 	imul   $0x8c,%rax,%rcx
   14000163b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   14000163f:	48 01 c8             	add    %rcx,%rax
   140001642:	83 c2 64             	add    $0x64,%edx
   140001645:	89 90 84 00 00 00    	mov    %edx,0x84(%rax)
   14000164b:	8b 45 fc             	mov    -0x4(%rbp),%eax
   14000164e:	48 98                	cltq
   140001650:	48 69 d0 8c 00 00 00 	imul   $0x8c,%rax,%rdx
   140001657:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   14000165b:	48 01 d0             	add    %rdx,%rax
   14000165e:	48 89 c1             	mov    %rax,%rcx
   140001661:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140001664:	41 89 c1             	mov    %eax,%r9d
   140001667:	4c 8d 05 fa 89 00 00 	lea    0x89fa(%rip),%r8        # 14000a068 <.rdata+0x68>
   14000166e:	ba 40 00 00 00       	mov    $0x40,%edx
   140001673:	e8 6f fe ff ff       	call   1400014e7 <snprintf>
   140001678:	8b 45 fc             	mov    -0x4(%rbp),%eax
   14000167b:	48 98                	cltq
   14000167d:	48 69 d0 8c 00 00 00 	imul   $0x8c,%rax,%rdx
   140001684:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140001688:	48 01 d0             	add    %rdx,%rax
   14000168b:	48 83 c0 40          	add    $0x40,%rax
   14000168f:	8b 55 fc             	mov    -0x4(%rbp),%edx
   140001692:	41 89 d1             	mov    %edx,%r9d
   140001695:	4c 8d 05 d6 89 00 00 	lea    0x89d6(%rip),%r8        # 14000a072 <.rdata+0x72>
   14000169c:	ba 40 00 00 00       	mov    $0x40,%edx
   1400016a1:	48 89 c1             	mov    %rax,%rcx
   1400016a4:	e8 3e fe ff ff       	call   1400014e7 <snprintf>
   1400016a9:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
   1400016ad:	8b 45 fc             	mov    -0x4(%rbp),%eax
   1400016b0:	3b 45 f8             	cmp    -0x8(%rbp),%eax
   1400016b3:	0f 8c 70 ff ff ff    	jl     140001629 <main+0x67>
   1400016b9:	8b 55 f8             	mov    -0x8(%rbp),%edx
   1400016bc:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   1400016c0:	48 89 c1             	mov    %rax,%rcx
   1400016c3:	e8 69 fe ff ff       	call   140001531 <printComputerArray>
   1400016c8:	c7 45 e4 c8 00 00 00 	movl   $0xc8,-0x1c(%rbp)
   1400016cf:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
   1400016d6:	4c 8d 05 9d 89 00 00 	lea    0x899d(%rip),%r8        # 14000a07a <.rdata+0x7a>
   1400016dd:	ba 40 00 00 00       	mov    $0x40,%edx
   1400016e2:	48 89 c1             	mov    %rax,%rcx
   1400016e5:	e8 fd fd ff ff       	call   1400014e7 <snprintf>
   1400016ea:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
   1400016f1:	48 83 c0 40          	add    $0x40,%rax
   1400016f5:	4c 8d 05 87 89 00 00 	lea    0x8987(%rip),%r8        # 14000a083 <.rdata+0x83>
   1400016fc:	ba 40 00 00 00       	mov    $0x40,%edx
   140001701:	48 89 c1             	mov    %rax,%rcx
   140001704:	e8 de fd ff ff       	call   1400014e7 <snprintf>
   140001709:	48 8d 95 60 ff ff ff 	lea    -0xa0(%rbp),%rdx
   140001710:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140001714:	48 89 c1             	mov    %rax,%rcx
   140001717:	e8 01 02 00 00       	call   14000191d <searchComputersByDiskSize>
   14000171c:	89 45 ec             	mov    %eax,-0x14(%rbp)
   14000171f:	83 7d ec ff          	cmpl   $0xffffffff,-0x14(%rbp)
   140001723:	74 16                	je     14000173b <main+0x179>
   140001725:	8b 45 ec             	mov    -0x14(%rbp),%eax
   140001728:	89 c2                	mov    %eax,%edx
   14000172a:	48 8d 05 5f 89 00 00 	lea    0x895f(%rip),%rax        # 14000a090 <.rdata+0x90>
   140001731:	48 89 c1             	mov    %rax,%rcx
   140001734:	e8 5a fd ff ff       	call   140001493 <printf>
   140001739:	eb 0f                	jmp    14000174a <main+0x188>
   14000173b:	48 8d 05 71 89 00 00 	lea    0x8971(%rip),%rax        # 14000a0b3 <.rdata+0xb3>
   140001742:	48 89 c1             	mov    %rax,%rcx
   140001745:	e8 49 fd ff ff       	call   140001493 <printf>
   14000174a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   14000174e:	48 89 c1             	mov    %rax,%rcx
   140001751:	e8 99 02 00 00       	call   1400019ef <freeArray>
   140001756:	b8 00 00 00 00       	mov    $0x0,%eax
   14000175b:	48 81 c4 c0 00 00 00 	add    $0xc0,%rsp
   140001762:	5d                   	pop    %rbp
   140001763:	c3                   	ret
   140001764:	90                   	nop
   140001765:	90                   	nop
   140001766:	90                   	nop
   140001767:	90                   	nop
   140001768:	90                   	nop
   140001769:	90                   	nop
   14000176a:	90                   	nop
   14000176b:	90                   	nop
   14000176c:	90                   	nop
   14000176d:	90                   	nop
   14000176e:	90                   	nop
   14000176f:	90                   	nop

0000000140001770 <fprintf>:
   140001770:	55                   	push   %rbp
   140001771:	48 89 e5             	mov    %rsp,%rbp
   140001774:	48 83 ec 30          	sub    $0x30,%rsp
   140001778:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000177c:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   140001780:	4c 89 45 20          	mov    %r8,0x20(%rbp)
   140001784:	4c 89 4d 28          	mov    %r9,0x28(%rbp)
   140001788:	48 8d 45 20          	lea    0x20(%rbp),%rax
   14000178c:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   140001790:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
   140001794:	48 8b 55 18          	mov    0x18(%rbp),%rdx
   140001798:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000179c:	49 89 c8             	mov    %rcx,%r8
   14000179f:	48 89 c1             	mov    %rax,%rcx
   1400017a2:	e8 39 13 00 00       	call   140002ae0 <__mingw_vfprintf>
   1400017a7:	89 45 fc             	mov    %eax,-0x4(%rbp)
   1400017aa:	8b 45 fc             	mov    -0x4(%rbp),%eax
   1400017ad:	48 83 c4 30          	add    $0x30,%rsp
   1400017b1:	5d                   	pop    %rbp
   1400017b2:	c3                   	ret

00000001400017b3 <makeArray>:
   1400017b3:	55                   	push   %rbp
   1400017b4:	48 89 e5             	mov    %rsp,%rbp
   1400017b7:	48 83 ec 30          	sub    $0x30,%rsp
   1400017bb:	89 4d 10             	mov    %ecx,0x10(%rbp)
   1400017be:	89 55 18             	mov    %edx,0x18(%rbp)
   1400017c1:	8b 45 10             	mov    0x10(%rbp),%eax
   1400017c4:	0f af 45 18          	imul   0x18(%rbp),%eax
   1400017c8:	48 98                	cltq
   1400017ca:	48 83 c0 04          	add    $0x4,%rax
   1400017ce:	48 89 c1             	mov    %rax,%rcx
   1400017d1:	e8 da 68 00 00       	call   1400080b0 <malloc>
   1400017d6:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   1400017da:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
   1400017df:	75 27                	jne    140001808 <makeArray+0x55>
   1400017e1:	b9 02 00 00 00       	mov    $0x2,%ecx
   1400017e6:	48 8b 05 d3 78 00 00 	mov    0x78d3(%rip),%rax        # 1400090c0 <__imp___acrt_iob_func>
   1400017ed:	ff d0                	call   *%rax
   1400017ef:	48 89 c1             	mov    %rax,%rcx
   1400017f2:	48 8d 05 d7 88 00 00 	lea    0x88d7(%rip),%rax        # 14000a0d0 <.rdata>
   1400017f9:	48 89 c2             	mov    %rax,%rdx
   1400017fc:	e8 6f ff ff ff       	call   140001770 <fprintf>
   140001801:	b8 00 00 00 00       	mov    $0x0,%eax
   140001806:	eb 11                	jmp    140001819 <makeArray+0x66>
   140001808:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   14000180c:	8b 55 10             	mov    0x10(%rbp),%edx
   14000180f:	89 10                	mov    %edx,(%rax)
   140001811:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140001815:	48 83 c0 01          	add    $0x1,%rax
   140001819:	48 83 c4 30          	add    $0x30,%rsp
   14000181d:	5d                   	pop    %rbp
   14000181e:	c3                   	ret

000000014000181f <getSize>:
   14000181f:	55                   	push   %rbp
   140001820:	48 89 e5             	mov    %rsp,%rbp
   140001823:	48 83 ec 20          	sub    $0x20,%rsp
   140001827:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000182b:	48 83 7d 10 00       	cmpq   $0x0,0x10(%rbp)
   140001830:	75 27                	jne    140001859 <getSize+0x3a>
   140001832:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001837:	48 8b 05 82 78 00 00 	mov    0x7882(%rip),%rax        # 1400090c0 <__imp___acrt_iob_func>
   14000183e:	ff d0                	call   *%rax
   140001840:	48 89 c1             	mov    %rax,%rcx
   140001843:	48 8d 05 a1 88 00 00 	lea    0x88a1(%rip),%rax        # 14000a0eb <.rdata+0x1b>
   14000184a:	48 89 c2             	mov    %rax,%rdx
   14000184d:	e8 1e ff ff ff       	call   140001770 <fprintf>
   140001852:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140001857:	eb 07                	jmp    140001860 <getSize+0x41>
   140001859:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000185d:	8b 40 ff             	mov    -0x1(%rax),%eax
   140001860:	48 83 c4 20          	add    $0x20,%rsp
   140001864:	5d                   	pop    %rbp
   140001865:	c3                   	ret

0000000140001866 <SearchComputersByDiskSizeHelper>:
   140001866:	55                   	push   %rbp
   140001867:	48 89 e5             	mov    %rsp,%rbp
   14000186a:	48 83 ec 30          	sub    $0x30,%rsp
   14000186e:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140001872:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   140001876:	44 89 45 20          	mov    %r8d,0x20(%rbp)
   14000187a:	44 89 4d 28          	mov    %r9d,0x28(%rbp)
   14000187e:	8b 45 20             	mov    0x20(%rbp),%eax
   140001881:	3b 45 28             	cmp    0x28(%rbp),%eax
   140001884:	7e 0a                	jle    140001890 <SearchComputersByDiskSizeHelper+0x2a>
   140001886:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   14000188b:	e9 87 00 00 00       	jmp    140001917 <SearchComputersByDiskSizeHelper+0xb1>
   140001890:	8b 55 20             	mov    0x20(%rbp),%edx
   140001893:	8b 45 28             	mov    0x28(%rbp),%eax
   140001896:	01 d0                	add    %edx,%eax
   140001898:	89 c2                	mov    %eax,%edx
   14000189a:	c1 ea 1f             	shr    $0x1f,%edx
   14000189d:	01 d0                	add    %edx,%eax
   14000189f:	d1 f8                	sar    %eax
   1400018a1:	89 45 fc             	mov    %eax,-0x4(%rbp)
   1400018a4:	8b 45 fc             	mov    -0x4(%rbp),%eax
   1400018a7:	48 98                	cltq
   1400018a9:	48 69 d0 8c 00 00 00 	imul   $0x8c,%rax,%rdx
   1400018b0:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400018b4:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
   1400018b8:	48 8b 45 18          	mov    0x18(%rbp),%rax
   1400018bc:	48 89 c2             	mov    %rax,%rdx
   1400018bf:	e8 9d 00 00 00       	call   140001961 <compareComputersByDiskSize>
   1400018c4:	89 45 f8             	mov    %eax,-0x8(%rbp)
   1400018c7:	83 7d f8 00          	cmpl   $0x0,-0x8(%rbp)
   1400018cb:	75 05                	jne    1400018d2 <SearchComputersByDiskSizeHelper+0x6c>
   1400018cd:	8b 45 fc             	mov    -0x4(%rbp),%eax
   1400018d0:	eb 45                	jmp    140001917 <SearchComputersByDiskSizeHelper+0xb1>
   1400018d2:	83 7d f8 00          	cmpl   $0x0,-0x8(%rbp)
   1400018d6:	79 1f                	jns    1400018f7 <SearchComputersByDiskSizeHelper+0x91>
   1400018d8:	8b 45 fc             	mov    -0x4(%rbp),%eax
   1400018db:	44 8d 40 01          	lea    0x1(%rax),%r8d
   1400018df:	8b 4d 28             	mov    0x28(%rbp),%ecx
   1400018e2:	48 8b 55 18          	mov    0x18(%rbp),%rdx
   1400018e6:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400018ea:	41 89 c9             	mov    %ecx,%r9d
   1400018ed:	48 89 c1             	mov    %rax,%rcx
   1400018f0:	e8 71 ff ff ff       	call   140001866 <SearchComputersByDiskSizeHelper>
   1400018f5:	eb 20                	jmp    140001917 <SearchComputersByDiskSizeHelper+0xb1>
   1400018f7:	8b 45 fc             	mov    -0x4(%rbp),%eax
   1400018fa:	44 8d 40 ff          	lea    -0x1(%rax),%r8d
   1400018fe:	8b 4d 20             	mov    0x20(%rbp),%ecx
   140001901:	48 8b 55 18          	mov    0x18(%rbp),%rdx
   140001905:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140001909:	45 89 c1             	mov    %r8d,%r9d
   14000190c:	41 89 c8             	mov    %ecx,%r8d
   14000190f:	48 89 c1             	mov    %rax,%rcx
   140001912:	e8 4f ff ff ff       	call   140001866 <SearchComputersByDiskSizeHelper>
   140001917:	48 83 c4 30          	add    $0x30,%rsp
   14000191b:	5d                   	pop    %rbp
   14000191c:	c3                   	ret

000000014000191d <searchComputersByDiskSize>:
   14000191d:	55                   	push   %rbp
   14000191e:	48 89 e5             	mov    %rsp,%rbp
   140001921:	48 83 ec 30          	sub    $0x30,%rsp
   140001925:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140001929:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   14000192d:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140001931:	48 89 c1             	mov    %rax,%rcx
   140001934:	e8 e6 fe ff ff       	call   14000181f <getSize>
   140001939:	89 45 fc             	mov    %eax,-0x4(%rbp)
   14000193c:	8b 45 fc             	mov    -0x4(%rbp),%eax
   14000193f:	8d 48 ff             	lea    -0x1(%rax),%ecx
   140001942:	48 8b 55 18          	mov    0x18(%rbp),%rdx
   140001946:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000194a:	41 89 c9             	mov    %ecx,%r9d
   14000194d:	41 b8 00 00 00 00    	mov    $0x0,%r8d
   140001953:	48 89 c1             	mov    %rax,%rcx
   140001956:	e8 0b ff ff ff       	call   140001866 <SearchComputersByDiskSizeHelper>
   14000195b:	48 83 c4 30          	add    $0x30,%rsp
   14000195f:	5d                   	pop    %rbp
   140001960:	c3                   	ret

0000000140001961 <compareComputersByDiskSize>:
   140001961:	55                   	push   %rbp
   140001962:	48 89 e5             	mov    %rsp,%rbp
   140001965:	48 83 ec 20          	sub    $0x20,%rsp
   140001969:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000196d:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   140001971:	48 83 7d 10 00       	cmpq   $0x0,0x10(%rbp)
   140001976:	75 07                	jne    14000197f <compareComputersByDiskSize+0x1e>
   140001978:	48 83 7d 18 00       	cmpq   $0x0,0x18(%rbp)
   14000197d:	75 27                	jne    1400019a6 <compareComputersByDiskSize+0x45>
   14000197f:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001984:	48 8b 05 35 77 00 00 	mov    0x7735(%rip),%rax        # 1400090c0 <__imp___acrt_iob_func>
   14000198b:	ff d0                	call   *%rax
   14000198d:	48 89 c1             	mov    %rax,%rcx
   140001990:	48 8d 05 71 87 00 00 	lea    0x8771(%rip),%rax        # 14000a108 <.rdata+0x38>
   140001997:	48 89 c2             	mov    %rax,%rdx
   14000199a:	e8 d1 fd ff ff       	call   140001770 <fprintf>
   14000199f:	b8 02 00 00 00       	mov    $0x2,%eax
   1400019a4:	eb 43                	jmp    1400019e9 <compareComputersByDiskSize+0x88>
   1400019a6:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400019aa:	8b 90 84 00 00 00    	mov    0x84(%rax),%edx
   1400019b0:	48 8b 45 18          	mov    0x18(%rbp),%rax
   1400019b4:	8b 80 84 00 00 00    	mov    0x84(%rax),%eax
   1400019ba:	39 c2                	cmp    %eax,%edx
   1400019bc:	7d 07                	jge    1400019c5 <compareComputersByDiskSize+0x64>
   1400019be:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   1400019c3:	eb 24                	jmp    1400019e9 <compareComputersByDiskSize+0x88>
   1400019c5:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400019c9:	8b 90 84 00 00 00    	mov    0x84(%rax),%edx
   1400019cf:	48 8b 45 18          	mov    0x18(%rbp),%rax
   1400019d3:	8b 80 84 00 00 00    	mov    0x84(%rax),%eax
   1400019d9:	39 c2                	cmp    %eax,%edx
   1400019db:	7e 07                	jle    1400019e4 <compareComputersByDiskSize+0x83>
   1400019dd:	b8 01 00 00 00       	mov    $0x1,%eax
   1400019e2:	eb 05                	jmp    1400019e9 <compareComputersByDiskSize+0x88>
   1400019e4:	b8 00 00 00 00       	mov    $0x0,%eax
   1400019e9:	48 83 c4 20          	add    $0x20,%rsp
   1400019ed:	5d                   	pop    %rbp
   1400019ee:	c3                   	ret

00000001400019ef <freeArray>:
   1400019ef:	55                   	push   %rbp
   1400019f0:	48 89 e5             	mov    %rsp,%rbp
   1400019f3:	48 83 ec 20          	sub    $0x20,%rsp
   1400019f7:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   1400019fb:	48 83 7d 10 00       	cmpq   $0x0,0x10(%rbp)
   140001a00:	75 22                	jne    140001a24 <freeArray+0x35>
   140001a02:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001a07:	48 8b 05 b2 76 00 00 	mov    0x76b2(%rip),%rax        # 1400090c0 <__imp___acrt_iob_func>
   140001a0e:	ff d0                	call   *%rax
   140001a10:	48 89 c1             	mov    %rax,%rcx
   140001a13:	48 8d 05 1d 87 00 00 	lea    0x871d(%rip),%rax        # 14000a137 <.rdata+0x67>
   140001a1a:	48 89 c2             	mov    %rax,%rdx
   140001a1d:	e8 4e fd ff ff       	call   140001770 <fprintf>
   140001a22:	eb 11                	jmp    140001a35 <freeArray+0x46>
   140001a24:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140001a28:	48 83 e8 01          	sub    $0x1,%rax
   140001a2c:	48 89 c1             	mov    %rax,%rcx
   140001a2f:	e8 64 66 00 00       	call   140008098 <free>
   140001a34:	90                   	nop
   140001a35:	48 83 c4 20          	add    $0x20,%rsp
   140001a39:	5d                   	pop    %rbp
   140001a3a:	c3                   	ret
   140001a3b:	90                   	nop
   140001a3c:	90                   	nop
   140001a3d:	90                   	nop
   140001a3e:	90                   	nop
   140001a3f:	90                   	nop

0000000140001a40 <__do_global_dtors>:
   140001a40:	48 83 ec 28          	sub    $0x28,%rsp
   140001a44:	48 8b 05 b5 75 00 00 	mov    0x75b5(%rip),%rax        # 140009000 <__data_start__>
   140001a4b:	48 8b 00             	mov    (%rax),%rax
   140001a4e:	48 85 c0             	test   %rax,%rax
   140001a51:	74 22                	je     140001a75 <__do_global_dtors+0x35>
   140001a53:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001a58:	ff d0                	call   *%rax
   140001a5a:	48 8b 05 9f 75 00 00 	mov    0x759f(%rip),%rax        # 140009000 <__data_start__>
   140001a61:	48 8d 50 08          	lea    0x8(%rax),%rdx
   140001a65:	48 8b 40 08          	mov    0x8(%rax),%rax
   140001a69:	48 89 15 90 75 00 00 	mov    %rdx,0x7590(%rip)        # 140009000 <__data_start__>
   140001a70:	48 85 c0             	test   %rax,%rax
   140001a73:	75 e3                	jne    140001a58 <__do_global_dtors+0x18>
   140001a75:	48 83 c4 28          	add    $0x28,%rsp
   140001a79:	c3                   	ret
   140001a7a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140001a80 <__do_global_ctors>:
   140001a80:	56                   	push   %rsi
   140001a81:	53                   	push   %rbx
   140001a82:	48 83 ec 28          	sub    $0x28,%rsp
   140001a86:	48 8b 15 b3 8d 00 00 	mov    0x8db3(%rip),%rdx        # 14000a840 <.refptr.__CTOR_LIST__>
   140001a8d:	48 8b 02             	mov    (%rdx),%rax
   140001a90:	89 c1                	mov    %eax,%ecx
   140001a92:	83 f8 ff             	cmp    $0xffffffff,%eax
   140001a95:	74 39                	je     140001ad0 <__do_global_ctors+0x50>
   140001a97:	85 c9                	test   %ecx,%ecx
   140001a99:	74 20                	je     140001abb <__do_global_ctors+0x3b>
   140001a9b:	89 c8                	mov    %ecx,%eax
   140001a9d:	83 e9 01             	sub    $0x1,%ecx
   140001aa0:	48 8d 1c c2          	lea    (%rdx,%rax,8),%rbx
   140001aa4:	48 29 c8             	sub    %rcx,%rax
   140001aa7:	48 8d 74 c2 f8       	lea    -0x8(%rdx,%rax,8),%rsi
   140001aac:	0f 1f 40 00          	nopl   0x0(%rax)
   140001ab0:	ff 13                	call   *(%rbx)
   140001ab2:	48 83 eb 08          	sub    $0x8,%rbx
   140001ab6:	48 39 f3             	cmp    %rsi,%rbx
   140001ab9:	75 f5                	jne    140001ab0 <__do_global_ctors+0x30>
   140001abb:	48 8d 0d 7e ff ff ff 	lea    -0x82(%rip),%rcx        # 140001a40 <__do_global_dtors>
   140001ac2:	48 83 c4 28          	add    $0x28,%rsp
   140001ac6:	5b                   	pop    %rbx
   140001ac7:	5e                   	pop    %rsi
   140001ac8:	e9 43 f9 ff ff       	jmp    140001410 <atexit>
   140001acd:	0f 1f 00             	nopl   (%rax)
   140001ad0:	31 c0                	xor    %eax,%eax
   140001ad2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140001ad8:	44 8d 40 01          	lea    0x1(%rax),%r8d
   140001adc:	89 c1                	mov    %eax,%ecx
   140001ade:	4a 83 3c c2 00       	cmpq   $0x0,(%rdx,%r8,8)
   140001ae3:	4c 89 c0             	mov    %r8,%rax
   140001ae6:	75 f0                	jne    140001ad8 <__do_global_ctors+0x58>
   140001ae8:	eb ad                	jmp    140001a97 <__do_global_ctors+0x17>
   140001aea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140001af0 <__main>:
   140001af0:	8b 05 3a c5 00 00    	mov    0xc53a(%rip),%eax        # 14000e030 <initialized>
   140001af6:	85 c0                	test   %eax,%eax
   140001af8:	74 06                	je     140001b00 <__main+0x10>
   140001afa:	c3                   	ret
   140001afb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001b00:	c7 05 26 c5 00 00 01 	movl   $0x1,0xc526(%rip)        # 14000e030 <initialized>
   140001b07:	00 00 00 
   140001b0a:	e9 71 ff ff ff       	jmp    140001a80 <__do_global_ctors>
   140001b0f:	90                   	nop

0000000140001b10 <_setargv>:
   140001b10:	31 c0                	xor    %eax,%eax
   140001b12:	c3                   	ret
   140001b13:	90                   	nop
   140001b14:	90                   	nop
   140001b15:	90                   	nop
   140001b16:	90                   	nop
   140001b17:	90                   	nop
   140001b18:	90                   	nop
   140001b19:	90                   	nop
   140001b1a:	90                   	nop
   140001b1b:	90                   	nop
   140001b1c:	90                   	nop
   140001b1d:	90                   	nop
   140001b1e:	90                   	nop
   140001b1f:	90                   	nop

0000000140001b20 <__dyn_tls_dtor>:
   140001b20:	48 83 ec 28          	sub    $0x28,%rsp
   140001b24:	83 fa 03             	cmp    $0x3,%edx
   140001b27:	74 17                	je     140001b40 <__dyn_tls_dtor+0x20>
   140001b29:	85 d2                	test   %edx,%edx
   140001b2b:	74 13                	je     140001b40 <__dyn_tls_dtor+0x20>
   140001b2d:	b8 01 00 00 00       	mov    $0x1,%eax
   140001b32:	48 83 c4 28          	add    $0x28,%rsp
   140001b36:	c3                   	ret
   140001b37:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140001b3e:	00 00 
   140001b40:	e8 5b 0a 00 00       	call   1400025a0 <__mingw_TLScallback>
   140001b45:	b8 01 00 00 00       	mov    $0x1,%eax
   140001b4a:	48 83 c4 28          	add    $0x28,%rsp
   140001b4e:	c3                   	ret
   140001b4f:	90                   	nop

0000000140001b50 <__dyn_tls_init>:
   140001b50:	56                   	push   %rsi
   140001b51:	53                   	push   %rbx
   140001b52:	48 83 ec 28          	sub    $0x28,%rsp
   140001b56:	48 8b 05 c3 8c 00 00 	mov    0x8cc3(%rip),%rax        # 14000a820 <.refptr._CRT_MT>
   140001b5d:	83 38 02             	cmpl   $0x2,(%rax)
   140001b60:	74 06                	je     140001b68 <__dyn_tls_init+0x18>
   140001b62:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
   140001b68:	83 fa 02             	cmp    $0x2,%edx
   140001b6b:	74 13                	je     140001b80 <__dyn_tls_init+0x30>
   140001b6d:	83 fa 01             	cmp    $0x1,%edx
   140001b70:	74 4e                	je     140001bc0 <__dyn_tls_init+0x70>
   140001b72:	b8 01 00 00 00       	mov    $0x1,%eax
   140001b77:	48 83 c4 28          	add    $0x28,%rsp
   140001b7b:	5b                   	pop    %rbx
   140001b7c:	5e                   	pop    %rsi
   140001b7d:	c3                   	ret
   140001b7e:	66 90                	xchg   %ax,%ax
   140001b80:	48 8d 1d d1 e4 00 00 	lea    0xe4d1(%rip),%rbx        # 140010058 <__xd_z>
   140001b87:	48 8d 35 ca e4 00 00 	lea    0xe4ca(%rip),%rsi        # 140010058 <__xd_z>
   140001b8e:	48 39 de             	cmp    %rbx,%rsi
   140001b91:	74 df                	je     140001b72 <__dyn_tls_init+0x22>
   140001b93:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001b98:	48 8b 03             	mov    (%rbx),%rax
   140001b9b:	48 85 c0             	test   %rax,%rax
   140001b9e:	74 02                	je     140001ba2 <__dyn_tls_init+0x52>
   140001ba0:	ff d0                	call   *%rax
   140001ba2:	48 83 c3 08          	add    $0x8,%rbx
   140001ba6:	48 39 de             	cmp    %rbx,%rsi
   140001ba9:	75 ed                	jne    140001b98 <__dyn_tls_init+0x48>
   140001bab:	b8 01 00 00 00       	mov    $0x1,%eax
   140001bb0:	48 83 c4 28          	add    $0x28,%rsp
   140001bb4:	5b                   	pop    %rbx
   140001bb5:	5e                   	pop    %rsi
   140001bb6:	c3                   	ret
   140001bb7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140001bbe:	00 00 
   140001bc0:	e8 db 09 00 00       	call   1400025a0 <__mingw_TLScallback>
   140001bc5:	b8 01 00 00 00       	mov    $0x1,%eax
   140001bca:	48 83 c4 28          	add    $0x28,%rsp
   140001bce:	5b                   	pop    %rbx
   140001bcf:	5e                   	pop    %rsi
   140001bd0:	c3                   	ret
   140001bd1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001bd8:	00 00 00 00 
   140001bdc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001be0 <__tlregdtor>:
   140001be0:	31 c0                	xor    %eax,%eax
   140001be2:	c3                   	ret
   140001be3:	90                   	nop
   140001be4:	90                   	nop
   140001be5:	90                   	nop
   140001be6:	90                   	nop
   140001be7:	90                   	nop
   140001be8:	90                   	nop
   140001be9:	90                   	nop
   140001bea:	90                   	nop
   140001beb:	90                   	nop
   140001bec:	90                   	nop
   140001bed:	90                   	nop
   140001bee:	90                   	nop
   140001bef:	90                   	nop

0000000140001bf0 <_matherr>:
   140001bf0:	56                   	push   %rsi
   140001bf1:	53                   	push   %rbx
   140001bf2:	48 83 ec 78          	sub    $0x78,%rsp
   140001bf6:	0f 11 74 24 40       	movups %xmm6,0x40(%rsp)
   140001bfb:	0f 11 7c 24 50       	movups %xmm7,0x50(%rsp)
   140001c00:	44 0f 11 44 24 60    	movups %xmm8,0x60(%rsp)
   140001c06:	83 39 06             	cmpl   $0x6,(%rcx)
   140001c09:	0f 87 cd 00 00 00    	ja     140001cdc <_matherr+0xec>
   140001c0f:	8b 01                	mov    (%rcx),%eax
   140001c11:	48 8d 15 cc 86 00 00 	lea    0x86cc(%rip),%rdx        # 14000a2e4 <.rdata+0x124>
   140001c18:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   140001c1c:	48 01 d0             	add    %rdx,%rax
   140001c1f:	ff e0                	jmp    *%rax
   140001c21:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001c28:	48 8d 1d b0 85 00 00 	lea    0x85b0(%rip),%rbx        # 14000a1df <.rdata+0x1f>
   140001c2f:	f2 44 0f 10 41 20    	movsd  0x20(%rcx),%xmm8
   140001c35:	f2 0f 10 79 18       	movsd  0x18(%rcx),%xmm7
   140001c3a:	f2 0f 10 71 10       	movsd  0x10(%rcx),%xmm6
   140001c3f:	48 8b 71 08          	mov    0x8(%rcx),%rsi
   140001c43:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001c48:	e8 83 5e 00 00       	call   140007ad0 <__acrt_iob_func>
   140001c4d:	f2 44 0f 11 44 24 30 	movsd  %xmm8,0x30(%rsp)
   140001c54:	49 89 d8             	mov    %rbx,%r8
   140001c57:	48 8d 15 5a 86 00 00 	lea    0x865a(%rip),%rdx        # 14000a2b8 <.rdata+0xf8>
   140001c5e:	f2 0f 11 7c 24 28    	movsd  %xmm7,0x28(%rsp)
   140001c64:	48 89 c1             	mov    %rax,%rcx
   140001c67:	49 89 f1             	mov    %rsi,%r9
   140001c6a:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
   140001c70:	e8 13 64 00 00       	call   140008088 <fprintf>
   140001c75:	90                   	nop
   140001c76:	0f 10 74 24 40       	movups 0x40(%rsp),%xmm6
   140001c7b:	0f 10 7c 24 50       	movups 0x50(%rsp),%xmm7
   140001c80:	31 c0                	xor    %eax,%eax
   140001c82:	44 0f 10 44 24 60    	movups 0x60(%rsp),%xmm8
   140001c88:	48 83 c4 78          	add    $0x78,%rsp
   140001c8c:	5b                   	pop    %rbx
   140001c8d:	5e                   	pop    %rsi
   140001c8e:	c3                   	ret
   140001c8f:	90                   	nop
   140001c90:	48 8d 1d 29 85 00 00 	lea    0x8529(%rip),%rbx        # 14000a1c0 <.rdata>
   140001c97:	eb 96                	jmp    140001c2f <_matherr+0x3f>
   140001c99:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001ca0:	48 8d 1d 79 85 00 00 	lea    0x8579(%rip),%rbx        # 14000a220 <.rdata+0x60>
   140001ca7:	eb 86                	jmp    140001c2f <_matherr+0x3f>
   140001ca9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001cb0:	48 8d 1d 49 85 00 00 	lea    0x8549(%rip),%rbx        # 14000a200 <.rdata+0x40>
   140001cb7:	e9 73 ff ff ff       	jmp    140001c2f <_matherr+0x3f>
   140001cbc:	0f 1f 40 00          	nopl   0x0(%rax)
   140001cc0:	48 8d 1d a9 85 00 00 	lea    0x85a9(%rip),%rbx        # 14000a270 <.rdata+0xb0>
   140001cc7:	e9 63 ff ff ff       	jmp    140001c2f <_matherr+0x3f>
   140001ccc:	0f 1f 40 00          	nopl   0x0(%rax)
   140001cd0:	48 8d 1d 71 85 00 00 	lea    0x8571(%rip),%rbx        # 14000a248 <.rdata+0x88>
   140001cd7:	e9 53 ff ff ff       	jmp    140001c2f <_matherr+0x3f>
   140001cdc:	48 8d 1d c3 85 00 00 	lea    0x85c3(%rip),%rbx        # 14000a2a6 <.rdata+0xe6>
   140001ce3:	e9 47 ff ff ff       	jmp    140001c2f <_matherr+0x3f>
   140001ce8:	90                   	nop
   140001ce9:	90                   	nop
   140001cea:	90                   	nop
   140001ceb:	90                   	nop
   140001cec:	90                   	nop
   140001ced:	90                   	nop
   140001cee:	90                   	nop
   140001cef:	90                   	nop

0000000140001cf0 <_fpreset>:
   140001cf0:	db e3                	fninit
   140001cf2:	c3                   	ret
   140001cf3:	90                   	nop
   140001cf4:	90                   	nop
   140001cf5:	90                   	nop
   140001cf6:	90                   	nop
   140001cf7:	90                   	nop
   140001cf8:	90                   	nop
   140001cf9:	90                   	nop
   140001cfa:	90                   	nop
   140001cfb:	90                   	nop
   140001cfc:	90                   	nop
   140001cfd:	90                   	nop
   140001cfe:	90                   	nop
   140001cff:	90                   	nop

0000000140001d00 <__report_error>:
   140001d00:	56                   	push   %rsi
   140001d01:	53                   	push   %rbx
   140001d02:	48 83 ec 38          	sub    $0x38,%rsp
   140001d06:	48 89 cb             	mov    %rcx,%rbx
   140001d09:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
   140001d0e:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001d13:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
   140001d18:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
   140001d1d:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
   140001d22:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   140001d27:	e8 a4 5d 00 00       	call   140007ad0 <__acrt_iob_func>
   140001d2c:	41 b8 1b 00 00 00    	mov    $0x1b,%r8d
   140001d32:	ba 01 00 00 00       	mov    $0x1,%edx
   140001d37:	48 8d 0d c2 85 00 00 	lea    0x85c2(%rip),%rcx        # 14000a300 <.rdata>
   140001d3e:	49 89 c1             	mov    %rax,%r9
   140001d41:	e8 5a 63 00 00       	call   1400080a0 <fwrite>
   140001d46:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
   140001d4b:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001d50:	e8 7b 5d 00 00       	call   140007ad0 <__acrt_iob_func>
   140001d55:	48 89 da             	mov    %rbx,%rdx
   140001d58:	48 89 c1             	mov    %rax,%rcx
   140001d5b:	49 89 f0             	mov    %rsi,%r8
   140001d5e:	e8 85 63 00 00       	call   1400080e8 <vfprintf>
   140001d63:	e8 08 63 00 00       	call   140008070 <abort>
   140001d68:	90                   	nop
   140001d69:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140001d70 <mark_section_writable>:
   140001d70:	57                   	push   %rdi
   140001d71:	56                   	push   %rsi
   140001d72:	53                   	push   %rbx
   140001d73:	48 83 ec 50          	sub    $0x50,%rsp
   140001d77:	48 63 35 16 c3 00 00 	movslq 0xc316(%rip),%rsi        # 14000e094 <maxSections>
   140001d7e:	48 89 cb             	mov    %rcx,%rbx
   140001d81:	85 f6                	test   %esi,%esi
   140001d83:	0f 8e 17 01 00 00    	jle    140001ea0 <mark_section_writable+0x130>
   140001d89:	48 8b 05 08 c3 00 00 	mov    0xc308(%rip),%rax        # 14000e098 <the_secs>
   140001d90:	45 31 c9             	xor    %r9d,%r9d
   140001d93:	48 83 c0 18          	add    $0x18,%rax
   140001d97:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140001d9e:	00 00 
   140001da0:	4c 8b 00             	mov    (%rax),%r8
   140001da3:	4c 39 c3             	cmp    %r8,%rbx
   140001da6:	72 13                	jb     140001dbb <mark_section_writable+0x4b>
   140001da8:	48 8b 50 08          	mov    0x8(%rax),%rdx
   140001dac:	8b 52 08             	mov    0x8(%rdx),%edx
   140001daf:	49 01 d0             	add    %rdx,%r8
   140001db2:	4c 39 c3             	cmp    %r8,%rbx
   140001db5:	0f 82 8a 00 00 00    	jb     140001e45 <mark_section_writable+0xd5>
   140001dbb:	41 83 c1 01          	add    $0x1,%r9d
   140001dbf:	48 83 c0 28          	add    $0x28,%rax
   140001dc3:	41 39 f1             	cmp    %esi,%r9d
   140001dc6:	75 d8                	jne    140001da0 <mark_section_writable+0x30>
   140001dc8:	48 89 d9             	mov    %rbx,%rcx
   140001dcb:	e8 f0 09 00 00       	call   1400027c0 <__mingw_GetSectionForAddress>
   140001dd0:	48 89 c7             	mov    %rax,%rdi
   140001dd3:	48 85 c0             	test   %rax,%rax
   140001dd6:	0f 84 e6 00 00 00    	je     140001ec2 <mark_section_writable+0x152>
   140001ddc:	48 8b 05 b5 c2 00 00 	mov    0xc2b5(%rip),%rax        # 14000e098 <the_secs>
   140001de3:	48 8d 1c b6          	lea    (%rsi,%rsi,4),%rbx
   140001de7:	48 c1 e3 03          	shl    $0x3,%rbx
   140001deb:	48 01 d8             	add    %rbx,%rax
   140001dee:	48 89 78 20          	mov    %rdi,0x20(%rax)
   140001df2:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   140001df8:	e8 03 0b 00 00       	call   140002900 <_GetPEImageBase>
   140001dfd:	8b 57 0c             	mov    0xc(%rdi),%edx
   140001e00:	41 b8 30 00 00 00    	mov    $0x30,%r8d
   140001e06:	48 8d 0c 10          	lea    (%rax,%rdx,1),%rcx
   140001e0a:	48 8b 05 87 c2 00 00 	mov    0xc287(%rip),%rax        # 14000e098 <the_secs>
   140001e11:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
   140001e16:	48 89 4c 18 18       	mov    %rcx,0x18(%rax,%rbx,1)
   140001e1b:	ff 15 ff d3 00 00    	call   *0xd3ff(%rip)        # 14000f220 <__imp_VirtualQuery>
   140001e21:	48 85 c0             	test   %rax,%rax
   140001e24:	0f 84 7d 00 00 00    	je     140001ea7 <mark_section_writable+0x137>
   140001e2a:	8b 44 24 44          	mov    0x44(%rsp),%eax
   140001e2e:	8d 50 c0             	lea    -0x40(%rax),%edx
   140001e31:	83 e2 bf             	and    $0xffffffbf,%edx
   140001e34:	74 08                	je     140001e3e <mark_section_writable+0xce>
   140001e36:	8d 50 fc             	lea    -0x4(%rax),%edx
   140001e39:	83 e2 fb             	and    $0xfffffffb,%edx
   140001e3c:	75 12                	jne    140001e50 <mark_section_writable+0xe0>
   140001e3e:	83 05 4f c2 00 00 01 	addl   $0x1,0xc24f(%rip)        # 14000e094 <maxSections>
   140001e45:	48 83 c4 50          	add    $0x50,%rsp
   140001e49:	5b                   	pop    %rbx
   140001e4a:	5e                   	pop    %rsi
   140001e4b:	5f                   	pop    %rdi
   140001e4c:	c3                   	ret
   140001e4d:	0f 1f 00             	nopl   (%rax)
   140001e50:	83 f8 02             	cmp    $0x2,%eax
   140001e53:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140001e58:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
   140001e5d:	41 b8 40 00 00 00    	mov    $0x40,%r8d
   140001e63:	b8 04 00 00 00       	mov    $0x4,%eax
   140001e68:	44 0f 44 c0          	cmove  %eax,%r8d
   140001e6c:	48 03 1d 25 c2 00 00 	add    0xc225(%rip),%rbx        # 14000e098 <the_secs>
   140001e73:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
   140001e77:	49 89 d9             	mov    %rbx,%r9
   140001e7a:	48 89 53 10          	mov    %rdx,0x10(%rbx)
   140001e7e:	ff 15 94 d3 00 00    	call   *0xd394(%rip)        # 14000f218 <__imp_VirtualProtect>
   140001e84:	85 c0                	test   %eax,%eax
   140001e86:	75 b6                	jne    140001e3e <mark_section_writable+0xce>
   140001e88:	ff 15 4a d3 00 00    	call   *0xd34a(%rip)        # 14000f1d8 <__imp_GetLastError>
   140001e8e:	48 8d 0d e3 84 00 00 	lea    0x84e3(%rip),%rcx        # 14000a378 <.rdata+0x78>
   140001e95:	89 c2                	mov    %eax,%edx
   140001e97:	e8 64 fe ff ff       	call   140001d00 <__report_error>
   140001e9c:	0f 1f 40 00          	nopl   0x0(%rax)
   140001ea0:	31 f6                	xor    %esi,%esi
   140001ea2:	e9 21 ff ff ff       	jmp    140001dc8 <mark_section_writable+0x58>
   140001ea7:	48 8b 05 ea c1 00 00 	mov    0xc1ea(%rip),%rax        # 14000e098 <the_secs>
   140001eae:	8b 57 08             	mov    0x8(%rdi),%edx
   140001eb1:	48 8d 0d 88 84 00 00 	lea    0x8488(%rip),%rcx        # 14000a340 <.rdata+0x40>
   140001eb8:	4c 8b 44 18 18       	mov    0x18(%rax,%rbx,1),%r8
   140001ebd:	e8 3e fe ff ff       	call   140001d00 <__report_error>
   140001ec2:	48 89 da             	mov    %rbx,%rdx
   140001ec5:	48 8d 0d 54 84 00 00 	lea    0x8454(%rip),%rcx        # 14000a320 <.rdata+0x20>
   140001ecc:	e8 2f fe ff ff       	call   140001d00 <__report_error>
   140001ed1:	90                   	nop
   140001ed2:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001ed9:	00 00 00 00 
   140001edd:	0f 1f 00             	nopl   (%rax)

0000000140001ee0 <_pei386_runtime_relocator>:
   140001ee0:	55                   	push   %rbp
   140001ee1:	41 57                	push   %r15
   140001ee3:	41 56                	push   %r14
   140001ee5:	41 55                	push   %r13
   140001ee7:	41 54                	push   %r12
   140001ee9:	57                   	push   %rdi
   140001eea:	56                   	push   %rsi
   140001eeb:	53                   	push   %rbx
   140001eec:	48 83 ec 48          	sub    $0x48,%rsp
   140001ef0:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
   140001ef5:	44 8b 25 94 c1 00 00 	mov    0xc194(%rip),%r12d        # 14000e090 <was_init.0>
   140001efc:	45 85 e4             	test   %r12d,%r12d
   140001eff:	74 17                	je     140001f18 <_pei386_runtime_relocator+0x38>
   140001f01:	48 8d 65 08          	lea    0x8(%rbp),%rsp
   140001f05:	5b                   	pop    %rbx
   140001f06:	5e                   	pop    %rsi
   140001f07:	5f                   	pop    %rdi
   140001f08:	41 5c                	pop    %r12
   140001f0a:	41 5d                	pop    %r13
   140001f0c:	41 5e                	pop    %r14
   140001f0e:	41 5f                	pop    %r15
   140001f10:	5d                   	pop    %rbp
   140001f11:	c3                   	ret
   140001f12:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140001f18:	c7 05 6e c1 00 00 01 	movl   $0x1,0xc16e(%rip)        # 14000e090 <was_init.0>
   140001f1f:	00 00 00 
   140001f22:	e8 19 09 00 00       	call   140002840 <__mingw_GetSectionCount>
   140001f27:	48 98                	cltq
   140001f29:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140001f2d:	48 8d 04 c5 0f 00 00 	lea    0xf(,%rax,8),%rax
   140001f34:	00 
   140001f35:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
   140001f39:	e8 62 0b 00 00       	call   140002aa0 <___chkstk_ms>
   140001f3e:	4c 8b 2d 0b 89 00 00 	mov    0x890b(%rip),%r13        # 14000a850 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
   140001f45:	48 8b 1d 14 89 00 00 	mov    0x8914(%rip),%rbx        # 14000a860 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
   140001f4c:	c7 05 3e c1 00 00 00 	movl   $0x0,0xc13e(%rip)        # 14000e094 <maxSections>
   140001f53:	00 00 00 
   140001f56:	48 29 c4             	sub    %rax,%rsp
   140001f59:	48 8d 44 24 30       	lea    0x30(%rsp),%rax
   140001f5e:	48 89 05 33 c1 00 00 	mov    %rax,0xc133(%rip)        # 14000e098 <the_secs>
   140001f65:	4c 89 e8             	mov    %r13,%rax
   140001f68:	48 29 d8             	sub    %rbx,%rax
   140001f6b:	48 83 f8 07          	cmp    $0x7,%rax
   140001f6f:	7e 90                	jle    140001f01 <_pei386_runtime_relocator+0x21>
   140001f71:	8b 13                	mov    (%rbx),%edx
   140001f73:	48 83 f8 0b          	cmp    $0xb,%rax
   140001f77:	0f 8f 7b 01 00 00    	jg     1400020f8 <_pei386_runtime_relocator+0x218>
   140001f7d:	8b 03                	mov    (%rbx),%eax
   140001f7f:	85 c0                	test   %eax,%eax
   140001f81:	0f 85 69 02 00 00    	jne    1400021f0 <_pei386_runtime_relocator+0x310>
   140001f87:	8b 43 04             	mov    0x4(%rbx),%eax
   140001f8a:	85 c0                	test   %eax,%eax
   140001f8c:	0f 85 5e 02 00 00    	jne    1400021f0 <_pei386_runtime_relocator+0x310>
   140001f92:	8b 53 08             	mov    0x8(%rbx),%edx
   140001f95:	83 fa 01             	cmp    $0x1,%edx
   140001f98:	0f 85 90 02 00 00    	jne    14000222e <_pei386_runtime_relocator+0x34e>
   140001f9e:	48 83 c3 0c          	add    $0xc,%rbx
   140001fa2:	4c 39 eb             	cmp    %r13,%rbx
   140001fa5:	0f 83 56 ff ff ff    	jae    140001f01 <_pei386_runtime_relocator+0x21>
   140001fab:	4c 8b 35 ce 88 00 00 	mov    0x88ce(%rip),%r14        # 14000a880 <.refptr.__image_base__>
   140001fb2:	49 bf ff ff ff 7f ff 	movabs $0xffffffff7fffffff,%r15
   140001fb9:	ff ff ff 
   140001fbc:	eb 54                	jmp    140002012 <_pei386_runtime_relocator+0x132>
   140001fbe:	66 90                	xchg   %ax,%ax
   140001fc0:	0f b6 37             	movzbl (%rdi),%esi
   140001fc3:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
   140001fc9:	40 84 f6             	test   %sil,%sil
   140001fcc:	0f 89 06 02 00 00    	jns    1400021d8 <_pei386_runtime_relocator+0x2f8>
   140001fd2:	48 81 ce 00 ff ff ff 	or     $0xffffffffffffff00,%rsi
   140001fd9:	48 29 c6             	sub    %rax,%rsi
   140001fdc:	4c 01 ce             	add    %r9,%rsi
   140001fdf:	85 c9                	test   %ecx,%ecx
   140001fe1:	75 17                	jne    140001ffa <_pei386_runtime_relocator+0x11a>
   140001fe3:	48 81 fe ff 00 00 00 	cmp    $0xff,%rsi
   140001fea:	0f 8f 4f 01 00 00    	jg     14000213f <_pei386_runtime_relocator+0x25f>
   140001ff0:	48 83 fe 80          	cmp    $0xffffffffffffff80,%rsi
   140001ff4:	0f 8c 45 01 00 00    	jl     14000213f <_pei386_runtime_relocator+0x25f>
   140001ffa:	48 89 f9             	mov    %rdi,%rcx
   140001ffd:	e8 6e fd ff ff       	call   140001d70 <mark_section_writable>
   140002002:	40 88 37             	mov    %sil,(%rdi)
   140002005:	48 83 c3 0c          	add    $0xc,%rbx
   140002009:	4c 39 eb             	cmp    %r13,%rbx
   14000200c:	0f 83 8e 00 00 00    	jae    1400020a0 <_pei386_runtime_relocator+0x1c0>
   140002012:	8b 03                	mov    (%rbx),%eax
   140002014:	8b 4b 08             	mov    0x8(%rbx),%ecx
   140002017:	8b 7b 04             	mov    0x4(%rbx),%edi
   14000201a:	4c 01 f0             	add    %r14,%rax
   14000201d:	0f b6 d1             	movzbl %cl,%edx
   140002020:	4c 8b 08             	mov    (%rax),%r9
   140002023:	4c 01 f7             	add    %r14,%rdi
   140002026:	83 fa 20             	cmp    $0x20,%edx
   140002029:	0f 84 29 01 00 00    	je     140002158 <_pei386_runtime_relocator+0x278>
   14000202f:	0f 87 eb 00 00 00    	ja     140002120 <_pei386_runtime_relocator+0x240>
   140002035:	83 fa 08             	cmp    $0x8,%edx
   140002038:	74 86                	je     140001fc0 <_pei386_runtime_relocator+0xe0>
   14000203a:	83 fa 10             	cmp    $0x10,%edx
   14000203d:	0f 85 df 01 00 00    	jne    140002222 <_pei386_runtime_relocator+0x342>
   140002043:	0f b7 37             	movzwl (%rdi),%esi
   140002046:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
   14000204c:	66 85 f6             	test   %si,%si
   14000204f:	0f 89 6b 01 00 00    	jns    1400021c0 <_pei386_runtime_relocator+0x2e0>
   140002055:	48 81 ce 00 00 ff ff 	or     $0xffffffffffff0000,%rsi
   14000205c:	48 29 c6             	sub    %rax,%rsi
   14000205f:	4c 01 ce             	add    %r9,%rsi
   140002062:	85 c9                	test   %ecx,%ecx
   140002064:	75 1a                	jne    140002080 <_pei386_runtime_relocator+0x1a0>
   140002066:	48 81 fe 00 80 ff ff 	cmp    $0xffffffffffff8000,%rsi
   14000206d:	0f 8c cc 00 00 00    	jl     14000213f <_pei386_runtime_relocator+0x25f>
   140002073:	48 81 fe ff ff 00 00 	cmp    $0xffff,%rsi
   14000207a:	0f 8f bf 00 00 00    	jg     14000213f <_pei386_runtime_relocator+0x25f>
   140002080:	48 89 f9             	mov    %rdi,%rcx
   140002083:	48 83 c3 0c          	add    $0xc,%rbx
   140002087:	e8 e4 fc ff ff       	call   140001d70 <mark_section_writable>
   14000208c:	66 89 37             	mov    %si,(%rdi)
   14000208f:	4c 39 eb             	cmp    %r13,%rbx
   140002092:	0f 82 7a ff ff ff    	jb     140002012 <_pei386_runtime_relocator+0x132>
   140002098:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000209f:	00 
   1400020a0:	8b 15 ee bf 00 00    	mov    0xbfee(%rip),%edx        # 14000e094 <maxSections>
   1400020a6:	85 d2                	test   %edx,%edx
   1400020a8:	0f 8e 53 fe ff ff    	jle    140001f01 <_pei386_runtime_relocator+0x21>
   1400020ae:	48 8b 35 63 d1 00 00 	mov    0xd163(%rip),%rsi        # 14000f218 <__imp_VirtualProtect>
   1400020b5:	31 db                	xor    %ebx,%ebx
   1400020b7:	48 8d 7d fc          	lea    -0x4(%rbp),%rdi
   1400020bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400020c0:	48 8b 05 d1 bf 00 00 	mov    0xbfd1(%rip),%rax        # 14000e098 <the_secs>
   1400020c7:	48 01 d8             	add    %rbx,%rax
   1400020ca:	44 8b 00             	mov    (%rax),%r8d
   1400020cd:	45 85 c0             	test   %r8d,%r8d
   1400020d0:	74 0d                	je     1400020df <_pei386_runtime_relocator+0x1ff>
   1400020d2:	48 8b 50 10          	mov    0x10(%rax),%rdx
   1400020d6:	48 8b 48 08          	mov    0x8(%rax),%rcx
   1400020da:	49 89 f9             	mov    %rdi,%r9
   1400020dd:	ff d6                	call   *%rsi
   1400020df:	41 83 c4 01          	add    $0x1,%r12d
   1400020e3:	48 83 c3 28          	add    $0x28,%rbx
   1400020e7:	44 3b 25 a6 bf 00 00 	cmp    0xbfa6(%rip),%r12d        # 14000e094 <maxSections>
   1400020ee:	7c d0                	jl     1400020c0 <_pei386_runtime_relocator+0x1e0>
   1400020f0:	e9 0c fe ff ff       	jmp    140001f01 <_pei386_runtime_relocator+0x21>
   1400020f5:	0f 1f 00             	nopl   (%rax)
   1400020f8:	85 d2                	test   %edx,%edx
   1400020fa:	0f 85 f0 00 00 00    	jne    1400021f0 <_pei386_runtime_relocator+0x310>
   140002100:	8b 43 04             	mov    0x4(%rbx),%eax
   140002103:	89 c2                	mov    %eax,%edx
   140002105:	0b 53 08             	or     0x8(%rbx),%edx
   140002108:	0f 85 7c fe ff ff    	jne    140001f8a <_pei386_runtime_relocator+0xaa>
   14000210e:	48 83 c3 0c          	add    $0xc,%rbx
   140002112:	e9 66 fe ff ff       	jmp    140001f7d <_pei386_runtime_relocator+0x9d>
   140002117:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000211e:	00 00 
   140002120:	83 fa 40             	cmp    $0x40,%edx
   140002123:	0f 85 f9 00 00 00    	jne    140002222 <_pei386_runtime_relocator+0x342>
   140002129:	48 8b 37             	mov    (%rdi),%rsi
   14000212c:	48 29 c6             	sub    %rax,%rsi
   14000212f:	4c 01 ce             	add    %r9,%rsi
   140002132:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
   140002138:	75 66                	jne    1400021a0 <_pei386_runtime_relocator+0x2c0>
   14000213a:	48 85 f6             	test   %rsi,%rsi
   14000213d:	78 61                	js     1400021a0 <_pei386_runtime_relocator+0x2c0>
   14000213f:	48 89 74 24 20       	mov    %rsi,0x20(%rsp)
   140002144:	49 89 f8             	mov    %rdi,%r8
   140002147:	48 8d 0d ba 82 00 00 	lea    0x82ba(%rip),%rcx        # 14000a408 <.rdata+0x108>
   14000214e:	e8 ad fb ff ff       	call   140001d00 <__report_error>
   140002153:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002158:	8b 37                	mov    (%rdi),%esi
   14000215a:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
   140002160:	85 f6                	test   %esi,%esi
   140002162:	79 4c                	jns    1400021b0 <_pei386_runtime_relocator+0x2d0>
   140002164:	49 bb 00 00 00 00 ff 	movabs $0xffffffff00000000,%r11
   14000216b:	ff ff ff 
   14000216e:	4c 09 de             	or     %r11,%rsi
   140002171:	48 29 c6             	sub    %rax,%rsi
   140002174:	4c 01 ce             	add    %r9,%rsi
   140002177:	85 c9                	test   %ecx,%ecx
   140002179:	75 0f                	jne    14000218a <_pei386_runtime_relocator+0x2aa>
   14000217b:	4c 39 fe             	cmp    %r15,%rsi
   14000217e:	7e bf                	jle    14000213f <_pei386_runtime_relocator+0x25f>
   140002180:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140002185:	48 39 c6             	cmp    %rax,%rsi
   140002188:	7f b5                	jg     14000213f <_pei386_runtime_relocator+0x25f>
   14000218a:	48 89 f9             	mov    %rdi,%rcx
   14000218d:	e8 de fb ff ff       	call   140001d70 <mark_section_writable>
   140002192:	89 37                	mov    %esi,(%rdi)
   140002194:	e9 6c fe ff ff       	jmp    140002005 <_pei386_runtime_relocator+0x125>
   140002199:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400021a0:	48 89 f9             	mov    %rdi,%rcx
   1400021a3:	e8 c8 fb ff ff       	call   140001d70 <mark_section_writable>
   1400021a8:	48 89 37             	mov    %rsi,(%rdi)
   1400021ab:	e9 55 fe ff ff       	jmp    140002005 <_pei386_runtime_relocator+0x125>
   1400021b0:	48 29 c6             	sub    %rax,%rsi
   1400021b3:	4c 01 ce             	add    %r9,%rsi
   1400021b6:	85 c9                	test   %ecx,%ecx
   1400021b8:	74 c1                	je     14000217b <_pei386_runtime_relocator+0x29b>
   1400021ba:	eb ce                	jmp    14000218a <_pei386_runtime_relocator+0x2aa>
   1400021bc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400021c0:	48 29 c6             	sub    %rax,%rsi
   1400021c3:	4c 01 ce             	add    %r9,%rsi
   1400021c6:	85 c9                	test   %ecx,%ecx
   1400021c8:	0f 84 98 fe ff ff    	je     140002066 <_pei386_runtime_relocator+0x186>
   1400021ce:	e9 ad fe ff ff       	jmp    140002080 <_pei386_runtime_relocator+0x1a0>
   1400021d3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400021d8:	48 29 c6             	sub    %rax,%rsi
   1400021db:	4c 01 ce             	add    %r9,%rsi
   1400021de:	85 c9                	test   %ecx,%ecx
   1400021e0:	0f 84 fd fd ff ff    	je     140001fe3 <_pei386_runtime_relocator+0x103>
   1400021e6:	e9 0f fe ff ff       	jmp    140001ffa <_pei386_runtime_relocator+0x11a>
   1400021eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400021f0:	4c 39 eb             	cmp    %r13,%rbx
   1400021f3:	0f 83 08 fd ff ff    	jae    140001f01 <_pei386_runtime_relocator+0x21>
   1400021f9:	4c 8b 35 80 86 00 00 	mov    0x8680(%rip),%r14        # 14000a880 <.refptr.__image_base__>
   140002200:	8b 73 04             	mov    0x4(%rbx),%esi
   140002203:	8b 3b                	mov    (%rbx),%edi
   140002205:	48 83 c3 08          	add    $0x8,%rbx
   140002209:	4c 01 f6             	add    %r14,%rsi
   14000220c:	03 3e                	add    (%rsi),%edi
   14000220e:	48 89 f1             	mov    %rsi,%rcx
   140002211:	e8 5a fb ff ff       	call   140001d70 <mark_section_writable>
   140002216:	89 3e                	mov    %edi,(%rsi)
   140002218:	4c 39 eb             	cmp    %r13,%rbx
   14000221b:	72 e3                	jb     140002200 <_pei386_runtime_relocator+0x320>
   14000221d:	e9 7e fe ff ff       	jmp    1400020a0 <_pei386_runtime_relocator+0x1c0>
   140002222:	48 8d 0d af 81 00 00 	lea    0x81af(%rip),%rcx        # 14000a3d8 <.rdata+0xd8>
   140002229:	e8 d2 fa ff ff       	call   140001d00 <__report_error>
   14000222e:	48 8d 0d 6b 81 00 00 	lea    0x816b(%rip),%rcx        # 14000a3a0 <.rdata+0xa0>
   140002235:	e8 c6 fa ff ff       	call   140001d00 <__report_error>
   14000223a:	90                   	nop
   14000223b:	90                   	nop
   14000223c:	90                   	nop
   14000223d:	90                   	nop
   14000223e:	90                   	nop
   14000223f:	90                   	nop

0000000140002240 <__mingw_raise_matherr>:
   140002240:	48 83 ec 58          	sub    $0x58,%rsp
   140002244:	48 8b 05 55 be 00 00 	mov    0xbe55(%rip),%rax        # 14000e0a0 <stUserMathErr>
   14000224b:	66 0f 14 d3          	unpcklpd %xmm3,%xmm2
   14000224f:	48 85 c0             	test   %rax,%rax
   140002252:	74 25                	je     140002279 <__mingw_raise_matherr+0x39>
   140002254:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
   14000225b:	00 00 
   14000225d:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
   140002261:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
   140002266:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
   14000226b:	0f 11 54 24 30       	movups %xmm2,0x30(%rsp)
   140002270:	f2 0f 11 44 24 40    	movsd  %xmm0,0x40(%rsp)
   140002276:	ff d0                	call   *%rax
   140002278:	90                   	nop
   140002279:	48 83 c4 58          	add    $0x58,%rsp
   14000227d:	c3                   	ret
   14000227e:	66 90                	xchg   %ax,%ax

0000000140002280 <__mingw_setusermatherr>:
   140002280:	48 89 0d 19 be 00 00 	mov    %rcx,0xbe19(%rip)        # 14000e0a0 <stUserMathErr>
   140002287:	e9 a4 5d 00 00       	jmp    140008030 <__setusermatherr>
   14000228c:	90                   	nop
   14000228d:	90                   	nop
   14000228e:	90                   	nop
   14000228f:	90                   	nop

0000000140002290 <_gnu_exception_handler>:
   140002290:	53                   	push   %rbx
   140002291:	48 83 ec 20          	sub    $0x20,%rsp
   140002295:	48 8b 11             	mov    (%rcx),%rdx
   140002298:	8b 02                	mov    (%rdx),%eax
   14000229a:	48 89 cb             	mov    %rcx,%rbx
   14000229d:	89 c1                	mov    %eax,%ecx
   14000229f:	81 e1 ff ff ff 20    	and    $0x20ffffff,%ecx
   1400022a5:	81 f9 43 43 47 20    	cmp    $0x20474343,%ecx
   1400022ab:	0f 84 9f 00 00 00    	je     140002350 <_gnu_exception_handler+0xc0>
   1400022b1:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
   1400022b6:	77 77                	ja     14000232f <_gnu_exception_handler+0x9f>
   1400022b8:	3d 8b 00 00 c0       	cmp    $0xc000008b,%eax
   1400022bd:	76 21                	jbe    1400022e0 <_gnu_exception_handler+0x50>
   1400022bf:	05 73 ff ff 3f       	add    $0x3fffff73,%eax
   1400022c4:	83 f8 09             	cmp    $0x9,%eax
   1400022c7:	77 54                	ja     14000231d <_gnu_exception_handler+0x8d>
   1400022c9:	48 8d 15 90 81 00 00 	lea    0x8190(%rip),%rdx        # 14000a460 <.rdata>
   1400022d0:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   1400022d4:	48 01 d0             	add    %rdx,%rax
   1400022d7:	ff e0                	jmp    *%rax
   1400022d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400022e0:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
   1400022e5:	0f 84 d5 00 00 00    	je     1400023c0 <_gnu_exception_handler+0x130>
   1400022eb:	76 3b                	jbe    140002328 <_gnu_exception_handler+0x98>
   1400022ed:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
   1400022f2:	74 29                	je     14000231d <_gnu_exception_handler+0x8d>
   1400022f4:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
   1400022f9:	75 34                	jne    14000232f <_gnu_exception_handler+0x9f>
   1400022fb:	31 d2                	xor    %edx,%edx
   1400022fd:	b9 04 00 00 00       	mov    $0x4,%ecx
   140002302:	e8 c1 5d 00 00       	call   1400080c8 <signal>
   140002307:	48 83 f8 01          	cmp    $0x1,%rax
   14000230b:	0f 84 d6 00 00 00    	je     1400023e7 <_gnu_exception_handler+0x157>
   140002311:	48 85 c0             	test   %rax,%rax
   140002314:	74 19                	je     14000232f <_gnu_exception_handler+0x9f>
   140002316:	b9 04 00 00 00       	mov    $0x4,%ecx
   14000231b:	ff d0                	call   *%rax
   14000231d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140002322:	48 83 c4 20          	add    $0x20,%rsp
   140002326:	5b                   	pop    %rbx
   140002327:	c3                   	ret
   140002328:	3d 02 00 00 80       	cmp    $0x80000002,%eax
   14000232d:	74 ee                	je     14000231d <_gnu_exception_handler+0x8d>
   14000232f:	48 8b 05 8a bd 00 00 	mov    0xbd8a(%rip),%rax        # 14000e0c0 <__mingw_oldexcpt_handler>
   140002336:	48 85 c0             	test   %rax,%rax
   140002339:	74 25                	je     140002360 <_gnu_exception_handler+0xd0>
   14000233b:	48 89 d9             	mov    %rbx,%rcx
   14000233e:	48 83 c4 20          	add    $0x20,%rsp
   140002342:	5b                   	pop    %rbx
   140002343:	48 ff e0             	rex.W jmp *%rax
   140002346:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000234d:	00 00 00 
   140002350:	f6 42 04 01          	testb  $0x1,0x4(%rdx)
   140002354:	0f 85 57 ff ff ff    	jne    1400022b1 <_gnu_exception_handler+0x21>
   14000235a:	eb c1                	jmp    14000231d <_gnu_exception_handler+0x8d>
   14000235c:	0f 1f 40 00          	nopl   0x0(%rax)
   140002360:	31 c0                	xor    %eax,%eax
   140002362:	48 83 c4 20          	add    $0x20,%rsp
   140002366:	5b                   	pop    %rbx
   140002367:	c3                   	ret
   140002368:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000236f:	00 
   140002370:	31 d2                	xor    %edx,%edx
   140002372:	b9 08 00 00 00       	mov    $0x8,%ecx
   140002377:	e8 4c 5d 00 00       	call   1400080c8 <signal>
   14000237c:	48 83 f8 01          	cmp    $0x1,%rax
   140002380:	0f 84 89 00 00 00    	je     14000240f <_gnu_exception_handler+0x17f>
   140002386:	48 85 c0             	test   %rax,%rax
   140002389:	74 a4                	je     14000232f <_gnu_exception_handler+0x9f>
   14000238b:	b9 08 00 00 00       	mov    $0x8,%ecx
   140002390:	ff d0                	call   *%rax
   140002392:	eb 89                	jmp    14000231d <_gnu_exception_handler+0x8d>
   140002394:	0f 1f 40 00          	nopl   0x0(%rax)
   140002398:	31 d2                	xor    %edx,%edx
   14000239a:	b9 08 00 00 00       	mov    $0x8,%ecx
   14000239f:	e8 24 5d 00 00       	call   1400080c8 <signal>
   1400023a4:	48 83 f8 01          	cmp    $0x1,%rax
   1400023a8:	75 dc                	jne    140002386 <_gnu_exception_handler+0xf6>
   1400023aa:	ba 01 00 00 00       	mov    $0x1,%edx
   1400023af:	b9 08 00 00 00       	mov    $0x8,%ecx
   1400023b4:	e8 0f 5d 00 00       	call   1400080c8 <signal>
   1400023b9:	e9 5f ff ff ff       	jmp    14000231d <_gnu_exception_handler+0x8d>
   1400023be:	66 90                	xchg   %ax,%ax
   1400023c0:	31 d2                	xor    %edx,%edx
   1400023c2:	b9 0b 00 00 00       	mov    $0xb,%ecx
   1400023c7:	e8 fc 5c 00 00       	call   1400080c8 <signal>
   1400023cc:	48 83 f8 01          	cmp    $0x1,%rax
   1400023d0:	74 29                	je     1400023fb <_gnu_exception_handler+0x16b>
   1400023d2:	48 85 c0             	test   %rax,%rax
   1400023d5:	0f 84 54 ff ff ff    	je     14000232f <_gnu_exception_handler+0x9f>
   1400023db:	b9 0b 00 00 00       	mov    $0xb,%ecx
   1400023e0:	ff d0                	call   *%rax
   1400023e2:	e9 36 ff ff ff       	jmp    14000231d <_gnu_exception_handler+0x8d>
   1400023e7:	ba 01 00 00 00       	mov    $0x1,%edx
   1400023ec:	b9 04 00 00 00       	mov    $0x4,%ecx
   1400023f1:	e8 d2 5c 00 00       	call   1400080c8 <signal>
   1400023f6:	e9 22 ff ff ff       	jmp    14000231d <_gnu_exception_handler+0x8d>
   1400023fb:	ba 01 00 00 00       	mov    $0x1,%edx
   140002400:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140002405:	e8 be 5c 00 00       	call   1400080c8 <signal>
   14000240a:	e9 0e ff ff ff       	jmp    14000231d <_gnu_exception_handler+0x8d>
   14000240f:	ba 01 00 00 00       	mov    $0x1,%edx
   140002414:	b9 08 00 00 00       	mov    $0x8,%ecx
   140002419:	e8 aa 5c 00 00       	call   1400080c8 <signal>
   14000241e:	e8 cd f8 ff ff       	call   140001cf0 <_fpreset>
   140002423:	e9 f5 fe ff ff       	jmp    14000231d <_gnu_exception_handler+0x8d>
   140002428:	90                   	nop
   140002429:	90                   	nop
   14000242a:	90                   	nop
   14000242b:	90                   	nop
   14000242c:	90                   	nop
   14000242d:	90                   	nop
   14000242e:	90                   	nop
   14000242f:	90                   	nop

0000000140002430 <__mingwthr_run_key_dtors.part.0>:
   140002430:	41 54                	push   %r12
   140002432:	55                   	push   %rbp
   140002433:	57                   	push   %rdi
   140002434:	56                   	push   %rsi
   140002435:	53                   	push   %rbx
   140002436:	48 83 ec 20          	sub    $0x20,%rsp
   14000243a:	4c 8d 25 bf bc 00 00 	lea    0xbcbf(%rip),%r12        # 14000e100 <__mingwthr_cs>
   140002441:	4c 89 e1             	mov    %r12,%rcx
   140002444:	ff 15 86 cd 00 00    	call   *0xcd86(%rip)        # 14000f1d0 <__imp_EnterCriticalSection>
   14000244a:	48 8b 1d 8f bc 00 00 	mov    0xbc8f(%rip),%rbx        # 14000e0e0 <key_dtor_list>
   140002451:	48 85 db             	test   %rbx,%rbx
   140002454:	74 36                	je     14000248c <__mingwthr_run_key_dtors.part.0+0x5c>
   140002456:	48 8b 2d b3 cd 00 00 	mov    0xcdb3(%rip),%rbp        # 14000f210 <__imp_TlsGetValue>
   14000245d:	48 8b 3d 74 cd 00 00 	mov    0xcd74(%rip),%rdi        # 14000f1d8 <__imp_GetLastError>
   140002464:	0f 1f 40 00          	nopl   0x0(%rax)
   140002468:	8b 0b                	mov    (%rbx),%ecx
   14000246a:	ff d5                	call   *%rbp
   14000246c:	48 89 c6             	mov    %rax,%rsi
   14000246f:	ff d7                	call   *%rdi
   140002471:	85 c0                	test   %eax,%eax
   140002473:	75 0e                	jne    140002483 <__mingwthr_run_key_dtors.part.0+0x53>
   140002475:	48 85 f6             	test   %rsi,%rsi
   140002478:	74 09                	je     140002483 <__mingwthr_run_key_dtors.part.0+0x53>
   14000247a:	48 8b 43 08          	mov    0x8(%rbx),%rax
   14000247e:	48 89 f1             	mov    %rsi,%rcx
   140002481:	ff d0                	call   *%rax
   140002483:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   140002487:	48 85 db             	test   %rbx,%rbx
   14000248a:	75 dc                	jne    140002468 <__mingwthr_run_key_dtors.part.0+0x38>
   14000248c:	4c 89 e1             	mov    %r12,%rcx
   14000248f:	48 83 c4 20          	add    $0x20,%rsp
   140002493:	5b                   	pop    %rbx
   140002494:	5e                   	pop    %rsi
   140002495:	5f                   	pop    %rdi
   140002496:	5d                   	pop    %rbp
   140002497:	41 5c                	pop    %r12
   140002499:	48 ff 25 50 cd 00 00 	rex.W jmp *0xcd50(%rip)        # 14000f1f0 <__imp_LeaveCriticalSection>

00000001400024a0 <___w64_mingwthr_add_key_dtor>:
   1400024a0:	57                   	push   %rdi
   1400024a1:	56                   	push   %rsi
   1400024a2:	53                   	push   %rbx
   1400024a3:	48 83 ec 20          	sub    $0x20,%rsp
   1400024a7:	8b 05 3b bc 00 00    	mov    0xbc3b(%rip),%eax        # 14000e0e8 <__mingwthr_cs_init>
   1400024ad:	89 cf                	mov    %ecx,%edi
   1400024af:	48 89 d6             	mov    %rdx,%rsi
   1400024b2:	85 c0                	test   %eax,%eax
   1400024b4:	75 0a                	jne    1400024c0 <___w64_mingwthr_add_key_dtor+0x20>
   1400024b6:	31 c0                	xor    %eax,%eax
   1400024b8:	48 83 c4 20          	add    $0x20,%rsp
   1400024bc:	5b                   	pop    %rbx
   1400024bd:	5e                   	pop    %rsi
   1400024be:	5f                   	pop    %rdi
   1400024bf:	c3                   	ret
   1400024c0:	ba 18 00 00 00       	mov    $0x18,%edx
   1400024c5:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400024ca:	e8 a9 5b 00 00       	call   140008078 <calloc>
   1400024cf:	48 89 c3             	mov    %rax,%rbx
   1400024d2:	48 85 c0             	test   %rax,%rax
   1400024d5:	74 33                	je     14000250a <___w64_mingwthr_add_key_dtor+0x6a>
   1400024d7:	48 89 70 08          	mov    %rsi,0x8(%rax)
   1400024db:	48 8d 35 1e bc 00 00 	lea    0xbc1e(%rip),%rsi        # 14000e100 <__mingwthr_cs>
   1400024e2:	89 38                	mov    %edi,(%rax)
   1400024e4:	48 89 f1             	mov    %rsi,%rcx
   1400024e7:	ff 15 e3 cc 00 00    	call   *0xcce3(%rip)        # 14000f1d0 <__imp_EnterCriticalSection>
   1400024ed:	48 8b 05 ec bb 00 00 	mov    0xbbec(%rip),%rax        # 14000e0e0 <key_dtor_list>
   1400024f4:	48 89 f1             	mov    %rsi,%rcx
   1400024f7:	48 89 1d e2 bb 00 00 	mov    %rbx,0xbbe2(%rip)        # 14000e0e0 <key_dtor_list>
   1400024fe:	48 89 43 10          	mov    %rax,0x10(%rbx)
   140002502:	ff 15 e8 cc 00 00    	call   *0xcce8(%rip)        # 14000f1f0 <__imp_LeaveCriticalSection>
   140002508:	eb ac                	jmp    1400024b6 <___w64_mingwthr_add_key_dtor+0x16>
   14000250a:	83 c8 ff             	or     $0xffffffff,%eax
   14000250d:	eb a9                	jmp    1400024b8 <___w64_mingwthr_add_key_dtor+0x18>
   14000250f:	90                   	nop

0000000140002510 <___w64_mingwthr_remove_key_dtor>:
   140002510:	56                   	push   %rsi
   140002511:	53                   	push   %rbx
   140002512:	48 83 ec 28          	sub    $0x28,%rsp
   140002516:	8b 05 cc bb 00 00    	mov    0xbbcc(%rip),%eax        # 14000e0e8 <__mingwthr_cs_init>
   14000251c:	89 cb                	mov    %ecx,%ebx
   14000251e:	85 c0                	test   %eax,%eax
   140002520:	75 0e                	jne    140002530 <___w64_mingwthr_remove_key_dtor+0x20>
   140002522:	31 c0                	xor    %eax,%eax
   140002524:	48 83 c4 28          	add    $0x28,%rsp
   140002528:	5b                   	pop    %rbx
   140002529:	5e                   	pop    %rsi
   14000252a:	c3                   	ret
   14000252b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002530:	48 8d 35 c9 bb 00 00 	lea    0xbbc9(%rip),%rsi        # 14000e100 <__mingwthr_cs>
   140002537:	48 89 f1             	mov    %rsi,%rcx
   14000253a:	ff 15 90 cc 00 00    	call   *0xcc90(%rip)        # 14000f1d0 <__imp_EnterCriticalSection>
   140002540:	48 8b 0d 99 bb 00 00 	mov    0xbb99(%rip),%rcx        # 14000e0e0 <key_dtor_list>
   140002547:	48 85 c9             	test   %rcx,%rcx
   14000254a:	74 27                	je     140002573 <___w64_mingwthr_remove_key_dtor+0x63>
   14000254c:	31 d2                	xor    %edx,%edx
   14000254e:	eb 0b                	jmp    14000255b <___w64_mingwthr_remove_key_dtor+0x4b>
   140002550:	48 89 ca             	mov    %rcx,%rdx
   140002553:	48 85 c0             	test   %rax,%rax
   140002556:	74 1b                	je     140002573 <___w64_mingwthr_remove_key_dtor+0x63>
   140002558:	48 89 c1             	mov    %rax,%rcx
   14000255b:	8b 01                	mov    (%rcx),%eax
   14000255d:	39 d8                	cmp    %ebx,%eax
   14000255f:	48 8b 41 10          	mov    0x10(%rcx),%rax
   140002563:	75 eb                	jne    140002550 <___w64_mingwthr_remove_key_dtor+0x40>
   140002565:	48 85 d2             	test   %rdx,%rdx
   140002568:	74 1e                	je     140002588 <___w64_mingwthr_remove_key_dtor+0x78>
   14000256a:	48 89 42 10          	mov    %rax,0x10(%rdx)
   14000256e:	e8 25 5b 00 00       	call   140008098 <free>
   140002573:	48 89 f1             	mov    %rsi,%rcx
   140002576:	ff 15 74 cc 00 00    	call   *0xcc74(%rip)        # 14000f1f0 <__imp_LeaveCriticalSection>
   14000257c:	31 c0                	xor    %eax,%eax
   14000257e:	48 83 c4 28          	add    $0x28,%rsp
   140002582:	5b                   	pop    %rbx
   140002583:	5e                   	pop    %rsi
   140002584:	c3                   	ret
   140002585:	0f 1f 00             	nopl   (%rax)
   140002588:	48 89 05 51 bb 00 00 	mov    %rax,0xbb51(%rip)        # 14000e0e0 <key_dtor_list>
   14000258f:	eb dd                	jmp    14000256e <___w64_mingwthr_remove_key_dtor+0x5e>
   140002591:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140002598:	00 00 00 00 
   14000259c:	0f 1f 40 00          	nopl   0x0(%rax)

00000001400025a0 <__mingw_TLScallback>:
   1400025a0:	53                   	push   %rbx
   1400025a1:	48 83 ec 20          	sub    $0x20,%rsp
   1400025a5:	83 fa 02             	cmp    $0x2,%edx
   1400025a8:	0f 84 b2 00 00 00    	je     140002660 <__mingw_TLScallback+0xc0>
   1400025ae:	77 30                	ja     1400025e0 <__mingw_TLScallback+0x40>
   1400025b0:	85 d2                	test   %edx,%edx
   1400025b2:	74 4c                	je     140002600 <__mingw_TLScallback+0x60>
   1400025b4:	8b 05 2e bb 00 00    	mov    0xbb2e(%rip),%eax        # 14000e0e8 <__mingwthr_cs_init>
   1400025ba:	85 c0                	test   %eax,%eax
   1400025bc:	0f 84 be 00 00 00    	je     140002680 <__mingw_TLScallback+0xe0>
   1400025c2:	c7 05 1c bb 00 00 01 	movl   $0x1,0xbb1c(%rip)        # 14000e0e8 <__mingwthr_cs_init>
   1400025c9:	00 00 00 
   1400025cc:	b8 01 00 00 00       	mov    $0x1,%eax
   1400025d1:	48 83 c4 20          	add    $0x20,%rsp
   1400025d5:	5b                   	pop    %rbx
   1400025d6:	c3                   	ret
   1400025d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400025de:	00 00 
   1400025e0:	83 fa 03             	cmp    $0x3,%edx
   1400025e3:	75 e7                	jne    1400025cc <__mingw_TLScallback+0x2c>
   1400025e5:	8b 05 fd ba 00 00    	mov    0xbafd(%rip),%eax        # 14000e0e8 <__mingwthr_cs_init>
   1400025eb:	85 c0                	test   %eax,%eax
   1400025ed:	74 dd                	je     1400025cc <__mingw_TLScallback+0x2c>
   1400025ef:	e8 3c fe ff ff       	call   140002430 <__mingwthr_run_key_dtors.part.0>
   1400025f4:	eb d6                	jmp    1400025cc <__mingw_TLScallback+0x2c>
   1400025f6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400025fd:	00 00 00 
   140002600:	8b 05 e2 ba 00 00    	mov    0xbae2(%rip),%eax        # 14000e0e8 <__mingwthr_cs_init>
   140002606:	85 c0                	test   %eax,%eax
   140002608:	75 66                	jne    140002670 <__mingw_TLScallback+0xd0>
   14000260a:	8b 05 d8 ba 00 00    	mov    0xbad8(%rip),%eax        # 14000e0e8 <__mingwthr_cs_init>
   140002610:	83 f8 01             	cmp    $0x1,%eax
   140002613:	75 b7                	jne    1400025cc <__mingw_TLScallback+0x2c>
   140002615:	48 8b 1d c4 ba 00 00 	mov    0xbac4(%rip),%rbx        # 14000e0e0 <key_dtor_list>
   14000261c:	48 85 db             	test   %rbx,%rbx
   14000261f:	74 18                	je     140002639 <__mingw_TLScallback+0x99>
   140002621:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002628:	48 89 d9             	mov    %rbx,%rcx
   14000262b:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   14000262f:	e8 64 5a 00 00       	call   140008098 <free>
   140002634:	48 85 db             	test   %rbx,%rbx
   140002637:	75 ef                	jne    140002628 <__mingw_TLScallback+0x88>
   140002639:	48 8d 0d c0 ba 00 00 	lea    0xbac0(%rip),%rcx        # 14000e100 <__mingwthr_cs>
   140002640:	48 c7 05 95 ba 00 00 	movq   $0x0,0xba95(%rip)        # 14000e0e0 <key_dtor_list>
   140002647:	00 00 00 00 
   14000264b:	c7 05 93 ba 00 00 00 	movl   $0x0,0xba93(%rip)        # 14000e0e8 <__mingwthr_cs_init>
   140002652:	00 00 00 
   140002655:	ff 15 6d cb 00 00    	call   *0xcb6d(%rip)        # 14000f1c8 <__IAT_start__>
   14000265b:	e9 6c ff ff ff       	jmp    1400025cc <__mingw_TLScallback+0x2c>
   140002660:	e8 8b f6 ff ff       	call   140001cf0 <_fpreset>
   140002665:	b8 01 00 00 00       	mov    $0x1,%eax
   14000266a:	48 83 c4 20          	add    $0x20,%rsp
   14000266e:	5b                   	pop    %rbx
   14000266f:	c3                   	ret
   140002670:	e8 bb fd ff ff       	call   140002430 <__mingwthr_run_key_dtors.part.0>
   140002675:	eb 93                	jmp    14000260a <__mingw_TLScallback+0x6a>
   140002677:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000267e:	00 00 
   140002680:	48 8d 0d 79 ba 00 00 	lea    0xba79(%rip),%rcx        # 14000e100 <__mingwthr_cs>
   140002687:	ff 15 53 cb 00 00    	call   *0xcb53(%rip)        # 14000f1e0 <__imp_InitializeCriticalSection>
   14000268d:	e9 30 ff ff ff       	jmp    1400025c2 <__mingw_TLScallback+0x22>
   140002692:	90                   	nop
   140002693:	90                   	nop
   140002694:	90                   	nop
   140002695:	90                   	nop
   140002696:	90                   	nop
   140002697:	90                   	nop
   140002698:	90                   	nop
   140002699:	90                   	nop
   14000269a:	90                   	nop
   14000269b:	90                   	nop
   14000269c:	90                   	nop
   14000269d:	90                   	nop
   14000269e:	90                   	nop
   14000269f:	90                   	nop

00000001400026a0 <_ValidateImageBase>:
   1400026a0:	31 c0                	xor    %eax,%eax
   1400026a2:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
   1400026a7:	75 0f                	jne    1400026b8 <_ValidateImageBase+0x18>
   1400026a9:	48 63 51 3c          	movslq 0x3c(%rcx),%rdx
   1400026ad:	48 01 d1             	add    %rdx,%rcx
   1400026b0:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
   1400026b6:	74 08                	je     1400026c0 <_ValidateImageBase+0x20>
   1400026b8:	c3                   	ret
   1400026b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400026c0:	31 c0                	xor    %eax,%eax
   1400026c2:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
   1400026c8:	0f 94 c0             	sete   %al
   1400026cb:	c3                   	ret
   1400026cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000001400026d0 <_FindPESection>:
   1400026d0:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
   1400026d4:	48 01 c1             	add    %rax,%rcx
   1400026d7:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
   1400026db:	44 0f b7 41 06       	movzwl 0x6(%rcx),%r8d
   1400026e0:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
   1400026e5:	66 45 85 c0          	test   %r8w,%r8w
   1400026e9:	74 32                	je     14000271d <_FindPESection+0x4d>
   1400026eb:	41 8d 48 ff          	lea    -0x1(%r8),%ecx
   1400026ef:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
   1400026f3:	4c 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%r9
   1400026f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400026ff:	00 
   140002700:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   140002704:	4c 89 c1             	mov    %r8,%rcx
   140002707:	4c 39 c2             	cmp    %r8,%rdx
   14000270a:	72 08                	jb     140002714 <_FindPESection+0x44>
   14000270c:	03 48 08             	add    0x8(%rax),%ecx
   14000270f:	48 39 ca             	cmp    %rcx,%rdx
   140002712:	72 0b                	jb     14000271f <_FindPESection+0x4f>
   140002714:	48 83 c0 28          	add    $0x28,%rax
   140002718:	4c 39 c8             	cmp    %r9,%rax
   14000271b:	75 e3                	jne    140002700 <_FindPESection+0x30>
   14000271d:	31 c0                	xor    %eax,%eax
   14000271f:	c3                   	ret

0000000140002720 <_FindPESectionByName>:
   140002720:	57                   	push   %rdi
   140002721:	56                   	push   %rsi
   140002722:	53                   	push   %rbx
   140002723:	48 83 ec 20          	sub    $0x20,%rsp
   140002727:	48 89 ce             	mov    %rcx,%rsi
   14000272a:	e8 a9 59 00 00       	call   1400080d8 <strlen>
   14000272f:	48 83 f8 08          	cmp    $0x8,%rax
   140002733:	77 7b                	ja     1400027b0 <_FindPESectionByName+0x90>
   140002735:	48 8b 15 44 81 00 00 	mov    0x8144(%rip),%rdx        # 14000a880 <.refptr.__image_base__>
   14000273c:	31 db                	xor    %ebx,%ebx
   14000273e:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   140002743:	75 59                	jne    14000279e <_FindPESectionByName+0x7e>
   140002745:	48 63 42 3c          	movslq 0x3c(%rdx),%rax
   140002749:	48 01 d0             	add    %rdx,%rax
   14000274c:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   140002752:	75 4a                	jne    14000279e <_FindPESectionByName+0x7e>
   140002754:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
   14000275a:	75 42                	jne    14000279e <_FindPESectionByName+0x7e>
   14000275c:	0f b7 50 14          	movzwl 0x14(%rax),%edx
   140002760:	48 8d 5c 10 18       	lea    0x18(%rax,%rdx,1),%rbx
   140002765:	0f b7 50 06          	movzwl 0x6(%rax),%edx
   140002769:	66 85 d2             	test   %dx,%dx
   14000276c:	74 42                	je     1400027b0 <_FindPESectionByName+0x90>
   14000276e:	8d 42 ff             	lea    -0x1(%rdx),%eax
   140002771:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140002775:	48 8d 7c c3 28       	lea    0x28(%rbx,%rax,8),%rdi
   14000277a:	eb 0d                	jmp    140002789 <_FindPESectionByName+0x69>
   14000277c:	0f 1f 40 00          	nopl   0x0(%rax)
   140002780:	48 83 c3 28          	add    $0x28,%rbx
   140002784:	48 39 fb             	cmp    %rdi,%rbx
   140002787:	74 27                	je     1400027b0 <_FindPESectionByName+0x90>
   140002789:	41 b8 08 00 00 00    	mov    $0x8,%r8d
   14000278f:	48 89 f2             	mov    %rsi,%rdx
   140002792:	48 89 d9             	mov    %rbx,%rcx
   140002795:	e8 46 59 00 00       	call   1400080e0 <strncmp>
   14000279a:	85 c0                	test   %eax,%eax
   14000279c:	75 e2                	jne    140002780 <_FindPESectionByName+0x60>
   14000279e:	48 89 d8             	mov    %rbx,%rax
   1400027a1:	48 83 c4 20          	add    $0x20,%rsp
   1400027a5:	5b                   	pop    %rbx
   1400027a6:	5e                   	pop    %rsi
   1400027a7:	5f                   	pop    %rdi
   1400027a8:	c3                   	ret
   1400027a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400027b0:	31 db                	xor    %ebx,%ebx
   1400027b2:	48 89 d8             	mov    %rbx,%rax
   1400027b5:	48 83 c4 20          	add    $0x20,%rsp
   1400027b9:	5b                   	pop    %rbx
   1400027ba:	5e                   	pop    %rsi
   1400027bb:	5f                   	pop    %rdi
   1400027bc:	c3                   	ret
   1400027bd:	0f 1f 00             	nopl   (%rax)

00000001400027c0 <__mingw_GetSectionForAddress>:
   1400027c0:	48 8b 15 b9 80 00 00 	mov    0x80b9(%rip),%rdx        # 14000a880 <.refptr.__image_base__>
   1400027c7:	31 c0                	xor    %eax,%eax
   1400027c9:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   1400027ce:	75 10                	jne    1400027e0 <__mingw_GetSectionForAddress+0x20>
   1400027d0:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
   1400027d4:	49 01 d0             	add    %rdx,%r8
   1400027d7:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   1400027de:	74 08                	je     1400027e8 <__mingw_GetSectionForAddress+0x28>
   1400027e0:	c3                   	ret
   1400027e1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400027e8:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   1400027ef:	75 ef                	jne    1400027e0 <__mingw_GetSectionForAddress+0x20>
   1400027f1:	41 0f b7 40 14       	movzwl 0x14(%r8),%eax
   1400027f6:	48 29 d1             	sub    %rdx,%rcx
   1400027f9:	49 8d 44 00 18       	lea    0x18(%r8,%rax,1),%rax
   1400027fe:	45 0f b7 40 06       	movzwl 0x6(%r8),%r8d
   140002803:	66 45 85 c0          	test   %r8w,%r8w
   140002807:	74 34                	je     14000283d <__mingw_GetSectionForAddress+0x7d>
   140002809:	41 8d 50 ff          	lea    -0x1(%r8),%edx
   14000280d:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   140002811:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
   140002816:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000281d:	00 00 00 
   140002820:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   140002824:	4c 89 c2             	mov    %r8,%rdx
   140002827:	4c 39 c1             	cmp    %r8,%rcx
   14000282a:	72 08                	jb     140002834 <__mingw_GetSectionForAddress+0x74>
   14000282c:	03 50 08             	add    0x8(%rax),%edx
   14000282f:	48 39 d1             	cmp    %rdx,%rcx
   140002832:	72 ac                	jb     1400027e0 <__mingw_GetSectionForAddress+0x20>
   140002834:	48 83 c0 28          	add    $0x28,%rax
   140002838:	4c 39 c8             	cmp    %r9,%rax
   14000283b:	75 e3                	jne    140002820 <__mingw_GetSectionForAddress+0x60>
   14000283d:	31 c0                	xor    %eax,%eax
   14000283f:	c3                   	ret

0000000140002840 <__mingw_GetSectionCount>:
   140002840:	48 8b 05 39 80 00 00 	mov    0x8039(%rip),%rax        # 14000a880 <.refptr.__image_base__>
   140002847:	31 c9                	xor    %ecx,%ecx
   140002849:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   14000284e:	75 0f                	jne    14000285f <__mingw_GetSectionCount+0x1f>
   140002850:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   140002854:	48 01 d0             	add    %rdx,%rax
   140002857:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   14000285d:	74 09                	je     140002868 <__mingw_GetSectionCount+0x28>
   14000285f:	89 c8                	mov    %ecx,%eax
   140002861:	c3                   	ret
   140002862:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002868:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
   14000286e:	75 ef                	jne    14000285f <__mingw_GetSectionCount+0x1f>
   140002870:	0f b7 48 06          	movzwl 0x6(%rax),%ecx
   140002874:	89 c8                	mov    %ecx,%eax
   140002876:	c3                   	ret
   140002877:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000287e:	00 00 

0000000140002880 <_FindPESectionExec>:
   140002880:	4c 8b 05 f9 7f 00 00 	mov    0x7ff9(%rip),%r8        # 14000a880 <.refptr.__image_base__>
   140002887:	31 c0                	xor    %eax,%eax
   140002889:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
   14000288f:	75 0f                	jne    1400028a0 <_FindPESectionExec+0x20>
   140002891:	49 63 50 3c          	movslq 0x3c(%r8),%rdx
   140002895:	4c 01 c2             	add    %r8,%rdx
   140002898:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
   14000289e:	74 08                	je     1400028a8 <_FindPESectionExec+0x28>
   1400028a0:	c3                   	ret
   1400028a1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400028a8:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
   1400028ae:	75 f0                	jne    1400028a0 <_FindPESectionExec+0x20>
   1400028b0:	0f b7 42 14          	movzwl 0x14(%rdx),%eax
   1400028b4:	44 0f b7 42 06       	movzwl 0x6(%rdx),%r8d
   1400028b9:	48 8d 44 02 18       	lea    0x18(%rdx,%rax,1),%rax
   1400028be:	66 45 85 c0          	test   %r8w,%r8w
   1400028c2:	74 2c                	je     1400028f0 <_FindPESectionExec+0x70>
   1400028c4:	41 8d 50 ff          	lea    -0x1(%r8),%edx
   1400028c8:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   1400028cc:	48 8d 54 d0 28       	lea    0x28(%rax,%rdx,8),%rdx
   1400028d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400028d8:	f6 40 27 20          	testb  $0x20,0x27(%rax)
   1400028dc:	74 09                	je     1400028e7 <_FindPESectionExec+0x67>
   1400028de:	48 85 c9             	test   %rcx,%rcx
   1400028e1:	74 bd                	je     1400028a0 <_FindPESectionExec+0x20>
   1400028e3:	48 83 e9 01          	sub    $0x1,%rcx
   1400028e7:	48 83 c0 28          	add    $0x28,%rax
   1400028eb:	48 39 d0             	cmp    %rdx,%rax
   1400028ee:	75 e8                	jne    1400028d8 <_FindPESectionExec+0x58>
   1400028f0:	31 c0                	xor    %eax,%eax
   1400028f2:	c3                   	ret
   1400028f3:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400028fa:	00 00 00 00 
   1400028fe:	66 90                	xchg   %ax,%ax

0000000140002900 <_GetPEImageBase>:
   140002900:	48 8b 05 79 7f 00 00 	mov    0x7f79(%rip),%rax        # 14000a880 <.refptr.__image_base__>
   140002907:	31 d2                	xor    %edx,%edx
   140002909:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   14000290e:	75 0f                	jne    14000291f <_GetPEImageBase+0x1f>
   140002910:	48 63 48 3c          	movslq 0x3c(%rax),%rcx
   140002914:	48 01 c1             	add    %rax,%rcx
   140002917:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
   14000291d:	74 09                	je     140002928 <_GetPEImageBase+0x28>
   14000291f:	48 89 d0             	mov    %rdx,%rax
   140002922:	c3                   	ret
   140002923:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002928:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
   14000292e:	48 0f 44 d0          	cmove  %rax,%rdx
   140002932:	48 89 d0             	mov    %rdx,%rax
   140002935:	c3                   	ret
   140002936:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000293d:	00 00 00 

0000000140002940 <_IsNonwritableInCurrentImage>:
   140002940:	48 8b 15 39 7f 00 00 	mov    0x7f39(%rip),%rdx        # 14000a880 <.refptr.__image_base__>
   140002947:	31 c0                	xor    %eax,%eax
   140002949:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   14000294e:	75 10                	jne    140002960 <_IsNonwritableInCurrentImage+0x20>
   140002950:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
   140002954:	49 01 d0             	add    %rdx,%r8
   140002957:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   14000295e:	74 08                	je     140002968 <_IsNonwritableInCurrentImage+0x28>
   140002960:	c3                   	ret
   140002961:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002968:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   14000296f:	75 ef                	jne    140002960 <_IsNonwritableInCurrentImage+0x20>
   140002971:	48 29 d1             	sub    %rdx,%rcx
   140002974:	45 0f b7 48 06       	movzwl 0x6(%r8),%r9d
   140002979:	41 0f b7 50 14       	movzwl 0x14(%r8),%edx
   14000297e:	49 8d 54 10 18       	lea    0x18(%r8,%rdx,1),%rdx
   140002983:	66 45 85 c9          	test   %r9w,%r9w
   140002987:	74 d7                	je     140002960 <_IsNonwritableInCurrentImage+0x20>
   140002989:	41 8d 41 ff          	lea    -0x1(%r9),%eax
   14000298d:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140002991:	4c 8d 4c c2 28       	lea    0x28(%rdx,%rax,8),%r9
   140002996:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000299d:	00 00 00 
   1400029a0:	44 8b 42 0c          	mov    0xc(%rdx),%r8d
   1400029a4:	4c 89 c0             	mov    %r8,%rax
   1400029a7:	4c 39 c1             	cmp    %r8,%rcx
   1400029aa:	72 08                	jb     1400029b4 <_IsNonwritableInCurrentImage+0x74>
   1400029ac:	03 42 08             	add    0x8(%rdx),%eax
   1400029af:	48 39 c1             	cmp    %rax,%rcx
   1400029b2:	72 0c                	jb     1400029c0 <_IsNonwritableInCurrentImage+0x80>
   1400029b4:	48 83 c2 28          	add    $0x28,%rdx
   1400029b8:	49 39 d1             	cmp    %rdx,%r9
   1400029bb:	75 e3                	jne    1400029a0 <_IsNonwritableInCurrentImage+0x60>
   1400029bd:	31 c0                	xor    %eax,%eax
   1400029bf:	c3                   	ret
   1400029c0:	8b 42 24             	mov    0x24(%rdx),%eax
   1400029c3:	f7 d0                	not    %eax
   1400029c5:	c1 e8 1f             	shr    $0x1f,%eax
   1400029c8:	c3                   	ret
   1400029c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000001400029d0 <__mingw_enum_import_library_names>:
   1400029d0:	4c 8b 1d a9 7e 00 00 	mov    0x7ea9(%rip),%r11        # 14000a880 <.refptr.__image_base__>
   1400029d7:	45 31 c9             	xor    %r9d,%r9d
   1400029da:	66 41 81 3b 4d 5a    	cmpw   $0x5a4d,(%r11)
   1400029e0:	75 10                	jne    1400029f2 <__mingw_enum_import_library_names+0x22>
   1400029e2:	4d 63 43 3c          	movslq 0x3c(%r11),%r8
   1400029e6:	4d 01 d8             	add    %r11,%r8
   1400029e9:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   1400029f0:	74 0e                	je     140002a00 <__mingw_enum_import_library_names+0x30>
   1400029f2:	4c 89 c8             	mov    %r9,%rax
   1400029f5:	c3                   	ret
   1400029f6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400029fd:	00 00 00 
   140002a00:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   140002a07:	75 e9                	jne    1400029f2 <__mingw_enum_import_library_names+0x22>
   140002a09:	41 8b 80 90 00 00 00 	mov    0x90(%r8),%eax
   140002a10:	85 c0                	test   %eax,%eax
   140002a12:	74 de                	je     1400029f2 <__mingw_enum_import_library_names+0x22>
   140002a14:	41 0f b7 50 14       	movzwl 0x14(%r8),%edx
   140002a19:	45 0f b7 50 06       	movzwl 0x6(%r8),%r10d
   140002a1e:	49 8d 54 10 18       	lea    0x18(%r8,%rdx,1),%rdx
   140002a23:	66 45 85 d2          	test   %r10w,%r10w
   140002a27:	74 c9                	je     1400029f2 <__mingw_enum_import_library_names+0x22>
   140002a29:	45 8d 42 ff          	lea    -0x1(%r10),%r8d
   140002a2d:	4f 8d 04 80          	lea    (%r8,%r8,4),%r8
   140002a31:	4e 8d 54 c2 28       	lea    0x28(%rdx,%r8,8),%r10
   140002a36:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140002a3d:	00 00 00 
   140002a40:	44 8b 4a 0c          	mov    0xc(%rdx),%r9d
   140002a44:	4d 89 c8             	mov    %r9,%r8
   140002a47:	4c 39 c8             	cmp    %r9,%rax
   140002a4a:	72 09                	jb     140002a55 <__mingw_enum_import_library_names+0x85>
   140002a4c:	44 03 42 08          	add    0x8(%rdx),%r8d
   140002a50:	4c 39 c0             	cmp    %r8,%rax
   140002a53:	72 13                	jb     140002a68 <__mingw_enum_import_library_names+0x98>
   140002a55:	48 83 c2 28          	add    $0x28,%rdx
   140002a59:	4c 39 d2             	cmp    %r10,%rdx
   140002a5c:	75 e2                	jne    140002a40 <__mingw_enum_import_library_names+0x70>
   140002a5e:	45 31 c9             	xor    %r9d,%r9d
   140002a61:	4c 89 c8             	mov    %r9,%rax
   140002a64:	c3                   	ret
   140002a65:	0f 1f 00             	nopl   (%rax)
   140002a68:	4c 01 d8             	add    %r11,%rax
   140002a6b:	eb 0a                	jmp    140002a77 <__mingw_enum_import_library_names+0xa7>
   140002a6d:	0f 1f 00             	nopl   (%rax)
   140002a70:	83 e9 01             	sub    $0x1,%ecx
   140002a73:	48 83 c0 14          	add    $0x14,%rax
   140002a77:	44 8b 40 04          	mov    0x4(%rax),%r8d
   140002a7b:	45 85 c0             	test   %r8d,%r8d
   140002a7e:	75 07                	jne    140002a87 <__mingw_enum_import_library_names+0xb7>
   140002a80:	8b 50 0c             	mov    0xc(%rax),%edx
   140002a83:	85 d2                	test   %edx,%edx
   140002a85:	74 d7                	je     140002a5e <__mingw_enum_import_library_names+0x8e>
   140002a87:	85 c9                	test   %ecx,%ecx
   140002a89:	7f e5                	jg     140002a70 <__mingw_enum_import_library_names+0xa0>
   140002a8b:	44 8b 48 0c          	mov    0xc(%rax),%r9d
   140002a8f:	4d 01 d9             	add    %r11,%r9
   140002a92:	4c 89 c8             	mov    %r9,%rax
   140002a95:	c3                   	ret
   140002a96:	90                   	nop
   140002a97:	90                   	nop
   140002a98:	90                   	nop
   140002a99:	90                   	nop
   140002a9a:	90                   	nop
   140002a9b:	90                   	nop
   140002a9c:	90                   	nop
   140002a9d:	90                   	nop
   140002a9e:	90                   	nop
   140002a9f:	90                   	nop

0000000140002aa0 <___chkstk_ms>:
   140002aa0:	51                   	push   %rcx
   140002aa1:	50                   	push   %rax
   140002aa2:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   140002aa8:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
   140002aad:	72 19                	jb     140002ac8 <___chkstk_ms+0x28>
   140002aaf:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
   140002ab6:	48 83 09 00          	orq    $0x0,(%rcx)
   140002aba:	48 2d 00 10 00 00    	sub    $0x1000,%rax
   140002ac0:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   140002ac6:	77 e7                	ja     140002aaf <___chkstk_ms+0xf>
   140002ac8:	48 29 c1             	sub    %rax,%rcx
   140002acb:	48 83 09 00          	orq    $0x0,(%rcx)
   140002acf:	58                   	pop    %rax
   140002ad0:	59                   	pop    %rcx
   140002ad1:	c3                   	ret
   140002ad2:	90                   	nop
   140002ad3:	90                   	nop
   140002ad4:	90                   	nop
   140002ad5:	90                   	nop
   140002ad6:	90                   	nop
   140002ad7:	90                   	nop
   140002ad8:	90                   	nop
   140002ad9:	90                   	nop
   140002ada:	90                   	nop
   140002adb:	90                   	nop
   140002adc:	90                   	nop
   140002add:	90                   	nop
   140002ade:	90                   	nop
   140002adf:	90                   	nop

0000000140002ae0 <__mingw_vfprintf>:
   140002ae0:	57                   	push   %rdi
   140002ae1:	56                   	push   %rsi
   140002ae2:	53                   	push   %rbx
   140002ae3:	48 83 ec 30          	sub    $0x30,%rsp
   140002ae7:	4c 89 c7             	mov    %r8,%rdi
   140002aea:	48 89 cb             	mov    %rcx,%rbx
   140002aed:	48 89 d6             	mov    %rdx,%rsi
   140002af0:	e8 eb 4e 00 00       	call   1400079e0 <_lock_file>
   140002af5:	48 89 7c 24 20       	mov    %rdi,0x20(%rsp)
   140002afa:	49 89 f1             	mov    %rsi,%r9
   140002afd:	45 31 c0             	xor    %r8d,%r8d
   140002b00:	48 89 da             	mov    %rbx,%rdx
   140002b03:	b9 00 60 00 00       	mov    $0x6000,%ecx
   140002b08:	e8 83 1b 00 00       	call   140004690 <__mingw_pformat>
   140002b0d:	48 89 d9             	mov    %rbx,%rcx
   140002b10:	89 c6                	mov    %eax,%esi
   140002b12:	e8 39 4f 00 00       	call   140007a50 <_unlock_file>
   140002b17:	89 f0                	mov    %esi,%eax
   140002b19:	48 83 c4 30          	add    $0x30,%rsp
   140002b1d:	5b                   	pop    %rbx
   140002b1e:	5e                   	pop    %rsi
   140002b1f:	5f                   	pop    %rdi
   140002b20:	c3                   	ret
   140002b21:	90                   	nop
   140002b22:	90                   	nop
   140002b23:	90                   	nop
   140002b24:	90                   	nop
   140002b25:	90                   	nop
   140002b26:	90                   	nop
   140002b27:	90                   	nop
   140002b28:	90                   	nop
   140002b29:	90                   	nop
   140002b2a:	90                   	nop
   140002b2b:	90                   	nop
   140002b2c:	90                   	nop
   140002b2d:	90                   	nop
   140002b2e:	90                   	nop
   140002b2f:	90                   	nop

0000000140002b30 <__mingw_vsnprintf>:
   140002b30:	56                   	push   %rsi
   140002b31:	53                   	push   %rbx
   140002b32:	48 83 ec 38          	sub    $0x38,%rsp
   140002b36:	48 89 ce             	mov    %rcx,%rsi
   140002b39:	48 85 d2             	test   %rdx,%rdx
   140002b3c:	74 32                	je     140002b70 <__mingw_vsnprintf+0x40>
   140002b3e:	4c 89 4c 24 20       	mov    %r9,0x20(%rsp)
   140002b43:	48 8d 5a ff          	lea    -0x1(%rdx),%rbx
   140002b47:	4d 89 c1             	mov    %r8,%r9
   140002b4a:	48 89 ca             	mov    %rcx,%rdx
   140002b4d:	41 89 d8             	mov    %ebx,%r8d
   140002b50:	31 c9                	xor    %ecx,%ecx
   140002b52:	e8 39 1b 00 00       	call   140004690 <__mingw_pformat>
   140002b57:	89 da                	mov    %ebx,%edx
   140002b59:	39 d8                	cmp    %ebx,%eax
   140002b5b:	0f 4e d0             	cmovle %eax,%edx
   140002b5e:	48 63 d2             	movslq %edx,%rdx
   140002b61:	c6 04 16 00          	movb   $0x0,(%rsi,%rdx,1)
   140002b65:	48 83 c4 38          	add    $0x38,%rsp
   140002b69:	5b                   	pop    %rbx
   140002b6a:	5e                   	pop    %rsi
   140002b6b:	c3                   	ret
   140002b6c:	0f 1f 40 00          	nopl   0x0(%rax)
   140002b70:	4c 89 4c 24 20       	mov    %r9,0x20(%rsp)
   140002b75:	48 89 ca             	mov    %rcx,%rdx
   140002b78:	4d 89 c1             	mov    %r8,%r9
   140002b7b:	31 c9                	xor    %ecx,%ecx
   140002b7d:	45 31 c0             	xor    %r8d,%r8d
   140002b80:	e8 0b 1b 00 00       	call   140004690 <__mingw_pformat>
   140002b85:	48 83 c4 38          	add    $0x38,%rsp
   140002b89:	5b                   	pop    %rbx
   140002b8a:	5e                   	pop    %rsi
   140002b8b:	c3                   	ret
   140002b8c:	90                   	nop
   140002b8d:	90                   	nop
   140002b8e:	90                   	nop
   140002b8f:	90                   	nop

0000000140002b90 <__pformat_cvt>:
   140002b90:	48 83 ec 68          	sub    $0x68,%rsp
   140002b94:	48 8b 02             	mov    (%rdx),%rax
   140002b97:	8b 52 08             	mov    0x8(%rdx),%edx
   140002b9a:	41 89 d2             	mov    %edx,%r10d
   140002b9d:	41 89 cb             	mov    %ecx,%r11d
   140002ba0:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
   140002ba5:	48 89 d1             	mov    %rdx,%rcx
   140002ba8:	89 54 24 58          	mov    %edx,0x58(%rsp)
   140002bac:	66 41 81 e2 ff 7f    	and    $0x7fff,%r10w
   140002bb2:	75 74                	jne    140002c28 <__pformat_cvt+0x98>
   140002bb4:	48 89 c2             	mov    %rax,%rdx
   140002bb7:	48 c1 ea 20          	shr    $0x20,%rdx
   140002bbb:	09 d0                	or     %edx,%eax
   140002bbd:	0f 84 8d 00 00 00    	je     140002c50 <__pformat_cvt+0xc0>
   140002bc3:	85 d2                	test   %edx,%edx
   140002bc5:	0f 89 95 00 00 00    	jns    140002c60 <__pformat_cvt+0xd0>
   140002bcb:	41 8d 92 c2 bf ff ff 	lea    -0x403e(%r10),%edx
   140002bd2:	b8 01 00 00 00       	mov    $0x1,%eax
   140002bd7:	0f bf d2             	movswl %dx,%edx
   140002bda:	89 44 24 44          	mov    %eax,0x44(%rsp)
   140002bde:	81 e1 00 80 00 00    	and    $0x8000,%ecx
   140002be4:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
   140002beb:	00 
   140002bec:	89 08                	mov    %ecx,(%rax)
   140002bee:	48 8d 44 24 48       	lea    0x48(%rsp),%rax
   140002bf3:	48 8d 0d 56 64 00 00 	lea    0x6456(%rip),%rcx        # 140009050 <fpi.0>
   140002bfa:	4c 89 4c 24 30       	mov    %r9,0x30(%rsp)
   140002bff:	4c 8d 4c 24 44       	lea    0x44(%rsp),%r9
   140002c04:	44 89 44 24 28       	mov    %r8d,0x28(%rsp)
   140002c09:	4c 8d 44 24 50       	lea    0x50(%rsp),%r8
   140002c0e:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
   140002c13:	44 89 5c 24 20       	mov    %r11d,0x20(%rsp)
   140002c18:	e8 b3 27 00 00       	call   1400053d0 <__gdtoa>
   140002c1d:	48 83 c4 68          	add    $0x68,%rsp
   140002c21:	c3                   	ret
   140002c22:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002c28:	66 41 81 fa ff 7f    	cmp    $0x7fff,%r10w
   140002c2e:	75 9b                	jne    140002bcb <__pformat_cvt+0x3b>
   140002c30:	48 89 c2             	mov    %rax,%rdx
   140002c33:	48 c1 ea 20          	shr    $0x20,%rdx
   140002c37:	81 e2 ff ff ff 7f    	and    $0x7fffffff,%edx
   140002c3d:	09 c2                	or     %eax,%edx
   140002c3f:	74 2f                	je     140002c70 <__pformat_cvt+0xe0>
   140002c41:	c7 44 24 44 04 00 00 	movl   $0x4,0x44(%rsp)
   140002c48:	00 
   140002c49:	31 d2                	xor    %edx,%edx
   140002c4b:	31 c9                	xor    %ecx,%ecx
   140002c4d:	eb 95                	jmp    140002be4 <__pformat_cvt+0x54>
   140002c4f:	90                   	nop
   140002c50:	31 c0                	xor    %eax,%eax
   140002c52:	31 d2                	xor    %edx,%edx
   140002c54:	eb 84                	jmp    140002bda <__pformat_cvt+0x4a>
   140002c56:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140002c5d:	00 00 00 
   140002c60:	b8 02 00 00 00       	mov    $0x2,%eax
   140002c65:	ba c3 bf ff ff       	mov    $0xffffbfc3,%edx
   140002c6a:	e9 6b ff ff ff       	jmp    140002bda <__pformat_cvt+0x4a>
   140002c6f:	90                   	nop
   140002c70:	b8 03 00 00 00       	mov    $0x3,%eax
   140002c75:	31 d2                	xor    %edx,%edx
   140002c77:	e9 5e ff ff ff       	jmp    140002bda <__pformat_cvt+0x4a>
   140002c7c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140002c80 <__pformat_putc>:
   140002c80:	53                   	push   %rbx
   140002c81:	48 83 ec 20          	sub    $0x20,%rsp
   140002c85:	48 89 d3             	mov    %rdx,%rbx
   140002c88:	8b 52 08             	mov    0x8(%rdx),%edx
   140002c8b:	f6 c6 40             	test   $0x40,%dh
   140002c8e:	75 08                	jne    140002c98 <__pformat_putc+0x18>
   140002c90:	8b 43 24             	mov    0x24(%rbx),%eax
   140002c93:	39 43 28             	cmp    %eax,0x28(%rbx)
   140002c96:	7e 12                	jle    140002caa <__pformat_putc+0x2a>
   140002c98:	48 8b 03             	mov    (%rbx),%rax
   140002c9b:	80 e6 20             	and    $0x20,%dh
   140002c9e:	75 20                	jne    140002cc0 <__pformat_putc+0x40>
   140002ca0:	48 63 53 24          	movslq 0x24(%rbx),%rdx
   140002ca4:	88 0c 10             	mov    %cl,(%rax,%rdx,1)
   140002ca7:	8b 43 24             	mov    0x24(%rbx),%eax
   140002caa:	83 c0 01             	add    $0x1,%eax
   140002cad:	89 43 24             	mov    %eax,0x24(%rbx)
   140002cb0:	48 83 c4 20          	add    $0x20,%rsp
   140002cb4:	5b                   	pop    %rbx
   140002cb5:	c3                   	ret
   140002cb6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140002cbd:	00 00 00 
   140002cc0:	48 89 c2             	mov    %rax,%rdx
   140002cc3:	e8 c8 53 00 00       	call   140008090 <fputc>
   140002cc8:	8b 43 24             	mov    0x24(%rbx),%eax
   140002ccb:	83 c0 01             	add    $0x1,%eax
   140002cce:	89 43 24             	mov    %eax,0x24(%rbx)
   140002cd1:	48 83 c4 20          	add    $0x20,%rsp
   140002cd5:	5b                   	pop    %rbx
   140002cd6:	c3                   	ret
   140002cd7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140002cde:	00 00 

0000000140002ce0 <__pformat_wputchars>:
   140002ce0:	41 57                	push   %r15
   140002ce2:	41 56                	push   %r14
   140002ce4:	41 55                	push   %r13
   140002ce6:	41 54                	push   %r12
   140002ce8:	55                   	push   %rbp
   140002ce9:	57                   	push   %rdi
   140002cea:	56                   	push   %rsi
   140002ceb:	53                   	push   %rbx
   140002cec:	48 83 ec 48          	sub    $0x48,%rsp
   140002cf0:	4c 8d 6c 24 28       	lea    0x28(%rsp),%r13
   140002cf5:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
   140002cfa:	89 d6                	mov    %edx,%esi
   140002cfc:	4c 89 c3             	mov    %r8,%rbx
   140002cff:	31 d2                	xor    %edx,%edx
   140002d01:	48 89 cd             	mov    %rcx,%rbp
   140002d04:	4d 89 e8             	mov    %r13,%r8
   140002d07:	48 89 f9             	mov    %rdi,%rcx
   140002d0a:	e8 71 4e 00 00       	call   140007b80 <wcrtomb>
   140002d0f:	8b 43 10             	mov    0x10(%rbx),%eax
   140002d12:	39 c6                	cmp    %eax,%esi
   140002d14:	89 c2                	mov    %eax,%edx
   140002d16:	0f 4e d6             	cmovle %esi,%edx
   140002d19:	85 c0                	test   %eax,%eax
   140002d1b:	8b 43 0c             	mov    0xc(%rbx),%eax
   140002d1e:	0f 49 f2             	cmovns %edx,%esi
   140002d21:	39 f0                	cmp    %esi,%eax
   140002d23:	0f 8f e2 00 00 00    	jg     140002e0b <__pformat_wputchars+0x12b>
   140002d29:	c7 43 0c ff ff ff ff 	movl   $0xffffffff,0xc(%rbx)
   140002d30:	44 8d 66 ff          	lea    -0x1(%rsi),%r12d
   140002d34:	85 f6                	test   %esi,%esi
   140002d36:	0f 8e 29 01 00 00    	jle    140002e65 <__pformat_wputchars+0x185>
   140002d3c:	31 f6                	xor    %esi,%esi
   140002d3e:	41 83 c4 01          	add    $0x1,%r12d
   140002d42:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002d48:	0f b7 54 75 00       	movzwl 0x0(%rbp,%rsi,2),%edx
   140002d4d:	4d 89 e8             	mov    %r13,%r8
   140002d50:	48 89 f9             	mov    %rdi,%rcx
   140002d53:	e8 28 4e 00 00       	call   140007b80 <wcrtomb>
   140002d58:	85 c0                	test   %eax,%eax
   140002d5a:	0f 8e 8d 00 00 00    	jle    140002ded <__pformat_wputchars+0x10d>
   140002d60:	83 e8 01             	sub    $0x1,%eax
   140002d63:	49 89 fe             	mov    %rdi,%r14
   140002d66:	4c 8d 7c 07 01       	lea    0x1(%rdi,%rax,1),%r15
   140002d6b:	eb 18                	jmp    140002d85 <__pformat_wputchars+0xa5>
   140002d6d:	0f 1f 00             	nopl   (%rax)
   140002d70:	48 63 53 24          	movslq 0x24(%rbx),%rdx
   140002d74:	88 0c 10             	mov    %cl,(%rax,%rdx,1)
   140002d77:	8b 43 24             	mov    0x24(%rbx),%eax
   140002d7a:	83 c0 01             	add    $0x1,%eax
   140002d7d:	89 43 24             	mov    %eax,0x24(%rbx)
   140002d80:	4d 39 fe             	cmp    %r15,%r14
   140002d83:	74 37                	je     140002dbc <__pformat_wputchars+0xdc>
   140002d85:	8b 53 08             	mov    0x8(%rbx),%edx
   140002d88:	49 83 c6 01          	add    $0x1,%r14
   140002d8c:	f6 c6 40             	test   $0x40,%dh
   140002d8f:	75 08                	jne    140002d99 <__pformat_wputchars+0xb9>
   140002d91:	8b 43 24             	mov    0x24(%rbx),%eax
   140002d94:	39 43 28             	cmp    %eax,0x28(%rbx)
   140002d97:	7e e1                	jle    140002d7a <__pformat_wputchars+0x9a>
   140002d99:	41 0f be 4e ff       	movsbl -0x1(%r14),%ecx
   140002d9e:	48 8b 03             	mov    (%rbx),%rax
   140002da1:	80 e6 20             	and    $0x20,%dh
   140002da4:	74 ca                	je     140002d70 <__pformat_wputchars+0x90>
   140002da6:	48 89 c2             	mov    %rax,%rdx
   140002da9:	e8 e2 52 00 00       	call   140008090 <fputc>
   140002dae:	8b 43 24             	mov    0x24(%rbx),%eax
   140002db1:	83 c0 01             	add    $0x1,%eax
   140002db4:	89 43 24             	mov    %eax,0x24(%rbx)
   140002db7:	4d 39 fe             	cmp    %r15,%r14
   140002dba:	75 c9                	jne    140002d85 <__pformat_wputchars+0xa5>
   140002dbc:	48 83 c6 01          	add    $0x1,%rsi
   140002dc0:	44 89 e0             	mov    %r12d,%eax
   140002dc3:	29 f0                	sub    %esi,%eax
   140002dc5:	85 c0                	test   %eax,%eax
   140002dc7:	0f 8f 7b ff ff ff    	jg     140002d48 <__pformat_wputchars+0x68>
   140002dcd:	8b 43 0c             	mov    0xc(%rbx),%eax
   140002dd0:	8d 50 ff             	lea    -0x1(%rax),%edx
   140002dd3:	89 53 0c             	mov    %edx,0xc(%rbx)
   140002dd6:	85 c0                	test   %eax,%eax
   140002dd8:	7e 20                	jle    140002dfa <__pformat_wputchars+0x11a>
   140002dda:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002de0:	48 89 da             	mov    %rbx,%rdx
   140002de3:	b9 20 00 00 00       	mov    $0x20,%ecx
   140002de8:	e8 93 fe ff ff       	call   140002c80 <__pformat_putc>
   140002ded:	8b 43 0c             	mov    0xc(%rbx),%eax
   140002df0:	8d 50 ff             	lea    -0x1(%rax),%edx
   140002df3:	89 53 0c             	mov    %edx,0xc(%rbx)
   140002df6:	85 c0                	test   %eax,%eax
   140002df8:	7f e6                	jg     140002de0 <__pformat_wputchars+0x100>
   140002dfa:	48 83 c4 48          	add    $0x48,%rsp
   140002dfe:	5b                   	pop    %rbx
   140002dff:	5e                   	pop    %rsi
   140002e00:	5f                   	pop    %rdi
   140002e01:	5d                   	pop    %rbp
   140002e02:	41 5c                	pop    %r12
   140002e04:	41 5d                	pop    %r13
   140002e06:	41 5e                	pop    %r14
   140002e08:	41 5f                	pop    %r15
   140002e0a:	c3                   	ret
   140002e0b:	29 f0                	sub    %esi,%eax
   140002e0d:	89 43 0c             	mov    %eax,0xc(%rbx)
   140002e10:	f6 43 09 04          	testb  $0x4,0x9(%rbx)
   140002e14:	75 3a                	jne    140002e50 <__pformat_wputchars+0x170>
   140002e16:	83 e8 01             	sub    $0x1,%eax
   140002e19:	89 43 0c             	mov    %eax,0xc(%rbx)
   140002e1c:	0f 1f 40 00          	nopl   0x0(%rax)
   140002e20:	48 89 da             	mov    %rbx,%rdx
   140002e23:	b9 20 00 00 00       	mov    $0x20,%ecx
   140002e28:	e8 53 fe ff ff       	call   140002c80 <__pformat_putc>
   140002e2d:	8b 43 0c             	mov    0xc(%rbx),%eax
   140002e30:	8d 50 ff             	lea    -0x1(%rax),%edx
   140002e33:	89 53 0c             	mov    %edx,0xc(%rbx)
   140002e36:	85 c0                	test   %eax,%eax
   140002e38:	75 e6                	jne    140002e20 <__pformat_wputchars+0x140>
   140002e3a:	44 8d 66 ff          	lea    -0x1(%rsi),%r12d
   140002e3e:	85 f6                	test   %esi,%esi
   140002e40:	0f 8f f6 fe ff ff    	jg     140002d3c <__pformat_wputchars+0x5c>
   140002e46:	eb a5                	jmp    140002ded <__pformat_wputchars+0x10d>
   140002e48:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140002e4f:	00 
   140002e50:	44 8d 66 ff          	lea    -0x1(%rsi),%r12d
   140002e54:	85 f6                	test   %esi,%esi
   140002e56:	0f 8f e0 fe ff ff    	jg     140002d3c <__pformat_wputchars+0x5c>
   140002e5c:	83 6b 0c 01          	subl   $0x1,0xc(%rbx)
   140002e60:	e9 7b ff ff ff       	jmp    140002de0 <__pformat_wputchars+0x100>
   140002e65:	c7 43 0c fe ff ff ff 	movl   $0xfffffffe,0xc(%rbx)
   140002e6c:	eb 8c                	jmp    140002dfa <__pformat_wputchars+0x11a>
   140002e6e:	66 90                	xchg   %ax,%ax

0000000140002e70 <__pformat_putchars>:
   140002e70:	57                   	push   %rdi
   140002e71:	56                   	push   %rsi
   140002e72:	53                   	push   %rbx
   140002e73:	48 83 ec 20          	sub    $0x20,%rsp
   140002e77:	41 8b 40 10          	mov    0x10(%r8),%eax
   140002e7b:	89 d7                	mov    %edx,%edi
   140002e7d:	39 c2                	cmp    %eax,%edx
   140002e7f:	89 c2                	mov    %eax,%edx
   140002e81:	48 89 ce             	mov    %rcx,%rsi
   140002e84:	0f 4e d7             	cmovle %edi,%edx
   140002e87:	85 c0                	test   %eax,%eax
   140002e89:	41 8b 40 0c          	mov    0xc(%r8),%eax
   140002e8d:	4c 89 c3             	mov    %r8,%rbx
   140002e90:	0f 49 fa             	cmovns %edx,%edi
   140002e93:	39 f8                	cmp    %edi,%eax
   140002e95:	0f 8f bd 00 00 00    	jg     140002f58 <__pformat_putchars+0xe8>
   140002e9b:	41 c7 40 0c ff ff ff 	movl   $0xffffffff,0xc(%r8)
   140002ea2:	ff 
   140002ea3:	8d 57 ff             	lea    -0x1(%rdi),%edx
   140002ea6:	85 ff                	test   %edi,%edi
   140002ea8:	0f 84 97 00 00 00    	je     140002f45 <__pformat_putchars+0xd5>
   140002eae:	8b 43 08             	mov    0x8(%rbx),%eax
   140002eb1:	8d 7a 01             	lea    0x1(%rdx),%edi
   140002eb4:	48 01 f7             	add    %rsi,%rdi
   140002eb7:	eb 1f                	jmp    140002ed8 <__pformat_putchars+0x68>
   140002eb9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002ec0:	48 63 43 24          	movslq 0x24(%rbx),%rax
   140002ec4:	88 0c 02             	mov    %cl,(%rdx,%rax,1)
   140002ec7:	8b 53 24             	mov    0x24(%rbx),%edx
   140002eca:	83 c2 01             	add    $0x1,%edx
   140002ecd:	89 53 24             	mov    %edx,0x24(%rbx)
   140002ed0:	48 39 fe             	cmp    %rdi,%rsi
   140002ed3:	74 3c                	je     140002f11 <__pformat_putchars+0xa1>
   140002ed5:	8b 43 08             	mov    0x8(%rbx),%eax
   140002ed8:	48 83 c6 01          	add    $0x1,%rsi
   140002edc:	f6 c4 40             	test   $0x40,%ah
   140002edf:	75 08                	jne    140002ee9 <__pformat_putchars+0x79>
   140002ee1:	8b 53 24             	mov    0x24(%rbx),%edx
   140002ee4:	39 53 28             	cmp    %edx,0x28(%rbx)
   140002ee7:	7e e1                	jle    140002eca <__pformat_putchars+0x5a>
   140002ee9:	0f be 4e ff          	movsbl -0x1(%rsi),%ecx
   140002eed:	48 8b 13             	mov    (%rbx),%rdx
   140002ef0:	f6 c4 20             	test   $0x20,%ah
   140002ef3:	74 cb                	je     140002ec0 <__pformat_putchars+0x50>
   140002ef5:	e8 96 51 00 00       	call   140008090 <fputc>
   140002efa:	8b 53 24             	mov    0x24(%rbx),%edx
   140002efd:	eb cb                	jmp    140002eca <__pformat_putchars+0x5a>
   140002eff:	90                   	nop
   140002f00:	48 63 43 24          	movslq 0x24(%rbx),%rax
   140002f04:	c6 04 02 20          	movb   $0x20,(%rdx,%rax,1)
   140002f08:	8b 53 24             	mov    0x24(%rbx),%edx
   140002f0b:	83 c2 01             	add    $0x1,%edx
   140002f0e:	89 53 24             	mov    %edx,0x24(%rbx)
   140002f11:	8b 43 0c             	mov    0xc(%rbx),%eax
   140002f14:	8d 50 ff             	lea    -0x1(%rax),%edx
   140002f17:	89 53 0c             	mov    %edx,0xc(%rbx)
   140002f1a:	85 c0                	test   %eax,%eax
   140002f1c:	7e 2e                	jle    140002f4c <__pformat_putchars+0xdc>
   140002f1e:	8b 43 08             	mov    0x8(%rbx),%eax
   140002f21:	f6 c4 40             	test   $0x40,%ah
   140002f24:	75 08                	jne    140002f2e <__pformat_putchars+0xbe>
   140002f26:	8b 53 24             	mov    0x24(%rbx),%edx
   140002f29:	39 53 28             	cmp    %edx,0x28(%rbx)
   140002f2c:	7e dd                	jle    140002f0b <__pformat_putchars+0x9b>
   140002f2e:	48 8b 13             	mov    (%rbx),%rdx
   140002f31:	f6 c4 20             	test   $0x20,%ah
   140002f34:	74 ca                	je     140002f00 <__pformat_putchars+0x90>
   140002f36:	b9 20 00 00 00       	mov    $0x20,%ecx
   140002f3b:	e8 50 51 00 00       	call   140008090 <fputc>
   140002f40:	8b 53 24             	mov    0x24(%rbx),%edx
   140002f43:	eb c6                	jmp    140002f0b <__pformat_putchars+0x9b>
   140002f45:	c7 43 0c fe ff ff ff 	movl   $0xfffffffe,0xc(%rbx)
   140002f4c:	48 83 c4 20          	add    $0x20,%rsp
   140002f50:	5b                   	pop    %rbx
   140002f51:	5e                   	pop    %rsi
   140002f52:	5f                   	pop    %rdi
   140002f53:	c3                   	ret
   140002f54:	0f 1f 40 00          	nopl   0x0(%rax)
   140002f58:	29 f8                	sub    %edi,%eax
   140002f5a:	41 89 40 0c          	mov    %eax,0xc(%r8)
   140002f5e:	89 c2                	mov    %eax,%edx
   140002f60:	41 8b 40 08          	mov    0x8(%r8),%eax
   140002f64:	f6 c4 04             	test   $0x4,%ah
   140002f67:	75 37                	jne    140002fa0 <__pformat_putchars+0x130>
   140002f69:	8d 42 ff             	lea    -0x1(%rdx),%eax
   140002f6c:	41 89 40 0c          	mov    %eax,0xc(%r8)
   140002f70:	48 89 da             	mov    %rbx,%rdx
   140002f73:	b9 20 00 00 00       	mov    $0x20,%ecx
   140002f78:	e8 03 fd ff ff       	call   140002c80 <__pformat_putc>
   140002f7d:	8b 43 0c             	mov    0xc(%rbx),%eax
   140002f80:	8d 50 ff             	lea    -0x1(%rax),%edx
   140002f83:	89 53 0c             	mov    %edx,0xc(%rbx)
   140002f86:	85 c0                	test   %eax,%eax
   140002f88:	75 e6                	jne    140002f70 <__pformat_putchars+0x100>
   140002f8a:	8d 57 ff             	lea    -0x1(%rdi),%edx
   140002f8d:	85 ff                	test   %edi,%edi
   140002f8f:	0f 85 19 ff ff ff    	jne    140002eae <__pformat_putchars+0x3e>
   140002f95:	e9 77 ff ff ff       	jmp    140002f11 <__pformat_putchars+0xa1>
   140002f9a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002fa0:	8d 57 ff             	lea    -0x1(%rdi),%edx
   140002fa3:	85 ff                	test   %edi,%edi
   140002fa5:	0f 85 06 ff ff ff    	jne    140002eb1 <__pformat_putchars+0x41>
   140002fab:	83 6b 0c 01          	subl   $0x1,0xc(%rbx)
   140002faf:	e9 6d ff ff ff       	jmp    140002f21 <__pformat_putchars+0xb1>
   140002fb4:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140002fbb:	00 00 00 00 
   140002fbf:	90                   	nop

0000000140002fc0 <__pformat_puts>:
   140002fc0:	56                   	push   %rsi
   140002fc1:	53                   	push   %rbx
   140002fc2:	48 83 ec 28          	sub    $0x28,%rsp
   140002fc6:	48 8d 05 c3 74 00 00 	lea    0x74c3(%rip),%rax        # 14000a490 <.rdata>
   140002fcd:	48 89 cb             	mov    %rcx,%rbx
   140002fd0:	48 85 c9             	test   %rcx,%rcx
   140002fd3:	48 89 d6             	mov    %rdx,%rsi
   140002fd6:	48 63 52 10          	movslq 0x10(%rdx),%rdx
   140002fda:	48 0f 44 d8          	cmove  %rax,%rbx
   140002fde:	48 89 d9             	mov    %rbx,%rcx
   140002fe1:	85 d2                	test   %edx,%edx
   140002fe3:	78 1b                	js     140003000 <__pformat_puts+0x40>
   140002fe5:	e8 76 49 00 00       	call   140007960 <strnlen>
   140002fea:	49 89 f0             	mov    %rsi,%r8
   140002fed:	89 c2                	mov    %eax,%edx
   140002fef:	48 89 d9             	mov    %rbx,%rcx
   140002ff2:	48 83 c4 28          	add    $0x28,%rsp
   140002ff6:	5b                   	pop    %rbx
   140002ff7:	5e                   	pop    %rsi
   140002ff8:	e9 73 fe ff ff       	jmp    140002e70 <__pformat_putchars>
   140002ffd:	0f 1f 00             	nopl   (%rax)
   140003000:	e8 d3 50 00 00       	call   1400080d8 <strlen>
   140003005:	eb e3                	jmp    140002fea <__pformat_puts+0x2a>
   140003007:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000300e:	00 00 

0000000140003010 <__pformat_emit_inf_or_nan>:
   140003010:	48 83 ec 38          	sub    $0x38,%rsp
   140003014:	45 8b 50 08          	mov    0x8(%r8),%r10d
   140003018:	41 c7 40 10 ff ff ff 	movl   $0xffffffff,0x10(%r8)
   14000301f:	ff 
   140003020:	85 c9                	test   %ecx,%ecx
   140003022:	75 5c                	jne    140003080 <__pformat_emit_inf_or_nan+0x70>
   140003024:	b8 2b 00 00 00       	mov    $0x2b,%eax
   140003029:	41 f7 c2 00 01 00 00 	test   $0x100,%r10d
   140003030:	75 53                	jne    140003085 <__pformat_emit_inf_or_nan+0x75>
   140003032:	41 f6 c2 40          	test   $0x40,%r10b
   140003036:	74 60                	je     140003098 <__pformat_emit_inf_or_nan+0x88>
   140003038:	b8 20 00 00 00       	mov    $0x20,%eax
   14000303d:	4c 8d 4c 24 2d       	lea    0x2d(%rsp),%r9
   140003042:	4c 8d 5c 24 2c       	lea    0x2c(%rsp),%r11
   140003047:	88 44 24 2c          	mov    %al,0x2c(%rsp)
   14000304b:	41 83 e2 20          	and    $0x20,%r10d
   14000304f:	31 c9                	xor    %ecx,%ecx
   140003051:	0f b6 04 0a          	movzbl (%rdx,%rcx,1),%eax
   140003055:	83 e0 df             	and    $0xffffffdf,%eax
   140003058:	44 09 d0             	or     %r10d,%eax
   14000305b:	41 88 04 09          	mov    %al,(%r9,%rcx,1)
   14000305f:	48 83 c1 01          	add    $0x1,%rcx
   140003063:	48 83 f9 03          	cmp    $0x3,%rcx
   140003067:	75 e8                	jne    140003051 <__pformat_emit_inf_or_nan+0x41>
   140003069:	49 8d 51 03          	lea    0x3(%r9),%rdx
   14000306d:	4c 89 d9             	mov    %r11,%rcx
   140003070:	44 29 da             	sub    %r11d,%edx
   140003073:	e8 f8 fd ff ff       	call   140002e70 <__pformat_putchars>
   140003078:	90                   	nop
   140003079:	48 83 c4 38          	add    $0x38,%rsp
   14000307d:	c3                   	ret
   14000307e:	66 90                	xchg   %ax,%ax
   140003080:	b8 2d 00 00 00       	mov    $0x2d,%eax
   140003085:	88 44 24 2c          	mov    %al,0x2c(%rsp)
   140003089:	4c 8d 4c 24 2d       	lea    0x2d(%rsp),%r9
   14000308e:	4c 8d 5c 24 2c       	lea    0x2c(%rsp),%r11
   140003093:	eb b6                	jmp    14000304b <__pformat_emit_inf_or_nan+0x3b>
   140003095:	0f 1f 00             	nopl   (%rax)
   140003098:	4c 8d 5c 24 2c       	lea    0x2c(%rsp),%r11
   14000309d:	4d 89 d9             	mov    %r11,%r9
   1400030a0:	eb a9                	jmp    14000304b <__pformat_emit_inf_or_nan+0x3b>
   1400030a2:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400030a9:	00 00 00 00 
   1400030ad:	0f 1f 00             	nopl   (%rax)

00000001400030b0 <__pformat_xint.isra.0>:
   1400030b0:	55                   	push   %rbp
   1400030b1:	41 57                	push   %r15
   1400030b3:	41 56                	push   %r14
   1400030b5:	41 55                	push   %r13
   1400030b7:	41 54                	push   %r12
   1400030b9:	57                   	push   %rdi
   1400030ba:	56                   	push   %rsi
   1400030bb:	53                   	push   %rbx
   1400030bc:	48 83 ec 28          	sub    $0x28,%rsp
   1400030c0:	48 8d 6c 24 20       	lea    0x20(%rsp),%rbp
   1400030c5:	41 89 ce             	mov    %ecx,%r14d
   1400030c8:	4c 89 c3             	mov    %r8,%rbx
   1400030cb:	83 f9 6f             	cmp    $0x6f,%ecx
   1400030ce:	0f 84 fc 02 00 00    	je     1400033d0 <__pformat_xint.isra.0+0x320>
   1400030d4:	45 8b 78 10          	mov    0x10(%r8),%r15d
   1400030d8:	31 c0                	xor    %eax,%eax
   1400030da:	41 8b 78 08          	mov    0x8(%r8),%edi
   1400030de:	45 85 ff             	test   %r15d,%r15d
   1400030e1:	41 0f 49 c7          	cmovns %r15d,%eax
   1400030e5:	83 c0 12             	add    $0x12,%eax
   1400030e8:	f7 c7 00 10 00 00    	test   $0x1000,%edi
   1400030ee:	0f 84 9c 00 00 00    	je     140003190 <__pformat_xint.isra.0+0xe0>
   1400030f4:	b9 04 00 00 00       	mov    $0x4,%ecx
   1400030f9:	66 83 7b 20 00       	cmpw   $0x0,0x20(%rbx)
   1400030fe:	74 14                	je     140003114 <__pformat_xint.isra.0+0x64>
   140003100:	41 89 c0             	mov    %eax,%r8d
   140003103:	41 b9 ab aa aa aa    	mov    $0xaaaaaaab,%r9d
   140003109:	4d 0f af c1          	imul   %r9,%r8
   14000310d:	49 c1 e8 21          	shr    $0x21,%r8
   140003111:	44 01 c0             	add    %r8d,%eax
   140003114:	44 8b 63 0c          	mov    0xc(%rbx),%r12d
   140003118:	41 39 c4             	cmp    %eax,%r12d
   14000311b:	41 0f 4d c4          	cmovge %r12d,%eax
   14000311f:	48 98                	cltq
   140003121:	48 83 c0 0f          	add    $0xf,%rax
   140003125:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
   140003129:	e8 72 f9 ff ff       	call   140002aa0 <___chkstk_ms>
   14000312e:	45 31 c0             	xor    %r8d,%r8d
   140003131:	48 29 c4             	sub    %rax,%rsp
   140003134:	41 83 fe 6f          	cmp    $0x6f,%r14d
   140003138:	4c 8d 6c 24 20       	lea    0x20(%rsp),%r13
   14000313d:	41 0f 95 c0          	setne  %r8b
   140003141:	46 8d 04 c5 07 00 00 	lea    0x7(,%r8,8),%r8d
   140003148:	00 
   140003149:	4c 89 ee             	mov    %r13,%rsi
   14000314c:	48 85 d2             	test   %rdx,%rdx
   14000314f:	75 74                	jne    1400031c5 <__pformat_xint.isra.0+0x115>
   140003151:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140003158:	81 e7 ff f7 ff ff    	and    $0xfffff7ff,%edi
   14000315e:	89 7b 08             	mov    %edi,0x8(%rbx)
   140003161:	45 85 ff             	test   %r15d,%r15d
   140003164:	0f 8f a1 00 00 00    	jg     14000320b <__pformat_xint.isra.0+0x15b>
   14000316a:	41 83 fe 6f          	cmp    $0x6f,%r14d
   14000316e:	0f 85 c2 00 00 00    	jne    140003236 <__pformat_xint.isra.0+0x186>
   140003174:	f6 43 09 08          	testb  $0x8,0x9(%rbx)
   140003178:	0f 84 b8 00 00 00    	je     140003236 <__pformat_xint.isra.0+0x186>
   14000317e:	c6 06 30             	movb   $0x30,(%rsi)
   140003181:	48 83 c6 01          	add    $0x1,%rsi
   140003185:	e9 ac 00 00 00       	jmp    140003236 <__pformat_xint.isra.0+0x186>
   14000318a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140003190:	44 8b 63 0c          	mov    0xc(%rbx),%r12d
   140003194:	41 39 c4             	cmp    %eax,%r12d
   140003197:	41 0f 4d c4          	cmovge %r12d,%eax
   14000319b:	48 98                	cltq
   14000319d:	48 83 c0 0f          	add    $0xf,%rax
   1400031a1:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
   1400031a5:	e8 f6 f8 ff ff       	call   140002aa0 <___chkstk_ms>
   1400031aa:	b9 04 00 00 00       	mov    $0x4,%ecx
   1400031af:	41 b8 0f 00 00 00    	mov    $0xf,%r8d
   1400031b5:	48 29 c4             	sub    %rax,%rsp
   1400031b8:	4c 8d 6c 24 20       	lea    0x20(%rsp),%r13
   1400031bd:	4c 89 ee             	mov    %r13,%rsi
   1400031c0:	48 85 d2             	test   %rdx,%rdx
   1400031c3:	74 93                	je     140003158 <__pformat_xint.isra.0+0xa8>
   1400031c5:	45 89 f1             	mov    %r14d,%r9d
   1400031c8:	41 83 e1 20          	and    $0x20,%r9d
   1400031cc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400031d0:	44 89 c0             	mov    %r8d,%eax
   1400031d3:	48 83 c6 01          	add    $0x1,%rsi
   1400031d7:	21 d0                	and    %edx,%eax
   1400031d9:	44 8d 50 30          	lea    0x30(%rax),%r10d
   1400031dd:	83 c0 37             	add    $0x37,%eax
   1400031e0:	44 09 c8             	or     %r9d,%eax
   1400031e3:	45 89 d3             	mov    %r10d,%r11d
   1400031e6:	41 80 fa 39          	cmp    $0x39,%r10b
   1400031ea:	41 0f 46 c3          	cmovbe %r11d,%eax
   1400031ee:	48 d3 ea             	shr    %cl,%rdx
   1400031f1:	88 46 ff             	mov    %al,-0x1(%rsi)
   1400031f4:	48 85 d2             	test   %rdx,%rdx
   1400031f7:	75 d7                	jne    1400031d0 <__pformat_xint.isra.0+0x120>
   1400031f9:	4c 39 ee             	cmp    %r13,%rsi
   1400031fc:	0f 84 56 ff ff ff    	je     140003158 <__pformat_xint.isra.0+0xa8>
   140003202:	45 85 ff             	test   %r15d,%r15d
   140003205:	0f 8e 5f ff ff ff    	jle    14000316a <__pformat_xint.isra.0+0xba>
   14000320b:	48 89 f0             	mov    %rsi,%rax
   14000320e:	45 89 f8             	mov    %r15d,%r8d
   140003211:	4c 29 e8             	sub    %r13,%rax
   140003214:	41 29 c0             	sub    %eax,%r8d
   140003217:	45 85 c0             	test   %r8d,%r8d
   14000321a:	0f 8e f0 01 00 00    	jle    140003410 <__pformat_xint.isra.0+0x360>
   140003220:	49 63 f8             	movslq %r8d,%rdi
   140003223:	48 89 f1             	mov    %rsi,%rcx
   140003226:	ba 30 00 00 00       	mov    $0x30,%edx
   14000322b:	49 89 f8             	mov    %rdi,%r8
   14000322e:	48 01 fe             	add    %rdi,%rsi
   140003231:	e8 8a 4e 00 00       	call   1400080c0 <memset>
   140003236:	4c 39 ee             	cmp    %r13,%rsi
   140003239:	75 09                	jne    140003244 <__pformat_xint.isra.0+0x194>
   14000323b:	45 85 ff             	test   %r15d,%r15d
   14000323e:	0f 85 94 02 00 00    	jne    1400034d8 <__pformat_xint.isra.0+0x428>
   140003244:	48 89 f0             	mov    %rsi,%rax
   140003247:	4c 29 e8             	sub    %r13,%rax
   14000324a:	44 39 e0             	cmp    %r12d,%eax
   14000324d:	7c 59                	jl     1400032a8 <__pformat_xint.isra.0+0x1f8>
   14000324f:	c7 43 0c ff ff ff ff 	movl   $0xffffffff,0xc(%rbx)
   140003256:	41 83 fe 6f          	cmp    $0x6f,%r14d
   14000325a:	0f 84 90 02 00 00    	je     1400034f0 <__pformat_xint.isra.0+0x440>
   140003260:	f6 43 09 08          	testb  $0x8,0x9(%rbx)
   140003264:	74 0b                	je     140003271 <__pformat_xint.isra.0+0x1c1>
   140003266:	44 88 36             	mov    %r14b,(%rsi)
   140003269:	48 83 c6 02          	add    $0x2,%rsi
   14000326d:	c6 46 ff 30          	movb   $0x30,-0x1(%rsi)
   140003271:	41 bc ff ff ff ff    	mov    $0xffffffff,%r12d
   140003277:	49 39 f5             	cmp    %rsi,%r13
   14000327a:	73 14                	jae    140003290 <__pformat_xint.isra.0+0x1e0>
   14000327c:	8b 7b 08             	mov    0x8(%rbx),%edi
   14000327f:	45 8d 74 24 ff       	lea    -0x1(%r12),%r14d
   140003284:	e9 b7 00 00 00       	jmp    140003340 <__pformat_xint.isra.0+0x290>
   140003289:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140003290:	48 8d 65 08          	lea    0x8(%rbp),%rsp
   140003294:	5b                   	pop    %rbx
   140003295:	5e                   	pop    %rsi
   140003296:	5f                   	pop    %rdi
   140003297:	41 5c                	pop    %r12
   140003299:	41 5d                	pop    %r13
   14000329b:	41 5e                	pop    %r14
   14000329d:	41 5f                	pop    %r15
   14000329f:	5d                   	pop    %rbp
   1400032a0:	c3                   	ret
   1400032a1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400032a8:	41 29 c4             	sub    %eax,%r12d
   1400032ab:	8b 7b 08             	mov    0x8(%rbx),%edi
   1400032ae:	44 89 63 0c          	mov    %r12d,0xc(%rbx)
   1400032b2:	41 83 fe 6f          	cmp    $0x6f,%r14d
   1400032b6:	74 28                	je     1400032e0 <__pformat_xint.isra.0+0x230>
   1400032b8:	f7 c7 00 08 00 00    	test   $0x800,%edi
   1400032be:	74 20                	je     1400032e0 <__pformat_xint.isra.0+0x230>
   1400032c0:	41 83 ec 02          	sub    $0x2,%r12d
   1400032c4:	45 85 e4             	test   %r12d,%r12d
   1400032c7:	0f 8f 4c 02 00 00    	jg     140003519 <__pformat_xint.isra.0+0x469>
   1400032cd:	44 88 36             	mov    %r14b,(%rsi)
   1400032d0:	48 83 c6 02          	add    $0x2,%rsi
   1400032d4:	c6 46 ff 30          	movb   $0x30,-0x1(%rsi)
   1400032d8:	eb 9d                	jmp    140003277 <__pformat_xint.isra.0+0x1c7>
   1400032da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400032e0:	45 85 ff             	test   %r15d,%r15d
   1400032e3:	0f 88 9f 01 00 00    	js     140003488 <__pformat_xint.isra.0+0x3d8>
   1400032e9:	45 8d 74 24 ff       	lea    -0x1(%r12),%r14d
   1400032ee:	f7 c7 00 04 00 00    	test   $0x400,%edi
   1400032f4:	0f 85 06 01 00 00    	jne    140003400 <__pformat_xint.isra.0+0x350>
   1400032fa:	45 89 f4             	mov    %r14d,%r12d
   1400032fd:	0f 1f 00             	nopl   (%rax)
   140003300:	48 89 da             	mov    %rbx,%rdx
   140003303:	b9 20 00 00 00       	mov    $0x20,%ecx
   140003308:	e8 73 f9 ff ff       	call   140002c80 <__pformat_putc>
   14000330d:	41 83 ec 01          	sub    $0x1,%r12d
   140003311:	73 ed                	jae    140003300 <__pformat_xint.isra.0+0x250>
   140003313:	41 be fe ff ff ff    	mov    $0xfffffffe,%r14d
   140003319:	49 39 f5             	cmp    %rsi,%r13
   14000331c:	72 1f                	jb     14000333d <__pformat_xint.isra.0+0x28d>
   14000331e:	e9 6d ff ff ff       	jmp    140003290 <__pformat_xint.isra.0+0x1e0>
   140003323:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140003328:	48 63 43 24          	movslq 0x24(%rbx),%rax
   14000332c:	88 0c 02             	mov    %cl,(%rdx,%rax,1)
   14000332f:	8b 43 24             	mov    0x24(%rbx),%eax
   140003332:	83 c0 01             	add    $0x1,%eax
   140003335:	89 43 24             	mov    %eax,0x24(%rbx)
   140003338:	49 39 f5             	cmp    %rsi,%r13
   14000333b:	73 38                	jae    140003375 <__pformat_xint.isra.0+0x2c5>
   14000333d:	8b 7b 08             	mov    0x8(%rbx),%edi
   140003340:	48 83 ee 01          	sub    $0x1,%rsi
   140003344:	f7 c7 00 40 00 00    	test   $0x4000,%edi
   14000334a:	75 08                	jne    140003354 <__pformat_xint.isra.0+0x2a4>
   14000334c:	8b 43 24             	mov    0x24(%rbx),%eax
   14000334f:	39 43 28             	cmp    %eax,0x28(%rbx)
   140003352:	7e de                	jle    140003332 <__pformat_xint.isra.0+0x282>
   140003354:	81 e7 00 20 00 00    	and    $0x2000,%edi
   14000335a:	0f be 0e             	movsbl (%rsi),%ecx
   14000335d:	48 8b 13             	mov    (%rbx),%rdx
   140003360:	74 c6                	je     140003328 <__pformat_xint.isra.0+0x278>
   140003362:	e8 29 4d 00 00       	call   140008090 <fputc>
   140003367:	8b 43 24             	mov    0x24(%rbx),%eax
   14000336a:	83 c0 01             	add    $0x1,%eax
   14000336d:	89 43 24             	mov    %eax,0x24(%rbx)
   140003370:	49 39 f5             	cmp    %rsi,%r13
   140003373:	72 c8                	jb     14000333d <__pformat_xint.isra.0+0x28d>
   140003375:	45 85 e4             	test   %r12d,%r12d
   140003378:	7f 27                	jg     1400033a1 <__pformat_xint.isra.0+0x2f1>
   14000337a:	e9 11 ff ff ff       	jmp    140003290 <__pformat_xint.isra.0+0x1e0>
   14000337f:	90                   	nop
   140003380:	48 63 43 24          	movslq 0x24(%rbx),%rax
   140003384:	c6 04 02 20          	movb   $0x20,(%rdx,%rax,1)
   140003388:	8b 43 24             	mov    0x24(%rbx),%eax
   14000338b:	83 c0 01             	add    $0x1,%eax
   14000338e:	89 43 24             	mov    %eax,0x24(%rbx)
   140003391:	41 8d 46 ff          	lea    -0x1(%r14),%eax
   140003395:	45 85 f6             	test   %r14d,%r14d
   140003398:	0f 8e f2 fe ff ff    	jle    140003290 <__pformat_xint.isra.0+0x1e0>
   14000339e:	41 89 c6             	mov    %eax,%r14d
   1400033a1:	8b 7b 08             	mov    0x8(%rbx),%edi
   1400033a4:	f7 c7 00 40 00 00    	test   $0x4000,%edi
   1400033aa:	75 08                	jne    1400033b4 <__pformat_xint.isra.0+0x304>
   1400033ac:	8b 43 24             	mov    0x24(%rbx),%eax
   1400033af:	39 43 28             	cmp    %eax,0x28(%rbx)
   1400033b2:	7e d7                	jle    14000338b <__pformat_xint.isra.0+0x2db>
   1400033b4:	81 e7 00 20 00 00    	and    $0x2000,%edi
   1400033ba:	48 8b 13             	mov    (%rbx),%rdx
   1400033bd:	74 c1                	je     140003380 <__pformat_xint.isra.0+0x2d0>
   1400033bf:	b9 20 00 00 00       	mov    $0x20,%ecx
   1400033c4:	e8 c7 4c 00 00       	call   140008090 <fputc>
   1400033c9:	8b 43 24             	mov    0x24(%rbx),%eax
   1400033cc:	eb bd                	jmp    14000338b <__pformat_xint.isra.0+0x2db>
   1400033ce:	66 90                	xchg   %ax,%ax
   1400033d0:	45 8b 78 10          	mov    0x10(%r8),%r15d
   1400033d4:	31 c0                	xor    %eax,%eax
   1400033d6:	41 8b 78 08          	mov    0x8(%r8),%edi
   1400033da:	45 85 ff             	test   %r15d,%r15d
   1400033dd:	41 0f 49 c7          	cmovns %r15d,%eax
   1400033e1:	83 c0 18             	add    $0x18,%eax
   1400033e4:	f7 c7 00 10 00 00    	test   $0x1000,%edi
   1400033ea:	74 64                	je     140003450 <__pformat_xint.isra.0+0x3a0>
   1400033ec:	b9 03 00 00 00       	mov    $0x3,%ecx
   1400033f1:	e9 03 fd ff ff       	jmp    1400030f9 <__pformat_xint.isra.0+0x49>
   1400033f6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400033fd:	00 00 00 
   140003400:	49 39 f5             	cmp    %rsi,%r13
   140003403:	0f 82 37 ff ff ff    	jb     140003340 <__pformat_xint.isra.0+0x290>
   140003409:	eb 99                	jmp    1400033a4 <__pformat_xint.isra.0+0x2f4>
   14000340b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140003410:	41 83 fe 6f          	cmp    $0x6f,%r14d
   140003414:	0f 84 5a fd ff ff    	je     140003174 <__pformat_xint.isra.0+0xc4>
   14000341a:	4c 39 ee             	cmp    %r13,%rsi
   14000341d:	0f 84 b5 00 00 00    	je     1400034d8 <__pformat_xint.isra.0+0x428>
   140003423:	44 39 e0             	cmp    %r12d,%eax
   140003426:	0f 8d e1 00 00 00    	jge    14000350d <__pformat_xint.isra.0+0x45d>
   14000342c:	8b 7b 08             	mov    0x8(%rbx),%edi
   14000342f:	41 29 c4             	sub    %eax,%r12d
   140003432:	44 89 63 0c          	mov    %r12d,0xc(%rbx)
   140003436:	f7 c7 00 08 00 00    	test   $0x800,%edi
   14000343c:	0f 85 7e fe ff ff    	jne    1400032c0 <__pformat_xint.isra.0+0x210>
   140003442:	e9 a2 fe ff ff       	jmp    1400032e9 <__pformat_xint.isra.0+0x239>
   140003447:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000344e:	00 00 
   140003450:	44 8b 63 0c          	mov    0xc(%rbx),%r12d
   140003454:	41 39 c4             	cmp    %eax,%r12d
   140003457:	41 0f 4d c4          	cmovge %r12d,%eax
   14000345b:	48 98                	cltq
   14000345d:	48 83 c0 0f          	add    $0xf,%rax
   140003461:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
   140003465:	e8 36 f6 ff ff       	call   140002aa0 <___chkstk_ms>
   14000346a:	b9 03 00 00 00       	mov    $0x3,%ecx
   14000346f:	41 b8 07 00 00 00    	mov    $0x7,%r8d
   140003475:	48 29 c4             	sub    %rax,%rsp
   140003478:	4c 8d 6c 24 20       	lea    0x20(%rsp),%r13
   14000347d:	e9 3b fd ff ff       	jmp    1400031bd <__pformat_xint.isra.0+0x10d>
   140003482:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140003488:	89 f8                	mov    %edi,%eax
   14000348a:	25 00 06 00 00       	and    $0x600,%eax
   14000348f:	3d 00 02 00 00       	cmp    $0x200,%eax
   140003494:	0f 85 4f fe ff ff    	jne    1400032e9 <__pformat_xint.isra.0+0x239>
   14000349a:	4d 63 e4             	movslq %r12d,%r12
   14000349d:	48 89 f1             	mov    %rsi,%rcx
   1400034a0:	ba 30 00 00 00       	mov    $0x30,%edx
   1400034a5:	4d 89 e0             	mov    %r12,%r8
   1400034a8:	4c 01 e6             	add    %r12,%rsi
   1400034ab:	e8 10 4c 00 00       	call   1400080c0 <memset>
   1400034b0:	41 83 fe 6f          	cmp    $0x6f,%r14d
   1400034b4:	0f 84 b7 fd ff ff    	je     140003271 <__pformat_xint.isra.0+0x1c1>
   1400034ba:	81 e7 00 08 00 00    	and    $0x800,%edi
   1400034c0:	41 bc ff ff ff ff    	mov    $0xffffffff,%r12d
   1400034c6:	0f 84 ab fd ff ff    	je     140003277 <__pformat_xint.isra.0+0x1c7>
   1400034cc:	e9 fc fd ff ff       	jmp    1400032cd <__pformat_xint.isra.0+0x21d>
   1400034d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400034d8:	48 8d 56 01          	lea    0x1(%rsi),%rdx
   1400034dc:	c6 06 30             	movb   $0x30,(%rsi)
   1400034df:	48 89 d0             	mov    %rdx,%rax
   1400034e2:	48 89 d6             	mov    %rdx,%rsi
   1400034e5:	4c 29 e8             	sub    %r13,%rax
   1400034e8:	e9 5d fd ff ff       	jmp    14000324a <__pformat_xint.isra.0+0x19a>
   1400034ed:	0f 1f 00             	nopl   (%rax)
   1400034f0:	49 39 f5             	cmp    %rsi,%r13
   1400034f3:	0f 83 97 fd ff ff    	jae    140003290 <__pformat_xint.isra.0+0x1e0>
   1400034f9:	8b 7b 08             	mov    0x8(%rbx),%edi
   1400034fc:	41 be fe ff ff ff    	mov    $0xfffffffe,%r14d
   140003502:	41 bc ff ff ff ff    	mov    $0xffffffff,%r12d
   140003508:	e9 33 fe ff ff       	jmp    140003340 <__pformat_xint.isra.0+0x290>
   14000350d:	c7 43 0c ff ff ff ff 	movl   $0xffffffff,0xc(%rbx)
   140003514:	e9 47 fd ff ff       	jmp    140003260 <__pformat_xint.isra.0+0x1b0>
   140003519:	45 85 ff             	test   %r15d,%r15d
   14000351c:	78 10                	js     14000352e <__pformat_xint.isra.0+0x47e>
   14000351e:	44 88 36             	mov    %r14b,(%rsi)
   140003521:	48 83 c6 02          	add    $0x2,%rsi
   140003525:	c6 46 ff 30          	movb   $0x30,-0x1(%rsi)
   140003529:	e9 bb fd ff ff       	jmp    1400032e9 <__pformat_xint.isra.0+0x239>
   14000352e:	89 f8                	mov    %edi,%eax
   140003530:	25 00 06 00 00       	and    $0x600,%eax
   140003535:	3d 00 02 00 00       	cmp    $0x200,%eax
   14000353a:	75 e2                	jne    14000351e <__pformat_xint.isra.0+0x46e>
   14000353c:	4d 63 e4             	movslq %r12d,%r12
   14000353f:	48 89 f1             	mov    %rsi,%rcx
   140003542:	ba 30 00 00 00       	mov    $0x30,%edx
   140003547:	4d 89 e0             	mov    %r12,%r8
   14000354a:	4c 01 e6             	add    %r12,%rsi
   14000354d:	e8 6e 4b 00 00       	call   1400080c0 <memset>
   140003552:	e9 63 ff ff ff       	jmp    1400034ba <__pformat_xint.isra.0+0x40a>
   140003557:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000355e:	00 00 

0000000140003560 <__pformat_int.isra.0>:
   140003560:	55                   	push   %rbp
   140003561:	41 57                	push   %r15
   140003563:	41 56                	push   %r14
   140003565:	41 55                	push   %r13
   140003567:	41 54                	push   %r12
   140003569:	57                   	push   %rdi
   14000356a:	56                   	push   %rsi
   14000356b:	53                   	push   %rbx
   14000356c:	48 83 ec 28          	sub    $0x28,%rsp
   140003570:	48 8d 6c 24 20       	lea    0x20(%rsp),%rbp
   140003575:	31 c0                	xor    %eax,%eax
   140003577:	44 8b 72 10          	mov    0x10(%rdx),%r14d
   14000357b:	44 8b 62 08          	mov    0x8(%rdx),%r12d
   14000357f:	45 85 f6             	test   %r14d,%r14d
   140003582:	41 0f 49 c6          	cmovns %r14d,%eax
   140003586:	48 89 d3             	mov    %rdx,%rbx
   140003589:	83 c0 17             	add    $0x17,%eax
   14000358c:	41 f7 c4 00 10 00 00 	test   $0x1000,%r12d
   140003593:	74 0b                	je     1400035a0 <__pformat_int.isra.0+0x40>
   140003595:	66 83 7a 20 00       	cmpw   $0x0,0x20(%rdx)
   14000359a:	0f 85 48 02 00 00    	jne    1400037e8 <__pformat_int.isra.0+0x288>
   1400035a0:	8b 73 0c             	mov    0xc(%rbx),%esi
   1400035a3:	39 c6                	cmp    %eax,%esi
   1400035a5:	0f 4d c6             	cmovge %esi,%eax
   1400035a8:	48 98                	cltq
   1400035aa:	48 83 c0 0f          	add    $0xf,%rax
   1400035ae:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
   1400035b2:	e8 e9 f4 ff ff       	call   140002aa0 <___chkstk_ms>
   1400035b7:	48 29 c4             	sub    %rax,%rsp
   1400035ba:	4c 8d 6c 24 20       	lea    0x20(%rsp),%r13
   1400035bf:	41 f6 c4 80          	test   $0x80,%r12b
   1400035c3:	74 11                	je     1400035d6 <__pformat_int.isra.0+0x76>
   1400035c5:	48 85 c9             	test   %rcx,%rcx
   1400035c8:	0f 88 72 02 00 00    	js     140003840 <__pformat_int.isra.0+0x2e0>
   1400035ce:	41 80 e4 7f          	and    $0x7f,%r12b
   1400035d2:	44 89 63 08          	mov    %r12d,0x8(%rbx)
   1400035d6:	4c 89 ef             	mov    %r13,%rdi
   1400035d9:	48 85 c9             	test   %rcx,%rcx
   1400035dc:	0f 84 8e 00 00 00    	je     140003670 <__pformat_int.isra.0+0x110>
   1400035e2:	49 b9 cd cc cc cc cc 	movabs $0xcccccccccccccccd,%r9
   1400035e9:	cc cc cc 
   1400035ec:	45 89 e2             	mov    %r12d,%r10d
   1400035ef:	4d 89 e8             	mov    %r13,%r8
   1400035f2:	49 bb 03 00 00 00 00 	movabs $0x8000000000000003,%r11
   1400035f9:	00 00 80 
   1400035fc:	41 81 e2 00 10 00 00 	and    $0x1000,%r10d
   140003603:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140003608:	48 89 c8             	mov    %rcx,%rax
   14000360b:	49 8d 78 01          	lea    0x1(%r8),%rdi
   14000360f:	49 f7 e1             	mul    %r9
   140003612:	48 89 c8             	mov    %rcx,%rax
   140003615:	48 c1 ea 03          	shr    $0x3,%rdx
   140003619:	4c 8d 3c 92          	lea    (%rdx,%rdx,4),%r15
   14000361d:	4d 01 ff             	add    %r15,%r15
   140003620:	4c 29 f8             	sub    %r15,%rax
   140003623:	83 c0 30             	add    $0x30,%eax
   140003626:	41 88 00             	mov    %al,(%r8)
   140003629:	48 83 f9 09          	cmp    $0x9,%rcx
   14000362d:	76 41                	jbe    140003670 <__pformat_int.isra.0+0x110>
   14000362f:	49 39 fd             	cmp    %rdi,%r13
   140003632:	74 2c                	je     140003660 <__pformat_int.isra.0+0x100>
   140003634:	45 85 d2             	test   %r10d,%r10d
   140003637:	74 27                	je     140003660 <__pformat_int.isra.0+0x100>
   140003639:	66 83 7b 20 00       	cmpw   $0x0,0x20(%rbx)
   14000363e:	74 20                	je     140003660 <__pformat_int.isra.0+0x100>
   140003640:	48 89 f8             	mov    %rdi,%rax
   140003643:	4c 29 e8             	sub    %r13,%rax
   140003646:	4c 21 d8             	and    %r11,%rax
   140003649:	48 83 f8 03          	cmp    $0x3,%rax
   14000364d:	75 11                	jne    140003660 <__pformat_int.isra.0+0x100>
   14000364f:	c6 07 2c             	movb   $0x2c,(%rdi)
   140003652:	49 8d 78 02          	lea    0x2(%r8),%rdi
   140003656:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000365d:	00 00 00 
   140003660:	48 89 d1             	mov    %rdx,%rcx
   140003663:	49 89 f8             	mov    %rdi,%r8
   140003666:	eb a0                	jmp    140003608 <__pformat_int.isra.0+0xa8>
   140003668:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000366f:	00 
   140003670:	45 85 f6             	test   %r14d,%r14d
   140003673:	7e 2b                	jle    1400036a0 <__pformat_int.isra.0+0x140>
   140003675:	48 89 f8             	mov    %rdi,%rax
   140003678:	45 89 f0             	mov    %r14d,%r8d
   14000367b:	4c 29 e8             	sub    %r13,%rax
   14000367e:	41 29 c0             	sub    %eax,%r8d
   140003681:	45 85 c0             	test   %r8d,%r8d
   140003684:	0f 8e 96 01 00 00    	jle    140003820 <__pformat_int.isra.0+0x2c0>
   14000368a:	4d 63 f8             	movslq %r8d,%r15
   14000368d:	48 89 f9             	mov    %rdi,%rcx
   140003690:	ba 30 00 00 00       	mov    $0x30,%edx
   140003695:	4d 89 f8             	mov    %r15,%r8
   140003698:	4c 01 ff             	add    %r15,%rdi
   14000369b:	e8 20 4a 00 00       	call   1400080c0 <memset>
   1400036a0:	49 39 fd             	cmp    %rdi,%r13
   1400036a3:	75 0c                	jne    1400036b1 <__pformat_int.isra.0+0x151>
   1400036a5:	48 89 f8             	mov    %rdi,%rax
   1400036a8:	45 85 f6             	test   %r14d,%r14d
   1400036ab:	0f 85 7b 01 00 00    	jne    14000382c <__pformat_int.isra.0+0x2cc>
   1400036b1:	85 f6                	test   %esi,%esi
   1400036b3:	7e 3b                	jle    1400036f0 <__pformat_int.isra.0+0x190>
   1400036b5:	48 89 f8             	mov    %rdi,%rax
   1400036b8:	4c 29 e8             	sub    %r13,%rax
   1400036bb:	29 c6                	sub    %eax,%esi
   1400036bd:	89 73 0c             	mov    %esi,0xc(%rbx)
   1400036c0:	85 f6                	test   %esi,%esi
   1400036c2:	7e 2c                	jle    1400036f0 <__pformat_int.isra.0+0x190>
   1400036c4:	41 f7 c4 c0 01 00 00 	test   $0x1c0,%r12d
   1400036cb:	0f 85 7f 01 00 00    	jne    140003850 <__pformat_int.isra.0+0x2f0>
   1400036d1:	45 85 f6             	test   %r14d,%r14d
   1400036d4:	0f 88 85 01 00 00    	js     14000385f <__pformat_int.isra.0+0x2ff>
   1400036da:	41 f7 c4 00 04 00 00 	test   $0x400,%r12d
   1400036e1:	0f 84 c1 01 00 00    	je     1400038a8 <__pformat_int.isra.0+0x348>
   1400036e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400036ee:	00 00 
   1400036f0:	41 f6 c4 80          	test   $0x80,%r12b
   1400036f4:	0f 84 d6 00 00 00    	je     1400037d0 <__pformat_int.isra.0+0x270>
   1400036fa:	c6 07 2d             	movb   $0x2d,(%rdi)
   1400036fd:	48 8d 77 01          	lea    0x1(%rdi),%rsi
   140003701:	49 39 f5             	cmp    %rsi,%r13
   140003704:	72 23                	jb     140003729 <__pformat_int.isra.0+0x1c9>
   140003706:	eb 58                	jmp    140003760 <__pformat_int.isra.0+0x200>
   140003708:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000370f:	00 
   140003710:	48 63 43 24          	movslq 0x24(%rbx),%rax
   140003714:	88 0c 02             	mov    %cl,(%rdx,%rax,1)
   140003717:	8b 43 24             	mov    0x24(%rbx),%eax
   14000371a:	83 c0 01             	add    $0x1,%eax
   14000371d:	89 43 24             	mov    %eax,0x24(%rbx)
   140003720:	49 39 f5             	cmp    %rsi,%r13
   140003723:	74 3b                	je     140003760 <__pformat_int.isra.0+0x200>
   140003725:	44 8b 63 08          	mov    0x8(%rbx),%r12d
   140003729:	48 83 ee 01          	sub    $0x1,%rsi
   14000372d:	41 f7 c4 00 40 00 00 	test   $0x4000,%r12d
   140003734:	75 08                	jne    14000373e <__pformat_int.isra.0+0x1de>
   140003736:	8b 43 24             	mov    0x24(%rbx),%eax
   140003739:	39 43 28             	cmp    %eax,0x28(%rbx)
   14000373c:	7e dc                	jle    14000371a <__pformat_int.isra.0+0x1ba>
   14000373e:	41 81 e4 00 20 00 00 	and    $0x2000,%r12d
   140003745:	0f be 0e             	movsbl (%rsi),%ecx
   140003748:	48 8b 13             	mov    (%rbx),%rdx
   14000374b:	74 c3                	je     140003710 <__pformat_int.isra.0+0x1b0>
   14000374d:	e8 3e 49 00 00       	call   140008090 <fputc>
   140003752:	8b 43 24             	mov    0x24(%rbx),%eax
   140003755:	83 c0 01             	add    $0x1,%eax
   140003758:	89 43 24             	mov    %eax,0x24(%rbx)
   14000375b:	49 39 f5             	cmp    %rsi,%r13
   14000375e:	75 c5                	jne    140003725 <__pformat_int.isra.0+0x1c5>
   140003760:	8b 43 0c             	mov    0xc(%rbx),%eax
   140003763:	eb 17                	jmp    14000377c <__pformat_int.isra.0+0x21c>
   140003765:	0f 1f 00             	nopl   (%rax)
   140003768:	48 63 43 24          	movslq 0x24(%rbx),%rax
   14000376c:	c6 04 02 20          	movb   $0x20,(%rdx,%rax,1)
   140003770:	8b 53 24             	mov    0x24(%rbx),%edx
   140003773:	8b 43 0c             	mov    0xc(%rbx),%eax
   140003776:	83 c2 01             	add    $0x1,%edx
   140003779:	89 53 24             	mov    %edx,0x24(%rbx)
   14000377c:	89 c2                	mov    %eax,%edx
   14000377e:	83 e8 01             	sub    $0x1,%eax
   140003781:	89 43 0c             	mov    %eax,0xc(%rbx)
   140003784:	85 d2                	test   %edx,%edx
   140003786:	7e 30                	jle    1400037b8 <__pformat_int.isra.0+0x258>
   140003788:	8b 4b 08             	mov    0x8(%rbx),%ecx
   14000378b:	f6 c5 40             	test   $0x40,%ch
   14000378e:	75 08                	jne    140003798 <__pformat_int.isra.0+0x238>
   140003790:	8b 53 24             	mov    0x24(%rbx),%edx
   140003793:	39 53 28             	cmp    %edx,0x28(%rbx)
   140003796:	7e de                	jle    140003776 <__pformat_int.isra.0+0x216>
   140003798:	48 8b 13             	mov    (%rbx),%rdx
   14000379b:	80 e5 20             	and    $0x20,%ch
   14000379e:	74 c8                	je     140003768 <__pformat_int.isra.0+0x208>
   1400037a0:	b9 20 00 00 00       	mov    $0x20,%ecx
   1400037a5:	e8 e6 48 00 00       	call   140008090 <fputc>
   1400037aa:	8b 53 24             	mov    0x24(%rbx),%edx
   1400037ad:	8b 43 0c             	mov    0xc(%rbx),%eax
   1400037b0:	eb c4                	jmp    140003776 <__pformat_int.isra.0+0x216>
   1400037b2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400037b8:	48 8d 65 08          	lea    0x8(%rbp),%rsp
   1400037bc:	5b                   	pop    %rbx
   1400037bd:	5e                   	pop    %rsi
   1400037be:	5f                   	pop    %rdi
   1400037bf:	41 5c                	pop    %r12
   1400037c1:	41 5d                	pop    %r13
   1400037c3:	41 5e                	pop    %r14
   1400037c5:	41 5f                	pop    %r15
   1400037c7:	5d                   	pop    %rbp
   1400037c8:	c3                   	ret
   1400037c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400037d0:	41 f7 c4 00 01 00 00 	test   $0x100,%r12d
   1400037d7:	74 27                	je     140003800 <__pformat_int.isra.0+0x2a0>
   1400037d9:	c6 07 2b             	movb   $0x2b,(%rdi)
   1400037dc:	48 8d 77 01          	lea    0x1(%rdi),%rsi
   1400037e0:	e9 1c ff ff ff       	jmp    140003701 <__pformat_int.isra.0+0x1a1>
   1400037e5:	0f 1f 00             	nopl   (%rax)
   1400037e8:	89 c2                	mov    %eax,%edx
   1400037ea:	41 b8 ab aa aa aa    	mov    $0xaaaaaaab,%r8d
   1400037f0:	49 0f af d0          	imul   %r8,%rdx
   1400037f4:	48 c1 ea 21          	shr    $0x21,%rdx
   1400037f8:	01 d0                	add    %edx,%eax
   1400037fa:	e9 a1 fd ff ff       	jmp    1400035a0 <__pformat_int.isra.0+0x40>
   1400037ff:	90                   	nop
   140003800:	48 89 fe             	mov    %rdi,%rsi
   140003803:	41 f6 c4 40          	test   $0x40,%r12b
   140003807:	0f 84 f4 fe ff ff    	je     140003701 <__pformat_int.isra.0+0x1a1>
   14000380d:	c6 07 20             	movb   $0x20,(%rdi)
   140003810:	48 83 c6 01          	add    $0x1,%rsi
   140003814:	e9 e8 fe ff ff       	jmp    140003701 <__pformat_int.isra.0+0x1a1>
   140003819:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140003820:	49 39 fd             	cmp    %rdi,%r13
   140003823:	0f 85 88 fe ff ff    	jne    1400036b1 <__pformat_int.isra.0+0x151>
   140003829:	4c 89 e8             	mov    %r13,%rax
   14000382c:	c6 00 30             	movb   $0x30,(%rax)
   14000382f:	48 8d 78 01          	lea    0x1(%rax),%rdi
   140003833:	e9 79 fe ff ff       	jmp    1400036b1 <__pformat_int.isra.0+0x151>
   140003838:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000383f:	00 
   140003840:	48 f7 d9             	neg    %rcx
   140003843:	e9 9a fd ff ff       	jmp    1400035e2 <__pformat_int.isra.0+0x82>
   140003848:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000384f:	00 
   140003850:	83 ee 01             	sub    $0x1,%esi
   140003853:	89 73 0c             	mov    %esi,0xc(%rbx)
   140003856:	45 85 f6             	test   %r14d,%r14d
   140003859:	0f 89 7b fe ff ff    	jns    1400036da <__pformat_int.isra.0+0x17a>
   14000385f:	44 89 e0             	mov    %r12d,%eax
   140003862:	25 00 06 00 00       	and    $0x600,%eax
   140003867:	3d 00 02 00 00       	cmp    $0x200,%eax
   14000386c:	0f 85 68 fe ff ff    	jne    1400036da <__pformat_int.isra.0+0x17a>
   140003872:	8b 43 0c             	mov    0xc(%rbx),%eax
   140003875:	8d 50 ff             	lea    -0x1(%rax),%edx
   140003878:	89 53 0c             	mov    %edx,0xc(%rbx)
   14000387b:	85 c0                	test   %eax,%eax
   14000387d:	0f 8e 6d fe ff ff    	jle    1400036f0 <__pformat_int.isra.0+0x190>
   140003883:	48 63 f0             	movslq %eax,%rsi
   140003886:	48 89 f9             	mov    %rdi,%rcx
   140003889:	ba 30 00 00 00       	mov    $0x30,%edx
   14000388e:	49 89 f0             	mov    %rsi,%r8
   140003891:	48 01 f7             	add    %rsi,%rdi
   140003894:	e8 27 48 00 00       	call   1400080c0 <memset>
   140003899:	c7 43 0c ff ff ff ff 	movl   $0xffffffff,0xc(%rbx)
   1400038a0:	e9 4b fe ff ff       	jmp    1400036f0 <__pformat_int.isra.0+0x190>
   1400038a5:	0f 1f 00             	nopl   (%rax)
   1400038a8:	8b 43 0c             	mov    0xc(%rbx),%eax
   1400038ab:	8d 50 ff             	lea    -0x1(%rax),%edx
   1400038ae:	89 53 0c             	mov    %edx,0xc(%rbx)
   1400038b1:	85 c0                	test   %eax,%eax
   1400038b3:	0f 8e 37 fe ff ff    	jle    1400036f0 <__pformat_int.isra.0+0x190>
   1400038b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400038c0:	48 89 da             	mov    %rbx,%rdx
   1400038c3:	b9 20 00 00 00       	mov    $0x20,%ecx
   1400038c8:	e8 b3 f3 ff ff       	call   140002c80 <__pformat_putc>
   1400038cd:	8b 43 0c             	mov    0xc(%rbx),%eax
   1400038d0:	8d 50 ff             	lea    -0x1(%rax),%edx
   1400038d3:	89 53 0c             	mov    %edx,0xc(%rbx)
   1400038d6:	85 c0                	test   %eax,%eax
   1400038d8:	7f e6                	jg     1400038c0 <__pformat_int.isra.0+0x360>
   1400038da:	44 8b 63 08          	mov    0x8(%rbx),%r12d
   1400038de:	e9 0d fe ff ff       	jmp    1400036f0 <__pformat_int.isra.0+0x190>
   1400038e3:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400038ea:	00 00 00 00 
   1400038ee:	66 90                	xchg   %ax,%ax

00000001400038f0 <__pformat_emit_radix_point>:
   1400038f0:	55                   	push   %rbp
   1400038f1:	41 54                	push   %r12
   1400038f3:	57                   	push   %rdi
   1400038f4:	56                   	push   %rsi
   1400038f5:	53                   	push   %rbx
   1400038f6:	48 83 ec 30          	sub    $0x30,%rsp
   1400038fa:	48 8d 6c 24 30       	lea    0x30(%rsp),%rbp
   1400038ff:	83 79 14 fd          	cmpl   $0xfffffffd,0x14(%rcx)
   140003903:	48 89 cb             	mov    %rcx,%rbx
   140003906:	0f 84 d4 00 00 00    	je     1400039e0 <__pformat_emit_radix_point+0xf0>
   14000390c:	0f b7 51 18          	movzwl 0x18(%rcx),%edx
   140003910:	66 85 d2             	test   %dx,%dx
   140003913:	0f 84 a7 00 00 00    	je     1400039c0 <__pformat_emit_radix_point+0xd0>
   140003919:	48 63 43 14          	movslq 0x14(%rbx),%rax
   14000391d:	48 89 e7             	mov    %rsp,%rdi
   140003920:	48 83 c0 0f          	add    $0xf,%rax
   140003924:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
   140003928:	e8 73 f1 ff ff       	call   140002aa0 <___chkstk_ms>
   14000392d:	48 29 c4             	sub    %rax,%rsp
   140003930:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
   140003937:	00 
   140003938:	4c 8d 45 f8          	lea    -0x8(%rbp),%r8
   14000393c:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
   140003941:	48 89 f1             	mov    %rsi,%rcx
   140003944:	e8 37 42 00 00       	call   140007b80 <wcrtomb>
   140003949:	85 c0                	test   %eax,%eax
   14000394b:	0f 8e cf 00 00 00    	jle    140003a20 <__pformat_emit_radix_point+0x130>
   140003951:	83 e8 01             	sub    $0x1,%eax
   140003954:	4c 8d 64 06 01       	lea    0x1(%rsi,%rax,1),%r12
   140003959:	eb 1a                	jmp    140003975 <__pformat_emit_radix_point+0x85>
   14000395b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140003960:	48 63 53 24          	movslq 0x24(%rbx),%rdx
   140003964:	88 0c 10             	mov    %cl,(%rax,%rdx,1)
   140003967:	8b 43 24             	mov    0x24(%rbx),%eax
   14000396a:	83 c0 01             	add    $0x1,%eax
   14000396d:	89 43 24             	mov    %eax,0x24(%rbx)
   140003970:	49 39 f4             	cmp    %rsi,%r12
   140003973:	74 36                	je     1400039ab <__pformat_emit_radix_point+0xbb>
   140003975:	8b 53 08             	mov    0x8(%rbx),%edx
   140003978:	48 83 c6 01          	add    $0x1,%rsi
   14000397c:	f6 c6 40             	test   $0x40,%dh
   14000397f:	75 08                	jne    140003989 <__pformat_emit_radix_point+0x99>
   140003981:	8b 43 24             	mov    0x24(%rbx),%eax
   140003984:	39 43 28             	cmp    %eax,0x28(%rbx)
   140003987:	7e e1                	jle    14000396a <__pformat_emit_radix_point+0x7a>
   140003989:	0f be 4e ff          	movsbl -0x1(%rsi),%ecx
   14000398d:	48 8b 03             	mov    (%rbx),%rax
   140003990:	80 e6 20             	and    $0x20,%dh
   140003993:	74 cb                	je     140003960 <__pformat_emit_radix_point+0x70>
   140003995:	48 89 c2             	mov    %rax,%rdx
   140003998:	e8 f3 46 00 00       	call   140008090 <fputc>
   14000399d:	8b 43 24             	mov    0x24(%rbx),%eax
   1400039a0:	83 c0 01             	add    $0x1,%eax
   1400039a3:	89 43 24             	mov    %eax,0x24(%rbx)
   1400039a6:	49 39 f4             	cmp    %rsi,%r12
   1400039a9:	75 ca                	jne    140003975 <__pformat_emit_radix_point+0x85>
   1400039ab:	48 89 fc             	mov    %rdi,%rsp
   1400039ae:	48 89 ec             	mov    %rbp,%rsp
   1400039b1:	5b                   	pop    %rbx
   1400039b2:	5e                   	pop    %rsi
   1400039b3:	5f                   	pop    %rdi
   1400039b4:	41 5c                	pop    %r12
   1400039b6:	5d                   	pop    %rbp
   1400039b7:	c3                   	ret
   1400039b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400039bf:	00 
   1400039c0:	48 89 da             	mov    %rbx,%rdx
   1400039c3:	b9 2e 00 00 00       	mov    $0x2e,%ecx
   1400039c8:	e8 b3 f2 ff ff       	call   140002c80 <__pformat_putc>
   1400039cd:	90                   	nop
   1400039ce:	48 89 ec             	mov    %rbp,%rsp
   1400039d1:	5b                   	pop    %rbx
   1400039d2:	5e                   	pop    %rsi
   1400039d3:	5f                   	pop    %rdi
   1400039d4:	41 5c                	pop    %r12
   1400039d6:	5d                   	pop    %rbp
   1400039d7:	c3                   	ret
   1400039d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400039df:	00 
   1400039e0:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
   1400039e7:	00 
   1400039e8:	48 8d 75 f8          	lea    -0x8(%rbp),%rsi
   1400039ec:	e8 b7 46 00 00       	call   1400080a8 <localeconv>
   1400039f1:	48 8d 4d f6          	lea    -0xa(%rbp),%rcx
   1400039f5:	49 89 f1             	mov    %rsi,%r9
   1400039f8:	41 b8 10 00 00 00    	mov    $0x10,%r8d
   1400039fe:	48 8b 10             	mov    (%rax),%rdx
   140003a01:	e8 1a 44 00 00       	call   140007e20 <mbrtowc>
   140003a06:	85 c0                	test   %eax,%eax
   140003a08:	7e 2e                	jle    140003a38 <__pformat_emit_radix_point+0x148>
   140003a0a:	0f b7 55 f6          	movzwl -0xa(%rbp),%edx
   140003a0e:	66 89 53 18          	mov    %dx,0x18(%rbx)
   140003a12:	89 43 14             	mov    %eax,0x14(%rbx)
   140003a15:	e9 f6 fe ff ff       	jmp    140003910 <__pformat_emit_radix_point+0x20>
   140003a1a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140003a20:	48 89 da             	mov    %rbx,%rdx
   140003a23:	b9 2e 00 00 00       	mov    $0x2e,%ecx
   140003a28:	e8 53 f2 ff ff       	call   140002c80 <__pformat_putc>
   140003a2d:	48 89 fc             	mov    %rdi,%rsp
   140003a30:	e9 79 ff ff ff       	jmp    1400039ae <__pformat_emit_radix_point+0xbe>
   140003a35:	0f 1f 00             	nopl   (%rax)
   140003a38:	0f b7 53 18          	movzwl 0x18(%rbx),%edx
   140003a3c:	eb d4                	jmp    140003a12 <__pformat_emit_radix_point+0x122>
   140003a3e:	66 90                	xchg   %ax,%ax

0000000140003a40 <__pformat_emit_float>:
   140003a40:	55                   	push   %rbp
   140003a41:	57                   	push   %rdi
   140003a42:	56                   	push   %rsi
   140003a43:	53                   	push   %rbx
   140003a44:	48 83 ec 28          	sub    $0x28,%rsp
   140003a48:	89 cd                	mov    %ecx,%ebp
   140003a4a:	48 89 d7             	mov    %rdx,%rdi
   140003a4d:	41 8b 49 0c          	mov    0xc(%r9),%ecx
   140003a51:	44 89 c6             	mov    %r8d,%esi
   140003a54:	4c 89 cb             	mov    %r9,%rbx
   140003a57:	45 85 c0             	test   %r8d,%r8d
   140003a5a:	0f 8e 30 01 00 00    	jle    140003b90 <__pformat_emit_float+0x150>
   140003a60:	41 39 c8             	cmp    %ecx,%r8d
   140003a63:	7f 63                	jg     140003ac8 <__pformat_emit_float+0x88>
   140003a65:	41 8b 41 10          	mov    0x10(%r9),%eax
   140003a69:	44 29 c1             	sub    %r8d,%ecx
   140003a6c:	39 c1                	cmp    %eax,%ecx
   140003a6e:	0f 8e 3c 03 00 00    	jle    140003db0 <__pformat_emit_float+0x370>
   140003a74:	29 c1                	sub    %eax,%ecx
   140003a76:	89 4b 0c             	mov    %ecx,0xc(%rbx)
   140003a79:	85 c0                	test   %eax,%eax
   140003a7b:	0f 8e 47 02 00 00    	jle    140003cc8 <__pformat_emit_float+0x288>
   140003a81:	83 e9 01             	sub    $0x1,%ecx
   140003a84:	89 4b 0c             	mov    %ecx,0xc(%rbx)
   140003a87:	85 f6                	test   %esi,%esi
   140003a89:	7e 0a                	jle    140003a95 <__pformat_emit_float+0x55>
   140003a8b:	f6 43 09 10          	testb  $0x10,0x9(%rbx)
   140003a8f:	0f 85 50 02 00 00    	jne    140003ce5 <__pformat_emit_float+0x2a5>
   140003a95:	85 c9                	test   %ecx,%ecx
   140003a97:	7e 42                	jle    140003adb <__pformat_emit_float+0x9b>
   140003a99:	85 ed                	test   %ebp,%ebp
   140003a9b:	0f 85 c7 01 00 00    	jne    140003c68 <__pformat_emit_float+0x228>
   140003aa1:	8b 43 08             	mov    0x8(%rbx),%eax
   140003aa4:	a9 c0 01 00 00       	test   $0x1c0,%eax
   140003aa9:	0f 84 e9 02 00 00    	je     140003d98 <__pformat_emit_float+0x358>
   140003aaf:	8d 51 ff             	lea    -0x1(%rcx),%edx
   140003ab2:	89 53 0c             	mov    %edx,0xc(%rbx)
   140003ab5:	85 d2                	test   %edx,%edx
   140003ab7:	74 2d                	je     140003ae6 <__pformat_emit_float+0xa6>
   140003ab9:	f6 c4 06             	test   $0x6,%ah
   140003abc:	75 28                	jne    140003ae6 <__pformat_emit_float+0xa6>
   140003abe:	e9 c0 01 00 00       	jmp    140003c83 <__pformat_emit_float+0x243>
   140003ac3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140003ac8:	41 c7 41 0c ff ff ff 	movl   $0xffffffff,0xc(%r9)
   140003acf:	ff 
   140003ad0:	41 f6 41 09 10       	testb  $0x10,0x9(%r9)
   140003ad5:	0f 85 65 02 00 00    	jne    140003d40 <__pformat_emit_float+0x300>
   140003adb:	85 ed                	test   %ebp,%ebp
   140003add:	0f 85 dd 00 00 00    	jne    140003bc0 <__pformat_emit_float+0x180>
   140003ae3:	8b 43 08             	mov    0x8(%rbx),%eax
   140003ae6:	f6 c4 01             	test   $0x1,%ah
   140003ae9:	0f 85 09 02 00 00    	jne    140003cf8 <__pformat_emit_float+0x2b8>
   140003aef:	a8 40                	test   $0x40,%al
   140003af1:	0f 85 f9 02 00 00    	jne    140003df0 <__pformat_emit_float+0x3b0>
   140003af7:	8b 43 0c             	mov    0xc(%rbx),%eax
   140003afa:	85 c0                	test   %eax,%eax
   140003afc:	7e 15                	jle    140003b13 <__pformat_emit_float+0xd3>
   140003afe:	8b 53 08             	mov    0x8(%rbx),%edx
   140003b01:	81 e2 00 06 00 00    	and    $0x600,%edx
   140003b07:	81 fa 00 02 00 00    	cmp    $0x200,%edx
   140003b0d:	0f 84 fd 01 00 00    	je     140003d10 <__pformat_emit_float+0x2d0>
   140003b13:	85 f6                	test   %esi,%esi
   140003b15:	0f 8e 05 01 00 00    	jle    140003c20 <__pformat_emit_float+0x1e0>
   140003b1b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140003b20:	0f b6 07             	movzbl (%rdi),%eax
   140003b23:	b9 30 00 00 00       	mov    $0x30,%ecx
   140003b28:	84 c0                	test   %al,%al
   140003b2a:	74 07                	je     140003b33 <__pformat_emit_float+0xf3>
   140003b2c:	48 83 c7 01          	add    $0x1,%rdi
   140003b30:	0f be c8             	movsbl %al,%ecx
   140003b33:	48 89 da             	mov    %rbx,%rdx
   140003b36:	e8 45 f1 ff ff       	call   140002c80 <__pformat_putc>
   140003b3b:	83 ee 01             	sub    $0x1,%esi
   140003b3e:	74 30                	je     140003b70 <__pformat_emit_float+0x130>
   140003b40:	f6 43 09 10          	testb  $0x10,0x9(%rbx)
   140003b44:	74 da                	je     140003b20 <__pformat_emit_float+0xe0>
   140003b46:	66 83 7b 20 00       	cmpw   $0x0,0x20(%rbx)
   140003b4b:	74 d3                	je     140003b20 <__pformat_emit_float+0xe0>
   140003b4d:	69 c6 ab aa aa aa    	imul   $0xaaaaaaab,%esi,%eax
   140003b53:	3d 55 55 55 55       	cmp    $0x55555555,%eax
   140003b58:	77 c6                	ja     140003b20 <__pformat_emit_float+0xe0>
   140003b5a:	48 8d 4b 20          	lea    0x20(%rbx),%rcx
   140003b5e:	49 89 d8             	mov    %rbx,%r8
   140003b61:	ba 01 00 00 00       	mov    $0x1,%edx
   140003b66:	e8 75 f1 ff ff       	call   140002ce0 <__pformat_wputchars>
   140003b6b:	eb b3                	jmp    140003b20 <__pformat_emit_float+0xe0>
   140003b6d:	0f 1f 00             	nopl   (%rax)
   140003b70:	8b 43 10             	mov    0x10(%rbx),%eax
   140003b73:	85 c0                	test   %eax,%eax
   140003b75:	7f 61                	jg     140003bd8 <__pformat_emit_float+0x198>
   140003b77:	f6 43 09 08          	testb  $0x8,0x9(%rbx)
   140003b7b:	0f 85 b7 00 00 00    	jne    140003c38 <__pformat_emit_float+0x1f8>
   140003b81:	83 e8 01             	sub    $0x1,%eax
   140003b84:	89 43 10             	mov    %eax,0x10(%rbx)
   140003b87:	48 83 c4 28          	add    $0x28,%rsp
   140003b8b:	5b                   	pop    %rbx
   140003b8c:	5e                   	pop    %rsi
   140003b8d:	5f                   	pop    %rdi
   140003b8e:	5d                   	pop    %rbp
   140003b8f:	c3                   	ret
   140003b90:	85 c9                	test   %ecx,%ecx
   140003b92:	0f 8e 18 01 00 00    	jle    140003cb0 <__pformat_emit_float+0x270>
   140003b98:	41 8b 41 10          	mov    0x10(%r9),%eax
   140003b9c:	83 e9 01             	sub    $0x1,%ecx
   140003b9f:	39 c1                	cmp    %eax,%ecx
   140003ba1:	0f 8f cd fe ff ff    	jg     140003a74 <__pformat_emit_float+0x34>
   140003ba7:	c7 43 0c ff ff ff ff 	movl   $0xffffffff,0xc(%rbx)
   140003bae:	85 ed                	test   %ebp,%ebp
   140003bb0:	0f 84 2d ff ff ff    	je     140003ae3 <__pformat_emit_float+0xa3>
   140003bb6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140003bbd:	00 00 00 
   140003bc0:	48 89 da             	mov    %rbx,%rdx
   140003bc3:	b9 2d 00 00 00       	mov    $0x2d,%ecx
   140003bc8:	e8 b3 f0 ff ff       	call   140002c80 <__pformat_putc>
   140003bcd:	e9 25 ff ff ff       	jmp    140003af7 <__pformat_emit_float+0xb7>
   140003bd2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140003bd8:	48 89 d9             	mov    %rbx,%rcx
   140003bdb:	e8 10 fd ff ff       	call   1400038f0 <__pformat_emit_radix_point>
   140003be0:	eb 21                	jmp    140003c03 <__pformat_emit_float+0x1c3>
   140003be2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140003be8:	0f b6 07             	movzbl (%rdi),%eax
   140003beb:	b9 30 00 00 00       	mov    $0x30,%ecx
   140003bf0:	84 c0                	test   %al,%al
   140003bf2:	74 07                	je     140003bfb <__pformat_emit_float+0x1bb>
   140003bf4:	48 83 c7 01          	add    $0x1,%rdi
   140003bf8:	0f be c8             	movsbl %al,%ecx
   140003bfb:	48 89 da             	mov    %rbx,%rdx
   140003bfe:	e8 7d f0 ff ff       	call   140002c80 <__pformat_putc>
   140003c03:	8b 43 10             	mov    0x10(%rbx),%eax
   140003c06:	8d 50 ff             	lea    -0x1(%rax),%edx
   140003c09:	89 53 10             	mov    %edx,0x10(%rbx)
   140003c0c:	85 c0                	test   %eax,%eax
   140003c0e:	7f d8                	jg     140003be8 <__pformat_emit_float+0x1a8>
   140003c10:	48 83 c4 28          	add    $0x28,%rsp
   140003c14:	5b                   	pop    %rbx
   140003c15:	5e                   	pop    %rsi
   140003c16:	5f                   	pop    %rdi
   140003c17:	5d                   	pop    %rbp
   140003c18:	c3                   	ret
   140003c19:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140003c20:	48 89 da             	mov    %rbx,%rdx
   140003c23:	b9 30 00 00 00       	mov    $0x30,%ecx
   140003c28:	e8 53 f0 ff ff       	call   140002c80 <__pformat_putc>
   140003c2d:	8b 43 10             	mov    0x10(%rbx),%eax
   140003c30:	85 c0                	test   %eax,%eax
   140003c32:	0f 8e ca 01 00 00    	jle    140003e02 <__pformat_emit_float+0x3c2>
   140003c38:	48 89 d9             	mov    %rbx,%rcx
   140003c3b:	e8 b0 fc ff ff       	call   1400038f0 <__pformat_emit_radix_point>
   140003c40:	85 f6                	test   %esi,%esi
   140003c42:	74 bf                	je     140003c03 <__pformat_emit_float+0x1c3>
   140003c44:	8b 43 10             	mov    0x10(%rbx),%eax
   140003c47:	01 f0                	add    %esi,%eax
   140003c49:	89 43 10             	mov    %eax,0x10(%rbx)
   140003c4c:	0f 1f 40 00          	nopl   0x0(%rax)
   140003c50:	48 89 da             	mov    %rbx,%rdx
   140003c53:	b9 30 00 00 00       	mov    $0x30,%ecx
   140003c58:	e8 23 f0 ff ff       	call   140002c80 <__pformat_putc>
   140003c5d:	83 c6 01             	add    $0x1,%esi
   140003c60:	75 ee                	jne    140003c50 <__pformat_emit_float+0x210>
   140003c62:	eb 9f                	jmp    140003c03 <__pformat_emit_float+0x1c3>
   140003c64:	0f 1f 40 00          	nopl   0x0(%rax)
   140003c68:	8d 41 ff             	lea    -0x1(%rcx),%eax
   140003c6b:	89 43 0c             	mov    %eax,0xc(%rbx)
   140003c6e:	85 c0                	test   %eax,%eax
   140003c70:	0f 84 4a ff ff ff    	je     140003bc0 <__pformat_emit_float+0x180>
   140003c76:	f7 43 08 00 06 00 00 	testl  $0x600,0x8(%rbx)
   140003c7d:	0f 85 3d ff ff ff    	jne    140003bc0 <__pformat_emit_float+0x180>
   140003c83:	83 e9 02             	sub    $0x2,%ecx
   140003c86:	89 4b 0c             	mov    %ecx,0xc(%rbx)
   140003c89:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140003c90:	48 89 da             	mov    %rbx,%rdx
   140003c93:	b9 20 00 00 00       	mov    $0x20,%ecx
   140003c98:	e8 e3 ef ff ff       	call   140002c80 <__pformat_putc>
   140003c9d:	8b 43 0c             	mov    0xc(%rbx),%eax
   140003ca0:	8d 50 ff             	lea    -0x1(%rax),%edx
   140003ca3:	89 53 0c             	mov    %edx,0xc(%rbx)
   140003ca6:	85 c0                	test   %eax,%eax
   140003ca8:	7f e6                	jg     140003c90 <__pformat_emit_float+0x250>
   140003caa:	e9 2c fe ff ff       	jmp    140003adb <__pformat_emit_float+0x9b>
   140003caf:	90                   	nop
   140003cb0:	0f 85 f1 fe ff ff    	jne    140003ba7 <__pformat_emit_float+0x167>
   140003cb6:	41 8b 49 10          	mov    0x10(%r9),%ecx
   140003cba:	85 c9                	test   %ecx,%ecx
   140003cbc:	0f 89 e5 fe ff ff    	jns    140003ba7 <__pformat_emit_float+0x167>
   140003cc2:	f7 d9                	neg    %ecx
   140003cc4:	41 89 49 0c          	mov    %ecx,0xc(%r9)
   140003cc8:	8b 43 08             	mov    0x8(%rbx),%eax
   140003ccb:	f6 c4 08             	test   $0x8,%ah
   140003cce:	0f 85 ad fd ff ff    	jne    140003a81 <__pformat_emit_float+0x41>
   140003cd4:	85 f6                	test   %esi,%esi
   140003cd6:	0f 8e bd fd ff ff    	jle    140003a99 <__pformat_emit_float+0x59>
   140003cdc:	f6 c4 10             	test   $0x10,%ah
   140003cdf:	0f 84 b4 fd ff ff    	je     140003a99 <__pformat_emit_float+0x59>
   140003ce5:	66 83 7b 20 00       	cmpw   $0x0,0x20(%rbx)
   140003cea:	0f 84 a5 fd ff ff    	je     140003a95 <__pformat_emit_float+0x55>
   140003cf0:	e9 dd 00 00 00       	jmp    140003dd2 <__pformat_emit_float+0x392>
   140003cf5:	0f 1f 00             	nopl   (%rax)
   140003cf8:	48 89 da             	mov    %rbx,%rdx
   140003cfb:	b9 2b 00 00 00       	mov    $0x2b,%ecx
   140003d00:	e8 7b ef ff ff       	call   140002c80 <__pformat_putc>
   140003d05:	e9 ed fd ff ff       	jmp    140003af7 <__pformat_emit_float+0xb7>
   140003d0a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140003d10:	83 e8 01             	sub    $0x1,%eax
   140003d13:	89 43 0c             	mov    %eax,0xc(%rbx)
   140003d16:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140003d1d:	00 00 00 
   140003d20:	48 89 da             	mov    %rbx,%rdx
   140003d23:	b9 30 00 00 00       	mov    $0x30,%ecx
   140003d28:	e8 53 ef ff ff       	call   140002c80 <__pformat_putc>
   140003d2d:	8b 43 0c             	mov    0xc(%rbx),%eax
   140003d30:	8d 50 ff             	lea    -0x1(%rax),%edx
   140003d33:	89 53 0c             	mov    %edx,0xc(%rbx)
   140003d36:	85 c0                	test   %eax,%eax
   140003d38:	7f e6                	jg     140003d20 <__pformat_emit_float+0x2e0>
   140003d3a:	e9 d4 fd ff ff       	jmp    140003b13 <__pformat_emit_float+0xd3>
   140003d3f:	90                   	nop
   140003d40:	66 41 83 79 20 00    	cmpw   $0x0,0x20(%r9)
   140003d46:	0f 84 8f fd ff ff    	je     140003adb <__pformat_emit_float+0x9b>
   140003d4c:	41 8d 40 02          	lea    0x2(%r8),%eax
   140003d50:	ba ab aa aa aa       	mov    $0xaaaaaaab,%edx
   140003d55:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
   140003d5a:	48 0f af c2          	imul   %rdx,%rax
   140003d5e:	48 c1 e8 21          	shr    $0x21,%rax
   140003d62:	83 f8 01             	cmp    $0x1,%eax
   140003d65:	0f 84 70 fd ff ff    	je     140003adb <__pformat_emit_float+0x9b>
   140003d6b:	83 e8 01             	sub    $0x1,%eax
   140003d6e:	29 c8                	sub    %ecx,%eax
   140003d70:	eb 16                	jmp    140003d88 <__pformat_emit_float+0x348>
   140003d72:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140003d78:	83 e9 01             	sub    $0x1,%ecx
   140003d7b:	89 c2                	mov    %eax,%edx
   140003d7d:	01 ca                	add    %ecx,%edx
   140003d7f:	89 4b 0c             	mov    %ecx,0xc(%rbx)
   140003d82:	0f 84 0d fd ff ff    	je     140003a95 <__pformat_emit_float+0x55>
   140003d88:	85 c9                	test   %ecx,%ecx
   140003d8a:	7f ec                	jg     140003d78 <__pformat_emit_float+0x338>
   140003d8c:	e9 4a fd ff ff       	jmp    140003adb <__pformat_emit_float+0x9b>
   140003d91:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140003d98:	83 e9 01             	sub    $0x1,%ecx
   140003d9b:	f6 c4 06             	test   $0x6,%ah
   140003d9e:	0f 84 e2 fe ff ff    	je     140003c86 <__pformat_emit_float+0x246>
   140003da4:	e9 3d fd ff ff       	jmp    140003ae6 <__pformat_emit_float+0xa6>
   140003da9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140003db0:	41 c7 41 0c ff ff ff 	movl   $0xffffffff,0xc(%r9)
   140003db7:	ff 
   140003db8:	41 f6 41 09 10       	testb  $0x10,0x9(%r9)
   140003dbd:	0f 84 18 fd ff ff    	je     140003adb <__pformat_emit_float+0x9b>
   140003dc3:	66 41 83 79 20 00    	cmpw   $0x0,0x20(%r9)
   140003dc9:	0f 84 0c fd ff ff    	je     140003adb <__pformat_emit_float+0x9b>
   140003dcf:	83 c9 ff             	or     $0xffffffff,%ecx
   140003dd2:	8d 46 02             	lea    0x2(%rsi),%eax
   140003dd5:	41 b8 03 00 00 00    	mov    $0x3,%r8d
   140003ddb:	99                   	cltd
   140003ddc:	41 f7 f8             	idiv   %r8d
   140003ddf:	83 f8 01             	cmp    $0x1,%eax
   140003de2:	75 87                	jne    140003d6b <__pformat_emit_float+0x32b>
   140003de4:	e9 ac fc ff ff       	jmp    140003a95 <__pformat_emit_float+0x55>
   140003de9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140003df0:	48 89 da             	mov    %rbx,%rdx
   140003df3:	b9 20 00 00 00       	mov    $0x20,%ecx
   140003df8:	e8 83 ee ff ff       	call   140002c80 <__pformat_putc>
   140003dfd:	e9 f5 fc ff ff       	jmp    140003af7 <__pformat_emit_float+0xb7>
   140003e02:	f6 43 09 08          	testb  $0x8,0x9(%rbx)
   140003e06:	0f 85 2c fe ff ff    	jne    140003c38 <__pformat_emit_float+0x1f8>
   140003e0c:	85 f6                	test   %esi,%esi
   140003e0e:	0f 85 33 fe ff ff    	jne    140003c47 <__pformat_emit_float+0x207>
   140003e14:	e9 68 fd ff ff       	jmp    140003b81 <__pformat_emit_float+0x141>
   140003e19:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140003e20 <__pformat_emit_efloat>:
   140003e20:	57                   	push   %rdi
   140003e21:	56                   	push   %rsi
   140003e22:	53                   	push   %rbx
   140003e23:	48 83 ec 20          	sub    $0x20,%rsp
   140003e27:	41 ba 01 00 00 00    	mov    $0x1,%r10d
   140003e2d:	41 83 e8 01          	sub    $0x1,%r8d
   140003e31:	41 89 cb             	mov    %ecx,%r11d
   140003e34:	4c 89 cb             	mov    %r9,%rbx
   140003e37:	49 63 f0             	movslq %r8d,%rsi
   140003e3a:	41 c1 f8 1f          	sar    $0x1f,%r8d
   140003e3e:	48 69 ce 67 66 66 66 	imul   $0x66666667,%rsi,%rcx
   140003e45:	48 c1 f9 22          	sar    $0x22,%rcx
   140003e49:	44 29 c1             	sub    %r8d,%ecx
   140003e4c:	74 1d                	je     140003e6b <__pformat_emit_efloat+0x4b>
   140003e4e:	66 90                	xchg   %ax,%ax
   140003e50:	48 63 c1             	movslq %ecx,%rax
   140003e53:	c1 f9 1f             	sar    $0x1f,%ecx
   140003e56:	41 83 c2 01          	add    $0x1,%r10d
   140003e5a:	48 69 c0 67 66 66 66 	imul   $0x66666667,%rax,%rax
   140003e61:	48 c1 f8 22          	sar    $0x22,%rax
   140003e65:	29 c8                	sub    %ecx,%eax
   140003e67:	89 c1                	mov    %eax,%ecx
   140003e69:	75 e5                	jne    140003e50 <__pformat_emit_efloat+0x30>
   140003e6b:	8b 43 2c             	mov    0x2c(%rbx),%eax
   140003e6e:	83 f8 ff             	cmp    $0xffffffff,%eax
   140003e71:	75 0c                	jne    140003e7f <__pformat_emit_efloat+0x5f>
   140003e73:	c7 43 2c 02 00 00 00 	movl   $0x2,0x2c(%rbx)
   140003e7a:	b8 02 00 00 00       	mov    $0x2,%eax
   140003e7f:	44 39 d0             	cmp    %r10d,%eax
   140003e82:	44 89 d7             	mov    %r10d,%edi
   140003e85:	44 8b 43 0c          	mov    0xc(%rbx),%r8d
   140003e89:	49 89 d9             	mov    %rbx,%r9
   140003e8c:	0f 4d f8             	cmovge %eax,%edi
   140003e8f:	44 89 c0             	mov    %r8d,%eax
   140003e92:	8d 4f 02             	lea    0x2(%rdi),%ecx
   140003e95:	29 c8                	sub    %ecx,%eax
   140003e97:	41 39 c8             	cmp    %ecx,%r8d
   140003e9a:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
   140003e9f:	41 b8 01 00 00 00    	mov    $0x1,%r8d
   140003ea5:	0f 4e c1             	cmovle %ecx,%eax
   140003ea8:	44 89 d9             	mov    %r11d,%ecx
   140003eab:	89 43 0c             	mov    %eax,0xc(%rbx)
   140003eae:	e8 8d fb ff ff       	call   140003a40 <__pformat_emit_float>
   140003eb3:	8b 4b 08             	mov    0x8(%rbx),%ecx
   140003eb6:	8b 43 2c             	mov    0x2c(%rbx),%eax
   140003eb9:	48 89 da             	mov    %rbx,%rdx
   140003ebc:	89 43 10             	mov    %eax,0x10(%rbx)
   140003ebf:	89 c8                	mov    %ecx,%eax
   140003ec1:	83 e1 20             	and    $0x20,%ecx
   140003ec4:	0d c0 01 00 00       	or     $0x1c0,%eax
   140003ec9:	83 c9 45             	or     $0x45,%ecx
   140003ecc:	89 43 08             	mov    %eax,0x8(%rbx)
   140003ecf:	e8 ac ed ff ff       	call   140002c80 <__pformat_putc>
   140003ed4:	8d 47 01             	lea    0x1(%rdi),%eax
   140003ed7:	01 43 0c             	add    %eax,0xc(%rbx)
   140003eda:	48 89 da             	mov    %rbx,%rdx
   140003edd:	48 89 f1             	mov    %rsi,%rcx
   140003ee0:	48 83 c4 20          	add    $0x20,%rsp
   140003ee4:	5b                   	pop    %rbx
   140003ee5:	5e                   	pop    %rsi
   140003ee6:	5f                   	pop    %rdi
   140003ee7:	e9 74 f6 ff ff       	jmp    140003560 <__pformat_int.isra.0>
   140003eec:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140003ef0 <__pformat_efloat>:
   140003ef0:	56                   	push   %rsi
   140003ef1:	53                   	push   %rbx
   140003ef2:	48 83 ec 58          	sub    $0x58,%rsp
   140003ef6:	44 8b 42 10          	mov    0x10(%rdx),%r8d
   140003efa:	db 29                	fldt   (%rcx)
   140003efc:	48 89 d3             	mov    %rdx,%rbx
   140003eff:	45 85 c0             	test   %r8d,%r8d
   140003f02:	78 5c                	js     140003f60 <__pformat_efloat+0x70>
   140003f04:	41 83 c0 01          	add    $0x1,%r8d
   140003f08:	48 8d 44 24 48       	lea    0x48(%rsp),%rax
   140003f0d:	48 8d 54 24 30       	lea    0x30(%rsp),%rdx
   140003f12:	b9 02 00 00 00       	mov    $0x2,%ecx
   140003f17:	db 7c 24 30          	fstpt  0x30(%rsp)
   140003f1b:	4c 8d 4c 24 4c       	lea    0x4c(%rsp),%r9
   140003f20:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   140003f25:	e8 66 ec ff ff       	call   140002b90 <__pformat_cvt>
   140003f2a:	44 8b 44 24 4c       	mov    0x4c(%rsp),%r8d
   140003f2f:	48 89 c6             	mov    %rax,%rsi
   140003f32:	41 81 f8 00 80 ff ff 	cmp    $0xffff8000,%r8d
   140003f39:	74 35                	je     140003f70 <__pformat_efloat+0x80>
   140003f3b:	8b 4c 24 48          	mov    0x48(%rsp),%ecx
   140003f3f:	49 89 d9             	mov    %rbx,%r9
   140003f42:	48 89 c2             	mov    %rax,%rdx
   140003f45:	e8 d6 fe ff ff       	call   140003e20 <__pformat_emit_efloat>
   140003f4a:	48 89 f1             	mov    %rsi,%rcx
   140003f4d:	e8 ce 12 00 00       	call   140005220 <__freedtoa>
   140003f52:	90                   	nop
   140003f53:	48 83 c4 58          	add    $0x58,%rsp
   140003f57:	5b                   	pop    %rbx
   140003f58:	5e                   	pop    %rsi
   140003f59:	c3                   	ret
   140003f5a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140003f60:	c7 42 10 06 00 00 00 	movl   $0x6,0x10(%rdx)
   140003f67:	41 b8 07 00 00 00    	mov    $0x7,%r8d
   140003f6d:	eb 99                	jmp    140003f08 <__pformat_efloat+0x18>
   140003f6f:	90                   	nop
   140003f70:	8b 4c 24 48          	mov    0x48(%rsp),%ecx
   140003f74:	49 89 d8             	mov    %rbx,%r8
   140003f77:	48 89 c2             	mov    %rax,%rdx
   140003f7a:	e8 91 f0 ff ff       	call   140003010 <__pformat_emit_inf_or_nan>
   140003f7f:	48 89 f1             	mov    %rsi,%rcx
   140003f82:	e8 99 12 00 00       	call   140005220 <__freedtoa>
   140003f87:	90                   	nop
   140003f88:	48 83 c4 58          	add    $0x58,%rsp
   140003f8c:	5b                   	pop    %rbx
   140003f8d:	5e                   	pop    %rsi
   140003f8e:	c3                   	ret
   140003f8f:	90                   	nop

0000000140003f90 <__pformat_float>:
   140003f90:	56                   	push   %rsi
   140003f91:	53                   	push   %rbx
   140003f92:	48 83 ec 58          	sub    $0x58,%rsp
   140003f96:	44 8b 42 10          	mov    0x10(%rdx),%r8d
   140003f9a:	db 29                	fldt   (%rcx)
   140003f9c:	48 89 d3             	mov    %rdx,%rbx
   140003f9f:	45 85 c0             	test   %r8d,%r8d
   140003fa2:	79 0d                	jns    140003fb1 <__pformat_float+0x21>
   140003fa4:	c7 42 10 06 00 00 00 	movl   $0x6,0x10(%rdx)
   140003fab:	41 b8 06 00 00 00    	mov    $0x6,%r8d
   140003fb1:	48 8d 44 24 48       	lea    0x48(%rsp),%rax
   140003fb6:	48 8d 54 24 30       	lea    0x30(%rsp),%rdx
   140003fbb:	b9 03 00 00 00       	mov    $0x3,%ecx
   140003fc0:	db 7c 24 30          	fstpt  0x30(%rsp)
   140003fc4:	4c 8d 4c 24 4c       	lea    0x4c(%rsp),%r9
   140003fc9:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   140003fce:	e8 bd eb ff ff       	call   140002b90 <__pformat_cvt>
   140003fd3:	44 8b 44 24 4c       	mov    0x4c(%rsp),%r8d
   140003fd8:	48 89 c6             	mov    %rax,%rsi
   140003fdb:	41 81 f8 00 80 ff ff 	cmp    $0xffff8000,%r8d
   140003fe2:	74 6c                	je     140004050 <__pformat_float+0xc0>
   140003fe4:	8b 4c 24 48          	mov    0x48(%rsp),%ecx
   140003fe8:	48 89 c2             	mov    %rax,%rdx
   140003feb:	49 89 d9             	mov    %rbx,%r9
   140003fee:	e8 4d fa ff ff       	call   140003a40 <__pformat_emit_float>
   140003ff3:	8b 43 0c             	mov    0xc(%rbx),%eax
   140003ff6:	eb 1c                	jmp    140004014 <__pformat_float+0x84>
   140003ff8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140003fff:	00 
   140004000:	48 63 43 24          	movslq 0x24(%rbx),%rax
   140004004:	c6 04 02 20          	movb   $0x20,(%rdx,%rax,1)
   140004008:	8b 53 24             	mov    0x24(%rbx),%edx
   14000400b:	8b 43 0c             	mov    0xc(%rbx),%eax
   14000400e:	83 c2 01             	add    $0x1,%edx
   140004011:	89 53 24             	mov    %edx,0x24(%rbx)
   140004014:	89 c2                	mov    %eax,%edx
   140004016:	83 e8 01             	sub    $0x1,%eax
   140004019:	89 43 0c             	mov    %eax,0xc(%rbx)
   14000401c:	85 d2                	test   %edx,%edx
   14000401e:	7e 3f                	jle    14000405f <__pformat_float+0xcf>
   140004020:	8b 4b 08             	mov    0x8(%rbx),%ecx
   140004023:	f6 c5 40             	test   $0x40,%ch
   140004026:	75 08                	jne    140004030 <__pformat_float+0xa0>
   140004028:	8b 53 24             	mov    0x24(%rbx),%edx
   14000402b:	39 53 28             	cmp    %edx,0x28(%rbx)
   14000402e:	7e de                	jle    14000400e <__pformat_float+0x7e>
   140004030:	48 8b 13             	mov    (%rbx),%rdx
   140004033:	80 e5 20             	and    $0x20,%ch
   140004036:	74 c8                	je     140004000 <__pformat_float+0x70>
   140004038:	b9 20 00 00 00       	mov    $0x20,%ecx
   14000403d:	e8 4e 40 00 00       	call   140008090 <fputc>
   140004042:	8b 53 24             	mov    0x24(%rbx),%edx
   140004045:	8b 43 0c             	mov    0xc(%rbx),%eax
   140004048:	eb c4                	jmp    14000400e <__pformat_float+0x7e>
   14000404a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140004050:	8b 4c 24 48          	mov    0x48(%rsp),%ecx
   140004054:	49 89 d8             	mov    %rbx,%r8
   140004057:	48 89 c2             	mov    %rax,%rdx
   14000405a:	e8 b1 ef ff ff       	call   140003010 <__pformat_emit_inf_or_nan>
   14000405f:	48 89 f1             	mov    %rsi,%rcx
   140004062:	e8 b9 11 00 00       	call   140005220 <__freedtoa>
   140004067:	90                   	nop
   140004068:	48 83 c4 58          	add    $0x58,%rsp
   14000406c:	5b                   	pop    %rbx
   14000406d:	5e                   	pop    %rsi
   14000406e:	c3                   	ret
   14000406f:	90                   	nop

0000000140004070 <__pformat_gfloat>:
   140004070:	57                   	push   %rdi
   140004071:	56                   	push   %rsi
   140004072:	53                   	push   %rbx
   140004073:	48 83 ec 50          	sub    $0x50,%rsp
   140004077:	44 8b 42 10          	mov    0x10(%rdx),%r8d
   14000407b:	db 29                	fldt   (%rcx)
   14000407d:	48 89 d3             	mov    %rdx,%rbx
   140004080:	45 85 c0             	test   %r8d,%r8d
   140004083:	0f 88 ff 00 00 00    	js     140004188 <__pformat_gfloat+0x118>
   140004089:	0f 84 e1 00 00 00    	je     140004170 <__pformat_gfloat+0x100>
   14000408f:	48 8d 44 24 48       	lea    0x48(%rsp),%rax
   140004094:	48 8d 54 24 30       	lea    0x30(%rsp),%rdx
   140004099:	b9 02 00 00 00       	mov    $0x2,%ecx
   14000409e:	db 7c 24 30          	fstpt  0x30(%rsp)
   1400040a2:	4c 8d 4c 24 4c       	lea    0x4c(%rsp),%r9
   1400040a7:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   1400040ac:	e8 df ea ff ff       	call   140002b90 <__pformat_cvt>
   1400040b1:	8b 7c 24 4c          	mov    0x4c(%rsp),%edi
   1400040b5:	48 89 c6             	mov    %rax,%rsi
   1400040b8:	81 ff 00 80 ff ff    	cmp    $0xffff8000,%edi
   1400040be:	0f 84 dc 00 00 00    	je     1400041a0 <__pformat_gfloat+0x130>
   1400040c4:	8b 43 08             	mov    0x8(%rbx),%eax
   1400040c7:	25 00 08 00 00       	and    $0x800,%eax
   1400040cc:	83 ff fd             	cmp    $0xfffffffd,%edi
   1400040cf:	7c 5f                	jl     140004130 <__pformat_gfloat+0xc0>
   1400040d1:	8b 53 10             	mov    0x10(%rbx),%edx
   1400040d4:	39 d7                	cmp    %edx,%edi
   1400040d6:	7f 58                	jg     140004130 <__pformat_gfloat+0xc0>
   1400040d8:	85 c0                	test   %eax,%eax
   1400040da:	0f 84 e0 00 00 00    	je     1400041c0 <__pformat_gfloat+0x150>
   1400040e0:	29 fa                	sub    %edi,%edx
   1400040e2:	89 53 10             	mov    %edx,0x10(%rbx)
   1400040e5:	8b 4c 24 48          	mov    0x48(%rsp),%ecx
   1400040e9:	49 89 d9             	mov    %rbx,%r9
   1400040ec:	41 89 f8             	mov    %edi,%r8d
   1400040ef:	48 89 f2             	mov    %rsi,%rdx
   1400040f2:	e8 49 f9 ff ff       	call   140003a40 <__pformat_emit_float>
   1400040f7:	eb 14                	jmp    14000410d <__pformat_gfloat+0x9d>
   1400040f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140004100:	48 89 da             	mov    %rbx,%rdx
   140004103:	b9 20 00 00 00       	mov    $0x20,%ecx
   140004108:	e8 73 eb ff ff       	call   140002c80 <__pformat_putc>
   14000410d:	8b 43 0c             	mov    0xc(%rbx),%eax
   140004110:	8d 50 ff             	lea    -0x1(%rax),%edx
   140004113:	89 53 0c             	mov    %edx,0xc(%rbx)
   140004116:	85 c0                	test   %eax,%eax
   140004118:	7f e6                	jg     140004100 <__pformat_gfloat+0x90>
   14000411a:	48 89 f1             	mov    %rsi,%rcx
   14000411d:	e8 fe 10 00 00       	call   140005220 <__freedtoa>
   140004122:	90                   	nop
   140004123:	48 83 c4 50          	add    $0x50,%rsp
   140004127:	5b                   	pop    %rbx
   140004128:	5e                   	pop    %rsi
   140004129:	5f                   	pop    %rdi
   14000412a:	c3                   	ret
   14000412b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140004130:	85 c0                	test   %eax,%eax
   140004132:	75 34                	jne    140004168 <__pformat_gfloat+0xf8>
   140004134:	48 89 f1             	mov    %rsi,%rcx
   140004137:	e8 9c 3f 00 00       	call   1400080d8 <strlen>
   14000413c:	83 e8 01             	sub    $0x1,%eax
   14000413f:	89 43 10             	mov    %eax,0x10(%rbx)
   140004142:	8b 4c 24 48          	mov    0x48(%rsp),%ecx
   140004146:	49 89 d9             	mov    %rbx,%r9
   140004149:	41 89 f8             	mov    %edi,%r8d
   14000414c:	48 89 f2             	mov    %rsi,%rdx
   14000414f:	e8 cc fc ff ff       	call   140003e20 <__pformat_emit_efloat>
   140004154:	48 89 f1             	mov    %rsi,%rcx
   140004157:	e8 c4 10 00 00       	call   140005220 <__freedtoa>
   14000415c:	90                   	nop
   14000415d:	48 83 c4 50          	add    $0x50,%rsp
   140004161:	5b                   	pop    %rbx
   140004162:	5e                   	pop    %rsi
   140004163:	5f                   	pop    %rdi
   140004164:	c3                   	ret
   140004165:	0f 1f 00             	nopl   (%rax)
   140004168:	8b 43 10             	mov    0x10(%rbx),%eax
   14000416b:	83 e8 01             	sub    $0x1,%eax
   14000416e:	eb cf                	jmp    14000413f <__pformat_gfloat+0xcf>
   140004170:	c7 42 10 01 00 00 00 	movl   $0x1,0x10(%rdx)
   140004177:	41 b8 01 00 00 00    	mov    $0x1,%r8d
   14000417d:	e9 0d ff ff ff       	jmp    14000408f <__pformat_gfloat+0x1f>
   140004182:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140004188:	c7 42 10 06 00 00 00 	movl   $0x6,0x10(%rdx)
   14000418f:	41 b8 06 00 00 00    	mov    $0x6,%r8d
   140004195:	e9 f5 fe ff ff       	jmp    14000408f <__pformat_gfloat+0x1f>
   14000419a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400041a0:	8b 4c 24 48          	mov    0x48(%rsp),%ecx
   1400041a4:	49 89 d8             	mov    %rbx,%r8
   1400041a7:	48 89 c2             	mov    %rax,%rdx
   1400041aa:	e8 61 ee ff ff       	call   140003010 <__pformat_emit_inf_or_nan>
   1400041af:	48 89 f1             	mov    %rsi,%rcx
   1400041b2:	e8 69 10 00 00       	call   140005220 <__freedtoa>
   1400041b7:	90                   	nop
   1400041b8:	48 83 c4 50          	add    $0x50,%rsp
   1400041bc:	5b                   	pop    %rbx
   1400041bd:	5e                   	pop    %rsi
   1400041be:	5f                   	pop    %rdi
   1400041bf:	c3                   	ret
   1400041c0:	48 89 f1             	mov    %rsi,%rcx
   1400041c3:	e8 10 3f 00 00       	call   1400080d8 <strlen>
   1400041c8:	29 f8                	sub    %edi,%eax
   1400041ca:	89 43 10             	mov    %eax,0x10(%rbx)
   1400041cd:	0f 89 12 ff ff ff    	jns    1400040e5 <__pformat_gfloat+0x75>
   1400041d3:	8b 53 0c             	mov    0xc(%rbx),%edx
   1400041d6:	85 d2                	test   %edx,%edx
   1400041d8:	0f 8e 07 ff ff ff    	jle    1400040e5 <__pformat_gfloat+0x75>
   1400041de:	01 d0                	add    %edx,%eax
   1400041e0:	89 43 0c             	mov    %eax,0xc(%rbx)
   1400041e3:	e9 fd fe ff ff       	jmp    1400040e5 <__pformat_gfloat+0x75>
   1400041e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400041ef:	00 

00000001400041f0 <__pformat_emit_xfloat.isra.0>:
   1400041f0:	41 55                	push   %r13
   1400041f2:	41 54                	push   %r12
   1400041f4:	55                   	push   %rbp
   1400041f5:	57                   	push   %rdi
   1400041f6:	56                   	push   %rsi
   1400041f7:	53                   	push   %rbx
   1400041f8:	48 83 ec 58          	sub    $0x58,%rsp
   1400041fc:	45 8b 50 10          	mov    0x10(%r8),%r10d
   140004200:	49 89 c9             	mov    %rcx,%r9
   140004203:	4c 89 c3             	mov    %r8,%rbx
   140004206:	66 85 d2             	test   %dx,%dx
   140004209:	75 09                	jne    140004214 <__pformat_emit_xfloat.isra.0+0x24>
   14000420b:	48 85 c9             	test   %rcx,%rcx
   14000420e:	0f 84 a4 00 00 00    	je     1400042b8 <__pformat_emit_xfloat.isra.0+0xc8>
   140004214:	44 8d 42 fd          	lea    -0x3(%rdx),%r8d
   140004218:	41 83 fa 0e          	cmp    $0xe,%r10d
   14000421c:	0f 86 a3 00 00 00    	jbe    1400042c5 <__pformat_emit_xfloat.isra.0+0xd5>
   140004222:	49 0f bf e8          	movswq %r8w,%rbp
   140004226:	ba 10 00 00 00       	mov    $0x10,%edx
   14000422b:	4d 85 c9             	test   %r9,%r9
   14000422e:	0f 84 ec 03 00 00    	je     140004620 <__pformat_emit_xfloat.isra.0+0x430>
   140004234:	8b 4b 08             	mov    0x8(%rbx),%ecx
   140004237:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
   14000423c:	48 89 fe             	mov    %rdi,%rsi
   14000423f:	41 89 cb             	mov    %ecx,%r11d
   140004242:	41 89 cc             	mov    %ecx,%r12d
   140004245:	41 83 e3 20          	and    $0x20,%r11d
   140004249:	41 81 e4 00 08 00 00 	and    $0x800,%r12d
   140004250:	eb 2d                	jmp    14000427f <__pformat_emit_xfloat.isra.0+0x8f>
   140004252:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140004258:	4c 39 d7             	cmp    %r10,%rdi
   14000425b:	72 0b                	jb     140004268 <__pformat_emit_xfloat.isra.0+0x78>
   14000425d:	8b 73 10             	mov    0x10(%rbx),%esi
   140004260:	85 f6                	test   %esi,%esi
   140004262:	0f 88 68 03 00 00    	js     1400045d0 <__pformat_emit_xfloat.isra.0+0x3e0>
   140004268:	83 c0 30             	add    $0x30,%eax
   14000426b:	41 88 02             	mov    %al,(%r10)
   14000426e:	49 8d 72 01          	lea    0x1(%r10),%rsi
   140004272:	49 c1 e9 04          	shr    $0x4,%r9
   140004276:	83 ea 01             	sub    $0x1,%edx
   140004279:	0f 84 e1 01 00 00    	je     140004460 <__pformat_emit_xfloat.isra.0+0x270>
   14000427f:	44 89 c8             	mov    %r9d,%eax
   140004282:	83 e0 0f             	and    $0xf,%eax
   140004285:	83 fa 01             	cmp    $0x1,%edx
   140004288:	0f 84 92 01 00 00    	je     140004420 <__pformat_emit_xfloat.isra.0+0x230>
   14000428e:	44 8b 53 10          	mov    0x10(%rbx),%r10d
   140004292:	45 85 d2             	test   %r10d,%r10d
   140004295:	7e 08                	jle    14000429f <__pformat_emit_xfloat.isra.0+0xaf>
   140004297:	41 83 ea 01          	sub    $0x1,%r10d
   14000429b:	44 89 53 10          	mov    %r10d,0x10(%rbx)
   14000429f:	49 89 f2             	mov    %rsi,%r10
   1400042a2:	85 c0                	test   %eax,%eax
   1400042a4:	74 b2                	je     140004258 <__pformat_emit_xfloat.isra.0+0x68>
   1400042a6:	83 f8 09             	cmp    $0x9,%eax
   1400042a9:	76 bd                	jbe    140004268 <__pformat_emit_xfloat.isra.0+0x78>
   1400042ab:	83 c0 37             	add    $0x37,%eax
   1400042ae:	44 09 d8             	or     %r11d,%eax
   1400042b1:	eb b8                	jmp    14000426b <__pformat_emit_xfloat.isra.0+0x7b>
   1400042b3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400042b8:	41 83 fa 0e          	cmp    $0xe,%r10d
   1400042bc:	0f 87 46 03 00 00    	ja     140004608 <__pformat_emit_xfloat.isra.0+0x418>
   1400042c2:	45 31 c0             	xor    %r8d,%r8d
   1400042c5:	b9 0e 00 00 00       	mov    $0xe,%ecx
   1400042ca:	b8 04 00 00 00       	mov    $0x4,%eax
   1400042cf:	49 d1 e9             	shr    %r9
   1400042d2:	44 29 d1             	sub    %r10d,%ecx
   1400042d5:	c1 e1 02             	shl    $0x2,%ecx
   1400042d8:	48 d3 e0             	shl    %cl,%rax
   1400042db:	b9 0f 00 00 00       	mov    $0xf,%ecx
   1400042e0:	44 29 d1             	sub    %r10d,%ecx
   1400042e3:	c1 e1 02             	shl    $0x2,%ecx
   1400042e6:	4c 01 c8             	add    %r9,%rax
   1400042e9:	0f 88 11 01 00 00    	js     140004400 <__pformat_emit_xfloat.isra.0+0x210>
   1400042ef:	48 01 c0             	add    %rax,%rax
   1400042f2:	48 d3 e8             	shr    %cl,%rax
   1400042f5:	49 89 c1             	mov    %rax,%r9
   1400042f8:	48 85 c0             	test   %rax,%rax
   1400042fb:	0f 85 0d 01 00 00    	jne    14000440e <__pformat_emit_xfloat.isra.0+0x21e>
   140004301:	45 85 d2             	test   %r10d,%r10d
   140004304:	0f 85 04 01 00 00    	jne    14000440e <__pformat_emit_xfloat.isra.0+0x21e>
   14000430a:	8b 4b 08             	mov    0x8(%rbx),%ecx
   14000430d:	49 0f bf e8          	movswq %r8w,%rbp
   140004311:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
   140004316:	48 89 f8             	mov    %rdi,%rax
   140004319:	f6 c5 08             	test   $0x8,%ch
   14000431c:	74 0a                	je     140004328 <__pformat_emit_xfloat.isra.0+0x138>
   14000431e:	c6 44 24 30 2e       	movb   $0x2e,0x30(%rsp)
   140004323:	48 8d 44 24 31       	lea    0x31(%rsp),%rax
   140004328:	44 8b 53 0c          	mov    0xc(%rbx),%r10d
   14000432c:	c6 00 30             	movb   $0x30,(%rax)
   14000432f:	48 8d 70 01          	lea    0x1(%rax),%rsi
   140004333:	41 bc 02 00 00 00    	mov    $0x2,%r12d
   140004339:	45 85 d2             	test   %r10d,%r10d
   14000433c:	0f 8f 3a 01 00 00    	jg     14000447c <__pformat_emit_xfloat.isra.0+0x28c>
   140004342:	f6 c1 80             	test   $0x80,%cl
   140004345:	0f 85 f5 01 00 00    	jne    140004540 <__pformat_emit_xfloat.isra.0+0x350>
   14000434b:	f6 c5 01             	test   $0x1,%ch
   14000434e:	0f 85 9c 02 00 00    	jne    1400045f0 <__pformat_emit_xfloat.isra.0+0x400>
   140004354:	83 e1 40             	and    $0x40,%ecx
   140004357:	0f 85 e3 02 00 00    	jne    140004640 <__pformat_emit_xfloat.isra.0+0x450>
   14000435d:	48 89 da             	mov    %rbx,%rdx
   140004360:	b9 30 00 00 00       	mov    $0x30,%ecx
   140004365:	e8 16 e9 ff ff       	call   140002c80 <__pformat_putc>
   14000436a:	8b 4b 08             	mov    0x8(%rbx),%ecx
   14000436d:	48 89 da             	mov    %rbx,%rdx
   140004370:	83 e1 20             	and    $0x20,%ecx
   140004373:	83 c9 58             	or     $0x58,%ecx
   140004376:	e8 05 e9 ff ff       	call   140002c80 <__pformat_putc>
   14000437b:	8b 43 0c             	mov    0xc(%rbx),%eax
   14000437e:	85 c0                	test   %eax,%eax
   140004380:	7e 28                	jle    1400043aa <__pformat_emit_xfloat.isra.0+0x1ba>
   140004382:	f6 43 09 02          	testb  $0x2,0x9(%rbx)
   140004386:	74 22                	je     1400043aa <__pformat_emit_xfloat.isra.0+0x1ba>
   140004388:	83 e8 01             	sub    $0x1,%eax
   14000438b:	89 43 0c             	mov    %eax,0xc(%rbx)
   14000438e:	66 90                	xchg   %ax,%ax
   140004390:	48 89 da             	mov    %rbx,%rdx
   140004393:	b9 30 00 00 00       	mov    $0x30,%ecx
   140004398:	e8 e3 e8 ff ff       	call   140002c80 <__pformat_putc>
   14000439d:	8b 43 0c             	mov    0xc(%rbx),%eax
   1400043a0:	8d 50 ff             	lea    -0x1(%rax),%edx
   1400043a3:	89 53 0c             	mov    %edx,0xc(%rbx)
   1400043a6:	85 c0                	test   %eax,%eax
   1400043a8:	7f e6                	jg     140004390 <__pformat_emit_xfloat.isra.0+0x1a0>
   1400043aa:	4c 8d 6c 24 2e       	lea    0x2e(%rsp),%r13
   1400043af:	48 39 f7             	cmp    %rsi,%rdi
   1400043b2:	72 27                	jb     1400043db <__pformat_emit_xfloat.isra.0+0x1eb>
   1400043b4:	e9 ac 01 00 00       	jmp    140004565 <__pformat_emit_xfloat.isra.0+0x375>
   1400043b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400043c0:	0f b7 43 20          	movzwl 0x20(%rbx),%eax
   1400043c4:	66 89 44 24 2e       	mov    %ax,0x2e(%rsp)
   1400043c9:	66 85 c0             	test   %ax,%ax
   1400043cc:	0f 85 e6 01 00 00    	jne    1400045b8 <__pformat_emit_xfloat.isra.0+0x3c8>
   1400043d2:	48 39 fe             	cmp    %rdi,%rsi
   1400043d5:	0f 84 8a 01 00 00    	je     140004565 <__pformat_emit_xfloat.isra.0+0x375>
   1400043db:	0f be 4e ff          	movsbl -0x1(%rsi),%ecx
   1400043df:	48 83 ee 01          	sub    $0x1,%rsi
   1400043e3:	83 f9 2e             	cmp    $0x2e,%ecx
   1400043e6:	0f 84 bc 01 00 00    	je     1400045a8 <__pformat_emit_xfloat.isra.0+0x3b8>
   1400043ec:	83 f9 2c             	cmp    $0x2c,%ecx
   1400043ef:	74 cf                	je     1400043c0 <__pformat_emit_xfloat.isra.0+0x1d0>
   1400043f1:	48 89 da             	mov    %rbx,%rdx
   1400043f4:	e8 87 e8 ff ff       	call   140002c80 <__pformat_putc>
   1400043f9:	eb d7                	jmp    1400043d2 <__pformat_emit_xfloat.isra.0+0x1e2>
   1400043fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140004400:	48 c1 e8 03          	shr    $0x3,%rax
   140004404:	41 83 c0 04          	add    $0x4,%r8d
   140004408:	48 d3 e8             	shr    %cl,%rax
   14000440b:	49 89 c1             	mov    %rax,%r9
   14000440e:	41 8d 52 01          	lea    0x1(%r10),%edx
   140004412:	49 0f bf e8          	movswq %r8w,%rbp
   140004416:	e9 19 fe ff ff       	jmp    140004234 <__pformat_emit_xfloat.isra.0+0x44>
   14000441b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140004420:	48 39 f7             	cmp    %rsi,%rdi
   140004423:	72 13                	jb     140004438 <__pformat_emit_xfloat.isra.0+0x248>
   140004425:	45 85 e4             	test   %r12d,%r12d
   140004428:	75 0e                	jne    140004438 <__pformat_emit_xfloat.isra.0+0x248>
   14000442a:	44 8b 53 10          	mov    0x10(%rbx),%r10d
   14000442e:	45 85 d2             	test   %r10d,%r10d
   140004431:	7e 15                	jle    140004448 <__pformat_emit_xfloat.isra.0+0x258>
   140004433:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140004438:	c6 06 2e             	movb   $0x2e,(%rsi)
   14000443b:	4c 8d 56 01          	lea    0x1(%rsi),%r10
   14000443f:	e9 5e fe ff ff       	jmp    1400042a2 <__pformat_emit_xfloat.isra.0+0xb2>
   140004444:	0f 1f 40 00          	nopl   0x0(%rax)
   140004448:	85 c0                	test   %eax,%eax
   14000444a:	0f 85 20 02 00 00    	jne    140004670 <__pformat_emit_xfloat.isra.0+0x480>
   140004450:	45 85 d2             	test   %r10d,%r10d
   140004453:	75 0b                	jne    140004460 <__pformat_emit_xfloat.isra.0+0x270>
   140004455:	c6 06 30             	movb   $0x30,(%rsi)
   140004458:	48 83 c6 01          	add    $0x1,%rsi
   14000445c:	0f 1f 40 00          	nopl   0x0(%rax)
   140004460:	48 39 fe             	cmp    %rdi,%rsi
   140004463:	0f 84 ef 01 00 00    	je     140004658 <__pformat_emit_xfloat.isra.0+0x468>
   140004469:	44 8b 53 0c          	mov    0xc(%rbx),%r10d
   14000446d:	41 bc 02 00 00 00    	mov    $0x2,%r12d
   140004473:	45 85 d2             	test   %r10d,%r10d
   140004476:	0f 8e c6 fe ff ff    	jle    140004342 <__pformat_emit_xfloat.isra.0+0x152>
   14000447c:	8b 53 10             	mov    0x10(%rbx),%edx
   14000447f:	49 89 f1             	mov    %rsi,%r9
   140004482:	41 0f bf c0          	movswl %r8w,%eax
   140004486:	49 29 f9             	sub    %rdi,%r9
   140004489:	46 8d 1c 0a          	lea    (%rdx,%r9,1),%r11d
   14000448d:	85 d2                	test   %edx,%edx
   14000448f:	89 ca                	mov    %ecx,%edx
   140004491:	45 0f 4f cb          	cmovg  %r11d,%r9d
   140004495:	81 e2 c0 01 00 00    	and    $0x1c0,%edx
   14000449b:	83 fa 01             	cmp    $0x1,%edx
   14000449e:	49 0f bf d0          	movswq %r8w,%rdx
   1400044a2:	41 83 d9 fa          	sbb    $0xfffffffa,%r9d
   1400044a6:	48 69 d2 67 66 66 66 	imul   $0x66666667,%rdx,%rdx
   1400044ad:	c1 f8 1f             	sar    $0x1f,%eax
   1400044b0:	45 89 cb             	mov    %r9d,%r11d
   1400044b3:	48 c1 fa 22          	sar    $0x22,%rdx
   1400044b7:	29 c2                	sub    %eax,%edx
   1400044b9:	74 2e                	je     1400044e9 <__pformat_emit_xfloat.isra.0+0x2f9>
   1400044bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400044c0:	48 63 c2             	movslq %edx,%rax
   1400044c3:	c1 fa 1f             	sar    $0x1f,%edx
   1400044c6:	41 83 c3 01          	add    $0x1,%r11d
   1400044ca:	48 69 c0 67 66 66 66 	imul   $0x66666667,%rax,%rax
   1400044d1:	48 c1 f8 22          	sar    $0x22,%rax
   1400044d5:	29 d0                	sub    %edx,%eax
   1400044d7:	89 c2                	mov    %eax,%edx
   1400044d9:	75 e5                	jne    1400044c0 <__pformat_emit_xfloat.isra.0+0x2d0>
   1400044db:	45 89 dc             	mov    %r11d,%r12d
   1400044de:	45 29 cc             	sub    %r9d,%r12d
   1400044e1:	41 83 c4 02          	add    $0x2,%r12d
   1400044e5:	45 0f bf e4          	movswl %r12w,%r12d
   1400044e9:	45 39 da             	cmp    %r11d,%r10d
   1400044ec:	0f 8e ee 00 00 00    	jle    1400045e0 <__pformat_emit_xfloat.isra.0+0x3f0>
   1400044f2:	45 29 da             	sub    %r11d,%r10d
   1400044f5:	f6 c5 06             	test   $0x6,%ch
   1400044f8:	0f 85 e8 00 00 00    	jne    1400045e6 <__pformat_emit_xfloat.isra.0+0x3f6>
   1400044fe:	41 83 ea 01          	sub    $0x1,%r10d
   140004502:	44 89 53 0c          	mov    %r10d,0xc(%rbx)
   140004506:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000450d:	00 00 00 
   140004510:	48 89 da             	mov    %rbx,%rdx
   140004513:	b9 20 00 00 00       	mov    $0x20,%ecx
   140004518:	e8 63 e7 ff ff       	call   140002c80 <__pformat_putc>
   14000451d:	8b 43 0c             	mov    0xc(%rbx),%eax
   140004520:	8d 50 ff             	lea    -0x1(%rax),%edx
   140004523:	89 53 0c             	mov    %edx,0xc(%rbx)
   140004526:	85 c0                	test   %eax,%eax
   140004528:	7f e6                	jg     140004510 <__pformat_emit_xfloat.isra.0+0x320>
   14000452a:	8b 4b 08             	mov    0x8(%rbx),%ecx
   14000452d:	f6 c1 80             	test   $0x80,%cl
   140004530:	0f 84 15 fe ff ff    	je     14000434b <__pformat_emit_xfloat.isra.0+0x15b>
   140004536:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000453d:	00 00 00 
   140004540:	48 89 da             	mov    %rbx,%rdx
   140004543:	b9 2d 00 00 00       	mov    $0x2d,%ecx
   140004548:	e8 33 e7 ff ff       	call   140002c80 <__pformat_putc>
   14000454d:	e9 0b fe ff ff       	jmp    14000435d <__pformat_emit_xfloat.isra.0+0x16d>
   140004552:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140004558:	48 89 da             	mov    %rbx,%rdx
   14000455b:	b9 30 00 00 00       	mov    $0x30,%ecx
   140004560:	e8 1b e7 ff ff       	call   140002c80 <__pformat_putc>
   140004565:	8b 43 10             	mov    0x10(%rbx),%eax
   140004568:	8d 50 ff             	lea    -0x1(%rax),%edx
   14000456b:	89 53 10             	mov    %edx,0x10(%rbx)
   14000456e:	85 c0                	test   %eax,%eax
   140004570:	7f e6                	jg     140004558 <__pformat_emit_xfloat.isra.0+0x368>
   140004572:	8b 4b 08             	mov    0x8(%rbx),%ecx
   140004575:	48 89 da             	mov    %rbx,%rdx
   140004578:	83 e1 20             	and    $0x20,%ecx
   14000457b:	83 c9 50             	or     $0x50,%ecx
   14000457e:	e8 fd e6 ff ff       	call   140002c80 <__pformat_putc>
   140004583:	44 01 63 0c          	add    %r12d,0xc(%rbx)
   140004587:	48 89 da             	mov    %rbx,%rdx
   14000458a:	48 89 e9             	mov    %rbp,%rcx
   14000458d:	81 4b 08 c0 01 00 00 	orl    $0x1c0,0x8(%rbx)
   140004594:	48 83 c4 58          	add    $0x58,%rsp
   140004598:	5b                   	pop    %rbx
   140004599:	5e                   	pop    %rsi
   14000459a:	5f                   	pop    %rdi
   14000459b:	5d                   	pop    %rbp
   14000459c:	41 5c                	pop    %r12
   14000459e:	41 5d                	pop    %r13
   1400045a0:	e9 bb ef ff ff       	jmp    140003560 <__pformat_int.isra.0>
   1400045a5:	0f 1f 00             	nopl   (%rax)
   1400045a8:	48 89 d9             	mov    %rbx,%rcx
   1400045ab:	e8 40 f3 ff ff       	call   1400038f0 <__pformat_emit_radix_point>
   1400045b0:	e9 1d fe ff ff       	jmp    1400043d2 <__pformat_emit_xfloat.isra.0+0x1e2>
   1400045b5:	0f 1f 00             	nopl   (%rax)
   1400045b8:	49 89 d8             	mov    %rbx,%r8
   1400045bb:	ba 01 00 00 00       	mov    $0x1,%edx
   1400045c0:	4c 89 e9             	mov    %r13,%rcx
   1400045c3:	e8 18 e7 ff ff       	call   140002ce0 <__pformat_wputchars>
   1400045c8:	e9 05 fe ff ff       	jmp    1400043d2 <__pformat_emit_xfloat.isra.0+0x1e2>
   1400045cd:	0f 1f 00             	nopl   (%rax)
   1400045d0:	4c 89 d6             	mov    %r10,%rsi
   1400045d3:	e9 9a fc ff ff       	jmp    140004272 <__pformat_emit_xfloat.isra.0+0x82>
   1400045d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400045df:	00 
   1400045e0:	41 ba ff ff ff ff    	mov    $0xffffffff,%r10d
   1400045e6:	44 89 53 0c          	mov    %r10d,0xc(%rbx)
   1400045ea:	e9 53 fd ff ff       	jmp    140004342 <__pformat_emit_xfloat.isra.0+0x152>
   1400045ef:	90                   	nop
   1400045f0:	48 89 da             	mov    %rbx,%rdx
   1400045f3:	b9 2b 00 00 00       	mov    $0x2b,%ecx
   1400045f8:	e8 83 e6 ff ff       	call   140002c80 <__pformat_putc>
   1400045fd:	e9 5b fd ff ff       	jmp    14000435d <__pformat_emit_xfloat.isra.0+0x16d>
   140004602:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140004608:	45 85 d2             	test   %r10d,%r10d
   14000460b:	7e 6b                	jle    140004678 <__pformat_emit_xfloat.isra.0+0x488>
   14000460d:	31 ed                	xor    %ebp,%ebp
   14000460f:	45 31 c0             	xor    %r8d,%r8d
   140004612:	ba 10 00 00 00       	mov    $0x10,%edx
   140004617:	45 31 c9             	xor    %r9d,%r9d
   14000461a:	e9 15 fc ff ff       	jmp    140004234 <__pformat_emit_xfloat.isra.0+0x44>
   14000461f:	90                   	nop
   140004620:	45 85 d2             	test   %r10d,%r10d
   140004623:	0f 8f 0b fc ff ff    	jg     140004234 <__pformat_emit_xfloat.isra.0+0x44>
   140004629:	8b 4b 08             	mov    0x8(%rbx),%ecx
   14000462c:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
   140004631:	e9 e0 fc ff ff       	jmp    140004316 <__pformat_emit_xfloat.isra.0+0x126>
   140004636:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000463d:	00 00 00 
   140004640:	48 89 da             	mov    %rbx,%rdx
   140004643:	b9 20 00 00 00       	mov    $0x20,%ecx
   140004648:	e8 33 e6 ff ff       	call   140002c80 <__pformat_putc>
   14000464d:	e9 0b fd ff ff       	jmp    14000435d <__pformat_emit_xfloat.isra.0+0x16d>
   140004652:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140004658:	8b 43 10             	mov    0x10(%rbx),%eax
   14000465b:	85 c0                	test   %eax,%eax
   14000465d:	0f 8f bb fc ff ff    	jg     14000431e <__pformat_emit_xfloat.isra.0+0x12e>
   140004663:	e9 ae fc ff ff       	jmp    140004316 <__pformat_emit_xfloat.isra.0+0x126>
   140004668:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000466f:	00 
   140004670:	49 89 f2             	mov    %rsi,%r10
   140004673:	e9 2e fc ff ff       	jmp    1400042a6 <__pformat_emit_xfloat.isra.0+0xb6>
   140004678:	41 8b 48 08          	mov    0x8(%r8),%ecx
   14000467c:	31 ed                	xor    %ebp,%ebp
   14000467e:	45 31 c0             	xor    %r8d,%r8d
   140004681:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
   140004686:	e9 8b fc ff ff       	jmp    140004316 <__pformat_emit_xfloat.isra.0+0x126>
   14000468b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000140004690 <__mingw_pformat>:
   140004690:	41 57                	push   %r15
   140004692:	41 56                	push   %r14
   140004694:	41 55                	push   %r13
   140004696:	41 54                	push   %r12
   140004698:	55                   	push   %rbp
   140004699:	57                   	push   %rdi
   14000469a:	56                   	push   %rsi
   14000469b:	53                   	push   %rbx
   14000469c:	48 81 ec a8 00 00 00 	sub    $0xa8,%rsp
   1400046a3:	4c 8b ac 24 10 01 00 	mov    0x110(%rsp),%r13
   1400046aa:	00 
   1400046ab:	89 cf                	mov    %ecx,%edi
   1400046ad:	48 89 d5             	mov    %rdx,%rbp
   1400046b0:	44 89 c3             	mov    %r8d,%ebx
   1400046b3:	4c 89 ce             	mov    %r9,%rsi
   1400046b6:	e8 8d 39 00 00       	call   140008048 <_errno>
   1400046bb:	0f be 0e             	movsbl (%rsi),%ecx
   1400046be:	81 e7 00 60 00 00    	and    $0x6000,%edi
   1400046c4:	31 d2                	xor    %edx,%edx
   1400046c6:	8b 00                	mov    (%rax),%eax
   1400046c8:	89 9c 24 98 00 00 00 	mov    %ebx,0x98(%rsp)
   1400046cf:	48 8d 5e 01          	lea    0x1(%rsi),%rbx
   1400046d3:	48 89 6c 24 70       	mov    %rbp,0x70(%rsp)
   1400046d8:	89 44 24 30          	mov    %eax,0x30(%rsp)
   1400046dc:	48 b8 ff ff ff ff fd 	movabs $0xfffffffdffffffff,%rax
   1400046e3:	ff ff ff 
   1400046e6:	48 89 84 24 80 00 00 	mov    %rax,0x80(%rsp)
   1400046ed:	00 
   1400046ee:	31 c0                	xor    %eax,%eax
   1400046f0:	66 89 84 24 88 00 00 	mov    %ax,0x88(%rsp)
   1400046f7:	00 
   1400046f8:	89 c8                	mov    %ecx,%eax
   1400046fa:	89 7c 24 78          	mov    %edi,0x78(%rsp)
   1400046fe:	c7 44 24 7c ff ff ff 	movl   $0xffffffff,0x7c(%rsp)
   140004705:	ff 
   140004706:	c7 84 24 8c 00 00 00 	movl   $0x0,0x8c(%rsp)
   14000470d:	00 00 00 00 
   140004711:	66 89 94 24 90 00 00 	mov    %dx,0x90(%rsp)
   140004718:	00 
   140004719:	c7 84 24 94 00 00 00 	movl   $0x0,0x94(%rsp)
   140004720:	00 00 00 00 
   140004724:	c7 84 24 9c 00 00 00 	movl   $0xffffffff,0x9c(%rsp)
   14000472b:	ff ff ff ff 
   14000472f:	85 c9                	test   %ecx,%ecx
   140004731:	0f 84 10 01 00 00    	je     140004847 <__mingw_pformat+0x1b7>
   140004737:	4c 8d 7c 24 7c       	lea    0x7c(%rsp),%r15
   14000473c:	4c 8d 25 6d 5d 00 00 	lea    0x5d6d(%rip),%r12        # 14000a4b0 <.rdata+0x20>
   140004743:	eb 49                	jmp    14000478e <__mingw_pformat+0xfe>
   140004745:	0f 1f 00             	nopl   (%rax)
   140004748:	8b 54 24 78          	mov    0x78(%rsp),%edx
   14000474c:	8b b4 24 94 00 00 00 	mov    0x94(%rsp),%esi
   140004753:	f6 c6 40             	test   $0x40,%dh
   140004756:	75 09                	jne    140004761 <__mingw_pformat+0xd1>
   140004758:	39 b4 24 98 00 00 00 	cmp    %esi,0x98(%rsp)
   14000475f:	7e 11                	jle    140004772 <__mingw_pformat+0xe2>
   140004761:	4c 8b 44 24 70       	mov    0x70(%rsp),%r8
   140004766:	80 e6 20             	and    $0x20,%dh
   140004769:	75 6d                	jne    1400047d8 <__mingw_pformat+0x148>
   14000476b:	48 63 d6             	movslq %esi,%rdx
   14000476e:	41 88 04 10          	mov    %al,(%r8,%rdx,1)
   140004772:	83 c6 01             	add    $0x1,%esi
   140004775:	89 b4 24 94 00 00 00 	mov    %esi,0x94(%rsp)
   14000477c:	0f b6 03             	movzbl (%rbx),%eax
   14000477f:	48 83 c3 01          	add    $0x1,%rbx
   140004783:	0f be c8             	movsbl %al,%ecx
   140004786:	85 c9                	test   %ecx,%ecx
   140004788:	0f 84 b2 00 00 00    	je     140004840 <__mingw_pformat+0x1b0>
   14000478e:	83 f9 25             	cmp    $0x25,%ecx
   140004791:	75 b5                	jne    140004748 <__mingw_pformat+0xb8>
   140004793:	0f b6 03             	movzbl (%rbx),%eax
   140004796:	89 7c 24 78          	mov    %edi,0x78(%rsp)
   14000479a:	48 c7 44 24 7c ff ff 	movq   $0xffffffffffffffff,0x7c(%rsp)
   1400047a1:	ff ff 
   1400047a3:	84 c0                	test   %al,%al
   1400047a5:	0f 84 95 00 00 00    	je     140004840 <__mingw_pformat+0x1b0>
   1400047ab:	48 89 de             	mov    %rbx,%rsi
   1400047ae:	4d 89 fb             	mov    %r15,%r11
   1400047b1:	45 31 d2             	xor    %r10d,%r10d
   1400047b4:	45 31 f6             	xor    %r14d,%r14d
   1400047b7:	8d 50 e0             	lea    -0x20(%rax),%edx
   1400047ba:	48 8d 6e 01          	lea    0x1(%rsi),%rbp
   1400047be:	0f be c8             	movsbl %al,%ecx
   1400047c1:	80 fa 5a             	cmp    $0x5a,%dl
   1400047c4:	77 22                	ja     1400047e8 <__mingw_pformat+0x158>
   1400047c6:	0f b6 d2             	movzbl %dl,%edx
   1400047c9:	49 63 14 94          	movslq (%r12,%rdx,4),%rdx
   1400047cd:	4c 01 e2             	add    %r12,%rdx
   1400047d0:	ff e2                	jmp    *%rdx
   1400047d2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400047d8:	4c 89 c2             	mov    %r8,%rdx
   1400047db:	e8 b0 38 00 00       	call   140008090 <fputc>
   1400047e0:	eb 90                	jmp    140004772 <__mingw_pformat+0xe2>
   1400047e2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400047e8:	83 e8 30             	sub    $0x30,%eax
   1400047eb:	3c 09                	cmp    $0x9,%al
   1400047ed:	0f 87 14 02 00 00    	ja     140004a07 <__mingw_pformat+0x377>
   1400047f3:	41 83 fe 03          	cmp    $0x3,%r14d
   1400047f7:	0f 87 0a 02 00 00    	ja     140004a07 <__mingw_pformat+0x377>
   1400047fd:	45 85 f6             	test   %r14d,%r14d
   140004800:	0f 85 43 07 00 00    	jne    140004f49 <__mingw_pformat+0x8b9>
   140004806:	41 be 01 00 00 00    	mov    $0x1,%r14d
   14000480c:	4d 85 db             	test   %r11,%r11
   14000480f:	74 1f                	je     140004830 <__mingw_pformat+0x1a0>
   140004811:	41 8b 03             	mov    (%r11),%eax
   140004814:	85 c0                	test   %eax,%eax
   140004816:	0f 88 e6 07 00 00    	js     140005002 <__mingw_pformat+0x972>
   14000481c:	8d 04 80             	lea    (%rax,%rax,4),%eax
   14000481f:	8d 44 41 d0          	lea    -0x30(%rcx,%rax,2),%eax
   140004823:	41 89 03             	mov    %eax,(%r11)
   140004826:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000482d:	00 00 00 
   140004830:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   140004834:	48 89 ee             	mov    %rbp,%rsi
   140004837:	84 c0                	test   %al,%al
   140004839:	0f 85 78 ff ff ff    	jne    1400047b7 <__mingw_pformat+0x127>
   14000483f:	90                   	nop
   140004840:	8b 8c 24 94 00 00 00 	mov    0x94(%rsp),%ecx
   140004847:	89 c8                	mov    %ecx,%eax
   140004849:	48 81 c4 a8 00 00 00 	add    $0xa8,%rsp
   140004850:	5b                   	pop    %rbx
   140004851:	5e                   	pop    %rsi
   140004852:	5f                   	pop    %rdi
   140004853:	5d                   	pop    %rbp
   140004854:	41 5c                	pop    %r12
   140004856:	41 5d                	pop    %r13
   140004858:	41 5e                	pop    %r14
   14000485a:	41 5f                	pop    %r15
   14000485c:	c3                   	ret
   14000485d:	0f 1f 00             	nopl   (%rax)
   140004860:	81 64 24 78 ff fe ff 	andl   $0xfffffeff,0x78(%rsp)
   140004867:	ff 
   140004868:	41 83 fa 03          	cmp    $0x3,%r10d
   14000486c:	0f 84 d0 07 00 00    	je     140005042 <__mingw_pformat+0x9b2>
   140004872:	41 83 fa 02          	cmp    $0x2,%r10d
   140004876:	0f 84 59 08 00 00    	je     1400050d5 <__mingw_pformat+0xa45>
   14000487c:	41 8b 45 00          	mov    0x0(%r13),%eax
   140004880:	41 83 fa 01          	cmp    $0x1,%r10d
   140004884:	0f 84 68 07 00 00    	je     140004ff2 <__mingw_pformat+0x962>
   14000488a:	89 c2                	mov    %eax,%edx
   14000488c:	41 83 fa 05          	cmp    $0x5,%r10d
   140004890:	0f b6 c0             	movzbl %al,%eax
   140004893:	48 0f 45 c2          	cmovne %rdx,%rax
   140004897:	48 89 44 24 60       	mov    %rax,0x60(%rsp)
   14000489c:	83 f9 75             	cmp    $0x75,%ecx
   14000489f:	0f 84 1e 08 00 00    	je     1400050c3 <__mingw_pformat+0xa33>
   1400048a5:	4c 8d 44 24 70       	lea    0x70(%rsp),%r8
   1400048aa:	48 89 c2             	mov    %rax,%rdx
   1400048ad:	e8 fe e7 ff ff       	call   1400030b0 <__pformat_xint.isra.0>
   1400048b2:	e9 a9 02 00 00       	jmp    140004b60 <__mingw_pformat+0x4d0>
   1400048b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400048be:	00 00 
   1400048c0:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   1400048c4:	41 ba 03 00 00 00    	mov    $0x3,%r10d
   1400048ca:	48 89 ee             	mov    %rbp,%rsi
   1400048cd:	41 be 04 00 00 00    	mov    $0x4,%r14d
   1400048d3:	e9 5f ff ff ff       	jmp    140004837 <__mingw_pformat+0x1a7>
   1400048d8:	81 4c 24 78 80 00 00 	orl    $0x80,0x78(%rsp)
   1400048df:	00 
   1400048e0:	49 8d 5d 08          	lea    0x8(%r13),%rbx
   1400048e4:	41 83 fa 03          	cmp    $0x3,%r10d
   1400048e8:	0f 84 4b 07 00 00    	je     140005039 <__mingw_pformat+0x9a9>
   1400048ee:	49 63 4d 00          	movslq 0x0(%r13),%rcx
   1400048f2:	41 83 fa 02          	cmp    $0x2,%r10d
   1400048f6:	74 16                	je     14000490e <__mingw_pformat+0x27e>
   1400048f8:	41 83 fa 01          	cmp    $0x1,%r10d
   1400048fc:	0f 84 e7 06 00 00    	je     140004fe9 <__mingw_pformat+0x959>
   140004902:	48 0f be c1          	movsbq %cl,%rax
   140004906:	41 83 fa 05          	cmp    $0x5,%r10d
   14000490a:	48 0f 44 c8          	cmove  %rax,%rcx
   14000490e:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
   140004913:	49 89 dd             	mov    %rbx,%r13
   140004916:	48 89 eb             	mov    %rbp,%rbx
   140004919:	e8 42 ec ff ff       	call   140003560 <__pformat_int.isra.0>
   14000491e:	e9 59 fe ff ff       	jmp    14000477c <__mingw_pformat+0xec>
   140004923:	45 85 f6             	test   %r14d,%r14d
   140004926:	75 0a                	jne    140004932 <__mingw_pformat+0x2a2>
   140004928:	39 7c 24 78          	cmp    %edi,0x78(%rsp)
   14000492c:	0f 84 85 06 00 00    	je     140004fb7 <__mingw_pformat+0x927>
   140004932:	49 8b 55 00          	mov    0x0(%r13),%rdx
   140004936:	49 8d 5d 08          	lea    0x8(%r13),%rbx
   14000493a:	4c 8d 44 24 70       	lea    0x70(%rsp),%r8
   14000493f:	b9 78 00 00 00       	mov    $0x78,%ecx
   140004944:	49 89 dd             	mov    %rbx,%r13
   140004947:	48 89 eb             	mov    %rbp,%rbx
   14000494a:	e8 61 e7 ff ff       	call   1400030b0 <__pformat_xint.isra.0>
   14000494f:	e9 28 fe ff ff       	jmp    14000477c <__mingw_pformat+0xec>
   140004954:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   140004958:	3c 68                	cmp    $0x68,%al
   14000495a:	0f 84 31 07 00 00    	je     140005091 <__mingw_pformat+0xa01>
   140004960:	48 89 ee             	mov    %rbp,%rsi
   140004963:	41 ba 01 00 00 00    	mov    $0x1,%r10d
   140004969:	41 be 04 00 00 00    	mov    $0x4,%r14d
   14000496f:	e9 c3 fe ff ff       	jmp    140004837 <__mingw_pformat+0x1a7>
   140004974:	8b 4c 24 30          	mov    0x30(%rsp),%ecx
   140004978:	48 89 eb             	mov    %rbp,%rbx
   14000497b:	e8 50 37 00 00       	call   1400080d0 <strerror>
   140004980:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
   140004985:	48 89 c1             	mov    %rax,%rcx
   140004988:	e8 33 e6 ff ff       	call   140002fc0 <__pformat_puts>
   14000498d:	e9 ea fd ff ff       	jmp    14000477c <__mingw_pformat+0xec>
   140004992:	49 8b 55 00          	mov    0x0(%r13),%rdx
   140004996:	48 63 84 24 94 00 00 	movslq 0x94(%rsp),%rax
   14000499d:	00 
   14000499e:	41 83 fa 05          	cmp    $0x5,%r10d
   1400049a2:	0f 84 e2 06 00 00    	je     14000508a <__mingw_pformat+0x9fa>
   1400049a8:	41 83 fa 01          	cmp    $0x1,%r10d
   1400049ac:	0f 84 2c 07 00 00    	je     1400050de <__mingw_pformat+0xa4e>
   1400049b2:	41 83 fa 02          	cmp    $0x2,%r10d
   1400049b6:	74 0a                	je     1400049c2 <__mingw_pformat+0x332>
   1400049b8:	41 83 fa 03          	cmp    $0x3,%r10d
   1400049bc:	0f 84 38 06 00 00    	je     140004ffa <__mingw_pformat+0x96a>
   1400049c2:	89 02                	mov    %eax,(%rdx)
   1400049c4:	e9 97 01 00 00       	jmp    140004b60 <__mingw_pformat+0x4d0>
   1400049c9:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   1400049cd:	3c 6c                	cmp    $0x6c,%al
   1400049cf:	0f 84 d5 06 00 00    	je     1400050aa <__mingw_pformat+0xa1a>
   1400049d5:	48 89 ee             	mov    %rbp,%rsi
   1400049d8:	41 ba 02 00 00 00    	mov    $0x2,%r10d
   1400049de:	41 be 04 00 00 00    	mov    $0x4,%r14d
   1400049e4:	e9 4e fe ff ff       	jmp    140004837 <__mingw_pformat+0x1a7>
   1400049e9:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   1400049ed:	3c 36                	cmp    $0x36,%al
   1400049ef:	0f 84 72 06 00 00    	je     140005067 <__mingw_pformat+0x9d7>
   1400049f5:	3c 33                	cmp    $0x33,%al
   1400049f7:	0f 85 9b 05 00 00    	jne    140004f98 <__mingw_pformat+0x908>
   1400049fd:	80 7e 02 32          	cmpb   $0x32,0x2(%rsi)
   140004a01:	0f 84 f5 06 00 00    	je     1400050fc <__mingw_pformat+0xa6c>
   140004a07:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
   140004a0c:	b9 25 00 00 00       	mov    $0x25,%ecx
   140004a11:	e8 6a e2 ff ff       	call   140002c80 <__pformat_putc>
   140004a16:	e9 61 fd ff ff       	jmp    14000477c <__mingw_pformat+0xec>
   140004a1b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140004a20:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   140004a24:	83 4c 24 78 04       	orl    $0x4,0x78(%rsp)
   140004a29:	48 89 ee             	mov    %rbp,%rsi
   140004a2c:	41 be 04 00 00 00    	mov    $0x4,%r14d
   140004a32:	e9 00 fe ff ff       	jmp    140004837 <__mingw_pformat+0x1a7>
   140004a37:	8b 44 24 78          	mov    0x78(%rsp),%eax
   140004a3b:	49 8b 4d 00          	mov    0x0(%r13),%rcx
   140004a3f:	83 c8 20             	or     $0x20,%eax
   140004a42:	89 44 24 78          	mov    %eax,0x78(%rsp)
   140004a46:	a8 04                	test   $0x4,%al
   140004a48:	0f 84 fa 01 00 00    	je     140004c48 <__mingw_pformat+0x5b8>
   140004a4e:	8b 59 08             	mov    0x8(%rcx),%ebx
   140004a51:	48 8b 09             	mov    (%rcx),%rcx
   140004a54:	49 89 c9             	mov    %rcx,%r9
   140004a57:	44 0f bf d3          	movswl %bx,%r10d
   140004a5b:	48 89 da             	mov    %rbx,%rdx
   140004a5e:	49 c1 e9 20          	shr    $0x20,%r9
   140004a62:	47 8d 1c 12          	lea    (%r10,%r10,1),%r11d
   140004a66:	41 81 e1 ff ff ff 7f 	and    $0x7fffffff,%r9d
   140004a6d:	45 0f b7 db          	movzwl %r11w,%r11d
   140004a71:	41 09 c9             	or     %ecx,%r9d
   140004a74:	45 89 c8             	mov    %r9d,%r8d
   140004a77:	41 f7 d8             	neg    %r8d
   140004a7a:	45 09 c8             	or     %r9d,%r8d
   140004a7d:	41 c1 e8 1f          	shr    $0x1f,%r8d
   140004a81:	45 09 d8             	or     %r11d,%r8d
   140004a84:	41 bb fe ff 00 00    	mov    $0xfffe,%r11d
   140004a8a:	45 29 c3             	sub    %r8d,%r11d
   140004a8d:	41 c1 eb 10          	shr    $0x10,%r11d
   140004a91:	0f 85 c4 04 00 00    	jne    140004f5b <__mingw_pformat+0x8cb>
   140004a97:	66 85 db             	test   %bx,%bx
   140004a9a:	0f 88 0c 05 00 00    	js     140004fac <__mingw_pformat+0x91c>
   140004aa0:	66 81 e2 ff 7f       	and    $0x7fff,%dx
   140004aa5:	0f 84 dd 04 00 00    	je     140004f88 <__mingw_pformat+0x8f8>
   140004aab:	66 81 fa ff 7f       	cmp    $0x7fff,%dx
   140004ab0:	75 09                	jne    140004abb <__mingw_pformat+0x42b>
   140004ab2:	45 85 c9             	test   %r9d,%r9d
   140004ab5:	0f 84 7d 06 00 00    	je     140005138 <__mingw_pformat+0xaa8>
   140004abb:	66 81 ea ff 3f       	sub    $0x3fff,%dx
   140004ac0:	e9 22 04 00 00       	jmp    140004ee7 <__mingw_pformat+0x857>
   140004ac5:	41 83 ea 02          	sub    $0x2,%r10d
   140004ac9:	41 8b 45 00          	mov    0x0(%r13),%eax
   140004acd:	49 8d 5d 08          	lea    0x8(%r13),%rbx
   140004ad1:	c7 84 24 80 00 00 00 	movl   $0xffffffff,0x80(%rsp)
   140004ad8:	ff ff ff ff 
   140004adc:	41 83 fa 01          	cmp    $0x1,%r10d
   140004ae0:	0f 86 09 02 00 00    	jbe    140004cef <__mingw_pformat+0x65f>
   140004ae6:	48 8d 4c 24 60       	lea    0x60(%rsp),%rcx
   140004aeb:	4c 8d 44 24 70       	lea    0x70(%rsp),%r8
   140004af0:	88 44 24 60          	mov    %al,0x60(%rsp)
   140004af4:	49 89 dd             	mov    %rbx,%r13
   140004af7:	ba 01 00 00 00       	mov    $0x1,%edx
   140004afc:	48 89 eb             	mov    %rbp,%rbx
   140004aff:	e8 6c e3 ff ff       	call   140002e70 <__pformat_putchars>
   140004b04:	e9 73 fc ff ff       	jmp    14000477c <__mingw_pformat+0xec>
   140004b09:	41 83 ea 02          	sub    $0x2,%r10d
   140004b0d:	49 8b 4d 00          	mov    0x0(%r13),%rcx
   140004b11:	49 8d 5d 08          	lea    0x8(%r13),%rbx
   140004b15:	41 83 fa 01          	cmp    $0x1,%r10d
   140004b19:	0f 86 db 03 00 00    	jbe    140004efa <__mingw_pformat+0x86a>
   140004b1f:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
   140004b24:	e8 97 e4 ff ff       	call   140002fc0 <__pformat_puts>
   140004b29:	49 89 dd             	mov    %rbx,%r13
   140004b2c:	48 89 eb             	mov    %rbp,%rbx
   140004b2f:	e9 48 fc ff ff       	jmp    14000477c <__mingw_pformat+0xec>
   140004b34:	8b 44 24 78          	mov    0x78(%rsp),%eax
   140004b38:	49 8b 55 00          	mov    0x0(%r13),%rdx
   140004b3c:	83 c8 20             	or     $0x20,%eax
   140004b3f:	89 44 24 78          	mov    %eax,0x78(%rsp)
   140004b43:	a8 04                	test   $0x4,%al
   140004b45:	0f 84 3e 02 00 00    	je     140004d89 <__mingw_pformat+0x6f9>
   140004b4b:	db 2a                	fldt   (%rdx)
   140004b4d:	48 8d 4c 24 40       	lea    0x40(%rsp),%rcx
   140004b52:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
   140004b57:	db 7c 24 40          	fstpt  0x40(%rsp)
   140004b5b:	e8 10 f5 ff ff       	call   140004070 <__pformat_gfloat>
   140004b60:	49 83 c5 08          	add    $0x8,%r13
   140004b64:	48 89 eb             	mov    %rbp,%rbx
   140004b67:	e9 10 fc ff ff       	jmp    14000477c <__mingw_pformat+0xec>
   140004b6c:	8b 44 24 78          	mov    0x78(%rsp),%eax
   140004b70:	49 8b 55 00          	mov    0x0(%r13),%rdx
   140004b74:	83 c8 20             	or     $0x20,%eax
   140004b77:	89 44 24 78          	mov    %eax,0x78(%rsp)
   140004b7b:	a8 04                	test   $0x4,%al
   140004b7d:	0f 84 d5 01 00 00    	je     140004d58 <__mingw_pformat+0x6c8>
   140004b83:	db 2a                	fldt   (%rdx)
   140004b85:	48 8d 4c 24 40       	lea    0x40(%rsp),%rcx
   140004b8a:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
   140004b8f:	db 7c 24 40          	fstpt  0x40(%rsp)
   140004b93:	e8 f8 f3 ff ff       	call   140003f90 <__pformat_float>
   140004b98:	eb c6                	jmp    140004b60 <__mingw_pformat+0x4d0>
   140004b9a:	8b 44 24 78          	mov    0x78(%rsp),%eax
   140004b9e:	49 8b 55 00          	mov    0x0(%r13),%rdx
   140004ba2:	83 c8 20             	or     $0x20,%eax
   140004ba5:	89 44 24 78          	mov    %eax,0x78(%rsp)
   140004ba9:	a8 04                	test   $0x4,%al
   140004bab:	0f 84 76 01 00 00    	je     140004d27 <__mingw_pformat+0x697>
   140004bb1:	db 2a                	fldt   (%rdx)
   140004bb3:	48 8d 4c 24 40       	lea    0x40(%rsp),%rcx
   140004bb8:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
   140004bbd:	db 7c 24 40          	fstpt  0x40(%rsp)
   140004bc1:	e8 2a f3 ff ff       	call   140003ef0 <__pformat_efloat>
   140004bc6:	eb 98                	jmp    140004b60 <__mingw_pformat+0x4d0>
   140004bc8:	45 85 f6             	test   %r14d,%r14d
   140004bcb:	0f 85 5f fc ff ff    	jne    140004830 <__mingw_pformat+0x1a0>
   140004bd1:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   140004bd5:	83 4c 24 78 40       	orl    $0x40,0x78(%rsp)
   140004bda:	48 89 ee             	mov    %rbp,%rsi
   140004bdd:	e9 55 fc ff ff       	jmp    140004837 <__mingw_pformat+0x1a7>
   140004be2:	45 85 f6             	test   %r14d,%r14d
   140004be5:	0f 85 45 fc ff ff    	jne    140004830 <__mingw_pformat+0x1a0>
   140004beb:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   140004bef:	81 4c 24 78 00 04 00 	orl    $0x400,0x78(%rsp)
   140004bf6:	00 
   140004bf7:	48 89 ee             	mov    %rbp,%rsi
   140004bfa:	e9 38 fc ff ff       	jmp    140004837 <__mingw_pformat+0x1a7>
   140004bff:	41 83 fe 01          	cmp    $0x1,%r14d
   140004c03:	0f 86 0b 04 00 00    	jbe    140005014 <__mingw_pformat+0x984>
   140004c09:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   140004c0d:	41 be 04 00 00 00    	mov    $0x4,%r14d
   140004c13:	48 89 ee             	mov    %rbp,%rsi
   140004c16:	e9 1c fc ff ff       	jmp    140004837 <__mingw_pformat+0x1a7>
   140004c1b:	45 85 f6             	test   %r14d,%r14d
   140004c1e:	0f 85 16 03 00 00    	jne    140004f3a <__mingw_pformat+0x8aa>
   140004c24:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   140004c28:	81 4c 24 78 00 02 00 	orl    $0x200,0x78(%rsp)
   140004c2f:	00 
   140004c30:	48 89 ee             	mov    %rbp,%rsi
   140004c33:	e9 ff fb ff ff       	jmp    140004837 <__mingw_pformat+0x1a7>
   140004c38:	8b 44 24 78          	mov    0x78(%rsp),%eax
   140004c3c:	49 8b 4d 00          	mov    0x0(%r13),%rcx
   140004c40:	a8 04                	test   $0x4,%al
   140004c42:	0f 85 06 fe ff ff    	jne    140004a4e <__mingw_pformat+0x3be>
   140004c48:	49 89 c8             	mov    %rcx,%r8
   140004c4b:	89 ca                	mov    %ecx,%edx
   140004c4d:	49 c1 e8 20          	shr    $0x20,%r8
   140004c51:	f7 da                	neg    %edx
   140004c53:	45 89 c1             	mov    %r8d,%r9d
   140004c56:	09 ca                	or     %ecx,%edx
   140004c58:	41 81 e1 ff ff ff 7f 	and    $0x7fffffff,%r9d
   140004c5f:	c1 ea 1f             	shr    $0x1f,%edx
   140004c62:	44 09 ca             	or     %r9d,%edx
   140004c65:	41 b9 00 00 f0 7f    	mov    $0x7ff00000,%r9d
   140004c6b:	41 39 d1             	cmp    %edx,%r9d
   140004c6e:	0f 88 e7 02 00 00    	js     140004f5b <__mingw_pformat+0x8cb>
   140004c74:	48 89 4c 24 20       	mov    %rcx,0x20(%rsp)
   140004c79:	dd 44 24 20          	fldl   0x20(%rsp)
   140004c7d:	db 7c 24 20          	fstpt  0x20(%rsp)
   140004c81:	48 8b 54 24 28       	mov    0x28(%rsp),%rdx
   140004c86:	66 85 d2             	test   %dx,%dx
   140004c89:	79 06                	jns    140004c91 <__mingw_pformat+0x601>
   140004c8b:	0c 80                	or     $0x80,%al
   140004c8d:	89 44 24 78          	mov    %eax,0x78(%rsp)
   140004c91:	44 89 c0             	mov    %r8d,%eax
   140004c94:	41 81 e0 00 00 f0 7f 	and    $0x7ff00000,%r8d
   140004c9b:	25 ff ff 0f 00       	and    $0xfffff,%eax
   140004ca0:	09 c8                	or     %ecx,%eax
   140004ca2:	0f 95 c1             	setne  %cl
   140004ca5:	41 81 f8 00 00 f0 7f 	cmp    $0x7ff00000,%r8d
   140004cac:	41 0f 95 c1          	setne  %r9b
   140004cb0:	44 08 c9             	or     %r9b,%cl
   140004cb3:	0f 85 f6 01 00 00    	jne    140004eaf <__mingw_pformat+0x81f>
   140004cb9:	44 09 c0             	or     %r8d,%eax
   140004cbc:	0f 84 ed 01 00 00    	je     140004eaf <__mingw_pformat+0x81f>
   140004cc2:	89 d1                	mov    %edx,%ecx
   140004cc4:	4c 8d 44 24 70       	lea    0x70(%rsp),%r8
   140004cc9:	48 8d 15 da 57 00 00 	lea    0x57da(%rip),%rdx        # 14000a4aa <.rdata+0x1a>
   140004cd0:	81 e1 00 80 00 00    	and    $0x8000,%ecx
   140004cd6:	e8 35 e3 ff ff       	call   140003010 <__pformat_emit_inf_or_nan>
   140004cdb:	e9 80 fe ff ff       	jmp    140004b60 <__mingw_pformat+0x4d0>
   140004ce0:	c7 84 24 80 00 00 00 	movl   $0xffffffff,0x80(%rsp)
   140004ce7:	ff ff ff ff 
   140004ceb:	49 8d 5d 08          	lea    0x8(%r13),%rbx
   140004cef:	41 8b 45 00          	mov    0x0(%r13),%eax
   140004cf3:	48 8d 4c 24 60       	lea    0x60(%rsp),%rcx
   140004cf8:	4c 8d 44 24 70       	lea    0x70(%rsp),%r8
   140004cfd:	49 89 dd             	mov    %rbx,%r13
   140004d00:	ba 01 00 00 00       	mov    $0x1,%edx
   140004d05:	48 89 eb             	mov    %rbp,%rbx
   140004d08:	66 89 44 24 60       	mov    %ax,0x60(%rsp)
   140004d0d:	e8 ce df ff ff       	call   140002ce0 <__pformat_wputchars>
   140004d12:	e9 65 fa ff ff       	jmp    14000477c <__mingw_pformat+0xec>
   140004d17:	8b 44 24 78          	mov    0x78(%rsp),%eax
   140004d1b:	49 8b 55 00          	mov    0x0(%r13),%rdx
   140004d1f:	a8 04                	test   $0x4,%al
   140004d21:	0f 85 8a fe ff ff    	jne    140004bb1 <__mingw_pformat+0x521>
   140004d27:	48 89 54 24 20       	mov    %rdx,0x20(%rsp)
   140004d2c:	dd 44 24 20          	fldl   0x20(%rsp)
   140004d30:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
   140004d35:	48 8d 4c 24 40       	lea    0x40(%rsp),%rcx
   140004d3a:	db 7c 24 40          	fstpt  0x40(%rsp)
   140004d3e:	e8 ad f1 ff ff       	call   140003ef0 <__pformat_efloat>
   140004d43:	e9 18 fe ff ff       	jmp    140004b60 <__mingw_pformat+0x4d0>
   140004d48:	8b 44 24 78          	mov    0x78(%rsp),%eax
   140004d4c:	49 8b 55 00          	mov    0x0(%r13),%rdx
   140004d50:	a8 04                	test   $0x4,%al
   140004d52:	0f 85 2b fe ff ff    	jne    140004b83 <__mingw_pformat+0x4f3>
   140004d58:	48 89 54 24 20       	mov    %rdx,0x20(%rsp)
   140004d5d:	dd 44 24 20          	fldl   0x20(%rsp)
   140004d61:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
   140004d66:	48 8d 4c 24 40       	lea    0x40(%rsp),%rcx
   140004d6b:	db 7c 24 40          	fstpt  0x40(%rsp)
   140004d6f:	e8 1c f2 ff ff       	call   140003f90 <__pformat_float>
   140004d74:	e9 e7 fd ff ff       	jmp    140004b60 <__mingw_pformat+0x4d0>
   140004d79:	8b 44 24 78          	mov    0x78(%rsp),%eax
   140004d7d:	49 8b 55 00          	mov    0x0(%r13),%rdx
   140004d81:	a8 04                	test   $0x4,%al
   140004d83:	0f 85 c2 fd ff ff    	jne    140004b4b <__mingw_pformat+0x4bb>
   140004d89:	48 89 54 24 20       	mov    %rdx,0x20(%rsp)
   140004d8e:	dd 44 24 20          	fldl   0x20(%rsp)
   140004d92:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
   140004d97:	48 8d 4c 24 40       	lea    0x40(%rsp),%rcx
   140004d9c:	db 7c 24 40          	fstpt  0x40(%rsp)
   140004da0:	e8 cb f2 ff ff       	call   140004070 <__pformat_gfloat>
   140004da5:	e9 b6 fd ff ff       	jmp    140004b60 <__mingw_pformat+0x4d0>
   140004daa:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
   140004daf:	b9 25 00 00 00       	mov    $0x25,%ecx
   140004db4:	48 89 eb             	mov    %rbp,%rbx
   140004db7:	e8 c4 de ff ff       	call   140002c80 <__pformat_putc>
   140004dbc:	e9 bb f9 ff ff       	jmp    14000477c <__mingw_pformat+0xec>
   140004dc1:	45 85 f6             	test   %r14d,%r14d
   140004dc4:	0f 85 66 fa ff ff    	jne    140004830 <__mingw_pformat+0x1a0>
   140004dca:	4c 8d 4c 24 60       	lea    0x60(%rsp),%r9
   140004dcf:	4c 89 5c 24 38       	mov    %r11,0x38(%rsp)
   140004dd4:	44 89 54 24 34       	mov    %r10d,0x34(%rsp)
   140004dd9:	81 4c 24 78 00 10 00 	orl    $0x1000,0x78(%rsp)
   140004de0:	00 
   140004de1:	4c 89 4c 24 20       	mov    %r9,0x20(%rsp)
   140004de6:	c7 44 24 60 00 00 00 	movl   $0x0,0x60(%rsp)
   140004ded:	00 
   140004dee:	e8 b5 32 00 00       	call   1400080a8 <localeconv>
   140004df3:	4c 8b 4c 24 20       	mov    0x20(%rsp),%r9
   140004df8:	48 8d 4c 24 5e       	lea    0x5e(%rsp),%rcx
   140004dfd:	41 b8 10 00 00 00    	mov    $0x10,%r8d
   140004e03:	48 8b 50 08          	mov    0x8(%rax),%rdx
   140004e07:	e8 14 30 00 00       	call   140007e20 <mbrtowc>
   140004e0c:	44 8b 54 24 34       	mov    0x34(%rsp),%r10d
   140004e11:	4c 8b 5c 24 38       	mov    0x38(%rsp),%r11
   140004e16:	85 c0                	test   %eax,%eax
   140004e18:	7e 0d                	jle    140004e27 <__mingw_pformat+0x797>
   140004e1a:	0f b7 54 24 5e       	movzwl 0x5e(%rsp),%edx
   140004e1f:	66 89 94 24 90 00 00 	mov    %dx,0x90(%rsp)
   140004e26:	00 
   140004e27:	89 84 24 8c 00 00 00 	mov    %eax,0x8c(%rsp)
   140004e2e:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   140004e32:	48 89 ee             	mov    %rbp,%rsi
   140004e35:	e9 fd f9 ff ff       	jmp    140004837 <__mingw_pformat+0x1a7>
   140004e3a:	4d 85 db             	test   %r11,%r11
   140004e3d:	0f 84 c6 fd ff ff    	je     140004c09 <__mingw_pformat+0x579>
   140004e43:	41 f7 c6 fd ff ff ff 	test   $0xfffffffd,%r14d
   140004e4a:	0f 85 23 01 00 00    	jne    140004f73 <__mingw_pformat+0x8e3>
   140004e50:	41 8b 45 00          	mov    0x0(%r13),%eax
   140004e54:	49 8d 55 08          	lea    0x8(%r13),%rdx
   140004e58:	41 89 03             	mov    %eax,(%r11)
   140004e5b:	85 c0                	test   %eax,%eax
   140004e5d:	0f 88 83 02 00 00    	js     1400050e6 <__mingw_pformat+0xa56>
   140004e63:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   140004e67:	49 89 d5             	mov    %rdx,%r13
   140004e6a:	48 89 ee             	mov    %rbp,%rsi
   140004e6d:	45 31 db             	xor    %r11d,%r11d
   140004e70:	e9 c2 f9 ff ff       	jmp    140004837 <__mingw_pformat+0x1a7>
   140004e75:	45 85 f6             	test   %r14d,%r14d
   140004e78:	0f 85 b2 f9 ff ff    	jne    140004830 <__mingw_pformat+0x1a0>
   140004e7e:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   140004e82:	81 4c 24 78 00 01 00 	orl    $0x100,0x78(%rsp)
   140004e89:	00 
   140004e8a:	48 89 ee             	mov    %rbp,%rsi
   140004e8d:	e9 a5 f9 ff ff       	jmp    140004837 <__mingw_pformat+0x1a7>
   140004e92:	45 85 f6             	test   %r14d,%r14d
   140004e95:	0f 85 95 f9 ff ff    	jne    140004830 <__mingw_pformat+0x1a0>
   140004e9b:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   140004e9f:	81 4c 24 78 00 08 00 	orl    $0x800,0x78(%rsp)
   140004ea6:	00 
   140004ea7:	48 89 ee             	mov    %rbp,%rsi
   140004eaa:	e9 88 f9 ff ff       	jmp    140004837 <__mingw_pformat+0x1a7>
   140004eaf:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   140004eb4:	66 81 e2 ff 7f       	and    $0x7fff,%dx
   140004eb9:	0f 84 1a 01 00 00    	je     140004fd9 <__mingw_pformat+0x949>
   140004ebf:	66 81 fa 00 3c       	cmp    $0x3c00,%dx
   140004ec4:	0f 8f 06 01 00 00    	jg     140004fd0 <__mingw_pformat+0x940>
   140004eca:	44 0f bf c2          	movswl %dx,%r8d
   140004ece:	b9 01 3c 00 00       	mov    $0x3c01,%ecx
   140004ed3:	44 29 c1             	sub    %r8d,%ecx
   140004ed6:	48 d3 e8             	shr    %cl,%rax
   140004ed9:	01 ca                	add    %ecx,%edx
   140004edb:	66 81 ea fc 3f       	sub    $0x3ffc,%dx
   140004ee0:	48 c1 e8 03          	shr    $0x3,%rax
   140004ee4:	48 89 c1             	mov    %rax,%rcx
   140004ee7:	4c 8d 44 24 70       	lea    0x70(%rsp),%r8
   140004eec:	e8 ff f2 ff ff       	call   1400041f0 <__pformat_emit_xfloat.isra.0>
   140004ef1:	e9 6a fc ff ff       	jmp    140004b60 <__mingw_pformat+0x4d0>
   140004ef6:	49 8d 5d 08          	lea    0x8(%r13),%rbx
   140004efa:	49 8b 75 00          	mov    0x0(%r13),%rsi
   140004efe:	48 8d 05 93 55 00 00 	lea    0x5593(%rip),%rax        # 14000a498 <.rdata+0x8>
   140004f05:	48 85 f6             	test   %rsi,%rsi
   140004f08:	48 0f 44 f0          	cmove  %rax,%rsi
   140004f0c:	8b 84 24 80 00 00 00 	mov    0x80(%rsp),%eax
   140004f13:	85 c0                	test   %eax,%eax
   140004f15:	0f 88 30 01 00 00    	js     14000504b <__mingw_pformat+0x9bb>
   140004f1b:	48 89 f1             	mov    %rsi,%rcx
   140004f1e:	48 63 d0             	movslq %eax,%rdx
   140004f21:	e8 6a 2a 00 00       	call   140007990 <wcsnlen>
   140004f26:	4c 8d 44 24 70       	lea    0x70(%rsp),%r8
   140004f2b:	48 89 f1             	mov    %rsi,%rcx
   140004f2e:	89 c2                	mov    %eax,%edx
   140004f30:	e8 ab dd ff ff       	call   140002ce0 <__pformat_wputchars>
   140004f35:	e9 ef fb ff ff       	jmp    140004b29 <__mingw_pformat+0x499>
   140004f3a:	41 83 fe 04          	cmp    $0x4,%r14d
   140004f3e:	0f 84 c3 fa ff ff    	je     140004a07 <__mingw_pformat+0x377>
   140004f44:	b9 30 00 00 00       	mov    $0x30,%ecx
   140004f49:	41 83 fe 02          	cmp    $0x2,%r14d
   140004f4d:	b8 03 00 00 00       	mov    $0x3,%eax
   140004f52:	44 0f 44 f0          	cmove  %eax,%r14d
   140004f56:	e9 b1 f8 ff ff       	jmp    14000480c <__mingw_pformat+0x17c>
   140004f5b:	4c 8d 44 24 70       	lea    0x70(%rsp),%r8
   140004f60:	48 8d 15 3f 55 00 00 	lea    0x553f(%rip),%rdx        # 14000a4a6 <.rdata+0x16>
   140004f67:	31 c9                	xor    %ecx,%ecx
   140004f69:	e8 a2 e0 ff ff       	call   140003010 <__pformat_emit_inf_or_nan>
   140004f6e:	e9 ed fb ff ff       	jmp    140004b60 <__mingw_pformat+0x4d0>
   140004f73:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   140004f77:	45 31 db             	xor    %r11d,%r11d
   140004f7a:	48 89 ee             	mov    %rbp,%rsi
   140004f7d:	41 be 04 00 00 00    	mov    $0x4,%r14d
   140004f83:	e9 af f8 ff ff       	jmp    140004837 <__mingw_pformat+0x1a7>
   140004f88:	48 85 c9             	test   %rcx,%rcx
   140004f8b:	b8 02 c0 ff ff       	mov    $0xffffc002,%eax
   140004f90:	0f 45 d0             	cmovne %eax,%edx
   140004f93:	e9 4f ff ff ff       	jmp    140004ee7 <__mingw_pformat+0x857>
   140004f98:	48 89 ee             	mov    %rbp,%rsi
   140004f9b:	41 ba 03 00 00 00    	mov    $0x3,%r10d
   140004fa1:	41 be 04 00 00 00    	mov    $0x4,%r14d
   140004fa7:	e9 8b f8 ff ff       	jmp    140004837 <__mingw_pformat+0x1a7>
   140004fac:	0c 80                	or     $0x80,%al
   140004fae:	89 44 24 78          	mov    %eax,0x78(%rsp)
   140004fb2:	e9 e9 fa ff ff       	jmp    140004aa0 <__mingw_pformat+0x410>
   140004fb7:	c7 84 24 80 00 00 00 	movl   $0x10,0x80(%rsp)
   140004fbe:	10 00 00 00 
   140004fc2:	89 f8                	mov    %edi,%eax
   140004fc4:	80 cc 02             	or     $0x2,%ah
   140004fc7:	89 44 24 78          	mov    %eax,0x78(%rsp)
   140004fcb:	e9 62 f9 ff ff       	jmp    140004932 <__mingw_pformat+0x2a2>
   140004fd0:	66 85 d2             	test   %dx,%dx
   140004fd3:	0f 85 02 ff ff ff    	jne    140004edb <__mingw_pformat+0x84b>
   140004fd9:	48 85 c0             	test   %rax,%rax
   140004fdc:	b9 05 fc ff ff       	mov    $0xfffffc05,%ecx
   140004fe1:	0f 45 d1             	cmovne %ecx,%edx
   140004fe4:	e9 f7 fe ff ff       	jmp    140004ee0 <__mingw_pformat+0x850>
   140004fe9:	48 0f bf c9          	movswq %cx,%rcx
   140004fed:	e9 1c f9 ff ff       	jmp    14000490e <__mingw_pformat+0x27e>
   140004ff2:	0f b7 c0             	movzwl %ax,%eax
   140004ff5:	e9 9d f8 ff ff       	jmp    140004897 <__mingw_pformat+0x207>
   140004ffa:	48 89 02             	mov    %rax,(%rdx)
   140004ffd:	e9 5e fb ff ff       	jmp    140004b60 <__mingw_pformat+0x4d0>
   140005002:	83 e9 30             	sub    $0x30,%ecx
   140005005:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   140005009:	48 89 ee             	mov    %rbp,%rsi
   14000500c:	41 89 0b             	mov    %ecx,(%r11)
   14000500f:	e9 23 f8 ff ff       	jmp    140004837 <__mingw_pformat+0x1a7>
   140005014:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   140005018:	41 be 02 00 00 00    	mov    $0x2,%r14d
   14000501e:	48 89 ee             	mov    %rbp,%rsi
   140005021:	c7 84 24 80 00 00 00 	movl   $0x0,0x80(%rsp)
   140005028:	00 00 00 00 
   14000502c:	4c 8d 9c 24 80 00 00 	lea    0x80(%rsp),%r11
   140005033:	00 
   140005034:	e9 fe f7 ff ff       	jmp    140004837 <__mingw_pformat+0x1a7>
   140005039:	49 8b 4d 00          	mov    0x0(%r13),%rcx
   14000503d:	e9 cc f8 ff ff       	jmp    14000490e <__mingw_pformat+0x27e>
   140005042:	49 8b 45 00          	mov    0x0(%r13),%rax
   140005046:	e9 4c f8 ff ff       	jmp    140004897 <__mingw_pformat+0x207>
   14000504b:	48 89 f1             	mov    %rsi,%rcx
   14000504e:	e8 9d 30 00 00       	call   1400080f0 <wcslen>
   140005053:	4c 8d 44 24 70       	lea    0x70(%rsp),%r8
   140005058:	48 89 f1             	mov    %rsi,%rcx
   14000505b:	89 c2                	mov    %eax,%edx
   14000505d:	e8 7e dc ff ff       	call   140002ce0 <__pformat_wputchars>
   140005062:	e9 c2 fa ff ff       	jmp    140004b29 <__mingw_pformat+0x499>
   140005067:	80 7e 02 34          	cmpb   $0x34,0x2(%rsi)
   14000506b:	0f 85 96 f9 ff ff    	jne    140004a07 <__mingw_pformat+0x377>
   140005071:	0f b6 46 03          	movzbl 0x3(%rsi),%eax
   140005075:	41 ba 03 00 00 00    	mov    $0x3,%r10d
   14000507b:	48 83 c6 03          	add    $0x3,%rsi
   14000507f:	41 be 04 00 00 00    	mov    $0x4,%r14d
   140005085:	e9 ad f7 ff ff       	jmp    140004837 <__mingw_pformat+0x1a7>
   14000508a:	88 02                	mov    %al,(%rdx)
   14000508c:	e9 cf fa ff ff       	jmp    140004b60 <__mingw_pformat+0x4d0>
   140005091:	0f b6 46 02          	movzbl 0x2(%rsi),%eax
   140005095:	41 ba 05 00 00 00    	mov    $0x5,%r10d
   14000509b:	48 83 c6 02          	add    $0x2,%rsi
   14000509f:	41 be 04 00 00 00    	mov    $0x4,%r14d
   1400050a5:	e9 8d f7 ff ff       	jmp    140004837 <__mingw_pformat+0x1a7>
   1400050aa:	0f b6 46 02          	movzbl 0x2(%rsi),%eax
   1400050ae:	41 ba 03 00 00 00    	mov    $0x3,%r10d
   1400050b4:	48 83 c6 02          	add    $0x2,%rsi
   1400050b8:	41 be 04 00 00 00    	mov    $0x4,%r14d
   1400050be:	e9 74 f7 ff ff       	jmp    140004837 <__mingw_pformat+0x1a7>
   1400050c3:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
   1400050c8:	48 89 c1             	mov    %rax,%rcx
   1400050cb:	e8 90 e4 ff ff       	call   140003560 <__pformat_int.isra.0>
   1400050d0:	e9 8b fa ff ff       	jmp    140004b60 <__mingw_pformat+0x4d0>
   1400050d5:	41 8b 45 00          	mov    0x0(%r13),%eax
   1400050d9:	e9 b9 f7 ff ff       	jmp    140004897 <__mingw_pformat+0x207>
   1400050de:	66 89 02             	mov    %ax,(%rdx)
   1400050e1:	e9 7a fa ff ff       	jmp    140004b60 <__mingw_pformat+0x4d0>
   1400050e6:	45 85 f6             	test   %r14d,%r14d
   1400050e9:	75 2a                	jne    140005115 <__mingw_pformat+0xa85>
   1400050eb:	81 4c 24 78 00 04 00 	orl    $0x400,0x78(%rsp)
   1400050f2:	00 
   1400050f3:	f7 5c 24 7c          	negl   0x7c(%rsp)
   1400050f7:	e9 67 fd ff ff       	jmp    140004e63 <__mingw_pformat+0x7d3>
   1400050fc:	0f b6 46 03          	movzbl 0x3(%rsi),%eax
   140005100:	41 ba 02 00 00 00    	mov    $0x2,%r10d
   140005106:	48 83 c6 03          	add    $0x3,%rsi
   14000510a:	41 be 04 00 00 00    	mov    $0x4,%r14d
   140005110:	e9 22 f7 ff ff       	jmp    140004837 <__mingw_pformat+0x1a7>
   140005115:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   140005119:	49 89 d5             	mov    %rdx,%r13
   14000511c:	48 89 ee             	mov    %rbp,%rsi
   14000511f:	45 31 db             	xor    %r11d,%r11d
   140005122:	c7 84 24 80 00 00 00 	movl   $0xffffffff,0x80(%rsp)
   140005129:	ff ff ff ff 
   14000512d:	41 be 02 00 00 00    	mov    $0x2,%r14d
   140005133:	e9 ff f6 ff ff       	jmp    140004837 <__mingw_pformat+0x1a7>
   140005138:	44 89 d1             	mov    %r10d,%ecx
   14000513b:	4c 8d 44 24 70       	lea    0x70(%rsp),%r8
   140005140:	48 8d 15 63 53 00 00 	lea    0x5363(%rip),%rdx        # 14000a4aa <.rdata+0x1a>
   140005147:	81 e1 00 80 00 00    	and    $0x8000,%ecx
   14000514d:	e8 be de ff ff       	call   140003010 <__pformat_emit_inf_or_nan>
   140005152:	e9 09 fa ff ff       	jmp    140004b60 <__mingw_pformat+0x4d0>
   140005157:	90                   	nop
   140005158:	90                   	nop
   140005159:	90                   	nop
   14000515a:	90                   	nop
   14000515b:	90                   	nop
   14000515c:	90                   	nop
   14000515d:	90                   	nop
   14000515e:	90                   	nop
   14000515f:	90                   	nop

0000000140005160 <__rv_alloc_D2A>:
   140005160:	53                   	push   %rbx
   140005161:	48 83 ec 20          	sub    $0x20,%rsp
   140005165:	31 db                	xor    %ebx,%ebx
   140005167:	83 f9 1b             	cmp    $0x1b,%ecx
   14000516a:	7e 18                	jle    140005184 <__rv_alloc_D2A+0x24>
   14000516c:	b8 04 00 00 00       	mov    $0x4,%eax
   140005171:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140005178:	01 c0                	add    %eax,%eax
   14000517a:	83 c3 01             	add    $0x1,%ebx
   14000517d:	8d 50 17             	lea    0x17(%rax),%edx
   140005180:	39 ca                	cmp    %ecx,%edx
   140005182:	7c f4                	jl     140005178 <__rv_alloc_D2A+0x18>
   140005184:	89 d9                	mov    %ebx,%ecx
   140005186:	e8 95 1c 00 00       	call   140006e20 <__Balloc_D2A>
   14000518b:	89 18                	mov    %ebx,(%rax)
   14000518d:	48 83 c0 04          	add    $0x4,%rax
   140005191:	48 83 c4 20          	add    $0x20,%rsp
   140005195:	5b                   	pop    %rbx
   140005196:	c3                   	ret
   140005197:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000519e:	00 00 

00000001400051a0 <__nrv_alloc_D2A>:
   1400051a0:	57                   	push   %rdi
   1400051a1:	56                   	push   %rsi
   1400051a2:	53                   	push   %rbx
   1400051a3:	48 83 ec 20          	sub    $0x20,%rsp
   1400051a7:	48 89 ce             	mov    %rcx,%rsi
   1400051aa:	48 89 d7             	mov    %rdx,%rdi
   1400051ad:	41 83 f8 1b          	cmp    $0x1b,%r8d
   1400051b1:	7e 65                	jle    140005218 <__nrv_alloc_D2A+0x78>
   1400051b3:	b8 04 00 00 00       	mov    $0x4,%eax
   1400051b8:	31 db                	xor    %ebx,%ebx
   1400051ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400051c0:	01 c0                	add    %eax,%eax
   1400051c2:	83 c3 01             	add    $0x1,%ebx
   1400051c5:	8d 50 17             	lea    0x17(%rax),%edx
   1400051c8:	41 39 d0             	cmp    %edx,%r8d
   1400051cb:	7f f3                	jg     1400051c0 <__nrv_alloc_D2A+0x20>
   1400051cd:	89 d9                	mov    %ebx,%ecx
   1400051cf:	e8 4c 1c 00 00       	call   140006e20 <__Balloc_D2A>
   1400051d4:	48 8d 56 01          	lea    0x1(%rsi),%rdx
   1400051d8:	89 18                	mov    %ebx,(%rax)
   1400051da:	0f b6 0e             	movzbl (%rsi),%ecx
   1400051dd:	4c 8d 40 04          	lea    0x4(%rax),%r8
   1400051e1:	88 48 04             	mov    %cl,0x4(%rax)
   1400051e4:	4c 89 c0             	mov    %r8,%rax
   1400051e7:	84 c9                	test   %cl,%cl
   1400051e9:	74 16                	je     140005201 <__nrv_alloc_D2A+0x61>
   1400051eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400051f0:	0f b6 0a             	movzbl (%rdx),%ecx
   1400051f3:	48 83 c0 01          	add    $0x1,%rax
   1400051f7:	48 83 c2 01          	add    $0x1,%rdx
   1400051fb:	88 08                	mov    %cl,(%rax)
   1400051fd:	84 c9                	test   %cl,%cl
   1400051ff:	75 ef                	jne    1400051f0 <__nrv_alloc_D2A+0x50>
   140005201:	48 85 ff             	test   %rdi,%rdi
   140005204:	74 03                	je     140005209 <__nrv_alloc_D2A+0x69>
   140005206:	48 89 07             	mov    %rax,(%rdi)
   140005209:	4c 89 c0             	mov    %r8,%rax
   14000520c:	48 83 c4 20          	add    $0x20,%rsp
   140005210:	5b                   	pop    %rbx
   140005211:	5e                   	pop    %rsi
   140005212:	5f                   	pop    %rdi
   140005213:	c3                   	ret
   140005214:	0f 1f 40 00          	nopl   0x0(%rax)
   140005218:	31 db                	xor    %ebx,%ebx
   14000521a:	eb b1                	jmp    1400051cd <__nrv_alloc_D2A+0x2d>
   14000521c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140005220 <__freedtoa>:
   140005220:	ba 01 00 00 00       	mov    $0x1,%edx
   140005225:	48 89 c8             	mov    %rcx,%rax
   140005228:	8b 49 fc             	mov    -0x4(%rcx),%ecx
   14000522b:	d3 e2                	shl    %cl,%edx
   14000522d:	66 0f 6e c1          	movd   %ecx,%xmm0
   140005231:	48 8d 48 fc          	lea    -0x4(%rax),%rcx
   140005235:	66 0f 6e ca          	movd   %edx,%xmm1
   140005239:	66 0f 62 c1          	punpckldq %xmm1,%xmm0
   14000523d:	66 0f d6 40 04       	movq   %xmm0,0x4(%rax)
   140005242:	e9 c9 1c 00 00       	jmp    140006f10 <__Bfree_D2A>
   140005247:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000524e:	00 00 

0000000140005250 <__quorem_D2A>:
   140005250:	41 57                	push   %r15
   140005252:	41 56                	push   %r14
   140005254:	41 55                	push   %r13
   140005256:	41 54                	push   %r12
   140005258:	55                   	push   %rbp
   140005259:	57                   	push   %rdi
   14000525a:	56                   	push   %rsi
   14000525b:	53                   	push   %rbx
   14000525c:	48 83 ec 38          	sub    $0x38,%rsp
   140005260:	31 c0                	xor    %eax,%eax
   140005262:	8b 72 14             	mov    0x14(%rdx),%esi
   140005265:	49 89 cc             	mov    %rcx,%r12
   140005268:	49 89 d3             	mov    %rdx,%r11
   14000526b:	39 71 14             	cmp    %esi,0x14(%rcx)
   14000526e:	0f 8c f0 00 00 00    	jl     140005364 <__quorem_D2A+0x114>
   140005274:	83 ee 01             	sub    $0x1,%esi
   140005277:	48 8d 5a 18          	lea    0x18(%rdx),%rbx
   14000527b:	48 8d 69 18          	lea    0x18(%rcx),%rbp
   14000527f:	31 d2                	xor    %edx,%edx
   140005281:	4c 63 d6             	movslq %esi,%r10
   140005284:	49 c1 e2 02          	shl    $0x2,%r10
   140005288:	4a 8d 3c 13          	lea    (%rbx,%r10,1),%rdi
   14000528c:	49 01 ea             	add    %rbp,%r10
   14000528f:	8b 07                	mov    (%rdi),%eax
   140005291:	45 8b 02             	mov    (%r10),%r8d
   140005294:	8d 48 01             	lea    0x1(%rax),%ecx
   140005297:	44 89 c0             	mov    %r8d,%eax
   14000529a:	f7 f1                	div    %ecx
   14000529c:	89 44 24 2c          	mov    %eax,0x2c(%rsp)
   1400052a0:	41 89 c5             	mov    %eax,%r13d
   1400052a3:	41 39 c8             	cmp    %ecx,%r8d
   1400052a6:	72 5e                	jb     140005306 <__quorem_D2A+0xb6>
   1400052a8:	41 89 c7             	mov    %eax,%r15d
   1400052ab:	49 89 d9             	mov    %rbx,%r9
   1400052ae:	49 89 e8             	mov    %rbp,%r8
   1400052b1:	45 31 f6             	xor    %r14d,%r14d
   1400052b4:	31 c9                	xor    %ecx,%ecx
   1400052b6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400052bd:	00 00 00 
   1400052c0:	41 8b 01             	mov    (%r9),%eax
   1400052c3:	41 8b 10             	mov    (%r8),%edx
   1400052c6:	49 83 c1 04          	add    $0x4,%r9
   1400052ca:	49 83 c0 04          	add    $0x4,%r8
   1400052ce:	49 0f af c7          	imul   %r15,%rax
   1400052d2:	4c 01 f0             	add    %r14,%rax
   1400052d5:	49 89 c6             	mov    %rax,%r14
   1400052d8:	89 c0                	mov    %eax,%eax
   1400052da:	48 29 c2             	sub    %rax,%rdx
   1400052dd:	49 c1 ee 20          	shr    $0x20,%r14
   1400052e1:	48 89 d0             	mov    %rdx,%rax
   1400052e4:	48 29 c8             	sub    %rcx,%rax
   1400052e7:	48 89 c1             	mov    %rax,%rcx
   1400052ea:	41 89 40 fc          	mov    %eax,-0x4(%r8)
   1400052ee:	48 c1 e9 20          	shr    $0x20,%rcx
   1400052f2:	83 e1 01             	and    $0x1,%ecx
   1400052f5:	4c 39 cf             	cmp    %r9,%rdi
   1400052f8:	73 c6                	jae    1400052c0 <__quorem_D2A+0x70>
   1400052fa:	45 8b 0a             	mov    (%r10),%r9d
   1400052fd:	45 85 c9             	test   %r9d,%r9d
   140005300:	0f 84 a5 00 00 00    	je     1400053ab <__quorem_D2A+0x15b>
   140005306:	4c 89 da             	mov    %r11,%rdx
   140005309:	4c 89 e1             	mov    %r12,%rcx
   14000530c:	e8 df 21 00 00       	call   1400074f0 <__cmp_D2A>
   140005311:	85 c0                	test   %eax,%eax
   140005313:	78 4b                	js     140005360 <__quorem_D2A+0x110>
   140005315:	48 89 e9             	mov    %rbp,%rcx
   140005318:	31 d2                	xor    %edx,%edx
   14000531a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140005320:	8b 01                	mov    (%rcx),%eax
   140005322:	44 8b 03             	mov    (%rbx),%r8d
   140005325:	48 83 c3 04          	add    $0x4,%rbx
   140005329:	48 83 c1 04          	add    $0x4,%rcx
   14000532d:	4c 29 c0             	sub    %r8,%rax
   140005330:	48 29 d0             	sub    %rdx,%rax
   140005333:	48 89 c2             	mov    %rax,%rdx
   140005336:	89 41 fc             	mov    %eax,-0x4(%rcx)
   140005339:	48 c1 ea 20          	shr    $0x20,%rdx
   14000533d:	83 e2 01             	and    $0x1,%edx
   140005340:	48 39 df             	cmp    %rbx,%rdi
   140005343:	73 db                	jae    140005320 <__quorem_D2A+0xd0>
   140005345:	48 63 c6             	movslq %esi,%rax
   140005348:	48 8d 44 85 00       	lea    0x0(%rbp,%rax,4),%rax
   14000534d:	8b 08                	mov    (%rax),%ecx
   14000534f:	85 c9                	test   %ecx,%ecx
   140005351:	74 2e                	je     140005381 <__quorem_D2A+0x131>
   140005353:	41 8d 45 01          	lea    0x1(%r13),%eax
   140005357:	89 44 24 2c          	mov    %eax,0x2c(%rsp)
   14000535b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140005360:	8b 44 24 2c          	mov    0x2c(%rsp),%eax
   140005364:	48 83 c4 38          	add    $0x38,%rsp
   140005368:	5b                   	pop    %rbx
   140005369:	5e                   	pop    %rsi
   14000536a:	5f                   	pop    %rdi
   14000536b:	5d                   	pop    %rbp
   14000536c:	41 5c                	pop    %r12
   14000536e:	41 5d                	pop    %r13
   140005370:	41 5e                	pop    %r14
   140005372:	41 5f                	pop    %r15
   140005374:	c3                   	ret
   140005375:	0f 1f 00             	nopl   (%rax)
   140005378:	8b 10                	mov    (%rax),%edx
   14000537a:	85 d2                	test   %edx,%edx
   14000537c:	75 0c                	jne    14000538a <__quorem_D2A+0x13a>
   14000537e:	83 ee 01             	sub    $0x1,%esi
   140005381:	48 83 e8 04          	sub    $0x4,%rax
   140005385:	48 39 c5             	cmp    %rax,%rbp
   140005388:	72 ee                	jb     140005378 <__quorem_D2A+0x128>
   14000538a:	41 8d 45 01          	lea    0x1(%r13),%eax
   14000538e:	41 89 74 24 14       	mov    %esi,0x14(%r12)
   140005393:	89 44 24 2c          	mov    %eax,0x2c(%rsp)
   140005397:	eb c7                	jmp    140005360 <__quorem_D2A+0x110>
   140005399:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400053a0:	45 8b 02             	mov    (%r10),%r8d
   1400053a3:	45 85 c0             	test   %r8d,%r8d
   1400053a6:	75 0c                	jne    1400053b4 <__quorem_D2A+0x164>
   1400053a8:	83 ee 01             	sub    $0x1,%esi
   1400053ab:	49 83 ea 04          	sub    $0x4,%r10
   1400053af:	4c 39 d5             	cmp    %r10,%rbp
   1400053b2:	72 ec                	jb     1400053a0 <__quorem_D2A+0x150>
   1400053b4:	41 89 74 24 14       	mov    %esi,0x14(%r12)
   1400053b9:	4c 89 da             	mov    %r11,%rdx
   1400053bc:	4c 89 e1             	mov    %r12,%rcx
   1400053bf:	e8 2c 21 00 00       	call   1400074f0 <__cmp_D2A>
   1400053c4:	85 c0                	test   %eax,%eax
   1400053c6:	0f 89 49 ff ff ff    	jns    140005315 <__quorem_D2A+0xc5>
   1400053cc:	eb 92                	jmp    140005360 <__quorem_D2A+0x110>
   1400053ce:	90                   	nop
   1400053cf:	90                   	nop

00000001400053d0 <__gdtoa>:
   1400053d0:	41 57                	push   %r15
   1400053d2:	41 56                	push   %r14
   1400053d4:	41 55                	push   %r13
   1400053d6:	41 54                	push   %r12
   1400053d8:	55                   	push   %rbp
   1400053d9:	57                   	push   %rdi
   1400053da:	56                   	push   %rsi
   1400053db:	53                   	push   %rbx
   1400053dc:	48 81 ec b8 00 00 00 	sub    $0xb8,%rsp
   1400053e3:	8b 84 24 28 01 00 00 	mov    0x128(%rsp),%eax
   1400053ea:	41 8b 29             	mov    (%r9),%ebp
   1400053ed:	8b bc 24 20 01 00 00 	mov    0x120(%rsp),%edi
   1400053f4:	89 44 24 38          	mov    %eax,0x38(%rsp)
   1400053f8:	48 8b 84 24 30 01 00 	mov    0x130(%rsp),%rax
   1400053ff:	00 
   140005400:	49 89 cd             	mov    %rcx,%r13
   140005403:	4c 89 c6             	mov    %r8,%rsi
   140005406:	89 54 24 30          	mov    %edx,0x30(%rsp)
   14000540a:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   14000540f:	48 8b 84 24 38 01 00 	mov    0x138(%rsp),%rax
   140005416:	00 
   140005417:	4c 89 4c 24 40       	mov    %r9,0x40(%rsp)
   14000541c:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   140005421:	89 e8                	mov    %ebp,%eax
   140005423:	83 e0 cf             	and    $0xffffffcf,%eax
   140005426:	41 89 01             	mov    %eax,(%r9)
   140005429:	89 e8                	mov    %ebp,%eax
   14000542b:	83 e0 07             	and    $0x7,%eax
   14000542e:	83 f8 03             	cmp    $0x3,%eax
   140005431:	0f 84 e1 02 00 00    	je     140005718 <__gdtoa+0x348>
   140005437:	89 eb                	mov    %ebp,%ebx
   140005439:	83 e3 04             	and    $0x4,%ebx
   14000543c:	89 5c 24 48          	mov    %ebx,0x48(%rsp)
   140005440:	0f 85 4a 02 00 00    	jne    140005690 <__gdtoa+0x2c0>
   140005446:	85 c0                	test   %eax,%eax
   140005448:	0f 84 8a 02 00 00    	je     1400056d8 <__gdtoa+0x308>
   14000544e:	44 8b 21             	mov    (%rcx),%r12d
   140005451:	b8 20 00 00 00       	mov    $0x20,%eax
   140005456:	31 c9                	xor    %ecx,%ecx
   140005458:	41 83 fc 20          	cmp    $0x20,%r12d
   14000545c:	7e 0a                	jle    140005468 <__gdtoa+0x98>
   14000545e:	01 c0                	add    %eax,%eax
   140005460:	83 c1 01             	add    $0x1,%ecx
   140005463:	41 39 c4             	cmp    %eax,%r12d
   140005466:	7f f6                	jg     14000545e <__gdtoa+0x8e>
   140005468:	e8 b3 19 00 00       	call   140006e20 <__Balloc_D2A>
   14000546d:	45 8d 44 24 ff       	lea    -0x1(%r12),%r8d
   140005472:	41 c1 f8 05          	sar    $0x5,%r8d
   140005476:	48 89 c3             	mov    %rax,%rbx
   140005479:	48 8d 50 18          	lea    0x18(%rax),%rdx
   14000547d:	48 89 f0             	mov    %rsi,%rax
   140005480:	4d 63 c0             	movslq %r8d,%r8
   140005483:	4a 8d 0c 86          	lea    (%rsi,%r8,4),%rcx
   140005487:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000548e:	00 00 
   140005490:	44 8b 08             	mov    (%rax),%r9d
   140005493:	48 83 c0 04          	add    $0x4,%rax
   140005497:	48 83 c2 04          	add    $0x4,%rdx
   14000549b:	44 89 4a fc          	mov    %r9d,-0x4(%rdx)
   14000549f:	48 39 c1             	cmp    %rax,%rcx
   1400054a2:	73 ec                	jae    140005490 <__gdtoa+0xc0>
   1400054a4:	48 8d 56 01          	lea    0x1(%rsi),%rdx
   1400054a8:	48 83 c1 01          	add    $0x1,%rcx
   1400054ac:	4a 8d 04 85 04 00 00 	lea    0x4(,%r8,4),%rax
   1400054b3:	00 
   1400054b4:	48 39 d1             	cmp    %rdx,%rcx
   1400054b7:	ba 04 00 00 00       	mov    $0x4,%edx
   1400054bc:	48 0f 42 c2          	cmovb  %rdx,%rax
   1400054c0:	48 c1 f8 02          	sar    $0x2,%rax
   1400054c4:	41 89 c6             	mov    %eax,%r14d
   1400054c7:	48 8d 04 83          	lea    (%rbx,%rax,4),%rax
   1400054cb:	eb 10                	jmp    1400054dd <__gdtoa+0x10d>
   1400054cd:	0f 1f 00             	nopl   (%rax)
   1400054d0:	48 83 e8 04          	sub    $0x4,%rax
   1400054d4:	45 85 f6             	test   %r14d,%r14d
   1400054d7:	0f 84 63 02 00 00    	je     140005740 <__gdtoa+0x370>
   1400054dd:	44 8b 78 14          	mov    0x14(%rax),%r15d
   1400054e1:	44 89 f2             	mov    %r14d,%edx
   1400054e4:	41 83 ee 01          	sub    $0x1,%r14d
   1400054e8:	45 85 ff             	test   %r15d,%r15d
   1400054eb:	74 e3                	je     1400054d0 <__gdtoa+0x100>
   1400054ed:	4d 63 f6             	movslq %r14d,%r14
   1400054f0:	89 53 14             	mov    %edx,0x14(%rbx)
   1400054f3:	c1 e2 05             	shl    $0x5,%edx
   1400054f6:	42 0f bd 44 b3 18    	bsr    0x18(%rbx,%r14,4),%eax
   1400054fc:	83 f0 1f             	xor    $0x1f,%eax
   1400054ff:	29 c2                	sub    %eax,%edx
   140005501:	41 89 d6             	mov    %edx,%r14d
   140005504:	48 89 d9             	mov    %rbx,%rcx
   140005507:	e8 a4 17 00 00       	call   140006cb0 <__trailz_D2A>
   14000550c:	8b 4c 24 30          	mov    0x30(%rsp),%ecx
   140005510:	89 84 24 ac 00 00 00 	mov    %eax,0xac(%rsp)
   140005517:	89 4c 24 60          	mov    %ecx,0x60(%rsp)
   14000551b:	85 c0                	test   %eax,%eax
   14000551d:	0f 85 2d 02 00 00    	jne    140005750 <__gdtoa+0x380>
   140005523:	44 8b 5b 14          	mov    0x14(%rbx),%r11d
   140005527:	45 85 db             	test   %r11d,%r11d
   14000552a:	0f 84 a0 01 00 00    	je     1400056d0 <__gdtoa+0x300>
   140005530:	48 8d 94 24 ac 00 00 	lea    0xac(%rsp),%rdx
   140005537:	00 
   140005538:	48 89 d9             	mov    %rbx,%rcx
   14000553b:	e8 e0 21 00 00       	call   140007720 <__b2d_D2A>
   140005540:	8b 44 24 60          	mov    0x60(%rsp),%eax
   140005544:	66 0f ef c9          	pxor   %xmm1,%xmm1
   140005548:	66 49 0f 7e c1       	movq   %xmm0,%r9
   14000554d:	4c 89 ca             	mov    %r9,%rdx
   140005550:	46 8d 04 30          	lea    (%rax,%r14,1),%r8d
   140005554:	44 89 c8             	mov    %r9d,%eax
   140005557:	48 c1 ea 20          	shr    $0x20,%rdx
   14000555b:	41 8d 48 ff          	lea    -0x1(%r8),%ecx
   14000555f:	81 e2 ff ff 0f 00    	and    $0xfffff,%edx
   140005565:	f2 0f 2a c9          	cvtsi2sd %ecx,%xmm1
   140005569:	f2 0f 59 0d d7 50 00 	mulsd  0x50d7(%rip),%xmm1        # 14000a648 <.rdata+0x28>
   140005570:	00 
   140005571:	81 ca 00 00 f0 3f    	or     $0x3ff00000,%edx
   140005577:	49 89 d2             	mov    %rdx,%r10
   14000557a:	49 c1 e2 20          	shl    $0x20,%r10
   14000557e:	4c 09 d0             	or     %r10,%rax
   140005581:	41 ba 01 00 00 00    	mov    $0x1,%r10d
   140005587:	45 29 c2             	sub    %r8d,%r10d
   14000558a:	66 48 0f 6e c0       	movq   %rax,%xmm0
   14000558f:	85 c9                	test   %ecx,%ecx
   140005591:	f2 0f 5c 05 97 50 00 	subsd  0x5097(%rip),%xmm0        # 14000a630 <.rdata+0x10>
   140005598:	00 
   140005599:	f2 0f 59 05 97 50 00 	mulsd  0x5097(%rip),%xmm0        # 14000a638 <.rdata+0x18>
   1400055a0:	00 
   1400055a1:	44 0f 49 d1          	cmovns %ecx,%r10d
   1400055a5:	f2 0f 58 05 93 50 00 	addsd  0x5093(%rip),%xmm0        # 14000a640 <.rdata+0x20>
   1400055ac:	00 
   1400055ad:	41 81 ea 35 04 00 00 	sub    $0x435,%r10d
   1400055b4:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
   1400055b8:	45 85 d2             	test   %r10d,%r10d
   1400055bb:	7e 15                	jle    1400055d2 <__gdtoa+0x202>
   1400055bd:	66 0f ef c9          	pxor   %xmm1,%xmm1
   1400055c1:	f2 41 0f 2a ca       	cvtsi2sd %r10d,%xmm1
   1400055c6:	f2 0f 59 0d 82 50 00 	mulsd  0x5082(%rip),%xmm1        # 14000a650 <.rdata+0x30>
   1400055cd:	00 
   1400055ce:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
   1400055d2:	66 0f ef c9          	pxor   %xmm1,%xmm1
   1400055d6:	f2 44 0f 2c d8       	cvttsd2si %xmm0,%r11d
   1400055db:	66 0f 2f c8          	comisd %xmm0,%xmm1
   1400055df:	0f 87 eb 04 00 00    	ja     140005ad0 <__gdtoa+0x700>
   1400055e5:	41 89 ca             	mov    %ecx,%r10d
   1400055e8:	89 c0                	mov    %eax,%eax
   1400055ea:	41 c1 e2 14          	shl    $0x14,%r10d
   1400055ee:	44 01 d2             	add    %r10d,%edx
   1400055f1:	89 d2                	mov    %edx,%edx
   1400055f3:	48 c1 e2 20          	shl    $0x20,%rdx
   1400055f7:	48 09 d0             	or     %rdx,%rax
   1400055fa:	48 89 84 24 90 00 00 	mov    %rax,0x90(%rsp)
   140005601:	00 
   140005602:	49 89 c7             	mov    %rax,%r15
   140005605:	49 89 c1             	mov    %rax,%r9
   140005608:	44 89 f0             	mov    %r14d,%eax
   14000560b:	29 c8                	sub    %ecx,%eax
   14000560d:	8d 50 ff             	lea    -0x1(%rax),%edx
   140005610:	89 54 24 5c          	mov    %edx,0x5c(%rsp)
   140005614:	41 83 fb 16          	cmp    $0x16,%r11d
   140005618:	0f 87 5a 01 00 00    	ja     140005778 <__gdtoa+0x3a8>
   14000561e:	48 8b 15 0b 53 00 00 	mov    0x530b(%rip),%rdx        # 14000a930 <.refptr.__tens_D2A>
   140005625:	49 63 cb             	movslq %r11d,%rcx
   140005628:	66 49 0f 6e ef       	movq   %r15,%xmm5
   14000562d:	f2 0f 10 04 ca       	movsd  (%rdx,%rcx,8),%xmm0
   140005632:	66 0f 2f c5          	comisd %xmm5,%xmm0
   140005636:	0f 87 14 05 00 00    	ja     140005b50 <__gdtoa+0x780>
   14000563c:	c7 84 24 84 00 00 00 	movl   $0x0,0x84(%rsp)
   140005643:	00 00 00 00 
   140005647:	c7 44 24 70 00 00 00 	movl   $0x0,0x70(%rsp)
   14000564e:	00 
   14000564f:	85 c0                	test   %eax,%eax
   140005651:	7f 1d                	jg     140005670 <__gdtoa+0x2a0>
   140005653:	ba 01 00 00 00       	mov    $0x1,%edx
   140005658:	c7 44 24 5c 00 00 00 	movl   $0x0,0x5c(%rsp)
   14000565f:	00 
   140005660:	29 c2                	sub    %eax,%edx
   140005662:	89 54 24 70          	mov    %edx,0x70(%rsp)
   140005666:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000566d:	00 00 00 
   140005670:	44 01 5c 24 5c       	add    %r11d,0x5c(%rsp)
   140005675:	44 89 5c 24 78       	mov    %r11d,0x78(%rsp)
   14000567a:	c7 84 24 80 00 00 00 	movl   $0x0,0x80(%rsp)
   140005681:	00 00 00 00 
   140005685:	e9 40 01 00 00       	jmp    1400057ca <__gdtoa+0x3fa>
   14000568a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140005690:	31 f6                	xor    %esi,%esi
   140005692:	83 f8 04             	cmp    $0x4,%eax
   140005695:	75 66                	jne    1400056fd <__gdtoa+0x32d>
   140005697:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   14000569c:	48 8b 54 24 28       	mov    0x28(%rsp),%rdx
   1400056a1:	41 b8 03 00 00 00    	mov    $0x3,%r8d
   1400056a7:	48 8d 0d 7b 4f 00 00 	lea    0x4f7b(%rip),%rcx        # 14000a629 <.rdata+0x9>
   1400056ae:	c7 00 00 80 ff ff    	movl   $0xffff8000,(%rax)
   1400056b4:	48 81 c4 b8 00 00 00 	add    $0xb8,%rsp
   1400056bb:	5b                   	pop    %rbx
   1400056bc:	5e                   	pop    %rsi
   1400056bd:	5f                   	pop    %rdi
   1400056be:	5d                   	pop    %rbp
   1400056bf:	41 5c                	pop    %r12
   1400056c1:	41 5d                	pop    %r13
   1400056c3:	41 5e                	pop    %r14
   1400056c5:	41 5f                	pop    %r15
   1400056c7:	e9 d4 fa ff ff       	jmp    1400051a0 <__nrv_alloc_D2A>
   1400056cc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400056d0:	48 89 d9             	mov    %rbx,%rcx
   1400056d3:	e8 38 18 00 00       	call   140006f10 <__Bfree_D2A>
   1400056d8:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   1400056dd:	48 8b 54 24 28       	mov    0x28(%rsp),%rdx
   1400056e2:	41 b8 01 00 00 00    	mov    $0x1,%r8d
   1400056e8:	48 8d 0d 3e 4f 00 00 	lea    0x4f3e(%rip),%rcx        # 14000a62d <.rdata+0xd>
   1400056ef:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   1400056f5:	e8 a6 fa ff ff       	call   1400051a0 <__nrv_alloc_D2A>
   1400056fa:	48 89 c6             	mov    %rax,%rsi
   1400056fd:	48 89 f0             	mov    %rsi,%rax
   140005700:	48 81 c4 b8 00 00 00 	add    $0xb8,%rsp
   140005707:	5b                   	pop    %rbx
   140005708:	5e                   	pop    %rsi
   140005709:	5f                   	pop    %rdi
   14000570a:	5d                   	pop    %rbp
   14000570b:	41 5c                	pop    %r12
   14000570d:	41 5d                	pop    %r13
   14000570f:	41 5e                	pop    %r14
   140005711:	41 5f                	pop    %r15
   140005713:	c3                   	ret
   140005714:	0f 1f 40 00          	nopl   0x0(%rax)
   140005718:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   14000571d:	48 8b 54 24 28       	mov    0x28(%rsp),%rdx
   140005722:	41 b8 08 00 00 00    	mov    $0x8,%r8d
   140005728:	48 8d 0d f1 4e 00 00 	lea    0x4ef1(%rip),%rcx        # 14000a620 <.rdata>
   14000572f:	c7 00 00 80 ff ff    	movl   $0xffff8000,(%rax)
   140005735:	e9 7a ff ff ff       	jmp    1400056b4 <__gdtoa+0x2e4>
   14000573a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140005740:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%rbx)
   140005747:	e9 b8 fd ff ff       	jmp    140005504 <__gdtoa+0x134>
   14000574c:	0f 1f 40 00          	nopl   0x0(%rax)
   140005750:	89 c2                	mov    %eax,%edx
   140005752:	48 89 d9             	mov    %rbx,%rcx
   140005755:	e8 56 14 00 00       	call   140006bb0 <__rshift_D2A>
   14000575a:	8b 84 24 ac 00 00 00 	mov    0xac(%rsp),%eax
   140005761:	8b 4c 24 30          	mov    0x30(%rsp),%ecx
   140005765:	01 c1                	add    %eax,%ecx
   140005767:	41 29 c6             	sub    %eax,%r14d
   14000576a:	89 4c 24 60          	mov    %ecx,0x60(%rsp)
   14000576e:	e9 b0 fd ff ff       	jmp    140005523 <__gdtoa+0x153>
   140005773:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140005778:	c7 84 24 84 00 00 00 	movl   $0x1,0x84(%rsp)
   14000577f:	01 00 00 00 
   140005783:	44 8b 54 24 5c       	mov    0x5c(%rsp),%r10d
   140005788:	c7 44 24 70 00 00 00 	movl   $0x0,0x70(%rsp)
   14000578f:	00 
   140005790:	45 85 d2             	test   %r10d,%r10d
   140005793:	79 13                	jns    1400057a8 <__gdtoa+0x3d8>
   140005795:	ba 01 00 00 00       	mov    $0x1,%edx
   14000579a:	c7 44 24 5c 00 00 00 	movl   $0x0,0x5c(%rsp)
   1400057a1:	00 
   1400057a2:	29 c2                	sub    %eax,%edx
   1400057a4:	89 54 24 70          	mov    %edx,0x70(%rsp)
   1400057a8:	45 85 db             	test   %r11d,%r11d
   1400057ab:	0f 89 bf fe ff ff    	jns    140005670 <__gdtoa+0x2a0>
   1400057b1:	44 89 d8             	mov    %r11d,%eax
   1400057b4:	44 29 5c 24 70       	sub    %r11d,0x70(%rsp)
   1400057b9:	f7 d8                	neg    %eax
   1400057bb:	44 89 5c 24 78       	mov    %r11d,0x78(%rsp)
   1400057c0:	45 31 db             	xor    %r11d,%r11d
   1400057c3:	89 84 24 80 00 00 00 	mov    %eax,0x80(%rsp)
   1400057ca:	83 ff 09             	cmp    $0x9,%edi
   1400057cd:	0f 87 6d 02 00 00    	ja     140005a40 <__gdtoa+0x670>
   1400057d3:	83 ff 05             	cmp    $0x5,%edi
   1400057d6:	0f 8f 14 03 00 00    	jg     140005af0 <__gdtoa+0x720>
   1400057dc:	41 81 c0 fd 03 00 00 	add    $0x3fd,%r8d
   1400057e3:	31 c0                	xor    %eax,%eax
   1400057e5:	41 81 f8 f7 07 00 00 	cmp    $0x7f7,%r8d
   1400057ec:	0f 96 c0             	setbe  %al
   1400057ef:	41 89 c7             	mov    %eax,%r15d
   1400057f2:	83 ff 04             	cmp    $0x4,%edi
   1400057f5:	0f 84 49 0d 00 00    	je     140006544 <__gdtoa+0x1174>
   1400057fb:	83 ff 05             	cmp    $0x5,%edi
   1400057fe:	0f 84 a4 0b 00 00    	je     1400063a8 <__gdtoa+0xfd8>
   140005804:	83 ff 02             	cmp    $0x2,%edi
   140005807:	0f 85 f3 06 00 00    	jne    140005f00 <__gdtoa+0xb30>
   14000580d:	c7 44 24 7c 00 00 00 	movl   $0x0,0x7c(%rsp)
   140005814:	00 
   140005815:	8b 44 24 38          	mov    0x38(%rsp),%eax
   140005819:	b9 01 00 00 00       	mov    $0x1,%ecx
   14000581e:	85 c0                	test   %eax,%eax
   140005820:	0f 4f c8             	cmovg  %eax,%ecx
   140005823:	89 8c 24 9c 00 00 00 	mov    %ecx,0x9c(%rsp)
   14000582a:	89 c8                	mov    %ecx,%eax
   14000582c:	89 4c 24 50          	mov    %ecx,0x50(%rsp)
   140005830:	89 4c 24 38          	mov    %ecx,0x38(%rsp)
   140005834:	4c 89 8c 24 88 00 00 	mov    %r9,0x88(%rsp)
   14000583b:	00 
   14000583c:	44 89 9c 24 98 00 00 	mov    %r11d,0x98(%rsp)
   140005843:	00 
   140005844:	89 84 24 ac 00 00 00 	mov    %eax,0xac(%rsp)
   14000584b:	e8 10 f9 ff ff       	call   140005160 <__rv_alloc_D2A>
   140005850:	44 8b 9c 24 98 00 00 	mov    0x98(%rsp),%r11d
   140005857:	00 
   140005858:	4c 8b 8c 24 88 00 00 	mov    0x88(%rsp),%r9
   14000585f:	00 
   140005860:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
   140005865:	41 8b 45 0c          	mov    0xc(%r13),%eax
   140005869:	83 e8 01             	sub    $0x1,%eax
   14000586c:	89 44 24 58          	mov    %eax,0x58(%rsp)
   140005870:	74 28                	je     14000589a <__gdtoa+0x4ca>
   140005872:	8b 4c 24 58          	mov    0x58(%rsp),%ecx
   140005876:	b8 02 00 00 00       	mov    $0x2,%eax
   14000587b:	85 c9                	test   %ecx,%ecx
   14000587d:	0f 49 c1             	cmovns %ecx,%eax
   140005880:	83 e5 08             	and    $0x8,%ebp
   140005883:	89 44 24 58          	mov    %eax,0x58(%rsp)
   140005887:	89 c1                	mov    %eax,%ecx
   140005889:	0f 84 31 04 00 00    	je     140005cc0 <__gdtoa+0x8f0>
   14000588f:	b8 03 00 00 00       	mov    $0x3,%eax
   140005894:	29 c8                	sub    %ecx,%eax
   140005896:	89 44 24 58          	mov    %eax,0x58(%rsp)
   14000589a:	8b 54 24 50          	mov    0x50(%rsp),%edx
   14000589e:	45 89 fa             	mov    %r15d,%r10d
   1400058a1:	83 fa 0e             	cmp    $0xe,%edx
   1400058a4:	0f 96 c0             	setbe  %al
   1400058a7:	41 20 c2             	and    %al,%r10b
   1400058aa:	0f 84 10 04 00 00    	je     140005cc0 <__gdtoa+0x8f0>
   1400058b0:	8b 44 24 78          	mov    0x78(%rsp),%eax
   1400058b4:	0b 44 24 58          	or     0x58(%rsp),%eax
   1400058b8:	0f 85 02 04 00 00    	jne    140005cc0 <__gdtoa+0x8f0>
   1400058be:	f2 0f 10 84 24 90 00 	movsd  0x90(%rsp),%xmm0
   1400058c5:	00 00 
   1400058c7:	8b 8c 24 84 00 00 00 	mov    0x84(%rsp),%ecx
   1400058ce:	c7 84 24 ac 00 00 00 	movl   $0x0,0xac(%rsp)
   1400058d5:	00 00 00 00 
   1400058d9:	85 c9                	test   %ecx,%ecx
   1400058db:	74 12                	je     1400058ef <__gdtoa+0x51f>
   1400058dd:	f2 0f 10 25 7b 4d 00 	movsd  0x4d7b(%rip),%xmm4        # 14000a660 <.rdata+0x40>
   1400058e4:	00 
   1400058e5:	66 0f 2f e0          	comisd %xmm0,%xmm4
   1400058e9:	0f 87 cb 0e 00 00    	ja     1400067ba <__gdtoa+0x13ea>
   1400058ef:	66 0f 28 c8          	movapd %xmm0,%xmm1
   1400058f3:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
   1400058f7:	f2 0f 58 0d 79 4d 00 	addsd  0x4d79(%rip),%xmm1        # 14000a678 <.rdata+0x58>
   1400058fe:	00 
   1400058ff:	66 48 0f 7e c8       	movq   %xmm1,%rax
   140005904:	48 89 c2             	mov    %rax,%rdx
   140005907:	89 c0                	mov    %eax,%eax
   140005909:	48 c1 ea 20          	shr    $0x20,%rdx
   14000590d:	81 ea 00 00 40 03    	sub    $0x3400000,%edx
   140005913:	48 c1 e2 20          	shl    $0x20,%rdx
   140005917:	48 09 d0             	or     %rdx,%rax
   14000591a:	8b 54 24 50          	mov    0x50(%rsp),%edx
   14000591e:	85 d2                	test   %edx,%edx
   140005920:	0f 84 5f 03 00 00    	je     140005c85 <__gdtoa+0x8b5>
   140005926:	8b 6c 24 50          	mov    0x50(%rsp),%ebp
   14000592a:	45 31 ff             	xor    %r15d,%r15d
   14000592d:	48 8b 15 fc 4f 00 00 	mov    0x4ffc(%rip),%rdx        # 14000a930 <.refptr.__tens_D2A>
   140005934:	66 48 0f 6e d0       	movq   %rax,%xmm2
   140005939:	8d 45 ff             	lea    -0x1(%rbp),%eax
   14000593c:	48 98                	cltq
   14000593e:	f2 0f 10 1c c2       	movsd  (%rdx,%rax,8),%xmm3
   140005943:	8b 44 24 7c          	mov    0x7c(%rsp),%eax
   140005947:	85 c0                	test   %eax,%eax
   140005949:	0f 84 e6 05 00 00    	je     140005f35 <__gdtoa+0xb65>
   14000594f:	f2 0f 10 0d 49 4d 00 	movsd  0x4d49(%rip),%xmm1        # 14000a6a0 <.rdata+0x80>
   140005956:	00 
   140005957:	f2 0f 2c c0          	cvttsd2si %xmm0,%eax
   14000595b:	48 8b 4c 24 68       	mov    0x68(%rsp),%rcx
   140005960:	f2 0f 5e cb          	divsd  %xmm3,%xmm1
   140005964:	48 8d 51 01          	lea    0x1(%rcx),%rdx
   140005968:	f2 0f 5c ca          	subsd  %xmm2,%xmm1
   14000596c:	66 0f ef d2          	pxor   %xmm2,%xmm2
   140005970:	f2 0f 2a d0          	cvtsi2sd %eax,%xmm2
   140005974:	83 c0 30             	add    $0x30,%eax
   140005977:	88 01                	mov    %al,(%rcx)
   140005979:	f2 0f 5c c2          	subsd  %xmm2,%xmm0
   14000597d:	66 0f 2f c8          	comisd %xmm0,%xmm1
   140005981:	0f 87 61 10 00 00    	ja     1400069e8 <__gdtoa+0x1618>
   140005987:	f2 0f 10 25 d1 4c 00 	movsd  0x4cd1(%rip),%xmm4        # 14000a660 <.rdata+0x40>
   14000598e:	00 
   14000598f:	f2 0f 10 1d d1 4c 00 	movsd  0x4cd1(%rip),%xmm3        # 14000a668 <.rdata+0x48>
   140005996:	00 
   140005997:	eb 4c                	jmp    1400059e5 <__gdtoa+0x615>
   140005999:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400059a0:	8b 84 24 ac 00 00 00 	mov    0xac(%rsp),%eax
   1400059a7:	83 c0 01             	add    $0x1,%eax
   1400059aa:	89 84 24 ac 00 00 00 	mov    %eax,0xac(%rsp)
   1400059b1:	39 e8                	cmp    %ebp,%eax
   1400059b3:	0f 8d f5 02 00 00    	jge    140005cae <__gdtoa+0x8de>
   1400059b9:	f2 0f 59 c3          	mulsd  %xmm3,%xmm0
   1400059bd:	66 0f ef d2          	pxor   %xmm2,%xmm2
   1400059c1:	48 83 c2 01          	add    $0x1,%rdx
   1400059c5:	f2 0f 59 cb          	mulsd  %xmm3,%xmm1
   1400059c9:	f2 0f 2c c0          	cvttsd2si %xmm0,%eax
   1400059cd:	f2 0f 2a d0          	cvtsi2sd %eax,%xmm2
   1400059d1:	83 c0 30             	add    $0x30,%eax
   1400059d4:	88 42 ff             	mov    %al,-0x1(%rdx)
   1400059d7:	f2 0f 5c c2          	subsd  %xmm2,%xmm0
   1400059db:	66 0f 2f c8          	comisd %xmm0,%xmm1
   1400059df:	0f 87 03 10 00 00    	ja     1400069e8 <__gdtoa+0x1618>
   1400059e5:	66 0f 28 d4          	movapd %xmm4,%xmm2
   1400059e9:	f2 0f 5c d0          	subsd  %xmm0,%xmm2
   1400059ed:	66 0f 2f ca          	comisd %xmm2,%xmm1
   1400059f1:	76 ad                	jbe    1400059a0 <__gdtoa+0x5d0>
   1400059f3:	44 0f b6 42 ff       	movzbl -0x1(%rdx),%r8d
   1400059f8:	48 8b 74 24 68       	mov    0x68(%rsp),%rsi
   1400059fd:	eb 12                	jmp    140005a11 <__gdtoa+0x641>
   1400059ff:	90                   	nop
   140005a00:	48 39 c6             	cmp    %rax,%rsi
   140005a03:	0f 84 b2 0e 00 00    	je     1400068bb <__gdtoa+0x14eb>
   140005a09:	44 0f b6 40 ff       	movzbl -0x1(%rax),%r8d
   140005a0e:	48 89 c2             	mov    %rax,%rdx
   140005a11:	48 8d 42 ff          	lea    -0x1(%rdx),%rax
   140005a15:	41 80 f8 39          	cmp    $0x39,%r8b
   140005a19:	74 e5                	je     140005a00 <__gdtoa+0x630>
   140005a1b:	48 89 54 24 68       	mov    %rdx,0x68(%rsp)
   140005a20:	41 83 c0 01          	add    $0x1,%r8d
   140005a24:	44 88 00             	mov    %r8b,(%rax)
   140005a27:	41 83 c7 01          	add    $0x1,%r15d
   140005a2b:	c7 44 24 48 20 00 00 	movl   $0x20,0x48(%rsp)
   140005a32:	00 
   140005a33:	e9 ed 01 00 00       	jmp    140005c25 <__gdtoa+0x855>
   140005a38:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140005a3f:	00 
   140005a40:	41 81 c0 fd 03 00 00 	add    $0x3fd,%r8d
   140005a47:	31 c0                	xor    %eax,%eax
   140005a49:	41 81 f8 f7 07 00 00 	cmp    $0x7f7,%r8d
   140005a50:	0f 96 c0             	setbe  %al
   140005a53:	31 ff                	xor    %edi,%edi
   140005a55:	41 89 c7             	mov    %eax,%r15d
   140005a58:	66 0f ef c0          	pxor   %xmm0,%xmm0
   140005a5c:	4c 89 4c 24 50       	mov    %r9,0x50(%rsp)
   140005a61:	f2 41 0f 2a c4       	cvtsi2sd %r12d,%xmm0
   140005a66:	f2 0f 59 05 ea 4b 00 	mulsd  0x4bea(%rip),%xmm0        # 14000a658 <.rdata+0x38>
   140005a6d:	00 
   140005a6e:	44 89 5c 24 38       	mov    %r11d,0x38(%rsp)
   140005a73:	f2 0f 2c c8          	cvttsd2si %xmm0,%ecx
   140005a77:	83 c1 03             	add    $0x3,%ecx
   140005a7a:	89 8c 24 ac 00 00 00 	mov    %ecx,0xac(%rsp)
   140005a81:	e8 da f6 ff ff       	call   140005160 <__rv_alloc_D2A>
   140005a86:	44 8b 5c 24 38       	mov    0x38(%rsp),%r11d
   140005a8b:	4c 8b 4c 24 50       	mov    0x50(%rsp),%r9
   140005a90:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
   140005a95:	41 8b 45 0c          	mov    0xc(%r13),%eax
   140005a99:	83 e8 01             	sub    $0x1,%eax
   140005a9c:	89 44 24 58          	mov    %eax,0x58(%rsp)
   140005aa0:	0f 84 be 00 00 00    	je     140005b64 <__gdtoa+0x794>
   140005aa6:	c7 44 24 38 00 00 00 	movl   $0x0,0x38(%rsp)
   140005aad:	00 
   140005aae:	c7 44 24 7c 01 00 00 	movl   $0x1,0x7c(%rsp)
   140005ab5:	00 
   140005ab6:	c7 84 24 9c 00 00 00 	movl   $0xffffffff,0x9c(%rsp)
   140005abd:	ff ff ff ff 
   140005ac1:	c7 44 24 50 ff ff ff 	movl   $0xffffffff,0x50(%rsp)
   140005ac8:	ff 
   140005ac9:	e9 a4 fd ff ff       	jmp    140005872 <__gdtoa+0x4a2>
   140005ace:	66 90                	xchg   %ax,%ax
   140005ad0:	66 0f ef c9          	pxor   %xmm1,%xmm1
   140005ad4:	f2 41 0f 2a cb       	cvtsi2sd %r11d,%xmm1
   140005ad9:	66 0f 2e c8          	ucomisd %xmm0,%xmm1
   140005add:	7a 06                	jp     140005ae5 <__gdtoa+0x715>
   140005adf:	0f 84 00 fb ff ff    	je     1400055e5 <__gdtoa+0x215>
   140005ae5:	41 83 eb 01          	sub    $0x1,%r11d
   140005ae9:	e9 f7 fa ff ff       	jmp    1400055e5 <__gdtoa+0x215>
   140005aee:	66 90                	xchg   %ax,%ax
   140005af0:	83 ef 04             	sub    $0x4,%edi
   140005af3:	45 31 ff             	xor    %r15d,%r15d
   140005af6:	83 ff 04             	cmp    $0x4,%edi
   140005af9:	0f 84 45 0a 00 00    	je     140006544 <__gdtoa+0x1174>
   140005aff:	83 ff 05             	cmp    $0x5,%edi
   140005b02:	0f 84 a0 08 00 00    	je     1400063a8 <__gdtoa+0xfd8>
   140005b08:	c7 44 24 7c 00 00 00 	movl   $0x0,0x7c(%rsp)
   140005b0f:	00 
   140005b10:	83 ff 02             	cmp    $0x2,%edi
   140005b13:	0f 84 fc fc ff ff    	je     140005815 <__gdtoa+0x445>
   140005b19:	bf 03 00 00 00       	mov    $0x3,%edi
   140005b1e:	66 90                	xchg   %ax,%ax
   140005b20:	8b 4c 24 38          	mov    0x38(%rsp),%ecx
   140005b24:	8b 44 24 78          	mov    0x78(%rsp),%eax
   140005b28:	01 c8                	add    %ecx,%eax
   140005b2a:	8d 50 01             	lea    0x1(%rax),%edx
   140005b2d:	89 84 24 9c 00 00 00 	mov    %eax,0x9c(%rsp)
   140005b34:	b8 01 00 00 00       	mov    $0x1,%eax
   140005b39:	85 d2                	test   %edx,%edx
   140005b3b:	89 54 24 50          	mov    %edx,0x50(%rsp)
   140005b3f:	0f 4f c2             	cmovg  %edx,%eax
   140005b42:	89 c1                	mov    %eax,%ecx
   140005b44:	e9 eb fc ff ff       	jmp    140005834 <__gdtoa+0x464>
   140005b49:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140005b50:	c7 84 24 84 00 00 00 	movl   $0x0,0x84(%rsp)
   140005b57:	00 00 00 00 
   140005b5b:	41 83 eb 01          	sub    $0x1,%r11d
   140005b5f:	e9 1f fc ff ff       	jmp    140005783 <__gdtoa+0x3b3>
   140005b64:	8b 44 24 60          	mov    0x60(%rsp),%eax
   140005b68:	c7 44 24 38 00 00 00 	movl   $0x0,0x38(%rsp)
   140005b6f:	00 
   140005b70:	c7 44 24 50 ff ff ff 	movl   $0xffffffff,0x50(%rsp)
   140005b77:	ff 
   140005b78:	85 c0                	test   %eax,%eax
   140005b7a:	0f 88 e4 0d 00 00    	js     140006964 <__gdtoa+0x1594>
   140005b80:	c7 44 24 7c 01 00 00 	movl   $0x1,0x7c(%rsp)
   140005b87:	00 
   140005b88:	c7 84 24 9c 00 00 00 	movl   $0xffffffff,0x9c(%rsp)
   140005b8f:	ff ff ff ff 
   140005b93:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140005b98:	8b 44 24 78          	mov    0x78(%rsp),%eax
   140005b9c:	41 3b 45 14          	cmp    0x14(%r13),%eax
   140005ba0:	0f 8f 28 01 00 00    	jg     140005cce <__gdtoa+0x8fe>
   140005ba6:	48 8b 15 83 4d 00 00 	mov    0x4d83(%rip),%rdx        # 14000a930 <.refptr.__tens_D2A>
   140005bad:	48 63 44 24 78       	movslq 0x78(%rsp),%rax
   140005bb2:	8b 4c 24 38          	mov    0x38(%rsp),%ecx
   140005bb6:	f2 0f 10 14 c2       	movsd  (%rdx,%rax,8),%xmm2
   140005bbb:	48 89 c6             	mov    %rax,%rsi
   140005bbe:	85 c9                	test   %ecx,%ecx
   140005bc0:	0f 89 96 08 00 00    	jns    14000645c <__gdtoa+0x108c>
   140005bc6:	8b 44 24 50          	mov    0x50(%rsp),%eax
   140005bca:	85 c0                	test   %eax,%eax
   140005bcc:	0f 8f 8a 08 00 00    	jg     14000645c <__gdtoa+0x108c>
   140005bd2:	0f 85 3e 03 00 00    	jne    140005f16 <__gdtoa+0xb46>
   140005bd8:	f2 0f 59 15 a0 4a 00 	mulsd  0x4aa0(%rip),%xmm2        # 14000a680 <.rdata+0x60>
   140005bdf:	00 
   140005be0:	66 0f 2f 94 24 90 00 	comisd 0x90(%rsp),%xmm2
   140005be7:	00 00 
   140005be9:	0f 83 27 03 00 00    	jae    140005f16 <__gdtoa+0xb46>
   140005bef:	83 c6 02             	add    $0x2,%esi
   140005bf2:	45 31 d2             	xor    %r10d,%r10d
   140005bf5:	31 ed                	xor    %ebp,%ebp
   140005bf7:	41 89 f7             	mov    %esi,%r15d
   140005bfa:	48 8b 74 24 68       	mov    0x68(%rsp),%rsi
   140005bff:	48 83 44 24 68 01    	addq   $0x1,0x68(%rsp)
   140005c05:	c6 06 31             	movb   $0x31,(%rsi)
   140005c08:	c7 44 24 48 20 00 00 	movl   $0x20,0x48(%rsp)
   140005c0f:	00 
   140005c10:	4c 89 d1             	mov    %r10,%rcx
   140005c13:	e8 f8 12 00 00       	call   140006f10 <__Bfree_D2A>
   140005c18:	48 85 ed             	test   %rbp,%rbp
   140005c1b:	74 08                	je     140005c25 <__gdtoa+0x855>
   140005c1d:	48 89 e9             	mov    %rbp,%rcx
   140005c20:	e8 eb 12 00 00       	call   140006f10 <__Bfree_D2A>
   140005c25:	48 89 d9             	mov    %rbx,%rcx
   140005c28:	e8 e3 12 00 00       	call   140006f10 <__Bfree_D2A>
   140005c2d:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
   140005c32:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
   140005c37:	c6 00 00             	movb   $0x0,(%rax)
   140005c3a:	44 89 3f             	mov    %r15d,(%rdi)
   140005c3d:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
   140005c42:	48 85 ff             	test   %rdi,%rdi
   140005c45:	74 03                	je     140005c4a <__gdtoa+0x87a>
   140005c47:	48 89 07             	mov    %rax,(%rdi)
   140005c4a:	48 8b 44 24 40       	mov    0x40(%rsp),%rax
   140005c4f:	8b 7c 24 48          	mov    0x48(%rsp),%edi
   140005c53:	09 38                	or     %edi,(%rax)
   140005c55:	e9 a3 fa ff ff       	jmp    1400056fd <__gdtoa+0x32d>
   140005c5a:	66 0f 28 c8          	movapd %xmm0,%xmm1
   140005c5e:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
   140005c62:	f2 0f 58 0d 0e 4a 00 	addsd  0x4a0e(%rip),%xmm1        # 14000a678 <.rdata+0x58>
   140005c69:	00 
   140005c6a:	66 48 0f 7e c8       	movq   %xmm1,%rax
   140005c6f:	48 89 c2             	mov    %rax,%rdx
   140005c72:	89 c0                	mov    %eax,%eax
   140005c74:	48 c1 ea 20          	shr    $0x20,%rdx
   140005c78:	81 ea 00 00 40 03    	sub    $0x3400000,%edx
   140005c7e:	48 c1 e2 20          	shl    $0x20,%rdx
   140005c82:	48 09 d0             	or     %rdx,%rax
   140005c85:	f2 0f 5c 05 f3 49 00 	subsd  0x49f3(%rip),%xmm0        # 14000a680 <.rdata+0x60>
   140005c8c:	00 
   140005c8d:	66 48 0f 6e c8       	movq   %rax,%xmm1
   140005c92:	66 0f 2f c1          	comisd %xmm1,%xmm0
   140005c96:	0f 87 bf 0b 00 00    	ja     14000685b <__gdtoa+0x148b>
   140005c9c:	66 0f 57 0d ec 49 00 	xorpd  0x49ec(%rip),%xmm1        # 14000a690 <.rdata+0x70>
   140005ca3:	00 
   140005ca4:	66 0f 2f c8          	comisd %xmm0,%xmm1
   140005ca8:	0f 87 68 02 00 00    	ja     140005f16 <__gdtoa+0xb46>
   140005cae:	c7 44 24 58 00 00 00 	movl   $0x0,0x58(%rsp)
   140005cb5:	00 
   140005cb6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140005cbd:	00 00 00 
   140005cc0:	44 8b 44 24 60       	mov    0x60(%rsp),%r8d
   140005cc5:	45 85 c0             	test   %r8d,%r8d
   140005cc8:	0f 89 ca fe ff ff    	jns    140005b98 <__gdtoa+0x7c8>
   140005cce:	8b 54 24 7c          	mov    0x7c(%rsp),%edx
   140005cd2:	85 d2                	test   %edx,%edx
   140005cd4:	0f 84 1e 03 00 00    	je     140005ff8 <__gdtoa+0xc28>
   140005cda:	44 8b 7c 24 60       	mov    0x60(%rsp),%r15d
   140005cdf:	45 29 f4             	sub    %r14d,%r12d
   140005ce2:	41 8b 55 04          	mov    0x4(%r13),%edx
   140005ce6:	41 8d 44 24 01       	lea    0x1(%r12),%eax
   140005ceb:	44 89 f9             	mov    %r15d,%ecx
   140005cee:	89 84 24 ac 00 00 00 	mov    %eax,0xac(%rsp)
   140005cf5:	44 29 e1             	sub    %r12d,%ecx
   140005cf8:	39 d1                	cmp    %edx,%ecx
   140005cfa:	0f 8d 38 07 00 00    	jge    140006438 <__gdtoa+0x1068>
   140005d00:	8d 47 fd             	lea    -0x3(%rdi),%eax
   140005d03:	83 e0 fd             	and    $0xfffffffd,%eax
   140005d06:	0f 84 e4 06 00 00    	je     1400063f0 <__gdtoa+0x1020>
   140005d0c:	44 89 f8             	mov    %r15d,%eax
   140005d0f:	44 8b 7c 24 50       	mov    0x50(%rsp),%r15d
   140005d14:	29 d0                	sub    %edx,%eax
   140005d16:	83 c0 01             	add    $0x1,%eax
   140005d19:	83 ff 01             	cmp    $0x1,%edi
   140005d1c:	0f 9f c1             	setg   %cl
   140005d1f:	45 85 ff             	test   %r15d,%r15d
   140005d22:	89 84 24 ac 00 00 00 	mov    %eax,0xac(%rsp)
   140005d29:	0f 9f c2             	setg   %dl
   140005d2c:	84 d1                	test   %dl,%cl
   140005d2e:	74 09                	je     140005d39 <__gdtoa+0x969>
   140005d30:	44 39 f8             	cmp    %r15d,%eax
   140005d33:	0f 8f a1 0d 00 00    	jg     140006ada <__gdtoa+0x170a>
   140005d39:	8b 54 24 70          	mov    0x70(%rsp),%edx
   140005d3d:	01 44 24 5c          	add    %eax,0x5c(%rsp)
   140005d41:	44 8b a4 24 80 00 00 	mov    0x80(%rsp),%r12d
   140005d48:	00 
   140005d49:	01 d0                	add    %edx,%eax
   140005d4b:	89 54 24 60          	mov    %edx,0x60(%rsp)
   140005d4f:	89 44 24 70          	mov    %eax,0x70(%rsp)
   140005d53:	b9 01 00 00 00       	mov    $0x1,%ecx
   140005d58:	44 89 9c 24 98 00 00 	mov    %r11d,0x98(%rsp)
   140005d5f:	00 
   140005d60:	e8 db 12 00 00       	call   140007040 <__i2b_D2A>
   140005d65:	c7 44 24 7c 01 00 00 	movl   $0x1,0x7c(%rsp)
   140005d6c:	00 
   140005d6d:	44 8b 9c 24 98 00 00 	mov    0x98(%rsp),%r11d
   140005d74:	00 
   140005d75:	48 89 c5             	mov    %rax,%rbp
   140005d78:	8b 4c 24 60          	mov    0x60(%rsp),%ecx
   140005d7c:	85 c9                	test   %ecx,%ecx
   140005d7e:	7e 26                	jle    140005da6 <__gdtoa+0x9d6>
   140005d80:	8b 54 24 5c          	mov    0x5c(%rsp),%edx
   140005d84:	85 d2                	test   %edx,%edx
   140005d86:	7e 1e                	jle    140005da6 <__gdtoa+0x9d6>
   140005d88:	39 d1                	cmp    %edx,%ecx
   140005d8a:	89 d0                	mov    %edx,%eax
   140005d8c:	0f 4e c1             	cmovle %ecx,%eax
   140005d8f:	29 44 24 70          	sub    %eax,0x70(%rsp)
   140005d93:	29 c1                	sub    %eax,%ecx
   140005d95:	29 c2                	sub    %eax,%edx
   140005d97:	89 84 24 ac 00 00 00 	mov    %eax,0xac(%rsp)
   140005d9e:	89 4c 24 60          	mov    %ecx,0x60(%rsp)
   140005da2:	89 54 24 5c          	mov    %edx,0x5c(%rsp)
   140005da6:	8b 84 24 80 00 00 00 	mov    0x80(%rsp),%eax
   140005dad:	85 c0                	test   %eax,%eax
   140005daf:	74 33                	je     140005de4 <__gdtoa+0xa14>
   140005db1:	8b 44 24 7c          	mov    0x7c(%rsp),%eax
   140005db5:	85 c0                	test   %eax,%eax
   140005db7:	74 09                	je     140005dc2 <__gdtoa+0x9f2>
   140005db9:	45 85 e4             	test   %r12d,%r12d
   140005dbc:	0f 85 67 08 00 00    	jne    140006629 <__gdtoa+0x1259>
   140005dc2:	8b 94 24 80 00 00 00 	mov    0x80(%rsp),%edx
   140005dc9:	48 89 d9             	mov    %rbx,%rcx
   140005dcc:	44 89 9c 24 98 00 00 	mov    %r11d,0x98(%rsp)
   140005dd3:	00 
   140005dd4:	e8 87 14 00 00       	call   140007260 <__pow5mult_D2A>
   140005dd9:	44 8b 9c 24 98 00 00 	mov    0x98(%rsp),%r11d
   140005de0:	00 
   140005de1:	48 89 c3             	mov    %rax,%rbx
   140005de4:	b9 01 00 00 00       	mov    $0x1,%ecx
   140005de9:	44 89 9c 24 80 00 00 	mov    %r11d,0x80(%rsp)
   140005df0:	00 
   140005df1:	e8 4a 12 00 00       	call   140007040 <__i2b_D2A>
   140005df6:	44 8b 9c 24 80 00 00 	mov    0x80(%rsp),%r11d
   140005dfd:	00 
   140005dfe:	49 89 c2             	mov    %rax,%r10
   140005e01:	45 85 db             	test   %r11d,%r11d
   140005e04:	0f 85 66 05 00 00    	jne    140006370 <__gdtoa+0xfa0>
   140005e0a:	83 ff 01             	cmp    $0x1,%edi
   140005e0d:	0f 8e a5 05 00 00    	jle    1400063b8 <__gdtoa+0xfe8>
   140005e13:	41 bc 1f 00 00 00    	mov    $0x1f,%r12d
   140005e19:	8b 44 24 5c          	mov    0x5c(%rsp),%eax
   140005e1d:	41 29 c4             	sub    %eax,%r12d
   140005e20:	8b 44 24 70          	mov    0x70(%rsp),%eax
   140005e24:	41 83 ec 04          	sub    $0x4,%r12d
   140005e28:	41 83 e4 1f          	and    $0x1f,%r12d
   140005e2c:	44 01 e0             	add    %r12d,%eax
   140005e2f:	44 89 a4 24 ac 00 00 	mov    %r12d,0xac(%rsp)
   140005e36:	00 
   140005e37:	44 89 e2             	mov    %r12d,%edx
   140005e3a:	85 c0                	test   %eax,%eax
   140005e3c:	7e 28                	jle    140005e66 <__gdtoa+0xa96>
   140005e3e:	89 c2                	mov    %eax,%edx
   140005e40:	48 89 d9             	mov    %rbx,%rcx
   140005e43:	4c 89 54 24 70       	mov    %r10,0x70(%rsp)
   140005e48:	44 89 5c 24 30       	mov    %r11d,0x30(%rsp)
   140005e4d:	e8 8e 15 00 00       	call   1400073e0 <__lshift_D2A>
   140005e52:	4c 8b 54 24 70       	mov    0x70(%rsp),%r10
   140005e57:	44 8b 5c 24 30       	mov    0x30(%rsp),%r11d
   140005e5c:	8b 94 24 ac 00 00 00 	mov    0xac(%rsp),%edx
   140005e63:	48 89 c3             	mov    %rax,%rbx
   140005e66:	8b 44 24 5c          	mov    0x5c(%rsp),%eax
   140005e6a:	01 d0                	add    %edx,%eax
   140005e6c:	89 c2                	mov    %eax,%edx
   140005e6e:	85 c0                	test   %eax,%eax
   140005e70:	7e 15                	jle    140005e87 <__gdtoa+0xab7>
   140005e72:	4c 89 d1             	mov    %r10,%rcx
   140005e75:	44 89 5c 24 30       	mov    %r11d,0x30(%rsp)
   140005e7a:	e8 61 15 00 00       	call   1400073e0 <__lshift_D2A>
   140005e7f:	44 8b 5c 24 30       	mov    0x30(%rsp),%r11d
   140005e84:	49 89 c2             	mov    %rax,%r10
   140005e87:	8b 84 24 84 00 00 00 	mov    0x84(%rsp),%eax
   140005e8e:	83 ff 02             	cmp    $0x2,%edi
   140005e91:	41 0f 9f c5          	setg   %r13b
   140005e95:	85 c0                	test   %eax,%eax
   140005e97:	0f 85 93 03 00 00    	jne    140006230 <__gdtoa+0xe60>
   140005e9d:	44 8b 7c 24 50       	mov    0x50(%rsp),%r15d
   140005ea2:	45 85 ff             	test   %r15d,%r15d
   140005ea5:	0f 8f 65 01 00 00    	jg     140006010 <__gdtoa+0xc40>
   140005eab:	45 84 ed             	test   %r13b,%r13b
   140005eae:	0f 84 5c 01 00 00    	je     140006010 <__gdtoa+0xc40>
   140005eb4:	44 8b 74 24 50       	mov    0x50(%rsp),%r14d
   140005eb9:	45 85 f6             	test   %r14d,%r14d
   140005ebc:	75 5d                	jne    140005f1b <__gdtoa+0xb4b>
   140005ebe:	4c 89 d1             	mov    %r10,%rcx
   140005ec1:	45 31 c0             	xor    %r8d,%r8d
   140005ec4:	ba 05 00 00 00       	mov    $0x5,%edx
   140005ec9:	e8 b2 10 00 00       	call   140006f80 <__multadd_D2A>
   140005ece:	48 89 d9             	mov    %rbx,%rcx
   140005ed1:	48 89 c2             	mov    %rax,%rdx
   140005ed4:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
   140005ed9:	e8 12 16 00 00       	call   1400074f0 <__cmp_D2A>
   140005ede:	4c 8b 54 24 30       	mov    0x30(%rsp),%r10
   140005ee3:	85 c0                	test   %eax,%eax
   140005ee5:	7e 34                	jle    140005f1b <__gdtoa+0xb4b>
   140005ee7:	44 8b 7c 24 78       	mov    0x78(%rsp),%r15d
   140005eec:	48 8b 74 24 68       	mov    0x68(%rsp),%rsi
   140005ef1:	41 83 c7 02          	add    $0x2,%r15d
   140005ef5:	e9 05 fd ff ff       	jmp    140005bff <__gdtoa+0x82f>
   140005efa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140005f00:	83 ff 03             	cmp    $0x3,%edi
   140005f03:	0f 85 4f fb ff ff    	jne    140005a58 <__gdtoa+0x688>
   140005f09:	c7 44 24 7c 00 00 00 	movl   $0x0,0x7c(%rsp)
   140005f10:	00 
   140005f11:	e9 0a fc ff ff       	jmp    140005b20 <__gdtoa+0x750>
   140005f16:	45 31 d2             	xor    %r10d,%r10d
   140005f19:	31 ed                	xor    %ebp,%ebp
   140005f1b:	44 8b 7c 24 38       	mov    0x38(%rsp),%r15d
   140005f20:	c7 44 24 48 10 00 00 	movl   $0x10,0x48(%rsp)
   140005f27:	00 
   140005f28:	48 8b 74 24 68       	mov    0x68(%rsp),%rsi
   140005f2d:	41 f7 df             	neg    %r15d
   140005f30:	e9 db fc ff ff       	jmp    140005c10 <__gdtoa+0x840>
   140005f35:	f2 0f 59 da          	mulsd  %xmm2,%xmm3
   140005f39:	66 49 0f 6e d1       	movq   %r9,%xmm2
   140005f3e:	c7 84 24 ac 00 00 00 	movl   $0x1,0xac(%rsp)
   140005f45:	01 00 00 00 
   140005f49:	48 8b 4c 24 68       	mov    0x68(%rsp),%rcx
   140005f4e:	f2 0f 10 0d 12 47 00 	movsd  0x4712(%rip),%xmm1        # 14000a668 <.rdata+0x48>
   140005f55:	00 
   140005f56:	66 0f 28 c2          	movapd %xmm2,%xmm0
   140005f5a:	45 31 c9             	xor    %r9d,%r9d
   140005f5d:	eb 12                	jmp    140005f71 <__gdtoa+0xba1>
   140005f5f:	90                   	nop
   140005f60:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
   140005f64:	83 c0 01             	add    $0x1,%eax
   140005f67:	45 89 d1             	mov    %r10d,%r9d
   140005f6a:	89 84 24 ac 00 00 00 	mov    %eax,0xac(%rsp)
   140005f71:	f2 0f 2c c0          	cvttsd2si %xmm0,%eax
   140005f75:	85 c0                	test   %eax,%eax
   140005f77:	74 0f                	je     140005f88 <__gdtoa+0xbb8>
   140005f79:	66 0f ef e4          	pxor   %xmm4,%xmm4
   140005f7d:	45 89 d1             	mov    %r10d,%r9d
   140005f80:	f2 0f 2a e0          	cvtsi2sd %eax,%xmm4
   140005f84:	f2 0f 5c c4          	subsd  %xmm4,%xmm0
   140005f88:	44 8d 40 30          	lea    0x30(%rax),%r8d
   140005f8c:	48 83 c1 01          	add    $0x1,%rcx
   140005f90:	44 88 41 ff          	mov    %r8b,-0x1(%rcx)
   140005f94:	8b 84 24 ac 00 00 00 	mov    0xac(%rsp),%eax
   140005f9b:	39 e8                	cmp    %ebp,%eax
   140005f9d:	75 c1                	jne    140005f60 <__gdtoa+0xb90>
   140005f9f:	45 84 c9             	test   %r9b,%r9b
   140005fa2:	0f 84 6f 0a 00 00    	je     140006a17 <__gdtoa+0x1647>
   140005fa8:	f2 0f 10 0d f0 46 00 	movsd  0x46f0(%rip),%xmm1        # 14000a6a0 <.rdata+0x80>
   140005faf:	00 
   140005fb0:	66 0f 28 d3          	movapd %xmm3,%xmm2
   140005fb4:	f2 0f 58 d1          	addsd  %xmm1,%xmm2
   140005fb8:	66 0f 2f c2          	comisd %xmm2,%xmm0
   140005fbc:	0f 87 19 0a 00 00    	ja     1400069db <__gdtoa+0x160b>
   140005fc2:	f2 0f 5c cb          	subsd  %xmm3,%xmm1
   140005fc6:	66 0f 2f c8          	comisd %xmm0,%xmm1
   140005fca:	0f 87 ab 0a 00 00    	ja     140006a7b <__gdtoa+0x16ab>
   140005fd0:	44 8b 54 24 60       	mov    0x60(%rsp),%r10d
   140005fd5:	45 85 d2             	test   %r10d,%r10d
   140005fd8:	0f 88 37 0b 00 00    	js     140006b15 <__gdtoa+0x1745>
   140005fde:	45 8b 4d 14          	mov    0x14(%r13),%r9d
   140005fe2:	c7 44 24 58 00 00 00 	movl   $0x0,0x58(%rsp)
   140005fe9:	00 
   140005fea:	45 85 c9             	test   %r9d,%r9d
   140005fed:	0f 89 ba fb ff ff    	jns    140005bad <__gdtoa+0x7dd>
   140005ff3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140005ff8:	8b 44 24 70          	mov    0x70(%rsp),%eax
   140005ffc:	44 8b a4 24 80 00 00 	mov    0x80(%rsp),%r12d
   140006003:	00 
   140006004:	31 ed                	xor    %ebp,%ebp
   140006006:	89 44 24 60          	mov    %eax,0x60(%rsp)
   14000600a:	e9 69 fd ff ff       	jmp    140005d78 <__gdtoa+0x9a8>
   14000600f:	90                   	nop
   140006010:	44 8b 7c 24 78       	mov    0x78(%rsp),%r15d
   140006015:	44 8b 6c 24 7c       	mov    0x7c(%rsp),%r13d
   14000601a:	41 83 c7 01          	add    $0x1,%r15d
   14000601e:	45 85 ed             	test   %r13d,%r13d
   140006021:	0f 84 91 02 00 00    	je     1400062b8 <__gdtoa+0xee8>
   140006027:	8b 54 24 60          	mov    0x60(%rsp),%edx
   14000602b:	44 01 e2             	add    %r12d,%edx
   14000602e:	85 d2                	test   %edx,%edx
   140006030:	7e 1f                	jle    140006051 <__gdtoa+0xc81>
   140006032:	48 89 e9             	mov    %rbp,%rcx
   140006035:	4c 89 54 24 38       	mov    %r10,0x38(%rsp)
   14000603a:	44 89 5c 24 30       	mov    %r11d,0x30(%rsp)
   14000603f:	e8 9c 13 00 00       	call   1400073e0 <__lshift_D2A>
   140006044:	4c 8b 54 24 38       	mov    0x38(%rsp),%r10
   140006049:	44 8b 5c 24 30       	mov    0x30(%rsp),%r11d
   14000604e:	48 89 c5             	mov    %rax,%rbp
   140006051:	49 89 ed             	mov    %rbp,%r13
   140006054:	45 85 db             	test   %r11d,%r11d
   140006057:	0f 85 bb 07 00 00    	jne    140006818 <__gdtoa+0x1448>
   14000605d:	4c 8b 5c 24 68       	mov    0x68(%rsp),%r11
   140006062:	44 89 7c 24 70       	mov    %r15d,0x70(%rsp)
   140006067:	b8 01 00 00 00       	mov    $0x1,%eax
   14000606c:	49 89 f7             	mov    %rsi,%r15
   14000606f:	89 7c 24 38          	mov    %edi,0x38(%rsp)
   140006073:	4c 89 54 24 30       	mov    %r10,0x30(%rsp)
   140006078:	4c 89 df             	mov    %r11,%rdi
   14000607b:	e9 a2 00 00 00       	jmp    140006122 <__gdtoa+0xd52>
   140006080:	48 89 c1             	mov    %rax,%rcx
   140006083:	e8 88 0e 00 00       	call   140006f10 <__Bfree_D2A>
   140006088:	ba 01 00 00 00       	mov    $0x1,%edx
   14000608d:	45 85 e4             	test   %r12d,%r12d
   140006090:	0f 88 52 06 00 00    	js     1400066e8 <__gdtoa+0x1318>
   140006096:	44 0b 64 24 38       	or     0x38(%rsp),%r12d
   14000609b:	75 0a                	jne    1400060a7 <__gdtoa+0xcd7>
   14000609d:	41 f6 07 01          	testb  $0x1,(%r15)
   1400060a1:	0f 84 41 06 00 00    	je     1400066e8 <__gdtoa+0x1318>
   1400060a7:	4c 8d 67 01          	lea    0x1(%rdi),%r12
   1400060ab:	4d 89 e6             	mov    %r12,%r14
   1400060ae:	85 d2                	test   %edx,%edx
   1400060b0:	7e 0b                	jle    1400060bd <__gdtoa+0xced>
   1400060b2:	83 7c 24 58 02       	cmpl   $0x2,0x58(%rsp)
   1400060b7:	0f 85 b3 07 00 00    	jne    140006870 <__gdtoa+0x14a0>
   1400060bd:	41 88 74 24 ff       	mov    %sil,-0x1(%r12)
   1400060c2:	8b 44 24 50          	mov    0x50(%rsp),%eax
   1400060c6:	39 84 24 ac 00 00 00 	cmp    %eax,0xac(%rsp)
   1400060cd:	0f 84 d0 07 00 00    	je     1400068a3 <__gdtoa+0x14d3>
   1400060d3:	48 89 d9             	mov    %rbx,%rcx
   1400060d6:	45 31 c0             	xor    %r8d,%r8d
   1400060d9:	ba 0a 00 00 00       	mov    $0xa,%edx
   1400060de:	e8 9d 0e 00 00       	call   140006f80 <__multadd_D2A>
   1400060e3:	45 31 c0             	xor    %r8d,%r8d
   1400060e6:	ba 0a 00 00 00       	mov    $0xa,%edx
   1400060eb:	48 89 e9             	mov    %rbp,%rcx
   1400060ee:	48 89 c3             	mov    %rax,%rbx
   1400060f1:	4c 39 ed             	cmp    %r13,%rbp
   1400060f4:	0f 84 1e 01 00 00    	je     140006218 <__gdtoa+0xe48>
   1400060fa:	e8 81 0e 00 00       	call   140006f80 <__multadd_D2A>
   1400060ff:	4c 89 e9             	mov    %r13,%rcx
   140006102:	45 31 c0             	xor    %r8d,%r8d
   140006105:	ba 0a 00 00 00       	mov    $0xa,%edx
   14000610a:	48 89 c5             	mov    %rax,%rbp
   14000610d:	e8 6e 0e 00 00       	call   140006f80 <__multadd_D2A>
   140006112:	49 89 c5             	mov    %rax,%r13
   140006115:	8b 84 24 ac 00 00 00 	mov    0xac(%rsp),%eax
   14000611c:	4c 89 e7             	mov    %r12,%rdi
   14000611f:	83 c0 01             	add    $0x1,%eax
   140006122:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
   140006127:	48 89 d9             	mov    %rbx,%rcx
   14000612a:	89 84 24 ac 00 00 00 	mov    %eax,0xac(%rsp)
   140006131:	e8 1a f1 ff ff       	call   140005250 <__quorem_D2A>
   140006136:	48 89 ea             	mov    %rbp,%rdx
   140006139:	48 89 d9             	mov    %rbx,%rcx
   14000613c:	41 89 c6             	mov    %eax,%r14d
   14000613f:	8d 70 30             	lea    0x30(%rax),%esi
   140006142:	e8 a9 13 00 00       	call   1400074f0 <__cmp_D2A>
   140006147:	48 8b 4c 24 30       	mov    0x30(%rsp),%rcx
   14000614c:	4c 89 ea             	mov    %r13,%rdx
   14000614f:	41 89 c4             	mov    %eax,%r12d
   140006152:	e8 e9 13 00 00       	call   140007540 <__diff_D2A>
   140006157:	44 8b 50 10          	mov    0x10(%rax),%r10d
   14000615b:	48 89 c2             	mov    %rax,%rdx
   14000615e:	45 85 d2             	test   %r10d,%r10d
   140006161:	0f 85 19 ff ff ff    	jne    140006080 <__gdtoa+0xcb0>
   140006167:	48 89 d9             	mov    %rbx,%rcx
   14000616a:	48 89 44 24 60       	mov    %rax,0x60(%rsp)
   14000616f:	e8 7c 13 00 00       	call   1400074f0 <__cmp_D2A>
   140006174:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   140006179:	89 44 24 5c          	mov    %eax,0x5c(%rsp)
   14000617d:	e8 8e 0d 00 00       	call   140006f10 <__Bfree_D2A>
   140006182:	8b 54 24 5c          	mov    0x5c(%rsp),%edx
   140006186:	8b 44 24 38          	mov    0x38(%rsp),%eax
   14000618a:	09 c2                	or     %eax,%edx
   14000618c:	0f 85 a9 03 00 00    	jne    14000653b <__gdtoa+0x116b>
   140006192:	41 8b 07             	mov    (%r15),%eax
   140006195:	83 e0 01             	and    $0x1,%eax
   140006198:	0b 44 24 58          	or     0x58(%rsp),%eax
   14000619c:	0f 85 eb fe ff ff    	jne    14000608d <__gdtoa+0xcbd>
   1400061a2:	4c 8b 54 24 30       	mov    0x30(%rsp),%r10
   1400061a7:	44 8b 7c 24 70       	mov    0x70(%rsp),%r15d
   1400061ac:	41 89 f0             	mov    %esi,%r8d
   1400061af:	49 89 fb             	mov    %rdi,%r11
   1400061b2:	83 fe 39             	cmp    $0x39,%esi
   1400061b5:	0f 84 8e 07 00 00    	je     140006949 <__gdtoa+0x1579>
   1400061bb:	45 85 e4             	test   %r12d,%r12d
   1400061be:	0f 8e bd 09 00 00    	jle    140006b81 <__gdtoa+0x17b1>
   1400061c4:	c7 44 24 48 20 00 00 	movl   $0x20,0x48(%rsp)
   1400061cb:	00 
   1400061cc:	45 8d 46 31          	lea    0x31(%r14),%r8d
   1400061d0:	45 88 03             	mov    %r8b,(%r11)
   1400061d3:	48 89 ee             	mov    %rbp,%rsi
   1400061d6:	4d 8d 63 01          	lea    0x1(%r11),%r12
   1400061da:	4c 89 ed             	mov    %r13,%rbp
   1400061dd:	0f 1f 00             	nopl   (%rax)
   1400061e0:	4c 89 d1             	mov    %r10,%rcx
   1400061e3:	e8 28 0d 00 00       	call   140006f10 <__Bfree_D2A>
   1400061e8:	48 85 ed             	test   %rbp,%rbp
   1400061eb:	0f 84 9c 03 00 00    	je     14000658d <__gdtoa+0x11bd>
   1400061f1:	48 85 f6             	test   %rsi,%rsi
   1400061f4:	74 0d                	je     140006203 <__gdtoa+0xe33>
   1400061f6:	48 39 ee             	cmp    %rbp,%rsi
   1400061f9:	74 08                	je     140006203 <__gdtoa+0xe33>
   1400061fb:	48 89 f1             	mov    %rsi,%rcx
   1400061fe:	e8 0d 0d 00 00       	call   140006f10 <__Bfree_D2A>
   140006203:	48 8b 74 24 68       	mov    0x68(%rsp),%rsi
   140006208:	4c 89 64 24 68       	mov    %r12,0x68(%rsp)
   14000620d:	e9 0b fa ff ff       	jmp    140005c1d <__gdtoa+0x84d>
   140006212:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140006218:	e8 63 0d 00 00       	call   140006f80 <__multadd_D2A>
   14000621d:	48 89 c5             	mov    %rax,%rbp
   140006220:	49 89 c5             	mov    %rax,%r13
   140006223:	e9 ed fe ff ff       	jmp    140006115 <__gdtoa+0xd45>
   140006228:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000622f:	00 
   140006230:	4c 89 d2             	mov    %r10,%rdx
   140006233:	48 89 d9             	mov    %rbx,%rcx
   140006236:	44 89 5c 24 5c       	mov    %r11d,0x5c(%rsp)
   14000623b:	4c 89 54 24 30       	mov    %r10,0x30(%rsp)
   140006240:	e8 ab 12 00 00       	call   1400074f0 <__cmp_D2A>
   140006245:	4c 8b 54 24 30       	mov    0x30(%rsp),%r10
   14000624a:	44 8b 5c 24 5c       	mov    0x5c(%rsp),%r11d
   14000624f:	85 c0                	test   %eax,%eax
   140006251:	0f 89 46 fc ff ff    	jns    140005e9d <__gdtoa+0xacd>
   140006257:	8b 44 24 78          	mov    0x78(%rsp),%eax
   14000625b:	45 31 c0             	xor    %r8d,%r8d
   14000625e:	48 89 d9             	mov    %rbx,%rcx
   140006261:	ba 0a 00 00 00       	mov    $0xa,%edx
   140006266:	4c 89 54 24 50       	mov    %r10,0x50(%rsp)
   14000626b:	44 89 5c 24 30       	mov    %r11d,0x30(%rsp)
   140006270:	44 8d 70 ff          	lea    -0x1(%rax),%r14d
   140006274:	e8 07 0d 00 00       	call   140006f80 <__multadd_D2A>
   140006279:	4c 8b 54 24 50       	mov    0x50(%rsp),%r10
   14000627e:	48 89 c3             	mov    %rax,%rbx
   140006281:	8b 84 24 9c 00 00 00 	mov    0x9c(%rsp),%eax
   140006288:	85 c0                	test   %eax,%eax
   14000628a:	0f 9e c0             	setle  %al
   14000628d:	41 21 c5             	and    %eax,%r13d
   140006290:	8b 44 24 7c          	mov    0x7c(%rsp),%eax
   140006294:	85 c0                	test   %eax,%eax
   140006296:	0f 85 a4 07 00 00    	jne    140006a40 <__gdtoa+0x1670>
   14000629c:	45 84 ed             	test   %r13b,%r13b
   14000629f:	0f 85 cf 06 00 00    	jne    140006974 <__gdtoa+0x15a4>
   1400062a5:	8b 84 24 9c 00 00 00 	mov    0x9c(%rsp),%eax
   1400062ac:	44 8b 7c 24 78       	mov    0x78(%rsp),%r15d
   1400062b1:	89 44 24 50          	mov    %eax,0x50(%rsp)
   1400062b5:	0f 1f 00             	nopl   (%rax)
   1400062b8:	4c 8b 74 24 68       	mov    0x68(%rsp),%r14
   1400062bd:	8b 7c 24 50          	mov    0x50(%rsp),%edi
   1400062c1:	b8 01 00 00 00       	mov    $0x1,%eax
   1400062c6:	4c 89 d6             	mov    %r10,%rsi
   1400062c9:	eb 22                	jmp    1400062ed <__gdtoa+0xf1d>
   1400062cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400062d0:	48 89 d9             	mov    %rbx,%rcx
   1400062d3:	45 31 c0             	xor    %r8d,%r8d
   1400062d6:	ba 0a 00 00 00       	mov    $0xa,%edx
   1400062db:	e8 a0 0c 00 00       	call   140006f80 <__multadd_D2A>
   1400062e0:	48 89 c3             	mov    %rax,%rbx
   1400062e3:	8b 84 24 ac 00 00 00 	mov    0xac(%rsp),%eax
   1400062ea:	83 c0 01             	add    $0x1,%eax
   1400062ed:	48 89 f2             	mov    %rsi,%rdx
   1400062f0:	48 89 d9             	mov    %rbx,%rcx
   1400062f3:	89 84 24 ac 00 00 00 	mov    %eax,0xac(%rsp)
   1400062fa:	49 83 c6 01          	add    $0x1,%r14
   1400062fe:	e8 4d ef ff ff       	call   140005250 <__quorem_D2A>
   140006303:	44 8d 40 30          	lea    0x30(%rax),%r8d
   140006307:	45 88 46 ff          	mov    %r8b,-0x1(%r14)
   14000630b:	39 bc 24 ac 00 00 00 	cmp    %edi,0xac(%rsp)
   140006312:	7c bc                	jl     1400062d0 <__gdtoa+0xf00>
   140006314:	49 89 f2             	mov    %rsi,%r10
   140006317:	31 f6                	xor    %esi,%esi
   140006319:	8b 7c 24 58          	mov    0x58(%rsp),%edi
   14000631d:	85 ff                	test   %edi,%edi
   14000631f:	0f 84 5d 03 00 00    	je     140006682 <__gdtoa+0x12b2>
   140006325:	8b 43 14             	mov    0x14(%rbx),%eax
   140006328:	83 ff 02             	cmp    $0x2,%edi
   14000632b:	0f 84 96 03 00 00    	je     1400066c7 <__gdtoa+0x12f7>
   140006331:	83 f8 01             	cmp    $0x1,%eax
   140006334:	0f 8f 17 02 00 00    	jg     140006551 <__gdtoa+0x1181>
   14000633a:	8b 43 18             	mov    0x18(%rbx),%eax
   14000633d:	85 c0                	test   %eax,%eax
   14000633f:	0f 85 0c 02 00 00    	jne    140006551 <__gdtoa+0x1181>
   140006345:	85 c0                	test   %eax,%eax
   140006347:	0f 95 c0             	setne  %al
   14000634a:	0f b6 c0             	movzbl %al,%eax
   14000634d:	c1 e0 04             	shl    $0x4,%eax
   140006350:	89 44 24 48          	mov    %eax,0x48(%rsp)
   140006354:	0f 1f 40 00          	nopl   0x0(%rax)
   140006358:	4d 89 f4             	mov    %r14,%r12
   14000635b:	49 83 ee 01          	sub    $0x1,%r14
   14000635f:	41 80 3e 30          	cmpb   $0x30,(%r14)
   140006363:	74 f3                	je     140006358 <__gdtoa+0xf88>
   140006365:	e9 76 fe ff ff       	jmp    1400061e0 <__gdtoa+0xe10>
   14000636a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140006370:	44 89 da             	mov    %r11d,%edx
   140006373:	48 89 c1             	mov    %rax,%rcx
   140006376:	e8 e5 0e 00 00       	call   140007260 <__pow5mult_D2A>
   14000637b:	49 89 c2             	mov    %rax,%r10
   14000637e:	83 ff 01             	cmp    $0x1,%edi
   140006381:	0f 8e 4f 02 00 00    	jle    1400065d6 <__gdtoa+0x1206>
   140006387:	45 31 db             	xor    %r11d,%r11d
   14000638a:	41 8b 42 14          	mov    0x14(%r10),%eax
   14000638e:	83 e8 01             	sub    $0x1,%eax
   140006391:	48 98                	cltq
   140006393:	45 0f bd 64 82 18    	bsr    0x18(%r10,%rax,4),%r12d
   140006399:	41 83 f4 1f          	xor    $0x1f,%r12d
   14000639d:	e9 77 fa ff ff       	jmp    140005e19 <__gdtoa+0xa49>
   1400063a2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400063a8:	c7 44 24 7c 01 00 00 	movl   $0x1,0x7c(%rsp)
   1400063af:	00 
   1400063b0:	e9 6b f7 ff ff       	jmp    140005b20 <__gdtoa+0x750>
   1400063b5:	0f 1f 00             	nopl   (%rax)
   1400063b8:	41 83 fe 01          	cmp    $0x1,%r14d
   1400063bc:	0f 85 51 fa ff ff    	jne    140005e13 <__gdtoa+0xa43>
   1400063c2:	41 8b 45 04          	mov    0x4(%r13),%eax
   1400063c6:	83 c0 01             	add    $0x1,%eax
   1400063c9:	39 44 24 30          	cmp    %eax,0x30(%rsp)
   1400063cd:	0f 8e 40 fa ff ff    	jle    140005e13 <__gdtoa+0xa43>
   1400063d3:	83 44 24 70 01       	addl   $0x1,0x70(%rsp)
   1400063d8:	41 bb 01 00 00 00    	mov    $0x1,%r11d
   1400063de:	83 44 24 5c 01       	addl   $0x1,0x5c(%rsp)
   1400063e3:	e9 2b fa ff ff       	jmp    140005e13 <__gdtoa+0xa43>
   1400063e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400063ef:	00 
   1400063f0:	8b 4c 24 50          	mov    0x50(%rsp),%ecx
   1400063f4:	8b 94 24 80 00 00 00 	mov    0x80(%rsp),%edx
   1400063fb:	8d 41 ff             	lea    -0x1(%rcx),%eax
   1400063fe:	39 c2                	cmp    %eax,%edx
   140006400:	0f 8c 96 01 00 00    	jl     14000659c <__gdtoa+0x11cc>
   140006406:	41 89 d4             	mov    %edx,%r12d
   140006409:	41 29 c4             	sub    %eax,%r12d
   14000640c:	85 c9                	test   %ecx,%ecx
   14000640e:	0f 89 0c 06 00 00    	jns    140006a20 <__gdtoa+0x1650>
   140006414:	8b 44 24 70          	mov    0x70(%rsp),%eax
   140006418:	8b 54 24 50          	mov    0x50(%rsp),%edx
   14000641c:	c7 84 24 ac 00 00 00 	movl   $0x0,0xac(%rsp)
   140006423:	00 00 00 00 
   140006427:	29 d0                	sub    %edx,%eax
   140006429:	89 44 24 60          	mov    %eax,0x60(%rsp)
   14000642d:	e9 21 f9 ff ff       	jmp    140005d53 <__gdtoa+0x983>
   140006432:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140006438:	83 ff 01             	cmp    $0x1,%edi
   14000643b:	7f b3                	jg     1400063f0 <__gdtoa+0x1020>
   14000643d:	8b 4c 24 70          	mov    0x70(%rsp),%ecx
   140006441:	01 44 24 5c          	add    %eax,0x5c(%rsp)
   140006445:	44 8b a4 24 80 00 00 	mov    0x80(%rsp),%r12d
   14000644c:	00 
   14000644d:	01 c8                	add    %ecx,%eax
   14000644f:	89 4c 24 60          	mov    %ecx,0x60(%rsp)
   140006453:	89 44 24 70          	mov    %eax,0x70(%rsp)
   140006457:	e9 f7 f8 ff ff       	jmp    140005d53 <__gdtoa+0x983>
   14000645c:	f2 0f 10 84 24 90 00 	movsd  0x90(%rsp),%xmm0
   140006463:	00 00 
   140006465:	48 8b 74 24 68       	mov    0x68(%rsp),%rsi
   14000646a:	c7 84 24 ac 00 00 00 	movl   $0x1,0xac(%rsp)
   140006471:	01 00 00 00 
   140006475:	8b 7c 24 78          	mov    0x78(%rsp),%edi
   140006479:	66 0f 28 c8          	movapd %xmm0,%xmm1
   14000647d:	48 8d 4e 01          	lea    0x1(%rsi),%rcx
   140006481:	f2 0f 5e ca          	divsd  %xmm2,%xmm1
   140006485:	44 8d 7f 01          	lea    0x1(%rdi),%r15d
   140006489:	f2 0f 2c c1          	cvttsd2si %xmm1,%eax
   14000648d:	66 0f ef c9          	pxor   %xmm1,%xmm1
   140006491:	f2 0f 2a c8          	cvtsi2sd %eax,%xmm1
   140006495:	8d 50 30             	lea    0x30(%rax),%edx
   140006498:	88 16                	mov    %dl,(%rsi)
   14000649a:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
   14000649e:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
   1400064a2:	66 0f ef c9          	pxor   %xmm1,%xmm1
   1400064a6:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
   1400064aa:	7a 06                	jp     1400064b2 <__gdtoa+0x10e2>
   1400064ac:	0f 84 c1 01 00 00    	je     140006673 <__gdtoa+0x12a3>
   1400064b2:	f2 0f 10 25 ae 41 00 	movsd  0x41ae(%rip),%xmm4        # 14000a668 <.rdata+0x48>
   1400064b9:	00 
   1400064ba:	66 0f ef db          	pxor   %xmm3,%xmm3
   1400064be:	eb 40                	jmp    140006500 <__gdtoa+0x1130>
   1400064c0:	f2 0f 59 c4          	mulsd  %xmm4,%xmm0
   1400064c4:	83 c2 01             	add    $0x1,%edx
   1400064c7:	48 83 c1 01          	add    $0x1,%rcx
   1400064cb:	89 94 24 ac 00 00 00 	mov    %edx,0xac(%rsp)
   1400064d2:	66 0f 28 c8          	movapd %xmm0,%xmm1
   1400064d6:	f2 0f 5e ca          	divsd  %xmm2,%xmm1
   1400064da:	f2 0f 2c c1          	cvttsd2si %xmm1,%eax
   1400064de:	66 0f ef c9          	pxor   %xmm1,%xmm1
   1400064e2:	f2 0f 2a c8          	cvtsi2sd %eax,%xmm1
   1400064e6:	8d 50 30             	lea    0x30(%rax),%edx
   1400064e9:	88 51 ff             	mov    %dl,-0x1(%rcx)
   1400064ec:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
   1400064f0:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
   1400064f4:	66 0f 2e c3          	ucomisd %xmm3,%xmm0
   1400064f8:	7a 06                	jp     140006500 <__gdtoa+0x1130>
   1400064fa:	0f 84 73 01 00 00    	je     140006673 <__gdtoa+0x12a3>
   140006500:	8b 94 24 ac 00 00 00 	mov    0xac(%rsp),%edx
   140006507:	8b 7c 24 50          	mov    0x50(%rsp),%edi
   14000650b:	39 fa                	cmp    %edi,%edx
   14000650d:	75 b1                	jne    1400064c0 <__gdtoa+0x10f0>
   14000650f:	8b 7c 24 58          	mov    0x58(%rsp),%edi
   140006513:	85 ff                	test   %edi,%edi
   140006515:	0f 84 6e 04 00 00    	je     140006989 <__gdtoa+0x15b9>
   14000651b:	83 ff 01             	cmp    $0x1,%edi
   14000651e:	0f 84 7d 05 00 00    	je     140006aa1 <__gdtoa+0x16d1>
   140006524:	48 8b 74 24 68       	mov    0x68(%rsp),%rsi
   140006529:	c7 44 24 48 10 00 00 	movl   $0x10,0x48(%rsp)
   140006530:	00 
   140006531:	48 89 4c 24 68       	mov    %rcx,0x68(%rsp)
   140006536:	e9 ea f6 ff ff       	jmp    140005c25 <__gdtoa+0x855>
   14000653b:	8b 54 24 5c          	mov    0x5c(%rsp),%edx
   14000653f:	e9 49 fb ff ff       	jmp    14000608d <__gdtoa+0xcbd>
   140006544:	c7 44 24 7c 01 00 00 	movl   $0x1,0x7c(%rsp)
   14000654b:	00 
   14000654c:	e9 c4 f2 ff ff       	jmp    140005815 <__gdtoa+0x445>
   140006551:	48 8b 54 24 68       	mov    0x68(%rsp),%rdx
   140006556:	eb 11                	jmp    140006569 <__gdtoa+0x1199>
   140006558:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000655f:	00 
   140006560:	4c 39 f2             	cmp    %r14,%rdx
   140006563:	0f 84 a7 00 00 00    	je     140006610 <__gdtoa+0x1240>
   140006569:	4d 89 f4             	mov    %r14,%r12
   14000656c:	4d 8d 76 ff          	lea    -0x1(%r14),%r14
   140006570:	41 0f b6 44 24 ff    	movzbl -0x1(%r12),%eax
   140006576:	3c 39                	cmp    $0x39,%al
   140006578:	74 e6                	je     140006560 <__gdtoa+0x1190>
   14000657a:	83 c0 01             	add    $0x1,%eax
   14000657d:	c7 44 24 48 20 00 00 	movl   $0x20,0x48(%rsp)
   140006584:	00 
   140006585:	41 88 06             	mov    %al,(%r14)
   140006588:	e9 53 fc ff ff       	jmp    1400061e0 <__gdtoa+0xe10>
   14000658d:	48 8b 74 24 68       	mov    0x68(%rsp),%rsi
   140006592:	4c 89 64 24 68       	mov    %r12,0x68(%rsp)
   140006597:	e9 89 f6 ff ff       	jmp    140005c25 <__gdtoa+0x855>
   14000659c:	8b 8c 24 80 00 00 00 	mov    0x80(%rsp),%ecx
   1400065a3:	89 c2                	mov    %eax,%edx
   1400065a5:	89 84 24 80 00 00 00 	mov    %eax,0x80(%rsp)
   1400065ac:	45 31 e4             	xor    %r12d,%r12d
   1400065af:	29 ca                	sub    %ecx,%edx
   1400065b1:	8b 4c 24 70          	mov    0x70(%rsp),%ecx
   1400065b5:	41 01 d3             	add    %edx,%r11d
   1400065b8:	8b 54 24 50          	mov    0x50(%rsp),%edx
   1400065bc:	01 54 24 5c          	add    %edx,0x5c(%rsp)
   1400065c0:	89 4c 24 60          	mov    %ecx,0x60(%rsp)
   1400065c4:	89 94 24 ac 00 00 00 	mov    %edx,0xac(%rsp)
   1400065cb:	01 ca                	add    %ecx,%edx
   1400065cd:	89 54 24 70          	mov    %edx,0x70(%rsp)
   1400065d1:	e9 7d f7 ff ff       	jmp    140005d53 <__gdtoa+0x983>
   1400065d6:	41 83 fe 01          	cmp    $0x1,%r14d
   1400065da:	0f 85 a7 fd ff ff    	jne    140006387 <__gdtoa+0xfb7>
   1400065e0:	41 8b 45 04          	mov    0x4(%r13),%eax
   1400065e4:	83 c0 01             	add    $0x1,%eax
   1400065e7:	39 44 24 30          	cmp    %eax,0x30(%rsp)
   1400065eb:	0f 8e 96 fd ff ff    	jle    140006387 <__gdtoa+0xfb7>
   1400065f1:	83 44 24 70 01       	addl   $0x1,0x70(%rsp)
   1400065f6:	41 bb 01 00 00 00    	mov    $0x1,%r11d
   1400065fc:	83 44 24 5c 01       	addl   $0x1,0x5c(%rsp)
   140006601:	e9 84 fd ff ff       	jmp    14000638a <__gdtoa+0xfba>
   140006606:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000660d:	00 00 00 
   140006610:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
   140006615:	c7 44 24 48 20 00 00 	movl   $0x20,0x48(%rsp)
   14000661c:	00 
   14000661d:	41 83 c7 01          	add    $0x1,%r15d
   140006621:	c6 00 31             	movb   $0x31,(%rax)
   140006624:	e9 b7 fb ff ff       	jmp    1400061e0 <__gdtoa+0xe10>
   140006629:	48 89 e9             	mov    %rbp,%rcx
   14000662c:	44 89 e2             	mov    %r12d,%edx
   14000662f:	44 89 9c 24 98 00 00 	mov    %r11d,0x98(%rsp)
   140006636:	00 
   140006637:	e8 24 0c 00 00       	call   140007260 <__pow5mult_D2A>
   14000663c:	48 89 da             	mov    %rbx,%rdx
   14000663f:	48 89 c1             	mov    %rax,%rcx
   140006642:	48 89 c5             	mov    %rax,%rbp
   140006645:	e8 b6 0a 00 00       	call   140007100 <__mult_D2A>
   14000664a:	48 89 d9             	mov    %rbx,%rcx
   14000664d:	49 89 c7             	mov    %rax,%r15
   140006650:	e8 bb 08 00 00       	call   140006f10 <__Bfree_D2A>
   140006655:	44 29 a4 24 80 00 00 	sub    %r12d,0x80(%rsp)
   14000665c:	00 
   14000665d:	4c 89 fb             	mov    %r15,%rbx
   140006660:	44 8b 9c 24 98 00 00 	mov    0x98(%rsp),%r11d
   140006667:	00 
   140006668:	0f 84 76 f7 ff ff    	je     140005de4 <__gdtoa+0xa14>
   14000666e:	e9 4f f7 ff ff       	jmp    140005dc2 <__gdtoa+0x9f2>
   140006673:	48 8b 74 24 68       	mov    0x68(%rsp),%rsi
   140006678:	48 89 4c 24 68       	mov    %rcx,0x68(%rsp)
   14000667d:	e9 a3 f5 ff ff       	jmp    140005c25 <__gdtoa+0x855>
   140006682:	48 89 d9             	mov    %rbx,%rcx
   140006685:	ba 01 00 00 00       	mov    $0x1,%edx
   14000668a:	4c 89 54 24 30       	mov    %r10,0x30(%rsp)
   14000668f:	44 89 44 24 38       	mov    %r8d,0x38(%rsp)
   140006694:	e8 47 0d 00 00       	call   1400073e0 <__lshift_D2A>
   140006699:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
   14000669e:	48 89 c1             	mov    %rax,%rcx
   1400066a1:	48 89 c3             	mov    %rax,%rbx
   1400066a4:	e8 47 0e 00 00       	call   1400074f0 <__cmp_D2A>
   1400066a9:	4c 8b 54 24 30       	mov    0x30(%rsp),%r10
   1400066ae:	85 c0                	test   %eax,%eax
   1400066b0:	0f 8f 9b fe ff ff    	jg     140006551 <__gdtoa+0x1181>
   1400066b6:	75 0f                	jne    1400066c7 <__gdtoa+0x12f7>
   1400066b8:	44 8b 44 24 38       	mov    0x38(%rsp),%r8d
   1400066bd:	41 83 e0 01          	and    $0x1,%r8d
   1400066c1:	0f 85 8a fe ff ff    	jne    140006551 <__gdtoa+0x1181>
   1400066c7:	83 7b 14 01          	cmpl   $0x1,0x14(%rbx)
   1400066cb:	c7 44 24 48 10 00 00 	movl   $0x10,0x48(%rsp)
   1400066d2:	00 
   1400066d3:	0f 8f 7f fc ff ff    	jg     140006358 <__gdtoa+0xf88>
   1400066d9:	8b 43 18             	mov    0x18(%rbx),%eax
   1400066dc:	e9 64 fc ff ff       	jmp    140006345 <__gdtoa+0xf75>
   1400066e1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400066e8:	44 8b 4c 24 58       	mov    0x58(%rsp),%r9d
   1400066ed:	4c 8b 54 24 30       	mov    0x30(%rsp),%r10
   1400066f2:	41 89 f0             	mov    %esi,%r8d
   1400066f5:	49 89 fb             	mov    %rdi,%r11
   1400066f8:	44 8b 7c 24 70       	mov    0x70(%rsp),%r15d
   1400066fd:	45 85 c9             	test   %r9d,%r9d
   140006700:	0f 84 c9 01 00 00    	je     1400068cf <__gdtoa+0x14ff>
   140006706:	83 7b 14 01          	cmpl   $0x1,0x14(%rbx)
   14000670a:	0f 8e a8 03 00 00    	jle    140006ab8 <__gdtoa+0x16e8>
   140006710:	83 7c 24 58 02       	cmpl   $0x2,0x58(%rsp)
   140006715:	0f 84 17 02 00 00    	je     140006932 <__gdtoa+0x1562>
   14000671b:	44 89 7c 24 30       	mov    %r15d,0x30(%rsp)
   140006720:	44 89 c7             	mov    %r8d,%edi
   140006723:	4d 89 d6             	mov    %r10,%r14
   140006726:	4d 89 df             	mov    %r11,%r15
   140006729:	eb 4b                	jmp    140006776 <__gdtoa+0x13a6>
   14000672b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140006730:	41 88 7c 24 ff       	mov    %dil,-0x1(%r12)
   140006735:	45 31 c0             	xor    %r8d,%r8d
   140006738:	4c 89 e9             	mov    %r13,%rcx
   14000673b:	ba 0a 00 00 00       	mov    $0xa,%edx
   140006740:	4d 89 e7             	mov    %r12,%r15
   140006743:	e8 38 08 00 00       	call   140006f80 <__multadd_D2A>
   140006748:	4c 39 ed             	cmp    %r13,%rbp
   14000674b:	48 89 d9             	mov    %rbx,%rcx
   14000674e:	ba 0a 00 00 00       	mov    $0xa,%edx
   140006753:	48 0f 44 e8          	cmove  %rax,%rbp
   140006757:	45 31 c0             	xor    %r8d,%r8d
   14000675a:	48 89 c6             	mov    %rax,%rsi
   14000675d:	e8 1e 08 00 00       	call   140006f80 <__multadd_D2A>
   140006762:	4c 89 f2             	mov    %r14,%rdx
   140006765:	49 89 f5             	mov    %rsi,%r13
   140006768:	48 89 c1             	mov    %rax,%rcx
   14000676b:	48 89 c3             	mov    %rax,%rbx
   14000676e:	e8 dd ea ff ff       	call   140005250 <__quorem_D2A>
   140006773:	8d 78 30             	lea    0x30(%rax),%edi
   140006776:	4c 89 ea             	mov    %r13,%rdx
   140006779:	4c 89 f1             	mov    %r14,%rcx
   14000677c:	4d 8d 67 01          	lea    0x1(%r15),%r12
   140006780:	e8 6b 0d 00 00       	call   1400074f0 <__cmp_D2A>
   140006785:	85 c0                	test   %eax,%eax
   140006787:	7f a7                	jg     140006730 <__gdtoa+0x1360>
   140006789:	4d 89 fb             	mov    %r15,%r11
   14000678c:	41 89 f8             	mov    %edi,%r8d
   14000678f:	44 8b 7c 24 30       	mov    0x30(%rsp),%r15d
   140006794:	4d 89 f2             	mov    %r14,%r10
   140006797:	83 ff 39             	cmp    $0x39,%edi
   14000679a:	0f 84 ad 01 00 00    	je     14000694d <__gdtoa+0x157d>
   1400067a0:	c7 44 24 48 20 00 00 	movl   $0x20,0x48(%rsp)
   1400067a7:	00 
   1400067a8:	48 89 ee             	mov    %rbp,%rsi
   1400067ab:	41 83 c0 01          	add    $0x1,%r8d
   1400067af:	4c 89 ed             	mov    %r13,%rbp
   1400067b2:	45 88 03             	mov    %r8b,(%r11)
   1400067b5:	e9 26 fa ff ff       	jmp    1400061e0 <__gdtoa+0xe10>
   1400067ba:	85 d2                	test   %edx,%edx
   1400067bc:	0f 84 98 f4 ff ff    	je     140005c5a <__gdtoa+0x88a>
   1400067c2:	8b ac 24 9c 00 00 00 	mov    0x9c(%rsp),%ebp
   1400067c9:	85 ed                	test   %ebp,%ebp
   1400067cb:	0f 8e dd f4 ff ff    	jle    140005cae <__gdtoa+0x8de>
   1400067d1:	f2 0f 59 05 8f 3e 00 	mulsd  0x3e8f(%rip),%xmm0        # 14000a668 <.rdata+0x48>
   1400067d8:	00 
   1400067d9:	f2 0f 10 0d 8f 3e 00 	movsd  0x3e8f(%rip),%xmm1        # 14000a670 <.rdata+0x50>
   1400067e0:	00 
   1400067e1:	41 bf ff ff ff ff    	mov    $0xffffffff,%r15d
   1400067e7:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
   1400067eb:	66 49 0f 7e c1       	movq   %xmm0,%r9
   1400067f0:	f2 0f 58 0d 80 3e 00 	addsd  0x3e80(%rip),%xmm1        # 14000a678 <.rdata+0x58>
   1400067f7:	00 
   1400067f8:	66 48 0f 7e c8       	movq   %xmm1,%rax
   1400067fd:	48 89 c2             	mov    %rax,%rdx
   140006800:	89 c0                	mov    %eax,%eax
   140006802:	48 c1 ea 20          	shr    $0x20,%rdx
   140006806:	81 ea 00 00 40 03    	sub    $0x3400000,%edx
   14000680c:	48 c1 e2 20          	shl    $0x20,%rdx
   140006810:	48 09 d0             	or     %rdx,%rax
   140006813:	e9 15 f1 ff ff       	jmp    14000592d <__gdtoa+0x55d>
   140006818:	8b 4d 08             	mov    0x8(%rbp),%ecx
   14000681b:	4c 89 54 24 30       	mov    %r10,0x30(%rsp)
   140006820:	e8 fb 05 00 00       	call   140006e20 <__Balloc_D2A>
   140006825:	48 8d 55 10          	lea    0x10(%rbp),%rdx
   140006829:	48 8d 48 10          	lea    0x10(%rax),%rcx
   14000682d:	49 89 c4             	mov    %rax,%r12
   140006830:	48 63 45 14          	movslq 0x14(%rbp),%rax
   140006834:	4c 8d 04 85 08 00 00 	lea    0x8(,%rax,4),%r8
   14000683b:	00 
   14000683c:	e8 77 18 00 00       	call   1400080b8 <memcpy>
   140006841:	ba 01 00 00 00       	mov    $0x1,%edx
   140006846:	4c 89 e1             	mov    %r12,%rcx
   140006849:	e8 92 0b 00 00       	call   1400073e0 <__lshift_D2A>
   14000684e:	4c 8b 54 24 30       	mov    0x30(%rsp),%r10
   140006853:	49 89 c5             	mov    %rax,%r13
   140006856:	e9 02 f8 ff ff       	jmp    14000605d <__gdtoa+0xc8d>
   14000685b:	48 8b 74 24 68       	mov    0x68(%rsp),%rsi
   140006860:	41 bf 02 00 00 00    	mov    $0x2,%r15d
   140006866:	45 31 d2             	xor    %r10d,%r10d
   140006869:	31 ed                	xor    %ebp,%ebp
   14000686b:	e9 8f f3 ff ff       	jmp    140005bff <__gdtoa+0x82f>
   140006870:	4c 8b 54 24 30       	mov    0x30(%rsp),%r10
   140006875:	44 8b 7c 24 70       	mov    0x70(%rsp),%r15d
   14000687a:	41 89 f0             	mov    %esi,%r8d
   14000687d:	49 89 fb             	mov    %rdi,%r11
   140006880:	83 fe 39             	cmp    $0x39,%esi
   140006883:	0f 84 c4 00 00 00    	je     14000694d <__gdtoa+0x157d>
   140006889:	41 83 c0 01          	add    $0x1,%r8d
   14000688d:	48 89 ee             	mov    %rbp,%rsi
   140006890:	c7 44 24 48 20 00 00 	movl   $0x20,0x48(%rsp)
   140006897:	00 
   140006898:	4c 89 ed             	mov    %r13,%rbp
   14000689b:	44 88 07             	mov    %r8b,(%rdi)
   14000689e:	e9 3d f9 ff ff       	jmp    1400061e0 <__gdtoa+0xe10>
   1400068a3:	41 89 f0             	mov    %esi,%r8d
   1400068a6:	4c 8b 54 24 30       	mov    0x30(%rsp),%r10
   1400068ab:	48 89 ee             	mov    %rbp,%rsi
   1400068ae:	44 8b 7c 24 70       	mov    0x70(%rsp),%r15d
   1400068b3:	4c 89 ed             	mov    %r13,%rbp
   1400068b6:	e9 5e fa ff ff       	jmp    140006319 <__gdtoa+0xf49>
   1400068bb:	48 89 54 24 68       	mov    %rdx,0x68(%rsp)
   1400068c0:	41 83 c7 01          	add    $0x1,%r15d
   1400068c4:	41 b8 31 00 00 00    	mov    $0x31,%r8d
   1400068ca:	e9 55 f1 ff ff       	jmp    140005a24 <__gdtoa+0x654>
   1400068cf:	85 d2                	test   %edx,%edx
   1400068d1:	7e 55                	jle    140006928 <__gdtoa+0x1558>
   1400068d3:	48 89 d9             	mov    %rbx,%rcx
   1400068d6:	ba 01 00 00 00       	mov    $0x1,%edx
   1400068db:	4c 89 54 24 30       	mov    %r10,0x30(%rsp)
   1400068e0:	4c 89 5c 24 48       	mov    %r11,0x48(%rsp)
   1400068e5:	44 89 44 24 38       	mov    %r8d,0x38(%rsp)
   1400068ea:	e8 f1 0a 00 00       	call   1400073e0 <__lshift_D2A>
   1400068ef:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
   1400068f4:	48 89 c1             	mov    %rax,%rcx
   1400068f7:	48 89 c3             	mov    %rax,%rbx
   1400068fa:	e8 f1 0b 00 00       	call   1400074f0 <__cmp_D2A>
   1400068ff:	4c 8b 54 24 30       	mov    0x30(%rsp),%r10
   140006904:	44 8b 44 24 38       	mov    0x38(%rsp),%r8d
   140006909:	85 c0                	test   %eax,%eax
   14000690b:	4c 8b 5c 24 48       	mov    0x48(%rsp),%r11
   140006910:	0f 8e 52 02 00 00    	jle    140006b68 <__gdtoa+0x1798>
   140006916:	41 83 f8 39          	cmp    $0x39,%r8d
   14000691a:	74 2d                	je     140006949 <__gdtoa+0x1579>
   14000691c:	c7 44 24 58 20 00 00 	movl   $0x20,0x58(%rsp)
   140006923:	00 
   140006924:	45 8d 46 31          	lea    0x31(%r14),%r8d
   140006928:	83 7b 14 01          	cmpl   $0x1,0x14(%rbx)
   14000692c:	0f 8e 14 02 00 00    	jle    140006b46 <__gdtoa+0x1776>
   140006932:	48 89 ee             	mov    %rbp,%rsi
   140006935:	4c 89 ed             	mov    %r13,%rbp
   140006938:	c7 44 24 48 10 00 00 	movl   $0x10,0x48(%rsp)
   14000693f:	00 
   140006940:	4d 8d 63 01          	lea    0x1(%r11),%r12
   140006944:	e9 69 fe ff ff       	jmp    1400067b2 <__gdtoa+0x13e2>
   140006949:	4d 8d 63 01          	lea    0x1(%r11),%r12
   14000694d:	48 89 ee             	mov    %rbp,%rsi
   140006950:	41 c6 03 39          	movb   $0x39,(%r11)
   140006954:	48 8b 54 24 68       	mov    0x68(%rsp),%rdx
   140006959:	4d 89 e6             	mov    %r12,%r14
   14000695c:	4c 89 ed             	mov    %r13,%rbp
   14000695f:	e9 05 fc ff ff       	jmp    140006569 <__gdtoa+0x1199>
   140006964:	c7 84 24 9c 00 00 00 	movl   $0xffffffff,0x9c(%rsp)
   14000696b:	ff ff ff ff 
   14000696f:	e9 66 f3 ff ff       	jmp    140005cda <__gdtoa+0x90a>
   140006974:	8b 84 24 9c 00 00 00 	mov    0x9c(%rsp),%eax
   14000697b:	44 89 74 24 78       	mov    %r14d,0x78(%rsp)
   140006980:	89 44 24 50          	mov    %eax,0x50(%rsp)
   140006984:	e9 2b f5 ff ff       	jmp    140005eb4 <__gdtoa+0xae4>
   140006989:	f2 0f 58 c0          	addsd  %xmm0,%xmm0
   14000698d:	44 0f b6 41 ff       	movzbl -0x1(%rcx),%r8d
   140006992:	66 0f 2f c2          	comisd %xmm2,%xmm0
   140006996:	0f 87 98 01 00 00    	ja     140006b34 <__gdtoa+0x1764>
   14000699c:	66 0f 2e c2          	ucomisd %xmm2,%xmm0
   1400069a0:	48 8b 74 24 68       	mov    0x68(%rsp),%rsi
   1400069a5:	44 8b 7c 24 78       	mov    0x78(%rsp),%r15d
   1400069aa:	7a 06                	jp     1400069b2 <__gdtoa+0x15e2>
   1400069ac:	75 04                	jne    1400069b2 <__gdtoa+0x15e2>
   1400069ae:	a8 01                	test   $0x1,%al
   1400069b0:	75 2e                	jne    1400069e0 <__gdtoa+0x1610>
   1400069b2:	c7 44 24 48 10 00 00 	movl   $0x10,0x48(%rsp)
   1400069b9:	00 
   1400069ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400069c0:	48 89 c8             	mov    %rcx,%rax
   1400069c3:	48 8d 49 ff          	lea    -0x1(%rcx),%rcx
   1400069c7:	80 78 ff 30          	cmpb   $0x30,-0x1(%rax)
   1400069cb:	74 f3                	je     1400069c0 <__gdtoa+0x15f0>
   1400069cd:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
   1400069d2:	41 83 c7 01          	add    $0x1,%r15d
   1400069d6:	e9 4a f2 ff ff       	jmp    140005c25 <__gdtoa+0x855>
   1400069db:	48 8b 74 24 68       	mov    0x68(%rsp),%rsi
   1400069e0:	48 89 ca             	mov    %rcx,%rdx
   1400069e3:	e9 29 f0 ff ff       	jmp    140005a11 <__gdtoa+0x641>
   1400069e8:	66 0f ef c9          	pxor   %xmm1,%xmm1
   1400069ec:	31 c0                	xor    %eax,%eax
   1400069ee:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400069f3:	48 8b 74 24 68       	mov    0x68(%rsp),%rsi
   1400069f8:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
   1400069fc:	48 89 54 24 68       	mov    %rdx,0x68(%rsp)
   140006a01:	0f 9a c0             	setp   %al
   140006a04:	0f 45 c1             	cmovne %ecx,%eax
   140006a07:	41 83 c7 01          	add    $0x1,%r15d
   140006a0b:	c1 e0 04             	shl    $0x4,%eax
   140006a0e:	89 44 24 48          	mov    %eax,0x48(%rsp)
   140006a12:	e9 0e f2 ff ff       	jmp    140005c25 <__gdtoa+0x855>
   140006a17:	66 0f 28 c2          	movapd %xmm2,%xmm0
   140006a1b:	e9 88 f5 ff ff       	jmp    140005fa8 <__gdtoa+0xbd8>
   140006a20:	8b 54 24 70          	mov    0x70(%rsp),%edx
   140006a24:	89 c8                	mov    %ecx,%eax
   140006a26:	01 4c 24 5c          	add    %ecx,0x5c(%rsp)
   140006a2a:	89 8c 24 ac 00 00 00 	mov    %ecx,0xac(%rsp)
   140006a31:	01 d0                	add    %edx,%eax
   140006a33:	89 54 24 60          	mov    %edx,0x60(%rsp)
   140006a37:	89 44 24 70          	mov    %eax,0x70(%rsp)
   140006a3b:	e9 13 f3 ff ff       	jmp    140005d53 <__gdtoa+0x983>
   140006a40:	45 31 c0             	xor    %r8d,%r8d
   140006a43:	48 89 e9             	mov    %rbp,%rcx
   140006a46:	ba 0a 00 00 00       	mov    $0xa,%edx
   140006a4b:	e8 30 05 00 00       	call   140006f80 <__multadd_D2A>
   140006a50:	45 84 ed             	test   %r13b,%r13b
   140006a53:	4c 8b 54 24 50       	mov    0x50(%rsp),%r10
   140006a58:	48 89 c5             	mov    %rax,%rbp
   140006a5b:	0f 85 13 ff ff ff    	jne    140006974 <__gdtoa+0x15a4>
   140006a61:	8b 84 24 9c 00 00 00 	mov    0x9c(%rsp),%eax
   140006a68:	44 8b 7c 24 78       	mov    0x78(%rsp),%r15d
   140006a6d:	44 8b 5c 24 30       	mov    0x30(%rsp),%r11d
   140006a72:	89 44 24 50          	mov    %eax,0x50(%rsp)
   140006a76:	e9 ac f5 ff ff       	jmp    140006027 <__gdtoa+0xc57>
   140006a7b:	66 0f ef c9          	pxor   %xmm1,%xmm1
   140006a7f:	31 c0                	xor    %eax,%eax
   140006a81:	ba 01 00 00 00       	mov    $0x1,%edx
   140006a86:	48 8b 74 24 68       	mov    0x68(%rsp),%rsi
   140006a8b:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
   140006a8f:	0f 9a c0             	setp   %al
   140006a92:	0f 45 c2             	cmovne %edx,%eax
   140006a95:	c1 e0 04             	shl    $0x4,%eax
   140006a98:	89 44 24 48          	mov    %eax,0x48(%rsp)
   140006a9c:	e9 1f ff ff ff       	jmp    1400069c0 <__gdtoa+0x15f0>
   140006aa1:	44 0f b6 41 ff       	movzbl -0x1(%rcx),%r8d
   140006aa6:	48 8b 74 24 68       	mov    0x68(%rsp),%rsi
   140006aab:	48 89 ca             	mov    %rcx,%rdx
   140006aae:	44 8b 7c 24 78       	mov    0x78(%rsp),%r15d
   140006ab3:	e9 59 ef ff ff       	jmp    140005a11 <__gdtoa+0x641>
   140006ab8:	8b 4b 18             	mov    0x18(%rbx),%ecx
   140006abb:	85 c9                	test   %ecx,%ecx
   140006abd:	0f 85 4d fc ff ff    	jne    140006710 <__gdtoa+0x1340>
   140006ac3:	85 d2                	test   %edx,%edx
   140006ac5:	0f 8f 08 fe ff ff    	jg     1400068d3 <__gdtoa+0x1503>
   140006acb:	48 89 ee             	mov    %rbp,%rsi
   140006ace:	4c 8d 67 01          	lea    0x1(%rdi),%r12
   140006ad2:	4c 89 ed             	mov    %r13,%rbp
   140006ad5:	e9 d8 fc ff ff       	jmp    1400067b2 <__gdtoa+0x13e2>
   140006ada:	8b 4c 24 50          	mov    0x50(%rsp),%ecx
   140006ade:	8b 94 24 80 00 00 00 	mov    0x80(%rsp),%edx
   140006ae5:	8d 41 ff             	lea    -0x1(%rcx),%eax
   140006ae8:	39 c2                	cmp    %eax,%edx
   140006aea:	0f 8c ac fa ff ff    	jl     14000659c <__gdtoa+0x11cc>
   140006af0:	29 c2                	sub    %eax,%edx
   140006af2:	01 4c 24 5c          	add    %ecx,0x5c(%rsp)
   140006af6:	89 c8                	mov    %ecx,%eax
   140006af8:	89 8c 24 ac 00 00 00 	mov    %ecx,0xac(%rsp)
   140006aff:	8b 4c 24 70          	mov    0x70(%rsp),%ecx
   140006b03:	41 89 d4             	mov    %edx,%r12d
   140006b06:	01 c8                	add    %ecx,%eax
   140006b08:	89 4c 24 60          	mov    %ecx,0x60(%rsp)
   140006b0c:	89 44 24 70          	mov    %eax,0x70(%rsp)
   140006b10:	e9 3e f2 ff ff       	jmp    140005d53 <__gdtoa+0x983>
   140006b15:	8b 44 24 70          	mov    0x70(%rsp),%eax
   140006b19:	c7 44 24 58 00 00 00 	movl   $0x0,0x58(%rsp)
   140006b20:	00 
   140006b21:	31 ed                	xor    %ebp,%ebp
   140006b23:	44 8b a4 24 80 00 00 	mov    0x80(%rsp),%r12d
   140006b2a:	00 
   140006b2b:	89 44 24 60          	mov    %eax,0x60(%rsp)
   140006b2f:	e9 44 f2 ff ff       	jmp    140005d78 <__gdtoa+0x9a8>
   140006b34:	48 8b 74 24 68       	mov    0x68(%rsp),%rsi
   140006b39:	44 8b 7c 24 78       	mov    0x78(%rsp),%r15d
   140006b3e:	48 89 ca             	mov    %rcx,%rdx
   140006b41:	e9 cb ee ff ff       	jmp    140005a11 <__gdtoa+0x641>
   140006b46:	8b 53 18             	mov    0x18(%rbx),%edx
   140006b49:	48 89 ee             	mov    %rbp,%rsi
   140006b4c:	4c 89 ed             	mov    %r13,%rbp
   140006b4f:	85 d2                	test   %edx,%edx
   140006b51:	0f 85 e1 fd ff ff    	jne    140006938 <__gdtoa+0x1568>
   140006b57:	8b 44 24 58          	mov    0x58(%rsp),%eax
   140006b5b:	4d 8d 63 01          	lea    0x1(%r11),%r12
   140006b5f:	89 44 24 48          	mov    %eax,0x48(%rsp)
   140006b63:	e9 4a fc ff ff       	jmp    1400067b2 <__gdtoa+0x13e2>
   140006b68:	75 0a                	jne    140006b74 <__gdtoa+0x17a4>
   140006b6a:	41 f6 c0 01          	test   $0x1,%r8b
   140006b6e:	0f 85 a2 fd ff ff    	jne    140006916 <__gdtoa+0x1546>
   140006b74:	c7 44 24 58 20 00 00 	movl   $0x20,0x58(%rsp)
   140006b7b:	00 
   140006b7c:	e9 a7 fd ff ff       	jmp    140006928 <__gdtoa+0x1558>
   140006b81:	83 7b 14 01          	cmpl   $0x1,0x14(%rbx)
   140006b85:	c7 44 24 48 10 00 00 	movl   $0x10,0x48(%rsp)
   140006b8c:	00 
   140006b8d:	0f 8f 3d f6 ff ff    	jg     1400061d0 <__gdtoa+0xe00>
   140006b93:	31 c0                	xor    %eax,%eax
   140006b95:	83 7b 18 00          	cmpl   $0x0,0x18(%rbx)
   140006b99:	0f 95 c0             	setne  %al
   140006b9c:	c1 e0 04             	shl    $0x4,%eax
   140006b9f:	89 44 24 48          	mov    %eax,0x48(%rsp)
   140006ba3:	e9 28 f6 ff ff       	jmp    1400061d0 <__gdtoa+0xe00>
   140006ba8:	90                   	nop
   140006ba9:	90                   	nop
   140006baa:	90                   	nop
   140006bab:	90                   	nop
   140006bac:	90                   	nop
   140006bad:	90                   	nop
   140006bae:	90                   	nop
   140006baf:	90                   	nop

0000000140006bb0 <__rshift_D2A>:
   140006bb0:	41 54                	push   %r12
   140006bb2:	55                   	push   %rbp
   140006bb3:	57                   	push   %rdi
   140006bb4:	56                   	push   %rsi
   140006bb5:	53                   	push   %rbx
   140006bb6:	48 63 59 14          	movslq 0x14(%rcx),%rbx
   140006bba:	89 d5                	mov    %edx,%ebp
   140006bbc:	49 89 ca             	mov    %rcx,%r10
   140006bbf:	c1 fd 05             	sar    $0x5,%ebp
   140006bc2:	39 eb                	cmp    %ebp,%ebx
   140006bc4:	7f 1a                	jg     140006be0 <__rshift_D2A+0x30>
   140006bc6:	41 c7 42 14 00 00 00 	movl   $0x0,0x14(%r10)
   140006bcd:	00 
   140006bce:	41 c7 42 18 00 00 00 	movl   $0x0,0x18(%r10)
   140006bd5:	00 
   140006bd6:	5b                   	pop    %rbx
   140006bd7:	5e                   	pop    %rsi
   140006bd8:	5f                   	pop    %rdi
   140006bd9:	5d                   	pop    %rbp
   140006bda:	41 5c                	pop    %r12
   140006bdc:	c3                   	ret
   140006bdd:	0f 1f 00             	nopl   (%rax)
   140006be0:	4c 8d 61 18          	lea    0x18(%rcx),%r12
   140006be4:	48 63 ed             	movslq %ebp,%rbp
   140006be7:	4d 8d 1c 9c          	lea    (%r12,%rbx,4),%r11
   140006beb:	49 8d 34 ac          	lea    (%r12,%rbp,4),%rsi
   140006bef:	83 e2 1f             	and    $0x1f,%edx
   140006bf2:	74 64                	je     140006c58 <__rshift_D2A+0xa8>
   140006bf4:	44 8b 0e             	mov    (%rsi),%r9d
   140006bf7:	bf 20 00 00 00       	mov    $0x20,%edi
   140006bfc:	89 d1                	mov    %edx,%ecx
   140006bfe:	4c 8d 46 04          	lea    0x4(%rsi),%r8
   140006c02:	29 d7                	sub    %edx,%edi
   140006c04:	41 d3 e9             	shr    %cl,%r9d
   140006c07:	4d 39 d8             	cmp    %r11,%r8
   140006c0a:	0f 83 80 00 00 00    	jae    140006c90 <__rshift_D2A+0xe0>
   140006c10:	4c 89 e6             	mov    %r12,%rsi
   140006c13:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140006c18:	41 8b 00             	mov    (%r8),%eax
   140006c1b:	89 f9                	mov    %edi,%ecx
   140006c1d:	48 83 c6 04          	add    $0x4,%rsi
   140006c21:	49 83 c0 04          	add    $0x4,%r8
   140006c25:	d3 e0                	shl    %cl,%eax
   140006c27:	89 d1                	mov    %edx,%ecx
   140006c29:	44 09 c8             	or     %r9d,%eax
   140006c2c:	89 46 fc             	mov    %eax,-0x4(%rsi)
   140006c2f:	45 8b 48 fc          	mov    -0x4(%r8),%r9d
   140006c33:	41 d3 e9             	shr    %cl,%r9d
   140006c36:	4d 39 d8             	cmp    %r11,%r8
   140006c39:	72 dd                	jb     140006c18 <__rshift_D2A+0x68>
   140006c3b:	48 29 eb             	sub    %rbp,%rbx
   140006c3e:	49 8d 44 9c fc       	lea    -0x4(%r12,%rbx,4),%rax
   140006c43:	44 89 08             	mov    %r9d,(%rax)
   140006c46:	45 85 c9             	test   %r9d,%r9d
   140006c49:	74 2a                	je     140006c75 <__rshift_D2A+0xc5>
   140006c4b:	48 83 c0 04          	add    $0x4,%rax
   140006c4f:	eb 24                	jmp    140006c75 <__rshift_D2A+0xc5>
   140006c51:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140006c58:	4c 89 e7             	mov    %r12,%rdi
   140006c5b:	4c 39 de             	cmp    %r11,%rsi
   140006c5e:	0f 83 62 ff ff ff    	jae    140006bc6 <__rshift_D2A+0x16>
   140006c64:	0f 1f 40 00          	nopl   0x0(%rax)
   140006c68:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
   140006c69:	4c 39 de             	cmp    %r11,%rsi
   140006c6c:	72 fa                	jb     140006c68 <__rshift_D2A+0xb8>
   140006c6e:	48 29 eb             	sub    %rbp,%rbx
   140006c71:	49 8d 04 9c          	lea    (%r12,%rbx,4),%rax
   140006c75:	4c 29 e0             	sub    %r12,%rax
   140006c78:	48 c1 f8 02          	sar    $0x2,%rax
   140006c7c:	41 89 42 14          	mov    %eax,0x14(%r10)
   140006c80:	85 c0                	test   %eax,%eax
   140006c82:	0f 84 46 ff ff ff    	je     140006bce <__rshift_D2A+0x1e>
   140006c88:	5b                   	pop    %rbx
   140006c89:	5e                   	pop    %rsi
   140006c8a:	5f                   	pop    %rdi
   140006c8b:	5d                   	pop    %rbp
   140006c8c:	41 5c                	pop    %r12
   140006c8e:	c3                   	ret
   140006c8f:	90                   	nop
   140006c90:	45 89 4a 18          	mov    %r9d,0x18(%r10)
   140006c94:	45 85 c9             	test   %r9d,%r9d
   140006c97:	0f 84 29 ff ff ff    	je     140006bc6 <__rshift_D2A+0x16>
   140006c9d:	4c 89 e0             	mov    %r12,%rax
   140006ca0:	eb a9                	jmp    140006c4b <__rshift_D2A+0x9b>
   140006ca2:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140006ca9:	00 00 00 00 
   140006cad:	0f 1f 00             	nopl   (%rax)

0000000140006cb0 <__trailz_D2A>:
   140006cb0:	48 63 51 14          	movslq 0x14(%rcx),%rdx
   140006cb4:	48 8d 41 18          	lea    0x18(%rcx),%rax
   140006cb8:	48 8d 0c 90          	lea    (%rax,%rdx,4),%rcx
   140006cbc:	31 d2                	xor    %edx,%edx
   140006cbe:	48 39 c8             	cmp    %rcx,%rax
   140006cc1:	72 11                	jb     140006cd4 <__trailz_D2A+0x24>
   140006cc3:	eb 22                	jmp    140006ce7 <__trailz_D2A+0x37>
   140006cc5:	0f 1f 00             	nopl   (%rax)
   140006cc8:	48 83 c0 04          	add    $0x4,%rax
   140006ccc:	83 c2 20             	add    $0x20,%edx
   140006ccf:	48 39 c8             	cmp    %rcx,%rax
   140006cd2:	73 13                	jae    140006ce7 <__trailz_D2A+0x37>
   140006cd4:	44 8b 00             	mov    (%rax),%r8d
   140006cd7:	45 85 c0             	test   %r8d,%r8d
   140006cda:	74 ec                	je     140006cc8 <__trailz_D2A+0x18>
   140006cdc:	48 39 c8             	cmp    %rcx,%rax
   140006cdf:	73 06                	jae    140006ce7 <__trailz_D2A+0x37>
   140006ce1:	f3 0f bc 00          	tzcnt  (%rax),%eax
   140006ce5:	01 c2                	add    %eax,%edx
   140006ce7:	89 d0                	mov    %edx,%eax
   140006ce9:	c3                   	ret
   140006cea:	90                   	nop
   140006ceb:	90                   	nop
   140006cec:	90                   	nop
   140006ced:	90                   	nop
   140006cee:	90                   	nop
   140006cef:	90                   	nop

0000000140006cf0 <dtoa_lock>:
   140006cf0:	57                   	push   %rdi
   140006cf1:	56                   	push   %rsi
   140006cf2:	53                   	push   %rbx
   140006cf3:	48 83 ec 20          	sub    $0x20,%rsp
   140006cf7:	8b 05 f3 7d 00 00    	mov    0x7df3(%rip),%eax        # 14000eaf0 <dtoa_CS_init>
   140006cfd:	89 ce                	mov    %ecx,%esi
   140006cff:	83 f8 02             	cmp    $0x2,%eax
   140006d02:	0f 84 b8 00 00 00    	je     140006dc0 <dtoa_lock+0xd0>
   140006d08:	85 c0                	test   %eax,%eax
   140006d0a:	74 3c                	je     140006d48 <dtoa_lock+0x58>
   140006d0c:	83 f8 01             	cmp    $0x1,%eax
   140006d0f:	75 2a                	jne    140006d3b <dtoa_lock+0x4b>
   140006d11:	48 8b 1d f0 84 00 00 	mov    0x84f0(%rip),%rbx        # 14000f208 <__imp_Sleep>
   140006d18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140006d1f:	00 
   140006d20:	b9 01 00 00 00       	mov    $0x1,%ecx
   140006d25:	ff d3                	call   *%rbx
   140006d27:	8b 05 c3 7d 00 00    	mov    0x7dc3(%rip),%eax        # 14000eaf0 <dtoa_CS_init>
   140006d2d:	83 f8 01             	cmp    $0x1,%eax
   140006d30:	74 ee                	je     140006d20 <dtoa_lock+0x30>
   140006d32:	83 f8 02             	cmp    $0x2,%eax
   140006d35:	0f 84 85 00 00 00    	je     140006dc0 <dtoa_lock+0xd0>
   140006d3b:	48 83 c4 20          	add    $0x20,%rsp
   140006d3f:	5b                   	pop    %rbx
   140006d40:	5e                   	pop    %rsi
   140006d41:	5f                   	pop    %rdi
   140006d42:	c3                   	ret
   140006d43:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140006d48:	b8 01 00 00 00       	mov    $0x1,%eax
   140006d4d:	87 05 9d 7d 00 00    	xchg   %eax,0x7d9d(%rip)        # 14000eaf0 <dtoa_CS_init>
   140006d53:	85 c0                	test   %eax,%eax
   140006d55:	75 49                	jne    140006da0 <dtoa_lock+0xb0>
   140006d57:	48 8d 1d a2 7d 00 00 	lea    0x7da2(%rip),%rbx        # 14000eb00 <dtoa_CritSec>
   140006d5e:	48 8b 3d 7b 84 00 00 	mov    0x847b(%rip),%rdi        # 14000f1e0 <__imp_InitializeCriticalSection>
   140006d65:	48 89 d9             	mov    %rbx,%rcx
   140006d68:	ff d7                	call   *%rdi
   140006d6a:	48 8d 4b 28          	lea    0x28(%rbx),%rcx
   140006d6e:	ff d7                	call   *%rdi
   140006d70:	48 8d 0d 59 00 00 00 	lea    0x59(%rip),%rcx        # 140006dd0 <dtoa_lock_cleanup>
   140006d77:	e8 94 a6 ff ff       	call   140001410 <atexit>
   140006d7c:	c7 05 6a 7d 00 00 02 	movl   $0x2,0x7d6a(%rip)        # 14000eaf0 <dtoa_CS_init>
   140006d83:	00 00 00 
   140006d86:	48 63 ce             	movslq %esi,%rcx
   140006d89:	48 8d 04 89          	lea    (%rcx,%rcx,4),%rax
   140006d8d:	48 8d 0c c3          	lea    (%rbx,%rax,8),%rcx
   140006d91:	48 83 c4 20          	add    $0x20,%rsp
   140006d95:	5b                   	pop    %rbx
   140006d96:	5e                   	pop    %rsi
   140006d97:	5f                   	pop    %rdi
   140006d98:	48 ff 25 31 84 00 00 	rex.W jmp *0x8431(%rip)        # 14000f1d0 <__imp_EnterCriticalSection>
   140006d9f:	90                   	nop
   140006da0:	48 8d 1d 59 7d 00 00 	lea    0x7d59(%rip),%rbx        # 14000eb00 <dtoa_CritSec>
   140006da7:	83 f8 02             	cmp    $0x2,%eax
   140006daa:	74 d0                	je     140006d7c <dtoa_lock+0x8c>
   140006dac:	8b 05 3e 7d 00 00    	mov    0x7d3e(%rip),%eax        # 14000eaf0 <dtoa_CS_init>
   140006db2:	83 f8 01             	cmp    $0x1,%eax
   140006db5:	0f 84 56 ff ff ff    	je     140006d11 <dtoa_lock+0x21>
   140006dbb:	e9 72 ff ff ff       	jmp    140006d32 <dtoa_lock+0x42>
   140006dc0:	48 8d 1d 39 7d 00 00 	lea    0x7d39(%rip),%rbx        # 14000eb00 <dtoa_CritSec>
   140006dc7:	eb bd                	jmp    140006d86 <dtoa_lock+0x96>
   140006dc9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140006dd0 <dtoa_lock_cleanup>:
   140006dd0:	53                   	push   %rbx
   140006dd1:	48 83 ec 20          	sub    $0x20,%rsp
   140006dd5:	b8 03 00 00 00       	mov    $0x3,%eax
   140006dda:	87 05 10 7d 00 00    	xchg   %eax,0x7d10(%rip)        # 14000eaf0 <dtoa_CS_init>
   140006de0:	83 f8 02             	cmp    $0x2,%eax
   140006de3:	74 0b                	je     140006df0 <dtoa_lock_cleanup+0x20>
   140006de5:	48 83 c4 20          	add    $0x20,%rsp
   140006de9:	5b                   	pop    %rbx
   140006dea:	c3                   	ret
   140006deb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140006df0:	48 8b 1d d1 83 00 00 	mov    0x83d1(%rip),%rbx        # 14000f1c8 <__IAT_start__>
   140006df7:	48 8d 0d 02 7d 00 00 	lea    0x7d02(%rip),%rcx        # 14000eb00 <dtoa_CritSec>
   140006dfe:	ff d3                	call   *%rbx
   140006e00:	48 8d 0d 21 7d 00 00 	lea    0x7d21(%rip),%rcx        # 14000eb28 <dtoa_CritSec+0x28>
   140006e07:	48 89 d8             	mov    %rbx,%rax
   140006e0a:	48 83 c4 20          	add    $0x20,%rsp
   140006e0e:	5b                   	pop    %rbx
   140006e0f:	48 ff e0             	rex.W jmp *%rax
   140006e12:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140006e19:	00 00 00 00 
   140006e1d:	0f 1f 00             	nopl   (%rax)

0000000140006e20 <__Balloc_D2A>:
   140006e20:	56                   	push   %rsi
   140006e21:	53                   	push   %rbx
   140006e22:	48 83 ec 38          	sub    $0x38,%rsp
   140006e26:	89 cb                	mov    %ecx,%ebx
   140006e28:	31 c9                	xor    %ecx,%ecx
   140006e2a:	e8 c1 fe ff ff       	call   140006cf0 <dtoa_lock>
   140006e2f:	83 fb 09             	cmp    $0x9,%ebx
   140006e32:	7f 3c                	jg     140006e70 <__Balloc_D2A+0x50>
   140006e34:	48 8d 15 65 7c 00 00 	lea    0x7c65(%rip),%rdx        # 14000eaa0 <freelist>
   140006e3b:	48 63 cb             	movslq %ebx,%rcx
   140006e3e:	48 8b 04 ca          	mov    (%rdx,%rcx,8),%rax
   140006e42:	48 85 c0             	test   %rax,%rax
   140006e45:	74 79                	je     140006ec0 <__Balloc_D2A+0xa0>
   140006e47:	4c 8b 00             	mov    (%rax),%r8
   140006e4a:	83 3d 9f 7c 00 00 02 	cmpl   $0x2,0x7c9f(%rip)        # 14000eaf0 <dtoa_CS_init>
   140006e51:	4c 89 04 ca          	mov    %r8,(%rdx,%rcx,8)
   140006e55:	75 50                	jne    140006ea7 <__Balloc_D2A+0x87>
   140006e57:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   140006e5c:	48 8d 0d 9d 7c 00 00 	lea    0x7c9d(%rip),%rcx        # 14000eb00 <dtoa_CritSec>
   140006e63:	ff 15 87 83 00 00    	call   *0x8387(%rip)        # 14000f1f0 <__imp_LeaveCriticalSection>
   140006e69:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
   140006e6e:	eb 37                	jmp    140006ea7 <__Balloc_D2A+0x87>
   140006e70:	89 d9                	mov    %ebx,%ecx
   140006e72:	be 01 00 00 00       	mov    $0x1,%esi
   140006e77:	d3 e6                	shl    %cl,%esi
   140006e79:	48 63 c6             	movslq %esi,%rax
   140006e7c:	48 8d 0c 85 23 00 00 	lea    0x23(,%rax,4),%rcx
   140006e83:	00 
   140006e84:	48 c1 e9 03          	shr    $0x3,%rcx
   140006e88:	89 c9                	mov    %ecx,%ecx
   140006e8a:	48 c1 e1 03          	shl    $0x3,%rcx
   140006e8e:	e8 1d 12 00 00       	call   1400080b0 <malloc>
   140006e93:	48 85 c0             	test   %rax,%rax
   140006e96:	74 17                	je     140006eaf <__Balloc_D2A+0x8f>
   140006e98:	83 3d 51 7c 00 00 02 	cmpl   $0x2,0x7c51(%rip)        # 14000eaf0 <dtoa_CS_init>
   140006e9f:	89 58 08             	mov    %ebx,0x8(%rax)
   140006ea2:	89 70 0c             	mov    %esi,0xc(%rax)
   140006ea5:	74 b0                	je     140006e57 <__Balloc_D2A+0x37>
   140006ea7:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
   140006eae:	00 
   140006eaf:	48 83 c4 38          	add    $0x38,%rsp
   140006eb3:	5b                   	pop    %rbx
   140006eb4:	5e                   	pop    %rsi
   140006eb5:	c3                   	ret
   140006eb6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140006ebd:	00 00 00 
   140006ec0:	89 d9                	mov    %ebx,%ecx
   140006ec2:	be 01 00 00 00       	mov    $0x1,%esi
   140006ec7:	4c 8d 05 d2 72 00 00 	lea    0x72d2(%rip),%r8        # 14000e1a0 <private_mem>
   140006ece:	d3 e6                	shl    %cl,%esi
   140006ed0:	8d 46 09             	lea    0x9(%rsi),%eax
   140006ed3:	48 98                	cltq
   140006ed5:	48 8d 0c 85 ff ff ff 	lea    -0x1(,%rax,4),%rcx
   140006edc:	ff 
   140006edd:	48 8b 05 8c 21 00 00 	mov    0x218c(%rip),%rax        # 140009070 <pmem_next>
   140006ee4:	48 c1 e9 03          	shr    $0x3,%rcx
   140006ee8:	48 89 c2             	mov    %rax,%rdx
   140006eeb:	4c 29 c2             	sub    %r8,%rdx
   140006eee:	48 c1 fa 03          	sar    $0x3,%rdx
   140006ef2:	48 01 ca             	add    %rcx,%rdx
   140006ef5:	48 81 fa 20 01 00 00 	cmp    $0x120,%rdx
   140006efc:	77 8c                	ja     140006e8a <__Balloc_D2A+0x6a>
   140006efe:	48 8d 14 c8          	lea    (%rax,%rcx,8),%rdx
   140006f02:	48 89 15 67 21 00 00 	mov    %rdx,0x2167(%rip)        # 140009070 <pmem_next>
   140006f09:	eb 8d                	jmp    140006e98 <__Balloc_D2A+0x78>
   140006f0b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000140006f10 <__Bfree_D2A>:
   140006f10:	53                   	push   %rbx
   140006f11:	48 83 ec 20          	sub    $0x20,%rsp
   140006f15:	48 89 cb             	mov    %rcx,%rbx
   140006f18:	48 85 c9             	test   %rcx,%rcx
   140006f1b:	74 39                	je     140006f56 <__Bfree_D2A+0x46>
   140006f1d:	83 79 08 09          	cmpl   $0x9,0x8(%rcx)
   140006f21:	7e 0d                	jle    140006f30 <__Bfree_D2A+0x20>
   140006f23:	48 83 c4 20          	add    $0x20,%rsp
   140006f27:	5b                   	pop    %rbx
   140006f28:	e9 6b 11 00 00       	jmp    140008098 <free>
   140006f2d:	0f 1f 00             	nopl   (%rax)
   140006f30:	31 c9                	xor    %ecx,%ecx
   140006f32:	e8 b9 fd ff ff       	call   140006cf0 <dtoa_lock>
   140006f37:	48 63 53 08          	movslq 0x8(%rbx),%rdx
   140006f3b:	48 8d 05 5e 7b 00 00 	lea    0x7b5e(%rip),%rax        # 14000eaa0 <freelist>
   140006f42:	83 3d a7 7b 00 00 02 	cmpl   $0x2,0x7ba7(%rip)        # 14000eaf0 <dtoa_CS_init>
   140006f49:	48 8b 0c d0          	mov    (%rax,%rdx,8),%rcx
   140006f4d:	48 89 1c d0          	mov    %rbx,(%rax,%rdx,8)
   140006f51:	48 89 0b             	mov    %rcx,(%rbx)
   140006f54:	74 0a                	je     140006f60 <__Bfree_D2A+0x50>
   140006f56:	48 83 c4 20          	add    $0x20,%rsp
   140006f5a:	5b                   	pop    %rbx
   140006f5b:	c3                   	ret
   140006f5c:	0f 1f 40 00          	nopl   0x0(%rax)
   140006f60:	48 8d 0d 99 7b 00 00 	lea    0x7b99(%rip),%rcx        # 14000eb00 <dtoa_CritSec>
   140006f67:	48 83 c4 20          	add    $0x20,%rsp
   140006f6b:	5b                   	pop    %rbx
   140006f6c:	48 ff 25 7d 82 00 00 	rex.W jmp *0x827d(%rip)        # 14000f1f0 <__imp_LeaveCriticalSection>
   140006f73:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140006f7a:	00 00 00 00 
   140006f7e:	66 90                	xchg   %ax,%ax

0000000140006f80 <__multadd_D2A>:
   140006f80:	55                   	push   %rbp
   140006f81:	57                   	push   %rdi
   140006f82:	56                   	push   %rsi
   140006f83:	53                   	push   %rbx
   140006f84:	48 83 ec 28          	sub    $0x28,%rsp
   140006f88:	8b 79 14             	mov    0x14(%rcx),%edi
   140006f8b:	48 89 cb             	mov    %rcx,%rbx
   140006f8e:	49 63 f0             	movslq %r8d,%rsi
   140006f91:	48 63 d2             	movslq %edx,%rdx
   140006f94:	31 c9                	xor    %ecx,%ecx
   140006f96:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140006f9d:	00 00 00 
   140006fa0:	8b 44 8b 18          	mov    0x18(%rbx,%rcx,4),%eax
   140006fa4:	48 0f af c2          	imul   %rdx,%rax
   140006fa8:	48 01 f0             	add    %rsi,%rax
   140006fab:	89 44 8b 18          	mov    %eax,0x18(%rbx,%rcx,4)
   140006faf:	48 89 c6             	mov    %rax,%rsi
   140006fb2:	48 83 c1 01          	add    $0x1,%rcx
   140006fb6:	48 c1 ee 20          	shr    $0x20,%rsi
   140006fba:	39 cf                	cmp    %ecx,%edi
   140006fbc:	7f e2                	jg     140006fa0 <__multadd_D2A+0x20>
   140006fbe:	48 89 dd             	mov    %rbx,%rbp
   140006fc1:	48 85 f6             	test   %rsi,%rsi
   140006fc4:	74 15                	je     140006fdb <__multadd_D2A+0x5b>
   140006fc6:	39 7b 0c             	cmp    %edi,0xc(%rbx)
   140006fc9:	7e 25                	jle    140006ff0 <__multadd_D2A+0x70>
   140006fcb:	48 63 c7             	movslq %edi,%rax
   140006fce:	83 c7 01             	add    $0x1,%edi
   140006fd1:	48 89 dd             	mov    %rbx,%rbp
   140006fd4:	89 74 83 18          	mov    %esi,0x18(%rbx,%rax,4)
   140006fd8:	89 7b 14             	mov    %edi,0x14(%rbx)
   140006fdb:	48 89 e8             	mov    %rbp,%rax
   140006fde:	48 83 c4 28          	add    $0x28,%rsp
   140006fe2:	5b                   	pop    %rbx
   140006fe3:	5e                   	pop    %rsi
   140006fe4:	5f                   	pop    %rdi
   140006fe5:	5d                   	pop    %rbp
   140006fe6:	c3                   	ret
   140006fe7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140006fee:	00 00 
   140006ff0:	8b 43 08             	mov    0x8(%rbx),%eax
   140006ff3:	8d 48 01             	lea    0x1(%rax),%ecx
   140006ff6:	e8 25 fe ff ff       	call   140006e20 <__Balloc_D2A>
   140006ffb:	48 89 c5             	mov    %rax,%rbp
   140006ffe:	48 85 c0             	test   %rax,%rax
   140007001:	74 d8                	je     140006fdb <__multadd_D2A+0x5b>
   140007003:	48 8d 48 10          	lea    0x10(%rax),%rcx
   140007007:	48 63 43 14          	movslq 0x14(%rbx),%rax
   14000700b:	48 8d 53 10          	lea    0x10(%rbx),%rdx
   14000700f:	4c 8d 04 85 08 00 00 	lea    0x8(,%rax,4),%r8
   140007016:	00 
   140007017:	e8 9c 10 00 00       	call   1400080b8 <memcpy>
   14000701c:	48 89 d9             	mov    %rbx,%rcx
   14000701f:	48 89 eb             	mov    %rbp,%rbx
   140007022:	e8 e9 fe ff ff       	call   140006f10 <__Bfree_D2A>
   140007027:	48 63 c7             	movslq %edi,%rax
   14000702a:	83 c7 01             	add    $0x1,%edi
   14000702d:	48 89 dd             	mov    %rbx,%rbp
   140007030:	89 74 83 18          	mov    %esi,0x18(%rbx,%rax,4)
   140007034:	89 7b 14             	mov    %edi,0x14(%rbx)
   140007037:	eb a2                	jmp    140006fdb <__multadd_D2A+0x5b>
   140007039:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140007040 <__i2b_D2A>:
   140007040:	53                   	push   %rbx
   140007041:	48 83 ec 30          	sub    $0x30,%rsp
   140007045:	89 cb                	mov    %ecx,%ebx
   140007047:	31 c9                	xor    %ecx,%ecx
   140007049:	e8 a2 fc ff ff       	call   140006cf0 <dtoa_lock>
   14000704e:	48 8b 05 53 7a 00 00 	mov    0x7a53(%rip),%rax        # 14000eaa8 <freelist+0x8>
   140007055:	48 85 c0             	test   %rax,%rax
   140007058:	74 2e                	je     140007088 <__i2b_D2A+0x48>
   14000705a:	48 8b 10             	mov    (%rax),%rdx
   14000705d:	83 3d 8c 7a 00 00 02 	cmpl   $0x2,0x7a8c(%rip)        # 14000eaf0 <dtoa_CS_init>
   140007064:	48 89 15 3d 7a 00 00 	mov    %rdx,0x7a3d(%rip)        # 14000eaa8 <freelist+0x8>
   14000706b:	74 63                	je     1400070d0 <__i2b_D2A+0x90>
   14000706d:	48 8b 15 9c 37 00 00 	mov    0x379c(%rip),%rdx        # 14000a810 <__bigtens_D2A+0x30>
   140007074:	89 58 18             	mov    %ebx,0x18(%rax)
   140007077:	48 89 50 10          	mov    %rdx,0x10(%rax)
   14000707b:	48 83 c4 30          	add    $0x30,%rsp
   14000707f:	5b                   	pop    %rbx
   140007080:	c3                   	ret
   140007081:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140007088:	48 8b 05 e1 1f 00 00 	mov    0x1fe1(%rip),%rax        # 140009070 <pmem_next>
   14000708f:	48 8d 0d 0a 71 00 00 	lea    0x710a(%rip),%rcx        # 14000e1a0 <private_mem>
   140007096:	48 89 c2             	mov    %rax,%rdx
   140007099:	48 29 ca             	sub    %rcx,%rdx
   14000709c:	48 c1 fa 03          	sar    $0x3,%rdx
   1400070a0:	48 83 c2 05          	add    $0x5,%rdx
   1400070a4:	48 81 fa 20 01 00 00 	cmp    $0x120,%rdx
   1400070ab:	76 43                	jbe    1400070f0 <__i2b_D2A+0xb0>
   1400070ad:	b9 28 00 00 00       	mov    $0x28,%ecx
   1400070b2:	e8 f9 0f 00 00       	call   1400080b0 <malloc>
   1400070b7:	48 85 c0             	test   %rax,%rax
   1400070ba:	74 bf                	je     14000707b <__i2b_D2A+0x3b>
   1400070bc:	48 8b 15 45 37 00 00 	mov    0x3745(%rip),%rdx        # 14000a808 <__bigtens_D2A+0x28>
   1400070c3:	83 3d 26 7a 00 00 02 	cmpl   $0x2,0x7a26(%rip)        # 14000eaf0 <dtoa_CS_init>
   1400070ca:	48 89 50 08          	mov    %rdx,0x8(%rax)
   1400070ce:	75 9d                	jne    14000706d <__i2b_D2A+0x2d>
   1400070d0:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   1400070d5:	48 8d 0d 24 7a 00 00 	lea    0x7a24(%rip),%rcx        # 14000eb00 <dtoa_CritSec>
   1400070dc:	ff 15 0e 81 00 00    	call   *0x810e(%rip)        # 14000f1f0 <__imp_LeaveCriticalSection>
   1400070e2:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
   1400070e7:	eb 84                	jmp    14000706d <__i2b_D2A+0x2d>
   1400070e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400070f0:	48 8d 50 28          	lea    0x28(%rax),%rdx
   1400070f4:	48 89 15 75 1f 00 00 	mov    %rdx,0x1f75(%rip)        # 140009070 <pmem_next>
   1400070fb:	eb bf                	jmp    1400070bc <__i2b_D2A+0x7c>
   1400070fd:	0f 1f 00             	nopl   (%rax)

0000000140007100 <__mult_D2A>:
   140007100:	41 57                	push   %r15
   140007102:	41 56                	push   %r14
   140007104:	41 55                	push   %r13
   140007106:	41 54                	push   %r12
   140007108:	55                   	push   %rbp
   140007109:	57                   	push   %rdi
   14000710a:	56                   	push   %rsi
   14000710b:	53                   	push   %rbx
   14000710c:	48 83 ec 28          	sub    $0x28,%rsp
   140007110:	4c 63 61 14          	movslq 0x14(%rcx),%r12
   140007114:	48 63 6a 14          	movslq 0x14(%rdx),%rbp
   140007118:	49 89 cd             	mov    %rcx,%r13
   14000711b:	49 89 d7             	mov    %rdx,%r15
   14000711e:	41 39 ec             	cmp    %ebp,%r12d
   140007121:	7c 0e                	jl     140007131 <__mult_D2A+0x31>
   140007123:	89 e8                	mov    %ebp,%eax
   140007125:	49 89 cf             	mov    %rcx,%r15
   140007128:	49 63 ec             	movslq %r12d,%rbp
   14000712b:	49 89 d5             	mov    %rdx,%r13
   14000712e:	4c 63 e0             	movslq %eax,%r12
   140007131:	41 8b 4f 08          	mov    0x8(%r15),%ecx
   140007135:	42 8d 5c 25 00       	lea    0x0(%rbp,%r12,1),%ebx
   14000713a:	41 39 5f 0c          	cmp    %ebx,0xc(%r15)
   14000713e:	7d 03                	jge    140007143 <__mult_D2A+0x43>
   140007140:	83 c1 01             	add    $0x1,%ecx
   140007143:	e8 d8 fc ff ff       	call   140006e20 <__Balloc_D2A>
   140007148:	48 89 c7             	mov    %rax,%rdi
   14000714b:	48 85 c0             	test   %rax,%rax
   14000714e:	0f 84 ef 00 00 00    	je     140007243 <__mult_D2A+0x143>
   140007154:	4c 8d 58 18          	lea    0x18(%rax),%r11
   140007158:	48 63 c3             	movslq %ebx,%rax
   14000715b:	49 8d 34 83          	lea    (%r11,%rax,4),%rsi
   14000715f:	49 39 f3             	cmp    %rsi,%r11
   140007162:	73 23                	jae    140007187 <__mult_D2A+0x87>
   140007164:	48 89 f0             	mov    %rsi,%rax
   140007167:	4c 89 d9             	mov    %r11,%rcx
   14000716a:	31 d2                	xor    %edx,%edx
   14000716c:	48 29 f8             	sub    %rdi,%rax
   14000716f:	48 83 e8 19          	sub    $0x19,%rax
   140007173:	48 c1 e8 02          	shr    $0x2,%rax
   140007177:	4c 8d 04 85 04 00 00 	lea    0x4(,%rax,4),%r8
   14000717e:	00 
   14000717f:	e8 3c 0f 00 00       	call   1400080c0 <memset>
   140007184:	49 89 c3             	mov    %rax,%r11
   140007187:	4d 8d 4d 18          	lea    0x18(%r13),%r9
   14000718b:	4d 8d 77 18          	lea    0x18(%r15),%r14
   14000718f:	4f 8d 24 a1          	lea    (%r9,%r12,4),%r12
   140007193:	49 8d 2c ae          	lea    (%r14,%rbp,4),%rbp
   140007197:	4d 39 e1             	cmp    %r12,%r9
   14000719a:	0f 83 83 00 00 00    	jae    140007223 <__mult_D2A+0x123>
   1400071a0:	48 89 e8             	mov    %rbp,%rax
   1400071a3:	4c 29 f8             	sub    %r15,%rax
   1400071a6:	49 83 c7 19          	add    $0x19,%r15
   1400071aa:	48 83 e8 19          	sub    $0x19,%rax
   1400071ae:	48 c1 e8 02          	shr    $0x2,%rax
   1400071b2:	4c 39 fd             	cmp    %r15,%rbp
   1400071b5:	4c 8d 2c 85 04 00 00 	lea    0x4(,%rax,4),%r13
   1400071bc:	00 
   1400071bd:	b8 04 00 00 00       	mov    $0x4,%eax
   1400071c2:	4c 0f 42 e8          	cmovb  %rax,%r13
   1400071c6:	eb 11                	jmp    1400071d9 <__mult_D2A+0xd9>
   1400071c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400071cf:	00 
   1400071d0:	49 83 c3 04          	add    $0x4,%r11
   1400071d4:	4d 39 e1             	cmp    %r12,%r9
   1400071d7:	73 4a                	jae    140007223 <__mult_D2A+0x123>
   1400071d9:	45 8b 11             	mov    (%r9),%r10d
   1400071dc:	49 83 c1 04          	add    $0x4,%r9
   1400071e0:	45 85 d2             	test   %r10d,%r10d
   1400071e3:	74 eb                	je     1400071d0 <__mult_D2A+0xd0>
   1400071e5:	4c 89 d9             	mov    %r11,%rcx
   1400071e8:	4c 89 f2             	mov    %r14,%rdx
   1400071eb:	45 31 c0             	xor    %r8d,%r8d
   1400071ee:	66 90                	xchg   %ax,%ax
   1400071f0:	8b 02                	mov    (%rdx),%eax
   1400071f2:	44 8b 39             	mov    (%rcx),%r15d
   1400071f5:	48 83 c2 04          	add    $0x4,%rdx
   1400071f9:	48 83 c1 04          	add    $0x4,%rcx
   1400071fd:	49 0f af c2          	imul   %r10,%rax
   140007201:	4c 01 f8             	add    %r15,%rax
   140007204:	4c 01 c0             	add    %r8,%rax
   140007207:	49 89 c0             	mov    %rax,%r8
   14000720a:	89 41 fc             	mov    %eax,-0x4(%rcx)
   14000720d:	49 c1 e8 20          	shr    $0x20,%r8
   140007211:	48 39 ea             	cmp    %rbp,%rdx
   140007214:	72 da                	jb     1400071f0 <__mult_D2A+0xf0>
   140007216:	47 89 04 2b          	mov    %r8d,(%r11,%r13,1)
   14000721a:	49 83 c3 04          	add    $0x4,%r11
   14000721e:	4d 39 e1             	cmp    %r12,%r9
   140007221:	72 b6                	jb     1400071d9 <__mult_D2A+0xd9>
   140007223:	85 db                	test   %ebx,%ebx
   140007225:	7f 0e                	jg     140007235 <__mult_D2A+0x135>
   140007227:	eb 17                	jmp    140007240 <__mult_D2A+0x140>
   140007229:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140007230:	83 eb 01             	sub    $0x1,%ebx
   140007233:	74 0b                	je     140007240 <__mult_D2A+0x140>
   140007235:	8b 46 fc             	mov    -0x4(%rsi),%eax
   140007238:	48 83 ee 04          	sub    $0x4,%rsi
   14000723c:	85 c0                	test   %eax,%eax
   14000723e:	74 f0                	je     140007230 <__mult_D2A+0x130>
   140007240:	89 5f 14             	mov    %ebx,0x14(%rdi)
   140007243:	48 89 f8             	mov    %rdi,%rax
   140007246:	48 83 c4 28          	add    $0x28,%rsp
   14000724a:	5b                   	pop    %rbx
   14000724b:	5e                   	pop    %rsi
   14000724c:	5f                   	pop    %rdi
   14000724d:	5d                   	pop    %rbp
   14000724e:	41 5c                	pop    %r12
   140007250:	41 5d                	pop    %r13
   140007252:	41 5e                	pop    %r14
   140007254:	41 5f                	pop    %r15
   140007256:	c3                   	ret
   140007257:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000725e:	00 00 

0000000140007260 <__pow5mult_D2A>:
   140007260:	55                   	push   %rbp
   140007261:	57                   	push   %rdi
   140007262:	56                   	push   %rsi
   140007263:	53                   	push   %rbx
   140007264:	48 83 ec 28          	sub    $0x28,%rsp
   140007268:	89 d0                	mov    %edx,%eax
   14000726a:	48 89 ce             	mov    %rcx,%rsi
   14000726d:	89 d3                	mov    %edx,%ebx
   14000726f:	83 e0 03             	and    $0x3,%eax
   140007272:	0f 85 b8 00 00 00    	jne    140007330 <__pow5mult_D2A+0xd0>
   140007278:	c1 fb 02             	sar    $0x2,%ebx
   14000727b:	48 89 f5             	mov    %rsi,%rbp
   14000727e:	74 52                	je     1400072d2 <__pow5mult_D2A+0x72>
   140007280:	48 8b 3d f9 6e 00 00 	mov    0x6ef9(%rip),%rdi        # 14000e180 <p5s>
   140007287:	48 85 ff             	test   %rdi,%rdi
   14000728a:	0f 84 d0 00 00 00    	je     140007360 <__pow5mult_D2A+0x100>
   140007290:	48 89 f5             	mov    %rsi,%rbp
   140007293:	eb 12                	jmp    1400072a7 <__pow5mult_D2A+0x47>
   140007295:	0f 1f 00             	nopl   (%rax)
   140007298:	d1 fb                	sar    %ebx
   14000729a:	74 36                	je     1400072d2 <__pow5mult_D2A+0x72>
   14000729c:	48 8b 37             	mov    (%rdi),%rsi
   14000729f:	48 85 f6             	test   %rsi,%rsi
   1400072a2:	74 3c                	je     1400072e0 <__pow5mult_D2A+0x80>
   1400072a4:	48 89 f7             	mov    %rsi,%rdi
   1400072a7:	f6 c3 01             	test   $0x1,%bl
   1400072aa:	74 ec                	je     140007298 <__pow5mult_D2A+0x38>
   1400072ac:	48 89 fa             	mov    %rdi,%rdx
   1400072af:	48 89 e9             	mov    %rbp,%rcx
   1400072b2:	e8 49 fe ff ff       	call   140007100 <__mult_D2A>
   1400072b7:	48 89 c6             	mov    %rax,%rsi
   1400072ba:	48 85 c0             	test   %rax,%rax
   1400072bd:	0f 84 90 00 00 00    	je     140007353 <__pow5mult_D2A+0xf3>
   1400072c3:	48 89 e9             	mov    %rbp,%rcx
   1400072c6:	48 89 f5             	mov    %rsi,%rbp
   1400072c9:	e8 42 fc ff ff       	call   140006f10 <__Bfree_D2A>
   1400072ce:	d1 fb                	sar    %ebx
   1400072d0:	75 ca                	jne    14000729c <__pow5mult_D2A+0x3c>
   1400072d2:	48 89 e8             	mov    %rbp,%rax
   1400072d5:	48 83 c4 28          	add    $0x28,%rsp
   1400072d9:	5b                   	pop    %rbx
   1400072da:	5e                   	pop    %rsi
   1400072db:	5f                   	pop    %rdi
   1400072dc:	5d                   	pop    %rbp
   1400072dd:	c3                   	ret
   1400072de:	66 90                	xchg   %ax,%ax
   1400072e0:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400072e5:	e8 06 fa ff ff       	call   140006cf0 <dtoa_lock>
   1400072ea:	48 8b 37             	mov    (%rdi),%rsi
   1400072ed:	48 85 f6             	test   %rsi,%rsi
   1400072f0:	74 1e                	je     140007310 <__pow5mult_D2A+0xb0>
   1400072f2:	83 3d f7 77 00 00 02 	cmpl   $0x2,0x77f7(%rip)        # 14000eaf0 <dtoa_CS_init>
   1400072f9:	75 a9                	jne    1400072a4 <__pow5mult_D2A+0x44>
   1400072fb:	48 8d 0d 26 78 00 00 	lea    0x7826(%rip),%rcx        # 14000eb28 <dtoa_CritSec+0x28>
   140007302:	ff 15 e8 7e 00 00    	call   *0x7ee8(%rip)        # 14000f1f0 <__imp_LeaveCriticalSection>
   140007308:	eb 9a                	jmp    1400072a4 <__pow5mult_D2A+0x44>
   14000730a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140007310:	48 89 fa             	mov    %rdi,%rdx
   140007313:	48 89 f9             	mov    %rdi,%rcx
   140007316:	e8 e5 fd ff ff       	call   140007100 <__mult_D2A>
   14000731b:	48 89 07             	mov    %rax,(%rdi)
   14000731e:	48 89 c6             	mov    %rax,%rsi
   140007321:	48 85 c0             	test   %rax,%rax
   140007324:	74 2d                	je     140007353 <__pow5mult_D2A+0xf3>
   140007326:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
   14000732d:	eb c3                	jmp    1400072f2 <__pow5mult_D2A+0x92>
   14000732f:	90                   	nop
   140007330:	83 e8 01             	sub    $0x1,%eax
   140007333:	48 8d 15 86 33 00 00 	lea    0x3386(%rip),%rdx        # 14000a6c0 <p05.0>
   14000733a:	45 31 c0             	xor    %r8d,%r8d
   14000733d:	48 98                	cltq
   14000733f:	8b 14 82             	mov    (%rdx,%rax,4),%edx
   140007342:	e8 39 fc ff ff       	call   140006f80 <__multadd_D2A>
   140007347:	48 89 c6             	mov    %rax,%rsi
   14000734a:	48 85 c0             	test   %rax,%rax
   14000734d:	0f 85 25 ff ff ff    	jne    140007278 <__pow5mult_D2A+0x18>
   140007353:	31 ed                	xor    %ebp,%ebp
   140007355:	e9 78 ff ff ff       	jmp    1400072d2 <__pow5mult_D2A+0x72>
   14000735a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140007360:	b9 01 00 00 00       	mov    $0x1,%ecx
   140007365:	e8 86 f9 ff ff       	call   140006cf0 <dtoa_lock>
   14000736a:	48 8b 3d 0f 6e 00 00 	mov    0x6e0f(%rip),%rdi        # 14000e180 <p5s>
   140007371:	48 85 ff             	test   %rdi,%rdi
   140007374:	74 1f                	je     140007395 <__pow5mult_D2A+0x135>
   140007376:	83 3d 73 77 00 00 02 	cmpl   $0x2,0x7773(%rip)        # 14000eaf0 <dtoa_CS_init>
   14000737d:	0f 85 0d ff ff ff    	jne    140007290 <__pow5mult_D2A+0x30>
   140007383:	48 8d 0d 9e 77 00 00 	lea    0x779e(%rip),%rcx        # 14000eb28 <dtoa_CritSec+0x28>
   14000738a:	ff 15 60 7e 00 00    	call   *0x7e60(%rip)        # 14000f1f0 <__imp_LeaveCriticalSection>
   140007390:	e9 fb fe ff ff       	jmp    140007290 <__pow5mult_D2A+0x30>
   140007395:	b9 01 00 00 00       	mov    $0x1,%ecx
   14000739a:	e8 81 fa ff ff       	call   140006e20 <__Balloc_D2A>
   14000739f:	48 89 c7             	mov    %rax,%rdi
   1400073a2:	48 85 c0             	test   %rax,%rax
   1400073a5:	74 1e                	je     1400073c5 <__pow5mult_D2A+0x165>
   1400073a7:	48 b8 01 00 00 00 71 	movabs $0x27100000001,%rax
   1400073ae:	02 00 00 
   1400073b1:	48 89 3d c8 6d 00 00 	mov    %rdi,0x6dc8(%rip)        # 14000e180 <p5s>
   1400073b8:	48 89 47 14          	mov    %rax,0x14(%rdi)
   1400073bc:	48 c7 07 00 00 00 00 	movq   $0x0,(%rdi)
   1400073c3:	eb b1                	jmp    140007376 <__pow5mult_D2A+0x116>
   1400073c5:	48 c7 05 b0 6d 00 00 	movq   $0x0,0x6db0(%rip)        # 14000e180 <p5s>
   1400073cc:	00 00 00 00 
   1400073d0:	31 ed                	xor    %ebp,%ebp
   1400073d2:	e9 fb fe ff ff       	jmp    1400072d2 <__pow5mult_D2A+0x72>
   1400073d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400073de:	00 00 

00000001400073e0 <__lshift_D2A>:
   1400073e0:	41 56                	push   %r14
   1400073e2:	41 55                	push   %r13
   1400073e4:	41 54                	push   %r12
   1400073e6:	55                   	push   %rbp
   1400073e7:	57                   	push   %rdi
   1400073e8:	56                   	push   %rsi
   1400073e9:	53                   	push   %rbx
   1400073ea:	48 83 ec 20          	sub    $0x20,%rsp
   1400073ee:	49 89 cc             	mov    %rcx,%r12
   1400073f1:	89 d6                	mov    %edx,%esi
   1400073f3:	8b 49 08             	mov    0x8(%rcx),%ecx
   1400073f6:	89 d5                	mov    %edx,%ebp
   1400073f8:	41 8b 5c 24 14       	mov    0x14(%r12),%ebx
   1400073fd:	c1 fe 05             	sar    $0x5,%esi
   140007400:	41 8b 44 24 0c       	mov    0xc(%r12),%eax
   140007405:	01 f3                	add    %esi,%ebx
   140007407:	44 8d 6b 01          	lea    0x1(%rbx),%r13d
   14000740b:	41 39 c5             	cmp    %eax,%r13d
   14000740e:	7e 0a                	jle    14000741a <__lshift_D2A+0x3a>
   140007410:	01 c0                	add    %eax,%eax
   140007412:	83 c1 01             	add    $0x1,%ecx
   140007415:	41 39 c5             	cmp    %eax,%r13d
   140007418:	7f f6                	jg     140007410 <__lshift_D2A+0x30>
   14000741a:	e8 01 fa ff ff       	call   140006e20 <__Balloc_D2A>
   14000741f:	49 89 c6             	mov    %rax,%r14
   140007422:	48 85 c0             	test   %rax,%rax
   140007425:	0f 84 a3 00 00 00    	je     1400074ce <__lshift_D2A+0xee>
   14000742b:	48 8d 78 18          	lea    0x18(%rax),%rdi
   14000742f:	85 f6                	test   %esi,%esi
   140007431:	7e 14                	jle    140007447 <__lshift_D2A+0x67>
   140007433:	48 c1 e6 02          	shl    $0x2,%rsi
   140007437:	48 89 f9             	mov    %rdi,%rcx
   14000743a:	31 d2                	xor    %edx,%edx
   14000743c:	49 89 f0             	mov    %rsi,%r8
   14000743f:	48 01 f7             	add    %rsi,%rdi
   140007442:	e8 79 0c 00 00       	call   1400080c0 <memset>
   140007447:	49 63 44 24 14       	movslq 0x14(%r12),%rax
   14000744c:	49 8d 74 24 18       	lea    0x18(%r12),%rsi
   140007451:	4c 8d 0c 86          	lea    (%rsi,%rax,4),%r9
   140007455:	83 e5 1f             	and    $0x1f,%ebp
   140007458:	0f 84 82 00 00 00    	je     1400074e0 <__lshift_D2A+0x100>
   14000745e:	41 ba 20 00 00 00    	mov    $0x20,%r10d
   140007464:	49 89 f8             	mov    %rdi,%r8
   140007467:	31 d2                	xor    %edx,%edx
   140007469:	41 29 ea             	sub    %ebp,%r10d
   14000746c:	0f 1f 40 00          	nopl   0x0(%rax)
   140007470:	8b 06                	mov    (%rsi),%eax
   140007472:	89 e9                	mov    %ebp,%ecx
   140007474:	49 83 c0 04          	add    $0x4,%r8
   140007478:	48 83 c6 04          	add    $0x4,%rsi
   14000747c:	d3 e0                	shl    %cl,%eax
   14000747e:	44 89 d1             	mov    %r10d,%ecx
   140007481:	09 d0                	or     %edx,%eax
   140007483:	41 89 40 fc          	mov    %eax,-0x4(%r8)
   140007487:	8b 56 fc             	mov    -0x4(%rsi),%edx
   14000748a:	d3 ea                	shr    %cl,%edx
   14000748c:	4c 39 ce             	cmp    %r9,%rsi
   14000748f:	72 df                	jb     140007470 <__lshift_D2A+0x90>
   140007491:	4c 89 c8             	mov    %r9,%rax
   140007494:	49 8d 4c 24 19       	lea    0x19(%r12),%rcx
   140007499:	4c 29 e0             	sub    %r12,%rax
   14000749c:	48 83 e8 19          	sub    $0x19,%rax
   1400074a0:	48 c1 e8 02          	shr    $0x2,%rax
   1400074a4:	49 39 c9             	cmp    %rcx,%r9
   1400074a7:	b9 04 00 00 00       	mov    $0x4,%ecx
   1400074ac:	48 8d 04 85 04 00 00 	lea    0x4(,%rax,4),%rax
   1400074b3:	00 
   1400074b4:	48 0f 42 c1          	cmovb  %rcx,%rax
   1400074b8:	89 14 07             	mov    %edx,(%rdi,%rax,1)
   1400074bb:	85 d2                	test   %edx,%edx
   1400074bd:	75 03                	jne    1400074c2 <__lshift_D2A+0xe2>
   1400074bf:	41 89 dd             	mov    %ebx,%r13d
   1400074c2:	45 89 6e 14          	mov    %r13d,0x14(%r14)
   1400074c6:	4c 89 e1             	mov    %r12,%rcx
   1400074c9:	e8 42 fa ff ff       	call   140006f10 <__Bfree_D2A>
   1400074ce:	4c 89 f0             	mov    %r14,%rax
   1400074d1:	48 83 c4 20          	add    $0x20,%rsp
   1400074d5:	5b                   	pop    %rbx
   1400074d6:	5e                   	pop    %rsi
   1400074d7:	5f                   	pop    %rdi
   1400074d8:	5d                   	pop    %rbp
   1400074d9:	41 5c                	pop    %r12
   1400074db:	41 5d                	pop    %r13
   1400074dd:	41 5e                	pop    %r14
   1400074df:	c3                   	ret
   1400074e0:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
   1400074e1:	4c 39 ce             	cmp    %r9,%rsi
   1400074e4:	73 d9                	jae    1400074bf <__lshift_D2A+0xdf>
   1400074e6:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
   1400074e7:	4c 39 ce             	cmp    %r9,%rsi
   1400074ea:	72 f4                	jb     1400074e0 <__lshift_D2A+0x100>
   1400074ec:	eb d1                	jmp    1400074bf <__lshift_D2A+0xdf>
   1400074ee:	66 90                	xchg   %ax,%ax

00000001400074f0 <__cmp_D2A>:
   1400074f0:	48 63 42 14          	movslq 0x14(%rdx),%rax
   1400074f4:	44 8b 49 14          	mov    0x14(%rcx),%r9d
   1400074f8:	41 29 c1             	sub    %eax,%r9d
   1400074fb:	75 37                	jne    140007534 <__cmp_D2A+0x44>
   1400074fd:	4c 8d 04 85 00 00 00 	lea    0x0(,%rax,4),%r8
   140007504:	00 
   140007505:	48 83 c1 18          	add    $0x18,%rcx
   140007509:	4a 8d 04 01          	lea    (%rcx,%r8,1),%rax
   14000750d:	4a 8d 54 02 18       	lea    0x18(%rdx,%r8,1),%rdx
   140007512:	eb 09                	jmp    14000751d <__cmp_D2A+0x2d>
   140007514:	0f 1f 40 00          	nopl   0x0(%rax)
   140007518:	48 39 c1             	cmp    %rax,%rcx
   14000751b:	73 17                	jae    140007534 <__cmp_D2A+0x44>
   14000751d:	48 83 e8 04          	sub    $0x4,%rax
   140007521:	48 83 ea 04          	sub    $0x4,%rdx
   140007525:	44 8b 12             	mov    (%rdx),%r10d
   140007528:	44 39 10             	cmp    %r10d,(%rax)
   14000752b:	74 eb                	je     140007518 <__cmp_D2A+0x28>
   14000752d:	45 19 c9             	sbb    %r9d,%r9d
   140007530:	41 83 c9 01          	or     $0x1,%r9d
   140007534:	44 89 c8             	mov    %r9d,%eax
   140007537:	c3                   	ret
   140007538:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000753f:	00 

0000000140007540 <__diff_D2A>:
   140007540:	41 56                	push   %r14
   140007542:	41 55                	push   %r13
   140007544:	41 54                	push   %r12
   140007546:	55                   	push   %rbp
   140007547:	57                   	push   %rdi
   140007548:	56                   	push   %rsi
   140007549:	53                   	push   %rbx
   14000754a:	48 83 ec 20          	sub    $0x20,%rsp
   14000754e:	48 63 42 14          	movslq 0x14(%rdx),%rax
   140007552:	8b 79 14             	mov    0x14(%rcx),%edi
   140007555:	48 89 ce             	mov    %rcx,%rsi
   140007558:	48 89 d3             	mov    %rdx,%rbx
   14000755b:	29 c7                	sub    %eax,%edi
   14000755d:	0f 85 55 01 00 00    	jne    1400076b8 <__diff_D2A+0x178>
   140007563:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
   14000756a:	00 
   14000756b:	48 8d 49 18          	lea    0x18(%rcx),%rcx
   14000756f:	48 8d 04 11          	lea    (%rcx,%rdx,1),%rax
   140007573:	48 8d 54 13 18       	lea    0x18(%rbx,%rdx,1),%rdx
   140007578:	eb 0f                	jmp    140007589 <__diff_D2A+0x49>
   14000757a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140007580:	48 39 c1             	cmp    %rax,%rcx
   140007583:	0f 83 57 01 00 00    	jae    1400076e0 <__diff_D2A+0x1a0>
   140007589:	48 83 e8 04          	sub    $0x4,%rax
   14000758d:	48 83 ea 04          	sub    $0x4,%rdx
   140007591:	44 8b 32             	mov    (%rdx),%r14d
   140007594:	44 39 30             	cmp    %r14d,(%rax)
   140007597:	74 e7                	je     140007580 <__diff_D2A+0x40>
   140007599:	0f 82 24 01 00 00    	jb     1400076c3 <__diff_D2A+0x183>
   14000759f:	90                   	nop
   1400075a0:	8b 4e 08             	mov    0x8(%rsi),%ecx
   1400075a3:	e8 78 f8 ff ff       	call   140006e20 <__Balloc_D2A>
   1400075a8:	49 89 c1             	mov    %rax,%r9
   1400075ab:	48 85 c0             	test   %rax,%rax
   1400075ae:	0f 84 ef 00 00 00    	je     1400076a3 <__diff_D2A+0x163>
   1400075b4:	89 78 10             	mov    %edi,0x10(%rax)
   1400075b7:	48 63 46 14          	movslq 0x14(%rsi),%rax
   1400075bb:	4c 8d 6e 18          	lea    0x18(%rsi),%r13
   1400075bf:	4d 8d 61 18          	lea    0x18(%r9),%r12
   1400075c3:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400075c8:	31 d2                	xor    %edx,%edx
   1400075ca:	49 89 c2             	mov    %rax,%r10
   1400075cd:	49 8d 7c 85 00       	lea    0x0(%r13,%rax,4),%rdi
   1400075d2:	48 63 43 14          	movslq 0x14(%rbx),%rax
   1400075d6:	48 8d 6c 83 18       	lea    0x18(%rbx,%rax,4),%rbp
   1400075db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400075e0:	8b 04 0e             	mov    (%rsi,%rcx,1),%eax
   1400075e3:	44 8b 04 0b          	mov    (%rbx,%rcx,1),%r8d
   1400075e7:	4c 29 c0             	sub    %r8,%rax
   1400075ea:	48 29 d0             	sub    %rdx,%rax
   1400075ed:	41 89 04 09          	mov    %eax,(%r9,%rcx,1)
   1400075f1:	48 89 c2             	mov    %rax,%rdx
   1400075f4:	48 83 c1 04          	add    $0x4,%rcx
   1400075f8:	41 89 c3             	mov    %eax,%r11d
   1400075fb:	48 c1 ea 20          	shr    $0x20,%rdx
   1400075ff:	48 8d 04 19          	lea    (%rcx,%rbx,1),%rax
   140007603:	83 e2 01             	and    $0x1,%edx
   140007606:	48 39 e8             	cmp    %rbp,%rax
   140007609:	72 d5                	jb     1400075e0 <__diff_D2A+0xa0>
   14000760b:	48 89 e8             	mov    %rbp,%rax
   14000760e:	48 8d 73 19          	lea    0x19(%rbx),%rsi
   140007612:	b9 04 00 00 00       	mov    $0x4,%ecx
   140007617:	48 29 d8             	sub    %rbx,%rax
   14000761a:	4c 8d 70 e7          	lea    -0x19(%rax),%r14
   14000761e:	49 c1 ee 02          	shr    $0x2,%r14
   140007622:	48 39 f5             	cmp    %rsi,%rbp
   140007625:	4a 8d 04 b5 04 00 00 	lea    0x4(,%r14,4),%rax
   14000762c:	00 
   14000762d:	48 0f 42 c1          	cmovb  %rcx,%rax
   140007631:	49 01 c5             	add    %rax,%r13
   140007634:	4d 8d 04 04          	lea    (%r12,%rax,1),%r8
   140007638:	4c 89 c3             	mov    %r8,%rbx
   14000763b:	4c 89 e9             	mov    %r13,%rcx
   14000763e:	49 39 fd             	cmp    %rdi,%r13
   140007641:	0f 83 b9 00 00 00    	jae    140007700 <__diff_D2A+0x1c0>
   140007647:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000764e:	00 00 
   140007650:	8b 01                	mov    (%rcx),%eax
   140007652:	48 83 c1 04          	add    $0x4,%rcx
   140007656:	48 83 c3 04          	add    $0x4,%rbx
   14000765a:	48 29 d0             	sub    %rdx,%rax
   14000765d:	48 89 c2             	mov    %rax,%rdx
   140007660:	89 43 fc             	mov    %eax,-0x4(%rbx)
   140007663:	41 89 c3             	mov    %eax,%r11d
   140007666:	48 c1 ea 20          	shr    $0x20,%rdx
   14000766a:	83 e2 01             	and    $0x1,%edx
   14000766d:	48 39 f9             	cmp    %rdi,%rcx
   140007670:	72 de                	jb     140007650 <__diff_D2A+0x110>
   140007672:	48 83 ef 01          	sub    $0x1,%rdi
   140007676:	4c 29 ef             	sub    %r13,%rdi
   140007679:	48 83 e7 fc          	and    $0xfffffffffffffffc,%rdi
   14000767d:	49 8d 04 38          	lea    (%r8,%rdi,1),%rax
   140007681:	45 85 db             	test   %r11d,%r11d
   140007684:	75 19                	jne    14000769f <__diff_D2A+0x15f>
   140007686:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000768d:	00 00 00 
   140007690:	8b 50 fc             	mov    -0x4(%rax),%edx
   140007693:	48 83 e8 04          	sub    $0x4,%rax
   140007697:	41 83 ea 01          	sub    $0x1,%r10d
   14000769b:	85 d2                	test   %edx,%edx
   14000769d:	74 f1                	je     140007690 <__diff_D2A+0x150>
   14000769f:	45 89 51 14          	mov    %r10d,0x14(%r9)
   1400076a3:	4c 89 c8             	mov    %r9,%rax
   1400076a6:	48 83 c4 20          	add    $0x20,%rsp
   1400076aa:	5b                   	pop    %rbx
   1400076ab:	5e                   	pop    %rsi
   1400076ac:	5f                   	pop    %rdi
   1400076ad:	5d                   	pop    %rbp
   1400076ae:	41 5c                	pop    %r12
   1400076b0:	41 5d                	pop    %r13
   1400076b2:	41 5e                	pop    %r14
   1400076b4:	c3                   	ret
   1400076b5:	0f 1f 00             	nopl   (%rax)
   1400076b8:	bf 00 00 00 00       	mov    $0x0,%edi
   1400076bd:	0f 89 dd fe ff ff    	jns    1400075a0 <__diff_D2A+0x60>
   1400076c3:	48 89 f0             	mov    %rsi,%rax
   1400076c6:	bf 01 00 00 00       	mov    $0x1,%edi
   1400076cb:	48 89 de             	mov    %rbx,%rsi
   1400076ce:	48 89 c3             	mov    %rax,%rbx
   1400076d1:	e9 ca fe ff ff       	jmp    1400075a0 <__diff_D2A+0x60>
   1400076d6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400076dd:	00 00 00 
   1400076e0:	31 c9                	xor    %ecx,%ecx
   1400076e2:	e8 39 f7 ff ff       	call   140006e20 <__Balloc_D2A>
   1400076e7:	49 89 c1             	mov    %rax,%r9
   1400076ea:	48 85 c0             	test   %rax,%rax
   1400076ed:	74 b4                	je     1400076a3 <__diff_D2A+0x163>
   1400076ef:	48 c7 40 14 01 00 00 	movq   $0x1,0x14(%rax)
   1400076f6:	00 
   1400076f7:	eb aa                	jmp    1400076a3 <__diff_D2A+0x163>
   1400076f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140007700:	31 c0                	xor    %eax,%eax
   140007702:	49 c1 e6 02          	shl    $0x2,%r14
   140007706:	48 39 f5             	cmp    %rsi,%rbp
   140007709:	4c 0f 42 f0          	cmovb  %rax,%r14
   14000770d:	4b 8d 04 34          	lea    (%r12,%r14,1),%rax
   140007711:	e9 6b ff ff ff       	jmp    140007681 <__diff_D2A+0x141>
   140007716:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000771d:	00 00 00 

0000000140007720 <__b2d_D2A>:
   140007720:	57                   	push   %rdi
   140007721:	56                   	push   %rsi
   140007722:	53                   	push   %rbx
   140007723:	48 63 41 14          	movslq 0x14(%rcx),%rax
   140007727:	4c 8d 51 18          	lea    0x18(%rcx),%r10
   14000772b:	49 8d 1c 82          	lea    (%r10,%rax,4),%rbx
   14000772f:	44 8b 5b fc          	mov    -0x4(%rbx),%r11d
   140007733:	48 8d 73 fc          	lea    -0x4(%rbx),%rsi
   140007737:	41 0f bd cb          	bsr    %r11d,%ecx
   14000773b:	89 cf                	mov    %ecx,%edi
   14000773d:	b9 20 00 00 00       	mov    $0x20,%ecx
   140007742:	83 f7 1f             	xor    $0x1f,%edi
   140007745:	41 89 c8             	mov    %ecx,%r8d
   140007748:	41 29 f8             	sub    %edi,%r8d
   14000774b:	44 89 02             	mov    %r8d,(%rdx)
   14000774e:	83 ff 0a             	cmp    $0xa,%edi
   140007751:	7e 7d                	jle    1400077d0 <__b2d_D2A+0xb0>
   140007753:	44 8d 4f f5          	lea    -0xb(%rdi),%r9d
   140007757:	49 39 f2             	cmp    %rsi,%r10
   14000775a:	73 54                	jae    1400077b0 <__b2d_D2A+0x90>
   14000775c:	8b 53 f8             	mov    -0x8(%rbx),%edx
   14000775f:	45 85 c9             	test   %r9d,%r9d
   140007762:	74 53                	je     1400077b7 <__b2d_D2A+0x97>
   140007764:	44 29 c9             	sub    %r9d,%ecx
   140007767:	44 89 d8             	mov    %r11d,%eax
   14000776a:	89 d6                	mov    %edx,%esi
   14000776c:	41 89 c8             	mov    %ecx,%r8d
   14000776f:	44 89 c9             	mov    %r9d,%ecx
   140007772:	d3 e0                	shl    %cl,%eax
   140007774:	44 89 c1             	mov    %r8d,%ecx
   140007777:	d3 ee                	shr    %cl,%esi
   140007779:	44 89 c9             	mov    %r9d,%ecx
   14000777c:	09 f0                	or     %esi,%eax
   14000777e:	d3 e2                	shl    %cl,%edx
   140007780:	48 8d 4b f8          	lea    -0x8(%rbx),%rcx
   140007784:	0d 00 00 f0 3f       	or     $0x3ff00000,%eax
   140007789:	48 c1 e0 20          	shl    $0x20,%rax
   14000778d:	49 39 ca             	cmp    %rcx,%r10
   140007790:	73 31                	jae    1400077c3 <__b2d_D2A+0xa3>
   140007792:	44 8b 4b f4          	mov    -0xc(%rbx),%r9d
   140007796:	44 89 c1             	mov    %r8d,%ecx
   140007799:	41 d3 e9             	shr    %cl,%r9d
   14000779c:	44 09 ca             	or     %r9d,%edx
   14000779f:	48 09 d0             	or     %rdx,%rax
   1400077a2:	66 48 0f 6e c0       	movq   %rax,%xmm0
   1400077a7:	5b                   	pop    %rbx
   1400077a8:	5e                   	pop    %rsi
   1400077a9:	5f                   	pop    %rdi
   1400077aa:	c3                   	ret
   1400077ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400077b0:	31 d2                	xor    %edx,%edx
   1400077b2:	83 ff 0b             	cmp    $0xb,%edi
   1400077b5:	75 59                	jne    140007810 <__b2d_D2A+0xf0>
   1400077b7:	44 89 d8             	mov    %r11d,%eax
   1400077ba:	0d 00 00 f0 3f       	or     $0x3ff00000,%eax
   1400077bf:	48 c1 e0 20          	shl    $0x20,%rax
   1400077c3:	48 09 d0             	or     %rdx,%rax
   1400077c6:	66 48 0f 6e c0       	movq   %rax,%xmm0
   1400077cb:	5b                   	pop    %rbx
   1400077cc:	5e                   	pop    %rsi
   1400077cd:	5f                   	pop    %rdi
   1400077ce:	c3                   	ret
   1400077cf:	90                   	nop
   1400077d0:	b9 0b 00 00 00       	mov    $0xb,%ecx
   1400077d5:	44 89 d8             	mov    %r11d,%eax
   1400077d8:	45 31 c0             	xor    %r8d,%r8d
   1400077db:	29 f9                	sub    %edi,%ecx
   1400077dd:	d3 e8                	shr    %cl,%eax
   1400077df:	0d 00 00 f0 3f       	or     $0x3ff00000,%eax
   1400077e4:	48 c1 e0 20          	shl    $0x20,%rax
   1400077e8:	49 39 f2             	cmp    %rsi,%r10
   1400077eb:	73 07                	jae    1400077f4 <__b2d_D2A+0xd4>
   1400077ed:	44 8b 43 f8          	mov    -0x8(%rbx),%r8d
   1400077f1:	41 d3 e8             	shr    %cl,%r8d
   1400077f4:	8d 4f 15             	lea    0x15(%rdi),%ecx
   1400077f7:	44 89 da             	mov    %r11d,%edx
   1400077fa:	d3 e2                	shl    %cl,%edx
   1400077fc:	44 09 c2             	or     %r8d,%edx
   1400077ff:	48 09 d0             	or     %rdx,%rax
   140007802:	66 48 0f 6e c0       	movq   %rax,%xmm0
   140007807:	5b                   	pop    %rbx
   140007808:	5e                   	pop    %rsi
   140007809:	5f                   	pop    %rdi
   14000780a:	c3                   	ret
   14000780b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140007810:	44 89 d8             	mov    %r11d,%eax
   140007813:	44 89 c9             	mov    %r9d,%ecx
   140007816:	31 d2                	xor    %edx,%edx
   140007818:	d3 e0                	shl    %cl,%eax
   14000781a:	0d 00 00 f0 3f       	or     $0x3ff00000,%eax
   14000781f:	48 c1 e0 20          	shl    $0x20,%rax
   140007823:	48 09 d0             	or     %rdx,%rax
   140007826:	66 48 0f 6e c0       	movq   %rax,%xmm0
   14000782b:	5b                   	pop    %rbx
   14000782c:	5e                   	pop    %rsi
   14000782d:	5f                   	pop    %rdi
   14000782e:	c3                   	ret
   14000782f:	90                   	nop

0000000140007830 <__d2b_D2A>:
   140007830:	57                   	push   %rdi
   140007831:	56                   	push   %rsi
   140007832:	53                   	push   %rbx
   140007833:	48 83 ec 20          	sub    $0x20,%rsp
   140007837:	b9 01 00 00 00       	mov    $0x1,%ecx
   14000783c:	48 89 d6             	mov    %rdx,%rsi
   14000783f:	66 48 0f 7e c3       	movq   %xmm0,%rbx
   140007844:	4c 89 c7             	mov    %r8,%rdi
   140007847:	e8 d4 f5 ff ff       	call   140006e20 <__Balloc_D2A>
   14000784c:	48 89 c2             	mov    %rax,%rdx
   14000784f:	48 85 c0             	test   %rax,%rax
   140007852:	0f 84 90 00 00 00    	je     1400078e8 <__d2b_D2A+0xb8>
   140007858:	48 89 d9             	mov    %rbx,%rcx
   14000785b:	48 89 d8             	mov    %rbx,%rax
   14000785e:	48 c1 e9 20          	shr    $0x20,%rcx
   140007862:	41 89 c9             	mov    %ecx,%r9d
   140007865:	c1 e9 14             	shr    $0x14,%ecx
   140007868:	41 81 e1 ff ff 0f 00 	and    $0xfffff,%r9d
   14000786f:	45 89 c8             	mov    %r9d,%r8d
   140007872:	41 81 c8 00 00 10 00 	or     $0x100000,%r8d
   140007879:	81 e1 ff 07 00 00    	and    $0x7ff,%ecx
   14000787f:	45 0f 45 c8          	cmovne %r8d,%r9d
   140007883:	41 89 ca             	mov    %ecx,%r10d
   140007886:	85 db                	test   %ebx,%ebx
   140007888:	74 6e                	je     1400078f8 <__d2b_D2A+0xc8>
   14000788a:	45 31 c0             	xor    %r8d,%r8d
   14000788d:	f3 44 0f bc c3       	tzcnt  %ebx,%r8d
   140007892:	44 89 c1             	mov    %r8d,%ecx
   140007895:	d3 e8                	shr    %cl,%eax
   140007897:	45 85 c0             	test   %r8d,%r8d
   14000789a:	74 15                	je     1400078b1 <__d2b_D2A+0x81>
   14000789c:	b9 20 00 00 00       	mov    $0x20,%ecx
   1400078a1:	44 89 cb             	mov    %r9d,%ebx
   1400078a4:	44 29 c1             	sub    %r8d,%ecx
   1400078a7:	d3 e3                	shl    %cl,%ebx
   1400078a9:	44 89 c1             	mov    %r8d,%ecx
   1400078ac:	09 d8                	or     %ebx,%eax
   1400078ae:	41 d3 e9             	shr    %cl,%r9d
   1400078b1:	89 42 18             	mov    %eax,0x18(%rdx)
   1400078b4:	41 83 f9 01          	cmp    $0x1,%r9d
   1400078b8:	b8 01 00 00 00       	mov    $0x1,%eax
   1400078bd:	83 d8 ff             	sbb    $0xffffffff,%eax
   1400078c0:	44 89 4a 1c          	mov    %r9d,0x1c(%rdx)
   1400078c4:	89 42 14             	mov    %eax,0x14(%rdx)
   1400078c7:	45 85 d2             	test   %r10d,%r10d
   1400078ca:	75 4b                	jne    140007917 <__d2b_D2A+0xe7>
   1400078cc:	48 63 c8             	movslq %eax,%rcx
   1400078cf:	41 81 e8 32 04 00 00 	sub    $0x432,%r8d
   1400078d6:	0f bd 4c 8a 14       	bsr    0x14(%rdx,%rcx,4),%ecx
   1400078db:	c1 e0 05             	shl    $0x5,%eax
   1400078de:	44 89 06             	mov    %r8d,(%rsi)
   1400078e1:	83 f1 1f             	xor    $0x1f,%ecx
   1400078e4:	29 c8                	sub    %ecx,%eax
   1400078e6:	89 07                	mov    %eax,(%rdi)
   1400078e8:	48 89 d0             	mov    %rdx,%rax
   1400078eb:	48 83 c4 20          	add    $0x20,%rsp
   1400078ef:	5b                   	pop    %rbx
   1400078f0:	5e                   	pop    %rsi
   1400078f1:	5f                   	pop    %rdi
   1400078f2:	c3                   	ret
   1400078f3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400078f8:	31 c9                	xor    %ecx,%ecx
   1400078fa:	b8 01 00 00 00       	mov    $0x1,%eax
   1400078ff:	f3 41 0f bc c9       	tzcnt  %r9d,%ecx
   140007904:	89 42 14             	mov    %eax,0x14(%rdx)
   140007907:	41 d3 e9             	shr    %cl,%r9d
   14000790a:	44 8d 41 20          	lea    0x20(%rcx),%r8d
   14000790e:	44 89 4a 18          	mov    %r9d,0x18(%rdx)
   140007912:	45 85 d2             	test   %r10d,%r10d
   140007915:	74 b5                	je     1400078cc <__d2b_D2A+0x9c>
   140007917:	43 8d 84 02 cd fb ff 	lea    -0x433(%r10,%r8,1),%eax
   14000791e:	ff 
   14000791f:	89 06                	mov    %eax,(%rsi)
   140007921:	b8 35 00 00 00       	mov    $0x35,%eax
   140007926:	44 29 c0             	sub    %r8d,%eax
   140007929:	89 07                	mov    %eax,(%rdi)
   14000792b:	eb bb                	jmp    1400078e8 <__d2b_D2A+0xb8>
   14000792d:	0f 1f 00             	nopl   (%rax)

0000000140007930 <__strcp_D2A>:
   140007930:	48 89 c8             	mov    %rcx,%rax
   140007933:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
   140007937:	0f b6 12             	movzbl (%rdx),%edx
   14000793a:	88 10                	mov    %dl,(%rax)
   14000793c:	84 d2                	test   %dl,%dl
   14000793e:	74 11                	je     140007951 <__strcp_D2A+0x21>
   140007940:	0f b6 11             	movzbl (%rcx),%edx
   140007943:	48 83 c0 01          	add    $0x1,%rax
   140007947:	48 83 c1 01          	add    $0x1,%rcx
   14000794b:	88 10                	mov    %dl,(%rax)
   14000794d:	84 d2                	test   %dl,%dl
   14000794f:	75 ef                	jne    140007940 <__strcp_D2A+0x10>
   140007951:	c3                   	ret
   140007952:	90                   	nop
   140007953:	90                   	nop
   140007954:	90                   	nop
   140007955:	90                   	nop
   140007956:	90                   	nop
   140007957:	90                   	nop
   140007958:	90                   	nop
   140007959:	90                   	nop
   14000795a:	90                   	nop
   14000795b:	90                   	nop
   14000795c:	90                   	nop
   14000795d:	90                   	nop
   14000795e:	90                   	nop
   14000795f:	90                   	nop

0000000140007960 <strnlen>:
   140007960:	45 31 c0             	xor    %r8d,%r8d
   140007963:	48 89 c8             	mov    %rcx,%rax
   140007966:	48 85 d2             	test   %rdx,%rdx
   140007969:	75 14                	jne    14000797f <strnlen+0x1f>
   14000796b:	eb 17                	jmp    140007984 <strnlen+0x24>
   14000796d:	0f 1f 00             	nopl   (%rax)
   140007970:	48 83 c0 01          	add    $0x1,%rax
   140007974:	49 89 c0             	mov    %rax,%r8
   140007977:	49 29 c8             	sub    %rcx,%r8
   14000797a:	49 39 d0             	cmp    %rdx,%r8
   14000797d:	73 05                	jae    140007984 <strnlen+0x24>
   14000797f:	80 38 00             	cmpb   $0x0,(%rax)
   140007982:	75 ec                	jne    140007970 <strnlen+0x10>
   140007984:	4c 89 c0             	mov    %r8,%rax
   140007987:	c3                   	ret
   140007988:	90                   	nop
   140007989:	90                   	nop
   14000798a:	90                   	nop
   14000798b:	90                   	nop
   14000798c:	90                   	nop
   14000798d:	90                   	nop
   14000798e:	90                   	nop
   14000798f:	90                   	nop

0000000140007990 <wcsnlen>:
   140007990:	45 31 c0             	xor    %r8d,%r8d
   140007993:	48 89 d0             	mov    %rdx,%rax
   140007996:	48 85 d2             	test   %rdx,%rdx
   140007999:	75 0e                	jne    1400079a9 <wcsnlen+0x19>
   14000799b:	eb 17                	jmp    1400079b4 <wcsnlen+0x24>
   14000799d:	0f 1f 00             	nopl   (%rax)
   1400079a0:	49 83 c0 01          	add    $0x1,%r8
   1400079a4:	4c 39 c0             	cmp    %r8,%rax
   1400079a7:	74 0b                	je     1400079b4 <wcsnlen+0x24>
   1400079a9:	66 42 83 3c 41 00    	cmpw   $0x0,(%rcx,%r8,2)
   1400079af:	75 ef                	jne    1400079a0 <wcsnlen+0x10>
   1400079b1:	4c 89 c0             	mov    %r8,%rax
   1400079b4:	c3                   	ret
   1400079b5:	90                   	nop
   1400079b6:	90                   	nop
   1400079b7:	90                   	nop
   1400079b8:	90                   	nop
   1400079b9:	90                   	nop
   1400079ba:	90                   	nop
   1400079bb:	90                   	nop
   1400079bc:	90                   	nop
   1400079bd:	90                   	nop
   1400079be:	90                   	nop
   1400079bf:	90                   	nop

00000001400079c0 <__p__fmode>:
   1400079c0:	48 8b 05 e9 2e 00 00 	mov    0x2ee9(%rip),%rax        # 14000a8b0 <.refptr.__imp__fmode>
   1400079c7:	48 8b 00             	mov    (%rax),%rax
   1400079ca:	c3                   	ret
   1400079cb:	90                   	nop
   1400079cc:	90                   	nop
   1400079cd:	90                   	nop
   1400079ce:	90                   	nop
   1400079cf:	90                   	nop

00000001400079d0 <__p__commode>:
   1400079d0:	48 8b 05 c9 2e 00 00 	mov    0x2ec9(%rip),%rax        # 14000a8a0 <.refptr.__imp__commode>
   1400079d7:	48 8b 00             	mov    (%rax),%rax
   1400079da:	c3                   	ret
   1400079db:	90                   	nop
   1400079dc:	90                   	nop
   1400079dd:	90                   	nop
   1400079de:	90                   	nop
   1400079df:	90                   	nop

00000001400079e0 <_lock_file>:
   1400079e0:	53                   	push   %rbx
   1400079e1:	48 83 ec 20          	sub    $0x20,%rsp
   1400079e5:	48 89 cb             	mov    %rcx,%rbx
   1400079e8:	31 c9                	xor    %ecx,%ecx
   1400079ea:	e8 e1 00 00 00       	call   140007ad0 <__acrt_iob_func>
   1400079ef:	48 39 c3             	cmp    %rax,%rbx
   1400079f2:	72 0f                	jb     140007a03 <_lock_file+0x23>
   1400079f4:	b9 13 00 00 00       	mov    $0x13,%ecx
   1400079f9:	e8 d2 00 00 00       	call   140007ad0 <__acrt_iob_func>
   1400079fe:	48 39 c3             	cmp    %rax,%rbx
   140007a01:	76 15                	jbe    140007a18 <_lock_file+0x38>
   140007a03:	48 8d 4b 30          	lea    0x30(%rbx),%rcx
   140007a07:	48 83 c4 20          	add    $0x20,%rsp
   140007a0b:	5b                   	pop    %rbx
   140007a0c:	48 ff 25 bd 77 00 00 	rex.W jmp *0x77bd(%rip)        # 14000f1d0 <__imp_EnterCriticalSection>
   140007a13:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140007a18:	31 c9                	xor    %ecx,%ecx
   140007a1a:	e8 b1 00 00 00       	call   140007ad0 <__acrt_iob_func>
   140007a1f:	48 89 c2             	mov    %rax,%rdx
   140007a22:	48 89 d8             	mov    %rbx,%rax
   140007a25:	48 29 d0             	sub    %rdx,%rax
   140007a28:	48 c1 f8 04          	sar    $0x4,%rax
   140007a2c:	69 c0 ab aa aa aa    	imul   $0xaaaaaaab,%eax,%eax
   140007a32:	8d 48 10             	lea    0x10(%rax),%ecx
   140007a35:	e8 1e 06 00 00       	call   140008058 <_lock>
   140007a3a:	81 4b 18 00 80 00 00 	orl    $0x8000,0x18(%rbx)
   140007a41:	48 83 c4 20          	add    $0x20,%rsp
   140007a45:	5b                   	pop    %rbx
   140007a46:	c3                   	ret
   140007a47:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140007a4e:	00 00 

0000000140007a50 <_unlock_file>:
   140007a50:	53                   	push   %rbx
   140007a51:	48 83 ec 20          	sub    $0x20,%rsp
   140007a55:	48 89 cb             	mov    %rcx,%rbx
   140007a58:	31 c9                	xor    %ecx,%ecx
   140007a5a:	e8 71 00 00 00       	call   140007ad0 <__acrt_iob_func>
   140007a5f:	48 39 c3             	cmp    %rax,%rbx
   140007a62:	72 0f                	jb     140007a73 <_unlock_file+0x23>
   140007a64:	b9 13 00 00 00       	mov    $0x13,%ecx
   140007a69:	e8 62 00 00 00       	call   140007ad0 <__acrt_iob_func>
   140007a6e:	48 39 c3             	cmp    %rax,%rbx
   140007a71:	76 15                	jbe    140007a88 <_unlock_file+0x38>
   140007a73:	48 8d 4b 30          	lea    0x30(%rbx),%rcx
   140007a77:	48 83 c4 20          	add    $0x20,%rsp
   140007a7b:	5b                   	pop    %rbx
   140007a7c:	48 ff 25 6d 77 00 00 	rex.W jmp *0x776d(%rip)        # 14000f1f0 <__imp_LeaveCriticalSection>
   140007a83:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140007a88:	81 63 18 ff 7f ff ff 	andl   $0xffff7fff,0x18(%rbx)
   140007a8f:	31 c9                	xor    %ecx,%ecx
   140007a91:	e8 3a 00 00 00       	call   140007ad0 <__acrt_iob_func>
   140007a96:	48 29 c3             	sub    %rax,%rbx
   140007a99:	48 c1 fb 04          	sar    $0x4,%rbx
   140007a9d:	69 db ab aa aa aa    	imul   $0xaaaaaaab,%ebx,%ebx
   140007aa3:	8d 4b 10             	lea    0x10(%rbx),%ecx
   140007aa6:	48 83 c4 20          	add    $0x20,%rsp
   140007aaa:	5b                   	pop    %rbx
   140007aab:	e9 b8 05 00 00       	jmp    140008068 <_unlock>

0000000140007ab0 <_get_invalid_parameter_handler>:
   140007ab0:	48 8b 05 a9 70 00 00 	mov    0x70a9(%rip),%rax        # 14000eb60 <handler>
   140007ab7:	c3                   	ret
   140007ab8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140007abf:	00 

0000000140007ac0 <_set_invalid_parameter_handler>:
   140007ac0:	48 89 c8             	mov    %rcx,%rax
   140007ac3:	48 87 05 96 70 00 00 	xchg   %rax,0x7096(%rip)        # 14000eb60 <handler>
   140007aca:	c3                   	ret
   140007acb:	90                   	nop
   140007acc:	90                   	nop
   140007acd:	90                   	nop
   140007ace:	90                   	nop
   140007acf:	90                   	nop

0000000140007ad0 <__acrt_iob_func>:
   140007ad0:	53                   	push   %rbx
   140007ad1:	48 83 ec 20          	sub    $0x20,%rsp
   140007ad5:	89 cb                	mov    %ecx,%ebx
   140007ad7:	e8 44 05 00 00       	call   140008020 <__iob_func>
   140007adc:	89 d9                	mov    %ebx,%ecx
   140007ade:	48 8d 14 49          	lea    (%rcx,%rcx,2),%rdx
   140007ae2:	48 c1 e2 04          	shl    $0x4,%rdx
   140007ae6:	48 01 d0             	add    %rdx,%rax
   140007ae9:	48 83 c4 20          	add    $0x20,%rsp
   140007aed:	5b                   	pop    %rbx
   140007aee:	c3                   	ret
   140007aef:	90                   	nop

0000000140007af0 <__wcrtomb_cp>:
   140007af0:	48 83 ec 58          	sub    $0x58,%rsp
   140007af4:	48 89 c8             	mov    %rcx,%rax
   140007af7:	66 89 54 24 68       	mov    %dx,0x68(%rsp)
   140007afc:	44 89 c1             	mov    %r8d,%ecx
   140007aff:	45 85 c0             	test   %r8d,%r8d
   140007b02:	75 1c                	jne    140007b20 <__wcrtomb_cp+0x30>
   140007b04:	66 81 fa ff 00       	cmp    $0xff,%dx
   140007b09:	77 59                	ja     140007b64 <__wcrtomb_cp+0x74>
   140007b0b:	88 10                	mov    %dl,(%rax)
   140007b0d:	b8 01 00 00 00       	mov    $0x1,%eax
   140007b12:	48 83 c4 58          	add    $0x58,%rsp
   140007b16:	c3                   	ret
   140007b17:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140007b1e:	00 00 
   140007b20:	48 8d 54 24 4c       	lea    0x4c(%rsp),%rdx
   140007b25:	44 89 4c 24 28       	mov    %r9d,0x28(%rsp)
   140007b2a:	4c 8d 44 24 68       	lea    0x68(%rsp),%r8
   140007b2f:	41 b9 01 00 00 00    	mov    $0x1,%r9d
   140007b35:	48 89 54 24 38       	mov    %rdx,0x38(%rsp)
   140007b3a:	31 d2                	xor    %edx,%edx
   140007b3c:	c7 44 24 4c 00 00 00 	movl   $0x0,0x4c(%rsp)
   140007b43:	00 
   140007b44:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   140007b4b:	00 00 
   140007b4d:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   140007b52:	ff 15 d0 76 00 00    	call   *0x76d0(%rip)        # 14000f228 <__imp_WideCharToMultiByte>
   140007b58:	85 c0                	test   %eax,%eax
   140007b5a:	74 08                	je     140007b64 <__wcrtomb_cp+0x74>
   140007b5c:	8b 54 24 4c          	mov    0x4c(%rsp),%edx
   140007b60:	85 d2                	test   %edx,%edx
   140007b62:	74 ae                	je     140007b12 <__wcrtomb_cp+0x22>
   140007b64:	e8 df 04 00 00       	call   140008048 <_errno>
   140007b69:	c7 00 2a 00 00 00    	movl   $0x2a,(%rax)
   140007b6f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140007b74:	48 83 c4 58          	add    $0x58,%rsp
   140007b78:	c3                   	ret
   140007b79:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140007b80 <wcrtomb>:
   140007b80:	57                   	push   %rdi
   140007b81:	56                   	push   %rsi
   140007b82:	53                   	push   %rbx
   140007b83:	48 83 ec 30          	sub    $0x30,%rsp
   140007b87:	48 85 c9             	test   %rcx,%rcx
   140007b8a:	48 89 cb             	mov    %rcx,%rbx
   140007b8d:	48 8d 44 24 2b       	lea    0x2b(%rsp),%rax
   140007b92:	89 d6                	mov    %edx,%esi
   140007b94:	48 0f 44 d8          	cmove  %rax,%rbx
   140007b98:	e8 73 04 00 00       	call   140008010 <___mb_cur_max_func>
   140007b9d:	89 c7                	mov    %eax,%edi
   140007b9f:	e8 64 04 00 00       	call   140008008 <___lc_codepage_func>
   140007ba4:	0f b7 d6             	movzwl %si,%edx
   140007ba7:	41 89 f9             	mov    %edi,%r9d
   140007baa:	48 89 d9             	mov    %rbx,%rcx
   140007bad:	41 89 c0             	mov    %eax,%r8d
   140007bb0:	e8 3b ff ff ff       	call   140007af0 <__wcrtomb_cp>
   140007bb5:	48 98                	cltq
   140007bb7:	48 83 c4 30          	add    $0x30,%rsp
   140007bbb:	5b                   	pop    %rbx
   140007bbc:	5e                   	pop    %rsi
   140007bbd:	5f                   	pop    %rdi
   140007bbe:	c3                   	ret
   140007bbf:	90                   	nop

0000000140007bc0 <wcsrtombs>:
   140007bc0:	41 56                	push   %r14
   140007bc2:	41 55                	push   %r13
   140007bc4:	41 54                	push   %r12
   140007bc6:	55                   	push   %rbp
   140007bc7:	57                   	push   %rdi
   140007bc8:	56                   	push   %rsi
   140007bc9:	53                   	push   %rbx
   140007bca:	48 83 ec 30          	sub    $0x30,%rsp
   140007bce:	45 31 f6             	xor    %r14d,%r14d
   140007bd1:	49 89 d4             	mov    %rdx,%r12
   140007bd4:	48 89 cb             	mov    %rcx,%rbx
   140007bd7:	4c 89 c5             	mov    %r8,%rbp
   140007bda:	e8 29 04 00 00       	call   140008008 <___lc_codepage_func>
   140007bdf:	89 c6                	mov    %eax,%esi
   140007be1:	e8 2a 04 00 00       	call   140008010 <___mb_cur_max_func>
   140007be6:	4d 8b 2c 24          	mov    (%r12),%r13
   140007bea:	89 c7                	mov    %eax,%edi
   140007bec:	4d 85 ed             	test   %r13,%r13
   140007bef:	74 48                	je     140007c39 <wcsrtombs+0x79>
   140007bf1:	48 85 db             	test   %rbx,%rbx
   140007bf4:	74 5a                	je     140007c50 <wcsrtombs+0x90>
   140007bf6:	48 85 ed             	test   %rbp,%rbp
   140007bf9:	75 20                	jne    140007c1b <wcsrtombs+0x5b>
   140007bfb:	e9 90 00 00 00       	jmp    140007c90 <wcsrtombs+0xd0>
   140007c00:	48 98                	cltq
   140007c02:	48 01 c3             	add    %rax,%rbx
   140007c05:	49 01 c6             	add    %rax,%r14
   140007c08:	80 7b ff 00          	cmpb   $0x0,-0x1(%rbx)
   140007c0c:	0f 84 8e 00 00 00    	je     140007ca0 <wcsrtombs+0xe0>
   140007c12:	49 83 c5 02          	add    $0x2,%r13
   140007c16:	49 39 ee             	cmp    %rbp,%r14
   140007c19:	73 75                	jae    140007c90 <wcsrtombs+0xd0>
   140007c1b:	41 0f b7 55 00       	movzwl 0x0(%r13),%edx
   140007c20:	41 89 f9             	mov    %edi,%r9d
   140007c23:	41 89 f0             	mov    %esi,%r8d
   140007c26:	48 89 d9             	mov    %rbx,%rcx
   140007c29:	e8 c2 fe ff ff       	call   140007af0 <__wcrtomb_cp>
   140007c2e:	85 c0                	test   %eax,%eax
   140007c30:	7f ce                	jg     140007c00 <wcsrtombs+0x40>
   140007c32:	49 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%r14
   140007c39:	4c 89 f0             	mov    %r14,%rax
   140007c3c:	48 83 c4 30          	add    $0x30,%rsp
   140007c40:	5b                   	pop    %rbx
   140007c41:	5e                   	pop    %rsi
   140007c42:	5f                   	pop    %rdi
   140007c43:	5d                   	pop    %rbp
   140007c44:	41 5c                	pop    %r12
   140007c46:	41 5d                	pop    %r13
   140007c48:	41 5e                	pop    %r14
   140007c4a:	c3                   	ret
   140007c4b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140007c50:	48 8d 6c 24 2b       	lea    0x2b(%rsp),%rbp
   140007c55:	eb 1f                	jmp    140007c76 <wcsrtombs+0xb6>
   140007c57:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140007c5e:	00 00 
   140007c60:	48 63 d0             	movslq %eax,%rdx
   140007c63:	83 e8 01             	sub    $0x1,%eax
   140007c66:	48 98                	cltq
   140007c68:	49 01 d6             	add    %rdx,%r14
   140007c6b:	80 7c 04 2b 00       	cmpb   $0x0,0x2b(%rsp,%rax,1)
   140007c70:	74 3e                	je     140007cb0 <wcsrtombs+0xf0>
   140007c72:	49 83 c5 02          	add    $0x2,%r13
   140007c76:	41 0f b7 55 00       	movzwl 0x0(%r13),%edx
   140007c7b:	41 89 f9             	mov    %edi,%r9d
   140007c7e:	41 89 f0             	mov    %esi,%r8d
   140007c81:	48 89 e9             	mov    %rbp,%rcx
   140007c84:	e8 67 fe ff ff       	call   140007af0 <__wcrtomb_cp>
   140007c89:	85 c0                	test   %eax,%eax
   140007c8b:	7f d3                	jg     140007c60 <wcsrtombs+0xa0>
   140007c8d:	eb a3                	jmp    140007c32 <wcsrtombs+0x72>
   140007c8f:	90                   	nop
   140007c90:	4d 89 2c 24          	mov    %r13,(%r12)
   140007c94:	eb a3                	jmp    140007c39 <wcsrtombs+0x79>
   140007c96:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140007c9d:	00 00 00 
   140007ca0:	49 c7 04 24 00 00 00 	movq   $0x0,(%r12)
   140007ca7:	00 
   140007ca8:	49 83 ee 01          	sub    $0x1,%r14
   140007cac:	eb 8b                	jmp    140007c39 <wcsrtombs+0x79>
   140007cae:	66 90                	xchg   %ax,%ax
   140007cb0:	49 83 ee 01          	sub    $0x1,%r14
   140007cb4:	eb 83                	jmp    140007c39 <wcsrtombs+0x79>
   140007cb6:	90                   	nop
   140007cb7:	90                   	nop
   140007cb8:	90                   	nop
   140007cb9:	90                   	nop
   140007cba:	90                   	nop
   140007cbb:	90                   	nop
   140007cbc:	90                   	nop
   140007cbd:	90                   	nop
   140007cbe:	90                   	nop
   140007cbf:	90                   	nop

0000000140007cc0 <__mbrtowc_cp>:
   140007cc0:	57                   	push   %rdi
   140007cc1:	53                   	push   %rbx
   140007cc2:	48 83 ec 48          	sub    $0x48,%rsp
   140007cc6:	48 89 cf             	mov    %rcx,%rdi
   140007cc9:	48 89 d3             	mov    %rdx,%rbx
   140007ccc:	48 85 d2             	test   %rdx,%rdx
   140007ccf:	0f 84 c8 00 00 00    	je     140007d9d <__mbrtowc_cp+0xdd>
   140007cd5:	4d 85 c0             	test   %r8,%r8
   140007cd8:	0f 84 36 01 00 00    	je     140007e14 <__mbrtowc_cp+0x154>
   140007cde:	41 8b 01             	mov    (%r9),%eax
   140007ce1:	0f b6 12             	movzbl (%rdx),%edx
   140007ce4:	41 c7 01 00 00 00 00 	movl   $0x0,(%r9)
   140007ceb:	89 44 24 3c          	mov    %eax,0x3c(%rsp)
   140007cef:	84 d2                	test   %dl,%dl
   140007cf1:	0f 84 a1 00 00 00    	je     140007d98 <__mbrtowc_cp+0xd8>
   140007cf7:	83 bc 24 88 00 00 00 	cmpl   $0x1,0x88(%rsp)
   140007cfe:	01 
   140007cff:	76 77                	jbe    140007d78 <__mbrtowc_cp+0xb8>
   140007d01:	84 c0                	test   %al,%al
   140007d03:	0f 85 a7 00 00 00    	jne    140007db0 <__mbrtowc_cp+0xf0>
   140007d09:	4c 89 4c 24 78       	mov    %r9,0x78(%rsp)
   140007d0e:	8b 8c 24 80 00 00 00 	mov    0x80(%rsp),%ecx
   140007d15:	4c 89 44 24 70       	mov    %r8,0x70(%rsp)
   140007d1a:	ff 15 c8 74 00 00    	call   *0x74c8(%rip)        # 14000f1e8 <__imp_IsDBCSLeadByteEx>
   140007d20:	85 c0                	test   %eax,%eax
   140007d22:	74 54                	je     140007d78 <__mbrtowc_cp+0xb8>
   140007d24:	4c 8b 44 24 70       	mov    0x70(%rsp),%r8
   140007d29:	4c 8b 4c 24 78       	mov    0x78(%rsp),%r9
   140007d2e:	49 83 f8 01          	cmp    $0x1,%r8
   140007d32:	0f 84 d6 00 00 00    	je     140007e0e <__mbrtowc_cp+0x14e>
   140007d38:	48 89 7c 24 20       	mov    %rdi,0x20(%rsp)
   140007d3d:	41 b9 02 00 00 00    	mov    $0x2,%r9d
   140007d43:	49 89 d8             	mov    %rbx,%r8
   140007d46:	c7 44 24 28 01 00 00 	movl   $0x1,0x28(%rsp)
   140007d4d:	00 
   140007d4e:	8b 8c 24 80 00 00 00 	mov    0x80(%rsp),%ecx
   140007d55:	ba 08 00 00 00       	mov    $0x8,%edx
   140007d5a:	ff 15 98 74 00 00    	call   *0x7498(%rip)        # 14000f1f8 <__imp_MultiByteToWideChar>
   140007d60:	85 c0                	test   %eax,%eax
   140007d62:	0f 84 94 00 00 00    	je     140007dfc <__mbrtowc_cp+0x13c>
   140007d68:	b8 02 00 00 00       	mov    $0x2,%eax
   140007d6d:	48 83 c4 48          	add    $0x48,%rsp
   140007d71:	5b                   	pop    %rbx
   140007d72:	5f                   	pop    %rdi
   140007d73:	c3                   	ret
   140007d74:	0f 1f 40 00          	nopl   0x0(%rax)
   140007d78:	8b 84 24 80 00 00 00 	mov    0x80(%rsp),%eax
   140007d7f:	85 c0                	test   %eax,%eax
   140007d81:	75 4d                	jne    140007dd0 <__mbrtowc_cp+0x110>
   140007d83:	0f b6 03             	movzbl (%rbx),%eax
   140007d86:	66 89 07             	mov    %ax,(%rdi)
   140007d89:	b8 01 00 00 00       	mov    $0x1,%eax
   140007d8e:	48 83 c4 48          	add    $0x48,%rsp
   140007d92:	5b                   	pop    %rbx
   140007d93:	5f                   	pop    %rdi
   140007d94:	c3                   	ret
   140007d95:	0f 1f 00             	nopl   (%rax)
   140007d98:	31 d2                	xor    %edx,%edx
   140007d9a:	66 89 11             	mov    %dx,(%rcx)
   140007d9d:	31 c0                	xor    %eax,%eax
   140007d9f:	48 83 c4 48          	add    $0x48,%rsp
   140007da3:	5b                   	pop    %rbx
   140007da4:	5f                   	pop    %rdi
   140007da5:	c3                   	ret
   140007da6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140007dad:	00 00 00 
   140007db0:	88 54 24 3d          	mov    %dl,0x3d(%rsp)
   140007db4:	41 b9 02 00 00 00    	mov    $0x2,%r9d
   140007dba:	4c 8d 44 24 3c       	lea    0x3c(%rsp),%r8
   140007dbf:	c7 44 24 28 01 00 00 	movl   $0x1,0x28(%rsp)
   140007dc6:	00 
   140007dc7:	48 89 4c 24 20       	mov    %rcx,0x20(%rsp)
   140007dcc:	eb 80                	jmp    140007d4e <__mbrtowc_cp+0x8e>
   140007dce:	66 90                	xchg   %ax,%ax
   140007dd0:	c7 44 24 28 01 00 00 	movl   $0x1,0x28(%rsp)
   140007dd7:	00 
   140007dd8:	8b 8c 24 80 00 00 00 	mov    0x80(%rsp),%ecx
   140007ddf:	49 89 d8             	mov    %rbx,%r8
   140007de2:	41 b9 01 00 00 00    	mov    $0x1,%r9d
   140007de8:	48 89 7c 24 20       	mov    %rdi,0x20(%rsp)
   140007ded:	ba 08 00 00 00       	mov    $0x8,%edx
   140007df2:	ff 15 00 74 00 00    	call   *0x7400(%rip)        # 14000f1f8 <__imp_MultiByteToWideChar>
   140007df8:	85 c0                	test   %eax,%eax
   140007dfa:	75 8d                	jne    140007d89 <__mbrtowc_cp+0xc9>
   140007dfc:	e8 47 02 00 00       	call   140008048 <_errno>
   140007e01:	c7 00 2a 00 00 00    	movl   $0x2a,(%rax)
   140007e07:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140007e0c:	eb 91                	jmp    140007d9f <__mbrtowc_cp+0xdf>
   140007e0e:	0f b6 03             	movzbl (%rbx),%eax
   140007e11:	41 88 01             	mov    %al,(%r9)
   140007e14:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
   140007e19:	eb 84                	jmp    140007d9f <__mbrtowc_cp+0xdf>
   140007e1b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000140007e20 <mbrtowc>:
   140007e20:	41 54                	push   %r12
   140007e22:	55                   	push   %rbp
   140007e23:	57                   	push   %rdi
   140007e24:	56                   	push   %rsi
   140007e25:	53                   	push   %rbx
   140007e26:	48 83 ec 40          	sub    $0x40,%rsp
   140007e2a:	31 c0                	xor    %eax,%eax
   140007e2c:	48 89 cb             	mov    %rcx,%rbx
   140007e2f:	48 85 c9             	test   %rcx,%rcx
   140007e32:	66 89 44 24 3e       	mov    %ax,0x3e(%rsp)
   140007e37:	48 8d 44 24 3e       	lea    0x3e(%rsp),%rax
   140007e3c:	4c 89 ce             	mov    %r9,%rsi
   140007e3f:	48 0f 44 d8          	cmove  %rax,%rbx
   140007e43:	48 89 d7             	mov    %rdx,%rdi
   140007e46:	4c 89 c5             	mov    %r8,%rbp
   140007e49:	e8 c2 01 00 00       	call   140008010 <___mb_cur_max_func>
   140007e4e:	41 89 c4             	mov    %eax,%r12d
   140007e51:	e8 b2 01 00 00       	call   140008008 <___lc_codepage_func>
   140007e56:	48 85 f6             	test   %rsi,%rsi
   140007e59:	44 89 64 24 28       	mov    %r12d,0x28(%rsp)
   140007e5e:	49 89 e8             	mov    %rbp,%r8
   140007e61:	89 44 24 20          	mov    %eax,0x20(%rsp)
   140007e65:	4c 8d 0d 0c 6d 00 00 	lea    0x6d0c(%rip),%r9        # 14000eb78 <internal_mbstate.2>
   140007e6c:	48 89 fa             	mov    %rdi,%rdx
   140007e6f:	48 89 d9             	mov    %rbx,%rcx
   140007e72:	4c 0f 45 ce          	cmovne %rsi,%r9
   140007e76:	e8 45 fe ff ff       	call   140007cc0 <__mbrtowc_cp>
   140007e7b:	48 98                	cltq
   140007e7d:	48 83 c4 40          	add    $0x40,%rsp
   140007e81:	5b                   	pop    %rbx
   140007e82:	5e                   	pop    %rsi
   140007e83:	5f                   	pop    %rdi
   140007e84:	5d                   	pop    %rbp
   140007e85:	41 5c                	pop    %r12
   140007e87:	c3                   	ret
   140007e88:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140007e8f:	00 

0000000140007e90 <mbsrtowcs>:
   140007e90:	41 56                	push   %r14
   140007e92:	41 55                	push   %r13
   140007e94:	41 54                	push   %r12
   140007e96:	55                   	push   %rbp
   140007e97:	57                   	push   %rdi
   140007e98:	56                   	push   %rsi
   140007e99:	53                   	push   %rbx
   140007e9a:	48 83 ec 40          	sub    $0x40,%rsp
   140007e9e:	48 8d 05 cf 6c 00 00 	lea    0x6ccf(%rip),%rax        # 14000eb74 <internal_mbstate.1>
   140007ea5:	4c 89 ce             	mov    %r9,%rsi
   140007ea8:	4d 85 c9             	test   %r9,%r9
   140007eab:	49 89 ce             	mov    %rcx,%r14
   140007eae:	48 89 d3             	mov    %rdx,%rbx
   140007eb1:	48 0f 44 f0          	cmove  %rax,%rsi
   140007eb5:	4c 89 c7             	mov    %r8,%rdi
   140007eb8:	e8 4b 01 00 00       	call   140008008 <___lc_codepage_func>
   140007ebd:	41 89 c4             	mov    %eax,%r12d
   140007ec0:	e8 4b 01 00 00       	call   140008010 <___mb_cur_max_func>
   140007ec5:	89 c5                	mov    %eax,%ebp
   140007ec7:	48 85 db             	test   %rbx,%rbx
   140007eca:	0f 84 c0 00 00 00    	je     140007f90 <mbsrtowcs+0x100>
   140007ed0:	48 8b 13             	mov    (%rbx),%rdx
   140007ed3:	48 85 d2             	test   %rdx,%rdx
   140007ed6:	0f 84 b4 00 00 00    	je     140007f90 <mbsrtowcs+0x100>
   140007edc:	4d 85 f6             	test   %r14,%r14
   140007edf:	74 6f                	je     140007f50 <mbsrtowcs+0xc0>
   140007ee1:	45 31 ed             	xor    %r13d,%r13d
   140007ee4:	48 85 ff             	test   %rdi,%rdi
   140007ee7:	75 1e                	jne    140007f07 <mbsrtowcs+0x77>
   140007ee9:	eb 4a                	jmp    140007f35 <mbsrtowcs+0xa5>
   140007eeb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140007ef0:	48 8b 13             	mov    (%rbx),%rdx
   140007ef3:	48 98                	cltq
   140007ef5:	49 83 c6 02          	add    $0x2,%r14
   140007ef9:	49 01 c5             	add    %rax,%r13
   140007efc:	48 01 c2             	add    %rax,%rdx
   140007eff:	48 89 13             	mov    %rdx,(%rbx)
   140007f02:	49 39 fd             	cmp    %rdi,%r13
   140007f05:	73 2e                	jae    140007f35 <mbsrtowcs+0xa5>
   140007f07:	89 6c 24 28          	mov    %ebp,0x28(%rsp)
   140007f0b:	49 89 f8             	mov    %rdi,%r8
   140007f0e:	49 89 f1             	mov    %rsi,%r9
   140007f11:	4c 89 f1             	mov    %r14,%rcx
   140007f14:	44 89 64 24 20       	mov    %r12d,0x20(%rsp)
   140007f19:	4d 29 e8             	sub    %r13,%r8
   140007f1c:	e8 9f fd ff ff       	call   140007cc0 <__mbrtowc_cp>
   140007f21:	85 c0                	test   %eax,%eax
   140007f23:	7f cb                	jg     140007ef0 <mbsrtowcs+0x60>
   140007f25:	49 39 fd             	cmp    %rdi,%r13
   140007f28:	73 0b                	jae    140007f35 <mbsrtowcs+0xa5>
   140007f2a:	85 c0                	test   %eax,%eax
   140007f2c:	75 07                	jne    140007f35 <mbsrtowcs+0xa5>
   140007f2e:	48 c7 03 00 00 00 00 	movq   $0x0,(%rbx)
   140007f35:	4c 89 e8             	mov    %r13,%rax
   140007f38:	48 83 c4 40          	add    $0x40,%rsp
   140007f3c:	5b                   	pop    %rbx
   140007f3d:	5e                   	pop    %rsi
   140007f3e:	5f                   	pop    %rdi
   140007f3f:	5d                   	pop    %rbp
   140007f40:	41 5c                	pop    %r12
   140007f42:	41 5d                	pop    %r13
   140007f44:	41 5e                	pop    %r14
   140007f46:	c3                   	ret
   140007f47:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140007f4e:	00 00 
   140007f50:	31 c0                	xor    %eax,%eax
   140007f52:	41 89 ee             	mov    %ebp,%r14d
   140007f55:	48 8d 7c 24 3e       	lea    0x3e(%rsp),%rdi
   140007f5a:	45 31 ed             	xor    %r13d,%r13d
   140007f5d:	66 89 44 24 3e       	mov    %ax,0x3e(%rsp)
   140007f62:	eb 0c                	jmp    140007f70 <mbsrtowcs+0xe0>
   140007f64:	0f 1f 40 00          	nopl   0x0(%rax)
   140007f68:	48 98                	cltq
   140007f6a:	48 8b 13             	mov    (%rbx),%rdx
   140007f6d:	49 01 c5             	add    %rax,%r13
   140007f70:	89 6c 24 28          	mov    %ebp,0x28(%rsp)
   140007f74:	4c 01 ea             	add    %r13,%rdx
   140007f77:	49 89 f1             	mov    %rsi,%r9
   140007f7a:	4d 89 f0             	mov    %r14,%r8
   140007f7d:	44 89 64 24 20       	mov    %r12d,0x20(%rsp)
   140007f82:	48 89 f9             	mov    %rdi,%rcx
   140007f85:	e8 36 fd ff ff       	call   140007cc0 <__mbrtowc_cp>
   140007f8a:	85 c0                	test   %eax,%eax
   140007f8c:	7f da                	jg     140007f68 <mbsrtowcs+0xd8>
   140007f8e:	eb a5                	jmp    140007f35 <mbsrtowcs+0xa5>
   140007f90:	45 31 ed             	xor    %r13d,%r13d
   140007f93:	eb a0                	jmp    140007f35 <mbsrtowcs+0xa5>
   140007f95:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140007f9c:	00 00 00 00 

0000000140007fa0 <mbrlen>:
   140007fa0:	55                   	push   %rbp
   140007fa1:	57                   	push   %rdi
   140007fa2:	56                   	push   %rsi
   140007fa3:	53                   	push   %rbx
   140007fa4:	48 83 ec 48          	sub    $0x48,%rsp
   140007fa8:	31 c0                	xor    %eax,%eax
   140007faa:	48 89 ce             	mov    %rcx,%rsi
   140007fad:	48 89 d7             	mov    %rdx,%rdi
   140007fb0:	4c 89 c3             	mov    %r8,%rbx
   140007fb3:	66 89 44 24 3e       	mov    %ax,0x3e(%rsp)
   140007fb8:	e8 53 00 00 00       	call   140008010 <___mb_cur_max_func>
   140007fbd:	89 c5                	mov    %eax,%ebp
   140007fbf:	e8 44 00 00 00       	call   140008008 <___lc_codepage_func>
   140007fc4:	48 85 db             	test   %rbx,%rbx
   140007fc7:	89 6c 24 28          	mov    %ebp,0x28(%rsp)
   140007fcb:	49 89 f8             	mov    %rdi,%r8
   140007fce:	48 8d 15 9b 6b 00 00 	lea    0x6b9b(%rip),%rdx        # 14000eb70 <s_mbstate.0>
   140007fd5:	89 44 24 20          	mov    %eax,0x20(%rsp)
   140007fd9:	48 8d 4c 24 3e       	lea    0x3e(%rsp),%rcx
   140007fde:	48 0f 44 da          	cmove  %rdx,%rbx
   140007fe2:	48 89 f2             	mov    %rsi,%rdx
   140007fe5:	49 89 d9             	mov    %rbx,%r9
   140007fe8:	e8 d3 fc ff ff       	call   140007cc0 <__mbrtowc_cp>
   140007fed:	48 98                	cltq
   140007fef:	48 83 c4 48          	add    $0x48,%rsp
   140007ff3:	5b                   	pop    %rbx
   140007ff4:	5e                   	pop    %rsi
   140007ff5:	5f                   	pop    %rdi
   140007ff6:	5d                   	pop    %rbp
   140007ff7:	c3                   	ret
   140007ff8:	90                   	nop
   140007ff9:	90                   	nop
   140007ffa:	90                   	nop
   140007ffb:	90                   	nop
   140007ffc:	90                   	nop
   140007ffd:	90                   	nop
   140007ffe:	90                   	nop
   140007fff:	90                   	nop

0000000140008000 <__C_specific_handler>:
   140008000:	ff 25 32 72 00 00    	jmp    *0x7232(%rip)        # 14000f238 <__imp___C_specific_handler>
   140008006:	90                   	nop
   140008007:	90                   	nop

0000000140008008 <___lc_codepage_func>:
   140008008:	ff 25 32 72 00 00    	jmp    *0x7232(%rip)        # 14000f240 <__imp____lc_codepage_func>
   14000800e:	90                   	nop
   14000800f:	90                   	nop

0000000140008010 <___mb_cur_max_func>:
   140008010:	ff 25 32 72 00 00    	jmp    *0x7232(%rip)        # 14000f248 <__imp____mb_cur_max_func>
   140008016:	90                   	nop
   140008017:	90                   	nop

0000000140008018 <__getmainargs>:
   140008018:	ff 25 32 72 00 00    	jmp    *0x7232(%rip)        # 14000f250 <__imp___getmainargs>
   14000801e:	90                   	nop
   14000801f:	90                   	nop

0000000140008020 <__iob_func>:
   140008020:	ff 25 3a 72 00 00    	jmp    *0x723a(%rip)        # 14000f260 <__imp___iob_func>
   140008026:	90                   	nop
   140008027:	90                   	nop

0000000140008028 <__set_app_type>:
   140008028:	ff 25 3a 72 00 00    	jmp    *0x723a(%rip)        # 14000f268 <__imp___set_app_type>
   14000802e:	90                   	nop
   14000802f:	90                   	nop

0000000140008030 <__setusermatherr>:
   140008030:	ff 25 3a 72 00 00    	jmp    *0x723a(%rip)        # 14000f270 <__imp___setusermatherr>
   140008036:	90                   	nop
   140008037:	90                   	nop

0000000140008038 <_amsg_exit>:
   140008038:	ff 25 3a 72 00 00    	jmp    *0x723a(%rip)        # 14000f278 <__imp__amsg_exit>
   14000803e:	90                   	nop
   14000803f:	90                   	nop

0000000140008040 <_cexit>:
   140008040:	ff 25 3a 72 00 00    	jmp    *0x723a(%rip)        # 14000f280 <__imp__cexit>
   140008046:	90                   	nop
   140008047:	90                   	nop

0000000140008048 <_errno>:
   140008048:	ff 25 42 72 00 00    	jmp    *0x7242(%rip)        # 14000f290 <__imp__errno>
   14000804e:	90                   	nop
   14000804f:	90                   	nop

0000000140008050 <_initterm>:
   140008050:	ff 25 4a 72 00 00    	jmp    *0x724a(%rip)        # 14000f2a0 <__imp__initterm>
   140008056:	90                   	nop
   140008057:	90                   	nop

0000000140008058 <_lock>:
   140008058:	ff 25 4a 72 00 00    	jmp    *0x724a(%rip)        # 14000f2a8 <__imp__lock>
   14000805e:	90                   	nop
   14000805f:	90                   	nop

0000000140008060 <_onexit>:
   140008060:	ff 25 4a 72 00 00    	jmp    *0x724a(%rip)        # 14000f2b0 <__imp__onexit>
   140008066:	90                   	nop
   140008067:	90                   	nop

0000000140008068 <_unlock>:
   140008068:	ff 25 4a 72 00 00    	jmp    *0x724a(%rip)        # 14000f2b8 <__imp__unlock>
   14000806e:	90                   	nop
   14000806f:	90                   	nop

0000000140008070 <abort>:
   140008070:	ff 25 4a 72 00 00    	jmp    *0x724a(%rip)        # 14000f2c0 <__imp_abort>
   140008076:	90                   	nop
   140008077:	90                   	nop

0000000140008078 <calloc>:
   140008078:	ff 25 4a 72 00 00    	jmp    *0x724a(%rip)        # 14000f2c8 <__imp_calloc>
   14000807e:	90                   	nop
   14000807f:	90                   	nop

0000000140008080 <exit>:
   140008080:	ff 25 4a 72 00 00    	jmp    *0x724a(%rip)        # 14000f2d0 <__imp_exit>
   140008086:	90                   	nop
   140008087:	90                   	nop

0000000140008088 <fprintf>:
   140008088:	ff 25 4a 72 00 00    	jmp    *0x724a(%rip)        # 14000f2d8 <__imp_fprintf>
   14000808e:	90                   	nop
   14000808f:	90                   	nop

0000000140008090 <fputc>:
   140008090:	ff 25 4a 72 00 00    	jmp    *0x724a(%rip)        # 14000f2e0 <__imp_fputc>
   140008096:	90                   	nop
   140008097:	90                   	nop

0000000140008098 <free>:
   140008098:	ff 25 4a 72 00 00    	jmp    *0x724a(%rip)        # 14000f2e8 <__imp_free>
   14000809e:	90                   	nop
   14000809f:	90                   	nop

00000001400080a0 <fwrite>:
   1400080a0:	ff 25 4a 72 00 00    	jmp    *0x724a(%rip)        # 14000f2f0 <__imp_fwrite>
   1400080a6:	90                   	nop
   1400080a7:	90                   	nop

00000001400080a8 <localeconv>:
   1400080a8:	ff 25 4a 72 00 00    	jmp    *0x724a(%rip)        # 14000f2f8 <__imp_localeconv>
   1400080ae:	90                   	nop
   1400080af:	90                   	nop

00000001400080b0 <malloc>:
   1400080b0:	ff 25 4a 72 00 00    	jmp    *0x724a(%rip)        # 14000f300 <__imp_malloc>
   1400080b6:	90                   	nop
   1400080b7:	90                   	nop

00000001400080b8 <memcpy>:
   1400080b8:	ff 25 4a 72 00 00    	jmp    *0x724a(%rip)        # 14000f308 <__imp_memcpy>
   1400080be:	90                   	nop
   1400080bf:	90                   	nop

00000001400080c0 <memset>:
   1400080c0:	ff 25 4a 72 00 00    	jmp    *0x724a(%rip)        # 14000f310 <__imp_memset>
   1400080c6:	90                   	nop
   1400080c7:	90                   	nop

00000001400080c8 <signal>:
   1400080c8:	ff 25 4a 72 00 00    	jmp    *0x724a(%rip)        # 14000f318 <__imp_signal>
   1400080ce:	90                   	nop
   1400080cf:	90                   	nop

00000001400080d0 <strerror>:
   1400080d0:	ff 25 4a 72 00 00    	jmp    *0x724a(%rip)        # 14000f320 <__imp_strerror>
   1400080d6:	90                   	nop
   1400080d7:	90                   	nop

00000001400080d8 <strlen>:
   1400080d8:	ff 25 4a 72 00 00    	jmp    *0x724a(%rip)        # 14000f328 <__imp_strlen>
   1400080de:	90                   	nop
   1400080df:	90                   	nop

00000001400080e0 <strncmp>:
   1400080e0:	ff 25 4a 72 00 00    	jmp    *0x724a(%rip)        # 14000f330 <__imp_strncmp>
   1400080e6:	90                   	nop
   1400080e7:	90                   	nop

00000001400080e8 <vfprintf>:
   1400080e8:	ff 25 4a 72 00 00    	jmp    *0x724a(%rip)        # 14000f338 <__imp_vfprintf>
   1400080ee:	90                   	nop
   1400080ef:	90                   	nop

00000001400080f0 <wcslen>:
   1400080f0:	ff 25 4a 72 00 00    	jmp    *0x724a(%rip)        # 14000f340 <__imp_wcslen>
   1400080f6:	90                   	nop
   1400080f7:	90                   	nop
   1400080f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400080ff:	00 

0000000140008100 <WideCharToMultiByte>:
   140008100:	ff 25 22 71 00 00    	jmp    *0x7122(%rip)        # 14000f228 <__imp_WideCharToMultiByte>
   140008106:	90                   	nop
   140008107:	90                   	nop

0000000140008108 <VirtualQuery>:
   140008108:	ff 25 12 71 00 00    	jmp    *0x7112(%rip)        # 14000f220 <__imp_VirtualQuery>
   14000810e:	90                   	nop
   14000810f:	90                   	nop

0000000140008110 <VirtualProtect>:
   140008110:	ff 25 02 71 00 00    	jmp    *0x7102(%rip)        # 14000f218 <__imp_VirtualProtect>
   140008116:	90                   	nop
   140008117:	90                   	nop

0000000140008118 <TlsGetValue>:
   140008118:	ff 25 f2 70 00 00    	jmp    *0x70f2(%rip)        # 14000f210 <__imp_TlsGetValue>
   14000811e:	90                   	nop
   14000811f:	90                   	nop

0000000140008120 <Sleep>:
   140008120:	ff 25 e2 70 00 00    	jmp    *0x70e2(%rip)        # 14000f208 <__imp_Sleep>
   140008126:	90                   	nop
   140008127:	90                   	nop

0000000140008128 <SetUnhandledExceptionFilter>:
   140008128:	ff 25 d2 70 00 00    	jmp    *0x70d2(%rip)        # 14000f200 <__imp_SetUnhandledExceptionFilter>
   14000812e:	90                   	nop
   14000812f:	90                   	nop

0000000140008130 <MultiByteToWideChar>:
   140008130:	ff 25 c2 70 00 00    	jmp    *0x70c2(%rip)        # 14000f1f8 <__imp_MultiByteToWideChar>
   140008136:	90                   	nop
   140008137:	90                   	nop

0000000140008138 <LeaveCriticalSection>:
   140008138:	ff 25 b2 70 00 00    	jmp    *0x70b2(%rip)        # 14000f1f0 <__imp_LeaveCriticalSection>
   14000813e:	90                   	nop
   14000813f:	90                   	nop

0000000140008140 <IsDBCSLeadByteEx>:
   140008140:	ff 25 a2 70 00 00    	jmp    *0x70a2(%rip)        # 14000f1e8 <__imp_IsDBCSLeadByteEx>
   140008146:	90                   	nop
   140008147:	90                   	nop

0000000140008148 <InitializeCriticalSection>:
   140008148:	ff 25 92 70 00 00    	jmp    *0x7092(%rip)        # 14000f1e0 <__imp_InitializeCriticalSection>
   14000814e:	90                   	nop
   14000814f:	90                   	nop

0000000140008150 <GetLastError>:
   140008150:	ff 25 82 70 00 00    	jmp    *0x7082(%rip)        # 14000f1d8 <__imp_GetLastError>
   140008156:	90                   	nop
   140008157:	90                   	nop

0000000140008158 <EnterCriticalSection>:
   140008158:	ff 25 72 70 00 00    	jmp    *0x7072(%rip)        # 14000f1d0 <__imp_EnterCriticalSection>
   14000815e:	90                   	nop
   14000815f:	90                   	nop

0000000140008160 <DeleteCriticalSection>:
   140008160:	ff 25 62 70 00 00    	jmp    *0x7062(%rip)        # 14000f1c8 <__IAT_start__>
   140008166:	90                   	nop
   140008167:	90                   	nop
   140008168:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000816f:	00 

0000000140008170 <register_frame_ctor>:
   140008170:	e9 bb 92 ff ff       	jmp    140001430 <__gcc_register_frame>
   140008175:	90                   	nop
   140008176:	90                   	nop
   140008177:	90                   	nop
   140008178:	90                   	nop
   140008179:	90                   	nop
   14000817a:	90                   	nop
   14000817b:	90                   	nop
   14000817c:	90                   	nop
   14000817d:	90                   	nop
   14000817e:	90                   	nop
   14000817f:	90                   	nop

0000000140008180 <__CTOR_LIST__>:
   140008180:	ff                   	(bad)
   140008181:	ff                   	(bad)
   140008182:	ff                   	(bad)
   140008183:	ff                   	(bad)
   140008184:	ff                   	(bad)
   140008185:	ff                   	(bad)
   140008186:	ff                   	(bad)
   140008187:	ff                   	.byte 0xff

0000000140008188 <.ctors.65535>:
   140008188:	70 81                	jo     14000810b <VirtualQuery+0x3>
   14000818a:	00 40 01             	add    %al,0x1(%rax)
	...

0000000140008198 <__DTOR_LIST__>:
   140008198:	ff                   	(bad)
   140008199:	ff                   	(bad)
   14000819a:	ff                   	(bad)
   14000819b:	ff                   	(bad)
   14000819c:	ff                   	(bad)
   14000819d:	ff                   	(bad)
   14000819e:	ff                   	(bad)
   14000819f:	ff 00                	incl   (%rax)
   1400081a1:	00 00                	add    %al,(%rax)
   1400081a3:	00 00                	add    %al,(%rax)
   1400081a5:	00 00                	add    %al,(%rax)
	...
