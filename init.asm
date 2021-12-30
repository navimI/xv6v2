
_init:     file format elf32-i386


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
  12:	6a 02                	push   $0x2
  14:	68 bc 06 00 00       	push   $0x6bc
  19:	e8 d2 02 00 00       	call   0x2f0
  1e:	83 c4 10             	add    $0x10,%esp
  21:	85 c0                	test   %eax,%eax
  23:	78 1b                	js     0x40
  25:	83 ec 0c             	sub    $0xc,%esp
  28:	6a 00                	push   $0x0
  2a:	e8 f9 02 00 00       	call   0x328
  2f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  36:	e8 ed 02 00 00       	call   0x328
  3b:	83 c4 10             	add    $0x10,%esp
  3e:	eb 67                	jmp    0xa7
  40:	83 ec 04             	sub    $0x4,%esp
  43:	6a 01                	push   $0x1
  45:	6a 01                	push   $0x1
  47:	68 bc 06 00 00       	push   $0x6bc
  4c:	e8 a7 02 00 00       	call   0x2f8
  51:	83 c4 08             	add    $0x8,%esp
  54:	6a 02                	push   $0x2
  56:	68 bc 06 00 00       	push   $0x6bc
  5b:	e8 90 02 00 00       	call   0x2f0
  60:	83 c4 10             	add    $0x10,%esp
  63:	eb c0                	jmp    0x25
  65:	83 ec 08             	sub    $0x8,%esp
  68:	68 d7 06 00 00       	push   $0x6d7
  6d:	6a 01                	push   $0x1
  6f:	e8 91 03 00 00       	call   0x405
  74:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  7b:	e8 30 02 00 00       	call   0x2b0
  80:	83 ec 08             	sub    $0x8,%esp
  83:	68 03 07 00 00       	push   $0x703
  88:	6a 01                	push   $0x1
  8a:	e8 76 03 00 00       	call   0x405
  8f:	83 c4 10             	add    $0x10,%esp
  92:	83 ec 0c             	sub    $0xc,%esp
  95:	6a 00                	push   $0x0
  97:	e8 1c 02 00 00       	call   0x2b8
  9c:	83 c4 10             	add    $0x10,%esp
  9f:	85 c0                	test   %eax,%eax
  a1:	78 04                	js     0xa7
  a3:	39 c3                	cmp    %eax,%ebx
  a5:	75 d9                	jne    0x80
  a7:	83 ec 08             	sub    $0x8,%esp
  aa:	68 c4 06 00 00       	push   $0x6c4
  af:	6a 01                	push   $0x1
  b1:	e8 4f 03 00 00       	call   0x405
  b6:	e8 ed 01 00 00       	call   0x2a8
  bb:	89 c3                	mov    %eax,%ebx
  bd:	83 c4 10             	add    $0x10,%esp
  c0:	85 c0                	test   %eax,%eax
  c2:	78 a1                	js     0x65
  c4:	75 cc                	jne    0x92
  c6:	83 ec 08             	sub    $0x8,%esp
  c9:	68 10 0a 00 00       	push   $0xa10
  ce:	68 ea 06 00 00       	push   $0x6ea
  d3:	e8 10 02 00 00       	call   0x2e8
  d8:	83 c4 08             	add    $0x8,%esp
  db:	68 ed 06 00 00       	push   $0x6ed
  e0:	6a 01                	push   $0x1
  e2:	e8 1e 03 00 00       	call   0x405
  e7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  ee:	e8 bd 01 00 00       	call   0x2b0
  f3:	f3 0f 1e fb          	endbr32 
  f7:	55                   	push   %ebp
  f8:	89 e5                	mov    %esp,%ebp
  fa:	56                   	push   %esi
  fb:	53                   	push   %ebx
  fc:	8b 75 08             	mov    0x8(%ebp),%esi
  ff:	8b 55 0c             	mov    0xc(%ebp),%edx
 102:	89 f0                	mov    %esi,%eax
 104:	89 d1                	mov    %edx,%ecx
 106:	83 c2 01             	add    $0x1,%edx
 109:	89 c3                	mov    %eax,%ebx
 10b:	83 c0 01             	add    $0x1,%eax
 10e:	0f b6 09             	movzbl (%ecx),%ecx
 111:	88 0b                	mov    %cl,(%ebx)
 113:	84 c9                	test   %cl,%cl
 115:	75 ed                	jne    0x104
 117:	89 f0                	mov    %esi,%eax
 119:	5b                   	pop    %ebx
 11a:	5e                   	pop    %esi
 11b:	5d                   	pop    %ebp
 11c:	c3                   	ret    
 11d:	f3 0f 1e fb          	endbr32 
 121:	55                   	push   %ebp
 122:	89 e5                	mov    %esp,%ebp
 124:	8b 4d 08             	mov    0x8(%ebp),%ecx
 127:	8b 55 0c             	mov    0xc(%ebp),%edx
 12a:	0f b6 01             	movzbl (%ecx),%eax
 12d:	84 c0                	test   %al,%al
 12f:	74 0c                	je     0x13d
 131:	3a 02                	cmp    (%edx),%al
 133:	75 08                	jne    0x13d
 135:	83 c1 01             	add    $0x1,%ecx
 138:	83 c2 01             	add    $0x1,%edx
 13b:	eb ed                	jmp    0x12a
 13d:	0f b6 c0             	movzbl %al,%eax
 140:	0f b6 12             	movzbl (%edx),%edx
 143:	29 d0                	sub    %edx,%eax
 145:	5d                   	pop    %ebp
 146:	c3                   	ret    
 147:	f3 0f 1e fb          	endbr32 
 14b:	55                   	push   %ebp
 14c:	89 e5                	mov    %esp,%ebp
 14e:	8b 4d 08             	mov    0x8(%ebp),%ecx
 151:	b8 00 00 00 00       	mov    $0x0,%eax
 156:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
 15a:	74 05                	je     0x161
 15c:	83 c0 01             	add    $0x1,%eax
 15f:	eb f5                	jmp    0x156
 161:	5d                   	pop    %ebp
 162:	c3                   	ret    
 163:	f3 0f 1e fb          	endbr32 
 167:	55                   	push   %ebp
 168:	89 e5                	mov    %esp,%ebp
 16a:	57                   	push   %edi
 16b:	8b 55 08             	mov    0x8(%ebp),%edx
 16e:	89 d7                	mov    %edx,%edi
 170:	8b 4d 10             	mov    0x10(%ebp),%ecx
 173:	8b 45 0c             	mov    0xc(%ebp),%eax
 176:	fc                   	cld    
 177:	f3 aa                	rep stos %al,%es:(%edi)
 179:	89 d0                	mov    %edx,%eax
 17b:	5f                   	pop    %edi
 17c:	5d                   	pop    %ebp
 17d:	c3                   	ret    
 17e:	f3 0f 1e fb          	endbr32 
 182:	55                   	push   %ebp
 183:	89 e5                	mov    %esp,%ebp
 185:	8b 45 08             	mov    0x8(%ebp),%eax
 188:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
 18c:	0f b6 10             	movzbl (%eax),%edx
 18f:	84 d2                	test   %dl,%dl
 191:	74 09                	je     0x19c
 193:	38 ca                	cmp    %cl,%dl
 195:	74 0a                	je     0x1a1
 197:	83 c0 01             	add    $0x1,%eax
 19a:	eb f0                	jmp    0x18c
 19c:	b8 00 00 00 00       	mov    $0x0,%eax
 1a1:	5d                   	pop    %ebp
 1a2:	c3                   	ret    
 1a3:	f3 0f 1e fb          	endbr32 
 1a7:	55                   	push   %ebp
 1a8:	89 e5                	mov    %esp,%ebp
 1aa:	57                   	push   %edi
 1ab:	56                   	push   %esi
 1ac:	53                   	push   %ebx
 1ad:	83 ec 1c             	sub    $0x1c,%esp
 1b0:	8b 7d 08             	mov    0x8(%ebp),%edi
 1b3:	bb 00 00 00 00       	mov    $0x0,%ebx
 1b8:	89 de                	mov    %ebx,%esi
 1ba:	83 c3 01             	add    $0x1,%ebx
 1bd:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 1c0:	7d 2e                	jge    0x1f0
 1c2:	83 ec 04             	sub    $0x4,%esp
 1c5:	6a 01                	push   $0x1
 1c7:	8d 45 e7             	lea    -0x19(%ebp),%eax
 1ca:	50                   	push   %eax
 1cb:	6a 00                	push   $0x0
 1cd:	e8 f6 00 00 00       	call   0x2c8
 1d2:	83 c4 10             	add    $0x10,%esp
 1d5:	85 c0                	test   %eax,%eax
 1d7:	7e 17                	jle    0x1f0
 1d9:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 1dd:	88 04 37             	mov    %al,(%edi,%esi,1)
 1e0:	3c 0a                	cmp    $0xa,%al
 1e2:	0f 94 c2             	sete   %dl
 1e5:	3c 0d                	cmp    $0xd,%al
 1e7:	0f 94 c0             	sete   %al
 1ea:	08 c2                	or     %al,%dl
 1ec:	74 ca                	je     0x1b8
 1ee:	89 de                	mov    %ebx,%esi
 1f0:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 1f4:	89 f8                	mov    %edi,%eax
 1f6:	8d 65 f4             	lea    -0xc(%ebp),%esp
 1f9:	5b                   	pop    %ebx
 1fa:	5e                   	pop    %esi
 1fb:	5f                   	pop    %edi
 1fc:	5d                   	pop    %ebp
 1fd:	c3                   	ret    
 1fe:	f3 0f 1e fb          	endbr32 
 202:	55                   	push   %ebp
 203:	89 e5                	mov    %esp,%ebp
 205:	56                   	push   %esi
 206:	53                   	push   %ebx
 207:	83 ec 08             	sub    $0x8,%esp
 20a:	6a 00                	push   $0x0
 20c:	ff 75 08             	push   0x8(%ebp)
 20f:	e8 dc 00 00 00       	call   0x2f0
 214:	83 c4 10             	add    $0x10,%esp
 217:	85 c0                	test   %eax,%eax
 219:	78 24                	js     0x23f
 21b:	89 c3                	mov    %eax,%ebx
 21d:	83 ec 08             	sub    $0x8,%esp
 220:	ff 75 0c             	push   0xc(%ebp)
 223:	50                   	push   %eax
 224:	e8 df 00 00 00       	call   0x308
 229:	89 c6                	mov    %eax,%esi
 22b:	89 1c 24             	mov    %ebx,(%esp)
 22e:	e8 a5 00 00 00       	call   0x2d8
 233:	83 c4 10             	add    $0x10,%esp
 236:	89 f0                	mov    %esi,%eax
 238:	8d 65 f8             	lea    -0x8(%ebp),%esp
 23b:	5b                   	pop    %ebx
 23c:	5e                   	pop    %esi
 23d:	5d                   	pop    %ebp
 23e:	c3                   	ret    
 23f:	be ff ff ff ff       	mov    $0xffffffff,%esi
 244:	eb f0                	jmp    0x236
 246:	f3 0f 1e fb          	endbr32 
 24a:	55                   	push   %ebp
 24b:	89 e5                	mov    %esp,%ebp
 24d:	53                   	push   %ebx
 24e:	8b 4d 08             	mov    0x8(%ebp),%ecx
 251:	ba 00 00 00 00       	mov    $0x0,%edx
 256:	0f b6 01             	movzbl (%ecx),%eax
 259:	8d 58 d0             	lea    -0x30(%eax),%ebx
 25c:	80 fb 09             	cmp    $0x9,%bl
 25f:	77 12                	ja     0x273
 261:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 264:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 267:	83 c1 01             	add    $0x1,%ecx
 26a:	0f be c0             	movsbl %al,%eax
 26d:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 271:	eb e3                	jmp    0x256
 273:	89 d0                	mov    %edx,%eax
 275:	5b                   	pop    %ebx
 276:	5d                   	pop    %ebp
 277:	c3                   	ret    
 278:	f3 0f 1e fb          	endbr32 
 27c:	55                   	push   %ebp
 27d:	89 e5                	mov    %esp,%ebp
 27f:	56                   	push   %esi
 280:	53                   	push   %ebx
 281:	8b 75 08             	mov    0x8(%ebp),%esi
 284:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 287:	8b 45 10             	mov    0x10(%ebp),%eax
 28a:	89 f2                	mov    %esi,%edx
 28c:	8d 58 ff             	lea    -0x1(%eax),%ebx
 28f:	85 c0                	test   %eax,%eax
 291:	7e 0f                	jle    0x2a2
 293:	0f b6 01             	movzbl (%ecx),%eax
 296:	88 02                	mov    %al,(%edx)
 298:	8d 49 01             	lea    0x1(%ecx),%ecx
 29b:	8d 52 01             	lea    0x1(%edx),%edx
 29e:	89 d8                	mov    %ebx,%eax
 2a0:	eb ea                	jmp    0x28c
 2a2:	89 f0                	mov    %esi,%eax
 2a4:	5b                   	pop    %ebx
 2a5:	5e                   	pop    %esi
 2a6:	5d                   	pop    %ebp
 2a7:	c3                   	ret    
 2a8:	b8 01 00 00 00       	mov    $0x1,%eax
 2ad:	cd 40                	int    $0x40
 2af:	c3                   	ret    
 2b0:	b8 02 00 00 00       	mov    $0x2,%eax
 2b5:	cd 40                	int    $0x40
 2b7:	c3                   	ret    
 2b8:	b8 03 00 00 00       	mov    $0x3,%eax
 2bd:	cd 40                	int    $0x40
 2bf:	c3                   	ret    
 2c0:	b8 04 00 00 00       	mov    $0x4,%eax
 2c5:	cd 40                	int    $0x40
 2c7:	c3                   	ret    
 2c8:	b8 05 00 00 00       	mov    $0x5,%eax
 2cd:	cd 40                	int    $0x40
 2cf:	c3                   	ret    
 2d0:	b8 10 00 00 00       	mov    $0x10,%eax
 2d5:	cd 40                	int    $0x40
 2d7:	c3                   	ret    
 2d8:	b8 15 00 00 00       	mov    $0x15,%eax
 2dd:	cd 40                	int    $0x40
 2df:	c3                   	ret    
 2e0:	b8 06 00 00 00       	mov    $0x6,%eax
 2e5:	cd 40                	int    $0x40
 2e7:	c3                   	ret    
 2e8:	b8 07 00 00 00       	mov    $0x7,%eax
 2ed:	cd 40                	int    $0x40
 2ef:	c3                   	ret    
 2f0:	b8 0f 00 00 00       	mov    $0xf,%eax
 2f5:	cd 40                	int    $0x40
 2f7:	c3                   	ret    
 2f8:	b8 11 00 00 00       	mov    $0x11,%eax
 2fd:	cd 40                	int    $0x40
 2ff:	c3                   	ret    
 300:	b8 12 00 00 00       	mov    $0x12,%eax
 305:	cd 40                	int    $0x40
 307:	c3                   	ret    
 308:	b8 08 00 00 00       	mov    $0x8,%eax
 30d:	cd 40                	int    $0x40
 30f:	c3                   	ret    
 310:	b8 13 00 00 00       	mov    $0x13,%eax
 315:	cd 40                	int    $0x40
 317:	c3                   	ret    
 318:	b8 14 00 00 00       	mov    $0x14,%eax
 31d:	cd 40                	int    $0x40
 31f:	c3                   	ret    
 320:	b8 09 00 00 00       	mov    $0x9,%eax
 325:	cd 40                	int    $0x40
 327:	c3                   	ret    
 328:	b8 0a 00 00 00       	mov    $0xa,%eax
 32d:	cd 40                	int    $0x40
 32f:	c3                   	ret    
 330:	b8 0b 00 00 00       	mov    $0xb,%eax
 335:	cd 40                	int    $0x40
 337:	c3                   	ret    
 338:	b8 0c 00 00 00       	mov    $0xc,%eax
 33d:	cd 40                	int    $0x40
 33f:	c3                   	ret    
 340:	b8 0d 00 00 00       	mov    $0xd,%eax
 345:	cd 40                	int    $0x40
 347:	c3                   	ret    
 348:	b8 0e 00 00 00       	mov    $0xe,%eax
 34d:	cd 40                	int    $0x40
 34f:	c3                   	ret    
 350:	b8 16 00 00 00       	mov    $0x16,%eax
 355:	cd 40                	int    $0x40
 357:	c3                   	ret    
 358:	b8 17 00 00 00       	mov    $0x17,%eax
 35d:	cd 40                	int    $0x40
 35f:	c3                   	ret    
 360:	55                   	push   %ebp
 361:	89 e5                	mov    %esp,%ebp
 363:	83 ec 1c             	sub    $0x1c,%esp
 366:	88 55 f4             	mov    %dl,-0xc(%ebp)
 369:	6a 01                	push   $0x1
 36b:	8d 55 f4             	lea    -0xc(%ebp),%edx
 36e:	52                   	push   %edx
 36f:	50                   	push   %eax
 370:	e8 5b ff ff ff       	call   0x2d0
 375:	83 c4 10             	add    $0x10,%esp
 378:	c9                   	leave  
 379:	c3                   	ret    
 37a:	55                   	push   %ebp
 37b:	89 e5                	mov    %esp,%ebp
 37d:	57                   	push   %edi
 37e:	56                   	push   %esi
 37f:	53                   	push   %ebx
 380:	83 ec 2c             	sub    $0x2c,%esp
 383:	89 45 d0             	mov    %eax,-0x30(%ebp)
 386:	89 d0                	mov    %edx,%eax
 388:	89 ce                	mov    %ecx,%esi
 38a:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 38e:	0f 95 c1             	setne  %cl
 391:	c1 ea 1f             	shr    $0x1f,%edx
 394:	84 d1                	test   %dl,%cl
 396:	74 44                	je     0x3dc
 398:	f7 d8                	neg    %eax
 39a:	89 c1                	mov    %eax,%ecx
 39c:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 3a3:	bb 00 00 00 00       	mov    $0x0,%ebx
 3a8:	89 c8                	mov    %ecx,%eax
 3aa:	ba 00 00 00 00       	mov    $0x0,%edx
 3af:	f7 f6                	div    %esi
 3b1:	89 df                	mov    %ebx,%edi
 3b3:	83 c3 01             	add    $0x1,%ebx
 3b6:	0f b6 92 6c 07 00 00 	movzbl 0x76c(%edx),%edx
 3bd:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 3c1:	89 ca                	mov    %ecx,%edx
 3c3:	89 c1                	mov    %eax,%ecx
 3c5:	39 d6                	cmp    %edx,%esi
 3c7:	76 df                	jbe    0x3a8
 3c9:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 3cd:	74 31                	je     0x400
 3cf:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 3d4:	8d 5f 02             	lea    0x2(%edi),%ebx
 3d7:	8b 75 d0             	mov    -0x30(%ebp),%esi
 3da:	eb 17                	jmp    0x3f3
 3dc:	89 c1                	mov    %eax,%ecx
 3de:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 3e5:	eb bc                	jmp    0x3a3
 3e7:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 3ec:	89 f0                	mov    %esi,%eax
 3ee:	e8 6d ff ff ff       	call   0x360
 3f3:	83 eb 01             	sub    $0x1,%ebx
 3f6:	79 ef                	jns    0x3e7
 3f8:	83 c4 2c             	add    $0x2c,%esp
 3fb:	5b                   	pop    %ebx
 3fc:	5e                   	pop    %esi
 3fd:	5f                   	pop    %edi
 3fe:	5d                   	pop    %ebp
 3ff:	c3                   	ret    
 400:	8b 75 d0             	mov    -0x30(%ebp),%esi
 403:	eb ee                	jmp    0x3f3
 405:	55                   	push   %ebp
 406:	89 e5                	mov    %esp,%ebp
 408:	57                   	push   %edi
 409:	56                   	push   %esi
 40a:	53                   	push   %ebx
 40b:	83 ec 1c             	sub    $0x1c,%esp
 40e:	8d 45 10             	lea    0x10(%ebp),%eax
 411:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 414:	be 00 00 00 00       	mov    $0x0,%esi
 419:	bb 00 00 00 00       	mov    $0x0,%ebx
 41e:	eb 14                	jmp    0x434
 420:	89 fa                	mov    %edi,%edx
 422:	8b 45 08             	mov    0x8(%ebp),%eax
 425:	e8 36 ff ff ff       	call   0x360
 42a:	eb 05                	jmp    0x431
 42c:	83 fe 25             	cmp    $0x25,%esi
 42f:	74 25                	je     0x456
 431:	83 c3 01             	add    $0x1,%ebx
 434:	8b 45 0c             	mov    0xc(%ebp),%eax
 437:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 43b:	84 c0                	test   %al,%al
 43d:	0f 84 20 01 00 00    	je     0x563
 443:	0f be f8             	movsbl %al,%edi
 446:	0f b6 c0             	movzbl %al,%eax
 449:	85 f6                	test   %esi,%esi
 44b:	75 df                	jne    0x42c
 44d:	83 f8 25             	cmp    $0x25,%eax
 450:	75 ce                	jne    0x420
 452:	89 c6                	mov    %eax,%esi
 454:	eb db                	jmp    0x431
 456:	83 f8 25             	cmp    $0x25,%eax
 459:	0f 84 cf 00 00 00    	je     0x52e
 45f:	0f 8c dd 00 00 00    	jl     0x542
 465:	83 f8 78             	cmp    $0x78,%eax
 468:	0f 8f d4 00 00 00    	jg     0x542
 46e:	83 f8 63             	cmp    $0x63,%eax
 471:	0f 8c cb 00 00 00    	jl     0x542
 477:	83 e8 63             	sub    $0x63,%eax
 47a:	83 f8 15             	cmp    $0x15,%eax
 47d:	0f 87 bf 00 00 00    	ja     0x542
 483:	ff 24 85 14 07 00 00 	jmp    *0x714(,%eax,4)
 48a:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 48d:	8b 17                	mov    (%edi),%edx
 48f:	83 ec 0c             	sub    $0xc,%esp
 492:	6a 01                	push   $0x1
 494:	b9 0a 00 00 00       	mov    $0xa,%ecx
 499:	8b 45 08             	mov    0x8(%ebp),%eax
 49c:	e8 d9 fe ff ff       	call   0x37a
 4a1:	83 c7 04             	add    $0x4,%edi
 4a4:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 4a7:	83 c4 10             	add    $0x10,%esp
 4aa:	be 00 00 00 00       	mov    $0x0,%esi
 4af:	eb 80                	jmp    0x431
 4b1:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 4b4:	8b 17                	mov    (%edi),%edx
 4b6:	83 ec 0c             	sub    $0xc,%esp
 4b9:	6a 00                	push   $0x0
 4bb:	b9 10 00 00 00       	mov    $0x10,%ecx
 4c0:	8b 45 08             	mov    0x8(%ebp),%eax
 4c3:	e8 b2 fe ff ff       	call   0x37a
 4c8:	83 c7 04             	add    $0x4,%edi
 4cb:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 4ce:	83 c4 10             	add    $0x10,%esp
 4d1:	be 00 00 00 00       	mov    $0x0,%esi
 4d6:	e9 56 ff ff ff       	jmp    0x431
 4db:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 4de:	8b 30                	mov    (%eax),%esi
 4e0:	83 c0 04             	add    $0x4,%eax
 4e3:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 4e6:	85 f6                	test   %esi,%esi
 4e8:	75 15                	jne    0x4ff
 4ea:	be 0c 07 00 00       	mov    $0x70c,%esi
 4ef:	eb 0e                	jmp    0x4ff
 4f1:	0f be d2             	movsbl %dl,%edx
 4f4:	8b 45 08             	mov    0x8(%ebp),%eax
 4f7:	e8 64 fe ff ff       	call   0x360
 4fc:	83 c6 01             	add    $0x1,%esi
 4ff:	0f b6 16             	movzbl (%esi),%edx
 502:	84 d2                	test   %dl,%dl
 504:	75 eb                	jne    0x4f1
 506:	be 00 00 00 00       	mov    $0x0,%esi
 50b:	e9 21 ff ff ff       	jmp    0x431
 510:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 513:	0f be 17             	movsbl (%edi),%edx
 516:	8b 45 08             	mov    0x8(%ebp),%eax
 519:	e8 42 fe ff ff       	call   0x360
 51e:	83 c7 04             	add    $0x4,%edi
 521:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 524:	be 00 00 00 00       	mov    $0x0,%esi
 529:	e9 03 ff ff ff       	jmp    0x431
 52e:	89 fa                	mov    %edi,%edx
 530:	8b 45 08             	mov    0x8(%ebp),%eax
 533:	e8 28 fe ff ff       	call   0x360
 538:	be 00 00 00 00       	mov    $0x0,%esi
 53d:	e9 ef fe ff ff       	jmp    0x431
 542:	ba 25 00 00 00       	mov    $0x25,%edx
 547:	8b 45 08             	mov    0x8(%ebp),%eax
 54a:	e8 11 fe ff ff       	call   0x360
 54f:	89 fa                	mov    %edi,%edx
 551:	8b 45 08             	mov    0x8(%ebp),%eax
 554:	e8 07 fe ff ff       	call   0x360
 559:	be 00 00 00 00       	mov    $0x0,%esi
 55e:	e9 ce fe ff ff       	jmp    0x431
 563:	8d 65 f4             	lea    -0xc(%ebp),%esp
 566:	5b                   	pop    %ebx
 567:	5e                   	pop    %esi
 568:	5f                   	pop    %edi
 569:	5d                   	pop    %ebp
 56a:	c3                   	ret    
 56b:	f3 0f 1e fb          	endbr32 
 56f:	55                   	push   %ebp
 570:	89 e5                	mov    %esp,%ebp
 572:	57                   	push   %edi
 573:	56                   	push   %esi
 574:	53                   	push   %ebx
 575:	8b 5d 08             	mov    0x8(%ebp),%ebx
 578:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 57b:	a1 18 0a 00 00       	mov    0xa18,%eax
 580:	eb 02                	jmp    0x584
 582:	89 d0                	mov    %edx,%eax
 584:	39 c8                	cmp    %ecx,%eax
 586:	73 04                	jae    0x58c
 588:	39 08                	cmp    %ecx,(%eax)
 58a:	77 12                	ja     0x59e
 58c:	8b 10                	mov    (%eax),%edx
 58e:	39 c2                	cmp    %eax,%edx
 590:	77 f0                	ja     0x582
 592:	39 c8                	cmp    %ecx,%eax
 594:	72 08                	jb     0x59e
 596:	39 ca                	cmp    %ecx,%edx
 598:	77 04                	ja     0x59e
 59a:	89 d0                	mov    %edx,%eax
 59c:	eb e6                	jmp    0x584
 59e:	8b 73 fc             	mov    -0x4(%ebx),%esi
 5a1:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 5a4:	8b 10                	mov    (%eax),%edx
 5a6:	39 d7                	cmp    %edx,%edi
 5a8:	74 19                	je     0x5c3
 5aa:	89 53 f8             	mov    %edx,-0x8(%ebx)
 5ad:	8b 50 04             	mov    0x4(%eax),%edx
 5b0:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 5b3:	39 ce                	cmp    %ecx,%esi
 5b5:	74 1b                	je     0x5d2
 5b7:	89 08                	mov    %ecx,(%eax)
 5b9:	a3 18 0a 00 00       	mov    %eax,0xa18
 5be:	5b                   	pop    %ebx
 5bf:	5e                   	pop    %esi
 5c0:	5f                   	pop    %edi
 5c1:	5d                   	pop    %ebp
 5c2:	c3                   	ret    
 5c3:	03 72 04             	add    0x4(%edx),%esi
 5c6:	89 73 fc             	mov    %esi,-0x4(%ebx)
 5c9:	8b 10                	mov    (%eax),%edx
 5cb:	8b 12                	mov    (%edx),%edx
 5cd:	89 53 f8             	mov    %edx,-0x8(%ebx)
 5d0:	eb db                	jmp    0x5ad
 5d2:	03 53 fc             	add    -0x4(%ebx),%edx
 5d5:	89 50 04             	mov    %edx,0x4(%eax)
 5d8:	8b 53 f8             	mov    -0x8(%ebx),%edx
 5db:	89 10                	mov    %edx,(%eax)
 5dd:	eb da                	jmp    0x5b9
 5df:	55                   	push   %ebp
 5e0:	89 e5                	mov    %esp,%ebp
 5e2:	53                   	push   %ebx
 5e3:	83 ec 04             	sub    $0x4,%esp
 5e6:	89 c3                	mov    %eax,%ebx
 5e8:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 5ed:	77 05                	ja     0x5f4
 5ef:	bb 00 10 00 00       	mov    $0x1000,%ebx
 5f4:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 5fb:	83 ec 0c             	sub    $0xc,%esp
 5fe:	50                   	push   %eax
 5ff:	e8 34 fd ff ff       	call   0x338
 604:	83 c4 10             	add    $0x10,%esp
 607:	83 f8 ff             	cmp    $0xffffffff,%eax
 60a:	74 1c                	je     0x628
 60c:	89 58 04             	mov    %ebx,0x4(%eax)
 60f:	83 c0 08             	add    $0x8,%eax
 612:	83 ec 0c             	sub    $0xc,%esp
 615:	50                   	push   %eax
 616:	e8 50 ff ff ff       	call   0x56b
 61b:	a1 18 0a 00 00       	mov    0xa18,%eax
 620:	83 c4 10             	add    $0x10,%esp
 623:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 626:	c9                   	leave  
 627:	c3                   	ret    
 628:	b8 00 00 00 00       	mov    $0x0,%eax
 62d:	eb f4                	jmp    0x623
 62f:	f3 0f 1e fb          	endbr32 
 633:	55                   	push   %ebp
 634:	89 e5                	mov    %esp,%ebp
 636:	53                   	push   %ebx
 637:	83 ec 04             	sub    $0x4,%esp
 63a:	8b 45 08             	mov    0x8(%ebp),%eax
 63d:	8d 58 07             	lea    0x7(%eax),%ebx
 640:	c1 eb 03             	shr    $0x3,%ebx
 643:	83 c3 01             	add    $0x1,%ebx
 646:	8b 0d 18 0a 00 00    	mov    0xa18,%ecx
 64c:	85 c9                	test   %ecx,%ecx
 64e:	74 04                	je     0x654
 650:	8b 01                	mov    (%ecx),%eax
 652:	eb 4b                	jmp    0x69f
 654:	c7 05 18 0a 00 00 1c 	movl   $0xa1c,0xa18
 65b:	0a 00 00 
 65e:	c7 05 1c 0a 00 00 1c 	movl   $0xa1c,0xa1c
 665:	0a 00 00 
 668:	c7 05 20 0a 00 00 00 	movl   $0x0,0xa20
 66f:	00 00 00 
 672:	b9 1c 0a 00 00       	mov    $0xa1c,%ecx
 677:	eb d7                	jmp    0x650
 679:	74 1a                	je     0x695
 67b:	29 da                	sub    %ebx,%edx
 67d:	89 50 04             	mov    %edx,0x4(%eax)
 680:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 683:	89 58 04             	mov    %ebx,0x4(%eax)
 686:	89 0d 18 0a 00 00    	mov    %ecx,0xa18
 68c:	83 c0 08             	add    $0x8,%eax
 68f:	83 c4 04             	add    $0x4,%esp
 692:	5b                   	pop    %ebx
 693:	5d                   	pop    %ebp
 694:	c3                   	ret    
 695:	8b 10                	mov    (%eax),%edx
 697:	89 11                	mov    %edx,(%ecx)
 699:	eb eb                	jmp    0x686
 69b:	89 c1                	mov    %eax,%ecx
 69d:	8b 00                	mov    (%eax),%eax
 69f:	8b 50 04             	mov    0x4(%eax),%edx
 6a2:	39 da                	cmp    %ebx,%edx
 6a4:	73 d3                	jae    0x679
 6a6:	39 05 18 0a 00 00    	cmp    %eax,0xa18
 6ac:	75 ed                	jne    0x69b
 6ae:	89 d8                	mov    %ebx,%eax
 6b0:	e8 2a ff ff ff       	call   0x5df
 6b5:	85 c0                	test   %eax,%eax
 6b7:	75 e2                	jne    0x69b
 6b9:	eb d4                	jmp    0x68f
