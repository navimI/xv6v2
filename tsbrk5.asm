
_tsbrk5:     file format elf32-i386


Disassembly of section .text:

00000000 <.text>:
   0:	f3 0f 1e fb          	endbr32 
   4:	55                   	push   %ebp
   5:	89 e5                	mov    %esp,%ebp
   7:	53                   	push   %ebx
   8:	83 ec 10             	sub    $0x10,%esp
   b:	6a 00                	push   $0x0
   d:	e8 f6 02 00 00       	call   0x308
  12:	89 c3                	mov    %eax,%ebx
  14:	83 c4 08             	add    $0x8,%esp
  17:	68 8c 06 00 00       	push   $0x68c
  1c:	6a 01                	push   $0x1
  1e:	e8 b2 03 00 00       	call   0x3d5
  23:	c6 43 01 01          	movb   $0x1,0x1(%ebx)
  27:	83 c4 10             	add    $0x10,%esp
  2a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  2d:	c9                   	leave  
  2e:	c3                   	ret    
  2f:	f3 0f 1e fb          	endbr32 
  33:	55                   	push   %ebp
  34:	89 e5                	mov    %esp,%ebp
  36:	83 ec 10             	sub    $0x10,%esp
  39:	68 a4 06 00 00       	push   $0x6a4
  3e:	6a 01                	push   $0x1
  40:	e8 90 03 00 00       	call   0x3d5
  45:	83 c4 0c             	add    $0xc,%esp
  48:	68 77 1a 00 00       	push   $0x1a77
  4d:	68 a0 06 00 00       	push   $0x6a0
  52:	6a 01                	push   $0x1
  54:	e8 7c 03 00 00       	call   0x3d5
  59:	c6 05 77 1a 00 00 01 	movb   $0x1,0x1a77
  60:	83 c4 10             	add    $0x10,%esp
  63:	c9                   	leave  
  64:	c3                   	ret    
  65:	f3 0f 1e fb          	endbr32 
  69:	55                   	push   %ebp
  6a:	89 e5                	mov    %esp,%ebp
  6c:	83 ec 10             	sub    $0x10,%esp
  6f:	68 a4 06 00 00       	push   $0x6a4
  74:	6a 01                	push   $0x1
  76:	e8 5a 03 00 00       	call   0x3d5
  7b:	c6 05 02 00 00 80 01 	movb   $0x1,0x80000002
  82:	83 c4 10             	add    $0x10,%esp
  85:	c9                   	leave  
  86:	c3                   	ret    
  87:	f3 0f 1e fb          	endbr32 
  8b:	8d 4c 24 04          	lea    0x4(%esp),%ecx
  8f:	83 e4 f0             	and    $0xfffffff0,%esp
  92:	ff 71 fc             	push   -0x4(%ecx)
  95:	55                   	push   %ebp
  96:	89 e5                	mov    %esp,%ebp
  98:	51                   	push   %ecx
  99:	83 ec 0c             	sub    $0xc,%esp
  9c:	68 dc 06 00 00       	push   $0x6dc
  a1:	6a 01                	push   $0x1
  a3:	e8 2d 03 00 00       	call   0x3d5
  a8:	e8 53 ff ff ff       	call   0x0
  ad:	e8 7d ff ff ff       	call   0x2f
  b2:	e8 ae ff ff ff       	call   0x65
  b7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  be:	e8 bd 01 00 00       	call   0x280
  c3:	f3 0f 1e fb          	endbr32 
  c7:	55                   	push   %ebp
  c8:	89 e5                	mov    %esp,%ebp
  ca:	56                   	push   %esi
  cb:	53                   	push   %ebx
  cc:	8b 75 08             	mov    0x8(%ebp),%esi
  cf:	8b 55 0c             	mov    0xc(%ebp),%edx
  d2:	89 f0                	mov    %esi,%eax
  d4:	89 d1                	mov    %edx,%ecx
  d6:	83 c2 01             	add    $0x1,%edx
  d9:	89 c3                	mov    %eax,%ebx
  db:	83 c0 01             	add    $0x1,%eax
  de:	0f b6 09             	movzbl (%ecx),%ecx
  e1:	88 0b                	mov    %cl,(%ebx)
  e3:	84 c9                	test   %cl,%cl
  e5:	75 ed                	jne    0xd4
  e7:	89 f0                	mov    %esi,%eax
  e9:	5b                   	pop    %ebx
  ea:	5e                   	pop    %esi
  eb:	5d                   	pop    %ebp
  ec:	c3                   	ret    
  ed:	f3 0f 1e fb          	endbr32 
  f1:	55                   	push   %ebp
  f2:	89 e5                	mov    %esp,%ebp
  f4:	8b 4d 08             	mov    0x8(%ebp),%ecx
  f7:	8b 55 0c             	mov    0xc(%ebp),%edx
  fa:	0f b6 01             	movzbl (%ecx),%eax
  fd:	84 c0                	test   %al,%al
  ff:	74 0c                	je     0x10d
 101:	3a 02                	cmp    (%edx),%al
 103:	75 08                	jne    0x10d
 105:	83 c1 01             	add    $0x1,%ecx
 108:	83 c2 01             	add    $0x1,%edx
 10b:	eb ed                	jmp    0xfa
 10d:	0f b6 c0             	movzbl %al,%eax
 110:	0f b6 12             	movzbl (%edx),%edx
 113:	29 d0                	sub    %edx,%eax
 115:	5d                   	pop    %ebp
 116:	c3                   	ret    
 117:	f3 0f 1e fb          	endbr32 
 11b:	55                   	push   %ebp
 11c:	89 e5                	mov    %esp,%ebp
 11e:	8b 4d 08             	mov    0x8(%ebp),%ecx
 121:	b8 00 00 00 00       	mov    $0x0,%eax
 126:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
 12a:	74 05                	je     0x131
 12c:	83 c0 01             	add    $0x1,%eax
 12f:	eb f5                	jmp    0x126
 131:	5d                   	pop    %ebp
 132:	c3                   	ret    
 133:	f3 0f 1e fb          	endbr32 
 137:	55                   	push   %ebp
 138:	89 e5                	mov    %esp,%ebp
 13a:	57                   	push   %edi
 13b:	8b 55 08             	mov    0x8(%ebp),%edx
 13e:	89 d7                	mov    %edx,%edi
 140:	8b 4d 10             	mov    0x10(%ebp),%ecx
 143:	8b 45 0c             	mov    0xc(%ebp),%eax
 146:	fc                   	cld    
 147:	f3 aa                	rep stos %al,%es:(%edi)
 149:	89 d0                	mov    %edx,%eax
 14b:	5f                   	pop    %edi
 14c:	5d                   	pop    %ebp
 14d:	c3                   	ret    
 14e:	f3 0f 1e fb          	endbr32 
 152:	55                   	push   %ebp
 153:	89 e5                	mov    %esp,%ebp
 155:	8b 45 08             	mov    0x8(%ebp),%eax
 158:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
 15c:	0f b6 10             	movzbl (%eax),%edx
 15f:	84 d2                	test   %dl,%dl
 161:	74 09                	je     0x16c
 163:	38 ca                	cmp    %cl,%dl
 165:	74 0a                	je     0x171
 167:	83 c0 01             	add    $0x1,%eax
 16a:	eb f0                	jmp    0x15c
 16c:	b8 00 00 00 00       	mov    $0x0,%eax
 171:	5d                   	pop    %ebp
 172:	c3                   	ret    
 173:	f3 0f 1e fb          	endbr32 
 177:	55                   	push   %ebp
 178:	89 e5                	mov    %esp,%ebp
 17a:	57                   	push   %edi
 17b:	56                   	push   %esi
 17c:	53                   	push   %ebx
 17d:	83 ec 1c             	sub    $0x1c,%esp
 180:	8b 7d 08             	mov    0x8(%ebp),%edi
 183:	bb 00 00 00 00       	mov    $0x0,%ebx
 188:	89 de                	mov    %ebx,%esi
 18a:	83 c3 01             	add    $0x1,%ebx
 18d:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 190:	7d 2e                	jge    0x1c0
 192:	83 ec 04             	sub    $0x4,%esp
 195:	6a 01                	push   $0x1
 197:	8d 45 e7             	lea    -0x19(%ebp),%eax
 19a:	50                   	push   %eax
 19b:	6a 00                	push   $0x0
 19d:	e8 f6 00 00 00       	call   0x298
 1a2:	83 c4 10             	add    $0x10,%esp
 1a5:	85 c0                	test   %eax,%eax
 1a7:	7e 17                	jle    0x1c0
 1a9:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 1ad:	88 04 37             	mov    %al,(%edi,%esi,1)
 1b0:	3c 0a                	cmp    $0xa,%al
 1b2:	0f 94 c2             	sete   %dl
 1b5:	3c 0d                	cmp    $0xd,%al
 1b7:	0f 94 c0             	sete   %al
 1ba:	08 c2                	or     %al,%dl
 1bc:	74 ca                	je     0x188
 1be:	89 de                	mov    %ebx,%esi
 1c0:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 1c4:	89 f8                	mov    %edi,%eax
 1c6:	8d 65 f4             	lea    -0xc(%ebp),%esp
 1c9:	5b                   	pop    %ebx
 1ca:	5e                   	pop    %esi
 1cb:	5f                   	pop    %edi
 1cc:	5d                   	pop    %ebp
 1cd:	c3                   	ret    
 1ce:	f3 0f 1e fb          	endbr32 
 1d2:	55                   	push   %ebp
 1d3:	89 e5                	mov    %esp,%ebp
 1d5:	56                   	push   %esi
 1d6:	53                   	push   %ebx
 1d7:	83 ec 08             	sub    $0x8,%esp
 1da:	6a 00                	push   $0x0
 1dc:	ff 75 08             	push   0x8(%ebp)
 1df:	e8 dc 00 00 00       	call   0x2c0
 1e4:	83 c4 10             	add    $0x10,%esp
 1e7:	85 c0                	test   %eax,%eax
 1e9:	78 24                	js     0x20f
 1eb:	89 c3                	mov    %eax,%ebx
 1ed:	83 ec 08             	sub    $0x8,%esp
 1f0:	ff 75 0c             	push   0xc(%ebp)
 1f3:	50                   	push   %eax
 1f4:	e8 df 00 00 00       	call   0x2d8
 1f9:	89 c6                	mov    %eax,%esi
 1fb:	89 1c 24             	mov    %ebx,(%esp)
 1fe:	e8 a5 00 00 00       	call   0x2a8
 203:	83 c4 10             	add    $0x10,%esp
 206:	89 f0                	mov    %esi,%eax
 208:	8d 65 f8             	lea    -0x8(%ebp),%esp
 20b:	5b                   	pop    %ebx
 20c:	5e                   	pop    %esi
 20d:	5d                   	pop    %ebp
 20e:	c3                   	ret    
 20f:	be ff ff ff ff       	mov    $0xffffffff,%esi
 214:	eb f0                	jmp    0x206
 216:	f3 0f 1e fb          	endbr32 
 21a:	55                   	push   %ebp
 21b:	89 e5                	mov    %esp,%ebp
 21d:	53                   	push   %ebx
 21e:	8b 4d 08             	mov    0x8(%ebp),%ecx
 221:	ba 00 00 00 00       	mov    $0x0,%edx
 226:	0f b6 01             	movzbl (%ecx),%eax
 229:	8d 58 d0             	lea    -0x30(%eax),%ebx
 22c:	80 fb 09             	cmp    $0x9,%bl
 22f:	77 12                	ja     0x243
 231:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 234:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 237:	83 c1 01             	add    $0x1,%ecx
 23a:	0f be c0             	movsbl %al,%eax
 23d:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 241:	eb e3                	jmp    0x226
 243:	89 d0                	mov    %edx,%eax
 245:	5b                   	pop    %ebx
 246:	5d                   	pop    %ebp
 247:	c3                   	ret    
 248:	f3 0f 1e fb          	endbr32 
 24c:	55                   	push   %ebp
 24d:	89 e5                	mov    %esp,%ebp
 24f:	56                   	push   %esi
 250:	53                   	push   %ebx
 251:	8b 75 08             	mov    0x8(%ebp),%esi
 254:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 257:	8b 45 10             	mov    0x10(%ebp),%eax
 25a:	89 f2                	mov    %esi,%edx
 25c:	8d 58 ff             	lea    -0x1(%eax),%ebx
 25f:	85 c0                	test   %eax,%eax
 261:	7e 0f                	jle    0x272
 263:	0f b6 01             	movzbl (%ecx),%eax
 266:	88 02                	mov    %al,(%edx)
 268:	8d 49 01             	lea    0x1(%ecx),%ecx
 26b:	8d 52 01             	lea    0x1(%edx),%edx
 26e:	89 d8                	mov    %ebx,%eax
 270:	eb ea                	jmp    0x25c
 272:	89 f0                	mov    %esi,%eax
 274:	5b                   	pop    %ebx
 275:	5e                   	pop    %esi
 276:	5d                   	pop    %ebp
 277:	c3                   	ret    
 278:	b8 01 00 00 00       	mov    $0x1,%eax
 27d:	cd 40                	int    $0x40
 27f:	c3                   	ret    
 280:	b8 02 00 00 00       	mov    $0x2,%eax
 285:	cd 40                	int    $0x40
 287:	c3                   	ret    
 288:	b8 03 00 00 00       	mov    $0x3,%eax
 28d:	cd 40                	int    $0x40
 28f:	c3                   	ret    
 290:	b8 04 00 00 00       	mov    $0x4,%eax
 295:	cd 40                	int    $0x40
 297:	c3                   	ret    
 298:	b8 05 00 00 00       	mov    $0x5,%eax
 29d:	cd 40                	int    $0x40
 29f:	c3                   	ret    
 2a0:	b8 10 00 00 00       	mov    $0x10,%eax
 2a5:	cd 40                	int    $0x40
 2a7:	c3                   	ret    
 2a8:	b8 15 00 00 00       	mov    $0x15,%eax
 2ad:	cd 40                	int    $0x40
 2af:	c3                   	ret    
 2b0:	b8 06 00 00 00       	mov    $0x6,%eax
 2b5:	cd 40                	int    $0x40
 2b7:	c3                   	ret    
 2b8:	b8 07 00 00 00       	mov    $0x7,%eax
 2bd:	cd 40                	int    $0x40
 2bf:	c3                   	ret    
 2c0:	b8 0f 00 00 00       	mov    $0xf,%eax
 2c5:	cd 40                	int    $0x40
 2c7:	c3                   	ret    
 2c8:	b8 11 00 00 00       	mov    $0x11,%eax
 2cd:	cd 40                	int    $0x40
 2cf:	c3                   	ret    
 2d0:	b8 12 00 00 00       	mov    $0x12,%eax
 2d5:	cd 40                	int    $0x40
 2d7:	c3                   	ret    
 2d8:	b8 08 00 00 00       	mov    $0x8,%eax
 2dd:	cd 40                	int    $0x40
 2df:	c3                   	ret    
 2e0:	b8 13 00 00 00       	mov    $0x13,%eax
 2e5:	cd 40                	int    $0x40
 2e7:	c3                   	ret    
 2e8:	b8 14 00 00 00       	mov    $0x14,%eax
 2ed:	cd 40                	int    $0x40
 2ef:	c3                   	ret    
 2f0:	b8 09 00 00 00       	mov    $0x9,%eax
 2f5:	cd 40                	int    $0x40
 2f7:	c3                   	ret    
 2f8:	b8 0a 00 00 00       	mov    $0xa,%eax
 2fd:	cd 40                	int    $0x40
 2ff:	c3                   	ret    
 300:	b8 0b 00 00 00       	mov    $0xb,%eax
 305:	cd 40                	int    $0x40
 307:	c3                   	ret    
 308:	b8 0c 00 00 00       	mov    $0xc,%eax
 30d:	cd 40                	int    $0x40
 30f:	c3                   	ret    
 310:	b8 0d 00 00 00       	mov    $0xd,%eax
 315:	cd 40                	int    $0x40
 317:	c3                   	ret    
 318:	b8 0e 00 00 00       	mov    $0xe,%eax
 31d:	cd 40                	int    $0x40
 31f:	c3                   	ret    
 320:	b8 16 00 00 00       	mov    $0x16,%eax
 325:	cd 40                	int    $0x40
 327:	c3                   	ret    
 328:	b8 17 00 00 00       	mov    $0x17,%eax
 32d:	cd 40                	int    $0x40
 32f:	c3                   	ret    
 330:	55                   	push   %ebp
 331:	89 e5                	mov    %esp,%ebp
 333:	83 ec 1c             	sub    $0x1c,%esp
 336:	88 55 f4             	mov    %dl,-0xc(%ebp)
 339:	6a 01                	push   $0x1
 33b:	8d 55 f4             	lea    -0xc(%ebp),%edx
 33e:	52                   	push   %edx
 33f:	50                   	push   %eax
 340:	e8 5b ff ff ff       	call   0x2a0
 345:	83 c4 10             	add    $0x10,%esp
 348:	c9                   	leave  
 349:	c3                   	ret    
 34a:	55                   	push   %ebp
 34b:	89 e5                	mov    %esp,%ebp
 34d:	57                   	push   %edi
 34e:	56                   	push   %esi
 34f:	53                   	push   %ebx
 350:	83 ec 2c             	sub    $0x2c,%esp
 353:	89 45 d0             	mov    %eax,-0x30(%ebp)
 356:	89 d0                	mov    %edx,%eax
 358:	89 ce                	mov    %ecx,%esi
 35a:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 35e:	0f 95 c1             	setne  %cl
 361:	c1 ea 1f             	shr    $0x1f,%edx
 364:	84 d1                	test   %dl,%cl
 366:	74 44                	je     0x3ac
 368:	f7 d8                	neg    %eax
 36a:	89 c1                	mov    %eax,%ecx
 36c:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 373:	bb 00 00 00 00       	mov    $0x0,%ebx
 378:	89 c8                	mov    %ecx,%eax
 37a:	ba 00 00 00 00       	mov    $0x0,%edx
 37f:	f7 f6                	div    %esi
 381:	89 df                	mov    %ebx,%edi
 383:	83 c3 01             	add    $0x1,%ebx
 386:	0f b6 92 74 07 00 00 	movzbl 0x774(%edx),%edx
 38d:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 391:	89 ca                	mov    %ecx,%edx
 393:	89 c1                	mov    %eax,%ecx
 395:	39 d6                	cmp    %edx,%esi
 397:	76 df                	jbe    0x378
 399:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 39d:	74 31                	je     0x3d0
 39f:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 3a4:	8d 5f 02             	lea    0x2(%edi),%ebx
 3a7:	8b 75 d0             	mov    -0x30(%ebp),%esi
 3aa:	eb 17                	jmp    0x3c3
 3ac:	89 c1                	mov    %eax,%ecx
 3ae:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 3b5:	eb bc                	jmp    0x373
 3b7:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 3bc:	89 f0                	mov    %esi,%eax
 3be:	e8 6d ff ff ff       	call   0x330
 3c3:	83 eb 01             	sub    $0x1,%ebx
 3c6:	79 ef                	jns    0x3b7
 3c8:	83 c4 2c             	add    $0x2c,%esp
 3cb:	5b                   	pop    %ebx
 3cc:	5e                   	pop    %esi
 3cd:	5f                   	pop    %edi
 3ce:	5d                   	pop    %ebp
 3cf:	c3                   	ret    
 3d0:	8b 75 d0             	mov    -0x30(%ebp),%esi
 3d3:	eb ee                	jmp    0x3c3
 3d5:	55                   	push   %ebp
 3d6:	89 e5                	mov    %esp,%ebp
 3d8:	57                   	push   %edi
 3d9:	56                   	push   %esi
 3da:	53                   	push   %ebx
 3db:	83 ec 1c             	sub    $0x1c,%esp
 3de:	8d 45 10             	lea    0x10(%ebp),%eax
 3e1:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 3e4:	be 00 00 00 00       	mov    $0x0,%esi
 3e9:	bb 00 00 00 00       	mov    $0x0,%ebx
 3ee:	eb 14                	jmp    0x404
 3f0:	89 fa                	mov    %edi,%edx
 3f2:	8b 45 08             	mov    0x8(%ebp),%eax
 3f5:	e8 36 ff ff ff       	call   0x330
 3fa:	eb 05                	jmp    0x401
 3fc:	83 fe 25             	cmp    $0x25,%esi
 3ff:	74 25                	je     0x426
 401:	83 c3 01             	add    $0x1,%ebx
 404:	8b 45 0c             	mov    0xc(%ebp),%eax
 407:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 40b:	84 c0                	test   %al,%al
 40d:	0f 84 20 01 00 00    	je     0x533
 413:	0f be f8             	movsbl %al,%edi
 416:	0f b6 c0             	movzbl %al,%eax
 419:	85 f6                	test   %esi,%esi
 41b:	75 df                	jne    0x3fc
 41d:	83 f8 25             	cmp    $0x25,%eax
 420:	75 ce                	jne    0x3f0
 422:	89 c6                	mov    %eax,%esi
 424:	eb db                	jmp    0x401
 426:	83 f8 25             	cmp    $0x25,%eax
 429:	0f 84 cf 00 00 00    	je     0x4fe
 42f:	0f 8c dd 00 00 00    	jl     0x512
 435:	83 f8 78             	cmp    $0x78,%eax
 438:	0f 8f d4 00 00 00    	jg     0x512
 43e:	83 f8 63             	cmp    $0x63,%eax
 441:	0f 8c cb 00 00 00    	jl     0x512
 447:	83 e8 63             	sub    $0x63,%eax
 44a:	83 f8 15             	cmp    $0x15,%eax
 44d:	0f 87 bf 00 00 00    	ja     0x512
 453:	ff 24 85 1c 07 00 00 	jmp    *0x71c(,%eax,4)
 45a:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 45d:	8b 17                	mov    (%edi),%edx
 45f:	83 ec 0c             	sub    $0xc,%esp
 462:	6a 01                	push   $0x1
 464:	b9 0a 00 00 00       	mov    $0xa,%ecx
 469:	8b 45 08             	mov    0x8(%ebp),%eax
 46c:	e8 d9 fe ff ff       	call   0x34a
 471:	83 c7 04             	add    $0x4,%edi
 474:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 477:	83 c4 10             	add    $0x10,%esp
 47a:	be 00 00 00 00       	mov    $0x0,%esi
 47f:	eb 80                	jmp    0x401
 481:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 484:	8b 17                	mov    (%edi),%edx
 486:	83 ec 0c             	sub    $0xc,%esp
 489:	6a 00                	push   $0x0
 48b:	b9 10 00 00 00       	mov    $0x10,%ecx
 490:	8b 45 08             	mov    0x8(%ebp),%eax
 493:	e8 b2 fe ff ff       	call   0x34a
 498:	83 c7 04             	add    $0x4,%edi
 49b:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 49e:	83 c4 10             	add    $0x10,%esp
 4a1:	be 00 00 00 00       	mov    $0x0,%esi
 4a6:	e9 56 ff ff ff       	jmp    0x401
 4ab:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 4ae:	8b 30                	mov    (%eax),%esi
 4b0:	83 c0 04             	add    $0x4,%eax
 4b3:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 4b6:	85 f6                	test   %esi,%esi
 4b8:	75 15                	jne    0x4cf
 4ba:	be 13 07 00 00       	mov    $0x713,%esi
 4bf:	eb 0e                	jmp    0x4cf
 4c1:	0f be d2             	movsbl %dl,%edx
 4c4:	8b 45 08             	mov    0x8(%ebp),%eax
 4c7:	e8 64 fe ff ff       	call   0x330
 4cc:	83 c6 01             	add    $0x1,%esi
 4cf:	0f b6 16             	movzbl (%esi),%edx
 4d2:	84 d2                	test   %dl,%dl
 4d4:	75 eb                	jne    0x4c1
 4d6:	be 00 00 00 00       	mov    $0x0,%esi
 4db:	e9 21 ff ff ff       	jmp    0x401
 4e0:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 4e3:	0f be 17             	movsbl (%edi),%edx
 4e6:	8b 45 08             	mov    0x8(%ebp),%eax
 4e9:	e8 42 fe ff ff       	call   0x330
 4ee:	83 c7 04             	add    $0x4,%edi
 4f1:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 4f4:	be 00 00 00 00       	mov    $0x0,%esi
 4f9:	e9 03 ff ff ff       	jmp    0x401
 4fe:	89 fa                	mov    %edi,%edx
 500:	8b 45 08             	mov    0x8(%ebp),%eax
 503:	e8 28 fe ff ff       	call   0x330
 508:	be 00 00 00 00       	mov    $0x0,%esi
 50d:	e9 ef fe ff ff       	jmp    0x401
 512:	ba 25 00 00 00       	mov    $0x25,%edx
 517:	8b 45 08             	mov    0x8(%ebp),%eax
 51a:	e8 11 fe ff ff       	call   0x330
 51f:	89 fa                	mov    %edi,%edx
 521:	8b 45 08             	mov    0x8(%ebp),%eax
 524:	e8 07 fe ff ff       	call   0x330
 529:	be 00 00 00 00       	mov    $0x0,%esi
 52e:	e9 ce fe ff ff       	jmp    0x401
 533:	8d 65 f4             	lea    -0xc(%ebp),%esp
 536:	5b                   	pop    %ebx
 537:	5e                   	pop    %esi
 538:	5f                   	pop    %edi
 539:	5d                   	pop    %ebp
 53a:	c3                   	ret    
 53b:	f3 0f 1e fb          	endbr32 
 53f:	55                   	push   %ebp
 540:	89 e5                	mov    %esp,%ebp
 542:	57                   	push   %edi
 543:	56                   	push   %esi
 544:	53                   	push   %ebx
 545:	8b 5d 08             	mov    0x8(%ebp),%ebx
 548:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 54b:	a1 7c 0a 00 00       	mov    0xa7c,%eax
 550:	eb 02                	jmp    0x554
 552:	89 d0                	mov    %edx,%eax
 554:	39 c8                	cmp    %ecx,%eax
 556:	73 04                	jae    0x55c
 558:	39 08                	cmp    %ecx,(%eax)
 55a:	77 12                	ja     0x56e
 55c:	8b 10                	mov    (%eax),%edx
 55e:	39 c2                	cmp    %eax,%edx
 560:	77 f0                	ja     0x552
 562:	39 c8                	cmp    %ecx,%eax
 564:	72 08                	jb     0x56e
 566:	39 ca                	cmp    %ecx,%edx
 568:	77 04                	ja     0x56e
 56a:	89 d0                	mov    %edx,%eax
 56c:	eb e6                	jmp    0x554
 56e:	8b 73 fc             	mov    -0x4(%ebx),%esi
 571:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 574:	8b 10                	mov    (%eax),%edx
 576:	39 d7                	cmp    %edx,%edi
 578:	74 19                	je     0x593
 57a:	89 53 f8             	mov    %edx,-0x8(%ebx)
 57d:	8b 50 04             	mov    0x4(%eax),%edx
 580:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 583:	39 ce                	cmp    %ecx,%esi
 585:	74 1b                	je     0x5a2
 587:	89 08                	mov    %ecx,(%eax)
 589:	a3 7c 0a 00 00       	mov    %eax,0xa7c
 58e:	5b                   	pop    %ebx
 58f:	5e                   	pop    %esi
 590:	5f                   	pop    %edi
 591:	5d                   	pop    %ebp
 592:	c3                   	ret    
 593:	03 72 04             	add    0x4(%edx),%esi
 596:	89 73 fc             	mov    %esi,-0x4(%ebx)
 599:	8b 10                	mov    (%eax),%edx
 59b:	8b 12                	mov    (%edx),%edx
 59d:	89 53 f8             	mov    %edx,-0x8(%ebx)
 5a0:	eb db                	jmp    0x57d
 5a2:	03 53 fc             	add    -0x4(%ebx),%edx
 5a5:	89 50 04             	mov    %edx,0x4(%eax)
 5a8:	8b 53 f8             	mov    -0x8(%ebx),%edx
 5ab:	89 10                	mov    %edx,(%eax)
 5ad:	eb da                	jmp    0x589
 5af:	55                   	push   %ebp
 5b0:	89 e5                	mov    %esp,%ebp
 5b2:	53                   	push   %ebx
 5b3:	83 ec 04             	sub    $0x4,%esp
 5b6:	89 c3                	mov    %eax,%ebx
 5b8:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 5bd:	77 05                	ja     0x5c4
 5bf:	bb 00 10 00 00       	mov    $0x1000,%ebx
 5c4:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 5cb:	83 ec 0c             	sub    $0xc,%esp
 5ce:	50                   	push   %eax
 5cf:	e8 34 fd ff ff       	call   0x308
 5d4:	83 c4 10             	add    $0x10,%esp
 5d7:	83 f8 ff             	cmp    $0xffffffff,%eax
 5da:	74 1c                	je     0x5f8
 5dc:	89 58 04             	mov    %ebx,0x4(%eax)
 5df:	83 c0 08             	add    $0x8,%eax
 5e2:	83 ec 0c             	sub    $0xc,%esp
 5e5:	50                   	push   %eax
 5e6:	e8 50 ff ff ff       	call   0x53b
 5eb:	a1 7c 0a 00 00       	mov    0xa7c,%eax
 5f0:	83 c4 10             	add    $0x10,%esp
 5f3:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 5f6:	c9                   	leave  
 5f7:	c3                   	ret    
 5f8:	b8 00 00 00 00       	mov    $0x0,%eax
 5fd:	eb f4                	jmp    0x5f3
 5ff:	f3 0f 1e fb          	endbr32 
 603:	55                   	push   %ebp
 604:	89 e5                	mov    %esp,%ebp
 606:	53                   	push   %ebx
 607:	83 ec 04             	sub    $0x4,%esp
 60a:	8b 45 08             	mov    0x8(%ebp),%eax
 60d:	8d 58 07             	lea    0x7(%eax),%ebx
 610:	c1 eb 03             	shr    $0x3,%ebx
 613:	83 c3 01             	add    $0x1,%ebx
 616:	8b 0d 7c 0a 00 00    	mov    0xa7c,%ecx
 61c:	85 c9                	test   %ecx,%ecx
 61e:	74 04                	je     0x624
 620:	8b 01                	mov    (%ecx),%eax
 622:	eb 4b                	jmp    0x66f
 624:	c7 05 7c 0a 00 00 80 	movl   $0xa80,0xa7c
 62b:	0a 00 00 
 62e:	c7 05 80 0a 00 00 80 	movl   $0xa80,0xa80
 635:	0a 00 00 
 638:	c7 05 84 0a 00 00 00 	movl   $0x0,0xa84
 63f:	00 00 00 
 642:	b9 80 0a 00 00       	mov    $0xa80,%ecx
 647:	eb d7                	jmp    0x620
 649:	74 1a                	je     0x665
 64b:	29 da                	sub    %ebx,%edx
 64d:	89 50 04             	mov    %edx,0x4(%eax)
 650:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 653:	89 58 04             	mov    %ebx,0x4(%eax)
 656:	89 0d 7c 0a 00 00    	mov    %ecx,0xa7c
 65c:	83 c0 08             	add    $0x8,%eax
 65f:	83 c4 04             	add    $0x4,%esp
 662:	5b                   	pop    %ebx
 663:	5d                   	pop    %ebp
 664:	c3                   	ret    
 665:	8b 10                	mov    (%eax),%edx
 667:	89 11                	mov    %edx,(%ecx)
 669:	eb eb                	jmp    0x656
 66b:	89 c1                	mov    %eax,%ecx
 66d:	8b 00                	mov    (%eax),%eax
 66f:	8b 50 04             	mov    0x4(%eax),%edx
 672:	39 da                	cmp    %ebx,%edx
 674:	73 d3                	jae    0x649
 676:	39 05 7c 0a 00 00    	cmp    %eax,0xa7c
 67c:	75 ed                	jne    0x66b
 67e:	89 d8                	mov    %ebx,%eax
 680:	e8 2a ff ff ff       	call   0x5af
 685:	85 c0                	test   %eax,%eax
 687:	75 e2                	jne    0x66b
 689:	eb d4                	jmp    0x65f
