
_tsbrk3:     file format elf32-i386


Disassembly of section .text:

00000000 <.text>:
   0:	f3 0f 1e fb          	endbr32 
   4:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   8:	83 e4 f0             	and    $0xfffffff0,%esp
   b:	ff 71 fc             	push   -0x4(%ecx)
   e:	55                   	push   %ebp
   f:	89 e5                	mov    %esp,%ebp
  11:	56                   	push   %esi
  12:	53                   	push   %ebx
  13:	51                   	push   %ecx
  14:	83 ec 14             	sub    $0x14,%esp
  17:	6a 00                	push   $0x0
  19:	68 40 06 00 00       	push   $0x640
  1e:	e8 50 02 00 00       	call   0x273
  23:	89 c3                	mov    %eax,%ebx
  25:	c7 04 24 98 3a 00 00 	movl   $0x3a98,(%esp)
  2c:	e8 8a 02 00 00       	call   0x2bb
  31:	8d b0 00 20 00 00    	lea    0x2000(%eax),%esi
  37:	83 c4 0c             	add    $0xc,%esp
  3a:	6a 32                	push   $0x32
  3c:	56                   	push   %esi
  3d:	53                   	push   %ebx
  3e:	e8 08 02 00 00       	call   0x24b
  43:	83 c4 08             	add    $0x8,%esp
  46:	68 4c 06 00 00       	push   $0x64c
  4b:	6a 01                	push   $0x1
  4d:	e8 36 03 00 00       	call   0x388
  52:	83 c4 0c             	add    $0xc,%esp
  55:	56                   	push   %esi
  56:	68 47 06 00 00       	push   $0x647
  5b:	6a 01                	push   $0x1
  5d:	e8 26 03 00 00       	call   0x388
  62:	89 1c 24             	mov    %ebx,(%esp)
  65:	e8 f1 01 00 00       	call   0x25b
  6a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  71:	e8 bd 01 00 00       	call   0x233
  76:	f3 0f 1e fb          	endbr32 
  7a:	55                   	push   %ebp
  7b:	89 e5                	mov    %esp,%ebp
  7d:	56                   	push   %esi
  7e:	53                   	push   %ebx
  7f:	8b 75 08             	mov    0x8(%ebp),%esi
  82:	8b 55 0c             	mov    0xc(%ebp),%edx
  85:	89 f0                	mov    %esi,%eax
  87:	89 d1                	mov    %edx,%ecx
  89:	83 c2 01             	add    $0x1,%edx
  8c:	89 c3                	mov    %eax,%ebx
  8e:	83 c0 01             	add    $0x1,%eax
  91:	0f b6 09             	movzbl (%ecx),%ecx
  94:	88 0b                	mov    %cl,(%ebx)
  96:	84 c9                	test   %cl,%cl
  98:	75 ed                	jne    0x87
  9a:	89 f0                	mov    %esi,%eax
  9c:	5b                   	pop    %ebx
  9d:	5e                   	pop    %esi
  9e:	5d                   	pop    %ebp
  9f:	c3                   	ret    
  a0:	f3 0f 1e fb          	endbr32 
  a4:	55                   	push   %ebp
  a5:	89 e5                	mov    %esp,%ebp
  a7:	8b 4d 08             	mov    0x8(%ebp),%ecx
  aa:	8b 55 0c             	mov    0xc(%ebp),%edx
  ad:	0f b6 01             	movzbl (%ecx),%eax
  b0:	84 c0                	test   %al,%al
  b2:	74 0c                	je     0xc0
  b4:	3a 02                	cmp    (%edx),%al
  b6:	75 08                	jne    0xc0
  b8:	83 c1 01             	add    $0x1,%ecx
  bb:	83 c2 01             	add    $0x1,%edx
  be:	eb ed                	jmp    0xad
  c0:	0f b6 c0             	movzbl %al,%eax
  c3:	0f b6 12             	movzbl (%edx),%edx
  c6:	29 d0                	sub    %edx,%eax
  c8:	5d                   	pop    %ebp
  c9:	c3                   	ret    
  ca:	f3 0f 1e fb          	endbr32 
  ce:	55                   	push   %ebp
  cf:	89 e5                	mov    %esp,%ebp
  d1:	8b 4d 08             	mov    0x8(%ebp),%ecx
  d4:	b8 00 00 00 00       	mov    $0x0,%eax
  d9:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
  dd:	74 05                	je     0xe4
  df:	83 c0 01             	add    $0x1,%eax
  e2:	eb f5                	jmp    0xd9
  e4:	5d                   	pop    %ebp
  e5:	c3                   	ret    
  e6:	f3 0f 1e fb          	endbr32 
  ea:	55                   	push   %ebp
  eb:	89 e5                	mov    %esp,%ebp
  ed:	57                   	push   %edi
  ee:	8b 55 08             	mov    0x8(%ebp),%edx
  f1:	89 d7                	mov    %edx,%edi
  f3:	8b 4d 10             	mov    0x10(%ebp),%ecx
  f6:	8b 45 0c             	mov    0xc(%ebp),%eax
  f9:	fc                   	cld    
  fa:	f3 aa                	rep stos %al,%es:(%edi)
  fc:	89 d0                	mov    %edx,%eax
  fe:	5f                   	pop    %edi
  ff:	5d                   	pop    %ebp
 100:	c3                   	ret    
 101:	f3 0f 1e fb          	endbr32 
 105:	55                   	push   %ebp
 106:	89 e5                	mov    %esp,%ebp
 108:	8b 45 08             	mov    0x8(%ebp),%eax
 10b:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
 10f:	0f b6 10             	movzbl (%eax),%edx
 112:	84 d2                	test   %dl,%dl
 114:	74 09                	je     0x11f
 116:	38 ca                	cmp    %cl,%dl
 118:	74 0a                	je     0x124
 11a:	83 c0 01             	add    $0x1,%eax
 11d:	eb f0                	jmp    0x10f
 11f:	b8 00 00 00 00       	mov    $0x0,%eax
 124:	5d                   	pop    %ebp
 125:	c3                   	ret    
 126:	f3 0f 1e fb          	endbr32 
 12a:	55                   	push   %ebp
 12b:	89 e5                	mov    %esp,%ebp
 12d:	57                   	push   %edi
 12e:	56                   	push   %esi
 12f:	53                   	push   %ebx
 130:	83 ec 1c             	sub    $0x1c,%esp
 133:	8b 7d 08             	mov    0x8(%ebp),%edi
 136:	bb 00 00 00 00       	mov    $0x0,%ebx
 13b:	89 de                	mov    %ebx,%esi
 13d:	83 c3 01             	add    $0x1,%ebx
 140:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 143:	7d 2e                	jge    0x173
 145:	83 ec 04             	sub    $0x4,%esp
 148:	6a 01                	push   $0x1
 14a:	8d 45 e7             	lea    -0x19(%ebp),%eax
 14d:	50                   	push   %eax
 14e:	6a 00                	push   $0x0
 150:	e8 f6 00 00 00       	call   0x24b
 155:	83 c4 10             	add    $0x10,%esp
 158:	85 c0                	test   %eax,%eax
 15a:	7e 17                	jle    0x173
 15c:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 160:	88 04 37             	mov    %al,(%edi,%esi,1)
 163:	3c 0a                	cmp    $0xa,%al
 165:	0f 94 c2             	sete   %dl
 168:	3c 0d                	cmp    $0xd,%al
 16a:	0f 94 c0             	sete   %al
 16d:	08 c2                	or     %al,%dl
 16f:	74 ca                	je     0x13b
 171:	89 de                	mov    %ebx,%esi
 173:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 177:	89 f8                	mov    %edi,%eax
 179:	8d 65 f4             	lea    -0xc(%ebp),%esp
 17c:	5b                   	pop    %ebx
 17d:	5e                   	pop    %esi
 17e:	5f                   	pop    %edi
 17f:	5d                   	pop    %ebp
 180:	c3                   	ret    
 181:	f3 0f 1e fb          	endbr32 
 185:	55                   	push   %ebp
 186:	89 e5                	mov    %esp,%ebp
 188:	56                   	push   %esi
 189:	53                   	push   %ebx
 18a:	83 ec 08             	sub    $0x8,%esp
 18d:	6a 00                	push   $0x0
 18f:	ff 75 08             	push   0x8(%ebp)
 192:	e8 dc 00 00 00       	call   0x273
 197:	83 c4 10             	add    $0x10,%esp
 19a:	85 c0                	test   %eax,%eax
 19c:	78 24                	js     0x1c2
 19e:	89 c3                	mov    %eax,%ebx
 1a0:	83 ec 08             	sub    $0x8,%esp
 1a3:	ff 75 0c             	push   0xc(%ebp)
 1a6:	50                   	push   %eax
 1a7:	e8 df 00 00 00       	call   0x28b
 1ac:	89 c6                	mov    %eax,%esi
 1ae:	89 1c 24             	mov    %ebx,(%esp)
 1b1:	e8 a5 00 00 00       	call   0x25b
 1b6:	83 c4 10             	add    $0x10,%esp
 1b9:	89 f0                	mov    %esi,%eax
 1bb:	8d 65 f8             	lea    -0x8(%ebp),%esp
 1be:	5b                   	pop    %ebx
 1bf:	5e                   	pop    %esi
 1c0:	5d                   	pop    %ebp
 1c1:	c3                   	ret    
 1c2:	be ff ff ff ff       	mov    $0xffffffff,%esi
 1c7:	eb f0                	jmp    0x1b9
 1c9:	f3 0f 1e fb          	endbr32 
 1cd:	55                   	push   %ebp
 1ce:	89 e5                	mov    %esp,%ebp
 1d0:	53                   	push   %ebx
 1d1:	8b 4d 08             	mov    0x8(%ebp),%ecx
 1d4:	ba 00 00 00 00       	mov    $0x0,%edx
 1d9:	0f b6 01             	movzbl (%ecx),%eax
 1dc:	8d 58 d0             	lea    -0x30(%eax),%ebx
 1df:	80 fb 09             	cmp    $0x9,%bl
 1e2:	77 12                	ja     0x1f6
 1e4:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 1e7:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 1ea:	83 c1 01             	add    $0x1,%ecx
 1ed:	0f be c0             	movsbl %al,%eax
 1f0:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 1f4:	eb e3                	jmp    0x1d9
 1f6:	89 d0                	mov    %edx,%eax
 1f8:	5b                   	pop    %ebx
 1f9:	5d                   	pop    %ebp
 1fa:	c3                   	ret    
 1fb:	f3 0f 1e fb          	endbr32 
 1ff:	55                   	push   %ebp
 200:	89 e5                	mov    %esp,%ebp
 202:	56                   	push   %esi
 203:	53                   	push   %ebx
 204:	8b 75 08             	mov    0x8(%ebp),%esi
 207:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 20a:	8b 45 10             	mov    0x10(%ebp),%eax
 20d:	89 f2                	mov    %esi,%edx
 20f:	8d 58 ff             	lea    -0x1(%eax),%ebx
 212:	85 c0                	test   %eax,%eax
 214:	7e 0f                	jle    0x225
 216:	0f b6 01             	movzbl (%ecx),%eax
 219:	88 02                	mov    %al,(%edx)
 21b:	8d 49 01             	lea    0x1(%ecx),%ecx
 21e:	8d 52 01             	lea    0x1(%edx),%edx
 221:	89 d8                	mov    %ebx,%eax
 223:	eb ea                	jmp    0x20f
 225:	89 f0                	mov    %esi,%eax
 227:	5b                   	pop    %ebx
 228:	5e                   	pop    %esi
 229:	5d                   	pop    %ebp
 22a:	c3                   	ret    
 22b:	b8 01 00 00 00       	mov    $0x1,%eax
 230:	cd 40                	int    $0x40
 232:	c3                   	ret    
 233:	b8 02 00 00 00       	mov    $0x2,%eax
 238:	cd 40                	int    $0x40
 23a:	c3                   	ret    
 23b:	b8 03 00 00 00       	mov    $0x3,%eax
 240:	cd 40                	int    $0x40
 242:	c3                   	ret    
 243:	b8 04 00 00 00       	mov    $0x4,%eax
 248:	cd 40                	int    $0x40
 24a:	c3                   	ret    
 24b:	b8 05 00 00 00       	mov    $0x5,%eax
 250:	cd 40                	int    $0x40
 252:	c3                   	ret    
 253:	b8 10 00 00 00       	mov    $0x10,%eax
 258:	cd 40                	int    $0x40
 25a:	c3                   	ret    
 25b:	b8 15 00 00 00       	mov    $0x15,%eax
 260:	cd 40                	int    $0x40
 262:	c3                   	ret    
 263:	b8 06 00 00 00       	mov    $0x6,%eax
 268:	cd 40                	int    $0x40
 26a:	c3                   	ret    
 26b:	b8 07 00 00 00       	mov    $0x7,%eax
 270:	cd 40                	int    $0x40
 272:	c3                   	ret    
 273:	b8 0f 00 00 00       	mov    $0xf,%eax
 278:	cd 40                	int    $0x40
 27a:	c3                   	ret    
 27b:	b8 11 00 00 00       	mov    $0x11,%eax
 280:	cd 40                	int    $0x40
 282:	c3                   	ret    
 283:	b8 12 00 00 00       	mov    $0x12,%eax
 288:	cd 40                	int    $0x40
 28a:	c3                   	ret    
 28b:	b8 08 00 00 00       	mov    $0x8,%eax
 290:	cd 40                	int    $0x40
 292:	c3                   	ret    
 293:	b8 13 00 00 00       	mov    $0x13,%eax
 298:	cd 40                	int    $0x40
 29a:	c3                   	ret    
 29b:	b8 14 00 00 00       	mov    $0x14,%eax
 2a0:	cd 40                	int    $0x40
 2a2:	c3                   	ret    
 2a3:	b8 09 00 00 00       	mov    $0x9,%eax
 2a8:	cd 40                	int    $0x40
 2aa:	c3                   	ret    
 2ab:	b8 0a 00 00 00       	mov    $0xa,%eax
 2b0:	cd 40                	int    $0x40
 2b2:	c3                   	ret    
 2b3:	b8 0b 00 00 00       	mov    $0xb,%eax
 2b8:	cd 40                	int    $0x40
 2ba:	c3                   	ret    
 2bb:	b8 0c 00 00 00       	mov    $0xc,%eax
 2c0:	cd 40                	int    $0x40
 2c2:	c3                   	ret    
 2c3:	b8 0d 00 00 00       	mov    $0xd,%eax
 2c8:	cd 40                	int    $0x40
 2ca:	c3                   	ret    
 2cb:	b8 0e 00 00 00       	mov    $0xe,%eax
 2d0:	cd 40                	int    $0x40
 2d2:	c3                   	ret    
 2d3:	b8 16 00 00 00       	mov    $0x16,%eax
 2d8:	cd 40                	int    $0x40
 2da:	c3                   	ret    
 2db:	b8 17 00 00 00       	mov    $0x17,%eax
 2e0:	cd 40                	int    $0x40
 2e2:	c3                   	ret    
 2e3:	55                   	push   %ebp
 2e4:	89 e5                	mov    %esp,%ebp
 2e6:	83 ec 1c             	sub    $0x1c,%esp
 2e9:	88 55 f4             	mov    %dl,-0xc(%ebp)
 2ec:	6a 01                	push   $0x1
 2ee:	8d 55 f4             	lea    -0xc(%ebp),%edx
 2f1:	52                   	push   %edx
 2f2:	50                   	push   %eax
 2f3:	e8 5b ff ff ff       	call   0x253
 2f8:	83 c4 10             	add    $0x10,%esp
 2fb:	c9                   	leave  
 2fc:	c3                   	ret    
 2fd:	55                   	push   %ebp
 2fe:	89 e5                	mov    %esp,%ebp
 300:	57                   	push   %edi
 301:	56                   	push   %esi
 302:	53                   	push   %ebx
 303:	83 ec 2c             	sub    $0x2c,%esp
 306:	89 45 d0             	mov    %eax,-0x30(%ebp)
 309:	89 d0                	mov    %edx,%eax
 30b:	89 ce                	mov    %ecx,%esi
 30d:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 311:	0f 95 c1             	setne  %cl
 314:	c1 ea 1f             	shr    $0x1f,%edx
 317:	84 d1                	test   %dl,%cl
 319:	74 44                	je     0x35f
 31b:	f7 d8                	neg    %eax
 31d:	89 c1                	mov    %eax,%ecx
 31f:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 326:	bb 00 00 00 00       	mov    $0x0,%ebx
 32b:	89 c8                	mov    %ecx,%eax
 32d:	ba 00 00 00 00       	mov    $0x0,%edx
 332:	f7 f6                	div    %esi
 334:	89 df                	mov    %ebx,%edi
 336:	83 c3 01             	add    $0x1,%ebx
 339:	0f b6 92 e0 06 00 00 	movzbl 0x6e0(%edx),%edx
 340:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 344:	89 ca                	mov    %ecx,%edx
 346:	89 c1                	mov    %eax,%ecx
 348:	39 d6                	cmp    %edx,%esi
 34a:	76 df                	jbe    0x32b
 34c:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 350:	74 31                	je     0x383
 352:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 357:	8d 5f 02             	lea    0x2(%edi),%ebx
 35a:	8b 75 d0             	mov    -0x30(%ebp),%esi
 35d:	eb 17                	jmp    0x376
 35f:	89 c1                	mov    %eax,%ecx
 361:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 368:	eb bc                	jmp    0x326
 36a:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 36f:	89 f0                	mov    %esi,%eax
 371:	e8 6d ff ff ff       	call   0x2e3
 376:	83 eb 01             	sub    $0x1,%ebx
 379:	79 ef                	jns    0x36a
 37b:	83 c4 2c             	add    $0x2c,%esp
 37e:	5b                   	pop    %ebx
 37f:	5e                   	pop    %esi
 380:	5f                   	pop    %edi
 381:	5d                   	pop    %ebp
 382:	c3                   	ret    
 383:	8b 75 d0             	mov    -0x30(%ebp),%esi
 386:	eb ee                	jmp    0x376
 388:	55                   	push   %ebp
 389:	89 e5                	mov    %esp,%ebp
 38b:	57                   	push   %edi
 38c:	56                   	push   %esi
 38d:	53                   	push   %ebx
 38e:	83 ec 1c             	sub    $0x1c,%esp
 391:	8d 45 10             	lea    0x10(%ebp),%eax
 394:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 397:	be 00 00 00 00       	mov    $0x0,%esi
 39c:	bb 00 00 00 00       	mov    $0x0,%ebx
 3a1:	eb 14                	jmp    0x3b7
 3a3:	89 fa                	mov    %edi,%edx
 3a5:	8b 45 08             	mov    0x8(%ebp),%eax
 3a8:	e8 36 ff ff ff       	call   0x2e3
 3ad:	eb 05                	jmp    0x3b4
 3af:	83 fe 25             	cmp    $0x25,%esi
 3b2:	74 25                	je     0x3d9
 3b4:	83 c3 01             	add    $0x1,%ebx
 3b7:	8b 45 0c             	mov    0xc(%ebp),%eax
 3ba:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 3be:	84 c0                	test   %al,%al
 3c0:	0f 84 20 01 00 00    	je     0x4e6
 3c6:	0f be f8             	movsbl %al,%edi
 3c9:	0f b6 c0             	movzbl %al,%eax
 3cc:	85 f6                	test   %esi,%esi
 3ce:	75 df                	jne    0x3af
 3d0:	83 f8 25             	cmp    $0x25,%eax
 3d3:	75 ce                	jne    0x3a3
 3d5:	89 c6                	mov    %eax,%esi
 3d7:	eb db                	jmp    0x3b4
 3d9:	83 f8 25             	cmp    $0x25,%eax
 3dc:	0f 84 cf 00 00 00    	je     0x4b1
 3e2:	0f 8c dd 00 00 00    	jl     0x4c5
 3e8:	83 f8 78             	cmp    $0x78,%eax
 3eb:	0f 8f d4 00 00 00    	jg     0x4c5
 3f1:	83 f8 63             	cmp    $0x63,%eax
 3f4:	0f 8c cb 00 00 00    	jl     0x4c5
 3fa:	83 e8 63             	sub    $0x63,%eax
 3fd:	83 f8 15             	cmp    $0x15,%eax
 400:	0f 87 bf 00 00 00    	ja     0x4c5
 406:	ff 24 85 88 06 00 00 	jmp    *0x688(,%eax,4)
 40d:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 410:	8b 17                	mov    (%edi),%edx
 412:	83 ec 0c             	sub    $0xc,%esp
 415:	6a 01                	push   $0x1
 417:	b9 0a 00 00 00       	mov    $0xa,%ecx
 41c:	8b 45 08             	mov    0x8(%ebp),%eax
 41f:	e8 d9 fe ff ff       	call   0x2fd
 424:	83 c7 04             	add    $0x4,%edi
 427:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 42a:	83 c4 10             	add    $0x10,%esp
 42d:	be 00 00 00 00       	mov    $0x0,%esi
 432:	eb 80                	jmp    0x3b4
 434:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 437:	8b 17                	mov    (%edi),%edx
 439:	83 ec 0c             	sub    $0xc,%esp
 43c:	6a 00                	push   $0x0
 43e:	b9 10 00 00 00       	mov    $0x10,%ecx
 443:	8b 45 08             	mov    0x8(%ebp),%eax
 446:	e8 b2 fe ff ff       	call   0x2fd
 44b:	83 c7 04             	add    $0x4,%edi
 44e:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 451:	83 c4 10             	add    $0x10,%esp
 454:	be 00 00 00 00       	mov    $0x0,%esi
 459:	e9 56 ff ff ff       	jmp    0x3b4
 45e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 461:	8b 30                	mov    (%eax),%esi
 463:	83 c0 04             	add    $0x4,%eax
 466:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 469:	85 f6                	test   %esi,%esi
 46b:	75 15                	jne    0x482
 46d:	be 81 06 00 00       	mov    $0x681,%esi
 472:	eb 0e                	jmp    0x482
 474:	0f be d2             	movsbl %dl,%edx
 477:	8b 45 08             	mov    0x8(%ebp),%eax
 47a:	e8 64 fe ff ff       	call   0x2e3
 47f:	83 c6 01             	add    $0x1,%esi
 482:	0f b6 16             	movzbl (%esi),%edx
 485:	84 d2                	test   %dl,%dl
 487:	75 eb                	jne    0x474
 489:	be 00 00 00 00       	mov    $0x0,%esi
 48e:	e9 21 ff ff ff       	jmp    0x3b4
 493:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 496:	0f be 17             	movsbl (%edi),%edx
 499:	8b 45 08             	mov    0x8(%ebp),%eax
 49c:	e8 42 fe ff ff       	call   0x2e3
 4a1:	83 c7 04             	add    $0x4,%edi
 4a4:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 4a7:	be 00 00 00 00       	mov    $0x0,%esi
 4ac:	e9 03 ff ff ff       	jmp    0x3b4
 4b1:	89 fa                	mov    %edi,%edx
 4b3:	8b 45 08             	mov    0x8(%ebp),%eax
 4b6:	e8 28 fe ff ff       	call   0x2e3
 4bb:	be 00 00 00 00       	mov    $0x0,%esi
 4c0:	e9 ef fe ff ff       	jmp    0x3b4
 4c5:	ba 25 00 00 00       	mov    $0x25,%edx
 4ca:	8b 45 08             	mov    0x8(%ebp),%eax
 4cd:	e8 11 fe ff ff       	call   0x2e3
 4d2:	89 fa                	mov    %edi,%edx
 4d4:	8b 45 08             	mov    0x8(%ebp),%eax
 4d7:	e8 07 fe ff ff       	call   0x2e3
 4dc:	be 00 00 00 00       	mov    $0x0,%esi
 4e1:	e9 ce fe ff ff       	jmp    0x3b4
 4e6:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4e9:	5b                   	pop    %ebx
 4ea:	5e                   	pop    %esi
 4eb:	5f                   	pop    %edi
 4ec:	5d                   	pop    %ebp
 4ed:	c3                   	ret    
 4ee:	f3 0f 1e fb          	endbr32 
 4f2:	55                   	push   %ebp
 4f3:	89 e5                	mov    %esp,%ebp
 4f5:	57                   	push   %edi
 4f6:	56                   	push   %esi
 4f7:	53                   	push   %ebx
 4f8:	8b 5d 08             	mov    0x8(%ebp),%ebx
 4fb:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 4fe:	a1 88 09 00 00       	mov    0x988,%eax
 503:	eb 02                	jmp    0x507
 505:	89 d0                	mov    %edx,%eax
 507:	39 c8                	cmp    %ecx,%eax
 509:	73 04                	jae    0x50f
 50b:	39 08                	cmp    %ecx,(%eax)
 50d:	77 12                	ja     0x521
 50f:	8b 10                	mov    (%eax),%edx
 511:	39 c2                	cmp    %eax,%edx
 513:	77 f0                	ja     0x505
 515:	39 c8                	cmp    %ecx,%eax
 517:	72 08                	jb     0x521
 519:	39 ca                	cmp    %ecx,%edx
 51b:	77 04                	ja     0x521
 51d:	89 d0                	mov    %edx,%eax
 51f:	eb e6                	jmp    0x507
 521:	8b 73 fc             	mov    -0x4(%ebx),%esi
 524:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 527:	8b 10                	mov    (%eax),%edx
 529:	39 d7                	cmp    %edx,%edi
 52b:	74 19                	je     0x546
 52d:	89 53 f8             	mov    %edx,-0x8(%ebx)
 530:	8b 50 04             	mov    0x4(%eax),%edx
 533:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 536:	39 ce                	cmp    %ecx,%esi
 538:	74 1b                	je     0x555
 53a:	89 08                	mov    %ecx,(%eax)
 53c:	a3 88 09 00 00       	mov    %eax,0x988
 541:	5b                   	pop    %ebx
 542:	5e                   	pop    %esi
 543:	5f                   	pop    %edi
 544:	5d                   	pop    %ebp
 545:	c3                   	ret    
 546:	03 72 04             	add    0x4(%edx),%esi
 549:	89 73 fc             	mov    %esi,-0x4(%ebx)
 54c:	8b 10                	mov    (%eax),%edx
 54e:	8b 12                	mov    (%edx),%edx
 550:	89 53 f8             	mov    %edx,-0x8(%ebx)
 553:	eb db                	jmp    0x530
 555:	03 53 fc             	add    -0x4(%ebx),%edx
 558:	89 50 04             	mov    %edx,0x4(%eax)
 55b:	8b 53 f8             	mov    -0x8(%ebx),%edx
 55e:	89 10                	mov    %edx,(%eax)
 560:	eb da                	jmp    0x53c
 562:	55                   	push   %ebp
 563:	89 e5                	mov    %esp,%ebp
 565:	53                   	push   %ebx
 566:	83 ec 04             	sub    $0x4,%esp
 569:	89 c3                	mov    %eax,%ebx
 56b:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 570:	77 05                	ja     0x577
 572:	bb 00 10 00 00       	mov    $0x1000,%ebx
 577:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 57e:	83 ec 0c             	sub    $0xc,%esp
 581:	50                   	push   %eax
 582:	e8 34 fd ff ff       	call   0x2bb
 587:	83 c4 10             	add    $0x10,%esp
 58a:	83 f8 ff             	cmp    $0xffffffff,%eax
 58d:	74 1c                	je     0x5ab
 58f:	89 58 04             	mov    %ebx,0x4(%eax)
 592:	83 c0 08             	add    $0x8,%eax
 595:	83 ec 0c             	sub    $0xc,%esp
 598:	50                   	push   %eax
 599:	e8 50 ff ff ff       	call   0x4ee
 59e:	a1 88 09 00 00       	mov    0x988,%eax
 5a3:	83 c4 10             	add    $0x10,%esp
 5a6:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 5a9:	c9                   	leave  
 5aa:	c3                   	ret    
 5ab:	b8 00 00 00 00       	mov    $0x0,%eax
 5b0:	eb f4                	jmp    0x5a6
 5b2:	f3 0f 1e fb          	endbr32 
 5b6:	55                   	push   %ebp
 5b7:	89 e5                	mov    %esp,%ebp
 5b9:	53                   	push   %ebx
 5ba:	83 ec 04             	sub    $0x4,%esp
 5bd:	8b 45 08             	mov    0x8(%ebp),%eax
 5c0:	8d 58 07             	lea    0x7(%eax),%ebx
 5c3:	c1 eb 03             	shr    $0x3,%ebx
 5c6:	83 c3 01             	add    $0x1,%ebx
 5c9:	8b 0d 88 09 00 00    	mov    0x988,%ecx
 5cf:	85 c9                	test   %ecx,%ecx
 5d1:	74 04                	je     0x5d7
 5d3:	8b 01                	mov    (%ecx),%eax
 5d5:	eb 4b                	jmp    0x622
 5d7:	c7 05 88 09 00 00 8c 	movl   $0x98c,0x988
 5de:	09 00 00 
 5e1:	c7 05 8c 09 00 00 8c 	movl   $0x98c,0x98c
 5e8:	09 00 00 
 5eb:	c7 05 90 09 00 00 00 	movl   $0x0,0x990
 5f2:	00 00 00 
 5f5:	b9 8c 09 00 00       	mov    $0x98c,%ecx
 5fa:	eb d7                	jmp    0x5d3
 5fc:	74 1a                	je     0x618
 5fe:	29 da                	sub    %ebx,%edx
 600:	89 50 04             	mov    %edx,0x4(%eax)
 603:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 606:	89 58 04             	mov    %ebx,0x4(%eax)
 609:	89 0d 88 09 00 00    	mov    %ecx,0x988
 60f:	83 c0 08             	add    $0x8,%eax
 612:	83 c4 04             	add    $0x4,%esp
 615:	5b                   	pop    %ebx
 616:	5d                   	pop    %ebp
 617:	c3                   	ret    
 618:	8b 10                	mov    (%eax),%edx
 61a:	89 11                	mov    %edx,(%ecx)
 61c:	eb eb                	jmp    0x609
 61e:	89 c1                	mov    %eax,%ecx
 620:	8b 00                	mov    (%eax),%eax
 622:	8b 50 04             	mov    0x4(%eax),%edx
 625:	39 da                	cmp    %ebx,%edx
 627:	73 d3                	jae    0x5fc
 629:	39 05 88 09 00 00    	cmp    %eax,0x988
 62f:	75 ed                	jne    0x61e
 631:	89 d8                	mov    %ebx,%eax
 633:	e8 2a ff ff ff       	call   0x562
 638:	85 c0                	test   %eax,%eax
 63a:	75 e2                	jne    0x61e
 63c:	eb d4                	jmp    0x612
