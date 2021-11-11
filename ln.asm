
_ln:     file format elf32-i386


Disassembly of section .text:

00000000 <.text>:
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	push   -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	53                   	push   %ebx
   e:	51                   	push   %ecx
   f:	8b 59 04             	mov    0x4(%ecx),%ebx
  12:	83 39 03             	cmpl   $0x3,(%ecx)
  15:	74 14                	je     0x2b
  17:	83 ec 08             	sub    $0x8,%esp
  1a:	68 f8 05 00 00       	push   $0x5f8
  1f:	6a 02                	push   $0x2
  21:	e8 22 03 00 00       	call   0x348
  26:	e8 d0 01 00 00       	call   0x1fb
  2b:	83 ec 08             	sub    $0x8,%esp
  2e:	ff 73 08             	push   0x8(%ebx)
  31:	ff 73 04             	push   0x4(%ebx)
  34:	e8 22 02 00 00       	call   0x25b
  39:	83 c4 10             	add    $0x10,%esp
  3c:	85 c0                	test   %eax,%eax
  3e:	78 05                	js     0x45
  40:	e8 b6 01 00 00       	call   0x1fb
  45:	ff 73 08             	push   0x8(%ebx)
  48:	ff 73 04             	push   0x4(%ebx)
  4b:	68 0b 06 00 00       	push   $0x60b
  50:	6a 02                	push   $0x2
  52:	e8 f1 02 00 00       	call   0x348
  57:	83 c4 10             	add    $0x10,%esp
  5a:	eb e4                	jmp    0x40
  5c:	55                   	push   %ebp
  5d:	89 e5                	mov    %esp,%ebp
  5f:	56                   	push   %esi
  60:	53                   	push   %ebx
  61:	8b 75 08             	mov    0x8(%ebp),%esi
  64:	8b 55 0c             	mov    0xc(%ebp),%edx
  67:	89 f0                	mov    %esi,%eax
  69:	89 d1                	mov    %edx,%ecx
  6b:	83 c2 01             	add    $0x1,%edx
  6e:	89 c3                	mov    %eax,%ebx
  70:	83 c0 01             	add    $0x1,%eax
  73:	0f b6 09             	movzbl (%ecx),%ecx
  76:	88 0b                	mov    %cl,(%ebx)
  78:	84 c9                	test   %cl,%cl
  7a:	75 ed                	jne    0x69
  7c:	89 f0                	mov    %esi,%eax
  7e:	5b                   	pop    %ebx
  7f:	5e                   	pop    %esi
  80:	5d                   	pop    %ebp
  81:	c3                   	ret    
  82:	55                   	push   %ebp
  83:	89 e5                	mov    %esp,%ebp
  85:	8b 4d 08             	mov    0x8(%ebp),%ecx
  88:	8b 55 0c             	mov    0xc(%ebp),%edx
  8b:	eb 06                	jmp    0x93
  8d:	83 c1 01             	add    $0x1,%ecx
  90:	83 c2 01             	add    $0x1,%edx
  93:	0f b6 01             	movzbl (%ecx),%eax
  96:	84 c0                	test   %al,%al
  98:	74 04                	je     0x9e
  9a:	3a 02                	cmp    (%edx),%al
  9c:	74 ef                	je     0x8d
  9e:	0f b6 c0             	movzbl %al,%eax
  a1:	0f b6 12             	movzbl (%edx),%edx
  a4:	29 d0                	sub    %edx,%eax
  a6:	5d                   	pop    %ebp
  a7:	c3                   	ret    
  a8:	55                   	push   %ebp
  a9:	89 e5                	mov    %esp,%ebp
  ab:	8b 4d 08             	mov    0x8(%ebp),%ecx
  ae:	b8 00 00 00 00       	mov    $0x0,%eax
  b3:	eb 03                	jmp    0xb8
  b5:	83 c0 01             	add    $0x1,%eax
  b8:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
  bc:	75 f7                	jne    0xb5
  be:	5d                   	pop    %ebp
  bf:	c3                   	ret    
  c0:	55                   	push   %ebp
  c1:	89 e5                	mov    %esp,%ebp
  c3:	57                   	push   %edi
  c4:	8b 55 08             	mov    0x8(%ebp),%edx
  c7:	89 d7                	mov    %edx,%edi
  c9:	8b 4d 10             	mov    0x10(%ebp),%ecx
  cc:	8b 45 0c             	mov    0xc(%ebp),%eax
  cf:	fc                   	cld    
  d0:	f3 aa                	rep stos %al,%es:(%edi)
  d2:	89 d0                	mov    %edx,%eax
  d4:	8b 7d fc             	mov    -0x4(%ebp),%edi
  d7:	c9                   	leave  
  d8:	c3                   	ret    
  d9:	55                   	push   %ebp
  da:	89 e5                	mov    %esp,%ebp
  dc:	8b 45 08             	mov    0x8(%ebp),%eax
  df:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  e3:	eb 03                	jmp    0xe8
  e5:	83 c0 01             	add    $0x1,%eax
  e8:	0f b6 10             	movzbl (%eax),%edx
  eb:	84 d2                	test   %dl,%dl
  ed:	74 06                	je     0xf5
  ef:	38 ca                	cmp    %cl,%dl
  f1:	75 f2                	jne    0xe5
  f3:	eb 05                	jmp    0xfa
  f5:	b8 00 00 00 00       	mov    $0x0,%eax
  fa:	5d                   	pop    %ebp
  fb:	c3                   	ret    
  fc:	55                   	push   %ebp
  fd:	89 e5                	mov    %esp,%ebp
  ff:	57                   	push   %edi
 100:	56                   	push   %esi
 101:	53                   	push   %ebx
 102:	83 ec 1c             	sub    $0x1c,%esp
 105:	8b 7d 08             	mov    0x8(%ebp),%edi
 108:	bb 00 00 00 00       	mov    $0x0,%ebx
 10d:	89 de                	mov    %ebx,%esi
 10f:	83 c3 01             	add    $0x1,%ebx
 112:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 115:	7d 2e                	jge    0x145
 117:	83 ec 04             	sub    $0x4,%esp
 11a:	6a 01                	push   $0x1
 11c:	8d 45 e7             	lea    -0x19(%ebp),%eax
 11f:	50                   	push   %eax
 120:	6a 00                	push   $0x0
 122:	e8 ec 00 00 00       	call   0x213
 127:	83 c4 10             	add    $0x10,%esp
 12a:	85 c0                	test   %eax,%eax
 12c:	7e 17                	jle    0x145
 12e:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 132:	88 04 37             	mov    %al,(%edi,%esi,1)
 135:	3c 0a                	cmp    $0xa,%al
 137:	0f 94 c2             	sete   %dl
 13a:	3c 0d                	cmp    $0xd,%al
 13c:	0f 94 c0             	sete   %al
 13f:	08 c2                	or     %al,%dl
 141:	74 ca                	je     0x10d
 143:	89 de                	mov    %ebx,%esi
 145:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 149:	89 f8                	mov    %edi,%eax
 14b:	8d 65 f4             	lea    -0xc(%ebp),%esp
 14e:	5b                   	pop    %ebx
 14f:	5e                   	pop    %esi
 150:	5f                   	pop    %edi
 151:	5d                   	pop    %ebp
 152:	c3                   	ret    
 153:	55                   	push   %ebp
 154:	89 e5                	mov    %esp,%ebp
 156:	56                   	push   %esi
 157:	53                   	push   %ebx
 158:	83 ec 08             	sub    $0x8,%esp
 15b:	6a 00                	push   $0x0
 15d:	ff 75 08             	push   0x8(%ebp)
 160:	e8 d6 00 00 00       	call   0x23b
 165:	83 c4 10             	add    $0x10,%esp
 168:	85 c0                	test   %eax,%eax
 16a:	78 24                	js     0x190
 16c:	89 c3                	mov    %eax,%ebx
 16e:	83 ec 08             	sub    $0x8,%esp
 171:	ff 75 0c             	push   0xc(%ebp)
 174:	50                   	push   %eax
 175:	e8 d9 00 00 00       	call   0x253
 17a:	89 c6                	mov    %eax,%esi
 17c:	89 1c 24             	mov    %ebx,(%esp)
 17f:	e8 9f 00 00 00       	call   0x223
 184:	83 c4 10             	add    $0x10,%esp
 187:	89 f0                	mov    %esi,%eax
 189:	8d 65 f8             	lea    -0x8(%ebp),%esp
 18c:	5b                   	pop    %ebx
 18d:	5e                   	pop    %esi
 18e:	5d                   	pop    %ebp
 18f:	c3                   	ret    
 190:	be ff ff ff ff       	mov    $0xffffffff,%esi
 195:	eb f0                	jmp    0x187
 197:	55                   	push   %ebp
 198:	89 e5                	mov    %esp,%ebp
 19a:	53                   	push   %ebx
 19b:	8b 4d 08             	mov    0x8(%ebp),%ecx
 19e:	ba 00 00 00 00       	mov    $0x0,%edx
 1a3:	eb 10                	jmp    0x1b5
 1a5:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 1a8:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 1ab:	83 c1 01             	add    $0x1,%ecx
 1ae:	0f be c0             	movsbl %al,%eax
 1b1:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 1b5:	0f b6 01             	movzbl (%ecx),%eax
 1b8:	8d 58 d0             	lea    -0x30(%eax),%ebx
 1bb:	80 fb 09             	cmp    $0x9,%bl
 1be:	76 e5                	jbe    0x1a5
 1c0:	89 d0                	mov    %edx,%eax
 1c2:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 1c5:	c9                   	leave  
 1c6:	c3                   	ret    
 1c7:	55                   	push   %ebp
 1c8:	89 e5                	mov    %esp,%ebp
 1ca:	56                   	push   %esi
 1cb:	53                   	push   %ebx
 1cc:	8b 75 08             	mov    0x8(%ebp),%esi
 1cf:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 1d2:	8b 45 10             	mov    0x10(%ebp),%eax
 1d5:	89 f2                	mov    %esi,%edx
 1d7:	eb 0d                	jmp    0x1e6
 1d9:	0f b6 01             	movzbl (%ecx),%eax
 1dc:	88 02                	mov    %al,(%edx)
 1de:	8d 49 01             	lea    0x1(%ecx),%ecx
 1e1:	8d 52 01             	lea    0x1(%edx),%edx
 1e4:	89 d8                	mov    %ebx,%eax
 1e6:	8d 58 ff             	lea    -0x1(%eax),%ebx
 1e9:	85 c0                	test   %eax,%eax
 1eb:	7f ec                	jg     0x1d9
 1ed:	89 f0                	mov    %esi,%eax
 1ef:	5b                   	pop    %ebx
 1f0:	5e                   	pop    %esi
 1f1:	5d                   	pop    %ebp
 1f2:	c3                   	ret    
 1f3:	b8 01 00 00 00       	mov    $0x1,%eax
 1f8:	cd 40                	int    $0x40
 1fa:	c3                   	ret    
 1fb:	b8 02 00 00 00       	mov    $0x2,%eax
 200:	cd 40                	int    $0x40
 202:	c3                   	ret    
 203:	b8 03 00 00 00       	mov    $0x3,%eax
 208:	cd 40                	int    $0x40
 20a:	c3                   	ret    
 20b:	b8 04 00 00 00       	mov    $0x4,%eax
 210:	cd 40                	int    $0x40
 212:	c3                   	ret    
 213:	b8 05 00 00 00       	mov    $0x5,%eax
 218:	cd 40                	int    $0x40
 21a:	c3                   	ret    
 21b:	b8 10 00 00 00       	mov    $0x10,%eax
 220:	cd 40                	int    $0x40
 222:	c3                   	ret    
 223:	b8 15 00 00 00       	mov    $0x15,%eax
 228:	cd 40                	int    $0x40
 22a:	c3                   	ret    
 22b:	b8 06 00 00 00       	mov    $0x6,%eax
 230:	cd 40                	int    $0x40
 232:	c3                   	ret    
 233:	b8 07 00 00 00       	mov    $0x7,%eax
 238:	cd 40                	int    $0x40
 23a:	c3                   	ret    
 23b:	b8 0f 00 00 00       	mov    $0xf,%eax
 240:	cd 40                	int    $0x40
 242:	c3                   	ret    
 243:	b8 11 00 00 00       	mov    $0x11,%eax
 248:	cd 40                	int    $0x40
 24a:	c3                   	ret    
 24b:	b8 12 00 00 00       	mov    $0x12,%eax
 250:	cd 40                	int    $0x40
 252:	c3                   	ret    
 253:	b8 08 00 00 00       	mov    $0x8,%eax
 258:	cd 40                	int    $0x40
 25a:	c3                   	ret    
 25b:	b8 13 00 00 00       	mov    $0x13,%eax
 260:	cd 40                	int    $0x40
 262:	c3                   	ret    
 263:	b8 14 00 00 00       	mov    $0x14,%eax
 268:	cd 40                	int    $0x40
 26a:	c3                   	ret    
 26b:	b8 09 00 00 00       	mov    $0x9,%eax
 270:	cd 40                	int    $0x40
 272:	c3                   	ret    
 273:	b8 0a 00 00 00       	mov    $0xa,%eax
 278:	cd 40                	int    $0x40
 27a:	c3                   	ret    
 27b:	b8 0b 00 00 00       	mov    $0xb,%eax
 280:	cd 40                	int    $0x40
 282:	c3                   	ret    
 283:	b8 0c 00 00 00       	mov    $0xc,%eax
 288:	cd 40                	int    $0x40
 28a:	c3                   	ret    
 28b:	b8 0d 00 00 00       	mov    $0xd,%eax
 290:	cd 40                	int    $0x40
 292:	c3                   	ret    
 293:	b8 0e 00 00 00       	mov    $0xe,%eax
 298:	cd 40                	int    $0x40
 29a:	c3                   	ret    
 29b:	b8 16 00 00 00       	mov    $0x16,%eax
 2a0:	cd 40                	int    $0x40
 2a2:	c3                   	ret    
 2a3:	55                   	push   %ebp
 2a4:	89 e5                	mov    %esp,%ebp
 2a6:	83 ec 1c             	sub    $0x1c,%esp
 2a9:	88 55 f4             	mov    %dl,-0xc(%ebp)
 2ac:	6a 01                	push   $0x1
 2ae:	8d 55 f4             	lea    -0xc(%ebp),%edx
 2b1:	52                   	push   %edx
 2b2:	50                   	push   %eax
 2b3:	e8 63 ff ff ff       	call   0x21b
 2b8:	83 c4 10             	add    $0x10,%esp
 2bb:	c9                   	leave  
 2bc:	c3                   	ret    
 2bd:	55                   	push   %ebp
 2be:	89 e5                	mov    %esp,%ebp
 2c0:	57                   	push   %edi
 2c1:	56                   	push   %esi
 2c2:	53                   	push   %ebx
 2c3:	83 ec 2c             	sub    $0x2c,%esp
 2c6:	89 45 d0             	mov    %eax,-0x30(%ebp)
 2c9:	89 d0                	mov    %edx,%eax
 2cb:	89 ce                	mov    %ecx,%esi
 2cd:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 2d1:	0f 95 c1             	setne  %cl
 2d4:	c1 ea 1f             	shr    $0x1f,%edx
 2d7:	84 d1                	test   %dl,%cl
 2d9:	74 44                	je     0x31f
 2db:	f7 d8                	neg    %eax
 2dd:	89 c1                	mov    %eax,%ecx
 2df:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 2e6:	bb 00 00 00 00       	mov    $0x0,%ebx
 2eb:	89 c8                	mov    %ecx,%eax
 2ed:	ba 00 00 00 00       	mov    $0x0,%edx
 2f2:	f7 f6                	div    %esi
 2f4:	89 df                	mov    %ebx,%edi
 2f6:	83 c3 01             	add    $0x1,%ebx
 2f9:	0f b6 92 80 06 00 00 	movzbl 0x680(%edx),%edx
 300:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 304:	89 ca                	mov    %ecx,%edx
 306:	89 c1                	mov    %eax,%ecx
 308:	39 d6                	cmp    %edx,%esi
 30a:	76 df                	jbe    0x2eb
 30c:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 310:	74 31                	je     0x343
 312:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 317:	8d 5f 02             	lea    0x2(%edi),%ebx
 31a:	8b 75 d0             	mov    -0x30(%ebp),%esi
 31d:	eb 17                	jmp    0x336
 31f:	89 c1                	mov    %eax,%ecx
 321:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 328:	eb bc                	jmp    0x2e6
 32a:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 32f:	89 f0                	mov    %esi,%eax
 331:	e8 6d ff ff ff       	call   0x2a3
 336:	83 eb 01             	sub    $0x1,%ebx
 339:	79 ef                	jns    0x32a
 33b:	83 c4 2c             	add    $0x2c,%esp
 33e:	5b                   	pop    %ebx
 33f:	5e                   	pop    %esi
 340:	5f                   	pop    %edi
 341:	5d                   	pop    %ebp
 342:	c3                   	ret    
 343:	8b 75 d0             	mov    -0x30(%ebp),%esi
 346:	eb ee                	jmp    0x336
 348:	55                   	push   %ebp
 349:	89 e5                	mov    %esp,%ebp
 34b:	57                   	push   %edi
 34c:	56                   	push   %esi
 34d:	53                   	push   %ebx
 34e:	83 ec 1c             	sub    $0x1c,%esp
 351:	8d 45 10             	lea    0x10(%ebp),%eax
 354:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 357:	be 00 00 00 00       	mov    $0x0,%esi
 35c:	bb 00 00 00 00       	mov    $0x0,%ebx
 361:	eb 14                	jmp    0x377
 363:	89 fa                	mov    %edi,%edx
 365:	8b 45 08             	mov    0x8(%ebp),%eax
 368:	e8 36 ff ff ff       	call   0x2a3
 36d:	eb 05                	jmp    0x374
 36f:	83 fe 25             	cmp    $0x25,%esi
 372:	74 25                	je     0x399
 374:	83 c3 01             	add    $0x1,%ebx
 377:	8b 45 0c             	mov    0xc(%ebp),%eax
 37a:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 37e:	84 c0                	test   %al,%al
 380:	0f 84 20 01 00 00    	je     0x4a6
 386:	0f be f8             	movsbl %al,%edi
 389:	0f b6 c0             	movzbl %al,%eax
 38c:	85 f6                	test   %esi,%esi
 38e:	75 df                	jne    0x36f
 390:	83 f8 25             	cmp    $0x25,%eax
 393:	75 ce                	jne    0x363
 395:	89 c6                	mov    %eax,%esi
 397:	eb db                	jmp    0x374
 399:	83 f8 25             	cmp    $0x25,%eax
 39c:	0f 84 cf 00 00 00    	je     0x471
 3a2:	0f 8c dd 00 00 00    	jl     0x485
 3a8:	83 f8 78             	cmp    $0x78,%eax
 3ab:	0f 8f d4 00 00 00    	jg     0x485
 3b1:	83 f8 63             	cmp    $0x63,%eax
 3b4:	0f 8c cb 00 00 00    	jl     0x485
 3ba:	83 e8 63             	sub    $0x63,%eax
 3bd:	83 f8 15             	cmp    $0x15,%eax
 3c0:	0f 87 bf 00 00 00    	ja     0x485
 3c6:	ff 24 85 28 06 00 00 	jmp    *0x628(,%eax,4)
 3cd:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 3d0:	8b 17                	mov    (%edi),%edx
 3d2:	83 ec 0c             	sub    $0xc,%esp
 3d5:	6a 01                	push   $0x1
 3d7:	b9 0a 00 00 00       	mov    $0xa,%ecx
 3dc:	8b 45 08             	mov    0x8(%ebp),%eax
 3df:	e8 d9 fe ff ff       	call   0x2bd
 3e4:	83 c7 04             	add    $0x4,%edi
 3e7:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 3ea:	83 c4 10             	add    $0x10,%esp
 3ed:	be 00 00 00 00       	mov    $0x0,%esi
 3f2:	eb 80                	jmp    0x374
 3f4:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 3f7:	8b 17                	mov    (%edi),%edx
 3f9:	83 ec 0c             	sub    $0xc,%esp
 3fc:	6a 00                	push   $0x0
 3fe:	b9 10 00 00 00       	mov    $0x10,%ecx
 403:	8b 45 08             	mov    0x8(%ebp),%eax
 406:	e8 b2 fe ff ff       	call   0x2bd
 40b:	83 c7 04             	add    $0x4,%edi
 40e:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 411:	83 c4 10             	add    $0x10,%esp
 414:	be 00 00 00 00       	mov    $0x0,%esi
 419:	e9 56 ff ff ff       	jmp    0x374
 41e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 421:	8b 30                	mov    (%eax),%esi
 423:	83 c0 04             	add    $0x4,%eax
 426:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 429:	85 f6                	test   %esi,%esi
 42b:	75 15                	jne    0x442
 42d:	be 1f 06 00 00       	mov    $0x61f,%esi
 432:	eb 0e                	jmp    0x442
 434:	0f be d2             	movsbl %dl,%edx
 437:	8b 45 08             	mov    0x8(%ebp),%eax
 43a:	e8 64 fe ff ff       	call   0x2a3
 43f:	83 c6 01             	add    $0x1,%esi
 442:	0f b6 16             	movzbl (%esi),%edx
 445:	84 d2                	test   %dl,%dl
 447:	75 eb                	jne    0x434
 449:	be 00 00 00 00       	mov    $0x0,%esi
 44e:	e9 21 ff ff ff       	jmp    0x374
 453:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 456:	0f be 17             	movsbl (%edi),%edx
 459:	8b 45 08             	mov    0x8(%ebp),%eax
 45c:	e8 42 fe ff ff       	call   0x2a3
 461:	83 c7 04             	add    $0x4,%edi
 464:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 467:	be 00 00 00 00       	mov    $0x0,%esi
 46c:	e9 03 ff ff ff       	jmp    0x374
 471:	89 fa                	mov    %edi,%edx
 473:	8b 45 08             	mov    0x8(%ebp),%eax
 476:	e8 28 fe ff ff       	call   0x2a3
 47b:	be 00 00 00 00       	mov    $0x0,%esi
 480:	e9 ef fe ff ff       	jmp    0x374
 485:	ba 25 00 00 00       	mov    $0x25,%edx
 48a:	8b 45 08             	mov    0x8(%ebp),%eax
 48d:	e8 11 fe ff ff       	call   0x2a3
 492:	89 fa                	mov    %edi,%edx
 494:	8b 45 08             	mov    0x8(%ebp),%eax
 497:	e8 07 fe ff ff       	call   0x2a3
 49c:	be 00 00 00 00       	mov    $0x0,%esi
 4a1:	e9 ce fe ff ff       	jmp    0x374
 4a6:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4a9:	5b                   	pop    %ebx
 4aa:	5e                   	pop    %esi
 4ab:	5f                   	pop    %edi
 4ac:	5d                   	pop    %ebp
 4ad:	c3                   	ret    
 4ae:	55                   	push   %ebp
 4af:	89 e5                	mov    %esp,%ebp
 4b1:	57                   	push   %edi
 4b2:	56                   	push   %esi
 4b3:	53                   	push   %ebx
 4b4:	8b 5d 08             	mov    0x8(%ebp),%ebx
 4b7:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 4ba:	a1 24 09 00 00       	mov    0x924,%eax
 4bf:	eb 02                	jmp    0x4c3
 4c1:	89 d0                	mov    %edx,%eax
 4c3:	39 c8                	cmp    %ecx,%eax
 4c5:	73 04                	jae    0x4cb
 4c7:	39 08                	cmp    %ecx,(%eax)
 4c9:	77 12                	ja     0x4dd
 4cb:	8b 10                	mov    (%eax),%edx
 4cd:	39 c2                	cmp    %eax,%edx
 4cf:	77 f0                	ja     0x4c1
 4d1:	39 c8                	cmp    %ecx,%eax
 4d3:	72 08                	jb     0x4dd
 4d5:	39 ca                	cmp    %ecx,%edx
 4d7:	77 04                	ja     0x4dd
 4d9:	89 d0                	mov    %edx,%eax
 4db:	eb e6                	jmp    0x4c3
 4dd:	8b 73 fc             	mov    -0x4(%ebx),%esi
 4e0:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 4e3:	8b 10                	mov    (%eax),%edx
 4e5:	39 d7                	cmp    %edx,%edi
 4e7:	74 19                	je     0x502
 4e9:	89 53 f8             	mov    %edx,-0x8(%ebx)
 4ec:	8b 50 04             	mov    0x4(%eax),%edx
 4ef:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 4f2:	39 ce                	cmp    %ecx,%esi
 4f4:	74 1b                	je     0x511
 4f6:	89 08                	mov    %ecx,(%eax)
 4f8:	a3 24 09 00 00       	mov    %eax,0x924
 4fd:	5b                   	pop    %ebx
 4fe:	5e                   	pop    %esi
 4ff:	5f                   	pop    %edi
 500:	5d                   	pop    %ebp
 501:	c3                   	ret    
 502:	03 72 04             	add    0x4(%edx),%esi
 505:	89 73 fc             	mov    %esi,-0x4(%ebx)
 508:	8b 10                	mov    (%eax),%edx
 50a:	8b 12                	mov    (%edx),%edx
 50c:	89 53 f8             	mov    %edx,-0x8(%ebx)
 50f:	eb db                	jmp    0x4ec
 511:	03 53 fc             	add    -0x4(%ebx),%edx
 514:	89 50 04             	mov    %edx,0x4(%eax)
 517:	8b 53 f8             	mov    -0x8(%ebx),%edx
 51a:	89 10                	mov    %edx,(%eax)
 51c:	eb da                	jmp    0x4f8
 51e:	55                   	push   %ebp
 51f:	89 e5                	mov    %esp,%ebp
 521:	53                   	push   %ebx
 522:	83 ec 04             	sub    $0x4,%esp
 525:	89 c3                	mov    %eax,%ebx
 527:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 52c:	77 05                	ja     0x533
 52e:	bb 00 10 00 00       	mov    $0x1000,%ebx
 533:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 53a:	83 ec 0c             	sub    $0xc,%esp
 53d:	50                   	push   %eax
 53e:	e8 40 fd ff ff       	call   0x283
 543:	83 c4 10             	add    $0x10,%esp
 546:	83 f8 ff             	cmp    $0xffffffff,%eax
 549:	74 1c                	je     0x567
 54b:	89 58 04             	mov    %ebx,0x4(%eax)
 54e:	83 c0 08             	add    $0x8,%eax
 551:	83 ec 0c             	sub    $0xc,%esp
 554:	50                   	push   %eax
 555:	e8 54 ff ff ff       	call   0x4ae
 55a:	a1 24 09 00 00       	mov    0x924,%eax
 55f:	83 c4 10             	add    $0x10,%esp
 562:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 565:	c9                   	leave  
 566:	c3                   	ret    
 567:	b8 00 00 00 00       	mov    $0x0,%eax
 56c:	eb f4                	jmp    0x562
 56e:	55                   	push   %ebp
 56f:	89 e5                	mov    %esp,%ebp
 571:	53                   	push   %ebx
 572:	83 ec 04             	sub    $0x4,%esp
 575:	8b 45 08             	mov    0x8(%ebp),%eax
 578:	8d 58 07             	lea    0x7(%eax),%ebx
 57b:	c1 eb 03             	shr    $0x3,%ebx
 57e:	83 c3 01             	add    $0x1,%ebx
 581:	8b 0d 24 09 00 00    	mov    0x924,%ecx
 587:	85 c9                	test   %ecx,%ecx
 589:	74 04                	je     0x58f
 58b:	8b 01                	mov    (%ecx),%eax
 58d:	eb 4a                	jmp    0x5d9
 58f:	c7 05 24 09 00 00 28 	movl   $0x928,0x924
 596:	09 00 00 
 599:	c7 05 28 09 00 00 28 	movl   $0x928,0x928
 5a0:	09 00 00 
 5a3:	c7 05 2c 09 00 00 00 	movl   $0x0,0x92c
 5aa:	00 00 00 
 5ad:	b9 28 09 00 00       	mov    $0x928,%ecx
 5b2:	eb d7                	jmp    0x58b
 5b4:	74 19                	je     0x5cf
 5b6:	29 da                	sub    %ebx,%edx
 5b8:	89 50 04             	mov    %edx,0x4(%eax)
 5bb:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 5be:	89 58 04             	mov    %ebx,0x4(%eax)
 5c1:	89 0d 24 09 00 00    	mov    %ecx,0x924
 5c7:	83 c0 08             	add    $0x8,%eax
 5ca:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 5cd:	c9                   	leave  
 5ce:	c3                   	ret    
 5cf:	8b 10                	mov    (%eax),%edx
 5d1:	89 11                	mov    %edx,(%ecx)
 5d3:	eb ec                	jmp    0x5c1
 5d5:	89 c1                	mov    %eax,%ecx
 5d7:	8b 00                	mov    (%eax),%eax
 5d9:	8b 50 04             	mov    0x4(%eax),%edx
 5dc:	39 da                	cmp    %ebx,%edx
 5de:	73 d4                	jae    0x5b4
 5e0:	39 05 24 09 00 00    	cmp    %eax,0x924
 5e6:	75 ed                	jne    0x5d5
 5e8:	89 d8                	mov    %ebx,%eax
 5ea:	e8 2f ff ff ff       	call   0x51e
 5ef:	85 c0                	test   %eax,%eax
 5f1:	75 e2                	jne    0x5d5
 5f3:	eb d5                	jmp    0x5ca
