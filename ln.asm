
_ln:     file format elf32-i386


Disassembly of section .text:

00000000 <.text>:
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	push   -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	53                   	push   %ebx
   e:	51                   	push   %ecx
   f:	8b 59 04             	mov    0x4(%ecx),%ebx
  12:	83 39 03             	cmpl   $0x3,(%ecx)
  15:	74 1b                	je     0x32
  17:	83 ec 08             	sub    $0x8,%esp
  1a:	68 30 06 00 00       	push   $0x630
  1f:	6a 02                	push   $0x2
  21:	e8 54 03 00 00       	call   0x37a
  26:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  2d:	e8 f3 01 00 00       	call   0x225
  32:	83 ec 08             	sub    $0x8,%esp
  35:	ff 73 08             	push   0x8(%ebx)
  38:	ff 73 04             	push   0x4(%ebx)
  3b:	e8 45 02 00 00       	call   0x285
  40:	83 c4 10             	add    $0x10,%esp
  43:	85 c0                	test   %eax,%eax
  45:	78 0a                	js     0x51
  47:	83 ec 0c             	sub    $0xc,%esp
  4a:	6a 00                	push   $0x0
  4c:	e8 d4 01 00 00       	call   0x225
  51:	ff 73 08             	push   0x8(%ebx)
  54:	ff 73 04             	push   0x4(%ebx)
  57:	68 43 06 00 00       	push   $0x643
  5c:	6a 02                	push   $0x2
  5e:	e8 17 03 00 00       	call   0x37a
  63:	83 c4 10             	add    $0x10,%esp
  66:	eb df                	jmp    0x47
  68:	f3 0f 1e fb          	endbr32 
  6c:	55                   	push   %ebp
  6d:	89 e5                	mov    %esp,%ebp
  6f:	56                   	push   %esi
  70:	53                   	push   %ebx
  71:	8b 75 08             	mov    0x8(%ebp),%esi
  74:	8b 55 0c             	mov    0xc(%ebp),%edx
  77:	89 f0                	mov    %esi,%eax
  79:	89 d1                	mov    %edx,%ecx
  7b:	83 c2 01             	add    $0x1,%edx
  7e:	89 c3                	mov    %eax,%ebx
  80:	83 c0 01             	add    $0x1,%eax
  83:	0f b6 09             	movzbl (%ecx),%ecx
  86:	88 0b                	mov    %cl,(%ebx)
  88:	84 c9                	test   %cl,%cl
  8a:	75 ed                	jne    0x79
  8c:	89 f0                	mov    %esi,%eax
  8e:	5b                   	pop    %ebx
  8f:	5e                   	pop    %esi
  90:	5d                   	pop    %ebp
  91:	c3                   	ret    
  92:	f3 0f 1e fb          	endbr32 
  96:	55                   	push   %ebp
  97:	89 e5                	mov    %esp,%ebp
  99:	8b 4d 08             	mov    0x8(%ebp),%ecx
  9c:	8b 55 0c             	mov    0xc(%ebp),%edx
  9f:	0f b6 01             	movzbl (%ecx),%eax
  a2:	84 c0                	test   %al,%al
  a4:	74 0c                	je     0xb2
  a6:	3a 02                	cmp    (%edx),%al
  a8:	75 08                	jne    0xb2
  aa:	83 c1 01             	add    $0x1,%ecx
  ad:	83 c2 01             	add    $0x1,%edx
  b0:	eb ed                	jmp    0x9f
  b2:	0f b6 c0             	movzbl %al,%eax
  b5:	0f b6 12             	movzbl (%edx),%edx
  b8:	29 d0                	sub    %edx,%eax
  ba:	5d                   	pop    %ebp
  bb:	c3                   	ret    
  bc:	f3 0f 1e fb          	endbr32 
  c0:	55                   	push   %ebp
  c1:	89 e5                	mov    %esp,%ebp
  c3:	8b 4d 08             	mov    0x8(%ebp),%ecx
  c6:	b8 00 00 00 00       	mov    $0x0,%eax
  cb:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
  cf:	74 05                	je     0xd6
  d1:	83 c0 01             	add    $0x1,%eax
  d4:	eb f5                	jmp    0xcb
  d6:	5d                   	pop    %ebp
  d7:	c3                   	ret    
  d8:	f3 0f 1e fb          	endbr32 
  dc:	55                   	push   %ebp
  dd:	89 e5                	mov    %esp,%ebp
  df:	57                   	push   %edi
  e0:	8b 55 08             	mov    0x8(%ebp),%edx
  e3:	89 d7                	mov    %edx,%edi
  e5:	8b 4d 10             	mov    0x10(%ebp),%ecx
  e8:	8b 45 0c             	mov    0xc(%ebp),%eax
  eb:	fc                   	cld    
  ec:	f3 aa                	rep stos %al,%es:(%edi)
  ee:	89 d0                	mov    %edx,%eax
  f0:	5f                   	pop    %edi
  f1:	5d                   	pop    %ebp
  f2:	c3                   	ret    
  f3:	f3 0f 1e fb          	endbr32 
  f7:	55                   	push   %ebp
  f8:	89 e5                	mov    %esp,%ebp
  fa:	8b 45 08             	mov    0x8(%ebp),%eax
  fd:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
 101:	0f b6 10             	movzbl (%eax),%edx
 104:	84 d2                	test   %dl,%dl
 106:	74 09                	je     0x111
 108:	38 ca                	cmp    %cl,%dl
 10a:	74 0a                	je     0x116
 10c:	83 c0 01             	add    $0x1,%eax
 10f:	eb f0                	jmp    0x101
 111:	b8 00 00 00 00       	mov    $0x0,%eax
 116:	5d                   	pop    %ebp
 117:	c3                   	ret    
 118:	f3 0f 1e fb          	endbr32 
 11c:	55                   	push   %ebp
 11d:	89 e5                	mov    %esp,%ebp
 11f:	57                   	push   %edi
 120:	56                   	push   %esi
 121:	53                   	push   %ebx
 122:	83 ec 1c             	sub    $0x1c,%esp
 125:	8b 7d 08             	mov    0x8(%ebp),%edi
 128:	bb 00 00 00 00       	mov    $0x0,%ebx
 12d:	89 de                	mov    %ebx,%esi
 12f:	83 c3 01             	add    $0x1,%ebx
 132:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 135:	7d 2e                	jge    0x165
 137:	83 ec 04             	sub    $0x4,%esp
 13a:	6a 01                	push   $0x1
 13c:	8d 45 e7             	lea    -0x19(%ebp),%eax
 13f:	50                   	push   %eax
 140:	6a 00                	push   $0x0
 142:	e8 f6 00 00 00       	call   0x23d
 147:	83 c4 10             	add    $0x10,%esp
 14a:	85 c0                	test   %eax,%eax
 14c:	7e 17                	jle    0x165
 14e:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 152:	88 04 37             	mov    %al,(%edi,%esi,1)
 155:	3c 0a                	cmp    $0xa,%al
 157:	0f 94 c2             	sete   %dl
 15a:	3c 0d                	cmp    $0xd,%al
 15c:	0f 94 c0             	sete   %al
 15f:	08 c2                	or     %al,%dl
 161:	74 ca                	je     0x12d
 163:	89 de                	mov    %ebx,%esi
 165:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 169:	89 f8                	mov    %edi,%eax
 16b:	8d 65 f4             	lea    -0xc(%ebp),%esp
 16e:	5b                   	pop    %ebx
 16f:	5e                   	pop    %esi
 170:	5f                   	pop    %edi
 171:	5d                   	pop    %ebp
 172:	c3                   	ret    
 173:	f3 0f 1e fb          	endbr32 
 177:	55                   	push   %ebp
 178:	89 e5                	mov    %esp,%ebp
 17a:	56                   	push   %esi
 17b:	53                   	push   %ebx
 17c:	83 ec 08             	sub    $0x8,%esp
 17f:	6a 00                	push   $0x0
 181:	ff 75 08             	push   0x8(%ebp)
 184:	e8 dc 00 00 00       	call   0x265
 189:	83 c4 10             	add    $0x10,%esp
 18c:	85 c0                	test   %eax,%eax
 18e:	78 24                	js     0x1b4
 190:	89 c3                	mov    %eax,%ebx
 192:	83 ec 08             	sub    $0x8,%esp
 195:	ff 75 0c             	push   0xc(%ebp)
 198:	50                   	push   %eax
 199:	e8 df 00 00 00       	call   0x27d
 19e:	89 c6                	mov    %eax,%esi
 1a0:	89 1c 24             	mov    %ebx,(%esp)
 1a3:	e8 a5 00 00 00       	call   0x24d
 1a8:	83 c4 10             	add    $0x10,%esp
 1ab:	89 f0                	mov    %esi,%eax
 1ad:	8d 65 f8             	lea    -0x8(%ebp),%esp
 1b0:	5b                   	pop    %ebx
 1b1:	5e                   	pop    %esi
 1b2:	5d                   	pop    %ebp
 1b3:	c3                   	ret    
 1b4:	be ff ff ff ff       	mov    $0xffffffff,%esi
 1b9:	eb f0                	jmp    0x1ab
 1bb:	f3 0f 1e fb          	endbr32 
 1bf:	55                   	push   %ebp
 1c0:	89 e5                	mov    %esp,%ebp
 1c2:	53                   	push   %ebx
 1c3:	8b 4d 08             	mov    0x8(%ebp),%ecx
 1c6:	ba 00 00 00 00       	mov    $0x0,%edx
 1cb:	0f b6 01             	movzbl (%ecx),%eax
 1ce:	8d 58 d0             	lea    -0x30(%eax),%ebx
 1d1:	80 fb 09             	cmp    $0x9,%bl
 1d4:	77 12                	ja     0x1e8
 1d6:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 1d9:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 1dc:	83 c1 01             	add    $0x1,%ecx
 1df:	0f be c0             	movsbl %al,%eax
 1e2:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 1e6:	eb e3                	jmp    0x1cb
 1e8:	89 d0                	mov    %edx,%eax
 1ea:	5b                   	pop    %ebx
 1eb:	5d                   	pop    %ebp
 1ec:	c3                   	ret    
 1ed:	f3 0f 1e fb          	endbr32 
 1f1:	55                   	push   %ebp
 1f2:	89 e5                	mov    %esp,%ebp
 1f4:	56                   	push   %esi
 1f5:	53                   	push   %ebx
 1f6:	8b 75 08             	mov    0x8(%ebp),%esi
 1f9:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 1fc:	8b 45 10             	mov    0x10(%ebp),%eax
 1ff:	89 f2                	mov    %esi,%edx
 201:	8d 58 ff             	lea    -0x1(%eax),%ebx
 204:	85 c0                	test   %eax,%eax
 206:	7e 0f                	jle    0x217
 208:	0f b6 01             	movzbl (%ecx),%eax
 20b:	88 02                	mov    %al,(%edx)
 20d:	8d 49 01             	lea    0x1(%ecx),%ecx
 210:	8d 52 01             	lea    0x1(%edx),%edx
 213:	89 d8                	mov    %ebx,%eax
 215:	eb ea                	jmp    0x201
 217:	89 f0                	mov    %esi,%eax
 219:	5b                   	pop    %ebx
 21a:	5e                   	pop    %esi
 21b:	5d                   	pop    %ebp
 21c:	c3                   	ret    
 21d:	b8 01 00 00 00       	mov    $0x1,%eax
 222:	cd 40                	int    $0x40
 224:	c3                   	ret    
 225:	b8 02 00 00 00       	mov    $0x2,%eax
 22a:	cd 40                	int    $0x40
 22c:	c3                   	ret    
 22d:	b8 03 00 00 00       	mov    $0x3,%eax
 232:	cd 40                	int    $0x40
 234:	c3                   	ret    
 235:	b8 04 00 00 00       	mov    $0x4,%eax
 23a:	cd 40                	int    $0x40
 23c:	c3                   	ret    
 23d:	b8 05 00 00 00       	mov    $0x5,%eax
 242:	cd 40                	int    $0x40
 244:	c3                   	ret    
 245:	b8 10 00 00 00       	mov    $0x10,%eax
 24a:	cd 40                	int    $0x40
 24c:	c3                   	ret    
 24d:	b8 15 00 00 00       	mov    $0x15,%eax
 252:	cd 40                	int    $0x40
 254:	c3                   	ret    
 255:	b8 06 00 00 00       	mov    $0x6,%eax
 25a:	cd 40                	int    $0x40
 25c:	c3                   	ret    
 25d:	b8 07 00 00 00       	mov    $0x7,%eax
 262:	cd 40                	int    $0x40
 264:	c3                   	ret    
 265:	b8 0f 00 00 00       	mov    $0xf,%eax
 26a:	cd 40                	int    $0x40
 26c:	c3                   	ret    
 26d:	b8 11 00 00 00       	mov    $0x11,%eax
 272:	cd 40                	int    $0x40
 274:	c3                   	ret    
 275:	b8 12 00 00 00       	mov    $0x12,%eax
 27a:	cd 40                	int    $0x40
 27c:	c3                   	ret    
 27d:	b8 08 00 00 00       	mov    $0x8,%eax
 282:	cd 40                	int    $0x40
 284:	c3                   	ret    
 285:	b8 13 00 00 00       	mov    $0x13,%eax
 28a:	cd 40                	int    $0x40
 28c:	c3                   	ret    
 28d:	b8 14 00 00 00       	mov    $0x14,%eax
 292:	cd 40                	int    $0x40
 294:	c3                   	ret    
 295:	b8 09 00 00 00       	mov    $0x9,%eax
 29a:	cd 40                	int    $0x40
 29c:	c3                   	ret    
 29d:	b8 0a 00 00 00       	mov    $0xa,%eax
 2a2:	cd 40                	int    $0x40
 2a4:	c3                   	ret    
 2a5:	b8 0b 00 00 00       	mov    $0xb,%eax
 2aa:	cd 40                	int    $0x40
 2ac:	c3                   	ret    
 2ad:	b8 0c 00 00 00       	mov    $0xc,%eax
 2b2:	cd 40                	int    $0x40
 2b4:	c3                   	ret    
 2b5:	b8 0d 00 00 00       	mov    $0xd,%eax
 2ba:	cd 40                	int    $0x40
 2bc:	c3                   	ret    
 2bd:	b8 0e 00 00 00       	mov    $0xe,%eax
 2c2:	cd 40                	int    $0x40
 2c4:	c3                   	ret    
 2c5:	b8 16 00 00 00       	mov    $0x16,%eax
 2ca:	cd 40                	int    $0x40
 2cc:	c3                   	ret    
 2cd:	b8 17 00 00 00       	mov    $0x17,%eax
 2d2:	cd 40                	int    $0x40
 2d4:	c3                   	ret    
 2d5:	55                   	push   %ebp
 2d6:	89 e5                	mov    %esp,%ebp
 2d8:	83 ec 1c             	sub    $0x1c,%esp
 2db:	88 55 f4             	mov    %dl,-0xc(%ebp)
 2de:	6a 01                	push   $0x1
 2e0:	8d 55 f4             	lea    -0xc(%ebp),%edx
 2e3:	52                   	push   %edx
 2e4:	50                   	push   %eax
 2e5:	e8 5b ff ff ff       	call   0x245
 2ea:	83 c4 10             	add    $0x10,%esp
 2ed:	c9                   	leave  
 2ee:	c3                   	ret    
 2ef:	55                   	push   %ebp
 2f0:	89 e5                	mov    %esp,%ebp
 2f2:	57                   	push   %edi
 2f3:	56                   	push   %esi
 2f4:	53                   	push   %ebx
 2f5:	83 ec 2c             	sub    $0x2c,%esp
 2f8:	89 45 d0             	mov    %eax,-0x30(%ebp)
 2fb:	89 d0                	mov    %edx,%eax
 2fd:	89 ce                	mov    %ecx,%esi
 2ff:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 303:	0f 95 c1             	setne  %cl
 306:	c1 ea 1f             	shr    $0x1f,%edx
 309:	84 d1                	test   %dl,%cl
 30b:	74 44                	je     0x351
 30d:	f7 d8                	neg    %eax
 30f:	89 c1                	mov    %eax,%ecx
 311:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 318:	bb 00 00 00 00       	mov    $0x0,%ebx
 31d:	89 c8                	mov    %ecx,%eax
 31f:	ba 00 00 00 00       	mov    $0x0,%edx
 324:	f7 f6                	div    %esi
 326:	89 df                	mov    %ebx,%edi
 328:	83 c3 01             	add    $0x1,%ebx
 32b:	0f b6 92 b8 06 00 00 	movzbl 0x6b8(%edx),%edx
 332:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 336:	89 ca                	mov    %ecx,%edx
 338:	89 c1                	mov    %eax,%ecx
 33a:	39 d6                	cmp    %edx,%esi
 33c:	76 df                	jbe    0x31d
 33e:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 342:	74 31                	je     0x375
 344:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 349:	8d 5f 02             	lea    0x2(%edi),%ebx
 34c:	8b 75 d0             	mov    -0x30(%ebp),%esi
 34f:	eb 17                	jmp    0x368
 351:	89 c1                	mov    %eax,%ecx
 353:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 35a:	eb bc                	jmp    0x318
 35c:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 361:	89 f0                	mov    %esi,%eax
 363:	e8 6d ff ff ff       	call   0x2d5
 368:	83 eb 01             	sub    $0x1,%ebx
 36b:	79 ef                	jns    0x35c
 36d:	83 c4 2c             	add    $0x2c,%esp
 370:	5b                   	pop    %ebx
 371:	5e                   	pop    %esi
 372:	5f                   	pop    %edi
 373:	5d                   	pop    %ebp
 374:	c3                   	ret    
 375:	8b 75 d0             	mov    -0x30(%ebp),%esi
 378:	eb ee                	jmp    0x368
 37a:	55                   	push   %ebp
 37b:	89 e5                	mov    %esp,%ebp
 37d:	57                   	push   %edi
 37e:	56                   	push   %esi
 37f:	53                   	push   %ebx
 380:	83 ec 1c             	sub    $0x1c,%esp
 383:	8d 45 10             	lea    0x10(%ebp),%eax
 386:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 389:	be 00 00 00 00       	mov    $0x0,%esi
 38e:	bb 00 00 00 00       	mov    $0x0,%ebx
 393:	eb 14                	jmp    0x3a9
 395:	89 fa                	mov    %edi,%edx
 397:	8b 45 08             	mov    0x8(%ebp),%eax
 39a:	e8 36 ff ff ff       	call   0x2d5
 39f:	eb 05                	jmp    0x3a6
 3a1:	83 fe 25             	cmp    $0x25,%esi
 3a4:	74 25                	je     0x3cb
 3a6:	83 c3 01             	add    $0x1,%ebx
 3a9:	8b 45 0c             	mov    0xc(%ebp),%eax
 3ac:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 3b0:	84 c0                	test   %al,%al
 3b2:	0f 84 20 01 00 00    	je     0x4d8
 3b8:	0f be f8             	movsbl %al,%edi
 3bb:	0f b6 c0             	movzbl %al,%eax
 3be:	85 f6                	test   %esi,%esi
 3c0:	75 df                	jne    0x3a1
 3c2:	83 f8 25             	cmp    $0x25,%eax
 3c5:	75 ce                	jne    0x395
 3c7:	89 c6                	mov    %eax,%esi
 3c9:	eb db                	jmp    0x3a6
 3cb:	83 f8 25             	cmp    $0x25,%eax
 3ce:	0f 84 cf 00 00 00    	je     0x4a3
 3d4:	0f 8c dd 00 00 00    	jl     0x4b7
 3da:	83 f8 78             	cmp    $0x78,%eax
 3dd:	0f 8f d4 00 00 00    	jg     0x4b7
 3e3:	83 f8 63             	cmp    $0x63,%eax
 3e6:	0f 8c cb 00 00 00    	jl     0x4b7
 3ec:	83 e8 63             	sub    $0x63,%eax
 3ef:	83 f8 15             	cmp    $0x15,%eax
 3f2:	0f 87 bf 00 00 00    	ja     0x4b7
 3f8:	ff 24 85 60 06 00 00 	jmp    *0x660(,%eax,4)
 3ff:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 402:	8b 17                	mov    (%edi),%edx
 404:	83 ec 0c             	sub    $0xc,%esp
 407:	6a 01                	push   $0x1
 409:	b9 0a 00 00 00       	mov    $0xa,%ecx
 40e:	8b 45 08             	mov    0x8(%ebp),%eax
 411:	e8 d9 fe ff ff       	call   0x2ef
 416:	83 c7 04             	add    $0x4,%edi
 419:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 41c:	83 c4 10             	add    $0x10,%esp
 41f:	be 00 00 00 00       	mov    $0x0,%esi
 424:	eb 80                	jmp    0x3a6
 426:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 429:	8b 17                	mov    (%edi),%edx
 42b:	83 ec 0c             	sub    $0xc,%esp
 42e:	6a 00                	push   $0x0
 430:	b9 10 00 00 00       	mov    $0x10,%ecx
 435:	8b 45 08             	mov    0x8(%ebp),%eax
 438:	e8 b2 fe ff ff       	call   0x2ef
 43d:	83 c7 04             	add    $0x4,%edi
 440:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 443:	83 c4 10             	add    $0x10,%esp
 446:	be 00 00 00 00       	mov    $0x0,%esi
 44b:	e9 56 ff ff ff       	jmp    0x3a6
 450:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 453:	8b 30                	mov    (%eax),%esi
 455:	83 c0 04             	add    $0x4,%eax
 458:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 45b:	85 f6                	test   %esi,%esi
 45d:	75 15                	jne    0x474
 45f:	be 57 06 00 00       	mov    $0x657,%esi
 464:	eb 0e                	jmp    0x474
 466:	0f be d2             	movsbl %dl,%edx
 469:	8b 45 08             	mov    0x8(%ebp),%eax
 46c:	e8 64 fe ff ff       	call   0x2d5
 471:	83 c6 01             	add    $0x1,%esi
 474:	0f b6 16             	movzbl (%esi),%edx
 477:	84 d2                	test   %dl,%dl
 479:	75 eb                	jne    0x466
 47b:	be 00 00 00 00       	mov    $0x0,%esi
 480:	e9 21 ff ff ff       	jmp    0x3a6
 485:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 488:	0f be 17             	movsbl (%edi),%edx
 48b:	8b 45 08             	mov    0x8(%ebp),%eax
 48e:	e8 42 fe ff ff       	call   0x2d5
 493:	83 c7 04             	add    $0x4,%edi
 496:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 499:	be 00 00 00 00       	mov    $0x0,%esi
 49e:	e9 03 ff ff ff       	jmp    0x3a6
 4a3:	89 fa                	mov    %edi,%edx
 4a5:	8b 45 08             	mov    0x8(%ebp),%eax
 4a8:	e8 28 fe ff ff       	call   0x2d5
 4ad:	be 00 00 00 00       	mov    $0x0,%esi
 4b2:	e9 ef fe ff ff       	jmp    0x3a6
 4b7:	ba 25 00 00 00       	mov    $0x25,%edx
 4bc:	8b 45 08             	mov    0x8(%ebp),%eax
 4bf:	e8 11 fe ff ff       	call   0x2d5
 4c4:	89 fa                	mov    %edi,%edx
 4c6:	8b 45 08             	mov    0x8(%ebp),%eax
 4c9:	e8 07 fe ff ff       	call   0x2d5
 4ce:	be 00 00 00 00       	mov    $0x0,%esi
 4d3:	e9 ce fe ff ff       	jmp    0x3a6
 4d8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4db:	5b                   	pop    %ebx
 4dc:	5e                   	pop    %esi
 4dd:	5f                   	pop    %edi
 4de:	5d                   	pop    %ebp
 4df:	c3                   	ret    
 4e0:	f3 0f 1e fb          	endbr32 
 4e4:	55                   	push   %ebp
 4e5:	89 e5                	mov    %esp,%ebp
 4e7:	57                   	push   %edi
 4e8:	56                   	push   %esi
 4e9:	53                   	push   %ebx
 4ea:	8b 5d 08             	mov    0x8(%ebp),%ebx
 4ed:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 4f0:	a1 5c 09 00 00       	mov    0x95c,%eax
 4f5:	eb 02                	jmp    0x4f9
 4f7:	89 d0                	mov    %edx,%eax
 4f9:	39 c8                	cmp    %ecx,%eax
 4fb:	73 04                	jae    0x501
 4fd:	39 08                	cmp    %ecx,(%eax)
 4ff:	77 12                	ja     0x513
 501:	8b 10                	mov    (%eax),%edx
 503:	39 c2                	cmp    %eax,%edx
 505:	77 f0                	ja     0x4f7
 507:	39 c8                	cmp    %ecx,%eax
 509:	72 08                	jb     0x513
 50b:	39 ca                	cmp    %ecx,%edx
 50d:	77 04                	ja     0x513
 50f:	89 d0                	mov    %edx,%eax
 511:	eb e6                	jmp    0x4f9
 513:	8b 73 fc             	mov    -0x4(%ebx),%esi
 516:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 519:	8b 10                	mov    (%eax),%edx
 51b:	39 d7                	cmp    %edx,%edi
 51d:	74 19                	je     0x538
 51f:	89 53 f8             	mov    %edx,-0x8(%ebx)
 522:	8b 50 04             	mov    0x4(%eax),%edx
 525:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 528:	39 ce                	cmp    %ecx,%esi
 52a:	74 1b                	je     0x547
 52c:	89 08                	mov    %ecx,(%eax)
 52e:	a3 5c 09 00 00       	mov    %eax,0x95c
 533:	5b                   	pop    %ebx
 534:	5e                   	pop    %esi
 535:	5f                   	pop    %edi
 536:	5d                   	pop    %ebp
 537:	c3                   	ret    
 538:	03 72 04             	add    0x4(%edx),%esi
 53b:	89 73 fc             	mov    %esi,-0x4(%ebx)
 53e:	8b 10                	mov    (%eax),%edx
 540:	8b 12                	mov    (%edx),%edx
 542:	89 53 f8             	mov    %edx,-0x8(%ebx)
 545:	eb db                	jmp    0x522
 547:	03 53 fc             	add    -0x4(%ebx),%edx
 54a:	89 50 04             	mov    %edx,0x4(%eax)
 54d:	8b 53 f8             	mov    -0x8(%ebx),%edx
 550:	89 10                	mov    %edx,(%eax)
 552:	eb da                	jmp    0x52e
 554:	55                   	push   %ebp
 555:	89 e5                	mov    %esp,%ebp
 557:	53                   	push   %ebx
 558:	83 ec 04             	sub    $0x4,%esp
 55b:	89 c3                	mov    %eax,%ebx
 55d:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 562:	77 05                	ja     0x569
 564:	bb 00 10 00 00       	mov    $0x1000,%ebx
 569:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 570:	83 ec 0c             	sub    $0xc,%esp
 573:	50                   	push   %eax
 574:	e8 34 fd ff ff       	call   0x2ad
 579:	83 c4 10             	add    $0x10,%esp
 57c:	83 f8 ff             	cmp    $0xffffffff,%eax
 57f:	74 1c                	je     0x59d
 581:	89 58 04             	mov    %ebx,0x4(%eax)
 584:	83 c0 08             	add    $0x8,%eax
 587:	83 ec 0c             	sub    $0xc,%esp
 58a:	50                   	push   %eax
 58b:	e8 50 ff ff ff       	call   0x4e0
 590:	a1 5c 09 00 00       	mov    0x95c,%eax
 595:	83 c4 10             	add    $0x10,%esp
 598:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 59b:	c9                   	leave  
 59c:	c3                   	ret    
 59d:	b8 00 00 00 00       	mov    $0x0,%eax
 5a2:	eb f4                	jmp    0x598
 5a4:	f3 0f 1e fb          	endbr32 
 5a8:	55                   	push   %ebp
 5a9:	89 e5                	mov    %esp,%ebp
 5ab:	53                   	push   %ebx
 5ac:	83 ec 04             	sub    $0x4,%esp
 5af:	8b 45 08             	mov    0x8(%ebp),%eax
 5b2:	8d 58 07             	lea    0x7(%eax),%ebx
 5b5:	c1 eb 03             	shr    $0x3,%ebx
 5b8:	83 c3 01             	add    $0x1,%ebx
 5bb:	8b 0d 5c 09 00 00    	mov    0x95c,%ecx
 5c1:	85 c9                	test   %ecx,%ecx
 5c3:	74 04                	je     0x5c9
 5c5:	8b 01                	mov    (%ecx),%eax
 5c7:	eb 4b                	jmp    0x614
 5c9:	c7 05 5c 09 00 00 60 	movl   $0x960,0x95c
 5d0:	09 00 00 
 5d3:	c7 05 60 09 00 00 60 	movl   $0x960,0x960
 5da:	09 00 00 
 5dd:	c7 05 64 09 00 00 00 	movl   $0x0,0x964
 5e4:	00 00 00 
 5e7:	b9 60 09 00 00       	mov    $0x960,%ecx
 5ec:	eb d7                	jmp    0x5c5
 5ee:	74 1a                	je     0x60a
 5f0:	29 da                	sub    %ebx,%edx
 5f2:	89 50 04             	mov    %edx,0x4(%eax)
 5f5:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 5f8:	89 58 04             	mov    %ebx,0x4(%eax)
 5fb:	89 0d 5c 09 00 00    	mov    %ecx,0x95c
 601:	83 c0 08             	add    $0x8,%eax
 604:	83 c4 04             	add    $0x4,%esp
 607:	5b                   	pop    %ebx
 608:	5d                   	pop    %ebp
 609:	c3                   	ret    
 60a:	8b 10                	mov    (%eax),%edx
 60c:	89 11                	mov    %edx,(%ecx)
 60e:	eb eb                	jmp    0x5fb
 610:	89 c1                	mov    %eax,%ecx
 612:	8b 00                	mov    (%eax),%eax
 614:	8b 50 04             	mov    0x4(%eax),%edx
 617:	39 da                	cmp    %ebx,%edx
 619:	73 d3                	jae    0x5ee
 61b:	39 05 5c 09 00 00    	cmp    %eax,0x95c
 621:	75 ed                	jne    0x610
 623:	89 d8                	mov    %ebx,%eax
 625:	e8 2a ff ff ff       	call   0x554
 62a:	85 c0                	test   %eax,%eax
 62c:	75 e2                	jne    0x610
 62e:	eb d4                	jmp    0x604
