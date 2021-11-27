
_exitwait:     formato del fichero elf32-i386


Desensamblado de la sección .text:

00000000 <.text>:
   0:	f3 0f 1e fb          	endbr32 
   4:	55                   	push   %ebp
   5:	89 e5                	mov    %esp,%ebp
   7:	53                   	push   %ebx
   8:	83 ec 1c             	sub    $0x1c,%esp
   b:	68 24 07 00 00       	push   $0x724
  10:	6a 01                	push   $0x1
  12:	e8 4f 04 00 00       	call   0x466
  17:	83 c4 10             	add    $0x10,%esp
  1a:	bb 00 00 00 00       	mov    $0x0,%ebx
  1f:	81 fb e7 03 00 00    	cmp    $0x3e7,%ebx
  25:	7f 38                	jg     0x5f
  27:	e8 e1 02 00 00       	call   0x30d
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
  48:	29 c2                	sub    %eax,%edx
  4a:	89 d1                	mov    %edx,%ecx
  4c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  51:	99                   	cltd   
  52:	f7 f9                	idiv   %ecx
  54:	83 ec 0c             	sub    $0xc,%esp
  57:	01 d8                	add    %ebx,%eax
  59:	50                   	push   %eax
  5a:	e8 b6 02 00 00       	call   0x315
  5f:	81 fb e8 03 00 00    	cmp    $0x3e8,%ebx
  65:	75 52                	jne    0xb9
  67:	83 ec 04             	sub    $0x4,%esp
  6a:	68 e8 03 00 00       	push   $0x3e8
  6f:	68 94 07 00 00       	push   $0x794
  74:	6a 01                	push   $0x1
  76:	e8 eb 03 00 00       	call   0x466
  7b:	c7 04 24 e8 03 00 00 	movl   $0x3e8,(%esp)
  82:	e8 8e 02 00 00       	call   0x315
  87:	83 ec 08             	sub    $0x8,%esp
  8a:	68 40 07 00 00       	push   $0x740
  8f:	6a 01                	push   $0x1
  91:	e8 d0 03 00 00       	call   0x466
  96:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
  9d:	e8 73 02 00 00       	call   0x315
  a2:	83 e9 01             	sub    $0x1,%ecx
  a5:	51                   	push   %ecx
  a6:	50                   	push   %eax
  a7:	68 b4 07 00 00       	push   $0x7b4
  ac:	6a 01                	push   $0x1
  ae:	e8 b3 03 00 00       	call   0x466
  b3:	83 c4 10             	add    $0x10,%esp
  b6:	83 eb 01             	sub    $0x1,%ebx
  b9:	85 db                	test   %ebx,%ebx
  bb:	7e 33                	jle    0xf0
  bd:	83 ec 0c             	sub    $0xc,%esp
  c0:	8d 45 f4             	lea    -0xc(%ebp),%eax
  c3:	50                   	push   %eax
  c4:	e8 54 02 00 00       	call   0x31d
  c9:	83 c4 10             	add    $0x10,%esp
  cc:	85 c0                	test   %eax,%eax
  ce:	78 b7                	js     0x87
  d0:	8b 55 f4             	mov    -0xc(%ebp),%edx
  d3:	89 d1                	mov    %edx,%ecx
  d5:	83 e1 7f             	and    $0x7f,%ecx
  d8:	75 c8                	jne    0xa2
  da:	0f b6 d6             	movzbl %dh,%edx
  dd:	52                   	push   %edx
  de:	50                   	push   %eax
  df:	68 54 07 00 00       	push   $0x754
  e4:	6a 01                	push   $0x1
  e6:	e8 7b 03 00 00       	call   0x466
  eb:	83 c4 10             	add    $0x10,%esp
  ee:	eb c6                	jmp    0xb6
  f0:	83 ec 0c             	sub    $0xc,%esp
  f3:	6a 00                	push   $0x0
  f5:	e8 23 02 00 00       	call   0x31d
  fa:	83 c4 10             	add    $0x10,%esp
  fd:	83 f8 ff             	cmp    $0xffffffff,%eax
 100:	75 17                	jne    0x119
 102:	83 ec 08             	sub    $0x8,%esp
 105:	68 85 07 00 00       	push   $0x785
 10a:	6a 01                	push   $0x1
 10c:	e8 55 03 00 00       	call   0x466
 111:	83 c4 10             	add    $0x10,%esp
 114:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 117:	c9                   	leave  
 118:	c3                   	ret    
 119:	83 ec 08             	sub    $0x8,%esp
 11c:	68 72 07 00 00       	push   $0x772
 121:	6a 01                	push   $0x1
 123:	e8 3e 03 00 00       	call   0x466
 128:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
 12f:	e8 e1 01 00 00       	call   0x315
 134:	f3 0f 1e fb          	endbr32 
 138:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 13c:	83 e4 f0             	and    $0xfffffff0,%esp
 13f:	ff 71 fc             	pushl  -0x4(%ecx)
 142:	55                   	push   %ebp
 143:	89 e5                	mov    %esp,%ebp
 145:	51                   	push   %ecx
 146:	83 ec 04             	sub    $0x4,%esp
 149:	e8 b2 fe ff ff       	call   0x0
 14e:	83 ec 0c             	sub    $0xc,%esp
 151:	6a 00                	push   $0x0
 153:	e8 bd 01 00 00       	call   0x315
 158:	f3 0f 1e fb          	endbr32 
 15c:	55                   	push   %ebp
 15d:	89 e5                	mov    %esp,%ebp
 15f:	56                   	push   %esi
 160:	53                   	push   %ebx
 161:	8b 75 08             	mov    0x8(%ebp),%esi
 164:	8b 55 0c             	mov    0xc(%ebp),%edx
 167:	89 f0                	mov    %esi,%eax
 169:	89 d1                	mov    %edx,%ecx
 16b:	83 c2 01             	add    $0x1,%edx
 16e:	89 c3                	mov    %eax,%ebx
 170:	83 c0 01             	add    $0x1,%eax
 173:	0f b6 09             	movzbl (%ecx),%ecx
 176:	88 0b                	mov    %cl,(%ebx)
 178:	84 c9                	test   %cl,%cl
 17a:	75 ed                	jne    0x169
 17c:	89 f0                	mov    %esi,%eax
 17e:	5b                   	pop    %ebx
 17f:	5e                   	pop    %esi
 180:	5d                   	pop    %ebp
 181:	c3                   	ret    
 182:	f3 0f 1e fb          	endbr32 
 186:	55                   	push   %ebp
 187:	89 e5                	mov    %esp,%ebp
 189:	8b 4d 08             	mov    0x8(%ebp),%ecx
 18c:	8b 55 0c             	mov    0xc(%ebp),%edx
 18f:	0f b6 01             	movzbl (%ecx),%eax
 192:	84 c0                	test   %al,%al
 194:	74 0c                	je     0x1a2
 196:	3a 02                	cmp    (%edx),%al
 198:	75 08                	jne    0x1a2
 19a:	83 c1 01             	add    $0x1,%ecx
 19d:	83 c2 01             	add    $0x1,%edx
 1a0:	eb ed                	jmp    0x18f
 1a2:	0f b6 c0             	movzbl %al,%eax
 1a5:	0f b6 12             	movzbl (%edx),%edx
 1a8:	29 d0                	sub    %edx,%eax
 1aa:	5d                   	pop    %ebp
 1ab:	c3                   	ret    
 1ac:	f3 0f 1e fb          	endbr32 
 1b0:	55                   	push   %ebp
 1b1:	89 e5                	mov    %esp,%ebp
 1b3:	8b 4d 08             	mov    0x8(%ebp),%ecx
 1b6:	b8 00 00 00 00       	mov    $0x0,%eax
 1bb:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
 1bf:	74 05                	je     0x1c6
 1c1:	83 c0 01             	add    $0x1,%eax
 1c4:	eb f5                	jmp    0x1bb
 1c6:	5d                   	pop    %ebp
 1c7:	c3                   	ret    
 1c8:	f3 0f 1e fb          	endbr32 
 1cc:	55                   	push   %ebp
 1cd:	89 e5                	mov    %esp,%ebp
 1cf:	57                   	push   %edi
 1d0:	8b 55 08             	mov    0x8(%ebp),%edx
 1d3:	89 d7                	mov    %edx,%edi
 1d5:	8b 4d 10             	mov    0x10(%ebp),%ecx
 1d8:	8b 45 0c             	mov    0xc(%ebp),%eax
 1db:	fc                   	cld    
 1dc:	f3 aa                	rep stos %al,%es:(%edi)
 1de:	89 d0                	mov    %edx,%eax
 1e0:	5f                   	pop    %edi
 1e1:	5d                   	pop    %ebp
 1e2:	c3                   	ret    
 1e3:	f3 0f 1e fb          	endbr32 
 1e7:	55                   	push   %ebp
 1e8:	89 e5                	mov    %esp,%ebp
 1ea:	8b 45 08             	mov    0x8(%ebp),%eax
 1ed:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
 1f1:	0f b6 10             	movzbl (%eax),%edx
 1f4:	84 d2                	test   %dl,%dl
 1f6:	74 09                	je     0x201
 1f8:	38 ca                	cmp    %cl,%dl
 1fa:	74 0a                	je     0x206
 1fc:	83 c0 01             	add    $0x1,%eax
 1ff:	eb f0                	jmp    0x1f1
 201:	b8 00 00 00 00       	mov    $0x0,%eax
 206:	5d                   	pop    %ebp
 207:	c3                   	ret    
 208:	f3 0f 1e fb          	endbr32 
 20c:	55                   	push   %ebp
 20d:	89 e5                	mov    %esp,%ebp
 20f:	57                   	push   %edi
 210:	56                   	push   %esi
 211:	53                   	push   %ebx
 212:	83 ec 1c             	sub    $0x1c,%esp
 215:	8b 7d 08             	mov    0x8(%ebp),%edi
 218:	bb 00 00 00 00       	mov    $0x0,%ebx
 21d:	89 de                	mov    %ebx,%esi
 21f:	83 c3 01             	add    $0x1,%ebx
 222:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 225:	7d 2e                	jge    0x255
 227:	83 ec 04             	sub    $0x4,%esp
 22a:	6a 01                	push   $0x1
 22c:	8d 45 e7             	lea    -0x19(%ebp),%eax
 22f:	50                   	push   %eax
 230:	6a 00                	push   $0x0
 232:	e8 f6 00 00 00       	call   0x32d
 237:	83 c4 10             	add    $0x10,%esp
 23a:	85 c0                	test   %eax,%eax
 23c:	7e 17                	jle    0x255
 23e:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 242:	88 04 37             	mov    %al,(%edi,%esi,1)
 245:	3c 0a                	cmp    $0xa,%al
 247:	0f 94 c2             	sete   %dl
 24a:	3c 0d                	cmp    $0xd,%al
 24c:	0f 94 c0             	sete   %al
 24f:	08 c2                	or     %al,%dl
 251:	74 ca                	je     0x21d
 253:	89 de                	mov    %ebx,%esi
 255:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 259:	89 f8                	mov    %edi,%eax
 25b:	8d 65 f4             	lea    -0xc(%ebp),%esp
 25e:	5b                   	pop    %ebx
 25f:	5e                   	pop    %esi
 260:	5f                   	pop    %edi
 261:	5d                   	pop    %ebp
 262:	c3                   	ret    
 263:	f3 0f 1e fb          	endbr32 
 267:	55                   	push   %ebp
 268:	89 e5                	mov    %esp,%ebp
 26a:	56                   	push   %esi
 26b:	53                   	push   %ebx
 26c:	83 ec 08             	sub    $0x8,%esp
 26f:	6a 00                	push   $0x0
 271:	ff 75 08             	pushl  0x8(%ebp)
 274:	e8 dc 00 00 00       	call   0x355
 279:	83 c4 10             	add    $0x10,%esp
 27c:	85 c0                	test   %eax,%eax
 27e:	78 24                	js     0x2a4
 280:	89 c3                	mov    %eax,%ebx
 282:	83 ec 08             	sub    $0x8,%esp
 285:	ff 75 0c             	pushl  0xc(%ebp)
 288:	50                   	push   %eax
 289:	e8 df 00 00 00       	call   0x36d
 28e:	89 c6                	mov    %eax,%esi
 290:	89 1c 24             	mov    %ebx,(%esp)
 293:	e8 a5 00 00 00       	call   0x33d
 298:	83 c4 10             	add    $0x10,%esp
 29b:	89 f0                	mov    %esi,%eax
 29d:	8d 65 f8             	lea    -0x8(%ebp),%esp
 2a0:	5b                   	pop    %ebx
 2a1:	5e                   	pop    %esi
 2a2:	5d                   	pop    %ebp
 2a3:	c3                   	ret    
 2a4:	be ff ff ff ff       	mov    $0xffffffff,%esi
 2a9:	eb f0                	jmp    0x29b
 2ab:	f3 0f 1e fb          	endbr32 
 2af:	55                   	push   %ebp
 2b0:	89 e5                	mov    %esp,%ebp
 2b2:	53                   	push   %ebx
 2b3:	8b 4d 08             	mov    0x8(%ebp),%ecx
 2b6:	ba 00 00 00 00       	mov    $0x0,%edx
 2bb:	0f b6 01             	movzbl (%ecx),%eax
 2be:	8d 58 d0             	lea    -0x30(%eax),%ebx
 2c1:	80 fb 09             	cmp    $0x9,%bl
 2c4:	77 12                	ja     0x2d8
 2c6:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 2c9:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 2cc:	83 c1 01             	add    $0x1,%ecx
 2cf:	0f be c0             	movsbl %al,%eax
 2d2:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 2d6:	eb e3                	jmp    0x2bb
 2d8:	89 d0                	mov    %edx,%eax
 2da:	5b                   	pop    %ebx
 2db:	5d                   	pop    %ebp
 2dc:	c3                   	ret    
 2dd:	f3 0f 1e fb          	endbr32 
 2e1:	55                   	push   %ebp
 2e2:	89 e5                	mov    %esp,%ebp
 2e4:	56                   	push   %esi
 2e5:	53                   	push   %ebx
 2e6:	8b 75 08             	mov    0x8(%ebp),%esi
 2e9:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 2ec:	8b 45 10             	mov    0x10(%ebp),%eax
 2ef:	89 f2                	mov    %esi,%edx
 2f1:	8d 58 ff             	lea    -0x1(%eax),%ebx
 2f4:	85 c0                	test   %eax,%eax
 2f6:	7e 0f                	jle    0x307
 2f8:	0f b6 01             	movzbl (%ecx),%eax
 2fb:	88 02                	mov    %al,(%edx)
 2fd:	8d 49 01             	lea    0x1(%ecx),%ecx
 300:	8d 52 01             	lea    0x1(%edx),%edx
 303:	89 d8                	mov    %ebx,%eax
 305:	eb ea                	jmp    0x2f1
 307:	89 f0                	mov    %esi,%eax
 309:	5b                   	pop    %ebx
 30a:	5e                   	pop    %esi
 30b:	5d                   	pop    %ebp
 30c:	c3                   	ret    
 30d:	b8 01 00 00 00       	mov    $0x1,%eax
 312:	cd 40                	int    $0x40
 314:	c3                   	ret    
 315:	b8 02 00 00 00       	mov    $0x2,%eax
 31a:	cd 40                	int    $0x40
 31c:	c3                   	ret    
 31d:	b8 03 00 00 00       	mov    $0x3,%eax
 322:	cd 40                	int    $0x40
 324:	c3                   	ret    
 325:	b8 04 00 00 00       	mov    $0x4,%eax
 32a:	cd 40                	int    $0x40
 32c:	c3                   	ret    
 32d:	b8 05 00 00 00       	mov    $0x5,%eax
 332:	cd 40                	int    $0x40
 334:	c3                   	ret    
 335:	b8 10 00 00 00       	mov    $0x10,%eax
 33a:	cd 40                	int    $0x40
 33c:	c3                   	ret    
 33d:	b8 15 00 00 00       	mov    $0x15,%eax
 342:	cd 40                	int    $0x40
 344:	c3                   	ret    
 345:	b8 06 00 00 00       	mov    $0x6,%eax
 34a:	cd 40                	int    $0x40
 34c:	c3                   	ret    
 34d:	b8 07 00 00 00       	mov    $0x7,%eax
 352:	cd 40                	int    $0x40
 354:	c3                   	ret    
 355:	b8 0f 00 00 00       	mov    $0xf,%eax
 35a:	cd 40                	int    $0x40
 35c:	c3                   	ret    
 35d:	b8 11 00 00 00       	mov    $0x11,%eax
 362:	cd 40                	int    $0x40
 364:	c3                   	ret    
 365:	b8 12 00 00 00       	mov    $0x12,%eax
 36a:	cd 40                	int    $0x40
 36c:	c3                   	ret    
 36d:	b8 08 00 00 00       	mov    $0x8,%eax
 372:	cd 40                	int    $0x40
 374:	c3                   	ret    
 375:	b8 13 00 00 00       	mov    $0x13,%eax
 37a:	cd 40                	int    $0x40
 37c:	c3                   	ret    
 37d:	b8 14 00 00 00       	mov    $0x14,%eax
 382:	cd 40                	int    $0x40
 384:	c3                   	ret    
 385:	b8 09 00 00 00       	mov    $0x9,%eax
 38a:	cd 40                	int    $0x40
 38c:	c3                   	ret    
 38d:	b8 0a 00 00 00       	mov    $0xa,%eax
 392:	cd 40                	int    $0x40
 394:	c3                   	ret    
 395:	b8 0b 00 00 00       	mov    $0xb,%eax
 39a:	cd 40                	int    $0x40
 39c:	c3                   	ret    
 39d:	b8 0c 00 00 00       	mov    $0xc,%eax
 3a2:	cd 40                	int    $0x40
 3a4:	c3                   	ret    
 3a5:	b8 0d 00 00 00       	mov    $0xd,%eax
 3aa:	cd 40                	int    $0x40
 3ac:	c3                   	ret    
 3ad:	b8 0e 00 00 00       	mov    $0xe,%eax
 3b2:	cd 40                	int    $0x40
 3b4:	c3                   	ret    
 3b5:	b8 16 00 00 00       	mov    $0x16,%eax
 3ba:	cd 40                	int    $0x40
 3bc:	c3                   	ret    
 3bd:	b8 17 00 00 00       	mov    $0x17,%eax
 3c2:	cd 40                	int    $0x40
 3c4:	c3                   	ret    
 3c5:	55                   	push   %ebp
 3c6:	89 e5                	mov    %esp,%ebp
 3c8:	83 ec 1c             	sub    $0x1c,%esp
 3cb:	88 55 f4             	mov    %dl,-0xc(%ebp)
 3ce:	6a 01                	push   $0x1
 3d0:	8d 55 f4             	lea    -0xc(%ebp),%edx
 3d3:	52                   	push   %edx
 3d4:	50                   	push   %eax
 3d5:	e8 5b ff ff ff       	call   0x335
 3da:	83 c4 10             	add    $0x10,%esp
 3dd:	c9                   	leave  
 3de:	c3                   	ret    
 3df:	55                   	push   %ebp
 3e0:	89 e5                	mov    %esp,%ebp
 3e2:	57                   	push   %edi
 3e3:	56                   	push   %esi
 3e4:	53                   	push   %ebx
 3e5:	83 ec 2c             	sub    $0x2c,%esp
 3e8:	89 45 d0             	mov    %eax,-0x30(%ebp)
 3eb:	89 d6                	mov    %edx,%esi
 3ed:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 3f1:	0f 95 c2             	setne  %dl
 3f4:	89 f0                	mov    %esi,%eax
 3f6:	c1 e8 1f             	shr    $0x1f,%eax
 3f9:	84 c2                	test   %al,%dl
 3fb:	74 42                	je     0x43f
 3fd:	f7 de                	neg    %esi
 3ff:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 406:	bb 00 00 00 00       	mov    $0x0,%ebx
 40b:	89 f0                	mov    %esi,%eax
 40d:	ba 00 00 00 00       	mov    $0x0,%edx
 412:	f7 f1                	div    %ecx
 414:	89 df                	mov    %ebx,%edi
 416:	83 c3 01             	add    $0x1,%ebx
 419:	0f b6 92 e0 07 00 00 	movzbl 0x7e0(%edx),%edx
 420:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 424:	89 f2                	mov    %esi,%edx
 426:	89 c6                	mov    %eax,%esi
 428:	39 d1                	cmp    %edx,%ecx
 42a:	76 df                	jbe    0x40b
 42c:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 430:	74 2f                	je     0x461
 432:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 437:	8d 5f 02             	lea    0x2(%edi),%ebx
 43a:	8b 75 d0             	mov    -0x30(%ebp),%esi
 43d:	eb 15                	jmp    0x454
 43f:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 446:	eb be                	jmp    0x406
 448:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 44d:	89 f0                	mov    %esi,%eax
 44f:	e8 71 ff ff ff       	call   0x3c5
 454:	83 eb 01             	sub    $0x1,%ebx
 457:	79 ef                	jns    0x448
 459:	83 c4 2c             	add    $0x2c,%esp
 45c:	5b                   	pop    %ebx
 45d:	5e                   	pop    %esi
 45e:	5f                   	pop    %edi
 45f:	5d                   	pop    %ebp
 460:	c3                   	ret    
 461:	8b 75 d0             	mov    -0x30(%ebp),%esi
 464:	eb ee                	jmp    0x454
 466:	f3 0f 1e fb          	endbr32 
 46a:	55                   	push   %ebp
 46b:	89 e5                	mov    %esp,%ebp
 46d:	57                   	push   %edi
 46e:	56                   	push   %esi
 46f:	53                   	push   %ebx
 470:	83 ec 1c             	sub    $0x1c,%esp
 473:	8d 45 10             	lea    0x10(%ebp),%eax
 476:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 479:	be 00 00 00 00       	mov    $0x0,%esi
 47e:	bb 00 00 00 00       	mov    $0x0,%ebx
 483:	eb 14                	jmp    0x499
 485:	89 fa                	mov    %edi,%edx
 487:	8b 45 08             	mov    0x8(%ebp),%eax
 48a:	e8 36 ff ff ff       	call   0x3c5
 48f:	eb 05                	jmp    0x496
 491:	83 fe 25             	cmp    $0x25,%esi
 494:	74 25                	je     0x4bb
 496:	83 c3 01             	add    $0x1,%ebx
 499:	8b 45 0c             	mov    0xc(%ebp),%eax
 49c:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 4a0:	84 c0                	test   %al,%al
 4a2:	0f 84 23 01 00 00    	je     0x5cb
 4a8:	0f be f8             	movsbl %al,%edi
 4ab:	0f b6 c0             	movzbl %al,%eax
 4ae:	85 f6                	test   %esi,%esi
 4b0:	75 df                	jne    0x491
 4b2:	83 f8 25             	cmp    $0x25,%eax
 4b5:	75 ce                	jne    0x485
 4b7:	89 c6                	mov    %eax,%esi
 4b9:	eb db                	jmp    0x496
 4bb:	83 f8 64             	cmp    $0x64,%eax
 4be:	74 49                	je     0x509
 4c0:	83 f8 78             	cmp    $0x78,%eax
 4c3:	0f 94 c1             	sete   %cl
 4c6:	83 f8 70             	cmp    $0x70,%eax
 4c9:	0f 94 c2             	sete   %dl
 4cc:	08 d1                	or     %dl,%cl
 4ce:	75 63                	jne    0x533
 4d0:	83 f8 73             	cmp    $0x73,%eax
 4d3:	0f 84 84 00 00 00    	je     0x55d
 4d9:	83 f8 63             	cmp    $0x63,%eax
 4dc:	0f 84 b7 00 00 00    	je     0x599
 4e2:	83 f8 25             	cmp    $0x25,%eax
 4e5:	0f 84 cc 00 00 00    	je     0x5b7
 4eb:	ba 25 00 00 00       	mov    $0x25,%edx
 4f0:	8b 45 08             	mov    0x8(%ebp),%eax
 4f3:	e8 cd fe ff ff       	call   0x3c5
 4f8:	89 fa                	mov    %edi,%edx
 4fa:	8b 45 08             	mov    0x8(%ebp),%eax
 4fd:	e8 c3 fe ff ff       	call   0x3c5
 502:	be 00 00 00 00       	mov    $0x0,%esi
 507:	eb 8d                	jmp    0x496
 509:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 50c:	8b 17                	mov    (%edi),%edx
 50e:	83 ec 0c             	sub    $0xc,%esp
 511:	6a 01                	push   $0x1
 513:	b9 0a 00 00 00       	mov    $0xa,%ecx
 518:	8b 45 08             	mov    0x8(%ebp),%eax
 51b:	e8 bf fe ff ff       	call   0x3df
 520:	83 c7 04             	add    $0x4,%edi
 523:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 526:	83 c4 10             	add    $0x10,%esp
 529:	be 00 00 00 00       	mov    $0x0,%esi
 52e:	e9 63 ff ff ff       	jmp    0x496
 533:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 536:	8b 17                	mov    (%edi),%edx
 538:	83 ec 0c             	sub    $0xc,%esp
 53b:	6a 00                	push   $0x0
 53d:	b9 10 00 00 00       	mov    $0x10,%ecx
 542:	8b 45 08             	mov    0x8(%ebp),%eax
 545:	e8 95 fe ff ff       	call   0x3df
 54a:	83 c7 04             	add    $0x4,%edi
 54d:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 550:	83 c4 10             	add    $0x10,%esp
 553:	be 00 00 00 00       	mov    $0x0,%esi
 558:	e9 39 ff ff ff       	jmp    0x496
 55d:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 560:	8b 30                	mov    (%eax),%esi
 562:	83 c0 04             	add    $0x4,%eax
 565:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 568:	85 f6                	test   %esi,%esi
 56a:	75 28                	jne    0x594
 56c:	be d8 07 00 00       	mov    $0x7d8,%esi
 571:	8b 7d 08             	mov    0x8(%ebp),%edi
 574:	eb 0d                	jmp    0x583
 576:	0f be d2             	movsbl %dl,%edx
 579:	89 f8                	mov    %edi,%eax
 57b:	e8 45 fe ff ff       	call   0x3c5
 580:	83 c6 01             	add    $0x1,%esi
 583:	0f b6 16             	movzbl (%esi),%edx
 586:	84 d2                	test   %dl,%dl
 588:	75 ec                	jne    0x576
 58a:	be 00 00 00 00       	mov    $0x0,%esi
 58f:	e9 02 ff ff ff       	jmp    0x496
 594:	8b 7d 08             	mov    0x8(%ebp),%edi
 597:	eb ea                	jmp    0x583
 599:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 59c:	0f be 17             	movsbl (%edi),%edx
 59f:	8b 45 08             	mov    0x8(%ebp),%eax
 5a2:	e8 1e fe ff ff       	call   0x3c5
 5a7:	83 c7 04             	add    $0x4,%edi
 5aa:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 5ad:	be 00 00 00 00       	mov    $0x0,%esi
 5b2:	e9 df fe ff ff       	jmp    0x496
 5b7:	89 fa                	mov    %edi,%edx
 5b9:	8b 45 08             	mov    0x8(%ebp),%eax
 5bc:	e8 04 fe ff ff       	call   0x3c5
 5c1:	be 00 00 00 00       	mov    $0x0,%esi
 5c6:	e9 cb fe ff ff       	jmp    0x496
 5cb:	8d 65 f4             	lea    -0xc(%ebp),%esp
 5ce:	5b                   	pop    %ebx
 5cf:	5e                   	pop    %esi
 5d0:	5f                   	pop    %edi
 5d1:	5d                   	pop    %ebp
 5d2:	c3                   	ret    
 5d3:	f3 0f 1e fb          	endbr32 
 5d7:	55                   	push   %ebp
 5d8:	89 e5                	mov    %esp,%ebp
 5da:	57                   	push   %edi
 5db:	56                   	push   %esi
 5dc:	53                   	push   %ebx
 5dd:	8b 5d 08             	mov    0x8(%ebp),%ebx
 5e0:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 5e3:	a1 a8 0a 00 00       	mov    0xaa8,%eax
 5e8:	eb 02                	jmp    0x5ec
 5ea:	89 d0                	mov    %edx,%eax
 5ec:	39 c8                	cmp    %ecx,%eax
 5ee:	73 04                	jae    0x5f4
 5f0:	39 08                	cmp    %ecx,(%eax)
 5f2:	77 12                	ja     0x606
 5f4:	8b 10                	mov    (%eax),%edx
 5f6:	39 c2                	cmp    %eax,%edx
 5f8:	77 f0                	ja     0x5ea
 5fa:	39 c8                	cmp    %ecx,%eax
 5fc:	72 08                	jb     0x606
 5fe:	39 ca                	cmp    %ecx,%edx
 600:	77 04                	ja     0x606
 602:	89 d0                	mov    %edx,%eax
 604:	eb e6                	jmp    0x5ec
 606:	8b 73 fc             	mov    -0x4(%ebx),%esi
 609:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 60c:	8b 10                	mov    (%eax),%edx
 60e:	39 d7                	cmp    %edx,%edi
 610:	74 19                	je     0x62b
 612:	89 53 f8             	mov    %edx,-0x8(%ebx)
 615:	8b 50 04             	mov    0x4(%eax),%edx
 618:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 61b:	39 ce                	cmp    %ecx,%esi
 61d:	74 1b                	je     0x63a
 61f:	89 08                	mov    %ecx,(%eax)
 621:	a3 a8 0a 00 00       	mov    %eax,0xaa8
 626:	5b                   	pop    %ebx
 627:	5e                   	pop    %esi
 628:	5f                   	pop    %edi
 629:	5d                   	pop    %ebp
 62a:	c3                   	ret    
 62b:	03 72 04             	add    0x4(%edx),%esi
 62e:	89 73 fc             	mov    %esi,-0x4(%ebx)
 631:	8b 10                	mov    (%eax),%edx
 633:	8b 12                	mov    (%edx),%edx
 635:	89 53 f8             	mov    %edx,-0x8(%ebx)
 638:	eb db                	jmp    0x615
 63a:	03 53 fc             	add    -0x4(%ebx),%edx
 63d:	89 50 04             	mov    %edx,0x4(%eax)
 640:	8b 53 f8             	mov    -0x8(%ebx),%edx
 643:	89 10                	mov    %edx,(%eax)
 645:	eb da                	jmp    0x621
 647:	55                   	push   %ebp
 648:	89 e5                	mov    %esp,%ebp
 64a:	53                   	push   %ebx
 64b:	83 ec 04             	sub    $0x4,%esp
 64e:	89 c3                	mov    %eax,%ebx
 650:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 655:	77 05                	ja     0x65c
 657:	bb 00 10 00 00       	mov    $0x1000,%ebx
 65c:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 663:	83 ec 0c             	sub    $0xc,%esp
 666:	50                   	push   %eax
 667:	e8 31 fd ff ff       	call   0x39d
 66c:	83 c4 10             	add    $0x10,%esp
 66f:	83 f8 ff             	cmp    $0xffffffff,%eax
 672:	74 1c                	je     0x690
 674:	89 58 04             	mov    %ebx,0x4(%eax)
 677:	83 c0 08             	add    $0x8,%eax
 67a:	83 ec 0c             	sub    $0xc,%esp
 67d:	50                   	push   %eax
 67e:	e8 50 ff ff ff       	call   0x5d3
 683:	a1 a8 0a 00 00       	mov    0xaa8,%eax
 688:	83 c4 10             	add    $0x10,%esp
 68b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 68e:	c9                   	leave  
 68f:	c3                   	ret    
 690:	b8 00 00 00 00       	mov    $0x0,%eax
 695:	eb f4                	jmp    0x68b
 697:	f3 0f 1e fb          	endbr32 
 69b:	55                   	push   %ebp
 69c:	89 e5                	mov    %esp,%ebp
 69e:	53                   	push   %ebx
 69f:	83 ec 04             	sub    $0x4,%esp
 6a2:	8b 45 08             	mov    0x8(%ebp),%eax
 6a5:	8d 58 07             	lea    0x7(%eax),%ebx
 6a8:	c1 eb 03             	shr    $0x3,%ebx
 6ab:	83 c3 01             	add    $0x1,%ebx
 6ae:	8b 0d a8 0a 00 00    	mov    0xaa8,%ecx
 6b4:	85 c9                	test   %ecx,%ecx
 6b6:	74 04                	je     0x6bc
 6b8:	8b 01                	mov    (%ecx),%eax
 6ba:	eb 4b                	jmp    0x707
 6bc:	c7 05 a8 0a 00 00 ac 	movl   $0xaac,0xaa8
 6c3:	0a 00 00 
 6c6:	c7 05 ac 0a 00 00 ac 	movl   $0xaac,0xaac
 6cd:	0a 00 00 
 6d0:	c7 05 b0 0a 00 00 00 	movl   $0x0,0xab0
 6d7:	00 00 00 
 6da:	b9 ac 0a 00 00       	mov    $0xaac,%ecx
 6df:	eb d7                	jmp    0x6b8
 6e1:	74 1a                	je     0x6fd
 6e3:	29 da                	sub    %ebx,%edx
 6e5:	89 50 04             	mov    %edx,0x4(%eax)
 6e8:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 6eb:	89 58 04             	mov    %ebx,0x4(%eax)
 6ee:	89 0d a8 0a 00 00    	mov    %ecx,0xaa8
 6f4:	83 c0 08             	add    $0x8,%eax
 6f7:	83 c4 04             	add    $0x4,%esp
 6fa:	5b                   	pop    %ebx
 6fb:	5d                   	pop    %ebp
 6fc:	c3                   	ret    
 6fd:	8b 10                	mov    (%eax),%edx
 6ff:	89 11                	mov    %edx,(%ecx)
 701:	eb eb                	jmp    0x6ee
 703:	89 c1                	mov    %eax,%ecx
 705:	8b 00                	mov    (%eax),%eax
 707:	8b 50 04             	mov    0x4(%eax),%edx
 70a:	39 da                	cmp    %ebx,%edx
 70c:	73 d3                	jae    0x6e1
 70e:	39 05 a8 0a 00 00    	cmp    %eax,0xaa8
 714:	75 ed                	jne    0x703
 716:	89 d8                	mov    %ebx,%eax
 718:	e8 2a ff ff ff       	call   0x647
 71d:	85 c0                	test   %eax,%eax
 71f:	75 e2                	jne    0x703
 721:	eb d4                	jmp    0x6f7
