
_wc:     file format elf32-i386


Disassembly of section .text:

00000000 <.text>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	57                   	push   %edi
   4:	56                   	push   %esi
   5:	53                   	push   %ebx
   6:	83 ec 1c             	sub    $0x1c,%esp
   9:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  10:	be 00 00 00 00       	mov    $0x0,%esi
  15:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
  1c:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
  23:	83 ec 04             	sub    $0x4,%esp
  26:	68 00 02 00 00       	push   $0x200
  2b:	68 80 0a 00 00       	push   $0xa80
  30:	ff 75 08             	push   0x8(%ebp)
  33:	e8 e1 02 00 00       	call   0x319
  38:	89 c7                	mov    %eax,%edi
  3a:	83 c4 10             	add    $0x10,%esp
  3d:	85 c0                	test   %eax,%eax
  3f:	7e 54                	jle    0x95
  41:	bb 00 00 00 00       	mov    $0x0,%ebx
  46:	eb 22                	jmp    0x6a
  48:	83 ec 08             	sub    $0x8,%esp
  4b:	0f be c0             	movsbl %al,%eax
  4e:	50                   	push   %eax
  4f:	68 fc 06 00 00       	push   $0x6fc
  54:	e8 86 01 00 00       	call   0x1df
  59:	83 c4 10             	add    $0x10,%esp
  5c:	85 c0                	test   %eax,%eax
  5e:	74 22                	je     0x82
  60:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  67:	83 c3 01             	add    $0x1,%ebx
  6a:	39 fb                	cmp    %edi,%ebx
  6c:	7d b5                	jge    0x23
  6e:	83 c6 01             	add    $0x1,%esi
  71:	0f b6 83 80 0a 00 00 	movzbl 0xa80(%ebx),%eax
  78:	3c 0a                	cmp    $0xa,%al
  7a:	75 cc                	jne    0x48
  7c:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
  80:	eb c6                	jmp    0x48
  82:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
  86:	75 df                	jne    0x67
  88:	83 45 dc 01          	addl   $0x1,-0x24(%ebp)
  8c:	c7 45 e4 01 00 00 00 	movl   $0x1,-0x1c(%ebp)
  93:	eb d2                	jmp    0x67
  95:	78 24                	js     0xbb
  97:	83 ec 08             	sub    $0x8,%esp
  9a:	ff 75 0c             	push   0xc(%ebp)
  9d:	56                   	push   %esi
  9e:	ff 75 dc             	push   -0x24(%ebp)
  a1:	ff 75 e0             	push   -0x20(%ebp)
  a4:	68 12 07 00 00       	push   $0x712
  a9:	6a 01                	push   $0x1
  ab:	e8 9e 03 00 00       	call   0x44e
  b0:	83 c4 20             	add    $0x20,%esp
  b3:	8d 65 f4             	lea    -0xc(%ebp),%esp
  b6:	5b                   	pop    %ebx
  b7:	5e                   	pop    %esi
  b8:	5f                   	pop    %edi
  b9:	5d                   	pop    %ebp
  ba:	c3                   	ret    
  bb:	83 ec 08             	sub    $0x8,%esp
  be:	68 02 07 00 00       	push   $0x702
  c3:	6a 01                	push   $0x1
  c5:	e8 84 03 00 00       	call   0x44e
  ca:	e8 32 02 00 00       	call   0x301
  cf:	8d 4c 24 04          	lea    0x4(%esp),%ecx
  d3:	83 e4 f0             	and    $0xfffffff0,%esp
  d6:	ff 71 fc             	push   -0x4(%ecx)
  d9:	55                   	push   %ebp
  da:	89 e5                	mov    %esp,%ebp
  dc:	57                   	push   %edi
  dd:	56                   	push   %esi
  de:	53                   	push   %ebx
  df:	51                   	push   %ecx
  e0:	83 ec 18             	sub    $0x18,%esp
  e3:	8b 01                	mov    (%ecx),%eax
  e5:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  e8:	8b 51 04             	mov    0x4(%ecx),%edx
  eb:	89 55 e0             	mov    %edx,-0x20(%ebp)
  ee:	83 f8 01             	cmp    $0x1,%eax
  f1:	7e 07                	jle    0xfa
  f3:	be 01 00 00 00       	mov    $0x1,%esi
  f8:	eb 2d                	jmp    0x127
  fa:	83 ec 08             	sub    $0x8,%esp
  fd:	68 11 07 00 00       	push   $0x711
 102:	6a 00                	push   $0x0
 104:	e8 f7 fe ff ff       	call   0x0
 109:	e8 f3 01 00 00       	call   0x301
 10e:	83 ec 08             	sub    $0x8,%esp
 111:	ff 37                	push   (%edi)
 113:	50                   	push   %eax
 114:	e8 e7 fe ff ff       	call   0x0
 119:	89 1c 24             	mov    %ebx,(%esp)
 11c:	e8 08 02 00 00       	call   0x329
 121:	83 c6 01             	add    $0x1,%esi
 124:	83 c4 10             	add    $0x10,%esp
 127:	3b 75 e4             	cmp    -0x1c(%ebp),%esi
 12a:	7d 31                	jge    0x15d
 12c:	8b 45 e0             	mov    -0x20(%ebp),%eax
 12f:	8d 3c b0             	lea    (%eax,%esi,4),%edi
 132:	83 ec 08             	sub    $0x8,%esp
 135:	6a 00                	push   $0x0
 137:	ff 37                	push   (%edi)
 139:	e8 03 02 00 00       	call   0x341
 13e:	89 c3                	mov    %eax,%ebx
 140:	83 c4 10             	add    $0x10,%esp
 143:	85 c0                	test   %eax,%eax
 145:	79 c7                	jns    0x10e
 147:	83 ec 04             	sub    $0x4,%esp
 14a:	ff 37                	push   (%edi)
 14c:	68 1f 07 00 00       	push   $0x71f
 151:	6a 01                	push   $0x1
 153:	e8 f6 02 00 00       	call   0x44e
 158:	e8 a4 01 00 00       	call   0x301
 15d:	e8 9f 01 00 00       	call   0x301
 162:	55                   	push   %ebp
 163:	89 e5                	mov    %esp,%ebp
 165:	56                   	push   %esi
 166:	53                   	push   %ebx
 167:	8b 75 08             	mov    0x8(%ebp),%esi
 16a:	8b 55 0c             	mov    0xc(%ebp),%edx
 16d:	89 f0                	mov    %esi,%eax
 16f:	89 d1                	mov    %edx,%ecx
 171:	83 c2 01             	add    $0x1,%edx
 174:	89 c3                	mov    %eax,%ebx
 176:	83 c0 01             	add    $0x1,%eax
 179:	0f b6 09             	movzbl (%ecx),%ecx
 17c:	88 0b                	mov    %cl,(%ebx)
 17e:	84 c9                	test   %cl,%cl
 180:	75 ed                	jne    0x16f
 182:	89 f0                	mov    %esi,%eax
 184:	5b                   	pop    %ebx
 185:	5e                   	pop    %esi
 186:	5d                   	pop    %ebp
 187:	c3                   	ret    
 188:	55                   	push   %ebp
 189:	89 e5                	mov    %esp,%ebp
 18b:	8b 4d 08             	mov    0x8(%ebp),%ecx
 18e:	8b 55 0c             	mov    0xc(%ebp),%edx
 191:	eb 06                	jmp    0x199
 193:	83 c1 01             	add    $0x1,%ecx
 196:	83 c2 01             	add    $0x1,%edx
 199:	0f b6 01             	movzbl (%ecx),%eax
 19c:	84 c0                	test   %al,%al
 19e:	74 04                	je     0x1a4
 1a0:	3a 02                	cmp    (%edx),%al
 1a2:	74 ef                	je     0x193
 1a4:	0f b6 c0             	movzbl %al,%eax
 1a7:	0f b6 12             	movzbl (%edx),%edx
 1aa:	29 d0                	sub    %edx,%eax
 1ac:	5d                   	pop    %ebp
 1ad:	c3                   	ret    
 1ae:	55                   	push   %ebp
 1af:	89 e5                	mov    %esp,%ebp
 1b1:	8b 4d 08             	mov    0x8(%ebp),%ecx
 1b4:	b8 00 00 00 00       	mov    $0x0,%eax
 1b9:	eb 03                	jmp    0x1be
 1bb:	83 c0 01             	add    $0x1,%eax
 1be:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
 1c2:	75 f7                	jne    0x1bb
 1c4:	5d                   	pop    %ebp
 1c5:	c3                   	ret    
 1c6:	55                   	push   %ebp
 1c7:	89 e5                	mov    %esp,%ebp
 1c9:	57                   	push   %edi
 1ca:	8b 55 08             	mov    0x8(%ebp),%edx
 1cd:	89 d7                	mov    %edx,%edi
 1cf:	8b 4d 10             	mov    0x10(%ebp),%ecx
 1d2:	8b 45 0c             	mov    0xc(%ebp),%eax
 1d5:	fc                   	cld    
 1d6:	f3 aa                	rep stos %al,%es:(%edi)
 1d8:	89 d0                	mov    %edx,%eax
 1da:	8b 7d fc             	mov    -0x4(%ebp),%edi
 1dd:	c9                   	leave  
 1de:	c3                   	ret    
 1df:	55                   	push   %ebp
 1e0:	89 e5                	mov    %esp,%ebp
 1e2:	8b 45 08             	mov    0x8(%ebp),%eax
 1e5:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
 1e9:	eb 03                	jmp    0x1ee
 1eb:	83 c0 01             	add    $0x1,%eax
 1ee:	0f b6 10             	movzbl (%eax),%edx
 1f1:	84 d2                	test   %dl,%dl
 1f3:	74 06                	je     0x1fb
 1f5:	38 ca                	cmp    %cl,%dl
 1f7:	75 f2                	jne    0x1eb
 1f9:	eb 05                	jmp    0x200
 1fb:	b8 00 00 00 00       	mov    $0x0,%eax
 200:	5d                   	pop    %ebp
 201:	c3                   	ret    
 202:	55                   	push   %ebp
 203:	89 e5                	mov    %esp,%ebp
 205:	57                   	push   %edi
 206:	56                   	push   %esi
 207:	53                   	push   %ebx
 208:	83 ec 1c             	sub    $0x1c,%esp
 20b:	8b 7d 08             	mov    0x8(%ebp),%edi
 20e:	bb 00 00 00 00       	mov    $0x0,%ebx
 213:	89 de                	mov    %ebx,%esi
 215:	83 c3 01             	add    $0x1,%ebx
 218:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 21b:	7d 2e                	jge    0x24b
 21d:	83 ec 04             	sub    $0x4,%esp
 220:	6a 01                	push   $0x1
 222:	8d 45 e7             	lea    -0x19(%ebp),%eax
 225:	50                   	push   %eax
 226:	6a 00                	push   $0x0
 228:	e8 ec 00 00 00       	call   0x319
 22d:	83 c4 10             	add    $0x10,%esp
 230:	85 c0                	test   %eax,%eax
 232:	7e 17                	jle    0x24b
 234:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 238:	88 04 37             	mov    %al,(%edi,%esi,1)
 23b:	3c 0a                	cmp    $0xa,%al
 23d:	0f 94 c2             	sete   %dl
 240:	3c 0d                	cmp    $0xd,%al
 242:	0f 94 c0             	sete   %al
 245:	08 c2                	or     %al,%dl
 247:	74 ca                	je     0x213
 249:	89 de                	mov    %ebx,%esi
 24b:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 24f:	89 f8                	mov    %edi,%eax
 251:	8d 65 f4             	lea    -0xc(%ebp),%esp
 254:	5b                   	pop    %ebx
 255:	5e                   	pop    %esi
 256:	5f                   	pop    %edi
 257:	5d                   	pop    %ebp
 258:	c3                   	ret    
 259:	55                   	push   %ebp
 25a:	89 e5                	mov    %esp,%ebp
 25c:	56                   	push   %esi
 25d:	53                   	push   %ebx
 25e:	83 ec 08             	sub    $0x8,%esp
 261:	6a 00                	push   $0x0
 263:	ff 75 08             	push   0x8(%ebp)
 266:	e8 d6 00 00 00       	call   0x341
 26b:	83 c4 10             	add    $0x10,%esp
 26e:	85 c0                	test   %eax,%eax
 270:	78 24                	js     0x296
 272:	89 c3                	mov    %eax,%ebx
 274:	83 ec 08             	sub    $0x8,%esp
 277:	ff 75 0c             	push   0xc(%ebp)
 27a:	50                   	push   %eax
 27b:	e8 d9 00 00 00       	call   0x359
 280:	89 c6                	mov    %eax,%esi
 282:	89 1c 24             	mov    %ebx,(%esp)
 285:	e8 9f 00 00 00       	call   0x329
 28a:	83 c4 10             	add    $0x10,%esp
 28d:	89 f0                	mov    %esi,%eax
 28f:	8d 65 f8             	lea    -0x8(%ebp),%esp
 292:	5b                   	pop    %ebx
 293:	5e                   	pop    %esi
 294:	5d                   	pop    %ebp
 295:	c3                   	ret    
 296:	be ff ff ff ff       	mov    $0xffffffff,%esi
 29b:	eb f0                	jmp    0x28d
 29d:	55                   	push   %ebp
 29e:	89 e5                	mov    %esp,%ebp
 2a0:	53                   	push   %ebx
 2a1:	8b 4d 08             	mov    0x8(%ebp),%ecx
 2a4:	ba 00 00 00 00       	mov    $0x0,%edx
 2a9:	eb 10                	jmp    0x2bb
 2ab:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 2ae:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 2b1:	83 c1 01             	add    $0x1,%ecx
 2b4:	0f be c0             	movsbl %al,%eax
 2b7:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 2bb:	0f b6 01             	movzbl (%ecx),%eax
 2be:	8d 58 d0             	lea    -0x30(%eax),%ebx
 2c1:	80 fb 09             	cmp    $0x9,%bl
 2c4:	76 e5                	jbe    0x2ab
 2c6:	89 d0                	mov    %edx,%eax
 2c8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 2cb:	c9                   	leave  
 2cc:	c3                   	ret    
 2cd:	55                   	push   %ebp
 2ce:	89 e5                	mov    %esp,%ebp
 2d0:	56                   	push   %esi
 2d1:	53                   	push   %ebx
 2d2:	8b 75 08             	mov    0x8(%ebp),%esi
 2d5:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 2d8:	8b 45 10             	mov    0x10(%ebp),%eax
 2db:	89 f2                	mov    %esi,%edx
 2dd:	eb 0d                	jmp    0x2ec
 2df:	0f b6 01             	movzbl (%ecx),%eax
 2e2:	88 02                	mov    %al,(%edx)
 2e4:	8d 49 01             	lea    0x1(%ecx),%ecx
 2e7:	8d 52 01             	lea    0x1(%edx),%edx
 2ea:	89 d8                	mov    %ebx,%eax
 2ec:	8d 58 ff             	lea    -0x1(%eax),%ebx
 2ef:	85 c0                	test   %eax,%eax
 2f1:	7f ec                	jg     0x2df
 2f3:	89 f0                	mov    %esi,%eax
 2f5:	5b                   	pop    %ebx
 2f6:	5e                   	pop    %esi
 2f7:	5d                   	pop    %ebp
 2f8:	c3                   	ret    
 2f9:	b8 01 00 00 00       	mov    $0x1,%eax
 2fe:	cd 40                	int    $0x40
 300:	c3                   	ret    
 301:	b8 02 00 00 00       	mov    $0x2,%eax
 306:	cd 40                	int    $0x40
 308:	c3                   	ret    
 309:	b8 03 00 00 00       	mov    $0x3,%eax
 30e:	cd 40                	int    $0x40
 310:	c3                   	ret    
 311:	b8 04 00 00 00       	mov    $0x4,%eax
 316:	cd 40                	int    $0x40
 318:	c3                   	ret    
 319:	b8 05 00 00 00       	mov    $0x5,%eax
 31e:	cd 40                	int    $0x40
 320:	c3                   	ret    
 321:	b8 10 00 00 00       	mov    $0x10,%eax
 326:	cd 40                	int    $0x40
 328:	c3                   	ret    
 329:	b8 15 00 00 00       	mov    $0x15,%eax
 32e:	cd 40                	int    $0x40
 330:	c3                   	ret    
 331:	b8 06 00 00 00       	mov    $0x6,%eax
 336:	cd 40                	int    $0x40
 338:	c3                   	ret    
 339:	b8 07 00 00 00       	mov    $0x7,%eax
 33e:	cd 40                	int    $0x40
 340:	c3                   	ret    
 341:	b8 0f 00 00 00       	mov    $0xf,%eax
 346:	cd 40                	int    $0x40
 348:	c3                   	ret    
 349:	b8 11 00 00 00       	mov    $0x11,%eax
 34e:	cd 40                	int    $0x40
 350:	c3                   	ret    
 351:	b8 12 00 00 00       	mov    $0x12,%eax
 356:	cd 40                	int    $0x40
 358:	c3                   	ret    
 359:	b8 08 00 00 00       	mov    $0x8,%eax
 35e:	cd 40                	int    $0x40
 360:	c3                   	ret    
 361:	b8 13 00 00 00       	mov    $0x13,%eax
 366:	cd 40                	int    $0x40
 368:	c3                   	ret    
 369:	b8 14 00 00 00       	mov    $0x14,%eax
 36e:	cd 40                	int    $0x40
 370:	c3                   	ret    
 371:	b8 09 00 00 00       	mov    $0x9,%eax
 376:	cd 40                	int    $0x40
 378:	c3                   	ret    
 379:	b8 0a 00 00 00       	mov    $0xa,%eax
 37e:	cd 40                	int    $0x40
 380:	c3                   	ret    
 381:	b8 0b 00 00 00       	mov    $0xb,%eax
 386:	cd 40                	int    $0x40
 388:	c3                   	ret    
 389:	b8 0c 00 00 00       	mov    $0xc,%eax
 38e:	cd 40                	int    $0x40
 390:	c3                   	ret    
 391:	b8 0d 00 00 00       	mov    $0xd,%eax
 396:	cd 40                	int    $0x40
 398:	c3                   	ret    
 399:	b8 0e 00 00 00       	mov    $0xe,%eax
 39e:	cd 40                	int    $0x40
 3a0:	c3                   	ret    
 3a1:	b8 16 00 00 00       	mov    $0x16,%eax
 3a6:	cd 40                	int    $0x40
 3a8:	c3                   	ret    
 3a9:	55                   	push   %ebp
 3aa:	89 e5                	mov    %esp,%ebp
 3ac:	83 ec 1c             	sub    $0x1c,%esp
 3af:	88 55 f4             	mov    %dl,-0xc(%ebp)
 3b2:	6a 01                	push   $0x1
 3b4:	8d 55 f4             	lea    -0xc(%ebp),%edx
 3b7:	52                   	push   %edx
 3b8:	50                   	push   %eax
 3b9:	e8 63 ff ff ff       	call   0x321
 3be:	83 c4 10             	add    $0x10,%esp
 3c1:	c9                   	leave  
 3c2:	c3                   	ret    
 3c3:	55                   	push   %ebp
 3c4:	89 e5                	mov    %esp,%ebp
 3c6:	57                   	push   %edi
 3c7:	56                   	push   %esi
 3c8:	53                   	push   %ebx
 3c9:	83 ec 2c             	sub    $0x2c,%esp
 3cc:	89 45 d0             	mov    %eax,-0x30(%ebp)
 3cf:	89 d0                	mov    %edx,%eax
 3d1:	89 ce                	mov    %ecx,%esi
 3d3:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 3d7:	0f 95 c1             	setne  %cl
 3da:	c1 ea 1f             	shr    $0x1f,%edx
 3dd:	84 d1                	test   %dl,%cl
 3df:	74 44                	je     0x425
 3e1:	f7 d8                	neg    %eax
 3e3:	89 c1                	mov    %eax,%ecx
 3e5:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 3ec:	bb 00 00 00 00       	mov    $0x0,%ebx
 3f1:	89 c8                	mov    %ecx,%eax
 3f3:	ba 00 00 00 00       	mov    $0x0,%edx
 3f8:	f7 f6                	div    %esi
 3fa:	89 df                	mov    %ebx,%edi
 3fc:	83 c3 01             	add    $0x1,%ebx
 3ff:	0f b6 92 94 07 00 00 	movzbl 0x794(%edx),%edx
 406:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 40a:	89 ca                	mov    %ecx,%edx
 40c:	89 c1                	mov    %eax,%ecx
 40e:	39 d6                	cmp    %edx,%esi
 410:	76 df                	jbe    0x3f1
 412:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 416:	74 31                	je     0x449
 418:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 41d:	8d 5f 02             	lea    0x2(%edi),%ebx
 420:	8b 75 d0             	mov    -0x30(%ebp),%esi
 423:	eb 17                	jmp    0x43c
 425:	89 c1                	mov    %eax,%ecx
 427:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 42e:	eb bc                	jmp    0x3ec
 430:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 435:	89 f0                	mov    %esi,%eax
 437:	e8 6d ff ff ff       	call   0x3a9
 43c:	83 eb 01             	sub    $0x1,%ebx
 43f:	79 ef                	jns    0x430
 441:	83 c4 2c             	add    $0x2c,%esp
 444:	5b                   	pop    %ebx
 445:	5e                   	pop    %esi
 446:	5f                   	pop    %edi
 447:	5d                   	pop    %ebp
 448:	c3                   	ret    
 449:	8b 75 d0             	mov    -0x30(%ebp),%esi
 44c:	eb ee                	jmp    0x43c
 44e:	55                   	push   %ebp
 44f:	89 e5                	mov    %esp,%ebp
 451:	57                   	push   %edi
 452:	56                   	push   %esi
 453:	53                   	push   %ebx
 454:	83 ec 1c             	sub    $0x1c,%esp
 457:	8d 45 10             	lea    0x10(%ebp),%eax
 45a:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 45d:	be 00 00 00 00       	mov    $0x0,%esi
 462:	bb 00 00 00 00       	mov    $0x0,%ebx
 467:	eb 14                	jmp    0x47d
 469:	89 fa                	mov    %edi,%edx
 46b:	8b 45 08             	mov    0x8(%ebp),%eax
 46e:	e8 36 ff ff ff       	call   0x3a9
 473:	eb 05                	jmp    0x47a
 475:	83 fe 25             	cmp    $0x25,%esi
 478:	74 25                	je     0x49f
 47a:	83 c3 01             	add    $0x1,%ebx
 47d:	8b 45 0c             	mov    0xc(%ebp),%eax
 480:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 484:	84 c0                	test   %al,%al
 486:	0f 84 20 01 00 00    	je     0x5ac
 48c:	0f be f8             	movsbl %al,%edi
 48f:	0f b6 c0             	movzbl %al,%eax
 492:	85 f6                	test   %esi,%esi
 494:	75 df                	jne    0x475
 496:	83 f8 25             	cmp    $0x25,%eax
 499:	75 ce                	jne    0x469
 49b:	89 c6                	mov    %eax,%esi
 49d:	eb db                	jmp    0x47a
 49f:	83 f8 25             	cmp    $0x25,%eax
 4a2:	0f 84 cf 00 00 00    	je     0x577
 4a8:	0f 8c dd 00 00 00    	jl     0x58b
 4ae:	83 f8 78             	cmp    $0x78,%eax
 4b1:	0f 8f d4 00 00 00    	jg     0x58b
 4b7:	83 f8 63             	cmp    $0x63,%eax
 4ba:	0f 8c cb 00 00 00    	jl     0x58b
 4c0:	83 e8 63             	sub    $0x63,%eax
 4c3:	83 f8 15             	cmp    $0x15,%eax
 4c6:	0f 87 bf 00 00 00    	ja     0x58b
 4cc:	ff 24 85 3c 07 00 00 	jmp    *0x73c(,%eax,4)
 4d3:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 4d6:	8b 17                	mov    (%edi),%edx
 4d8:	83 ec 0c             	sub    $0xc,%esp
 4db:	6a 01                	push   $0x1
 4dd:	b9 0a 00 00 00       	mov    $0xa,%ecx
 4e2:	8b 45 08             	mov    0x8(%ebp),%eax
 4e5:	e8 d9 fe ff ff       	call   0x3c3
 4ea:	83 c7 04             	add    $0x4,%edi
 4ed:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 4f0:	83 c4 10             	add    $0x10,%esp
 4f3:	be 00 00 00 00       	mov    $0x0,%esi
 4f8:	eb 80                	jmp    0x47a
 4fa:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 4fd:	8b 17                	mov    (%edi),%edx
 4ff:	83 ec 0c             	sub    $0xc,%esp
 502:	6a 00                	push   $0x0
 504:	b9 10 00 00 00       	mov    $0x10,%ecx
 509:	8b 45 08             	mov    0x8(%ebp),%eax
 50c:	e8 b2 fe ff ff       	call   0x3c3
 511:	83 c7 04             	add    $0x4,%edi
 514:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 517:	83 c4 10             	add    $0x10,%esp
 51a:	be 00 00 00 00       	mov    $0x0,%esi
 51f:	e9 56 ff ff ff       	jmp    0x47a
 524:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 527:	8b 30                	mov    (%eax),%esi
 529:	83 c0 04             	add    $0x4,%eax
 52c:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 52f:	85 f6                	test   %esi,%esi
 531:	75 15                	jne    0x548
 533:	be 33 07 00 00       	mov    $0x733,%esi
 538:	eb 0e                	jmp    0x548
 53a:	0f be d2             	movsbl %dl,%edx
 53d:	8b 45 08             	mov    0x8(%ebp),%eax
 540:	e8 64 fe ff ff       	call   0x3a9
 545:	83 c6 01             	add    $0x1,%esi
 548:	0f b6 16             	movzbl (%esi),%edx
 54b:	84 d2                	test   %dl,%dl
 54d:	75 eb                	jne    0x53a
 54f:	be 00 00 00 00       	mov    $0x0,%esi
 554:	e9 21 ff ff ff       	jmp    0x47a
 559:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 55c:	0f be 17             	movsbl (%edi),%edx
 55f:	8b 45 08             	mov    0x8(%ebp),%eax
 562:	e8 42 fe ff ff       	call   0x3a9
 567:	83 c7 04             	add    $0x4,%edi
 56a:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 56d:	be 00 00 00 00       	mov    $0x0,%esi
 572:	e9 03 ff ff ff       	jmp    0x47a
 577:	89 fa                	mov    %edi,%edx
 579:	8b 45 08             	mov    0x8(%ebp),%eax
 57c:	e8 28 fe ff ff       	call   0x3a9
 581:	be 00 00 00 00       	mov    $0x0,%esi
 586:	e9 ef fe ff ff       	jmp    0x47a
 58b:	ba 25 00 00 00       	mov    $0x25,%edx
 590:	8b 45 08             	mov    0x8(%ebp),%eax
 593:	e8 11 fe ff ff       	call   0x3a9
 598:	89 fa                	mov    %edi,%edx
 59a:	8b 45 08             	mov    0x8(%ebp),%eax
 59d:	e8 07 fe ff ff       	call   0x3a9
 5a2:	be 00 00 00 00       	mov    $0x0,%esi
 5a7:	e9 ce fe ff ff       	jmp    0x47a
 5ac:	8d 65 f4             	lea    -0xc(%ebp),%esp
 5af:	5b                   	pop    %ebx
 5b0:	5e                   	pop    %esi
 5b1:	5f                   	pop    %edi
 5b2:	5d                   	pop    %ebp
 5b3:	c3                   	ret    
 5b4:	55                   	push   %ebp
 5b5:	89 e5                	mov    %esp,%ebp
 5b7:	57                   	push   %edi
 5b8:	56                   	push   %esi
 5b9:	53                   	push   %ebx
 5ba:	8b 5d 08             	mov    0x8(%ebp),%ebx
 5bd:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 5c0:	a1 80 0c 00 00       	mov    0xc80,%eax
 5c5:	eb 02                	jmp    0x5c9
 5c7:	89 d0                	mov    %edx,%eax
 5c9:	39 c8                	cmp    %ecx,%eax
 5cb:	73 04                	jae    0x5d1
 5cd:	39 08                	cmp    %ecx,(%eax)
 5cf:	77 12                	ja     0x5e3
 5d1:	8b 10                	mov    (%eax),%edx
 5d3:	39 c2                	cmp    %eax,%edx
 5d5:	77 f0                	ja     0x5c7
 5d7:	39 c8                	cmp    %ecx,%eax
 5d9:	72 08                	jb     0x5e3
 5db:	39 ca                	cmp    %ecx,%edx
 5dd:	77 04                	ja     0x5e3
 5df:	89 d0                	mov    %edx,%eax
 5e1:	eb e6                	jmp    0x5c9
 5e3:	8b 73 fc             	mov    -0x4(%ebx),%esi
 5e6:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 5e9:	8b 10                	mov    (%eax),%edx
 5eb:	39 d7                	cmp    %edx,%edi
 5ed:	74 19                	je     0x608
 5ef:	89 53 f8             	mov    %edx,-0x8(%ebx)
 5f2:	8b 50 04             	mov    0x4(%eax),%edx
 5f5:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 5f8:	39 ce                	cmp    %ecx,%esi
 5fa:	74 1b                	je     0x617
 5fc:	89 08                	mov    %ecx,(%eax)
 5fe:	a3 80 0c 00 00       	mov    %eax,0xc80
 603:	5b                   	pop    %ebx
 604:	5e                   	pop    %esi
 605:	5f                   	pop    %edi
 606:	5d                   	pop    %ebp
 607:	c3                   	ret    
 608:	03 72 04             	add    0x4(%edx),%esi
 60b:	89 73 fc             	mov    %esi,-0x4(%ebx)
 60e:	8b 10                	mov    (%eax),%edx
 610:	8b 12                	mov    (%edx),%edx
 612:	89 53 f8             	mov    %edx,-0x8(%ebx)
 615:	eb db                	jmp    0x5f2
 617:	03 53 fc             	add    -0x4(%ebx),%edx
 61a:	89 50 04             	mov    %edx,0x4(%eax)
 61d:	8b 53 f8             	mov    -0x8(%ebx),%edx
 620:	89 10                	mov    %edx,(%eax)
 622:	eb da                	jmp    0x5fe
 624:	55                   	push   %ebp
 625:	89 e5                	mov    %esp,%ebp
 627:	53                   	push   %ebx
 628:	83 ec 04             	sub    $0x4,%esp
 62b:	89 c3                	mov    %eax,%ebx
 62d:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 632:	77 05                	ja     0x639
 634:	bb 00 10 00 00       	mov    $0x1000,%ebx
 639:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 640:	83 ec 0c             	sub    $0xc,%esp
 643:	50                   	push   %eax
 644:	e8 40 fd ff ff       	call   0x389
 649:	83 c4 10             	add    $0x10,%esp
 64c:	83 f8 ff             	cmp    $0xffffffff,%eax
 64f:	74 1c                	je     0x66d
 651:	89 58 04             	mov    %ebx,0x4(%eax)
 654:	83 c0 08             	add    $0x8,%eax
 657:	83 ec 0c             	sub    $0xc,%esp
 65a:	50                   	push   %eax
 65b:	e8 54 ff ff ff       	call   0x5b4
 660:	a1 80 0c 00 00       	mov    0xc80,%eax
 665:	83 c4 10             	add    $0x10,%esp
 668:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 66b:	c9                   	leave  
 66c:	c3                   	ret    
 66d:	b8 00 00 00 00       	mov    $0x0,%eax
 672:	eb f4                	jmp    0x668
 674:	55                   	push   %ebp
 675:	89 e5                	mov    %esp,%ebp
 677:	53                   	push   %ebx
 678:	83 ec 04             	sub    $0x4,%esp
 67b:	8b 45 08             	mov    0x8(%ebp),%eax
 67e:	8d 58 07             	lea    0x7(%eax),%ebx
 681:	c1 eb 03             	shr    $0x3,%ebx
 684:	83 c3 01             	add    $0x1,%ebx
 687:	8b 0d 80 0c 00 00    	mov    0xc80,%ecx
 68d:	85 c9                	test   %ecx,%ecx
 68f:	74 04                	je     0x695
 691:	8b 01                	mov    (%ecx),%eax
 693:	eb 4a                	jmp    0x6df
 695:	c7 05 80 0c 00 00 84 	movl   $0xc84,0xc80
 69c:	0c 00 00 
 69f:	c7 05 84 0c 00 00 84 	movl   $0xc84,0xc84
 6a6:	0c 00 00 
 6a9:	c7 05 88 0c 00 00 00 	movl   $0x0,0xc88
 6b0:	00 00 00 
 6b3:	b9 84 0c 00 00       	mov    $0xc84,%ecx
 6b8:	eb d7                	jmp    0x691
 6ba:	74 19                	je     0x6d5
 6bc:	29 da                	sub    %ebx,%edx
 6be:	89 50 04             	mov    %edx,0x4(%eax)
 6c1:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 6c4:	89 58 04             	mov    %ebx,0x4(%eax)
 6c7:	89 0d 80 0c 00 00    	mov    %ecx,0xc80
 6cd:	83 c0 08             	add    $0x8,%eax
 6d0:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 6d3:	c9                   	leave  
 6d4:	c3                   	ret    
 6d5:	8b 10                	mov    (%eax),%edx
 6d7:	89 11                	mov    %edx,(%ecx)
 6d9:	eb ec                	jmp    0x6c7
 6db:	89 c1                	mov    %eax,%ecx
 6dd:	8b 00                	mov    (%eax),%eax
 6df:	8b 50 04             	mov    0x4(%eax),%edx
 6e2:	39 da                	cmp    %ebx,%edx
 6e4:	73 d4                	jae    0x6ba
 6e6:	39 05 80 0c 00 00    	cmp    %eax,0xc80
 6ec:	75 ed                	jne    0x6db
 6ee:	89 d8                	mov    %ebx,%eax
 6f0:	e8 2f ff ff ff       	call   0x624
 6f5:	85 c0                	test   %eax,%eax
 6f7:	75 e2                	jne    0x6db
 6f9:	eb d5                	jmp    0x6d0
