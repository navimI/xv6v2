
_tsbrk5:     formato del fichero elf32-i386


Desensamblado de la sección .text:

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
  17:	68 90 06 00 00       	push   $0x690
  1c:	6a 01                	push   $0x1
  1e:	e8 ae 03 00 00       	call   0x3d1
  23:	c6 43 01 01          	movb   $0x1,0x1(%ebx)
  27:	83 c4 10             	add    $0x10,%esp
  2a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  2d:	c9                   	leave  
  2e:	c3                   	ret    
  2f:	f3 0f 1e fb          	endbr32 
  33:	55                   	push   %ebp
  34:	89 e5                	mov    %esp,%ebp
  36:	83 ec 10             	sub    $0x10,%esp
  39:	68 a8 06 00 00       	push   $0x6a8
  3e:	6a 01                	push   $0x1
  40:	e8 8c 03 00 00       	call   0x3d1
  45:	83 c4 0c             	add    $0xc,%esp
  48:	68 23 1a 00 00       	push   $0x1a23
  4d:	68 a4 06 00 00       	push   $0x6a4
  52:	6a 01                	push   $0x1
  54:	e8 78 03 00 00       	call   0x3d1
  59:	c6 05 23 1a 00 00 01 	movb   $0x1,0x1a23
  60:	83 c4 10             	add    $0x10,%esp
  63:	c9                   	leave  
  64:	c3                   	ret    
  65:	f3 0f 1e fb          	endbr32 
  69:	55                   	push   %ebp
  6a:	89 e5                	mov    %esp,%ebp
  6c:	83 ec 10             	sub    $0x10,%esp
  6f:	68 a8 06 00 00       	push   $0x6a8
  74:	6a 01                	push   $0x1
  76:	e8 56 03 00 00       	call   0x3d1
  7b:	c6 05 02 00 00 80 01 	movb   $0x1,0x80000002
  82:	83 c4 10             	add    $0x10,%esp
  85:	c9                   	leave  
  86:	c3                   	ret    
  87:	f3 0f 1e fb          	endbr32 
  8b:	8d 4c 24 04          	lea    0x4(%esp),%ecx
  8f:	83 e4 f0             	and    $0xfffffff0,%esp
  92:	ff 71 fc             	pushl  -0x4(%ecx)
  95:	55                   	push   %ebp
  96:	89 e5                	mov    %esp,%ebp
  98:	51                   	push   %ecx
  99:	83 ec 0c             	sub    $0xc,%esp
  9c:	68 e0 06 00 00       	push   $0x6e0
  a1:	6a 01                	push   $0x1
  a3:	e8 29 03 00 00       	call   0x3d1
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
 1dc:	ff 75 08             	pushl  0x8(%ebp)
 1df:	e8 dc 00 00 00       	call   0x2c0
 1e4:	83 c4 10             	add    $0x10,%esp
 1e7:	85 c0                	test   %eax,%eax
 1e9:	78 24                	js     0x20f
 1eb:	89 c3                	mov    %eax,%ebx
 1ed:	83 ec 08             	sub    $0x8,%esp
 1f0:	ff 75 0c             	pushl  0xc(%ebp)
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
 356:	89 d6                	mov    %edx,%esi
 358:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 35c:	0f 95 c2             	setne  %dl
 35f:	89 f0                	mov    %esi,%eax
 361:	c1 e8 1f             	shr    $0x1f,%eax
 364:	84 c2                	test   %al,%dl
 366:	74 42                	je     0x3aa
 368:	f7 de                	neg    %esi
 36a:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 371:	bb 00 00 00 00       	mov    $0x0,%ebx
 376:	89 f0                	mov    %esi,%eax
 378:	ba 00 00 00 00       	mov    $0x0,%edx
 37d:	f7 f1                	div    %ecx
 37f:	89 df                	mov    %ebx,%edi
 381:	83 c3 01             	add    $0x1,%ebx
 384:	0f b6 92 20 07 00 00 	movzbl 0x720(%edx),%edx
 38b:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 38f:	89 f2                	mov    %esi,%edx
 391:	89 c6                	mov    %eax,%esi
 393:	39 d1                	cmp    %edx,%ecx
 395:	76 df                	jbe    0x376
 397:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 39b:	74 2f                	je     0x3cc
 39d:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 3a2:	8d 5f 02             	lea    0x2(%edi),%ebx
 3a5:	8b 75 d0             	mov    -0x30(%ebp),%esi
 3a8:	eb 15                	jmp    0x3bf
 3aa:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 3b1:	eb be                	jmp    0x371
 3b3:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 3b8:	89 f0                	mov    %esi,%eax
 3ba:	e8 71 ff ff ff       	call   0x330
 3bf:	83 eb 01             	sub    $0x1,%ebx
 3c2:	79 ef                	jns    0x3b3
 3c4:	83 c4 2c             	add    $0x2c,%esp
 3c7:	5b                   	pop    %ebx
 3c8:	5e                   	pop    %esi
 3c9:	5f                   	pop    %edi
 3ca:	5d                   	pop    %ebp
 3cb:	c3                   	ret    
 3cc:	8b 75 d0             	mov    -0x30(%ebp),%esi
 3cf:	eb ee                	jmp    0x3bf
 3d1:	f3 0f 1e fb          	endbr32 
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
 40d:	0f 84 23 01 00 00    	je     0x536
 413:	0f be f8             	movsbl %al,%edi
 416:	0f b6 c0             	movzbl %al,%eax
 419:	85 f6                	test   %esi,%esi
 41b:	75 df                	jne    0x3fc
 41d:	83 f8 25             	cmp    $0x25,%eax
 420:	75 ce                	jne    0x3f0
 422:	89 c6                	mov    %eax,%esi
 424:	eb db                	jmp    0x401
 426:	83 f8 64             	cmp    $0x64,%eax
 429:	74 49                	je     0x474
 42b:	83 f8 78             	cmp    $0x78,%eax
 42e:	0f 94 c1             	sete   %cl
 431:	83 f8 70             	cmp    $0x70,%eax
 434:	0f 94 c2             	sete   %dl
 437:	08 d1                	or     %dl,%cl
 439:	75 63                	jne    0x49e
 43b:	83 f8 73             	cmp    $0x73,%eax
 43e:	0f 84 84 00 00 00    	je     0x4c8
 444:	83 f8 63             	cmp    $0x63,%eax
 447:	0f 84 b7 00 00 00    	je     0x504
 44d:	83 f8 25             	cmp    $0x25,%eax
 450:	0f 84 cc 00 00 00    	je     0x522
 456:	ba 25 00 00 00       	mov    $0x25,%edx
 45b:	8b 45 08             	mov    0x8(%ebp),%eax
 45e:	e8 cd fe ff ff       	call   0x330
 463:	89 fa                	mov    %edi,%edx
 465:	8b 45 08             	mov    0x8(%ebp),%eax
 468:	e8 c3 fe ff ff       	call   0x330
 46d:	be 00 00 00 00       	mov    $0x0,%esi
 472:	eb 8d                	jmp    0x401
 474:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 477:	8b 17                	mov    (%edi),%edx
 479:	83 ec 0c             	sub    $0xc,%esp
 47c:	6a 01                	push   $0x1
 47e:	b9 0a 00 00 00       	mov    $0xa,%ecx
 483:	8b 45 08             	mov    0x8(%ebp),%eax
 486:	e8 bf fe ff ff       	call   0x34a
 48b:	83 c7 04             	add    $0x4,%edi
 48e:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 491:	83 c4 10             	add    $0x10,%esp
 494:	be 00 00 00 00       	mov    $0x0,%esi
 499:	e9 63 ff ff ff       	jmp    0x401
 49e:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 4a1:	8b 17                	mov    (%edi),%edx
 4a3:	83 ec 0c             	sub    $0xc,%esp
 4a6:	6a 00                	push   $0x0
 4a8:	b9 10 00 00 00       	mov    $0x10,%ecx
 4ad:	8b 45 08             	mov    0x8(%ebp),%eax
 4b0:	e8 95 fe ff ff       	call   0x34a
 4b5:	83 c7 04             	add    $0x4,%edi
 4b8:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 4bb:	83 c4 10             	add    $0x10,%esp
 4be:	be 00 00 00 00       	mov    $0x0,%esi
 4c3:	e9 39 ff ff ff       	jmp    0x401
 4c8:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 4cb:	8b 30                	mov    (%eax),%esi
 4cd:	83 c0 04             	add    $0x4,%eax
 4d0:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 4d3:	85 f6                	test   %esi,%esi
 4d5:	75 28                	jne    0x4ff
 4d7:	be 17 07 00 00       	mov    $0x717,%esi
 4dc:	8b 7d 08             	mov    0x8(%ebp),%edi
 4df:	eb 0d                	jmp    0x4ee
 4e1:	0f be d2             	movsbl %dl,%edx
 4e4:	89 f8                	mov    %edi,%eax
 4e6:	e8 45 fe ff ff       	call   0x330
 4eb:	83 c6 01             	add    $0x1,%esi
 4ee:	0f b6 16             	movzbl (%esi),%edx
 4f1:	84 d2                	test   %dl,%dl
 4f3:	75 ec                	jne    0x4e1
 4f5:	be 00 00 00 00       	mov    $0x0,%esi
 4fa:	e9 02 ff ff ff       	jmp    0x401
 4ff:	8b 7d 08             	mov    0x8(%ebp),%edi
 502:	eb ea                	jmp    0x4ee
 504:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 507:	0f be 17             	movsbl (%edi),%edx
 50a:	8b 45 08             	mov    0x8(%ebp),%eax
 50d:	e8 1e fe ff ff       	call   0x330
 512:	83 c7 04             	add    $0x4,%edi
 515:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 518:	be 00 00 00 00       	mov    $0x0,%esi
 51d:	e9 df fe ff ff       	jmp    0x401
 522:	89 fa                	mov    %edi,%edx
 524:	8b 45 08             	mov    0x8(%ebp),%eax
 527:	e8 04 fe ff ff       	call   0x330
 52c:	be 00 00 00 00       	mov    $0x0,%esi
 531:	e9 cb fe ff ff       	jmp    0x401
 536:	8d 65 f4             	lea    -0xc(%ebp),%esp
 539:	5b                   	pop    %ebx
 53a:	5e                   	pop    %esi
 53b:	5f                   	pop    %edi
 53c:	5d                   	pop    %ebp
 53d:	c3                   	ret    
 53e:	f3 0f 1e fb          	endbr32 
 542:	55                   	push   %ebp
 543:	89 e5                	mov    %esp,%ebp
 545:	57                   	push   %edi
 546:	56                   	push   %esi
 547:	53                   	push   %ebx
 548:	8b 5d 08             	mov    0x8(%ebp),%ebx
 54b:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 54e:	a1 28 0a 00 00       	mov    0xa28,%eax
 553:	eb 02                	jmp    0x557
 555:	89 d0                	mov    %edx,%eax
 557:	39 c8                	cmp    %ecx,%eax
 559:	73 04                	jae    0x55f
 55b:	39 08                	cmp    %ecx,(%eax)
 55d:	77 12                	ja     0x571
 55f:	8b 10                	mov    (%eax),%edx
 561:	39 c2                	cmp    %eax,%edx
 563:	77 f0                	ja     0x555
 565:	39 c8                	cmp    %ecx,%eax
 567:	72 08                	jb     0x571
 569:	39 ca                	cmp    %ecx,%edx
 56b:	77 04                	ja     0x571
 56d:	89 d0                	mov    %edx,%eax
 56f:	eb e6                	jmp    0x557
 571:	8b 73 fc             	mov    -0x4(%ebx),%esi
 574:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 577:	8b 10                	mov    (%eax),%edx
 579:	39 d7                	cmp    %edx,%edi
 57b:	74 19                	je     0x596
 57d:	89 53 f8             	mov    %edx,-0x8(%ebx)
 580:	8b 50 04             	mov    0x4(%eax),%edx
 583:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 586:	39 ce                	cmp    %ecx,%esi
 588:	74 1b                	je     0x5a5
 58a:	89 08                	mov    %ecx,(%eax)
 58c:	a3 28 0a 00 00       	mov    %eax,0xa28
 591:	5b                   	pop    %ebx
 592:	5e                   	pop    %esi
 593:	5f                   	pop    %edi
 594:	5d                   	pop    %ebp
 595:	c3                   	ret    
 596:	03 72 04             	add    0x4(%edx),%esi
 599:	89 73 fc             	mov    %esi,-0x4(%ebx)
 59c:	8b 10                	mov    (%eax),%edx
 59e:	8b 12                	mov    (%edx),%edx
 5a0:	89 53 f8             	mov    %edx,-0x8(%ebx)
 5a3:	eb db                	jmp    0x580
 5a5:	03 53 fc             	add    -0x4(%ebx),%edx
 5a8:	89 50 04             	mov    %edx,0x4(%eax)
 5ab:	8b 53 f8             	mov    -0x8(%ebx),%edx
 5ae:	89 10                	mov    %edx,(%eax)
 5b0:	eb da                	jmp    0x58c
 5b2:	55                   	push   %ebp
 5b3:	89 e5                	mov    %esp,%ebp
 5b5:	53                   	push   %ebx
 5b6:	83 ec 04             	sub    $0x4,%esp
 5b9:	89 c3                	mov    %eax,%ebx
 5bb:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 5c0:	77 05                	ja     0x5c7
 5c2:	bb 00 10 00 00       	mov    $0x1000,%ebx
 5c7:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 5ce:	83 ec 0c             	sub    $0xc,%esp
 5d1:	50                   	push   %eax
 5d2:	e8 31 fd ff ff       	call   0x308
 5d7:	83 c4 10             	add    $0x10,%esp
 5da:	83 f8 ff             	cmp    $0xffffffff,%eax
 5dd:	74 1c                	je     0x5fb
 5df:	89 58 04             	mov    %ebx,0x4(%eax)
 5e2:	83 c0 08             	add    $0x8,%eax
 5e5:	83 ec 0c             	sub    $0xc,%esp
 5e8:	50                   	push   %eax
 5e9:	e8 50 ff ff ff       	call   0x53e
 5ee:	a1 28 0a 00 00       	mov    0xa28,%eax
 5f3:	83 c4 10             	add    $0x10,%esp
 5f6:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 5f9:	c9                   	leave  
 5fa:	c3                   	ret    
 5fb:	b8 00 00 00 00       	mov    $0x0,%eax
 600:	eb f4                	jmp    0x5f6
 602:	f3 0f 1e fb          	endbr32 
 606:	55                   	push   %ebp
 607:	89 e5                	mov    %esp,%ebp
 609:	53                   	push   %ebx
 60a:	83 ec 04             	sub    $0x4,%esp
 60d:	8b 45 08             	mov    0x8(%ebp),%eax
 610:	8d 58 07             	lea    0x7(%eax),%ebx
 613:	c1 eb 03             	shr    $0x3,%ebx
 616:	83 c3 01             	add    $0x1,%ebx
 619:	8b 0d 28 0a 00 00    	mov    0xa28,%ecx
 61f:	85 c9                	test   %ecx,%ecx
 621:	74 04                	je     0x627
 623:	8b 01                	mov    (%ecx),%eax
 625:	eb 4b                	jmp    0x672
 627:	c7 05 28 0a 00 00 2c 	movl   $0xa2c,0xa28
 62e:	0a 00 00 
 631:	c7 05 2c 0a 00 00 2c 	movl   $0xa2c,0xa2c
 638:	0a 00 00 
 63b:	c7 05 30 0a 00 00 00 	movl   $0x0,0xa30
 642:	00 00 00 
 645:	b9 2c 0a 00 00       	mov    $0xa2c,%ecx
 64a:	eb d7                	jmp    0x623
 64c:	74 1a                	je     0x668
 64e:	29 da                	sub    %ebx,%edx
 650:	89 50 04             	mov    %edx,0x4(%eax)
 653:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 656:	89 58 04             	mov    %ebx,0x4(%eax)
 659:	89 0d 28 0a 00 00    	mov    %ecx,0xa28
 65f:	83 c0 08             	add    $0x8,%eax
 662:	83 c4 04             	add    $0x4,%esp
 665:	5b                   	pop    %ebx
 666:	5d                   	pop    %ebp
 667:	c3                   	ret    
 668:	8b 10                	mov    (%eax),%edx
 66a:	89 11                	mov    %edx,(%ecx)
 66c:	eb eb                	jmp    0x659
 66e:	89 c1                	mov    %eax,%ecx
 670:	8b 00                	mov    (%eax),%eax
 672:	8b 50 04             	mov    0x4(%eax),%edx
 675:	39 da                	cmp    %ebx,%edx
 677:	73 d3                	jae    0x64c
 679:	39 05 28 0a 00 00    	cmp    %eax,0xa28
 67f:	75 ed                	jne    0x66e
 681:	89 d8                	mov    %ebx,%eax
 683:	e8 2a ff ff ff       	call   0x5b2
 688:	85 c0                	test   %eax,%eax
 68a:	75 e2                	jne    0x66e
 68c:	eb d4                	jmp    0x662
