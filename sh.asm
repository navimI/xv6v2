
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
   e:	68 48 0f 00 00       	push   $0xf48
  13:	6a 02                	push   $0x2
  15:	e8 81 0c 00 00       	call   0xc9b
  1a:	83 c4 0c             	add    $0xc,%esp
  1d:	56                   	push   %esi
  1e:	6a 00                	push   $0x0
  20:	53                   	push   %ebx
  21:	e8 ed 09 00 00       	call   0xa13
  26:	83 c4 08             	add    $0x8,%esp
  29:	56                   	push   %esi
  2a:	53                   	push   %ebx
  2b:	e8 1f 0a 00 00       	call   0xa4f
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
  54:	68 e5 0f 00 00       	push   $0xfe5
  59:	6a 02                	push   $0x2
  5b:	e8 3b 0c 00 00       	call   0xc9b
  60:	e8 e9 0a 00 00       	call   0xb4e
  65:	55                   	push   %ebp
  66:	89 e5                	mov    %esp,%ebp
  68:	83 ec 08             	sub    $0x8,%esp
  6b:	e8 d6 0a 00 00       	call   0xb46
  70:	83 f8 ff             	cmp    $0xffffffff,%eax
  73:	74 02                	je     0x77
  75:	c9                   	leave  
  76:	c3                   	ret    
  77:	83 ec 0c             	sub    $0xc,%esp
  7a:	68 4b 0f 00 00       	push   $0xf4b
  7f:	e8 c7 ff ff ff       	call   0x4b
  84:	55                   	push   %ebp
  85:	89 e5                	mov    %esp,%ebp
  87:	53                   	push   %ebx
  88:	83 ec 14             	sub    $0x14,%esp
  8b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  8e:	85 db                	test   %ebx,%ebx
  90:	74 0e                	je     0xa0
  92:	8b 03                	mov    (%ebx),%eax
  94:	83 f8 05             	cmp    $0x5,%eax
  97:	77 0c                	ja     0xa5
  99:	ff 24 85 00 10 00 00 	jmp    *0x1000(,%eax,4)
  a0:	e8 a9 0a 00 00       	call   0xb4e
  a5:	83 ec 0c             	sub    $0xc,%esp
  a8:	68 50 0f 00 00       	push   $0xf50
  ad:	e8 99 ff ff ff       	call   0x4b
  b2:	8b 43 04             	mov    0x4(%ebx),%eax
  b5:	85 c0                	test   %eax,%eax
  b7:	74 27                	je     0xe0
  b9:	8d 53 04             	lea    0x4(%ebx),%edx
  bc:	83 ec 08             	sub    $0x8,%esp
  bf:	52                   	push   %edx
  c0:	50                   	push   %eax
  c1:	e8 c0 0a 00 00       	call   0xb86
  c6:	83 c4 0c             	add    $0xc,%esp
  c9:	ff 73 04             	push   0x4(%ebx)
  cc:	68 57 0f 00 00       	push   $0xf57
  d1:	6a 02                	push   $0x2
  d3:	e8 c3 0b 00 00       	call   0xc9b
  d8:	83 c4 10             	add    $0x10,%esp
  db:	e8 6e 0a 00 00       	call   0xb4e
  e0:	e8 69 0a 00 00       	call   0xb4e
  e5:	83 ec 0c             	sub    $0xc,%esp
  e8:	ff 73 14             	push   0x14(%ebx)
  eb:	e8 86 0a 00 00       	call   0xb76
  f0:	83 c4 08             	add    $0x8,%esp
  f3:	ff 73 10             	push   0x10(%ebx)
  f6:	ff 73 08             	push   0x8(%ebx)
  f9:	e8 90 0a 00 00       	call   0xb8e
  fe:	83 c4 10             	add    $0x10,%esp
 101:	85 c0                	test   %eax,%eax
 103:	78 0b                	js     0x110
 105:	83 ec 0c             	sub    $0xc,%esp
 108:	ff 73 04             	push   0x4(%ebx)
 10b:	e8 74 ff ff ff       	call   0x84
 110:	83 ec 04             	sub    $0x4,%esp
 113:	ff 73 08             	push   0x8(%ebx)
 116:	68 67 0f 00 00       	push   $0xf67
 11b:	6a 02                	push   $0x2
 11d:	e8 79 0b 00 00       	call   0xc9b
 122:	e8 27 0a 00 00       	call   0xb4e
 127:	e8 39 ff ff ff       	call   0x65
 12c:	85 c0                	test   %eax,%eax
 12e:	74 10                	je     0x140
 130:	e8 21 0a 00 00       	call   0xb56
 135:	83 ec 0c             	sub    $0xc,%esp
 138:	ff 73 08             	push   0x8(%ebx)
 13b:	e8 44 ff ff ff       	call   0x84
 140:	83 ec 0c             	sub    $0xc,%esp
 143:	ff 73 04             	push   0x4(%ebx)
 146:	e8 39 ff ff ff       	call   0x84
 14b:	83 ec 0c             	sub    $0xc,%esp
 14e:	8d 45 f0             	lea    -0x10(%ebp),%eax
 151:	50                   	push   %eax
 152:	e8 07 0a 00 00       	call   0xb5e
 157:	83 c4 10             	add    $0x10,%esp
 15a:	85 c0                	test   %eax,%eax
 15c:	78 3a                	js     0x198
 15e:	e8 02 ff ff ff       	call   0x65
 163:	85 c0                	test   %eax,%eax
 165:	74 3e                	je     0x1a5
 167:	e8 f9 fe ff ff       	call   0x65
 16c:	85 c0                	test   %eax,%eax
 16e:	74 6b                	je     0x1db
 170:	83 ec 0c             	sub    $0xc,%esp
 173:	ff 75 f0             	push   -0x10(%ebp)
 176:	e8 fb 09 00 00       	call   0xb76
 17b:	83 c4 04             	add    $0x4,%esp
 17e:	ff 75 f4             	push   -0xc(%ebp)
 181:	e8 f0 09 00 00       	call   0xb76
 186:	e8 cb 09 00 00       	call   0xb56
 18b:	e8 c6 09 00 00       	call   0xb56
 190:	83 c4 10             	add    $0x10,%esp
 193:	e9 43 ff ff ff       	jmp    0xdb
 198:	83 ec 0c             	sub    $0xc,%esp
 19b:	68 77 0f 00 00       	push   $0xf77
 1a0:	e8 a6 fe ff ff       	call   0x4b
 1a5:	83 ec 0c             	sub    $0xc,%esp
 1a8:	6a 01                	push   $0x1
 1aa:	e8 c7 09 00 00       	call   0xb76
 1af:	83 c4 04             	add    $0x4,%esp
 1b2:	ff 75 f4             	push   -0xc(%ebp)
 1b5:	e8 0c 0a 00 00       	call   0xbc6
 1ba:	83 c4 04             	add    $0x4,%esp
 1bd:	ff 75 f0             	push   -0x10(%ebp)
 1c0:	e8 b1 09 00 00       	call   0xb76
 1c5:	83 c4 04             	add    $0x4,%esp
 1c8:	ff 75 f4             	push   -0xc(%ebp)
 1cb:	e8 a6 09 00 00       	call   0xb76
 1d0:	83 c4 04             	add    $0x4,%esp
 1d3:	ff 73 04             	push   0x4(%ebx)
 1d6:	e8 a9 fe ff ff       	call   0x84
 1db:	83 ec 0c             	sub    $0xc,%esp
 1de:	6a 00                	push   $0x0
 1e0:	e8 91 09 00 00       	call   0xb76
 1e5:	83 c4 04             	add    $0x4,%esp
 1e8:	ff 75 f0             	push   -0x10(%ebp)
 1eb:	e8 d6 09 00 00       	call   0xbc6
 1f0:	83 c4 04             	add    $0x4,%esp
 1f3:	ff 75 f0             	push   -0x10(%ebp)
 1f6:	e8 7b 09 00 00       	call   0xb76
 1fb:	83 c4 04             	add    $0x4,%esp
 1fe:	ff 75 f4             	push   -0xc(%ebp)
 201:	e8 70 09 00 00       	call   0xb76
 206:	83 c4 04             	add    $0x4,%esp
 209:	ff 73 08             	push   0x8(%ebx)
 20c:	e8 73 fe ff ff       	call   0x84
 211:	e8 4f fe ff ff       	call   0x65
 216:	85 c0                	test   %eax,%eax
 218:	0f 85 bd fe ff ff    	jne    0xdb
 21e:	83 ec 0c             	sub    $0xc,%esp
 221:	ff 73 04             	push   0x4(%ebx)
 224:	e8 5b fe ff ff       	call   0x84
 229:	55                   	push   %ebp
 22a:	89 e5                	mov    %esp,%ebp
 22c:	53                   	push   %ebx
 22d:	83 ec 10             	sub    $0x10,%esp
 230:	6a 54                	push   $0x54
 232:	e8 8a 0c 00 00       	call   0xec1
 237:	89 c3                	mov    %eax,%ebx
 239:	83 c4 0c             	add    $0xc,%esp
 23c:	6a 54                	push   $0x54
 23e:	6a 00                	push   $0x0
 240:	50                   	push   %eax
 241:	e8 cd 07 00 00       	call   0xa13
 246:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
 24c:	89 d8                	mov    %ebx,%eax
 24e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 251:	c9                   	leave  
 252:	c3                   	ret    
 253:	55                   	push   %ebp
 254:	89 e5                	mov    %esp,%ebp
 256:	53                   	push   %ebx
 257:	83 ec 10             	sub    $0x10,%esp
 25a:	6a 18                	push   $0x18
 25c:	e8 60 0c 00 00       	call   0xec1
 261:	89 c3                	mov    %eax,%ebx
 263:	83 c4 0c             	add    $0xc,%esp
 266:	6a 18                	push   $0x18
 268:	6a 00                	push   $0x0
 26a:	50                   	push   %eax
 26b:	e8 a3 07 00 00       	call   0xa13
 270:	c7 03 02 00 00 00    	movl   $0x2,(%ebx)
 276:	8b 45 08             	mov    0x8(%ebp),%eax
 279:	89 43 04             	mov    %eax,0x4(%ebx)
 27c:	8b 45 0c             	mov    0xc(%ebp),%eax
 27f:	89 43 08             	mov    %eax,0x8(%ebx)
 282:	8b 45 10             	mov    0x10(%ebp),%eax
 285:	89 43 0c             	mov    %eax,0xc(%ebx)
 288:	8b 45 14             	mov    0x14(%ebp),%eax
 28b:	89 43 10             	mov    %eax,0x10(%ebx)
 28e:	8b 45 18             	mov    0x18(%ebp),%eax
 291:	89 43 14             	mov    %eax,0x14(%ebx)
 294:	89 d8                	mov    %ebx,%eax
 296:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 299:	c9                   	leave  
 29a:	c3                   	ret    
 29b:	55                   	push   %ebp
 29c:	89 e5                	mov    %esp,%ebp
 29e:	53                   	push   %ebx
 29f:	83 ec 10             	sub    $0x10,%esp
 2a2:	6a 0c                	push   $0xc
 2a4:	e8 18 0c 00 00       	call   0xec1
 2a9:	89 c3                	mov    %eax,%ebx
 2ab:	83 c4 0c             	add    $0xc,%esp
 2ae:	6a 0c                	push   $0xc
 2b0:	6a 00                	push   $0x0
 2b2:	50                   	push   %eax
 2b3:	e8 5b 07 00 00       	call   0xa13
 2b8:	c7 03 03 00 00 00    	movl   $0x3,(%ebx)
 2be:	8b 45 08             	mov    0x8(%ebp),%eax
 2c1:	89 43 04             	mov    %eax,0x4(%ebx)
 2c4:	8b 45 0c             	mov    0xc(%ebp),%eax
 2c7:	89 43 08             	mov    %eax,0x8(%ebx)
 2ca:	89 d8                	mov    %ebx,%eax
 2cc:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 2cf:	c9                   	leave  
 2d0:	c3                   	ret    
 2d1:	55                   	push   %ebp
 2d2:	89 e5                	mov    %esp,%ebp
 2d4:	53                   	push   %ebx
 2d5:	83 ec 10             	sub    $0x10,%esp
 2d8:	6a 0c                	push   $0xc
 2da:	e8 e2 0b 00 00       	call   0xec1
 2df:	89 c3                	mov    %eax,%ebx
 2e1:	83 c4 0c             	add    $0xc,%esp
 2e4:	6a 0c                	push   $0xc
 2e6:	6a 00                	push   $0x0
 2e8:	50                   	push   %eax
 2e9:	e8 25 07 00 00       	call   0xa13
 2ee:	c7 03 04 00 00 00    	movl   $0x4,(%ebx)
 2f4:	8b 45 08             	mov    0x8(%ebp),%eax
 2f7:	89 43 04             	mov    %eax,0x4(%ebx)
 2fa:	8b 45 0c             	mov    0xc(%ebp),%eax
 2fd:	89 43 08             	mov    %eax,0x8(%ebx)
 300:	89 d8                	mov    %ebx,%eax
 302:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 305:	c9                   	leave  
 306:	c3                   	ret    
 307:	55                   	push   %ebp
 308:	89 e5                	mov    %esp,%ebp
 30a:	53                   	push   %ebx
 30b:	83 ec 10             	sub    $0x10,%esp
 30e:	6a 08                	push   $0x8
 310:	e8 ac 0b 00 00       	call   0xec1
 315:	89 c3                	mov    %eax,%ebx
 317:	83 c4 0c             	add    $0xc,%esp
 31a:	6a 08                	push   $0x8
 31c:	6a 00                	push   $0x0
 31e:	50                   	push   %eax
 31f:	e8 ef 06 00 00       	call   0xa13
 324:	c7 03 05 00 00 00    	movl   $0x5,(%ebx)
 32a:	8b 45 08             	mov    0x8(%ebp),%eax
 32d:	89 43 04             	mov    %eax,0x4(%ebx)
 330:	89 d8                	mov    %ebx,%eax
 332:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 335:	c9                   	leave  
 336:	c3                   	ret    
 337:	55                   	push   %ebp
 338:	89 e5                	mov    %esp,%ebp
 33a:	57                   	push   %edi
 33b:	56                   	push   %esi
 33c:	53                   	push   %ebx
 33d:	83 ec 0c             	sub    $0xc,%esp
 340:	8b 75 0c             	mov    0xc(%ebp),%esi
 343:	8b 7d 10             	mov    0x10(%ebp),%edi
 346:	8b 45 08             	mov    0x8(%ebp),%eax
 349:	8b 18                	mov    (%eax),%ebx
 34b:	eb 03                	jmp    0x350
 34d:	83 c3 01             	add    $0x1,%ebx
 350:	39 f3                	cmp    %esi,%ebx
 352:	73 18                	jae    0x36c
 354:	83 ec 08             	sub    $0x8,%esp
 357:	0f be 03             	movsbl (%ebx),%eax
 35a:	50                   	push   %eax
 35b:	68 10 16 00 00       	push   $0x1610
 360:	e8 c7 06 00 00       	call   0xa2c
 365:	83 c4 10             	add    $0x10,%esp
 368:	85 c0                	test   %eax,%eax
 36a:	75 e1                	jne    0x34d
 36c:	85 ff                	test   %edi,%edi
 36e:	74 02                	je     0x372
 370:	89 1f                	mov    %ebx,(%edi)
 372:	0f b6 03             	movzbl (%ebx),%eax
 375:	0f be f8             	movsbl %al,%edi
 378:	3c 3c                	cmp    $0x3c,%al
 37a:	7f 27                	jg     0x3a3
 37c:	3c 3b                	cmp    $0x3b,%al
 37e:	7d 13                	jge    0x393
 380:	84 c0                	test   %al,%al
 382:	74 12                	je     0x396
 384:	78 41                	js     0x3c7
 386:	3c 26                	cmp    $0x26,%al
 388:	74 09                	je     0x393
 38a:	7c 3b                	jl     0x3c7
 38c:	83 e8 28             	sub    $0x28,%eax
 38f:	3c 01                	cmp    $0x1,%al
 391:	77 34                	ja     0x3c7
 393:	83 c3 01             	add    $0x1,%ebx
 396:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
 39a:	74 77                	je     0x413
 39c:	8b 45 14             	mov    0x14(%ebp),%eax
 39f:	89 18                	mov    %ebx,(%eax)
 3a1:	eb 70                	jmp    0x413
 3a3:	3c 3e                	cmp    $0x3e,%al
 3a5:	75 0d                	jne    0x3b4
 3a7:	8d 43 01             	lea    0x1(%ebx),%eax
 3aa:	80 7b 01 3e          	cmpb   $0x3e,0x1(%ebx)
 3ae:	74 0a                	je     0x3ba
 3b0:	89 c3                	mov    %eax,%ebx
 3b2:	eb e2                	jmp    0x396
 3b4:	3c 7c                	cmp    $0x7c,%al
 3b6:	75 0f                	jne    0x3c7
 3b8:	eb d9                	jmp    0x393
 3ba:	83 c3 02             	add    $0x2,%ebx
 3bd:	bf 2b 00 00 00       	mov    $0x2b,%edi
 3c2:	eb d2                	jmp    0x396
 3c4:	83 c3 01             	add    $0x1,%ebx
 3c7:	39 f3                	cmp    %esi,%ebx
 3c9:	73 37                	jae    0x402
 3cb:	83 ec 08             	sub    $0x8,%esp
 3ce:	0f be 03             	movsbl (%ebx),%eax
 3d1:	50                   	push   %eax
 3d2:	68 10 16 00 00       	push   $0x1610
 3d7:	e8 50 06 00 00       	call   0xa2c
 3dc:	83 c4 10             	add    $0x10,%esp
 3df:	85 c0                	test   %eax,%eax
 3e1:	75 26                	jne    0x409
 3e3:	83 ec 08             	sub    $0x8,%esp
 3e6:	0f be 03             	movsbl (%ebx),%eax
 3e9:	50                   	push   %eax
 3ea:	68 08 16 00 00       	push   $0x1608
 3ef:	e8 38 06 00 00       	call   0xa2c
 3f4:	83 c4 10             	add    $0x10,%esp
 3f7:	85 c0                	test   %eax,%eax
 3f9:	74 c9                	je     0x3c4
 3fb:	bf 61 00 00 00       	mov    $0x61,%edi
 400:	eb 94                	jmp    0x396
 402:	bf 61 00 00 00       	mov    $0x61,%edi
 407:	eb 8d                	jmp    0x396
 409:	bf 61 00 00 00       	mov    $0x61,%edi
 40e:	eb 86                	jmp    0x396
 410:	83 c3 01             	add    $0x1,%ebx
 413:	39 f3                	cmp    %esi,%ebx
 415:	73 18                	jae    0x42f
 417:	83 ec 08             	sub    $0x8,%esp
 41a:	0f be 03             	movsbl (%ebx),%eax
 41d:	50                   	push   %eax
 41e:	68 10 16 00 00       	push   $0x1610
 423:	e8 04 06 00 00       	call   0xa2c
 428:	83 c4 10             	add    $0x10,%esp
 42b:	85 c0                	test   %eax,%eax
 42d:	75 e1                	jne    0x410
 42f:	8b 45 08             	mov    0x8(%ebp),%eax
 432:	89 18                	mov    %ebx,(%eax)
 434:	89 f8                	mov    %edi,%eax
 436:	8d 65 f4             	lea    -0xc(%ebp),%esp
 439:	5b                   	pop    %ebx
 43a:	5e                   	pop    %esi
 43b:	5f                   	pop    %edi
 43c:	5d                   	pop    %ebp
 43d:	c3                   	ret    
 43e:	55                   	push   %ebp
 43f:	89 e5                	mov    %esp,%ebp
 441:	57                   	push   %edi
 442:	56                   	push   %esi
 443:	53                   	push   %ebx
 444:	83 ec 0c             	sub    $0xc,%esp
 447:	8b 7d 08             	mov    0x8(%ebp),%edi
 44a:	8b 75 0c             	mov    0xc(%ebp),%esi
 44d:	8b 1f                	mov    (%edi),%ebx
 44f:	eb 03                	jmp    0x454
 451:	83 c3 01             	add    $0x1,%ebx
 454:	39 f3                	cmp    %esi,%ebx
 456:	73 18                	jae    0x470
 458:	83 ec 08             	sub    $0x8,%esp
 45b:	0f be 03             	movsbl (%ebx),%eax
 45e:	50                   	push   %eax
 45f:	68 10 16 00 00       	push   $0x1610
 464:	e8 c3 05 00 00       	call   0xa2c
 469:	83 c4 10             	add    $0x10,%esp
 46c:	85 c0                	test   %eax,%eax
 46e:	75 e1                	jne    0x451
 470:	89 1f                	mov    %ebx,(%edi)
 472:	0f b6 03             	movzbl (%ebx),%eax
 475:	84 c0                	test   %al,%al
 477:	75 0d                	jne    0x486
 479:	b8 00 00 00 00       	mov    $0x0,%eax
 47e:	8d 65 f4             	lea    -0xc(%ebp),%esp
 481:	5b                   	pop    %ebx
 482:	5e                   	pop    %esi
 483:	5f                   	pop    %edi
 484:	5d                   	pop    %ebp
 485:	c3                   	ret    
 486:	83 ec 08             	sub    $0x8,%esp
 489:	0f be c0             	movsbl %al,%eax
 48c:	50                   	push   %eax
 48d:	ff 75 10             	push   0x10(%ebp)
 490:	e8 97 05 00 00       	call   0xa2c
 495:	83 c4 10             	add    $0x10,%esp
 498:	85 c0                	test   %eax,%eax
 49a:	74 07                	je     0x4a3
 49c:	b8 01 00 00 00       	mov    $0x1,%eax
 4a1:	eb db                	jmp    0x47e
 4a3:	b8 00 00 00 00       	mov    $0x0,%eax
 4a8:	eb d4                	jmp    0x47e
 4aa:	55                   	push   %ebp
 4ab:	89 e5                	mov    %esp,%ebp
 4ad:	57                   	push   %edi
 4ae:	56                   	push   %esi
 4af:	53                   	push   %ebx
 4b0:	83 ec 1c             	sub    $0x1c,%esp
 4b3:	8b 7d 0c             	mov    0xc(%ebp),%edi
 4b6:	8b 75 10             	mov    0x10(%ebp),%esi
 4b9:	eb 28                	jmp    0x4e3
 4bb:	83 ec 0c             	sub    $0xc,%esp
 4be:	68 7c 0f 00 00       	push   $0xf7c
 4c3:	e8 83 fb ff ff       	call   0x4b
 4c8:	83 ec 0c             	sub    $0xc,%esp
 4cb:	6a 00                	push   $0x0
 4cd:	6a 00                	push   $0x0
 4cf:	ff 75 e0             	push   -0x20(%ebp)
 4d2:	ff 75 e4             	push   -0x1c(%ebp)
 4d5:	ff 75 08             	push   0x8(%ebp)
 4d8:	e8 76 fd ff ff       	call   0x253
 4dd:	89 45 08             	mov    %eax,0x8(%ebp)
 4e0:	83 c4 20             	add    $0x20,%esp
 4e3:	83 ec 04             	sub    $0x4,%esp
 4e6:	68 99 0f 00 00       	push   $0xf99
 4eb:	56                   	push   %esi
 4ec:	57                   	push   %edi
 4ed:	e8 4c ff ff ff       	call   0x43e
 4f2:	83 c4 10             	add    $0x10,%esp
 4f5:	85 c0                	test   %eax,%eax
 4f7:	74 76                	je     0x56f
 4f9:	6a 00                	push   $0x0
 4fb:	6a 00                	push   $0x0
 4fd:	56                   	push   %esi
 4fe:	57                   	push   %edi
 4ff:	e8 33 fe ff ff       	call   0x337
 504:	89 c3                	mov    %eax,%ebx
 506:	8d 45 e0             	lea    -0x20(%ebp),%eax
 509:	50                   	push   %eax
 50a:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 50d:	50                   	push   %eax
 50e:	56                   	push   %esi
 50f:	57                   	push   %edi
 510:	e8 22 fe ff ff       	call   0x337
 515:	83 c4 20             	add    $0x20,%esp
 518:	83 f8 61             	cmp    $0x61,%eax
 51b:	75 9e                	jne    0x4bb
 51d:	83 fb 3c             	cmp    $0x3c,%ebx
 520:	74 a6                	je     0x4c8
 522:	83 fb 3e             	cmp    $0x3e,%ebx
 525:	74 25                	je     0x54c
 527:	83 fb 2b             	cmp    $0x2b,%ebx
 52a:	75 b7                	jne    0x4e3
 52c:	83 ec 0c             	sub    $0xc,%esp
 52f:	6a 01                	push   $0x1
 531:	68 01 02 00 00       	push   $0x201
 536:	ff 75 e0             	push   -0x20(%ebp)
 539:	ff 75 e4             	push   -0x1c(%ebp)
 53c:	ff 75 08             	push   0x8(%ebp)
 53f:	e8 0f fd ff ff       	call   0x253
 544:	89 45 08             	mov    %eax,0x8(%ebp)
 547:	83 c4 20             	add    $0x20,%esp
 54a:	eb 97                	jmp    0x4e3
 54c:	83 ec 0c             	sub    $0xc,%esp
 54f:	6a 01                	push   $0x1
 551:	68 01 02 00 00       	push   $0x201
 556:	ff 75 e0             	push   -0x20(%ebp)
 559:	ff 75 e4             	push   -0x1c(%ebp)
 55c:	ff 75 08             	push   0x8(%ebp)
 55f:	e8 ef fc ff ff       	call   0x253
 564:	89 45 08             	mov    %eax,0x8(%ebp)
 567:	83 c4 20             	add    $0x20,%esp
 56a:	e9 74 ff ff ff       	jmp    0x4e3
 56f:	8b 45 08             	mov    0x8(%ebp),%eax
 572:	8d 65 f4             	lea    -0xc(%ebp),%esp
 575:	5b                   	pop    %ebx
 576:	5e                   	pop    %esi
 577:	5f                   	pop    %edi
 578:	5d                   	pop    %ebp
 579:	c3                   	ret    
 57a:	55                   	push   %ebp
 57b:	89 e5                	mov    %esp,%ebp
 57d:	57                   	push   %edi
 57e:	56                   	push   %esi
 57f:	53                   	push   %ebx
 580:	83 ec 30             	sub    $0x30,%esp
 583:	8b 75 08             	mov    0x8(%ebp),%esi
 586:	8b 7d 0c             	mov    0xc(%ebp),%edi
 589:	68 9c 0f 00 00       	push   $0xf9c
 58e:	57                   	push   %edi
 58f:	56                   	push   %esi
 590:	e8 a9 fe ff ff       	call   0x43e
 595:	83 c4 10             	add    $0x10,%esp
 598:	85 c0                	test   %eax,%eax
 59a:	75 1d                	jne    0x5b9
 59c:	89 c3                	mov    %eax,%ebx
 59e:	e8 86 fc ff ff       	call   0x229
 5a3:	89 45 d0             	mov    %eax,-0x30(%ebp)
 5a6:	83 ec 04             	sub    $0x4,%esp
 5a9:	57                   	push   %edi
 5aa:	56                   	push   %esi
 5ab:	50                   	push   %eax
 5ac:	e8 f9 fe ff ff       	call   0x4aa
 5b1:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 5b4:	83 c4 10             	add    $0x10,%esp
 5b7:	eb 3b                	jmp    0x5f4
 5b9:	83 ec 08             	sub    $0x8,%esp
 5bc:	57                   	push   %edi
 5bd:	56                   	push   %esi
 5be:	e8 8f 01 00 00       	call   0x752
 5c3:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 5c6:	83 c4 10             	add    $0x10,%esp
 5c9:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 5cc:	8d 65 f4             	lea    -0xc(%ebp),%esp
 5cf:	5b                   	pop    %ebx
 5d0:	5e                   	pop    %esi
 5d1:	5f                   	pop    %edi
 5d2:	5d                   	pop    %ebp
 5d3:	c3                   	ret    
 5d4:	83 ec 0c             	sub    $0xc,%esp
 5d7:	68 9e 0f 00 00       	push   $0xf9e
 5dc:	e8 6a fa ff ff       	call   0x4b
 5e1:	83 ec 04             	sub    $0x4,%esp
 5e4:	57                   	push   %edi
 5e5:	56                   	push   %esi
 5e6:	ff 75 d4             	push   -0x2c(%ebp)
 5e9:	e8 bc fe ff ff       	call   0x4aa
 5ee:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 5f1:	83 c4 10             	add    $0x10,%esp
 5f4:	83 ec 04             	sub    $0x4,%esp
 5f7:	68 b3 0f 00 00       	push   $0xfb3
 5fc:	57                   	push   %edi
 5fd:	56                   	push   %esi
 5fe:	e8 3b fe ff ff       	call   0x43e
 603:	83 c4 10             	add    $0x10,%esp
 606:	85 c0                	test   %eax,%eax
 608:	75 41                	jne    0x64b
 60a:	8d 45 e0             	lea    -0x20(%ebp),%eax
 60d:	50                   	push   %eax
 60e:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 611:	50                   	push   %eax
 612:	57                   	push   %edi
 613:	56                   	push   %esi
 614:	e8 1e fd ff ff       	call   0x337
 619:	83 c4 10             	add    $0x10,%esp
 61c:	85 c0                	test   %eax,%eax
 61e:	74 2b                	je     0x64b
 620:	83 f8 61             	cmp    $0x61,%eax
 623:	75 af                	jne    0x5d4
 625:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 628:	8b 55 d0             	mov    -0x30(%ebp),%edx
 62b:	89 44 9a 04          	mov    %eax,0x4(%edx,%ebx,4)
 62f:	8b 45 e0             	mov    -0x20(%ebp),%eax
 632:	89 44 9a 2c          	mov    %eax,0x2c(%edx,%ebx,4)
 636:	83 c3 01             	add    $0x1,%ebx
 639:	83 fb 09             	cmp    $0x9,%ebx
 63c:	7e a3                	jle    0x5e1
 63e:	83 ec 0c             	sub    $0xc,%esp
 641:	68 a5 0f 00 00       	push   $0xfa5
 646:	e8 00 fa ff ff       	call   0x4b
 64b:	8b 45 d0             	mov    -0x30(%ebp),%eax
 64e:	c7 44 98 04 00 00 00 	movl   $0x0,0x4(%eax,%ebx,4)
 655:	00 
 656:	c7 44 98 2c 00 00 00 	movl   $0x0,0x2c(%eax,%ebx,4)
 65d:	00 
 65e:	e9 66 ff ff ff       	jmp    0x5c9
 663:	55                   	push   %ebp
 664:	89 e5                	mov    %esp,%ebp
 666:	57                   	push   %edi
 667:	56                   	push   %esi
 668:	53                   	push   %ebx
 669:	83 ec 14             	sub    $0x14,%esp
 66c:	8b 75 08             	mov    0x8(%ebp),%esi
 66f:	8b 7d 0c             	mov    0xc(%ebp),%edi
 672:	57                   	push   %edi
 673:	56                   	push   %esi
 674:	e8 01 ff ff ff       	call   0x57a
 679:	89 c3                	mov    %eax,%ebx
 67b:	83 c4 0c             	add    $0xc,%esp
 67e:	68 b8 0f 00 00       	push   $0xfb8
 683:	57                   	push   %edi
 684:	56                   	push   %esi
 685:	e8 b4 fd ff ff       	call   0x43e
 68a:	83 c4 10             	add    $0x10,%esp
 68d:	85 c0                	test   %eax,%eax
 68f:	75 0a                	jne    0x69b
 691:	89 d8                	mov    %ebx,%eax
 693:	8d 65 f4             	lea    -0xc(%ebp),%esp
 696:	5b                   	pop    %ebx
 697:	5e                   	pop    %esi
 698:	5f                   	pop    %edi
 699:	5d                   	pop    %ebp
 69a:	c3                   	ret    
 69b:	6a 00                	push   $0x0
 69d:	6a 00                	push   $0x0
 69f:	57                   	push   %edi
 6a0:	56                   	push   %esi
 6a1:	e8 91 fc ff ff       	call   0x337
 6a6:	83 c4 08             	add    $0x8,%esp
 6a9:	57                   	push   %edi
 6aa:	56                   	push   %esi
 6ab:	e8 b3 ff ff ff       	call   0x663
 6b0:	83 c4 08             	add    $0x8,%esp
 6b3:	50                   	push   %eax
 6b4:	53                   	push   %ebx
 6b5:	e8 e1 fb ff ff       	call   0x29b
 6ba:	89 c3                	mov    %eax,%ebx
 6bc:	83 c4 10             	add    $0x10,%esp
 6bf:	eb d0                	jmp    0x691
 6c1:	55                   	push   %ebp
 6c2:	89 e5                	mov    %esp,%ebp
 6c4:	57                   	push   %edi
 6c5:	56                   	push   %esi
 6c6:	53                   	push   %ebx
 6c7:	83 ec 14             	sub    $0x14,%esp
 6ca:	8b 75 08             	mov    0x8(%ebp),%esi
 6cd:	8b 7d 0c             	mov    0xc(%ebp),%edi
 6d0:	57                   	push   %edi
 6d1:	56                   	push   %esi
 6d2:	e8 8c ff ff ff       	call   0x663
 6d7:	89 c3                	mov    %eax,%ebx
 6d9:	83 c4 10             	add    $0x10,%esp
 6dc:	eb 18                	jmp    0x6f6
 6de:	6a 00                	push   $0x0
 6e0:	6a 00                	push   $0x0
 6e2:	57                   	push   %edi
 6e3:	56                   	push   %esi
 6e4:	e8 4e fc ff ff       	call   0x337
 6e9:	89 1c 24             	mov    %ebx,(%esp)
 6ec:	e8 16 fc ff ff       	call   0x307
 6f1:	89 c3                	mov    %eax,%ebx
 6f3:	83 c4 10             	add    $0x10,%esp
 6f6:	83 ec 04             	sub    $0x4,%esp
 6f9:	68 ba 0f 00 00       	push   $0xfba
 6fe:	57                   	push   %edi
 6ff:	56                   	push   %esi
 700:	e8 39 fd ff ff       	call   0x43e
 705:	83 c4 10             	add    $0x10,%esp
 708:	85 c0                	test   %eax,%eax
 70a:	75 d2                	jne    0x6de
 70c:	83 ec 04             	sub    $0x4,%esp
 70f:	68 b6 0f 00 00       	push   $0xfb6
 714:	57                   	push   %edi
 715:	56                   	push   %esi
 716:	e8 23 fd ff ff       	call   0x43e
 71b:	83 c4 10             	add    $0x10,%esp
 71e:	85 c0                	test   %eax,%eax
 720:	75 0a                	jne    0x72c
 722:	89 d8                	mov    %ebx,%eax
 724:	8d 65 f4             	lea    -0xc(%ebp),%esp
 727:	5b                   	pop    %ebx
 728:	5e                   	pop    %esi
 729:	5f                   	pop    %edi
 72a:	5d                   	pop    %ebp
 72b:	c3                   	ret    
 72c:	6a 00                	push   $0x0
 72e:	6a 00                	push   $0x0
 730:	57                   	push   %edi
 731:	56                   	push   %esi
 732:	e8 00 fc ff ff       	call   0x337
 737:	83 c4 08             	add    $0x8,%esp
 73a:	57                   	push   %edi
 73b:	56                   	push   %esi
 73c:	e8 80 ff ff ff       	call   0x6c1
 741:	83 c4 08             	add    $0x8,%esp
 744:	50                   	push   %eax
 745:	53                   	push   %ebx
 746:	e8 86 fb ff ff       	call   0x2d1
 74b:	89 c3                	mov    %eax,%ebx
 74d:	83 c4 10             	add    $0x10,%esp
 750:	eb d0                	jmp    0x722
 752:	55                   	push   %ebp
 753:	89 e5                	mov    %esp,%ebp
 755:	57                   	push   %edi
 756:	56                   	push   %esi
 757:	53                   	push   %ebx
 758:	83 ec 10             	sub    $0x10,%esp
 75b:	8b 5d 08             	mov    0x8(%ebp),%ebx
 75e:	8b 75 0c             	mov    0xc(%ebp),%esi
 761:	68 9c 0f 00 00       	push   $0xf9c
 766:	56                   	push   %esi
 767:	53                   	push   %ebx
 768:	e8 d1 fc ff ff       	call   0x43e
 76d:	83 c4 10             	add    $0x10,%esp
 770:	85 c0                	test   %eax,%eax
 772:	74 4b                	je     0x7bf
 774:	6a 00                	push   $0x0
 776:	6a 00                	push   $0x0
 778:	56                   	push   %esi
 779:	53                   	push   %ebx
 77a:	e8 b8 fb ff ff       	call   0x337
 77f:	83 c4 08             	add    $0x8,%esp
 782:	56                   	push   %esi
 783:	53                   	push   %ebx
 784:	e8 38 ff ff ff       	call   0x6c1
 789:	89 c7                	mov    %eax,%edi
 78b:	83 c4 0c             	add    $0xc,%esp
 78e:	68 d8 0f 00 00       	push   $0xfd8
 793:	56                   	push   %esi
 794:	53                   	push   %ebx
 795:	e8 a4 fc ff ff       	call   0x43e
 79a:	83 c4 10             	add    $0x10,%esp
 79d:	85 c0                	test   %eax,%eax
 79f:	74 2b                	je     0x7cc
 7a1:	6a 00                	push   $0x0
 7a3:	6a 00                	push   $0x0
 7a5:	56                   	push   %esi
 7a6:	53                   	push   %ebx
 7a7:	e8 8b fb ff ff       	call   0x337
 7ac:	83 c4 0c             	add    $0xc,%esp
 7af:	56                   	push   %esi
 7b0:	53                   	push   %ebx
 7b1:	57                   	push   %edi
 7b2:	e8 f3 fc ff ff       	call   0x4aa
 7b7:	8d 65 f4             	lea    -0xc(%ebp),%esp
 7ba:	5b                   	pop    %ebx
 7bb:	5e                   	pop    %esi
 7bc:	5f                   	pop    %edi
 7bd:	5d                   	pop    %ebp
 7be:	c3                   	ret    
 7bf:	83 ec 0c             	sub    $0xc,%esp
 7c2:	68 bc 0f 00 00       	push   $0xfbc
 7c7:	e8 7f f8 ff ff       	call   0x4b
 7cc:	83 ec 0c             	sub    $0xc,%esp
 7cf:	68 c7 0f 00 00       	push   $0xfc7
 7d4:	e8 72 f8 ff ff       	call   0x4b
 7d9:	55                   	push   %ebp
 7da:	89 e5                	mov    %esp,%ebp
 7dc:	53                   	push   %ebx
 7dd:	83 ec 04             	sub    $0x4,%esp
 7e0:	8b 5d 08             	mov    0x8(%ebp),%ebx
 7e3:	85 db                	test   %ebx,%ebx
 7e5:	74 1f                	je     0x806
 7e7:	8b 03                	mov    (%ebx),%eax
 7e9:	83 f8 05             	cmp    $0x5,%eax
 7ec:	77 18                	ja     0x806
 7ee:	ff 24 85 18 10 00 00 	jmp    *0x1018(,%eax,4)
 7f5:	8b 54 83 2c          	mov    0x2c(%ebx,%eax,4),%edx
 7f9:	c6 02 00             	movb   $0x0,(%edx)
 7fc:	83 c0 01             	add    $0x1,%eax
 7ff:	83 7c 83 04 00       	cmpl   $0x0,0x4(%ebx,%eax,4)
 804:	75 ef                	jne    0x7f5
 806:	89 d8                	mov    %ebx,%eax
 808:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 80b:	c9                   	leave  
 80c:	c3                   	ret    
 80d:	b8 00 00 00 00       	mov    $0x0,%eax
 812:	eb eb                	jmp    0x7ff
 814:	83 ec 0c             	sub    $0xc,%esp
 817:	ff 73 04             	push   0x4(%ebx)
 81a:	e8 ba ff ff ff       	call   0x7d9
 81f:	8b 43 0c             	mov    0xc(%ebx),%eax
 822:	c6 00 00             	movb   $0x0,(%eax)
 825:	83 c4 10             	add    $0x10,%esp
 828:	eb dc                	jmp    0x806
 82a:	83 ec 0c             	sub    $0xc,%esp
 82d:	ff 73 04             	push   0x4(%ebx)
 830:	e8 a4 ff ff ff       	call   0x7d9
 835:	83 c4 04             	add    $0x4,%esp
 838:	ff 73 08             	push   0x8(%ebx)
 83b:	e8 99 ff ff ff       	call   0x7d9
 840:	83 c4 10             	add    $0x10,%esp
 843:	eb c1                	jmp    0x806
 845:	83 ec 0c             	sub    $0xc,%esp
 848:	ff 73 04             	push   0x4(%ebx)
 84b:	e8 89 ff ff ff       	call   0x7d9
 850:	83 c4 04             	add    $0x4,%esp
 853:	ff 73 08             	push   0x8(%ebx)
 856:	e8 7e ff ff ff       	call   0x7d9
 85b:	83 c4 10             	add    $0x10,%esp
 85e:	eb a6                	jmp    0x806
 860:	83 ec 0c             	sub    $0xc,%esp
 863:	ff 73 04             	push   0x4(%ebx)
 866:	e8 6e ff ff ff       	call   0x7d9
 86b:	83 c4 10             	add    $0x10,%esp
 86e:	eb 96                	jmp    0x806
 870:	55                   	push   %ebp
 871:	89 e5                	mov    %esp,%ebp
 873:	56                   	push   %esi
 874:	53                   	push   %ebx
 875:	8b 5d 08             	mov    0x8(%ebp),%ebx
 878:	83 ec 0c             	sub    $0xc,%esp
 87b:	53                   	push   %ebx
 87c:	e8 7a 01 00 00       	call   0x9fb
 881:	01 c3                	add    %eax,%ebx
 883:	83 c4 08             	add    $0x8,%esp
 886:	53                   	push   %ebx
 887:	8d 45 08             	lea    0x8(%ebp),%eax
 88a:	50                   	push   %eax
 88b:	e8 31 fe ff ff       	call   0x6c1
 890:	89 c6                	mov    %eax,%esi
 892:	83 c4 0c             	add    $0xc,%esp
 895:	68 66 0f 00 00       	push   $0xf66
 89a:	53                   	push   %ebx
 89b:	8d 45 08             	lea    0x8(%ebp),%eax
 89e:	50                   	push   %eax
 89f:	e8 9a fb ff ff       	call   0x43e
 8a4:	8b 45 08             	mov    0x8(%ebp),%eax
 8a7:	83 c4 10             	add    $0x10,%esp
 8aa:	39 d8                	cmp    %ebx,%eax
 8ac:	75 12                	jne    0x8c0
 8ae:	83 ec 0c             	sub    $0xc,%esp
 8b1:	56                   	push   %esi
 8b2:	e8 22 ff ff ff       	call   0x7d9
 8b7:	89 f0                	mov    %esi,%eax
 8b9:	8d 65 f8             	lea    -0x8(%ebp),%esp
 8bc:	5b                   	pop    %ebx
 8bd:	5e                   	pop    %esi
 8be:	5d                   	pop    %ebp
 8bf:	c3                   	ret    
 8c0:	83 ec 04             	sub    $0x4,%esp
 8c3:	50                   	push   %eax
 8c4:	68 da 0f 00 00       	push   $0xfda
 8c9:	6a 02                	push   $0x2
 8cb:	e8 cb 03 00 00       	call   0xc9b
 8d0:	c7 04 24 9e 0f 00 00 	movl   $0xf9e,(%esp)
 8d7:	e8 6f f7 ff ff       	call   0x4b
 8dc:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 8e0:	83 e4 f0             	and    $0xfffffff0,%esp
 8e3:	ff 71 fc             	push   -0x4(%ecx)
 8e6:	55                   	push   %ebp
 8e7:	89 e5                	mov    %esp,%ebp
 8e9:	51                   	push   %ecx
 8ea:	83 ec 04             	sub    $0x4,%esp
 8ed:	83 ec 08             	sub    $0x8,%esp
 8f0:	6a 02                	push   $0x2
 8f2:	68 e9 0f 00 00       	push   $0xfe9
 8f7:	e8 92 02 00 00       	call   0xb8e
 8fc:	83 c4 10             	add    $0x10,%esp
 8ff:	85 c0                	test   %eax,%eax
 901:	78 21                	js     0x924
 903:	83 f8 02             	cmp    $0x2,%eax
 906:	7e e5                	jle    0x8ed
 908:	83 ec 0c             	sub    $0xc,%esp
 90b:	50                   	push   %eax
 90c:	e8 65 02 00 00       	call   0xb76
 911:	83 c4 10             	add    $0x10,%esp
 914:	eb 0e                	jmp    0x924
 916:	e8 4a f7 ff ff       	call   0x65
 91b:	85 c0                	test   %eax,%eax
 91d:	74 76                	je     0x995
 91f:	e8 32 02 00 00       	call   0xb56
 924:	83 ec 08             	sub    $0x8,%esp
 927:	6a 64                	push   $0x64
 929:	68 20 16 00 00       	push   $0x1620
 92e:	e8 cd f6 ff ff       	call   0x0
 933:	83 c4 10             	add    $0x10,%esp
 936:	85 c0                	test   %eax,%eax
 938:	78 70                	js     0x9aa
 93a:	80 3d 20 16 00 00 63 	cmpb   $0x63,0x1620
 941:	75 d3                	jne    0x916
 943:	80 3d 21 16 00 00 64 	cmpb   $0x64,0x1621
 94a:	75 ca                	jne    0x916
 94c:	80 3d 22 16 00 00 20 	cmpb   $0x20,0x1622
 953:	75 c1                	jne    0x916
 955:	83 ec 0c             	sub    $0xc,%esp
 958:	68 20 16 00 00       	push   $0x1620
 95d:	e8 99 00 00 00       	call   0x9fb
 962:	c6 80 1f 16 00 00 00 	movb   $0x0,0x161f(%eax)
 969:	c7 04 24 23 16 00 00 	movl   $0x1623,(%esp)
 970:	e8 49 02 00 00       	call   0xbbe
 975:	83 c4 10             	add    $0x10,%esp
 978:	85 c0                	test   %eax,%eax
 97a:	79 a8                	jns    0x924
 97c:	83 ec 04             	sub    $0x4,%esp
 97f:	68 23 16 00 00       	push   $0x1623
 984:	68 f1 0f 00 00       	push   $0xff1
 989:	6a 02                	push   $0x2
 98b:	e8 0b 03 00 00       	call   0xc9b
 990:	83 c4 10             	add    $0x10,%esp
 993:	eb 8f                	jmp    0x924
 995:	83 ec 0c             	sub    $0xc,%esp
 998:	68 20 16 00 00       	push   $0x1620
 99d:	e8 ce fe ff ff       	call   0x870
 9a2:	89 04 24             	mov    %eax,(%esp)
 9a5:	e8 da f6 ff ff       	call   0x84
 9aa:	e8 9f 01 00 00       	call   0xb4e
 9af:	55                   	push   %ebp
 9b0:	89 e5                	mov    %esp,%ebp
 9b2:	56                   	push   %esi
 9b3:	53                   	push   %ebx
 9b4:	8b 75 08             	mov    0x8(%ebp),%esi
 9b7:	8b 55 0c             	mov    0xc(%ebp),%edx
 9ba:	89 f0                	mov    %esi,%eax
 9bc:	89 d1                	mov    %edx,%ecx
 9be:	83 c2 01             	add    $0x1,%edx
 9c1:	89 c3                	mov    %eax,%ebx
 9c3:	83 c0 01             	add    $0x1,%eax
 9c6:	0f b6 09             	movzbl (%ecx),%ecx
 9c9:	88 0b                	mov    %cl,(%ebx)
 9cb:	84 c9                	test   %cl,%cl
 9cd:	75 ed                	jne    0x9bc
 9cf:	89 f0                	mov    %esi,%eax
 9d1:	5b                   	pop    %ebx
 9d2:	5e                   	pop    %esi
 9d3:	5d                   	pop    %ebp
 9d4:	c3                   	ret    
 9d5:	55                   	push   %ebp
 9d6:	89 e5                	mov    %esp,%ebp
 9d8:	8b 4d 08             	mov    0x8(%ebp),%ecx
 9db:	8b 55 0c             	mov    0xc(%ebp),%edx
 9de:	eb 06                	jmp    0x9e6
 9e0:	83 c1 01             	add    $0x1,%ecx
 9e3:	83 c2 01             	add    $0x1,%edx
 9e6:	0f b6 01             	movzbl (%ecx),%eax
 9e9:	84 c0                	test   %al,%al
 9eb:	74 04                	je     0x9f1
 9ed:	3a 02                	cmp    (%edx),%al
 9ef:	74 ef                	je     0x9e0
 9f1:	0f b6 c0             	movzbl %al,%eax
 9f4:	0f b6 12             	movzbl (%edx),%edx
 9f7:	29 d0                	sub    %edx,%eax
 9f9:	5d                   	pop    %ebp
 9fa:	c3                   	ret    
 9fb:	55                   	push   %ebp
 9fc:	89 e5                	mov    %esp,%ebp
 9fe:	8b 4d 08             	mov    0x8(%ebp),%ecx
 a01:	b8 00 00 00 00       	mov    $0x0,%eax
 a06:	eb 03                	jmp    0xa0b
 a08:	83 c0 01             	add    $0x1,%eax
 a0b:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
 a0f:	75 f7                	jne    0xa08
 a11:	5d                   	pop    %ebp
 a12:	c3                   	ret    
 a13:	55                   	push   %ebp
 a14:	89 e5                	mov    %esp,%ebp
 a16:	57                   	push   %edi
 a17:	8b 55 08             	mov    0x8(%ebp),%edx
 a1a:	89 d7                	mov    %edx,%edi
 a1c:	8b 4d 10             	mov    0x10(%ebp),%ecx
 a1f:	8b 45 0c             	mov    0xc(%ebp),%eax
 a22:	fc                   	cld    
 a23:	f3 aa                	rep stos %al,%es:(%edi)
 a25:	89 d0                	mov    %edx,%eax
 a27:	8b 7d fc             	mov    -0x4(%ebp),%edi
 a2a:	c9                   	leave  
 a2b:	c3                   	ret    
 a2c:	55                   	push   %ebp
 a2d:	89 e5                	mov    %esp,%ebp
 a2f:	8b 45 08             	mov    0x8(%ebp),%eax
 a32:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
 a36:	eb 03                	jmp    0xa3b
 a38:	83 c0 01             	add    $0x1,%eax
 a3b:	0f b6 10             	movzbl (%eax),%edx
 a3e:	84 d2                	test   %dl,%dl
 a40:	74 06                	je     0xa48
 a42:	38 ca                	cmp    %cl,%dl
 a44:	75 f2                	jne    0xa38
 a46:	eb 05                	jmp    0xa4d
 a48:	b8 00 00 00 00       	mov    $0x0,%eax
 a4d:	5d                   	pop    %ebp
 a4e:	c3                   	ret    
 a4f:	55                   	push   %ebp
 a50:	89 e5                	mov    %esp,%ebp
 a52:	57                   	push   %edi
 a53:	56                   	push   %esi
 a54:	53                   	push   %ebx
 a55:	83 ec 1c             	sub    $0x1c,%esp
 a58:	8b 7d 08             	mov    0x8(%ebp),%edi
 a5b:	bb 00 00 00 00       	mov    $0x0,%ebx
 a60:	89 de                	mov    %ebx,%esi
 a62:	83 c3 01             	add    $0x1,%ebx
 a65:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 a68:	7d 2e                	jge    0xa98
 a6a:	83 ec 04             	sub    $0x4,%esp
 a6d:	6a 01                	push   $0x1
 a6f:	8d 45 e7             	lea    -0x19(%ebp),%eax
 a72:	50                   	push   %eax
 a73:	6a 00                	push   $0x0
 a75:	e8 ec 00 00 00       	call   0xb66
 a7a:	83 c4 10             	add    $0x10,%esp
 a7d:	85 c0                	test   %eax,%eax
 a7f:	7e 17                	jle    0xa98
 a81:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 a85:	88 04 37             	mov    %al,(%edi,%esi,1)
 a88:	3c 0a                	cmp    $0xa,%al
 a8a:	0f 94 c2             	sete   %dl
 a8d:	3c 0d                	cmp    $0xd,%al
 a8f:	0f 94 c0             	sete   %al
 a92:	08 c2                	or     %al,%dl
 a94:	74 ca                	je     0xa60
 a96:	89 de                	mov    %ebx,%esi
 a98:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 a9c:	89 f8                	mov    %edi,%eax
 a9e:	8d 65 f4             	lea    -0xc(%ebp),%esp
 aa1:	5b                   	pop    %ebx
 aa2:	5e                   	pop    %esi
 aa3:	5f                   	pop    %edi
 aa4:	5d                   	pop    %ebp
 aa5:	c3                   	ret    
 aa6:	55                   	push   %ebp
 aa7:	89 e5                	mov    %esp,%ebp
 aa9:	56                   	push   %esi
 aaa:	53                   	push   %ebx
 aab:	83 ec 08             	sub    $0x8,%esp
 aae:	6a 00                	push   $0x0
 ab0:	ff 75 08             	push   0x8(%ebp)
 ab3:	e8 d6 00 00 00       	call   0xb8e
 ab8:	83 c4 10             	add    $0x10,%esp
 abb:	85 c0                	test   %eax,%eax
 abd:	78 24                	js     0xae3
 abf:	89 c3                	mov    %eax,%ebx
 ac1:	83 ec 08             	sub    $0x8,%esp
 ac4:	ff 75 0c             	push   0xc(%ebp)
 ac7:	50                   	push   %eax
 ac8:	e8 d9 00 00 00       	call   0xba6
 acd:	89 c6                	mov    %eax,%esi
 acf:	89 1c 24             	mov    %ebx,(%esp)
 ad2:	e8 9f 00 00 00       	call   0xb76
 ad7:	83 c4 10             	add    $0x10,%esp
 ada:	89 f0                	mov    %esi,%eax
 adc:	8d 65 f8             	lea    -0x8(%ebp),%esp
 adf:	5b                   	pop    %ebx
 ae0:	5e                   	pop    %esi
 ae1:	5d                   	pop    %ebp
 ae2:	c3                   	ret    
 ae3:	be ff ff ff ff       	mov    $0xffffffff,%esi
 ae8:	eb f0                	jmp    0xada
 aea:	55                   	push   %ebp
 aeb:	89 e5                	mov    %esp,%ebp
 aed:	53                   	push   %ebx
 aee:	8b 4d 08             	mov    0x8(%ebp),%ecx
 af1:	ba 00 00 00 00       	mov    $0x0,%edx
 af6:	eb 10                	jmp    0xb08
 af8:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 afb:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 afe:	83 c1 01             	add    $0x1,%ecx
 b01:	0f be c0             	movsbl %al,%eax
 b04:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 b08:	0f b6 01             	movzbl (%ecx),%eax
 b0b:	8d 58 d0             	lea    -0x30(%eax),%ebx
 b0e:	80 fb 09             	cmp    $0x9,%bl
 b11:	76 e5                	jbe    0xaf8
 b13:	89 d0                	mov    %edx,%eax
 b15:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 b18:	c9                   	leave  
 b19:	c3                   	ret    
 b1a:	55                   	push   %ebp
 b1b:	89 e5                	mov    %esp,%ebp
 b1d:	56                   	push   %esi
 b1e:	53                   	push   %ebx
 b1f:	8b 75 08             	mov    0x8(%ebp),%esi
 b22:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 b25:	8b 45 10             	mov    0x10(%ebp),%eax
 b28:	89 f2                	mov    %esi,%edx
 b2a:	eb 0d                	jmp    0xb39
 b2c:	0f b6 01             	movzbl (%ecx),%eax
 b2f:	88 02                	mov    %al,(%edx)
 b31:	8d 49 01             	lea    0x1(%ecx),%ecx
 b34:	8d 52 01             	lea    0x1(%edx),%edx
 b37:	89 d8                	mov    %ebx,%eax
 b39:	8d 58 ff             	lea    -0x1(%eax),%ebx
 b3c:	85 c0                	test   %eax,%eax
 b3e:	7f ec                	jg     0xb2c
 b40:	89 f0                	mov    %esi,%eax
 b42:	5b                   	pop    %ebx
 b43:	5e                   	pop    %esi
 b44:	5d                   	pop    %ebp
 b45:	c3                   	ret    
 b46:	b8 01 00 00 00       	mov    $0x1,%eax
 b4b:	cd 40                	int    $0x40
 b4d:	c3                   	ret    
 b4e:	b8 02 00 00 00       	mov    $0x2,%eax
 b53:	cd 40                	int    $0x40
 b55:	c3                   	ret    
 b56:	b8 03 00 00 00       	mov    $0x3,%eax
 b5b:	cd 40                	int    $0x40
 b5d:	c3                   	ret    
 b5e:	b8 04 00 00 00       	mov    $0x4,%eax
 b63:	cd 40                	int    $0x40
 b65:	c3                   	ret    
 b66:	b8 05 00 00 00       	mov    $0x5,%eax
 b6b:	cd 40                	int    $0x40
 b6d:	c3                   	ret    
 b6e:	b8 10 00 00 00       	mov    $0x10,%eax
 b73:	cd 40                	int    $0x40
 b75:	c3                   	ret    
 b76:	b8 15 00 00 00       	mov    $0x15,%eax
 b7b:	cd 40                	int    $0x40
 b7d:	c3                   	ret    
 b7e:	b8 06 00 00 00       	mov    $0x6,%eax
 b83:	cd 40                	int    $0x40
 b85:	c3                   	ret    
 b86:	b8 07 00 00 00       	mov    $0x7,%eax
 b8b:	cd 40                	int    $0x40
 b8d:	c3                   	ret    
 b8e:	b8 0f 00 00 00       	mov    $0xf,%eax
 b93:	cd 40                	int    $0x40
 b95:	c3                   	ret    
 b96:	b8 11 00 00 00       	mov    $0x11,%eax
 b9b:	cd 40                	int    $0x40
 b9d:	c3                   	ret    
 b9e:	b8 12 00 00 00       	mov    $0x12,%eax
 ba3:	cd 40                	int    $0x40
 ba5:	c3                   	ret    
 ba6:	b8 08 00 00 00       	mov    $0x8,%eax
 bab:	cd 40                	int    $0x40
 bad:	c3                   	ret    
 bae:	b8 13 00 00 00       	mov    $0x13,%eax
 bb3:	cd 40                	int    $0x40
 bb5:	c3                   	ret    
 bb6:	b8 14 00 00 00       	mov    $0x14,%eax
 bbb:	cd 40                	int    $0x40
 bbd:	c3                   	ret    
 bbe:	b8 09 00 00 00       	mov    $0x9,%eax
 bc3:	cd 40                	int    $0x40
 bc5:	c3                   	ret    
 bc6:	b8 0a 00 00 00       	mov    $0xa,%eax
 bcb:	cd 40                	int    $0x40
 bcd:	c3                   	ret    
 bce:	b8 0b 00 00 00       	mov    $0xb,%eax
 bd3:	cd 40                	int    $0x40
 bd5:	c3                   	ret    
 bd6:	b8 0c 00 00 00       	mov    $0xc,%eax
 bdb:	cd 40                	int    $0x40
 bdd:	c3                   	ret    
 bde:	b8 0d 00 00 00       	mov    $0xd,%eax
 be3:	cd 40                	int    $0x40
 be5:	c3                   	ret    
 be6:	b8 0e 00 00 00       	mov    $0xe,%eax
 beb:	cd 40                	int    $0x40
 bed:	c3                   	ret    
 bee:	b8 16 00 00 00       	mov    $0x16,%eax
 bf3:	cd 40                	int    $0x40
 bf5:	c3                   	ret    
 bf6:	55                   	push   %ebp
 bf7:	89 e5                	mov    %esp,%ebp
 bf9:	83 ec 1c             	sub    $0x1c,%esp
 bfc:	88 55 f4             	mov    %dl,-0xc(%ebp)
 bff:	6a 01                	push   $0x1
 c01:	8d 55 f4             	lea    -0xc(%ebp),%edx
 c04:	52                   	push   %edx
 c05:	50                   	push   %eax
 c06:	e8 63 ff ff ff       	call   0xb6e
 c0b:	83 c4 10             	add    $0x10,%esp
 c0e:	c9                   	leave  
 c0f:	c3                   	ret    
 c10:	55                   	push   %ebp
 c11:	89 e5                	mov    %esp,%ebp
 c13:	57                   	push   %edi
 c14:	56                   	push   %esi
 c15:	53                   	push   %ebx
 c16:	83 ec 2c             	sub    $0x2c,%esp
 c19:	89 45 d0             	mov    %eax,-0x30(%ebp)
 c1c:	89 d0                	mov    %edx,%eax
 c1e:	89 ce                	mov    %ecx,%esi
 c20:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 c24:	0f 95 c1             	setne  %cl
 c27:	c1 ea 1f             	shr    $0x1f,%edx
 c2a:	84 d1                	test   %dl,%cl
 c2c:	74 44                	je     0xc72
 c2e:	f7 d8                	neg    %eax
 c30:	89 c1                	mov    %eax,%ecx
 c32:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 c39:	bb 00 00 00 00       	mov    $0x0,%ebx
 c3e:	89 c8                	mov    %ecx,%eax
 c40:	ba 00 00 00 00       	mov    $0x0,%edx
 c45:	f7 f6                	div    %esi
 c47:	89 df                	mov    %ebx,%edi
 c49:	83 c3 01             	add    $0x1,%ebx
 c4c:	0f b6 92 90 10 00 00 	movzbl 0x1090(%edx),%edx
 c53:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 c57:	89 ca                	mov    %ecx,%edx
 c59:	89 c1                	mov    %eax,%ecx
 c5b:	39 d6                	cmp    %edx,%esi
 c5d:	76 df                	jbe    0xc3e
 c5f:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 c63:	74 31                	je     0xc96
 c65:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 c6a:	8d 5f 02             	lea    0x2(%edi),%ebx
 c6d:	8b 75 d0             	mov    -0x30(%ebp),%esi
 c70:	eb 17                	jmp    0xc89
 c72:	89 c1                	mov    %eax,%ecx
 c74:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 c7b:	eb bc                	jmp    0xc39
 c7d:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 c82:	89 f0                	mov    %esi,%eax
 c84:	e8 6d ff ff ff       	call   0xbf6
 c89:	83 eb 01             	sub    $0x1,%ebx
 c8c:	79 ef                	jns    0xc7d
 c8e:	83 c4 2c             	add    $0x2c,%esp
 c91:	5b                   	pop    %ebx
 c92:	5e                   	pop    %esi
 c93:	5f                   	pop    %edi
 c94:	5d                   	pop    %ebp
 c95:	c3                   	ret    
 c96:	8b 75 d0             	mov    -0x30(%ebp),%esi
 c99:	eb ee                	jmp    0xc89
 c9b:	55                   	push   %ebp
 c9c:	89 e5                	mov    %esp,%ebp
 c9e:	57                   	push   %edi
 c9f:	56                   	push   %esi
 ca0:	53                   	push   %ebx
 ca1:	83 ec 1c             	sub    $0x1c,%esp
 ca4:	8d 45 10             	lea    0x10(%ebp),%eax
 ca7:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 caa:	be 00 00 00 00       	mov    $0x0,%esi
 caf:	bb 00 00 00 00       	mov    $0x0,%ebx
 cb4:	eb 14                	jmp    0xcca
 cb6:	89 fa                	mov    %edi,%edx
 cb8:	8b 45 08             	mov    0x8(%ebp),%eax
 cbb:	e8 36 ff ff ff       	call   0xbf6
 cc0:	eb 05                	jmp    0xcc7
 cc2:	83 fe 25             	cmp    $0x25,%esi
 cc5:	74 25                	je     0xcec
 cc7:	83 c3 01             	add    $0x1,%ebx
 cca:	8b 45 0c             	mov    0xc(%ebp),%eax
 ccd:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 cd1:	84 c0                	test   %al,%al
 cd3:	0f 84 20 01 00 00    	je     0xdf9
 cd9:	0f be f8             	movsbl %al,%edi
 cdc:	0f b6 c0             	movzbl %al,%eax
 cdf:	85 f6                	test   %esi,%esi
 ce1:	75 df                	jne    0xcc2
 ce3:	83 f8 25             	cmp    $0x25,%eax
 ce6:	75 ce                	jne    0xcb6
 ce8:	89 c6                	mov    %eax,%esi
 cea:	eb db                	jmp    0xcc7
 cec:	83 f8 25             	cmp    $0x25,%eax
 cef:	0f 84 cf 00 00 00    	je     0xdc4
 cf5:	0f 8c dd 00 00 00    	jl     0xdd8
 cfb:	83 f8 78             	cmp    $0x78,%eax
 cfe:	0f 8f d4 00 00 00    	jg     0xdd8
 d04:	83 f8 63             	cmp    $0x63,%eax
 d07:	0f 8c cb 00 00 00    	jl     0xdd8
 d0d:	83 e8 63             	sub    $0x63,%eax
 d10:	83 f8 15             	cmp    $0x15,%eax
 d13:	0f 87 bf 00 00 00    	ja     0xdd8
 d19:	ff 24 85 38 10 00 00 	jmp    *0x1038(,%eax,4)
 d20:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 d23:	8b 17                	mov    (%edi),%edx
 d25:	83 ec 0c             	sub    $0xc,%esp
 d28:	6a 01                	push   $0x1
 d2a:	b9 0a 00 00 00       	mov    $0xa,%ecx
 d2f:	8b 45 08             	mov    0x8(%ebp),%eax
 d32:	e8 d9 fe ff ff       	call   0xc10
 d37:	83 c7 04             	add    $0x4,%edi
 d3a:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 d3d:	83 c4 10             	add    $0x10,%esp
 d40:	be 00 00 00 00       	mov    $0x0,%esi
 d45:	eb 80                	jmp    0xcc7
 d47:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 d4a:	8b 17                	mov    (%edi),%edx
 d4c:	83 ec 0c             	sub    $0xc,%esp
 d4f:	6a 00                	push   $0x0
 d51:	b9 10 00 00 00       	mov    $0x10,%ecx
 d56:	8b 45 08             	mov    0x8(%ebp),%eax
 d59:	e8 b2 fe ff ff       	call   0xc10
 d5e:	83 c7 04             	add    $0x4,%edi
 d61:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 d64:	83 c4 10             	add    $0x10,%esp
 d67:	be 00 00 00 00       	mov    $0x0,%esi
 d6c:	e9 56 ff ff ff       	jmp    0xcc7
 d71:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 d74:	8b 30                	mov    (%eax),%esi
 d76:	83 c0 04             	add    $0x4,%eax
 d79:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 d7c:	85 f6                	test   %esi,%esi
 d7e:	75 15                	jne    0xd95
 d80:	be 30 10 00 00       	mov    $0x1030,%esi
 d85:	eb 0e                	jmp    0xd95
 d87:	0f be d2             	movsbl %dl,%edx
 d8a:	8b 45 08             	mov    0x8(%ebp),%eax
 d8d:	e8 64 fe ff ff       	call   0xbf6
 d92:	83 c6 01             	add    $0x1,%esi
 d95:	0f b6 16             	movzbl (%esi),%edx
 d98:	84 d2                	test   %dl,%dl
 d9a:	75 eb                	jne    0xd87
 d9c:	be 00 00 00 00       	mov    $0x0,%esi
 da1:	e9 21 ff ff ff       	jmp    0xcc7
 da6:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 da9:	0f be 17             	movsbl (%edi),%edx
 dac:	8b 45 08             	mov    0x8(%ebp),%eax
 daf:	e8 42 fe ff ff       	call   0xbf6
 db4:	83 c7 04             	add    $0x4,%edi
 db7:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 dba:	be 00 00 00 00       	mov    $0x0,%esi
 dbf:	e9 03 ff ff ff       	jmp    0xcc7
 dc4:	89 fa                	mov    %edi,%edx
 dc6:	8b 45 08             	mov    0x8(%ebp),%eax
 dc9:	e8 28 fe ff ff       	call   0xbf6
 dce:	be 00 00 00 00       	mov    $0x0,%esi
 dd3:	e9 ef fe ff ff       	jmp    0xcc7
 dd8:	ba 25 00 00 00       	mov    $0x25,%edx
 ddd:	8b 45 08             	mov    0x8(%ebp),%eax
 de0:	e8 11 fe ff ff       	call   0xbf6
 de5:	89 fa                	mov    %edi,%edx
 de7:	8b 45 08             	mov    0x8(%ebp),%eax
 dea:	e8 07 fe ff ff       	call   0xbf6
 def:	be 00 00 00 00       	mov    $0x0,%esi
 df4:	e9 ce fe ff ff       	jmp    0xcc7
 df9:	8d 65 f4             	lea    -0xc(%ebp),%esp
 dfc:	5b                   	pop    %ebx
 dfd:	5e                   	pop    %esi
 dfe:	5f                   	pop    %edi
 dff:	5d                   	pop    %ebp
 e00:	c3                   	ret    
 e01:	55                   	push   %ebp
 e02:	89 e5                	mov    %esp,%ebp
 e04:	57                   	push   %edi
 e05:	56                   	push   %esi
 e06:	53                   	push   %ebx
 e07:	8b 5d 08             	mov    0x8(%ebp),%ebx
 e0a:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 e0d:	a1 84 16 00 00       	mov    0x1684,%eax
 e12:	eb 02                	jmp    0xe16
 e14:	89 d0                	mov    %edx,%eax
 e16:	39 c8                	cmp    %ecx,%eax
 e18:	73 04                	jae    0xe1e
 e1a:	39 08                	cmp    %ecx,(%eax)
 e1c:	77 12                	ja     0xe30
 e1e:	8b 10                	mov    (%eax),%edx
 e20:	39 c2                	cmp    %eax,%edx
 e22:	77 f0                	ja     0xe14
 e24:	39 c8                	cmp    %ecx,%eax
 e26:	72 08                	jb     0xe30
 e28:	39 ca                	cmp    %ecx,%edx
 e2a:	77 04                	ja     0xe30
 e2c:	89 d0                	mov    %edx,%eax
 e2e:	eb e6                	jmp    0xe16
 e30:	8b 73 fc             	mov    -0x4(%ebx),%esi
 e33:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 e36:	8b 10                	mov    (%eax),%edx
 e38:	39 d7                	cmp    %edx,%edi
 e3a:	74 19                	je     0xe55
 e3c:	89 53 f8             	mov    %edx,-0x8(%ebx)
 e3f:	8b 50 04             	mov    0x4(%eax),%edx
 e42:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 e45:	39 ce                	cmp    %ecx,%esi
 e47:	74 1b                	je     0xe64
 e49:	89 08                	mov    %ecx,(%eax)
 e4b:	a3 84 16 00 00       	mov    %eax,0x1684
 e50:	5b                   	pop    %ebx
 e51:	5e                   	pop    %esi
 e52:	5f                   	pop    %edi
 e53:	5d                   	pop    %ebp
 e54:	c3                   	ret    
 e55:	03 72 04             	add    0x4(%edx),%esi
 e58:	89 73 fc             	mov    %esi,-0x4(%ebx)
 e5b:	8b 10                	mov    (%eax),%edx
 e5d:	8b 12                	mov    (%edx),%edx
 e5f:	89 53 f8             	mov    %edx,-0x8(%ebx)
 e62:	eb db                	jmp    0xe3f
 e64:	03 53 fc             	add    -0x4(%ebx),%edx
 e67:	89 50 04             	mov    %edx,0x4(%eax)
 e6a:	8b 53 f8             	mov    -0x8(%ebx),%edx
 e6d:	89 10                	mov    %edx,(%eax)
 e6f:	eb da                	jmp    0xe4b
 e71:	55                   	push   %ebp
 e72:	89 e5                	mov    %esp,%ebp
 e74:	53                   	push   %ebx
 e75:	83 ec 04             	sub    $0x4,%esp
 e78:	89 c3                	mov    %eax,%ebx
 e7a:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 e7f:	77 05                	ja     0xe86
 e81:	bb 00 10 00 00       	mov    $0x1000,%ebx
 e86:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 e8d:	83 ec 0c             	sub    $0xc,%esp
 e90:	50                   	push   %eax
 e91:	e8 40 fd ff ff       	call   0xbd6
 e96:	83 c4 10             	add    $0x10,%esp
 e99:	83 f8 ff             	cmp    $0xffffffff,%eax
 e9c:	74 1c                	je     0xeba
 e9e:	89 58 04             	mov    %ebx,0x4(%eax)
 ea1:	83 c0 08             	add    $0x8,%eax
 ea4:	83 ec 0c             	sub    $0xc,%esp
 ea7:	50                   	push   %eax
 ea8:	e8 54 ff ff ff       	call   0xe01
 ead:	a1 84 16 00 00       	mov    0x1684,%eax
 eb2:	83 c4 10             	add    $0x10,%esp
 eb5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 eb8:	c9                   	leave  
 eb9:	c3                   	ret    
 eba:	b8 00 00 00 00       	mov    $0x0,%eax
 ebf:	eb f4                	jmp    0xeb5
 ec1:	55                   	push   %ebp
 ec2:	89 e5                	mov    %esp,%ebp
 ec4:	53                   	push   %ebx
 ec5:	83 ec 04             	sub    $0x4,%esp
 ec8:	8b 45 08             	mov    0x8(%ebp),%eax
 ecb:	8d 58 07             	lea    0x7(%eax),%ebx
 ece:	c1 eb 03             	shr    $0x3,%ebx
 ed1:	83 c3 01             	add    $0x1,%ebx
 ed4:	8b 0d 84 16 00 00    	mov    0x1684,%ecx
 eda:	85 c9                	test   %ecx,%ecx
 edc:	74 04                	je     0xee2
 ede:	8b 01                	mov    (%ecx),%eax
 ee0:	eb 4a                	jmp    0xf2c
 ee2:	c7 05 84 16 00 00 88 	movl   $0x1688,0x1684
 ee9:	16 00 00 
 eec:	c7 05 88 16 00 00 88 	movl   $0x1688,0x1688
 ef3:	16 00 00 
 ef6:	c7 05 8c 16 00 00 00 	movl   $0x0,0x168c
 efd:	00 00 00 
 f00:	b9 88 16 00 00       	mov    $0x1688,%ecx
 f05:	eb d7                	jmp    0xede
 f07:	74 19                	je     0xf22
 f09:	29 da                	sub    %ebx,%edx
 f0b:	89 50 04             	mov    %edx,0x4(%eax)
 f0e:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 f11:	89 58 04             	mov    %ebx,0x4(%eax)
 f14:	89 0d 84 16 00 00    	mov    %ecx,0x1684
 f1a:	83 c0 08             	add    $0x8,%eax
 f1d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 f20:	c9                   	leave  
 f21:	c3                   	ret    
 f22:	8b 10                	mov    (%eax),%edx
 f24:	89 11                	mov    %edx,(%ecx)
 f26:	eb ec                	jmp    0xf14
 f28:	89 c1                	mov    %eax,%ecx
 f2a:	8b 00                	mov    (%eax),%eax
 f2c:	8b 50 04             	mov    0x4(%eax),%edx
 f2f:	39 da                	cmp    %ebx,%edx
 f31:	73 d4                	jae    0xf07
 f33:	39 05 84 16 00 00    	cmp    %eax,0x1684
 f39:	75 ed                	jne    0xf28
 f3b:	89 d8                	mov    %ebx,%eax
 f3d:	e8 2f ff ff ff       	call   0xe71
 f42:	85 c0                	test   %eax,%eax
 f44:	75 e2                	jne    0xf28
 f46:	eb d5                	jmp    0xf1d
