
_stressfs:     file format elf32-i386


Disassembly of section .text:

00000000 <.text>:
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	push   -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	56                   	push   %esi
   e:	53                   	push   %ebx
   f:	51                   	push   %ecx
  10:	81 ec 24 02 00 00    	sub    $0x224,%esp
  16:	c7 45 de 73 74 72 65 	movl   $0x65727473,-0x22(%ebp)
  1d:	c7 45 e2 73 73 66 73 	movl   $0x73667373,-0x1e(%ebp)
  24:	66 c7 45 e6 30 00    	movw   $0x30,-0x1a(%ebp)
  2a:	68 b8 06 00 00       	push   $0x6b8
  2f:	6a 01                	push   $0x1
  31:	e8 d2 03 00 00       	call   0x408
  36:	83 c4 0c             	add    $0xc,%esp
  39:	68 00 02 00 00       	push   $0x200
  3e:	6a 61                	push   $0x61
  40:	8d 85 de fd ff ff    	lea    -0x222(%ebp),%eax
  46:	50                   	push   %eax
  47:	e8 34 01 00 00       	call   0x180
  4c:	83 c4 10             	add    $0x10,%esp
  4f:	bb 00 00 00 00       	mov    $0x0,%ebx
  54:	83 fb 03             	cmp    $0x3,%ebx
  57:	7f 0e                	jg     0x67
  59:	e8 55 02 00 00       	call   0x2b3
  5e:	85 c0                	test   %eax,%eax
  60:	7f 05                	jg     0x67
  62:	83 c3 01             	add    $0x1,%ebx
  65:	eb ed                	jmp    0x54
  67:	83 ec 04             	sub    $0x4,%esp
  6a:	53                   	push   %ebx
  6b:	68 cb 06 00 00       	push   $0x6cb
  70:	6a 01                	push   $0x1
  72:	e8 91 03 00 00       	call   0x408
  77:	00 5d e6             	add    %bl,-0x1a(%ebp)
  7a:	83 c4 08             	add    $0x8,%esp
  7d:	68 02 02 00 00       	push   $0x202
  82:	8d 45 de             	lea    -0x22(%ebp),%eax
  85:	50                   	push   %eax
  86:	e8 70 02 00 00       	call   0x2fb
  8b:	89 c6                	mov    %eax,%esi
  8d:	83 c4 10             	add    $0x10,%esp
  90:	bb 00 00 00 00       	mov    $0x0,%ebx
  95:	eb 1b                	jmp    0xb2
  97:	83 ec 04             	sub    $0x4,%esp
  9a:	68 00 02 00 00       	push   $0x200
  9f:	8d 85 de fd ff ff    	lea    -0x222(%ebp),%eax
  a5:	50                   	push   %eax
  a6:	56                   	push   %esi
  a7:	e8 2f 02 00 00       	call   0x2db
  ac:	83 c3 01             	add    $0x1,%ebx
  af:	83 c4 10             	add    $0x10,%esp
  b2:	83 fb 13             	cmp    $0x13,%ebx
  b5:	7e e0                	jle    0x97
  b7:	83 ec 0c             	sub    $0xc,%esp
  ba:	56                   	push   %esi
  bb:	e8 23 02 00 00       	call   0x2e3
  c0:	83 c4 08             	add    $0x8,%esp
  c3:	68 d5 06 00 00       	push   $0x6d5
  c8:	6a 01                	push   $0x1
  ca:	e8 39 03 00 00       	call   0x408
  cf:	83 c4 08             	add    $0x8,%esp
  d2:	6a 00                	push   $0x0
  d4:	8d 45 de             	lea    -0x22(%ebp),%eax
  d7:	50                   	push   %eax
  d8:	e8 1e 02 00 00       	call   0x2fb
  dd:	89 c6                	mov    %eax,%esi
  df:	83 c4 10             	add    $0x10,%esp
  e2:	bb 00 00 00 00       	mov    $0x0,%ebx
  e7:	eb 1b                	jmp    0x104
  e9:	83 ec 04             	sub    $0x4,%esp
  ec:	68 00 02 00 00       	push   $0x200
  f1:	8d 85 de fd ff ff    	lea    -0x222(%ebp),%eax
  f7:	50                   	push   %eax
  f8:	56                   	push   %esi
  f9:	e8 d5 01 00 00       	call   0x2d3
  fe:	83 c3 01             	add    $0x1,%ebx
 101:	83 c4 10             	add    $0x10,%esp
 104:	83 fb 13             	cmp    $0x13,%ebx
 107:	7e e0                	jle    0xe9
 109:	83 ec 0c             	sub    $0xc,%esp
 10c:	56                   	push   %esi
 10d:	e8 d1 01 00 00       	call   0x2e3
 112:	e8 ac 01 00 00       	call   0x2c3
 117:	e8 9f 01 00 00       	call   0x2bb
 11c:	55                   	push   %ebp
 11d:	89 e5                	mov    %esp,%ebp
 11f:	56                   	push   %esi
 120:	53                   	push   %ebx
 121:	8b 75 08             	mov    0x8(%ebp),%esi
 124:	8b 55 0c             	mov    0xc(%ebp),%edx
 127:	89 f0                	mov    %esi,%eax
 129:	89 d1                	mov    %edx,%ecx
 12b:	83 c2 01             	add    $0x1,%edx
 12e:	89 c3                	mov    %eax,%ebx
 130:	83 c0 01             	add    $0x1,%eax
 133:	0f b6 09             	movzbl (%ecx),%ecx
 136:	88 0b                	mov    %cl,(%ebx)
 138:	84 c9                	test   %cl,%cl
 13a:	75 ed                	jne    0x129
 13c:	89 f0                	mov    %esi,%eax
 13e:	5b                   	pop    %ebx
 13f:	5e                   	pop    %esi
 140:	5d                   	pop    %ebp
 141:	c3                   	ret    
 142:	55                   	push   %ebp
 143:	89 e5                	mov    %esp,%ebp
 145:	8b 4d 08             	mov    0x8(%ebp),%ecx
 148:	8b 55 0c             	mov    0xc(%ebp),%edx
 14b:	eb 06                	jmp    0x153
 14d:	83 c1 01             	add    $0x1,%ecx
 150:	83 c2 01             	add    $0x1,%edx
 153:	0f b6 01             	movzbl (%ecx),%eax
 156:	84 c0                	test   %al,%al
 158:	74 04                	je     0x15e
 15a:	3a 02                	cmp    (%edx),%al
 15c:	74 ef                	je     0x14d
 15e:	0f b6 c0             	movzbl %al,%eax
 161:	0f b6 12             	movzbl (%edx),%edx
 164:	29 d0                	sub    %edx,%eax
 166:	5d                   	pop    %ebp
 167:	c3                   	ret    
 168:	55                   	push   %ebp
 169:	89 e5                	mov    %esp,%ebp
 16b:	8b 4d 08             	mov    0x8(%ebp),%ecx
 16e:	b8 00 00 00 00       	mov    $0x0,%eax
 173:	eb 03                	jmp    0x178
 175:	83 c0 01             	add    $0x1,%eax
 178:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
 17c:	75 f7                	jne    0x175
 17e:	5d                   	pop    %ebp
 17f:	c3                   	ret    
 180:	55                   	push   %ebp
 181:	89 e5                	mov    %esp,%ebp
 183:	57                   	push   %edi
 184:	8b 55 08             	mov    0x8(%ebp),%edx
 187:	89 d7                	mov    %edx,%edi
 189:	8b 4d 10             	mov    0x10(%ebp),%ecx
 18c:	8b 45 0c             	mov    0xc(%ebp),%eax
 18f:	fc                   	cld    
 190:	f3 aa                	rep stos %al,%es:(%edi)
 192:	89 d0                	mov    %edx,%eax
 194:	8b 7d fc             	mov    -0x4(%ebp),%edi
 197:	c9                   	leave  
 198:	c3                   	ret    
 199:	55                   	push   %ebp
 19a:	89 e5                	mov    %esp,%ebp
 19c:	8b 45 08             	mov    0x8(%ebp),%eax
 19f:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
 1a3:	eb 03                	jmp    0x1a8
 1a5:	83 c0 01             	add    $0x1,%eax
 1a8:	0f b6 10             	movzbl (%eax),%edx
 1ab:	84 d2                	test   %dl,%dl
 1ad:	74 06                	je     0x1b5
 1af:	38 ca                	cmp    %cl,%dl
 1b1:	75 f2                	jne    0x1a5
 1b3:	eb 05                	jmp    0x1ba
 1b5:	b8 00 00 00 00       	mov    $0x0,%eax
 1ba:	5d                   	pop    %ebp
 1bb:	c3                   	ret    
 1bc:	55                   	push   %ebp
 1bd:	89 e5                	mov    %esp,%ebp
 1bf:	57                   	push   %edi
 1c0:	56                   	push   %esi
 1c1:	53                   	push   %ebx
 1c2:	83 ec 1c             	sub    $0x1c,%esp
 1c5:	8b 7d 08             	mov    0x8(%ebp),%edi
 1c8:	bb 00 00 00 00       	mov    $0x0,%ebx
 1cd:	89 de                	mov    %ebx,%esi
 1cf:	83 c3 01             	add    $0x1,%ebx
 1d2:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 1d5:	7d 2e                	jge    0x205
 1d7:	83 ec 04             	sub    $0x4,%esp
 1da:	6a 01                	push   $0x1
 1dc:	8d 45 e7             	lea    -0x19(%ebp),%eax
 1df:	50                   	push   %eax
 1e0:	6a 00                	push   $0x0
 1e2:	e8 ec 00 00 00       	call   0x2d3
 1e7:	83 c4 10             	add    $0x10,%esp
 1ea:	85 c0                	test   %eax,%eax
 1ec:	7e 17                	jle    0x205
 1ee:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 1f2:	88 04 37             	mov    %al,(%edi,%esi,1)
 1f5:	3c 0a                	cmp    $0xa,%al
 1f7:	0f 94 c2             	sete   %dl
 1fa:	3c 0d                	cmp    $0xd,%al
 1fc:	0f 94 c0             	sete   %al
 1ff:	08 c2                	or     %al,%dl
 201:	74 ca                	je     0x1cd
 203:	89 de                	mov    %ebx,%esi
 205:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 209:	89 f8                	mov    %edi,%eax
 20b:	8d 65 f4             	lea    -0xc(%ebp),%esp
 20e:	5b                   	pop    %ebx
 20f:	5e                   	pop    %esi
 210:	5f                   	pop    %edi
 211:	5d                   	pop    %ebp
 212:	c3                   	ret    
 213:	55                   	push   %ebp
 214:	89 e5                	mov    %esp,%ebp
 216:	56                   	push   %esi
 217:	53                   	push   %ebx
 218:	83 ec 08             	sub    $0x8,%esp
 21b:	6a 00                	push   $0x0
 21d:	ff 75 08             	push   0x8(%ebp)
 220:	e8 d6 00 00 00       	call   0x2fb
 225:	83 c4 10             	add    $0x10,%esp
 228:	85 c0                	test   %eax,%eax
 22a:	78 24                	js     0x250
 22c:	89 c3                	mov    %eax,%ebx
 22e:	83 ec 08             	sub    $0x8,%esp
 231:	ff 75 0c             	push   0xc(%ebp)
 234:	50                   	push   %eax
 235:	e8 d9 00 00 00       	call   0x313
 23a:	89 c6                	mov    %eax,%esi
 23c:	89 1c 24             	mov    %ebx,(%esp)
 23f:	e8 9f 00 00 00       	call   0x2e3
 244:	83 c4 10             	add    $0x10,%esp
 247:	89 f0                	mov    %esi,%eax
 249:	8d 65 f8             	lea    -0x8(%ebp),%esp
 24c:	5b                   	pop    %ebx
 24d:	5e                   	pop    %esi
 24e:	5d                   	pop    %ebp
 24f:	c3                   	ret    
 250:	be ff ff ff ff       	mov    $0xffffffff,%esi
 255:	eb f0                	jmp    0x247
 257:	55                   	push   %ebp
 258:	89 e5                	mov    %esp,%ebp
 25a:	53                   	push   %ebx
 25b:	8b 4d 08             	mov    0x8(%ebp),%ecx
 25e:	ba 00 00 00 00       	mov    $0x0,%edx
 263:	eb 10                	jmp    0x275
 265:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 268:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 26b:	83 c1 01             	add    $0x1,%ecx
 26e:	0f be c0             	movsbl %al,%eax
 271:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 275:	0f b6 01             	movzbl (%ecx),%eax
 278:	8d 58 d0             	lea    -0x30(%eax),%ebx
 27b:	80 fb 09             	cmp    $0x9,%bl
 27e:	76 e5                	jbe    0x265
 280:	89 d0                	mov    %edx,%eax
 282:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 285:	c9                   	leave  
 286:	c3                   	ret    
 287:	55                   	push   %ebp
 288:	89 e5                	mov    %esp,%ebp
 28a:	56                   	push   %esi
 28b:	53                   	push   %ebx
 28c:	8b 75 08             	mov    0x8(%ebp),%esi
 28f:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 292:	8b 45 10             	mov    0x10(%ebp),%eax
 295:	89 f2                	mov    %esi,%edx
 297:	eb 0d                	jmp    0x2a6
 299:	0f b6 01             	movzbl (%ecx),%eax
 29c:	88 02                	mov    %al,(%edx)
 29e:	8d 49 01             	lea    0x1(%ecx),%ecx
 2a1:	8d 52 01             	lea    0x1(%edx),%edx
 2a4:	89 d8                	mov    %ebx,%eax
 2a6:	8d 58 ff             	lea    -0x1(%eax),%ebx
 2a9:	85 c0                	test   %eax,%eax
 2ab:	7f ec                	jg     0x299
 2ad:	89 f0                	mov    %esi,%eax
 2af:	5b                   	pop    %ebx
 2b0:	5e                   	pop    %esi
 2b1:	5d                   	pop    %ebp
 2b2:	c3                   	ret    
 2b3:	b8 01 00 00 00       	mov    $0x1,%eax
 2b8:	cd 40                	int    $0x40
 2ba:	c3                   	ret    
 2bb:	b8 02 00 00 00       	mov    $0x2,%eax
 2c0:	cd 40                	int    $0x40
 2c2:	c3                   	ret    
 2c3:	b8 03 00 00 00       	mov    $0x3,%eax
 2c8:	cd 40                	int    $0x40
 2ca:	c3                   	ret    
 2cb:	b8 04 00 00 00       	mov    $0x4,%eax
 2d0:	cd 40                	int    $0x40
 2d2:	c3                   	ret    
 2d3:	b8 05 00 00 00       	mov    $0x5,%eax
 2d8:	cd 40                	int    $0x40
 2da:	c3                   	ret    
 2db:	b8 10 00 00 00       	mov    $0x10,%eax
 2e0:	cd 40                	int    $0x40
 2e2:	c3                   	ret    
 2e3:	b8 15 00 00 00       	mov    $0x15,%eax
 2e8:	cd 40                	int    $0x40
 2ea:	c3                   	ret    
 2eb:	b8 06 00 00 00       	mov    $0x6,%eax
 2f0:	cd 40                	int    $0x40
 2f2:	c3                   	ret    
 2f3:	b8 07 00 00 00       	mov    $0x7,%eax
 2f8:	cd 40                	int    $0x40
 2fa:	c3                   	ret    
 2fb:	b8 0f 00 00 00       	mov    $0xf,%eax
 300:	cd 40                	int    $0x40
 302:	c3                   	ret    
 303:	b8 11 00 00 00       	mov    $0x11,%eax
 308:	cd 40                	int    $0x40
 30a:	c3                   	ret    
 30b:	b8 12 00 00 00       	mov    $0x12,%eax
 310:	cd 40                	int    $0x40
 312:	c3                   	ret    
 313:	b8 08 00 00 00       	mov    $0x8,%eax
 318:	cd 40                	int    $0x40
 31a:	c3                   	ret    
 31b:	b8 13 00 00 00       	mov    $0x13,%eax
 320:	cd 40                	int    $0x40
 322:	c3                   	ret    
 323:	b8 14 00 00 00       	mov    $0x14,%eax
 328:	cd 40                	int    $0x40
 32a:	c3                   	ret    
 32b:	b8 09 00 00 00       	mov    $0x9,%eax
 330:	cd 40                	int    $0x40
 332:	c3                   	ret    
 333:	b8 0a 00 00 00       	mov    $0xa,%eax
 338:	cd 40                	int    $0x40
 33a:	c3                   	ret    
 33b:	b8 0b 00 00 00       	mov    $0xb,%eax
 340:	cd 40                	int    $0x40
 342:	c3                   	ret    
 343:	b8 0c 00 00 00       	mov    $0xc,%eax
 348:	cd 40                	int    $0x40
 34a:	c3                   	ret    
 34b:	b8 0d 00 00 00       	mov    $0xd,%eax
 350:	cd 40                	int    $0x40
 352:	c3                   	ret    
 353:	b8 0e 00 00 00       	mov    $0xe,%eax
 358:	cd 40                	int    $0x40
 35a:	c3                   	ret    
 35b:	b8 16 00 00 00       	mov    $0x16,%eax
 360:	cd 40                	int    $0x40
 362:	c3                   	ret    
 363:	55                   	push   %ebp
 364:	89 e5                	mov    %esp,%ebp
 366:	83 ec 1c             	sub    $0x1c,%esp
 369:	88 55 f4             	mov    %dl,-0xc(%ebp)
 36c:	6a 01                	push   $0x1
 36e:	8d 55 f4             	lea    -0xc(%ebp),%edx
 371:	52                   	push   %edx
 372:	50                   	push   %eax
 373:	e8 63 ff ff ff       	call   0x2db
 378:	83 c4 10             	add    $0x10,%esp
 37b:	c9                   	leave  
 37c:	c3                   	ret    
 37d:	55                   	push   %ebp
 37e:	89 e5                	mov    %esp,%ebp
 380:	57                   	push   %edi
 381:	56                   	push   %esi
 382:	53                   	push   %ebx
 383:	83 ec 2c             	sub    $0x2c,%esp
 386:	89 45 d0             	mov    %eax,-0x30(%ebp)
 389:	89 d0                	mov    %edx,%eax
 38b:	89 ce                	mov    %ecx,%esi
 38d:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 391:	0f 95 c1             	setne  %cl
 394:	c1 ea 1f             	shr    $0x1f,%edx
 397:	84 d1                	test   %dl,%cl
 399:	74 44                	je     0x3df
 39b:	f7 d8                	neg    %eax
 39d:	89 c1                	mov    %eax,%ecx
 39f:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 3a6:	bb 00 00 00 00       	mov    $0x0,%ebx
 3ab:	89 c8                	mov    %ecx,%eax
 3ad:	ba 00 00 00 00       	mov    $0x0,%edx
 3b2:	f7 f6                	div    %esi
 3b4:	89 df                	mov    %ebx,%edi
 3b6:	83 c3 01             	add    $0x1,%ebx
 3b9:	0f b6 92 3c 07 00 00 	movzbl 0x73c(%edx),%edx
 3c0:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 3c4:	89 ca                	mov    %ecx,%edx
 3c6:	89 c1                	mov    %eax,%ecx
 3c8:	39 d6                	cmp    %edx,%esi
 3ca:	76 df                	jbe    0x3ab
 3cc:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 3d0:	74 31                	je     0x403
 3d2:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 3d7:	8d 5f 02             	lea    0x2(%edi),%ebx
 3da:	8b 75 d0             	mov    -0x30(%ebp),%esi
 3dd:	eb 17                	jmp    0x3f6
 3df:	89 c1                	mov    %eax,%ecx
 3e1:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 3e8:	eb bc                	jmp    0x3a6
 3ea:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 3ef:	89 f0                	mov    %esi,%eax
 3f1:	e8 6d ff ff ff       	call   0x363
 3f6:	83 eb 01             	sub    $0x1,%ebx
 3f9:	79 ef                	jns    0x3ea
 3fb:	83 c4 2c             	add    $0x2c,%esp
 3fe:	5b                   	pop    %ebx
 3ff:	5e                   	pop    %esi
 400:	5f                   	pop    %edi
 401:	5d                   	pop    %ebp
 402:	c3                   	ret    
 403:	8b 75 d0             	mov    -0x30(%ebp),%esi
 406:	eb ee                	jmp    0x3f6
 408:	55                   	push   %ebp
 409:	89 e5                	mov    %esp,%ebp
 40b:	57                   	push   %edi
 40c:	56                   	push   %esi
 40d:	53                   	push   %ebx
 40e:	83 ec 1c             	sub    $0x1c,%esp
 411:	8d 45 10             	lea    0x10(%ebp),%eax
 414:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 417:	be 00 00 00 00       	mov    $0x0,%esi
 41c:	bb 00 00 00 00       	mov    $0x0,%ebx
 421:	eb 14                	jmp    0x437
 423:	89 fa                	mov    %edi,%edx
 425:	8b 45 08             	mov    0x8(%ebp),%eax
 428:	e8 36 ff ff ff       	call   0x363
 42d:	eb 05                	jmp    0x434
 42f:	83 fe 25             	cmp    $0x25,%esi
 432:	74 25                	je     0x459
 434:	83 c3 01             	add    $0x1,%ebx
 437:	8b 45 0c             	mov    0xc(%ebp),%eax
 43a:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 43e:	84 c0                	test   %al,%al
 440:	0f 84 20 01 00 00    	je     0x566
 446:	0f be f8             	movsbl %al,%edi
 449:	0f b6 c0             	movzbl %al,%eax
 44c:	85 f6                	test   %esi,%esi
 44e:	75 df                	jne    0x42f
 450:	83 f8 25             	cmp    $0x25,%eax
 453:	75 ce                	jne    0x423
 455:	89 c6                	mov    %eax,%esi
 457:	eb db                	jmp    0x434
 459:	83 f8 25             	cmp    $0x25,%eax
 45c:	0f 84 cf 00 00 00    	je     0x531
 462:	0f 8c dd 00 00 00    	jl     0x545
 468:	83 f8 78             	cmp    $0x78,%eax
 46b:	0f 8f d4 00 00 00    	jg     0x545
 471:	83 f8 63             	cmp    $0x63,%eax
 474:	0f 8c cb 00 00 00    	jl     0x545
 47a:	83 e8 63             	sub    $0x63,%eax
 47d:	83 f8 15             	cmp    $0x15,%eax
 480:	0f 87 bf 00 00 00    	ja     0x545
 486:	ff 24 85 e4 06 00 00 	jmp    *0x6e4(,%eax,4)
 48d:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 490:	8b 17                	mov    (%edi),%edx
 492:	83 ec 0c             	sub    $0xc,%esp
 495:	6a 01                	push   $0x1
 497:	b9 0a 00 00 00       	mov    $0xa,%ecx
 49c:	8b 45 08             	mov    0x8(%ebp),%eax
 49f:	e8 d9 fe ff ff       	call   0x37d
 4a4:	83 c7 04             	add    $0x4,%edi
 4a7:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 4aa:	83 c4 10             	add    $0x10,%esp
 4ad:	be 00 00 00 00       	mov    $0x0,%esi
 4b2:	eb 80                	jmp    0x434
 4b4:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 4b7:	8b 17                	mov    (%edi),%edx
 4b9:	83 ec 0c             	sub    $0xc,%esp
 4bc:	6a 00                	push   $0x0
 4be:	b9 10 00 00 00       	mov    $0x10,%ecx
 4c3:	8b 45 08             	mov    0x8(%ebp),%eax
 4c6:	e8 b2 fe ff ff       	call   0x37d
 4cb:	83 c7 04             	add    $0x4,%edi
 4ce:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 4d1:	83 c4 10             	add    $0x10,%esp
 4d4:	be 00 00 00 00       	mov    $0x0,%esi
 4d9:	e9 56 ff ff ff       	jmp    0x434
 4de:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 4e1:	8b 30                	mov    (%eax),%esi
 4e3:	83 c0 04             	add    $0x4,%eax
 4e6:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 4e9:	85 f6                	test   %esi,%esi
 4eb:	75 15                	jne    0x502
 4ed:	be db 06 00 00       	mov    $0x6db,%esi
 4f2:	eb 0e                	jmp    0x502
 4f4:	0f be d2             	movsbl %dl,%edx
 4f7:	8b 45 08             	mov    0x8(%ebp),%eax
 4fa:	e8 64 fe ff ff       	call   0x363
 4ff:	83 c6 01             	add    $0x1,%esi
 502:	0f b6 16             	movzbl (%esi),%edx
 505:	84 d2                	test   %dl,%dl
 507:	75 eb                	jne    0x4f4
 509:	be 00 00 00 00       	mov    $0x0,%esi
 50e:	e9 21 ff ff ff       	jmp    0x434
 513:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 516:	0f be 17             	movsbl (%edi),%edx
 519:	8b 45 08             	mov    0x8(%ebp),%eax
 51c:	e8 42 fe ff ff       	call   0x363
 521:	83 c7 04             	add    $0x4,%edi
 524:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 527:	be 00 00 00 00       	mov    $0x0,%esi
 52c:	e9 03 ff ff ff       	jmp    0x434
 531:	89 fa                	mov    %edi,%edx
 533:	8b 45 08             	mov    0x8(%ebp),%eax
 536:	e8 28 fe ff ff       	call   0x363
 53b:	be 00 00 00 00       	mov    $0x0,%esi
 540:	e9 ef fe ff ff       	jmp    0x434
 545:	ba 25 00 00 00       	mov    $0x25,%edx
 54a:	8b 45 08             	mov    0x8(%ebp),%eax
 54d:	e8 11 fe ff ff       	call   0x363
 552:	89 fa                	mov    %edi,%edx
 554:	8b 45 08             	mov    0x8(%ebp),%eax
 557:	e8 07 fe ff ff       	call   0x363
 55c:	be 00 00 00 00       	mov    $0x0,%esi
 561:	e9 ce fe ff ff       	jmp    0x434
 566:	8d 65 f4             	lea    -0xc(%ebp),%esp
 569:	5b                   	pop    %ebx
 56a:	5e                   	pop    %esi
 56b:	5f                   	pop    %edi
 56c:	5d                   	pop    %ebp
 56d:	c3                   	ret    
 56e:	55                   	push   %ebp
 56f:	89 e5                	mov    %esp,%ebp
 571:	57                   	push   %edi
 572:	56                   	push   %esi
 573:	53                   	push   %ebx
 574:	8b 5d 08             	mov    0x8(%ebp),%ebx
 577:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 57a:	a1 e4 09 00 00       	mov    0x9e4,%eax
 57f:	eb 02                	jmp    0x583
 581:	89 d0                	mov    %edx,%eax
 583:	39 c8                	cmp    %ecx,%eax
 585:	73 04                	jae    0x58b
 587:	39 08                	cmp    %ecx,(%eax)
 589:	77 12                	ja     0x59d
 58b:	8b 10                	mov    (%eax),%edx
 58d:	39 c2                	cmp    %eax,%edx
 58f:	77 f0                	ja     0x581
 591:	39 c8                	cmp    %ecx,%eax
 593:	72 08                	jb     0x59d
 595:	39 ca                	cmp    %ecx,%edx
 597:	77 04                	ja     0x59d
 599:	89 d0                	mov    %edx,%eax
 59b:	eb e6                	jmp    0x583
 59d:	8b 73 fc             	mov    -0x4(%ebx),%esi
 5a0:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 5a3:	8b 10                	mov    (%eax),%edx
 5a5:	39 d7                	cmp    %edx,%edi
 5a7:	74 19                	je     0x5c2
 5a9:	89 53 f8             	mov    %edx,-0x8(%ebx)
 5ac:	8b 50 04             	mov    0x4(%eax),%edx
 5af:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 5b2:	39 ce                	cmp    %ecx,%esi
 5b4:	74 1b                	je     0x5d1
 5b6:	89 08                	mov    %ecx,(%eax)
 5b8:	a3 e4 09 00 00       	mov    %eax,0x9e4
 5bd:	5b                   	pop    %ebx
 5be:	5e                   	pop    %esi
 5bf:	5f                   	pop    %edi
 5c0:	5d                   	pop    %ebp
 5c1:	c3                   	ret    
 5c2:	03 72 04             	add    0x4(%edx),%esi
 5c5:	89 73 fc             	mov    %esi,-0x4(%ebx)
 5c8:	8b 10                	mov    (%eax),%edx
 5ca:	8b 12                	mov    (%edx),%edx
 5cc:	89 53 f8             	mov    %edx,-0x8(%ebx)
 5cf:	eb db                	jmp    0x5ac
 5d1:	03 53 fc             	add    -0x4(%ebx),%edx
 5d4:	89 50 04             	mov    %edx,0x4(%eax)
 5d7:	8b 53 f8             	mov    -0x8(%ebx),%edx
 5da:	89 10                	mov    %edx,(%eax)
 5dc:	eb da                	jmp    0x5b8
 5de:	55                   	push   %ebp
 5df:	89 e5                	mov    %esp,%ebp
 5e1:	53                   	push   %ebx
 5e2:	83 ec 04             	sub    $0x4,%esp
 5e5:	89 c3                	mov    %eax,%ebx
 5e7:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 5ec:	77 05                	ja     0x5f3
 5ee:	bb 00 10 00 00       	mov    $0x1000,%ebx
 5f3:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 5fa:	83 ec 0c             	sub    $0xc,%esp
 5fd:	50                   	push   %eax
 5fe:	e8 40 fd ff ff       	call   0x343
 603:	83 c4 10             	add    $0x10,%esp
 606:	83 f8 ff             	cmp    $0xffffffff,%eax
 609:	74 1c                	je     0x627
 60b:	89 58 04             	mov    %ebx,0x4(%eax)
 60e:	83 c0 08             	add    $0x8,%eax
 611:	83 ec 0c             	sub    $0xc,%esp
 614:	50                   	push   %eax
 615:	e8 54 ff ff ff       	call   0x56e
 61a:	a1 e4 09 00 00       	mov    0x9e4,%eax
 61f:	83 c4 10             	add    $0x10,%esp
 622:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 625:	c9                   	leave  
 626:	c3                   	ret    
 627:	b8 00 00 00 00       	mov    $0x0,%eax
 62c:	eb f4                	jmp    0x622
 62e:	55                   	push   %ebp
 62f:	89 e5                	mov    %esp,%ebp
 631:	53                   	push   %ebx
 632:	83 ec 04             	sub    $0x4,%esp
 635:	8b 45 08             	mov    0x8(%ebp),%eax
 638:	8d 58 07             	lea    0x7(%eax),%ebx
 63b:	c1 eb 03             	shr    $0x3,%ebx
 63e:	83 c3 01             	add    $0x1,%ebx
 641:	8b 0d e4 09 00 00    	mov    0x9e4,%ecx
 647:	85 c9                	test   %ecx,%ecx
 649:	74 04                	je     0x64f
 64b:	8b 01                	mov    (%ecx),%eax
 64d:	eb 4a                	jmp    0x699
 64f:	c7 05 e4 09 00 00 e8 	movl   $0x9e8,0x9e4
 656:	09 00 00 
 659:	c7 05 e8 09 00 00 e8 	movl   $0x9e8,0x9e8
 660:	09 00 00 
 663:	c7 05 ec 09 00 00 00 	movl   $0x0,0x9ec
 66a:	00 00 00 
 66d:	b9 e8 09 00 00       	mov    $0x9e8,%ecx
 672:	eb d7                	jmp    0x64b
 674:	74 19                	je     0x68f
 676:	29 da                	sub    %ebx,%edx
 678:	89 50 04             	mov    %edx,0x4(%eax)
 67b:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 67e:	89 58 04             	mov    %ebx,0x4(%eax)
 681:	89 0d e4 09 00 00    	mov    %ecx,0x9e4
 687:	83 c0 08             	add    $0x8,%eax
 68a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 68d:	c9                   	leave  
 68e:	c3                   	ret    
 68f:	8b 10                	mov    (%eax),%edx
 691:	89 11                	mov    %edx,(%ecx)
 693:	eb ec                	jmp    0x681
 695:	89 c1                	mov    %eax,%ecx
 697:	8b 00                	mov    (%eax),%eax
 699:	8b 50 04             	mov    0x4(%eax),%edx
 69c:	39 da                	cmp    %ebx,%edx
 69e:	73 d4                	jae    0x674
 6a0:	39 05 e4 09 00 00    	cmp    %eax,0x9e4
 6a6:	75 ed                	jne    0x695
 6a8:	89 d8                	mov    %ebx,%eax
 6aa:	e8 2f ff ff ff       	call   0x5de
 6af:	85 c0                	test   %eax,%eax
 6b1:	75 e2                	jne    0x695
 6b3:	eb d5                	jmp    0x68a
