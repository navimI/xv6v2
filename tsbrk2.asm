
_tsbrk2:     formato del fichero elf32-i386


Desensamblado de la sección .text:

00000000 <.text>:
   0:	f3 0f 1e fb          	endbr32 
   4:	55                   	push   %ebp
   5:	89 e5                	mov    %esp,%ebp
   7:	53                   	push   %ebx
   8:	83 ec 1c             	sub    $0x1c,%esp
   b:	68 5c 06 00 00       	push   $0x65c
  10:	6a 01                	push   $0x1
  12:	e8 86 03 00 00       	call   0x39d
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
  62:	ff 71 fc             	pushl  -0x4(%ecx)
  65:	55                   	push   %ebp
  66:	89 e5                	mov    %esp,%ebp
  68:	51                   	push   %ecx
  69:	83 ec 10             	sub    $0x10,%esp
  6c:	6a 01                	push   $0x1
  6e:	e8 8d ff ff ff       	call   0x0
  73:	83 c4 0c             	add    $0xc,%esp
  76:	50                   	push   %eax
  77:	68 5e 06 00 00       	push   $0x65e
  7c:	6a 01                	push   $0x1
  7e:	e8 1a 03 00 00       	call   0x39d
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
 1a8:	ff 75 08             	pushl  0x8(%ebp)
 1ab:	e8 dc 00 00 00       	call   0x28c
 1b0:	83 c4 10             	add    $0x10,%esp
 1b3:	85 c0                	test   %eax,%eax
 1b5:	78 24                	js     0x1db
 1b7:	89 c3                	mov    %eax,%ebx
 1b9:	83 ec 08             	sub    $0x8,%esp
 1bc:	ff 75 0c             	pushl  0xc(%ebp)
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
 322:	89 d6                	mov    %edx,%esi
 324:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 328:	0f 95 c2             	setne  %dl
 32b:	89 f0                	mov    %esi,%eax
 32d:	c1 e8 1f             	shr    $0x1f,%eax
 330:	84 c2                	test   %al,%dl
 332:	74 42                	je     0x376
 334:	f7 de                	neg    %esi
 336:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 33d:	bb 00 00 00 00       	mov    $0x0,%ebx
 342:	89 f0                	mov    %esi,%eax
 344:	ba 00 00 00 00       	mov    $0x0,%edx
 349:	f7 f1                	div    %ecx
 34b:	89 df                	mov    %ebx,%edi
 34d:	83 c3 01             	add    $0x1,%ebx
 350:	0f b6 92 6c 06 00 00 	movzbl 0x66c(%edx),%edx
 357:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 35b:	89 f2                	mov    %esi,%edx
 35d:	89 c6                	mov    %eax,%esi
 35f:	39 d1                	cmp    %edx,%ecx
 361:	76 df                	jbe    0x342
 363:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 367:	74 2f                	je     0x398
 369:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 36e:	8d 5f 02             	lea    0x2(%edi),%ebx
 371:	8b 75 d0             	mov    -0x30(%ebp),%esi
 374:	eb 15                	jmp    0x38b
 376:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 37d:	eb be                	jmp    0x33d
 37f:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 384:	89 f0                	mov    %esi,%eax
 386:	e8 71 ff ff ff       	call   0x2fc
 38b:	83 eb 01             	sub    $0x1,%ebx
 38e:	79 ef                	jns    0x37f
 390:	83 c4 2c             	add    $0x2c,%esp
 393:	5b                   	pop    %ebx
 394:	5e                   	pop    %esi
 395:	5f                   	pop    %edi
 396:	5d                   	pop    %ebp
 397:	c3                   	ret    
 398:	8b 75 d0             	mov    -0x30(%ebp),%esi
 39b:	eb ee                	jmp    0x38b
 39d:	f3 0f 1e fb          	endbr32 
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
 3d9:	0f 84 23 01 00 00    	je     0x502
 3df:	0f be f8             	movsbl %al,%edi
 3e2:	0f b6 c0             	movzbl %al,%eax
 3e5:	85 f6                	test   %esi,%esi
 3e7:	75 df                	jne    0x3c8
 3e9:	83 f8 25             	cmp    $0x25,%eax
 3ec:	75 ce                	jne    0x3bc
 3ee:	89 c6                	mov    %eax,%esi
 3f0:	eb db                	jmp    0x3cd
 3f2:	83 f8 64             	cmp    $0x64,%eax
 3f5:	74 49                	je     0x440
 3f7:	83 f8 78             	cmp    $0x78,%eax
 3fa:	0f 94 c1             	sete   %cl
 3fd:	83 f8 70             	cmp    $0x70,%eax
 400:	0f 94 c2             	sete   %dl
 403:	08 d1                	or     %dl,%cl
 405:	75 63                	jne    0x46a
 407:	83 f8 73             	cmp    $0x73,%eax
 40a:	0f 84 84 00 00 00    	je     0x494
 410:	83 f8 63             	cmp    $0x63,%eax
 413:	0f 84 b7 00 00 00    	je     0x4d0
 419:	83 f8 25             	cmp    $0x25,%eax
 41c:	0f 84 cc 00 00 00    	je     0x4ee
 422:	ba 25 00 00 00       	mov    $0x25,%edx
 427:	8b 45 08             	mov    0x8(%ebp),%eax
 42a:	e8 cd fe ff ff       	call   0x2fc
 42f:	89 fa                	mov    %edi,%edx
 431:	8b 45 08             	mov    0x8(%ebp),%eax
 434:	e8 c3 fe ff ff       	call   0x2fc
 439:	be 00 00 00 00       	mov    $0x0,%esi
 43e:	eb 8d                	jmp    0x3cd
 440:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 443:	8b 17                	mov    (%edi),%edx
 445:	83 ec 0c             	sub    $0xc,%esp
 448:	6a 01                	push   $0x1
 44a:	b9 0a 00 00 00       	mov    $0xa,%ecx
 44f:	8b 45 08             	mov    0x8(%ebp),%eax
 452:	e8 bf fe ff ff       	call   0x316
 457:	83 c7 04             	add    $0x4,%edi
 45a:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 45d:	83 c4 10             	add    $0x10,%esp
 460:	be 00 00 00 00       	mov    $0x0,%esi
 465:	e9 63 ff ff ff       	jmp    0x3cd
 46a:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 46d:	8b 17                	mov    (%edi),%edx
 46f:	83 ec 0c             	sub    $0xc,%esp
 472:	6a 00                	push   $0x0
 474:	b9 10 00 00 00       	mov    $0x10,%ecx
 479:	8b 45 08             	mov    0x8(%ebp),%eax
 47c:	e8 95 fe ff ff       	call   0x316
 481:	83 c7 04             	add    $0x4,%edi
 484:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 487:	83 c4 10             	add    $0x10,%esp
 48a:	be 00 00 00 00       	mov    $0x0,%esi
 48f:	e9 39 ff ff ff       	jmp    0x3cd
 494:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 497:	8b 30                	mov    (%eax),%esi
 499:	83 c0 04             	add    $0x4,%eax
 49c:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 49f:	85 f6                	test   %esi,%esi
 4a1:	75 28                	jne    0x4cb
 4a3:	be 64 06 00 00       	mov    $0x664,%esi
 4a8:	8b 7d 08             	mov    0x8(%ebp),%edi
 4ab:	eb 0d                	jmp    0x4ba
 4ad:	0f be d2             	movsbl %dl,%edx
 4b0:	89 f8                	mov    %edi,%eax
 4b2:	e8 45 fe ff ff       	call   0x2fc
 4b7:	83 c6 01             	add    $0x1,%esi
 4ba:	0f b6 16             	movzbl (%esi),%edx
 4bd:	84 d2                	test   %dl,%dl
 4bf:	75 ec                	jne    0x4ad
 4c1:	be 00 00 00 00       	mov    $0x0,%esi
 4c6:	e9 02 ff ff ff       	jmp    0x3cd
 4cb:	8b 7d 08             	mov    0x8(%ebp),%edi
 4ce:	eb ea                	jmp    0x4ba
 4d0:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 4d3:	0f be 17             	movsbl (%edi),%edx
 4d6:	8b 45 08             	mov    0x8(%ebp),%eax
 4d9:	e8 1e fe ff ff       	call   0x2fc
 4de:	83 c7 04             	add    $0x4,%edi
 4e1:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 4e4:	be 00 00 00 00       	mov    $0x0,%esi
 4e9:	e9 df fe ff ff       	jmp    0x3cd
 4ee:	89 fa                	mov    %edi,%edx
 4f0:	8b 45 08             	mov    0x8(%ebp),%eax
 4f3:	e8 04 fe ff ff       	call   0x2fc
 4f8:	be 00 00 00 00       	mov    $0x0,%esi
 4fd:	e9 cb fe ff ff       	jmp    0x3cd
 502:	8d 65 f4             	lea    -0xc(%ebp),%esp
 505:	5b                   	pop    %ebx
 506:	5e                   	pop    %esi
 507:	5f                   	pop    %edi
 508:	5d                   	pop    %ebp
 509:	c3                   	ret    
 50a:	f3 0f 1e fb          	endbr32 
 50e:	55                   	push   %ebp
 50f:	89 e5                	mov    %esp,%ebp
 511:	57                   	push   %edi
 512:	56                   	push   %esi
 513:	53                   	push   %ebx
 514:	8b 5d 08             	mov    0x8(%ebp),%ebx
 517:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 51a:	a1 40 19 00 00       	mov    0x1940,%eax
 51f:	eb 02                	jmp    0x523
 521:	89 d0                	mov    %edx,%eax
 523:	39 c8                	cmp    %ecx,%eax
 525:	73 04                	jae    0x52b
 527:	39 08                	cmp    %ecx,(%eax)
 529:	77 12                	ja     0x53d
 52b:	8b 10                	mov    (%eax),%edx
 52d:	39 c2                	cmp    %eax,%edx
 52f:	77 f0                	ja     0x521
 531:	39 c8                	cmp    %ecx,%eax
 533:	72 08                	jb     0x53d
 535:	39 ca                	cmp    %ecx,%edx
 537:	77 04                	ja     0x53d
 539:	89 d0                	mov    %edx,%eax
 53b:	eb e6                	jmp    0x523
 53d:	8b 73 fc             	mov    -0x4(%ebx),%esi
 540:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 543:	8b 10                	mov    (%eax),%edx
 545:	39 d7                	cmp    %edx,%edi
 547:	74 19                	je     0x562
 549:	89 53 f8             	mov    %edx,-0x8(%ebx)
 54c:	8b 50 04             	mov    0x4(%eax),%edx
 54f:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 552:	39 ce                	cmp    %ecx,%esi
 554:	74 1b                	je     0x571
 556:	89 08                	mov    %ecx,(%eax)
 558:	a3 40 19 00 00       	mov    %eax,0x1940
 55d:	5b                   	pop    %ebx
 55e:	5e                   	pop    %esi
 55f:	5f                   	pop    %edi
 560:	5d                   	pop    %ebp
 561:	c3                   	ret    
 562:	03 72 04             	add    0x4(%edx),%esi
 565:	89 73 fc             	mov    %esi,-0x4(%ebx)
 568:	8b 10                	mov    (%eax),%edx
 56a:	8b 12                	mov    (%edx),%edx
 56c:	89 53 f8             	mov    %edx,-0x8(%ebx)
 56f:	eb db                	jmp    0x54c
 571:	03 53 fc             	add    -0x4(%ebx),%edx
 574:	89 50 04             	mov    %edx,0x4(%eax)
 577:	8b 53 f8             	mov    -0x8(%ebx),%edx
 57a:	89 10                	mov    %edx,(%eax)
 57c:	eb da                	jmp    0x558
 57e:	55                   	push   %ebp
 57f:	89 e5                	mov    %esp,%ebp
 581:	53                   	push   %ebx
 582:	83 ec 04             	sub    $0x4,%esp
 585:	89 c3                	mov    %eax,%ebx
 587:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 58c:	77 05                	ja     0x593
 58e:	bb 00 10 00 00       	mov    $0x1000,%ebx
 593:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 59a:	83 ec 0c             	sub    $0xc,%esp
 59d:	50                   	push   %eax
 59e:	e8 31 fd ff ff       	call   0x2d4
 5a3:	83 c4 10             	add    $0x10,%esp
 5a6:	83 f8 ff             	cmp    $0xffffffff,%eax
 5a9:	74 1c                	je     0x5c7
 5ab:	89 58 04             	mov    %ebx,0x4(%eax)
 5ae:	83 c0 08             	add    $0x8,%eax
 5b1:	83 ec 0c             	sub    $0xc,%esp
 5b4:	50                   	push   %eax
 5b5:	e8 50 ff ff ff       	call   0x50a
 5ba:	a1 40 19 00 00       	mov    0x1940,%eax
 5bf:	83 c4 10             	add    $0x10,%esp
 5c2:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 5c5:	c9                   	leave  
 5c6:	c3                   	ret    
 5c7:	b8 00 00 00 00       	mov    $0x0,%eax
 5cc:	eb f4                	jmp    0x5c2
 5ce:	f3 0f 1e fb          	endbr32 
 5d2:	55                   	push   %ebp
 5d3:	89 e5                	mov    %esp,%ebp
 5d5:	53                   	push   %ebx
 5d6:	83 ec 04             	sub    $0x4,%esp
 5d9:	8b 45 08             	mov    0x8(%ebp),%eax
 5dc:	8d 58 07             	lea    0x7(%eax),%ebx
 5df:	c1 eb 03             	shr    $0x3,%ebx
 5e2:	83 c3 01             	add    $0x1,%ebx
 5e5:	8b 0d 40 19 00 00    	mov    0x1940,%ecx
 5eb:	85 c9                	test   %ecx,%ecx
 5ed:	74 04                	je     0x5f3
 5ef:	8b 01                	mov    (%ecx),%eax
 5f1:	eb 4b                	jmp    0x63e
 5f3:	c7 05 40 19 00 00 44 	movl   $0x1944,0x1940
 5fa:	19 00 00 
 5fd:	c7 05 44 19 00 00 44 	movl   $0x1944,0x1944
 604:	19 00 00 
 607:	c7 05 48 19 00 00 00 	movl   $0x0,0x1948
 60e:	00 00 00 
 611:	b9 44 19 00 00       	mov    $0x1944,%ecx
 616:	eb d7                	jmp    0x5ef
 618:	74 1a                	je     0x634
 61a:	29 da                	sub    %ebx,%edx
 61c:	89 50 04             	mov    %edx,0x4(%eax)
 61f:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 622:	89 58 04             	mov    %ebx,0x4(%eax)
 625:	89 0d 40 19 00 00    	mov    %ecx,0x1940
 62b:	83 c0 08             	add    $0x8,%eax
 62e:	83 c4 04             	add    $0x4,%esp
 631:	5b                   	pop    %ebx
 632:	5d                   	pop    %ebp
 633:	c3                   	ret    
 634:	8b 10                	mov    (%eax),%edx
 636:	89 11                	mov    %edx,(%ecx)
 638:	eb eb                	jmp    0x625
 63a:	89 c1                	mov    %eax,%ecx
 63c:	8b 00                	mov    (%eax),%eax
 63e:	8b 50 04             	mov    0x4(%eax),%edx
 641:	39 da                	cmp    %ebx,%edx
 643:	73 d3                	jae    0x618
 645:	39 05 40 19 00 00    	cmp    %eax,0x1940
 64b:	75 ed                	jne    0x63a
 64d:	89 d8                	mov    %ebx,%eax
 64f:	e8 2a ff ff ff       	call   0x57e
 654:	85 c0                	test   %eax,%eax
 656:	75 e2                	jne    0x63a
 658:	eb d4                	jmp    0x62e
