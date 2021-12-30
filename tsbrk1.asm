
_tsbrk1:     file format elf32-i386


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
  14:	83 ec 18             	sub    $0x18,%esp
  17:	68 98 3a 00 00       	push   $0x3a98
  1c:	e8 0c 03 00 00       	call   0x32d
  21:	89 c3                	mov    %eax,%ebx
  23:	c6 80 f4 01 00 00 01 	movb   $0x1,0x1f4(%eax)
  2a:	8d b0 98 3a 00 00    	lea    0x3a98(%eax),%esi
  30:	c7 04 24 68 c5 ff ff 	movl   $0xffffc568,(%esp)
  37:	e8 f1 02 00 00       	call   0x32d
  3c:	83 c4 10             	add    $0x10,%esp
  3f:	39 c6                	cmp    %eax,%esi
  41:	74 1b                	je     0x5e
  43:	83 ec 08             	sub    $0x8,%esp
  46:	68 b0 06 00 00       	push   $0x6b0
  4b:	6a 01                	push   $0x1
  4d:	e8 a8 03 00 00       	call   0x3fa
  52:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  59:	e8 47 02 00 00       	call   0x2a5
  5e:	83 ec 0c             	sub    $0xc,%esp
  61:	6a 00                	push   $0x0
  63:	e8 c5 02 00 00       	call   0x32d
  68:	83 c4 10             	add    $0x10,%esp
  6b:	39 c3                	cmp    %eax,%ebx
  6d:	74 1b                	je     0x8a
  6f:	83 ec 08             	sub    $0x8,%esp
  72:	68 d5 06 00 00       	push   $0x6d5
  77:	6a 01                	push   $0x1
  79:	e8 7c 03 00 00       	call   0x3fa
  7e:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
  85:	e8 1b 02 00 00       	call   0x2a5
  8a:	83 ec 0c             	sub    $0xc,%esp
  8d:	68 98 3a 00 00       	push   $0x3a98
  92:	e8 96 02 00 00       	call   0x32d
  97:	83 c4 10             	add    $0x10,%esp
  9a:	39 c3                	cmp    %eax,%ebx
  9c:	74 1b                	je     0xb9
  9e:	83 ec 08             	sub    $0x8,%esp
  a1:	68 ee 06 00 00       	push   $0x6ee
  a6:	6a 01                	push   $0x1
  a8:	e8 4d 03 00 00       	call   0x3fa
  ad:	c7 04 24 03 00 00 00 	movl   $0x3,(%esp)
  b4:	e8 ec 01 00 00       	call   0x2a5
  b9:	0f b6 83 f4 01 00 00 	movzbl 0x1f4(%ebx),%eax
  c0:	83 c0 01             	add    $0x1,%eax
  c3:	88 83 f4 01 00 00    	mov    %al,0x1f4(%ebx)
  c9:	83 ec 04             	sub    $0x4,%esp
  cc:	0f be c0             	movsbl %al,%eax
  cf:	50                   	push   %eax
  d0:	68 07 07 00 00       	push   $0x707
  d5:	6a 01                	push   $0x1
  d7:	e8 1e 03 00 00       	call   0x3fa
  dc:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  e3:	e8 bd 01 00 00       	call   0x2a5
  e8:	f3 0f 1e fb          	endbr32 
  ec:	55                   	push   %ebp
  ed:	89 e5                	mov    %esp,%ebp
  ef:	56                   	push   %esi
  f0:	53                   	push   %ebx
  f1:	8b 75 08             	mov    0x8(%ebp),%esi
  f4:	8b 55 0c             	mov    0xc(%ebp),%edx
  f7:	89 f0                	mov    %esi,%eax
  f9:	89 d1                	mov    %edx,%ecx
  fb:	83 c2 01             	add    $0x1,%edx
  fe:	89 c3                	mov    %eax,%ebx
 100:	83 c0 01             	add    $0x1,%eax
 103:	0f b6 09             	movzbl (%ecx),%ecx
 106:	88 0b                	mov    %cl,(%ebx)
 108:	84 c9                	test   %cl,%cl
 10a:	75 ed                	jne    0xf9
 10c:	89 f0                	mov    %esi,%eax
 10e:	5b                   	pop    %ebx
 10f:	5e                   	pop    %esi
 110:	5d                   	pop    %ebp
 111:	c3                   	ret    
 112:	f3 0f 1e fb          	endbr32 
 116:	55                   	push   %ebp
 117:	89 e5                	mov    %esp,%ebp
 119:	8b 4d 08             	mov    0x8(%ebp),%ecx
 11c:	8b 55 0c             	mov    0xc(%ebp),%edx
 11f:	0f b6 01             	movzbl (%ecx),%eax
 122:	84 c0                	test   %al,%al
 124:	74 0c                	je     0x132
 126:	3a 02                	cmp    (%edx),%al
 128:	75 08                	jne    0x132
 12a:	83 c1 01             	add    $0x1,%ecx
 12d:	83 c2 01             	add    $0x1,%edx
 130:	eb ed                	jmp    0x11f
 132:	0f b6 c0             	movzbl %al,%eax
 135:	0f b6 12             	movzbl (%edx),%edx
 138:	29 d0                	sub    %edx,%eax
 13a:	5d                   	pop    %ebp
 13b:	c3                   	ret    
 13c:	f3 0f 1e fb          	endbr32 
 140:	55                   	push   %ebp
 141:	89 e5                	mov    %esp,%ebp
 143:	8b 4d 08             	mov    0x8(%ebp),%ecx
 146:	b8 00 00 00 00       	mov    $0x0,%eax
 14b:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
 14f:	74 05                	je     0x156
 151:	83 c0 01             	add    $0x1,%eax
 154:	eb f5                	jmp    0x14b
 156:	5d                   	pop    %ebp
 157:	c3                   	ret    
 158:	f3 0f 1e fb          	endbr32 
 15c:	55                   	push   %ebp
 15d:	89 e5                	mov    %esp,%ebp
 15f:	57                   	push   %edi
 160:	8b 55 08             	mov    0x8(%ebp),%edx
 163:	89 d7                	mov    %edx,%edi
 165:	8b 4d 10             	mov    0x10(%ebp),%ecx
 168:	8b 45 0c             	mov    0xc(%ebp),%eax
 16b:	fc                   	cld    
 16c:	f3 aa                	rep stos %al,%es:(%edi)
 16e:	89 d0                	mov    %edx,%eax
 170:	5f                   	pop    %edi
 171:	5d                   	pop    %ebp
 172:	c3                   	ret    
 173:	f3 0f 1e fb          	endbr32 
 177:	55                   	push   %ebp
 178:	89 e5                	mov    %esp,%ebp
 17a:	8b 45 08             	mov    0x8(%ebp),%eax
 17d:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
 181:	0f b6 10             	movzbl (%eax),%edx
 184:	84 d2                	test   %dl,%dl
 186:	74 09                	je     0x191
 188:	38 ca                	cmp    %cl,%dl
 18a:	74 0a                	je     0x196
 18c:	83 c0 01             	add    $0x1,%eax
 18f:	eb f0                	jmp    0x181
 191:	b8 00 00 00 00       	mov    $0x0,%eax
 196:	5d                   	pop    %ebp
 197:	c3                   	ret    
 198:	f3 0f 1e fb          	endbr32 
 19c:	55                   	push   %ebp
 19d:	89 e5                	mov    %esp,%ebp
 19f:	57                   	push   %edi
 1a0:	56                   	push   %esi
 1a1:	53                   	push   %ebx
 1a2:	83 ec 1c             	sub    $0x1c,%esp
 1a5:	8b 7d 08             	mov    0x8(%ebp),%edi
 1a8:	bb 00 00 00 00       	mov    $0x0,%ebx
 1ad:	89 de                	mov    %ebx,%esi
 1af:	83 c3 01             	add    $0x1,%ebx
 1b2:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 1b5:	7d 2e                	jge    0x1e5
 1b7:	83 ec 04             	sub    $0x4,%esp
 1ba:	6a 01                	push   $0x1
 1bc:	8d 45 e7             	lea    -0x19(%ebp),%eax
 1bf:	50                   	push   %eax
 1c0:	6a 00                	push   $0x0
 1c2:	e8 f6 00 00 00       	call   0x2bd
 1c7:	83 c4 10             	add    $0x10,%esp
 1ca:	85 c0                	test   %eax,%eax
 1cc:	7e 17                	jle    0x1e5
 1ce:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 1d2:	88 04 37             	mov    %al,(%edi,%esi,1)
 1d5:	3c 0a                	cmp    $0xa,%al
 1d7:	0f 94 c2             	sete   %dl
 1da:	3c 0d                	cmp    $0xd,%al
 1dc:	0f 94 c0             	sete   %al
 1df:	08 c2                	or     %al,%dl
 1e1:	74 ca                	je     0x1ad
 1e3:	89 de                	mov    %ebx,%esi
 1e5:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 1e9:	89 f8                	mov    %edi,%eax
 1eb:	8d 65 f4             	lea    -0xc(%ebp),%esp
 1ee:	5b                   	pop    %ebx
 1ef:	5e                   	pop    %esi
 1f0:	5f                   	pop    %edi
 1f1:	5d                   	pop    %ebp
 1f2:	c3                   	ret    
 1f3:	f3 0f 1e fb          	endbr32 
 1f7:	55                   	push   %ebp
 1f8:	89 e5                	mov    %esp,%ebp
 1fa:	56                   	push   %esi
 1fb:	53                   	push   %ebx
 1fc:	83 ec 08             	sub    $0x8,%esp
 1ff:	6a 00                	push   $0x0
 201:	ff 75 08             	push   0x8(%ebp)
 204:	e8 dc 00 00 00       	call   0x2e5
 209:	83 c4 10             	add    $0x10,%esp
 20c:	85 c0                	test   %eax,%eax
 20e:	78 24                	js     0x234
 210:	89 c3                	mov    %eax,%ebx
 212:	83 ec 08             	sub    $0x8,%esp
 215:	ff 75 0c             	push   0xc(%ebp)
 218:	50                   	push   %eax
 219:	e8 df 00 00 00       	call   0x2fd
 21e:	89 c6                	mov    %eax,%esi
 220:	89 1c 24             	mov    %ebx,(%esp)
 223:	e8 a5 00 00 00       	call   0x2cd
 228:	83 c4 10             	add    $0x10,%esp
 22b:	89 f0                	mov    %esi,%eax
 22d:	8d 65 f8             	lea    -0x8(%ebp),%esp
 230:	5b                   	pop    %ebx
 231:	5e                   	pop    %esi
 232:	5d                   	pop    %ebp
 233:	c3                   	ret    
 234:	be ff ff ff ff       	mov    $0xffffffff,%esi
 239:	eb f0                	jmp    0x22b
 23b:	f3 0f 1e fb          	endbr32 
 23f:	55                   	push   %ebp
 240:	89 e5                	mov    %esp,%ebp
 242:	53                   	push   %ebx
 243:	8b 4d 08             	mov    0x8(%ebp),%ecx
 246:	ba 00 00 00 00       	mov    $0x0,%edx
 24b:	0f b6 01             	movzbl (%ecx),%eax
 24e:	8d 58 d0             	lea    -0x30(%eax),%ebx
 251:	80 fb 09             	cmp    $0x9,%bl
 254:	77 12                	ja     0x268
 256:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 259:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 25c:	83 c1 01             	add    $0x1,%ecx
 25f:	0f be c0             	movsbl %al,%eax
 262:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 266:	eb e3                	jmp    0x24b
 268:	89 d0                	mov    %edx,%eax
 26a:	5b                   	pop    %ebx
 26b:	5d                   	pop    %ebp
 26c:	c3                   	ret    
 26d:	f3 0f 1e fb          	endbr32 
 271:	55                   	push   %ebp
 272:	89 e5                	mov    %esp,%ebp
 274:	56                   	push   %esi
 275:	53                   	push   %ebx
 276:	8b 75 08             	mov    0x8(%ebp),%esi
 279:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 27c:	8b 45 10             	mov    0x10(%ebp),%eax
 27f:	89 f2                	mov    %esi,%edx
 281:	8d 58 ff             	lea    -0x1(%eax),%ebx
 284:	85 c0                	test   %eax,%eax
 286:	7e 0f                	jle    0x297
 288:	0f b6 01             	movzbl (%ecx),%eax
 28b:	88 02                	mov    %al,(%edx)
 28d:	8d 49 01             	lea    0x1(%ecx),%ecx
 290:	8d 52 01             	lea    0x1(%edx),%edx
 293:	89 d8                	mov    %ebx,%eax
 295:	eb ea                	jmp    0x281
 297:	89 f0                	mov    %esi,%eax
 299:	5b                   	pop    %ebx
 29a:	5e                   	pop    %esi
 29b:	5d                   	pop    %ebp
 29c:	c3                   	ret    
 29d:	b8 01 00 00 00       	mov    $0x1,%eax
 2a2:	cd 40                	int    $0x40
 2a4:	c3                   	ret    
 2a5:	b8 02 00 00 00       	mov    $0x2,%eax
 2aa:	cd 40                	int    $0x40
 2ac:	c3                   	ret    
 2ad:	b8 03 00 00 00       	mov    $0x3,%eax
 2b2:	cd 40                	int    $0x40
 2b4:	c3                   	ret    
 2b5:	b8 04 00 00 00       	mov    $0x4,%eax
 2ba:	cd 40                	int    $0x40
 2bc:	c3                   	ret    
 2bd:	b8 05 00 00 00       	mov    $0x5,%eax
 2c2:	cd 40                	int    $0x40
 2c4:	c3                   	ret    
 2c5:	b8 10 00 00 00       	mov    $0x10,%eax
 2ca:	cd 40                	int    $0x40
 2cc:	c3                   	ret    
 2cd:	b8 15 00 00 00       	mov    $0x15,%eax
 2d2:	cd 40                	int    $0x40
 2d4:	c3                   	ret    
 2d5:	b8 06 00 00 00       	mov    $0x6,%eax
 2da:	cd 40                	int    $0x40
 2dc:	c3                   	ret    
 2dd:	b8 07 00 00 00       	mov    $0x7,%eax
 2e2:	cd 40                	int    $0x40
 2e4:	c3                   	ret    
 2e5:	b8 0f 00 00 00       	mov    $0xf,%eax
 2ea:	cd 40                	int    $0x40
 2ec:	c3                   	ret    
 2ed:	b8 11 00 00 00       	mov    $0x11,%eax
 2f2:	cd 40                	int    $0x40
 2f4:	c3                   	ret    
 2f5:	b8 12 00 00 00       	mov    $0x12,%eax
 2fa:	cd 40                	int    $0x40
 2fc:	c3                   	ret    
 2fd:	b8 08 00 00 00       	mov    $0x8,%eax
 302:	cd 40                	int    $0x40
 304:	c3                   	ret    
 305:	b8 13 00 00 00       	mov    $0x13,%eax
 30a:	cd 40                	int    $0x40
 30c:	c3                   	ret    
 30d:	b8 14 00 00 00       	mov    $0x14,%eax
 312:	cd 40                	int    $0x40
 314:	c3                   	ret    
 315:	b8 09 00 00 00       	mov    $0x9,%eax
 31a:	cd 40                	int    $0x40
 31c:	c3                   	ret    
 31d:	b8 0a 00 00 00       	mov    $0xa,%eax
 322:	cd 40                	int    $0x40
 324:	c3                   	ret    
 325:	b8 0b 00 00 00       	mov    $0xb,%eax
 32a:	cd 40                	int    $0x40
 32c:	c3                   	ret    
 32d:	b8 0c 00 00 00       	mov    $0xc,%eax
 332:	cd 40                	int    $0x40
 334:	c3                   	ret    
 335:	b8 0d 00 00 00       	mov    $0xd,%eax
 33a:	cd 40                	int    $0x40
 33c:	c3                   	ret    
 33d:	b8 0e 00 00 00       	mov    $0xe,%eax
 342:	cd 40                	int    $0x40
 344:	c3                   	ret    
 345:	b8 16 00 00 00       	mov    $0x16,%eax
 34a:	cd 40                	int    $0x40
 34c:	c3                   	ret    
 34d:	b8 17 00 00 00       	mov    $0x17,%eax
 352:	cd 40                	int    $0x40
 354:	c3                   	ret    
 355:	55                   	push   %ebp
 356:	89 e5                	mov    %esp,%ebp
 358:	83 ec 1c             	sub    $0x1c,%esp
 35b:	88 55 f4             	mov    %dl,-0xc(%ebp)
 35e:	6a 01                	push   $0x1
 360:	8d 55 f4             	lea    -0xc(%ebp),%edx
 363:	52                   	push   %edx
 364:	50                   	push   %eax
 365:	e8 5b ff ff ff       	call   0x2c5
 36a:	83 c4 10             	add    $0x10,%esp
 36d:	c9                   	leave  
 36e:	c3                   	ret    
 36f:	55                   	push   %ebp
 370:	89 e5                	mov    %esp,%ebp
 372:	57                   	push   %edi
 373:	56                   	push   %esi
 374:	53                   	push   %ebx
 375:	83 ec 2c             	sub    $0x2c,%esp
 378:	89 45 d0             	mov    %eax,-0x30(%ebp)
 37b:	89 d0                	mov    %edx,%eax
 37d:	89 ce                	mov    %ecx,%esi
 37f:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 383:	0f 95 c1             	setne  %cl
 386:	c1 ea 1f             	shr    $0x1f,%edx
 389:	84 d1                	test   %dl,%cl
 38b:	74 44                	je     0x3d1
 38d:	f7 d8                	neg    %eax
 38f:	89 c1                	mov    %eax,%ecx
 391:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 398:	bb 00 00 00 00       	mov    $0x0,%ebx
 39d:	89 c8                	mov    %ecx,%eax
 39f:	ba 00 00 00 00       	mov    $0x0,%edx
 3a4:	f7 f6                	div    %esi
 3a6:	89 df                	mov    %ebx,%edi
 3a8:	83 c3 01             	add    $0x1,%ebx
 3ab:	0f b6 92 7c 07 00 00 	movzbl 0x77c(%edx),%edx
 3b2:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 3b6:	89 ca                	mov    %ecx,%edx
 3b8:	89 c1                	mov    %eax,%ecx
 3ba:	39 d6                	cmp    %edx,%esi
 3bc:	76 df                	jbe    0x39d
 3be:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 3c2:	74 31                	je     0x3f5
 3c4:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 3c9:	8d 5f 02             	lea    0x2(%edi),%ebx
 3cc:	8b 75 d0             	mov    -0x30(%ebp),%esi
 3cf:	eb 17                	jmp    0x3e8
 3d1:	89 c1                	mov    %eax,%ecx
 3d3:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 3da:	eb bc                	jmp    0x398
 3dc:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 3e1:	89 f0                	mov    %esi,%eax
 3e3:	e8 6d ff ff ff       	call   0x355
 3e8:	83 eb 01             	sub    $0x1,%ebx
 3eb:	79 ef                	jns    0x3dc
 3ed:	83 c4 2c             	add    $0x2c,%esp
 3f0:	5b                   	pop    %ebx
 3f1:	5e                   	pop    %esi
 3f2:	5f                   	pop    %edi
 3f3:	5d                   	pop    %ebp
 3f4:	c3                   	ret    
 3f5:	8b 75 d0             	mov    -0x30(%ebp),%esi
 3f8:	eb ee                	jmp    0x3e8
 3fa:	55                   	push   %ebp
 3fb:	89 e5                	mov    %esp,%ebp
 3fd:	57                   	push   %edi
 3fe:	56                   	push   %esi
 3ff:	53                   	push   %ebx
 400:	83 ec 1c             	sub    $0x1c,%esp
 403:	8d 45 10             	lea    0x10(%ebp),%eax
 406:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 409:	be 00 00 00 00       	mov    $0x0,%esi
 40e:	bb 00 00 00 00       	mov    $0x0,%ebx
 413:	eb 14                	jmp    0x429
 415:	89 fa                	mov    %edi,%edx
 417:	8b 45 08             	mov    0x8(%ebp),%eax
 41a:	e8 36 ff ff ff       	call   0x355
 41f:	eb 05                	jmp    0x426
 421:	83 fe 25             	cmp    $0x25,%esi
 424:	74 25                	je     0x44b
 426:	83 c3 01             	add    $0x1,%ebx
 429:	8b 45 0c             	mov    0xc(%ebp),%eax
 42c:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 430:	84 c0                	test   %al,%al
 432:	0f 84 20 01 00 00    	je     0x558
 438:	0f be f8             	movsbl %al,%edi
 43b:	0f b6 c0             	movzbl %al,%eax
 43e:	85 f6                	test   %esi,%esi
 440:	75 df                	jne    0x421
 442:	83 f8 25             	cmp    $0x25,%eax
 445:	75 ce                	jne    0x415
 447:	89 c6                	mov    %eax,%esi
 449:	eb db                	jmp    0x426
 44b:	83 f8 25             	cmp    $0x25,%eax
 44e:	0f 84 cf 00 00 00    	je     0x523
 454:	0f 8c dd 00 00 00    	jl     0x537
 45a:	83 f8 78             	cmp    $0x78,%eax
 45d:	0f 8f d4 00 00 00    	jg     0x537
 463:	83 f8 63             	cmp    $0x63,%eax
 466:	0f 8c cb 00 00 00    	jl     0x537
 46c:	83 e8 63             	sub    $0x63,%eax
 46f:	83 f8 15             	cmp    $0x15,%eax
 472:	0f 87 bf 00 00 00    	ja     0x537
 478:	ff 24 85 24 07 00 00 	jmp    *0x724(,%eax,4)
 47f:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 482:	8b 17                	mov    (%edi),%edx
 484:	83 ec 0c             	sub    $0xc,%esp
 487:	6a 01                	push   $0x1
 489:	b9 0a 00 00 00       	mov    $0xa,%ecx
 48e:	8b 45 08             	mov    0x8(%ebp),%eax
 491:	e8 d9 fe ff ff       	call   0x36f
 496:	83 c7 04             	add    $0x4,%edi
 499:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 49c:	83 c4 10             	add    $0x10,%esp
 49f:	be 00 00 00 00       	mov    $0x0,%esi
 4a4:	eb 80                	jmp    0x426
 4a6:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 4a9:	8b 17                	mov    (%edi),%edx
 4ab:	83 ec 0c             	sub    $0xc,%esp
 4ae:	6a 00                	push   $0x0
 4b0:	b9 10 00 00 00       	mov    $0x10,%ecx
 4b5:	8b 45 08             	mov    0x8(%ebp),%eax
 4b8:	e8 b2 fe ff ff       	call   0x36f
 4bd:	83 c7 04             	add    $0x4,%edi
 4c0:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 4c3:	83 c4 10             	add    $0x10,%esp
 4c6:	be 00 00 00 00       	mov    $0x0,%esi
 4cb:	e9 56 ff ff ff       	jmp    0x426
 4d0:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 4d3:	8b 30                	mov    (%eax),%esi
 4d5:	83 c0 04             	add    $0x4,%eax
 4d8:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 4db:	85 f6                	test   %esi,%esi
 4dd:	75 15                	jne    0x4f4
 4df:	be 1d 07 00 00       	mov    $0x71d,%esi
 4e4:	eb 0e                	jmp    0x4f4
 4e6:	0f be d2             	movsbl %dl,%edx
 4e9:	8b 45 08             	mov    0x8(%ebp),%eax
 4ec:	e8 64 fe ff ff       	call   0x355
 4f1:	83 c6 01             	add    $0x1,%esi
 4f4:	0f b6 16             	movzbl (%esi),%edx
 4f7:	84 d2                	test   %dl,%dl
 4f9:	75 eb                	jne    0x4e6
 4fb:	be 00 00 00 00       	mov    $0x0,%esi
 500:	e9 21 ff ff ff       	jmp    0x426
 505:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 508:	0f be 17             	movsbl (%edi),%edx
 50b:	8b 45 08             	mov    0x8(%ebp),%eax
 50e:	e8 42 fe ff ff       	call   0x355
 513:	83 c7 04             	add    $0x4,%edi
 516:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 519:	be 00 00 00 00       	mov    $0x0,%esi
 51e:	e9 03 ff ff ff       	jmp    0x426
 523:	89 fa                	mov    %edi,%edx
 525:	8b 45 08             	mov    0x8(%ebp),%eax
 528:	e8 28 fe ff ff       	call   0x355
 52d:	be 00 00 00 00       	mov    $0x0,%esi
 532:	e9 ef fe ff ff       	jmp    0x426
 537:	ba 25 00 00 00       	mov    $0x25,%edx
 53c:	8b 45 08             	mov    0x8(%ebp),%eax
 53f:	e8 11 fe ff ff       	call   0x355
 544:	89 fa                	mov    %edi,%edx
 546:	8b 45 08             	mov    0x8(%ebp),%eax
 549:	e8 07 fe ff ff       	call   0x355
 54e:	be 00 00 00 00       	mov    $0x0,%esi
 553:	e9 ce fe ff ff       	jmp    0x426
 558:	8d 65 f4             	lea    -0xc(%ebp),%esp
 55b:	5b                   	pop    %ebx
 55c:	5e                   	pop    %esi
 55d:	5f                   	pop    %edi
 55e:	5d                   	pop    %ebp
 55f:	c3                   	ret    
 560:	f3 0f 1e fb          	endbr32 
 564:	55                   	push   %ebp
 565:	89 e5                	mov    %esp,%ebp
 567:	57                   	push   %edi
 568:	56                   	push   %esi
 569:	53                   	push   %ebx
 56a:	8b 5d 08             	mov    0x8(%ebp),%ebx
 56d:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 570:	a1 24 0a 00 00       	mov    0xa24,%eax
 575:	eb 02                	jmp    0x579
 577:	89 d0                	mov    %edx,%eax
 579:	39 c8                	cmp    %ecx,%eax
 57b:	73 04                	jae    0x581
 57d:	39 08                	cmp    %ecx,(%eax)
 57f:	77 12                	ja     0x593
 581:	8b 10                	mov    (%eax),%edx
 583:	39 c2                	cmp    %eax,%edx
 585:	77 f0                	ja     0x577
 587:	39 c8                	cmp    %ecx,%eax
 589:	72 08                	jb     0x593
 58b:	39 ca                	cmp    %ecx,%edx
 58d:	77 04                	ja     0x593
 58f:	89 d0                	mov    %edx,%eax
 591:	eb e6                	jmp    0x579
 593:	8b 73 fc             	mov    -0x4(%ebx),%esi
 596:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 599:	8b 10                	mov    (%eax),%edx
 59b:	39 d7                	cmp    %edx,%edi
 59d:	74 19                	je     0x5b8
 59f:	89 53 f8             	mov    %edx,-0x8(%ebx)
 5a2:	8b 50 04             	mov    0x4(%eax),%edx
 5a5:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 5a8:	39 ce                	cmp    %ecx,%esi
 5aa:	74 1b                	je     0x5c7
 5ac:	89 08                	mov    %ecx,(%eax)
 5ae:	a3 24 0a 00 00       	mov    %eax,0xa24
 5b3:	5b                   	pop    %ebx
 5b4:	5e                   	pop    %esi
 5b5:	5f                   	pop    %edi
 5b6:	5d                   	pop    %ebp
 5b7:	c3                   	ret    
 5b8:	03 72 04             	add    0x4(%edx),%esi
 5bb:	89 73 fc             	mov    %esi,-0x4(%ebx)
 5be:	8b 10                	mov    (%eax),%edx
 5c0:	8b 12                	mov    (%edx),%edx
 5c2:	89 53 f8             	mov    %edx,-0x8(%ebx)
 5c5:	eb db                	jmp    0x5a2
 5c7:	03 53 fc             	add    -0x4(%ebx),%edx
 5ca:	89 50 04             	mov    %edx,0x4(%eax)
 5cd:	8b 53 f8             	mov    -0x8(%ebx),%edx
 5d0:	89 10                	mov    %edx,(%eax)
 5d2:	eb da                	jmp    0x5ae
 5d4:	55                   	push   %ebp
 5d5:	89 e5                	mov    %esp,%ebp
 5d7:	53                   	push   %ebx
 5d8:	83 ec 04             	sub    $0x4,%esp
 5db:	89 c3                	mov    %eax,%ebx
 5dd:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 5e2:	77 05                	ja     0x5e9
 5e4:	bb 00 10 00 00       	mov    $0x1000,%ebx
 5e9:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 5f0:	83 ec 0c             	sub    $0xc,%esp
 5f3:	50                   	push   %eax
 5f4:	e8 34 fd ff ff       	call   0x32d
 5f9:	83 c4 10             	add    $0x10,%esp
 5fc:	83 f8 ff             	cmp    $0xffffffff,%eax
 5ff:	74 1c                	je     0x61d
 601:	89 58 04             	mov    %ebx,0x4(%eax)
 604:	83 c0 08             	add    $0x8,%eax
 607:	83 ec 0c             	sub    $0xc,%esp
 60a:	50                   	push   %eax
 60b:	e8 50 ff ff ff       	call   0x560
 610:	a1 24 0a 00 00       	mov    0xa24,%eax
 615:	83 c4 10             	add    $0x10,%esp
 618:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 61b:	c9                   	leave  
 61c:	c3                   	ret    
 61d:	b8 00 00 00 00       	mov    $0x0,%eax
 622:	eb f4                	jmp    0x618
 624:	f3 0f 1e fb          	endbr32 
 628:	55                   	push   %ebp
 629:	89 e5                	mov    %esp,%ebp
 62b:	53                   	push   %ebx
 62c:	83 ec 04             	sub    $0x4,%esp
 62f:	8b 45 08             	mov    0x8(%ebp),%eax
 632:	8d 58 07             	lea    0x7(%eax),%ebx
 635:	c1 eb 03             	shr    $0x3,%ebx
 638:	83 c3 01             	add    $0x1,%ebx
 63b:	8b 0d 24 0a 00 00    	mov    0xa24,%ecx
 641:	85 c9                	test   %ecx,%ecx
 643:	74 04                	je     0x649
 645:	8b 01                	mov    (%ecx),%eax
 647:	eb 4b                	jmp    0x694
 649:	c7 05 24 0a 00 00 28 	movl   $0xa28,0xa24
 650:	0a 00 00 
 653:	c7 05 28 0a 00 00 28 	movl   $0xa28,0xa28
 65a:	0a 00 00 
 65d:	c7 05 2c 0a 00 00 00 	movl   $0x0,0xa2c
 664:	00 00 00 
 667:	b9 28 0a 00 00       	mov    $0xa28,%ecx
 66c:	eb d7                	jmp    0x645
 66e:	74 1a                	je     0x68a
 670:	29 da                	sub    %ebx,%edx
 672:	89 50 04             	mov    %edx,0x4(%eax)
 675:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 678:	89 58 04             	mov    %ebx,0x4(%eax)
 67b:	89 0d 24 0a 00 00    	mov    %ecx,0xa24
 681:	83 c0 08             	add    $0x8,%eax
 684:	83 c4 04             	add    $0x4,%esp
 687:	5b                   	pop    %ebx
 688:	5d                   	pop    %ebp
 689:	c3                   	ret    
 68a:	8b 10                	mov    (%eax),%edx
 68c:	89 11                	mov    %edx,(%ecx)
 68e:	eb eb                	jmp    0x67b
 690:	89 c1                	mov    %eax,%ecx
 692:	8b 00                	mov    (%eax),%eax
 694:	8b 50 04             	mov    0x4(%eax),%edx
 697:	39 da                	cmp    %ebx,%edx
 699:	73 d3                	jae    0x66e
 69b:	39 05 24 0a 00 00    	cmp    %eax,0xa24
 6a1:	75 ed                	jne    0x690
 6a3:	89 d8                	mov    %ebx,%eax
 6a5:	e8 2a ff ff ff       	call   0x5d4
 6aa:	85 c0                	test   %eax,%eax
 6ac:	75 e2                	jne    0x690
 6ae:	eb d4                	jmp    0x684
