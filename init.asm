
_init:     file format elf32-i386


Disassembly of section .text:

00000000 <.text>:
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	push   -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	53                   	push   %ebx
   e:	51                   	push   %ecx
   f:	83 ec 08             	sub    $0x8,%esp
  12:	6a 02                	push   $0x2
  14:	68 78 06 00 00       	push   $0x678
  19:	e8 9e 02 00 00       	call   0x2bc
  1e:	83 c4 10             	add    $0x10,%esp
  21:	85 c0                	test   %eax,%eax
  23:	78 1b                	js     0x40
  25:	83 ec 0c             	sub    $0xc,%esp
  28:	6a 00                	push   $0x0
  2a:	e8 c5 02 00 00       	call   0x2f4
  2f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  36:	e8 b9 02 00 00       	call   0x2f4
  3b:	83 c4 10             	add    $0x10,%esp
  3e:	eb 58                	jmp    0x98
  40:	83 ec 04             	sub    $0x4,%esp
  43:	6a 01                	push   $0x1
  45:	6a 01                	push   $0x1
  47:	68 78 06 00 00       	push   $0x678
  4c:	e8 73 02 00 00       	call   0x2c4
  51:	83 c4 08             	add    $0x8,%esp
  54:	6a 02                	push   $0x2
  56:	68 78 06 00 00       	push   $0x678
  5b:	e8 5c 02 00 00       	call   0x2bc
  60:	83 c4 10             	add    $0x10,%esp
  63:	eb c0                	jmp    0x25
  65:	83 ec 08             	sub    $0x8,%esp
  68:	68 93 06 00 00       	push   $0x693
  6d:	6a 01                	push   $0x1
  6f:	e8 55 03 00 00       	call   0x3c9
  74:	e8 03 02 00 00       	call   0x27c
  79:	83 ec 08             	sub    $0x8,%esp
  7c:	68 bf 06 00 00       	push   $0x6bf
  81:	6a 01                	push   $0x1
  83:	e8 41 03 00 00       	call   0x3c9
  88:	83 c4 10             	add    $0x10,%esp
  8b:	e8 f4 01 00 00       	call   0x284
  90:	85 c0                	test   %eax,%eax
  92:	78 04                	js     0x98
  94:	39 c3                	cmp    %eax,%ebx
  96:	75 e1                	jne    0x79
  98:	83 ec 08             	sub    $0x8,%esp
  9b:	68 80 06 00 00       	push   $0x680
  a0:	6a 01                	push   $0x1
  a2:	e8 22 03 00 00       	call   0x3c9
  a7:	e8 c8 01 00 00       	call   0x274
  ac:	89 c3                	mov    %eax,%ebx
  ae:	83 c4 10             	add    $0x10,%esp
  b1:	85 c0                	test   %eax,%eax
  b3:	78 b0                	js     0x65
  b5:	75 d4                	jne    0x8b
  b7:	83 ec 08             	sub    $0x8,%esp
  ba:	68 cc 09 00 00       	push   $0x9cc
  bf:	68 a6 06 00 00       	push   $0x6a6
  c4:	e8 eb 01 00 00       	call   0x2b4
  c9:	83 c4 08             	add    $0x8,%esp
  cc:	68 a9 06 00 00       	push   $0x6a9
  d1:	6a 01                	push   $0x1
  d3:	e8 f1 02 00 00       	call   0x3c9
  d8:	e8 9f 01 00 00       	call   0x27c
  dd:	55                   	push   %ebp
  de:	89 e5                	mov    %esp,%ebp
  e0:	56                   	push   %esi
  e1:	53                   	push   %ebx
  e2:	8b 75 08             	mov    0x8(%ebp),%esi
  e5:	8b 55 0c             	mov    0xc(%ebp),%edx
  e8:	89 f0                	mov    %esi,%eax
  ea:	89 d1                	mov    %edx,%ecx
  ec:	83 c2 01             	add    $0x1,%edx
  ef:	89 c3                	mov    %eax,%ebx
  f1:	83 c0 01             	add    $0x1,%eax
  f4:	0f b6 09             	movzbl (%ecx),%ecx
  f7:	88 0b                	mov    %cl,(%ebx)
  f9:	84 c9                	test   %cl,%cl
  fb:	75 ed                	jne    0xea
  fd:	89 f0                	mov    %esi,%eax
  ff:	5b                   	pop    %ebx
 100:	5e                   	pop    %esi
 101:	5d                   	pop    %ebp
 102:	c3                   	ret    
 103:	55                   	push   %ebp
 104:	89 e5                	mov    %esp,%ebp
 106:	8b 4d 08             	mov    0x8(%ebp),%ecx
 109:	8b 55 0c             	mov    0xc(%ebp),%edx
 10c:	eb 06                	jmp    0x114
 10e:	83 c1 01             	add    $0x1,%ecx
 111:	83 c2 01             	add    $0x1,%edx
 114:	0f b6 01             	movzbl (%ecx),%eax
 117:	84 c0                	test   %al,%al
 119:	74 04                	je     0x11f
 11b:	3a 02                	cmp    (%edx),%al
 11d:	74 ef                	je     0x10e
 11f:	0f b6 c0             	movzbl %al,%eax
 122:	0f b6 12             	movzbl (%edx),%edx
 125:	29 d0                	sub    %edx,%eax
 127:	5d                   	pop    %ebp
 128:	c3                   	ret    
 129:	55                   	push   %ebp
 12a:	89 e5                	mov    %esp,%ebp
 12c:	8b 4d 08             	mov    0x8(%ebp),%ecx
 12f:	b8 00 00 00 00       	mov    $0x0,%eax
 134:	eb 03                	jmp    0x139
 136:	83 c0 01             	add    $0x1,%eax
 139:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
 13d:	75 f7                	jne    0x136
 13f:	5d                   	pop    %ebp
 140:	c3                   	ret    
 141:	55                   	push   %ebp
 142:	89 e5                	mov    %esp,%ebp
 144:	57                   	push   %edi
 145:	8b 55 08             	mov    0x8(%ebp),%edx
 148:	89 d7                	mov    %edx,%edi
 14a:	8b 4d 10             	mov    0x10(%ebp),%ecx
 14d:	8b 45 0c             	mov    0xc(%ebp),%eax
 150:	fc                   	cld    
 151:	f3 aa                	rep stos %al,%es:(%edi)
 153:	89 d0                	mov    %edx,%eax
 155:	8b 7d fc             	mov    -0x4(%ebp),%edi
 158:	c9                   	leave  
 159:	c3                   	ret    
 15a:	55                   	push   %ebp
 15b:	89 e5                	mov    %esp,%ebp
 15d:	8b 45 08             	mov    0x8(%ebp),%eax
 160:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
 164:	eb 03                	jmp    0x169
 166:	83 c0 01             	add    $0x1,%eax
 169:	0f b6 10             	movzbl (%eax),%edx
 16c:	84 d2                	test   %dl,%dl
 16e:	74 06                	je     0x176
 170:	38 ca                	cmp    %cl,%dl
 172:	75 f2                	jne    0x166
 174:	eb 05                	jmp    0x17b
 176:	b8 00 00 00 00       	mov    $0x0,%eax
 17b:	5d                   	pop    %ebp
 17c:	c3                   	ret    
 17d:	55                   	push   %ebp
 17e:	89 e5                	mov    %esp,%ebp
 180:	57                   	push   %edi
 181:	56                   	push   %esi
 182:	53                   	push   %ebx
 183:	83 ec 1c             	sub    $0x1c,%esp
 186:	8b 7d 08             	mov    0x8(%ebp),%edi
 189:	bb 00 00 00 00       	mov    $0x0,%ebx
 18e:	89 de                	mov    %ebx,%esi
 190:	83 c3 01             	add    $0x1,%ebx
 193:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 196:	7d 2e                	jge    0x1c6
 198:	83 ec 04             	sub    $0x4,%esp
 19b:	6a 01                	push   $0x1
 19d:	8d 45 e7             	lea    -0x19(%ebp),%eax
 1a0:	50                   	push   %eax
 1a1:	6a 00                	push   $0x0
 1a3:	e8 ec 00 00 00       	call   0x294
 1a8:	83 c4 10             	add    $0x10,%esp
 1ab:	85 c0                	test   %eax,%eax
 1ad:	7e 17                	jle    0x1c6
 1af:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 1b3:	88 04 37             	mov    %al,(%edi,%esi,1)
 1b6:	3c 0a                	cmp    $0xa,%al
 1b8:	0f 94 c2             	sete   %dl
 1bb:	3c 0d                	cmp    $0xd,%al
 1bd:	0f 94 c0             	sete   %al
 1c0:	08 c2                	or     %al,%dl
 1c2:	74 ca                	je     0x18e
 1c4:	89 de                	mov    %ebx,%esi
 1c6:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 1ca:	89 f8                	mov    %edi,%eax
 1cc:	8d 65 f4             	lea    -0xc(%ebp),%esp
 1cf:	5b                   	pop    %ebx
 1d0:	5e                   	pop    %esi
 1d1:	5f                   	pop    %edi
 1d2:	5d                   	pop    %ebp
 1d3:	c3                   	ret    
 1d4:	55                   	push   %ebp
 1d5:	89 e5                	mov    %esp,%ebp
 1d7:	56                   	push   %esi
 1d8:	53                   	push   %ebx
 1d9:	83 ec 08             	sub    $0x8,%esp
 1dc:	6a 00                	push   $0x0
 1de:	ff 75 08             	push   0x8(%ebp)
 1e1:	e8 d6 00 00 00       	call   0x2bc
 1e6:	83 c4 10             	add    $0x10,%esp
 1e9:	85 c0                	test   %eax,%eax
 1eb:	78 24                	js     0x211
 1ed:	89 c3                	mov    %eax,%ebx
 1ef:	83 ec 08             	sub    $0x8,%esp
 1f2:	ff 75 0c             	push   0xc(%ebp)
 1f5:	50                   	push   %eax
 1f6:	e8 d9 00 00 00       	call   0x2d4
 1fb:	89 c6                	mov    %eax,%esi
 1fd:	89 1c 24             	mov    %ebx,(%esp)
 200:	e8 9f 00 00 00       	call   0x2a4
 205:	83 c4 10             	add    $0x10,%esp
 208:	89 f0                	mov    %esi,%eax
 20a:	8d 65 f8             	lea    -0x8(%ebp),%esp
 20d:	5b                   	pop    %ebx
 20e:	5e                   	pop    %esi
 20f:	5d                   	pop    %ebp
 210:	c3                   	ret    
 211:	be ff ff ff ff       	mov    $0xffffffff,%esi
 216:	eb f0                	jmp    0x208
 218:	55                   	push   %ebp
 219:	89 e5                	mov    %esp,%ebp
 21b:	53                   	push   %ebx
 21c:	8b 4d 08             	mov    0x8(%ebp),%ecx
 21f:	ba 00 00 00 00       	mov    $0x0,%edx
 224:	eb 10                	jmp    0x236
 226:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 229:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 22c:	83 c1 01             	add    $0x1,%ecx
 22f:	0f be c0             	movsbl %al,%eax
 232:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 236:	0f b6 01             	movzbl (%ecx),%eax
 239:	8d 58 d0             	lea    -0x30(%eax),%ebx
 23c:	80 fb 09             	cmp    $0x9,%bl
 23f:	76 e5                	jbe    0x226
 241:	89 d0                	mov    %edx,%eax
 243:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 246:	c9                   	leave  
 247:	c3                   	ret    
 248:	55                   	push   %ebp
 249:	89 e5                	mov    %esp,%ebp
 24b:	56                   	push   %esi
 24c:	53                   	push   %ebx
 24d:	8b 75 08             	mov    0x8(%ebp),%esi
 250:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 253:	8b 45 10             	mov    0x10(%ebp),%eax
 256:	89 f2                	mov    %esi,%edx
 258:	eb 0d                	jmp    0x267
 25a:	0f b6 01             	movzbl (%ecx),%eax
 25d:	88 02                	mov    %al,(%edx)
 25f:	8d 49 01             	lea    0x1(%ecx),%ecx
 262:	8d 52 01             	lea    0x1(%edx),%edx
 265:	89 d8                	mov    %ebx,%eax
 267:	8d 58 ff             	lea    -0x1(%eax),%ebx
 26a:	85 c0                	test   %eax,%eax
 26c:	7f ec                	jg     0x25a
 26e:	89 f0                	mov    %esi,%eax
 270:	5b                   	pop    %ebx
 271:	5e                   	pop    %esi
 272:	5d                   	pop    %ebp
 273:	c3                   	ret    
 274:	b8 01 00 00 00       	mov    $0x1,%eax
 279:	cd 40                	int    $0x40
 27b:	c3                   	ret    
 27c:	b8 02 00 00 00       	mov    $0x2,%eax
 281:	cd 40                	int    $0x40
 283:	c3                   	ret    
 284:	b8 03 00 00 00       	mov    $0x3,%eax
 289:	cd 40                	int    $0x40
 28b:	c3                   	ret    
 28c:	b8 04 00 00 00       	mov    $0x4,%eax
 291:	cd 40                	int    $0x40
 293:	c3                   	ret    
 294:	b8 05 00 00 00       	mov    $0x5,%eax
 299:	cd 40                	int    $0x40
 29b:	c3                   	ret    
 29c:	b8 10 00 00 00       	mov    $0x10,%eax
 2a1:	cd 40                	int    $0x40
 2a3:	c3                   	ret    
 2a4:	b8 15 00 00 00       	mov    $0x15,%eax
 2a9:	cd 40                	int    $0x40
 2ab:	c3                   	ret    
 2ac:	b8 06 00 00 00       	mov    $0x6,%eax
 2b1:	cd 40                	int    $0x40
 2b3:	c3                   	ret    
 2b4:	b8 07 00 00 00       	mov    $0x7,%eax
 2b9:	cd 40                	int    $0x40
 2bb:	c3                   	ret    
 2bc:	b8 0f 00 00 00       	mov    $0xf,%eax
 2c1:	cd 40                	int    $0x40
 2c3:	c3                   	ret    
 2c4:	b8 11 00 00 00       	mov    $0x11,%eax
 2c9:	cd 40                	int    $0x40
 2cb:	c3                   	ret    
 2cc:	b8 12 00 00 00       	mov    $0x12,%eax
 2d1:	cd 40                	int    $0x40
 2d3:	c3                   	ret    
 2d4:	b8 08 00 00 00       	mov    $0x8,%eax
 2d9:	cd 40                	int    $0x40
 2db:	c3                   	ret    
 2dc:	b8 13 00 00 00       	mov    $0x13,%eax
 2e1:	cd 40                	int    $0x40
 2e3:	c3                   	ret    
 2e4:	b8 14 00 00 00       	mov    $0x14,%eax
 2e9:	cd 40                	int    $0x40
 2eb:	c3                   	ret    
 2ec:	b8 09 00 00 00       	mov    $0x9,%eax
 2f1:	cd 40                	int    $0x40
 2f3:	c3                   	ret    
 2f4:	b8 0a 00 00 00       	mov    $0xa,%eax
 2f9:	cd 40                	int    $0x40
 2fb:	c3                   	ret    
 2fc:	b8 0b 00 00 00       	mov    $0xb,%eax
 301:	cd 40                	int    $0x40
 303:	c3                   	ret    
 304:	b8 0c 00 00 00       	mov    $0xc,%eax
 309:	cd 40                	int    $0x40
 30b:	c3                   	ret    
 30c:	b8 0d 00 00 00       	mov    $0xd,%eax
 311:	cd 40                	int    $0x40
 313:	c3                   	ret    
 314:	b8 0e 00 00 00       	mov    $0xe,%eax
 319:	cd 40                	int    $0x40
 31b:	c3                   	ret    
 31c:	b8 16 00 00 00       	mov    $0x16,%eax
 321:	cd 40                	int    $0x40
 323:	c3                   	ret    
 324:	55                   	push   %ebp
 325:	89 e5                	mov    %esp,%ebp
 327:	83 ec 1c             	sub    $0x1c,%esp
 32a:	88 55 f4             	mov    %dl,-0xc(%ebp)
 32d:	6a 01                	push   $0x1
 32f:	8d 55 f4             	lea    -0xc(%ebp),%edx
 332:	52                   	push   %edx
 333:	50                   	push   %eax
 334:	e8 63 ff ff ff       	call   0x29c
 339:	83 c4 10             	add    $0x10,%esp
 33c:	c9                   	leave  
 33d:	c3                   	ret    
 33e:	55                   	push   %ebp
 33f:	89 e5                	mov    %esp,%ebp
 341:	57                   	push   %edi
 342:	56                   	push   %esi
 343:	53                   	push   %ebx
 344:	83 ec 2c             	sub    $0x2c,%esp
 347:	89 45 d0             	mov    %eax,-0x30(%ebp)
 34a:	89 d0                	mov    %edx,%eax
 34c:	89 ce                	mov    %ecx,%esi
 34e:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 352:	0f 95 c1             	setne  %cl
 355:	c1 ea 1f             	shr    $0x1f,%edx
 358:	84 d1                	test   %dl,%cl
 35a:	74 44                	je     0x3a0
 35c:	f7 d8                	neg    %eax
 35e:	89 c1                	mov    %eax,%ecx
 360:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 367:	bb 00 00 00 00       	mov    $0x0,%ebx
 36c:	89 c8                	mov    %ecx,%eax
 36e:	ba 00 00 00 00       	mov    $0x0,%edx
 373:	f7 f6                	div    %esi
 375:	89 df                	mov    %ebx,%edi
 377:	83 c3 01             	add    $0x1,%ebx
 37a:	0f b6 92 28 07 00 00 	movzbl 0x728(%edx),%edx
 381:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 385:	89 ca                	mov    %ecx,%edx
 387:	89 c1                	mov    %eax,%ecx
 389:	39 d6                	cmp    %edx,%esi
 38b:	76 df                	jbe    0x36c
 38d:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 391:	74 31                	je     0x3c4
 393:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 398:	8d 5f 02             	lea    0x2(%edi),%ebx
 39b:	8b 75 d0             	mov    -0x30(%ebp),%esi
 39e:	eb 17                	jmp    0x3b7
 3a0:	89 c1                	mov    %eax,%ecx
 3a2:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 3a9:	eb bc                	jmp    0x367
 3ab:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 3b0:	89 f0                	mov    %esi,%eax
 3b2:	e8 6d ff ff ff       	call   0x324
 3b7:	83 eb 01             	sub    $0x1,%ebx
 3ba:	79 ef                	jns    0x3ab
 3bc:	83 c4 2c             	add    $0x2c,%esp
 3bf:	5b                   	pop    %ebx
 3c0:	5e                   	pop    %esi
 3c1:	5f                   	pop    %edi
 3c2:	5d                   	pop    %ebp
 3c3:	c3                   	ret    
 3c4:	8b 75 d0             	mov    -0x30(%ebp),%esi
 3c7:	eb ee                	jmp    0x3b7
 3c9:	55                   	push   %ebp
 3ca:	89 e5                	mov    %esp,%ebp
 3cc:	57                   	push   %edi
 3cd:	56                   	push   %esi
 3ce:	53                   	push   %ebx
 3cf:	83 ec 1c             	sub    $0x1c,%esp
 3d2:	8d 45 10             	lea    0x10(%ebp),%eax
 3d5:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 3d8:	be 00 00 00 00       	mov    $0x0,%esi
 3dd:	bb 00 00 00 00       	mov    $0x0,%ebx
 3e2:	eb 14                	jmp    0x3f8
 3e4:	89 fa                	mov    %edi,%edx
 3e6:	8b 45 08             	mov    0x8(%ebp),%eax
 3e9:	e8 36 ff ff ff       	call   0x324
 3ee:	eb 05                	jmp    0x3f5
 3f0:	83 fe 25             	cmp    $0x25,%esi
 3f3:	74 25                	je     0x41a
 3f5:	83 c3 01             	add    $0x1,%ebx
 3f8:	8b 45 0c             	mov    0xc(%ebp),%eax
 3fb:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 3ff:	84 c0                	test   %al,%al
 401:	0f 84 20 01 00 00    	je     0x527
 407:	0f be f8             	movsbl %al,%edi
 40a:	0f b6 c0             	movzbl %al,%eax
 40d:	85 f6                	test   %esi,%esi
 40f:	75 df                	jne    0x3f0
 411:	83 f8 25             	cmp    $0x25,%eax
 414:	75 ce                	jne    0x3e4
 416:	89 c6                	mov    %eax,%esi
 418:	eb db                	jmp    0x3f5
 41a:	83 f8 25             	cmp    $0x25,%eax
 41d:	0f 84 cf 00 00 00    	je     0x4f2
 423:	0f 8c dd 00 00 00    	jl     0x506
 429:	83 f8 78             	cmp    $0x78,%eax
 42c:	0f 8f d4 00 00 00    	jg     0x506
 432:	83 f8 63             	cmp    $0x63,%eax
 435:	0f 8c cb 00 00 00    	jl     0x506
 43b:	83 e8 63             	sub    $0x63,%eax
 43e:	83 f8 15             	cmp    $0x15,%eax
 441:	0f 87 bf 00 00 00    	ja     0x506
 447:	ff 24 85 d0 06 00 00 	jmp    *0x6d0(,%eax,4)
 44e:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 451:	8b 17                	mov    (%edi),%edx
 453:	83 ec 0c             	sub    $0xc,%esp
 456:	6a 01                	push   $0x1
 458:	b9 0a 00 00 00       	mov    $0xa,%ecx
 45d:	8b 45 08             	mov    0x8(%ebp),%eax
 460:	e8 d9 fe ff ff       	call   0x33e
 465:	83 c7 04             	add    $0x4,%edi
 468:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 46b:	83 c4 10             	add    $0x10,%esp
 46e:	be 00 00 00 00       	mov    $0x0,%esi
 473:	eb 80                	jmp    0x3f5
 475:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 478:	8b 17                	mov    (%edi),%edx
 47a:	83 ec 0c             	sub    $0xc,%esp
 47d:	6a 00                	push   $0x0
 47f:	b9 10 00 00 00       	mov    $0x10,%ecx
 484:	8b 45 08             	mov    0x8(%ebp),%eax
 487:	e8 b2 fe ff ff       	call   0x33e
 48c:	83 c7 04             	add    $0x4,%edi
 48f:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 492:	83 c4 10             	add    $0x10,%esp
 495:	be 00 00 00 00       	mov    $0x0,%esi
 49a:	e9 56 ff ff ff       	jmp    0x3f5
 49f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 4a2:	8b 30                	mov    (%eax),%esi
 4a4:	83 c0 04             	add    $0x4,%eax
 4a7:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 4aa:	85 f6                	test   %esi,%esi
 4ac:	75 15                	jne    0x4c3
 4ae:	be c8 06 00 00       	mov    $0x6c8,%esi
 4b3:	eb 0e                	jmp    0x4c3
 4b5:	0f be d2             	movsbl %dl,%edx
 4b8:	8b 45 08             	mov    0x8(%ebp),%eax
 4bb:	e8 64 fe ff ff       	call   0x324
 4c0:	83 c6 01             	add    $0x1,%esi
 4c3:	0f b6 16             	movzbl (%esi),%edx
 4c6:	84 d2                	test   %dl,%dl
 4c8:	75 eb                	jne    0x4b5
 4ca:	be 00 00 00 00       	mov    $0x0,%esi
 4cf:	e9 21 ff ff ff       	jmp    0x3f5
 4d4:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 4d7:	0f be 17             	movsbl (%edi),%edx
 4da:	8b 45 08             	mov    0x8(%ebp),%eax
 4dd:	e8 42 fe ff ff       	call   0x324
 4e2:	83 c7 04             	add    $0x4,%edi
 4e5:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 4e8:	be 00 00 00 00       	mov    $0x0,%esi
 4ed:	e9 03 ff ff ff       	jmp    0x3f5
 4f2:	89 fa                	mov    %edi,%edx
 4f4:	8b 45 08             	mov    0x8(%ebp),%eax
 4f7:	e8 28 fe ff ff       	call   0x324
 4fc:	be 00 00 00 00       	mov    $0x0,%esi
 501:	e9 ef fe ff ff       	jmp    0x3f5
 506:	ba 25 00 00 00       	mov    $0x25,%edx
 50b:	8b 45 08             	mov    0x8(%ebp),%eax
 50e:	e8 11 fe ff ff       	call   0x324
 513:	89 fa                	mov    %edi,%edx
 515:	8b 45 08             	mov    0x8(%ebp),%eax
 518:	e8 07 fe ff ff       	call   0x324
 51d:	be 00 00 00 00       	mov    $0x0,%esi
 522:	e9 ce fe ff ff       	jmp    0x3f5
 527:	8d 65 f4             	lea    -0xc(%ebp),%esp
 52a:	5b                   	pop    %ebx
 52b:	5e                   	pop    %esi
 52c:	5f                   	pop    %edi
 52d:	5d                   	pop    %ebp
 52e:	c3                   	ret    
 52f:	55                   	push   %ebp
 530:	89 e5                	mov    %esp,%ebp
 532:	57                   	push   %edi
 533:	56                   	push   %esi
 534:	53                   	push   %ebx
 535:	8b 5d 08             	mov    0x8(%ebp),%ebx
 538:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 53b:	a1 d4 09 00 00       	mov    0x9d4,%eax
 540:	eb 02                	jmp    0x544
 542:	89 d0                	mov    %edx,%eax
 544:	39 c8                	cmp    %ecx,%eax
 546:	73 04                	jae    0x54c
 548:	39 08                	cmp    %ecx,(%eax)
 54a:	77 12                	ja     0x55e
 54c:	8b 10                	mov    (%eax),%edx
 54e:	39 c2                	cmp    %eax,%edx
 550:	77 f0                	ja     0x542
 552:	39 c8                	cmp    %ecx,%eax
 554:	72 08                	jb     0x55e
 556:	39 ca                	cmp    %ecx,%edx
 558:	77 04                	ja     0x55e
 55a:	89 d0                	mov    %edx,%eax
 55c:	eb e6                	jmp    0x544
 55e:	8b 73 fc             	mov    -0x4(%ebx),%esi
 561:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 564:	8b 10                	mov    (%eax),%edx
 566:	39 d7                	cmp    %edx,%edi
 568:	74 19                	je     0x583
 56a:	89 53 f8             	mov    %edx,-0x8(%ebx)
 56d:	8b 50 04             	mov    0x4(%eax),%edx
 570:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 573:	39 ce                	cmp    %ecx,%esi
 575:	74 1b                	je     0x592
 577:	89 08                	mov    %ecx,(%eax)
 579:	a3 d4 09 00 00       	mov    %eax,0x9d4
 57e:	5b                   	pop    %ebx
 57f:	5e                   	pop    %esi
 580:	5f                   	pop    %edi
 581:	5d                   	pop    %ebp
 582:	c3                   	ret    
 583:	03 72 04             	add    0x4(%edx),%esi
 586:	89 73 fc             	mov    %esi,-0x4(%ebx)
 589:	8b 10                	mov    (%eax),%edx
 58b:	8b 12                	mov    (%edx),%edx
 58d:	89 53 f8             	mov    %edx,-0x8(%ebx)
 590:	eb db                	jmp    0x56d
 592:	03 53 fc             	add    -0x4(%ebx),%edx
 595:	89 50 04             	mov    %edx,0x4(%eax)
 598:	8b 53 f8             	mov    -0x8(%ebx),%edx
 59b:	89 10                	mov    %edx,(%eax)
 59d:	eb da                	jmp    0x579
 59f:	55                   	push   %ebp
 5a0:	89 e5                	mov    %esp,%ebp
 5a2:	53                   	push   %ebx
 5a3:	83 ec 04             	sub    $0x4,%esp
 5a6:	89 c3                	mov    %eax,%ebx
 5a8:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 5ad:	77 05                	ja     0x5b4
 5af:	bb 00 10 00 00       	mov    $0x1000,%ebx
 5b4:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 5bb:	83 ec 0c             	sub    $0xc,%esp
 5be:	50                   	push   %eax
 5bf:	e8 40 fd ff ff       	call   0x304
 5c4:	83 c4 10             	add    $0x10,%esp
 5c7:	83 f8 ff             	cmp    $0xffffffff,%eax
 5ca:	74 1c                	je     0x5e8
 5cc:	89 58 04             	mov    %ebx,0x4(%eax)
 5cf:	83 c0 08             	add    $0x8,%eax
 5d2:	83 ec 0c             	sub    $0xc,%esp
 5d5:	50                   	push   %eax
 5d6:	e8 54 ff ff ff       	call   0x52f
 5db:	a1 d4 09 00 00       	mov    0x9d4,%eax
 5e0:	83 c4 10             	add    $0x10,%esp
 5e3:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 5e6:	c9                   	leave  
 5e7:	c3                   	ret    
 5e8:	b8 00 00 00 00       	mov    $0x0,%eax
 5ed:	eb f4                	jmp    0x5e3
 5ef:	55                   	push   %ebp
 5f0:	89 e5                	mov    %esp,%ebp
 5f2:	53                   	push   %ebx
 5f3:	83 ec 04             	sub    $0x4,%esp
 5f6:	8b 45 08             	mov    0x8(%ebp),%eax
 5f9:	8d 58 07             	lea    0x7(%eax),%ebx
 5fc:	c1 eb 03             	shr    $0x3,%ebx
 5ff:	83 c3 01             	add    $0x1,%ebx
 602:	8b 0d d4 09 00 00    	mov    0x9d4,%ecx
 608:	85 c9                	test   %ecx,%ecx
 60a:	74 04                	je     0x610
 60c:	8b 01                	mov    (%ecx),%eax
 60e:	eb 4a                	jmp    0x65a
 610:	c7 05 d4 09 00 00 d8 	movl   $0x9d8,0x9d4
 617:	09 00 00 
 61a:	c7 05 d8 09 00 00 d8 	movl   $0x9d8,0x9d8
 621:	09 00 00 
 624:	c7 05 dc 09 00 00 00 	movl   $0x0,0x9dc
 62b:	00 00 00 
 62e:	b9 d8 09 00 00       	mov    $0x9d8,%ecx
 633:	eb d7                	jmp    0x60c
 635:	74 19                	je     0x650
 637:	29 da                	sub    %ebx,%edx
 639:	89 50 04             	mov    %edx,0x4(%eax)
 63c:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 63f:	89 58 04             	mov    %ebx,0x4(%eax)
 642:	89 0d d4 09 00 00    	mov    %ecx,0x9d4
 648:	83 c0 08             	add    $0x8,%eax
 64b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 64e:	c9                   	leave  
 64f:	c3                   	ret    
 650:	8b 10                	mov    (%eax),%edx
 652:	89 11                	mov    %edx,(%ecx)
 654:	eb ec                	jmp    0x642
 656:	89 c1                	mov    %eax,%ecx
 658:	8b 00                	mov    (%eax),%eax
 65a:	8b 50 04             	mov    0x4(%eax),%edx
 65d:	39 da                	cmp    %ebx,%edx
 65f:	73 d4                	jae    0x635
 661:	39 05 d4 09 00 00    	cmp    %eax,0x9d4
 667:	75 ed                	jne    0x656
 669:	89 d8                	mov    %ebx,%eax
 66b:	e8 2f ff ff ff       	call   0x59f
 670:	85 c0                	test   %eax,%eax
 672:	75 e2                	jne    0x656
 674:	eb d5                	jmp    0x64b
