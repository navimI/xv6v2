
_rm:     file format elf32-i386


Disassembly of section .text:

00000000 <.text>:
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	push   -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	57                   	push   %edi
   e:	56                   	push   %esi
   f:	53                   	push   %ebx
  10:	51                   	push   %ecx
  11:	83 ec 18             	sub    $0x18,%esp
  14:	8b 39                	mov    (%ecx),%edi
  16:	8b 41 04             	mov    0x4(%ecx),%eax
  19:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  1c:	83 ff 01             	cmp    $0x1,%edi
  1f:	7e 07                	jle    0x28
  21:	bb 01 00 00 00       	mov    $0x1,%ebx
  26:	eb 1e                	jmp    0x46
  28:	83 ec 08             	sub    $0x8,%esp
  2b:	68 48 06 00 00       	push   $0x648
  30:	6a 02                	push   $0x2
  32:	e8 5a 03 00 00       	call   0x391
  37:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  3e:	e8 f9 01 00 00       	call   0x23c
  43:	83 c3 01             	add    $0x1,%ebx
  46:	39 fb                	cmp    %edi,%ebx
  48:	7d 2b                	jge    0x75
  4a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  4d:	8d 34 98             	lea    (%eax,%ebx,4),%esi
  50:	83 ec 0c             	sub    $0xc,%esp
  53:	ff 36                	push   (%esi)
  55:	e8 32 02 00 00       	call   0x28c
  5a:	83 c4 10             	add    $0x10,%esp
  5d:	85 c0                	test   %eax,%eax
  5f:	79 e2                	jns    0x43
  61:	83 ec 04             	sub    $0x4,%esp
  64:	ff 36                	push   (%esi)
  66:	68 5c 06 00 00       	push   $0x65c
  6b:	6a 02                	push   $0x2
  6d:	e8 1f 03 00 00       	call   0x391
  72:	83 c4 10             	add    $0x10,%esp
  75:	83 ec 0c             	sub    $0xc,%esp
  78:	6a 00                	push   $0x0
  7a:	e8 bd 01 00 00       	call   0x23c
  7f:	f3 0f 1e fb          	endbr32 
  83:	55                   	push   %ebp
  84:	89 e5                	mov    %esp,%ebp
  86:	56                   	push   %esi
  87:	53                   	push   %ebx
  88:	8b 75 08             	mov    0x8(%ebp),%esi
  8b:	8b 55 0c             	mov    0xc(%ebp),%edx
  8e:	89 f0                	mov    %esi,%eax
  90:	89 d1                	mov    %edx,%ecx
  92:	83 c2 01             	add    $0x1,%edx
  95:	89 c3                	mov    %eax,%ebx
  97:	83 c0 01             	add    $0x1,%eax
  9a:	0f b6 09             	movzbl (%ecx),%ecx
  9d:	88 0b                	mov    %cl,(%ebx)
  9f:	84 c9                	test   %cl,%cl
  a1:	75 ed                	jne    0x90
  a3:	89 f0                	mov    %esi,%eax
  a5:	5b                   	pop    %ebx
  a6:	5e                   	pop    %esi
  a7:	5d                   	pop    %ebp
  a8:	c3                   	ret    
  a9:	f3 0f 1e fb          	endbr32 
  ad:	55                   	push   %ebp
  ae:	89 e5                	mov    %esp,%ebp
  b0:	8b 4d 08             	mov    0x8(%ebp),%ecx
  b3:	8b 55 0c             	mov    0xc(%ebp),%edx
  b6:	0f b6 01             	movzbl (%ecx),%eax
  b9:	84 c0                	test   %al,%al
  bb:	74 0c                	je     0xc9
  bd:	3a 02                	cmp    (%edx),%al
  bf:	75 08                	jne    0xc9
  c1:	83 c1 01             	add    $0x1,%ecx
  c4:	83 c2 01             	add    $0x1,%edx
  c7:	eb ed                	jmp    0xb6
  c9:	0f b6 c0             	movzbl %al,%eax
  cc:	0f b6 12             	movzbl (%edx),%edx
  cf:	29 d0                	sub    %edx,%eax
  d1:	5d                   	pop    %ebp
  d2:	c3                   	ret    
  d3:	f3 0f 1e fb          	endbr32 
  d7:	55                   	push   %ebp
  d8:	89 e5                	mov    %esp,%ebp
  da:	8b 4d 08             	mov    0x8(%ebp),%ecx
  dd:	b8 00 00 00 00       	mov    $0x0,%eax
  e2:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
  e6:	74 05                	je     0xed
  e8:	83 c0 01             	add    $0x1,%eax
  eb:	eb f5                	jmp    0xe2
  ed:	5d                   	pop    %ebp
  ee:	c3                   	ret    
  ef:	f3 0f 1e fb          	endbr32 
  f3:	55                   	push   %ebp
  f4:	89 e5                	mov    %esp,%ebp
  f6:	57                   	push   %edi
  f7:	8b 55 08             	mov    0x8(%ebp),%edx
  fa:	89 d7                	mov    %edx,%edi
  fc:	8b 4d 10             	mov    0x10(%ebp),%ecx
  ff:	8b 45 0c             	mov    0xc(%ebp),%eax
 102:	fc                   	cld    
 103:	f3 aa                	rep stos %al,%es:(%edi)
 105:	89 d0                	mov    %edx,%eax
 107:	5f                   	pop    %edi
 108:	5d                   	pop    %ebp
 109:	c3                   	ret    
 10a:	f3 0f 1e fb          	endbr32 
 10e:	55                   	push   %ebp
 10f:	89 e5                	mov    %esp,%ebp
 111:	8b 45 08             	mov    0x8(%ebp),%eax
 114:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
 118:	0f b6 10             	movzbl (%eax),%edx
 11b:	84 d2                	test   %dl,%dl
 11d:	74 09                	je     0x128
 11f:	38 ca                	cmp    %cl,%dl
 121:	74 0a                	je     0x12d
 123:	83 c0 01             	add    $0x1,%eax
 126:	eb f0                	jmp    0x118
 128:	b8 00 00 00 00       	mov    $0x0,%eax
 12d:	5d                   	pop    %ebp
 12e:	c3                   	ret    
 12f:	f3 0f 1e fb          	endbr32 
 133:	55                   	push   %ebp
 134:	89 e5                	mov    %esp,%ebp
 136:	57                   	push   %edi
 137:	56                   	push   %esi
 138:	53                   	push   %ebx
 139:	83 ec 1c             	sub    $0x1c,%esp
 13c:	8b 7d 08             	mov    0x8(%ebp),%edi
 13f:	bb 00 00 00 00       	mov    $0x0,%ebx
 144:	89 de                	mov    %ebx,%esi
 146:	83 c3 01             	add    $0x1,%ebx
 149:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 14c:	7d 2e                	jge    0x17c
 14e:	83 ec 04             	sub    $0x4,%esp
 151:	6a 01                	push   $0x1
 153:	8d 45 e7             	lea    -0x19(%ebp),%eax
 156:	50                   	push   %eax
 157:	6a 00                	push   $0x0
 159:	e8 f6 00 00 00       	call   0x254
 15e:	83 c4 10             	add    $0x10,%esp
 161:	85 c0                	test   %eax,%eax
 163:	7e 17                	jle    0x17c
 165:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 169:	88 04 37             	mov    %al,(%edi,%esi,1)
 16c:	3c 0a                	cmp    $0xa,%al
 16e:	0f 94 c2             	sete   %dl
 171:	3c 0d                	cmp    $0xd,%al
 173:	0f 94 c0             	sete   %al
 176:	08 c2                	or     %al,%dl
 178:	74 ca                	je     0x144
 17a:	89 de                	mov    %ebx,%esi
 17c:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 180:	89 f8                	mov    %edi,%eax
 182:	8d 65 f4             	lea    -0xc(%ebp),%esp
 185:	5b                   	pop    %ebx
 186:	5e                   	pop    %esi
 187:	5f                   	pop    %edi
 188:	5d                   	pop    %ebp
 189:	c3                   	ret    
 18a:	f3 0f 1e fb          	endbr32 
 18e:	55                   	push   %ebp
 18f:	89 e5                	mov    %esp,%ebp
 191:	56                   	push   %esi
 192:	53                   	push   %ebx
 193:	83 ec 08             	sub    $0x8,%esp
 196:	6a 00                	push   $0x0
 198:	ff 75 08             	push   0x8(%ebp)
 19b:	e8 dc 00 00 00       	call   0x27c
 1a0:	83 c4 10             	add    $0x10,%esp
 1a3:	85 c0                	test   %eax,%eax
 1a5:	78 24                	js     0x1cb
 1a7:	89 c3                	mov    %eax,%ebx
 1a9:	83 ec 08             	sub    $0x8,%esp
 1ac:	ff 75 0c             	push   0xc(%ebp)
 1af:	50                   	push   %eax
 1b0:	e8 df 00 00 00       	call   0x294
 1b5:	89 c6                	mov    %eax,%esi
 1b7:	89 1c 24             	mov    %ebx,(%esp)
 1ba:	e8 a5 00 00 00       	call   0x264
 1bf:	83 c4 10             	add    $0x10,%esp
 1c2:	89 f0                	mov    %esi,%eax
 1c4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 1c7:	5b                   	pop    %ebx
 1c8:	5e                   	pop    %esi
 1c9:	5d                   	pop    %ebp
 1ca:	c3                   	ret    
 1cb:	be ff ff ff ff       	mov    $0xffffffff,%esi
 1d0:	eb f0                	jmp    0x1c2
 1d2:	f3 0f 1e fb          	endbr32 
 1d6:	55                   	push   %ebp
 1d7:	89 e5                	mov    %esp,%ebp
 1d9:	53                   	push   %ebx
 1da:	8b 4d 08             	mov    0x8(%ebp),%ecx
 1dd:	ba 00 00 00 00       	mov    $0x0,%edx
 1e2:	0f b6 01             	movzbl (%ecx),%eax
 1e5:	8d 58 d0             	lea    -0x30(%eax),%ebx
 1e8:	80 fb 09             	cmp    $0x9,%bl
 1eb:	77 12                	ja     0x1ff
 1ed:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 1f0:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 1f3:	83 c1 01             	add    $0x1,%ecx
 1f6:	0f be c0             	movsbl %al,%eax
 1f9:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 1fd:	eb e3                	jmp    0x1e2
 1ff:	89 d0                	mov    %edx,%eax
 201:	5b                   	pop    %ebx
 202:	5d                   	pop    %ebp
 203:	c3                   	ret    
 204:	f3 0f 1e fb          	endbr32 
 208:	55                   	push   %ebp
 209:	89 e5                	mov    %esp,%ebp
 20b:	56                   	push   %esi
 20c:	53                   	push   %ebx
 20d:	8b 75 08             	mov    0x8(%ebp),%esi
 210:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 213:	8b 45 10             	mov    0x10(%ebp),%eax
 216:	89 f2                	mov    %esi,%edx
 218:	8d 58 ff             	lea    -0x1(%eax),%ebx
 21b:	85 c0                	test   %eax,%eax
 21d:	7e 0f                	jle    0x22e
 21f:	0f b6 01             	movzbl (%ecx),%eax
 222:	88 02                	mov    %al,(%edx)
 224:	8d 49 01             	lea    0x1(%ecx),%ecx
 227:	8d 52 01             	lea    0x1(%edx),%edx
 22a:	89 d8                	mov    %ebx,%eax
 22c:	eb ea                	jmp    0x218
 22e:	89 f0                	mov    %esi,%eax
 230:	5b                   	pop    %ebx
 231:	5e                   	pop    %esi
 232:	5d                   	pop    %ebp
 233:	c3                   	ret    
 234:	b8 01 00 00 00       	mov    $0x1,%eax
 239:	cd 40                	int    $0x40
 23b:	c3                   	ret    
 23c:	b8 02 00 00 00       	mov    $0x2,%eax
 241:	cd 40                	int    $0x40
 243:	c3                   	ret    
 244:	b8 03 00 00 00       	mov    $0x3,%eax
 249:	cd 40                	int    $0x40
 24b:	c3                   	ret    
 24c:	b8 04 00 00 00       	mov    $0x4,%eax
 251:	cd 40                	int    $0x40
 253:	c3                   	ret    
 254:	b8 05 00 00 00       	mov    $0x5,%eax
 259:	cd 40                	int    $0x40
 25b:	c3                   	ret    
 25c:	b8 10 00 00 00       	mov    $0x10,%eax
 261:	cd 40                	int    $0x40
 263:	c3                   	ret    
 264:	b8 15 00 00 00       	mov    $0x15,%eax
 269:	cd 40                	int    $0x40
 26b:	c3                   	ret    
 26c:	b8 06 00 00 00       	mov    $0x6,%eax
 271:	cd 40                	int    $0x40
 273:	c3                   	ret    
 274:	b8 07 00 00 00       	mov    $0x7,%eax
 279:	cd 40                	int    $0x40
 27b:	c3                   	ret    
 27c:	b8 0f 00 00 00       	mov    $0xf,%eax
 281:	cd 40                	int    $0x40
 283:	c3                   	ret    
 284:	b8 11 00 00 00       	mov    $0x11,%eax
 289:	cd 40                	int    $0x40
 28b:	c3                   	ret    
 28c:	b8 12 00 00 00       	mov    $0x12,%eax
 291:	cd 40                	int    $0x40
 293:	c3                   	ret    
 294:	b8 08 00 00 00       	mov    $0x8,%eax
 299:	cd 40                	int    $0x40
 29b:	c3                   	ret    
 29c:	b8 13 00 00 00       	mov    $0x13,%eax
 2a1:	cd 40                	int    $0x40
 2a3:	c3                   	ret    
 2a4:	b8 14 00 00 00       	mov    $0x14,%eax
 2a9:	cd 40                	int    $0x40
 2ab:	c3                   	ret    
 2ac:	b8 09 00 00 00       	mov    $0x9,%eax
 2b1:	cd 40                	int    $0x40
 2b3:	c3                   	ret    
 2b4:	b8 0a 00 00 00       	mov    $0xa,%eax
 2b9:	cd 40                	int    $0x40
 2bb:	c3                   	ret    
 2bc:	b8 0b 00 00 00       	mov    $0xb,%eax
 2c1:	cd 40                	int    $0x40
 2c3:	c3                   	ret    
 2c4:	b8 0c 00 00 00       	mov    $0xc,%eax
 2c9:	cd 40                	int    $0x40
 2cb:	c3                   	ret    
 2cc:	b8 0d 00 00 00       	mov    $0xd,%eax
 2d1:	cd 40                	int    $0x40
 2d3:	c3                   	ret    
 2d4:	b8 0e 00 00 00       	mov    $0xe,%eax
 2d9:	cd 40                	int    $0x40
 2db:	c3                   	ret    
 2dc:	b8 16 00 00 00       	mov    $0x16,%eax
 2e1:	cd 40                	int    $0x40
 2e3:	c3                   	ret    
 2e4:	b8 17 00 00 00       	mov    $0x17,%eax
 2e9:	cd 40                	int    $0x40
 2eb:	c3                   	ret    
 2ec:	55                   	push   %ebp
 2ed:	89 e5                	mov    %esp,%ebp
 2ef:	83 ec 1c             	sub    $0x1c,%esp
 2f2:	88 55 f4             	mov    %dl,-0xc(%ebp)
 2f5:	6a 01                	push   $0x1
 2f7:	8d 55 f4             	lea    -0xc(%ebp),%edx
 2fa:	52                   	push   %edx
 2fb:	50                   	push   %eax
 2fc:	e8 5b ff ff ff       	call   0x25c
 301:	83 c4 10             	add    $0x10,%esp
 304:	c9                   	leave  
 305:	c3                   	ret    
 306:	55                   	push   %ebp
 307:	89 e5                	mov    %esp,%ebp
 309:	57                   	push   %edi
 30a:	56                   	push   %esi
 30b:	53                   	push   %ebx
 30c:	83 ec 2c             	sub    $0x2c,%esp
 30f:	89 45 d0             	mov    %eax,-0x30(%ebp)
 312:	89 d0                	mov    %edx,%eax
 314:	89 ce                	mov    %ecx,%esi
 316:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 31a:	0f 95 c1             	setne  %cl
 31d:	c1 ea 1f             	shr    $0x1f,%edx
 320:	84 d1                	test   %dl,%cl
 322:	74 44                	je     0x368
 324:	f7 d8                	neg    %eax
 326:	89 c1                	mov    %eax,%ecx
 328:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 32f:	bb 00 00 00 00       	mov    $0x0,%ebx
 334:	89 c8                	mov    %ecx,%eax
 336:	ba 00 00 00 00       	mov    $0x0,%edx
 33b:	f7 f6                	div    %esi
 33d:	89 df                	mov    %ebx,%edi
 33f:	83 c3 01             	add    $0x1,%ebx
 342:	0f b6 92 d4 06 00 00 	movzbl 0x6d4(%edx),%edx
 349:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 34d:	89 ca                	mov    %ecx,%edx
 34f:	89 c1                	mov    %eax,%ecx
 351:	39 d6                	cmp    %edx,%esi
 353:	76 df                	jbe    0x334
 355:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 359:	74 31                	je     0x38c
 35b:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 360:	8d 5f 02             	lea    0x2(%edi),%ebx
 363:	8b 75 d0             	mov    -0x30(%ebp),%esi
 366:	eb 17                	jmp    0x37f
 368:	89 c1                	mov    %eax,%ecx
 36a:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 371:	eb bc                	jmp    0x32f
 373:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 378:	89 f0                	mov    %esi,%eax
 37a:	e8 6d ff ff ff       	call   0x2ec
 37f:	83 eb 01             	sub    $0x1,%ebx
 382:	79 ef                	jns    0x373
 384:	83 c4 2c             	add    $0x2c,%esp
 387:	5b                   	pop    %ebx
 388:	5e                   	pop    %esi
 389:	5f                   	pop    %edi
 38a:	5d                   	pop    %ebp
 38b:	c3                   	ret    
 38c:	8b 75 d0             	mov    -0x30(%ebp),%esi
 38f:	eb ee                	jmp    0x37f
 391:	55                   	push   %ebp
 392:	89 e5                	mov    %esp,%ebp
 394:	57                   	push   %edi
 395:	56                   	push   %esi
 396:	53                   	push   %ebx
 397:	83 ec 1c             	sub    $0x1c,%esp
 39a:	8d 45 10             	lea    0x10(%ebp),%eax
 39d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 3a0:	be 00 00 00 00       	mov    $0x0,%esi
 3a5:	bb 00 00 00 00       	mov    $0x0,%ebx
 3aa:	eb 14                	jmp    0x3c0
 3ac:	89 fa                	mov    %edi,%edx
 3ae:	8b 45 08             	mov    0x8(%ebp),%eax
 3b1:	e8 36 ff ff ff       	call   0x2ec
 3b6:	eb 05                	jmp    0x3bd
 3b8:	83 fe 25             	cmp    $0x25,%esi
 3bb:	74 25                	je     0x3e2
 3bd:	83 c3 01             	add    $0x1,%ebx
 3c0:	8b 45 0c             	mov    0xc(%ebp),%eax
 3c3:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 3c7:	84 c0                	test   %al,%al
 3c9:	0f 84 20 01 00 00    	je     0x4ef
 3cf:	0f be f8             	movsbl %al,%edi
 3d2:	0f b6 c0             	movzbl %al,%eax
 3d5:	85 f6                	test   %esi,%esi
 3d7:	75 df                	jne    0x3b8
 3d9:	83 f8 25             	cmp    $0x25,%eax
 3dc:	75 ce                	jne    0x3ac
 3de:	89 c6                	mov    %eax,%esi
 3e0:	eb db                	jmp    0x3bd
 3e2:	83 f8 25             	cmp    $0x25,%eax
 3e5:	0f 84 cf 00 00 00    	je     0x4ba
 3eb:	0f 8c dd 00 00 00    	jl     0x4ce
 3f1:	83 f8 78             	cmp    $0x78,%eax
 3f4:	0f 8f d4 00 00 00    	jg     0x4ce
 3fa:	83 f8 63             	cmp    $0x63,%eax
 3fd:	0f 8c cb 00 00 00    	jl     0x4ce
 403:	83 e8 63             	sub    $0x63,%eax
 406:	83 f8 15             	cmp    $0x15,%eax
 409:	0f 87 bf 00 00 00    	ja     0x4ce
 40f:	ff 24 85 7c 06 00 00 	jmp    *0x67c(,%eax,4)
 416:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 419:	8b 17                	mov    (%edi),%edx
 41b:	83 ec 0c             	sub    $0xc,%esp
 41e:	6a 01                	push   $0x1
 420:	b9 0a 00 00 00       	mov    $0xa,%ecx
 425:	8b 45 08             	mov    0x8(%ebp),%eax
 428:	e8 d9 fe ff ff       	call   0x306
 42d:	83 c7 04             	add    $0x4,%edi
 430:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 433:	83 c4 10             	add    $0x10,%esp
 436:	be 00 00 00 00       	mov    $0x0,%esi
 43b:	eb 80                	jmp    0x3bd
 43d:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 440:	8b 17                	mov    (%edi),%edx
 442:	83 ec 0c             	sub    $0xc,%esp
 445:	6a 00                	push   $0x0
 447:	b9 10 00 00 00       	mov    $0x10,%ecx
 44c:	8b 45 08             	mov    0x8(%ebp),%eax
 44f:	e8 b2 fe ff ff       	call   0x306
 454:	83 c7 04             	add    $0x4,%edi
 457:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 45a:	83 c4 10             	add    $0x10,%esp
 45d:	be 00 00 00 00       	mov    $0x0,%esi
 462:	e9 56 ff ff ff       	jmp    0x3bd
 467:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 46a:	8b 30                	mov    (%eax),%esi
 46c:	83 c0 04             	add    $0x4,%eax
 46f:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 472:	85 f6                	test   %esi,%esi
 474:	75 15                	jne    0x48b
 476:	be 75 06 00 00       	mov    $0x675,%esi
 47b:	eb 0e                	jmp    0x48b
 47d:	0f be d2             	movsbl %dl,%edx
 480:	8b 45 08             	mov    0x8(%ebp),%eax
 483:	e8 64 fe ff ff       	call   0x2ec
 488:	83 c6 01             	add    $0x1,%esi
 48b:	0f b6 16             	movzbl (%esi),%edx
 48e:	84 d2                	test   %dl,%dl
 490:	75 eb                	jne    0x47d
 492:	be 00 00 00 00       	mov    $0x0,%esi
 497:	e9 21 ff ff ff       	jmp    0x3bd
 49c:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 49f:	0f be 17             	movsbl (%edi),%edx
 4a2:	8b 45 08             	mov    0x8(%ebp),%eax
 4a5:	e8 42 fe ff ff       	call   0x2ec
 4aa:	83 c7 04             	add    $0x4,%edi
 4ad:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 4b0:	be 00 00 00 00       	mov    $0x0,%esi
 4b5:	e9 03 ff ff ff       	jmp    0x3bd
 4ba:	89 fa                	mov    %edi,%edx
 4bc:	8b 45 08             	mov    0x8(%ebp),%eax
 4bf:	e8 28 fe ff ff       	call   0x2ec
 4c4:	be 00 00 00 00       	mov    $0x0,%esi
 4c9:	e9 ef fe ff ff       	jmp    0x3bd
 4ce:	ba 25 00 00 00       	mov    $0x25,%edx
 4d3:	8b 45 08             	mov    0x8(%ebp),%eax
 4d6:	e8 11 fe ff ff       	call   0x2ec
 4db:	89 fa                	mov    %edi,%edx
 4dd:	8b 45 08             	mov    0x8(%ebp),%eax
 4e0:	e8 07 fe ff ff       	call   0x2ec
 4e5:	be 00 00 00 00       	mov    $0x0,%esi
 4ea:	e9 ce fe ff ff       	jmp    0x3bd
 4ef:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4f2:	5b                   	pop    %ebx
 4f3:	5e                   	pop    %esi
 4f4:	5f                   	pop    %edi
 4f5:	5d                   	pop    %ebp
 4f6:	c3                   	ret    
 4f7:	f3 0f 1e fb          	endbr32 
 4fb:	55                   	push   %ebp
 4fc:	89 e5                	mov    %esp,%ebp
 4fe:	57                   	push   %edi
 4ff:	56                   	push   %esi
 500:	53                   	push   %ebx
 501:	8b 5d 08             	mov    0x8(%ebp),%ebx
 504:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 507:	a1 80 09 00 00       	mov    0x980,%eax
 50c:	eb 02                	jmp    0x510
 50e:	89 d0                	mov    %edx,%eax
 510:	39 c8                	cmp    %ecx,%eax
 512:	73 04                	jae    0x518
 514:	39 08                	cmp    %ecx,(%eax)
 516:	77 12                	ja     0x52a
 518:	8b 10                	mov    (%eax),%edx
 51a:	39 c2                	cmp    %eax,%edx
 51c:	77 f0                	ja     0x50e
 51e:	39 c8                	cmp    %ecx,%eax
 520:	72 08                	jb     0x52a
 522:	39 ca                	cmp    %ecx,%edx
 524:	77 04                	ja     0x52a
 526:	89 d0                	mov    %edx,%eax
 528:	eb e6                	jmp    0x510
 52a:	8b 73 fc             	mov    -0x4(%ebx),%esi
 52d:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 530:	8b 10                	mov    (%eax),%edx
 532:	39 d7                	cmp    %edx,%edi
 534:	74 19                	je     0x54f
 536:	89 53 f8             	mov    %edx,-0x8(%ebx)
 539:	8b 50 04             	mov    0x4(%eax),%edx
 53c:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 53f:	39 ce                	cmp    %ecx,%esi
 541:	74 1b                	je     0x55e
 543:	89 08                	mov    %ecx,(%eax)
 545:	a3 80 09 00 00       	mov    %eax,0x980
 54a:	5b                   	pop    %ebx
 54b:	5e                   	pop    %esi
 54c:	5f                   	pop    %edi
 54d:	5d                   	pop    %ebp
 54e:	c3                   	ret    
 54f:	03 72 04             	add    0x4(%edx),%esi
 552:	89 73 fc             	mov    %esi,-0x4(%ebx)
 555:	8b 10                	mov    (%eax),%edx
 557:	8b 12                	mov    (%edx),%edx
 559:	89 53 f8             	mov    %edx,-0x8(%ebx)
 55c:	eb db                	jmp    0x539
 55e:	03 53 fc             	add    -0x4(%ebx),%edx
 561:	89 50 04             	mov    %edx,0x4(%eax)
 564:	8b 53 f8             	mov    -0x8(%ebx),%edx
 567:	89 10                	mov    %edx,(%eax)
 569:	eb da                	jmp    0x545
 56b:	55                   	push   %ebp
 56c:	89 e5                	mov    %esp,%ebp
 56e:	53                   	push   %ebx
 56f:	83 ec 04             	sub    $0x4,%esp
 572:	89 c3                	mov    %eax,%ebx
 574:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 579:	77 05                	ja     0x580
 57b:	bb 00 10 00 00       	mov    $0x1000,%ebx
 580:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 587:	83 ec 0c             	sub    $0xc,%esp
 58a:	50                   	push   %eax
 58b:	e8 34 fd ff ff       	call   0x2c4
 590:	83 c4 10             	add    $0x10,%esp
 593:	83 f8 ff             	cmp    $0xffffffff,%eax
 596:	74 1c                	je     0x5b4
 598:	89 58 04             	mov    %ebx,0x4(%eax)
 59b:	83 c0 08             	add    $0x8,%eax
 59e:	83 ec 0c             	sub    $0xc,%esp
 5a1:	50                   	push   %eax
 5a2:	e8 50 ff ff ff       	call   0x4f7
 5a7:	a1 80 09 00 00       	mov    0x980,%eax
 5ac:	83 c4 10             	add    $0x10,%esp
 5af:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 5b2:	c9                   	leave  
 5b3:	c3                   	ret    
 5b4:	b8 00 00 00 00       	mov    $0x0,%eax
 5b9:	eb f4                	jmp    0x5af
 5bb:	f3 0f 1e fb          	endbr32 
 5bf:	55                   	push   %ebp
 5c0:	89 e5                	mov    %esp,%ebp
 5c2:	53                   	push   %ebx
 5c3:	83 ec 04             	sub    $0x4,%esp
 5c6:	8b 45 08             	mov    0x8(%ebp),%eax
 5c9:	8d 58 07             	lea    0x7(%eax),%ebx
 5cc:	c1 eb 03             	shr    $0x3,%ebx
 5cf:	83 c3 01             	add    $0x1,%ebx
 5d2:	8b 0d 80 09 00 00    	mov    0x980,%ecx
 5d8:	85 c9                	test   %ecx,%ecx
 5da:	74 04                	je     0x5e0
 5dc:	8b 01                	mov    (%ecx),%eax
 5de:	eb 4b                	jmp    0x62b
 5e0:	c7 05 80 09 00 00 84 	movl   $0x984,0x980
 5e7:	09 00 00 
 5ea:	c7 05 84 09 00 00 84 	movl   $0x984,0x984
 5f1:	09 00 00 
 5f4:	c7 05 88 09 00 00 00 	movl   $0x0,0x988
 5fb:	00 00 00 
 5fe:	b9 84 09 00 00       	mov    $0x984,%ecx
 603:	eb d7                	jmp    0x5dc
 605:	74 1a                	je     0x621
 607:	29 da                	sub    %ebx,%edx
 609:	89 50 04             	mov    %edx,0x4(%eax)
 60c:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 60f:	89 58 04             	mov    %ebx,0x4(%eax)
 612:	89 0d 80 09 00 00    	mov    %ecx,0x980
 618:	83 c0 08             	add    $0x8,%eax
 61b:	83 c4 04             	add    $0x4,%esp
 61e:	5b                   	pop    %ebx
 61f:	5d                   	pop    %ebp
 620:	c3                   	ret    
 621:	8b 10                	mov    (%eax),%edx
 623:	89 11                	mov    %edx,(%ecx)
 625:	eb eb                	jmp    0x612
 627:	89 c1                	mov    %eax,%ecx
 629:	8b 00                	mov    (%eax),%eax
 62b:	8b 50 04             	mov    0x4(%eax),%edx
 62e:	39 da                	cmp    %ebx,%edx
 630:	73 d3                	jae    0x605
 632:	39 05 80 09 00 00    	cmp    %eax,0x980
 638:	75 ed                	jne    0x627
 63a:	89 d8                	mov    %ebx,%eax
 63c:	e8 2a ff ff ff       	call   0x56b
 641:	85 c0                	test   %eax,%eax
 643:	75 e2                	jne    0x627
 645:	eb d4                	jmp    0x61b
