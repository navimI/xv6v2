
_ls:     file format elf32-i386


Disassembly of section .text:

00000000 <.text>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	56                   	push   %esi
   4:	53                   	push   %ebx
   5:	8b 5d 08             	mov    0x8(%ebp),%ebx
   8:	83 ec 0c             	sub    $0xc,%esp
   b:	53                   	push   %ebx
   c:	e8 1f 03 00 00       	call   0x330
  11:	01 d8                	add    %ebx,%eax
  13:	83 c4 10             	add    $0x10,%esp
  16:	eb 03                	jmp    0x1b
  18:	83 e8 01             	sub    $0x1,%eax
  1b:	39 d8                	cmp    %ebx,%eax
  1d:	72 05                	jb     0x24
  1f:	80 38 2f             	cmpb   $0x2f,(%eax)
  22:	75 f4                	jne    0x18
  24:	8d 58 01             	lea    0x1(%eax),%ebx
  27:	83 ec 0c             	sub    $0xc,%esp
  2a:	53                   	push   %ebx
  2b:	e8 00 03 00 00       	call   0x330
  30:	83 c4 10             	add    $0x10,%esp
  33:	83 f8 0d             	cmp    $0xd,%eax
  36:	76 09                	jbe    0x41
  38:	89 d8                	mov    %ebx,%eax
  3a:	8d 65 f8             	lea    -0x8(%ebp),%esp
  3d:	5b                   	pop    %ebx
  3e:	5e                   	pop    %esi
  3f:	5d                   	pop    %ebp
  40:	c3                   	ret    
  41:	83 ec 0c             	sub    $0xc,%esp
  44:	53                   	push   %ebx
  45:	e8 e6 02 00 00       	call   0x330
  4a:	83 c4 0c             	add    $0xc,%esp
  4d:	50                   	push   %eax
  4e:	53                   	push   %ebx
  4f:	68 34 0c 00 00       	push   $0xc34
  54:	e8 f6 03 00 00       	call   0x44f
  59:	89 1c 24             	mov    %ebx,(%esp)
  5c:	e8 cf 02 00 00       	call   0x330
  61:	89 c6                	mov    %eax,%esi
  63:	89 1c 24             	mov    %ebx,(%esp)
  66:	e8 c5 02 00 00       	call   0x330
  6b:	83 c4 0c             	add    $0xc,%esp
  6e:	ba 0e 00 00 00       	mov    $0xe,%edx
  73:	29 f2                	sub    %esi,%edx
  75:	52                   	push   %edx
  76:	6a 20                	push   $0x20
  78:	05 34 0c 00 00       	add    $0xc34,%eax
  7d:	50                   	push   %eax
  7e:	e8 c5 02 00 00       	call   0x348
  83:	83 c4 10             	add    $0x10,%esp
  86:	bb 34 0c 00 00       	mov    $0xc34,%ebx
  8b:	eb ab                	jmp    0x38
  8d:	55                   	push   %ebp
  8e:	89 e5                	mov    %esp,%ebp
  90:	57                   	push   %edi
  91:	56                   	push   %esi
  92:	53                   	push   %ebx
  93:	81 ec 54 02 00 00    	sub    $0x254,%esp
  99:	8b 5d 08             	mov    0x8(%ebp),%ebx
  9c:	6a 00                	push   $0x0
  9e:	53                   	push   %ebx
  9f:	e8 1f 04 00 00       	call   0x4c3
  a4:	83 c4 10             	add    $0x10,%esp
  a7:	85 c0                	test   %eax,%eax
  a9:	0f 88 8c 00 00 00    	js     0x13b
  af:	89 c7                	mov    %eax,%edi
  b1:	83 ec 08             	sub    $0x8,%esp
  b4:	8d 85 c4 fd ff ff    	lea    -0x23c(%ebp),%eax
  ba:	50                   	push   %eax
  bb:	57                   	push   %edi
  bc:	e8 1a 04 00 00       	call   0x4db
  c1:	83 c4 10             	add    $0x10,%esp
  c4:	85 c0                	test   %eax,%eax
  c6:	0f 88 84 00 00 00    	js     0x150
  cc:	0f b7 85 c4 fd ff ff 	movzwl -0x23c(%ebp),%eax
  d3:	0f bf f0             	movswl %ax,%esi
  d6:	66 83 f8 01          	cmp    $0x1,%ax
  da:	0f 84 8d 00 00 00    	je     0x16d
  e0:	66 83 f8 02          	cmp    $0x2,%ax
  e4:	75 41                	jne    0x127
  e6:	8b 85 d4 fd ff ff    	mov    -0x22c(%ebp),%eax
  ec:	89 85 b4 fd ff ff    	mov    %eax,-0x24c(%ebp)
  f2:	8b 95 cc fd ff ff    	mov    -0x234(%ebp),%edx
  f8:	89 95 b0 fd ff ff    	mov    %edx,-0x250(%ebp)
  fe:	83 ec 0c             	sub    $0xc,%esp
 101:	53                   	push   %ebx
 102:	e8 f9 fe ff ff       	call   0x0
 107:	83 c4 08             	add    $0x8,%esp
 10a:	ff b5 b4 fd ff ff    	push   -0x24c(%ebp)
 110:	ff b5 b0 fd ff ff    	push   -0x250(%ebp)
 116:	56                   	push   %esi
 117:	50                   	push   %eax
 118:	68 a8 08 00 00       	push   $0x8a8
 11d:	6a 01                	push   $0x1
 11f:	e8 ac 04 00 00       	call   0x5d0
 124:	83 c4 20             	add    $0x20,%esp
 127:	83 ec 0c             	sub    $0xc,%esp
 12a:	57                   	push   %edi
 12b:	e8 7b 03 00 00       	call   0x4ab
 130:	83 c4 10             	add    $0x10,%esp
 133:	8d 65 f4             	lea    -0xc(%ebp),%esp
 136:	5b                   	pop    %ebx
 137:	5e                   	pop    %esi
 138:	5f                   	pop    %edi
 139:	5d                   	pop    %ebp
 13a:	c3                   	ret    
 13b:	83 ec 04             	sub    $0x4,%esp
 13e:	53                   	push   %ebx
 13f:	68 80 08 00 00       	push   $0x880
 144:	6a 02                	push   $0x2
 146:	e8 85 04 00 00       	call   0x5d0
 14b:	83 c4 10             	add    $0x10,%esp
 14e:	eb e3                	jmp    0x133
 150:	83 ec 04             	sub    $0x4,%esp
 153:	53                   	push   %ebx
 154:	68 94 08 00 00       	push   $0x894
 159:	6a 02                	push   $0x2
 15b:	e8 70 04 00 00       	call   0x5d0
 160:	89 3c 24             	mov    %edi,(%esp)
 163:	e8 43 03 00 00       	call   0x4ab
 168:	83 c4 10             	add    $0x10,%esp
 16b:	eb c6                	jmp    0x133
 16d:	83 ec 0c             	sub    $0xc,%esp
 170:	53                   	push   %ebx
 171:	e8 ba 01 00 00       	call   0x330
 176:	83 c0 10             	add    $0x10,%eax
 179:	83 c4 10             	add    $0x10,%esp
 17c:	3d 00 02 00 00       	cmp    $0x200,%eax
 181:	76 14                	jbe    0x197
 183:	83 ec 08             	sub    $0x8,%esp
 186:	68 b5 08 00 00       	push   $0x8b5
 18b:	6a 01                	push   $0x1
 18d:	e8 3e 04 00 00       	call   0x5d0
 192:	83 c4 10             	add    $0x10,%esp
 195:	eb 90                	jmp    0x127
 197:	83 ec 08             	sub    $0x8,%esp
 19a:	53                   	push   %ebx
 19b:	8d b5 e8 fd ff ff    	lea    -0x218(%ebp),%esi
 1a1:	56                   	push   %esi
 1a2:	e8 3d 01 00 00       	call   0x2e4
 1a7:	89 34 24             	mov    %esi,(%esp)
 1aa:	e8 81 01 00 00       	call   0x330
 1af:	01 c6                	add    %eax,%esi
 1b1:	8d 46 01             	lea    0x1(%esi),%eax
 1b4:	89 85 ac fd ff ff    	mov    %eax,-0x254(%ebp)
 1ba:	c6 06 2f             	movb   $0x2f,(%esi)
 1bd:	83 c4 10             	add    $0x10,%esp
 1c0:	eb 19                	jmp    0x1db
 1c2:	83 ec 04             	sub    $0x4,%esp
 1c5:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 1cb:	50                   	push   %eax
 1cc:	68 94 08 00 00       	push   $0x894
 1d1:	6a 01                	push   $0x1
 1d3:	e8 f8 03 00 00       	call   0x5d0
 1d8:	83 c4 10             	add    $0x10,%esp
 1db:	83 ec 04             	sub    $0x4,%esp
 1de:	6a 10                	push   $0x10
 1e0:	8d 85 d8 fd ff ff    	lea    -0x228(%ebp),%eax
 1e6:	50                   	push   %eax
 1e7:	57                   	push   %edi
 1e8:	e8 ae 02 00 00       	call   0x49b
 1ed:	83 c4 10             	add    $0x10,%esp
 1f0:	83 f8 10             	cmp    $0x10,%eax
 1f3:	0f 85 2e ff ff ff    	jne    0x127
 1f9:	66 83 bd d8 fd ff ff 	cmpw   $0x0,-0x228(%ebp)
 200:	00 
 201:	74 d8                	je     0x1db
 203:	83 ec 04             	sub    $0x4,%esp
 206:	6a 0e                	push   $0xe
 208:	8d 85 da fd ff ff    	lea    -0x226(%ebp),%eax
 20e:	50                   	push   %eax
 20f:	ff b5 ac fd ff ff    	push   -0x254(%ebp)
 215:	e8 35 02 00 00       	call   0x44f
 21a:	c6 46 0f 00          	movb   $0x0,0xf(%esi)
 21e:	83 c4 08             	add    $0x8,%esp
 221:	8d 85 c4 fd ff ff    	lea    -0x23c(%ebp),%eax
 227:	50                   	push   %eax
 228:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 22e:	50                   	push   %eax
 22f:	e8 a7 01 00 00       	call   0x3db
 234:	83 c4 10             	add    $0x10,%esp
 237:	85 c0                	test   %eax,%eax
 239:	78 87                	js     0x1c2
 23b:	8b 9d d4 fd ff ff    	mov    -0x22c(%ebp),%ebx
 241:	8b 85 cc fd ff ff    	mov    -0x234(%ebp),%eax
 247:	89 85 b4 fd ff ff    	mov    %eax,-0x24c(%ebp)
 24d:	0f b7 8d c4 fd ff ff 	movzwl -0x23c(%ebp),%ecx
 254:	66 89 8d b0 fd ff ff 	mov    %cx,-0x250(%ebp)
 25b:	83 ec 0c             	sub    $0xc,%esp
 25e:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 264:	50                   	push   %eax
 265:	e8 96 fd ff ff       	call   0x0
 26a:	89 c2                	mov    %eax,%edx
 26c:	83 c4 08             	add    $0x8,%esp
 26f:	53                   	push   %ebx
 270:	ff b5 b4 fd ff ff    	push   -0x24c(%ebp)
 276:	0f bf 85 b0 fd ff ff 	movswl -0x250(%ebp),%eax
 27d:	50                   	push   %eax
 27e:	52                   	push   %edx
 27f:	68 a8 08 00 00       	push   $0x8a8
 284:	6a 01                	push   $0x1
 286:	e8 45 03 00 00       	call   0x5d0
 28b:	83 c4 20             	add    $0x20,%esp
 28e:	e9 48 ff ff ff       	jmp    0x1db
 293:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 297:	83 e4 f0             	and    $0xfffffff0,%esp
 29a:	ff 71 fc             	push   -0x4(%ecx)
 29d:	55                   	push   %ebp
 29e:	89 e5                	mov    %esp,%ebp
 2a0:	57                   	push   %edi
 2a1:	56                   	push   %esi
 2a2:	53                   	push   %ebx
 2a3:	51                   	push   %ecx
 2a4:	83 ec 08             	sub    $0x8,%esp
 2a7:	8b 31                	mov    (%ecx),%esi
 2a9:	8b 79 04             	mov    0x4(%ecx),%edi
 2ac:	83 fe 01             	cmp    $0x1,%esi
 2af:	7e 07                	jle    0x2b8
 2b1:	bb 01 00 00 00       	mov    $0x1,%ebx
 2b6:	eb 23                	jmp    0x2db
 2b8:	83 ec 0c             	sub    $0xc,%esp
 2bb:	68 c8 08 00 00       	push   $0x8c8
 2c0:	e8 c8 fd ff ff       	call   0x8d
 2c5:	e8 b9 01 00 00       	call   0x483
 2ca:	83 ec 0c             	sub    $0xc,%esp
 2cd:	ff 34 9f             	push   (%edi,%ebx,4)
 2d0:	e8 b8 fd ff ff       	call   0x8d
 2d5:	83 c3 01             	add    $0x1,%ebx
 2d8:	83 c4 10             	add    $0x10,%esp
 2db:	39 f3                	cmp    %esi,%ebx
 2dd:	7c eb                	jl     0x2ca
 2df:	e8 9f 01 00 00       	call   0x483
 2e4:	55                   	push   %ebp
 2e5:	89 e5                	mov    %esp,%ebp
 2e7:	56                   	push   %esi
 2e8:	53                   	push   %ebx
 2e9:	8b 75 08             	mov    0x8(%ebp),%esi
 2ec:	8b 55 0c             	mov    0xc(%ebp),%edx
 2ef:	89 f0                	mov    %esi,%eax
 2f1:	89 d1                	mov    %edx,%ecx
 2f3:	83 c2 01             	add    $0x1,%edx
 2f6:	89 c3                	mov    %eax,%ebx
 2f8:	83 c0 01             	add    $0x1,%eax
 2fb:	0f b6 09             	movzbl (%ecx),%ecx
 2fe:	88 0b                	mov    %cl,(%ebx)
 300:	84 c9                	test   %cl,%cl
 302:	75 ed                	jne    0x2f1
 304:	89 f0                	mov    %esi,%eax
 306:	5b                   	pop    %ebx
 307:	5e                   	pop    %esi
 308:	5d                   	pop    %ebp
 309:	c3                   	ret    
 30a:	55                   	push   %ebp
 30b:	89 e5                	mov    %esp,%ebp
 30d:	8b 4d 08             	mov    0x8(%ebp),%ecx
 310:	8b 55 0c             	mov    0xc(%ebp),%edx
 313:	eb 06                	jmp    0x31b
 315:	83 c1 01             	add    $0x1,%ecx
 318:	83 c2 01             	add    $0x1,%edx
 31b:	0f b6 01             	movzbl (%ecx),%eax
 31e:	84 c0                	test   %al,%al
 320:	74 04                	je     0x326
 322:	3a 02                	cmp    (%edx),%al
 324:	74 ef                	je     0x315
 326:	0f b6 c0             	movzbl %al,%eax
 329:	0f b6 12             	movzbl (%edx),%edx
 32c:	29 d0                	sub    %edx,%eax
 32e:	5d                   	pop    %ebp
 32f:	c3                   	ret    
 330:	55                   	push   %ebp
 331:	89 e5                	mov    %esp,%ebp
 333:	8b 4d 08             	mov    0x8(%ebp),%ecx
 336:	b8 00 00 00 00       	mov    $0x0,%eax
 33b:	eb 03                	jmp    0x340
 33d:	83 c0 01             	add    $0x1,%eax
 340:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
 344:	75 f7                	jne    0x33d
 346:	5d                   	pop    %ebp
 347:	c3                   	ret    
 348:	55                   	push   %ebp
 349:	89 e5                	mov    %esp,%ebp
 34b:	57                   	push   %edi
 34c:	8b 55 08             	mov    0x8(%ebp),%edx
 34f:	89 d7                	mov    %edx,%edi
 351:	8b 4d 10             	mov    0x10(%ebp),%ecx
 354:	8b 45 0c             	mov    0xc(%ebp),%eax
 357:	fc                   	cld    
 358:	f3 aa                	rep stos %al,%es:(%edi)
 35a:	89 d0                	mov    %edx,%eax
 35c:	8b 7d fc             	mov    -0x4(%ebp),%edi
 35f:	c9                   	leave  
 360:	c3                   	ret    
 361:	55                   	push   %ebp
 362:	89 e5                	mov    %esp,%ebp
 364:	8b 45 08             	mov    0x8(%ebp),%eax
 367:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
 36b:	eb 03                	jmp    0x370
 36d:	83 c0 01             	add    $0x1,%eax
 370:	0f b6 10             	movzbl (%eax),%edx
 373:	84 d2                	test   %dl,%dl
 375:	74 06                	je     0x37d
 377:	38 ca                	cmp    %cl,%dl
 379:	75 f2                	jne    0x36d
 37b:	eb 05                	jmp    0x382
 37d:	b8 00 00 00 00       	mov    $0x0,%eax
 382:	5d                   	pop    %ebp
 383:	c3                   	ret    
 384:	55                   	push   %ebp
 385:	89 e5                	mov    %esp,%ebp
 387:	57                   	push   %edi
 388:	56                   	push   %esi
 389:	53                   	push   %ebx
 38a:	83 ec 1c             	sub    $0x1c,%esp
 38d:	8b 7d 08             	mov    0x8(%ebp),%edi
 390:	bb 00 00 00 00       	mov    $0x0,%ebx
 395:	89 de                	mov    %ebx,%esi
 397:	83 c3 01             	add    $0x1,%ebx
 39a:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 39d:	7d 2e                	jge    0x3cd
 39f:	83 ec 04             	sub    $0x4,%esp
 3a2:	6a 01                	push   $0x1
 3a4:	8d 45 e7             	lea    -0x19(%ebp),%eax
 3a7:	50                   	push   %eax
 3a8:	6a 00                	push   $0x0
 3aa:	e8 ec 00 00 00       	call   0x49b
 3af:	83 c4 10             	add    $0x10,%esp
 3b2:	85 c0                	test   %eax,%eax
 3b4:	7e 17                	jle    0x3cd
 3b6:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 3ba:	88 04 37             	mov    %al,(%edi,%esi,1)
 3bd:	3c 0a                	cmp    $0xa,%al
 3bf:	0f 94 c2             	sete   %dl
 3c2:	3c 0d                	cmp    $0xd,%al
 3c4:	0f 94 c0             	sete   %al
 3c7:	08 c2                	or     %al,%dl
 3c9:	74 ca                	je     0x395
 3cb:	89 de                	mov    %ebx,%esi
 3cd:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 3d1:	89 f8                	mov    %edi,%eax
 3d3:	8d 65 f4             	lea    -0xc(%ebp),%esp
 3d6:	5b                   	pop    %ebx
 3d7:	5e                   	pop    %esi
 3d8:	5f                   	pop    %edi
 3d9:	5d                   	pop    %ebp
 3da:	c3                   	ret    
 3db:	55                   	push   %ebp
 3dc:	89 e5                	mov    %esp,%ebp
 3de:	56                   	push   %esi
 3df:	53                   	push   %ebx
 3e0:	83 ec 08             	sub    $0x8,%esp
 3e3:	6a 00                	push   $0x0
 3e5:	ff 75 08             	push   0x8(%ebp)
 3e8:	e8 d6 00 00 00       	call   0x4c3
 3ed:	83 c4 10             	add    $0x10,%esp
 3f0:	85 c0                	test   %eax,%eax
 3f2:	78 24                	js     0x418
 3f4:	89 c3                	mov    %eax,%ebx
 3f6:	83 ec 08             	sub    $0x8,%esp
 3f9:	ff 75 0c             	push   0xc(%ebp)
 3fc:	50                   	push   %eax
 3fd:	e8 d9 00 00 00       	call   0x4db
 402:	89 c6                	mov    %eax,%esi
 404:	89 1c 24             	mov    %ebx,(%esp)
 407:	e8 9f 00 00 00       	call   0x4ab
 40c:	83 c4 10             	add    $0x10,%esp
 40f:	89 f0                	mov    %esi,%eax
 411:	8d 65 f8             	lea    -0x8(%ebp),%esp
 414:	5b                   	pop    %ebx
 415:	5e                   	pop    %esi
 416:	5d                   	pop    %ebp
 417:	c3                   	ret    
 418:	be ff ff ff ff       	mov    $0xffffffff,%esi
 41d:	eb f0                	jmp    0x40f
 41f:	55                   	push   %ebp
 420:	89 e5                	mov    %esp,%ebp
 422:	53                   	push   %ebx
 423:	8b 4d 08             	mov    0x8(%ebp),%ecx
 426:	ba 00 00 00 00       	mov    $0x0,%edx
 42b:	eb 10                	jmp    0x43d
 42d:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 430:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 433:	83 c1 01             	add    $0x1,%ecx
 436:	0f be c0             	movsbl %al,%eax
 439:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 43d:	0f b6 01             	movzbl (%ecx),%eax
 440:	8d 58 d0             	lea    -0x30(%eax),%ebx
 443:	80 fb 09             	cmp    $0x9,%bl
 446:	76 e5                	jbe    0x42d
 448:	89 d0                	mov    %edx,%eax
 44a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 44d:	c9                   	leave  
 44e:	c3                   	ret    
 44f:	55                   	push   %ebp
 450:	89 e5                	mov    %esp,%ebp
 452:	56                   	push   %esi
 453:	53                   	push   %ebx
 454:	8b 75 08             	mov    0x8(%ebp),%esi
 457:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 45a:	8b 45 10             	mov    0x10(%ebp),%eax
 45d:	89 f2                	mov    %esi,%edx
 45f:	eb 0d                	jmp    0x46e
 461:	0f b6 01             	movzbl (%ecx),%eax
 464:	88 02                	mov    %al,(%edx)
 466:	8d 49 01             	lea    0x1(%ecx),%ecx
 469:	8d 52 01             	lea    0x1(%edx),%edx
 46c:	89 d8                	mov    %ebx,%eax
 46e:	8d 58 ff             	lea    -0x1(%eax),%ebx
 471:	85 c0                	test   %eax,%eax
 473:	7f ec                	jg     0x461
 475:	89 f0                	mov    %esi,%eax
 477:	5b                   	pop    %ebx
 478:	5e                   	pop    %esi
 479:	5d                   	pop    %ebp
 47a:	c3                   	ret    
 47b:	b8 01 00 00 00       	mov    $0x1,%eax
 480:	cd 40                	int    $0x40
 482:	c3                   	ret    
 483:	b8 02 00 00 00       	mov    $0x2,%eax
 488:	cd 40                	int    $0x40
 48a:	c3                   	ret    
 48b:	b8 03 00 00 00       	mov    $0x3,%eax
 490:	cd 40                	int    $0x40
 492:	c3                   	ret    
 493:	b8 04 00 00 00       	mov    $0x4,%eax
 498:	cd 40                	int    $0x40
 49a:	c3                   	ret    
 49b:	b8 05 00 00 00       	mov    $0x5,%eax
 4a0:	cd 40                	int    $0x40
 4a2:	c3                   	ret    
 4a3:	b8 10 00 00 00       	mov    $0x10,%eax
 4a8:	cd 40                	int    $0x40
 4aa:	c3                   	ret    
 4ab:	b8 15 00 00 00       	mov    $0x15,%eax
 4b0:	cd 40                	int    $0x40
 4b2:	c3                   	ret    
 4b3:	b8 06 00 00 00       	mov    $0x6,%eax
 4b8:	cd 40                	int    $0x40
 4ba:	c3                   	ret    
 4bb:	b8 07 00 00 00       	mov    $0x7,%eax
 4c0:	cd 40                	int    $0x40
 4c2:	c3                   	ret    
 4c3:	b8 0f 00 00 00       	mov    $0xf,%eax
 4c8:	cd 40                	int    $0x40
 4ca:	c3                   	ret    
 4cb:	b8 11 00 00 00       	mov    $0x11,%eax
 4d0:	cd 40                	int    $0x40
 4d2:	c3                   	ret    
 4d3:	b8 12 00 00 00       	mov    $0x12,%eax
 4d8:	cd 40                	int    $0x40
 4da:	c3                   	ret    
 4db:	b8 08 00 00 00       	mov    $0x8,%eax
 4e0:	cd 40                	int    $0x40
 4e2:	c3                   	ret    
 4e3:	b8 13 00 00 00       	mov    $0x13,%eax
 4e8:	cd 40                	int    $0x40
 4ea:	c3                   	ret    
 4eb:	b8 14 00 00 00       	mov    $0x14,%eax
 4f0:	cd 40                	int    $0x40
 4f2:	c3                   	ret    
 4f3:	b8 09 00 00 00       	mov    $0x9,%eax
 4f8:	cd 40                	int    $0x40
 4fa:	c3                   	ret    
 4fb:	b8 0a 00 00 00       	mov    $0xa,%eax
 500:	cd 40                	int    $0x40
 502:	c3                   	ret    
 503:	b8 0b 00 00 00       	mov    $0xb,%eax
 508:	cd 40                	int    $0x40
 50a:	c3                   	ret    
 50b:	b8 0c 00 00 00       	mov    $0xc,%eax
 510:	cd 40                	int    $0x40
 512:	c3                   	ret    
 513:	b8 0d 00 00 00       	mov    $0xd,%eax
 518:	cd 40                	int    $0x40
 51a:	c3                   	ret    
 51b:	b8 0e 00 00 00       	mov    $0xe,%eax
 520:	cd 40                	int    $0x40
 522:	c3                   	ret    
 523:	b8 16 00 00 00       	mov    $0x16,%eax
 528:	cd 40                	int    $0x40
 52a:	c3                   	ret    
 52b:	55                   	push   %ebp
 52c:	89 e5                	mov    %esp,%ebp
 52e:	83 ec 1c             	sub    $0x1c,%esp
 531:	88 55 f4             	mov    %dl,-0xc(%ebp)
 534:	6a 01                	push   $0x1
 536:	8d 55 f4             	lea    -0xc(%ebp),%edx
 539:	52                   	push   %edx
 53a:	50                   	push   %eax
 53b:	e8 63 ff ff ff       	call   0x4a3
 540:	83 c4 10             	add    $0x10,%esp
 543:	c9                   	leave  
 544:	c3                   	ret    
 545:	55                   	push   %ebp
 546:	89 e5                	mov    %esp,%ebp
 548:	57                   	push   %edi
 549:	56                   	push   %esi
 54a:	53                   	push   %ebx
 54b:	83 ec 2c             	sub    $0x2c,%esp
 54e:	89 45 d0             	mov    %eax,-0x30(%ebp)
 551:	89 d0                	mov    %edx,%eax
 553:	89 ce                	mov    %ecx,%esi
 555:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 559:	0f 95 c1             	setne  %cl
 55c:	c1 ea 1f             	shr    $0x1f,%edx
 55f:	84 d1                	test   %dl,%cl
 561:	74 44                	je     0x5a7
 563:	f7 d8                	neg    %eax
 565:	89 c1                	mov    %eax,%ecx
 567:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 56e:	bb 00 00 00 00       	mov    $0x0,%ebx
 573:	89 c8                	mov    %ecx,%eax
 575:	ba 00 00 00 00       	mov    $0x0,%edx
 57a:	f7 f6                	div    %esi
 57c:	89 df                	mov    %ebx,%edi
 57e:	83 c3 01             	add    $0x1,%ebx
 581:	0f b6 92 2c 09 00 00 	movzbl 0x92c(%edx),%edx
 588:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 58c:	89 ca                	mov    %ecx,%edx
 58e:	89 c1                	mov    %eax,%ecx
 590:	39 d6                	cmp    %edx,%esi
 592:	76 df                	jbe    0x573
 594:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 598:	74 31                	je     0x5cb
 59a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 59f:	8d 5f 02             	lea    0x2(%edi),%ebx
 5a2:	8b 75 d0             	mov    -0x30(%ebp),%esi
 5a5:	eb 17                	jmp    0x5be
 5a7:	89 c1                	mov    %eax,%ecx
 5a9:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 5b0:	eb bc                	jmp    0x56e
 5b2:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 5b7:	89 f0                	mov    %esi,%eax
 5b9:	e8 6d ff ff ff       	call   0x52b
 5be:	83 eb 01             	sub    $0x1,%ebx
 5c1:	79 ef                	jns    0x5b2
 5c3:	83 c4 2c             	add    $0x2c,%esp
 5c6:	5b                   	pop    %ebx
 5c7:	5e                   	pop    %esi
 5c8:	5f                   	pop    %edi
 5c9:	5d                   	pop    %ebp
 5ca:	c3                   	ret    
 5cb:	8b 75 d0             	mov    -0x30(%ebp),%esi
 5ce:	eb ee                	jmp    0x5be
 5d0:	55                   	push   %ebp
 5d1:	89 e5                	mov    %esp,%ebp
 5d3:	57                   	push   %edi
 5d4:	56                   	push   %esi
 5d5:	53                   	push   %ebx
 5d6:	83 ec 1c             	sub    $0x1c,%esp
 5d9:	8d 45 10             	lea    0x10(%ebp),%eax
 5dc:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 5df:	be 00 00 00 00       	mov    $0x0,%esi
 5e4:	bb 00 00 00 00       	mov    $0x0,%ebx
 5e9:	eb 14                	jmp    0x5ff
 5eb:	89 fa                	mov    %edi,%edx
 5ed:	8b 45 08             	mov    0x8(%ebp),%eax
 5f0:	e8 36 ff ff ff       	call   0x52b
 5f5:	eb 05                	jmp    0x5fc
 5f7:	83 fe 25             	cmp    $0x25,%esi
 5fa:	74 25                	je     0x621
 5fc:	83 c3 01             	add    $0x1,%ebx
 5ff:	8b 45 0c             	mov    0xc(%ebp),%eax
 602:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 606:	84 c0                	test   %al,%al
 608:	0f 84 20 01 00 00    	je     0x72e
 60e:	0f be f8             	movsbl %al,%edi
 611:	0f b6 c0             	movzbl %al,%eax
 614:	85 f6                	test   %esi,%esi
 616:	75 df                	jne    0x5f7
 618:	83 f8 25             	cmp    $0x25,%eax
 61b:	75 ce                	jne    0x5eb
 61d:	89 c6                	mov    %eax,%esi
 61f:	eb db                	jmp    0x5fc
 621:	83 f8 25             	cmp    $0x25,%eax
 624:	0f 84 cf 00 00 00    	je     0x6f9
 62a:	0f 8c dd 00 00 00    	jl     0x70d
 630:	83 f8 78             	cmp    $0x78,%eax
 633:	0f 8f d4 00 00 00    	jg     0x70d
 639:	83 f8 63             	cmp    $0x63,%eax
 63c:	0f 8c cb 00 00 00    	jl     0x70d
 642:	83 e8 63             	sub    $0x63,%eax
 645:	83 f8 15             	cmp    $0x15,%eax
 648:	0f 87 bf 00 00 00    	ja     0x70d
 64e:	ff 24 85 d4 08 00 00 	jmp    *0x8d4(,%eax,4)
 655:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 658:	8b 17                	mov    (%edi),%edx
 65a:	83 ec 0c             	sub    $0xc,%esp
 65d:	6a 01                	push   $0x1
 65f:	b9 0a 00 00 00       	mov    $0xa,%ecx
 664:	8b 45 08             	mov    0x8(%ebp),%eax
 667:	e8 d9 fe ff ff       	call   0x545
 66c:	83 c7 04             	add    $0x4,%edi
 66f:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 672:	83 c4 10             	add    $0x10,%esp
 675:	be 00 00 00 00       	mov    $0x0,%esi
 67a:	eb 80                	jmp    0x5fc
 67c:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 67f:	8b 17                	mov    (%edi),%edx
 681:	83 ec 0c             	sub    $0xc,%esp
 684:	6a 00                	push   $0x0
 686:	b9 10 00 00 00       	mov    $0x10,%ecx
 68b:	8b 45 08             	mov    0x8(%ebp),%eax
 68e:	e8 b2 fe ff ff       	call   0x545
 693:	83 c7 04             	add    $0x4,%edi
 696:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 699:	83 c4 10             	add    $0x10,%esp
 69c:	be 00 00 00 00       	mov    $0x0,%esi
 6a1:	e9 56 ff ff ff       	jmp    0x5fc
 6a6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 6a9:	8b 30                	mov    (%eax),%esi
 6ab:	83 c0 04             	add    $0x4,%eax
 6ae:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 6b1:	85 f6                	test   %esi,%esi
 6b3:	75 15                	jne    0x6ca
 6b5:	be ca 08 00 00       	mov    $0x8ca,%esi
 6ba:	eb 0e                	jmp    0x6ca
 6bc:	0f be d2             	movsbl %dl,%edx
 6bf:	8b 45 08             	mov    0x8(%ebp),%eax
 6c2:	e8 64 fe ff ff       	call   0x52b
 6c7:	83 c6 01             	add    $0x1,%esi
 6ca:	0f b6 16             	movzbl (%esi),%edx
 6cd:	84 d2                	test   %dl,%dl
 6cf:	75 eb                	jne    0x6bc
 6d1:	be 00 00 00 00       	mov    $0x0,%esi
 6d6:	e9 21 ff ff ff       	jmp    0x5fc
 6db:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 6de:	0f be 17             	movsbl (%edi),%edx
 6e1:	8b 45 08             	mov    0x8(%ebp),%eax
 6e4:	e8 42 fe ff ff       	call   0x52b
 6e9:	83 c7 04             	add    $0x4,%edi
 6ec:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 6ef:	be 00 00 00 00       	mov    $0x0,%esi
 6f4:	e9 03 ff ff ff       	jmp    0x5fc
 6f9:	89 fa                	mov    %edi,%edx
 6fb:	8b 45 08             	mov    0x8(%ebp),%eax
 6fe:	e8 28 fe ff ff       	call   0x52b
 703:	be 00 00 00 00       	mov    $0x0,%esi
 708:	e9 ef fe ff ff       	jmp    0x5fc
 70d:	ba 25 00 00 00       	mov    $0x25,%edx
 712:	8b 45 08             	mov    0x8(%ebp),%eax
 715:	e8 11 fe ff ff       	call   0x52b
 71a:	89 fa                	mov    %edi,%edx
 71c:	8b 45 08             	mov    0x8(%ebp),%eax
 71f:	e8 07 fe ff ff       	call   0x52b
 724:	be 00 00 00 00       	mov    $0x0,%esi
 729:	e9 ce fe ff ff       	jmp    0x5fc
 72e:	8d 65 f4             	lea    -0xc(%ebp),%esp
 731:	5b                   	pop    %ebx
 732:	5e                   	pop    %esi
 733:	5f                   	pop    %edi
 734:	5d                   	pop    %ebp
 735:	c3                   	ret    
 736:	55                   	push   %ebp
 737:	89 e5                	mov    %esp,%ebp
 739:	57                   	push   %edi
 73a:	56                   	push   %esi
 73b:	53                   	push   %ebx
 73c:	8b 5d 08             	mov    0x8(%ebp),%ebx
 73f:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 742:	a1 44 0c 00 00       	mov    0xc44,%eax
 747:	eb 02                	jmp    0x74b
 749:	89 d0                	mov    %edx,%eax
 74b:	39 c8                	cmp    %ecx,%eax
 74d:	73 04                	jae    0x753
 74f:	39 08                	cmp    %ecx,(%eax)
 751:	77 12                	ja     0x765
 753:	8b 10                	mov    (%eax),%edx
 755:	39 c2                	cmp    %eax,%edx
 757:	77 f0                	ja     0x749
 759:	39 c8                	cmp    %ecx,%eax
 75b:	72 08                	jb     0x765
 75d:	39 ca                	cmp    %ecx,%edx
 75f:	77 04                	ja     0x765
 761:	89 d0                	mov    %edx,%eax
 763:	eb e6                	jmp    0x74b
 765:	8b 73 fc             	mov    -0x4(%ebx),%esi
 768:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 76b:	8b 10                	mov    (%eax),%edx
 76d:	39 d7                	cmp    %edx,%edi
 76f:	74 19                	je     0x78a
 771:	89 53 f8             	mov    %edx,-0x8(%ebx)
 774:	8b 50 04             	mov    0x4(%eax),%edx
 777:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 77a:	39 ce                	cmp    %ecx,%esi
 77c:	74 1b                	je     0x799
 77e:	89 08                	mov    %ecx,(%eax)
 780:	a3 44 0c 00 00       	mov    %eax,0xc44
 785:	5b                   	pop    %ebx
 786:	5e                   	pop    %esi
 787:	5f                   	pop    %edi
 788:	5d                   	pop    %ebp
 789:	c3                   	ret    
 78a:	03 72 04             	add    0x4(%edx),%esi
 78d:	89 73 fc             	mov    %esi,-0x4(%ebx)
 790:	8b 10                	mov    (%eax),%edx
 792:	8b 12                	mov    (%edx),%edx
 794:	89 53 f8             	mov    %edx,-0x8(%ebx)
 797:	eb db                	jmp    0x774
 799:	03 53 fc             	add    -0x4(%ebx),%edx
 79c:	89 50 04             	mov    %edx,0x4(%eax)
 79f:	8b 53 f8             	mov    -0x8(%ebx),%edx
 7a2:	89 10                	mov    %edx,(%eax)
 7a4:	eb da                	jmp    0x780
 7a6:	55                   	push   %ebp
 7a7:	89 e5                	mov    %esp,%ebp
 7a9:	53                   	push   %ebx
 7aa:	83 ec 04             	sub    $0x4,%esp
 7ad:	89 c3                	mov    %eax,%ebx
 7af:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 7b4:	77 05                	ja     0x7bb
 7b6:	bb 00 10 00 00       	mov    $0x1000,%ebx
 7bb:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 7c2:	83 ec 0c             	sub    $0xc,%esp
 7c5:	50                   	push   %eax
 7c6:	e8 40 fd ff ff       	call   0x50b
 7cb:	83 c4 10             	add    $0x10,%esp
 7ce:	83 f8 ff             	cmp    $0xffffffff,%eax
 7d1:	74 1c                	je     0x7ef
 7d3:	89 58 04             	mov    %ebx,0x4(%eax)
 7d6:	83 c0 08             	add    $0x8,%eax
 7d9:	83 ec 0c             	sub    $0xc,%esp
 7dc:	50                   	push   %eax
 7dd:	e8 54 ff ff ff       	call   0x736
 7e2:	a1 44 0c 00 00       	mov    0xc44,%eax
 7e7:	83 c4 10             	add    $0x10,%esp
 7ea:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 7ed:	c9                   	leave  
 7ee:	c3                   	ret    
 7ef:	b8 00 00 00 00       	mov    $0x0,%eax
 7f4:	eb f4                	jmp    0x7ea
 7f6:	55                   	push   %ebp
 7f7:	89 e5                	mov    %esp,%ebp
 7f9:	53                   	push   %ebx
 7fa:	83 ec 04             	sub    $0x4,%esp
 7fd:	8b 45 08             	mov    0x8(%ebp),%eax
 800:	8d 58 07             	lea    0x7(%eax),%ebx
 803:	c1 eb 03             	shr    $0x3,%ebx
 806:	83 c3 01             	add    $0x1,%ebx
 809:	8b 0d 44 0c 00 00    	mov    0xc44,%ecx
 80f:	85 c9                	test   %ecx,%ecx
 811:	74 04                	je     0x817
 813:	8b 01                	mov    (%ecx),%eax
 815:	eb 4a                	jmp    0x861
 817:	c7 05 44 0c 00 00 48 	movl   $0xc48,0xc44
 81e:	0c 00 00 
 821:	c7 05 48 0c 00 00 48 	movl   $0xc48,0xc48
 828:	0c 00 00 
 82b:	c7 05 4c 0c 00 00 00 	movl   $0x0,0xc4c
 832:	00 00 00 
 835:	b9 48 0c 00 00       	mov    $0xc48,%ecx
 83a:	eb d7                	jmp    0x813
 83c:	74 19                	je     0x857
 83e:	29 da                	sub    %ebx,%edx
 840:	89 50 04             	mov    %edx,0x4(%eax)
 843:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 846:	89 58 04             	mov    %ebx,0x4(%eax)
 849:	89 0d 44 0c 00 00    	mov    %ecx,0xc44
 84f:	83 c0 08             	add    $0x8,%eax
 852:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 855:	c9                   	leave  
 856:	c3                   	ret    
 857:	8b 10                	mov    (%eax),%edx
 859:	89 11                	mov    %edx,(%ecx)
 85b:	eb ec                	jmp    0x849
 85d:	89 c1                	mov    %eax,%ecx
 85f:	8b 00                	mov    (%eax),%eax
 861:	8b 50 04             	mov    0x4(%eax),%edx
 864:	39 da                	cmp    %ebx,%edx
 866:	73 d4                	jae    0x83c
 868:	39 05 44 0c 00 00    	cmp    %eax,0xc44
 86e:	75 ed                	jne    0x85d
 870:	89 d8                	mov    %ebx,%eax
 872:	e8 2f ff ff ff       	call   0x7a6
 877:	85 c0                	test   %eax,%eax
 879:	75 e2                	jne    0x85d
 87b:	eb d5                	jmp    0x852
