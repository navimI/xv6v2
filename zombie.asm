
_zombie:     file format elf32-i386


Disassembly of section .text:

00000000 <.text>:
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	push   -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	51                   	push   %ecx
   e:	83 ec 04             	sub    $0x4,%esp
  11:	e8 af 01 00 00       	call   0x1c5
  16:	85 c0                	test   %eax,%eax
  18:	7f 05                	jg     0x1f
  1a:	e8 ae 01 00 00       	call   0x1cd
  1f:	83 ec 0c             	sub    $0xc,%esp
  22:	6a 05                	push   $0x5
  24:	e8 34 02 00 00       	call   0x25d
  29:	83 c4 10             	add    $0x10,%esp
  2c:	eb ec                	jmp    0x1a
  2e:	55                   	push   %ebp
  2f:	89 e5                	mov    %esp,%ebp
  31:	56                   	push   %esi
  32:	53                   	push   %ebx
  33:	8b 75 08             	mov    0x8(%ebp),%esi
  36:	8b 55 0c             	mov    0xc(%ebp),%edx
  39:	89 f0                	mov    %esi,%eax
  3b:	89 d1                	mov    %edx,%ecx
  3d:	83 c2 01             	add    $0x1,%edx
  40:	89 c3                	mov    %eax,%ebx
  42:	83 c0 01             	add    $0x1,%eax
  45:	0f b6 09             	movzbl (%ecx),%ecx
  48:	88 0b                	mov    %cl,(%ebx)
  4a:	84 c9                	test   %cl,%cl
  4c:	75 ed                	jne    0x3b
  4e:	89 f0                	mov    %esi,%eax
  50:	5b                   	pop    %ebx
  51:	5e                   	pop    %esi
  52:	5d                   	pop    %ebp
  53:	c3                   	ret    
  54:	55                   	push   %ebp
  55:	89 e5                	mov    %esp,%ebp
  57:	8b 4d 08             	mov    0x8(%ebp),%ecx
  5a:	8b 55 0c             	mov    0xc(%ebp),%edx
  5d:	eb 06                	jmp    0x65
  5f:	83 c1 01             	add    $0x1,%ecx
  62:	83 c2 01             	add    $0x1,%edx
  65:	0f b6 01             	movzbl (%ecx),%eax
  68:	84 c0                	test   %al,%al
  6a:	74 04                	je     0x70
  6c:	3a 02                	cmp    (%edx),%al
  6e:	74 ef                	je     0x5f
  70:	0f b6 c0             	movzbl %al,%eax
  73:	0f b6 12             	movzbl (%edx),%edx
  76:	29 d0                	sub    %edx,%eax
  78:	5d                   	pop    %ebp
  79:	c3                   	ret    
  7a:	55                   	push   %ebp
  7b:	89 e5                	mov    %esp,%ebp
  7d:	8b 4d 08             	mov    0x8(%ebp),%ecx
  80:	b8 00 00 00 00       	mov    $0x0,%eax
  85:	eb 03                	jmp    0x8a
  87:	83 c0 01             	add    $0x1,%eax
  8a:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
  8e:	75 f7                	jne    0x87
  90:	5d                   	pop    %ebp
  91:	c3                   	ret    
  92:	55                   	push   %ebp
  93:	89 e5                	mov    %esp,%ebp
  95:	57                   	push   %edi
  96:	8b 55 08             	mov    0x8(%ebp),%edx
  99:	89 d7                	mov    %edx,%edi
  9b:	8b 4d 10             	mov    0x10(%ebp),%ecx
  9e:	8b 45 0c             	mov    0xc(%ebp),%eax
  a1:	fc                   	cld    
  a2:	f3 aa                	rep stos %al,%es:(%edi)
  a4:	89 d0                	mov    %edx,%eax
  a6:	8b 7d fc             	mov    -0x4(%ebp),%edi
  a9:	c9                   	leave  
  aa:	c3                   	ret    
  ab:	55                   	push   %ebp
  ac:	89 e5                	mov    %esp,%ebp
  ae:	8b 45 08             	mov    0x8(%ebp),%eax
  b1:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  b5:	eb 03                	jmp    0xba
  b7:	83 c0 01             	add    $0x1,%eax
  ba:	0f b6 10             	movzbl (%eax),%edx
  bd:	84 d2                	test   %dl,%dl
  bf:	74 06                	je     0xc7
  c1:	38 ca                	cmp    %cl,%dl
  c3:	75 f2                	jne    0xb7
  c5:	eb 05                	jmp    0xcc
  c7:	b8 00 00 00 00       	mov    $0x0,%eax
  cc:	5d                   	pop    %ebp
  cd:	c3                   	ret    
  ce:	55                   	push   %ebp
  cf:	89 e5                	mov    %esp,%ebp
  d1:	57                   	push   %edi
  d2:	56                   	push   %esi
  d3:	53                   	push   %ebx
  d4:	83 ec 1c             	sub    $0x1c,%esp
  d7:	8b 7d 08             	mov    0x8(%ebp),%edi
  da:	bb 00 00 00 00       	mov    $0x0,%ebx
  df:	89 de                	mov    %ebx,%esi
  e1:	83 c3 01             	add    $0x1,%ebx
  e4:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
  e7:	7d 2e                	jge    0x117
  e9:	83 ec 04             	sub    $0x4,%esp
  ec:	6a 01                	push   $0x1
  ee:	8d 45 e7             	lea    -0x19(%ebp),%eax
  f1:	50                   	push   %eax
  f2:	6a 00                	push   $0x0
  f4:	e8 ec 00 00 00       	call   0x1e5
  f9:	83 c4 10             	add    $0x10,%esp
  fc:	85 c0                	test   %eax,%eax
  fe:	7e 17                	jle    0x117
 100:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 104:	88 04 37             	mov    %al,(%edi,%esi,1)
 107:	3c 0a                	cmp    $0xa,%al
 109:	0f 94 c2             	sete   %dl
 10c:	3c 0d                	cmp    $0xd,%al
 10e:	0f 94 c0             	sete   %al
 111:	08 c2                	or     %al,%dl
 113:	74 ca                	je     0xdf
 115:	89 de                	mov    %ebx,%esi
 117:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 11b:	89 f8                	mov    %edi,%eax
 11d:	8d 65 f4             	lea    -0xc(%ebp),%esp
 120:	5b                   	pop    %ebx
 121:	5e                   	pop    %esi
 122:	5f                   	pop    %edi
 123:	5d                   	pop    %ebp
 124:	c3                   	ret    
 125:	55                   	push   %ebp
 126:	89 e5                	mov    %esp,%ebp
 128:	56                   	push   %esi
 129:	53                   	push   %ebx
 12a:	83 ec 08             	sub    $0x8,%esp
 12d:	6a 00                	push   $0x0
 12f:	ff 75 08             	push   0x8(%ebp)
 132:	e8 d6 00 00 00       	call   0x20d
 137:	83 c4 10             	add    $0x10,%esp
 13a:	85 c0                	test   %eax,%eax
 13c:	78 24                	js     0x162
 13e:	89 c3                	mov    %eax,%ebx
 140:	83 ec 08             	sub    $0x8,%esp
 143:	ff 75 0c             	push   0xc(%ebp)
 146:	50                   	push   %eax
 147:	e8 d9 00 00 00       	call   0x225
 14c:	89 c6                	mov    %eax,%esi
 14e:	89 1c 24             	mov    %ebx,(%esp)
 151:	e8 9f 00 00 00       	call   0x1f5
 156:	83 c4 10             	add    $0x10,%esp
 159:	89 f0                	mov    %esi,%eax
 15b:	8d 65 f8             	lea    -0x8(%ebp),%esp
 15e:	5b                   	pop    %ebx
 15f:	5e                   	pop    %esi
 160:	5d                   	pop    %ebp
 161:	c3                   	ret    
 162:	be ff ff ff ff       	mov    $0xffffffff,%esi
 167:	eb f0                	jmp    0x159
 169:	55                   	push   %ebp
 16a:	89 e5                	mov    %esp,%ebp
 16c:	53                   	push   %ebx
 16d:	8b 4d 08             	mov    0x8(%ebp),%ecx
 170:	ba 00 00 00 00       	mov    $0x0,%edx
 175:	eb 10                	jmp    0x187
 177:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 17a:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 17d:	83 c1 01             	add    $0x1,%ecx
 180:	0f be c0             	movsbl %al,%eax
 183:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 187:	0f b6 01             	movzbl (%ecx),%eax
 18a:	8d 58 d0             	lea    -0x30(%eax),%ebx
 18d:	80 fb 09             	cmp    $0x9,%bl
 190:	76 e5                	jbe    0x177
 192:	89 d0                	mov    %edx,%eax
 194:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 197:	c9                   	leave  
 198:	c3                   	ret    
 199:	55                   	push   %ebp
 19a:	89 e5                	mov    %esp,%ebp
 19c:	56                   	push   %esi
 19d:	53                   	push   %ebx
 19e:	8b 75 08             	mov    0x8(%ebp),%esi
 1a1:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 1a4:	8b 45 10             	mov    0x10(%ebp),%eax
 1a7:	89 f2                	mov    %esi,%edx
 1a9:	eb 0d                	jmp    0x1b8
 1ab:	0f b6 01             	movzbl (%ecx),%eax
 1ae:	88 02                	mov    %al,(%edx)
 1b0:	8d 49 01             	lea    0x1(%ecx),%ecx
 1b3:	8d 52 01             	lea    0x1(%edx),%edx
 1b6:	89 d8                	mov    %ebx,%eax
 1b8:	8d 58 ff             	lea    -0x1(%eax),%ebx
 1bb:	85 c0                	test   %eax,%eax
 1bd:	7f ec                	jg     0x1ab
 1bf:	89 f0                	mov    %esi,%eax
 1c1:	5b                   	pop    %ebx
 1c2:	5e                   	pop    %esi
 1c3:	5d                   	pop    %ebp
 1c4:	c3                   	ret    
 1c5:	b8 01 00 00 00       	mov    $0x1,%eax
 1ca:	cd 40                	int    $0x40
 1cc:	c3                   	ret    
 1cd:	b8 02 00 00 00       	mov    $0x2,%eax
 1d2:	cd 40                	int    $0x40
 1d4:	c3                   	ret    
 1d5:	b8 03 00 00 00       	mov    $0x3,%eax
 1da:	cd 40                	int    $0x40
 1dc:	c3                   	ret    
 1dd:	b8 04 00 00 00       	mov    $0x4,%eax
 1e2:	cd 40                	int    $0x40
 1e4:	c3                   	ret    
 1e5:	b8 05 00 00 00       	mov    $0x5,%eax
 1ea:	cd 40                	int    $0x40
 1ec:	c3                   	ret    
 1ed:	b8 10 00 00 00       	mov    $0x10,%eax
 1f2:	cd 40                	int    $0x40
 1f4:	c3                   	ret    
 1f5:	b8 15 00 00 00       	mov    $0x15,%eax
 1fa:	cd 40                	int    $0x40
 1fc:	c3                   	ret    
 1fd:	b8 06 00 00 00       	mov    $0x6,%eax
 202:	cd 40                	int    $0x40
 204:	c3                   	ret    
 205:	b8 07 00 00 00       	mov    $0x7,%eax
 20a:	cd 40                	int    $0x40
 20c:	c3                   	ret    
 20d:	b8 0f 00 00 00       	mov    $0xf,%eax
 212:	cd 40                	int    $0x40
 214:	c3                   	ret    
 215:	b8 11 00 00 00       	mov    $0x11,%eax
 21a:	cd 40                	int    $0x40
 21c:	c3                   	ret    
 21d:	b8 12 00 00 00       	mov    $0x12,%eax
 222:	cd 40                	int    $0x40
 224:	c3                   	ret    
 225:	b8 08 00 00 00       	mov    $0x8,%eax
 22a:	cd 40                	int    $0x40
 22c:	c3                   	ret    
 22d:	b8 13 00 00 00       	mov    $0x13,%eax
 232:	cd 40                	int    $0x40
 234:	c3                   	ret    
 235:	b8 14 00 00 00       	mov    $0x14,%eax
 23a:	cd 40                	int    $0x40
 23c:	c3                   	ret    
 23d:	b8 09 00 00 00       	mov    $0x9,%eax
 242:	cd 40                	int    $0x40
 244:	c3                   	ret    
 245:	b8 0a 00 00 00       	mov    $0xa,%eax
 24a:	cd 40                	int    $0x40
 24c:	c3                   	ret    
 24d:	b8 0b 00 00 00       	mov    $0xb,%eax
 252:	cd 40                	int    $0x40
 254:	c3                   	ret    
 255:	b8 0c 00 00 00       	mov    $0xc,%eax
 25a:	cd 40                	int    $0x40
 25c:	c3                   	ret    
 25d:	b8 0d 00 00 00       	mov    $0xd,%eax
 262:	cd 40                	int    $0x40
 264:	c3                   	ret    
 265:	b8 0e 00 00 00       	mov    $0xe,%eax
 26a:	cd 40                	int    $0x40
 26c:	c3                   	ret    
 26d:	b8 16 00 00 00       	mov    $0x16,%eax
 272:	cd 40                	int    $0x40
 274:	c3                   	ret    
 275:	55                   	push   %ebp
 276:	89 e5                	mov    %esp,%ebp
 278:	83 ec 1c             	sub    $0x1c,%esp
 27b:	88 55 f4             	mov    %dl,-0xc(%ebp)
 27e:	6a 01                	push   $0x1
 280:	8d 55 f4             	lea    -0xc(%ebp),%edx
 283:	52                   	push   %edx
 284:	50                   	push   %eax
 285:	e8 63 ff ff ff       	call   0x1ed
 28a:	83 c4 10             	add    $0x10,%esp
 28d:	c9                   	leave  
 28e:	c3                   	ret    
 28f:	55                   	push   %ebp
 290:	89 e5                	mov    %esp,%ebp
 292:	57                   	push   %edi
 293:	56                   	push   %esi
 294:	53                   	push   %ebx
 295:	83 ec 2c             	sub    $0x2c,%esp
 298:	89 45 d0             	mov    %eax,-0x30(%ebp)
 29b:	89 d0                	mov    %edx,%eax
 29d:	89 ce                	mov    %ecx,%esi
 29f:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 2a3:	0f 95 c1             	setne  %cl
 2a6:	c1 ea 1f             	shr    $0x1f,%edx
 2a9:	84 d1                	test   %dl,%cl
 2ab:	74 44                	je     0x2f1
 2ad:	f7 d8                	neg    %eax
 2af:	89 c1                	mov    %eax,%ecx
 2b1:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 2b8:	bb 00 00 00 00       	mov    $0x0,%ebx
 2bd:	89 c8                	mov    %ecx,%eax
 2bf:	ba 00 00 00 00       	mov    $0x0,%edx
 2c4:	f7 f6                	div    %esi
 2c6:	89 df                	mov    %ebx,%edi
 2c8:	83 c3 01             	add    $0x1,%ebx
 2cb:	0f b6 92 28 06 00 00 	movzbl 0x628(%edx),%edx
 2d2:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 2d6:	89 ca                	mov    %ecx,%edx
 2d8:	89 c1                	mov    %eax,%ecx
 2da:	39 d6                	cmp    %edx,%esi
 2dc:	76 df                	jbe    0x2bd
 2de:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 2e2:	74 31                	je     0x315
 2e4:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 2e9:	8d 5f 02             	lea    0x2(%edi),%ebx
 2ec:	8b 75 d0             	mov    -0x30(%ebp),%esi
 2ef:	eb 17                	jmp    0x308
 2f1:	89 c1                	mov    %eax,%ecx
 2f3:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 2fa:	eb bc                	jmp    0x2b8
 2fc:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 301:	89 f0                	mov    %esi,%eax
 303:	e8 6d ff ff ff       	call   0x275
 308:	83 eb 01             	sub    $0x1,%ebx
 30b:	79 ef                	jns    0x2fc
 30d:	83 c4 2c             	add    $0x2c,%esp
 310:	5b                   	pop    %ebx
 311:	5e                   	pop    %esi
 312:	5f                   	pop    %edi
 313:	5d                   	pop    %ebp
 314:	c3                   	ret    
 315:	8b 75 d0             	mov    -0x30(%ebp),%esi
 318:	eb ee                	jmp    0x308
 31a:	55                   	push   %ebp
 31b:	89 e5                	mov    %esp,%ebp
 31d:	57                   	push   %edi
 31e:	56                   	push   %esi
 31f:	53                   	push   %ebx
 320:	83 ec 1c             	sub    $0x1c,%esp
 323:	8d 45 10             	lea    0x10(%ebp),%eax
 326:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 329:	be 00 00 00 00       	mov    $0x0,%esi
 32e:	bb 00 00 00 00       	mov    $0x0,%ebx
 333:	eb 14                	jmp    0x349
 335:	89 fa                	mov    %edi,%edx
 337:	8b 45 08             	mov    0x8(%ebp),%eax
 33a:	e8 36 ff ff ff       	call   0x275
 33f:	eb 05                	jmp    0x346
 341:	83 fe 25             	cmp    $0x25,%esi
 344:	74 25                	je     0x36b
 346:	83 c3 01             	add    $0x1,%ebx
 349:	8b 45 0c             	mov    0xc(%ebp),%eax
 34c:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 350:	84 c0                	test   %al,%al
 352:	0f 84 20 01 00 00    	je     0x478
 358:	0f be f8             	movsbl %al,%edi
 35b:	0f b6 c0             	movzbl %al,%eax
 35e:	85 f6                	test   %esi,%esi
 360:	75 df                	jne    0x341
 362:	83 f8 25             	cmp    $0x25,%eax
 365:	75 ce                	jne    0x335
 367:	89 c6                	mov    %eax,%esi
 369:	eb db                	jmp    0x346
 36b:	83 f8 25             	cmp    $0x25,%eax
 36e:	0f 84 cf 00 00 00    	je     0x443
 374:	0f 8c dd 00 00 00    	jl     0x457
 37a:	83 f8 78             	cmp    $0x78,%eax
 37d:	0f 8f d4 00 00 00    	jg     0x457
 383:	83 f8 63             	cmp    $0x63,%eax
 386:	0f 8c cb 00 00 00    	jl     0x457
 38c:	83 e8 63             	sub    $0x63,%eax
 38f:	83 f8 15             	cmp    $0x15,%eax
 392:	0f 87 bf 00 00 00    	ja     0x457
 398:	ff 24 85 d0 05 00 00 	jmp    *0x5d0(,%eax,4)
 39f:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 3a2:	8b 17                	mov    (%edi),%edx
 3a4:	83 ec 0c             	sub    $0xc,%esp
 3a7:	6a 01                	push   $0x1
 3a9:	b9 0a 00 00 00       	mov    $0xa,%ecx
 3ae:	8b 45 08             	mov    0x8(%ebp),%eax
 3b1:	e8 d9 fe ff ff       	call   0x28f
 3b6:	83 c7 04             	add    $0x4,%edi
 3b9:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 3bc:	83 c4 10             	add    $0x10,%esp
 3bf:	be 00 00 00 00       	mov    $0x0,%esi
 3c4:	eb 80                	jmp    0x346
 3c6:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 3c9:	8b 17                	mov    (%edi),%edx
 3cb:	83 ec 0c             	sub    $0xc,%esp
 3ce:	6a 00                	push   $0x0
 3d0:	b9 10 00 00 00       	mov    $0x10,%ecx
 3d5:	8b 45 08             	mov    0x8(%ebp),%eax
 3d8:	e8 b2 fe ff ff       	call   0x28f
 3dd:	83 c7 04             	add    $0x4,%edi
 3e0:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 3e3:	83 c4 10             	add    $0x10,%esp
 3e6:	be 00 00 00 00       	mov    $0x0,%esi
 3eb:	e9 56 ff ff ff       	jmp    0x346
 3f0:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 3f3:	8b 30                	mov    (%eax),%esi
 3f5:	83 c0 04             	add    $0x4,%eax
 3f8:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 3fb:	85 f6                	test   %esi,%esi
 3fd:	75 15                	jne    0x414
 3ff:	be c8 05 00 00       	mov    $0x5c8,%esi
 404:	eb 0e                	jmp    0x414
 406:	0f be d2             	movsbl %dl,%edx
 409:	8b 45 08             	mov    0x8(%ebp),%eax
 40c:	e8 64 fe ff ff       	call   0x275
 411:	83 c6 01             	add    $0x1,%esi
 414:	0f b6 16             	movzbl (%esi),%edx
 417:	84 d2                	test   %dl,%dl
 419:	75 eb                	jne    0x406
 41b:	be 00 00 00 00       	mov    $0x0,%esi
 420:	e9 21 ff ff ff       	jmp    0x346
 425:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 428:	0f be 17             	movsbl (%edi),%edx
 42b:	8b 45 08             	mov    0x8(%ebp),%eax
 42e:	e8 42 fe ff ff       	call   0x275
 433:	83 c7 04             	add    $0x4,%edi
 436:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 439:	be 00 00 00 00       	mov    $0x0,%esi
 43e:	e9 03 ff ff ff       	jmp    0x346
 443:	89 fa                	mov    %edi,%edx
 445:	8b 45 08             	mov    0x8(%ebp),%eax
 448:	e8 28 fe ff ff       	call   0x275
 44d:	be 00 00 00 00       	mov    $0x0,%esi
 452:	e9 ef fe ff ff       	jmp    0x346
 457:	ba 25 00 00 00       	mov    $0x25,%edx
 45c:	8b 45 08             	mov    0x8(%ebp),%eax
 45f:	e8 11 fe ff ff       	call   0x275
 464:	89 fa                	mov    %edi,%edx
 466:	8b 45 08             	mov    0x8(%ebp),%eax
 469:	e8 07 fe ff ff       	call   0x275
 46e:	be 00 00 00 00       	mov    $0x0,%esi
 473:	e9 ce fe ff ff       	jmp    0x346
 478:	8d 65 f4             	lea    -0xc(%ebp),%esp
 47b:	5b                   	pop    %ebx
 47c:	5e                   	pop    %esi
 47d:	5f                   	pop    %edi
 47e:	5d                   	pop    %ebp
 47f:	c3                   	ret    
 480:	55                   	push   %ebp
 481:	89 e5                	mov    %esp,%ebp
 483:	57                   	push   %edi
 484:	56                   	push   %esi
 485:	53                   	push   %ebx
 486:	8b 5d 08             	mov    0x8(%ebp),%ebx
 489:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 48c:	a1 c8 08 00 00       	mov    0x8c8,%eax
 491:	eb 02                	jmp    0x495
 493:	89 d0                	mov    %edx,%eax
 495:	39 c8                	cmp    %ecx,%eax
 497:	73 04                	jae    0x49d
 499:	39 08                	cmp    %ecx,(%eax)
 49b:	77 12                	ja     0x4af
 49d:	8b 10                	mov    (%eax),%edx
 49f:	39 c2                	cmp    %eax,%edx
 4a1:	77 f0                	ja     0x493
 4a3:	39 c8                	cmp    %ecx,%eax
 4a5:	72 08                	jb     0x4af
 4a7:	39 ca                	cmp    %ecx,%edx
 4a9:	77 04                	ja     0x4af
 4ab:	89 d0                	mov    %edx,%eax
 4ad:	eb e6                	jmp    0x495
 4af:	8b 73 fc             	mov    -0x4(%ebx),%esi
 4b2:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 4b5:	8b 10                	mov    (%eax),%edx
 4b7:	39 d7                	cmp    %edx,%edi
 4b9:	74 19                	je     0x4d4
 4bb:	89 53 f8             	mov    %edx,-0x8(%ebx)
 4be:	8b 50 04             	mov    0x4(%eax),%edx
 4c1:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 4c4:	39 ce                	cmp    %ecx,%esi
 4c6:	74 1b                	je     0x4e3
 4c8:	89 08                	mov    %ecx,(%eax)
 4ca:	a3 c8 08 00 00       	mov    %eax,0x8c8
 4cf:	5b                   	pop    %ebx
 4d0:	5e                   	pop    %esi
 4d1:	5f                   	pop    %edi
 4d2:	5d                   	pop    %ebp
 4d3:	c3                   	ret    
 4d4:	03 72 04             	add    0x4(%edx),%esi
 4d7:	89 73 fc             	mov    %esi,-0x4(%ebx)
 4da:	8b 10                	mov    (%eax),%edx
 4dc:	8b 12                	mov    (%edx),%edx
 4de:	89 53 f8             	mov    %edx,-0x8(%ebx)
 4e1:	eb db                	jmp    0x4be
 4e3:	03 53 fc             	add    -0x4(%ebx),%edx
 4e6:	89 50 04             	mov    %edx,0x4(%eax)
 4e9:	8b 53 f8             	mov    -0x8(%ebx),%edx
 4ec:	89 10                	mov    %edx,(%eax)
 4ee:	eb da                	jmp    0x4ca
 4f0:	55                   	push   %ebp
 4f1:	89 e5                	mov    %esp,%ebp
 4f3:	53                   	push   %ebx
 4f4:	83 ec 04             	sub    $0x4,%esp
 4f7:	89 c3                	mov    %eax,%ebx
 4f9:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 4fe:	77 05                	ja     0x505
 500:	bb 00 10 00 00       	mov    $0x1000,%ebx
 505:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 50c:	83 ec 0c             	sub    $0xc,%esp
 50f:	50                   	push   %eax
 510:	e8 40 fd ff ff       	call   0x255
 515:	83 c4 10             	add    $0x10,%esp
 518:	83 f8 ff             	cmp    $0xffffffff,%eax
 51b:	74 1c                	je     0x539
 51d:	89 58 04             	mov    %ebx,0x4(%eax)
 520:	83 c0 08             	add    $0x8,%eax
 523:	83 ec 0c             	sub    $0xc,%esp
 526:	50                   	push   %eax
 527:	e8 54 ff ff ff       	call   0x480
 52c:	a1 c8 08 00 00       	mov    0x8c8,%eax
 531:	83 c4 10             	add    $0x10,%esp
 534:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 537:	c9                   	leave  
 538:	c3                   	ret    
 539:	b8 00 00 00 00       	mov    $0x0,%eax
 53e:	eb f4                	jmp    0x534
 540:	55                   	push   %ebp
 541:	89 e5                	mov    %esp,%ebp
 543:	53                   	push   %ebx
 544:	83 ec 04             	sub    $0x4,%esp
 547:	8b 45 08             	mov    0x8(%ebp),%eax
 54a:	8d 58 07             	lea    0x7(%eax),%ebx
 54d:	c1 eb 03             	shr    $0x3,%ebx
 550:	83 c3 01             	add    $0x1,%ebx
 553:	8b 0d c8 08 00 00    	mov    0x8c8,%ecx
 559:	85 c9                	test   %ecx,%ecx
 55b:	74 04                	je     0x561
 55d:	8b 01                	mov    (%ecx),%eax
 55f:	eb 4a                	jmp    0x5ab
 561:	c7 05 c8 08 00 00 cc 	movl   $0x8cc,0x8c8
 568:	08 00 00 
 56b:	c7 05 cc 08 00 00 cc 	movl   $0x8cc,0x8cc
 572:	08 00 00 
 575:	c7 05 d0 08 00 00 00 	movl   $0x0,0x8d0
 57c:	00 00 00 
 57f:	b9 cc 08 00 00       	mov    $0x8cc,%ecx
 584:	eb d7                	jmp    0x55d
 586:	74 19                	je     0x5a1
 588:	29 da                	sub    %ebx,%edx
 58a:	89 50 04             	mov    %edx,0x4(%eax)
 58d:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 590:	89 58 04             	mov    %ebx,0x4(%eax)
 593:	89 0d c8 08 00 00    	mov    %ecx,0x8c8
 599:	83 c0 08             	add    $0x8,%eax
 59c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 59f:	c9                   	leave  
 5a0:	c3                   	ret    
 5a1:	8b 10                	mov    (%eax),%edx
 5a3:	89 11                	mov    %edx,(%ecx)
 5a5:	eb ec                	jmp    0x593
 5a7:	89 c1                	mov    %eax,%ecx
 5a9:	8b 00                	mov    (%eax),%eax
 5ab:	8b 50 04             	mov    0x4(%eax),%edx
 5ae:	39 da                	cmp    %ebx,%edx
 5b0:	73 d4                	jae    0x586
 5b2:	39 05 c8 08 00 00    	cmp    %eax,0x8c8
 5b8:	75 ed                	jne    0x5a7
 5ba:	89 d8                	mov    %ebx,%eax
 5bc:	e8 2f ff ff ff       	call   0x4f0
 5c1:	85 c0                	test   %eax,%eax
 5c3:	75 e2                	jne    0x5a7
 5c5:	eb d5                	jmp    0x59c
