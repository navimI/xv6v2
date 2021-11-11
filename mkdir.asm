
_mkdir:     file format elf32-i386


Disassembly of section .text:

00000000 <.text>:
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	push   -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	57                   	push   %edi
   e:	56                   	push   %esi
   f:	53                   	push   %ebx
  10:	51                   	push   %ecx
  11:	83 ec 18             	sub    $0x18,%esp
  14:	8b 39                	mov    (%ecx),%edi
  16:	8b 41 04             	mov    0x4(%ecx),%eax
  19:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  1c:	83 ff 01             	cmp    $0x1,%edi
  1f:	7e 07                	jle    0x28
  21:	bb 01 00 00 00       	mov    $0x1,%ebx
  26:	eb 17                	jmp    0x3f
  28:	83 ec 08             	sub    $0x8,%esp
  2b:	68 0c 06 00 00       	push   $0x60c
  30:	6a 02                	push   $0x2
  32:	e8 28 03 00 00       	call   0x35f
  37:	e8 d6 01 00 00       	call   0x212
  3c:	83 c3 01             	add    $0x1,%ebx
  3f:	39 fb                	cmp    %edi,%ebx
  41:	7d 2b                	jge    0x6e
  43:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  46:	8d 34 98             	lea    (%eax,%ebx,4),%esi
  49:	83 ec 0c             	sub    $0xc,%esp
  4c:	ff 36                	push   (%esi)
  4e:	e8 27 02 00 00       	call   0x27a
  53:	83 c4 10             	add    $0x10,%esp
  56:	85 c0                	test   %eax,%eax
  58:	79 e2                	jns    0x3c
  5a:	83 ec 04             	sub    $0x4,%esp
  5d:	ff 36                	push   (%esi)
  5f:	68 23 06 00 00       	push   $0x623
  64:	6a 02                	push   $0x2
  66:	e8 f4 02 00 00       	call   0x35f
  6b:	83 c4 10             	add    $0x10,%esp
  6e:	e8 9f 01 00 00       	call   0x212
  73:	55                   	push   %ebp
  74:	89 e5                	mov    %esp,%ebp
  76:	56                   	push   %esi
  77:	53                   	push   %ebx
  78:	8b 75 08             	mov    0x8(%ebp),%esi
  7b:	8b 55 0c             	mov    0xc(%ebp),%edx
  7e:	89 f0                	mov    %esi,%eax
  80:	89 d1                	mov    %edx,%ecx
  82:	83 c2 01             	add    $0x1,%edx
  85:	89 c3                	mov    %eax,%ebx
  87:	83 c0 01             	add    $0x1,%eax
  8a:	0f b6 09             	movzbl (%ecx),%ecx
  8d:	88 0b                	mov    %cl,(%ebx)
  8f:	84 c9                	test   %cl,%cl
  91:	75 ed                	jne    0x80
  93:	89 f0                	mov    %esi,%eax
  95:	5b                   	pop    %ebx
  96:	5e                   	pop    %esi
  97:	5d                   	pop    %ebp
  98:	c3                   	ret    
  99:	55                   	push   %ebp
  9a:	89 e5                	mov    %esp,%ebp
  9c:	8b 4d 08             	mov    0x8(%ebp),%ecx
  9f:	8b 55 0c             	mov    0xc(%ebp),%edx
  a2:	eb 06                	jmp    0xaa
  a4:	83 c1 01             	add    $0x1,%ecx
  a7:	83 c2 01             	add    $0x1,%edx
  aa:	0f b6 01             	movzbl (%ecx),%eax
  ad:	84 c0                	test   %al,%al
  af:	74 04                	je     0xb5
  b1:	3a 02                	cmp    (%edx),%al
  b3:	74 ef                	je     0xa4
  b5:	0f b6 c0             	movzbl %al,%eax
  b8:	0f b6 12             	movzbl (%edx),%edx
  bb:	29 d0                	sub    %edx,%eax
  bd:	5d                   	pop    %ebp
  be:	c3                   	ret    
  bf:	55                   	push   %ebp
  c0:	89 e5                	mov    %esp,%ebp
  c2:	8b 4d 08             	mov    0x8(%ebp),%ecx
  c5:	b8 00 00 00 00       	mov    $0x0,%eax
  ca:	eb 03                	jmp    0xcf
  cc:	83 c0 01             	add    $0x1,%eax
  cf:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
  d3:	75 f7                	jne    0xcc
  d5:	5d                   	pop    %ebp
  d6:	c3                   	ret    
  d7:	55                   	push   %ebp
  d8:	89 e5                	mov    %esp,%ebp
  da:	57                   	push   %edi
  db:	8b 55 08             	mov    0x8(%ebp),%edx
  de:	89 d7                	mov    %edx,%edi
  e0:	8b 4d 10             	mov    0x10(%ebp),%ecx
  e3:	8b 45 0c             	mov    0xc(%ebp),%eax
  e6:	fc                   	cld    
  e7:	f3 aa                	rep stos %al,%es:(%edi)
  e9:	89 d0                	mov    %edx,%eax
  eb:	8b 7d fc             	mov    -0x4(%ebp),%edi
  ee:	c9                   	leave  
  ef:	c3                   	ret    
  f0:	55                   	push   %ebp
  f1:	89 e5                	mov    %esp,%ebp
  f3:	8b 45 08             	mov    0x8(%ebp),%eax
  f6:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  fa:	eb 03                	jmp    0xff
  fc:	83 c0 01             	add    $0x1,%eax
  ff:	0f b6 10             	movzbl (%eax),%edx
 102:	84 d2                	test   %dl,%dl
 104:	74 06                	je     0x10c
 106:	38 ca                	cmp    %cl,%dl
 108:	75 f2                	jne    0xfc
 10a:	eb 05                	jmp    0x111
 10c:	b8 00 00 00 00       	mov    $0x0,%eax
 111:	5d                   	pop    %ebp
 112:	c3                   	ret    
 113:	55                   	push   %ebp
 114:	89 e5                	mov    %esp,%ebp
 116:	57                   	push   %edi
 117:	56                   	push   %esi
 118:	53                   	push   %ebx
 119:	83 ec 1c             	sub    $0x1c,%esp
 11c:	8b 7d 08             	mov    0x8(%ebp),%edi
 11f:	bb 00 00 00 00       	mov    $0x0,%ebx
 124:	89 de                	mov    %ebx,%esi
 126:	83 c3 01             	add    $0x1,%ebx
 129:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 12c:	7d 2e                	jge    0x15c
 12e:	83 ec 04             	sub    $0x4,%esp
 131:	6a 01                	push   $0x1
 133:	8d 45 e7             	lea    -0x19(%ebp),%eax
 136:	50                   	push   %eax
 137:	6a 00                	push   $0x0
 139:	e8 ec 00 00 00       	call   0x22a
 13e:	83 c4 10             	add    $0x10,%esp
 141:	85 c0                	test   %eax,%eax
 143:	7e 17                	jle    0x15c
 145:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 149:	88 04 37             	mov    %al,(%edi,%esi,1)
 14c:	3c 0a                	cmp    $0xa,%al
 14e:	0f 94 c2             	sete   %dl
 151:	3c 0d                	cmp    $0xd,%al
 153:	0f 94 c0             	sete   %al
 156:	08 c2                	or     %al,%dl
 158:	74 ca                	je     0x124
 15a:	89 de                	mov    %ebx,%esi
 15c:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 160:	89 f8                	mov    %edi,%eax
 162:	8d 65 f4             	lea    -0xc(%ebp),%esp
 165:	5b                   	pop    %ebx
 166:	5e                   	pop    %esi
 167:	5f                   	pop    %edi
 168:	5d                   	pop    %ebp
 169:	c3                   	ret    
 16a:	55                   	push   %ebp
 16b:	89 e5                	mov    %esp,%ebp
 16d:	56                   	push   %esi
 16e:	53                   	push   %ebx
 16f:	83 ec 08             	sub    $0x8,%esp
 172:	6a 00                	push   $0x0
 174:	ff 75 08             	push   0x8(%ebp)
 177:	e8 d6 00 00 00       	call   0x252
 17c:	83 c4 10             	add    $0x10,%esp
 17f:	85 c0                	test   %eax,%eax
 181:	78 24                	js     0x1a7
 183:	89 c3                	mov    %eax,%ebx
 185:	83 ec 08             	sub    $0x8,%esp
 188:	ff 75 0c             	push   0xc(%ebp)
 18b:	50                   	push   %eax
 18c:	e8 d9 00 00 00       	call   0x26a
 191:	89 c6                	mov    %eax,%esi
 193:	89 1c 24             	mov    %ebx,(%esp)
 196:	e8 9f 00 00 00       	call   0x23a
 19b:	83 c4 10             	add    $0x10,%esp
 19e:	89 f0                	mov    %esi,%eax
 1a0:	8d 65 f8             	lea    -0x8(%ebp),%esp
 1a3:	5b                   	pop    %ebx
 1a4:	5e                   	pop    %esi
 1a5:	5d                   	pop    %ebp
 1a6:	c3                   	ret    
 1a7:	be ff ff ff ff       	mov    $0xffffffff,%esi
 1ac:	eb f0                	jmp    0x19e
 1ae:	55                   	push   %ebp
 1af:	89 e5                	mov    %esp,%ebp
 1b1:	53                   	push   %ebx
 1b2:	8b 4d 08             	mov    0x8(%ebp),%ecx
 1b5:	ba 00 00 00 00       	mov    $0x0,%edx
 1ba:	eb 10                	jmp    0x1cc
 1bc:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 1bf:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 1c2:	83 c1 01             	add    $0x1,%ecx
 1c5:	0f be c0             	movsbl %al,%eax
 1c8:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 1cc:	0f b6 01             	movzbl (%ecx),%eax
 1cf:	8d 58 d0             	lea    -0x30(%eax),%ebx
 1d2:	80 fb 09             	cmp    $0x9,%bl
 1d5:	76 e5                	jbe    0x1bc
 1d7:	89 d0                	mov    %edx,%eax
 1d9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 1dc:	c9                   	leave  
 1dd:	c3                   	ret    
 1de:	55                   	push   %ebp
 1df:	89 e5                	mov    %esp,%ebp
 1e1:	56                   	push   %esi
 1e2:	53                   	push   %ebx
 1e3:	8b 75 08             	mov    0x8(%ebp),%esi
 1e6:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 1e9:	8b 45 10             	mov    0x10(%ebp),%eax
 1ec:	89 f2                	mov    %esi,%edx
 1ee:	eb 0d                	jmp    0x1fd
 1f0:	0f b6 01             	movzbl (%ecx),%eax
 1f3:	88 02                	mov    %al,(%edx)
 1f5:	8d 49 01             	lea    0x1(%ecx),%ecx
 1f8:	8d 52 01             	lea    0x1(%edx),%edx
 1fb:	89 d8                	mov    %ebx,%eax
 1fd:	8d 58 ff             	lea    -0x1(%eax),%ebx
 200:	85 c0                	test   %eax,%eax
 202:	7f ec                	jg     0x1f0
 204:	89 f0                	mov    %esi,%eax
 206:	5b                   	pop    %ebx
 207:	5e                   	pop    %esi
 208:	5d                   	pop    %ebp
 209:	c3                   	ret    
 20a:	b8 01 00 00 00       	mov    $0x1,%eax
 20f:	cd 40                	int    $0x40
 211:	c3                   	ret    
 212:	b8 02 00 00 00       	mov    $0x2,%eax
 217:	cd 40                	int    $0x40
 219:	c3                   	ret    
 21a:	b8 03 00 00 00       	mov    $0x3,%eax
 21f:	cd 40                	int    $0x40
 221:	c3                   	ret    
 222:	b8 04 00 00 00       	mov    $0x4,%eax
 227:	cd 40                	int    $0x40
 229:	c3                   	ret    
 22a:	b8 05 00 00 00       	mov    $0x5,%eax
 22f:	cd 40                	int    $0x40
 231:	c3                   	ret    
 232:	b8 10 00 00 00       	mov    $0x10,%eax
 237:	cd 40                	int    $0x40
 239:	c3                   	ret    
 23a:	b8 15 00 00 00       	mov    $0x15,%eax
 23f:	cd 40                	int    $0x40
 241:	c3                   	ret    
 242:	b8 06 00 00 00       	mov    $0x6,%eax
 247:	cd 40                	int    $0x40
 249:	c3                   	ret    
 24a:	b8 07 00 00 00       	mov    $0x7,%eax
 24f:	cd 40                	int    $0x40
 251:	c3                   	ret    
 252:	b8 0f 00 00 00       	mov    $0xf,%eax
 257:	cd 40                	int    $0x40
 259:	c3                   	ret    
 25a:	b8 11 00 00 00       	mov    $0x11,%eax
 25f:	cd 40                	int    $0x40
 261:	c3                   	ret    
 262:	b8 12 00 00 00       	mov    $0x12,%eax
 267:	cd 40                	int    $0x40
 269:	c3                   	ret    
 26a:	b8 08 00 00 00       	mov    $0x8,%eax
 26f:	cd 40                	int    $0x40
 271:	c3                   	ret    
 272:	b8 13 00 00 00       	mov    $0x13,%eax
 277:	cd 40                	int    $0x40
 279:	c3                   	ret    
 27a:	b8 14 00 00 00       	mov    $0x14,%eax
 27f:	cd 40                	int    $0x40
 281:	c3                   	ret    
 282:	b8 09 00 00 00       	mov    $0x9,%eax
 287:	cd 40                	int    $0x40
 289:	c3                   	ret    
 28a:	b8 0a 00 00 00       	mov    $0xa,%eax
 28f:	cd 40                	int    $0x40
 291:	c3                   	ret    
 292:	b8 0b 00 00 00       	mov    $0xb,%eax
 297:	cd 40                	int    $0x40
 299:	c3                   	ret    
 29a:	b8 0c 00 00 00       	mov    $0xc,%eax
 29f:	cd 40                	int    $0x40
 2a1:	c3                   	ret    
 2a2:	b8 0d 00 00 00       	mov    $0xd,%eax
 2a7:	cd 40                	int    $0x40
 2a9:	c3                   	ret    
 2aa:	b8 0e 00 00 00       	mov    $0xe,%eax
 2af:	cd 40                	int    $0x40
 2b1:	c3                   	ret    
 2b2:	b8 16 00 00 00       	mov    $0x16,%eax
 2b7:	cd 40                	int    $0x40
 2b9:	c3                   	ret    
 2ba:	55                   	push   %ebp
 2bb:	89 e5                	mov    %esp,%ebp
 2bd:	83 ec 1c             	sub    $0x1c,%esp
 2c0:	88 55 f4             	mov    %dl,-0xc(%ebp)
 2c3:	6a 01                	push   $0x1
 2c5:	8d 55 f4             	lea    -0xc(%ebp),%edx
 2c8:	52                   	push   %edx
 2c9:	50                   	push   %eax
 2ca:	e8 63 ff ff ff       	call   0x232
 2cf:	83 c4 10             	add    $0x10,%esp
 2d2:	c9                   	leave  
 2d3:	c3                   	ret    
 2d4:	55                   	push   %ebp
 2d5:	89 e5                	mov    %esp,%ebp
 2d7:	57                   	push   %edi
 2d8:	56                   	push   %esi
 2d9:	53                   	push   %ebx
 2da:	83 ec 2c             	sub    $0x2c,%esp
 2dd:	89 45 d0             	mov    %eax,-0x30(%ebp)
 2e0:	89 d0                	mov    %edx,%eax
 2e2:	89 ce                	mov    %ecx,%esi
 2e4:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 2e8:	0f 95 c1             	setne  %cl
 2eb:	c1 ea 1f             	shr    $0x1f,%edx
 2ee:	84 d1                	test   %dl,%cl
 2f0:	74 44                	je     0x336
 2f2:	f7 d8                	neg    %eax
 2f4:	89 c1                	mov    %eax,%ecx
 2f6:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 2fd:	bb 00 00 00 00       	mov    $0x0,%ebx
 302:	89 c8                	mov    %ecx,%eax
 304:	ba 00 00 00 00       	mov    $0x0,%edx
 309:	f7 f6                	div    %esi
 30b:	89 df                	mov    %ebx,%edi
 30d:	83 c3 01             	add    $0x1,%ebx
 310:	0f b6 92 a0 06 00 00 	movzbl 0x6a0(%edx),%edx
 317:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 31b:	89 ca                	mov    %ecx,%edx
 31d:	89 c1                	mov    %eax,%ecx
 31f:	39 d6                	cmp    %edx,%esi
 321:	76 df                	jbe    0x302
 323:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 327:	74 31                	je     0x35a
 329:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 32e:	8d 5f 02             	lea    0x2(%edi),%ebx
 331:	8b 75 d0             	mov    -0x30(%ebp),%esi
 334:	eb 17                	jmp    0x34d
 336:	89 c1                	mov    %eax,%ecx
 338:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 33f:	eb bc                	jmp    0x2fd
 341:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 346:	89 f0                	mov    %esi,%eax
 348:	e8 6d ff ff ff       	call   0x2ba
 34d:	83 eb 01             	sub    $0x1,%ebx
 350:	79 ef                	jns    0x341
 352:	83 c4 2c             	add    $0x2c,%esp
 355:	5b                   	pop    %ebx
 356:	5e                   	pop    %esi
 357:	5f                   	pop    %edi
 358:	5d                   	pop    %ebp
 359:	c3                   	ret    
 35a:	8b 75 d0             	mov    -0x30(%ebp),%esi
 35d:	eb ee                	jmp    0x34d
 35f:	55                   	push   %ebp
 360:	89 e5                	mov    %esp,%ebp
 362:	57                   	push   %edi
 363:	56                   	push   %esi
 364:	53                   	push   %ebx
 365:	83 ec 1c             	sub    $0x1c,%esp
 368:	8d 45 10             	lea    0x10(%ebp),%eax
 36b:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 36e:	be 00 00 00 00       	mov    $0x0,%esi
 373:	bb 00 00 00 00       	mov    $0x0,%ebx
 378:	eb 14                	jmp    0x38e
 37a:	89 fa                	mov    %edi,%edx
 37c:	8b 45 08             	mov    0x8(%ebp),%eax
 37f:	e8 36 ff ff ff       	call   0x2ba
 384:	eb 05                	jmp    0x38b
 386:	83 fe 25             	cmp    $0x25,%esi
 389:	74 25                	je     0x3b0
 38b:	83 c3 01             	add    $0x1,%ebx
 38e:	8b 45 0c             	mov    0xc(%ebp),%eax
 391:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 395:	84 c0                	test   %al,%al
 397:	0f 84 20 01 00 00    	je     0x4bd
 39d:	0f be f8             	movsbl %al,%edi
 3a0:	0f b6 c0             	movzbl %al,%eax
 3a3:	85 f6                	test   %esi,%esi
 3a5:	75 df                	jne    0x386
 3a7:	83 f8 25             	cmp    $0x25,%eax
 3aa:	75 ce                	jne    0x37a
 3ac:	89 c6                	mov    %eax,%esi
 3ae:	eb db                	jmp    0x38b
 3b0:	83 f8 25             	cmp    $0x25,%eax
 3b3:	0f 84 cf 00 00 00    	je     0x488
 3b9:	0f 8c dd 00 00 00    	jl     0x49c
 3bf:	83 f8 78             	cmp    $0x78,%eax
 3c2:	0f 8f d4 00 00 00    	jg     0x49c
 3c8:	83 f8 63             	cmp    $0x63,%eax
 3cb:	0f 8c cb 00 00 00    	jl     0x49c
 3d1:	83 e8 63             	sub    $0x63,%eax
 3d4:	83 f8 15             	cmp    $0x15,%eax
 3d7:	0f 87 bf 00 00 00    	ja     0x49c
 3dd:	ff 24 85 48 06 00 00 	jmp    *0x648(,%eax,4)
 3e4:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 3e7:	8b 17                	mov    (%edi),%edx
 3e9:	83 ec 0c             	sub    $0xc,%esp
 3ec:	6a 01                	push   $0x1
 3ee:	b9 0a 00 00 00       	mov    $0xa,%ecx
 3f3:	8b 45 08             	mov    0x8(%ebp),%eax
 3f6:	e8 d9 fe ff ff       	call   0x2d4
 3fb:	83 c7 04             	add    $0x4,%edi
 3fe:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 401:	83 c4 10             	add    $0x10,%esp
 404:	be 00 00 00 00       	mov    $0x0,%esi
 409:	eb 80                	jmp    0x38b
 40b:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 40e:	8b 17                	mov    (%edi),%edx
 410:	83 ec 0c             	sub    $0xc,%esp
 413:	6a 00                	push   $0x0
 415:	b9 10 00 00 00       	mov    $0x10,%ecx
 41a:	8b 45 08             	mov    0x8(%ebp),%eax
 41d:	e8 b2 fe ff ff       	call   0x2d4
 422:	83 c7 04             	add    $0x4,%edi
 425:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 428:	83 c4 10             	add    $0x10,%esp
 42b:	be 00 00 00 00       	mov    $0x0,%esi
 430:	e9 56 ff ff ff       	jmp    0x38b
 435:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 438:	8b 30                	mov    (%eax),%esi
 43a:	83 c0 04             	add    $0x4,%eax
 43d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 440:	85 f6                	test   %esi,%esi
 442:	75 15                	jne    0x459
 444:	be 3f 06 00 00       	mov    $0x63f,%esi
 449:	eb 0e                	jmp    0x459
 44b:	0f be d2             	movsbl %dl,%edx
 44e:	8b 45 08             	mov    0x8(%ebp),%eax
 451:	e8 64 fe ff ff       	call   0x2ba
 456:	83 c6 01             	add    $0x1,%esi
 459:	0f b6 16             	movzbl (%esi),%edx
 45c:	84 d2                	test   %dl,%dl
 45e:	75 eb                	jne    0x44b
 460:	be 00 00 00 00       	mov    $0x0,%esi
 465:	e9 21 ff ff ff       	jmp    0x38b
 46a:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 46d:	0f be 17             	movsbl (%edi),%edx
 470:	8b 45 08             	mov    0x8(%ebp),%eax
 473:	e8 42 fe ff ff       	call   0x2ba
 478:	83 c7 04             	add    $0x4,%edi
 47b:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 47e:	be 00 00 00 00       	mov    $0x0,%esi
 483:	e9 03 ff ff ff       	jmp    0x38b
 488:	89 fa                	mov    %edi,%edx
 48a:	8b 45 08             	mov    0x8(%ebp),%eax
 48d:	e8 28 fe ff ff       	call   0x2ba
 492:	be 00 00 00 00       	mov    $0x0,%esi
 497:	e9 ef fe ff ff       	jmp    0x38b
 49c:	ba 25 00 00 00       	mov    $0x25,%edx
 4a1:	8b 45 08             	mov    0x8(%ebp),%eax
 4a4:	e8 11 fe ff ff       	call   0x2ba
 4a9:	89 fa                	mov    %edi,%edx
 4ab:	8b 45 08             	mov    0x8(%ebp),%eax
 4ae:	e8 07 fe ff ff       	call   0x2ba
 4b3:	be 00 00 00 00       	mov    $0x0,%esi
 4b8:	e9 ce fe ff ff       	jmp    0x38b
 4bd:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4c0:	5b                   	pop    %ebx
 4c1:	5e                   	pop    %esi
 4c2:	5f                   	pop    %edi
 4c3:	5d                   	pop    %ebp
 4c4:	c3                   	ret    
 4c5:	55                   	push   %ebp
 4c6:	89 e5                	mov    %esp,%ebp
 4c8:	57                   	push   %edi
 4c9:	56                   	push   %esi
 4ca:	53                   	push   %ebx
 4cb:	8b 5d 08             	mov    0x8(%ebp),%ebx
 4ce:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 4d1:	a1 4c 09 00 00       	mov    0x94c,%eax
 4d6:	eb 02                	jmp    0x4da
 4d8:	89 d0                	mov    %edx,%eax
 4da:	39 c8                	cmp    %ecx,%eax
 4dc:	73 04                	jae    0x4e2
 4de:	39 08                	cmp    %ecx,(%eax)
 4e0:	77 12                	ja     0x4f4
 4e2:	8b 10                	mov    (%eax),%edx
 4e4:	39 c2                	cmp    %eax,%edx
 4e6:	77 f0                	ja     0x4d8
 4e8:	39 c8                	cmp    %ecx,%eax
 4ea:	72 08                	jb     0x4f4
 4ec:	39 ca                	cmp    %ecx,%edx
 4ee:	77 04                	ja     0x4f4
 4f0:	89 d0                	mov    %edx,%eax
 4f2:	eb e6                	jmp    0x4da
 4f4:	8b 73 fc             	mov    -0x4(%ebx),%esi
 4f7:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 4fa:	8b 10                	mov    (%eax),%edx
 4fc:	39 d7                	cmp    %edx,%edi
 4fe:	74 19                	je     0x519
 500:	89 53 f8             	mov    %edx,-0x8(%ebx)
 503:	8b 50 04             	mov    0x4(%eax),%edx
 506:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 509:	39 ce                	cmp    %ecx,%esi
 50b:	74 1b                	je     0x528
 50d:	89 08                	mov    %ecx,(%eax)
 50f:	a3 4c 09 00 00       	mov    %eax,0x94c
 514:	5b                   	pop    %ebx
 515:	5e                   	pop    %esi
 516:	5f                   	pop    %edi
 517:	5d                   	pop    %ebp
 518:	c3                   	ret    
 519:	03 72 04             	add    0x4(%edx),%esi
 51c:	89 73 fc             	mov    %esi,-0x4(%ebx)
 51f:	8b 10                	mov    (%eax),%edx
 521:	8b 12                	mov    (%edx),%edx
 523:	89 53 f8             	mov    %edx,-0x8(%ebx)
 526:	eb db                	jmp    0x503
 528:	03 53 fc             	add    -0x4(%ebx),%edx
 52b:	89 50 04             	mov    %edx,0x4(%eax)
 52e:	8b 53 f8             	mov    -0x8(%ebx),%edx
 531:	89 10                	mov    %edx,(%eax)
 533:	eb da                	jmp    0x50f
 535:	55                   	push   %ebp
 536:	89 e5                	mov    %esp,%ebp
 538:	53                   	push   %ebx
 539:	83 ec 04             	sub    $0x4,%esp
 53c:	89 c3                	mov    %eax,%ebx
 53e:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 543:	77 05                	ja     0x54a
 545:	bb 00 10 00 00       	mov    $0x1000,%ebx
 54a:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 551:	83 ec 0c             	sub    $0xc,%esp
 554:	50                   	push   %eax
 555:	e8 40 fd ff ff       	call   0x29a
 55a:	83 c4 10             	add    $0x10,%esp
 55d:	83 f8 ff             	cmp    $0xffffffff,%eax
 560:	74 1c                	je     0x57e
 562:	89 58 04             	mov    %ebx,0x4(%eax)
 565:	83 c0 08             	add    $0x8,%eax
 568:	83 ec 0c             	sub    $0xc,%esp
 56b:	50                   	push   %eax
 56c:	e8 54 ff ff ff       	call   0x4c5
 571:	a1 4c 09 00 00       	mov    0x94c,%eax
 576:	83 c4 10             	add    $0x10,%esp
 579:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 57c:	c9                   	leave  
 57d:	c3                   	ret    
 57e:	b8 00 00 00 00       	mov    $0x0,%eax
 583:	eb f4                	jmp    0x579
 585:	55                   	push   %ebp
 586:	89 e5                	mov    %esp,%ebp
 588:	53                   	push   %ebx
 589:	83 ec 04             	sub    $0x4,%esp
 58c:	8b 45 08             	mov    0x8(%ebp),%eax
 58f:	8d 58 07             	lea    0x7(%eax),%ebx
 592:	c1 eb 03             	shr    $0x3,%ebx
 595:	83 c3 01             	add    $0x1,%ebx
 598:	8b 0d 4c 09 00 00    	mov    0x94c,%ecx
 59e:	85 c9                	test   %ecx,%ecx
 5a0:	74 04                	je     0x5a6
 5a2:	8b 01                	mov    (%ecx),%eax
 5a4:	eb 4a                	jmp    0x5f0
 5a6:	c7 05 4c 09 00 00 50 	movl   $0x950,0x94c
 5ad:	09 00 00 
 5b0:	c7 05 50 09 00 00 50 	movl   $0x950,0x950
 5b7:	09 00 00 
 5ba:	c7 05 54 09 00 00 00 	movl   $0x0,0x954
 5c1:	00 00 00 
 5c4:	b9 50 09 00 00       	mov    $0x950,%ecx
 5c9:	eb d7                	jmp    0x5a2
 5cb:	74 19                	je     0x5e6
 5cd:	29 da                	sub    %ebx,%edx
 5cf:	89 50 04             	mov    %edx,0x4(%eax)
 5d2:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 5d5:	89 58 04             	mov    %ebx,0x4(%eax)
 5d8:	89 0d 4c 09 00 00    	mov    %ecx,0x94c
 5de:	83 c0 08             	add    $0x8,%eax
 5e1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 5e4:	c9                   	leave  
 5e5:	c3                   	ret    
 5e6:	8b 10                	mov    (%eax),%edx
 5e8:	89 11                	mov    %edx,(%ecx)
 5ea:	eb ec                	jmp    0x5d8
 5ec:	89 c1                	mov    %eax,%ecx
 5ee:	8b 00                	mov    (%eax),%eax
 5f0:	8b 50 04             	mov    0x4(%eax),%edx
 5f3:	39 da                	cmp    %ebx,%edx
 5f5:	73 d4                	jae    0x5cb
 5f7:	39 05 4c 09 00 00    	cmp    %eax,0x94c
 5fd:	75 ed                	jne    0x5ec
 5ff:	89 d8                	mov    %ebx,%eax
 601:	e8 2f ff ff ff       	call   0x535
 606:	85 c0                	test   %eax,%eax
 608:	75 e2                	jne    0x5ec
 60a:	eb d5                	jmp    0x5e1
