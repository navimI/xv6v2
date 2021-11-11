
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
  10:	68 20 0a 00 00       	push   $0xa20
  15:	56                   	push   %esi
  16:	e8 94 02 00 00       	call   0x2af
  1b:	89 c3                	mov    %eax,%ebx
  1d:	83 c4 10             	add    $0x10,%esp
  20:	85 c0                	test   %eax,%eax
  22:	7e 2b                	jle    0x4f
  24:	83 ec 04             	sub    $0x4,%esp
  27:	53                   	push   %ebx
  28:	68 20 0a 00 00       	push   $0xa20
  2d:	6a 01                	push   $0x1
  2f:	e8 83 02 00 00       	call   0x2b7
  34:	83 c4 10             	add    $0x10,%esp
  37:	39 d8                	cmp    %ebx,%eax
  39:	74 cd                	je     0x8
  3b:	83 ec 08             	sub    $0x8,%esp
  3e:	68 94 06 00 00       	push   $0x694
  43:	6a 01                	push   $0x1
  45:	e8 9a 03 00 00       	call   0x3e4
  4a:	e8 48 02 00 00       	call   0x297
  4f:	78 07                	js     0x58
  51:	8d 65 f8             	lea    -0x8(%ebp),%esp
  54:	5b                   	pop    %ebx
  55:	5e                   	pop    %esi
  56:	5d                   	pop    %ebp
  57:	c3                   	ret    
  58:	83 ec 08             	sub    $0x8,%esp
  5b:	68 a6 06 00 00       	push   $0x6a6
  60:	6a 01                	push   $0x1
  62:	e8 7d 03 00 00       	call   0x3e4
  67:	e8 2b 02 00 00       	call   0x297
  6c:	8d 4c 24 04          	lea    0x4(%esp),%ecx
  70:	83 e4 f0             	and    $0xfffffff0,%esp
  73:	ff 71 fc             	push   -0x4(%ecx)
  76:	55                   	push   %ebp
  77:	89 e5                	mov    %esp,%ebp
  79:	57                   	push   %edi
  7a:	56                   	push   %esi
  7b:	53                   	push   %ebx
  7c:	51                   	push   %ecx
  7d:	83 ec 18             	sub    $0x18,%esp
  80:	8b 01                	mov    (%ecx),%eax
  82:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  85:	8b 51 04             	mov    0x4(%ecx),%edx
  88:	89 55 e0             	mov    %edx,-0x20(%ebp)
  8b:	83 f8 01             	cmp    $0x1,%eax
  8e:	7e 07                	jle    0x97
  90:	be 01 00 00 00       	mov    $0x1,%esi
  95:	eb 26                	jmp    0xbd
  97:	83 ec 0c             	sub    $0xc,%esp
  9a:	6a 00                	push   $0x0
  9c:	e8 5f ff ff ff       	call   0x0
  a1:	e8 f1 01 00 00       	call   0x297
  a6:	83 ec 0c             	sub    $0xc,%esp
  a9:	50                   	push   %eax
  aa:	e8 51 ff ff ff       	call   0x0
  af:	89 1c 24             	mov    %ebx,(%esp)
  b2:	e8 08 02 00 00       	call   0x2bf
  b7:	83 c6 01             	add    $0x1,%esi
  ba:	83 c4 10             	add    $0x10,%esp
  bd:	3b 75 e4             	cmp    -0x1c(%ebp),%esi
  c0:	7d 31                	jge    0xf3
  c2:	8b 45 e0             	mov    -0x20(%ebp),%eax
  c5:	8d 3c b0             	lea    (%eax,%esi,4),%edi
  c8:	83 ec 08             	sub    $0x8,%esp
  cb:	6a 00                	push   $0x0
  cd:	ff 37                	push   (%edi)
  cf:	e8 03 02 00 00       	call   0x2d7
  d4:	89 c3                	mov    %eax,%ebx
  d6:	83 c4 10             	add    $0x10,%esp
  d9:	85 c0                	test   %eax,%eax
  db:	79 c9                	jns    0xa6
  dd:	83 ec 04             	sub    $0x4,%esp
  e0:	ff 37                	push   (%edi)
  e2:	68 b7 06 00 00       	push   $0x6b7
  e7:	6a 01                	push   $0x1
  e9:	e8 f6 02 00 00       	call   0x3e4
  ee:	e8 a4 01 00 00       	call   0x297
  f3:	e8 9f 01 00 00       	call   0x297
  f8:	55                   	push   %ebp
  f9:	89 e5                	mov    %esp,%ebp
  fb:	56                   	push   %esi
  fc:	53                   	push   %ebx
  fd:	8b 75 08             	mov    0x8(%ebp),%esi
 100:	8b 55 0c             	mov    0xc(%ebp),%edx
 103:	89 f0                	mov    %esi,%eax
 105:	89 d1                	mov    %edx,%ecx
 107:	83 c2 01             	add    $0x1,%edx
 10a:	89 c3                	mov    %eax,%ebx
 10c:	83 c0 01             	add    $0x1,%eax
 10f:	0f b6 09             	movzbl (%ecx),%ecx
 112:	88 0b                	mov    %cl,(%ebx)
 114:	84 c9                	test   %cl,%cl
 116:	75 ed                	jne    0x105
 118:	89 f0                	mov    %esi,%eax
 11a:	5b                   	pop    %ebx
 11b:	5e                   	pop    %esi
 11c:	5d                   	pop    %ebp
 11d:	c3                   	ret    
 11e:	55                   	push   %ebp
 11f:	89 e5                	mov    %esp,%ebp
 121:	8b 4d 08             	mov    0x8(%ebp),%ecx
 124:	8b 55 0c             	mov    0xc(%ebp),%edx
 127:	eb 06                	jmp    0x12f
 129:	83 c1 01             	add    $0x1,%ecx
 12c:	83 c2 01             	add    $0x1,%edx
 12f:	0f b6 01             	movzbl (%ecx),%eax
 132:	84 c0                	test   %al,%al
 134:	74 04                	je     0x13a
 136:	3a 02                	cmp    (%edx),%al
 138:	74 ef                	je     0x129
 13a:	0f b6 c0             	movzbl %al,%eax
 13d:	0f b6 12             	movzbl (%edx),%edx
 140:	29 d0                	sub    %edx,%eax
 142:	5d                   	pop    %ebp
 143:	c3                   	ret    
 144:	55                   	push   %ebp
 145:	89 e5                	mov    %esp,%ebp
 147:	8b 4d 08             	mov    0x8(%ebp),%ecx
 14a:	b8 00 00 00 00       	mov    $0x0,%eax
 14f:	eb 03                	jmp    0x154
 151:	83 c0 01             	add    $0x1,%eax
 154:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
 158:	75 f7                	jne    0x151
 15a:	5d                   	pop    %ebp
 15b:	c3                   	ret    
 15c:	55                   	push   %ebp
 15d:	89 e5                	mov    %esp,%ebp
 15f:	57                   	push   %edi
 160:	8b 55 08             	mov    0x8(%ebp),%edx
 163:	89 d7                	mov    %edx,%edi
 165:	8b 4d 10             	mov    0x10(%ebp),%ecx
 168:	8b 45 0c             	mov    0xc(%ebp),%eax
 16b:	fc                   	cld    
 16c:	f3 aa                	rep stos %al,%es:(%edi)
 16e:	89 d0                	mov    %edx,%eax
 170:	8b 7d fc             	mov    -0x4(%ebp),%edi
 173:	c9                   	leave  
 174:	c3                   	ret    
 175:	55                   	push   %ebp
 176:	89 e5                	mov    %esp,%ebp
 178:	8b 45 08             	mov    0x8(%ebp),%eax
 17b:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
 17f:	eb 03                	jmp    0x184
 181:	83 c0 01             	add    $0x1,%eax
 184:	0f b6 10             	movzbl (%eax),%edx
 187:	84 d2                	test   %dl,%dl
 189:	74 06                	je     0x191
 18b:	38 ca                	cmp    %cl,%dl
 18d:	75 f2                	jne    0x181
 18f:	eb 05                	jmp    0x196
 191:	b8 00 00 00 00       	mov    $0x0,%eax
 196:	5d                   	pop    %ebp
 197:	c3                   	ret    
 198:	55                   	push   %ebp
 199:	89 e5                	mov    %esp,%ebp
 19b:	57                   	push   %edi
 19c:	56                   	push   %esi
 19d:	53                   	push   %ebx
 19e:	83 ec 1c             	sub    $0x1c,%esp
 1a1:	8b 7d 08             	mov    0x8(%ebp),%edi
 1a4:	bb 00 00 00 00       	mov    $0x0,%ebx
 1a9:	89 de                	mov    %ebx,%esi
 1ab:	83 c3 01             	add    $0x1,%ebx
 1ae:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 1b1:	7d 2e                	jge    0x1e1
 1b3:	83 ec 04             	sub    $0x4,%esp
 1b6:	6a 01                	push   $0x1
 1b8:	8d 45 e7             	lea    -0x19(%ebp),%eax
 1bb:	50                   	push   %eax
 1bc:	6a 00                	push   $0x0
 1be:	e8 ec 00 00 00       	call   0x2af
 1c3:	83 c4 10             	add    $0x10,%esp
 1c6:	85 c0                	test   %eax,%eax
 1c8:	7e 17                	jle    0x1e1
 1ca:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 1ce:	88 04 37             	mov    %al,(%edi,%esi,1)
 1d1:	3c 0a                	cmp    $0xa,%al
 1d3:	0f 94 c2             	sete   %dl
 1d6:	3c 0d                	cmp    $0xd,%al
 1d8:	0f 94 c0             	sete   %al
 1db:	08 c2                	or     %al,%dl
 1dd:	74 ca                	je     0x1a9
 1df:	89 de                	mov    %ebx,%esi
 1e1:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 1e5:	89 f8                	mov    %edi,%eax
 1e7:	8d 65 f4             	lea    -0xc(%ebp),%esp
 1ea:	5b                   	pop    %ebx
 1eb:	5e                   	pop    %esi
 1ec:	5f                   	pop    %edi
 1ed:	5d                   	pop    %ebp
 1ee:	c3                   	ret    
 1ef:	55                   	push   %ebp
 1f0:	89 e5                	mov    %esp,%ebp
 1f2:	56                   	push   %esi
 1f3:	53                   	push   %ebx
 1f4:	83 ec 08             	sub    $0x8,%esp
 1f7:	6a 00                	push   $0x0
 1f9:	ff 75 08             	push   0x8(%ebp)
 1fc:	e8 d6 00 00 00       	call   0x2d7
 201:	83 c4 10             	add    $0x10,%esp
 204:	85 c0                	test   %eax,%eax
 206:	78 24                	js     0x22c
 208:	89 c3                	mov    %eax,%ebx
 20a:	83 ec 08             	sub    $0x8,%esp
 20d:	ff 75 0c             	push   0xc(%ebp)
 210:	50                   	push   %eax
 211:	e8 d9 00 00 00       	call   0x2ef
 216:	89 c6                	mov    %eax,%esi
 218:	89 1c 24             	mov    %ebx,(%esp)
 21b:	e8 9f 00 00 00       	call   0x2bf
 220:	83 c4 10             	add    $0x10,%esp
 223:	89 f0                	mov    %esi,%eax
 225:	8d 65 f8             	lea    -0x8(%ebp),%esp
 228:	5b                   	pop    %ebx
 229:	5e                   	pop    %esi
 22a:	5d                   	pop    %ebp
 22b:	c3                   	ret    
 22c:	be ff ff ff ff       	mov    $0xffffffff,%esi
 231:	eb f0                	jmp    0x223
 233:	55                   	push   %ebp
 234:	89 e5                	mov    %esp,%ebp
 236:	53                   	push   %ebx
 237:	8b 4d 08             	mov    0x8(%ebp),%ecx
 23a:	ba 00 00 00 00       	mov    $0x0,%edx
 23f:	eb 10                	jmp    0x251
 241:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 244:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 247:	83 c1 01             	add    $0x1,%ecx
 24a:	0f be c0             	movsbl %al,%eax
 24d:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 251:	0f b6 01             	movzbl (%ecx),%eax
 254:	8d 58 d0             	lea    -0x30(%eax),%ebx
 257:	80 fb 09             	cmp    $0x9,%bl
 25a:	76 e5                	jbe    0x241
 25c:	89 d0                	mov    %edx,%eax
 25e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 261:	c9                   	leave  
 262:	c3                   	ret    
 263:	55                   	push   %ebp
 264:	89 e5                	mov    %esp,%ebp
 266:	56                   	push   %esi
 267:	53                   	push   %ebx
 268:	8b 75 08             	mov    0x8(%ebp),%esi
 26b:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 26e:	8b 45 10             	mov    0x10(%ebp),%eax
 271:	89 f2                	mov    %esi,%edx
 273:	eb 0d                	jmp    0x282
 275:	0f b6 01             	movzbl (%ecx),%eax
 278:	88 02                	mov    %al,(%edx)
 27a:	8d 49 01             	lea    0x1(%ecx),%ecx
 27d:	8d 52 01             	lea    0x1(%edx),%edx
 280:	89 d8                	mov    %ebx,%eax
 282:	8d 58 ff             	lea    -0x1(%eax),%ebx
 285:	85 c0                	test   %eax,%eax
 287:	7f ec                	jg     0x275
 289:	89 f0                	mov    %esi,%eax
 28b:	5b                   	pop    %ebx
 28c:	5e                   	pop    %esi
 28d:	5d                   	pop    %ebp
 28e:	c3                   	ret    
 28f:	b8 01 00 00 00       	mov    $0x1,%eax
 294:	cd 40                	int    $0x40
 296:	c3                   	ret    
 297:	b8 02 00 00 00       	mov    $0x2,%eax
 29c:	cd 40                	int    $0x40
 29e:	c3                   	ret    
 29f:	b8 03 00 00 00       	mov    $0x3,%eax
 2a4:	cd 40                	int    $0x40
 2a6:	c3                   	ret    
 2a7:	b8 04 00 00 00       	mov    $0x4,%eax
 2ac:	cd 40                	int    $0x40
 2ae:	c3                   	ret    
 2af:	b8 05 00 00 00       	mov    $0x5,%eax
 2b4:	cd 40                	int    $0x40
 2b6:	c3                   	ret    
 2b7:	b8 10 00 00 00       	mov    $0x10,%eax
 2bc:	cd 40                	int    $0x40
 2be:	c3                   	ret    
 2bf:	b8 15 00 00 00       	mov    $0x15,%eax
 2c4:	cd 40                	int    $0x40
 2c6:	c3                   	ret    
 2c7:	b8 06 00 00 00       	mov    $0x6,%eax
 2cc:	cd 40                	int    $0x40
 2ce:	c3                   	ret    
 2cf:	b8 07 00 00 00       	mov    $0x7,%eax
 2d4:	cd 40                	int    $0x40
 2d6:	c3                   	ret    
 2d7:	b8 0f 00 00 00       	mov    $0xf,%eax
 2dc:	cd 40                	int    $0x40
 2de:	c3                   	ret    
 2df:	b8 11 00 00 00       	mov    $0x11,%eax
 2e4:	cd 40                	int    $0x40
 2e6:	c3                   	ret    
 2e7:	b8 12 00 00 00       	mov    $0x12,%eax
 2ec:	cd 40                	int    $0x40
 2ee:	c3                   	ret    
 2ef:	b8 08 00 00 00       	mov    $0x8,%eax
 2f4:	cd 40                	int    $0x40
 2f6:	c3                   	ret    
 2f7:	b8 13 00 00 00       	mov    $0x13,%eax
 2fc:	cd 40                	int    $0x40
 2fe:	c3                   	ret    
 2ff:	b8 14 00 00 00       	mov    $0x14,%eax
 304:	cd 40                	int    $0x40
 306:	c3                   	ret    
 307:	b8 09 00 00 00       	mov    $0x9,%eax
 30c:	cd 40                	int    $0x40
 30e:	c3                   	ret    
 30f:	b8 0a 00 00 00       	mov    $0xa,%eax
 314:	cd 40                	int    $0x40
 316:	c3                   	ret    
 317:	b8 0b 00 00 00       	mov    $0xb,%eax
 31c:	cd 40                	int    $0x40
 31e:	c3                   	ret    
 31f:	b8 0c 00 00 00       	mov    $0xc,%eax
 324:	cd 40                	int    $0x40
 326:	c3                   	ret    
 327:	b8 0d 00 00 00       	mov    $0xd,%eax
 32c:	cd 40                	int    $0x40
 32e:	c3                   	ret    
 32f:	b8 0e 00 00 00       	mov    $0xe,%eax
 334:	cd 40                	int    $0x40
 336:	c3                   	ret    
 337:	b8 16 00 00 00       	mov    $0x16,%eax
 33c:	cd 40                	int    $0x40
 33e:	c3                   	ret    
 33f:	55                   	push   %ebp
 340:	89 e5                	mov    %esp,%ebp
 342:	83 ec 1c             	sub    $0x1c,%esp
 345:	88 55 f4             	mov    %dl,-0xc(%ebp)
 348:	6a 01                	push   $0x1
 34a:	8d 55 f4             	lea    -0xc(%ebp),%edx
 34d:	52                   	push   %edx
 34e:	50                   	push   %eax
 34f:	e8 63 ff ff ff       	call   0x2b7
 354:	83 c4 10             	add    $0x10,%esp
 357:	c9                   	leave  
 358:	c3                   	ret    
 359:	55                   	push   %ebp
 35a:	89 e5                	mov    %esp,%ebp
 35c:	57                   	push   %edi
 35d:	56                   	push   %esi
 35e:	53                   	push   %ebx
 35f:	83 ec 2c             	sub    $0x2c,%esp
 362:	89 45 d0             	mov    %eax,-0x30(%ebp)
 365:	89 d0                	mov    %edx,%eax
 367:	89 ce                	mov    %ecx,%esi
 369:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 36d:	0f 95 c1             	setne  %cl
 370:	c1 ea 1f             	shr    $0x1f,%edx
 373:	84 d1                	test   %dl,%cl
 375:	74 44                	je     0x3bb
 377:	f7 d8                	neg    %eax
 379:	89 c1                	mov    %eax,%ecx
 37b:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 382:	bb 00 00 00 00       	mov    $0x0,%ebx
 387:	89 c8                	mov    %ecx,%eax
 389:	ba 00 00 00 00       	mov    $0x0,%edx
 38e:	f7 f6                	div    %esi
 390:	89 df                	mov    %ebx,%edi
 392:	83 c3 01             	add    $0x1,%ebx
 395:	0f b6 92 2c 07 00 00 	movzbl 0x72c(%edx),%edx
 39c:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 3a0:	89 ca                	mov    %ecx,%edx
 3a2:	89 c1                	mov    %eax,%ecx
 3a4:	39 d6                	cmp    %edx,%esi
 3a6:	76 df                	jbe    0x387
 3a8:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 3ac:	74 31                	je     0x3df
 3ae:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 3b3:	8d 5f 02             	lea    0x2(%edi),%ebx
 3b6:	8b 75 d0             	mov    -0x30(%ebp),%esi
 3b9:	eb 17                	jmp    0x3d2
 3bb:	89 c1                	mov    %eax,%ecx
 3bd:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 3c4:	eb bc                	jmp    0x382
 3c6:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 3cb:	89 f0                	mov    %esi,%eax
 3cd:	e8 6d ff ff ff       	call   0x33f
 3d2:	83 eb 01             	sub    $0x1,%ebx
 3d5:	79 ef                	jns    0x3c6
 3d7:	83 c4 2c             	add    $0x2c,%esp
 3da:	5b                   	pop    %ebx
 3db:	5e                   	pop    %esi
 3dc:	5f                   	pop    %edi
 3dd:	5d                   	pop    %ebp
 3de:	c3                   	ret    
 3df:	8b 75 d0             	mov    -0x30(%ebp),%esi
 3e2:	eb ee                	jmp    0x3d2
 3e4:	55                   	push   %ebp
 3e5:	89 e5                	mov    %esp,%ebp
 3e7:	57                   	push   %edi
 3e8:	56                   	push   %esi
 3e9:	53                   	push   %ebx
 3ea:	83 ec 1c             	sub    $0x1c,%esp
 3ed:	8d 45 10             	lea    0x10(%ebp),%eax
 3f0:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 3f3:	be 00 00 00 00       	mov    $0x0,%esi
 3f8:	bb 00 00 00 00       	mov    $0x0,%ebx
 3fd:	eb 14                	jmp    0x413
 3ff:	89 fa                	mov    %edi,%edx
 401:	8b 45 08             	mov    0x8(%ebp),%eax
 404:	e8 36 ff ff ff       	call   0x33f
 409:	eb 05                	jmp    0x410
 40b:	83 fe 25             	cmp    $0x25,%esi
 40e:	74 25                	je     0x435
 410:	83 c3 01             	add    $0x1,%ebx
 413:	8b 45 0c             	mov    0xc(%ebp),%eax
 416:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 41a:	84 c0                	test   %al,%al
 41c:	0f 84 20 01 00 00    	je     0x542
 422:	0f be f8             	movsbl %al,%edi
 425:	0f b6 c0             	movzbl %al,%eax
 428:	85 f6                	test   %esi,%esi
 42a:	75 df                	jne    0x40b
 42c:	83 f8 25             	cmp    $0x25,%eax
 42f:	75 ce                	jne    0x3ff
 431:	89 c6                	mov    %eax,%esi
 433:	eb db                	jmp    0x410
 435:	83 f8 25             	cmp    $0x25,%eax
 438:	0f 84 cf 00 00 00    	je     0x50d
 43e:	0f 8c dd 00 00 00    	jl     0x521
 444:	83 f8 78             	cmp    $0x78,%eax
 447:	0f 8f d4 00 00 00    	jg     0x521
 44d:	83 f8 63             	cmp    $0x63,%eax
 450:	0f 8c cb 00 00 00    	jl     0x521
 456:	83 e8 63             	sub    $0x63,%eax
 459:	83 f8 15             	cmp    $0x15,%eax
 45c:	0f 87 bf 00 00 00    	ja     0x521
 462:	ff 24 85 d4 06 00 00 	jmp    *0x6d4(,%eax,4)
 469:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 46c:	8b 17                	mov    (%edi),%edx
 46e:	83 ec 0c             	sub    $0xc,%esp
 471:	6a 01                	push   $0x1
 473:	b9 0a 00 00 00       	mov    $0xa,%ecx
 478:	8b 45 08             	mov    0x8(%ebp),%eax
 47b:	e8 d9 fe ff ff       	call   0x359
 480:	83 c7 04             	add    $0x4,%edi
 483:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 486:	83 c4 10             	add    $0x10,%esp
 489:	be 00 00 00 00       	mov    $0x0,%esi
 48e:	eb 80                	jmp    0x410
 490:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 493:	8b 17                	mov    (%edi),%edx
 495:	83 ec 0c             	sub    $0xc,%esp
 498:	6a 00                	push   $0x0
 49a:	b9 10 00 00 00       	mov    $0x10,%ecx
 49f:	8b 45 08             	mov    0x8(%ebp),%eax
 4a2:	e8 b2 fe ff ff       	call   0x359
 4a7:	83 c7 04             	add    $0x4,%edi
 4aa:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 4ad:	83 c4 10             	add    $0x10,%esp
 4b0:	be 00 00 00 00       	mov    $0x0,%esi
 4b5:	e9 56 ff ff ff       	jmp    0x410
 4ba:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 4bd:	8b 30                	mov    (%eax),%esi
 4bf:	83 c0 04             	add    $0x4,%eax
 4c2:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 4c5:	85 f6                	test   %esi,%esi
 4c7:	75 15                	jne    0x4de
 4c9:	be cc 06 00 00       	mov    $0x6cc,%esi
 4ce:	eb 0e                	jmp    0x4de
 4d0:	0f be d2             	movsbl %dl,%edx
 4d3:	8b 45 08             	mov    0x8(%ebp),%eax
 4d6:	e8 64 fe ff ff       	call   0x33f
 4db:	83 c6 01             	add    $0x1,%esi
 4de:	0f b6 16             	movzbl (%esi),%edx
 4e1:	84 d2                	test   %dl,%dl
 4e3:	75 eb                	jne    0x4d0
 4e5:	be 00 00 00 00       	mov    $0x0,%esi
 4ea:	e9 21 ff ff ff       	jmp    0x410
 4ef:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 4f2:	0f be 17             	movsbl (%edi),%edx
 4f5:	8b 45 08             	mov    0x8(%ebp),%eax
 4f8:	e8 42 fe ff ff       	call   0x33f
 4fd:	83 c7 04             	add    $0x4,%edi
 500:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 503:	be 00 00 00 00       	mov    $0x0,%esi
 508:	e9 03 ff ff ff       	jmp    0x410
 50d:	89 fa                	mov    %edi,%edx
 50f:	8b 45 08             	mov    0x8(%ebp),%eax
 512:	e8 28 fe ff ff       	call   0x33f
 517:	be 00 00 00 00       	mov    $0x0,%esi
 51c:	e9 ef fe ff ff       	jmp    0x410
 521:	ba 25 00 00 00       	mov    $0x25,%edx
 526:	8b 45 08             	mov    0x8(%ebp),%eax
 529:	e8 11 fe ff ff       	call   0x33f
 52e:	89 fa                	mov    %edi,%edx
 530:	8b 45 08             	mov    0x8(%ebp),%eax
 533:	e8 07 fe ff ff       	call   0x33f
 538:	be 00 00 00 00       	mov    $0x0,%esi
 53d:	e9 ce fe ff ff       	jmp    0x410
 542:	8d 65 f4             	lea    -0xc(%ebp),%esp
 545:	5b                   	pop    %ebx
 546:	5e                   	pop    %esi
 547:	5f                   	pop    %edi
 548:	5d                   	pop    %ebp
 549:	c3                   	ret    
 54a:	55                   	push   %ebp
 54b:	89 e5                	mov    %esp,%ebp
 54d:	57                   	push   %edi
 54e:	56                   	push   %esi
 54f:	53                   	push   %ebx
 550:	8b 5d 08             	mov    0x8(%ebp),%ebx
 553:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 556:	a1 20 0c 00 00       	mov    0xc20,%eax
 55b:	eb 02                	jmp    0x55f
 55d:	89 d0                	mov    %edx,%eax
 55f:	39 c8                	cmp    %ecx,%eax
 561:	73 04                	jae    0x567
 563:	39 08                	cmp    %ecx,(%eax)
 565:	77 12                	ja     0x579
 567:	8b 10                	mov    (%eax),%edx
 569:	39 c2                	cmp    %eax,%edx
 56b:	77 f0                	ja     0x55d
 56d:	39 c8                	cmp    %ecx,%eax
 56f:	72 08                	jb     0x579
 571:	39 ca                	cmp    %ecx,%edx
 573:	77 04                	ja     0x579
 575:	89 d0                	mov    %edx,%eax
 577:	eb e6                	jmp    0x55f
 579:	8b 73 fc             	mov    -0x4(%ebx),%esi
 57c:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 57f:	8b 10                	mov    (%eax),%edx
 581:	39 d7                	cmp    %edx,%edi
 583:	74 19                	je     0x59e
 585:	89 53 f8             	mov    %edx,-0x8(%ebx)
 588:	8b 50 04             	mov    0x4(%eax),%edx
 58b:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 58e:	39 ce                	cmp    %ecx,%esi
 590:	74 1b                	je     0x5ad
 592:	89 08                	mov    %ecx,(%eax)
 594:	a3 20 0c 00 00       	mov    %eax,0xc20
 599:	5b                   	pop    %ebx
 59a:	5e                   	pop    %esi
 59b:	5f                   	pop    %edi
 59c:	5d                   	pop    %ebp
 59d:	c3                   	ret    
 59e:	03 72 04             	add    0x4(%edx),%esi
 5a1:	89 73 fc             	mov    %esi,-0x4(%ebx)
 5a4:	8b 10                	mov    (%eax),%edx
 5a6:	8b 12                	mov    (%edx),%edx
 5a8:	89 53 f8             	mov    %edx,-0x8(%ebx)
 5ab:	eb db                	jmp    0x588
 5ad:	03 53 fc             	add    -0x4(%ebx),%edx
 5b0:	89 50 04             	mov    %edx,0x4(%eax)
 5b3:	8b 53 f8             	mov    -0x8(%ebx),%edx
 5b6:	89 10                	mov    %edx,(%eax)
 5b8:	eb da                	jmp    0x594
 5ba:	55                   	push   %ebp
 5bb:	89 e5                	mov    %esp,%ebp
 5bd:	53                   	push   %ebx
 5be:	83 ec 04             	sub    $0x4,%esp
 5c1:	89 c3                	mov    %eax,%ebx
 5c3:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 5c8:	77 05                	ja     0x5cf
 5ca:	bb 00 10 00 00       	mov    $0x1000,%ebx
 5cf:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 5d6:	83 ec 0c             	sub    $0xc,%esp
 5d9:	50                   	push   %eax
 5da:	e8 40 fd ff ff       	call   0x31f
 5df:	83 c4 10             	add    $0x10,%esp
 5e2:	83 f8 ff             	cmp    $0xffffffff,%eax
 5e5:	74 1c                	je     0x603
 5e7:	89 58 04             	mov    %ebx,0x4(%eax)
 5ea:	83 c0 08             	add    $0x8,%eax
 5ed:	83 ec 0c             	sub    $0xc,%esp
 5f0:	50                   	push   %eax
 5f1:	e8 54 ff ff ff       	call   0x54a
 5f6:	a1 20 0c 00 00       	mov    0xc20,%eax
 5fb:	83 c4 10             	add    $0x10,%esp
 5fe:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 601:	c9                   	leave  
 602:	c3                   	ret    
 603:	b8 00 00 00 00       	mov    $0x0,%eax
 608:	eb f4                	jmp    0x5fe
 60a:	55                   	push   %ebp
 60b:	89 e5                	mov    %esp,%ebp
 60d:	53                   	push   %ebx
 60e:	83 ec 04             	sub    $0x4,%esp
 611:	8b 45 08             	mov    0x8(%ebp),%eax
 614:	8d 58 07             	lea    0x7(%eax),%ebx
 617:	c1 eb 03             	shr    $0x3,%ebx
 61a:	83 c3 01             	add    $0x1,%ebx
 61d:	8b 0d 20 0c 00 00    	mov    0xc20,%ecx
 623:	85 c9                	test   %ecx,%ecx
 625:	74 04                	je     0x62b
 627:	8b 01                	mov    (%ecx),%eax
 629:	eb 4a                	jmp    0x675
 62b:	c7 05 20 0c 00 00 24 	movl   $0xc24,0xc20
 632:	0c 00 00 
 635:	c7 05 24 0c 00 00 24 	movl   $0xc24,0xc24
 63c:	0c 00 00 
 63f:	c7 05 28 0c 00 00 00 	movl   $0x0,0xc28
 646:	00 00 00 
 649:	b9 24 0c 00 00       	mov    $0xc24,%ecx
 64e:	eb d7                	jmp    0x627
 650:	74 19                	je     0x66b
 652:	29 da                	sub    %ebx,%edx
 654:	89 50 04             	mov    %edx,0x4(%eax)
 657:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 65a:	89 58 04             	mov    %ebx,0x4(%eax)
 65d:	89 0d 20 0c 00 00    	mov    %ecx,0xc20
 663:	83 c0 08             	add    $0x8,%eax
 666:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 669:	c9                   	leave  
 66a:	c3                   	ret    
 66b:	8b 10                	mov    (%eax),%edx
 66d:	89 11                	mov    %edx,(%ecx)
 66f:	eb ec                	jmp    0x65d
 671:	89 c1                	mov    %eax,%ecx
 673:	8b 00                	mov    (%eax),%eax
 675:	8b 50 04             	mov    0x4(%eax),%edx
 678:	39 da                	cmp    %ebx,%edx
 67a:	73 d4                	jae    0x650
 67c:	39 05 20 0c 00 00    	cmp    %eax,0xc20
 682:	75 ed                	jne    0x671
 684:	89 d8                	mov    %ebx,%eax
 686:	e8 2f ff ff ff       	call   0x5ba
 68b:	85 c0                	test   %eax,%eax
 68d:	75 e2                	jne    0x671
 68f:	eb d5                	jmp    0x666
