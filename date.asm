
_date:     file format elf32-i386


Disassembly of section .text:

00000000 <.text>:
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	push   -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	51                   	push   %ecx
   e:	83 ec 30             	sub    $0x30,%esp
  11:	8d 45 e0             	lea    -0x20(%ebp),%eax
  14:	50                   	push   %eax
  15:	e8 a1 02 00 00       	call   0x2bb
  1a:	83 c4 10             	add    $0x10,%esp
  1d:	85 c0                	test   %eax,%eax
  1f:	74 1b                	je     0x3c
  21:	83 ec 08             	sub    $0x8,%esp
  24:	68 28 06 00 00       	push   $0x628
  29:	6a 02                	push   $0x2
  2b:	e8 40 03 00 00       	call   0x370
  30:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  37:	e8 df 01 00 00       	call   0x21b
  3c:	83 ec 0c             	sub    $0xc,%esp
  3f:	ff 75 f4             	push   -0xc(%ebp)
  42:	ff 75 f0             	push   -0x10(%ebp)
  45:	ff 75 ec             	push   -0x14(%ebp)
  48:	68 35 06 00 00       	push   $0x635
  4d:	6a 01                	push   $0x1
  4f:	e8 1c 03 00 00       	call   0x370
  54:	83 c4 14             	add    $0x14,%esp
  57:	6a 00                	push   $0x0
  59:	e8 bd 01 00 00       	call   0x21b
  5e:	f3 0f 1e fb          	endbr32 
  62:	55                   	push   %ebp
  63:	89 e5                	mov    %esp,%ebp
  65:	56                   	push   %esi
  66:	53                   	push   %ebx
  67:	8b 75 08             	mov    0x8(%ebp),%esi
  6a:	8b 55 0c             	mov    0xc(%ebp),%edx
  6d:	89 f0                	mov    %esi,%eax
  6f:	89 d1                	mov    %edx,%ecx
  71:	83 c2 01             	add    $0x1,%edx
  74:	89 c3                	mov    %eax,%ebx
  76:	83 c0 01             	add    $0x1,%eax
  79:	0f b6 09             	movzbl (%ecx),%ecx
  7c:	88 0b                	mov    %cl,(%ebx)
  7e:	84 c9                	test   %cl,%cl
  80:	75 ed                	jne    0x6f
  82:	89 f0                	mov    %esi,%eax
  84:	5b                   	pop    %ebx
  85:	5e                   	pop    %esi
  86:	5d                   	pop    %ebp
  87:	c3                   	ret    
  88:	f3 0f 1e fb          	endbr32 
  8c:	55                   	push   %ebp
  8d:	89 e5                	mov    %esp,%ebp
  8f:	8b 4d 08             	mov    0x8(%ebp),%ecx
  92:	8b 55 0c             	mov    0xc(%ebp),%edx
  95:	0f b6 01             	movzbl (%ecx),%eax
  98:	84 c0                	test   %al,%al
  9a:	74 0c                	je     0xa8
  9c:	3a 02                	cmp    (%edx),%al
  9e:	75 08                	jne    0xa8
  a0:	83 c1 01             	add    $0x1,%ecx
  a3:	83 c2 01             	add    $0x1,%edx
  a6:	eb ed                	jmp    0x95
  a8:	0f b6 c0             	movzbl %al,%eax
  ab:	0f b6 12             	movzbl (%edx),%edx
  ae:	29 d0                	sub    %edx,%eax
  b0:	5d                   	pop    %ebp
  b1:	c3                   	ret    
  b2:	f3 0f 1e fb          	endbr32 
  b6:	55                   	push   %ebp
  b7:	89 e5                	mov    %esp,%ebp
  b9:	8b 4d 08             	mov    0x8(%ebp),%ecx
  bc:	b8 00 00 00 00       	mov    $0x0,%eax
  c1:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
  c5:	74 05                	je     0xcc
  c7:	83 c0 01             	add    $0x1,%eax
  ca:	eb f5                	jmp    0xc1
  cc:	5d                   	pop    %ebp
  cd:	c3                   	ret    
  ce:	f3 0f 1e fb          	endbr32 
  d2:	55                   	push   %ebp
  d3:	89 e5                	mov    %esp,%ebp
  d5:	57                   	push   %edi
  d6:	8b 55 08             	mov    0x8(%ebp),%edx
  d9:	89 d7                	mov    %edx,%edi
  db:	8b 4d 10             	mov    0x10(%ebp),%ecx
  de:	8b 45 0c             	mov    0xc(%ebp),%eax
  e1:	fc                   	cld    
  e2:	f3 aa                	rep stos %al,%es:(%edi)
  e4:	89 d0                	mov    %edx,%eax
  e6:	5f                   	pop    %edi
  e7:	5d                   	pop    %ebp
  e8:	c3                   	ret    
  e9:	f3 0f 1e fb          	endbr32 
  ed:	55                   	push   %ebp
  ee:	89 e5                	mov    %esp,%ebp
  f0:	8b 45 08             	mov    0x8(%ebp),%eax
  f3:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  f7:	0f b6 10             	movzbl (%eax),%edx
  fa:	84 d2                	test   %dl,%dl
  fc:	74 09                	je     0x107
  fe:	38 ca                	cmp    %cl,%dl
 100:	74 0a                	je     0x10c
 102:	83 c0 01             	add    $0x1,%eax
 105:	eb f0                	jmp    0xf7
 107:	b8 00 00 00 00       	mov    $0x0,%eax
 10c:	5d                   	pop    %ebp
 10d:	c3                   	ret    
 10e:	f3 0f 1e fb          	endbr32 
 112:	55                   	push   %ebp
 113:	89 e5                	mov    %esp,%ebp
 115:	57                   	push   %edi
 116:	56                   	push   %esi
 117:	53                   	push   %ebx
 118:	83 ec 1c             	sub    $0x1c,%esp
 11b:	8b 7d 08             	mov    0x8(%ebp),%edi
 11e:	bb 00 00 00 00       	mov    $0x0,%ebx
 123:	89 de                	mov    %ebx,%esi
 125:	83 c3 01             	add    $0x1,%ebx
 128:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 12b:	7d 2e                	jge    0x15b
 12d:	83 ec 04             	sub    $0x4,%esp
 130:	6a 01                	push   $0x1
 132:	8d 45 e7             	lea    -0x19(%ebp),%eax
 135:	50                   	push   %eax
 136:	6a 00                	push   $0x0
 138:	e8 f6 00 00 00       	call   0x233
 13d:	83 c4 10             	add    $0x10,%esp
 140:	85 c0                	test   %eax,%eax
 142:	7e 17                	jle    0x15b
 144:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 148:	88 04 37             	mov    %al,(%edi,%esi,1)
 14b:	3c 0a                	cmp    $0xa,%al
 14d:	0f 94 c2             	sete   %dl
 150:	3c 0d                	cmp    $0xd,%al
 152:	0f 94 c0             	sete   %al
 155:	08 c2                	or     %al,%dl
 157:	74 ca                	je     0x123
 159:	89 de                	mov    %ebx,%esi
 15b:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 15f:	89 f8                	mov    %edi,%eax
 161:	8d 65 f4             	lea    -0xc(%ebp),%esp
 164:	5b                   	pop    %ebx
 165:	5e                   	pop    %esi
 166:	5f                   	pop    %edi
 167:	5d                   	pop    %ebp
 168:	c3                   	ret    
 169:	f3 0f 1e fb          	endbr32 
 16d:	55                   	push   %ebp
 16e:	89 e5                	mov    %esp,%ebp
 170:	56                   	push   %esi
 171:	53                   	push   %ebx
 172:	83 ec 08             	sub    $0x8,%esp
 175:	6a 00                	push   $0x0
 177:	ff 75 08             	push   0x8(%ebp)
 17a:	e8 dc 00 00 00       	call   0x25b
 17f:	83 c4 10             	add    $0x10,%esp
 182:	85 c0                	test   %eax,%eax
 184:	78 24                	js     0x1aa
 186:	89 c3                	mov    %eax,%ebx
 188:	83 ec 08             	sub    $0x8,%esp
 18b:	ff 75 0c             	push   0xc(%ebp)
 18e:	50                   	push   %eax
 18f:	e8 df 00 00 00       	call   0x273
 194:	89 c6                	mov    %eax,%esi
 196:	89 1c 24             	mov    %ebx,(%esp)
 199:	e8 a5 00 00 00       	call   0x243
 19e:	83 c4 10             	add    $0x10,%esp
 1a1:	89 f0                	mov    %esi,%eax
 1a3:	8d 65 f8             	lea    -0x8(%ebp),%esp
 1a6:	5b                   	pop    %ebx
 1a7:	5e                   	pop    %esi
 1a8:	5d                   	pop    %ebp
 1a9:	c3                   	ret    
 1aa:	be ff ff ff ff       	mov    $0xffffffff,%esi
 1af:	eb f0                	jmp    0x1a1
 1b1:	f3 0f 1e fb          	endbr32 
 1b5:	55                   	push   %ebp
 1b6:	89 e5                	mov    %esp,%ebp
 1b8:	53                   	push   %ebx
 1b9:	8b 4d 08             	mov    0x8(%ebp),%ecx
 1bc:	ba 00 00 00 00       	mov    $0x0,%edx
 1c1:	0f b6 01             	movzbl (%ecx),%eax
 1c4:	8d 58 d0             	lea    -0x30(%eax),%ebx
 1c7:	80 fb 09             	cmp    $0x9,%bl
 1ca:	77 12                	ja     0x1de
 1cc:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 1cf:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 1d2:	83 c1 01             	add    $0x1,%ecx
 1d5:	0f be c0             	movsbl %al,%eax
 1d8:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 1dc:	eb e3                	jmp    0x1c1
 1de:	89 d0                	mov    %edx,%eax
 1e0:	5b                   	pop    %ebx
 1e1:	5d                   	pop    %ebp
 1e2:	c3                   	ret    
 1e3:	f3 0f 1e fb          	endbr32 
 1e7:	55                   	push   %ebp
 1e8:	89 e5                	mov    %esp,%ebp
 1ea:	56                   	push   %esi
 1eb:	53                   	push   %ebx
 1ec:	8b 75 08             	mov    0x8(%ebp),%esi
 1ef:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 1f2:	8b 45 10             	mov    0x10(%ebp),%eax
 1f5:	89 f2                	mov    %esi,%edx
 1f7:	8d 58 ff             	lea    -0x1(%eax),%ebx
 1fa:	85 c0                	test   %eax,%eax
 1fc:	7e 0f                	jle    0x20d
 1fe:	0f b6 01             	movzbl (%ecx),%eax
 201:	88 02                	mov    %al,(%edx)
 203:	8d 49 01             	lea    0x1(%ecx),%ecx
 206:	8d 52 01             	lea    0x1(%edx),%edx
 209:	89 d8                	mov    %ebx,%eax
 20b:	eb ea                	jmp    0x1f7
 20d:	89 f0                	mov    %esi,%eax
 20f:	5b                   	pop    %ebx
 210:	5e                   	pop    %esi
 211:	5d                   	pop    %ebp
 212:	c3                   	ret    
 213:	b8 01 00 00 00       	mov    $0x1,%eax
 218:	cd 40                	int    $0x40
 21a:	c3                   	ret    
 21b:	b8 02 00 00 00       	mov    $0x2,%eax
 220:	cd 40                	int    $0x40
 222:	c3                   	ret    
 223:	b8 03 00 00 00       	mov    $0x3,%eax
 228:	cd 40                	int    $0x40
 22a:	c3                   	ret    
 22b:	b8 04 00 00 00       	mov    $0x4,%eax
 230:	cd 40                	int    $0x40
 232:	c3                   	ret    
 233:	b8 05 00 00 00       	mov    $0x5,%eax
 238:	cd 40                	int    $0x40
 23a:	c3                   	ret    
 23b:	b8 10 00 00 00       	mov    $0x10,%eax
 240:	cd 40                	int    $0x40
 242:	c3                   	ret    
 243:	b8 15 00 00 00       	mov    $0x15,%eax
 248:	cd 40                	int    $0x40
 24a:	c3                   	ret    
 24b:	b8 06 00 00 00       	mov    $0x6,%eax
 250:	cd 40                	int    $0x40
 252:	c3                   	ret    
 253:	b8 07 00 00 00       	mov    $0x7,%eax
 258:	cd 40                	int    $0x40
 25a:	c3                   	ret    
 25b:	b8 0f 00 00 00       	mov    $0xf,%eax
 260:	cd 40                	int    $0x40
 262:	c3                   	ret    
 263:	b8 11 00 00 00       	mov    $0x11,%eax
 268:	cd 40                	int    $0x40
 26a:	c3                   	ret    
 26b:	b8 12 00 00 00       	mov    $0x12,%eax
 270:	cd 40                	int    $0x40
 272:	c3                   	ret    
 273:	b8 08 00 00 00       	mov    $0x8,%eax
 278:	cd 40                	int    $0x40
 27a:	c3                   	ret    
 27b:	b8 13 00 00 00       	mov    $0x13,%eax
 280:	cd 40                	int    $0x40
 282:	c3                   	ret    
 283:	b8 14 00 00 00       	mov    $0x14,%eax
 288:	cd 40                	int    $0x40
 28a:	c3                   	ret    
 28b:	b8 09 00 00 00       	mov    $0x9,%eax
 290:	cd 40                	int    $0x40
 292:	c3                   	ret    
 293:	b8 0a 00 00 00       	mov    $0xa,%eax
 298:	cd 40                	int    $0x40
 29a:	c3                   	ret    
 29b:	b8 0b 00 00 00       	mov    $0xb,%eax
 2a0:	cd 40                	int    $0x40
 2a2:	c3                   	ret    
 2a3:	b8 0c 00 00 00       	mov    $0xc,%eax
 2a8:	cd 40                	int    $0x40
 2aa:	c3                   	ret    
 2ab:	b8 0d 00 00 00       	mov    $0xd,%eax
 2b0:	cd 40                	int    $0x40
 2b2:	c3                   	ret    
 2b3:	b8 0e 00 00 00       	mov    $0xe,%eax
 2b8:	cd 40                	int    $0x40
 2ba:	c3                   	ret    
 2bb:	b8 16 00 00 00       	mov    $0x16,%eax
 2c0:	cd 40                	int    $0x40
 2c2:	c3                   	ret    
 2c3:	b8 17 00 00 00       	mov    $0x17,%eax
 2c8:	cd 40                	int    $0x40
 2ca:	c3                   	ret    
 2cb:	55                   	push   %ebp
 2cc:	89 e5                	mov    %esp,%ebp
 2ce:	83 ec 1c             	sub    $0x1c,%esp
 2d1:	88 55 f4             	mov    %dl,-0xc(%ebp)
 2d4:	6a 01                	push   $0x1
 2d6:	8d 55 f4             	lea    -0xc(%ebp),%edx
 2d9:	52                   	push   %edx
 2da:	50                   	push   %eax
 2db:	e8 5b ff ff ff       	call   0x23b
 2e0:	83 c4 10             	add    $0x10,%esp
 2e3:	c9                   	leave  
 2e4:	c3                   	ret    
 2e5:	55                   	push   %ebp
 2e6:	89 e5                	mov    %esp,%ebp
 2e8:	57                   	push   %edi
 2e9:	56                   	push   %esi
 2ea:	53                   	push   %ebx
 2eb:	83 ec 2c             	sub    $0x2c,%esp
 2ee:	89 45 d0             	mov    %eax,-0x30(%ebp)
 2f1:	89 d0                	mov    %edx,%eax
 2f3:	89 ce                	mov    %ecx,%esi
 2f5:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 2f9:	0f 95 c1             	setne  %cl
 2fc:	c1 ea 1f             	shr    $0x1f,%edx
 2ff:	84 d1                	test   %dl,%cl
 301:	74 44                	je     0x347
 303:	f7 d8                	neg    %eax
 305:	89 c1                	mov    %eax,%ecx
 307:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 30e:	bb 00 00 00 00       	mov    $0x0,%ebx
 313:	89 c8                	mov    %ecx,%eax
 315:	ba 00 00 00 00       	mov    $0x0,%edx
 31a:	f7 f6                	div    %esi
 31c:	89 df                	mov    %ebx,%edi
 31e:	83 c3 01             	add    $0x1,%ebx
 321:	0f b6 92 a0 06 00 00 	movzbl 0x6a0(%edx),%edx
 328:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 32c:	89 ca                	mov    %ecx,%edx
 32e:	89 c1                	mov    %eax,%ecx
 330:	39 d6                	cmp    %edx,%esi
 332:	76 df                	jbe    0x313
 334:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 338:	74 31                	je     0x36b
 33a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 33f:	8d 5f 02             	lea    0x2(%edi),%ebx
 342:	8b 75 d0             	mov    -0x30(%ebp),%esi
 345:	eb 17                	jmp    0x35e
 347:	89 c1                	mov    %eax,%ecx
 349:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 350:	eb bc                	jmp    0x30e
 352:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 357:	89 f0                	mov    %esi,%eax
 359:	e8 6d ff ff ff       	call   0x2cb
 35e:	83 eb 01             	sub    $0x1,%ebx
 361:	79 ef                	jns    0x352
 363:	83 c4 2c             	add    $0x2c,%esp
 366:	5b                   	pop    %ebx
 367:	5e                   	pop    %esi
 368:	5f                   	pop    %edi
 369:	5d                   	pop    %ebp
 36a:	c3                   	ret    
 36b:	8b 75 d0             	mov    -0x30(%ebp),%esi
 36e:	eb ee                	jmp    0x35e
 370:	55                   	push   %ebp
 371:	89 e5                	mov    %esp,%ebp
 373:	57                   	push   %edi
 374:	56                   	push   %esi
 375:	53                   	push   %ebx
 376:	83 ec 1c             	sub    $0x1c,%esp
 379:	8d 45 10             	lea    0x10(%ebp),%eax
 37c:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 37f:	be 00 00 00 00       	mov    $0x0,%esi
 384:	bb 00 00 00 00       	mov    $0x0,%ebx
 389:	eb 14                	jmp    0x39f
 38b:	89 fa                	mov    %edi,%edx
 38d:	8b 45 08             	mov    0x8(%ebp),%eax
 390:	e8 36 ff ff ff       	call   0x2cb
 395:	eb 05                	jmp    0x39c
 397:	83 fe 25             	cmp    $0x25,%esi
 39a:	74 25                	je     0x3c1
 39c:	83 c3 01             	add    $0x1,%ebx
 39f:	8b 45 0c             	mov    0xc(%ebp),%eax
 3a2:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 3a6:	84 c0                	test   %al,%al
 3a8:	0f 84 20 01 00 00    	je     0x4ce
 3ae:	0f be f8             	movsbl %al,%edi
 3b1:	0f b6 c0             	movzbl %al,%eax
 3b4:	85 f6                	test   %esi,%esi
 3b6:	75 df                	jne    0x397
 3b8:	83 f8 25             	cmp    $0x25,%eax
 3bb:	75 ce                	jne    0x38b
 3bd:	89 c6                	mov    %eax,%esi
 3bf:	eb db                	jmp    0x39c
 3c1:	83 f8 25             	cmp    $0x25,%eax
 3c4:	0f 84 cf 00 00 00    	je     0x499
 3ca:	0f 8c dd 00 00 00    	jl     0x4ad
 3d0:	83 f8 78             	cmp    $0x78,%eax
 3d3:	0f 8f d4 00 00 00    	jg     0x4ad
 3d9:	83 f8 63             	cmp    $0x63,%eax
 3dc:	0f 8c cb 00 00 00    	jl     0x4ad
 3e2:	83 e8 63             	sub    $0x63,%eax
 3e5:	83 f8 15             	cmp    $0x15,%eax
 3e8:	0f 87 bf 00 00 00    	ja     0x4ad
 3ee:	ff 24 85 48 06 00 00 	jmp    *0x648(,%eax,4)
 3f5:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 3f8:	8b 17                	mov    (%edi),%edx
 3fa:	83 ec 0c             	sub    $0xc,%esp
 3fd:	6a 01                	push   $0x1
 3ff:	b9 0a 00 00 00       	mov    $0xa,%ecx
 404:	8b 45 08             	mov    0x8(%ebp),%eax
 407:	e8 d9 fe ff ff       	call   0x2e5
 40c:	83 c7 04             	add    $0x4,%edi
 40f:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 412:	83 c4 10             	add    $0x10,%esp
 415:	be 00 00 00 00       	mov    $0x0,%esi
 41a:	eb 80                	jmp    0x39c
 41c:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 41f:	8b 17                	mov    (%edi),%edx
 421:	83 ec 0c             	sub    $0xc,%esp
 424:	6a 00                	push   $0x0
 426:	b9 10 00 00 00       	mov    $0x10,%ecx
 42b:	8b 45 08             	mov    0x8(%ebp),%eax
 42e:	e8 b2 fe ff ff       	call   0x2e5
 433:	83 c7 04             	add    $0x4,%edi
 436:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 439:	83 c4 10             	add    $0x10,%esp
 43c:	be 00 00 00 00       	mov    $0x0,%esi
 441:	e9 56 ff ff ff       	jmp    0x39c
 446:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 449:	8b 30                	mov    (%eax),%esi
 44b:	83 c0 04             	add    $0x4,%eax
 44e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 451:	85 f6                	test   %esi,%esi
 453:	75 15                	jne    0x46a
 455:	be 3f 06 00 00       	mov    $0x63f,%esi
 45a:	eb 0e                	jmp    0x46a
 45c:	0f be d2             	movsbl %dl,%edx
 45f:	8b 45 08             	mov    0x8(%ebp),%eax
 462:	e8 64 fe ff ff       	call   0x2cb
 467:	83 c6 01             	add    $0x1,%esi
 46a:	0f b6 16             	movzbl (%esi),%edx
 46d:	84 d2                	test   %dl,%dl
 46f:	75 eb                	jne    0x45c
 471:	be 00 00 00 00       	mov    $0x0,%esi
 476:	e9 21 ff ff ff       	jmp    0x39c
 47b:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 47e:	0f be 17             	movsbl (%edi),%edx
 481:	8b 45 08             	mov    0x8(%ebp),%eax
 484:	e8 42 fe ff ff       	call   0x2cb
 489:	83 c7 04             	add    $0x4,%edi
 48c:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 48f:	be 00 00 00 00       	mov    $0x0,%esi
 494:	e9 03 ff ff ff       	jmp    0x39c
 499:	89 fa                	mov    %edi,%edx
 49b:	8b 45 08             	mov    0x8(%ebp),%eax
 49e:	e8 28 fe ff ff       	call   0x2cb
 4a3:	be 00 00 00 00       	mov    $0x0,%esi
 4a8:	e9 ef fe ff ff       	jmp    0x39c
 4ad:	ba 25 00 00 00       	mov    $0x25,%edx
 4b2:	8b 45 08             	mov    0x8(%ebp),%eax
 4b5:	e8 11 fe ff ff       	call   0x2cb
 4ba:	89 fa                	mov    %edi,%edx
 4bc:	8b 45 08             	mov    0x8(%ebp),%eax
 4bf:	e8 07 fe ff ff       	call   0x2cb
 4c4:	be 00 00 00 00       	mov    $0x0,%esi
 4c9:	e9 ce fe ff ff       	jmp    0x39c
 4ce:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4d1:	5b                   	pop    %ebx
 4d2:	5e                   	pop    %esi
 4d3:	5f                   	pop    %edi
 4d4:	5d                   	pop    %ebp
 4d5:	c3                   	ret    
 4d6:	f3 0f 1e fb          	endbr32 
 4da:	55                   	push   %ebp
 4db:	89 e5                	mov    %esp,%ebp
 4dd:	57                   	push   %edi
 4de:	56                   	push   %esi
 4df:	53                   	push   %ebx
 4e0:	8b 5d 08             	mov    0x8(%ebp),%ebx
 4e3:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 4e6:	a1 40 09 00 00       	mov    0x940,%eax
 4eb:	eb 02                	jmp    0x4ef
 4ed:	89 d0                	mov    %edx,%eax
 4ef:	39 c8                	cmp    %ecx,%eax
 4f1:	73 04                	jae    0x4f7
 4f3:	39 08                	cmp    %ecx,(%eax)
 4f5:	77 12                	ja     0x509
 4f7:	8b 10                	mov    (%eax),%edx
 4f9:	39 c2                	cmp    %eax,%edx
 4fb:	77 f0                	ja     0x4ed
 4fd:	39 c8                	cmp    %ecx,%eax
 4ff:	72 08                	jb     0x509
 501:	39 ca                	cmp    %ecx,%edx
 503:	77 04                	ja     0x509
 505:	89 d0                	mov    %edx,%eax
 507:	eb e6                	jmp    0x4ef
 509:	8b 73 fc             	mov    -0x4(%ebx),%esi
 50c:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 50f:	8b 10                	mov    (%eax),%edx
 511:	39 d7                	cmp    %edx,%edi
 513:	74 19                	je     0x52e
 515:	89 53 f8             	mov    %edx,-0x8(%ebx)
 518:	8b 50 04             	mov    0x4(%eax),%edx
 51b:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 51e:	39 ce                	cmp    %ecx,%esi
 520:	74 1b                	je     0x53d
 522:	89 08                	mov    %ecx,(%eax)
 524:	a3 40 09 00 00       	mov    %eax,0x940
 529:	5b                   	pop    %ebx
 52a:	5e                   	pop    %esi
 52b:	5f                   	pop    %edi
 52c:	5d                   	pop    %ebp
 52d:	c3                   	ret    
 52e:	03 72 04             	add    0x4(%edx),%esi
 531:	89 73 fc             	mov    %esi,-0x4(%ebx)
 534:	8b 10                	mov    (%eax),%edx
 536:	8b 12                	mov    (%edx),%edx
 538:	89 53 f8             	mov    %edx,-0x8(%ebx)
 53b:	eb db                	jmp    0x518
 53d:	03 53 fc             	add    -0x4(%ebx),%edx
 540:	89 50 04             	mov    %edx,0x4(%eax)
 543:	8b 53 f8             	mov    -0x8(%ebx),%edx
 546:	89 10                	mov    %edx,(%eax)
 548:	eb da                	jmp    0x524
 54a:	55                   	push   %ebp
 54b:	89 e5                	mov    %esp,%ebp
 54d:	53                   	push   %ebx
 54e:	83 ec 04             	sub    $0x4,%esp
 551:	89 c3                	mov    %eax,%ebx
 553:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 558:	77 05                	ja     0x55f
 55a:	bb 00 10 00 00       	mov    $0x1000,%ebx
 55f:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 566:	83 ec 0c             	sub    $0xc,%esp
 569:	50                   	push   %eax
 56a:	e8 34 fd ff ff       	call   0x2a3
 56f:	83 c4 10             	add    $0x10,%esp
 572:	83 f8 ff             	cmp    $0xffffffff,%eax
 575:	74 1c                	je     0x593
 577:	89 58 04             	mov    %ebx,0x4(%eax)
 57a:	83 c0 08             	add    $0x8,%eax
 57d:	83 ec 0c             	sub    $0xc,%esp
 580:	50                   	push   %eax
 581:	e8 50 ff ff ff       	call   0x4d6
 586:	a1 40 09 00 00       	mov    0x940,%eax
 58b:	83 c4 10             	add    $0x10,%esp
 58e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 591:	c9                   	leave  
 592:	c3                   	ret    
 593:	b8 00 00 00 00       	mov    $0x0,%eax
 598:	eb f4                	jmp    0x58e
 59a:	f3 0f 1e fb          	endbr32 
 59e:	55                   	push   %ebp
 59f:	89 e5                	mov    %esp,%ebp
 5a1:	53                   	push   %ebx
 5a2:	83 ec 04             	sub    $0x4,%esp
 5a5:	8b 45 08             	mov    0x8(%ebp),%eax
 5a8:	8d 58 07             	lea    0x7(%eax),%ebx
 5ab:	c1 eb 03             	shr    $0x3,%ebx
 5ae:	83 c3 01             	add    $0x1,%ebx
 5b1:	8b 0d 40 09 00 00    	mov    0x940,%ecx
 5b7:	85 c9                	test   %ecx,%ecx
 5b9:	74 04                	je     0x5bf
 5bb:	8b 01                	mov    (%ecx),%eax
 5bd:	eb 4b                	jmp    0x60a
 5bf:	c7 05 40 09 00 00 44 	movl   $0x944,0x940
 5c6:	09 00 00 
 5c9:	c7 05 44 09 00 00 44 	movl   $0x944,0x944
 5d0:	09 00 00 
 5d3:	c7 05 48 09 00 00 00 	movl   $0x0,0x948
 5da:	00 00 00 
 5dd:	b9 44 09 00 00       	mov    $0x944,%ecx
 5e2:	eb d7                	jmp    0x5bb
 5e4:	74 1a                	je     0x600
 5e6:	29 da                	sub    %ebx,%edx
 5e8:	89 50 04             	mov    %edx,0x4(%eax)
 5eb:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 5ee:	89 58 04             	mov    %ebx,0x4(%eax)
 5f1:	89 0d 40 09 00 00    	mov    %ecx,0x940
 5f7:	83 c0 08             	add    $0x8,%eax
 5fa:	83 c4 04             	add    $0x4,%esp
 5fd:	5b                   	pop    %ebx
 5fe:	5d                   	pop    %ebp
 5ff:	c3                   	ret    
 600:	8b 10                	mov    (%eax),%edx
 602:	89 11                	mov    %edx,(%ecx)
 604:	eb eb                	jmp    0x5f1
 606:	89 c1                	mov    %eax,%ecx
 608:	8b 00                	mov    (%eax),%eax
 60a:	8b 50 04             	mov    0x4(%eax),%edx
 60d:	39 da                	cmp    %ebx,%edx
 60f:	73 d3                	jae    0x5e4
 611:	39 05 40 09 00 00    	cmp    %eax,0x940
 617:	75 ed                	jne    0x606
 619:	89 d8                	mov    %ebx,%eax
 61b:	e8 2a ff ff ff       	call   0x54a
 620:	85 c0                	test   %eax,%eax
 622:	75 e2                	jne    0x606
 624:	eb d4                	jmp    0x5fa
