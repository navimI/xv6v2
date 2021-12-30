
_stressfs:     file format elf32-i386


Disassembly of section .text:

00000000 <.text>:
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	push   -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	56                   	push   %esi
   e:	53                   	push   %ebx
   f:	51                   	push   %ecx
  10:	81 ec 24 02 00 00    	sub    $0x224,%esp
  16:	c7 45 de 73 74 72 65 	movl   $0x65727473,-0x22(%ebp)
  1d:	c7 45 e2 73 73 66 73 	movl   $0x73667373,-0x1e(%ebp)
  24:	66 c7 45 e6 30 00    	movw   $0x30,-0x1a(%ebp)
  2a:	68 f4 06 00 00       	push   $0x6f4
  2f:	6a 01                	push   $0x1
  31:	e8 06 04 00 00       	call   0x43c
  36:	83 c4 0c             	add    $0xc,%esp
  39:	68 00 02 00 00       	push   $0x200
  3e:	6a 61                	push   $0x61
  40:	8d 85 de fd ff ff    	lea    -0x222(%ebp),%eax
  46:	50                   	push   %eax
  47:	e8 4e 01 00 00       	call   0x19a
  4c:	83 c4 10             	add    $0x10,%esp
  4f:	bb 00 00 00 00       	mov    $0x0,%ebx
  54:	83 fb 03             	cmp    $0x3,%ebx
  57:	7f 0e                	jg     0x67
  59:	e8 81 02 00 00       	call   0x2df
  5e:	85 c0                	test   %eax,%eax
  60:	7f 05                	jg     0x67
  62:	83 c3 01             	add    $0x1,%ebx
  65:	eb ed                	jmp    0x54
  67:	83 ec 04             	sub    $0x4,%esp
  6a:	53                   	push   %ebx
  6b:	68 07 07 00 00       	push   $0x707
  70:	6a 01                	push   $0x1
  72:	e8 c5 03 00 00       	call   0x43c
  77:	00 5d e6             	add    %bl,-0x1a(%ebp)
  7a:	83 c4 08             	add    $0x8,%esp
  7d:	68 02 02 00 00       	push   $0x202
  82:	8d 45 de             	lea    -0x22(%ebp),%eax
  85:	50                   	push   %eax
  86:	e8 9c 02 00 00       	call   0x327
  8b:	89 c6                	mov    %eax,%esi
  8d:	83 c4 10             	add    $0x10,%esp
  90:	bb 00 00 00 00       	mov    $0x0,%ebx
  95:	eb 1b                	jmp    0xb2
  97:	83 ec 04             	sub    $0x4,%esp
  9a:	68 00 02 00 00       	push   $0x200
  9f:	8d 85 de fd ff ff    	lea    -0x222(%ebp),%eax
  a5:	50                   	push   %eax
  a6:	56                   	push   %esi
  a7:	e8 5b 02 00 00       	call   0x307
  ac:	83 c3 01             	add    $0x1,%ebx
  af:	83 c4 10             	add    $0x10,%esp
  b2:	83 fb 13             	cmp    $0x13,%ebx
  b5:	7e e0                	jle    0x97
  b7:	83 ec 0c             	sub    $0xc,%esp
  ba:	56                   	push   %esi
  bb:	e8 4f 02 00 00       	call   0x30f
  c0:	83 c4 08             	add    $0x8,%esp
  c3:	68 11 07 00 00       	push   $0x711
  c8:	6a 01                	push   $0x1
  ca:	e8 6d 03 00 00       	call   0x43c
  cf:	83 c4 08             	add    $0x8,%esp
  d2:	6a 00                	push   $0x0
  d4:	8d 45 de             	lea    -0x22(%ebp),%eax
  d7:	50                   	push   %eax
  d8:	e8 4a 02 00 00       	call   0x327
  dd:	89 c6                	mov    %eax,%esi
  df:	83 c4 10             	add    $0x10,%esp
  e2:	bb 00 00 00 00       	mov    $0x0,%ebx
  e7:	eb 1b                	jmp    0x104
  e9:	83 ec 04             	sub    $0x4,%esp
  ec:	68 00 02 00 00       	push   $0x200
  f1:	8d 85 de fd ff ff    	lea    -0x222(%ebp),%eax
  f7:	50                   	push   %eax
  f8:	56                   	push   %esi
  f9:	e8 01 02 00 00       	call   0x2ff
  fe:	83 c3 01             	add    $0x1,%ebx
 101:	83 c4 10             	add    $0x10,%esp
 104:	83 fb 13             	cmp    $0x13,%ebx
 107:	7e e0                	jle    0xe9
 109:	83 ec 0c             	sub    $0xc,%esp
 10c:	56                   	push   %esi
 10d:	e8 fd 01 00 00       	call   0x30f
 112:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 119:	e8 d1 01 00 00       	call   0x2ef
 11e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 125:	e8 bd 01 00 00       	call   0x2e7
 12a:	f3 0f 1e fb          	endbr32 
 12e:	55                   	push   %ebp
 12f:	89 e5                	mov    %esp,%ebp
 131:	56                   	push   %esi
 132:	53                   	push   %ebx
 133:	8b 75 08             	mov    0x8(%ebp),%esi
 136:	8b 55 0c             	mov    0xc(%ebp),%edx
 139:	89 f0                	mov    %esi,%eax
 13b:	89 d1                	mov    %edx,%ecx
 13d:	83 c2 01             	add    $0x1,%edx
 140:	89 c3                	mov    %eax,%ebx
 142:	83 c0 01             	add    $0x1,%eax
 145:	0f b6 09             	movzbl (%ecx),%ecx
 148:	88 0b                	mov    %cl,(%ebx)
 14a:	84 c9                	test   %cl,%cl
 14c:	75 ed                	jne    0x13b
 14e:	89 f0                	mov    %esi,%eax
 150:	5b                   	pop    %ebx
 151:	5e                   	pop    %esi
 152:	5d                   	pop    %ebp
 153:	c3                   	ret    
 154:	f3 0f 1e fb          	endbr32 
 158:	55                   	push   %ebp
 159:	89 e5                	mov    %esp,%ebp
 15b:	8b 4d 08             	mov    0x8(%ebp),%ecx
 15e:	8b 55 0c             	mov    0xc(%ebp),%edx
 161:	0f b6 01             	movzbl (%ecx),%eax
 164:	84 c0                	test   %al,%al
 166:	74 0c                	je     0x174
 168:	3a 02                	cmp    (%edx),%al
 16a:	75 08                	jne    0x174
 16c:	83 c1 01             	add    $0x1,%ecx
 16f:	83 c2 01             	add    $0x1,%edx
 172:	eb ed                	jmp    0x161
 174:	0f b6 c0             	movzbl %al,%eax
 177:	0f b6 12             	movzbl (%edx),%edx
 17a:	29 d0                	sub    %edx,%eax
 17c:	5d                   	pop    %ebp
 17d:	c3                   	ret    
 17e:	f3 0f 1e fb          	endbr32 
 182:	55                   	push   %ebp
 183:	89 e5                	mov    %esp,%ebp
 185:	8b 4d 08             	mov    0x8(%ebp),%ecx
 188:	b8 00 00 00 00       	mov    $0x0,%eax
 18d:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
 191:	74 05                	je     0x198
 193:	83 c0 01             	add    $0x1,%eax
 196:	eb f5                	jmp    0x18d
 198:	5d                   	pop    %ebp
 199:	c3                   	ret    
 19a:	f3 0f 1e fb          	endbr32 
 19e:	55                   	push   %ebp
 19f:	89 e5                	mov    %esp,%ebp
 1a1:	57                   	push   %edi
 1a2:	8b 55 08             	mov    0x8(%ebp),%edx
 1a5:	89 d7                	mov    %edx,%edi
 1a7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 1aa:	8b 45 0c             	mov    0xc(%ebp),%eax
 1ad:	fc                   	cld    
 1ae:	f3 aa                	rep stos %al,%es:(%edi)
 1b0:	89 d0                	mov    %edx,%eax
 1b2:	5f                   	pop    %edi
 1b3:	5d                   	pop    %ebp
 1b4:	c3                   	ret    
 1b5:	f3 0f 1e fb          	endbr32 
 1b9:	55                   	push   %ebp
 1ba:	89 e5                	mov    %esp,%ebp
 1bc:	8b 45 08             	mov    0x8(%ebp),%eax
 1bf:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
 1c3:	0f b6 10             	movzbl (%eax),%edx
 1c6:	84 d2                	test   %dl,%dl
 1c8:	74 09                	je     0x1d3
 1ca:	38 ca                	cmp    %cl,%dl
 1cc:	74 0a                	je     0x1d8
 1ce:	83 c0 01             	add    $0x1,%eax
 1d1:	eb f0                	jmp    0x1c3
 1d3:	b8 00 00 00 00       	mov    $0x0,%eax
 1d8:	5d                   	pop    %ebp
 1d9:	c3                   	ret    
 1da:	f3 0f 1e fb          	endbr32 
 1de:	55                   	push   %ebp
 1df:	89 e5                	mov    %esp,%ebp
 1e1:	57                   	push   %edi
 1e2:	56                   	push   %esi
 1e3:	53                   	push   %ebx
 1e4:	83 ec 1c             	sub    $0x1c,%esp
 1e7:	8b 7d 08             	mov    0x8(%ebp),%edi
 1ea:	bb 00 00 00 00       	mov    $0x0,%ebx
 1ef:	89 de                	mov    %ebx,%esi
 1f1:	83 c3 01             	add    $0x1,%ebx
 1f4:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 1f7:	7d 2e                	jge    0x227
 1f9:	83 ec 04             	sub    $0x4,%esp
 1fc:	6a 01                	push   $0x1
 1fe:	8d 45 e7             	lea    -0x19(%ebp),%eax
 201:	50                   	push   %eax
 202:	6a 00                	push   $0x0
 204:	e8 f6 00 00 00       	call   0x2ff
 209:	83 c4 10             	add    $0x10,%esp
 20c:	85 c0                	test   %eax,%eax
 20e:	7e 17                	jle    0x227
 210:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 214:	88 04 37             	mov    %al,(%edi,%esi,1)
 217:	3c 0a                	cmp    $0xa,%al
 219:	0f 94 c2             	sete   %dl
 21c:	3c 0d                	cmp    $0xd,%al
 21e:	0f 94 c0             	sete   %al
 221:	08 c2                	or     %al,%dl
 223:	74 ca                	je     0x1ef
 225:	89 de                	mov    %ebx,%esi
 227:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 22b:	89 f8                	mov    %edi,%eax
 22d:	8d 65 f4             	lea    -0xc(%ebp),%esp
 230:	5b                   	pop    %ebx
 231:	5e                   	pop    %esi
 232:	5f                   	pop    %edi
 233:	5d                   	pop    %ebp
 234:	c3                   	ret    
 235:	f3 0f 1e fb          	endbr32 
 239:	55                   	push   %ebp
 23a:	89 e5                	mov    %esp,%ebp
 23c:	56                   	push   %esi
 23d:	53                   	push   %ebx
 23e:	83 ec 08             	sub    $0x8,%esp
 241:	6a 00                	push   $0x0
 243:	ff 75 08             	push   0x8(%ebp)
 246:	e8 dc 00 00 00       	call   0x327
 24b:	83 c4 10             	add    $0x10,%esp
 24e:	85 c0                	test   %eax,%eax
 250:	78 24                	js     0x276
 252:	89 c3                	mov    %eax,%ebx
 254:	83 ec 08             	sub    $0x8,%esp
 257:	ff 75 0c             	push   0xc(%ebp)
 25a:	50                   	push   %eax
 25b:	e8 df 00 00 00       	call   0x33f
 260:	89 c6                	mov    %eax,%esi
 262:	89 1c 24             	mov    %ebx,(%esp)
 265:	e8 a5 00 00 00       	call   0x30f
 26a:	83 c4 10             	add    $0x10,%esp
 26d:	89 f0                	mov    %esi,%eax
 26f:	8d 65 f8             	lea    -0x8(%ebp),%esp
 272:	5b                   	pop    %ebx
 273:	5e                   	pop    %esi
 274:	5d                   	pop    %ebp
 275:	c3                   	ret    
 276:	be ff ff ff ff       	mov    $0xffffffff,%esi
 27b:	eb f0                	jmp    0x26d
 27d:	f3 0f 1e fb          	endbr32 
 281:	55                   	push   %ebp
 282:	89 e5                	mov    %esp,%ebp
 284:	53                   	push   %ebx
 285:	8b 4d 08             	mov    0x8(%ebp),%ecx
 288:	ba 00 00 00 00       	mov    $0x0,%edx
 28d:	0f b6 01             	movzbl (%ecx),%eax
 290:	8d 58 d0             	lea    -0x30(%eax),%ebx
 293:	80 fb 09             	cmp    $0x9,%bl
 296:	77 12                	ja     0x2aa
 298:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 29b:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 29e:	83 c1 01             	add    $0x1,%ecx
 2a1:	0f be c0             	movsbl %al,%eax
 2a4:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 2a8:	eb e3                	jmp    0x28d
 2aa:	89 d0                	mov    %edx,%eax
 2ac:	5b                   	pop    %ebx
 2ad:	5d                   	pop    %ebp
 2ae:	c3                   	ret    
 2af:	f3 0f 1e fb          	endbr32 
 2b3:	55                   	push   %ebp
 2b4:	89 e5                	mov    %esp,%ebp
 2b6:	56                   	push   %esi
 2b7:	53                   	push   %ebx
 2b8:	8b 75 08             	mov    0x8(%ebp),%esi
 2bb:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 2be:	8b 45 10             	mov    0x10(%ebp),%eax
 2c1:	89 f2                	mov    %esi,%edx
 2c3:	8d 58 ff             	lea    -0x1(%eax),%ebx
 2c6:	85 c0                	test   %eax,%eax
 2c8:	7e 0f                	jle    0x2d9
 2ca:	0f b6 01             	movzbl (%ecx),%eax
 2cd:	88 02                	mov    %al,(%edx)
 2cf:	8d 49 01             	lea    0x1(%ecx),%ecx
 2d2:	8d 52 01             	lea    0x1(%edx),%edx
 2d5:	89 d8                	mov    %ebx,%eax
 2d7:	eb ea                	jmp    0x2c3
 2d9:	89 f0                	mov    %esi,%eax
 2db:	5b                   	pop    %ebx
 2dc:	5e                   	pop    %esi
 2dd:	5d                   	pop    %ebp
 2de:	c3                   	ret    
 2df:	b8 01 00 00 00       	mov    $0x1,%eax
 2e4:	cd 40                	int    $0x40
 2e6:	c3                   	ret    
 2e7:	b8 02 00 00 00       	mov    $0x2,%eax
 2ec:	cd 40                	int    $0x40
 2ee:	c3                   	ret    
 2ef:	b8 03 00 00 00       	mov    $0x3,%eax
 2f4:	cd 40                	int    $0x40
 2f6:	c3                   	ret    
 2f7:	b8 04 00 00 00       	mov    $0x4,%eax
 2fc:	cd 40                	int    $0x40
 2fe:	c3                   	ret    
 2ff:	b8 05 00 00 00       	mov    $0x5,%eax
 304:	cd 40                	int    $0x40
 306:	c3                   	ret    
 307:	b8 10 00 00 00       	mov    $0x10,%eax
 30c:	cd 40                	int    $0x40
 30e:	c3                   	ret    
 30f:	b8 15 00 00 00       	mov    $0x15,%eax
 314:	cd 40                	int    $0x40
 316:	c3                   	ret    
 317:	b8 06 00 00 00       	mov    $0x6,%eax
 31c:	cd 40                	int    $0x40
 31e:	c3                   	ret    
 31f:	b8 07 00 00 00       	mov    $0x7,%eax
 324:	cd 40                	int    $0x40
 326:	c3                   	ret    
 327:	b8 0f 00 00 00       	mov    $0xf,%eax
 32c:	cd 40                	int    $0x40
 32e:	c3                   	ret    
 32f:	b8 11 00 00 00       	mov    $0x11,%eax
 334:	cd 40                	int    $0x40
 336:	c3                   	ret    
 337:	b8 12 00 00 00       	mov    $0x12,%eax
 33c:	cd 40                	int    $0x40
 33e:	c3                   	ret    
 33f:	b8 08 00 00 00       	mov    $0x8,%eax
 344:	cd 40                	int    $0x40
 346:	c3                   	ret    
 347:	b8 13 00 00 00       	mov    $0x13,%eax
 34c:	cd 40                	int    $0x40
 34e:	c3                   	ret    
 34f:	b8 14 00 00 00       	mov    $0x14,%eax
 354:	cd 40                	int    $0x40
 356:	c3                   	ret    
 357:	b8 09 00 00 00       	mov    $0x9,%eax
 35c:	cd 40                	int    $0x40
 35e:	c3                   	ret    
 35f:	b8 0a 00 00 00       	mov    $0xa,%eax
 364:	cd 40                	int    $0x40
 366:	c3                   	ret    
 367:	b8 0b 00 00 00       	mov    $0xb,%eax
 36c:	cd 40                	int    $0x40
 36e:	c3                   	ret    
 36f:	b8 0c 00 00 00       	mov    $0xc,%eax
 374:	cd 40                	int    $0x40
 376:	c3                   	ret    
 377:	b8 0d 00 00 00       	mov    $0xd,%eax
 37c:	cd 40                	int    $0x40
 37e:	c3                   	ret    
 37f:	b8 0e 00 00 00       	mov    $0xe,%eax
 384:	cd 40                	int    $0x40
 386:	c3                   	ret    
 387:	b8 16 00 00 00       	mov    $0x16,%eax
 38c:	cd 40                	int    $0x40
 38e:	c3                   	ret    
 38f:	b8 17 00 00 00       	mov    $0x17,%eax
 394:	cd 40                	int    $0x40
 396:	c3                   	ret    
 397:	55                   	push   %ebp
 398:	89 e5                	mov    %esp,%ebp
 39a:	83 ec 1c             	sub    $0x1c,%esp
 39d:	88 55 f4             	mov    %dl,-0xc(%ebp)
 3a0:	6a 01                	push   $0x1
 3a2:	8d 55 f4             	lea    -0xc(%ebp),%edx
 3a5:	52                   	push   %edx
 3a6:	50                   	push   %eax
 3a7:	e8 5b ff ff ff       	call   0x307
 3ac:	83 c4 10             	add    $0x10,%esp
 3af:	c9                   	leave  
 3b0:	c3                   	ret    
 3b1:	55                   	push   %ebp
 3b2:	89 e5                	mov    %esp,%ebp
 3b4:	57                   	push   %edi
 3b5:	56                   	push   %esi
 3b6:	53                   	push   %ebx
 3b7:	83 ec 2c             	sub    $0x2c,%esp
 3ba:	89 45 d0             	mov    %eax,-0x30(%ebp)
 3bd:	89 d0                	mov    %edx,%eax
 3bf:	89 ce                	mov    %ecx,%esi
 3c1:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 3c5:	0f 95 c1             	setne  %cl
 3c8:	c1 ea 1f             	shr    $0x1f,%edx
 3cb:	84 d1                	test   %dl,%cl
 3cd:	74 44                	je     0x413
 3cf:	f7 d8                	neg    %eax
 3d1:	89 c1                	mov    %eax,%ecx
 3d3:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 3da:	bb 00 00 00 00       	mov    $0x0,%ebx
 3df:	89 c8                	mov    %ecx,%eax
 3e1:	ba 00 00 00 00       	mov    $0x0,%edx
 3e6:	f7 f6                	div    %esi
 3e8:	89 df                	mov    %ebx,%edi
 3ea:	83 c3 01             	add    $0x1,%ebx
 3ed:	0f b6 92 78 07 00 00 	movzbl 0x778(%edx),%edx
 3f4:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 3f8:	89 ca                	mov    %ecx,%edx
 3fa:	89 c1                	mov    %eax,%ecx
 3fc:	39 d6                	cmp    %edx,%esi
 3fe:	76 df                	jbe    0x3df
 400:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 404:	74 31                	je     0x437
 406:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 40b:	8d 5f 02             	lea    0x2(%edi),%ebx
 40e:	8b 75 d0             	mov    -0x30(%ebp),%esi
 411:	eb 17                	jmp    0x42a
 413:	89 c1                	mov    %eax,%ecx
 415:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 41c:	eb bc                	jmp    0x3da
 41e:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 423:	89 f0                	mov    %esi,%eax
 425:	e8 6d ff ff ff       	call   0x397
 42a:	83 eb 01             	sub    $0x1,%ebx
 42d:	79 ef                	jns    0x41e
 42f:	83 c4 2c             	add    $0x2c,%esp
 432:	5b                   	pop    %ebx
 433:	5e                   	pop    %esi
 434:	5f                   	pop    %edi
 435:	5d                   	pop    %ebp
 436:	c3                   	ret    
 437:	8b 75 d0             	mov    -0x30(%ebp),%esi
 43a:	eb ee                	jmp    0x42a
 43c:	55                   	push   %ebp
 43d:	89 e5                	mov    %esp,%ebp
 43f:	57                   	push   %edi
 440:	56                   	push   %esi
 441:	53                   	push   %ebx
 442:	83 ec 1c             	sub    $0x1c,%esp
 445:	8d 45 10             	lea    0x10(%ebp),%eax
 448:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 44b:	be 00 00 00 00       	mov    $0x0,%esi
 450:	bb 00 00 00 00       	mov    $0x0,%ebx
 455:	eb 14                	jmp    0x46b
 457:	89 fa                	mov    %edi,%edx
 459:	8b 45 08             	mov    0x8(%ebp),%eax
 45c:	e8 36 ff ff ff       	call   0x397
 461:	eb 05                	jmp    0x468
 463:	83 fe 25             	cmp    $0x25,%esi
 466:	74 25                	je     0x48d
 468:	83 c3 01             	add    $0x1,%ebx
 46b:	8b 45 0c             	mov    0xc(%ebp),%eax
 46e:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 472:	84 c0                	test   %al,%al
 474:	0f 84 20 01 00 00    	je     0x59a
 47a:	0f be f8             	movsbl %al,%edi
 47d:	0f b6 c0             	movzbl %al,%eax
 480:	85 f6                	test   %esi,%esi
 482:	75 df                	jne    0x463
 484:	83 f8 25             	cmp    $0x25,%eax
 487:	75 ce                	jne    0x457
 489:	89 c6                	mov    %eax,%esi
 48b:	eb db                	jmp    0x468
 48d:	83 f8 25             	cmp    $0x25,%eax
 490:	0f 84 cf 00 00 00    	je     0x565
 496:	0f 8c dd 00 00 00    	jl     0x579
 49c:	83 f8 78             	cmp    $0x78,%eax
 49f:	0f 8f d4 00 00 00    	jg     0x579
 4a5:	83 f8 63             	cmp    $0x63,%eax
 4a8:	0f 8c cb 00 00 00    	jl     0x579
 4ae:	83 e8 63             	sub    $0x63,%eax
 4b1:	83 f8 15             	cmp    $0x15,%eax
 4b4:	0f 87 bf 00 00 00    	ja     0x579
 4ba:	ff 24 85 20 07 00 00 	jmp    *0x720(,%eax,4)
 4c1:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 4c4:	8b 17                	mov    (%edi),%edx
 4c6:	83 ec 0c             	sub    $0xc,%esp
 4c9:	6a 01                	push   $0x1
 4cb:	b9 0a 00 00 00       	mov    $0xa,%ecx
 4d0:	8b 45 08             	mov    0x8(%ebp),%eax
 4d3:	e8 d9 fe ff ff       	call   0x3b1
 4d8:	83 c7 04             	add    $0x4,%edi
 4db:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 4de:	83 c4 10             	add    $0x10,%esp
 4e1:	be 00 00 00 00       	mov    $0x0,%esi
 4e6:	eb 80                	jmp    0x468
 4e8:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 4eb:	8b 17                	mov    (%edi),%edx
 4ed:	83 ec 0c             	sub    $0xc,%esp
 4f0:	6a 00                	push   $0x0
 4f2:	b9 10 00 00 00       	mov    $0x10,%ecx
 4f7:	8b 45 08             	mov    0x8(%ebp),%eax
 4fa:	e8 b2 fe ff ff       	call   0x3b1
 4ff:	83 c7 04             	add    $0x4,%edi
 502:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 505:	83 c4 10             	add    $0x10,%esp
 508:	be 00 00 00 00       	mov    $0x0,%esi
 50d:	e9 56 ff ff ff       	jmp    0x468
 512:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 515:	8b 30                	mov    (%eax),%esi
 517:	83 c0 04             	add    $0x4,%eax
 51a:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 51d:	85 f6                	test   %esi,%esi
 51f:	75 15                	jne    0x536
 521:	be 17 07 00 00       	mov    $0x717,%esi
 526:	eb 0e                	jmp    0x536
 528:	0f be d2             	movsbl %dl,%edx
 52b:	8b 45 08             	mov    0x8(%ebp),%eax
 52e:	e8 64 fe ff ff       	call   0x397
 533:	83 c6 01             	add    $0x1,%esi
 536:	0f b6 16             	movzbl (%esi),%edx
 539:	84 d2                	test   %dl,%dl
 53b:	75 eb                	jne    0x528
 53d:	be 00 00 00 00       	mov    $0x0,%esi
 542:	e9 21 ff ff ff       	jmp    0x468
 547:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 54a:	0f be 17             	movsbl (%edi),%edx
 54d:	8b 45 08             	mov    0x8(%ebp),%eax
 550:	e8 42 fe ff ff       	call   0x397
 555:	83 c7 04             	add    $0x4,%edi
 558:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 55b:	be 00 00 00 00       	mov    $0x0,%esi
 560:	e9 03 ff ff ff       	jmp    0x468
 565:	89 fa                	mov    %edi,%edx
 567:	8b 45 08             	mov    0x8(%ebp),%eax
 56a:	e8 28 fe ff ff       	call   0x397
 56f:	be 00 00 00 00       	mov    $0x0,%esi
 574:	e9 ef fe ff ff       	jmp    0x468
 579:	ba 25 00 00 00       	mov    $0x25,%edx
 57e:	8b 45 08             	mov    0x8(%ebp),%eax
 581:	e8 11 fe ff ff       	call   0x397
 586:	89 fa                	mov    %edi,%edx
 588:	8b 45 08             	mov    0x8(%ebp),%eax
 58b:	e8 07 fe ff ff       	call   0x397
 590:	be 00 00 00 00       	mov    $0x0,%esi
 595:	e9 ce fe ff ff       	jmp    0x468
 59a:	8d 65 f4             	lea    -0xc(%ebp),%esp
 59d:	5b                   	pop    %ebx
 59e:	5e                   	pop    %esi
 59f:	5f                   	pop    %edi
 5a0:	5d                   	pop    %ebp
 5a1:	c3                   	ret    
 5a2:	f3 0f 1e fb          	endbr32 
 5a6:	55                   	push   %ebp
 5a7:	89 e5                	mov    %esp,%ebp
 5a9:	57                   	push   %edi
 5aa:	56                   	push   %esi
 5ab:	53                   	push   %ebx
 5ac:	8b 5d 08             	mov    0x8(%ebp),%ebx
 5af:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 5b2:	a1 20 0a 00 00       	mov    0xa20,%eax
 5b7:	eb 02                	jmp    0x5bb
 5b9:	89 d0                	mov    %edx,%eax
 5bb:	39 c8                	cmp    %ecx,%eax
 5bd:	73 04                	jae    0x5c3
 5bf:	39 08                	cmp    %ecx,(%eax)
 5c1:	77 12                	ja     0x5d5
 5c3:	8b 10                	mov    (%eax),%edx
 5c5:	39 c2                	cmp    %eax,%edx
 5c7:	77 f0                	ja     0x5b9
 5c9:	39 c8                	cmp    %ecx,%eax
 5cb:	72 08                	jb     0x5d5
 5cd:	39 ca                	cmp    %ecx,%edx
 5cf:	77 04                	ja     0x5d5
 5d1:	89 d0                	mov    %edx,%eax
 5d3:	eb e6                	jmp    0x5bb
 5d5:	8b 73 fc             	mov    -0x4(%ebx),%esi
 5d8:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 5db:	8b 10                	mov    (%eax),%edx
 5dd:	39 d7                	cmp    %edx,%edi
 5df:	74 19                	je     0x5fa
 5e1:	89 53 f8             	mov    %edx,-0x8(%ebx)
 5e4:	8b 50 04             	mov    0x4(%eax),%edx
 5e7:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 5ea:	39 ce                	cmp    %ecx,%esi
 5ec:	74 1b                	je     0x609
 5ee:	89 08                	mov    %ecx,(%eax)
 5f0:	a3 20 0a 00 00       	mov    %eax,0xa20
 5f5:	5b                   	pop    %ebx
 5f6:	5e                   	pop    %esi
 5f7:	5f                   	pop    %edi
 5f8:	5d                   	pop    %ebp
 5f9:	c3                   	ret    
 5fa:	03 72 04             	add    0x4(%edx),%esi
 5fd:	89 73 fc             	mov    %esi,-0x4(%ebx)
 600:	8b 10                	mov    (%eax),%edx
 602:	8b 12                	mov    (%edx),%edx
 604:	89 53 f8             	mov    %edx,-0x8(%ebx)
 607:	eb db                	jmp    0x5e4
 609:	03 53 fc             	add    -0x4(%ebx),%edx
 60c:	89 50 04             	mov    %edx,0x4(%eax)
 60f:	8b 53 f8             	mov    -0x8(%ebx),%edx
 612:	89 10                	mov    %edx,(%eax)
 614:	eb da                	jmp    0x5f0
 616:	55                   	push   %ebp
 617:	89 e5                	mov    %esp,%ebp
 619:	53                   	push   %ebx
 61a:	83 ec 04             	sub    $0x4,%esp
 61d:	89 c3                	mov    %eax,%ebx
 61f:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 624:	77 05                	ja     0x62b
 626:	bb 00 10 00 00       	mov    $0x1000,%ebx
 62b:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 632:	83 ec 0c             	sub    $0xc,%esp
 635:	50                   	push   %eax
 636:	e8 34 fd ff ff       	call   0x36f
 63b:	83 c4 10             	add    $0x10,%esp
 63e:	83 f8 ff             	cmp    $0xffffffff,%eax
 641:	74 1c                	je     0x65f
 643:	89 58 04             	mov    %ebx,0x4(%eax)
 646:	83 c0 08             	add    $0x8,%eax
 649:	83 ec 0c             	sub    $0xc,%esp
 64c:	50                   	push   %eax
 64d:	e8 50 ff ff ff       	call   0x5a2
 652:	a1 20 0a 00 00       	mov    0xa20,%eax
 657:	83 c4 10             	add    $0x10,%esp
 65a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 65d:	c9                   	leave  
 65e:	c3                   	ret    
 65f:	b8 00 00 00 00       	mov    $0x0,%eax
 664:	eb f4                	jmp    0x65a
 666:	f3 0f 1e fb          	endbr32 
 66a:	55                   	push   %ebp
 66b:	89 e5                	mov    %esp,%ebp
 66d:	53                   	push   %ebx
 66e:	83 ec 04             	sub    $0x4,%esp
 671:	8b 45 08             	mov    0x8(%ebp),%eax
 674:	8d 58 07             	lea    0x7(%eax),%ebx
 677:	c1 eb 03             	shr    $0x3,%ebx
 67a:	83 c3 01             	add    $0x1,%ebx
 67d:	8b 0d 20 0a 00 00    	mov    0xa20,%ecx
 683:	85 c9                	test   %ecx,%ecx
 685:	74 04                	je     0x68b
 687:	8b 01                	mov    (%ecx),%eax
 689:	eb 4b                	jmp    0x6d6
 68b:	c7 05 20 0a 00 00 24 	movl   $0xa24,0xa20
 692:	0a 00 00 
 695:	c7 05 24 0a 00 00 24 	movl   $0xa24,0xa24
 69c:	0a 00 00 
 69f:	c7 05 28 0a 00 00 00 	movl   $0x0,0xa28
 6a6:	00 00 00 
 6a9:	b9 24 0a 00 00       	mov    $0xa24,%ecx
 6ae:	eb d7                	jmp    0x687
 6b0:	74 1a                	je     0x6cc
 6b2:	29 da                	sub    %ebx,%edx
 6b4:	89 50 04             	mov    %edx,0x4(%eax)
 6b7:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 6ba:	89 58 04             	mov    %ebx,0x4(%eax)
 6bd:	89 0d 20 0a 00 00    	mov    %ecx,0xa20
 6c3:	83 c0 08             	add    $0x8,%eax
 6c6:	83 c4 04             	add    $0x4,%esp
 6c9:	5b                   	pop    %ebx
 6ca:	5d                   	pop    %ebp
 6cb:	c3                   	ret    
 6cc:	8b 10                	mov    (%eax),%edx
 6ce:	89 11                	mov    %edx,(%ecx)
 6d0:	eb eb                	jmp    0x6bd
 6d2:	89 c1                	mov    %eax,%ecx
 6d4:	8b 00                	mov    (%eax),%eax
 6d6:	8b 50 04             	mov    0x4(%eax),%edx
 6d9:	39 da                	cmp    %ebx,%edx
 6db:	73 d3                	jae    0x6b0
 6dd:	39 05 20 0a 00 00    	cmp    %eax,0xa20
 6e3:	75 ed                	jne    0x6d2
 6e5:	89 d8                	mov    %ebx,%eax
 6e7:	e8 2a ff ff ff       	call   0x616
 6ec:	85 c0                	test   %eax,%eax
 6ee:	75 e2                	jne    0x6d2
 6f0:	eb d4                	jmp    0x6c6
