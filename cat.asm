
_cat:     file format elf32-i386


Disassembly of section .text:

00000000 <.text>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	56                   	push   %esi
   4:	53                   	push   %ebx
   5:	8b 75 08             	mov    0x8(%ebp),%esi
   8:	83 ec 04             	sub    $0x4,%esp
   b:	68 00 02 00 00       	push   $0x200
  10:	68 60 0a 00 00       	push   $0xa60
  15:	56                   	push   %esi
  16:	e8 d3 02 00 00       	call   0x2ee
  1b:	89 c3                	mov    %eax,%ebx
  1d:	83 c4 10             	add    $0x10,%esp
  20:	85 c0                	test   %eax,%eax
  22:	7e 32                	jle    0x56
  24:	83 ec 04             	sub    $0x4,%esp
  27:	53                   	push   %ebx
  28:	68 60 0a 00 00       	push   $0xa60
  2d:	6a 01                	push   $0x1
  2f:	e8 c2 02 00 00       	call   0x2f6
  34:	83 c4 10             	add    $0x10,%esp
  37:	39 d8                	cmp    %ebx,%eax
  39:	74 cd                	je     0x8
  3b:	83 ec 08             	sub    $0x8,%esp
  3e:	68 e4 06 00 00       	push   $0x6e4
  43:	6a 01                	push   $0x1
  45:	e8 e1 03 00 00       	call   0x42b
  4a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  51:	e8 80 02 00 00       	call   0x2d6
  56:	78 07                	js     0x5f
  58:	8d 65 f8             	lea    -0x8(%ebp),%esp
  5b:	5b                   	pop    %ebx
  5c:	5e                   	pop    %esi
  5d:	5d                   	pop    %ebp
  5e:	c3                   	ret    
  5f:	83 ec 08             	sub    $0x8,%esp
  62:	68 f6 06 00 00       	push   $0x6f6
  67:	6a 01                	push   $0x1
  69:	e8 bd 03 00 00       	call   0x42b
  6e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  75:	e8 5c 02 00 00       	call   0x2d6
  7a:	8d 4c 24 04          	lea    0x4(%esp),%ecx
  7e:	83 e4 f0             	and    $0xfffffff0,%esp
  81:	ff 71 fc             	push   -0x4(%ecx)
  84:	55                   	push   %ebp
  85:	89 e5                	mov    %esp,%ebp
  87:	57                   	push   %edi
  88:	56                   	push   %esi
  89:	53                   	push   %ebx
  8a:	51                   	push   %ecx
  8b:	83 ec 18             	sub    $0x18,%esp
  8e:	8b 01                	mov    (%ecx),%eax
  90:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  93:	8b 51 04             	mov    0x4(%ecx),%edx
  96:	89 55 e0             	mov    %edx,-0x20(%ebp)
  99:	83 f8 01             	cmp    $0x1,%eax
  9c:	7e 07                	jle    0xa5
  9e:	be 01 00 00 00       	mov    $0x1,%esi
  a3:	eb 2d                	jmp    0xd2
  a5:	83 ec 0c             	sub    $0xc,%esp
  a8:	6a 00                	push   $0x0
  aa:	e8 51 ff ff ff       	call   0x0
  af:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  b6:	e8 1b 02 00 00       	call   0x2d6
  bb:	83 ec 0c             	sub    $0xc,%esp
  be:	50                   	push   %eax
  bf:	e8 3c ff ff ff       	call   0x0
  c4:	89 1c 24             	mov    %ebx,(%esp)
  c7:	e8 32 02 00 00       	call   0x2fe
  cc:	83 c6 01             	add    $0x1,%esi
  cf:	83 c4 10             	add    $0x10,%esp
  d2:	3b 75 e4             	cmp    -0x1c(%ebp),%esi
  d5:	7d 38                	jge    0x10f
  d7:	8b 45 e0             	mov    -0x20(%ebp),%eax
  da:	8d 3c b0             	lea    (%eax,%esi,4),%edi
  dd:	83 ec 08             	sub    $0x8,%esp
  e0:	6a 00                	push   $0x0
  e2:	ff 37                	push   (%edi)
  e4:	e8 2d 02 00 00       	call   0x316
  e9:	89 c3                	mov    %eax,%ebx
  eb:	83 c4 10             	add    $0x10,%esp
  ee:	85 c0                	test   %eax,%eax
  f0:	79 c9                	jns    0xbb
  f2:	83 ec 04             	sub    $0x4,%esp
  f5:	ff 37                	push   (%edi)
  f7:	68 07 07 00 00       	push   $0x707
  fc:	6a 01                	push   $0x1
  fe:	e8 28 03 00 00       	call   0x42b
 103:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 10a:	e8 c7 01 00 00       	call   0x2d6
 10f:	83 ec 0c             	sub    $0xc,%esp
 112:	6a 00                	push   $0x0
 114:	e8 bd 01 00 00       	call   0x2d6
 119:	f3 0f 1e fb          	endbr32 
 11d:	55                   	push   %ebp
 11e:	89 e5                	mov    %esp,%ebp
 120:	56                   	push   %esi
 121:	53                   	push   %ebx
 122:	8b 75 08             	mov    0x8(%ebp),%esi
 125:	8b 55 0c             	mov    0xc(%ebp),%edx
 128:	89 f0                	mov    %esi,%eax
 12a:	89 d1                	mov    %edx,%ecx
 12c:	83 c2 01             	add    $0x1,%edx
 12f:	89 c3                	mov    %eax,%ebx
 131:	83 c0 01             	add    $0x1,%eax
 134:	0f b6 09             	movzbl (%ecx),%ecx
 137:	88 0b                	mov    %cl,(%ebx)
 139:	84 c9                	test   %cl,%cl
 13b:	75 ed                	jne    0x12a
 13d:	89 f0                	mov    %esi,%eax
 13f:	5b                   	pop    %ebx
 140:	5e                   	pop    %esi
 141:	5d                   	pop    %ebp
 142:	c3                   	ret    
 143:	f3 0f 1e fb          	endbr32 
 147:	55                   	push   %ebp
 148:	89 e5                	mov    %esp,%ebp
 14a:	8b 4d 08             	mov    0x8(%ebp),%ecx
 14d:	8b 55 0c             	mov    0xc(%ebp),%edx
 150:	0f b6 01             	movzbl (%ecx),%eax
 153:	84 c0                	test   %al,%al
 155:	74 0c                	je     0x163
 157:	3a 02                	cmp    (%edx),%al
 159:	75 08                	jne    0x163
 15b:	83 c1 01             	add    $0x1,%ecx
 15e:	83 c2 01             	add    $0x1,%edx
 161:	eb ed                	jmp    0x150
 163:	0f b6 c0             	movzbl %al,%eax
 166:	0f b6 12             	movzbl (%edx),%edx
 169:	29 d0                	sub    %edx,%eax
 16b:	5d                   	pop    %ebp
 16c:	c3                   	ret    
 16d:	f3 0f 1e fb          	endbr32 
 171:	55                   	push   %ebp
 172:	89 e5                	mov    %esp,%ebp
 174:	8b 4d 08             	mov    0x8(%ebp),%ecx
 177:	b8 00 00 00 00       	mov    $0x0,%eax
 17c:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
 180:	74 05                	je     0x187
 182:	83 c0 01             	add    $0x1,%eax
 185:	eb f5                	jmp    0x17c
 187:	5d                   	pop    %ebp
 188:	c3                   	ret    
 189:	f3 0f 1e fb          	endbr32 
 18d:	55                   	push   %ebp
 18e:	89 e5                	mov    %esp,%ebp
 190:	57                   	push   %edi
 191:	8b 55 08             	mov    0x8(%ebp),%edx
 194:	89 d7                	mov    %edx,%edi
 196:	8b 4d 10             	mov    0x10(%ebp),%ecx
 199:	8b 45 0c             	mov    0xc(%ebp),%eax
 19c:	fc                   	cld    
 19d:	f3 aa                	rep stos %al,%es:(%edi)
 19f:	89 d0                	mov    %edx,%eax
 1a1:	5f                   	pop    %edi
 1a2:	5d                   	pop    %ebp
 1a3:	c3                   	ret    
 1a4:	f3 0f 1e fb          	endbr32 
 1a8:	55                   	push   %ebp
 1a9:	89 e5                	mov    %esp,%ebp
 1ab:	8b 45 08             	mov    0x8(%ebp),%eax
 1ae:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
 1b2:	0f b6 10             	movzbl (%eax),%edx
 1b5:	84 d2                	test   %dl,%dl
 1b7:	74 09                	je     0x1c2
 1b9:	38 ca                	cmp    %cl,%dl
 1bb:	74 0a                	je     0x1c7
 1bd:	83 c0 01             	add    $0x1,%eax
 1c0:	eb f0                	jmp    0x1b2
 1c2:	b8 00 00 00 00       	mov    $0x0,%eax
 1c7:	5d                   	pop    %ebp
 1c8:	c3                   	ret    
 1c9:	f3 0f 1e fb          	endbr32 
 1cd:	55                   	push   %ebp
 1ce:	89 e5                	mov    %esp,%ebp
 1d0:	57                   	push   %edi
 1d1:	56                   	push   %esi
 1d2:	53                   	push   %ebx
 1d3:	83 ec 1c             	sub    $0x1c,%esp
 1d6:	8b 7d 08             	mov    0x8(%ebp),%edi
 1d9:	bb 00 00 00 00       	mov    $0x0,%ebx
 1de:	89 de                	mov    %ebx,%esi
 1e0:	83 c3 01             	add    $0x1,%ebx
 1e3:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 1e6:	7d 2e                	jge    0x216
 1e8:	83 ec 04             	sub    $0x4,%esp
 1eb:	6a 01                	push   $0x1
 1ed:	8d 45 e7             	lea    -0x19(%ebp),%eax
 1f0:	50                   	push   %eax
 1f1:	6a 00                	push   $0x0
 1f3:	e8 f6 00 00 00       	call   0x2ee
 1f8:	83 c4 10             	add    $0x10,%esp
 1fb:	85 c0                	test   %eax,%eax
 1fd:	7e 17                	jle    0x216
 1ff:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 203:	88 04 37             	mov    %al,(%edi,%esi,1)
 206:	3c 0a                	cmp    $0xa,%al
 208:	0f 94 c2             	sete   %dl
 20b:	3c 0d                	cmp    $0xd,%al
 20d:	0f 94 c0             	sete   %al
 210:	08 c2                	or     %al,%dl
 212:	74 ca                	je     0x1de
 214:	89 de                	mov    %ebx,%esi
 216:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 21a:	89 f8                	mov    %edi,%eax
 21c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 21f:	5b                   	pop    %ebx
 220:	5e                   	pop    %esi
 221:	5f                   	pop    %edi
 222:	5d                   	pop    %ebp
 223:	c3                   	ret    
 224:	f3 0f 1e fb          	endbr32 
 228:	55                   	push   %ebp
 229:	89 e5                	mov    %esp,%ebp
 22b:	56                   	push   %esi
 22c:	53                   	push   %ebx
 22d:	83 ec 08             	sub    $0x8,%esp
 230:	6a 00                	push   $0x0
 232:	ff 75 08             	push   0x8(%ebp)
 235:	e8 dc 00 00 00       	call   0x316
 23a:	83 c4 10             	add    $0x10,%esp
 23d:	85 c0                	test   %eax,%eax
 23f:	78 24                	js     0x265
 241:	89 c3                	mov    %eax,%ebx
 243:	83 ec 08             	sub    $0x8,%esp
 246:	ff 75 0c             	push   0xc(%ebp)
 249:	50                   	push   %eax
 24a:	e8 df 00 00 00       	call   0x32e
 24f:	89 c6                	mov    %eax,%esi
 251:	89 1c 24             	mov    %ebx,(%esp)
 254:	e8 a5 00 00 00       	call   0x2fe
 259:	83 c4 10             	add    $0x10,%esp
 25c:	89 f0                	mov    %esi,%eax
 25e:	8d 65 f8             	lea    -0x8(%ebp),%esp
 261:	5b                   	pop    %ebx
 262:	5e                   	pop    %esi
 263:	5d                   	pop    %ebp
 264:	c3                   	ret    
 265:	be ff ff ff ff       	mov    $0xffffffff,%esi
 26a:	eb f0                	jmp    0x25c
 26c:	f3 0f 1e fb          	endbr32 
 270:	55                   	push   %ebp
 271:	89 e5                	mov    %esp,%ebp
 273:	53                   	push   %ebx
 274:	8b 4d 08             	mov    0x8(%ebp),%ecx
 277:	ba 00 00 00 00       	mov    $0x0,%edx
 27c:	0f b6 01             	movzbl (%ecx),%eax
 27f:	8d 58 d0             	lea    -0x30(%eax),%ebx
 282:	80 fb 09             	cmp    $0x9,%bl
 285:	77 12                	ja     0x299
 287:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 28a:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 28d:	83 c1 01             	add    $0x1,%ecx
 290:	0f be c0             	movsbl %al,%eax
 293:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 297:	eb e3                	jmp    0x27c
 299:	89 d0                	mov    %edx,%eax
 29b:	5b                   	pop    %ebx
 29c:	5d                   	pop    %ebp
 29d:	c3                   	ret    
 29e:	f3 0f 1e fb          	endbr32 
 2a2:	55                   	push   %ebp
 2a3:	89 e5                	mov    %esp,%ebp
 2a5:	56                   	push   %esi
 2a6:	53                   	push   %ebx
 2a7:	8b 75 08             	mov    0x8(%ebp),%esi
 2aa:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 2ad:	8b 45 10             	mov    0x10(%ebp),%eax
 2b0:	89 f2                	mov    %esi,%edx
 2b2:	8d 58 ff             	lea    -0x1(%eax),%ebx
 2b5:	85 c0                	test   %eax,%eax
 2b7:	7e 0f                	jle    0x2c8
 2b9:	0f b6 01             	movzbl (%ecx),%eax
 2bc:	88 02                	mov    %al,(%edx)
 2be:	8d 49 01             	lea    0x1(%ecx),%ecx
 2c1:	8d 52 01             	lea    0x1(%edx),%edx
 2c4:	89 d8                	mov    %ebx,%eax
 2c6:	eb ea                	jmp    0x2b2
 2c8:	89 f0                	mov    %esi,%eax
 2ca:	5b                   	pop    %ebx
 2cb:	5e                   	pop    %esi
 2cc:	5d                   	pop    %ebp
 2cd:	c3                   	ret    
 2ce:	b8 01 00 00 00       	mov    $0x1,%eax
 2d3:	cd 40                	int    $0x40
 2d5:	c3                   	ret    
 2d6:	b8 02 00 00 00       	mov    $0x2,%eax
 2db:	cd 40                	int    $0x40
 2dd:	c3                   	ret    
 2de:	b8 03 00 00 00       	mov    $0x3,%eax
 2e3:	cd 40                	int    $0x40
 2e5:	c3                   	ret    
 2e6:	b8 04 00 00 00       	mov    $0x4,%eax
 2eb:	cd 40                	int    $0x40
 2ed:	c3                   	ret    
 2ee:	b8 05 00 00 00       	mov    $0x5,%eax
 2f3:	cd 40                	int    $0x40
 2f5:	c3                   	ret    
 2f6:	b8 10 00 00 00       	mov    $0x10,%eax
 2fb:	cd 40                	int    $0x40
 2fd:	c3                   	ret    
 2fe:	b8 15 00 00 00       	mov    $0x15,%eax
 303:	cd 40                	int    $0x40
 305:	c3                   	ret    
 306:	b8 06 00 00 00       	mov    $0x6,%eax
 30b:	cd 40                	int    $0x40
 30d:	c3                   	ret    
 30e:	b8 07 00 00 00       	mov    $0x7,%eax
 313:	cd 40                	int    $0x40
 315:	c3                   	ret    
 316:	b8 0f 00 00 00       	mov    $0xf,%eax
 31b:	cd 40                	int    $0x40
 31d:	c3                   	ret    
 31e:	b8 11 00 00 00       	mov    $0x11,%eax
 323:	cd 40                	int    $0x40
 325:	c3                   	ret    
 326:	b8 12 00 00 00       	mov    $0x12,%eax
 32b:	cd 40                	int    $0x40
 32d:	c3                   	ret    
 32e:	b8 08 00 00 00       	mov    $0x8,%eax
 333:	cd 40                	int    $0x40
 335:	c3                   	ret    
 336:	b8 13 00 00 00       	mov    $0x13,%eax
 33b:	cd 40                	int    $0x40
 33d:	c3                   	ret    
 33e:	b8 14 00 00 00       	mov    $0x14,%eax
 343:	cd 40                	int    $0x40
 345:	c3                   	ret    
 346:	b8 09 00 00 00       	mov    $0x9,%eax
 34b:	cd 40                	int    $0x40
 34d:	c3                   	ret    
 34e:	b8 0a 00 00 00       	mov    $0xa,%eax
 353:	cd 40                	int    $0x40
 355:	c3                   	ret    
 356:	b8 0b 00 00 00       	mov    $0xb,%eax
 35b:	cd 40                	int    $0x40
 35d:	c3                   	ret    
 35e:	b8 0c 00 00 00       	mov    $0xc,%eax
 363:	cd 40                	int    $0x40
 365:	c3                   	ret    
 366:	b8 0d 00 00 00       	mov    $0xd,%eax
 36b:	cd 40                	int    $0x40
 36d:	c3                   	ret    
 36e:	b8 0e 00 00 00       	mov    $0xe,%eax
 373:	cd 40                	int    $0x40
 375:	c3                   	ret    
 376:	b8 16 00 00 00       	mov    $0x16,%eax
 37b:	cd 40                	int    $0x40
 37d:	c3                   	ret    
 37e:	b8 17 00 00 00       	mov    $0x17,%eax
 383:	cd 40                	int    $0x40
 385:	c3                   	ret    
 386:	55                   	push   %ebp
 387:	89 e5                	mov    %esp,%ebp
 389:	83 ec 1c             	sub    $0x1c,%esp
 38c:	88 55 f4             	mov    %dl,-0xc(%ebp)
 38f:	6a 01                	push   $0x1
 391:	8d 55 f4             	lea    -0xc(%ebp),%edx
 394:	52                   	push   %edx
 395:	50                   	push   %eax
 396:	e8 5b ff ff ff       	call   0x2f6
 39b:	83 c4 10             	add    $0x10,%esp
 39e:	c9                   	leave  
 39f:	c3                   	ret    
 3a0:	55                   	push   %ebp
 3a1:	89 e5                	mov    %esp,%ebp
 3a3:	57                   	push   %edi
 3a4:	56                   	push   %esi
 3a5:	53                   	push   %ebx
 3a6:	83 ec 2c             	sub    $0x2c,%esp
 3a9:	89 45 d0             	mov    %eax,-0x30(%ebp)
 3ac:	89 d0                	mov    %edx,%eax
 3ae:	89 ce                	mov    %ecx,%esi
 3b0:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 3b4:	0f 95 c1             	setne  %cl
 3b7:	c1 ea 1f             	shr    $0x1f,%edx
 3ba:	84 d1                	test   %dl,%cl
 3bc:	74 44                	je     0x402
 3be:	f7 d8                	neg    %eax
 3c0:	89 c1                	mov    %eax,%ecx
 3c2:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 3c9:	bb 00 00 00 00       	mov    $0x0,%ebx
 3ce:	89 c8                	mov    %ecx,%eax
 3d0:	ba 00 00 00 00       	mov    $0x0,%edx
 3d5:	f7 f6                	div    %esi
 3d7:	89 df                	mov    %ebx,%edi
 3d9:	83 c3 01             	add    $0x1,%ebx
 3dc:	0f b6 92 7c 07 00 00 	movzbl 0x77c(%edx),%edx
 3e3:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 3e7:	89 ca                	mov    %ecx,%edx
 3e9:	89 c1                	mov    %eax,%ecx
 3eb:	39 d6                	cmp    %edx,%esi
 3ed:	76 df                	jbe    0x3ce
 3ef:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 3f3:	74 31                	je     0x426
 3f5:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 3fa:	8d 5f 02             	lea    0x2(%edi),%ebx
 3fd:	8b 75 d0             	mov    -0x30(%ebp),%esi
 400:	eb 17                	jmp    0x419
 402:	89 c1                	mov    %eax,%ecx
 404:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 40b:	eb bc                	jmp    0x3c9
 40d:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 412:	89 f0                	mov    %esi,%eax
 414:	e8 6d ff ff ff       	call   0x386
 419:	83 eb 01             	sub    $0x1,%ebx
 41c:	79 ef                	jns    0x40d
 41e:	83 c4 2c             	add    $0x2c,%esp
 421:	5b                   	pop    %ebx
 422:	5e                   	pop    %esi
 423:	5f                   	pop    %edi
 424:	5d                   	pop    %ebp
 425:	c3                   	ret    
 426:	8b 75 d0             	mov    -0x30(%ebp),%esi
 429:	eb ee                	jmp    0x419
 42b:	55                   	push   %ebp
 42c:	89 e5                	mov    %esp,%ebp
 42e:	57                   	push   %edi
 42f:	56                   	push   %esi
 430:	53                   	push   %ebx
 431:	83 ec 1c             	sub    $0x1c,%esp
 434:	8d 45 10             	lea    0x10(%ebp),%eax
 437:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 43a:	be 00 00 00 00       	mov    $0x0,%esi
 43f:	bb 00 00 00 00       	mov    $0x0,%ebx
 444:	eb 14                	jmp    0x45a
 446:	89 fa                	mov    %edi,%edx
 448:	8b 45 08             	mov    0x8(%ebp),%eax
 44b:	e8 36 ff ff ff       	call   0x386
 450:	eb 05                	jmp    0x457
 452:	83 fe 25             	cmp    $0x25,%esi
 455:	74 25                	je     0x47c
 457:	83 c3 01             	add    $0x1,%ebx
 45a:	8b 45 0c             	mov    0xc(%ebp),%eax
 45d:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 461:	84 c0                	test   %al,%al
 463:	0f 84 20 01 00 00    	je     0x589
 469:	0f be f8             	movsbl %al,%edi
 46c:	0f b6 c0             	movzbl %al,%eax
 46f:	85 f6                	test   %esi,%esi
 471:	75 df                	jne    0x452
 473:	83 f8 25             	cmp    $0x25,%eax
 476:	75 ce                	jne    0x446
 478:	89 c6                	mov    %eax,%esi
 47a:	eb db                	jmp    0x457
 47c:	83 f8 25             	cmp    $0x25,%eax
 47f:	0f 84 cf 00 00 00    	je     0x554
 485:	0f 8c dd 00 00 00    	jl     0x568
 48b:	83 f8 78             	cmp    $0x78,%eax
 48e:	0f 8f d4 00 00 00    	jg     0x568
 494:	83 f8 63             	cmp    $0x63,%eax
 497:	0f 8c cb 00 00 00    	jl     0x568
 49d:	83 e8 63             	sub    $0x63,%eax
 4a0:	83 f8 15             	cmp    $0x15,%eax
 4a3:	0f 87 bf 00 00 00    	ja     0x568
 4a9:	ff 24 85 24 07 00 00 	jmp    *0x724(,%eax,4)
 4b0:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 4b3:	8b 17                	mov    (%edi),%edx
 4b5:	83 ec 0c             	sub    $0xc,%esp
 4b8:	6a 01                	push   $0x1
 4ba:	b9 0a 00 00 00       	mov    $0xa,%ecx
 4bf:	8b 45 08             	mov    0x8(%ebp),%eax
 4c2:	e8 d9 fe ff ff       	call   0x3a0
 4c7:	83 c7 04             	add    $0x4,%edi
 4ca:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 4cd:	83 c4 10             	add    $0x10,%esp
 4d0:	be 00 00 00 00       	mov    $0x0,%esi
 4d5:	eb 80                	jmp    0x457
 4d7:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 4da:	8b 17                	mov    (%edi),%edx
 4dc:	83 ec 0c             	sub    $0xc,%esp
 4df:	6a 00                	push   $0x0
 4e1:	b9 10 00 00 00       	mov    $0x10,%ecx
 4e6:	8b 45 08             	mov    0x8(%ebp),%eax
 4e9:	e8 b2 fe ff ff       	call   0x3a0
 4ee:	83 c7 04             	add    $0x4,%edi
 4f1:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 4f4:	83 c4 10             	add    $0x10,%esp
 4f7:	be 00 00 00 00       	mov    $0x0,%esi
 4fc:	e9 56 ff ff ff       	jmp    0x457
 501:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 504:	8b 30                	mov    (%eax),%esi
 506:	83 c0 04             	add    $0x4,%eax
 509:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 50c:	85 f6                	test   %esi,%esi
 50e:	75 15                	jne    0x525
 510:	be 1c 07 00 00       	mov    $0x71c,%esi
 515:	eb 0e                	jmp    0x525
 517:	0f be d2             	movsbl %dl,%edx
 51a:	8b 45 08             	mov    0x8(%ebp),%eax
 51d:	e8 64 fe ff ff       	call   0x386
 522:	83 c6 01             	add    $0x1,%esi
 525:	0f b6 16             	movzbl (%esi),%edx
 528:	84 d2                	test   %dl,%dl
 52a:	75 eb                	jne    0x517
 52c:	be 00 00 00 00       	mov    $0x0,%esi
 531:	e9 21 ff ff ff       	jmp    0x457
 536:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 539:	0f be 17             	movsbl (%edi),%edx
 53c:	8b 45 08             	mov    0x8(%ebp),%eax
 53f:	e8 42 fe ff ff       	call   0x386
 544:	83 c7 04             	add    $0x4,%edi
 547:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 54a:	be 00 00 00 00       	mov    $0x0,%esi
 54f:	e9 03 ff ff ff       	jmp    0x457
 554:	89 fa                	mov    %edi,%edx
 556:	8b 45 08             	mov    0x8(%ebp),%eax
 559:	e8 28 fe ff ff       	call   0x386
 55e:	be 00 00 00 00       	mov    $0x0,%esi
 563:	e9 ef fe ff ff       	jmp    0x457
 568:	ba 25 00 00 00       	mov    $0x25,%edx
 56d:	8b 45 08             	mov    0x8(%ebp),%eax
 570:	e8 11 fe ff ff       	call   0x386
 575:	89 fa                	mov    %edi,%edx
 577:	8b 45 08             	mov    0x8(%ebp),%eax
 57a:	e8 07 fe ff ff       	call   0x386
 57f:	be 00 00 00 00       	mov    $0x0,%esi
 584:	e9 ce fe ff ff       	jmp    0x457
 589:	8d 65 f4             	lea    -0xc(%ebp),%esp
 58c:	5b                   	pop    %ebx
 58d:	5e                   	pop    %esi
 58e:	5f                   	pop    %edi
 58f:	5d                   	pop    %ebp
 590:	c3                   	ret    
 591:	f3 0f 1e fb          	endbr32 
 595:	55                   	push   %ebp
 596:	89 e5                	mov    %esp,%ebp
 598:	57                   	push   %edi
 599:	56                   	push   %esi
 59a:	53                   	push   %ebx
 59b:	8b 5d 08             	mov    0x8(%ebp),%ebx
 59e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 5a1:	a1 60 0c 00 00       	mov    0xc60,%eax
 5a6:	eb 02                	jmp    0x5aa
 5a8:	89 d0                	mov    %edx,%eax
 5aa:	39 c8                	cmp    %ecx,%eax
 5ac:	73 04                	jae    0x5b2
 5ae:	39 08                	cmp    %ecx,(%eax)
 5b0:	77 12                	ja     0x5c4
 5b2:	8b 10                	mov    (%eax),%edx
 5b4:	39 c2                	cmp    %eax,%edx
 5b6:	77 f0                	ja     0x5a8
 5b8:	39 c8                	cmp    %ecx,%eax
 5ba:	72 08                	jb     0x5c4
 5bc:	39 ca                	cmp    %ecx,%edx
 5be:	77 04                	ja     0x5c4
 5c0:	89 d0                	mov    %edx,%eax
 5c2:	eb e6                	jmp    0x5aa
 5c4:	8b 73 fc             	mov    -0x4(%ebx),%esi
 5c7:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 5ca:	8b 10                	mov    (%eax),%edx
 5cc:	39 d7                	cmp    %edx,%edi
 5ce:	74 19                	je     0x5e9
 5d0:	89 53 f8             	mov    %edx,-0x8(%ebx)
 5d3:	8b 50 04             	mov    0x4(%eax),%edx
 5d6:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 5d9:	39 ce                	cmp    %ecx,%esi
 5db:	74 1b                	je     0x5f8
 5dd:	89 08                	mov    %ecx,(%eax)
 5df:	a3 60 0c 00 00       	mov    %eax,0xc60
 5e4:	5b                   	pop    %ebx
 5e5:	5e                   	pop    %esi
 5e6:	5f                   	pop    %edi
 5e7:	5d                   	pop    %ebp
 5e8:	c3                   	ret    
 5e9:	03 72 04             	add    0x4(%edx),%esi
 5ec:	89 73 fc             	mov    %esi,-0x4(%ebx)
 5ef:	8b 10                	mov    (%eax),%edx
 5f1:	8b 12                	mov    (%edx),%edx
 5f3:	89 53 f8             	mov    %edx,-0x8(%ebx)
 5f6:	eb db                	jmp    0x5d3
 5f8:	03 53 fc             	add    -0x4(%ebx),%edx
 5fb:	89 50 04             	mov    %edx,0x4(%eax)
 5fe:	8b 53 f8             	mov    -0x8(%ebx),%edx
 601:	89 10                	mov    %edx,(%eax)
 603:	eb da                	jmp    0x5df
 605:	55                   	push   %ebp
 606:	89 e5                	mov    %esp,%ebp
 608:	53                   	push   %ebx
 609:	83 ec 04             	sub    $0x4,%esp
 60c:	89 c3                	mov    %eax,%ebx
 60e:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 613:	77 05                	ja     0x61a
 615:	bb 00 10 00 00       	mov    $0x1000,%ebx
 61a:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 621:	83 ec 0c             	sub    $0xc,%esp
 624:	50                   	push   %eax
 625:	e8 34 fd ff ff       	call   0x35e
 62a:	83 c4 10             	add    $0x10,%esp
 62d:	83 f8 ff             	cmp    $0xffffffff,%eax
 630:	74 1c                	je     0x64e
 632:	89 58 04             	mov    %ebx,0x4(%eax)
 635:	83 c0 08             	add    $0x8,%eax
 638:	83 ec 0c             	sub    $0xc,%esp
 63b:	50                   	push   %eax
 63c:	e8 50 ff ff ff       	call   0x591
 641:	a1 60 0c 00 00       	mov    0xc60,%eax
 646:	83 c4 10             	add    $0x10,%esp
 649:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 64c:	c9                   	leave  
 64d:	c3                   	ret    
 64e:	b8 00 00 00 00       	mov    $0x0,%eax
 653:	eb f4                	jmp    0x649
 655:	f3 0f 1e fb          	endbr32 
 659:	55                   	push   %ebp
 65a:	89 e5                	mov    %esp,%ebp
 65c:	53                   	push   %ebx
 65d:	83 ec 04             	sub    $0x4,%esp
 660:	8b 45 08             	mov    0x8(%ebp),%eax
 663:	8d 58 07             	lea    0x7(%eax),%ebx
 666:	c1 eb 03             	shr    $0x3,%ebx
 669:	83 c3 01             	add    $0x1,%ebx
 66c:	8b 0d 60 0c 00 00    	mov    0xc60,%ecx
 672:	85 c9                	test   %ecx,%ecx
 674:	74 04                	je     0x67a
 676:	8b 01                	mov    (%ecx),%eax
 678:	eb 4b                	jmp    0x6c5
 67a:	c7 05 60 0c 00 00 64 	movl   $0xc64,0xc60
 681:	0c 00 00 
 684:	c7 05 64 0c 00 00 64 	movl   $0xc64,0xc64
 68b:	0c 00 00 
 68e:	c7 05 68 0c 00 00 00 	movl   $0x0,0xc68
 695:	00 00 00 
 698:	b9 64 0c 00 00       	mov    $0xc64,%ecx
 69d:	eb d7                	jmp    0x676
 69f:	74 1a                	je     0x6bb
 6a1:	29 da                	sub    %ebx,%edx
 6a3:	89 50 04             	mov    %edx,0x4(%eax)
 6a6:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 6a9:	89 58 04             	mov    %ebx,0x4(%eax)
 6ac:	89 0d 60 0c 00 00    	mov    %ecx,0xc60
 6b2:	83 c0 08             	add    $0x8,%eax
 6b5:	83 c4 04             	add    $0x4,%esp
 6b8:	5b                   	pop    %ebx
 6b9:	5d                   	pop    %ebp
 6ba:	c3                   	ret    
 6bb:	8b 10                	mov    (%eax),%edx
 6bd:	89 11                	mov    %edx,(%ecx)
 6bf:	eb eb                	jmp    0x6ac
 6c1:	89 c1                	mov    %eax,%ecx
 6c3:	8b 00                	mov    (%eax),%eax
 6c5:	8b 50 04             	mov    0x4(%eax),%edx
 6c8:	39 da                	cmp    %ebx,%edx
 6ca:	73 d3                	jae    0x69f
 6cc:	39 05 60 0c 00 00    	cmp    %eax,0xc60
 6d2:	75 ed                	jne    0x6c1
 6d4:	89 d8                	mov    %ebx,%eax
 6d6:	e8 2a ff ff ff       	call   0x605
 6db:	85 c0                	test   %eax,%eax
 6dd:	75 e2                	jne    0x6c1
 6df:	eb d4                	jmp    0x6b5
