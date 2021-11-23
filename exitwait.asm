
_exitwait:     formato del fichero elf32-i386


Desensamblado de la sección .text:

00000000 <.text>:
   0:	f3 0f 1e fb          	endbr32 
   4:	55                   	push   %ebp
   5:	89 e5                	mov    %esp,%ebp
   7:	53                   	push   %ebx
   8:	83 ec 1c             	sub    $0x1c,%esp
   b:	68 04 07 00 00       	push   $0x704
  10:	6a 01                	push   $0x1
  12:	e8 30 04 00 00       	call   0x447
  17:	83 c4 10             	add    $0x10,%esp
  1a:	bb 00 00 00 00       	mov    $0x0,%ebx
  1f:	81 fb e7 03 00 00    	cmp    $0x3e7,%ebx
  25:	7f 38                	jg     0x5f
  27:	e8 c2 02 00 00       	call   0x2ee
  2c:	85 c0                	test   %eax,%eax
  2e:	78 2f                	js     0x5f
  30:	74 05                	je     0x37
  32:	83 c3 01             	add    $0x1,%ebx
  35:	eb e8                	jmp    0x1f
  37:	ba 67 66 66 66       	mov    $0x66666667,%edx
  3c:	89 d8                	mov    %ebx,%eax
  3e:	f7 ea                	imul   %edx
  40:	c1 fa 04             	sar    $0x4,%edx
  43:	89 d8                	mov    %ebx,%eax
  45:	c1 f8 1f             	sar    $0x1f,%eax
  48:	89 d1                	mov    %edx,%ecx
  4a:	29 c1                	sub    %eax,%ecx
  4c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  51:	99                   	cltd   
  52:	f7 f9                	idiv   %ecx
  54:	83 ec 0c             	sub    $0xc,%esp
  57:	01 d8                	add    %ebx,%eax
  59:	50                   	push   %eax
  5a:	e8 97 02 00 00       	call   0x2f6
  5f:	81 fb e8 03 00 00    	cmp    $0x3e8,%ebx
  65:	74 2f                	je     0x96
  67:	85 db                	test   %ebx,%ebx
  69:	7e 66                	jle    0xd1
  6b:	83 ec 0c             	sub    $0xc,%esp
  6e:	8d 45 f4             	lea    -0xc(%ebp),%eax
  71:	50                   	push   %eax
  72:	e8 87 02 00 00       	call   0x2fe
  77:	83 c4 10             	add    $0x10,%esp
  7a:	85 c0                	test   %eax,%eax
  7c:	78 38                	js     0xb6
  7e:	ff 75 f4             	pushl  -0xc(%ebp)
  81:	50                   	push   %eax
  82:	68 34 07 00 00       	push   $0x734
  87:	6a 01                	push   $0x1
  89:	e8 b9 03 00 00       	call   0x447
  8e:	83 eb 01             	sub    $0x1,%ebx
  91:	83 c4 10             	add    $0x10,%esp
  94:	eb d1                	jmp    0x67
  96:	83 ec 04             	sub    $0x4,%esp
  99:	68 e8 03 00 00       	push   $0x3e8
  9e:	68 74 07 00 00       	push   $0x774
  a3:	6a 01                	push   $0x1
  a5:	e8 9d 03 00 00       	call   0x447
  aa:	c7 04 24 e8 03 00 00 	movl   $0x3e8,(%esp)
  b1:	e8 40 02 00 00       	call   0x2f6
  b6:	83 ec 08             	sub    $0x8,%esp
  b9:	68 20 07 00 00       	push   $0x720
  be:	6a 01                	push   $0x1
  c0:	e8 82 03 00 00       	call   0x447
  c5:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
  cc:	e8 25 02 00 00       	call   0x2f6
  d1:	83 ec 0c             	sub    $0xc,%esp
  d4:	6a 00                	push   $0x0
  d6:	e8 23 02 00 00       	call   0x2fe
  db:	83 c4 10             	add    $0x10,%esp
  de:	83 f8 ff             	cmp    $0xffffffff,%eax
  e1:	75 17                	jne    0xfa
  e3:	83 ec 08             	sub    $0x8,%esp
  e6:	68 65 07 00 00       	push   $0x765
  eb:	6a 01                	push   $0x1
  ed:	e8 55 03 00 00       	call   0x447
  f2:	83 c4 10             	add    $0x10,%esp
  f5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  f8:	c9                   	leave  
  f9:	c3                   	ret    
  fa:	83 ec 08             	sub    $0x8,%esp
  fd:	68 52 07 00 00       	push   $0x752
 102:	6a 01                	push   $0x1
 104:	e8 3e 03 00 00       	call   0x447
 109:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
 110:	e8 e1 01 00 00       	call   0x2f6
 115:	f3 0f 1e fb          	endbr32 
 119:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 11d:	83 e4 f0             	and    $0xfffffff0,%esp
 120:	ff 71 fc             	pushl  -0x4(%ecx)
 123:	55                   	push   %ebp
 124:	89 e5                	mov    %esp,%ebp
 126:	51                   	push   %ecx
 127:	83 ec 04             	sub    $0x4,%esp
 12a:	e8 d1 fe ff ff       	call   0x0
 12f:	83 ec 0c             	sub    $0xc,%esp
 132:	6a 00                	push   $0x0
 134:	e8 bd 01 00 00       	call   0x2f6
 139:	f3 0f 1e fb          	endbr32 
 13d:	55                   	push   %ebp
 13e:	89 e5                	mov    %esp,%ebp
 140:	56                   	push   %esi
 141:	53                   	push   %ebx
 142:	8b 75 08             	mov    0x8(%ebp),%esi
 145:	8b 55 0c             	mov    0xc(%ebp),%edx
 148:	89 f0                	mov    %esi,%eax
 14a:	89 d1                	mov    %edx,%ecx
 14c:	83 c2 01             	add    $0x1,%edx
 14f:	89 c3                	mov    %eax,%ebx
 151:	83 c0 01             	add    $0x1,%eax
 154:	0f b6 09             	movzbl (%ecx),%ecx
 157:	88 0b                	mov    %cl,(%ebx)
 159:	84 c9                	test   %cl,%cl
 15b:	75 ed                	jne    0x14a
 15d:	89 f0                	mov    %esi,%eax
 15f:	5b                   	pop    %ebx
 160:	5e                   	pop    %esi
 161:	5d                   	pop    %ebp
 162:	c3                   	ret    
 163:	f3 0f 1e fb          	endbr32 
 167:	55                   	push   %ebp
 168:	89 e5                	mov    %esp,%ebp
 16a:	8b 4d 08             	mov    0x8(%ebp),%ecx
 16d:	8b 55 0c             	mov    0xc(%ebp),%edx
 170:	0f b6 01             	movzbl (%ecx),%eax
 173:	84 c0                	test   %al,%al
 175:	74 0c                	je     0x183
 177:	3a 02                	cmp    (%edx),%al
 179:	75 08                	jne    0x183
 17b:	83 c1 01             	add    $0x1,%ecx
 17e:	83 c2 01             	add    $0x1,%edx
 181:	eb ed                	jmp    0x170
 183:	0f b6 c0             	movzbl %al,%eax
 186:	0f b6 12             	movzbl (%edx),%edx
 189:	29 d0                	sub    %edx,%eax
 18b:	5d                   	pop    %ebp
 18c:	c3                   	ret    
 18d:	f3 0f 1e fb          	endbr32 
 191:	55                   	push   %ebp
 192:	89 e5                	mov    %esp,%ebp
 194:	8b 4d 08             	mov    0x8(%ebp),%ecx
 197:	b8 00 00 00 00       	mov    $0x0,%eax
 19c:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
 1a0:	74 05                	je     0x1a7
 1a2:	83 c0 01             	add    $0x1,%eax
 1a5:	eb f5                	jmp    0x19c
 1a7:	5d                   	pop    %ebp
 1a8:	c3                   	ret    
 1a9:	f3 0f 1e fb          	endbr32 
 1ad:	55                   	push   %ebp
 1ae:	89 e5                	mov    %esp,%ebp
 1b0:	57                   	push   %edi
 1b1:	8b 55 08             	mov    0x8(%ebp),%edx
 1b4:	89 d7                	mov    %edx,%edi
 1b6:	8b 4d 10             	mov    0x10(%ebp),%ecx
 1b9:	8b 45 0c             	mov    0xc(%ebp),%eax
 1bc:	fc                   	cld    
 1bd:	f3 aa                	rep stos %al,%es:(%edi)
 1bf:	89 d0                	mov    %edx,%eax
 1c1:	5f                   	pop    %edi
 1c2:	5d                   	pop    %ebp
 1c3:	c3                   	ret    
 1c4:	f3 0f 1e fb          	endbr32 
 1c8:	55                   	push   %ebp
 1c9:	89 e5                	mov    %esp,%ebp
 1cb:	8b 45 08             	mov    0x8(%ebp),%eax
 1ce:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
 1d2:	0f b6 10             	movzbl (%eax),%edx
 1d5:	84 d2                	test   %dl,%dl
 1d7:	74 09                	je     0x1e2
 1d9:	38 ca                	cmp    %cl,%dl
 1db:	74 0a                	je     0x1e7
 1dd:	83 c0 01             	add    $0x1,%eax
 1e0:	eb f0                	jmp    0x1d2
 1e2:	b8 00 00 00 00       	mov    $0x0,%eax
 1e7:	5d                   	pop    %ebp
 1e8:	c3                   	ret    
 1e9:	f3 0f 1e fb          	endbr32 
 1ed:	55                   	push   %ebp
 1ee:	89 e5                	mov    %esp,%ebp
 1f0:	57                   	push   %edi
 1f1:	56                   	push   %esi
 1f2:	53                   	push   %ebx
 1f3:	83 ec 1c             	sub    $0x1c,%esp
 1f6:	8b 7d 08             	mov    0x8(%ebp),%edi
 1f9:	bb 00 00 00 00       	mov    $0x0,%ebx
 1fe:	89 de                	mov    %ebx,%esi
 200:	83 c3 01             	add    $0x1,%ebx
 203:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 206:	7d 2e                	jge    0x236
 208:	83 ec 04             	sub    $0x4,%esp
 20b:	6a 01                	push   $0x1
 20d:	8d 45 e7             	lea    -0x19(%ebp),%eax
 210:	50                   	push   %eax
 211:	6a 00                	push   $0x0
 213:	e8 f6 00 00 00       	call   0x30e
 218:	83 c4 10             	add    $0x10,%esp
 21b:	85 c0                	test   %eax,%eax
 21d:	7e 17                	jle    0x236
 21f:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 223:	88 04 37             	mov    %al,(%edi,%esi,1)
 226:	3c 0a                	cmp    $0xa,%al
 228:	0f 94 c2             	sete   %dl
 22b:	3c 0d                	cmp    $0xd,%al
 22d:	0f 94 c0             	sete   %al
 230:	08 c2                	or     %al,%dl
 232:	74 ca                	je     0x1fe
 234:	89 de                	mov    %ebx,%esi
 236:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 23a:	89 f8                	mov    %edi,%eax
 23c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 23f:	5b                   	pop    %ebx
 240:	5e                   	pop    %esi
 241:	5f                   	pop    %edi
 242:	5d                   	pop    %ebp
 243:	c3                   	ret    
 244:	f3 0f 1e fb          	endbr32 
 248:	55                   	push   %ebp
 249:	89 e5                	mov    %esp,%ebp
 24b:	56                   	push   %esi
 24c:	53                   	push   %ebx
 24d:	83 ec 08             	sub    $0x8,%esp
 250:	6a 00                	push   $0x0
 252:	ff 75 08             	pushl  0x8(%ebp)
 255:	e8 dc 00 00 00       	call   0x336
 25a:	83 c4 10             	add    $0x10,%esp
 25d:	85 c0                	test   %eax,%eax
 25f:	78 24                	js     0x285
 261:	89 c3                	mov    %eax,%ebx
 263:	83 ec 08             	sub    $0x8,%esp
 266:	ff 75 0c             	pushl  0xc(%ebp)
 269:	50                   	push   %eax
 26a:	e8 df 00 00 00       	call   0x34e
 26f:	89 c6                	mov    %eax,%esi
 271:	89 1c 24             	mov    %ebx,(%esp)
 274:	e8 a5 00 00 00       	call   0x31e
 279:	83 c4 10             	add    $0x10,%esp
 27c:	89 f0                	mov    %esi,%eax
 27e:	8d 65 f8             	lea    -0x8(%ebp),%esp
 281:	5b                   	pop    %ebx
 282:	5e                   	pop    %esi
 283:	5d                   	pop    %ebp
 284:	c3                   	ret    
 285:	be ff ff ff ff       	mov    $0xffffffff,%esi
 28a:	eb f0                	jmp    0x27c
 28c:	f3 0f 1e fb          	endbr32 
 290:	55                   	push   %ebp
 291:	89 e5                	mov    %esp,%ebp
 293:	53                   	push   %ebx
 294:	8b 4d 08             	mov    0x8(%ebp),%ecx
 297:	ba 00 00 00 00       	mov    $0x0,%edx
 29c:	0f b6 01             	movzbl (%ecx),%eax
 29f:	8d 58 d0             	lea    -0x30(%eax),%ebx
 2a2:	80 fb 09             	cmp    $0x9,%bl
 2a5:	77 12                	ja     0x2b9
 2a7:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 2aa:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 2ad:	83 c1 01             	add    $0x1,%ecx
 2b0:	0f be c0             	movsbl %al,%eax
 2b3:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 2b7:	eb e3                	jmp    0x29c
 2b9:	89 d0                	mov    %edx,%eax
 2bb:	5b                   	pop    %ebx
 2bc:	5d                   	pop    %ebp
 2bd:	c3                   	ret    
 2be:	f3 0f 1e fb          	endbr32 
 2c2:	55                   	push   %ebp
 2c3:	89 e5                	mov    %esp,%ebp
 2c5:	56                   	push   %esi
 2c6:	53                   	push   %ebx
 2c7:	8b 75 08             	mov    0x8(%ebp),%esi
 2ca:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 2cd:	8b 45 10             	mov    0x10(%ebp),%eax
 2d0:	89 f2                	mov    %esi,%edx
 2d2:	8d 58 ff             	lea    -0x1(%eax),%ebx
 2d5:	85 c0                	test   %eax,%eax
 2d7:	7e 0f                	jle    0x2e8
 2d9:	0f b6 01             	movzbl (%ecx),%eax
 2dc:	88 02                	mov    %al,(%edx)
 2de:	8d 49 01             	lea    0x1(%ecx),%ecx
 2e1:	8d 52 01             	lea    0x1(%edx),%edx
 2e4:	89 d8                	mov    %ebx,%eax
 2e6:	eb ea                	jmp    0x2d2
 2e8:	89 f0                	mov    %esi,%eax
 2ea:	5b                   	pop    %ebx
 2eb:	5e                   	pop    %esi
 2ec:	5d                   	pop    %ebp
 2ed:	c3                   	ret    
 2ee:	b8 01 00 00 00       	mov    $0x1,%eax
 2f3:	cd 40                	int    $0x40
 2f5:	c3                   	ret    
 2f6:	b8 02 00 00 00       	mov    $0x2,%eax
 2fb:	cd 40                	int    $0x40
 2fd:	c3                   	ret    
 2fe:	b8 03 00 00 00       	mov    $0x3,%eax
 303:	cd 40                	int    $0x40
 305:	c3                   	ret    
 306:	b8 04 00 00 00       	mov    $0x4,%eax
 30b:	cd 40                	int    $0x40
 30d:	c3                   	ret    
 30e:	b8 05 00 00 00       	mov    $0x5,%eax
 313:	cd 40                	int    $0x40
 315:	c3                   	ret    
 316:	b8 10 00 00 00       	mov    $0x10,%eax
 31b:	cd 40                	int    $0x40
 31d:	c3                   	ret    
 31e:	b8 15 00 00 00       	mov    $0x15,%eax
 323:	cd 40                	int    $0x40
 325:	c3                   	ret    
 326:	b8 06 00 00 00       	mov    $0x6,%eax
 32b:	cd 40                	int    $0x40
 32d:	c3                   	ret    
 32e:	b8 07 00 00 00       	mov    $0x7,%eax
 333:	cd 40                	int    $0x40
 335:	c3                   	ret    
 336:	b8 0f 00 00 00       	mov    $0xf,%eax
 33b:	cd 40                	int    $0x40
 33d:	c3                   	ret    
 33e:	b8 11 00 00 00       	mov    $0x11,%eax
 343:	cd 40                	int    $0x40
 345:	c3                   	ret    
 346:	b8 12 00 00 00       	mov    $0x12,%eax
 34b:	cd 40                	int    $0x40
 34d:	c3                   	ret    
 34e:	b8 08 00 00 00       	mov    $0x8,%eax
 353:	cd 40                	int    $0x40
 355:	c3                   	ret    
 356:	b8 13 00 00 00       	mov    $0x13,%eax
 35b:	cd 40                	int    $0x40
 35d:	c3                   	ret    
 35e:	b8 14 00 00 00       	mov    $0x14,%eax
 363:	cd 40                	int    $0x40
 365:	c3                   	ret    
 366:	b8 09 00 00 00       	mov    $0x9,%eax
 36b:	cd 40                	int    $0x40
 36d:	c3                   	ret    
 36e:	b8 0a 00 00 00       	mov    $0xa,%eax
 373:	cd 40                	int    $0x40
 375:	c3                   	ret    
 376:	b8 0b 00 00 00       	mov    $0xb,%eax
 37b:	cd 40                	int    $0x40
 37d:	c3                   	ret    
 37e:	b8 0c 00 00 00       	mov    $0xc,%eax
 383:	cd 40                	int    $0x40
 385:	c3                   	ret    
 386:	b8 0d 00 00 00       	mov    $0xd,%eax
 38b:	cd 40                	int    $0x40
 38d:	c3                   	ret    
 38e:	b8 0e 00 00 00       	mov    $0xe,%eax
 393:	cd 40                	int    $0x40
 395:	c3                   	ret    
 396:	b8 16 00 00 00       	mov    $0x16,%eax
 39b:	cd 40                	int    $0x40
 39d:	c3                   	ret    
 39e:	b8 17 00 00 00       	mov    $0x17,%eax
 3a3:	cd 40                	int    $0x40
 3a5:	c3                   	ret    
 3a6:	55                   	push   %ebp
 3a7:	89 e5                	mov    %esp,%ebp
 3a9:	83 ec 1c             	sub    $0x1c,%esp
 3ac:	88 55 f4             	mov    %dl,-0xc(%ebp)
 3af:	6a 01                	push   $0x1
 3b1:	8d 55 f4             	lea    -0xc(%ebp),%edx
 3b4:	52                   	push   %edx
 3b5:	50                   	push   %eax
 3b6:	e8 5b ff ff ff       	call   0x316
 3bb:	83 c4 10             	add    $0x10,%esp
 3be:	c9                   	leave  
 3bf:	c3                   	ret    
 3c0:	55                   	push   %ebp
 3c1:	89 e5                	mov    %esp,%ebp
 3c3:	57                   	push   %edi
 3c4:	56                   	push   %esi
 3c5:	53                   	push   %ebx
 3c6:	83 ec 2c             	sub    $0x2c,%esp
 3c9:	89 45 d0             	mov    %eax,-0x30(%ebp)
 3cc:	89 d6                	mov    %edx,%esi
 3ce:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 3d2:	0f 95 c2             	setne  %dl
 3d5:	89 f0                	mov    %esi,%eax
 3d7:	c1 e8 1f             	shr    $0x1f,%eax
 3da:	84 c2                	test   %al,%dl
 3dc:	74 42                	je     0x420
 3de:	f7 de                	neg    %esi
 3e0:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 3e7:	bb 00 00 00 00       	mov    $0x0,%ebx
 3ec:	89 f0                	mov    %esi,%eax
 3ee:	ba 00 00 00 00       	mov    $0x0,%edx
 3f3:	f7 f1                	div    %ecx
 3f5:	89 df                	mov    %ebx,%edi
 3f7:	83 c3 01             	add    $0x1,%ebx
 3fa:	0f b6 92 9c 07 00 00 	movzbl 0x79c(%edx),%edx
 401:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 405:	89 f2                	mov    %esi,%edx
 407:	89 c6                	mov    %eax,%esi
 409:	39 d1                	cmp    %edx,%ecx
 40b:	76 df                	jbe    0x3ec
 40d:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 411:	74 2f                	je     0x442
 413:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 418:	8d 5f 02             	lea    0x2(%edi),%ebx
 41b:	8b 75 d0             	mov    -0x30(%ebp),%esi
 41e:	eb 15                	jmp    0x435
 420:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 427:	eb be                	jmp    0x3e7
 429:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 42e:	89 f0                	mov    %esi,%eax
 430:	e8 71 ff ff ff       	call   0x3a6
 435:	83 eb 01             	sub    $0x1,%ebx
 438:	79 ef                	jns    0x429
 43a:	83 c4 2c             	add    $0x2c,%esp
 43d:	5b                   	pop    %ebx
 43e:	5e                   	pop    %esi
 43f:	5f                   	pop    %edi
 440:	5d                   	pop    %ebp
 441:	c3                   	ret    
 442:	8b 75 d0             	mov    -0x30(%ebp),%esi
 445:	eb ee                	jmp    0x435
 447:	f3 0f 1e fb          	endbr32 
 44b:	55                   	push   %ebp
 44c:	89 e5                	mov    %esp,%ebp
 44e:	57                   	push   %edi
 44f:	56                   	push   %esi
 450:	53                   	push   %ebx
 451:	83 ec 1c             	sub    $0x1c,%esp
 454:	8d 45 10             	lea    0x10(%ebp),%eax
 457:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 45a:	be 00 00 00 00       	mov    $0x0,%esi
 45f:	bb 00 00 00 00       	mov    $0x0,%ebx
 464:	eb 14                	jmp    0x47a
 466:	89 fa                	mov    %edi,%edx
 468:	8b 45 08             	mov    0x8(%ebp),%eax
 46b:	e8 36 ff ff ff       	call   0x3a6
 470:	eb 05                	jmp    0x477
 472:	83 fe 25             	cmp    $0x25,%esi
 475:	74 25                	je     0x49c
 477:	83 c3 01             	add    $0x1,%ebx
 47a:	8b 45 0c             	mov    0xc(%ebp),%eax
 47d:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 481:	84 c0                	test   %al,%al
 483:	0f 84 23 01 00 00    	je     0x5ac
 489:	0f be f8             	movsbl %al,%edi
 48c:	0f b6 c0             	movzbl %al,%eax
 48f:	85 f6                	test   %esi,%esi
 491:	75 df                	jne    0x472
 493:	83 f8 25             	cmp    $0x25,%eax
 496:	75 ce                	jne    0x466
 498:	89 c6                	mov    %eax,%esi
 49a:	eb db                	jmp    0x477
 49c:	83 f8 64             	cmp    $0x64,%eax
 49f:	74 49                	je     0x4ea
 4a1:	83 f8 78             	cmp    $0x78,%eax
 4a4:	0f 94 c1             	sete   %cl
 4a7:	83 f8 70             	cmp    $0x70,%eax
 4aa:	0f 94 c2             	sete   %dl
 4ad:	08 d1                	or     %dl,%cl
 4af:	75 63                	jne    0x514
 4b1:	83 f8 73             	cmp    $0x73,%eax
 4b4:	0f 84 84 00 00 00    	je     0x53e
 4ba:	83 f8 63             	cmp    $0x63,%eax
 4bd:	0f 84 b7 00 00 00    	je     0x57a
 4c3:	83 f8 25             	cmp    $0x25,%eax
 4c6:	0f 84 cc 00 00 00    	je     0x598
 4cc:	ba 25 00 00 00       	mov    $0x25,%edx
 4d1:	8b 45 08             	mov    0x8(%ebp),%eax
 4d4:	e8 cd fe ff ff       	call   0x3a6
 4d9:	89 fa                	mov    %edi,%edx
 4db:	8b 45 08             	mov    0x8(%ebp),%eax
 4de:	e8 c3 fe ff ff       	call   0x3a6
 4e3:	be 00 00 00 00       	mov    $0x0,%esi
 4e8:	eb 8d                	jmp    0x477
 4ea:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 4ed:	8b 17                	mov    (%edi),%edx
 4ef:	83 ec 0c             	sub    $0xc,%esp
 4f2:	6a 01                	push   $0x1
 4f4:	b9 0a 00 00 00       	mov    $0xa,%ecx
 4f9:	8b 45 08             	mov    0x8(%ebp),%eax
 4fc:	e8 bf fe ff ff       	call   0x3c0
 501:	83 c7 04             	add    $0x4,%edi
 504:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 507:	83 c4 10             	add    $0x10,%esp
 50a:	be 00 00 00 00       	mov    $0x0,%esi
 50f:	e9 63 ff ff ff       	jmp    0x477
 514:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 517:	8b 17                	mov    (%edi),%edx
 519:	83 ec 0c             	sub    $0xc,%esp
 51c:	6a 00                	push   $0x0
 51e:	b9 10 00 00 00       	mov    $0x10,%ecx
 523:	8b 45 08             	mov    0x8(%ebp),%eax
 526:	e8 95 fe ff ff       	call   0x3c0
 52b:	83 c7 04             	add    $0x4,%edi
 52e:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 531:	83 c4 10             	add    $0x10,%esp
 534:	be 00 00 00 00       	mov    $0x0,%esi
 539:	e9 39 ff ff ff       	jmp    0x477
 53e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 541:	8b 30                	mov    (%eax),%esi
 543:	83 c0 04             	add    $0x4,%eax
 546:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 549:	85 f6                	test   %esi,%esi
 54b:	75 28                	jne    0x575
 54d:	be 94 07 00 00       	mov    $0x794,%esi
 552:	8b 7d 08             	mov    0x8(%ebp),%edi
 555:	eb 0d                	jmp    0x564
 557:	0f be d2             	movsbl %dl,%edx
 55a:	89 f8                	mov    %edi,%eax
 55c:	e8 45 fe ff ff       	call   0x3a6
 561:	83 c6 01             	add    $0x1,%esi
 564:	0f b6 16             	movzbl (%esi),%edx
 567:	84 d2                	test   %dl,%dl
 569:	75 ec                	jne    0x557
 56b:	be 00 00 00 00       	mov    $0x0,%esi
 570:	e9 02 ff ff ff       	jmp    0x477
 575:	8b 7d 08             	mov    0x8(%ebp),%edi
 578:	eb ea                	jmp    0x564
 57a:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 57d:	0f be 17             	movsbl (%edi),%edx
 580:	8b 45 08             	mov    0x8(%ebp),%eax
 583:	e8 1e fe ff ff       	call   0x3a6
 588:	83 c7 04             	add    $0x4,%edi
 58b:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 58e:	be 00 00 00 00       	mov    $0x0,%esi
 593:	e9 df fe ff ff       	jmp    0x477
 598:	89 fa                	mov    %edi,%edx
 59a:	8b 45 08             	mov    0x8(%ebp),%eax
 59d:	e8 04 fe ff ff       	call   0x3a6
 5a2:	be 00 00 00 00       	mov    $0x0,%esi
 5a7:	e9 cb fe ff ff       	jmp    0x477
 5ac:	8d 65 f4             	lea    -0xc(%ebp),%esp
 5af:	5b                   	pop    %ebx
 5b0:	5e                   	pop    %esi
 5b1:	5f                   	pop    %edi
 5b2:	5d                   	pop    %ebp
 5b3:	c3                   	ret    
 5b4:	f3 0f 1e fb          	endbr32 
 5b8:	55                   	push   %ebp
 5b9:	89 e5                	mov    %esp,%ebp
 5bb:	57                   	push   %edi
 5bc:	56                   	push   %esi
 5bd:	53                   	push   %ebx
 5be:	8b 5d 08             	mov    0x8(%ebp),%ebx
 5c1:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 5c4:	a1 64 0a 00 00       	mov    0xa64,%eax
 5c9:	eb 02                	jmp    0x5cd
 5cb:	89 d0                	mov    %edx,%eax
 5cd:	39 c8                	cmp    %ecx,%eax
 5cf:	73 04                	jae    0x5d5
 5d1:	39 08                	cmp    %ecx,(%eax)
 5d3:	77 12                	ja     0x5e7
 5d5:	8b 10                	mov    (%eax),%edx
 5d7:	39 c2                	cmp    %eax,%edx
 5d9:	77 f0                	ja     0x5cb
 5db:	39 c8                	cmp    %ecx,%eax
 5dd:	72 08                	jb     0x5e7
 5df:	39 ca                	cmp    %ecx,%edx
 5e1:	77 04                	ja     0x5e7
 5e3:	89 d0                	mov    %edx,%eax
 5e5:	eb e6                	jmp    0x5cd
 5e7:	8b 73 fc             	mov    -0x4(%ebx),%esi
 5ea:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 5ed:	8b 10                	mov    (%eax),%edx
 5ef:	39 d7                	cmp    %edx,%edi
 5f1:	74 19                	je     0x60c
 5f3:	89 53 f8             	mov    %edx,-0x8(%ebx)
 5f6:	8b 50 04             	mov    0x4(%eax),%edx
 5f9:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 5fc:	39 ce                	cmp    %ecx,%esi
 5fe:	74 1b                	je     0x61b
 600:	89 08                	mov    %ecx,(%eax)
 602:	a3 64 0a 00 00       	mov    %eax,0xa64
 607:	5b                   	pop    %ebx
 608:	5e                   	pop    %esi
 609:	5f                   	pop    %edi
 60a:	5d                   	pop    %ebp
 60b:	c3                   	ret    
 60c:	03 72 04             	add    0x4(%edx),%esi
 60f:	89 73 fc             	mov    %esi,-0x4(%ebx)
 612:	8b 10                	mov    (%eax),%edx
 614:	8b 12                	mov    (%edx),%edx
 616:	89 53 f8             	mov    %edx,-0x8(%ebx)
 619:	eb db                	jmp    0x5f6
 61b:	03 53 fc             	add    -0x4(%ebx),%edx
 61e:	89 50 04             	mov    %edx,0x4(%eax)
 621:	8b 53 f8             	mov    -0x8(%ebx),%edx
 624:	89 10                	mov    %edx,(%eax)
 626:	eb da                	jmp    0x602
 628:	55                   	push   %ebp
 629:	89 e5                	mov    %esp,%ebp
 62b:	53                   	push   %ebx
 62c:	83 ec 04             	sub    $0x4,%esp
 62f:	89 c3                	mov    %eax,%ebx
 631:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 636:	77 05                	ja     0x63d
 638:	bb 00 10 00 00       	mov    $0x1000,%ebx
 63d:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 644:	83 ec 0c             	sub    $0xc,%esp
 647:	50                   	push   %eax
 648:	e8 31 fd ff ff       	call   0x37e
 64d:	83 c4 10             	add    $0x10,%esp
 650:	83 f8 ff             	cmp    $0xffffffff,%eax
 653:	74 1c                	je     0x671
 655:	89 58 04             	mov    %ebx,0x4(%eax)
 658:	83 c0 08             	add    $0x8,%eax
 65b:	83 ec 0c             	sub    $0xc,%esp
 65e:	50                   	push   %eax
 65f:	e8 50 ff ff ff       	call   0x5b4
 664:	a1 64 0a 00 00       	mov    0xa64,%eax
 669:	83 c4 10             	add    $0x10,%esp
 66c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 66f:	c9                   	leave  
 670:	c3                   	ret    
 671:	b8 00 00 00 00       	mov    $0x0,%eax
 676:	eb f4                	jmp    0x66c
 678:	f3 0f 1e fb          	endbr32 
 67c:	55                   	push   %ebp
 67d:	89 e5                	mov    %esp,%ebp
 67f:	53                   	push   %ebx
 680:	83 ec 04             	sub    $0x4,%esp
 683:	8b 45 08             	mov    0x8(%ebp),%eax
 686:	8d 58 07             	lea    0x7(%eax),%ebx
 689:	c1 eb 03             	shr    $0x3,%ebx
 68c:	83 c3 01             	add    $0x1,%ebx
 68f:	8b 0d 64 0a 00 00    	mov    0xa64,%ecx
 695:	85 c9                	test   %ecx,%ecx
 697:	74 04                	je     0x69d
 699:	8b 01                	mov    (%ecx),%eax
 69b:	eb 4b                	jmp    0x6e8
 69d:	c7 05 64 0a 00 00 68 	movl   $0xa68,0xa64
 6a4:	0a 00 00 
 6a7:	c7 05 68 0a 00 00 68 	movl   $0xa68,0xa68
 6ae:	0a 00 00 
 6b1:	c7 05 6c 0a 00 00 00 	movl   $0x0,0xa6c
 6b8:	00 00 00 
 6bb:	b9 68 0a 00 00       	mov    $0xa68,%ecx
 6c0:	eb d7                	jmp    0x699
 6c2:	74 1a                	je     0x6de
 6c4:	29 da                	sub    %ebx,%edx
 6c6:	89 50 04             	mov    %edx,0x4(%eax)
 6c9:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 6cc:	89 58 04             	mov    %ebx,0x4(%eax)
 6cf:	89 0d 64 0a 00 00    	mov    %ecx,0xa64
 6d5:	83 c0 08             	add    $0x8,%eax
 6d8:	83 c4 04             	add    $0x4,%esp
 6db:	5b                   	pop    %ebx
 6dc:	5d                   	pop    %ebp
 6dd:	c3                   	ret    
 6de:	8b 10                	mov    (%eax),%edx
 6e0:	89 11                	mov    %edx,(%ecx)
 6e2:	eb eb                	jmp    0x6cf
 6e4:	89 c1                	mov    %eax,%ecx
 6e6:	8b 00                	mov    (%eax),%eax
 6e8:	8b 50 04             	mov    0x4(%eax),%edx
 6eb:	39 da                	cmp    %ebx,%edx
 6ed:	73 d3                	jae    0x6c2
 6ef:	39 05 64 0a 00 00    	cmp    %eax,0xa64
 6f5:	75 ed                	jne    0x6e4
 6f7:	89 d8                	mov    %ebx,%eax
 6f9:	e8 2a ff ff ff       	call   0x628
 6fe:	85 c0                	test   %eax,%eax
 700:	75 e2                	jne    0x6e4
 702:	eb d4                	jmp    0x6d8
