
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
   c:	e8 33 03 00 00       	call   0x344
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
  2b:	e8 14 03 00 00       	call   0x344
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
  45:	e8 fa 02 00 00       	call   0x344
  4a:	83 c4 0c             	add    $0xc,%esp
  4d:	50                   	push   %eax
  4e:	53                   	push   %ebx
  4f:	68 6c 0c 00 00       	push   $0xc6c
  54:	e8 1c 04 00 00       	call   0x475
  59:	89 1c 24             	mov    %ebx,(%esp)
  5c:	e8 e3 02 00 00       	call   0x344
  61:	89 c6                	mov    %eax,%esi
  63:	89 1c 24             	mov    %ebx,(%esp)
  66:	e8 d9 02 00 00       	call   0x344
  6b:	83 c4 0c             	add    $0xc,%esp
  6e:	ba 0e 00 00 00       	mov    $0xe,%edx
  73:	29 f2                	sub    %esi,%edx
  75:	52                   	push   %edx
  76:	6a 20                	push   $0x20
  78:	05 6c 0c 00 00       	add    $0xc6c,%eax
  7d:	50                   	push   %eax
  7e:	e8 dd 02 00 00       	call   0x360
  83:	83 c4 10             	add    $0x10,%esp
  86:	bb 6c 0c 00 00       	mov    $0xc6c,%ebx
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
  9f:	e8 49 04 00 00       	call   0x4ed
  a4:	83 c4 10             	add    $0x10,%esp
  a7:	85 c0                	test   %eax,%eax
  a9:	0f 88 8c 00 00 00    	js     0x13b
  af:	89 c7                	mov    %eax,%edi
  b1:	83 ec 08             	sub    $0x8,%esp
  b4:	8d 85 c4 fd ff ff    	lea    -0x23c(%ebp),%eax
  ba:	50                   	push   %eax
  bb:	57                   	push   %edi
  bc:	e8 44 04 00 00       	call   0x505
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
 118:	68 e0 08 00 00       	push   $0x8e0
 11d:	6a 01                	push   $0x1
 11f:	e8 de 04 00 00       	call   0x602
 124:	83 c4 20             	add    $0x20,%esp
 127:	83 ec 0c             	sub    $0xc,%esp
 12a:	57                   	push   %edi
 12b:	e8 a5 03 00 00       	call   0x4d5
 130:	83 c4 10             	add    $0x10,%esp
 133:	8d 65 f4             	lea    -0xc(%ebp),%esp
 136:	5b                   	pop    %ebx
 137:	5e                   	pop    %esi
 138:	5f                   	pop    %edi
 139:	5d                   	pop    %ebp
 13a:	c3                   	ret    
 13b:	83 ec 04             	sub    $0x4,%esp
 13e:	53                   	push   %ebx
 13f:	68 b8 08 00 00       	push   $0x8b8
 144:	6a 02                	push   $0x2
 146:	e8 b7 04 00 00       	call   0x602
 14b:	83 c4 10             	add    $0x10,%esp
 14e:	eb e3                	jmp    0x133
 150:	83 ec 04             	sub    $0x4,%esp
 153:	53                   	push   %ebx
 154:	68 cc 08 00 00       	push   $0x8cc
 159:	6a 02                	push   $0x2
 15b:	e8 a2 04 00 00       	call   0x602
 160:	89 3c 24             	mov    %edi,(%esp)
 163:	e8 6d 03 00 00       	call   0x4d5
 168:	83 c4 10             	add    $0x10,%esp
 16b:	eb c6                	jmp    0x133
 16d:	83 ec 0c             	sub    $0xc,%esp
 170:	53                   	push   %ebx
 171:	e8 ce 01 00 00       	call   0x344
 176:	83 c0 10             	add    $0x10,%eax
 179:	83 c4 10             	add    $0x10,%esp
 17c:	3d 00 02 00 00       	cmp    $0x200,%eax
 181:	76 14                	jbe    0x197
 183:	83 ec 08             	sub    $0x8,%esp
 186:	68 ed 08 00 00       	push   $0x8ed
 18b:	6a 01                	push   $0x1
 18d:	e8 70 04 00 00       	call   0x602
 192:	83 c4 10             	add    $0x10,%esp
 195:	eb 90                	jmp    0x127
 197:	83 ec 08             	sub    $0x8,%esp
 19a:	53                   	push   %ebx
 19b:	8d b5 e8 fd ff ff    	lea    -0x218(%ebp),%esi
 1a1:	56                   	push   %esi
 1a2:	e8 49 01 00 00       	call   0x2f0
 1a7:	89 34 24             	mov    %esi,(%esp)
 1aa:	e8 95 01 00 00       	call   0x344
 1af:	01 c6                	add    %eax,%esi
 1b1:	8d 46 01             	lea    0x1(%esi),%eax
 1b4:	89 85 ac fd ff ff    	mov    %eax,-0x254(%ebp)
 1ba:	c6 06 2f             	movb   $0x2f,(%esi)
 1bd:	83 c4 10             	add    $0x10,%esp
 1c0:	eb 19                	jmp    0x1db
 1c2:	83 ec 04             	sub    $0x4,%esp
 1c5:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 1cb:	50                   	push   %eax
 1cc:	68 cc 08 00 00       	push   $0x8cc
 1d1:	6a 01                	push   $0x1
 1d3:	e8 2a 04 00 00       	call   0x602
 1d8:	83 c4 10             	add    $0x10,%esp
 1db:	83 ec 04             	sub    $0x4,%esp
 1de:	6a 10                	push   $0x10
 1e0:	8d 85 d8 fd ff ff    	lea    -0x228(%ebp),%eax
 1e6:	50                   	push   %eax
 1e7:	57                   	push   %edi
 1e8:	e8 d8 02 00 00       	call   0x4c5
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
 215:	e8 5b 02 00 00       	call   0x475
 21a:	c6 46 0f 00          	movb   $0x0,0xf(%esi)
 21e:	83 c4 08             	add    $0x8,%esp
 221:	8d 85 c4 fd ff ff    	lea    -0x23c(%ebp),%eax
 227:	50                   	push   %eax
 228:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 22e:	50                   	push   %eax
 22f:	e8 c7 01 00 00       	call   0x3fb
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
 27f:	68 e0 08 00 00       	push   $0x8e0
 284:	6a 01                	push   $0x1
 286:	e8 77 03 00 00       	call   0x602
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
 2b6:	eb 2a                	jmp    0x2e2
 2b8:	83 ec 0c             	sub    $0xc,%esp
 2bb:	68 00 09 00 00       	push   $0x900
 2c0:	e8 c8 fd ff ff       	call   0x8d
 2c5:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 2cc:	e8 dc 01 00 00       	call   0x4ad
 2d1:	83 ec 0c             	sub    $0xc,%esp
 2d4:	ff 34 9f             	push   (%edi,%ebx,4)
 2d7:	e8 b1 fd ff ff       	call   0x8d
 2dc:	83 c3 01             	add    $0x1,%ebx
 2df:	83 c4 10             	add    $0x10,%esp
 2e2:	39 f3                	cmp    %esi,%ebx
 2e4:	7c eb                	jl     0x2d1
 2e6:	83 ec 0c             	sub    $0xc,%esp
 2e9:	6a 00                	push   $0x0
 2eb:	e8 bd 01 00 00       	call   0x4ad
 2f0:	f3 0f 1e fb          	endbr32 
 2f4:	55                   	push   %ebp
 2f5:	89 e5                	mov    %esp,%ebp
 2f7:	56                   	push   %esi
 2f8:	53                   	push   %ebx
 2f9:	8b 75 08             	mov    0x8(%ebp),%esi
 2fc:	8b 55 0c             	mov    0xc(%ebp),%edx
 2ff:	89 f0                	mov    %esi,%eax
 301:	89 d1                	mov    %edx,%ecx
 303:	83 c2 01             	add    $0x1,%edx
 306:	89 c3                	mov    %eax,%ebx
 308:	83 c0 01             	add    $0x1,%eax
 30b:	0f b6 09             	movzbl (%ecx),%ecx
 30e:	88 0b                	mov    %cl,(%ebx)
 310:	84 c9                	test   %cl,%cl
 312:	75 ed                	jne    0x301
 314:	89 f0                	mov    %esi,%eax
 316:	5b                   	pop    %ebx
 317:	5e                   	pop    %esi
 318:	5d                   	pop    %ebp
 319:	c3                   	ret    
 31a:	f3 0f 1e fb          	endbr32 
 31e:	55                   	push   %ebp
 31f:	89 e5                	mov    %esp,%ebp
 321:	8b 4d 08             	mov    0x8(%ebp),%ecx
 324:	8b 55 0c             	mov    0xc(%ebp),%edx
 327:	0f b6 01             	movzbl (%ecx),%eax
 32a:	84 c0                	test   %al,%al
 32c:	74 0c                	je     0x33a
 32e:	3a 02                	cmp    (%edx),%al
 330:	75 08                	jne    0x33a
 332:	83 c1 01             	add    $0x1,%ecx
 335:	83 c2 01             	add    $0x1,%edx
 338:	eb ed                	jmp    0x327
 33a:	0f b6 c0             	movzbl %al,%eax
 33d:	0f b6 12             	movzbl (%edx),%edx
 340:	29 d0                	sub    %edx,%eax
 342:	5d                   	pop    %ebp
 343:	c3                   	ret    
 344:	f3 0f 1e fb          	endbr32 
 348:	55                   	push   %ebp
 349:	89 e5                	mov    %esp,%ebp
 34b:	8b 4d 08             	mov    0x8(%ebp),%ecx
 34e:	b8 00 00 00 00       	mov    $0x0,%eax
 353:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
 357:	74 05                	je     0x35e
 359:	83 c0 01             	add    $0x1,%eax
 35c:	eb f5                	jmp    0x353
 35e:	5d                   	pop    %ebp
 35f:	c3                   	ret    
 360:	f3 0f 1e fb          	endbr32 
 364:	55                   	push   %ebp
 365:	89 e5                	mov    %esp,%ebp
 367:	57                   	push   %edi
 368:	8b 55 08             	mov    0x8(%ebp),%edx
 36b:	89 d7                	mov    %edx,%edi
 36d:	8b 4d 10             	mov    0x10(%ebp),%ecx
 370:	8b 45 0c             	mov    0xc(%ebp),%eax
 373:	fc                   	cld    
 374:	f3 aa                	rep stos %al,%es:(%edi)
 376:	89 d0                	mov    %edx,%eax
 378:	5f                   	pop    %edi
 379:	5d                   	pop    %ebp
 37a:	c3                   	ret    
 37b:	f3 0f 1e fb          	endbr32 
 37f:	55                   	push   %ebp
 380:	89 e5                	mov    %esp,%ebp
 382:	8b 45 08             	mov    0x8(%ebp),%eax
 385:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
 389:	0f b6 10             	movzbl (%eax),%edx
 38c:	84 d2                	test   %dl,%dl
 38e:	74 09                	je     0x399
 390:	38 ca                	cmp    %cl,%dl
 392:	74 0a                	je     0x39e
 394:	83 c0 01             	add    $0x1,%eax
 397:	eb f0                	jmp    0x389
 399:	b8 00 00 00 00       	mov    $0x0,%eax
 39e:	5d                   	pop    %ebp
 39f:	c3                   	ret    
 3a0:	f3 0f 1e fb          	endbr32 
 3a4:	55                   	push   %ebp
 3a5:	89 e5                	mov    %esp,%ebp
 3a7:	57                   	push   %edi
 3a8:	56                   	push   %esi
 3a9:	53                   	push   %ebx
 3aa:	83 ec 1c             	sub    $0x1c,%esp
 3ad:	8b 7d 08             	mov    0x8(%ebp),%edi
 3b0:	bb 00 00 00 00       	mov    $0x0,%ebx
 3b5:	89 de                	mov    %ebx,%esi
 3b7:	83 c3 01             	add    $0x1,%ebx
 3ba:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 3bd:	7d 2e                	jge    0x3ed
 3bf:	83 ec 04             	sub    $0x4,%esp
 3c2:	6a 01                	push   $0x1
 3c4:	8d 45 e7             	lea    -0x19(%ebp),%eax
 3c7:	50                   	push   %eax
 3c8:	6a 00                	push   $0x0
 3ca:	e8 f6 00 00 00       	call   0x4c5
 3cf:	83 c4 10             	add    $0x10,%esp
 3d2:	85 c0                	test   %eax,%eax
 3d4:	7e 17                	jle    0x3ed
 3d6:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 3da:	88 04 37             	mov    %al,(%edi,%esi,1)
 3dd:	3c 0a                	cmp    $0xa,%al
 3df:	0f 94 c2             	sete   %dl
 3e2:	3c 0d                	cmp    $0xd,%al
 3e4:	0f 94 c0             	sete   %al
 3e7:	08 c2                	or     %al,%dl
 3e9:	74 ca                	je     0x3b5
 3eb:	89 de                	mov    %ebx,%esi
 3ed:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 3f1:	89 f8                	mov    %edi,%eax
 3f3:	8d 65 f4             	lea    -0xc(%ebp),%esp
 3f6:	5b                   	pop    %ebx
 3f7:	5e                   	pop    %esi
 3f8:	5f                   	pop    %edi
 3f9:	5d                   	pop    %ebp
 3fa:	c3                   	ret    
 3fb:	f3 0f 1e fb          	endbr32 
 3ff:	55                   	push   %ebp
 400:	89 e5                	mov    %esp,%ebp
 402:	56                   	push   %esi
 403:	53                   	push   %ebx
 404:	83 ec 08             	sub    $0x8,%esp
 407:	6a 00                	push   $0x0
 409:	ff 75 08             	push   0x8(%ebp)
 40c:	e8 dc 00 00 00       	call   0x4ed
 411:	83 c4 10             	add    $0x10,%esp
 414:	85 c0                	test   %eax,%eax
 416:	78 24                	js     0x43c
 418:	89 c3                	mov    %eax,%ebx
 41a:	83 ec 08             	sub    $0x8,%esp
 41d:	ff 75 0c             	push   0xc(%ebp)
 420:	50                   	push   %eax
 421:	e8 df 00 00 00       	call   0x505
 426:	89 c6                	mov    %eax,%esi
 428:	89 1c 24             	mov    %ebx,(%esp)
 42b:	e8 a5 00 00 00       	call   0x4d5
 430:	83 c4 10             	add    $0x10,%esp
 433:	89 f0                	mov    %esi,%eax
 435:	8d 65 f8             	lea    -0x8(%ebp),%esp
 438:	5b                   	pop    %ebx
 439:	5e                   	pop    %esi
 43a:	5d                   	pop    %ebp
 43b:	c3                   	ret    
 43c:	be ff ff ff ff       	mov    $0xffffffff,%esi
 441:	eb f0                	jmp    0x433
 443:	f3 0f 1e fb          	endbr32 
 447:	55                   	push   %ebp
 448:	89 e5                	mov    %esp,%ebp
 44a:	53                   	push   %ebx
 44b:	8b 4d 08             	mov    0x8(%ebp),%ecx
 44e:	ba 00 00 00 00       	mov    $0x0,%edx
 453:	0f b6 01             	movzbl (%ecx),%eax
 456:	8d 58 d0             	lea    -0x30(%eax),%ebx
 459:	80 fb 09             	cmp    $0x9,%bl
 45c:	77 12                	ja     0x470
 45e:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 461:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 464:	83 c1 01             	add    $0x1,%ecx
 467:	0f be c0             	movsbl %al,%eax
 46a:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 46e:	eb e3                	jmp    0x453
 470:	89 d0                	mov    %edx,%eax
 472:	5b                   	pop    %ebx
 473:	5d                   	pop    %ebp
 474:	c3                   	ret    
 475:	f3 0f 1e fb          	endbr32 
 479:	55                   	push   %ebp
 47a:	89 e5                	mov    %esp,%ebp
 47c:	56                   	push   %esi
 47d:	53                   	push   %ebx
 47e:	8b 75 08             	mov    0x8(%ebp),%esi
 481:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 484:	8b 45 10             	mov    0x10(%ebp),%eax
 487:	89 f2                	mov    %esi,%edx
 489:	8d 58 ff             	lea    -0x1(%eax),%ebx
 48c:	85 c0                	test   %eax,%eax
 48e:	7e 0f                	jle    0x49f
 490:	0f b6 01             	movzbl (%ecx),%eax
 493:	88 02                	mov    %al,(%edx)
 495:	8d 49 01             	lea    0x1(%ecx),%ecx
 498:	8d 52 01             	lea    0x1(%edx),%edx
 49b:	89 d8                	mov    %ebx,%eax
 49d:	eb ea                	jmp    0x489
 49f:	89 f0                	mov    %esi,%eax
 4a1:	5b                   	pop    %ebx
 4a2:	5e                   	pop    %esi
 4a3:	5d                   	pop    %ebp
 4a4:	c3                   	ret    
 4a5:	b8 01 00 00 00       	mov    $0x1,%eax
 4aa:	cd 40                	int    $0x40
 4ac:	c3                   	ret    
 4ad:	b8 02 00 00 00       	mov    $0x2,%eax
 4b2:	cd 40                	int    $0x40
 4b4:	c3                   	ret    
 4b5:	b8 03 00 00 00       	mov    $0x3,%eax
 4ba:	cd 40                	int    $0x40
 4bc:	c3                   	ret    
 4bd:	b8 04 00 00 00       	mov    $0x4,%eax
 4c2:	cd 40                	int    $0x40
 4c4:	c3                   	ret    
 4c5:	b8 05 00 00 00       	mov    $0x5,%eax
 4ca:	cd 40                	int    $0x40
 4cc:	c3                   	ret    
 4cd:	b8 10 00 00 00       	mov    $0x10,%eax
 4d2:	cd 40                	int    $0x40
 4d4:	c3                   	ret    
 4d5:	b8 15 00 00 00       	mov    $0x15,%eax
 4da:	cd 40                	int    $0x40
 4dc:	c3                   	ret    
 4dd:	b8 06 00 00 00       	mov    $0x6,%eax
 4e2:	cd 40                	int    $0x40
 4e4:	c3                   	ret    
 4e5:	b8 07 00 00 00       	mov    $0x7,%eax
 4ea:	cd 40                	int    $0x40
 4ec:	c3                   	ret    
 4ed:	b8 0f 00 00 00       	mov    $0xf,%eax
 4f2:	cd 40                	int    $0x40
 4f4:	c3                   	ret    
 4f5:	b8 11 00 00 00       	mov    $0x11,%eax
 4fa:	cd 40                	int    $0x40
 4fc:	c3                   	ret    
 4fd:	b8 12 00 00 00       	mov    $0x12,%eax
 502:	cd 40                	int    $0x40
 504:	c3                   	ret    
 505:	b8 08 00 00 00       	mov    $0x8,%eax
 50a:	cd 40                	int    $0x40
 50c:	c3                   	ret    
 50d:	b8 13 00 00 00       	mov    $0x13,%eax
 512:	cd 40                	int    $0x40
 514:	c3                   	ret    
 515:	b8 14 00 00 00       	mov    $0x14,%eax
 51a:	cd 40                	int    $0x40
 51c:	c3                   	ret    
 51d:	b8 09 00 00 00       	mov    $0x9,%eax
 522:	cd 40                	int    $0x40
 524:	c3                   	ret    
 525:	b8 0a 00 00 00       	mov    $0xa,%eax
 52a:	cd 40                	int    $0x40
 52c:	c3                   	ret    
 52d:	b8 0b 00 00 00       	mov    $0xb,%eax
 532:	cd 40                	int    $0x40
 534:	c3                   	ret    
 535:	b8 0c 00 00 00       	mov    $0xc,%eax
 53a:	cd 40                	int    $0x40
 53c:	c3                   	ret    
 53d:	b8 0d 00 00 00       	mov    $0xd,%eax
 542:	cd 40                	int    $0x40
 544:	c3                   	ret    
 545:	b8 0e 00 00 00       	mov    $0xe,%eax
 54a:	cd 40                	int    $0x40
 54c:	c3                   	ret    
 54d:	b8 16 00 00 00       	mov    $0x16,%eax
 552:	cd 40                	int    $0x40
 554:	c3                   	ret    
 555:	b8 17 00 00 00       	mov    $0x17,%eax
 55a:	cd 40                	int    $0x40
 55c:	c3                   	ret    
 55d:	55                   	push   %ebp
 55e:	89 e5                	mov    %esp,%ebp
 560:	83 ec 1c             	sub    $0x1c,%esp
 563:	88 55 f4             	mov    %dl,-0xc(%ebp)
 566:	6a 01                	push   $0x1
 568:	8d 55 f4             	lea    -0xc(%ebp),%edx
 56b:	52                   	push   %edx
 56c:	50                   	push   %eax
 56d:	e8 5b ff ff ff       	call   0x4cd
 572:	83 c4 10             	add    $0x10,%esp
 575:	c9                   	leave  
 576:	c3                   	ret    
 577:	55                   	push   %ebp
 578:	89 e5                	mov    %esp,%ebp
 57a:	57                   	push   %edi
 57b:	56                   	push   %esi
 57c:	53                   	push   %ebx
 57d:	83 ec 2c             	sub    $0x2c,%esp
 580:	89 45 d0             	mov    %eax,-0x30(%ebp)
 583:	89 d0                	mov    %edx,%eax
 585:	89 ce                	mov    %ecx,%esi
 587:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 58b:	0f 95 c1             	setne  %cl
 58e:	c1 ea 1f             	shr    $0x1f,%edx
 591:	84 d1                	test   %dl,%cl
 593:	74 44                	je     0x5d9
 595:	f7 d8                	neg    %eax
 597:	89 c1                	mov    %eax,%ecx
 599:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 5a0:	bb 00 00 00 00       	mov    $0x0,%ebx
 5a5:	89 c8                	mov    %ecx,%eax
 5a7:	ba 00 00 00 00       	mov    $0x0,%edx
 5ac:	f7 f6                	div    %esi
 5ae:	89 df                	mov    %ebx,%edi
 5b0:	83 c3 01             	add    $0x1,%ebx
 5b3:	0f b6 92 64 09 00 00 	movzbl 0x964(%edx),%edx
 5ba:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 5be:	89 ca                	mov    %ecx,%edx
 5c0:	89 c1                	mov    %eax,%ecx
 5c2:	39 d6                	cmp    %edx,%esi
 5c4:	76 df                	jbe    0x5a5
 5c6:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 5ca:	74 31                	je     0x5fd
 5cc:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 5d1:	8d 5f 02             	lea    0x2(%edi),%ebx
 5d4:	8b 75 d0             	mov    -0x30(%ebp),%esi
 5d7:	eb 17                	jmp    0x5f0
 5d9:	89 c1                	mov    %eax,%ecx
 5db:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 5e2:	eb bc                	jmp    0x5a0
 5e4:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 5e9:	89 f0                	mov    %esi,%eax
 5eb:	e8 6d ff ff ff       	call   0x55d
 5f0:	83 eb 01             	sub    $0x1,%ebx
 5f3:	79 ef                	jns    0x5e4
 5f5:	83 c4 2c             	add    $0x2c,%esp
 5f8:	5b                   	pop    %ebx
 5f9:	5e                   	pop    %esi
 5fa:	5f                   	pop    %edi
 5fb:	5d                   	pop    %ebp
 5fc:	c3                   	ret    
 5fd:	8b 75 d0             	mov    -0x30(%ebp),%esi
 600:	eb ee                	jmp    0x5f0
 602:	55                   	push   %ebp
 603:	89 e5                	mov    %esp,%ebp
 605:	57                   	push   %edi
 606:	56                   	push   %esi
 607:	53                   	push   %ebx
 608:	83 ec 1c             	sub    $0x1c,%esp
 60b:	8d 45 10             	lea    0x10(%ebp),%eax
 60e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 611:	be 00 00 00 00       	mov    $0x0,%esi
 616:	bb 00 00 00 00       	mov    $0x0,%ebx
 61b:	eb 14                	jmp    0x631
 61d:	89 fa                	mov    %edi,%edx
 61f:	8b 45 08             	mov    0x8(%ebp),%eax
 622:	e8 36 ff ff ff       	call   0x55d
 627:	eb 05                	jmp    0x62e
 629:	83 fe 25             	cmp    $0x25,%esi
 62c:	74 25                	je     0x653
 62e:	83 c3 01             	add    $0x1,%ebx
 631:	8b 45 0c             	mov    0xc(%ebp),%eax
 634:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 638:	84 c0                	test   %al,%al
 63a:	0f 84 20 01 00 00    	je     0x760
 640:	0f be f8             	movsbl %al,%edi
 643:	0f b6 c0             	movzbl %al,%eax
 646:	85 f6                	test   %esi,%esi
 648:	75 df                	jne    0x629
 64a:	83 f8 25             	cmp    $0x25,%eax
 64d:	75 ce                	jne    0x61d
 64f:	89 c6                	mov    %eax,%esi
 651:	eb db                	jmp    0x62e
 653:	83 f8 25             	cmp    $0x25,%eax
 656:	0f 84 cf 00 00 00    	je     0x72b
 65c:	0f 8c dd 00 00 00    	jl     0x73f
 662:	83 f8 78             	cmp    $0x78,%eax
 665:	0f 8f d4 00 00 00    	jg     0x73f
 66b:	83 f8 63             	cmp    $0x63,%eax
 66e:	0f 8c cb 00 00 00    	jl     0x73f
 674:	83 e8 63             	sub    $0x63,%eax
 677:	83 f8 15             	cmp    $0x15,%eax
 67a:	0f 87 bf 00 00 00    	ja     0x73f
 680:	ff 24 85 0c 09 00 00 	jmp    *0x90c(,%eax,4)
 687:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 68a:	8b 17                	mov    (%edi),%edx
 68c:	83 ec 0c             	sub    $0xc,%esp
 68f:	6a 01                	push   $0x1
 691:	b9 0a 00 00 00       	mov    $0xa,%ecx
 696:	8b 45 08             	mov    0x8(%ebp),%eax
 699:	e8 d9 fe ff ff       	call   0x577
 69e:	83 c7 04             	add    $0x4,%edi
 6a1:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 6a4:	83 c4 10             	add    $0x10,%esp
 6a7:	be 00 00 00 00       	mov    $0x0,%esi
 6ac:	eb 80                	jmp    0x62e
 6ae:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 6b1:	8b 17                	mov    (%edi),%edx
 6b3:	83 ec 0c             	sub    $0xc,%esp
 6b6:	6a 00                	push   $0x0
 6b8:	b9 10 00 00 00       	mov    $0x10,%ecx
 6bd:	8b 45 08             	mov    0x8(%ebp),%eax
 6c0:	e8 b2 fe ff ff       	call   0x577
 6c5:	83 c7 04             	add    $0x4,%edi
 6c8:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 6cb:	83 c4 10             	add    $0x10,%esp
 6ce:	be 00 00 00 00       	mov    $0x0,%esi
 6d3:	e9 56 ff ff ff       	jmp    0x62e
 6d8:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 6db:	8b 30                	mov    (%eax),%esi
 6dd:	83 c0 04             	add    $0x4,%eax
 6e0:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 6e3:	85 f6                	test   %esi,%esi
 6e5:	75 15                	jne    0x6fc
 6e7:	be 02 09 00 00       	mov    $0x902,%esi
 6ec:	eb 0e                	jmp    0x6fc
 6ee:	0f be d2             	movsbl %dl,%edx
 6f1:	8b 45 08             	mov    0x8(%ebp),%eax
 6f4:	e8 64 fe ff ff       	call   0x55d
 6f9:	83 c6 01             	add    $0x1,%esi
 6fc:	0f b6 16             	movzbl (%esi),%edx
 6ff:	84 d2                	test   %dl,%dl
 701:	75 eb                	jne    0x6ee
 703:	be 00 00 00 00       	mov    $0x0,%esi
 708:	e9 21 ff ff ff       	jmp    0x62e
 70d:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 710:	0f be 17             	movsbl (%edi),%edx
 713:	8b 45 08             	mov    0x8(%ebp),%eax
 716:	e8 42 fe ff ff       	call   0x55d
 71b:	83 c7 04             	add    $0x4,%edi
 71e:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 721:	be 00 00 00 00       	mov    $0x0,%esi
 726:	e9 03 ff ff ff       	jmp    0x62e
 72b:	89 fa                	mov    %edi,%edx
 72d:	8b 45 08             	mov    0x8(%ebp),%eax
 730:	e8 28 fe ff ff       	call   0x55d
 735:	be 00 00 00 00       	mov    $0x0,%esi
 73a:	e9 ef fe ff ff       	jmp    0x62e
 73f:	ba 25 00 00 00       	mov    $0x25,%edx
 744:	8b 45 08             	mov    0x8(%ebp),%eax
 747:	e8 11 fe ff ff       	call   0x55d
 74c:	89 fa                	mov    %edi,%edx
 74e:	8b 45 08             	mov    0x8(%ebp),%eax
 751:	e8 07 fe ff ff       	call   0x55d
 756:	be 00 00 00 00       	mov    $0x0,%esi
 75b:	e9 ce fe ff ff       	jmp    0x62e
 760:	8d 65 f4             	lea    -0xc(%ebp),%esp
 763:	5b                   	pop    %ebx
 764:	5e                   	pop    %esi
 765:	5f                   	pop    %edi
 766:	5d                   	pop    %ebp
 767:	c3                   	ret    
 768:	f3 0f 1e fb          	endbr32 
 76c:	55                   	push   %ebp
 76d:	89 e5                	mov    %esp,%ebp
 76f:	57                   	push   %edi
 770:	56                   	push   %esi
 771:	53                   	push   %ebx
 772:	8b 5d 08             	mov    0x8(%ebp),%ebx
 775:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 778:	a1 7c 0c 00 00       	mov    0xc7c,%eax
 77d:	eb 02                	jmp    0x781
 77f:	89 d0                	mov    %edx,%eax
 781:	39 c8                	cmp    %ecx,%eax
 783:	73 04                	jae    0x789
 785:	39 08                	cmp    %ecx,(%eax)
 787:	77 12                	ja     0x79b
 789:	8b 10                	mov    (%eax),%edx
 78b:	39 c2                	cmp    %eax,%edx
 78d:	77 f0                	ja     0x77f
 78f:	39 c8                	cmp    %ecx,%eax
 791:	72 08                	jb     0x79b
 793:	39 ca                	cmp    %ecx,%edx
 795:	77 04                	ja     0x79b
 797:	89 d0                	mov    %edx,%eax
 799:	eb e6                	jmp    0x781
 79b:	8b 73 fc             	mov    -0x4(%ebx),%esi
 79e:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 7a1:	8b 10                	mov    (%eax),%edx
 7a3:	39 d7                	cmp    %edx,%edi
 7a5:	74 19                	je     0x7c0
 7a7:	89 53 f8             	mov    %edx,-0x8(%ebx)
 7aa:	8b 50 04             	mov    0x4(%eax),%edx
 7ad:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 7b0:	39 ce                	cmp    %ecx,%esi
 7b2:	74 1b                	je     0x7cf
 7b4:	89 08                	mov    %ecx,(%eax)
 7b6:	a3 7c 0c 00 00       	mov    %eax,0xc7c
 7bb:	5b                   	pop    %ebx
 7bc:	5e                   	pop    %esi
 7bd:	5f                   	pop    %edi
 7be:	5d                   	pop    %ebp
 7bf:	c3                   	ret    
 7c0:	03 72 04             	add    0x4(%edx),%esi
 7c3:	89 73 fc             	mov    %esi,-0x4(%ebx)
 7c6:	8b 10                	mov    (%eax),%edx
 7c8:	8b 12                	mov    (%edx),%edx
 7ca:	89 53 f8             	mov    %edx,-0x8(%ebx)
 7cd:	eb db                	jmp    0x7aa
 7cf:	03 53 fc             	add    -0x4(%ebx),%edx
 7d2:	89 50 04             	mov    %edx,0x4(%eax)
 7d5:	8b 53 f8             	mov    -0x8(%ebx),%edx
 7d8:	89 10                	mov    %edx,(%eax)
 7da:	eb da                	jmp    0x7b6
 7dc:	55                   	push   %ebp
 7dd:	89 e5                	mov    %esp,%ebp
 7df:	53                   	push   %ebx
 7e0:	83 ec 04             	sub    $0x4,%esp
 7e3:	89 c3                	mov    %eax,%ebx
 7e5:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 7ea:	77 05                	ja     0x7f1
 7ec:	bb 00 10 00 00       	mov    $0x1000,%ebx
 7f1:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 7f8:	83 ec 0c             	sub    $0xc,%esp
 7fb:	50                   	push   %eax
 7fc:	e8 34 fd ff ff       	call   0x535
 801:	83 c4 10             	add    $0x10,%esp
 804:	83 f8 ff             	cmp    $0xffffffff,%eax
 807:	74 1c                	je     0x825
 809:	89 58 04             	mov    %ebx,0x4(%eax)
 80c:	83 c0 08             	add    $0x8,%eax
 80f:	83 ec 0c             	sub    $0xc,%esp
 812:	50                   	push   %eax
 813:	e8 50 ff ff ff       	call   0x768
 818:	a1 7c 0c 00 00       	mov    0xc7c,%eax
 81d:	83 c4 10             	add    $0x10,%esp
 820:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 823:	c9                   	leave  
 824:	c3                   	ret    
 825:	b8 00 00 00 00       	mov    $0x0,%eax
 82a:	eb f4                	jmp    0x820
 82c:	f3 0f 1e fb          	endbr32 
 830:	55                   	push   %ebp
 831:	89 e5                	mov    %esp,%ebp
 833:	53                   	push   %ebx
 834:	83 ec 04             	sub    $0x4,%esp
 837:	8b 45 08             	mov    0x8(%ebp),%eax
 83a:	8d 58 07             	lea    0x7(%eax),%ebx
 83d:	c1 eb 03             	shr    $0x3,%ebx
 840:	83 c3 01             	add    $0x1,%ebx
 843:	8b 0d 7c 0c 00 00    	mov    0xc7c,%ecx
 849:	85 c9                	test   %ecx,%ecx
 84b:	74 04                	je     0x851
 84d:	8b 01                	mov    (%ecx),%eax
 84f:	eb 4b                	jmp    0x89c
 851:	c7 05 7c 0c 00 00 80 	movl   $0xc80,0xc7c
 858:	0c 00 00 
 85b:	c7 05 80 0c 00 00 80 	movl   $0xc80,0xc80
 862:	0c 00 00 
 865:	c7 05 84 0c 00 00 00 	movl   $0x0,0xc84
 86c:	00 00 00 
 86f:	b9 80 0c 00 00       	mov    $0xc80,%ecx
 874:	eb d7                	jmp    0x84d
 876:	74 1a                	je     0x892
 878:	29 da                	sub    %ebx,%edx
 87a:	89 50 04             	mov    %edx,0x4(%eax)
 87d:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 880:	89 58 04             	mov    %ebx,0x4(%eax)
 883:	89 0d 7c 0c 00 00    	mov    %ecx,0xc7c
 889:	83 c0 08             	add    $0x8,%eax
 88c:	83 c4 04             	add    $0x4,%esp
 88f:	5b                   	pop    %ebx
 890:	5d                   	pop    %ebp
 891:	c3                   	ret    
 892:	8b 10                	mov    (%eax),%edx
 894:	89 11                	mov    %edx,(%ecx)
 896:	eb eb                	jmp    0x883
 898:	89 c1                	mov    %eax,%ecx
 89a:	8b 00                	mov    (%eax),%eax
 89c:	8b 50 04             	mov    0x4(%eax),%edx
 89f:	39 da                	cmp    %ebx,%edx
 8a1:	73 d3                	jae    0x876
 8a3:	39 05 7c 0c 00 00    	cmp    %eax,0xc7c
 8a9:	75 ed                	jne    0x898
 8ab:	89 d8                	mov    %ebx,%eax
 8ad:	e8 2a ff ff ff       	call   0x7dc
 8b2:	85 c0                	test   %eax,%eax
 8b4:	75 e2                	jne    0x898
 8b6:	eb d4                	jmp    0x88c
