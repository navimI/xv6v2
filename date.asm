
_date:     file format elf32-i386


Disassembly of section .text:

00000000 <.text>:
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	push   -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	51                   	push   %ecx
   e:	83 ec 30             	sub    $0x30,%esp
  11:	8d 45 e0             	lea    -0x20(%ebp),%eax
  14:	50                   	push   %eax
  15:	e8 7a 02 00 00       	call   0x294
  1a:	83 c4 10             	add    $0x10,%esp
  1d:	85 c0                	test   %eax,%eax
  1f:	74 14                	je     0x35
  21:	83 ec 08             	sub    $0x8,%esp
  24:	68 f0 05 00 00       	push   $0x5f0
  29:	6a 02                	push   $0x2
  2b:	e8 11 03 00 00       	call   0x341
  30:	e8 bf 01 00 00       	call   0x1f4
  35:	83 ec 0c             	sub    $0xc,%esp
  38:	ff 75 f4             	push   -0xc(%ebp)
  3b:	ff 75 f0             	push   -0x10(%ebp)
  3e:	ff 75 ec             	push   -0x14(%ebp)
  41:	68 fd 05 00 00       	push   $0x5fd
  46:	6a 01                	push   $0x1
  48:	e8 f4 02 00 00       	call   0x341
  4d:	83 c4 20             	add    $0x20,%esp
  50:	e8 9f 01 00 00       	call   0x1f4
  55:	55                   	push   %ebp
  56:	89 e5                	mov    %esp,%ebp
  58:	56                   	push   %esi
  59:	53                   	push   %ebx
  5a:	8b 75 08             	mov    0x8(%ebp),%esi
  5d:	8b 55 0c             	mov    0xc(%ebp),%edx
  60:	89 f0                	mov    %esi,%eax
  62:	89 d1                	mov    %edx,%ecx
  64:	83 c2 01             	add    $0x1,%edx
  67:	89 c3                	mov    %eax,%ebx
  69:	83 c0 01             	add    $0x1,%eax
  6c:	0f b6 09             	movzbl (%ecx),%ecx
  6f:	88 0b                	mov    %cl,(%ebx)
  71:	84 c9                	test   %cl,%cl
  73:	75 ed                	jne    0x62
  75:	89 f0                	mov    %esi,%eax
  77:	5b                   	pop    %ebx
  78:	5e                   	pop    %esi
  79:	5d                   	pop    %ebp
  7a:	c3                   	ret    
  7b:	55                   	push   %ebp
  7c:	89 e5                	mov    %esp,%ebp
  7e:	8b 4d 08             	mov    0x8(%ebp),%ecx
  81:	8b 55 0c             	mov    0xc(%ebp),%edx
  84:	eb 06                	jmp    0x8c
  86:	83 c1 01             	add    $0x1,%ecx
  89:	83 c2 01             	add    $0x1,%edx
  8c:	0f b6 01             	movzbl (%ecx),%eax
  8f:	84 c0                	test   %al,%al
  91:	74 04                	je     0x97
  93:	3a 02                	cmp    (%edx),%al
  95:	74 ef                	je     0x86
  97:	0f b6 c0             	movzbl %al,%eax
  9a:	0f b6 12             	movzbl (%edx),%edx
  9d:	29 d0                	sub    %edx,%eax
  9f:	5d                   	pop    %ebp
  a0:	c3                   	ret    
  a1:	55                   	push   %ebp
  a2:	89 e5                	mov    %esp,%ebp
  a4:	8b 4d 08             	mov    0x8(%ebp),%ecx
  a7:	b8 00 00 00 00       	mov    $0x0,%eax
  ac:	eb 03                	jmp    0xb1
  ae:	83 c0 01             	add    $0x1,%eax
  b1:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
  b5:	75 f7                	jne    0xae
  b7:	5d                   	pop    %ebp
  b8:	c3                   	ret    
  b9:	55                   	push   %ebp
  ba:	89 e5                	mov    %esp,%ebp
  bc:	57                   	push   %edi
  bd:	8b 55 08             	mov    0x8(%ebp),%edx
  c0:	89 d7                	mov    %edx,%edi
  c2:	8b 4d 10             	mov    0x10(%ebp),%ecx
  c5:	8b 45 0c             	mov    0xc(%ebp),%eax
  c8:	fc                   	cld    
  c9:	f3 aa                	rep stos %al,%es:(%edi)
  cb:	89 d0                	mov    %edx,%eax
  cd:	8b 7d fc             	mov    -0x4(%ebp),%edi
  d0:	c9                   	leave  
  d1:	c3                   	ret    
  d2:	55                   	push   %ebp
  d3:	89 e5                	mov    %esp,%ebp
  d5:	8b 45 08             	mov    0x8(%ebp),%eax
  d8:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  dc:	eb 03                	jmp    0xe1
  de:	83 c0 01             	add    $0x1,%eax
  e1:	0f b6 10             	movzbl (%eax),%edx
  e4:	84 d2                	test   %dl,%dl
  e6:	74 06                	je     0xee
  e8:	38 ca                	cmp    %cl,%dl
  ea:	75 f2                	jne    0xde
  ec:	eb 05                	jmp    0xf3
  ee:	b8 00 00 00 00       	mov    $0x0,%eax
  f3:	5d                   	pop    %ebp
  f4:	c3                   	ret    
  f5:	55                   	push   %ebp
  f6:	89 e5                	mov    %esp,%ebp
  f8:	57                   	push   %edi
  f9:	56                   	push   %esi
  fa:	53                   	push   %ebx
  fb:	83 ec 1c             	sub    $0x1c,%esp
  fe:	8b 7d 08             	mov    0x8(%ebp),%edi
 101:	bb 00 00 00 00       	mov    $0x0,%ebx
 106:	89 de                	mov    %ebx,%esi
 108:	83 c3 01             	add    $0x1,%ebx
 10b:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 10e:	7d 2e                	jge    0x13e
 110:	83 ec 04             	sub    $0x4,%esp
 113:	6a 01                	push   $0x1
 115:	8d 45 e7             	lea    -0x19(%ebp),%eax
 118:	50                   	push   %eax
 119:	6a 00                	push   $0x0
 11b:	e8 ec 00 00 00       	call   0x20c
 120:	83 c4 10             	add    $0x10,%esp
 123:	85 c0                	test   %eax,%eax
 125:	7e 17                	jle    0x13e
 127:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 12b:	88 04 37             	mov    %al,(%edi,%esi,1)
 12e:	3c 0a                	cmp    $0xa,%al
 130:	0f 94 c2             	sete   %dl
 133:	3c 0d                	cmp    $0xd,%al
 135:	0f 94 c0             	sete   %al
 138:	08 c2                	or     %al,%dl
 13a:	74 ca                	je     0x106
 13c:	89 de                	mov    %ebx,%esi
 13e:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 142:	89 f8                	mov    %edi,%eax
 144:	8d 65 f4             	lea    -0xc(%ebp),%esp
 147:	5b                   	pop    %ebx
 148:	5e                   	pop    %esi
 149:	5f                   	pop    %edi
 14a:	5d                   	pop    %ebp
 14b:	c3                   	ret    
 14c:	55                   	push   %ebp
 14d:	89 e5                	mov    %esp,%ebp
 14f:	56                   	push   %esi
 150:	53                   	push   %ebx
 151:	83 ec 08             	sub    $0x8,%esp
 154:	6a 00                	push   $0x0
 156:	ff 75 08             	push   0x8(%ebp)
 159:	e8 d6 00 00 00       	call   0x234
 15e:	83 c4 10             	add    $0x10,%esp
 161:	85 c0                	test   %eax,%eax
 163:	78 24                	js     0x189
 165:	89 c3                	mov    %eax,%ebx
 167:	83 ec 08             	sub    $0x8,%esp
 16a:	ff 75 0c             	push   0xc(%ebp)
 16d:	50                   	push   %eax
 16e:	e8 d9 00 00 00       	call   0x24c
 173:	89 c6                	mov    %eax,%esi
 175:	89 1c 24             	mov    %ebx,(%esp)
 178:	e8 9f 00 00 00       	call   0x21c
 17d:	83 c4 10             	add    $0x10,%esp
 180:	89 f0                	mov    %esi,%eax
 182:	8d 65 f8             	lea    -0x8(%ebp),%esp
 185:	5b                   	pop    %ebx
 186:	5e                   	pop    %esi
 187:	5d                   	pop    %ebp
 188:	c3                   	ret    
 189:	be ff ff ff ff       	mov    $0xffffffff,%esi
 18e:	eb f0                	jmp    0x180
 190:	55                   	push   %ebp
 191:	89 e5                	mov    %esp,%ebp
 193:	53                   	push   %ebx
 194:	8b 4d 08             	mov    0x8(%ebp),%ecx
 197:	ba 00 00 00 00       	mov    $0x0,%edx
 19c:	eb 10                	jmp    0x1ae
 19e:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 1a1:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 1a4:	83 c1 01             	add    $0x1,%ecx
 1a7:	0f be c0             	movsbl %al,%eax
 1aa:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 1ae:	0f b6 01             	movzbl (%ecx),%eax
 1b1:	8d 58 d0             	lea    -0x30(%eax),%ebx
 1b4:	80 fb 09             	cmp    $0x9,%bl
 1b7:	76 e5                	jbe    0x19e
 1b9:	89 d0                	mov    %edx,%eax
 1bb:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 1be:	c9                   	leave  
 1bf:	c3                   	ret    
 1c0:	55                   	push   %ebp
 1c1:	89 e5                	mov    %esp,%ebp
 1c3:	56                   	push   %esi
 1c4:	53                   	push   %ebx
 1c5:	8b 75 08             	mov    0x8(%ebp),%esi
 1c8:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 1cb:	8b 45 10             	mov    0x10(%ebp),%eax
 1ce:	89 f2                	mov    %esi,%edx
 1d0:	eb 0d                	jmp    0x1df
 1d2:	0f b6 01             	movzbl (%ecx),%eax
 1d5:	88 02                	mov    %al,(%edx)
 1d7:	8d 49 01             	lea    0x1(%ecx),%ecx
 1da:	8d 52 01             	lea    0x1(%edx),%edx
 1dd:	89 d8                	mov    %ebx,%eax
 1df:	8d 58 ff             	lea    -0x1(%eax),%ebx
 1e2:	85 c0                	test   %eax,%eax
 1e4:	7f ec                	jg     0x1d2
 1e6:	89 f0                	mov    %esi,%eax
 1e8:	5b                   	pop    %ebx
 1e9:	5e                   	pop    %esi
 1ea:	5d                   	pop    %ebp
 1eb:	c3                   	ret    
 1ec:	b8 01 00 00 00       	mov    $0x1,%eax
 1f1:	cd 40                	int    $0x40
 1f3:	c3                   	ret    
 1f4:	b8 02 00 00 00       	mov    $0x2,%eax
 1f9:	cd 40                	int    $0x40
 1fb:	c3                   	ret    
 1fc:	b8 03 00 00 00       	mov    $0x3,%eax
 201:	cd 40                	int    $0x40
 203:	c3                   	ret    
 204:	b8 04 00 00 00       	mov    $0x4,%eax
 209:	cd 40                	int    $0x40
 20b:	c3                   	ret    
 20c:	b8 05 00 00 00       	mov    $0x5,%eax
 211:	cd 40                	int    $0x40
 213:	c3                   	ret    
 214:	b8 10 00 00 00       	mov    $0x10,%eax
 219:	cd 40                	int    $0x40
 21b:	c3                   	ret    
 21c:	b8 15 00 00 00       	mov    $0x15,%eax
 221:	cd 40                	int    $0x40
 223:	c3                   	ret    
 224:	b8 06 00 00 00       	mov    $0x6,%eax
 229:	cd 40                	int    $0x40
 22b:	c3                   	ret    
 22c:	b8 07 00 00 00       	mov    $0x7,%eax
 231:	cd 40                	int    $0x40
 233:	c3                   	ret    
 234:	b8 0f 00 00 00       	mov    $0xf,%eax
 239:	cd 40                	int    $0x40
 23b:	c3                   	ret    
 23c:	b8 11 00 00 00       	mov    $0x11,%eax
 241:	cd 40                	int    $0x40
 243:	c3                   	ret    
 244:	b8 12 00 00 00       	mov    $0x12,%eax
 249:	cd 40                	int    $0x40
 24b:	c3                   	ret    
 24c:	b8 08 00 00 00       	mov    $0x8,%eax
 251:	cd 40                	int    $0x40
 253:	c3                   	ret    
 254:	b8 13 00 00 00       	mov    $0x13,%eax
 259:	cd 40                	int    $0x40
 25b:	c3                   	ret    
 25c:	b8 14 00 00 00       	mov    $0x14,%eax
 261:	cd 40                	int    $0x40
 263:	c3                   	ret    
 264:	b8 09 00 00 00       	mov    $0x9,%eax
 269:	cd 40                	int    $0x40
 26b:	c3                   	ret    
 26c:	b8 0a 00 00 00       	mov    $0xa,%eax
 271:	cd 40                	int    $0x40
 273:	c3                   	ret    
 274:	b8 0b 00 00 00       	mov    $0xb,%eax
 279:	cd 40                	int    $0x40
 27b:	c3                   	ret    
 27c:	b8 0c 00 00 00       	mov    $0xc,%eax
 281:	cd 40                	int    $0x40
 283:	c3                   	ret    
 284:	b8 0d 00 00 00       	mov    $0xd,%eax
 289:	cd 40                	int    $0x40
 28b:	c3                   	ret    
 28c:	b8 0e 00 00 00       	mov    $0xe,%eax
 291:	cd 40                	int    $0x40
 293:	c3                   	ret    
 294:	b8 16 00 00 00       	mov    $0x16,%eax
 299:	cd 40                	int    $0x40
 29b:	c3                   	ret    
 29c:	55                   	push   %ebp
 29d:	89 e5                	mov    %esp,%ebp
 29f:	83 ec 1c             	sub    $0x1c,%esp
 2a2:	88 55 f4             	mov    %dl,-0xc(%ebp)
 2a5:	6a 01                	push   $0x1
 2a7:	8d 55 f4             	lea    -0xc(%ebp),%edx
 2aa:	52                   	push   %edx
 2ab:	50                   	push   %eax
 2ac:	e8 63 ff ff ff       	call   0x214
 2b1:	83 c4 10             	add    $0x10,%esp
 2b4:	c9                   	leave  
 2b5:	c3                   	ret    
 2b6:	55                   	push   %ebp
 2b7:	89 e5                	mov    %esp,%ebp
 2b9:	57                   	push   %edi
 2ba:	56                   	push   %esi
 2bb:	53                   	push   %ebx
 2bc:	83 ec 2c             	sub    $0x2c,%esp
 2bf:	89 45 d0             	mov    %eax,-0x30(%ebp)
 2c2:	89 d0                	mov    %edx,%eax
 2c4:	89 ce                	mov    %ecx,%esi
 2c6:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 2ca:	0f 95 c1             	setne  %cl
 2cd:	c1 ea 1f             	shr    $0x1f,%edx
 2d0:	84 d1                	test   %dl,%cl
 2d2:	74 44                	je     0x318
 2d4:	f7 d8                	neg    %eax
 2d6:	89 c1                	mov    %eax,%ecx
 2d8:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 2df:	bb 00 00 00 00       	mov    $0x0,%ebx
 2e4:	89 c8                	mov    %ecx,%eax
 2e6:	ba 00 00 00 00       	mov    $0x0,%edx
 2eb:	f7 f6                	div    %esi
 2ed:	89 df                	mov    %ebx,%edi
 2ef:	83 c3 01             	add    $0x1,%ebx
 2f2:	0f b6 92 68 06 00 00 	movzbl 0x668(%edx),%edx
 2f9:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 2fd:	89 ca                	mov    %ecx,%edx
 2ff:	89 c1                	mov    %eax,%ecx
 301:	39 d6                	cmp    %edx,%esi
 303:	76 df                	jbe    0x2e4
 305:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 309:	74 31                	je     0x33c
 30b:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 310:	8d 5f 02             	lea    0x2(%edi),%ebx
 313:	8b 75 d0             	mov    -0x30(%ebp),%esi
 316:	eb 17                	jmp    0x32f
 318:	89 c1                	mov    %eax,%ecx
 31a:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 321:	eb bc                	jmp    0x2df
 323:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 328:	89 f0                	mov    %esi,%eax
 32a:	e8 6d ff ff ff       	call   0x29c
 32f:	83 eb 01             	sub    $0x1,%ebx
 332:	79 ef                	jns    0x323
 334:	83 c4 2c             	add    $0x2c,%esp
 337:	5b                   	pop    %ebx
 338:	5e                   	pop    %esi
 339:	5f                   	pop    %edi
 33a:	5d                   	pop    %ebp
 33b:	c3                   	ret    
 33c:	8b 75 d0             	mov    -0x30(%ebp),%esi
 33f:	eb ee                	jmp    0x32f
 341:	55                   	push   %ebp
 342:	89 e5                	mov    %esp,%ebp
 344:	57                   	push   %edi
 345:	56                   	push   %esi
 346:	53                   	push   %ebx
 347:	83 ec 1c             	sub    $0x1c,%esp
 34a:	8d 45 10             	lea    0x10(%ebp),%eax
 34d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 350:	be 00 00 00 00       	mov    $0x0,%esi
 355:	bb 00 00 00 00       	mov    $0x0,%ebx
 35a:	eb 14                	jmp    0x370
 35c:	89 fa                	mov    %edi,%edx
 35e:	8b 45 08             	mov    0x8(%ebp),%eax
 361:	e8 36 ff ff ff       	call   0x29c
 366:	eb 05                	jmp    0x36d
 368:	83 fe 25             	cmp    $0x25,%esi
 36b:	74 25                	je     0x392
 36d:	83 c3 01             	add    $0x1,%ebx
 370:	8b 45 0c             	mov    0xc(%ebp),%eax
 373:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 377:	84 c0                	test   %al,%al
 379:	0f 84 20 01 00 00    	je     0x49f
 37f:	0f be f8             	movsbl %al,%edi
 382:	0f b6 c0             	movzbl %al,%eax
 385:	85 f6                	test   %esi,%esi
 387:	75 df                	jne    0x368
 389:	83 f8 25             	cmp    $0x25,%eax
 38c:	75 ce                	jne    0x35c
 38e:	89 c6                	mov    %eax,%esi
 390:	eb db                	jmp    0x36d
 392:	83 f8 25             	cmp    $0x25,%eax
 395:	0f 84 cf 00 00 00    	je     0x46a
 39b:	0f 8c dd 00 00 00    	jl     0x47e
 3a1:	83 f8 78             	cmp    $0x78,%eax
 3a4:	0f 8f d4 00 00 00    	jg     0x47e
 3aa:	83 f8 63             	cmp    $0x63,%eax
 3ad:	0f 8c cb 00 00 00    	jl     0x47e
 3b3:	83 e8 63             	sub    $0x63,%eax
 3b6:	83 f8 15             	cmp    $0x15,%eax
 3b9:	0f 87 bf 00 00 00    	ja     0x47e
 3bf:	ff 24 85 10 06 00 00 	jmp    *0x610(,%eax,4)
 3c6:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 3c9:	8b 17                	mov    (%edi),%edx
 3cb:	83 ec 0c             	sub    $0xc,%esp
 3ce:	6a 01                	push   $0x1
 3d0:	b9 0a 00 00 00       	mov    $0xa,%ecx
 3d5:	8b 45 08             	mov    0x8(%ebp),%eax
 3d8:	e8 d9 fe ff ff       	call   0x2b6
 3dd:	83 c7 04             	add    $0x4,%edi
 3e0:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 3e3:	83 c4 10             	add    $0x10,%esp
 3e6:	be 00 00 00 00       	mov    $0x0,%esi
 3eb:	eb 80                	jmp    0x36d
 3ed:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 3f0:	8b 17                	mov    (%edi),%edx
 3f2:	83 ec 0c             	sub    $0xc,%esp
 3f5:	6a 00                	push   $0x0
 3f7:	b9 10 00 00 00       	mov    $0x10,%ecx
 3fc:	8b 45 08             	mov    0x8(%ebp),%eax
 3ff:	e8 b2 fe ff ff       	call   0x2b6
 404:	83 c7 04             	add    $0x4,%edi
 407:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 40a:	83 c4 10             	add    $0x10,%esp
 40d:	be 00 00 00 00       	mov    $0x0,%esi
 412:	e9 56 ff ff ff       	jmp    0x36d
 417:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 41a:	8b 30                	mov    (%eax),%esi
 41c:	83 c0 04             	add    $0x4,%eax
 41f:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 422:	85 f6                	test   %esi,%esi
 424:	75 15                	jne    0x43b
 426:	be 07 06 00 00       	mov    $0x607,%esi
 42b:	eb 0e                	jmp    0x43b
 42d:	0f be d2             	movsbl %dl,%edx
 430:	8b 45 08             	mov    0x8(%ebp),%eax
 433:	e8 64 fe ff ff       	call   0x29c
 438:	83 c6 01             	add    $0x1,%esi
 43b:	0f b6 16             	movzbl (%esi),%edx
 43e:	84 d2                	test   %dl,%dl
 440:	75 eb                	jne    0x42d
 442:	be 00 00 00 00       	mov    $0x0,%esi
 447:	e9 21 ff ff ff       	jmp    0x36d
 44c:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 44f:	0f be 17             	movsbl (%edi),%edx
 452:	8b 45 08             	mov    0x8(%ebp),%eax
 455:	e8 42 fe ff ff       	call   0x29c
 45a:	83 c7 04             	add    $0x4,%edi
 45d:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 460:	be 00 00 00 00       	mov    $0x0,%esi
 465:	e9 03 ff ff ff       	jmp    0x36d
 46a:	89 fa                	mov    %edi,%edx
 46c:	8b 45 08             	mov    0x8(%ebp),%eax
 46f:	e8 28 fe ff ff       	call   0x29c
 474:	be 00 00 00 00       	mov    $0x0,%esi
 479:	e9 ef fe ff ff       	jmp    0x36d
 47e:	ba 25 00 00 00       	mov    $0x25,%edx
 483:	8b 45 08             	mov    0x8(%ebp),%eax
 486:	e8 11 fe ff ff       	call   0x29c
 48b:	89 fa                	mov    %edi,%edx
 48d:	8b 45 08             	mov    0x8(%ebp),%eax
 490:	e8 07 fe ff ff       	call   0x29c
 495:	be 00 00 00 00       	mov    $0x0,%esi
 49a:	e9 ce fe ff ff       	jmp    0x36d
 49f:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4a2:	5b                   	pop    %ebx
 4a3:	5e                   	pop    %esi
 4a4:	5f                   	pop    %edi
 4a5:	5d                   	pop    %ebp
 4a6:	c3                   	ret    
 4a7:	55                   	push   %ebp
 4a8:	89 e5                	mov    %esp,%ebp
 4aa:	57                   	push   %edi
 4ab:	56                   	push   %esi
 4ac:	53                   	push   %ebx
 4ad:	8b 5d 08             	mov    0x8(%ebp),%ebx
 4b0:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 4b3:	a1 08 09 00 00       	mov    0x908,%eax
 4b8:	eb 02                	jmp    0x4bc
 4ba:	89 d0                	mov    %edx,%eax
 4bc:	39 c8                	cmp    %ecx,%eax
 4be:	73 04                	jae    0x4c4
 4c0:	39 08                	cmp    %ecx,(%eax)
 4c2:	77 12                	ja     0x4d6
 4c4:	8b 10                	mov    (%eax),%edx
 4c6:	39 c2                	cmp    %eax,%edx
 4c8:	77 f0                	ja     0x4ba
 4ca:	39 c8                	cmp    %ecx,%eax
 4cc:	72 08                	jb     0x4d6
 4ce:	39 ca                	cmp    %ecx,%edx
 4d0:	77 04                	ja     0x4d6
 4d2:	89 d0                	mov    %edx,%eax
 4d4:	eb e6                	jmp    0x4bc
 4d6:	8b 73 fc             	mov    -0x4(%ebx),%esi
 4d9:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 4dc:	8b 10                	mov    (%eax),%edx
 4de:	39 d7                	cmp    %edx,%edi
 4e0:	74 19                	je     0x4fb
 4e2:	89 53 f8             	mov    %edx,-0x8(%ebx)
 4e5:	8b 50 04             	mov    0x4(%eax),%edx
 4e8:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 4eb:	39 ce                	cmp    %ecx,%esi
 4ed:	74 1b                	je     0x50a
 4ef:	89 08                	mov    %ecx,(%eax)
 4f1:	a3 08 09 00 00       	mov    %eax,0x908
 4f6:	5b                   	pop    %ebx
 4f7:	5e                   	pop    %esi
 4f8:	5f                   	pop    %edi
 4f9:	5d                   	pop    %ebp
 4fa:	c3                   	ret    
 4fb:	03 72 04             	add    0x4(%edx),%esi
 4fe:	89 73 fc             	mov    %esi,-0x4(%ebx)
 501:	8b 10                	mov    (%eax),%edx
 503:	8b 12                	mov    (%edx),%edx
 505:	89 53 f8             	mov    %edx,-0x8(%ebx)
 508:	eb db                	jmp    0x4e5
 50a:	03 53 fc             	add    -0x4(%ebx),%edx
 50d:	89 50 04             	mov    %edx,0x4(%eax)
 510:	8b 53 f8             	mov    -0x8(%ebx),%edx
 513:	89 10                	mov    %edx,(%eax)
 515:	eb da                	jmp    0x4f1
 517:	55                   	push   %ebp
 518:	89 e5                	mov    %esp,%ebp
 51a:	53                   	push   %ebx
 51b:	83 ec 04             	sub    $0x4,%esp
 51e:	89 c3                	mov    %eax,%ebx
 520:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 525:	77 05                	ja     0x52c
 527:	bb 00 10 00 00       	mov    $0x1000,%ebx
 52c:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 533:	83 ec 0c             	sub    $0xc,%esp
 536:	50                   	push   %eax
 537:	e8 40 fd ff ff       	call   0x27c
 53c:	83 c4 10             	add    $0x10,%esp
 53f:	83 f8 ff             	cmp    $0xffffffff,%eax
 542:	74 1c                	je     0x560
 544:	89 58 04             	mov    %ebx,0x4(%eax)
 547:	83 c0 08             	add    $0x8,%eax
 54a:	83 ec 0c             	sub    $0xc,%esp
 54d:	50                   	push   %eax
 54e:	e8 54 ff ff ff       	call   0x4a7
 553:	a1 08 09 00 00       	mov    0x908,%eax
 558:	83 c4 10             	add    $0x10,%esp
 55b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 55e:	c9                   	leave  
 55f:	c3                   	ret    
 560:	b8 00 00 00 00       	mov    $0x0,%eax
 565:	eb f4                	jmp    0x55b
 567:	55                   	push   %ebp
 568:	89 e5                	mov    %esp,%ebp
 56a:	53                   	push   %ebx
 56b:	83 ec 04             	sub    $0x4,%esp
 56e:	8b 45 08             	mov    0x8(%ebp),%eax
 571:	8d 58 07             	lea    0x7(%eax),%ebx
 574:	c1 eb 03             	shr    $0x3,%ebx
 577:	83 c3 01             	add    $0x1,%ebx
 57a:	8b 0d 08 09 00 00    	mov    0x908,%ecx
 580:	85 c9                	test   %ecx,%ecx
 582:	74 04                	je     0x588
 584:	8b 01                	mov    (%ecx),%eax
 586:	eb 4a                	jmp    0x5d2
 588:	c7 05 08 09 00 00 0c 	movl   $0x90c,0x908
 58f:	09 00 00 
 592:	c7 05 0c 09 00 00 0c 	movl   $0x90c,0x90c
 599:	09 00 00 
 59c:	c7 05 10 09 00 00 00 	movl   $0x0,0x910
 5a3:	00 00 00 
 5a6:	b9 0c 09 00 00       	mov    $0x90c,%ecx
 5ab:	eb d7                	jmp    0x584
 5ad:	74 19                	je     0x5c8
 5af:	29 da                	sub    %ebx,%edx
 5b1:	89 50 04             	mov    %edx,0x4(%eax)
 5b4:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 5b7:	89 58 04             	mov    %ebx,0x4(%eax)
 5ba:	89 0d 08 09 00 00    	mov    %ecx,0x908
 5c0:	83 c0 08             	add    $0x8,%eax
 5c3:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 5c6:	c9                   	leave  
 5c7:	c3                   	ret    
 5c8:	8b 10                	mov    (%eax),%edx
 5ca:	89 11                	mov    %edx,(%ecx)
 5cc:	eb ec                	jmp    0x5ba
 5ce:	89 c1                	mov    %eax,%ecx
 5d0:	8b 00                	mov    (%eax),%eax
 5d2:	8b 50 04             	mov    0x4(%eax),%edx
 5d5:	39 da                	cmp    %ebx,%edx
 5d7:	73 d4                	jae    0x5ad
 5d9:	39 05 08 09 00 00    	cmp    %eax,0x908
 5df:	75 ed                	jne    0x5ce
 5e1:	89 d8                	mov    %ebx,%eax
 5e3:	e8 2f ff ff ff       	call   0x517
 5e8:	85 c0                	test   %eax,%eax
 5ea:	75 e2                	jne    0x5ce
 5ec:	eb d5                	jmp    0x5c3
