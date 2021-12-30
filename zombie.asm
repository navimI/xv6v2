
_zombie:     file format elf32-i386


Disassembly of section .text:

00000000 <.text>:
   0:	f3 0f 1e fb          	endbr32 
   4:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   8:	83 e4 f0             	and    $0xfffffff0,%esp
   b:	ff 71 fc             	push   -0x4(%ecx)
   e:	55                   	push   %ebp
   f:	89 e5                	mov    %esp,%ebp
  11:	51                   	push   %ecx
  12:	83 ec 04             	sub    $0x4,%esp
  15:	e8 d2 01 00 00       	call   0x1ec
  1a:	85 c0                	test   %eax,%eax
  1c:	7f 0a                	jg     0x28
  1e:	83 ec 0c             	sub    $0xc,%esp
  21:	6a 00                	push   $0x0
  23:	e8 cc 01 00 00       	call   0x1f4
  28:	83 ec 0c             	sub    $0xc,%esp
  2b:	6a 05                	push   $0x5
  2d:	e8 52 02 00 00       	call   0x284
  32:	83 c4 10             	add    $0x10,%esp
  35:	eb e7                	jmp    0x1e
  37:	f3 0f 1e fb          	endbr32 
  3b:	55                   	push   %ebp
  3c:	89 e5                	mov    %esp,%ebp
  3e:	56                   	push   %esi
  3f:	53                   	push   %ebx
  40:	8b 75 08             	mov    0x8(%ebp),%esi
  43:	8b 55 0c             	mov    0xc(%ebp),%edx
  46:	89 f0                	mov    %esi,%eax
  48:	89 d1                	mov    %edx,%ecx
  4a:	83 c2 01             	add    $0x1,%edx
  4d:	89 c3                	mov    %eax,%ebx
  4f:	83 c0 01             	add    $0x1,%eax
  52:	0f b6 09             	movzbl (%ecx),%ecx
  55:	88 0b                	mov    %cl,(%ebx)
  57:	84 c9                	test   %cl,%cl
  59:	75 ed                	jne    0x48
  5b:	89 f0                	mov    %esi,%eax
  5d:	5b                   	pop    %ebx
  5e:	5e                   	pop    %esi
  5f:	5d                   	pop    %ebp
  60:	c3                   	ret    
  61:	f3 0f 1e fb          	endbr32 
  65:	55                   	push   %ebp
  66:	89 e5                	mov    %esp,%ebp
  68:	8b 4d 08             	mov    0x8(%ebp),%ecx
  6b:	8b 55 0c             	mov    0xc(%ebp),%edx
  6e:	0f b6 01             	movzbl (%ecx),%eax
  71:	84 c0                	test   %al,%al
  73:	74 0c                	je     0x81
  75:	3a 02                	cmp    (%edx),%al
  77:	75 08                	jne    0x81
  79:	83 c1 01             	add    $0x1,%ecx
  7c:	83 c2 01             	add    $0x1,%edx
  7f:	eb ed                	jmp    0x6e
  81:	0f b6 c0             	movzbl %al,%eax
  84:	0f b6 12             	movzbl (%edx),%edx
  87:	29 d0                	sub    %edx,%eax
  89:	5d                   	pop    %ebp
  8a:	c3                   	ret    
  8b:	f3 0f 1e fb          	endbr32 
  8f:	55                   	push   %ebp
  90:	89 e5                	mov    %esp,%ebp
  92:	8b 4d 08             	mov    0x8(%ebp),%ecx
  95:	b8 00 00 00 00       	mov    $0x0,%eax
  9a:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
  9e:	74 05                	je     0xa5
  a0:	83 c0 01             	add    $0x1,%eax
  a3:	eb f5                	jmp    0x9a
  a5:	5d                   	pop    %ebp
  a6:	c3                   	ret    
  a7:	f3 0f 1e fb          	endbr32 
  ab:	55                   	push   %ebp
  ac:	89 e5                	mov    %esp,%ebp
  ae:	57                   	push   %edi
  af:	8b 55 08             	mov    0x8(%ebp),%edx
  b2:	89 d7                	mov    %edx,%edi
  b4:	8b 4d 10             	mov    0x10(%ebp),%ecx
  b7:	8b 45 0c             	mov    0xc(%ebp),%eax
  ba:	fc                   	cld    
  bb:	f3 aa                	rep stos %al,%es:(%edi)
  bd:	89 d0                	mov    %edx,%eax
  bf:	5f                   	pop    %edi
  c0:	5d                   	pop    %ebp
  c1:	c3                   	ret    
  c2:	f3 0f 1e fb          	endbr32 
  c6:	55                   	push   %ebp
  c7:	89 e5                	mov    %esp,%ebp
  c9:	8b 45 08             	mov    0x8(%ebp),%eax
  cc:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  d0:	0f b6 10             	movzbl (%eax),%edx
  d3:	84 d2                	test   %dl,%dl
  d5:	74 09                	je     0xe0
  d7:	38 ca                	cmp    %cl,%dl
  d9:	74 0a                	je     0xe5
  db:	83 c0 01             	add    $0x1,%eax
  de:	eb f0                	jmp    0xd0
  e0:	b8 00 00 00 00       	mov    $0x0,%eax
  e5:	5d                   	pop    %ebp
  e6:	c3                   	ret    
  e7:	f3 0f 1e fb          	endbr32 
  eb:	55                   	push   %ebp
  ec:	89 e5                	mov    %esp,%ebp
  ee:	57                   	push   %edi
  ef:	56                   	push   %esi
  f0:	53                   	push   %ebx
  f1:	83 ec 1c             	sub    $0x1c,%esp
  f4:	8b 7d 08             	mov    0x8(%ebp),%edi
  f7:	bb 00 00 00 00       	mov    $0x0,%ebx
  fc:	89 de                	mov    %ebx,%esi
  fe:	83 c3 01             	add    $0x1,%ebx
 101:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 104:	7d 2e                	jge    0x134
 106:	83 ec 04             	sub    $0x4,%esp
 109:	6a 01                	push   $0x1
 10b:	8d 45 e7             	lea    -0x19(%ebp),%eax
 10e:	50                   	push   %eax
 10f:	6a 00                	push   $0x0
 111:	e8 f6 00 00 00       	call   0x20c
 116:	83 c4 10             	add    $0x10,%esp
 119:	85 c0                	test   %eax,%eax
 11b:	7e 17                	jle    0x134
 11d:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 121:	88 04 37             	mov    %al,(%edi,%esi,1)
 124:	3c 0a                	cmp    $0xa,%al
 126:	0f 94 c2             	sete   %dl
 129:	3c 0d                	cmp    $0xd,%al
 12b:	0f 94 c0             	sete   %al
 12e:	08 c2                	or     %al,%dl
 130:	74 ca                	je     0xfc
 132:	89 de                	mov    %ebx,%esi
 134:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 138:	89 f8                	mov    %edi,%eax
 13a:	8d 65 f4             	lea    -0xc(%ebp),%esp
 13d:	5b                   	pop    %ebx
 13e:	5e                   	pop    %esi
 13f:	5f                   	pop    %edi
 140:	5d                   	pop    %ebp
 141:	c3                   	ret    
 142:	f3 0f 1e fb          	endbr32 
 146:	55                   	push   %ebp
 147:	89 e5                	mov    %esp,%ebp
 149:	56                   	push   %esi
 14a:	53                   	push   %ebx
 14b:	83 ec 08             	sub    $0x8,%esp
 14e:	6a 00                	push   $0x0
 150:	ff 75 08             	push   0x8(%ebp)
 153:	e8 dc 00 00 00       	call   0x234
 158:	83 c4 10             	add    $0x10,%esp
 15b:	85 c0                	test   %eax,%eax
 15d:	78 24                	js     0x183
 15f:	89 c3                	mov    %eax,%ebx
 161:	83 ec 08             	sub    $0x8,%esp
 164:	ff 75 0c             	push   0xc(%ebp)
 167:	50                   	push   %eax
 168:	e8 df 00 00 00       	call   0x24c
 16d:	89 c6                	mov    %eax,%esi
 16f:	89 1c 24             	mov    %ebx,(%esp)
 172:	e8 a5 00 00 00       	call   0x21c
 177:	83 c4 10             	add    $0x10,%esp
 17a:	89 f0                	mov    %esi,%eax
 17c:	8d 65 f8             	lea    -0x8(%ebp),%esp
 17f:	5b                   	pop    %ebx
 180:	5e                   	pop    %esi
 181:	5d                   	pop    %ebp
 182:	c3                   	ret    
 183:	be ff ff ff ff       	mov    $0xffffffff,%esi
 188:	eb f0                	jmp    0x17a
 18a:	f3 0f 1e fb          	endbr32 
 18e:	55                   	push   %ebp
 18f:	89 e5                	mov    %esp,%ebp
 191:	53                   	push   %ebx
 192:	8b 4d 08             	mov    0x8(%ebp),%ecx
 195:	ba 00 00 00 00       	mov    $0x0,%edx
 19a:	0f b6 01             	movzbl (%ecx),%eax
 19d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 1a0:	80 fb 09             	cmp    $0x9,%bl
 1a3:	77 12                	ja     0x1b7
 1a5:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 1a8:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 1ab:	83 c1 01             	add    $0x1,%ecx
 1ae:	0f be c0             	movsbl %al,%eax
 1b1:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 1b5:	eb e3                	jmp    0x19a
 1b7:	89 d0                	mov    %edx,%eax
 1b9:	5b                   	pop    %ebx
 1ba:	5d                   	pop    %ebp
 1bb:	c3                   	ret    
 1bc:	f3 0f 1e fb          	endbr32 
 1c0:	55                   	push   %ebp
 1c1:	89 e5                	mov    %esp,%ebp
 1c3:	56                   	push   %esi
 1c4:	53                   	push   %ebx
 1c5:	8b 75 08             	mov    0x8(%ebp),%esi
 1c8:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 1cb:	8b 45 10             	mov    0x10(%ebp),%eax
 1ce:	89 f2                	mov    %esi,%edx
 1d0:	8d 58 ff             	lea    -0x1(%eax),%ebx
 1d3:	85 c0                	test   %eax,%eax
 1d5:	7e 0f                	jle    0x1e6
 1d7:	0f b6 01             	movzbl (%ecx),%eax
 1da:	88 02                	mov    %al,(%edx)
 1dc:	8d 49 01             	lea    0x1(%ecx),%ecx
 1df:	8d 52 01             	lea    0x1(%edx),%edx
 1e2:	89 d8                	mov    %ebx,%eax
 1e4:	eb ea                	jmp    0x1d0
 1e6:	89 f0                	mov    %esi,%eax
 1e8:	5b                   	pop    %ebx
 1e9:	5e                   	pop    %esi
 1ea:	5d                   	pop    %ebp
 1eb:	c3                   	ret    
 1ec:	b8 01 00 00 00       	mov    $0x1,%eax
 1f1:	cd 40                	int    $0x40
 1f3:	c3                   	ret    
 1f4:	b8 02 00 00 00       	mov    $0x2,%eax
 1f9:	cd 40                	int    $0x40
 1fb:	c3                   	ret    
 1fc:	b8 03 00 00 00       	mov    $0x3,%eax
 201:	cd 40                	int    $0x40
 203:	c3                   	ret    
 204:	b8 04 00 00 00       	mov    $0x4,%eax
 209:	cd 40                	int    $0x40
 20b:	c3                   	ret    
 20c:	b8 05 00 00 00       	mov    $0x5,%eax
 211:	cd 40                	int    $0x40
 213:	c3                   	ret    
 214:	b8 10 00 00 00       	mov    $0x10,%eax
 219:	cd 40                	int    $0x40
 21b:	c3                   	ret    
 21c:	b8 15 00 00 00       	mov    $0x15,%eax
 221:	cd 40                	int    $0x40
 223:	c3                   	ret    
 224:	b8 06 00 00 00       	mov    $0x6,%eax
 229:	cd 40                	int    $0x40
 22b:	c3                   	ret    
 22c:	b8 07 00 00 00       	mov    $0x7,%eax
 231:	cd 40                	int    $0x40
 233:	c3                   	ret    
 234:	b8 0f 00 00 00       	mov    $0xf,%eax
 239:	cd 40                	int    $0x40
 23b:	c3                   	ret    
 23c:	b8 11 00 00 00       	mov    $0x11,%eax
 241:	cd 40                	int    $0x40
 243:	c3                   	ret    
 244:	b8 12 00 00 00       	mov    $0x12,%eax
 249:	cd 40                	int    $0x40
 24b:	c3                   	ret    
 24c:	b8 08 00 00 00       	mov    $0x8,%eax
 251:	cd 40                	int    $0x40
 253:	c3                   	ret    
 254:	b8 13 00 00 00       	mov    $0x13,%eax
 259:	cd 40                	int    $0x40
 25b:	c3                   	ret    
 25c:	b8 14 00 00 00       	mov    $0x14,%eax
 261:	cd 40                	int    $0x40
 263:	c3                   	ret    
 264:	b8 09 00 00 00       	mov    $0x9,%eax
 269:	cd 40                	int    $0x40
 26b:	c3                   	ret    
 26c:	b8 0a 00 00 00       	mov    $0xa,%eax
 271:	cd 40                	int    $0x40
 273:	c3                   	ret    
 274:	b8 0b 00 00 00       	mov    $0xb,%eax
 279:	cd 40                	int    $0x40
 27b:	c3                   	ret    
 27c:	b8 0c 00 00 00       	mov    $0xc,%eax
 281:	cd 40                	int    $0x40
 283:	c3                   	ret    
 284:	b8 0d 00 00 00       	mov    $0xd,%eax
 289:	cd 40                	int    $0x40
 28b:	c3                   	ret    
 28c:	b8 0e 00 00 00       	mov    $0xe,%eax
 291:	cd 40                	int    $0x40
 293:	c3                   	ret    
 294:	b8 16 00 00 00       	mov    $0x16,%eax
 299:	cd 40                	int    $0x40
 29b:	c3                   	ret    
 29c:	b8 17 00 00 00       	mov    $0x17,%eax
 2a1:	cd 40                	int    $0x40
 2a3:	c3                   	ret    
 2a4:	55                   	push   %ebp
 2a5:	89 e5                	mov    %esp,%ebp
 2a7:	83 ec 1c             	sub    $0x1c,%esp
 2aa:	88 55 f4             	mov    %dl,-0xc(%ebp)
 2ad:	6a 01                	push   $0x1
 2af:	8d 55 f4             	lea    -0xc(%ebp),%edx
 2b2:	52                   	push   %edx
 2b3:	50                   	push   %eax
 2b4:	e8 5b ff ff ff       	call   0x214
 2b9:	83 c4 10             	add    $0x10,%esp
 2bc:	c9                   	leave  
 2bd:	c3                   	ret    
 2be:	55                   	push   %ebp
 2bf:	89 e5                	mov    %esp,%ebp
 2c1:	57                   	push   %edi
 2c2:	56                   	push   %esi
 2c3:	53                   	push   %ebx
 2c4:	83 ec 2c             	sub    $0x2c,%esp
 2c7:	89 45 d0             	mov    %eax,-0x30(%ebp)
 2ca:	89 d0                	mov    %edx,%eax
 2cc:	89 ce                	mov    %ecx,%esi
 2ce:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 2d2:	0f 95 c1             	setne  %cl
 2d5:	c1 ea 1f             	shr    $0x1f,%edx
 2d8:	84 d1                	test   %dl,%cl
 2da:	74 44                	je     0x320
 2dc:	f7 d8                	neg    %eax
 2de:	89 c1                	mov    %eax,%ecx
 2e0:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 2e7:	bb 00 00 00 00       	mov    $0x0,%ebx
 2ec:	89 c8                	mov    %ecx,%eax
 2ee:	ba 00 00 00 00       	mov    $0x0,%edx
 2f3:	f7 f6                	div    %esi
 2f5:	89 df                	mov    %ebx,%edi
 2f7:	83 c3 01             	add    $0x1,%ebx
 2fa:	0f b6 92 60 06 00 00 	movzbl 0x660(%edx),%edx
 301:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 305:	89 ca                	mov    %ecx,%edx
 307:	89 c1                	mov    %eax,%ecx
 309:	39 d6                	cmp    %edx,%esi
 30b:	76 df                	jbe    0x2ec
 30d:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 311:	74 31                	je     0x344
 313:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 318:	8d 5f 02             	lea    0x2(%edi),%ebx
 31b:	8b 75 d0             	mov    -0x30(%ebp),%esi
 31e:	eb 17                	jmp    0x337
 320:	89 c1                	mov    %eax,%ecx
 322:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 329:	eb bc                	jmp    0x2e7
 32b:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 330:	89 f0                	mov    %esi,%eax
 332:	e8 6d ff ff ff       	call   0x2a4
 337:	83 eb 01             	sub    $0x1,%ebx
 33a:	79 ef                	jns    0x32b
 33c:	83 c4 2c             	add    $0x2c,%esp
 33f:	5b                   	pop    %ebx
 340:	5e                   	pop    %esi
 341:	5f                   	pop    %edi
 342:	5d                   	pop    %ebp
 343:	c3                   	ret    
 344:	8b 75 d0             	mov    -0x30(%ebp),%esi
 347:	eb ee                	jmp    0x337
 349:	55                   	push   %ebp
 34a:	89 e5                	mov    %esp,%ebp
 34c:	57                   	push   %edi
 34d:	56                   	push   %esi
 34e:	53                   	push   %ebx
 34f:	83 ec 1c             	sub    $0x1c,%esp
 352:	8d 45 10             	lea    0x10(%ebp),%eax
 355:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 358:	be 00 00 00 00       	mov    $0x0,%esi
 35d:	bb 00 00 00 00       	mov    $0x0,%ebx
 362:	eb 14                	jmp    0x378
 364:	89 fa                	mov    %edi,%edx
 366:	8b 45 08             	mov    0x8(%ebp),%eax
 369:	e8 36 ff ff ff       	call   0x2a4
 36e:	eb 05                	jmp    0x375
 370:	83 fe 25             	cmp    $0x25,%esi
 373:	74 25                	je     0x39a
 375:	83 c3 01             	add    $0x1,%ebx
 378:	8b 45 0c             	mov    0xc(%ebp),%eax
 37b:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 37f:	84 c0                	test   %al,%al
 381:	0f 84 20 01 00 00    	je     0x4a7
 387:	0f be f8             	movsbl %al,%edi
 38a:	0f b6 c0             	movzbl %al,%eax
 38d:	85 f6                	test   %esi,%esi
 38f:	75 df                	jne    0x370
 391:	83 f8 25             	cmp    $0x25,%eax
 394:	75 ce                	jne    0x364
 396:	89 c6                	mov    %eax,%esi
 398:	eb db                	jmp    0x375
 39a:	83 f8 25             	cmp    $0x25,%eax
 39d:	0f 84 cf 00 00 00    	je     0x472
 3a3:	0f 8c dd 00 00 00    	jl     0x486
 3a9:	83 f8 78             	cmp    $0x78,%eax
 3ac:	0f 8f d4 00 00 00    	jg     0x486
 3b2:	83 f8 63             	cmp    $0x63,%eax
 3b5:	0f 8c cb 00 00 00    	jl     0x486
 3bb:	83 e8 63             	sub    $0x63,%eax
 3be:	83 f8 15             	cmp    $0x15,%eax
 3c1:	0f 87 bf 00 00 00    	ja     0x486
 3c7:	ff 24 85 08 06 00 00 	jmp    *0x608(,%eax,4)
 3ce:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 3d1:	8b 17                	mov    (%edi),%edx
 3d3:	83 ec 0c             	sub    $0xc,%esp
 3d6:	6a 01                	push   $0x1
 3d8:	b9 0a 00 00 00       	mov    $0xa,%ecx
 3dd:	8b 45 08             	mov    0x8(%ebp),%eax
 3e0:	e8 d9 fe ff ff       	call   0x2be
 3e5:	83 c7 04             	add    $0x4,%edi
 3e8:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 3eb:	83 c4 10             	add    $0x10,%esp
 3ee:	be 00 00 00 00       	mov    $0x0,%esi
 3f3:	eb 80                	jmp    0x375
 3f5:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 3f8:	8b 17                	mov    (%edi),%edx
 3fa:	83 ec 0c             	sub    $0xc,%esp
 3fd:	6a 00                	push   $0x0
 3ff:	b9 10 00 00 00       	mov    $0x10,%ecx
 404:	8b 45 08             	mov    0x8(%ebp),%eax
 407:	e8 b2 fe ff ff       	call   0x2be
 40c:	83 c7 04             	add    $0x4,%edi
 40f:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 412:	83 c4 10             	add    $0x10,%esp
 415:	be 00 00 00 00       	mov    $0x0,%esi
 41a:	e9 56 ff ff ff       	jmp    0x375
 41f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 422:	8b 30                	mov    (%eax),%esi
 424:	83 c0 04             	add    $0x4,%eax
 427:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 42a:	85 f6                	test   %esi,%esi
 42c:	75 15                	jne    0x443
 42e:	be 00 06 00 00       	mov    $0x600,%esi
 433:	eb 0e                	jmp    0x443
 435:	0f be d2             	movsbl %dl,%edx
 438:	8b 45 08             	mov    0x8(%ebp),%eax
 43b:	e8 64 fe ff ff       	call   0x2a4
 440:	83 c6 01             	add    $0x1,%esi
 443:	0f b6 16             	movzbl (%esi),%edx
 446:	84 d2                	test   %dl,%dl
 448:	75 eb                	jne    0x435
 44a:	be 00 00 00 00       	mov    $0x0,%esi
 44f:	e9 21 ff ff ff       	jmp    0x375
 454:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 457:	0f be 17             	movsbl (%edi),%edx
 45a:	8b 45 08             	mov    0x8(%ebp),%eax
 45d:	e8 42 fe ff ff       	call   0x2a4
 462:	83 c7 04             	add    $0x4,%edi
 465:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 468:	be 00 00 00 00       	mov    $0x0,%esi
 46d:	e9 03 ff ff ff       	jmp    0x375
 472:	89 fa                	mov    %edi,%edx
 474:	8b 45 08             	mov    0x8(%ebp),%eax
 477:	e8 28 fe ff ff       	call   0x2a4
 47c:	be 00 00 00 00       	mov    $0x0,%esi
 481:	e9 ef fe ff ff       	jmp    0x375
 486:	ba 25 00 00 00       	mov    $0x25,%edx
 48b:	8b 45 08             	mov    0x8(%ebp),%eax
 48e:	e8 11 fe ff ff       	call   0x2a4
 493:	89 fa                	mov    %edi,%edx
 495:	8b 45 08             	mov    0x8(%ebp),%eax
 498:	e8 07 fe ff ff       	call   0x2a4
 49d:	be 00 00 00 00       	mov    $0x0,%esi
 4a2:	e9 ce fe ff ff       	jmp    0x375
 4a7:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4aa:	5b                   	pop    %ebx
 4ab:	5e                   	pop    %esi
 4ac:	5f                   	pop    %edi
 4ad:	5d                   	pop    %ebp
 4ae:	c3                   	ret    
 4af:	f3 0f 1e fb          	endbr32 
 4b3:	55                   	push   %ebp
 4b4:	89 e5                	mov    %esp,%ebp
 4b6:	57                   	push   %edi
 4b7:	56                   	push   %esi
 4b8:	53                   	push   %ebx
 4b9:	8b 5d 08             	mov    0x8(%ebp),%ebx
 4bc:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 4bf:	a1 00 09 00 00       	mov    0x900,%eax
 4c4:	eb 02                	jmp    0x4c8
 4c6:	89 d0                	mov    %edx,%eax
 4c8:	39 c8                	cmp    %ecx,%eax
 4ca:	73 04                	jae    0x4d0
 4cc:	39 08                	cmp    %ecx,(%eax)
 4ce:	77 12                	ja     0x4e2
 4d0:	8b 10                	mov    (%eax),%edx
 4d2:	39 c2                	cmp    %eax,%edx
 4d4:	77 f0                	ja     0x4c6
 4d6:	39 c8                	cmp    %ecx,%eax
 4d8:	72 08                	jb     0x4e2
 4da:	39 ca                	cmp    %ecx,%edx
 4dc:	77 04                	ja     0x4e2
 4de:	89 d0                	mov    %edx,%eax
 4e0:	eb e6                	jmp    0x4c8
 4e2:	8b 73 fc             	mov    -0x4(%ebx),%esi
 4e5:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 4e8:	8b 10                	mov    (%eax),%edx
 4ea:	39 d7                	cmp    %edx,%edi
 4ec:	74 19                	je     0x507
 4ee:	89 53 f8             	mov    %edx,-0x8(%ebx)
 4f1:	8b 50 04             	mov    0x4(%eax),%edx
 4f4:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 4f7:	39 ce                	cmp    %ecx,%esi
 4f9:	74 1b                	je     0x516
 4fb:	89 08                	mov    %ecx,(%eax)
 4fd:	a3 00 09 00 00       	mov    %eax,0x900
 502:	5b                   	pop    %ebx
 503:	5e                   	pop    %esi
 504:	5f                   	pop    %edi
 505:	5d                   	pop    %ebp
 506:	c3                   	ret    
 507:	03 72 04             	add    0x4(%edx),%esi
 50a:	89 73 fc             	mov    %esi,-0x4(%ebx)
 50d:	8b 10                	mov    (%eax),%edx
 50f:	8b 12                	mov    (%edx),%edx
 511:	89 53 f8             	mov    %edx,-0x8(%ebx)
 514:	eb db                	jmp    0x4f1
 516:	03 53 fc             	add    -0x4(%ebx),%edx
 519:	89 50 04             	mov    %edx,0x4(%eax)
 51c:	8b 53 f8             	mov    -0x8(%ebx),%edx
 51f:	89 10                	mov    %edx,(%eax)
 521:	eb da                	jmp    0x4fd
 523:	55                   	push   %ebp
 524:	89 e5                	mov    %esp,%ebp
 526:	53                   	push   %ebx
 527:	83 ec 04             	sub    $0x4,%esp
 52a:	89 c3                	mov    %eax,%ebx
 52c:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 531:	77 05                	ja     0x538
 533:	bb 00 10 00 00       	mov    $0x1000,%ebx
 538:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 53f:	83 ec 0c             	sub    $0xc,%esp
 542:	50                   	push   %eax
 543:	e8 34 fd ff ff       	call   0x27c
 548:	83 c4 10             	add    $0x10,%esp
 54b:	83 f8 ff             	cmp    $0xffffffff,%eax
 54e:	74 1c                	je     0x56c
 550:	89 58 04             	mov    %ebx,0x4(%eax)
 553:	83 c0 08             	add    $0x8,%eax
 556:	83 ec 0c             	sub    $0xc,%esp
 559:	50                   	push   %eax
 55a:	e8 50 ff ff ff       	call   0x4af
 55f:	a1 00 09 00 00       	mov    0x900,%eax
 564:	83 c4 10             	add    $0x10,%esp
 567:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 56a:	c9                   	leave  
 56b:	c3                   	ret    
 56c:	b8 00 00 00 00       	mov    $0x0,%eax
 571:	eb f4                	jmp    0x567
 573:	f3 0f 1e fb          	endbr32 
 577:	55                   	push   %ebp
 578:	89 e5                	mov    %esp,%ebp
 57a:	53                   	push   %ebx
 57b:	83 ec 04             	sub    $0x4,%esp
 57e:	8b 45 08             	mov    0x8(%ebp),%eax
 581:	8d 58 07             	lea    0x7(%eax),%ebx
 584:	c1 eb 03             	shr    $0x3,%ebx
 587:	83 c3 01             	add    $0x1,%ebx
 58a:	8b 0d 00 09 00 00    	mov    0x900,%ecx
 590:	85 c9                	test   %ecx,%ecx
 592:	74 04                	je     0x598
 594:	8b 01                	mov    (%ecx),%eax
 596:	eb 4b                	jmp    0x5e3
 598:	c7 05 00 09 00 00 04 	movl   $0x904,0x900
 59f:	09 00 00 
 5a2:	c7 05 04 09 00 00 04 	movl   $0x904,0x904
 5a9:	09 00 00 
 5ac:	c7 05 08 09 00 00 00 	movl   $0x0,0x908
 5b3:	00 00 00 
 5b6:	b9 04 09 00 00       	mov    $0x904,%ecx
 5bb:	eb d7                	jmp    0x594
 5bd:	74 1a                	je     0x5d9
 5bf:	29 da                	sub    %ebx,%edx
 5c1:	89 50 04             	mov    %edx,0x4(%eax)
 5c4:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 5c7:	89 58 04             	mov    %ebx,0x4(%eax)
 5ca:	89 0d 00 09 00 00    	mov    %ecx,0x900
 5d0:	83 c0 08             	add    $0x8,%eax
 5d3:	83 c4 04             	add    $0x4,%esp
 5d6:	5b                   	pop    %ebx
 5d7:	5d                   	pop    %ebp
 5d8:	c3                   	ret    
 5d9:	8b 10                	mov    (%eax),%edx
 5db:	89 11                	mov    %edx,(%ecx)
 5dd:	eb eb                	jmp    0x5ca
 5df:	89 c1                	mov    %eax,%ecx
 5e1:	8b 00                	mov    (%eax),%eax
 5e3:	8b 50 04             	mov    0x4(%eax),%edx
 5e6:	39 da                	cmp    %ebx,%edx
 5e8:	73 d3                	jae    0x5bd
 5ea:	39 05 00 09 00 00    	cmp    %eax,0x900
 5f0:	75 ed                	jne    0x5df
 5f2:	89 d8                	mov    %ebx,%eax
 5f4:	e8 2a ff ff ff       	call   0x523
 5f9:	85 c0                	test   %eax,%eax
 5fb:	75 e2                	jne    0x5df
 5fd:	eb d4                	jmp    0x5d3
