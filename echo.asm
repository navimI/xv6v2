
_echo:     file format elf32-i386


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
  19:	b8 01 00 00 00       	mov    $0x1,%eax
  1e:	eb 1a                	jmp    0x3a
  20:	ba 22 06 00 00       	mov    $0x622,%edx
  25:	52                   	push   %edx
  26:	ff 34 87             	push   (%edi,%eax,4)
  29:	68 24 06 00 00       	push   $0x624
  2e:	6a 01                	push   $0x1
  30:	e8 33 03 00 00       	call   0x368
  35:	83 c4 10             	add    $0x10,%esp
  38:	89 d8                	mov    %ebx,%eax
  3a:	39 f0                	cmp    %esi,%eax
  3c:	7d 0e                	jge    0x4c
  3e:	8d 58 01             	lea    0x1(%eax),%ebx
  41:	39 f3                	cmp    %esi,%ebx
  43:	7d db                	jge    0x20
  45:	ba 20 06 00 00       	mov    $0x620,%edx
  4a:	eb d9                	jmp    0x25
  4c:	83 ec 0c             	sub    $0xc,%esp
  4f:	6a 00                	push   $0x0
  51:	e8 bd 01 00 00       	call   0x213
  56:	f3 0f 1e fb          	endbr32 
  5a:	55                   	push   %ebp
  5b:	89 e5                	mov    %esp,%ebp
  5d:	56                   	push   %esi
  5e:	53                   	push   %ebx
  5f:	8b 75 08             	mov    0x8(%ebp),%esi
  62:	8b 55 0c             	mov    0xc(%ebp),%edx
  65:	89 f0                	mov    %esi,%eax
  67:	89 d1                	mov    %edx,%ecx
  69:	83 c2 01             	add    $0x1,%edx
  6c:	89 c3                	mov    %eax,%ebx
  6e:	83 c0 01             	add    $0x1,%eax
  71:	0f b6 09             	movzbl (%ecx),%ecx
  74:	88 0b                	mov    %cl,(%ebx)
  76:	84 c9                	test   %cl,%cl
  78:	75 ed                	jne    0x67
  7a:	89 f0                	mov    %esi,%eax
  7c:	5b                   	pop    %ebx
  7d:	5e                   	pop    %esi
  7e:	5d                   	pop    %ebp
  7f:	c3                   	ret    
  80:	f3 0f 1e fb          	endbr32 
  84:	55                   	push   %ebp
  85:	89 e5                	mov    %esp,%ebp
  87:	8b 4d 08             	mov    0x8(%ebp),%ecx
  8a:	8b 55 0c             	mov    0xc(%ebp),%edx
  8d:	0f b6 01             	movzbl (%ecx),%eax
  90:	84 c0                	test   %al,%al
  92:	74 0c                	je     0xa0
  94:	3a 02                	cmp    (%edx),%al
  96:	75 08                	jne    0xa0
  98:	83 c1 01             	add    $0x1,%ecx
  9b:	83 c2 01             	add    $0x1,%edx
  9e:	eb ed                	jmp    0x8d
  a0:	0f b6 c0             	movzbl %al,%eax
  a3:	0f b6 12             	movzbl (%edx),%edx
  a6:	29 d0                	sub    %edx,%eax
  a8:	5d                   	pop    %ebp
  a9:	c3                   	ret    
  aa:	f3 0f 1e fb          	endbr32 
  ae:	55                   	push   %ebp
  af:	89 e5                	mov    %esp,%ebp
  b1:	8b 4d 08             	mov    0x8(%ebp),%ecx
  b4:	b8 00 00 00 00       	mov    $0x0,%eax
  b9:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
  bd:	74 05                	je     0xc4
  bf:	83 c0 01             	add    $0x1,%eax
  c2:	eb f5                	jmp    0xb9
  c4:	5d                   	pop    %ebp
  c5:	c3                   	ret    
  c6:	f3 0f 1e fb          	endbr32 
  ca:	55                   	push   %ebp
  cb:	89 e5                	mov    %esp,%ebp
  cd:	57                   	push   %edi
  ce:	8b 55 08             	mov    0x8(%ebp),%edx
  d1:	89 d7                	mov    %edx,%edi
  d3:	8b 4d 10             	mov    0x10(%ebp),%ecx
  d6:	8b 45 0c             	mov    0xc(%ebp),%eax
  d9:	fc                   	cld    
  da:	f3 aa                	rep stos %al,%es:(%edi)
  dc:	89 d0                	mov    %edx,%eax
  de:	5f                   	pop    %edi
  df:	5d                   	pop    %ebp
  e0:	c3                   	ret    
  e1:	f3 0f 1e fb          	endbr32 
  e5:	55                   	push   %ebp
  e6:	89 e5                	mov    %esp,%ebp
  e8:	8b 45 08             	mov    0x8(%ebp),%eax
  eb:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  ef:	0f b6 10             	movzbl (%eax),%edx
  f2:	84 d2                	test   %dl,%dl
  f4:	74 09                	je     0xff
  f6:	38 ca                	cmp    %cl,%dl
  f8:	74 0a                	je     0x104
  fa:	83 c0 01             	add    $0x1,%eax
  fd:	eb f0                	jmp    0xef
  ff:	b8 00 00 00 00       	mov    $0x0,%eax
 104:	5d                   	pop    %ebp
 105:	c3                   	ret    
 106:	f3 0f 1e fb          	endbr32 
 10a:	55                   	push   %ebp
 10b:	89 e5                	mov    %esp,%ebp
 10d:	57                   	push   %edi
 10e:	56                   	push   %esi
 10f:	53                   	push   %ebx
 110:	83 ec 1c             	sub    $0x1c,%esp
 113:	8b 7d 08             	mov    0x8(%ebp),%edi
 116:	bb 00 00 00 00       	mov    $0x0,%ebx
 11b:	89 de                	mov    %ebx,%esi
 11d:	83 c3 01             	add    $0x1,%ebx
 120:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 123:	7d 2e                	jge    0x153
 125:	83 ec 04             	sub    $0x4,%esp
 128:	6a 01                	push   $0x1
 12a:	8d 45 e7             	lea    -0x19(%ebp),%eax
 12d:	50                   	push   %eax
 12e:	6a 00                	push   $0x0
 130:	e8 f6 00 00 00       	call   0x22b
 135:	83 c4 10             	add    $0x10,%esp
 138:	85 c0                	test   %eax,%eax
 13a:	7e 17                	jle    0x153
 13c:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 140:	88 04 37             	mov    %al,(%edi,%esi,1)
 143:	3c 0a                	cmp    $0xa,%al
 145:	0f 94 c2             	sete   %dl
 148:	3c 0d                	cmp    $0xd,%al
 14a:	0f 94 c0             	sete   %al
 14d:	08 c2                	or     %al,%dl
 14f:	74 ca                	je     0x11b
 151:	89 de                	mov    %ebx,%esi
 153:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 157:	89 f8                	mov    %edi,%eax
 159:	8d 65 f4             	lea    -0xc(%ebp),%esp
 15c:	5b                   	pop    %ebx
 15d:	5e                   	pop    %esi
 15e:	5f                   	pop    %edi
 15f:	5d                   	pop    %ebp
 160:	c3                   	ret    
 161:	f3 0f 1e fb          	endbr32 
 165:	55                   	push   %ebp
 166:	89 e5                	mov    %esp,%ebp
 168:	56                   	push   %esi
 169:	53                   	push   %ebx
 16a:	83 ec 08             	sub    $0x8,%esp
 16d:	6a 00                	push   $0x0
 16f:	ff 75 08             	push   0x8(%ebp)
 172:	e8 dc 00 00 00       	call   0x253
 177:	83 c4 10             	add    $0x10,%esp
 17a:	85 c0                	test   %eax,%eax
 17c:	78 24                	js     0x1a2
 17e:	89 c3                	mov    %eax,%ebx
 180:	83 ec 08             	sub    $0x8,%esp
 183:	ff 75 0c             	push   0xc(%ebp)
 186:	50                   	push   %eax
 187:	e8 df 00 00 00       	call   0x26b
 18c:	89 c6                	mov    %eax,%esi
 18e:	89 1c 24             	mov    %ebx,(%esp)
 191:	e8 a5 00 00 00       	call   0x23b
 196:	83 c4 10             	add    $0x10,%esp
 199:	89 f0                	mov    %esi,%eax
 19b:	8d 65 f8             	lea    -0x8(%ebp),%esp
 19e:	5b                   	pop    %ebx
 19f:	5e                   	pop    %esi
 1a0:	5d                   	pop    %ebp
 1a1:	c3                   	ret    
 1a2:	be ff ff ff ff       	mov    $0xffffffff,%esi
 1a7:	eb f0                	jmp    0x199
 1a9:	f3 0f 1e fb          	endbr32 
 1ad:	55                   	push   %ebp
 1ae:	89 e5                	mov    %esp,%ebp
 1b0:	53                   	push   %ebx
 1b1:	8b 4d 08             	mov    0x8(%ebp),%ecx
 1b4:	ba 00 00 00 00       	mov    $0x0,%edx
 1b9:	0f b6 01             	movzbl (%ecx),%eax
 1bc:	8d 58 d0             	lea    -0x30(%eax),%ebx
 1bf:	80 fb 09             	cmp    $0x9,%bl
 1c2:	77 12                	ja     0x1d6
 1c4:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 1c7:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 1ca:	83 c1 01             	add    $0x1,%ecx
 1cd:	0f be c0             	movsbl %al,%eax
 1d0:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 1d4:	eb e3                	jmp    0x1b9
 1d6:	89 d0                	mov    %edx,%eax
 1d8:	5b                   	pop    %ebx
 1d9:	5d                   	pop    %ebp
 1da:	c3                   	ret    
 1db:	f3 0f 1e fb          	endbr32 
 1df:	55                   	push   %ebp
 1e0:	89 e5                	mov    %esp,%ebp
 1e2:	56                   	push   %esi
 1e3:	53                   	push   %ebx
 1e4:	8b 75 08             	mov    0x8(%ebp),%esi
 1e7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 1ea:	8b 45 10             	mov    0x10(%ebp),%eax
 1ed:	89 f2                	mov    %esi,%edx
 1ef:	8d 58 ff             	lea    -0x1(%eax),%ebx
 1f2:	85 c0                	test   %eax,%eax
 1f4:	7e 0f                	jle    0x205
 1f6:	0f b6 01             	movzbl (%ecx),%eax
 1f9:	88 02                	mov    %al,(%edx)
 1fb:	8d 49 01             	lea    0x1(%ecx),%ecx
 1fe:	8d 52 01             	lea    0x1(%edx),%edx
 201:	89 d8                	mov    %ebx,%eax
 203:	eb ea                	jmp    0x1ef
 205:	89 f0                	mov    %esi,%eax
 207:	5b                   	pop    %ebx
 208:	5e                   	pop    %esi
 209:	5d                   	pop    %ebp
 20a:	c3                   	ret    
 20b:	b8 01 00 00 00       	mov    $0x1,%eax
 210:	cd 40                	int    $0x40
 212:	c3                   	ret    
 213:	b8 02 00 00 00       	mov    $0x2,%eax
 218:	cd 40                	int    $0x40
 21a:	c3                   	ret    
 21b:	b8 03 00 00 00       	mov    $0x3,%eax
 220:	cd 40                	int    $0x40
 222:	c3                   	ret    
 223:	b8 04 00 00 00       	mov    $0x4,%eax
 228:	cd 40                	int    $0x40
 22a:	c3                   	ret    
 22b:	b8 05 00 00 00       	mov    $0x5,%eax
 230:	cd 40                	int    $0x40
 232:	c3                   	ret    
 233:	b8 10 00 00 00       	mov    $0x10,%eax
 238:	cd 40                	int    $0x40
 23a:	c3                   	ret    
 23b:	b8 15 00 00 00       	mov    $0x15,%eax
 240:	cd 40                	int    $0x40
 242:	c3                   	ret    
 243:	b8 06 00 00 00       	mov    $0x6,%eax
 248:	cd 40                	int    $0x40
 24a:	c3                   	ret    
 24b:	b8 07 00 00 00       	mov    $0x7,%eax
 250:	cd 40                	int    $0x40
 252:	c3                   	ret    
 253:	b8 0f 00 00 00       	mov    $0xf,%eax
 258:	cd 40                	int    $0x40
 25a:	c3                   	ret    
 25b:	b8 11 00 00 00       	mov    $0x11,%eax
 260:	cd 40                	int    $0x40
 262:	c3                   	ret    
 263:	b8 12 00 00 00       	mov    $0x12,%eax
 268:	cd 40                	int    $0x40
 26a:	c3                   	ret    
 26b:	b8 08 00 00 00       	mov    $0x8,%eax
 270:	cd 40                	int    $0x40
 272:	c3                   	ret    
 273:	b8 13 00 00 00       	mov    $0x13,%eax
 278:	cd 40                	int    $0x40
 27a:	c3                   	ret    
 27b:	b8 14 00 00 00       	mov    $0x14,%eax
 280:	cd 40                	int    $0x40
 282:	c3                   	ret    
 283:	b8 09 00 00 00       	mov    $0x9,%eax
 288:	cd 40                	int    $0x40
 28a:	c3                   	ret    
 28b:	b8 0a 00 00 00       	mov    $0xa,%eax
 290:	cd 40                	int    $0x40
 292:	c3                   	ret    
 293:	b8 0b 00 00 00       	mov    $0xb,%eax
 298:	cd 40                	int    $0x40
 29a:	c3                   	ret    
 29b:	b8 0c 00 00 00       	mov    $0xc,%eax
 2a0:	cd 40                	int    $0x40
 2a2:	c3                   	ret    
 2a3:	b8 0d 00 00 00       	mov    $0xd,%eax
 2a8:	cd 40                	int    $0x40
 2aa:	c3                   	ret    
 2ab:	b8 0e 00 00 00       	mov    $0xe,%eax
 2b0:	cd 40                	int    $0x40
 2b2:	c3                   	ret    
 2b3:	b8 16 00 00 00       	mov    $0x16,%eax
 2b8:	cd 40                	int    $0x40
 2ba:	c3                   	ret    
 2bb:	b8 17 00 00 00       	mov    $0x17,%eax
 2c0:	cd 40                	int    $0x40
 2c2:	c3                   	ret    
 2c3:	55                   	push   %ebp
 2c4:	89 e5                	mov    %esp,%ebp
 2c6:	83 ec 1c             	sub    $0x1c,%esp
 2c9:	88 55 f4             	mov    %dl,-0xc(%ebp)
 2cc:	6a 01                	push   $0x1
 2ce:	8d 55 f4             	lea    -0xc(%ebp),%edx
 2d1:	52                   	push   %edx
 2d2:	50                   	push   %eax
 2d3:	e8 5b ff ff ff       	call   0x233
 2d8:	83 c4 10             	add    $0x10,%esp
 2db:	c9                   	leave  
 2dc:	c3                   	ret    
 2dd:	55                   	push   %ebp
 2de:	89 e5                	mov    %esp,%ebp
 2e0:	57                   	push   %edi
 2e1:	56                   	push   %esi
 2e2:	53                   	push   %ebx
 2e3:	83 ec 2c             	sub    $0x2c,%esp
 2e6:	89 45 d0             	mov    %eax,-0x30(%ebp)
 2e9:	89 d0                	mov    %edx,%eax
 2eb:	89 ce                	mov    %ecx,%esi
 2ed:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 2f1:	0f 95 c1             	setne  %cl
 2f4:	c1 ea 1f             	shr    $0x1f,%edx
 2f7:	84 d1                	test   %dl,%cl
 2f9:	74 44                	je     0x33f
 2fb:	f7 d8                	neg    %eax
 2fd:	89 c1                	mov    %eax,%ecx
 2ff:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 306:	bb 00 00 00 00       	mov    $0x0,%ebx
 30b:	89 c8                	mov    %ecx,%eax
 30d:	ba 00 00 00 00       	mov    $0x0,%edx
 312:	f7 f6                	div    %esi
 314:	89 df                	mov    %ebx,%edi
 316:	83 c3 01             	add    $0x1,%ebx
 319:	0f b6 92 88 06 00 00 	movzbl 0x688(%edx),%edx
 320:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 324:	89 ca                	mov    %ecx,%edx
 326:	89 c1                	mov    %eax,%ecx
 328:	39 d6                	cmp    %edx,%esi
 32a:	76 df                	jbe    0x30b
 32c:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 330:	74 31                	je     0x363
 332:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 337:	8d 5f 02             	lea    0x2(%edi),%ebx
 33a:	8b 75 d0             	mov    -0x30(%ebp),%esi
 33d:	eb 17                	jmp    0x356
 33f:	89 c1                	mov    %eax,%ecx
 341:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 348:	eb bc                	jmp    0x306
 34a:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 34f:	89 f0                	mov    %esi,%eax
 351:	e8 6d ff ff ff       	call   0x2c3
 356:	83 eb 01             	sub    $0x1,%ebx
 359:	79 ef                	jns    0x34a
 35b:	83 c4 2c             	add    $0x2c,%esp
 35e:	5b                   	pop    %ebx
 35f:	5e                   	pop    %esi
 360:	5f                   	pop    %edi
 361:	5d                   	pop    %ebp
 362:	c3                   	ret    
 363:	8b 75 d0             	mov    -0x30(%ebp),%esi
 366:	eb ee                	jmp    0x356
 368:	55                   	push   %ebp
 369:	89 e5                	mov    %esp,%ebp
 36b:	57                   	push   %edi
 36c:	56                   	push   %esi
 36d:	53                   	push   %ebx
 36e:	83 ec 1c             	sub    $0x1c,%esp
 371:	8d 45 10             	lea    0x10(%ebp),%eax
 374:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 377:	be 00 00 00 00       	mov    $0x0,%esi
 37c:	bb 00 00 00 00       	mov    $0x0,%ebx
 381:	eb 14                	jmp    0x397
 383:	89 fa                	mov    %edi,%edx
 385:	8b 45 08             	mov    0x8(%ebp),%eax
 388:	e8 36 ff ff ff       	call   0x2c3
 38d:	eb 05                	jmp    0x394
 38f:	83 fe 25             	cmp    $0x25,%esi
 392:	74 25                	je     0x3b9
 394:	83 c3 01             	add    $0x1,%ebx
 397:	8b 45 0c             	mov    0xc(%ebp),%eax
 39a:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 39e:	84 c0                	test   %al,%al
 3a0:	0f 84 20 01 00 00    	je     0x4c6
 3a6:	0f be f8             	movsbl %al,%edi
 3a9:	0f b6 c0             	movzbl %al,%eax
 3ac:	85 f6                	test   %esi,%esi
 3ae:	75 df                	jne    0x38f
 3b0:	83 f8 25             	cmp    $0x25,%eax
 3b3:	75 ce                	jne    0x383
 3b5:	89 c6                	mov    %eax,%esi
 3b7:	eb db                	jmp    0x394
 3b9:	83 f8 25             	cmp    $0x25,%eax
 3bc:	0f 84 cf 00 00 00    	je     0x491
 3c2:	0f 8c dd 00 00 00    	jl     0x4a5
 3c8:	83 f8 78             	cmp    $0x78,%eax
 3cb:	0f 8f d4 00 00 00    	jg     0x4a5
 3d1:	83 f8 63             	cmp    $0x63,%eax
 3d4:	0f 8c cb 00 00 00    	jl     0x4a5
 3da:	83 e8 63             	sub    $0x63,%eax
 3dd:	83 f8 15             	cmp    $0x15,%eax
 3e0:	0f 87 bf 00 00 00    	ja     0x4a5
 3e6:	ff 24 85 30 06 00 00 	jmp    *0x630(,%eax,4)
 3ed:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 3f0:	8b 17                	mov    (%edi),%edx
 3f2:	83 ec 0c             	sub    $0xc,%esp
 3f5:	6a 01                	push   $0x1
 3f7:	b9 0a 00 00 00       	mov    $0xa,%ecx
 3fc:	8b 45 08             	mov    0x8(%ebp),%eax
 3ff:	e8 d9 fe ff ff       	call   0x2dd
 404:	83 c7 04             	add    $0x4,%edi
 407:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 40a:	83 c4 10             	add    $0x10,%esp
 40d:	be 00 00 00 00       	mov    $0x0,%esi
 412:	eb 80                	jmp    0x394
 414:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 417:	8b 17                	mov    (%edi),%edx
 419:	83 ec 0c             	sub    $0xc,%esp
 41c:	6a 00                	push   $0x0
 41e:	b9 10 00 00 00       	mov    $0x10,%ecx
 423:	8b 45 08             	mov    0x8(%ebp),%eax
 426:	e8 b2 fe ff ff       	call   0x2dd
 42b:	83 c7 04             	add    $0x4,%edi
 42e:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 431:	83 c4 10             	add    $0x10,%esp
 434:	be 00 00 00 00       	mov    $0x0,%esi
 439:	e9 56 ff ff ff       	jmp    0x394
 43e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 441:	8b 30                	mov    (%eax),%esi
 443:	83 c0 04             	add    $0x4,%eax
 446:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 449:	85 f6                	test   %esi,%esi
 44b:	75 15                	jne    0x462
 44d:	be 29 06 00 00       	mov    $0x629,%esi
 452:	eb 0e                	jmp    0x462
 454:	0f be d2             	movsbl %dl,%edx
 457:	8b 45 08             	mov    0x8(%ebp),%eax
 45a:	e8 64 fe ff ff       	call   0x2c3
 45f:	83 c6 01             	add    $0x1,%esi
 462:	0f b6 16             	movzbl (%esi),%edx
 465:	84 d2                	test   %dl,%dl
 467:	75 eb                	jne    0x454
 469:	be 00 00 00 00       	mov    $0x0,%esi
 46e:	e9 21 ff ff ff       	jmp    0x394
 473:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 476:	0f be 17             	movsbl (%edi),%edx
 479:	8b 45 08             	mov    0x8(%ebp),%eax
 47c:	e8 42 fe ff ff       	call   0x2c3
 481:	83 c7 04             	add    $0x4,%edi
 484:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 487:	be 00 00 00 00       	mov    $0x0,%esi
 48c:	e9 03 ff ff ff       	jmp    0x394
 491:	89 fa                	mov    %edi,%edx
 493:	8b 45 08             	mov    0x8(%ebp),%eax
 496:	e8 28 fe ff ff       	call   0x2c3
 49b:	be 00 00 00 00       	mov    $0x0,%esi
 4a0:	e9 ef fe ff ff       	jmp    0x394
 4a5:	ba 25 00 00 00       	mov    $0x25,%edx
 4aa:	8b 45 08             	mov    0x8(%ebp),%eax
 4ad:	e8 11 fe ff ff       	call   0x2c3
 4b2:	89 fa                	mov    %edi,%edx
 4b4:	8b 45 08             	mov    0x8(%ebp),%eax
 4b7:	e8 07 fe ff ff       	call   0x2c3
 4bc:	be 00 00 00 00       	mov    $0x0,%esi
 4c1:	e9 ce fe ff ff       	jmp    0x394
 4c6:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4c9:	5b                   	pop    %ebx
 4ca:	5e                   	pop    %esi
 4cb:	5f                   	pop    %edi
 4cc:	5d                   	pop    %ebp
 4cd:	c3                   	ret    
 4ce:	f3 0f 1e fb          	endbr32 
 4d2:	55                   	push   %ebp
 4d3:	89 e5                	mov    %esp,%ebp
 4d5:	57                   	push   %edi
 4d6:	56                   	push   %esi
 4d7:	53                   	push   %ebx
 4d8:	8b 5d 08             	mov    0x8(%ebp),%ebx
 4db:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 4de:	a1 34 09 00 00       	mov    0x934,%eax
 4e3:	eb 02                	jmp    0x4e7
 4e5:	89 d0                	mov    %edx,%eax
 4e7:	39 c8                	cmp    %ecx,%eax
 4e9:	73 04                	jae    0x4ef
 4eb:	39 08                	cmp    %ecx,(%eax)
 4ed:	77 12                	ja     0x501
 4ef:	8b 10                	mov    (%eax),%edx
 4f1:	39 c2                	cmp    %eax,%edx
 4f3:	77 f0                	ja     0x4e5
 4f5:	39 c8                	cmp    %ecx,%eax
 4f7:	72 08                	jb     0x501
 4f9:	39 ca                	cmp    %ecx,%edx
 4fb:	77 04                	ja     0x501
 4fd:	89 d0                	mov    %edx,%eax
 4ff:	eb e6                	jmp    0x4e7
 501:	8b 73 fc             	mov    -0x4(%ebx),%esi
 504:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 507:	8b 10                	mov    (%eax),%edx
 509:	39 d7                	cmp    %edx,%edi
 50b:	74 19                	je     0x526
 50d:	89 53 f8             	mov    %edx,-0x8(%ebx)
 510:	8b 50 04             	mov    0x4(%eax),%edx
 513:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 516:	39 ce                	cmp    %ecx,%esi
 518:	74 1b                	je     0x535
 51a:	89 08                	mov    %ecx,(%eax)
 51c:	a3 34 09 00 00       	mov    %eax,0x934
 521:	5b                   	pop    %ebx
 522:	5e                   	pop    %esi
 523:	5f                   	pop    %edi
 524:	5d                   	pop    %ebp
 525:	c3                   	ret    
 526:	03 72 04             	add    0x4(%edx),%esi
 529:	89 73 fc             	mov    %esi,-0x4(%ebx)
 52c:	8b 10                	mov    (%eax),%edx
 52e:	8b 12                	mov    (%edx),%edx
 530:	89 53 f8             	mov    %edx,-0x8(%ebx)
 533:	eb db                	jmp    0x510
 535:	03 53 fc             	add    -0x4(%ebx),%edx
 538:	89 50 04             	mov    %edx,0x4(%eax)
 53b:	8b 53 f8             	mov    -0x8(%ebx),%edx
 53e:	89 10                	mov    %edx,(%eax)
 540:	eb da                	jmp    0x51c
 542:	55                   	push   %ebp
 543:	89 e5                	mov    %esp,%ebp
 545:	53                   	push   %ebx
 546:	83 ec 04             	sub    $0x4,%esp
 549:	89 c3                	mov    %eax,%ebx
 54b:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 550:	77 05                	ja     0x557
 552:	bb 00 10 00 00       	mov    $0x1000,%ebx
 557:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 55e:	83 ec 0c             	sub    $0xc,%esp
 561:	50                   	push   %eax
 562:	e8 34 fd ff ff       	call   0x29b
 567:	83 c4 10             	add    $0x10,%esp
 56a:	83 f8 ff             	cmp    $0xffffffff,%eax
 56d:	74 1c                	je     0x58b
 56f:	89 58 04             	mov    %ebx,0x4(%eax)
 572:	83 c0 08             	add    $0x8,%eax
 575:	83 ec 0c             	sub    $0xc,%esp
 578:	50                   	push   %eax
 579:	e8 50 ff ff ff       	call   0x4ce
 57e:	a1 34 09 00 00       	mov    0x934,%eax
 583:	83 c4 10             	add    $0x10,%esp
 586:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 589:	c9                   	leave  
 58a:	c3                   	ret    
 58b:	b8 00 00 00 00       	mov    $0x0,%eax
 590:	eb f4                	jmp    0x586
 592:	f3 0f 1e fb          	endbr32 
 596:	55                   	push   %ebp
 597:	89 e5                	mov    %esp,%ebp
 599:	53                   	push   %ebx
 59a:	83 ec 04             	sub    $0x4,%esp
 59d:	8b 45 08             	mov    0x8(%ebp),%eax
 5a0:	8d 58 07             	lea    0x7(%eax),%ebx
 5a3:	c1 eb 03             	shr    $0x3,%ebx
 5a6:	83 c3 01             	add    $0x1,%ebx
 5a9:	8b 0d 34 09 00 00    	mov    0x934,%ecx
 5af:	85 c9                	test   %ecx,%ecx
 5b1:	74 04                	je     0x5b7
 5b3:	8b 01                	mov    (%ecx),%eax
 5b5:	eb 4b                	jmp    0x602
 5b7:	c7 05 34 09 00 00 38 	movl   $0x938,0x934
 5be:	09 00 00 
 5c1:	c7 05 38 09 00 00 38 	movl   $0x938,0x938
 5c8:	09 00 00 
 5cb:	c7 05 3c 09 00 00 00 	movl   $0x0,0x93c
 5d2:	00 00 00 
 5d5:	b9 38 09 00 00       	mov    $0x938,%ecx
 5da:	eb d7                	jmp    0x5b3
 5dc:	74 1a                	je     0x5f8
 5de:	29 da                	sub    %ebx,%edx
 5e0:	89 50 04             	mov    %edx,0x4(%eax)
 5e3:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 5e6:	89 58 04             	mov    %ebx,0x4(%eax)
 5e9:	89 0d 34 09 00 00    	mov    %ecx,0x934
 5ef:	83 c0 08             	add    $0x8,%eax
 5f2:	83 c4 04             	add    $0x4,%esp
 5f5:	5b                   	pop    %ebx
 5f6:	5d                   	pop    %ebp
 5f7:	c3                   	ret    
 5f8:	8b 10                	mov    (%eax),%edx
 5fa:	89 11                	mov    %edx,(%ecx)
 5fc:	eb eb                	jmp    0x5e9
 5fe:	89 c1                	mov    %eax,%ecx
 600:	8b 00                	mov    (%eax),%eax
 602:	8b 50 04             	mov    0x4(%eax),%edx
 605:	39 da                	cmp    %ebx,%edx
 607:	73 d3                	jae    0x5dc
 609:	39 05 34 09 00 00    	cmp    %eax,0x934
 60f:	75 ed                	jne    0x5fe
 611:	89 d8                	mov    %ebx,%eax
 613:	e8 2a ff ff ff       	call   0x542
 618:	85 c0                	test   %eax,%eax
 61a:	75 e2                	jne    0x5fe
 61c:	eb d4                	jmp    0x5f2
