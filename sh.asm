
_sh:     file format elf32-i386


Disassembly of section .text:

00000000 <.text>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	56                   	push   %esi
   4:	53                   	push   %ebx
   5:	8b 5d 08             	mov    0x8(%ebp),%ebx
   8:	8b 75 0c             	mov    0xc(%ebp),%esi
   b:	83 ec 08             	sub    $0x8,%esp
   e:	68 bc 0f 00 00       	push   $0xfbc
  13:	6a 02                	push   $0x2
  15:	e8 ea 0c 00 00       	call   0xd04
  1a:	83 c4 0c             	add    $0xc,%esp
  1d:	56                   	push   %esi
  1e:	6a 00                	push   $0x0
  20:	53                   	push   %ebx
  21:	e8 3c 0a 00 00       	call   0xa62
  26:	83 c4 08             	add    $0x8,%esp
  29:	56                   	push   %esi
  2a:	53                   	push   %ebx
  2b:	e8 72 0a 00 00       	call   0xaa2
  30:	83 c4 10             	add    $0x10,%esp
  33:	80 3b 00             	cmpb   $0x0,(%ebx)
  36:	74 0c                	je     0x44
  38:	b8 00 00 00 00       	mov    $0x0,%eax
  3d:	8d 65 f8             	lea    -0x8(%ebp),%esp
  40:	5b                   	pop    %ebx
  41:	5e                   	pop    %esi
  42:	5d                   	pop    %ebp
  43:	c3                   	ret    
  44:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  49:	eb f2                	jmp    0x3d
  4b:	55                   	push   %ebp
  4c:	89 e5                	mov    %esp,%ebp
  4e:	83 ec 0c             	sub    $0xc,%esp
  51:	ff 75 08             	push   0x8(%ebp)
  54:	68 59 10 00 00       	push   $0x1059
  59:	6a 02                	push   $0x2
  5b:	e8 a4 0c 00 00       	call   0xd04
  60:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  67:	e8 43 0b 00 00       	call   0xbaf
  6c:	55                   	push   %ebp
  6d:	89 e5                	mov    %esp,%ebp
  6f:	83 ec 08             	sub    $0x8,%esp
  72:	e8 30 0b 00 00       	call   0xba7
  77:	83 f8 ff             	cmp    $0xffffffff,%eax
  7a:	74 02                	je     0x7e
  7c:	c9                   	leave  
  7d:	c3                   	ret    
  7e:	83 ec 0c             	sub    $0xc,%esp
  81:	68 bf 0f 00 00       	push   $0xfbf
  86:	e8 c0 ff ff ff       	call   0x4b
  8b:	55                   	push   %ebp
  8c:	89 e5                	mov    %esp,%ebp
  8e:	53                   	push   %ebx
  8f:	83 ec 14             	sub    $0x14,%esp
  92:	8b 5d 08             	mov    0x8(%ebp),%ebx
  95:	85 db                	test   %ebx,%ebx
  97:	74 0e                	je     0xa7
  99:	8b 03                	mov    (%ebx),%eax
  9b:	83 f8 05             	cmp    $0x5,%eax
  9e:	77 11                	ja     0xb1
  a0:	ff 24 85 74 10 00 00 	jmp    *0x1074(,%eax,4)
  a7:	83 ec 0c             	sub    $0xc,%esp
  aa:	6a 00                	push   $0x0
  ac:	e8 fe 0a 00 00       	call   0xbaf
  b1:	83 ec 0c             	sub    $0xc,%esp
  b4:	68 c4 0f 00 00       	push   $0xfc4
  b9:	e8 8d ff ff ff       	call   0x4b
  be:	8b 43 04             	mov    0x4(%ebx),%eax
  c1:	85 c0                	test   %eax,%eax
  c3:	74 2c                	je     0xf1
  c5:	8d 53 04             	lea    0x4(%ebx),%edx
  c8:	83 ec 08             	sub    $0x8,%esp
  cb:	52                   	push   %edx
  cc:	50                   	push   %eax
  cd:	e8 15 0b 00 00       	call   0xbe7
  d2:	83 c4 0c             	add    $0xc,%esp
  d5:	ff 73 04             	push   0x4(%ebx)
  d8:	68 cb 0f 00 00       	push   $0xfcb
  dd:	6a 02                	push   $0x2
  df:	e8 20 0c 00 00       	call   0xd04
  e4:	83 c4 10             	add    $0x10,%esp
  e7:	83 ec 0c             	sub    $0xc,%esp
  ea:	6a 00                	push   $0x0
  ec:	e8 be 0a 00 00       	call   0xbaf
  f1:	83 ec 0c             	sub    $0xc,%esp
  f4:	6a 00                	push   $0x0
  f6:	e8 b4 0a 00 00       	call   0xbaf
  fb:	83 ec 0c             	sub    $0xc,%esp
  fe:	ff 73 14             	push   0x14(%ebx)
 101:	e8 d1 0a 00 00       	call   0xbd7
 106:	83 c4 08             	add    $0x8,%esp
 109:	ff 73 10             	push   0x10(%ebx)
 10c:	ff 73 08             	push   0x8(%ebx)
 10f:	e8 db 0a 00 00       	call   0xbef
 114:	83 c4 10             	add    $0x10,%esp
 117:	85 c0                	test   %eax,%eax
 119:	78 0b                	js     0x126
 11b:	83 ec 0c             	sub    $0xc,%esp
 11e:	ff 73 04             	push   0x4(%ebx)
 121:	e8 65 ff ff ff       	call   0x8b
 126:	83 ec 04             	sub    $0x4,%esp
 129:	ff 73 08             	push   0x8(%ebx)
 12c:	68 db 0f 00 00       	push   $0xfdb
 131:	6a 02                	push   $0x2
 133:	e8 cc 0b 00 00       	call   0xd04
 138:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 13f:	e8 6b 0a 00 00       	call   0xbaf
 144:	e8 23 ff ff ff       	call   0x6c
 149:	85 c0                	test   %eax,%eax
 14b:	74 15                	je     0x162
 14d:	83 ec 0c             	sub    $0xc,%esp
 150:	6a 00                	push   $0x0
 152:	e8 60 0a 00 00       	call   0xbb7
 157:	83 c4 04             	add    $0x4,%esp
 15a:	ff 73 08             	push   0x8(%ebx)
 15d:	e8 29 ff ff ff       	call   0x8b
 162:	83 ec 0c             	sub    $0xc,%esp
 165:	ff 73 04             	push   0x4(%ebx)
 168:	e8 1e ff ff ff       	call   0x8b
 16d:	83 ec 0c             	sub    $0xc,%esp
 170:	8d 45 f0             	lea    -0x10(%ebp),%eax
 173:	50                   	push   %eax
 174:	e8 46 0a 00 00       	call   0xbbf
 179:	83 c4 10             	add    $0x10,%esp
 17c:	85 c0                	test   %eax,%eax
 17e:	78 48                	js     0x1c8
 180:	e8 e7 fe ff ff       	call   0x6c
 185:	85 c0                	test   %eax,%eax
 187:	74 4c                	je     0x1d5
 189:	e8 de fe ff ff       	call   0x6c
 18e:	85 c0                	test   %eax,%eax
 190:	74 79                	je     0x20b
 192:	83 ec 0c             	sub    $0xc,%esp
 195:	ff 75 f0             	push   -0x10(%ebp)
 198:	e8 3a 0a 00 00       	call   0xbd7
 19d:	83 c4 04             	add    $0x4,%esp
 1a0:	ff 75 f4             	push   -0xc(%ebp)
 1a3:	e8 2f 0a 00 00       	call   0xbd7
 1a8:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 1af:	e8 03 0a 00 00       	call   0xbb7
 1b4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 1bb:	e8 f7 09 00 00       	call   0xbb7
 1c0:	83 c4 10             	add    $0x10,%esp
 1c3:	e9 1f ff ff ff       	jmp    0xe7
 1c8:	83 ec 0c             	sub    $0xc,%esp
 1cb:	68 eb 0f 00 00       	push   $0xfeb
 1d0:	e8 76 fe ff ff       	call   0x4b
 1d5:	83 ec 0c             	sub    $0xc,%esp
 1d8:	6a 01                	push   $0x1
 1da:	e8 f8 09 00 00       	call   0xbd7
 1df:	83 c4 04             	add    $0x4,%esp
 1e2:	ff 75 f4             	push   -0xc(%ebp)
 1e5:	e8 3d 0a 00 00       	call   0xc27
 1ea:	83 c4 04             	add    $0x4,%esp
 1ed:	ff 75 f0             	push   -0x10(%ebp)
 1f0:	e8 e2 09 00 00       	call   0xbd7
 1f5:	83 c4 04             	add    $0x4,%esp
 1f8:	ff 75 f4             	push   -0xc(%ebp)
 1fb:	e8 d7 09 00 00       	call   0xbd7
 200:	83 c4 04             	add    $0x4,%esp
 203:	ff 73 04             	push   0x4(%ebx)
 206:	e8 80 fe ff ff       	call   0x8b
 20b:	83 ec 0c             	sub    $0xc,%esp
 20e:	6a 00                	push   $0x0
 210:	e8 c2 09 00 00       	call   0xbd7
 215:	83 c4 04             	add    $0x4,%esp
 218:	ff 75 f0             	push   -0x10(%ebp)
 21b:	e8 07 0a 00 00       	call   0xc27
 220:	83 c4 04             	add    $0x4,%esp
 223:	ff 75 f0             	push   -0x10(%ebp)
 226:	e8 ac 09 00 00       	call   0xbd7
 22b:	83 c4 04             	add    $0x4,%esp
 22e:	ff 75 f4             	push   -0xc(%ebp)
 231:	e8 a1 09 00 00       	call   0xbd7
 236:	83 c4 04             	add    $0x4,%esp
 239:	ff 73 08             	push   0x8(%ebx)
 23c:	e8 4a fe ff ff       	call   0x8b
 241:	e8 26 fe ff ff       	call   0x6c
 246:	85 c0                	test   %eax,%eax
 248:	0f 85 99 fe ff ff    	jne    0xe7
 24e:	83 ec 0c             	sub    $0xc,%esp
 251:	ff 73 04             	push   0x4(%ebx)
 254:	e8 32 fe ff ff       	call   0x8b
 259:	55                   	push   %ebp
 25a:	89 e5                	mov    %esp,%ebp
 25c:	53                   	push   %ebx
 25d:	83 ec 10             	sub    $0x10,%esp
 260:	6a 54                	push   $0x54
 262:	e8 c7 0c 00 00       	call   0xf2e
 267:	89 c3                	mov    %eax,%ebx
 269:	83 c4 0c             	add    $0xc,%esp
 26c:	6a 54                	push   $0x54
 26e:	6a 00                	push   $0x0
 270:	50                   	push   %eax
 271:	e8 ec 07 00 00       	call   0xa62
 276:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
 27c:	89 d8                	mov    %ebx,%eax
 27e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 281:	c9                   	leave  
 282:	c3                   	ret    
 283:	55                   	push   %ebp
 284:	89 e5                	mov    %esp,%ebp
 286:	53                   	push   %ebx
 287:	83 ec 10             	sub    $0x10,%esp
 28a:	6a 18                	push   $0x18
 28c:	e8 9d 0c 00 00       	call   0xf2e
 291:	89 c3                	mov    %eax,%ebx
 293:	83 c4 0c             	add    $0xc,%esp
 296:	6a 18                	push   $0x18
 298:	6a 00                	push   $0x0
 29a:	50                   	push   %eax
 29b:	e8 c2 07 00 00       	call   0xa62
 2a0:	c7 03 02 00 00 00    	movl   $0x2,(%ebx)
 2a6:	8b 45 08             	mov    0x8(%ebp),%eax
 2a9:	89 43 04             	mov    %eax,0x4(%ebx)
 2ac:	8b 45 0c             	mov    0xc(%ebp),%eax
 2af:	89 43 08             	mov    %eax,0x8(%ebx)
 2b2:	8b 45 10             	mov    0x10(%ebp),%eax
 2b5:	89 43 0c             	mov    %eax,0xc(%ebx)
 2b8:	8b 45 14             	mov    0x14(%ebp),%eax
 2bb:	89 43 10             	mov    %eax,0x10(%ebx)
 2be:	8b 45 18             	mov    0x18(%ebp),%eax
 2c1:	89 43 14             	mov    %eax,0x14(%ebx)
 2c4:	89 d8                	mov    %ebx,%eax
 2c6:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 2c9:	c9                   	leave  
 2ca:	c3                   	ret    
 2cb:	55                   	push   %ebp
 2cc:	89 e5                	mov    %esp,%ebp
 2ce:	53                   	push   %ebx
 2cf:	83 ec 10             	sub    $0x10,%esp
 2d2:	6a 0c                	push   $0xc
 2d4:	e8 55 0c 00 00       	call   0xf2e
 2d9:	89 c3                	mov    %eax,%ebx
 2db:	83 c4 0c             	add    $0xc,%esp
 2de:	6a 0c                	push   $0xc
 2e0:	6a 00                	push   $0x0
 2e2:	50                   	push   %eax
 2e3:	e8 7a 07 00 00       	call   0xa62
 2e8:	c7 03 03 00 00 00    	movl   $0x3,(%ebx)
 2ee:	8b 45 08             	mov    0x8(%ebp),%eax
 2f1:	89 43 04             	mov    %eax,0x4(%ebx)
 2f4:	8b 45 0c             	mov    0xc(%ebp),%eax
 2f7:	89 43 08             	mov    %eax,0x8(%ebx)
 2fa:	89 d8                	mov    %ebx,%eax
 2fc:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 2ff:	c9                   	leave  
 300:	c3                   	ret    
 301:	55                   	push   %ebp
 302:	89 e5                	mov    %esp,%ebp
 304:	53                   	push   %ebx
 305:	83 ec 10             	sub    $0x10,%esp
 308:	6a 0c                	push   $0xc
 30a:	e8 1f 0c 00 00       	call   0xf2e
 30f:	89 c3                	mov    %eax,%ebx
 311:	83 c4 0c             	add    $0xc,%esp
 314:	6a 0c                	push   $0xc
 316:	6a 00                	push   $0x0
 318:	50                   	push   %eax
 319:	e8 44 07 00 00       	call   0xa62
 31e:	c7 03 04 00 00 00    	movl   $0x4,(%ebx)
 324:	8b 45 08             	mov    0x8(%ebp),%eax
 327:	89 43 04             	mov    %eax,0x4(%ebx)
 32a:	8b 45 0c             	mov    0xc(%ebp),%eax
 32d:	89 43 08             	mov    %eax,0x8(%ebx)
 330:	89 d8                	mov    %ebx,%eax
 332:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 335:	c9                   	leave  
 336:	c3                   	ret    
 337:	55                   	push   %ebp
 338:	89 e5                	mov    %esp,%ebp
 33a:	53                   	push   %ebx
 33b:	83 ec 10             	sub    $0x10,%esp
 33e:	6a 08                	push   $0x8
 340:	e8 e9 0b 00 00       	call   0xf2e
 345:	89 c3                	mov    %eax,%ebx
 347:	83 c4 0c             	add    $0xc,%esp
 34a:	6a 08                	push   $0x8
 34c:	6a 00                	push   $0x0
 34e:	50                   	push   %eax
 34f:	e8 0e 07 00 00       	call   0xa62
 354:	c7 03 05 00 00 00    	movl   $0x5,(%ebx)
 35a:	8b 45 08             	mov    0x8(%ebp),%eax
 35d:	89 43 04             	mov    %eax,0x4(%ebx)
 360:	89 d8                	mov    %ebx,%eax
 362:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 365:	c9                   	leave  
 366:	c3                   	ret    
 367:	55                   	push   %ebp
 368:	89 e5                	mov    %esp,%ebp
 36a:	57                   	push   %edi
 36b:	56                   	push   %esi
 36c:	53                   	push   %ebx
 36d:	83 ec 0c             	sub    $0xc,%esp
 370:	8b 75 0c             	mov    0xc(%ebp),%esi
 373:	8b 7d 10             	mov    0x10(%ebp),%edi
 376:	8b 45 08             	mov    0x8(%ebp),%eax
 379:	8b 18                	mov    (%eax),%ebx
 37b:	eb 03                	jmp    0x380
 37d:	83 c3 01             	add    $0x1,%ebx
 380:	39 f3                	cmp    %esi,%ebx
 382:	73 18                	jae    0x39c
 384:	83 ec 08             	sub    $0x8,%esp
 387:	0f be 03             	movsbl (%ebx),%eax
 38a:	50                   	push   %eax
 38b:	68 84 16 00 00       	push   $0x1684
 390:	e8 e8 06 00 00       	call   0xa7d
 395:	83 c4 10             	add    $0x10,%esp
 398:	85 c0                	test   %eax,%eax
 39a:	75 e1                	jne    0x37d
 39c:	85 ff                	test   %edi,%edi
 39e:	74 02                	je     0x3a2
 3a0:	89 1f                	mov    %ebx,(%edi)
 3a2:	0f b6 03             	movzbl (%ebx),%eax
 3a5:	0f be f8             	movsbl %al,%edi
 3a8:	3c 3c                	cmp    $0x3c,%al
 3aa:	7f 27                	jg     0x3d3
 3ac:	3c 3b                	cmp    $0x3b,%al
 3ae:	7d 13                	jge    0x3c3
 3b0:	84 c0                	test   %al,%al
 3b2:	74 12                	je     0x3c6
 3b4:	78 41                	js     0x3f7
 3b6:	3c 26                	cmp    $0x26,%al
 3b8:	74 09                	je     0x3c3
 3ba:	7c 3b                	jl     0x3f7
 3bc:	83 e8 28             	sub    $0x28,%eax
 3bf:	3c 01                	cmp    $0x1,%al
 3c1:	77 34                	ja     0x3f7
 3c3:	83 c3 01             	add    $0x1,%ebx
 3c6:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
 3ca:	74 77                	je     0x443
 3cc:	8b 45 14             	mov    0x14(%ebp),%eax
 3cf:	89 18                	mov    %ebx,(%eax)
 3d1:	eb 70                	jmp    0x443
 3d3:	3c 3e                	cmp    $0x3e,%al
 3d5:	75 0d                	jne    0x3e4
 3d7:	8d 43 01             	lea    0x1(%ebx),%eax
 3da:	80 7b 01 3e          	cmpb   $0x3e,0x1(%ebx)
 3de:	74 0a                	je     0x3ea
 3e0:	89 c3                	mov    %eax,%ebx
 3e2:	eb e2                	jmp    0x3c6
 3e4:	3c 7c                	cmp    $0x7c,%al
 3e6:	75 0f                	jne    0x3f7
 3e8:	eb d9                	jmp    0x3c3
 3ea:	83 c3 02             	add    $0x2,%ebx
 3ed:	bf 2b 00 00 00       	mov    $0x2b,%edi
 3f2:	eb d2                	jmp    0x3c6
 3f4:	83 c3 01             	add    $0x1,%ebx
 3f7:	39 f3                	cmp    %esi,%ebx
 3f9:	73 37                	jae    0x432
 3fb:	83 ec 08             	sub    $0x8,%esp
 3fe:	0f be 03             	movsbl (%ebx),%eax
 401:	50                   	push   %eax
 402:	68 84 16 00 00       	push   $0x1684
 407:	e8 71 06 00 00       	call   0xa7d
 40c:	83 c4 10             	add    $0x10,%esp
 40f:	85 c0                	test   %eax,%eax
 411:	75 26                	jne    0x439
 413:	83 ec 08             	sub    $0x8,%esp
 416:	0f be 03             	movsbl (%ebx),%eax
 419:	50                   	push   %eax
 41a:	68 7c 16 00 00       	push   $0x167c
 41f:	e8 59 06 00 00       	call   0xa7d
 424:	83 c4 10             	add    $0x10,%esp
 427:	85 c0                	test   %eax,%eax
 429:	74 c9                	je     0x3f4
 42b:	bf 61 00 00 00       	mov    $0x61,%edi
 430:	eb 94                	jmp    0x3c6
 432:	bf 61 00 00 00       	mov    $0x61,%edi
 437:	eb 8d                	jmp    0x3c6
 439:	bf 61 00 00 00       	mov    $0x61,%edi
 43e:	eb 86                	jmp    0x3c6
 440:	83 c3 01             	add    $0x1,%ebx
 443:	39 f3                	cmp    %esi,%ebx
 445:	73 18                	jae    0x45f
 447:	83 ec 08             	sub    $0x8,%esp
 44a:	0f be 03             	movsbl (%ebx),%eax
 44d:	50                   	push   %eax
 44e:	68 84 16 00 00       	push   $0x1684
 453:	e8 25 06 00 00       	call   0xa7d
 458:	83 c4 10             	add    $0x10,%esp
 45b:	85 c0                	test   %eax,%eax
 45d:	75 e1                	jne    0x440
 45f:	8b 45 08             	mov    0x8(%ebp),%eax
 462:	89 18                	mov    %ebx,(%eax)
 464:	89 f8                	mov    %edi,%eax
 466:	8d 65 f4             	lea    -0xc(%ebp),%esp
 469:	5b                   	pop    %ebx
 46a:	5e                   	pop    %esi
 46b:	5f                   	pop    %edi
 46c:	5d                   	pop    %ebp
 46d:	c3                   	ret    
 46e:	55                   	push   %ebp
 46f:	89 e5                	mov    %esp,%ebp
 471:	57                   	push   %edi
 472:	56                   	push   %esi
 473:	53                   	push   %ebx
 474:	83 ec 0c             	sub    $0xc,%esp
 477:	8b 7d 08             	mov    0x8(%ebp),%edi
 47a:	8b 75 0c             	mov    0xc(%ebp),%esi
 47d:	8b 1f                	mov    (%edi),%ebx
 47f:	eb 03                	jmp    0x484
 481:	83 c3 01             	add    $0x1,%ebx
 484:	39 f3                	cmp    %esi,%ebx
 486:	73 18                	jae    0x4a0
 488:	83 ec 08             	sub    $0x8,%esp
 48b:	0f be 03             	movsbl (%ebx),%eax
 48e:	50                   	push   %eax
 48f:	68 84 16 00 00       	push   $0x1684
 494:	e8 e4 05 00 00       	call   0xa7d
 499:	83 c4 10             	add    $0x10,%esp
 49c:	85 c0                	test   %eax,%eax
 49e:	75 e1                	jne    0x481
 4a0:	89 1f                	mov    %ebx,(%edi)
 4a2:	0f b6 03             	movzbl (%ebx),%eax
 4a5:	84 c0                	test   %al,%al
 4a7:	75 0d                	jne    0x4b6
 4a9:	b8 00 00 00 00       	mov    $0x0,%eax
 4ae:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4b1:	5b                   	pop    %ebx
 4b2:	5e                   	pop    %esi
 4b3:	5f                   	pop    %edi
 4b4:	5d                   	pop    %ebp
 4b5:	c3                   	ret    
 4b6:	83 ec 08             	sub    $0x8,%esp
 4b9:	0f be c0             	movsbl %al,%eax
 4bc:	50                   	push   %eax
 4bd:	ff 75 10             	push   0x10(%ebp)
 4c0:	e8 b8 05 00 00       	call   0xa7d
 4c5:	83 c4 10             	add    $0x10,%esp
 4c8:	85 c0                	test   %eax,%eax
 4ca:	74 07                	je     0x4d3
 4cc:	b8 01 00 00 00       	mov    $0x1,%eax
 4d1:	eb db                	jmp    0x4ae
 4d3:	b8 00 00 00 00       	mov    $0x0,%eax
 4d8:	eb d4                	jmp    0x4ae
 4da:	55                   	push   %ebp
 4db:	89 e5                	mov    %esp,%ebp
 4dd:	57                   	push   %edi
 4de:	56                   	push   %esi
 4df:	53                   	push   %ebx
 4e0:	83 ec 1c             	sub    $0x1c,%esp
 4e3:	8b 7d 0c             	mov    0xc(%ebp),%edi
 4e6:	8b 75 10             	mov    0x10(%ebp),%esi
 4e9:	eb 28                	jmp    0x513
 4eb:	83 ec 0c             	sub    $0xc,%esp
 4ee:	68 f0 0f 00 00       	push   $0xff0
 4f3:	e8 53 fb ff ff       	call   0x4b
 4f8:	83 ec 0c             	sub    $0xc,%esp
 4fb:	6a 00                	push   $0x0
 4fd:	6a 00                	push   $0x0
 4ff:	ff 75 e0             	push   -0x20(%ebp)
 502:	ff 75 e4             	push   -0x1c(%ebp)
 505:	ff 75 08             	push   0x8(%ebp)
 508:	e8 76 fd ff ff       	call   0x283
 50d:	89 45 08             	mov    %eax,0x8(%ebp)
 510:	83 c4 20             	add    $0x20,%esp
 513:	83 ec 04             	sub    $0x4,%esp
 516:	68 0d 10 00 00       	push   $0x100d
 51b:	56                   	push   %esi
 51c:	57                   	push   %edi
 51d:	e8 4c ff ff ff       	call   0x46e
 522:	83 c4 10             	add    $0x10,%esp
 525:	85 c0                	test   %eax,%eax
 527:	74 76                	je     0x59f
 529:	6a 00                	push   $0x0
 52b:	6a 00                	push   $0x0
 52d:	56                   	push   %esi
 52e:	57                   	push   %edi
 52f:	e8 33 fe ff ff       	call   0x367
 534:	89 c3                	mov    %eax,%ebx
 536:	8d 45 e0             	lea    -0x20(%ebp),%eax
 539:	50                   	push   %eax
 53a:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 53d:	50                   	push   %eax
 53e:	56                   	push   %esi
 53f:	57                   	push   %edi
 540:	e8 22 fe ff ff       	call   0x367
 545:	83 c4 20             	add    $0x20,%esp
 548:	83 f8 61             	cmp    $0x61,%eax
 54b:	75 9e                	jne    0x4eb
 54d:	83 fb 3c             	cmp    $0x3c,%ebx
 550:	74 a6                	je     0x4f8
 552:	83 fb 3e             	cmp    $0x3e,%ebx
 555:	74 25                	je     0x57c
 557:	83 fb 2b             	cmp    $0x2b,%ebx
 55a:	75 b7                	jne    0x513
 55c:	83 ec 0c             	sub    $0xc,%esp
 55f:	6a 01                	push   $0x1
 561:	68 01 02 00 00       	push   $0x201
 566:	ff 75 e0             	push   -0x20(%ebp)
 569:	ff 75 e4             	push   -0x1c(%ebp)
 56c:	ff 75 08             	push   0x8(%ebp)
 56f:	e8 0f fd ff ff       	call   0x283
 574:	89 45 08             	mov    %eax,0x8(%ebp)
 577:	83 c4 20             	add    $0x20,%esp
 57a:	eb 97                	jmp    0x513
 57c:	83 ec 0c             	sub    $0xc,%esp
 57f:	6a 01                	push   $0x1
 581:	68 01 02 00 00       	push   $0x201
 586:	ff 75 e0             	push   -0x20(%ebp)
 589:	ff 75 e4             	push   -0x1c(%ebp)
 58c:	ff 75 08             	push   0x8(%ebp)
 58f:	e8 ef fc ff ff       	call   0x283
 594:	89 45 08             	mov    %eax,0x8(%ebp)
 597:	83 c4 20             	add    $0x20,%esp
 59a:	e9 74 ff ff ff       	jmp    0x513
 59f:	8b 45 08             	mov    0x8(%ebp),%eax
 5a2:	8d 65 f4             	lea    -0xc(%ebp),%esp
 5a5:	5b                   	pop    %ebx
 5a6:	5e                   	pop    %esi
 5a7:	5f                   	pop    %edi
 5a8:	5d                   	pop    %ebp
 5a9:	c3                   	ret    
 5aa:	55                   	push   %ebp
 5ab:	89 e5                	mov    %esp,%ebp
 5ad:	57                   	push   %edi
 5ae:	56                   	push   %esi
 5af:	53                   	push   %ebx
 5b0:	83 ec 30             	sub    $0x30,%esp
 5b3:	8b 75 08             	mov    0x8(%ebp),%esi
 5b6:	8b 7d 0c             	mov    0xc(%ebp),%edi
 5b9:	68 10 10 00 00       	push   $0x1010
 5be:	57                   	push   %edi
 5bf:	56                   	push   %esi
 5c0:	e8 a9 fe ff ff       	call   0x46e
 5c5:	83 c4 10             	add    $0x10,%esp
 5c8:	85 c0                	test   %eax,%eax
 5ca:	75 1d                	jne    0x5e9
 5cc:	89 c3                	mov    %eax,%ebx
 5ce:	e8 86 fc ff ff       	call   0x259
 5d3:	89 45 d0             	mov    %eax,-0x30(%ebp)
 5d6:	83 ec 04             	sub    $0x4,%esp
 5d9:	57                   	push   %edi
 5da:	56                   	push   %esi
 5db:	50                   	push   %eax
 5dc:	e8 f9 fe ff ff       	call   0x4da
 5e1:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 5e4:	83 c4 10             	add    $0x10,%esp
 5e7:	eb 3b                	jmp    0x624
 5e9:	83 ec 08             	sub    $0x8,%esp
 5ec:	57                   	push   %edi
 5ed:	56                   	push   %esi
 5ee:	e8 8f 01 00 00       	call   0x782
 5f3:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 5f6:	83 c4 10             	add    $0x10,%esp
 5f9:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 5fc:	8d 65 f4             	lea    -0xc(%ebp),%esp
 5ff:	5b                   	pop    %ebx
 600:	5e                   	pop    %esi
 601:	5f                   	pop    %edi
 602:	5d                   	pop    %ebp
 603:	c3                   	ret    
 604:	83 ec 0c             	sub    $0xc,%esp
 607:	68 12 10 00 00       	push   $0x1012
 60c:	e8 3a fa ff ff       	call   0x4b
 611:	83 ec 04             	sub    $0x4,%esp
 614:	57                   	push   %edi
 615:	56                   	push   %esi
 616:	ff 75 d4             	push   -0x2c(%ebp)
 619:	e8 bc fe ff ff       	call   0x4da
 61e:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 621:	83 c4 10             	add    $0x10,%esp
 624:	83 ec 04             	sub    $0x4,%esp
 627:	68 27 10 00 00       	push   $0x1027
 62c:	57                   	push   %edi
 62d:	56                   	push   %esi
 62e:	e8 3b fe ff ff       	call   0x46e
 633:	83 c4 10             	add    $0x10,%esp
 636:	85 c0                	test   %eax,%eax
 638:	75 41                	jne    0x67b
 63a:	8d 45 e0             	lea    -0x20(%ebp),%eax
 63d:	50                   	push   %eax
 63e:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 641:	50                   	push   %eax
 642:	57                   	push   %edi
 643:	56                   	push   %esi
 644:	e8 1e fd ff ff       	call   0x367
 649:	83 c4 10             	add    $0x10,%esp
 64c:	85 c0                	test   %eax,%eax
 64e:	74 2b                	je     0x67b
 650:	83 f8 61             	cmp    $0x61,%eax
 653:	75 af                	jne    0x604
 655:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 658:	8b 55 d0             	mov    -0x30(%ebp),%edx
 65b:	89 44 9a 04          	mov    %eax,0x4(%edx,%ebx,4)
 65f:	8b 45 e0             	mov    -0x20(%ebp),%eax
 662:	89 44 9a 2c          	mov    %eax,0x2c(%edx,%ebx,4)
 666:	83 c3 01             	add    $0x1,%ebx
 669:	83 fb 09             	cmp    $0x9,%ebx
 66c:	7e a3                	jle    0x611
 66e:	83 ec 0c             	sub    $0xc,%esp
 671:	68 19 10 00 00       	push   $0x1019
 676:	e8 d0 f9 ff ff       	call   0x4b
 67b:	8b 45 d0             	mov    -0x30(%ebp),%eax
 67e:	c7 44 98 04 00 00 00 	movl   $0x0,0x4(%eax,%ebx,4)
 685:	00 
 686:	c7 44 98 2c 00 00 00 	movl   $0x0,0x2c(%eax,%ebx,4)
 68d:	00 
 68e:	e9 66 ff ff ff       	jmp    0x5f9
 693:	55                   	push   %ebp
 694:	89 e5                	mov    %esp,%ebp
 696:	57                   	push   %edi
 697:	56                   	push   %esi
 698:	53                   	push   %ebx
 699:	83 ec 14             	sub    $0x14,%esp
 69c:	8b 75 08             	mov    0x8(%ebp),%esi
 69f:	8b 7d 0c             	mov    0xc(%ebp),%edi
 6a2:	57                   	push   %edi
 6a3:	56                   	push   %esi
 6a4:	e8 01 ff ff ff       	call   0x5aa
 6a9:	89 c3                	mov    %eax,%ebx
 6ab:	83 c4 0c             	add    $0xc,%esp
 6ae:	68 2c 10 00 00       	push   $0x102c
 6b3:	57                   	push   %edi
 6b4:	56                   	push   %esi
 6b5:	e8 b4 fd ff ff       	call   0x46e
 6ba:	83 c4 10             	add    $0x10,%esp
 6bd:	85 c0                	test   %eax,%eax
 6bf:	75 0a                	jne    0x6cb
 6c1:	89 d8                	mov    %ebx,%eax
 6c3:	8d 65 f4             	lea    -0xc(%ebp),%esp
 6c6:	5b                   	pop    %ebx
 6c7:	5e                   	pop    %esi
 6c8:	5f                   	pop    %edi
 6c9:	5d                   	pop    %ebp
 6ca:	c3                   	ret    
 6cb:	6a 00                	push   $0x0
 6cd:	6a 00                	push   $0x0
 6cf:	57                   	push   %edi
 6d0:	56                   	push   %esi
 6d1:	e8 91 fc ff ff       	call   0x367
 6d6:	83 c4 08             	add    $0x8,%esp
 6d9:	57                   	push   %edi
 6da:	56                   	push   %esi
 6db:	e8 b3 ff ff ff       	call   0x693
 6e0:	83 c4 08             	add    $0x8,%esp
 6e3:	50                   	push   %eax
 6e4:	53                   	push   %ebx
 6e5:	e8 e1 fb ff ff       	call   0x2cb
 6ea:	89 c3                	mov    %eax,%ebx
 6ec:	83 c4 10             	add    $0x10,%esp
 6ef:	eb d0                	jmp    0x6c1
 6f1:	55                   	push   %ebp
 6f2:	89 e5                	mov    %esp,%ebp
 6f4:	57                   	push   %edi
 6f5:	56                   	push   %esi
 6f6:	53                   	push   %ebx
 6f7:	83 ec 14             	sub    $0x14,%esp
 6fa:	8b 75 08             	mov    0x8(%ebp),%esi
 6fd:	8b 7d 0c             	mov    0xc(%ebp),%edi
 700:	57                   	push   %edi
 701:	56                   	push   %esi
 702:	e8 8c ff ff ff       	call   0x693
 707:	89 c3                	mov    %eax,%ebx
 709:	83 c4 10             	add    $0x10,%esp
 70c:	eb 18                	jmp    0x726
 70e:	6a 00                	push   $0x0
 710:	6a 00                	push   $0x0
 712:	57                   	push   %edi
 713:	56                   	push   %esi
 714:	e8 4e fc ff ff       	call   0x367
 719:	89 1c 24             	mov    %ebx,(%esp)
 71c:	e8 16 fc ff ff       	call   0x337
 721:	89 c3                	mov    %eax,%ebx
 723:	83 c4 10             	add    $0x10,%esp
 726:	83 ec 04             	sub    $0x4,%esp
 729:	68 2e 10 00 00       	push   $0x102e
 72e:	57                   	push   %edi
 72f:	56                   	push   %esi
 730:	e8 39 fd ff ff       	call   0x46e
 735:	83 c4 10             	add    $0x10,%esp
 738:	85 c0                	test   %eax,%eax
 73a:	75 d2                	jne    0x70e
 73c:	83 ec 04             	sub    $0x4,%esp
 73f:	68 2a 10 00 00       	push   $0x102a
 744:	57                   	push   %edi
 745:	56                   	push   %esi
 746:	e8 23 fd ff ff       	call   0x46e
 74b:	83 c4 10             	add    $0x10,%esp
 74e:	85 c0                	test   %eax,%eax
 750:	75 0a                	jne    0x75c
 752:	89 d8                	mov    %ebx,%eax
 754:	8d 65 f4             	lea    -0xc(%ebp),%esp
 757:	5b                   	pop    %ebx
 758:	5e                   	pop    %esi
 759:	5f                   	pop    %edi
 75a:	5d                   	pop    %ebp
 75b:	c3                   	ret    
 75c:	6a 00                	push   $0x0
 75e:	6a 00                	push   $0x0
 760:	57                   	push   %edi
 761:	56                   	push   %esi
 762:	e8 00 fc ff ff       	call   0x367
 767:	83 c4 08             	add    $0x8,%esp
 76a:	57                   	push   %edi
 76b:	56                   	push   %esi
 76c:	e8 80 ff ff ff       	call   0x6f1
 771:	83 c4 08             	add    $0x8,%esp
 774:	50                   	push   %eax
 775:	53                   	push   %ebx
 776:	e8 86 fb ff ff       	call   0x301
 77b:	89 c3                	mov    %eax,%ebx
 77d:	83 c4 10             	add    $0x10,%esp
 780:	eb d0                	jmp    0x752
 782:	55                   	push   %ebp
 783:	89 e5                	mov    %esp,%ebp
 785:	57                   	push   %edi
 786:	56                   	push   %esi
 787:	53                   	push   %ebx
 788:	83 ec 10             	sub    $0x10,%esp
 78b:	8b 5d 08             	mov    0x8(%ebp),%ebx
 78e:	8b 75 0c             	mov    0xc(%ebp),%esi
 791:	68 10 10 00 00       	push   $0x1010
 796:	56                   	push   %esi
 797:	53                   	push   %ebx
 798:	e8 d1 fc ff ff       	call   0x46e
 79d:	83 c4 10             	add    $0x10,%esp
 7a0:	85 c0                	test   %eax,%eax
 7a2:	74 4b                	je     0x7ef
 7a4:	6a 00                	push   $0x0
 7a6:	6a 00                	push   $0x0
 7a8:	56                   	push   %esi
 7a9:	53                   	push   %ebx
 7aa:	e8 b8 fb ff ff       	call   0x367
 7af:	83 c4 08             	add    $0x8,%esp
 7b2:	56                   	push   %esi
 7b3:	53                   	push   %ebx
 7b4:	e8 38 ff ff ff       	call   0x6f1
 7b9:	89 c7                	mov    %eax,%edi
 7bb:	83 c4 0c             	add    $0xc,%esp
 7be:	68 4c 10 00 00       	push   $0x104c
 7c3:	56                   	push   %esi
 7c4:	53                   	push   %ebx
 7c5:	e8 a4 fc ff ff       	call   0x46e
 7ca:	83 c4 10             	add    $0x10,%esp
 7cd:	85 c0                	test   %eax,%eax
 7cf:	74 2b                	je     0x7fc
 7d1:	6a 00                	push   $0x0
 7d3:	6a 00                	push   $0x0
 7d5:	56                   	push   %esi
 7d6:	53                   	push   %ebx
 7d7:	e8 8b fb ff ff       	call   0x367
 7dc:	83 c4 0c             	add    $0xc,%esp
 7df:	56                   	push   %esi
 7e0:	53                   	push   %ebx
 7e1:	57                   	push   %edi
 7e2:	e8 f3 fc ff ff       	call   0x4da
 7e7:	8d 65 f4             	lea    -0xc(%ebp),%esp
 7ea:	5b                   	pop    %ebx
 7eb:	5e                   	pop    %esi
 7ec:	5f                   	pop    %edi
 7ed:	5d                   	pop    %ebp
 7ee:	c3                   	ret    
 7ef:	83 ec 0c             	sub    $0xc,%esp
 7f2:	68 30 10 00 00       	push   $0x1030
 7f7:	e8 4f f8 ff ff       	call   0x4b
 7fc:	83 ec 0c             	sub    $0xc,%esp
 7ff:	68 3b 10 00 00       	push   $0x103b
 804:	e8 42 f8 ff ff       	call   0x4b
 809:	55                   	push   %ebp
 80a:	89 e5                	mov    %esp,%ebp
 80c:	53                   	push   %ebx
 80d:	83 ec 04             	sub    $0x4,%esp
 810:	8b 5d 08             	mov    0x8(%ebp),%ebx
 813:	85 db                	test   %ebx,%ebx
 815:	74 1f                	je     0x836
 817:	8b 03                	mov    (%ebx),%eax
 819:	83 f8 05             	cmp    $0x5,%eax
 81c:	77 18                	ja     0x836
 81e:	ff 24 85 8c 10 00 00 	jmp    *0x108c(,%eax,4)
 825:	8b 54 83 2c          	mov    0x2c(%ebx,%eax,4),%edx
 829:	c6 02 00             	movb   $0x0,(%edx)
 82c:	83 c0 01             	add    $0x1,%eax
 82f:	83 7c 83 04 00       	cmpl   $0x0,0x4(%ebx,%eax,4)
 834:	75 ef                	jne    0x825
 836:	89 d8                	mov    %ebx,%eax
 838:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 83b:	c9                   	leave  
 83c:	c3                   	ret    
 83d:	b8 00 00 00 00       	mov    $0x0,%eax
 842:	eb eb                	jmp    0x82f
 844:	83 ec 0c             	sub    $0xc,%esp
 847:	ff 73 04             	push   0x4(%ebx)
 84a:	e8 ba ff ff ff       	call   0x809
 84f:	8b 43 0c             	mov    0xc(%ebx),%eax
 852:	c6 00 00             	movb   $0x0,(%eax)
 855:	83 c4 10             	add    $0x10,%esp
 858:	eb dc                	jmp    0x836
 85a:	83 ec 0c             	sub    $0xc,%esp
 85d:	ff 73 04             	push   0x4(%ebx)
 860:	e8 a4 ff ff ff       	call   0x809
 865:	83 c4 04             	add    $0x4,%esp
 868:	ff 73 08             	push   0x8(%ebx)
 86b:	e8 99 ff ff ff       	call   0x809
 870:	83 c4 10             	add    $0x10,%esp
 873:	eb c1                	jmp    0x836
 875:	83 ec 0c             	sub    $0xc,%esp
 878:	ff 73 04             	push   0x4(%ebx)
 87b:	e8 89 ff ff ff       	call   0x809
 880:	83 c4 04             	add    $0x4,%esp
 883:	ff 73 08             	push   0x8(%ebx)
 886:	e8 7e ff ff ff       	call   0x809
 88b:	83 c4 10             	add    $0x10,%esp
 88e:	eb a6                	jmp    0x836
 890:	83 ec 0c             	sub    $0xc,%esp
 893:	ff 73 04             	push   0x4(%ebx)
 896:	e8 6e ff ff ff       	call   0x809
 89b:	83 c4 10             	add    $0x10,%esp
 89e:	eb 96                	jmp    0x836
 8a0:	55                   	push   %ebp
 8a1:	89 e5                	mov    %esp,%ebp
 8a3:	56                   	push   %esi
 8a4:	53                   	push   %ebx
 8a5:	8b 5d 08             	mov    0x8(%ebp),%ebx
 8a8:	83 ec 0c             	sub    $0xc,%esp
 8ab:	53                   	push   %ebx
 8ac:	e8 95 01 00 00       	call   0xa46
 8b1:	01 c3                	add    %eax,%ebx
 8b3:	83 c4 08             	add    $0x8,%esp
 8b6:	53                   	push   %ebx
 8b7:	8d 45 08             	lea    0x8(%ebp),%eax
 8ba:	50                   	push   %eax
 8bb:	e8 31 fe ff ff       	call   0x6f1
 8c0:	89 c6                	mov    %eax,%esi
 8c2:	83 c4 0c             	add    $0xc,%esp
 8c5:	68 da 0f 00 00       	push   $0xfda
 8ca:	53                   	push   %ebx
 8cb:	8d 45 08             	lea    0x8(%ebp),%eax
 8ce:	50                   	push   %eax
 8cf:	e8 9a fb ff ff       	call   0x46e
 8d4:	8b 45 08             	mov    0x8(%ebp),%eax
 8d7:	83 c4 10             	add    $0x10,%esp
 8da:	39 d8                	cmp    %ebx,%eax
 8dc:	75 12                	jne    0x8f0
 8de:	83 ec 0c             	sub    $0xc,%esp
 8e1:	56                   	push   %esi
 8e2:	e8 22 ff ff ff       	call   0x809
 8e7:	89 f0                	mov    %esi,%eax
 8e9:	8d 65 f8             	lea    -0x8(%ebp),%esp
 8ec:	5b                   	pop    %ebx
 8ed:	5e                   	pop    %esi
 8ee:	5d                   	pop    %ebp
 8ef:	c3                   	ret    
 8f0:	83 ec 04             	sub    $0x4,%esp
 8f3:	50                   	push   %eax
 8f4:	68 4e 10 00 00       	push   $0x104e
 8f9:	6a 02                	push   $0x2
 8fb:	e8 04 04 00 00       	call   0xd04
 900:	c7 04 24 12 10 00 00 	movl   $0x1012,(%esp)
 907:	e8 3f f7 ff ff       	call   0x4b
 90c:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 910:	83 e4 f0             	and    $0xfffffff0,%esp
 913:	ff 71 fc             	push   -0x4(%ecx)
 916:	55                   	push   %ebp
 917:	89 e5                	mov    %esp,%ebp
 919:	51                   	push   %ecx
 91a:	83 ec 14             	sub    $0x14,%esp
 91d:	83 ec 08             	sub    $0x8,%esp
 920:	6a 02                	push   $0x2
 922:	68 5d 10 00 00       	push   $0x105d
 927:	e8 c3 02 00 00       	call   0xbef
 92c:	83 c4 10             	add    $0x10,%esp
 92f:	85 c0                	test   %eax,%eax
 931:	78 2f                	js     0x962
 933:	83 f8 02             	cmp    $0x2,%eax
 936:	7e e5                	jle    0x91d
 938:	83 ec 0c             	sub    $0xc,%esp
 93b:	50                   	push   %eax
 93c:	e8 96 02 00 00       	call   0xbd7
 941:	83 c4 10             	add    $0x10,%esp
 944:	eb 1c                	jmp    0x962
 946:	e8 21 f7 ff ff       	call   0x6c
 94b:	85 c0                	test   %eax,%eax
 94d:	0f 84 80 00 00 00    	je     0x9d3
 953:	83 ec 0c             	sub    $0xc,%esp
 956:	8d 45 f4             	lea    -0xc(%ebp),%eax
 959:	50                   	push   %eax
 95a:	e8 58 02 00 00       	call   0xbb7
 95f:	83 c4 10             	add    $0x10,%esp
 962:	83 ec 08             	sub    $0x8,%esp
 965:	6a 64                	push   $0x64
 967:	68 a0 16 00 00       	push   $0x16a0
 96c:	e8 8f f6 ff ff       	call   0x0
 971:	83 c4 10             	add    $0x10,%esp
 974:	85 c0                	test   %eax,%eax
 976:	78 70                	js     0x9e8
 978:	80 3d a0 16 00 00 63 	cmpb   $0x63,0x16a0
 97f:	75 c5                	jne    0x946
 981:	80 3d a1 16 00 00 64 	cmpb   $0x64,0x16a1
 988:	75 bc                	jne    0x946
 98a:	80 3d a2 16 00 00 20 	cmpb   $0x20,0x16a2
 991:	75 b3                	jne    0x946
 993:	83 ec 0c             	sub    $0xc,%esp
 996:	68 a0 16 00 00       	push   $0x16a0
 99b:	e8 a6 00 00 00       	call   0xa46
 9a0:	c6 80 9f 16 00 00 00 	movb   $0x0,0x169f(%eax)
 9a7:	c7 04 24 a3 16 00 00 	movl   $0x16a3,(%esp)
 9ae:	e8 6c 02 00 00       	call   0xc1f
 9b3:	83 c4 10             	add    $0x10,%esp
 9b6:	85 c0                	test   %eax,%eax
 9b8:	79 a8                	jns    0x962
 9ba:	83 ec 04             	sub    $0x4,%esp
 9bd:	68 a3 16 00 00       	push   $0x16a3
 9c2:	68 65 10 00 00       	push   $0x1065
 9c7:	6a 02                	push   $0x2
 9c9:	e8 36 03 00 00       	call   0xd04
 9ce:	83 c4 10             	add    $0x10,%esp
 9d1:	eb 8f                	jmp    0x962
 9d3:	83 ec 0c             	sub    $0xc,%esp
 9d6:	68 a0 16 00 00       	push   $0x16a0
 9db:	e8 c0 fe ff ff       	call   0x8a0
 9e0:	89 04 24             	mov    %eax,(%esp)
 9e3:	e8 a3 f6 ff ff       	call   0x8b
 9e8:	83 ec 0c             	sub    $0xc,%esp
 9eb:	6a 00                	push   $0x0
 9ed:	e8 bd 01 00 00       	call   0xbaf
 9f2:	f3 0f 1e fb          	endbr32 
 9f6:	55                   	push   %ebp
 9f7:	89 e5                	mov    %esp,%ebp
 9f9:	56                   	push   %esi
 9fa:	53                   	push   %ebx
 9fb:	8b 75 08             	mov    0x8(%ebp),%esi
 9fe:	8b 55 0c             	mov    0xc(%ebp),%edx
 a01:	89 f0                	mov    %esi,%eax
 a03:	89 d1                	mov    %edx,%ecx
 a05:	83 c2 01             	add    $0x1,%edx
 a08:	89 c3                	mov    %eax,%ebx
 a0a:	83 c0 01             	add    $0x1,%eax
 a0d:	0f b6 09             	movzbl (%ecx),%ecx
 a10:	88 0b                	mov    %cl,(%ebx)
 a12:	84 c9                	test   %cl,%cl
 a14:	75 ed                	jne    0xa03
 a16:	89 f0                	mov    %esi,%eax
 a18:	5b                   	pop    %ebx
 a19:	5e                   	pop    %esi
 a1a:	5d                   	pop    %ebp
 a1b:	c3                   	ret    
 a1c:	f3 0f 1e fb          	endbr32 
 a20:	55                   	push   %ebp
 a21:	89 e5                	mov    %esp,%ebp
 a23:	8b 4d 08             	mov    0x8(%ebp),%ecx
 a26:	8b 55 0c             	mov    0xc(%ebp),%edx
 a29:	0f b6 01             	movzbl (%ecx),%eax
 a2c:	84 c0                	test   %al,%al
 a2e:	74 0c                	je     0xa3c
 a30:	3a 02                	cmp    (%edx),%al
 a32:	75 08                	jne    0xa3c
 a34:	83 c1 01             	add    $0x1,%ecx
 a37:	83 c2 01             	add    $0x1,%edx
 a3a:	eb ed                	jmp    0xa29
 a3c:	0f b6 c0             	movzbl %al,%eax
 a3f:	0f b6 12             	movzbl (%edx),%edx
 a42:	29 d0                	sub    %edx,%eax
 a44:	5d                   	pop    %ebp
 a45:	c3                   	ret    
 a46:	f3 0f 1e fb          	endbr32 
 a4a:	55                   	push   %ebp
 a4b:	89 e5                	mov    %esp,%ebp
 a4d:	8b 4d 08             	mov    0x8(%ebp),%ecx
 a50:	b8 00 00 00 00       	mov    $0x0,%eax
 a55:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
 a59:	74 05                	je     0xa60
 a5b:	83 c0 01             	add    $0x1,%eax
 a5e:	eb f5                	jmp    0xa55
 a60:	5d                   	pop    %ebp
 a61:	c3                   	ret    
 a62:	f3 0f 1e fb          	endbr32 
 a66:	55                   	push   %ebp
 a67:	89 e5                	mov    %esp,%ebp
 a69:	57                   	push   %edi
 a6a:	8b 55 08             	mov    0x8(%ebp),%edx
 a6d:	89 d7                	mov    %edx,%edi
 a6f:	8b 4d 10             	mov    0x10(%ebp),%ecx
 a72:	8b 45 0c             	mov    0xc(%ebp),%eax
 a75:	fc                   	cld    
 a76:	f3 aa                	rep stos %al,%es:(%edi)
 a78:	89 d0                	mov    %edx,%eax
 a7a:	5f                   	pop    %edi
 a7b:	5d                   	pop    %ebp
 a7c:	c3                   	ret    
 a7d:	f3 0f 1e fb          	endbr32 
 a81:	55                   	push   %ebp
 a82:	89 e5                	mov    %esp,%ebp
 a84:	8b 45 08             	mov    0x8(%ebp),%eax
 a87:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
 a8b:	0f b6 10             	movzbl (%eax),%edx
 a8e:	84 d2                	test   %dl,%dl
 a90:	74 09                	je     0xa9b
 a92:	38 ca                	cmp    %cl,%dl
 a94:	74 0a                	je     0xaa0
 a96:	83 c0 01             	add    $0x1,%eax
 a99:	eb f0                	jmp    0xa8b
 a9b:	b8 00 00 00 00       	mov    $0x0,%eax
 aa0:	5d                   	pop    %ebp
 aa1:	c3                   	ret    
 aa2:	f3 0f 1e fb          	endbr32 
 aa6:	55                   	push   %ebp
 aa7:	89 e5                	mov    %esp,%ebp
 aa9:	57                   	push   %edi
 aaa:	56                   	push   %esi
 aab:	53                   	push   %ebx
 aac:	83 ec 1c             	sub    $0x1c,%esp
 aaf:	8b 7d 08             	mov    0x8(%ebp),%edi
 ab2:	bb 00 00 00 00       	mov    $0x0,%ebx
 ab7:	89 de                	mov    %ebx,%esi
 ab9:	83 c3 01             	add    $0x1,%ebx
 abc:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 abf:	7d 2e                	jge    0xaef
 ac1:	83 ec 04             	sub    $0x4,%esp
 ac4:	6a 01                	push   $0x1
 ac6:	8d 45 e7             	lea    -0x19(%ebp),%eax
 ac9:	50                   	push   %eax
 aca:	6a 00                	push   $0x0
 acc:	e8 f6 00 00 00       	call   0xbc7
 ad1:	83 c4 10             	add    $0x10,%esp
 ad4:	85 c0                	test   %eax,%eax
 ad6:	7e 17                	jle    0xaef
 ad8:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 adc:	88 04 37             	mov    %al,(%edi,%esi,1)
 adf:	3c 0a                	cmp    $0xa,%al
 ae1:	0f 94 c2             	sete   %dl
 ae4:	3c 0d                	cmp    $0xd,%al
 ae6:	0f 94 c0             	sete   %al
 ae9:	08 c2                	or     %al,%dl
 aeb:	74 ca                	je     0xab7
 aed:	89 de                	mov    %ebx,%esi
 aef:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 af3:	89 f8                	mov    %edi,%eax
 af5:	8d 65 f4             	lea    -0xc(%ebp),%esp
 af8:	5b                   	pop    %ebx
 af9:	5e                   	pop    %esi
 afa:	5f                   	pop    %edi
 afb:	5d                   	pop    %ebp
 afc:	c3                   	ret    
 afd:	f3 0f 1e fb          	endbr32 
 b01:	55                   	push   %ebp
 b02:	89 e5                	mov    %esp,%ebp
 b04:	56                   	push   %esi
 b05:	53                   	push   %ebx
 b06:	83 ec 08             	sub    $0x8,%esp
 b09:	6a 00                	push   $0x0
 b0b:	ff 75 08             	push   0x8(%ebp)
 b0e:	e8 dc 00 00 00       	call   0xbef
 b13:	83 c4 10             	add    $0x10,%esp
 b16:	85 c0                	test   %eax,%eax
 b18:	78 24                	js     0xb3e
 b1a:	89 c3                	mov    %eax,%ebx
 b1c:	83 ec 08             	sub    $0x8,%esp
 b1f:	ff 75 0c             	push   0xc(%ebp)
 b22:	50                   	push   %eax
 b23:	e8 df 00 00 00       	call   0xc07
 b28:	89 c6                	mov    %eax,%esi
 b2a:	89 1c 24             	mov    %ebx,(%esp)
 b2d:	e8 a5 00 00 00       	call   0xbd7
 b32:	83 c4 10             	add    $0x10,%esp
 b35:	89 f0                	mov    %esi,%eax
 b37:	8d 65 f8             	lea    -0x8(%ebp),%esp
 b3a:	5b                   	pop    %ebx
 b3b:	5e                   	pop    %esi
 b3c:	5d                   	pop    %ebp
 b3d:	c3                   	ret    
 b3e:	be ff ff ff ff       	mov    $0xffffffff,%esi
 b43:	eb f0                	jmp    0xb35
 b45:	f3 0f 1e fb          	endbr32 
 b49:	55                   	push   %ebp
 b4a:	89 e5                	mov    %esp,%ebp
 b4c:	53                   	push   %ebx
 b4d:	8b 4d 08             	mov    0x8(%ebp),%ecx
 b50:	ba 00 00 00 00       	mov    $0x0,%edx
 b55:	0f b6 01             	movzbl (%ecx),%eax
 b58:	8d 58 d0             	lea    -0x30(%eax),%ebx
 b5b:	80 fb 09             	cmp    $0x9,%bl
 b5e:	77 12                	ja     0xb72
 b60:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 b63:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 b66:	83 c1 01             	add    $0x1,%ecx
 b69:	0f be c0             	movsbl %al,%eax
 b6c:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 b70:	eb e3                	jmp    0xb55
 b72:	89 d0                	mov    %edx,%eax
 b74:	5b                   	pop    %ebx
 b75:	5d                   	pop    %ebp
 b76:	c3                   	ret    
 b77:	f3 0f 1e fb          	endbr32 
 b7b:	55                   	push   %ebp
 b7c:	89 e5                	mov    %esp,%ebp
 b7e:	56                   	push   %esi
 b7f:	53                   	push   %ebx
 b80:	8b 75 08             	mov    0x8(%ebp),%esi
 b83:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 b86:	8b 45 10             	mov    0x10(%ebp),%eax
 b89:	89 f2                	mov    %esi,%edx
 b8b:	8d 58 ff             	lea    -0x1(%eax),%ebx
 b8e:	85 c0                	test   %eax,%eax
 b90:	7e 0f                	jle    0xba1
 b92:	0f b6 01             	movzbl (%ecx),%eax
 b95:	88 02                	mov    %al,(%edx)
 b97:	8d 49 01             	lea    0x1(%ecx),%ecx
 b9a:	8d 52 01             	lea    0x1(%edx),%edx
 b9d:	89 d8                	mov    %ebx,%eax
 b9f:	eb ea                	jmp    0xb8b
 ba1:	89 f0                	mov    %esi,%eax
 ba3:	5b                   	pop    %ebx
 ba4:	5e                   	pop    %esi
 ba5:	5d                   	pop    %ebp
 ba6:	c3                   	ret    
 ba7:	b8 01 00 00 00       	mov    $0x1,%eax
 bac:	cd 40                	int    $0x40
 bae:	c3                   	ret    
 baf:	b8 02 00 00 00       	mov    $0x2,%eax
 bb4:	cd 40                	int    $0x40
 bb6:	c3                   	ret    
 bb7:	b8 03 00 00 00       	mov    $0x3,%eax
 bbc:	cd 40                	int    $0x40
 bbe:	c3                   	ret    
 bbf:	b8 04 00 00 00       	mov    $0x4,%eax
 bc4:	cd 40                	int    $0x40
 bc6:	c3                   	ret    
 bc7:	b8 05 00 00 00       	mov    $0x5,%eax
 bcc:	cd 40                	int    $0x40
 bce:	c3                   	ret    
 bcf:	b8 10 00 00 00       	mov    $0x10,%eax
 bd4:	cd 40                	int    $0x40
 bd6:	c3                   	ret    
 bd7:	b8 15 00 00 00       	mov    $0x15,%eax
 bdc:	cd 40                	int    $0x40
 bde:	c3                   	ret    
 bdf:	b8 06 00 00 00       	mov    $0x6,%eax
 be4:	cd 40                	int    $0x40
 be6:	c3                   	ret    
 be7:	b8 07 00 00 00       	mov    $0x7,%eax
 bec:	cd 40                	int    $0x40
 bee:	c3                   	ret    
 bef:	b8 0f 00 00 00       	mov    $0xf,%eax
 bf4:	cd 40                	int    $0x40
 bf6:	c3                   	ret    
 bf7:	b8 11 00 00 00       	mov    $0x11,%eax
 bfc:	cd 40                	int    $0x40
 bfe:	c3                   	ret    
 bff:	b8 12 00 00 00       	mov    $0x12,%eax
 c04:	cd 40                	int    $0x40
 c06:	c3                   	ret    
 c07:	b8 08 00 00 00       	mov    $0x8,%eax
 c0c:	cd 40                	int    $0x40
 c0e:	c3                   	ret    
 c0f:	b8 13 00 00 00       	mov    $0x13,%eax
 c14:	cd 40                	int    $0x40
 c16:	c3                   	ret    
 c17:	b8 14 00 00 00       	mov    $0x14,%eax
 c1c:	cd 40                	int    $0x40
 c1e:	c3                   	ret    
 c1f:	b8 09 00 00 00       	mov    $0x9,%eax
 c24:	cd 40                	int    $0x40
 c26:	c3                   	ret    
 c27:	b8 0a 00 00 00       	mov    $0xa,%eax
 c2c:	cd 40                	int    $0x40
 c2e:	c3                   	ret    
 c2f:	b8 0b 00 00 00       	mov    $0xb,%eax
 c34:	cd 40                	int    $0x40
 c36:	c3                   	ret    
 c37:	b8 0c 00 00 00       	mov    $0xc,%eax
 c3c:	cd 40                	int    $0x40
 c3e:	c3                   	ret    
 c3f:	b8 0d 00 00 00       	mov    $0xd,%eax
 c44:	cd 40                	int    $0x40
 c46:	c3                   	ret    
 c47:	b8 0e 00 00 00       	mov    $0xe,%eax
 c4c:	cd 40                	int    $0x40
 c4e:	c3                   	ret    
 c4f:	b8 16 00 00 00       	mov    $0x16,%eax
 c54:	cd 40                	int    $0x40
 c56:	c3                   	ret    
 c57:	b8 17 00 00 00       	mov    $0x17,%eax
 c5c:	cd 40                	int    $0x40
 c5e:	c3                   	ret    
 c5f:	55                   	push   %ebp
 c60:	89 e5                	mov    %esp,%ebp
 c62:	83 ec 1c             	sub    $0x1c,%esp
 c65:	88 55 f4             	mov    %dl,-0xc(%ebp)
 c68:	6a 01                	push   $0x1
 c6a:	8d 55 f4             	lea    -0xc(%ebp),%edx
 c6d:	52                   	push   %edx
 c6e:	50                   	push   %eax
 c6f:	e8 5b ff ff ff       	call   0xbcf
 c74:	83 c4 10             	add    $0x10,%esp
 c77:	c9                   	leave  
 c78:	c3                   	ret    
 c79:	55                   	push   %ebp
 c7a:	89 e5                	mov    %esp,%ebp
 c7c:	57                   	push   %edi
 c7d:	56                   	push   %esi
 c7e:	53                   	push   %ebx
 c7f:	83 ec 2c             	sub    $0x2c,%esp
 c82:	89 45 d0             	mov    %eax,-0x30(%ebp)
 c85:	89 d0                	mov    %edx,%eax
 c87:	89 ce                	mov    %ecx,%esi
 c89:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 c8d:	0f 95 c1             	setne  %cl
 c90:	c1 ea 1f             	shr    $0x1f,%edx
 c93:	84 d1                	test   %dl,%cl
 c95:	74 44                	je     0xcdb
 c97:	f7 d8                	neg    %eax
 c99:	89 c1                	mov    %eax,%ecx
 c9b:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 ca2:	bb 00 00 00 00       	mov    $0x0,%ebx
 ca7:	89 c8                	mov    %ecx,%eax
 ca9:	ba 00 00 00 00       	mov    $0x0,%edx
 cae:	f7 f6                	div    %esi
 cb0:	89 df                	mov    %ebx,%edi
 cb2:	83 c3 01             	add    $0x1,%ebx
 cb5:	0f b6 92 04 11 00 00 	movzbl 0x1104(%edx),%edx
 cbc:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 cc0:	89 ca                	mov    %ecx,%edx
 cc2:	89 c1                	mov    %eax,%ecx
 cc4:	39 d6                	cmp    %edx,%esi
 cc6:	76 df                	jbe    0xca7
 cc8:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 ccc:	74 31                	je     0xcff
 cce:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 cd3:	8d 5f 02             	lea    0x2(%edi),%ebx
 cd6:	8b 75 d0             	mov    -0x30(%ebp),%esi
 cd9:	eb 17                	jmp    0xcf2
 cdb:	89 c1                	mov    %eax,%ecx
 cdd:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 ce4:	eb bc                	jmp    0xca2
 ce6:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 ceb:	89 f0                	mov    %esi,%eax
 ced:	e8 6d ff ff ff       	call   0xc5f
 cf2:	83 eb 01             	sub    $0x1,%ebx
 cf5:	79 ef                	jns    0xce6
 cf7:	83 c4 2c             	add    $0x2c,%esp
 cfa:	5b                   	pop    %ebx
 cfb:	5e                   	pop    %esi
 cfc:	5f                   	pop    %edi
 cfd:	5d                   	pop    %ebp
 cfe:	c3                   	ret    
 cff:	8b 75 d0             	mov    -0x30(%ebp),%esi
 d02:	eb ee                	jmp    0xcf2
 d04:	55                   	push   %ebp
 d05:	89 e5                	mov    %esp,%ebp
 d07:	57                   	push   %edi
 d08:	56                   	push   %esi
 d09:	53                   	push   %ebx
 d0a:	83 ec 1c             	sub    $0x1c,%esp
 d0d:	8d 45 10             	lea    0x10(%ebp),%eax
 d10:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 d13:	be 00 00 00 00       	mov    $0x0,%esi
 d18:	bb 00 00 00 00       	mov    $0x0,%ebx
 d1d:	eb 14                	jmp    0xd33
 d1f:	89 fa                	mov    %edi,%edx
 d21:	8b 45 08             	mov    0x8(%ebp),%eax
 d24:	e8 36 ff ff ff       	call   0xc5f
 d29:	eb 05                	jmp    0xd30
 d2b:	83 fe 25             	cmp    $0x25,%esi
 d2e:	74 25                	je     0xd55
 d30:	83 c3 01             	add    $0x1,%ebx
 d33:	8b 45 0c             	mov    0xc(%ebp),%eax
 d36:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 d3a:	84 c0                	test   %al,%al
 d3c:	0f 84 20 01 00 00    	je     0xe62
 d42:	0f be f8             	movsbl %al,%edi
 d45:	0f b6 c0             	movzbl %al,%eax
 d48:	85 f6                	test   %esi,%esi
 d4a:	75 df                	jne    0xd2b
 d4c:	83 f8 25             	cmp    $0x25,%eax
 d4f:	75 ce                	jne    0xd1f
 d51:	89 c6                	mov    %eax,%esi
 d53:	eb db                	jmp    0xd30
 d55:	83 f8 25             	cmp    $0x25,%eax
 d58:	0f 84 cf 00 00 00    	je     0xe2d
 d5e:	0f 8c dd 00 00 00    	jl     0xe41
 d64:	83 f8 78             	cmp    $0x78,%eax
 d67:	0f 8f d4 00 00 00    	jg     0xe41
 d6d:	83 f8 63             	cmp    $0x63,%eax
 d70:	0f 8c cb 00 00 00    	jl     0xe41
 d76:	83 e8 63             	sub    $0x63,%eax
 d79:	83 f8 15             	cmp    $0x15,%eax
 d7c:	0f 87 bf 00 00 00    	ja     0xe41
 d82:	ff 24 85 ac 10 00 00 	jmp    *0x10ac(,%eax,4)
 d89:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 d8c:	8b 17                	mov    (%edi),%edx
 d8e:	83 ec 0c             	sub    $0xc,%esp
 d91:	6a 01                	push   $0x1
 d93:	b9 0a 00 00 00       	mov    $0xa,%ecx
 d98:	8b 45 08             	mov    0x8(%ebp),%eax
 d9b:	e8 d9 fe ff ff       	call   0xc79
 da0:	83 c7 04             	add    $0x4,%edi
 da3:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 da6:	83 c4 10             	add    $0x10,%esp
 da9:	be 00 00 00 00       	mov    $0x0,%esi
 dae:	eb 80                	jmp    0xd30
 db0:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 db3:	8b 17                	mov    (%edi),%edx
 db5:	83 ec 0c             	sub    $0xc,%esp
 db8:	6a 00                	push   $0x0
 dba:	b9 10 00 00 00       	mov    $0x10,%ecx
 dbf:	8b 45 08             	mov    0x8(%ebp),%eax
 dc2:	e8 b2 fe ff ff       	call   0xc79
 dc7:	83 c7 04             	add    $0x4,%edi
 dca:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 dcd:	83 c4 10             	add    $0x10,%esp
 dd0:	be 00 00 00 00       	mov    $0x0,%esi
 dd5:	e9 56 ff ff ff       	jmp    0xd30
 dda:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 ddd:	8b 30                	mov    (%eax),%esi
 ddf:	83 c0 04             	add    $0x4,%eax
 de2:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 de5:	85 f6                	test   %esi,%esi
 de7:	75 15                	jne    0xdfe
 de9:	be a4 10 00 00       	mov    $0x10a4,%esi
 dee:	eb 0e                	jmp    0xdfe
 df0:	0f be d2             	movsbl %dl,%edx
 df3:	8b 45 08             	mov    0x8(%ebp),%eax
 df6:	e8 64 fe ff ff       	call   0xc5f
 dfb:	83 c6 01             	add    $0x1,%esi
 dfe:	0f b6 16             	movzbl (%esi),%edx
 e01:	84 d2                	test   %dl,%dl
 e03:	75 eb                	jne    0xdf0
 e05:	be 00 00 00 00       	mov    $0x0,%esi
 e0a:	e9 21 ff ff ff       	jmp    0xd30
 e0f:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 e12:	0f be 17             	movsbl (%edi),%edx
 e15:	8b 45 08             	mov    0x8(%ebp),%eax
 e18:	e8 42 fe ff ff       	call   0xc5f
 e1d:	83 c7 04             	add    $0x4,%edi
 e20:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 e23:	be 00 00 00 00       	mov    $0x0,%esi
 e28:	e9 03 ff ff ff       	jmp    0xd30
 e2d:	89 fa                	mov    %edi,%edx
 e2f:	8b 45 08             	mov    0x8(%ebp),%eax
 e32:	e8 28 fe ff ff       	call   0xc5f
 e37:	be 00 00 00 00       	mov    $0x0,%esi
 e3c:	e9 ef fe ff ff       	jmp    0xd30
 e41:	ba 25 00 00 00       	mov    $0x25,%edx
 e46:	8b 45 08             	mov    0x8(%ebp),%eax
 e49:	e8 11 fe ff ff       	call   0xc5f
 e4e:	89 fa                	mov    %edi,%edx
 e50:	8b 45 08             	mov    0x8(%ebp),%eax
 e53:	e8 07 fe ff ff       	call   0xc5f
 e58:	be 00 00 00 00       	mov    $0x0,%esi
 e5d:	e9 ce fe ff ff       	jmp    0xd30
 e62:	8d 65 f4             	lea    -0xc(%ebp),%esp
 e65:	5b                   	pop    %ebx
 e66:	5e                   	pop    %esi
 e67:	5f                   	pop    %edi
 e68:	5d                   	pop    %ebp
 e69:	c3                   	ret    
 e6a:	f3 0f 1e fb          	endbr32 
 e6e:	55                   	push   %ebp
 e6f:	89 e5                	mov    %esp,%ebp
 e71:	57                   	push   %edi
 e72:	56                   	push   %esi
 e73:	53                   	push   %ebx
 e74:	8b 5d 08             	mov    0x8(%ebp),%ebx
 e77:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 e7a:	a1 04 17 00 00       	mov    0x1704,%eax
 e7f:	eb 02                	jmp    0xe83
 e81:	89 d0                	mov    %edx,%eax
 e83:	39 c8                	cmp    %ecx,%eax
 e85:	73 04                	jae    0xe8b
 e87:	39 08                	cmp    %ecx,(%eax)
 e89:	77 12                	ja     0xe9d
 e8b:	8b 10                	mov    (%eax),%edx
 e8d:	39 c2                	cmp    %eax,%edx
 e8f:	77 f0                	ja     0xe81
 e91:	39 c8                	cmp    %ecx,%eax
 e93:	72 08                	jb     0xe9d
 e95:	39 ca                	cmp    %ecx,%edx
 e97:	77 04                	ja     0xe9d
 e99:	89 d0                	mov    %edx,%eax
 e9b:	eb e6                	jmp    0xe83
 e9d:	8b 73 fc             	mov    -0x4(%ebx),%esi
 ea0:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 ea3:	8b 10                	mov    (%eax),%edx
 ea5:	39 d7                	cmp    %edx,%edi
 ea7:	74 19                	je     0xec2
 ea9:	89 53 f8             	mov    %edx,-0x8(%ebx)
 eac:	8b 50 04             	mov    0x4(%eax),%edx
 eaf:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 eb2:	39 ce                	cmp    %ecx,%esi
 eb4:	74 1b                	je     0xed1
 eb6:	89 08                	mov    %ecx,(%eax)
 eb8:	a3 04 17 00 00       	mov    %eax,0x1704
 ebd:	5b                   	pop    %ebx
 ebe:	5e                   	pop    %esi
 ebf:	5f                   	pop    %edi
 ec0:	5d                   	pop    %ebp
 ec1:	c3                   	ret    
 ec2:	03 72 04             	add    0x4(%edx),%esi
 ec5:	89 73 fc             	mov    %esi,-0x4(%ebx)
 ec8:	8b 10                	mov    (%eax),%edx
 eca:	8b 12                	mov    (%edx),%edx
 ecc:	89 53 f8             	mov    %edx,-0x8(%ebx)
 ecf:	eb db                	jmp    0xeac
 ed1:	03 53 fc             	add    -0x4(%ebx),%edx
 ed4:	89 50 04             	mov    %edx,0x4(%eax)
 ed7:	8b 53 f8             	mov    -0x8(%ebx),%edx
 eda:	89 10                	mov    %edx,(%eax)
 edc:	eb da                	jmp    0xeb8
 ede:	55                   	push   %ebp
 edf:	89 e5                	mov    %esp,%ebp
 ee1:	53                   	push   %ebx
 ee2:	83 ec 04             	sub    $0x4,%esp
 ee5:	89 c3                	mov    %eax,%ebx
 ee7:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 eec:	77 05                	ja     0xef3
 eee:	bb 00 10 00 00       	mov    $0x1000,%ebx
 ef3:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 efa:	83 ec 0c             	sub    $0xc,%esp
 efd:	50                   	push   %eax
 efe:	e8 34 fd ff ff       	call   0xc37
 f03:	83 c4 10             	add    $0x10,%esp
 f06:	83 f8 ff             	cmp    $0xffffffff,%eax
 f09:	74 1c                	je     0xf27
 f0b:	89 58 04             	mov    %ebx,0x4(%eax)
 f0e:	83 c0 08             	add    $0x8,%eax
 f11:	83 ec 0c             	sub    $0xc,%esp
 f14:	50                   	push   %eax
 f15:	e8 50 ff ff ff       	call   0xe6a
 f1a:	a1 04 17 00 00       	mov    0x1704,%eax
 f1f:	83 c4 10             	add    $0x10,%esp
 f22:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 f25:	c9                   	leave  
 f26:	c3                   	ret    
 f27:	b8 00 00 00 00       	mov    $0x0,%eax
 f2c:	eb f4                	jmp    0xf22
 f2e:	f3 0f 1e fb          	endbr32 
 f32:	55                   	push   %ebp
 f33:	89 e5                	mov    %esp,%ebp
 f35:	53                   	push   %ebx
 f36:	83 ec 04             	sub    $0x4,%esp
 f39:	8b 45 08             	mov    0x8(%ebp),%eax
 f3c:	8d 58 07             	lea    0x7(%eax),%ebx
 f3f:	c1 eb 03             	shr    $0x3,%ebx
 f42:	83 c3 01             	add    $0x1,%ebx
 f45:	8b 0d 04 17 00 00    	mov    0x1704,%ecx
 f4b:	85 c9                	test   %ecx,%ecx
 f4d:	74 04                	je     0xf53
 f4f:	8b 01                	mov    (%ecx),%eax
 f51:	eb 4b                	jmp    0xf9e
 f53:	c7 05 04 17 00 00 08 	movl   $0x1708,0x1704
 f5a:	17 00 00 
 f5d:	c7 05 08 17 00 00 08 	movl   $0x1708,0x1708
 f64:	17 00 00 
 f67:	c7 05 0c 17 00 00 00 	movl   $0x0,0x170c
 f6e:	00 00 00 
 f71:	b9 08 17 00 00       	mov    $0x1708,%ecx
 f76:	eb d7                	jmp    0xf4f
 f78:	74 1a                	je     0xf94
 f7a:	29 da                	sub    %ebx,%edx
 f7c:	89 50 04             	mov    %edx,0x4(%eax)
 f7f:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 f82:	89 58 04             	mov    %ebx,0x4(%eax)
 f85:	89 0d 04 17 00 00    	mov    %ecx,0x1704
 f8b:	83 c0 08             	add    $0x8,%eax
 f8e:	83 c4 04             	add    $0x4,%esp
 f91:	5b                   	pop    %ebx
 f92:	5d                   	pop    %ebp
 f93:	c3                   	ret    
 f94:	8b 10                	mov    (%eax),%edx
 f96:	89 11                	mov    %edx,(%ecx)
 f98:	eb eb                	jmp    0xf85
 f9a:	89 c1                	mov    %eax,%ecx
 f9c:	8b 00                	mov    (%eax),%eax
 f9e:	8b 50 04             	mov    0x4(%eax),%edx
 fa1:	39 da                	cmp    %ebx,%edx
 fa3:	73 d3                	jae    0xf78
 fa5:	39 05 04 17 00 00    	cmp    %eax,0x1704
 fab:	75 ed                	jne    0xf9a
 fad:	89 d8                	mov    %ebx,%eax
 faf:	e8 2a ff ff ff       	call   0xede
 fb4:	85 c0                	test   %eax,%eax
 fb6:	75 e2                	jne    0xf9a
 fb8:	eb d4                	jmp    0xf8e
