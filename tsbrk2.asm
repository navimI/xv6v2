
_tsbrk2:     file format elf32-i386


Disassembly of section .text:

00000000 <.text>:
   0:	f3 0f 1e fb          	endbr32 
   4:	55                   	push   %ebp
   5:	89 e5                	mov    %esp,%ebp
   7:	53                   	push   %ebx
   8:	83 ec 1c             	sub    $0x1c,%esp
   b:	68 58 06 00 00       	push   $0x658
  10:	6a 01                	push   $0x1
  12:	e8 8a 03 00 00       	call   0x3a1
  17:	8b 45 08             	mov    0x8(%ebp),%eax
  1a:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1d:	8b 45 f4             	mov    -0xc(%ebp),%eax
  20:	83 c4 10             	add    $0x10,%esp
  23:	85 c0                	test   %eax,%eax
  25:	7f 0a                	jg     0x31
  27:	b8 00 00 00 00       	mov    $0x0,%eax
  2c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  2f:	c9                   	leave  
  30:	c3                   	ret    
  31:	8b 45 f4             	mov    -0xc(%ebp),%eax
  34:	83 ec 0c             	sub    $0xc,%esp
  37:	83 c0 01             	add    $0x1,%eax
  3a:	50                   	push   %eax
  3b:	e8 c0 ff ff ff       	call   0x0
  40:	89 c3                	mov    %eax,%ebx
  42:	8b 45 f4             	mov    -0xc(%ebp),%eax
  45:	83 c0 02             	add    $0x2,%eax
  48:	89 04 24             	mov    %eax,(%esp)
  4b:	e8 b0 ff ff ff       	call   0x0
  50:	01 d8                	add    %ebx,%eax
  52:	83 c4 10             	add    $0x10,%esp
  55:	eb d5                	jmp    0x2c
  57:	f3 0f 1e fb          	endbr32 
  5b:	8d 4c 24 04          	lea    0x4(%esp),%ecx
  5f:	83 e4 f0             	and    $0xfffffff0,%esp
  62:	ff 71 fc             	push   -0x4(%ecx)
  65:	55                   	push   %ebp
  66:	89 e5                	mov    %esp,%ebp
  68:	51                   	push   %ecx
  69:	83 ec 10             	sub    $0x10,%esp
  6c:	6a 01                	push   $0x1
  6e:	e8 8d ff ff ff       	call   0x0
  73:	83 c4 0c             	add    $0xc,%esp
  76:	50                   	push   %eax
  77:	68 5a 06 00 00       	push   $0x65a
  7c:	6a 01                	push   $0x1
  7e:	e8 1e 03 00 00       	call   0x3a1
  83:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  8a:	e8 bd 01 00 00       	call   0x24c
  8f:	f3 0f 1e fb          	endbr32 
  93:	55                   	push   %ebp
  94:	89 e5                	mov    %esp,%ebp
  96:	56                   	push   %esi
  97:	53                   	push   %ebx
  98:	8b 75 08             	mov    0x8(%ebp),%esi
  9b:	8b 55 0c             	mov    0xc(%ebp),%edx
  9e:	89 f0                	mov    %esi,%eax
  a0:	89 d1                	mov    %edx,%ecx
  a2:	83 c2 01             	add    $0x1,%edx
  a5:	89 c3                	mov    %eax,%ebx
  a7:	83 c0 01             	add    $0x1,%eax
  aa:	0f b6 09             	movzbl (%ecx),%ecx
  ad:	88 0b                	mov    %cl,(%ebx)
  af:	84 c9                	test   %cl,%cl
  b1:	75 ed                	jne    0xa0
  b3:	89 f0                	mov    %esi,%eax
  b5:	5b                   	pop    %ebx
  b6:	5e                   	pop    %esi
  b7:	5d                   	pop    %ebp
  b8:	c3                   	ret    
  b9:	f3 0f 1e fb          	endbr32 
  bd:	55                   	push   %ebp
  be:	89 e5                	mov    %esp,%ebp
  c0:	8b 4d 08             	mov    0x8(%ebp),%ecx
  c3:	8b 55 0c             	mov    0xc(%ebp),%edx
  c6:	0f b6 01             	movzbl (%ecx),%eax
  c9:	84 c0                	test   %al,%al
  cb:	74 0c                	je     0xd9
  cd:	3a 02                	cmp    (%edx),%al
  cf:	75 08                	jne    0xd9
  d1:	83 c1 01             	add    $0x1,%ecx
  d4:	83 c2 01             	add    $0x1,%edx
  d7:	eb ed                	jmp    0xc6
  d9:	0f b6 c0             	movzbl %al,%eax
  dc:	0f b6 12             	movzbl (%edx),%edx
  df:	29 d0                	sub    %edx,%eax
  e1:	5d                   	pop    %ebp
  e2:	c3                   	ret    
  e3:	f3 0f 1e fb          	endbr32 
  e7:	55                   	push   %ebp
  e8:	89 e5                	mov    %esp,%ebp
  ea:	8b 4d 08             	mov    0x8(%ebp),%ecx
  ed:	b8 00 00 00 00       	mov    $0x0,%eax
  f2:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
  f6:	74 05                	je     0xfd
  f8:	83 c0 01             	add    $0x1,%eax
  fb:	eb f5                	jmp    0xf2
  fd:	5d                   	pop    %ebp
  fe:	c3                   	ret    
  ff:	f3 0f 1e fb          	endbr32 
 103:	55                   	push   %ebp
 104:	89 e5                	mov    %esp,%ebp
 106:	57                   	push   %edi
 107:	8b 55 08             	mov    0x8(%ebp),%edx
 10a:	89 d7                	mov    %edx,%edi
 10c:	8b 4d 10             	mov    0x10(%ebp),%ecx
 10f:	8b 45 0c             	mov    0xc(%ebp),%eax
 112:	fc                   	cld    
 113:	f3 aa                	rep stos %al,%es:(%edi)
 115:	89 d0                	mov    %edx,%eax
 117:	5f                   	pop    %edi
 118:	5d                   	pop    %ebp
 119:	c3                   	ret    
 11a:	f3 0f 1e fb          	endbr32 
 11e:	55                   	push   %ebp
 11f:	89 e5                	mov    %esp,%ebp
 121:	8b 45 08             	mov    0x8(%ebp),%eax
 124:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
 128:	0f b6 10             	movzbl (%eax),%edx
 12b:	84 d2                	test   %dl,%dl
 12d:	74 09                	je     0x138
 12f:	38 ca                	cmp    %cl,%dl
 131:	74 0a                	je     0x13d
 133:	83 c0 01             	add    $0x1,%eax
 136:	eb f0                	jmp    0x128
 138:	b8 00 00 00 00       	mov    $0x0,%eax
 13d:	5d                   	pop    %ebp
 13e:	c3                   	ret    
 13f:	f3 0f 1e fb          	endbr32 
 143:	55                   	push   %ebp
 144:	89 e5                	mov    %esp,%ebp
 146:	57                   	push   %edi
 147:	56                   	push   %esi
 148:	53                   	push   %ebx
 149:	83 ec 1c             	sub    $0x1c,%esp
 14c:	8b 7d 08             	mov    0x8(%ebp),%edi
 14f:	bb 00 00 00 00       	mov    $0x0,%ebx
 154:	89 de                	mov    %ebx,%esi
 156:	83 c3 01             	add    $0x1,%ebx
 159:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 15c:	7d 2e                	jge    0x18c
 15e:	83 ec 04             	sub    $0x4,%esp
 161:	6a 01                	push   $0x1
 163:	8d 45 e7             	lea    -0x19(%ebp),%eax
 166:	50                   	push   %eax
 167:	6a 00                	push   $0x0
 169:	e8 f6 00 00 00       	call   0x264
 16e:	83 c4 10             	add    $0x10,%esp
 171:	85 c0                	test   %eax,%eax
 173:	7e 17                	jle    0x18c
 175:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 179:	88 04 37             	mov    %al,(%edi,%esi,1)
 17c:	3c 0a                	cmp    $0xa,%al
 17e:	0f 94 c2             	sete   %dl
 181:	3c 0d                	cmp    $0xd,%al
 183:	0f 94 c0             	sete   %al
 186:	08 c2                	or     %al,%dl
 188:	74 ca                	je     0x154
 18a:	89 de                	mov    %ebx,%esi
 18c:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 190:	89 f8                	mov    %edi,%eax
 192:	8d 65 f4             	lea    -0xc(%ebp),%esp
 195:	5b                   	pop    %ebx
 196:	5e                   	pop    %esi
 197:	5f                   	pop    %edi
 198:	5d                   	pop    %ebp
 199:	c3                   	ret    
 19a:	f3 0f 1e fb          	endbr32 
 19e:	55                   	push   %ebp
 19f:	89 e5                	mov    %esp,%ebp
 1a1:	56                   	push   %esi
 1a2:	53                   	push   %ebx
 1a3:	83 ec 08             	sub    $0x8,%esp
 1a6:	6a 00                	push   $0x0
 1a8:	ff 75 08             	push   0x8(%ebp)
 1ab:	e8 dc 00 00 00       	call   0x28c
 1b0:	83 c4 10             	add    $0x10,%esp
 1b3:	85 c0                	test   %eax,%eax
 1b5:	78 24                	js     0x1db
 1b7:	89 c3                	mov    %eax,%ebx
 1b9:	83 ec 08             	sub    $0x8,%esp
 1bc:	ff 75 0c             	push   0xc(%ebp)
 1bf:	50                   	push   %eax
 1c0:	e8 df 00 00 00       	call   0x2a4
 1c5:	89 c6                	mov    %eax,%esi
 1c7:	89 1c 24             	mov    %ebx,(%esp)
 1ca:	e8 a5 00 00 00       	call   0x274
 1cf:	83 c4 10             	add    $0x10,%esp
 1d2:	89 f0                	mov    %esi,%eax
 1d4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 1d7:	5b                   	pop    %ebx
 1d8:	5e                   	pop    %esi
 1d9:	5d                   	pop    %ebp
 1da:	c3                   	ret    
 1db:	be ff ff ff ff       	mov    $0xffffffff,%esi
 1e0:	eb f0                	jmp    0x1d2
 1e2:	f3 0f 1e fb          	endbr32 
 1e6:	55                   	push   %ebp
 1e7:	89 e5                	mov    %esp,%ebp
 1e9:	53                   	push   %ebx
 1ea:	8b 4d 08             	mov    0x8(%ebp),%ecx
 1ed:	ba 00 00 00 00       	mov    $0x0,%edx
 1f2:	0f b6 01             	movzbl (%ecx),%eax
 1f5:	8d 58 d0             	lea    -0x30(%eax),%ebx
 1f8:	80 fb 09             	cmp    $0x9,%bl
 1fb:	77 12                	ja     0x20f
 1fd:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 200:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 203:	83 c1 01             	add    $0x1,%ecx
 206:	0f be c0             	movsbl %al,%eax
 209:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 20d:	eb e3                	jmp    0x1f2
 20f:	89 d0                	mov    %edx,%eax
 211:	5b                   	pop    %ebx
 212:	5d                   	pop    %ebp
 213:	c3                   	ret    
 214:	f3 0f 1e fb          	endbr32 
 218:	55                   	push   %ebp
 219:	89 e5                	mov    %esp,%ebp
 21b:	56                   	push   %esi
 21c:	53                   	push   %ebx
 21d:	8b 75 08             	mov    0x8(%ebp),%esi
 220:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 223:	8b 45 10             	mov    0x10(%ebp),%eax
 226:	89 f2                	mov    %esi,%edx
 228:	8d 58 ff             	lea    -0x1(%eax),%ebx
 22b:	85 c0                	test   %eax,%eax
 22d:	7e 0f                	jle    0x23e
 22f:	0f b6 01             	movzbl (%ecx),%eax
 232:	88 02                	mov    %al,(%edx)
 234:	8d 49 01             	lea    0x1(%ecx),%ecx
 237:	8d 52 01             	lea    0x1(%edx),%edx
 23a:	89 d8                	mov    %ebx,%eax
 23c:	eb ea                	jmp    0x228
 23e:	89 f0                	mov    %esi,%eax
 240:	5b                   	pop    %ebx
 241:	5e                   	pop    %esi
 242:	5d                   	pop    %ebp
 243:	c3                   	ret    
 244:	b8 01 00 00 00       	mov    $0x1,%eax
 249:	cd 40                	int    $0x40
 24b:	c3                   	ret    
 24c:	b8 02 00 00 00       	mov    $0x2,%eax
 251:	cd 40                	int    $0x40
 253:	c3                   	ret    
 254:	b8 03 00 00 00       	mov    $0x3,%eax
 259:	cd 40                	int    $0x40
 25b:	c3                   	ret    
 25c:	b8 04 00 00 00       	mov    $0x4,%eax
 261:	cd 40                	int    $0x40
 263:	c3                   	ret    
 264:	b8 05 00 00 00       	mov    $0x5,%eax
 269:	cd 40                	int    $0x40
 26b:	c3                   	ret    
 26c:	b8 10 00 00 00       	mov    $0x10,%eax
 271:	cd 40                	int    $0x40
 273:	c3                   	ret    
 274:	b8 15 00 00 00       	mov    $0x15,%eax
 279:	cd 40                	int    $0x40
 27b:	c3                   	ret    
 27c:	b8 06 00 00 00       	mov    $0x6,%eax
 281:	cd 40                	int    $0x40
 283:	c3                   	ret    
 284:	b8 07 00 00 00       	mov    $0x7,%eax
 289:	cd 40                	int    $0x40
 28b:	c3                   	ret    
 28c:	b8 0f 00 00 00       	mov    $0xf,%eax
 291:	cd 40                	int    $0x40
 293:	c3                   	ret    
 294:	b8 11 00 00 00       	mov    $0x11,%eax
 299:	cd 40                	int    $0x40
 29b:	c3                   	ret    
 29c:	b8 12 00 00 00       	mov    $0x12,%eax
 2a1:	cd 40                	int    $0x40
 2a3:	c3                   	ret    
 2a4:	b8 08 00 00 00       	mov    $0x8,%eax
 2a9:	cd 40                	int    $0x40
 2ab:	c3                   	ret    
 2ac:	b8 13 00 00 00       	mov    $0x13,%eax
 2b1:	cd 40                	int    $0x40
 2b3:	c3                   	ret    
 2b4:	b8 14 00 00 00       	mov    $0x14,%eax
 2b9:	cd 40                	int    $0x40
 2bb:	c3                   	ret    
 2bc:	b8 09 00 00 00       	mov    $0x9,%eax
 2c1:	cd 40                	int    $0x40
 2c3:	c3                   	ret    
 2c4:	b8 0a 00 00 00       	mov    $0xa,%eax
 2c9:	cd 40                	int    $0x40
 2cb:	c3                   	ret    
 2cc:	b8 0b 00 00 00       	mov    $0xb,%eax
 2d1:	cd 40                	int    $0x40
 2d3:	c3                   	ret    
 2d4:	b8 0c 00 00 00       	mov    $0xc,%eax
 2d9:	cd 40                	int    $0x40
 2db:	c3                   	ret    
 2dc:	b8 0d 00 00 00       	mov    $0xd,%eax
 2e1:	cd 40                	int    $0x40
 2e3:	c3                   	ret    
 2e4:	b8 0e 00 00 00       	mov    $0xe,%eax
 2e9:	cd 40                	int    $0x40
 2eb:	c3                   	ret    
 2ec:	b8 16 00 00 00       	mov    $0x16,%eax
 2f1:	cd 40                	int    $0x40
 2f3:	c3                   	ret    
 2f4:	b8 17 00 00 00       	mov    $0x17,%eax
 2f9:	cd 40                	int    $0x40
 2fb:	c3                   	ret    
 2fc:	55                   	push   %ebp
 2fd:	89 e5                	mov    %esp,%ebp
 2ff:	83 ec 1c             	sub    $0x1c,%esp
 302:	88 55 f4             	mov    %dl,-0xc(%ebp)
 305:	6a 01                	push   $0x1
 307:	8d 55 f4             	lea    -0xc(%ebp),%edx
 30a:	52                   	push   %edx
 30b:	50                   	push   %eax
 30c:	e8 5b ff ff ff       	call   0x26c
 311:	83 c4 10             	add    $0x10,%esp
 314:	c9                   	leave  
 315:	c3                   	ret    
 316:	55                   	push   %ebp
 317:	89 e5                	mov    %esp,%ebp
 319:	57                   	push   %edi
 31a:	56                   	push   %esi
 31b:	53                   	push   %ebx
 31c:	83 ec 2c             	sub    $0x2c,%esp
 31f:	89 45 d0             	mov    %eax,-0x30(%ebp)
 322:	89 d0                	mov    %edx,%eax
 324:	89 ce                	mov    %ecx,%esi
 326:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 32a:	0f 95 c1             	setne  %cl
 32d:	c1 ea 1f             	shr    $0x1f,%edx
 330:	84 d1                	test   %dl,%cl
 332:	74 44                	je     0x378
 334:	f7 d8                	neg    %eax
 336:	89 c1                	mov    %eax,%ecx
 338:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 33f:	bb 00 00 00 00       	mov    $0x0,%ebx
 344:	89 c8                	mov    %ecx,%eax
 346:	ba 00 00 00 00       	mov    $0x0,%edx
 34b:	f7 f6                	div    %esi
 34d:	89 df                	mov    %ebx,%edi
 34f:	83 c3 01             	add    $0x1,%ebx
 352:	0f b6 92 c0 06 00 00 	movzbl 0x6c0(%edx),%edx
 359:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 35d:	89 ca                	mov    %ecx,%edx
 35f:	89 c1                	mov    %eax,%ecx
 361:	39 d6                	cmp    %edx,%esi
 363:	76 df                	jbe    0x344
 365:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 369:	74 31                	je     0x39c
 36b:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 370:	8d 5f 02             	lea    0x2(%edi),%ebx
 373:	8b 75 d0             	mov    -0x30(%ebp),%esi
 376:	eb 17                	jmp    0x38f
 378:	89 c1                	mov    %eax,%ecx
 37a:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 381:	eb bc                	jmp    0x33f
 383:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 388:	89 f0                	mov    %esi,%eax
 38a:	e8 6d ff ff ff       	call   0x2fc
 38f:	83 eb 01             	sub    $0x1,%ebx
 392:	79 ef                	jns    0x383
 394:	83 c4 2c             	add    $0x2c,%esp
 397:	5b                   	pop    %ebx
 398:	5e                   	pop    %esi
 399:	5f                   	pop    %edi
 39a:	5d                   	pop    %ebp
 39b:	c3                   	ret    
 39c:	8b 75 d0             	mov    -0x30(%ebp),%esi
 39f:	eb ee                	jmp    0x38f
 3a1:	55                   	push   %ebp
 3a2:	89 e5                	mov    %esp,%ebp
 3a4:	57                   	push   %edi
 3a5:	56                   	push   %esi
 3a6:	53                   	push   %ebx
 3a7:	83 ec 1c             	sub    $0x1c,%esp
 3aa:	8d 45 10             	lea    0x10(%ebp),%eax
 3ad:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 3b0:	be 00 00 00 00       	mov    $0x0,%esi
 3b5:	bb 00 00 00 00       	mov    $0x0,%ebx
 3ba:	eb 14                	jmp    0x3d0
 3bc:	89 fa                	mov    %edi,%edx
 3be:	8b 45 08             	mov    0x8(%ebp),%eax
 3c1:	e8 36 ff ff ff       	call   0x2fc
 3c6:	eb 05                	jmp    0x3cd
 3c8:	83 fe 25             	cmp    $0x25,%esi
 3cb:	74 25                	je     0x3f2
 3cd:	83 c3 01             	add    $0x1,%ebx
 3d0:	8b 45 0c             	mov    0xc(%ebp),%eax
 3d3:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 3d7:	84 c0                	test   %al,%al
 3d9:	0f 84 20 01 00 00    	je     0x4ff
 3df:	0f be f8             	movsbl %al,%edi
 3e2:	0f b6 c0             	movzbl %al,%eax
 3e5:	85 f6                	test   %esi,%esi
 3e7:	75 df                	jne    0x3c8
 3e9:	83 f8 25             	cmp    $0x25,%eax
 3ec:	75 ce                	jne    0x3bc
 3ee:	89 c6                	mov    %eax,%esi
 3f0:	eb db                	jmp    0x3cd
 3f2:	83 f8 25             	cmp    $0x25,%eax
 3f5:	0f 84 cf 00 00 00    	je     0x4ca
 3fb:	0f 8c dd 00 00 00    	jl     0x4de
 401:	83 f8 78             	cmp    $0x78,%eax
 404:	0f 8f d4 00 00 00    	jg     0x4de
 40a:	83 f8 63             	cmp    $0x63,%eax
 40d:	0f 8c cb 00 00 00    	jl     0x4de
 413:	83 e8 63             	sub    $0x63,%eax
 416:	83 f8 15             	cmp    $0x15,%eax
 419:	0f 87 bf 00 00 00    	ja     0x4de
 41f:	ff 24 85 68 06 00 00 	jmp    *0x668(,%eax,4)
 426:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 429:	8b 17                	mov    (%edi),%edx
 42b:	83 ec 0c             	sub    $0xc,%esp
 42e:	6a 01                	push   $0x1
 430:	b9 0a 00 00 00       	mov    $0xa,%ecx
 435:	8b 45 08             	mov    0x8(%ebp),%eax
 438:	e8 d9 fe ff ff       	call   0x316
 43d:	83 c7 04             	add    $0x4,%edi
 440:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 443:	83 c4 10             	add    $0x10,%esp
 446:	be 00 00 00 00       	mov    $0x0,%esi
 44b:	eb 80                	jmp    0x3cd
 44d:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 450:	8b 17                	mov    (%edi),%edx
 452:	83 ec 0c             	sub    $0xc,%esp
 455:	6a 00                	push   $0x0
 457:	b9 10 00 00 00       	mov    $0x10,%ecx
 45c:	8b 45 08             	mov    0x8(%ebp),%eax
 45f:	e8 b2 fe ff ff       	call   0x316
 464:	83 c7 04             	add    $0x4,%edi
 467:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 46a:	83 c4 10             	add    $0x10,%esp
 46d:	be 00 00 00 00       	mov    $0x0,%esi
 472:	e9 56 ff ff ff       	jmp    0x3cd
 477:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 47a:	8b 30                	mov    (%eax),%esi
 47c:	83 c0 04             	add    $0x4,%eax
 47f:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 482:	85 f6                	test   %esi,%esi
 484:	75 15                	jne    0x49b
 486:	be 60 06 00 00       	mov    $0x660,%esi
 48b:	eb 0e                	jmp    0x49b
 48d:	0f be d2             	movsbl %dl,%edx
 490:	8b 45 08             	mov    0x8(%ebp),%eax
 493:	e8 64 fe ff ff       	call   0x2fc
 498:	83 c6 01             	add    $0x1,%esi
 49b:	0f b6 16             	movzbl (%esi),%edx
 49e:	84 d2                	test   %dl,%dl
 4a0:	75 eb                	jne    0x48d
 4a2:	be 00 00 00 00       	mov    $0x0,%esi
 4a7:	e9 21 ff ff ff       	jmp    0x3cd
 4ac:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 4af:	0f be 17             	movsbl (%edi),%edx
 4b2:	8b 45 08             	mov    0x8(%ebp),%eax
 4b5:	e8 42 fe ff ff       	call   0x2fc
 4ba:	83 c7 04             	add    $0x4,%edi
 4bd:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 4c0:	be 00 00 00 00       	mov    $0x0,%esi
 4c5:	e9 03 ff ff ff       	jmp    0x3cd
 4ca:	89 fa                	mov    %edi,%edx
 4cc:	8b 45 08             	mov    0x8(%ebp),%eax
 4cf:	e8 28 fe ff ff       	call   0x2fc
 4d4:	be 00 00 00 00       	mov    $0x0,%esi
 4d9:	e9 ef fe ff ff       	jmp    0x3cd
 4de:	ba 25 00 00 00       	mov    $0x25,%edx
 4e3:	8b 45 08             	mov    0x8(%ebp),%eax
 4e6:	e8 11 fe ff ff       	call   0x2fc
 4eb:	89 fa                	mov    %edi,%edx
 4ed:	8b 45 08             	mov    0x8(%ebp),%eax
 4f0:	e8 07 fe ff ff       	call   0x2fc
 4f5:	be 00 00 00 00       	mov    $0x0,%esi
 4fa:	e9 ce fe ff ff       	jmp    0x3cd
 4ff:	8d 65 f4             	lea    -0xc(%ebp),%esp
 502:	5b                   	pop    %ebx
 503:	5e                   	pop    %esi
 504:	5f                   	pop    %edi
 505:	5d                   	pop    %ebp
 506:	c3                   	ret    
 507:	f3 0f 1e fb          	endbr32 
 50b:	55                   	push   %ebp
 50c:	89 e5                	mov    %esp,%ebp
 50e:	57                   	push   %edi
 50f:	56                   	push   %esi
 510:	53                   	push   %ebx
 511:	8b 5d 08             	mov    0x8(%ebp),%ebx
 514:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 517:	a1 a0 19 00 00       	mov    0x19a0,%eax
 51c:	eb 02                	jmp    0x520
 51e:	89 d0                	mov    %edx,%eax
 520:	39 c8                	cmp    %ecx,%eax
 522:	73 04                	jae    0x528
 524:	39 08                	cmp    %ecx,(%eax)
 526:	77 12                	ja     0x53a
 528:	8b 10                	mov    (%eax),%edx
 52a:	39 c2                	cmp    %eax,%edx
 52c:	77 f0                	ja     0x51e
 52e:	39 c8                	cmp    %ecx,%eax
 530:	72 08                	jb     0x53a
 532:	39 ca                	cmp    %ecx,%edx
 534:	77 04                	ja     0x53a
 536:	89 d0                	mov    %edx,%eax
 538:	eb e6                	jmp    0x520
 53a:	8b 73 fc             	mov    -0x4(%ebx),%esi
 53d:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 540:	8b 10                	mov    (%eax),%edx
 542:	39 d7                	cmp    %edx,%edi
 544:	74 19                	je     0x55f
 546:	89 53 f8             	mov    %edx,-0x8(%ebx)
 549:	8b 50 04             	mov    0x4(%eax),%edx
 54c:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 54f:	39 ce                	cmp    %ecx,%esi
 551:	74 1b                	je     0x56e
 553:	89 08                	mov    %ecx,(%eax)
 555:	a3 a0 19 00 00       	mov    %eax,0x19a0
 55a:	5b                   	pop    %ebx
 55b:	5e                   	pop    %esi
 55c:	5f                   	pop    %edi
 55d:	5d                   	pop    %ebp
 55e:	c3                   	ret    
 55f:	03 72 04             	add    0x4(%edx),%esi
 562:	89 73 fc             	mov    %esi,-0x4(%ebx)
 565:	8b 10                	mov    (%eax),%edx
 567:	8b 12                	mov    (%edx),%edx
 569:	89 53 f8             	mov    %edx,-0x8(%ebx)
 56c:	eb db                	jmp    0x549
 56e:	03 53 fc             	add    -0x4(%ebx),%edx
 571:	89 50 04             	mov    %edx,0x4(%eax)
 574:	8b 53 f8             	mov    -0x8(%ebx),%edx
 577:	89 10                	mov    %edx,(%eax)
 579:	eb da                	jmp    0x555
 57b:	55                   	push   %ebp
 57c:	89 e5                	mov    %esp,%ebp
 57e:	53                   	push   %ebx
 57f:	83 ec 04             	sub    $0x4,%esp
 582:	89 c3                	mov    %eax,%ebx
 584:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 589:	77 05                	ja     0x590
 58b:	bb 00 10 00 00       	mov    $0x1000,%ebx
 590:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 597:	83 ec 0c             	sub    $0xc,%esp
 59a:	50                   	push   %eax
 59b:	e8 34 fd ff ff       	call   0x2d4
 5a0:	83 c4 10             	add    $0x10,%esp
 5a3:	83 f8 ff             	cmp    $0xffffffff,%eax
 5a6:	74 1c                	je     0x5c4
 5a8:	89 58 04             	mov    %ebx,0x4(%eax)
 5ab:	83 c0 08             	add    $0x8,%eax
 5ae:	83 ec 0c             	sub    $0xc,%esp
 5b1:	50                   	push   %eax
 5b2:	e8 50 ff ff ff       	call   0x507
 5b7:	a1 a0 19 00 00       	mov    0x19a0,%eax
 5bc:	83 c4 10             	add    $0x10,%esp
 5bf:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 5c2:	c9                   	leave  
 5c3:	c3                   	ret    
 5c4:	b8 00 00 00 00       	mov    $0x0,%eax
 5c9:	eb f4                	jmp    0x5bf
 5cb:	f3 0f 1e fb          	endbr32 
 5cf:	55                   	push   %ebp
 5d0:	89 e5                	mov    %esp,%ebp
 5d2:	53                   	push   %ebx
 5d3:	83 ec 04             	sub    $0x4,%esp
 5d6:	8b 45 08             	mov    0x8(%ebp),%eax
 5d9:	8d 58 07             	lea    0x7(%eax),%ebx
 5dc:	c1 eb 03             	shr    $0x3,%ebx
 5df:	83 c3 01             	add    $0x1,%ebx
 5e2:	8b 0d a0 19 00 00    	mov    0x19a0,%ecx
 5e8:	85 c9                	test   %ecx,%ecx
 5ea:	74 04                	je     0x5f0
 5ec:	8b 01                	mov    (%ecx),%eax
 5ee:	eb 4b                	jmp    0x63b
 5f0:	c7 05 a0 19 00 00 a4 	movl   $0x19a4,0x19a0
 5f7:	19 00 00 
 5fa:	c7 05 a4 19 00 00 a4 	movl   $0x19a4,0x19a4
 601:	19 00 00 
 604:	c7 05 a8 19 00 00 00 	movl   $0x0,0x19a8
 60b:	00 00 00 
 60e:	b9 a4 19 00 00       	mov    $0x19a4,%ecx
 613:	eb d7                	jmp    0x5ec
 615:	74 1a                	je     0x631
 617:	29 da                	sub    %ebx,%edx
 619:	89 50 04             	mov    %edx,0x4(%eax)
 61c:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 61f:	89 58 04             	mov    %ebx,0x4(%eax)
 622:	89 0d a0 19 00 00    	mov    %ecx,0x19a0
 628:	83 c0 08             	add    $0x8,%eax
 62b:	83 c4 04             	add    $0x4,%esp
 62e:	5b                   	pop    %ebx
 62f:	5d                   	pop    %ebp
 630:	c3                   	ret    
 631:	8b 10                	mov    (%eax),%edx
 633:	89 11                	mov    %edx,(%ecx)
 635:	eb eb                	jmp    0x622
 637:	89 c1                	mov    %eax,%ecx
 639:	8b 00                	mov    (%eax),%eax
 63b:	8b 50 04             	mov    0x4(%eax),%edx
 63e:	39 da                	cmp    %ebx,%edx
 640:	73 d3                	jae    0x615
 642:	39 05 a0 19 00 00    	cmp    %eax,0x19a0
 648:	75 ed                	jne    0x637
 64a:	89 d8                	mov    %ebx,%eax
 64c:	e8 2a ff ff ff       	call   0x57b
 651:	85 c0                	test   %eax,%eax
 653:	75 e2                	jne    0x637
 655:	eb d4                	jmp    0x62b
