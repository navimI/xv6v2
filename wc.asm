
_wc:     file format elf32-i386


Disassembly of section .text:

00000000 <.text>:
   0:	f3 0f 1e fb          	endbr32 
   4:	55                   	push   %ebp
   5:	89 e5                	mov    %esp,%ebp
   7:	57                   	push   %edi
   8:	56                   	push   %esi
   9:	53                   	push   %ebx
   a:	83 ec 1c             	sub    $0x1c,%esp
   d:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  14:	be 00 00 00 00       	mov    $0x0,%esi
  19:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
  20:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
  27:	83 ec 04             	sub    $0x4,%esp
  2a:	68 00 02 00 00       	push   $0x200
  2f:	68 e0 0a 00 00       	push   $0xae0
  34:	ff 75 08             	push   0x8(%ebp)
  37:	e8 1d 03 00 00       	call   0x359
  3c:	89 c7                	mov    %eax,%edi
  3e:	83 c4 10             	add    $0x10,%esp
  41:	85 c0                	test   %eax,%eax
  43:	7e 54                	jle    0x99
  45:	bb 00 00 00 00       	mov    $0x0,%ebx
  4a:	eb 22                	jmp    0x6e
  4c:	83 ec 08             	sub    $0x8,%esp
  4f:	0f be c0             	movsbl %al,%eax
  52:	50                   	push   %eax
  53:	68 4c 07 00 00       	push   $0x74c
  58:	e8 b2 01 00 00       	call   0x20f
  5d:	83 c4 10             	add    $0x10,%esp
  60:	85 c0                	test   %eax,%eax
  62:	74 22                	je     0x86
  64:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  6b:	83 c3 01             	add    $0x1,%ebx
  6e:	39 fb                	cmp    %edi,%ebx
  70:	7d b5                	jge    0x27
  72:	83 c6 01             	add    $0x1,%esi
  75:	0f b6 83 e0 0a 00 00 	movzbl 0xae0(%ebx),%eax
  7c:	3c 0a                	cmp    $0xa,%al
  7e:	75 cc                	jne    0x4c
  80:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
  84:	eb c6                	jmp    0x4c
  86:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
  8a:	75 df                	jne    0x6b
  8c:	83 45 dc 01          	addl   $0x1,-0x24(%ebp)
  90:	c7 45 e4 01 00 00 00 	movl   $0x1,-0x1c(%ebp)
  97:	eb d2                	jmp    0x6b
  99:	78 24                	js     0xbf
  9b:	83 ec 08             	sub    $0x8,%esp
  9e:	ff 75 0c             	push   0xc(%ebp)
  a1:	56                   	push   %esi
  a2:	ff 75 dc             	push   -0x24(%ebp)
  a5:	ff 75 e0             	push   -0x20(%ebp)
  a8:	68 62 07 00 00       	push   $0x762
  ad:	6a 01                	push   $0x1
  af:	e8 e2 03 00 00       	call   0x496
  b4:	83 c4 20             	add    $0x20,%esp
  b7:	8d 65 f4             	lea    -0xc(%ebp),%esp
  ba:	5b                   	pop    %ebx
  bb:	5e                   	pop    %esi
  bc:	5f                   	pop    %edi
  bd:	5d                   	pop    %ebp
  be:	c3                   	ret    
  bf:	83 ec 08             	sub    $0x8,%esp
  c2:	68 52 07 00 00       	push   $0x752
  c7:	6a 01                	push   $0x1
  c9:	e8 c8 03 00 00       	call   0x496
  ce:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  d5:	e8 67 02 00 00       	call   0x341
  da:	f3 0f 1e fb          	endbr32 
  de:	8d 4c 24 04          	lea    0x4(%esp),%ecx
  e2:	83 e4 f0             	and    $0xfffffff0,%esp
  e5:	ff 71 fc             	push   -0x4(%ecx)
  e8:	55                   	push   %ebp
  e9:	89 e5                	mov    %esp,%ebp
  eb:	57                   	push   %edi
  ec:	56                   	push   %esi
  ed:	53                   	push   %ebx
  ee:	51                   	push   %ecx
  ef:	83 ec 18             	sub    $0x18,%esp
  f2:	8b 01                	mov    (%ecx),%eax
  f4:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  f7:	8b 51 04             	mov    0x4(%ecx),%edx
  fa:	89 55 e0             	mov    %edx,-0x20(%ebp)
  fd:	83 f8 01             	cmp    $0x1,%eax
 100:	7e 40                	jle    0x142
 102:	be 01 00 00 00       	mov    $0x1,%esi
 107:	3b 75 e4             	cmp    -0x1c(%ebp),%esi
 10a:	7d 6e                	jge    0x17a
 10c:	8b 45 e0             	mov    -0x20(%ebp),%eax
 10f:	8d 3c b0             	lea    (%eax,%esi,4),%edi
 112:	83 ec 08             	sub    $0x8,%esp
 115:	6a 00                	push   $0x0
 117:	ff 37                	push   (%edi)
 119:	e8 63 02 00 00       	call   0x381
 11e:	89 c3                	mov    %eax,%ebx
 120:	83 c4 10             	add    $0x10,%esp
 123:	85 c0                	test   %eax,%eax
 125:	78 36                	js     0x15d
 127:	83 ec 08             	sub    $0x8,%esp
 12a:	ff 37                	push   (%edi)
 12c:	50                   	push   %eax
 12d:	e8 ce fe ff ff       	call   0x0
 132:	89 1c 24             	mov    %ebx,(%esp)
 135:	e8 2f 02 00 00       	call   0x369
 13a:	83 c6 01             	add    $0x1,%esi
 13d:	83 c4 10             	add    $0x10,%esp
 140:	eb c5                	jmp    0x107
 142:	83 ec 08             	sub    $0x8,%esp
 145:	68 61 07 00 00       	push   $0x761
 14a:	6a 00                	push   $0x0
 14c:	e8 af fe ff ff       	call   0x0
 151:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 158:	e8 e4 01 00 00       	call   0x341
 15d:	83 ec 04             	sub    $0x4,%esp
 160:	ff 37                	push   (%edi)
 162:	68 6f 07 00 00       	push   $0x76f
 167:	6a 01                	push   $0x1
 169:	e8 28 03 00 00       	call   0x496
 16e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 175:	e8 c7 01 00 00       	call   0x341
 17a:	83 ec 0c             	sub    $0xc,%esp
 17d:	6a 00                	push   $0x0
 17f:	e8 bd 01 00 00       	call   0x341
 184:	f3 0f 1e fb          	endbr32 
 188:	55                   	push   %ebp
 189:	89 e5                	mov    %esp,%ebp
 18b:	56                   	push   %esi
 18c:	53                   	push   %ebx
 18d:	8b 75 08             	mov    0x8(%ebp),%esi
 190:	8b 55 0c             	mov    0xc(%ebp),%edx
 193:	89 f0                	mov    %esi,%eax
 195:	89 d1                	mov    %edx,%ecx
 197:	83 c2 01             	add    $0x1,%edx
 19a:	89 c3                	mov    %eax,%ebx
 19c:	83 c0 01             	add    $0x1,%eax
 19f:	0f b6 09             	movzbl (%ecx),%ecx
 1a2:	88 0b                	mov    %cl,(%ebx)
 1a4:	84 c9                	test   %cl,%cl
 1a6:	75 ed                	jne    0x195
 1a8:	89 f0                	mov    %esi,%eax
 1aa:	5b                   	pop    %ebx
 1ab:	5e                   	pop    %esi
 1ac:	5d                   	pop    %ebp
 1ad:	c3                   	ret    
 1ae:	f3 0f 1e fb          	endbr32 
 1b2:	55                   	push   %ebp
 1b3:	89 e5                	mov    %esp,%ebp
 1b5:	8b 4d 08             	mov    0x8(%ebp),%ecx
 1b8:	8b 55 0c             	mov    0xc(%ebp),%edx
 1bb:	0f b6 01             	movzbl (%ecx),%eax
 1be:	84 c0                	test   %al,%al
 1c0:	74 0c                	je     0x1ce
 1c2:	3a 02                	cmp    (%edx),%al
 1c4:	75 08                	jne    0x1ce
 1c6:	83 c1 01             	add    $0x1,%ecx
 1c9:	83 c2 01             	add    $0x1,%edx
 1cc:	eb ed                	jmp    0x1bb
 1ce:	0f b6 c0             	movzbl %al,%eax
 1d1:	0f b6 12             	movzbl (%edx),%edx
 1d4:	29 d0                	sub    %edx,%eax
 1d6:	5d                   	pop    %ebp
 1d7:	c3                   	ret    
 1d8:	f3 0f 1e fb          	endbr32 
 1dc:	55                   	push   %ebp
 1dd:	89 e5                	mov    %esp,%ebp
 1df:	8b 4d 08             	mov    0x8(%ebp),%ecx
 1e2:	b8 00 00 00 00       	mov    $0x0,%eax
 1e7:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
 1eb:	74 05                	je     0x1f2
 1ed:	83 c0 01             	add    $0x1,%eax
 1f0:	eb f5                	jmp    0x1e7
 1f2:	5d                   	pop    %ebp
 1f3:	c3                   	ret    
 1f4:	f3 0f 1e fb          	endbr32 
 1f8:	55                   	push   %ebp
 1f9:	89 e5                	mov    %esp,%ebp
 1fb:	57                   	push   %edi
 1fc:	8b 55 08             	mov    0x8(%ebp),%edx
 1ff:	89 d7                	mov    %edx,%edi
 201:	8b 4d 10             	mov    0x10(%ebp),%ecx
 204:	8b 45 0c             	mov    0xc(%ebp),%eax
 207:	fc                   	cld    
 208:	f3 aa                	rep stos %al,%es:(%edi)
 20a:	89 d0                	mov    %edx,%eax
 20c:	5f                   	pop    %edi
 20d:	5d                   	pop    %ebp
 20e:	c3                   	ret    
 20f:	f3 0f 1e fb          	endbr32 
 213:	55                   	push   %ebp
 214:	89 e5                	mov    %esp,%ebp
 216:	8b 45 08             	mov    0x8(%ebp),%eax
 219:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
 21d:	0f b6 10             	movzbl (%eax),%edx
 220:	84 d2                	test   %dl,%dl
 222:	74 09                	je     0x22d
 224:	38 ca                	cmp    %cl,%dl
 226:	74 0a                	je     0x232
 228:	83 c0 01             	add    $0x1,%eax
 22b:	eb f0                	jmp    0x21d
 22d:	b8 00 00 00 00       	mov    $0x0,%eax
 232:	5d                   	pop    %ebp
 233:	c3                   	ret    
 234:	f3 0f 1e fb          	endbr32 
 238:	55                   	push   %ebp
 239:	89 e5                	mov    %esp,%ebp
 23b:	57                   	push   %edi
 23c:	56                   	push   %esi
 23d:	53                   	push   %ebx
 23e:	83 ec 1c             	sub    $0x1c,%esp
 241:	8b 7d 08             	mov    0x8(%ebp),%edi
 244:	bb 00 00 00 00       	mov    $0x0,%ebx
 249:	89 de                	mov    %ebx,%esi
 24b:	83 c3 01             	add    $0x1,%ebx
 24e:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 251:	7d 2e                	jge    0x281
 253:	83 ec 04             	sub    $0x4,%esp
 256:	6a 01                	push   $0x1
 258:	8d 45 e7             	lea    -0x19(%ebp),%eax
 25b:	50                   	push   %eax
 25c:	6a 00                	push   $0x0
 25e:	e8 f6 00 00 00       	call   0x359
 263:	83 c4 10             	add    $0x10,%esp
 266:	85 c0                	test   %eax,%eax
 268:	7e 17                	jle    0x281
 26a:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 26e:	88 04 37             	mov    %al,(%edi,%esi,1)
 271:	3c 0a                	cmp    $0xa,%al
 273:	0f 94 c2             	sete   %dl
 276:	3c 0d                	cmp    $0xd,%al
 278:	0f 94 c0             	sete   %al
 27b:	08 c2                	or     %al,%dl
 27d:	74 ca                	je     0x249
 27f:	89 de                	mov    %ebx,%esi
 281:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 285:	89 f8                	mov    %edi,%eax
 287:	8d 65 f4             	lea    -0xc(%ebp),%esp
 28a:	5b                   	pop    %ebx
 28b:	5e                   	pop    %esi
 28c:	5f                   	pop    %edi
 28d:	5d                   	pop    %ebp
 28e:	c3                   	ret    
 28f:	f3 0f 1e fb          	endbr32 
 293:	55                   	push   %ebp
 294:	89 e5                	mov    %esp,%ebp
 296:	56                   	push   %esi
 297:	53                   	push   %ebx
 298:	83 ec 08             	sub    $0x8,%esp
 29b:	6a 00                	push   $0x0
 29d:	ff 75 08             	push   0x8(%ebp)
 2a0:	e8 dc 00 00 00       	call   0x381
 2a5:	83 c4 10             	add    $0x10,%esp
 2a8:	85 c0                	test   %eax,%eax
 2aa:	78 24                	js     0x2d0
 2ac:	89 c3                	mov    %eax,%ebx
 2ae:	83 ec 08             	sub    $0x8,%esp
 2b1:	ff 75 0c             	push   0xc(%ebp)
 2b4:	50                   	push   %eax
 2b5:	e8 df 00 00 00       	call   0x399
 2ba:	89 c6                	mov    %eax,%esi
 2bc:	89 1c 24             	mov    %ebx,(%esp)
 2bf:	e8 a5 00 00 00       	call   0x369
 2c4:	83 c4 10             	add    $0x10,%esp
 2c7:	89 f0                	mov    %esi,%eax
 2c9:	8d 65 f8             	lea    -0x8(%ebp),%esp
 2cc:	5b                   	pop    %ebx
 2cd:	5e                   	pop    %esi
 2ce:	5d                   	pop    %ebp
 2cf:	c3                   	ret    
 2d0:	be ff ff ff ff       	mov    $0xffffffff,%esi
 2d5:	eb f0                	jmp    0x2c7
 2d7:	f3 0f 1e fb          	endbr32 
 2db:	55                   	push   %ebp
 2dc:	89 e5                	mov    %esp,%ebp
 2de:	53                   	push   %ebx
 2df:	8b 4d 08             	mov    0x8(%ebp),%ecx
 2e2:	ba 00 00 00 00       	mov    $0x0,%edx
 2e7:	0f b6 01             	movzbl (%ecx),%eax
 2ea:	8d 58 d0             	lea    -0x30(%eax),%ebx
 2ed:	80 fb 09             	cmp    $0x9,%bl
 2f0:	77 12                	ja     0x304
 2f2:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 2f5:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 2f8:	83 c1 01             	add    $0x1,%ecx
 2fb:	0f be c0             	movsbl %al,%eax
 2fe:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 302:	eb e3                	jmp    0x2e7
 304:	89 d0                	mov    %edx,%eax
 306:	5b                   	pop    %ebx
 307:	5d                   	pop    %ebp
 308:	c3                   	ret    
 309:	f3 0f 1e fb          	endbr32 
 30d:	55                   	push   %ebp
 30e:	89 e5                	mov    %esp,%ebp
 310:	56                   	push   %esi
 311:	53                   	push   %ebx
 312:	8b 75 08             	mov    0x8(%ebp),%esi
 315:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 318:	8b 45 10             	mov    0x10(%ebp),%eax
 31b:	89 f2                	mov    %esi,%edx
 31d:	8d 58 ff             	lea    -0x1(%eax),%ebx
 320:	85 c0                	test   %eax,%eax
 322:	7e 0f                	jle    0x333
 324:	0f b6 01             	movzbl (%ecx),%eax
 327:	88 02                	mov    %al,(%edx)
 329:	8d 49 01             	lea    0x1(%ecx),%ecx
 32c:	8d 52 01             	lea    0x1(%edx),%edx
 32f:	89 d8                	mov    %ebx,%eax
 331:	eb ea                	jmp    0x31d
 333:	89 f0                	mov    %esi,%eax
 335:	5b                   	pop    %ebx
 336:	5e                   	pop    %esi
 337:	5d                   	pop    %ebp
 338:	c3                   	ret    
 339:	b8 01 00 00 00       	mov    $0x1,%eax
 33e:	cd 40                	int    $0x40
 340:	c3                   	ret    
 341:	b8 02 00 00 00       	mov    $0x2,%eax
 346:	cd 40                	int    $0x40
 348:	c3                   	ret    
 349:	b8 03 00 00 00       	mov    $0x3,%eax
 34e:	cd 40                	int    $0x40
 350:	c3                   	ret    
 351:	b8 04 00 00 00       	mov    $0x4,%eax
 356:	cd 40                	int    $0x40
 358:	c3                   	ret    
 359:	b8 05 00 00 00       	mov    $0x5,%eax
 35e:	cd 40                	int    $0x40
 360:	c3                   	ret    
 361:	b8 10 00 00 00       	mov    $0x10,%eax
 366:	cd 40                	int    $0x40
 368:	c3                   	ret    
 369:	b8 15 00 00 00       	mov    $0x15,%eax
 36e:	cd 40                	int    $0x40
 370:	c3                   	ret    
 371:	b8 06 00 00 00       	mov    $0x6,%eax
 376:	cd 40                	int    $0x40
 378:	c3                   	ret    
 379:	b8 07 00 00 00       	mov    $0x7,%eax
 37e:	cd 40                	int    $0x40
 380:	c3                   	ret    
 381:	b8 0f 00 00 00       	mov    $0xf,%eax
 386:	cd 40                	int    $0x40
 388:	c3                   	ret    
 389:	b8 11 00 00 00       	mov    $0x11,%eax
 38e:	cd 40                	int    $0x40
 390:	c3                   	ret    
 391:	b8 12 00 00 00       	mov    $0x12,%eax
 396:	cd 40                	int    $0x40
 398:	c3                   	ret    
 399:	b8 08 00 00 00       	mov    $0x8,%eax
 39e:	cd 40                	int    $0x40
 3a0:	c3                   	ret    
 3a1:	b8 13 00 00 00       	mov    $0x13,%eax
 3a6:	cd 40                	int    $0x40
 3a8:	c3                   	ret    
 3a9:	b8 14 00 00 00       	mov    $0x14,%eax
 3ae:	cd 40                	int    $0x40
 3b0:	c3                   	ret    
 3b1:	b8 09 00 00 00       	mov    $0x9,%eax
 3b6:	cd 40                	int    $0x40
 3b8:	c3                   	ret    
 3b9:	b8 0a 00 00 00       	mov    $0xa,%eax
 3be:	cd 40                	int    $0x40
 3c0:	c3                   	ret    
 3c1:	b8 0b 00 00 00       	mov    $0xb,%eax
 3c6:	cd 40                	int    $0x40
 3c8:	c3                   	ret    
 3c9:	b8 0c 00 00 00       	mov    $0xc,%eax
 3ce:	cd 40                	int    $0x40
 3d0:	c3                   	ret    
 3d1:	b8 0d 00 00 00       	mov    $0xd,%eax
 3d6:	cd 40                	int    $0x40
 3d8:	c3                   	ret    
 3d9:	b8 0e 00 00 00       	mov    $0xe,%eax
 3de:	cd 40                	int    $0x40
 3e0:	c3                   	ret    
 3e1:	b8 16 00 00 00       	mov    $0x16,%eax
 3e6:	cd 40                	int    $0x40
 3e8:	c3                   	ret    
 3e9:	b8 17 00 00 00       	mov    $0x17,%eax
 3ee:	cd 40                	int    $0x40
 3f0:	c3                   	ret    
 3f1:	55                   	push   %ebp
 3f2:	89 e5                	mov    %esp,%ebp
 3f4:	83 ec 1c             	sub    $0x1c,%esp
 3f7:	88 55 f4             	mov    %dl,-0xc(%ebp)
 3fa:	6a 01                	push   $0x1
 3fc:	8d 55 f4             	lea    -0xc(%ebp),%edx
 3ff:	52                   	push   %edx
 400:	50                   	push   %eax
 401:	e8 5b ff ff ff       	call   0x361
 406:	83 c4 10             	add    $0x10,%esp
 409:	c9                   	leave  
 40a:	c3                   	ret    
 40b:	55                   	push   %ebp
 40c:	89 e5                	mov    %esp,%ebp
 40e:	57                   	push   %edi
 40f:	56                   	push   %esi
 410:	53                   	push   %ebx
 411:	83 ec 2c             	sub    $0x2c,%esp
 414:	89 45 d0             	mov    %eax,-0x30(%ebp)
 417:	89 d0                	mov    %edx,%eax
 419:	89 ce                	mov    %ecx,%esi
 41b:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 41f:	0f 95 c1             	setne  %cl
 422:	c1 ea 1f             	shr    $0x1f,%edx
 425:	84 d1                	test   %dl,%cl
 427:	74 44                	je     0x46d
 429:	f7 d8                	neg    %eax
 42b:	89 c1                	mov    %eax,%ecx
 42d:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 434:	bb 00 00 00 00       	mov    $0x0,%ebx
 439:	89 c8                	mov    %ecx,%eax
 43b:	ba 00 00 00 00       	mov    $0x0,%edx
 440:	f7 f6                	div    %esi
 442:	89 df                	mov    %ebx,%edi
 444:	83 c3 01             	add    $0x1,%ebx
 447:	0f b6 92 e4 07 00 00 	movzbl 0x7e4(%edx),%edx
 44e:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 452:	89 ca                	mov    %ecx,%edx
 454:	89 c1                	mov    %eax,%ecx
 456:	39 d6                	cmp    %edx,%esi
 458:	76 df                	jbe    0x439
 45a:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 45e:	74 31                	je     0x491
 460:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 465:	8d 5f 02             	lea    0x2(%edi),%ebx
 468:	8b 75 d0             	mov    -0x30(%ebp),%esi
 46b:	eb 17                	jmp    0x484
 46d:	89 c1                	mov    %eax,%ecx
 46f:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 476:	eb bc                	jmp    0x434
 478:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 47d:	89 f0                	mov    %esi,%eax
 47f:	e8 6d ff ff ff       	call   0x3f1
 484:	83 eb 01             	sub    $0x1,%ebx
 487:	79 ef                	jns    0x478
 489:	83 c4 2c             	add    $0x2c,%esp
 48c:	5b                   	pop    %ebx
 48d:	5e                   	pop    %esi
 48e:	5f                   	pop    %edi
 48f:	5d                   	pop    %ebp
 490:	c3                   	ret    
 491:	8b 75 d0             	mov    -0x30(%ebp),%esi
 494:	eb ee                	jmp    0x484
 496:	55                   	push   %ebp
 497:	89 e5                	mov    %esp,%ebp
 499:	57                   	push   %edi
 49a:	56                   	push   %esi
 49b:	53                   	push   %ebx
 49c:	83 ec 1c             	sub    $0x1c,%esp
 49f:	8d 45 10             	lea    0x10(%ebp),%eax
 4a2:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 4a5:	be 00 00 00 00       	mov    $0x0,%esi
 4aa:	bb 00 00 00 00       	mov    $0x0,%ebx
 4af:	eb 14                	jmp    0x4c5
 4b1:	89 fa                	mov    %edi,%edx
 4b3:	8b 45 08             	mov    0x8(%ebp),%eax
 4b6:	e8 36 ff ff ff       	call   0x3f1
 4bb:	eb 05                	jmp    0x4c2
 4bd:	83 fe 25             	cmp    $0x25,%esi
 4c0:	74 25                	je     0x4e7
 4c2:	83 c3 01             	add    $0x1,%ebx
 4c5:	8b 45 0c             	mov    0xc(%ebp),%eax
 4c8:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 4cc:	84 c0                	test   %al,%al
 4ce:	0f 84 20 01 00 00    	je     0x5f4
 4d4:	0f be f8             	movsbl %al,%edi
 4d7:	0f b6 c0             	movzbl %al,%eax
 4da:	85 f6                	test   %esi,%esi
 4dc:	75 df                	jne    0x4bd
 4de:	83 f8 25             	cmp    $0x25,%eax
 4e1:	75 ce                	jne    0x4b1
 4e3:	89 c6                	mov    %eax,%esi
 4e5:	eb db                	jmp    0x4c2
 4e7:	83 f8 25             	cmp    $0x25,%eax
 4ea:	0f 84 cf 00 00 00    	je     0x5bf
 4f0:	0f 8c dd 00 00 00    	jl     0x5d3
 4f6:	83 f8 78             	cmp    $0x78,%eax
 4f9:	0f 8f d4 00 00 00    	jg     0x5d3
 4ff:	83 f8 63             	cmp    $0x63,%eax
 502:	0f 8c cb 00 00 00    	jl     0x5d3
 508:	83 e8 63             	sub    $0x63,%eax
 50b:	83 f8 15             	cmp    $0x15,%eax
 50e:	0f 87 bf 00 00 00    	ja     0x5d3
 514:	ff 24 85 8c 07 00 00 	jmp    *0x78c(,%eax,4)
 51b:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 51e:	8b 17                	mov    (%edi),%edx
 520:	83 ec 0c             	sub    $0xc,%esp
 523:	6a 01                	push   $0x1
 525:	b9 0a 00 00 00       	mov    $0xa,%ecx
 52a:	8b 45 08             	mov    0x8(%ebp),%eax
 52d:	e8 d9 fe ff ff       	call   0x40b
 532:	83 c7 04             	add    $0x4,%edi
 535:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 538:	83 c4 10             	add    $0x10,%esp
 53b:	be 00 00 00 00       	mov    $0x0,%esi
 540:	eb 80                	jmp    0x4c2
 542:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 545:	8b 17                	mov    (%edi),%edx
 547:	83 ec 0c             	sub    $0xc,%esp
 54a:	6a 00                	push   $0x0
 54c:	b9 10 00 00 00       	mov    $0x10,%ecx
 551:	8b 45 08             	mov    0x8(%ebp),%eax
 554:	e8 b2 fe ff ff       	call   0x40b
 559:	83 c7 04             	add    $0x4,%edi
 55c:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 55f:	83 c4 10             	add    $0x10,%esp
 562:	be 00 00 00 00       	mov    $0x0,%esi
 567:	e9 56 ff ff ff       	jmp    0x4c2
 56c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 56f:	8b 30                	mov    (%eax),%esi
 571:	83 c0 04             	add    $0x4,%eax
 574:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 577:	85 f6                	test   %esi,%esi
 579:	75 15                	jne    0x590
 57b:	be 83 07 00 00       	mov    $0x783,%esi
 580:	eb 0e                	jmp    0x590
 582:	0f be d2             	movsbl %dl,%edx
 585:	8b 45 08             	mov    0x8(%ebp),%eax
 588:	e8 64 fe ff ff       	call   0x3f1
 58d:	83 c6 01             	add    $0x1,%esi
 590:	0f b6 16             	movzbl (%esi),%edx
 593:	84 d2                	test   %dl,%dl
 595:	75 eb                	jne    0x582
 597:	be 00 00 00 00       	mov    $0x0,%esi
 59c:	e9 21 ff ff ff       	jmp    0x4c2
 5a1:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 5a4:	0f be 17             	movsbl (%edi),%edx
 5a7:	8b 45 08             	mov    0x8(%ebp),%eax
 5aa:	e8 42 fe ff ff       	call   0x3f1
 5af:	83 c7 04             	add    $0x4,%edi
 5b2:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 5b5:	be 00 00 00 00       	mov    $0x0,%esi
 5ba:	e9 03 ff ff ff       	jmp    0x4c2
 5bf:	89 fa                	mov    %edi,%edx
 5c1:	8b 45 08             	mov    0x8(%ebp),%eax
 5c4:	e8 28 fe ff ff       	call   0x3f1
 5c9:	be 00 00 00 00       	mov    $0x0,%esi
 5ce:	e9 ef fe ff ff       	jmp    0x4c2
 5d3:	ba 25 00 00 00       	mov    $0x25,%edx
 5d8:	8b 45 08             	mov    0x8(%ebp),%eax
 5db:	e8 11 fe ff ff       	call   0x3f1
 5e0:	89 fa                	mov    %edi,%edx
 5e2:	8b 45 08             	mov    0x8(%ebp),%eax
 5e5:	e8 07 fe ff ff       	call   0x3f1
 5ea:	be 00 00 00 00       	mov    $0x0,%esi
 5ef:	e9 ce fe ff ff       	jmp    0x4c2
 5f4:	8d 65 f4             	lea    -0xc(%ebp),%esp
 5f7:	5b                   	pop    %ebx
 5f8:	5e                   	pop    %esi
 5f9:	5f                   	pop    %edi
 5fa:	5d                   	pop    %ebp
 5fb:	c3                   	ret    
 5fc:	f3 0f 1e fb          	endbr32 
 600:	55                   	push   %ebp
 601:	89 e5                	mov    %esp,%ebp
 603:	57                   	push   %edi
 604:	56                   	push   %esi
 605:	53                   	push   %ebx
 606:	8b 5d 08             	mov    0x8(%ebp),%ebx
 609:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 60c:	a1 c0 0a 00 00       	mov    0xac0,%eax
 611:	eb 02                	jmp    0x615
 613:	89 d0                	mov    %edx,%eax
 615:	39 c8                	cmp    %ecx,%eax
 617:	73 04                	jae    0x61d
 619:	39 08                	cmp    %ecx,(%eax)
 61b:	77 12                	ja     0x62f
 61d:	8b 10                	mov    (%eax),%edx
 61f:	39 c2                	cmp    %eax,%edx
 621:	77 f0                	ja     0x613
 623:	39 c8                	cmp    %ecx,%eax
 625:	72 08                	jb     0x62f
 627:	39 ca                	cmp    %ecx,%edx
 629:	77 04                	ja     0x62f
 62b:	89 d0                	mov    %edx,%eax
 62d:	eb e6                	jmp    0x615
 62f:	8b 73 fc             	mov    -0x4(%ebx),%esi
 632:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 635:	8b 10                	mov    (%eax),%edx
 637:	39 d7                	cmp    %edx,%edi
 639:	74 19                	je     0x654
 63b:	89 53 f8             	mov    %edx,-0x8(%ebx)
 63e:	8b 50 04             	mov    0x4(%eax),%edx
 641:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 644:	39 ce                	cmp    %ecx,%esi
 646:	74 1b                	je     0x663
 648:	89 08                	mov    %ecx,(%eax)
 64a:	a3 c0 0a 00 00       	mov    %eax,0xac0
 64f:	5b                   	pop    %ebx
 650:	5e                   	pop    %esi
 651:	5f                   	pop    %edi
 652:	5d                   	pop    %ebp
 653:	c3                   	ret    
 654:	03 72 04             	add    0x4(%edx),%esi
 657:	89 73 fc             	mov    %esi,-0x4(%ebx)
 65a:	8b 10                	mov    (%eax),%edx
 65c:	8b 12                	mov    (%edx),%edx
 65e:	89 53 f8             	mov    %edx,-0x8(%ebx)
 661:	eb db                	jmp    0x63e
 663:	03 53 fc             	add    -0x4(%ebx),%edx
 666:	89 50 04             	mov    %edx,0x4(%eax)
 669:	8b 53 f8             	mov    -0x8(%ebx),%edx
 66c:	89 10                	mov    %edx,(%eax)
 66e:	eb da                	jmp    0x64a
 670:	55                   	push   %ebp
 671:	89 e5                	mov    %esp,%ebp
 673:	53                   	push   %ebx
 674:	83 ec 04             	sub    $0x4,%esp
 677:	89 c3                	mov    %eax,%ebx
 679:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 67e:	77 05                	ja     0x685
 680:	bb 00 10 00 00       	mov    $0x1000,%ebx
 685:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 68c:	83 ec 0c             	sub    $0xc,%esp
 68f:	50                   	push   %eax
 690:	e8 34 fd ff ff       	call   0x3c9
 695:	83 c4 10             	add    $0x10,%esp
 698:	83 f8 ff             	cmp    $0xffffffff,%eax
 69b:	74 1c                	je     0x6b9
 69d:	89 58 04             	mov    %ebx,0x4(%eax)
 6a0:	83 c0 08             	add    $0x8,%eax
 6a3:	83 ec 0c             	sub    $0xc,%esp
 6a6:	50                   	push   %eax
 6a7:	e8 50 ff ff ff       	call   0x5fc
 6ac:	a1 c0 0a 00 00       	mov    0xac0,%eax
 6b1:	83 c4 10             	add    $0x10,%esp
 6b4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 6b7:	c9                   	leave  
 6b8:	c3                   	ret    
 6b9:	b8 00 00 00 00       	mov    $0x0,%eax
 6be:	eb f4                	jmp    0x6b4
 6c0:	f3 0f 1e fb          	endbr32 
 6c4:	55                   	push   %ebp
 6c5:	89 e5                	mov    %esp,%ebp
 6c7:	53                   	push   %ebx
 6c8:	83 ec 04             	sub    $0x4,%esp
 6cb:	8b 45 08             	mov    0x8(%ebp),%eax
 6ce:	8d 58 07             	lea    0x7(%eax),%ebx
 6d1:	c1 eb 03             	shr    $0x3,%ebx
 6d4:	83 c3 01             	add    $0x1,%ebx
 6d7:	8b 0d c0 0a 00 00    	mov    0xac0,%ecx
 6dd:	85 c9                	test   %ecx,%ecx
 6df:	74 04                	je     0x6e5
 6e1:	8b 01                	mov    (%ecx),%eax
 6e3:	eb 4b                	jmp    0x730
 6e5:	c7 05 c0 0a 00 00 c4 	movl   $0xac4,0xac0
 6ec:	0a 00 00 
 6ef:	c7 05 c4 0a 00 00 c4 	movl   $0xac4,0xac4
 6f6:	0a 00 00 
 6f9:	c7 05 c8 0a 00 00 00 	movl   $0x0,0xac8
 700:	00 00 00 
 703:	b9 c4 0a 00 00       	mov    $0xac4,%ecx
 708:	eb d7                	jmp    0x6e1
 70a:	74 1a                	je     0x726
 70c:	29 da                	sub    %ebx,%edx
 70e:	89 50 04             	mov    %edx,0x4(%eax)
 711:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 714:	89 58 04             	mov    %ebx,0x4(%eax)
 717:	89 0d c0 0a 00 00    	mov    %ecx,0xac0
 71d:	83 c0 08             	add    $0x8,%eax
 720:	83 c4 04             	add    $0x4,%esp
 723:	5b                   	pop    %ebx
 724:	5d                   	pop    %ebp
 725:	c3                   	ret    
 726:	8b 10                	mov    (%eax),%edx
 728:	89 11                	mov    %edx,(%ecx)
 72a:	eb eb                	jmp    0x717
 72c:	89 c1                	mov    %eax,%ecx
 72e:	8b 00                	mov    (%eax),%eax
 730:	8b 50 04             	mov    0x4(%eax),%edx
 733:	39 da                	cmp    %ebx,%edx
 735:	73 d3                	jae    0x70a
 737:	39 05 c0 0a 00 00    	cmp    %eax,0xac0
 73d:	75 ed                	jne    0x72c
 73f:	89 d8                	mov    %ebx,%eax
 741:	e8 2a ff ff ff       	call   0x670
 746:	85 c0                	test   %eax,%eax
 748:	75 e2                	jne    0x72c
 74a:	eb d4                	jmp    0x720
