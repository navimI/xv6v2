
_kill:     file format elf32-i386


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
  11:	83 ec 08             	sub    $0x8,%esp
  14:	8b 31                	mov    (%ecx),%esi
  16:	8b 79 04             	mov    0x4(%ecx),%edi
  19:	83 fe 01             	cmp    $0x1,%esi
  1c:	7e 07                	jle    0x25
  1e:	bb 01 00 00 00       	mov    $0x1,%ebx
  23:	eb 34                	jmp    0x59
  25:	83 ec 08             	sub    $0x8,%esp
  28:	68 30 06 00 00       	push   $0x630
  2d:	6a 02                	push   $0x2
  2f:	e8 45 03 00 00       	call   0x379
  34:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  3b:	e8 e4 01 00 00       	call   0x224
  40:	83 ec 0c             	sub    $0xc,%esp
  43:	ff 34 9f             	push   (%edi,%ebx,4)
  46:	e8 6f 01 00 00       	call   0x1ba
  4b:	89 04 24             	mov    %eax,(%esp)
  4e:	e8 01 02 00 00       	call   0x254
  53:	83 c3 01             	add    $0x1,%ebx
  56:	83 c4 10             	add    $0x10,%esp
  59:	39 f3                	cmp    %esi,%ebx
  5b:	7c e3                	jl     0x40
  5d:	83 ec 0c             	sub    $0xc,%esp
  60:	6a 00                	push   $0x0
  62:	e8 bd 01 00 00       	call   0x224
  67:	f3 0f 1e fb          	endbr32 
  6b:	55                   	push   %ebp
  6c:	89 e5                	mov    %esp,%ebp
  6e:	56                   	push   %esi
  6f:	53                   	push   %ebx
  70:	8b 75 08             	mov    0x8(%ebp),%esi
  73:	8b 55 0c             	mov    0xc(%ebp),%edx
  76:	89 f0                	mov    %esi,%eax
  78:	89 d1                	mov    %edx,%ecx
  7a:	83 c2 01             	add    $0x1,%edx
  7d:	89 c3                	mov    %eax,%ebx
  7f:	83 c0 01             	add    $0x1,%eax
  82:	0f b6 09             	movzbl (%ecx),%ecx
  85:	88 0b                	mov    %cl,(%ebx)
  87:	84 c9                	test   %cl,%cl
  89:	75 ed                	jne    0x78
  8b:	89 f0                	mov    %esi,%eax
  8d:	5b                   	pop    %ebx
  8e:	5e                   	pop    %esi
  8f:	5d                   	pop    %ebp
  90:	c3                   	ret    
  91:	f3 0f 1e fb          	endbr32 
  95:	55                   	push   %ebp
  96:	89 e5                	mov    %esp,%ebp
  98:	8b 4d 08             	mov    0x8(%ebp),%ecx
  9b:	8b 55 0c             	mov    0xc(%ebp),%edx
  9e:	0f b6 01             	movzbl (%ecx),%eax
  a1:	84 c0                	test   %al,%al
  a3:	74 0c                	je     0xb1
  a5:	3a 02                	cmp    (%edx),%al
  a7:	75 08                	jne    0xb1
  a9:	83 c1 01             	add    $0x1,%ecx
  ac:	83 c2 01             	add    $0x1,%edx
  af:	eb ed                	jmp    0x9e
  b1:	0f b6 c0             	movzbl %al,%eax
  b4:	0f b6 12             	movzbl (%edx),%edx
  b7:	29 d0                	sub    %edx,%eax
  b9:	5d                   	pop    %ebp
  ba:	c3                   	ret    
  bb:	f3 0f 1e fb          	endbr32 
  bf:	55                   	push   %ebp
  c0:	89 e5                	mov    %esp,%ebp
  c2:	8b 4d 08             	mov    0x8(%ebp),%ecx
  c5:	b8 00 00 00 00       	mov    $0x0,%eax
  ca:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
  ce:	74 05                	je     0xd5
  d0:	83 c0 01             	add    $0x1,%eax
  d3:	eb f5                	jmp    0xca
  d5:	5d                   	pop    %ebp
  d6:	c3                   	ret    
  d7:	f3 0f 1e fb          	endbr32 
  db:	55                   	push   %ebp
  dc:	89 e5                	mov    %esp,%ebp
  de:	57                   	push   %edi
  df:	8b 55 08             	mov    0x8(%ebp),%edx
  e2:	89 d7                	mov    %edx,%edi
  e4:	8b 4d 10             	mov    0x10(%ebp),%ecx
  e7:	8b 45 0c             	mov    0xc(%ebp),%eax
  ea:	fc                   	cld    
  eb:	f3 aa                	rep stos %al,%es:(%edi)
  ed:	89 d0                	mov    %edx,%eax
  ef:	5f                   	pop    %edi
  f0:	5d                   	pop    %ebp
  f1:	c3                   	ret    
  f2:	f3 0f 1e fb          	endbr32 
  f6:	55                   	push   %ebp
  f7:	89 e5                	mov    %esp,%ebp
  f9:	8b 45 08             	mov    0x8(%ebp),%eax
  fc:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
 100:	0f b6 10             	movzbl (%eax),%edx
 103:	84 d2                	test   %dl,%dl
 105:	74 09                	je     0x110
 107:	38 ca                	cmp    %cl,%dl
 109:	74 0a                	je     0x115
 10b:	83 c0 01             	add    $0x1,%eax
 10e:	eb f0                	jmp    0x100
 110:	b8 00 00 00 00       	mov    $0x0,%eax
 115:	5d                   	pop    %ebp
 116:	c3                   	ret    
 117:	f3 0f 1e fb          	endbr32 
 11b:	55                   	push   %ebp
 11c:	89 e5                	mov    %esp,%ebp
 11e:	57                   	push   %edi
 11f:	56                   	push   %esi
 120:	53                   	push   %ebx
 121:	83 ec 1c             	sub    $0x1c,%esp
 124:	8b 7d 08             	mov    0x8(%ebp),%edi
 127:	bb 00 00 00 00       	mov    $0x0,%ebx
 12c:	89 de                	mov    %ebx,%esi
 12e:	83 c3 01             	add    $0x1,%ebx
 131:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 134:	7d 2e                	jge    0x164
 136:	83 ec 04             	sub    $0x4,%esp
 139:	6a 01                	push   $0x1
 13b:	8d 45 e7             	lea    -0x19(%ebp),%eax
 13e:	50                   	push   %eax
 13f:	6a 00                	push   $0x0
 141:	e8 f6 00 00 00       	call   0x23c
 146:	83 c4 10             	add    $0x10,%esp
 149:	85 c0                	test   %eax,%eax
 14b:	7e 17                	jle    0x164
 14d:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 151:	88 04 37             	mov    %al,(%edi,%esi,1)
 154:	3c 0a                	cmp    $0xa,%al
 156:	0f 94 c2             	sete   %dl
 159:	3c 0d                	cmp    $0xd,%al
 15b:	0f 94 c0             	sete   %al
 15e:	08 c2                	or     %al,%dl
 160:	74 ca                	je     0x12c
 162:	89 de                	mov    %ebx,%esi
 164:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 168:	89 f8                	mov    %edi,%eax
 16a:	8d 65 f4             	lea    -0xc(%ebp),%esp
 16d:	5b                   	pop    %ebx
 16e:	5e                   	pop    %esi
 16f:	5f                   	pop    %edi
 170:	5d                   	pop    %ebp
 171:	c3                   	ret    
 172:	f3 0f 1e fb          	endbr32 
 176:	55                   	push   %ebp
 177:	89 e5                	mov    %esp,%ebp
 179:	56                   	push   %esi
 17a:	53                   	push   %ebx
 17b:	83 ec 08             	sub    $0x8,%esp
 17e:	6a 00                	push   $0x0
 180:	ff 75 08             	push   0x8(%ebp)
 183:	e8 dc 00 00 00       	call   0x264
 188:	83 c4 10             	add    $0x10,%esp
 18b:	85 c0                	test   %eax,%eax
 18d:	78 24                	js     0x1b3
 18f:	89 c3                	mov    %eax,%ebx
 191:	83 ec 08             	sub    $0x8,%esp
 194:	ff 75 0c             	push   0xc(%ebp)
 197:	50                   	push   %eax
 198:	e8 df 00 00 00       	call   0x27c
 19d:	89 c6                	mov    %eax,%esi
 19f:	89 1c 24             	mov    %ebx,(%esp)
 1a2:	e8 a5 00 00 00       	call   0x24c
 1a7:	83 c4 10             	add    $0x10,%esp
 1aa:	89 f0                	mov    %esi,%eax
 1ac:	8d 65 f8             	lea    -0x8(%ebp),%esp
 1af:	5b                   	pop    %ebx
 1b0:	5e                   	pop    %esi
 1b1:	5d                   	pop    %ebp
 1b2:	c3                   	ret    
 1b3:	be ff ff ff ff       	mov    $0xffffffff,%esi
 1b8:	eb f0                	jmp    0x1aa
 1ba:	f3 0f 1e fb          	endbr32 
 1be:	55                   	push   %ebp
 1bf:	89 e5                	mov    %esp,%ebp
 1c1:	53                   	push   %ebx
 1c2:	8b 4d 08             	mov    0x8(%ebp),%ecx
 1c5:	ba 00 00 00 00       	mov    $0x0,%edx
 1ca:	0f b6 01             	movzbl (%ecx),%eax
 1cd:	8d 58 d0             	lea    -0x30(%eax),%ebx
 1d0:	80 fb 09             	cmp    $0x9,%bl
 1d3:	77 12                	ja     0x1e7
 1d5:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 1d8:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 1db:	83 c1 01             	add    $0x1,%ecx
 1de:	0f be c0             	movsbl %al,%eax
 1e1:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 1e5:	eb e3                	jmp    0x1ca
 1e7:	89 d0                	mov    %edx,%eax
 1e9:	5b                   	pop    %ebx
 1ea:	5d                   	pop    %ebp
 1eb:	c3                   	ret    
 1ec:	f3 0f 1e fb          	endbr32 
 1f0:	55                   	push   %ebp
 1f1:	89 e5                	mov    %esp,%ebp
 1f3:	56                   	push   %esi
 1f4:	53                   	push   %ebx
 1f5:	8b 75 08             	mov    0x8(%ebp),%esi
 1f8:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 1fb:	8b 45 10             	mov    0x10(%ebp),%eax
 1fe:	89 f2                	mov    %esi,%edx
 200:	8d 58 ff             	lea    -0x1(%eax),%ebx
 203:	85 c0                	test   %eax,%eax
 205:	7e 0f                	jle    0x216
 207:	0f b6 01             	movzbl (%ecx),%eax
 20a:	88 02                	mov    %al,(%edx)
 20c:	8d 49 01             	lea    0x1(%ecx),%ecx
 20f:	8d 52 01             	lea    0x1(%edx),%edx
 212:	89 d8                	mov    %ebx,%eax
 214:	eb ea                	jmp    0x200
 216:	89 f0                	mov    %esi,%eax
 218:	5b                   	pop    %ebx
 219:	5e                   	pop    %esi
 21a:	5d                   	pop    %ebp
 21b:	c3                   	ret    
 21c:	b8 01 00 00 00       	mov    $0x1,%eax
 221:	cd 40                	int    $0x40
 223:	c3                   	ret    
 224:	b8 02 00 00 00       	mov    $0x2,%eax
 229:	cd 40                	int    $0x40
 22b:	c3                   	ret    
 22c:	b8 03 00 00 00       	mov    $0x3,%eax
 231:	cd 40                	int    $0x40
 233:	c3                   	ret    
 234:	b8 04 00 00 00       	mov    $0x4,%eax
 239:	cd 40                	int    $0x40
 23b:	c3                   	ret    
 23c:	b8 05 00 00 00       	mov    $0x5,%eax
 241:	cd 40                	int    $0x40
 243:	c3                   	ret    
 244:	b8 10 00 00 00       	mov    $0x10,%eax
 249:	cd 40                	int    $0x40
 24b:	c3                   	ret    
 24c:	b8 15 00 00 00       	mov    $0x15,%eax
 251:	cd 40                	int    $0x40
 253:	c3                   	ret    
 254:	b8 06 00 00 00       	mov    $0x6,%eax
 259:	cd 40                	int    $0x40
 25b:	c3                   	ret    
 25c:	b8 07 00 00 00       	mov    $0x7,%eax
 261:	cd 40                	int    $0x40
 263:	c3                   	ret    
 264:	b8 0f 00 00 00       	mov    $0xf,%eax
 269:	cd 40                	int    $0x40
 26b:	c3                   	ret    
 26c:	b8 11 00 00 00       	mov    $0x11,%eax
 271:	cd 40                	int    $0x40
 273:	c3                   	ret    
 274:	b8 12 00 00 00       	mov    $0x12,%eax
 279:	cd 40                	int    $0x40
 27b:	c3                   	ret    
 27c:	b8 08 00 00 00       	mov    $0x8,%eax
 281:	cd 40                	int    $0x40
 283:	c3                   	ret    
 284:	b8 13 00 00 00       	mov    $0x13,%eax
 289:	cd 40                	int    $0x40
 28b:	c3                   	ret    
 28c:	b8 14 00 00 00       	mov    $0x14,%eax
 291:	cd 40                	int    $0x40
 293:	c3                   	ret    
 294:	b8 09 00 00 00       	mov    $0x9,%eax
 299:	cd 40                	int    $0x40
 29b:	c3                   	ret    
 29c:	b8 0a 00 00 00       	mov    $0xa,%eax
 2a1:	cd 40                	int    $0x40
 2a3:	c3                   	ret    
 2a4:	b8 0b 00 00 00       	mov    $0xb,%eax
 2a9:	cd 40                	int    $0x40
 2ab:	c3                   	ret    
 2ac:	b8 0c 00 00 00       	mov    $0xc,%eax
 2b1:	cd 40                	int    $0x40
 2b3:	c3                   	ret    
 2b4:	b8 0d 00 00 00       	mov    $0xd,%eax
 2b9:	cd 40                	int    $0x40
 2bb:	c3                   	ret    
 2bc:	b8 0e 00 00 00       	mov    $0xe,%eax
 2c1:	cd 40                	int    $0x40
 2c3:	c3                   	ret    
 2c4:	b8 16 00 00 00       	mov    $0x16,%eax
 2c9:	cd 40                	int    $0x40
 2cb:	c3                   	ret    
 2cc:	b8 17 00 00 00       	mov    $0x17,%eax
 2d1:	cd 40                	int    $0x40
 2d3:	c3                   	ret    
 2d4:	55                   	push   %ebp
 2d5:	89 e5                	mov    %esp,%ebp
 2d7:	83 ec 1c             	sub    $0x1c,%esp
 2da:	88 55 f4             	mov    %dl,-0xc(%ebp)
 2dd:	6a 01                	push   $0x1
 2df:	8d 55 f4             	lea    -0xc(%ebp),%edx
 2e2:	52                   	push   %edx
 2e3:	50                   	push   %eax
 2e4:	e8 5b ff ff ff       	call   0x244
 2e9:	83 c4 10             	add    $0x10,%esp
 2ec:	c9                   	leave  
 2ed:	c3                   	ret    
 2ee:	55                   	push   %ebp
 2ef:	89 e5                	mov    %esp,%ebp
 2f1:	57                   	push   %edi
 2f2:	56                   	push   %esi
 2f3:	53                   	push   %ebx
 2f4:	83 ec 2c             	sub    $0x2c,%esp
 2f7:	89 45 d0             	mov    %eax,-0x30(%ebp)
 2fa:	89 d0                	mov    %edx,%eax
 2fc:	89 ce                	mov    %ecx,%esi
 2fe:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 302:	0f 95 c1             	setne  %cl
 305:	c1 ea 1f             	shr    $0x1f,%edx
 308:	84 d1                	test   %dl,%cl
 30a:	74 44                	je     0x350
 30c:	f7 d8                	neg    %eax
 30e:	89 c1                	mov    %eax,%ecx
 310:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 317:	bb 00 00 00 00       	mov    $0x0,%ebx
 31c:	89 c8                	mov    %ecx,%eax
 31e:	ba 00 00 00 00       	mov    $0x0,%edx
 323:	f7 f6                	div    %esi
 325:	89 df                	mov    %ebx,%edi
 327:	83 c3 01             	add    $0x1,%ebx
 32a:	0f b6 92 a4 06 00 00 	movzbl 0x6a4(%edx),%edx
 331:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 335:	89 ca                	mov    %ecx,%edx
 337:	89 c1                	mov    %eax,%ecx
 339:	39 d6                	cmp    %edx,%esi
 33b:	76 df                	jbe    0x31c
 33d:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 341:	74 31                	je     0x374
 343:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 348:	8d 5f 02             	lea    0x2(%edi),%ebx
 34b:	8b 75 d0             	mov    -0x30(%ebp),%esi
 34e:	eb 17                	jmp    0x367
 350:	89 c1                	mov    %eax,%ecx
 352:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 359:	eb bc                	jmp    0x317
 35b:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 360:	89 f0                	mov    %esi,%eax
 362:	e8 6d ff ff ff       	call   0x2d4
 367:	83 eb 01             	sub    $0x1,%ebx
 36a:	79 ef                	jns    0x35b
 36c:	83 c4 2c             	add    $0x2c,%esp
 36f:	5b                   	pop    %ebx
 370:	5e                   	pop    %esi
 371:	5f                   	pop    %edi
 372:	5d                   	pop    %ebp
 373:	c3                   	ret    
 374:	8b 75 d0             	mov    -0x30(%ebp),%esi
 377:	eb ee                	jmp    0x367
 379:	55                   	push   %ebp
 37a:	89 e5                	mov    %esp,%ebp
 37c:	57                   	push   %edi
 37d:	56                   	push   %esi
 37e:	53                   	push   %ebx
 37f:	83 ec 1c             	sub    $0x1c,%esp
 382:	8d 45 10             	lea    0x10(%ebp),%eax
 385:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 388:	be 00 00 00 00       	mov    $0x0,%esi
 38d:	bb 00 00 00 00       	mov    $0x0,%ebx
 392:	eb 14                	jmp    0x3a8
 394:	89 fa                	mov    %edi,%edx
 396:	8b 45 08             	mov    0x8(%ebp),%eax
 399:	e8 36 ff ff ff       	call   0x2d4
 39e:	eb 05                	jmp    0x3a5
 3a0:	83 fe 25             	cmp    $0x25,%esi
 3a3:	74 25                	je     0x3ca
 3a5:	83 c3 01             	add    $0x1,%ebx
 3a8:	8b 45 0c             	mov    0xc(%ebp),%eax
 3ab:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 3af:	84 c0                	test   %al,%al
 3b1:	0f 84 20 01 00 00    	je     0x4d7
 3b7:	0f be f8             	movsbl %al,%edi
 3ba:	0f b6 c0             	movzbl %al,%eax
 3bd:	85 f6                	test   %esi,%esi
 3bf:	75 df                	jne    0x3a0
 3c1:	83 f8 25             	cmp    $0x25,%eax
 3c4:	75 ce                	jne    0x394
 3c6:	89 c6                	mov    %eax,%esi
 3c8:	eb db                	jmp    0x3a5
 3ca:	83 f8 25             	cmp    $0x25,%eax
 3cd:	0f 84 cf 00 00 00    	je     0x4a2
 3d3:	0f 8c dd 00 00 00    	jl     0x4b6
 3d9:	83 f8 78             	cmp    $0x78,%eax
 3dc:	0f 8f d4 00 00 00    	jg     0x4b6
 3e2:	83 f8 63             	cmp    $0x63,%eax
 3e5:	0f 8c cb 00 00 00    	jl     0x4b6
 3eb:	83 e8 63             	sub    $0x63,%eax
 3ee:	83 f8 15             	cmp    $0x15,%eax
 3f1:	0f 87 bf 00 00 00    	ja     0x4b6
 3f7:	ff 24 85 4c 06 00 00 	jmp    *0x64c(,%eax,4)
 3fe:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 401:	8b 17                	mov    (%edi),%edx
 403:	83 ec 0c             	sub    $0xc,%esp
 406:	6a 01                	push   $0x1
 408:	b9 0a 00 00 00       	mov    $0xa,%ecx
 40d:	8b 45 08             	mov    0x8(%ebp),%eax
 410:	e8 d9 fe ff ff       	call   0x2ee
 415:	83 c7 04             	add    $0x4,%edi
 418:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 41b:	83 c4 10             	add    $0x10,%esp
 41e:	be 00 00 00 00       	mov    $0x0,%esi
 423:	eb 80                	jmp    0x3a5
 425:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 428:	8b 17                	mov    (%edi),%edx
 42a:	83 ec 0c             	sub    $0xc,%esp
 42d:	6a 00                	push   $0x0
 42f:	b9 10 00 00 00       	mov    $0x10,%ecx
 434:	8b 45 08             	mov    0x8(%ebp),%eax
 437:	e8 b2 fe ff ff       	call   0x2ee
 43c:	83 c7 04             	add    $0x4,%edi
 43f:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 442:	83 c4 10             	add    $0x10,%esp
 445:	be 00 00 00 00       	mov    $0x0,%esi
 44a:	e9 56 ff ff ff       	jmp    0x3a5
 44f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 452:	8b 30                	mov    (%eax),%esi
 454:	83 c0 04             	add    $0x4,%eax
 457:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 45a:	85 f6                	test   %esi,%esi
 45c:	75 15                	jne    0x473
 45e:	be 44 06 00 00       	mov    $0x644,%esi
 463:	eb 0e                	jmp    0x473
 465:	0f be d2             	movsbl %dl,%edx
 468:	8b 45 08             	mov    0x8(%ebp),%eax
 46b:	e8 64 fe ff ff       	call   0x2d4
 470:	83 c6 01             	add    $0x1,%esi
 473:	0f b6 16             	movzbl (%esi),%edx
 476:	84 d2                	test   %dl,%dl
 478:	75 eb                	jne    0x465
 47a:	be 00 00 00 00       	mov    $0x0,%esi
 47f:	e9 21 ff ff ff       	jmp    0x3a5
 484:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 487:	0f be 17             	movsbl (%edi),%edx
 48a:	8b 45 08             	mov    0x8(%ebp),%eax
 48d:	e8 42 fe ff ff       	call   0x2d4
 492:	83 c7 04             	add    $0x4,%edi
 495:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 498:	be 00 00 00 00       	mov    $0x0,%esi
 49d:	e9 03 ff ff ff       	jmp    0x3a5
 4a2:	89 fa                	mov    %edi,%edx
 4a4:	8b 45 08             	mov    0x8(%ebp),%eax
 4a7:	e8 28 fe ff ff       	call   0x2d4
 4ac:	be 00 00 00 00       	mov    $0x0,%esi
 4b1:	e9 ef fe ff ff       	jmp    0x3a5
 4b6:	ba 25 00 00 00       	mov    $0x25,%edx
 4bb:	8b 45 08             	mov    0x8(%ebp),%eax
 4be:	e8 11 fe ff ff       	call   0x2d4
 4c3:	89 fa                	mov    %edi,%edx
 4c5:	8b 45 08             	mov    0x8(%ebp),%eax
 4c8:	e8 07 fe ff ff       	call   0x2d4
 4cd:	be 00 00 00 00       	mov    $0x0,%esi
 4d2:	e9 ce fe ff ff       	jmp    0x3a5
 4d7:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4da:	5b                   	pop    %ebx
 4db:	5e                   	pop    %esi
 4dc:	5f                   	pop    %edi
 4dd:	5d                   	pop    %ebp
 4de:	c3                   	ret    
 4df:	f3 0f 1e fb          	endbr32 
 4e3:	55                   	push   %ebp
 4e4:	89 e5                	mov    %esp,%ebp
 4e6:	57                   	push   %edi
 4e7:	56                   	push   %esi
 4e8:	53                   	push   %ebx
 4e9:	8b 5d 08             	mov    0x8(%ebp),%ebx
 4ec:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 4ef:	a1 50 09 00 00       	mov    0x950,%eax
 4f4:	eb 02                	jmp    0x4f8
 4f6:	89 d0                	mov    %edx,%eax
 4f8:	39 c8                	cmp    %ecx,%eax
 4fa:	73 04                	jae    0x500
 4fc:	39 08                	cmp    %ecx,(%eax)
 4fe:	77 12                	ja     0x512
 500:	8b 10                	mov    (%eax),%edx
 502:	39 c2                	cmp    %eax,%edx
 504:	77 f0                	ja     0x4f6
 506:	39 c8                	cmp    %ecx,%eax
 508:	72 08                	jb     0x512
 50a:	39 ca                	cmp    %ecx,%edx
 50c:	77 04                	ja     0x512
 50e:	89 d0                	mov    %edx,%eax
 510:	eb e6                	jmp    0x4f8
 512:	8b 73 fc             	mov    -0x4(%ebx),%esi
 515:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 518:	8b 10                	mov    (%eax),%edx
 51a:	39 d7                	cmp    %edx,%edi
 51c:	74 19                	je     0x537
 51e:	89 53 f8             	mov    %edx,-0x8(%ebx)
 521:	8b 50 04             	mov    0x4(%eax),%edx
 524:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 527:	39 ce                	cmp    %ecx,%esi
 529:	74 1b                	je     0x546
 52b:	89 08                	mov    %ecx,(%eax)
 52d:	a3 50 09 00 00       	mov    %eax,0x950
 532:	5b                   	pop    %ebx
 533:	5e                   	pop    %esi
 534:	5f                   	pop    %edi
 535:	5d                   	pop    %ebp
 536:	c3                   	ret    
 537:	03 72 04             	add    0x4(%edx),%esi
 53a:	89 73 fc             	mov    %esi,-0x4(%ebx)
 53d:	8b 10                	mov    (%eax),%edx
 53f:	8b 12                	mov    (%edx),%edx
 541:	89 53 f8             	mov    %edx,-0x8(%ebx)
 544:	eb db                	jmp    0x521
 546:	03 53 fc             	add    -0x4(%ebx),%edx
 549:	89 50 04             	mov    %edx,0x4(%eax)
 54c:	8b 53 f8             	mov    -0x8(%ebx),%edx
 54f:	89 10                	mov    %edx,(%eax)
 551:	eb da                	jmp    0x52d
 553:	55                   	push   %ebp
 554:	89 e5                	mov    %esp,%ebp
 556:	53                   	push   %ebx
 557:	83 ec 04             	sub    $0x4,%esp
 55a:	89 c3                	mov    %eax,%ebx
 55c:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 561:	77 05                	ja     0x568
 563:	bb 00 10 00 00       	mov    $0x1000,%ebx
 568:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 56f:	83 ec 0c             	sub    $0xc,%esp
 572:	50                   	push   %eax
 573:	e8 34 fd ff ff       	call   0x2ac
 578:	83 c4 10             	add    $0x10,%esp
 57b:	83 f8 ff             	cmp    $0xffffffff,%eax
 57e:	74 1c                	je     0x59c
 580:	89 58 04             	mov    %ebx,0x4(%eax)
 583:	83 c0 08             	add    $0x8,%eax
 586:	83 ec 0c             	sub    $0xc,%esp
 589:	50                   	push   %eax
 58a:	e8 50 ff ff ff       	call   0x4df
 58f:	a1 50 09 00 00       	mov    0x950,%eax
 594:	83 c4 10             	add    $0x10,%esp
 597:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 59a:	c9                   	leave  
 59b:	c3                   	ret    
 59c:	b8 00 00 00 00       	mov    $0x0,%eax
 5a1:	eb f4                	jmp    0x597
 5a3:	f3 0f 1e fb          	endbr32 
 5a7:	55                   	push   %ebp
 5a8:	89 e5                	mov    %esp,%ebp
 5aa:	53                   	push   %ebx
 5ab:	83 ec 04             	sub    $0x4,%esp
 5ae:	8b 45 08             	mov    0x8(%ebp),%eax
 5b1:	8d 58 07             	lea    0x7(%eax),%ebx
 5b4:	c1 eb 03             	shr    $0x3,%ebx
 5b7:	83 c3 01             	add    $0x1,%ebx
 5ba:	8b 0d 50 09 00 00    	mov    0x950,%ecx
 5c0:	85 c9                	test   %ecx,%ecx
 5c2:	74 04                	je     0x5c8
 5c4:	8b 01                	mov    (%ecx),%eax
 5c6:	eb 4b                	jmp    0x613
 5c8:	c7 05 50 09 00 00 54 	movl   $0x954,0x950
 5cf:	09 00 00 
 5d2:	c7 05 54 09 00 00 54 	movl   $0x954,0x954
 5d9:	09 00 00 
 5dc:	c7 05 58 09 00 00 00 	movl   $0x0,0x958
 5e3:	00 00 00 
 5e6:	b9 54 09 00 00       	mov    $0x954,%ecx
 5eb:	eb d7                	jmp    0x5c4
 5ed:	74 1a                	je     0x609
 5ef:	29 da                	sub    %ebx,%edx
 5f1:	89 50 04             	mov    %edx,0x4(%eax)
 5f4:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 5f7:	89 58 04             	mov    %ebx,0x4(%eax)
 5fa:	89 0d 50 09 00 00    	mov    %ecx,0x950
 600:	83 c0 08             	add    $0x8,%eax
 603:	83 c4 04             	add    $0x4,%esp
 606:	5b                   	pop    %ebx
 607:	5d                   	pop    %ebp
 608:	c3                   	ret    
 609:	8b 10                	mov    (%eax),%edx
 60b:	89 11                	mov    %edx,(%ecx)
 60d:	eb eb                	jmp    0x5fa
 60f:	89 c1                	mov    %eax,%ecx
 611:	8b 00                	mov    (%eax),%eax
 613:	8b 50 04             	mov    0x4(%eax),%edx
 616:	39 da                	cmp    %ebx,%edx
 618:	73 d3                	jae    0x5ed
 61a:	39 05 50 09 00 00    	cmp    %eax,0x950
 620:	75 ed                	jne    0x60f
 622:	89 d8                	mov    %ebx,%eax
 624:	e8 2a ff ff ff       	call   0x553
 629:	85 c0                	test   %eax,%eax
 62b:	75 e2                	jne    0x60f
 62d:	eb d4                	jmp    0x603
