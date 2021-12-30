
_dup2test:     file format elf32-i386


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
  12:	6a 08                	push   $0x8
  14:	6a ff                	push   $0xffffffff
  16:	e8 9f 05 00 00       	call   0x5ba
  1b:	83 c4 10             	add    $0x10,%esp
  1e:	85 c0                	test   %eax,%eax
  20:	0f 89 ed 01 00 00    	jns    0x213
  26:	83 ec 08             	sub    $0x8,%esp
  29:	6a ff                	push   $0xffffffff
  2b:	6a 01                	push   $0x1
  2d:	e8 88 05 00 00       	call   0x5ba
  32:	83 c4 10             	add    $0x10,%esp
  35:	85 c0                	test   %eax,%eax
  37:	0f 89 ed 01 00 00    	jns    0x22a
  3d:	83 ec 08             	sub    $0x8,%esp
  40:	6a 08                	push   $0x8
  42:	6a 06                	push   $0x6
  44:	e8 71 05 00 00       	call   0x5ba
  49:	83 c4 10             	add    $0x10,%esp
  4c:	85 c0                	test   %eax,%eax
  4e:	0f 89 ed 01 00 00    	jns    0x241
  54:	83 ec 08             	sub    $0x8,%esp
  57:	6a 01                	push   $0x1
  59:	6a 08                	push   $0x8
  5b:	e8 5a 05 00 00       	call   0x5ba
  60:	83 c4 10             	add    $0x10,%esp
  63:	85 c0                	test   %eax,%eax
  65:	0f 89 ed 01 00 00    	jns    0x258
  6b:	83 ec 08             	sub    $0x8,%esp
  6e:	6a 19                	push   $0x19
  70:	6a 01                	push   $0x1
  72:	e8 43 05 00 00       	call   0x5ba
  77:	83 c4 10             	add    $0x10,%esp
  7a:	85 c0                	test   %eax,%eax
  7c:	0f 89 ed 01 00 00    	jns    0x26f
  82:	83 ec 08             	sub    $0x8,%esp
  85:	6a 04                	push   $0x4
  87:	6a 01                	push   $0x1
  89:	e8 2c 05 00 00       	call   0x5ba
  8e:	83 c4 10             	add    $0x10,%esp
  91:	83 f8 04             	cmp    $0x4,%eax
  94:	0f 85 ec 01 00 00    	jne    0x286
  9a:	83 ec 08             	sub    $0x8,%esp
  9d:	68 18 0a 00 00       	push   $0xa18
  a2:	6a 04                	push   $0x4
  a4:	e8 be 05 00 00       	call   0x667
  a9:	83 c4 08             	add    $0x8,%esp
  ac:	6a 06                	push   $0x6
  ae:	6a 04                	push   $0x4
  b0:	e8 05 05 00 00       	call   0x5ba
  b5:	83 c4 10             	add    $0x10,%esp
  b8:	83 f8 06             	cmp    $0x6,%eax
  bb:	0f 85 dc 01 00 00    	jne    0x29d
  c1:	83 ec 08             	sub    $0x8,%esp
  c4:	68 68 0a 00 00       	push   $0xa68
  c9:	6a 06                	push   $0x6
  cb:	e8 97 05 00 00       	call   0x667
  d0:	c7 04 24 04 00 00 00 	movl   $0x4,(%esp)
  d7:	e8 5e 04 00 00       	call   0x53a
  dc:	83 c4 10             	add    $0x10,%esp
  df:	85 c0                	test   %eax,%eax
  e1:	0f 85 cd 01 00 00    	jne    0x2b4
  e7:	83 ec 08             	sub    $0x8,%esp
  ea:	68 94 0a 00 00       	push   $0xa94
  ef:	6a 06                	push   $0x6
  f1:	e8 71 05 00 00       	call   0x667
  f6:	c7 04 24 06 00 00 00 	movl   $0x6,(%esp)
  fd:	e8 38 04 00 00       	call   0x53a
 102:	83 c4 10             	add    $0x10,%esp
 105:	85 c0                	test   %eax,%eax
 107:	0f 85 be 01 00 00    	jne    0x2cb
 10d:	83 ec 0c             	sub    $0xc,%esp
 110:	6a 06                	push   $0x6
 112:	e8 23 04 00 00       	call   0x53a
 117:	83 c4 10             	add    $0x10,%esp
 11a:	85 c0                	test   %eax,%eax
 11c:	0f 84 c0 01 00 00    	je     0x2e2
 122:	83 ec 08             	sub    $0x8,%esp
 125:	68 02 02 00 00       	push   $0x202
 12a:	68 74 0b 00 00       	push   $0xb74
 12f:	e8 1e 04 00 00       	call   0x552
 134:	89 c3                	mov    %eax,%ebx
 136:	83 c4 08             	add    $0x8,%esp
 139:	68 87 0b 00 00       	push   $0xb87
 13e:	50                   	push   %eax
 13f:	e8 23 05 00 00       	call   0x667
 144:	83 c4 08             	add    $0x8,%esp
 147:	6a 09                	push   $0x9
 149:	53                   	push   %ebx
 14a:	e8 6b 04 00 00       	call   0x5ba
 14f:	83 c4 10             	add    $0x10,%esp
 152:	83 f8 09             	cmp    $0x9,%eax
 155:	0f 85 9e 01 00 00    	jne    0x2f9
 15b:	83 ec 08             	sub    $0x8,%esp
 15e:	68 99 0b 00 00       	push   $0xb99
 163:	6a 09                	push   $0x9
 165:	e8 fd 04 00 00       	call   0x667
 16a:	83 c4 08             	add    $0x8,%esp
 16d:	6a 09                	push   $0x9
 16f:	6a 09                	push   $0x9
 171:	e8 44 04 00 00       	call   0x5ba
 176:	83 c4 10             	add    $0x10,%esp
 179:	83 f8 09             	cmp    $0x9,%eax
 17c:	0f 85 8e 01 00 00    	jne    0x310
 182:	83 ec 08             	sub    $0x8,%esp
 185:	68 99 0b 00 00       	push   $0xb99
 18a:	6a 09                	push   $0x9
 18c:	e8 d6 04 00 00       	call   0x667
 191:	c7 04 24 09 00 00 00 	movl   $0x9,(%esp)
 198:	e8 9d 03 00 00       	call   0x53a
 19d:	83 c4 08             	add    $0x8,%esp
 1a0:	6a 06                	push   $0x6
 1a2:	6a 01                	push   $0x1
 1a4:	e8 11 04 00 00       	call   0x5ba
 1a9:	83 c4 08             	add    $0x8,%esp
 1ac:	6a 01                	push   $0x1
 1ae:	53                   	push   %ebx
 1af:	e8 06 04 00 00       	call   0x5ba
 1b4:	83 c4 10             	add    $0x10,%esp
 1b7:	83 f8 01             	cmp    $0x1,%eax
 1ba:	0f 85 67 01 00 00    	jne    0x327
 1c0:	83 ec 08             	sub    $0x8,%esp
 1c3:	68 b5 0b 00 00       	push   $0xbb5
 1c8:	6a 01                	push   $0x1
 1ca:	e8 98 04 00 00       	call   0x667
 1cf:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 1d6:	e8 5f 03 00 00       	call   0x53a
 1db:	83 c4 10             	add    $0x10,%esp
 1de:	85 c0                	test   %eax,%eax
 1e0:	0f 85 58 01 00 00    	jne    0x33e
 1e6:	83 ec 08             	sub    $0x8,%esp
 1e9:	53                   	push   %ebx
 1ea:	6a 06                	push   $0x6
 1ec:	e8 c9 03 00 00       	call   0x5ba
 1f1:	83 c4 08             	add    $0x8,%esp
 1f4:	68 18 0a 00 00       	push   $0xa18
 1f9:	53                   	push   %ebx
 1fa:	e8 68 04 00 00       	call   0x667
 1ff:	89 1c 24             	mov    %ebx,(%esp)
 202:	e8 33 03 00 00       	call   0x53a
 207:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 20e:	e8 ff 02 00 00       	call   0x512
 213:	83 ec 08             	sub    $0x8,%esp
 216:	68 20 09 00 00       	push   $0x920
 21b:	6a 02                	push   $0x2
 21d:	e8 45 04 00 00       	call   0x667
 222:	83 c4 10             	add    $0x10,%esp
 225:	e9 fc fd ff ff       	jmp    0x26
 22a:	83 ec 08             	sub    $0x8,%esp
 22d:	68 48 09 00 00       	push   $0x948
 232:	6a 02                	push   $0x2
 234:	e8 2e 04 00 00       	call   0x667
 239:	83 c4 10             	add    $0x10,%esp
 23c:	e9 fc fd ff ff       	jmp    0x3d
 241:	83 ec 08             	sub    $0x8,%esp
 244:	68 74 09 00 00       	push   $0x974
 249:	6a 02                	push   $0x2
 24b:	e8 17 04 00 00       	call   0x667
 250:	83 c4 10             	add    $0x10,%esp
 253:	e9 fc fd ff ff       	jmp    0x54
 258:	83 ec 08             	sub    $0x8,%esp
 25b:	68 9c 09 00 00       	push   $0x99c
 260:	6a 02                	push   $0x2
 262:	e8 00 04 00 00       	call   0x667
 267:	83 c4 10             	add    $0x10,%esp
 26a:	e9 fc fd ff ff       	jmp    0x6b
 26f:	83 ec 08             	sub    $0x8,%esp
 272:	68 c8 09 00 00       	push   $0x9c8
 277:	6a 02                	push   $0x2
 279:	e8 e9 03 00 00       	call   0x667
 27e:	83 c4 10             	add    $0x10,%esp
 281:	e9 fc fd ff ff       	jmp    0x82
 286:	83 ec 08             	sub    $0x8,%esp
 289:	68 f4 09 00 00       	push   $0x9f4
 28e:	6a 02                	push   $0x2
 290:	e8 d2 03 00 00       	call   0x667
 295:	83 c4 10             	add    $0x10,%esp
 298:	e9 fd fd ff ff       	jmp    0x9a
 29d:	83 ec 08             	sub    $0x8,%esp
 2a0:	68 40 0a 00 00       	push   $0xa40
 2a5:	6a 02                	push   $0x2
 2a7:	e8 bb 03 00 00       	call   0x667
 2ac:	83 c4 10             	add    $0x10,%esp
 2af:	e9 0d fe ff ff       	jmp    0xc1
 2b4:	83 ec 08             	sub    $0x8,%esp
 2b7:	68 34 0b 00 00       	push   $0xb34
 2bc:	6a 02                	push   $0x2
 2be:	e8 a4 03 00 00       	call   0x667
 2c3:	83 c4 10             	add    $0x10,%esp
 2c6:	e9 1c fe ff ff       	jmp    0xe7
 2cb:	83 ec 08             	sub    $0x8,%esp
 2ce:	68 48 0b 00 00       	push   $0xb48
 2d3:	6a 02                	push   $0x2
 2d5:	e8 8d 03 00 00       	call   0x667
 2da:	83 c4 10             	add    $0x10,%esp
 2dd:	e9 2b fe ff ff       	jmp    0x10d
 2e2:	83 ec 08             	sub    $0x8,%esp
 2e5:	68 5c 0b 00 00       	push   $0xb5c
 2ea:	6a 02                	push   $0x2
 2ec:	e8 76 03 00 00       	call   0x667
 2f1:	83 c4 10             	add    $0x10,%esp
 2f4:	e9 29 fe ff ff       	jmp    0x122
 2f9:	83 ec 08             	sub    $0x8,%esp
 2fc:	68 c0 0a 00 00       	push   $0xac0
 301:	6a 02                	push   $0x2
 303:	e8 5f 03 00 00       	call   0x667
 308:	83 c4 10             	add    $0x10,%esp
 30b:	e9 4b fe ff ff       	jmp    0x15b
 310:	83 ec 08             	sub    $0x8,%esp
 313:	68 e8 0a 00 00       	push   $0xae8
 318:	6a 02                	push   $0x2
 31a:	e8 48 03 00 00       	call   0x667
 31f:	83 c4 10             	add    $0x10,%esp
 322:	e9 5b fe ff ff       	jmp    0x182
 327:	83 ec 08             	sub    $0x8,%esp
 32a:	68 0c 0b 00 00       	push   $0xb0c
 32f:	6a 02                	push   $0x2
 331:	e8 31 03 00 00       	call   0x667
 336:	83 c4 10             	add    $0x10,%esp
 339:	e9 82 fe ff ff       	jmp    0x1c0
 33e:	83 ec 08             	sub    $0x8,%esp
 341:	68 cf 0b 00 00       	push   $0xbcf
 346:	6a 02                	push   $0x2
 348:	e8 1a 03 00 00       	call   0x667
 34d:	83 c4 10             	add    $0x10,%esp
 350:	e9 91 fe ff ff       	jmp    0x1e6
 355:	f3 0f 1e fb          	endbr32 
 359:	55                   	push   %ebp
 35a:	89 e5                	mov    %esp,%ebp
 35c:	56                   	push   %esi
 35d:	53                   	push   %ebx
 35e:	8b 75 08             	mov    0x8(%ebp),%esi
 361:	8b 55 0c             	mov    0xc(%ebp),%edx
 364:	89 f0                	mov    %esi,%eax
 366:	89 d1                	mov    %edx,%ecx
 368:	83 c2 01             	add    $0x1,%edx
 36b:	89 c3                	mov    %eax,%ebx
 36d:	83 c0 01             	add    $0x1,%eax
 370:	0f b6 09             	movzbl (%ecx),%ecx
 373:	88 0b                	mov    %cl,(%ebx)
 375:	84 c9                	test   %cl,%cl
 377:	75 ed                	jne    0x366
 379:	89 f0                	mov    %esi,%eax
 37b:	5b                   	pop    %ebx
 37c:	5e                   	pop    %esi
 37d:	5d                   	pop    %ebp
 37e:	c3                   	ret    
 37f:	f3 0f 1e fb          	endbr32 
 383:	55                   	push   %ebp
 384:	89 e5                	mov    %esp,%ebp
 386:	8b 4d 08             	mov    0x8(%ebp),%ecx
 389:	8b 55 0c             	mov    0xc(%ebp),%edx
 38c:	0f b6 01             	movzbl (%ecx),%eax
 38f:	84 c0                	test   %al,%al
 391:	74 0c                	je     0x39f
 393:	3a 02                	cmp    (%edx),%al
 395:	75 08                	jne    0x39f
 397:	83 c1 01             	add    $0x1,%ecx
 39a:	83 c2 01             	add    $0x1,%edx
 39d:	eb ed                	jmp    0x38c
 39f:	0f b6 c0             	movzbl %al,%eax
 3a2:	0f b6 12             	movzbl (%edx),%edx
 3a5:	29 d0                	sub    %edx,%eax
 3a7:	5d                   	pop    %ebp
 3a8:	c3                   	ret    
 3a9:	f3 0f 1e fb          	endbr32 
 3ad:	55                   	push   %ebp
 3ae:	89 e5                	mov    %esp,%ebp
 3b0:	8b 4d 08             	mov    0x8(%ebp),%ecx
 3b3:	b8 00 00 00 00       	mov    $0x0,%eax
 3b8:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
 3bc:	74 05                	je     0x3c3
 3be:	83 c0 01             	add    $0x1,%eax
 3c1:	eb f5                	jmp    0x3b8
 3c3:	5d                   	pop    %ebp
 3c4:	c3                   	ret    
 3c5:	f3 0f 1e fb          	endbr32 
 3c9:	55                   	push   %ebp
 3ca:	89 e5                	mov    %esp,%ebp
 3cc:	57                   	push   %edi
 3cd:	8b 55 08             	mov    0x8(%ebp),%edx
 3d0:	89 d7                	mov    %edx,%edi
 3d2:	8b 4d 10             	mov    0x10(%ebp),%ecx
 3d5:	8b 45 0c             	mov    0xc(%ebp),%eax
 3d8:	fc                   	cld    
 3d9:	f3 aa                	rep stos %al,%es:(%edi)
 3db:	89 d0                	mov    %edx,%eax
 3dd:	5f                   	pop    %edi
 3de:	5d                   	pop    %ebp
 3df:	c3                   	ret    
 3e0:	f3 0f 1e fb          	endbr32 
 3e4:	55                   	push   %ebp
 3e5:	89 e5                	mov    %esp,%ebp
 3e7:	8b 45 08             	mov    0x8(%ebp),%eax
 3ea:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
 3ee:	0f b6 10             	movzbl (%eax),%edx
 3f1:	84 d2                	test   %dl,%dl
 3f3:	74 09                	je     0x3fe
 3f5:	38 ca                	cmp    %cl,%dl
 3f7:	74 0a                	je     0x403
 3f9:	83 c0 01             	add    $0x1,%eax
 3fc:	eb f0                	jmp    0x3ee
 3fe:	b8 00 00 00 00       	mov    $0x0,%eax
 403:	5d                   	pop    %ebp
 404:	c3                   	ret    
 405:	f3 0f 1e fb          	endbr32 
 409:	55                   	push   %ebp
 40a:	89 e5                	mov    %esp,%ebp
 40c:	57                   	push   %edi
 40d:	56                   	push   %esi
 40e:	53                   	push   %ebx
 40f:	83 ec 1c             	sub    $0x1c,%esp
 412:	8b 7d 08             	mov    0x8(%ebp),%edi
 415:	bb 00 00 00 00       	mov    $0x0,%ebx
 41a:	89 de                	mov    %ebx,%esi
 41c:	83 c3 01             	add    $0x1,%ebx
 41f:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 422:	7d 2e                	jge    0x452
 424:	83 ec 04             	sub    $0x4,%esp
 427:	6a 01                	push   $0x1
 429:	8d 45 e7             	lea    -0x19(%ebp),%eax
 42c:	50                   	push   %eax
 42d:	6a 00                	push   $0x0
 42f:	e8 f6 00 00 00       	call   0x52a
 434:	83 c4 10             	add    $0x10,%esp
 437:	85 c0                	test   %eax,%eax
 439:	7e 17                	jle    0x452
 43b:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 43f:	88 04 37             	mov    %al,(%edi,%esi,1)
 442:	3c 0a                	cmp    $0xa,%al
 444:	0f 94 c2             	sete   %dl
 447:	3c 0d                	cmp    $0xd,%al
 449:	0f 94 c0             	sete   %al
 44c:	08 c2                	or     %al,%dl
 44e:	74 ca                	je     0x41a
 450:	89 de                	mov    %ebx,%esi
 452:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 456:	89 f8                	mov    %edi,%eax
 458:	8d 65 f4             	lea    -0xc(%ebp),%esp
 45b:	5b                   	pop    %ebx
 45c:	5e                   	pop    %esi
 45d:	5f                   	pop    %edi
 45e:	5d                   	pop    %ebp
 45f:	c3                   	ret    
 460:	f3 0f 1e fb          	endbr32 
 464:	55                   	push   %ebp
 465:	89 e5                	mov    %esp,%ebp
 467:	56                   	push   %esi
 468:	53                   	push   %ebx
 469:	83 ec 08             	sub    $0x8,%esp
 46c:	6a 00                	push   $0x0
 46e:	ff 75 08             	push   0x8(%ebp)
 471:	e8 dc 00 00 00       	call   0x552
 476:	83 c4 10             	add    $0x10,%esp
 479:	85 c0                	test   %eax,%eax
 47b:	78 24                	js     0x4a1
 47d:	89 c3                	mov    %eax,%ebx
 47f:	83 ec 08             	sub    $0x8,%esp
 482:	ff 75 0c             	push   0xc(%ebp)
 485:	50                   	push   %eax
 486:	e8 df 00 00 00       	call   0x56a
 48b:	89 c6                	mov    %eax,%esi
 48d:	89 1c 24             	mov    %ebx,(%esp)
 490:	e8 a5 00 00 00       	call   0x53a
 495:	83 c4 10             	add    $0x10,%esp
 498:	89 f0                	mov    %esi,%eax
 49a:	8d 65 f8             	lea    -0x8(%ebp),%esp
 49d:	5b                   	pop    %ebx
 49e:	5e                   	pop    %esi
 49f:	5d                   	pop    %ebp
 4a0:	c3                   	ret    
 4a1:	be ff ff ff ff       	mov    $0xffffffff,%esi
 4a6:	eb f0                	jmp    0x498
 4a8:	f3 0f 1e fb          	endbr32 
 4ac:	55                   	push   %ebp
 4ad:	89 e5                	mov    %esp,%ebp
 4af:	53                   	push   %ebx
 4b0:	8b 4d 08             	mov    0x8(%ebp),%ecx
 4b3:	ba 00 00 00 00       	mov    $0x0,%edx
 4b8:	0f b6 01             	movzbl (%ecx),%eax
 4bb:	8d 58 d0             	lea    -0x30(%eax),%ebx
 4be:	80 fb 09             	cmp    $0x9,%bl
 4c1:	77 12                	ja     0x4d5
 4c3:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 4c6:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 4c9:	83 c1 01             	add    $0x1,%ecx
 4cc:	0f be c0             	movsbl %al,%eax
 4cf:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 4d3:	eb e3                	jmp    0x4b8
 4d5:	89 d0                	mov    %edx,%eax
 4d7:	5b                   	pop    %ebx
 4d8:	5d                   	pop    %ebp
 4d9:	c3                   	ret    
 4da:	f3 0f 1e fb          	endbr32 
 4de:	55                   	push   %ebp
 4df:	89 e5                	mov    %esp,%ebp
 4e1:	56                   	push   %esi
 4e2:	53                   	push   %ebx
 4e3:	8b 75 08             	mov    0x8(%ebp),%esi
 4e6:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 4e9:	8b 45 10             	mov    0x10(%ebp),%eax
 4ec:	89 f2                	mov    %esi,%edx
 4ee:	8d 58 ff             	lea    -0x1(%eax),%ebx
 4f1:	85 c0                	test   %eax,%eax
 4f3:	7e 0f                	jle    0x504
 4f5:	0f b6 01             	movzbl (%ecx),%eax
 4f8:	88 02                	mov    %al,(%edx)
 4fa:	8d 49 01             	lea    0x1(%ecx),%ecx
 4fd:	8d 52 01             	lea    0x1(%edx),%edx
 500:	89 d8                	mov    %ebx,%eax
 502:	eb ea                	jmp    0x4ee
 504:	89 f0                	mov    %esi,%eax
 506:	5b                   	pop    %ebx
 507:	5e                   	pop    %esi
 508:	5d                   	pop    %ebp
 509:	c3                   	ret    
 50a:	b8 01 00 00 00       	mov    $0x1,%eax
 50f:	cd 40                	int    $0x40
 511:	c3                   	ret    
 512:	b8 02 00 00 00       	mov    $0x2,%eax
 517:	cd 40                	int    $0x40
 519:	c3                   	ret    
 51a:	b8 03 00 00 00       	mov    $0x3,%eax
 51f:	cd 40                	int    $0x40
 521:	c3                   	ret    
 522:	b8 04 00 00 00       	mov    $0x4,%eax
 527:	cd 40                	int    $0x40
 529:	c3                   	ret    
 52a:	b8 05 00 00 00       	mov    $0x5,%eax
 52f:	cd 40                	int    $0x40
 531:	c3                   	ret    
 532:	b8 10 00 00 00       	mov    $0x10,%eax
 537:	cd 40                	int    $0x40
 539:	c3                   	ret    
 53a:	b8 15 00 00 00       	mov    $0x15,%eax
 53f:	cd 40                	int    $0x40
 541:	c3                   	ret    
 542:	b8 06 00 00 00       	mov    $0x6,%eax
 547:	cd 40                	int    $0x40
 549:	c3                   	ret    
 54a:	b8 07 00 00 00       	mov    $0x7,%eax
 54f:	cd 40                	int    $0x40
 551:	c3                   	ret    
 552:	b8 0f 00 00 00       	mov    $0xf,%eax
 557:	cd 40                	int    $0x40
 559:	c3                   	ret    
 55a:	b8 11 00 00 00       	mov    $0x11,%eax
 55f:	cd 40                	int    $0x40
 561:	c3                   	ret    
 562:	b8 12 00 00 00       	mov    $0x12,%eax
 567:	cd 40                	int    $0x40
 569:	c3                   	ret    
 56a:	b8 08 00 00 00       	mov    $0x8,%eax
 56f:	cd 40                	int    $0x40
 571:	c3                   	ret    
 572:	b8 13 00 00 00       	mov    $0x13,%eax
 577:	cd 40                	int    $0x40
 579:	c3                   	ret    
 57a:	b8 14 00 00 00       	mov    $0x14,%eax
 57f:	cd 40                	int    $0x40
 581:	c3                   	ret    
 582:	b8 09 00 00 00       	mov    $0x9,%eax
 587:	cd 40                	int    $0x40
 589:	c3                   	ret    
 58a:	b8 0a 00 00 00       	mov    $0xa,%eax
 58f:	cd 40                	int    $0x40
 591:	c3                   	ret    
 592:	b8 0b 00 00 00       	mov    $0xb,%eax
 597:	cd 40                	int    $0x40
 599:	c3                   	ret    
 59a:	b8 0c 00 00 00       	mov    $0xc,%eax
 59f:	cd 40                	int    $0x40
 5a1:	c3                   	ret    
 5a2:	b8 0d 00 00 00       	mov    $0xd,%eax
 5a7:	cd 40                	int    $0x40
 5a9:	c3                   	ret    
 5aa:	b8 0e 00 00 00       	mov    $0xe,%eax
 5af:	cd 40                	int    $0x40
 5b1:	c3                   	ret    
 5b2:	b8 16 00 00 00       	mov    $0x16,%eax
 5b7:	cd 40                	int    $0x40
 5b9:	c3                   	ret    
 5ba:	b8 17 00 00 00       	mov    $0x17,%eax
 5bf:	cd 40                	int    $0x40
 5c1:	c3                   	ret    
 5c2:	55                   	push   %ebp
 5c3:	89 e5                	mov    %esp,%ebp
 5c5:	83 ec 1c             	sub    $0x1c,%esp
 5c8:	88 55 f4             	mov    %dl,-0xc(%ebp)
 5cb:	6a 01                	push   $0x1
 5cd:	8d 55 f4             	lea    -0xc(%ebp),%edx
 5d0:	52                   	push   %edx
 5d1:	50                   	push   %eax
 5d2:	e8 5b ff ff ff       	call   0x532
 5d7:	83 c4 10             	add    $0x10,%esp
 5da:	c9                   	leave  
 5db:	c3                   	ret    
 5dc:	55                   	push   %ebp
 5dd:	89 e5                	mov    %esp,%ebp
 5df:	57                   	push   %edi
 5e0:	56                   	push   %esi
 5e1:	53                   	push   %ebx
 5e2:	83 ec 2c             	sub    $0x2c,%esp
 5e5:	89 45 d0             	mov    %eax,-0x30(%ebp)
 5e8:	89 d0                	mov    %edx,%eax
 5ea:	89 ce                	mov    %ecx,%esi
 5ec:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 5f0:	0f 95 c1             	setne  %cl
 5f3:	c1 ea 1f             	shr    $0x1f,%edx
 5f6:	84 d1                	test   %dl,%cl
 5f8:	74 44                	je     0x63e
 5fa:	f7 d8                	neg    %eax
 5fc:	89 c1                	mov    %eax,%ecx
 5fe:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 605:	bb 00 00 00 00       	mov    $0x0,%ebx
 60a:	89 c8                	mov    %ecx,%eax
 60c:	ba 00 00 00 00       	mov    $0x0,%edx
 611:	f7 f6                	div    %esi
 613:	89 df                	mov    %ebx,%edi
 615:	83 c3 01             	add    $0x1,%ebx
 618:	0f b6 92 44 0c 00 00 	movzbl 0xc44(%edx),%edx
 61f:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 623:	89 ca                	mov    %ecx,%edx
 625:	89 c1                	mov    %eax,%ecx
 627:	39 d6                	cmp    %edx,%esi
 629:	76 df                	jbe    0x60a
 62b:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 62f:	74 31                	je     0x662
 631:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 636:	8d 5f 02             	lea    0x2(%edi),%ebx
 639:	8b 75 d0             	mov    -0x30(%ebp),%esi
 63c:	eb 17                	jmp    0x655
 63e:	89 c1                	mov    %eax,%ecx
 640:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 647:	eb bc                	jmp    0x605
 649:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 64e:	89 f0                	mov    %esi,%eax
 650:	e8 6d ff ff ff       	call   0x5c2
 655:	83 eb 01             	sub    $0x1,%ebx
 658:	79 ef                	jns    0x649
 65a:	83 c4 2c             	add    $0x2c,%esp
 65d:	5b                   	pop    %ebx
 65e:	5e                   	pop    %esi
 65f:	5f                   	pop    %edi
 660:	5d                   	pop    %ebp
 661:	c3                   	ret    
 662:	8b 75 d0             	mov    -0x30(%ebp),%esi
 665:	eb ee                	jmp    0x655
 667:	55                   	push   %ebp
 668:	89 e5                	mov    %esp,%ebp
 66a:	57                   	push   %edi
 66b:	56                   	push   %esi
 66c:	53                   	push   %ebx
 66d:	83 ec 1c             	sub    $0x1c,%esp
 670:	8d 45 10             	lea    0x10(%ebp),%eax
 673:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 676:	be 00 00 00 00       	mov    $0x0,%esi
 67b:	bb 00 00 00 00       	mov    $0x0,%ebx
 680:	eb 14                	jmp    0x696
 682:	89 fa                	mov    %edi,%edx
 684:	8b 45 08             	mov    0x8(%ebp),%eax
 687:	e8 36 ff ff ff       	call   0x5c2
 68c:	eb 05                	jmp    0x693
 68e:	83 fe 25             	cmp    $0x25,%esi
 691:	74 25                	je     0x6b8
 693:	83 c3 01             	add    $0x1,%ebx
 696:	8b 45 0c             	mov    0xc(%ebp),%eax
 699:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 69d:	84 c0                	test   %al,%al
 69f:	0f 84 20 01 00 00    	je     0x7c5
 6a5:	0f be f8             	movsbl %al,%edi
 6a8:	0f b6 c0             	movzbl %al,%eax
 6ab:	85 f6                	test   %esi,%esi
 6ad:	75 df                	jne    0x68e
 6af:	83 f8 25             	cmp    $0x25,%eax
 6b2:	75 ce                	jne    0x682
 6b4:	89 c6                	mov    %eax,%esi
 6b6:	eb db                	jmp    0x693
 6b8:	83 f8 25             	cmp    $0x25,%eax
 6bb:	0f 84 cf 00 00 00    	je     0x790
 6c1:	0f 8c dd 00 00 00    	jl     0x7a4
 6c7:	83 f8 78             	cmp    $0x78,%eax
 6ca:	0f 8f d4 00 00 00    	jg     0x7a4
 6d0:	83 f8 63             	cmp    $0x63,%eax
 6d3:	0f 8c cb 00 00 00    	jl     0x7a4
 6d9:	83 e8 63             	sub    $0x63,%eax
 6dc:	83 f8 15             	cmp    $0x15,%eax
 6df:	0f 87 bf 00 00 00    	ja     0x7a4
 6e5:	ff 24 85 ec 0b 00 00 	jmp    *0xbec(,%eax,4)
 6ec:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 6ef:	8b 17                	mov    (%edi),%edx
 6f1:	83 ec 0c             	sub    $0xc,%esp
 6f4:	6a 01                	push   $0x1
 6f6:	b9 0a 00 00 00       	mov    $0xa,%ecx
 6fb:	8b 45 08             	mov    0x8(%ebp),%eax
 6fe:	e8 d9 fe ff ff       	call   0x5dc
 703:	83 c7 04             	add    $0x4,%edi
 706:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 709:	83 c4 10             	add    $0x10,%esp
 70c:	be 00 00 00 00       	mov    $0x0,%esi
 711:	eb 80                	jmp    0x693
 713:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 716:	8b 17                	mov    (%edi),%edx
 718:	83 ec 0c             	sub    $0xc,%esp
 71b:	6a 00                	push   $0x0
 71d:	b9 10 00 00 00       	mov    $0x10,%ecx
 722:	8b 45 08             	mov    0x8(%ebp),%eax
 725:	e8 b2 fe ff ff       	call   0x5dc
 72a:	83 c7 04             	add    $0x4,%edi
 72d:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 730:	83 c4 10             	add    $0x10,%esp
 733:	be 00 00 00 00       	mov    $0x0,%esi
 738:	e9 56 ff ff ff       	jmp    0x693
 73d:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 740:	8b 30                	mov    (%eax),%esi
 742:	83 c0 04             	add    $0x4,%eax
 745:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 748:	85 f6                	test   %esi,%esi
 74a:	75 15                	jne    0x761
 74c:	be e4 0b 00 00       	mov    $0xbe4,%esi
 751:	eb 0e                	jmp    0x761
 753:	0f be d2             	movsbl %dl,%edx
 756:	8b 45 08             	mov    0x8(%ebp),%eax
 759:	e8 64 fe ff ff       	call   0x5c2
 75e:	83 c6 01             	add    $0x1,%esi
 761:	0f b6 16             	movzbl (%esi),%edx
 764:	84 d2                	test   %dl,%dl
 766:	75 eb                	jne    0x753
 768:	be 00 00 00 00       	mov    $0x0,%esi
 76d:	e9 21 ff ff ff       	jmp    0x693
 772:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 775:	0f be 17             	movsbl (%edi),%edx
 778:	8b 45 08             	mov    0x8(%ebp),%eax
 77b:	e8 42 fe ff ff       	call   0x5c2
 780:	83 c7 04             	add    $0x4,%edi
 783:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 786:	be 00 00 00 00       	mov    $0x0,%esi
 78b:	e9 03 ff ff ff       	jmp    0x693
 790:	89 fa                	mov    %edi,%edx
 792:	8b 45 08             	mov    0x8(%ebp),%eax
 795:	e8 28 fe ff ff       	call   0x5c2
 79a:	be 00 00 00 00       	mov    $0x0,%esi
 79f:	e9 ef fe ff ff       	jmp    0x693
 7a4:	ba 25 00 00 00       	mov    $0x25,%edx
 7a9:	8b 45 08             	mov    0x8(%ebp),%eax
 7ac:	e8 11 fe ff ff       	call   0x5c2
 7b1:	89 fa                	mov    %edi,%edx
 7b3:	8b 45 08             	mov    0x8(%ebp),%eax
 7b6:	e8 07 fe ff ff       	call   0x5c2
 7bb:	be 00 00 00 00       	mov    $0x0,%esi
 7c0:	e9 ce fe ff ff       	jmp    0x693
 7c5:	8d 65 f4             	lea    -0xc(%ebp),%esp
 7c8:	5b                   	pop    %ebx
 7c9:	5e                   	pop    %esi
 7ca:	5f                   	pop    %edi
 7cb:	5d                   	pop    %ebp
 7cc:	c3                   	ret    
 7cd:	f3 0f 1e fb          	endbr32 
 7d1:	55                   	push   %ebp
 7d2:	89 e5                	mov    %esp,%ebp
 7d4:	57                   	push   %edi
 7d5:	56                   	push   %esi
 7d6:	53                   	push   %ebx
 7d7:	8b 5d 08             	mov    0x8(%ebp),%ebx
 7da:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 7dd:	a1 e8 0e 00 00       	mov    0xee8,%eax
 7e2:	eb 02                	jmp    0x7e6
 7e4:	89 d0                	mov    %edx,%eax
 7e6:	39 c8                	cmp    %ecx,%eax
 7e8:	73 04                	jae    0x7ee
 7ea:	39 08                	cmp    %ecx,(%eax)
 7ec:	77 12                	ja     0x800
 7ee:	8b 10                	mov    (%eax),%edx
 7f0:	39 c2                	cmp    %eax,%edx
 7f2:	77 f0                	ja     0x7e4
 7f4:	39 c8                	cmp    %ecx,%eax
 7f6:	72 08                	jb     0x800
 7f8:	39 ca                	cmp    %ecx,%edx
 7fa:	77 04                	ja     0x800
 7fc:	89 d0                	mov    %edx,%eax
 7fe:	eb e6                	jmp    0x7e6
 800:	8b 73 fc             	mov    -0x4(%ebx),%esi
 803:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 806:	8b 10                	mov    (%eax),%edx
 808:	39 d7                	cmp    %edx,%edi
 80a:	74 19                	je     0x825
 80c:	89 53 f8             	mov    %edx,-0x8(%ebx)
 80f:	8b 50 04             	mov    0x4(%eax),%edx
 812:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 815:	39 ce                	cmp    %ecx,%esi
 817:	74 1b                	je     0x834
 819:	89 08                	mov    %ecx,(%eax)
 81b:	a3 e8 0e 00 00       	mov    %eax,0xee8
 820:	5b                   	pop    %ebx
 821:	5e                   	pop    %esi
 822:	5f                   	pop    %edi
 823:	5d                   	pop    %ebp
 824:	c3                   	ret    
 825:	03 72 04             	add    0x4(%edx),%esi
 828:	89 73 fc             	mov    %esi,-0x4(%ebx)
 82b:	8b 10                	mov    (%eax),%edx
 82d:	8b 12                	mov    (%edx),%edx
 82f:	89 53 f8             	mov    %edx,-0x8(%ebx)
 832:	eb db                	jmp    0x80f
 834:	03 53 fc             	add    -0x4(%ebx),%edx
 837:	89 50 04             	mov    %edx,0x4(%eax)
 83a:	8b 53 f8             	mov    -0x8(%ebx),%edx
 83d:	89 10                	mov    %edx,(%eax)
 83f:	eb da                	jmp    0x81b
 841:	55                   	push   %ebp
 842:	89 e5                	mov    %esp,%ebp
 844:	53                   	push   %ebx
 845:	83 ec 04             	sub    $0x4,%esp
 848:	89 c3                	mov    %eax,%ebx
 84a:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 84f:	77 05                	ja     0x856
 851:	bb 00 10 00 00       	mov    $0x1000,%ebx
 856:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 85d:	83 ec 0c             	sub    $0xc,%esp
 860:	50                   	push   %eax
 861:	e8 34 fd ff ff       	call   0x59a
 866:	83 c4 10             	add    $0x10,%esp
 869:	83 f8 ff             	cmp    $0xffffffff,%eax
 86c:	74 1c                	je     0x88a
 86e:	89 58 04             	mov    %ebx,0x4(%eax)
 871:	83 c0 08             	add    $0x8,%eax
 874:	83 ec 0c             	sub    $0xc,%esp
 877:	50                   	push   %eax
 878:	e8 50 ff ff ff       	call   0x7cd
 87d:	a1 e8 0e 00 00       	mov    0xee8,%eax
 882:	83 c4 10             	add    $0x10,%esp
 885:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 888:	c9                   	leave  
 889:	c3                   	ret    
 88a:	b8 00 00 00 00       	mov    $0x0,%eax
 88f:	eb f4                	jmp    0x885
 891:	f3 0f 1e fb          	endbr32 
 895:	55                   	push   %ebp
 896:	89 e5                	mov    %esp,%ebp
 898:	53                   	push   %ebx
 899:	83 ec 04             	sub    $0x4,%esp
 89c:	8b 45 08             	mov    0x8(%ebp),%eax
 89f:	8d 58 07             	lea    0x7(%eax),%ebx
 8a2:	c1 eb 03             	shr    $0x3,%ebx
 8a5:	83 c3 01             	add    $0x1,%ebx
 8a8:	8b 0d e8 0e 00 00    	mov    0xee8,%ecx
 8ae:	85 c9                	test   %ecx,%ecx
 8b0:	74 04                	je     0x8b6
 8b2:	8b 01                	mov    (%ecx),%eax
 8b4:	eb 4b                	jmp    0x901
 8b6:	c7 05 e8 0e 00 00 ec 	movl   $0xeec,0xee8
 8bd:	0e 00 00 
 8c0:	c7 05 ec 0e 00 00 ec 	movl   $0xeec,0xeec
 8c7:	0e 00 00 
 8ca:	c7 05 f0 0e 00 00 00 	movl   $0x0,0xef0
 8d1:	00 00 00 
 8d4:	b9 ec 0e 00 00       	mov    $0xeec,%ecx
 8d9:	eb d7                	jmp    0x8b2
 8db:	74 1a                	je     0x8f7
 8dd:	29 da                	sub    %ebx,%edx
 8df:	89 50 04             	mov    %edx,0x4(%eax)
 8e2:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 8e5:	89 58 04             	mov    %ebx,0x4(%eax)
 8e8:	89 0d e8 0e 00 00    	mov    %ecx,0xee8
 8ee:	83 c0 08             	add    $0x8,%eax
 8f1:	83 c4 04             	add    $0x4,%esp
 8f4:	5b                   	pop    %ebx
 8f5:	5d                   	pop    %ebp
 8f6:	c3                   	ret    
 8f7:	8b 10                	mov    (%eax),%edx
 8f9:	89 11                	mov    %edx,(%ecx)
 8fb:	eb eb                	jmp    0x8e8
 8fd:	89 c1                	mov    %eax,%ecx
 8ff:	8b 00                	mov    (%eax),%eax
 901:	8b 50 04             	mov    0x4(%eax),%edx
 904:	39 da                	cmp    %ebx,%edx
 906:	73 d3                	jae    0x8db
 908:	39 05 e8 0e 00 00    	cmp    %eax,0xee8
 90e:	75 ed                	jne    0x8fd
 910:	89 d8                	mov    %ebx,%eax
 912:	e8 2a ff ff ff       	call   0x841
 917:	85 c0                	test   %eax,%eax
 919:	75 e2                	jne    0x8fd
 91b:	eb d4                	jmp    0x8f1
