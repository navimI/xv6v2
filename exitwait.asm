
_exitwait:     file format elf32-i386


Disassembly of section .text:

00000000 <.text>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	53                   	push   %ebx
   4:	83 ec 1c             	sub    $0x1c,%esp
   7:	68 88 07 00 00       	push   $0x788
   c:	6a 01                	push   $0x1
   e:	e8 bd 04 00 00       	call   0x4d0
  13:	83 c4 10             	add    $0x10,%esp
  16:	bb 00 00 00 00       	mov    $0x0,%ebx
  1b:	81 fb e7 03 00 00    	cmp    $0x3e7,%ebx
  21:	7f 38                	jg     0x5b
  23:	e8 4b 03 00 00       	call   0x373
  28:	85 c0                	test   %eax,%eax
  2a:	78 2f                	js     0x5b
  2c:	74 05                	je     0x33
  2e:	83 c3 01             	add    $0x1,%ebx
  31:	eb e8                	jmp    0x1b
  33:	ba 67 66 66 66       	mov    $0x66666667,%edx
  38:	89 d8                	mov    %ebx,%eax
  3a:	f7 ea                	imul   %edx
  3c:	c1 fa 04             	sar    $0x4,%edx
  3f:	89 d8                	mov    %ebx,%eax
  41:	c1 f8 1f             	sar    $0x1f,%eax
  44:	29 c2                	sub    %eax,%edx
  46:	89 d1                	mov    %edx,%ecx
  48:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4d:	99                   	cltd   
  4e:	f7 f9                	idiv   %ecx
  50:	83 ec 0c             	sub    $0xc,%esp
  53:	01 d8                	add    %ebx,%eax
  55:	50                   	push   %eax
  56:	e8 20 03 00 00       	call   0x37b
  5b:	81 fb e8 03 00 00    	cmp    $0x3e8,%ebx
  61:	75 52                	jne    0xb5
  63:	83 ec 04             	sub    $0x4,%esp
  66:	68 e8 03 00 00       	push   $0x3e8
  6b:	68 fc 07 00 00       	push   $0x7fc
  70:	6a 01                	push   $0x1
  72:	e8 59 04 00 00       	call   0x4d0
  77:	c7 04 24 e8 03 00 00 	movl   $0x3e8,(%esp)
  7e:	e8 f8 02 00 00       	call   0x37b
  83:	83 ec 08             	sub    $0x8,%esp
  86:	68 a4 07 00 00       	push   $0x7a4
  8b:	6a 01                	push   $0x1
  8d:	e8 3e 04 00 00       	call   0x4d0
  92:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
  99:	e8 dd 02 00 00       	call   0x37b
  9e:	83 e9 01             	sub    $0x1,%ecx
  a1:	51                   	push   %ecx
  a2:	50                   	push   %eax
  a3:	68 1c 08 00 00       	push   $0x81c
  a8:	6a 01                	push   $0x1
  aa:	e8 21 04 00 00       	call   0x4d0
  af:	83 c4 10             	add    $0x10,%esp
  b2:	83 eb 01             	sub    $0x1,%ebx
  b5:	85 db                	test   %ebx,%ebx
  b7:	7e 33                	jle    0xec
  b9:	83 ec 0c             	sub    $0xc,%esp
  bc:	8d 45 f4             	lea    -0xc(%ebp),%eax
  bf:	50                   	push   %eax
  c0:	e8 be 02 00 00       	call   0x383
  c5:	83 c4 10             	add    $0x10,%esp
  c8:	85 c0                	test   %eax,%eax
  ca:	78 b7                	js     0x83
  cc:	8b 55 f4             	mov    -0xc(%ebp),%edx
  cf:	89 d1                	mov    %edx,%ecx
  d1:	83 e1 7f             	and    $0x7f,%ecx
  d4:	75 c8                	jne    0x9e
  d6:	0f b6 d6             	movzbl %dh,%edx
  d9:	52                   	push   %edx
  da:	50                   	push   %eax
  db:	68 b8 07 00 00       	push   $0x7b8
  e0:	6a 01                	push   $0x1
  e2:	e8 e9 03 00 00       	call   0x4d0
  e7:	83 c4 10             	add    $0x10,%esp
  ea:	eb c6                	jmp    0xb2
  ec:	83 ec 08             	sub    $0x8,%esp
  ef:	68 d6 07 00 00       	push   $0x7d6
  f4:	6a 01                	push   $0x1
  f6:	e8 d5 03 00 00       	call   0x4d0
  fb:	e8 73 02 00 00       	call   0x373
 100:	89 c3                	mov    %eax,%ebx
 102:	83 c4 10             	add    $0x10,%esp
 105:	85 c0                	test   %eax,%eax
 107:	74 5a                	je     0x163
 109:	83 ec 0c             	sub    $0xc,%esp
 10c:	8d 45 f4             	lea    -0xc(%ebp),%eax
 10f:	50                   	push   %eax
 110:	e8 6e 02 00 00       	call   0x383
 115:	8b 45 f4             	mov    -0xc(%ebp),%eax
 118:	83 c4 10             	add    $0x10,%esp
 11b:	89 c2                	mov    %eax,%edx
 11d:	83 e2 7f             	and    $0x7f,%edx
 120:	75 4b                	jne    0x16d
 122:	83 ec 0c             	sub    $0xc,%esp
 125:	50                   	push   %eax
 126:	0f b6 c4             	movzbl %ah,%eax
 129:	50                   	push   %eax
 12a:	53                   	push   %ebx
 12b:	68 40 08 00 00       	push   $0x840
 130:	6a 01                	push   $0x1
 132:	e8 99 03 00 00       	call   0x4d0
 137:	83 c4 20             	add    $0x20,%esp
 13a:	83 ec 0c             	sub    $0xc,%esp
 13d:	6a 00                	push   $0x0
 13f:	e8 3f 02 00 00       	call   0x383
 144:	83 c4 10             	add    $0x10,%esp
 147:	83 f8 ff             	cmp    $0xffffffff,%eax
 14a:	75 37                	jne    0x183
 14c:	83 ec 08             	sub    $0x8,%esp
 14f:	68 ee 07 00 00       	push   $0x7ee
 154:	6a 01                	push   $0x1
 156:	e8 75 03 00 00       	call   0x4d0
 15b:	83 c4 10             	add    $0x10,%esp
 15e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 161:	c9                   	leave  
 162:	c3                   	ret    
 163:	83 ec 0c             	sub    $0xc,%esp
 166:	6a 0c                	push   $0xc
 168:	e8 0e 02 00 00       	call   0x37b
 16d:	83 ea 01             	sub    $0x1,%edx
 170:	52                   	push   %edx
 171:	53                   	push   %ebx
 172:	68 1c 08 00 00       	push   $0x81c
 177:	6a 01                	push   $0x1
 179:	e8 52 03 00 00       	call   0x4d0
 17e:	83 c4 10             	add    $0x10,%esp
 181:	eb b7                	jmp    0x13a
 183:	83 ec 08             	sub    $0x8,%esp
 186:	68 db 07 00 00       	push   $0x7db
 18b:	6a 01                	push   $0x1
 18d:	e8 3e 03 00 00       	call   0x4d0
 192:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
 199:	e8 dd 01 00 00       	call   0x37b
 19e:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 1a2:	83 e4 f0             	and    $0xfffffff0,%esp
 1a5:	ff 71 fc             	push   -0x4(%ecx)
 1a8:	55                   	push   %ebp
 1a9:	89 e5                	mov    %esp,%ebp
 1ab:	51                   	push   %ecx
 1ac:	83 ec 04             	sub    $0x4,%esp
 1af:	e8 4c fe ff ff       	call   0x0
 1b4:	83 ec 0c             	sub    $0xc,%esp
 1b7:	6a 00                	push   $0x0
 1b9:	e8 bd 01 00 00       	call   0x37b
 1be:	f3 0f 1e fb          	endbr32 
 1c2:	55                   	push   %ebp
 1c3:	89 e5                	mov    %esp,%ebp
 1c5:	56                   	push   %esi
 1c6:	53                   	push   %ebx
 1c7:	8b 75 08             	mov    0x8(%ebp),%esi
 1ca:	8b 55 0c             	mov    0xc(%ebp),%edx
 1cd:	89 f0                	mov    %esi,%eax
 1cf:	89 d1                	mov    %edx,%ecx
 1d1:	83 c2 01             	add    $0x1,%edx
 1d4:	89 c3                	mov    %eax,%ebx
 1d6:	83 c0 01             	add    $0x1,%eax
 1d9:	0f b6 09             	movzbl (%ecx),%ecx
 1dc:	88 0b                	mov    %cl,(%ebx)
 1de:	84 c9                	test   %cl,%cl
 1e0:	75 ed                	jne    0x1cf
 1e2:	89 f0                	mov    %esi,%eax
 1e4:	5b                   	pop    %ebx
 1e5:	5e                   	pop    %esi
 1e6:	5d                   	pop    %ebp
 1e7:	c3                   	ret    
 1e8:	f3 0f 1e fb          	endbr32 
 1ec:	55                   	push   %ebp
 1ed:	89 e5                	mov    %esp,%ebp
 1ef:	8b 4d 08             	mov    0x8(%ebp),%ecx
 1f2:	8b 55 0c             	mov    0xc(%ebp),%edx
 1f5:	0f b6 01             	movzbl (%ecx),%eax
 1f8:	84 c0                	test   %al,%al
 1fa:	74 0c                	je     0x208
 1fc:	3a 02                	cmp    (%edx),%al
 1fe:	75 08                	jne    0x208
 200:	83 c1 01             	add    $0x1,%ecx
 203:	83 c2 01             	add    $0x1,%edx
 206:	eb ed                	jmp    0x1f5
 208:	0f b6 c0             	movzbl %al,%eax
 20b:	0f b6 12             	movzbl (%edx),%edx
 20e:	29 d0                	sub    %edx,%eax
 210:	5d                   	pop    %ebp
 211:	c3                   	ret    
 212:	f3 0f 1e fb          	endbr32 
 216:	55                   	push   %ebp
 217:	89 e5                	mov    %esp,%ebp
 219:	8b 4d 08             	mov    0x8(%ebp),%ecx
 21c:	b8 00 00 00 00       	mov    $0x0,%eax
 221:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
 225:	74 05                	je     0x22c
 227:	83 c0 01             	add    $0x1,%eax
 22a:	eb f5                	jmp    0x221
 22c:	5d                   	pop    %ebp
 22d:	c3                   	ret    
 22e:	f3 0f 1e fb          	endbr32 
 232:	55                   	push   %ebp
 233:	89 e5                	mov    %esp,%ebp
 235:	57                   	push   %edi
 236:	8b 55 08             	mov    0x8(%ebp),%edx
 239:	89 d7                	mov    %edx,%edi
 23b:	8b 4d 10             	mov    0x10(%ebp),%ecx
 23e:	8b 45 0c             	mov    0xc(%ebp),%eax
 241:	fc                   	cld    
 242:	f3 aa                	rep stos %al,%es:(%edi)
 244:	89 d0                	mov    %edx,%eax
 246:	5f                   	pop    %edi
 247:	5d                   	pop    %ebp
 248:	c3                   	ret    
 249:	f3 0f 1e fb          	endbr32 
 24d:	55                   	push   %ebp
 24e:	89 e5                	mov    %esp,%ebp
 250:	8b 45 08             	mov    0x8(%ebp),%eax
 253:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
 257:	0f b6 10             	movzbl (%eax),%edx
 25a:	84 d2                	test   %dl,%dl
 25c:	74 09                	je     0x267
 25e:	38 ca                	cmp    %cl,%dl
 260:	74 0a                	je     0x26c
 262:	83 c0 01             	add    $0x1,%eax
 265:	eb f0                	jmp    0x257
 267:	b8 00 00 00 00       	mov    $0x0,%eax
 26c:	5d                   	pop    %ebp
 26d:	c3                   	ret    
 26e:	f3 0f 1e fb          	endbr32 
 272:	55                   	push   %ebp
 273:	89 e5                	mov    %esp,%ebp
 275:	57                   	push   %edi
 276:	56                   	push   %esi
 277:	53                   	push   %ebx
 278:	83 ec 1c             	sub    $0x1c,%esp
 27b:	8b 7d 08             	mov    0x8(%ebp),%edi
 27e:	bb 00 00 00 00       	mov    $0x0,%ebx
 283:	89 de                	mov    %ebx,%esi
 285:	83 c3 01             	add    $0x1,%ebx
 288:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 28b:	7d 2e                	jge    0x2bb
 28d:	83 ec 04             	sub    $0x4,%esp
 290:	6a 01                	push   $0x1
 292:	8d 45 e7             	lea    -0x19(%ebp),%eax
 295:	50                   	push   %eax
 296:	6a 00                	push   $0x0
 298:	e8 f6 00 00 00       	call   0x393
 29d:	83 c4 10             	add    $0x10,%esp
 2a0:	85 c0                	test   %eax,%eax
 2a2:	7e 17                	jle    0x2bb
 2a4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 2a8:	88 04 37             	mov    %al,(%edi,%esi,1)
 2ab:	3c 0a                	cmp    $0xa,%al
 2ad:	0f 94 c2             	sete   %dl
 2b0:	3c 0d                	cmp    $0xd,%al
 2b2:	0f 94 c0             	sete   %al
 2b5:	08 c2                	or     %al,%dl
 2b7:	74 ca                	je     0x283
 2b9:	89 de                	mov    %ebx,%esi
 2bb:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 2bf:	89 f8                	mov    %edi,%eax
 2c1:	8d 65 f4             	lea    -0xc(%ebp),%esp
 2c4:	5b                   	pop    %ebx
 2c5:	5e                   	pop    %esi
 2c6:	5f                   	pop    %edi
 2c7:	5d                   	pop    %ebp
 2c8:	c3                   	ret    
 2c9:	f3 0f 1e fb          	endbr32 
 2cd:	55                   	push   %ebp
 2ce:	89 e5                	mov    %esp,%ebp
 2d0:	56                   	push   %esi
 2d1:	53                   	push   %ebx
 2d2:	83 ec 08             	sub    $0x8,%esp
 2d5:	6a 00                	push   $0x0
 2d7:	ff 75 08             	push   0x8(%ebp)
 2da:	e8 dc 00 00 00       	call   0x3bb
 2df:	83 c4 10             	add    $0x10,%esp
 2e2:	85 c0                	test   %eax,%eax
 2e4:	78 24                	js     0x30a
 2e6:	89 c3                	mov    %eax,%ebx
 2e8:	83 ec 08             	sub    $0x8,%esp
 2eb:	ff 75 0c             	push   0xc(%ebp)
 2ee:	50                   	push   %eax
 2ef:	e8 df 00 00 00       	call   0x3d3
 2f4:	89 c6                	mov    %eax,%esi
 2f6:	89 1c 24             	mov    %ebx,(%esp)
 2f9:	e8 a5 00 00 00       	call   0x3a3
 2fe:	83 c4 10             	add    $0x10,%esp
 301:	89 f0                	mov    %esi,%eax
 303:	8d 65 f8             	lea    -0x8(%ebp),%esp
 306:	5b                   	pop    %ebx
 307:	5e                   	pop    %esi
 308:	5d                   	pop    %ebp
 309:	c3                   	ret    
 30a:	be ff ff ff ff       	mov    $0xffffffff,%esi
 30f:	eb f0                	jmp    0x301
 311:	f3 0f 1e fb          	endbr32 
 315:	55                   	push   %ebp
 316:	89 e5                	mov    %esp,%ebp
 318:	53                   	push   %ebx
 319:	8b 4d 08             	mov    0x8(%ebp),%ecx
 31c:	ba 00 00 00 00       	mov    $0x0,%edx
 321:	0f b6 01             	movzbl (%ecx),%eax
 324:	8d 58 d0             	lea    -0x30(%eax),%ebx
 327:	80 fb 09             	cmp    $0x9,%bl
 32a:	77 12                	ja     0x33e
 32c:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 32f:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 332:	83 c1 01             	add    $0x1,%ecx
 335:	0f be c0             	movsbl %al,%eax
 338:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 33c:	eb e3                	jmp    0x321
 33e:	89 d0                	mov    %edx,%eax
 340:	5b                   	pop    %ebx
 341:	5d                   	pop    %ebp
 342:	c3                   	ret    
 343:	f3 0f 1e fb          	endbr32 
 347:	55                   	push   %ebp
 348:	89 e5                	mov    %esp,%ebp
 34a:	56                   	push   %esi
 34b:	53                   	push   %ebx
 34c:	8b 75 08             	mov    0x8(%ebp),%esi
 34f:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 352:	8b 45 10             	mov    0x10(%ebp),%eax
 355:	89 f2                	mov    %esi,%edx
 357:	8d 58 ff             	lea    -0x1(%eax),%ebx
 35a:	85 c0                	test   %eax,%eax
 35c:	7e 0f                	jle    0x36d
 35e:	0f b6 01             	movzbl (%ecx),%eax
 361:	88 02                	mov    %al,(%edx)
 363:	8d 49 01             	lea    0x1(%ecx),%ecx
 366:	8d 52 01             	lea    0x1(%edx),%edx
 369:	89 d8                	mov    %ebx,%eax
 36b:	eb ea                	jmp    0x357
 36d:	89 f0                	mov    %esi,%eax
 36f:	5b                   	pop    %ebx
 370:	5e                   	pop    %esi
 371:	5d                   	pop    %ebp
 372:	c3                   	ret    
 373:	b8 01 00 00 00       	mov    $0x1,%eax
 378:	cd 40                	int    $0x40
 37a:	c3                   	ret    
 37b:	b8 02 00 00 00       	mov    $0x2,%eax
 380:	cd 40                	int    $0x40
 382:	c3                   	ret    
 383:	b8 03 00 00 00       	mov    $0x3,%eax
 388:	cd 40                	int    $0x40
 38a:	c3                   	ret    
 38b:	b8 04 00 00 00       	mov    $0x4,%eax
 390:	cd 40                	int    $0x40
 392:	c3                   	ret    
 393:	b8 05 00 00 00       	mov    $0x5,%eax
 398:	cd 40                	int    $0x40
 39a:	c3                   	ret    
 39b:	b8 10 00 00 00       	mov    $0x10,%eax
 3a0:	cd 40                	int    $0x40
 3a2:	c3                   	ret    
 3a3:	b8 15 00 00 00       	mov    $0x15,%eax
 3a8:	cd 40                	int    $0x40
 3aa:	c3                   	ret    
 3ab:	b8 06 00 00 00       	mov    $0x6,%eax
 3b0:	cd 40                	int    $0x40
 3b2:	c3                   	ret    
 3b3:	b8 07 00 00 00       	mov    $0x7,%eax
 3b8:	cd 40                	int    $0x40
 3ba:	c3                   	ret    
 3bb:	b8 0f 00 00 00       	mov    $0xf,%eax
 3c0:	cd 40                	int    $0x40
 3c2:	c3                   	ret    
 3c3:	b8 11 00 00 00       	mov    $0x11,%eax
 3c8:	cd 40                	int    $0x40
 3ca:	c3                   	ret    
 3cb:	b8 12 00 00 00       	mov    $0x12,%eax
 3d0:	cd 40                	int    $0x40
 3d2:	c3                   	ret    
 3d3:	b8 08 00 00 00       	mov    $0x8,%eax
 3d8:	cd 40                	int    $0x40
 3da:	c3                   	ret    
 3db:	b8 13 00 00 00       	mov    $0x13,%eax
 3e0:	cd 40                	int    $0x40
 3e2:	c3                   	ret    
 3e3:	b8 14 00 00 00       	mov    $0x14,%eax
 3e8:	cd 40                	int    $0x40
 3ea:	c3                   	ret    
 3eb:	b8 09 00 00 00       	mov    $0x9,%eax
 3f0:	cd 40                	int    $0x40
 3f2:	c3                   	ret    
 3f3:	b8 0a 00 00 00       	mov    $0xa,%eax
 3f8:	cd 40                	int    $0x40
 3fa:	c3                   	ret    
 3fb:	b8 0b 00 00 00       	mov    $0xb,%eax
 400:	cd 40                	int    $0x40
 402:	c3                   	ret    
 403:	b8 0c 00 00 00       	mov    $0xc,%eax
 408:	cd 40                	int    $0x40
 40a:	c3                   	ret    
 40b:	b8 0d 00 00 00       	mov    $0xd,%eax
 410:	cd 40                	int    $0x40
 412:	c3                   	ret    
 413:	b8 0e 00 00 00       	mov    $0xe,%eax
 418:	cd 40                	int    $0x40
 41a:	c3                   	ret    
 41b:	b8 16 00 00 00       	mov    $0x16,%eax
 420:	cd 40                	int    $0x40
 422:	c3                   	ret    
 423:	b8 17 00 00 00       	mov    $0x17,%eax
 428:	cd 40                	int    $0x40
 42a:	c3                   	ret    
 42b:	55                   	push   %ebp
 42c:	89 e5                	mov    %esp,%ebp
 42e:	83 ec 1c             	sub    $0x1c,%esp
 431:	88 55 f4             	mov    %dl,-0xc(%ebp)
 434:	6a 01                	push   $0x1
 436:	8d 55 f4             	lea    -0xc(%ebp),%edx
 439:	52                   	push   %edx
 43a:	50                   	push   %eax
 43b:	e8 5b ff ff ff       	call   0x39b
 440:	83 c4 10             	add    $0x10,%esp
 443:	c9                   	leave  
 444:	c3                   	ret    
 445:	55                   	push   %ebp
 446:	89 e5                	mov    %esp,%ebp
 448:	57                   	push   %edi
 449:	56                   	push   %esi
 44a:	53                   	push   %ebx
 44b:	83 ec 2c             	sub    $0x2c,%esp
 44e:	89 45 d0             	mov    %eax,-0x30(%ebp)
 451:	89 d0                	mov    %edx,%eax
 453:	89 ce                	mov    %ecx,%esi
 455:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 459:	0f 95 c1             	setne  %cl
 45c:	c1 ea 1f             	shr    $0x1f,%edx
 45f:	84 d1                	test   %dl,%cl
 461:	74 44                	je     0x4a7
 463:	f7 d8                	neg    %eax
 465:	89 c1                	mov    %eax,%ecx
 467:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 46e:	bb 00 00 00 00       	mov    $0x0,%ebx
 473:	89 c8                	mov    %ecx,%eax
 475:	ba 00 00 00 00       	mov    $0x0,%edx
 47a:	f7 f6                	div    %esi
 47c:	89 df                	mov    %ebx,%edi
 47e:	83 c3 01             	add    $0x1,%ebx
 481:	0f b6 92 cc 08 00 00 	movzbl 0x8cc(%edx),%edx
 488:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 48c:	89 ca                	mov    %ecx,%edx
 48e:	89 c1                	mov    %eax,%ecx
 490:	39 d6                	cmp    %edx,%esi
 492:	76 df                	jbe    0x473
 494:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 498:	74 31                	je     0x4cb
 49a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 49f:	8d 5f 02             	lea    0x2(%edi),%ebx
 4a2:	8b 75 d0             	mov    -0x30(%ebp),%esi
 4a5:	eb 17                	jmp    0x4be
 4a7:	89 c1                	mov    %eax,%ecx
 4a9:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 4b0:	eb bc                	jmp    0x46e
 4b2:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 4b7:	89 f0                	mov    %esi,%eax
 4b9:	e8 6d ff ff ff       	call   0x42b
 4be:	83 eb 01             	sub    $0x1,%ebx
 4c1:	79 ef                	jns    0x4b2
 4c3:	83 c4 2c             	add    $0x2c,%esp
 4c6:	5b                   	pop    %ebx
 4c7:	5e                   	pop    %esi
 4c8:	5f                   	pop    %edi
 4c9:	5d                   	pop    %ebp
 4ca:	c3                   	ret    
 4cb:	8b 75 d0             	mov    -0x30(%ebp),%esi
 4ce:	eb ee                	jmp    0x4be
 4d0:	55                   	push   %ebp
 4d1:	89 e5                	mov    %esp,%ebp
 4d3:	57                   	push   %edi
 4d4:	56                   	push   %esi
 4d5:	53                   	push   %ebx
 4d6:	83 ec 1c             	sub    $0x1c,%esp
 4d9:	8d 45 10             	lea    0x10(%ebp),%eax
 4dc:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 4df:	be 00 00 00 00       	mov    $0x0,%esi
 4e4:	bb 00 00 00 00       	mov    $0x0,%ebx
 4e9:	eb 14                	jmp    0x4ff
 4eb:	89 fa                	mov    %edi,%edx
 4ed:	8b 45 08             	mov    0x8(%ebp),%eax
 4f0:	e8 36 ff ff ff       	call   0x42b
 4f5:	eb 05                	jmp    0x4fc
 4f7:	83 fe 25             	cmp    $0x25,%esi
 4fa:	74 25                	je     0x521
 4fc:	83 c3 01             	add    $0x1,%ebx
 4ff:	8b 45 0c             	mov    0xc(%ebp),%eax
 502:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 506:	84 c0                	test   %al,%al
 508:	0f 84 20 01 00 00    	je     0x62e
 50e:	0f be f8             	movsbl %al,%edi
 511:	0f b6 c0             	movzbl %al,%eax
 514:	85 f6                	test   %esi,%esi
 516:	75 df                	jne    0x4f7
 518:	83 f8 25             	cmp    $0x25,%eax
 51b:	75 ce                	jne    0x4eb
 51d:	89 c6                	mov    %eax,%esi
 51f:	eb db                	jmp    0x4fc
 521:	83 f8 25             	cmp    $0x25,%eax
 524:	0f 84 cf 00 00 00    	je     0x5f9
 52a:	0f 8c dd 00 00 00    	jl     0x60d
 530:	83 f8 78             	cmp    $0x78,%eax
 533:	0f 8f d4 00 00 00    	jg     0x60d
 539:	83 f8 63             	cmp    $0x63,%eax
 53c:	0f 8c cb 00 00 00    	jl     0x60d
 542:	83 e8 63             	sub    $0x63,%eax
 545:	83 f8 15             	cmp    $0x15,%eax
 548:	0f 87 bf 00 00 00    	ja     0x60d
 54e:	ff 24 85 74 08 00 00 	jmp    *0x874(,%eax,4)
 555:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 558:	8b 17                	mov    (%edi),%edx
 55a:	83 ec 0c             	sub    $0xc,%esp
 55d:	6a 01                	push   $0x1
 55f:	b9 0a 00 00 00       	mov    $0xa,%ecx
 564:	8b 45 08             	mov    0x8(%ebp),%eax
 567:	e8 d9 fe ff ff       	call   0x445
 56c:	83 c7 04             	add    $0x4,%edi
 56f:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 572:	83 c4 10             	add    $0x10,%esp
 575:	be 00 00 00 00       	mov    $0x0,%esi
 57a:	eb 80                	jmp    0x4fc
 57c:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 57f:	8b 17                	mov    (%edi),%edx
 581:	83 ec 0c             	sub    $0xc,%esp
 584:	6a 00                	push   $0x0
 586:	b9 10 00 00 00       	mov    $0x10,%ecx
 58b:	8b 45 08             	mov    0x8(%ebp),%eax
 58e:	e8 b2 fe ff ff       	call   0x445
 593:	83 c7 04             	add    $0x4,%edi
 596:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 599:	83 c4 10             	add    $0x10,%esp
 59c:	be 00 00 00 00       	mov    $0x0,%esi
 5a1:	e9 56 ff ff ff       	jmp    0x4fc
 5a6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 5a9:	8b 30                	mov    (%eax),%esi
 5ab:	83 c0 04             	add    $0x4,%eax
 5ae:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 5b1:	85 f6                	test   %esi,%esi
 5b3:	75 15                	jne    0x5ca
 5b5:	be 6b 08 00 00       	mov    $0x86b,%esi
 5ba:	eb 0e                	jmp    0x5ca
 5bc:	0f be d2             	movsbl %dl,%edx
 5bf:	8b 45 08             	mov    0x8(%ebp),%eax
 5c2:	e8 64 fe ff ff       	call   0x42b
 5c7:	83 c6 01             	add    $0x1,%esi
 5ca:	0f b6 16             	movzbl (%esi),%edx
 5cd:	84 d2                	test   %dl,%dl
 5cf:	75 eb                	jne    0x5bc
 5d1:	be 00 00 00 00       	mov    $0x0,%esi
 5d6:	e9 21 ff ff ff       	jmp    0x4fc
 5db:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 5de:	0f be 17             	movsbl (%edi),%edx
 5e1:	8b 45 08             	mov    0x8(%ebp),%eax
 5e4:	e8 42 fe ff ff       	call   0x42b
 5e9:	83 c7 04             	add    $0x4,%edi
 5ec:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 5ef:	be 00 00 00 00       	mov    $0x0,%esi
 5f4:	e9 03 ff ff ff       	jmp    0x4fc
 5f9:	89 fa                	mov    %edi,%edx
 5fb:	8b 45 08             	mov    0x8(%ebp),%eax
 5fe:	e8 28 fe ff ff       	call   0x42b
 603:	be 00 00 00 00       	mov    $0x0,%esi
 608:	e9 ef fe ff ff       	jmp    0x4fc
 60d:	ba 25 00 00 00       	mov    $0x25,%edx
 612:	8b 45 08             	mov    0x8(%ebp),%eax
 615:	e8 11 fe ff ff       	call   0x42b
 61a:	89 fa                	mov    %edi,%edx
 61c:	8b 45 08             	mov    0x8(%ebp),%eax
 61f:	e8 07 fe ff ff       	call   0x42b
 624:	be 00 00 00 00       	mov    $0x0,%esi
 629:	e9 ce fe ff ff       	jmp    0x4fc
 62e:	8d 65 f4             	lea    -0xc(%ebp),%esp
 631:	5b                   	pop    %ebx
 632:	5e                   	pop    %esi
 633:	5f                   	pop    %edi
 634:	5d                   	pop    %ebp
 635:	c3                   	ret    
 636:	f3 0f 1e fb          	endbr32 
 63a:	55                   	push   %ebp
 63b:	89 e5                	mov    %esp,%ebp
 63d:	57                   	push   %edi
 63e:	56                   	push   %esi
 63f:	53                   	push   %ebx
 640:	8b 5d 08             	mov    0x8(%ebp),%ebx
 643:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 646:	a1 94 0b 00 00       	mov    0xb94,%eax
 64b:	eb 02                	jmp    0x64f
 64d:	89 d0                	mov    %edx,%eax
 64f:	39 c8                	cmp    %ecx,%eax
 651:	73 04                	jae    0x657
 653:	39 08                	cmp    %ecx,(%eax)
 655:	77 12                	ja     0x669
 657:	8b 10                	mov    (%eax),%edx
 659:	39 c2                	cmp    %eax,%edx
 65b:	77 f0                	ja     0x64d
 65d:	39 c8                	cmp    %ecx,%eax
 65f:	72 08                	jb     0x669
 661:	39 ca                	cmp    %ecx,%edx
 663:	77 04                	ja     0x669
 665:	89 d0                	mov    %edx,%eax
 667:	eb e6                	jmp    0x64f
 669:	8b 73 fc             	mov    -0x4(%ebx),%esi
 66c:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 66f:	8b 10                	mov    (%eax),%edx
 671:	39 d7                	cmp    %edx,%edi
 673:	74 19                	je     0x68e
 675:	89 53 f8             	mov    %edx,-0x8(%ebx)
 678:	8b 50 04             	mov    0x4(%eax),%edx
 67b:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 67e:	39 ce                	cmp    %ecx,%esi
 680:	74 1b                	je     0x69d
 682:	89 08                	mov    %ecx,(%eax)
 684:	a3 94 0b 00 00       	mov    %eax,0xb94
 689:	5b                   	pop    %ebx
 68a:	5e                   	pop    %esi
 68b:	5f                   	pop    %edi
 68c:	5d                   	pop    %ebp
 68d:	c3                   	ret    
 68e:	03 72 04             	add    0x4(%edx),%esi
 691:	89 73 fc             	mov    %esi,-0x4(%ebx)
 694:	8b 10                	mov    (%eax),%edx
 696:	8b 12                	mov    (%edx),%edx
 698:	89 53 f8             	mov    %edx,-0x8(%ebx)
 69b:	eb db                	jmp    0x678
 69d:	03 53 fc             	add    -0x4(%ebx),%edx
 6a0:	89 50 04             	mov    %edx,0x4(%eax)
 6a3:	8b 53 f8             	mov    -0x8(%ebx),%edx
 6a6:	89 10                	mov    %edx,(%eax)
 6a8:	eb da                	jmp    0x684
 6aa:	55                   	push   %ebp
 6ab:	89 e5                	mov    %esp,%ebp
 6ad:	53                   	push   %ebx
 6ae:	83 ec 04             	sub    $0x4,%esp
 6b1:	89 c3                	mov    %eax,%ebx
 6b3:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 6b8:	77 05                	ja     0x6bf
 6ba:	bb 00 10 00 00       	mov    $0x1000,%ebx
 6bf:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 6c6:	83 ec 0c             	sub    $0xc,%esp
 6c9:	50                   	push   %eax
 6ca:	e8 34 fd ff ff       	call   0x403
 6cf:	83 c4 10             	add    $0x10,%esp
 6d2:	83 f8 ff             	cmp    $0xffffffff,%eax
 6d5:	74 1c                	je     0x6f3
 6d7:	89 58 04             	mov    %ebx,0x4(%eax)
 6da:	83 c0 08             	add    $0x8,%eax
 6dd:	83 ec 0c             	sub    $0xc,%esp
 6e0:	50                   	push   %eax
 6e1:	e8 50 ff ff ff       	call   0x636
 6e6:	a1 94 0b 00 00       	mov    0xb94,%eax
 6eb:	83 c4 10             	add    $0x10,%esp
 6ee:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 6f1:	c9                   	leave  
 6f2:	c3                   	ret    
 6f3:	b8 00 00 00 00       	mov    $0x0,%eax
 6f8:	eb f4                	jmp    0x6ee
 6fa:	f3 0f 1e fb          	endbr32 
 6fe:	55                   	push   %ebp
 6ff:	89 e5                	mov    %esp,%ebp
 701:	53                   	push   %ebx
 702:	83 ec 04             	sub    $0x4,%esp
 705:	8b 45 08             	mov    0x8(%ebp),%eax
 708:	8d 58 07             	lea    0x7(%eax),%ebx
 70b:	c1 eb 03             	shr    $0x3,%ebx
 70e:	83 c3 01             	add    $0x1,%ebx
 711:	8b 0d 94 0b 00 00    	mov    0xb94,%ecx
 717:	85 c9                	test   %ecx,%ecx
 719:	74 04                	je     0x71f
 71b:	8b 01                	mov    (%ecx),%eax
 71d:	eb 4b                	jmp    0x76a
 71f:	c7 05 94 0b 00 00 98 	movl   $0xb98,0xb94
 726:	0b 00 00 
 729:	c7 05 98 0b 00 00 98 	movl   $0xb98,0xb98
 730:	0b 00 00 
 733:	c7 05 9c 0b 00 00 00 	movl   $0x0,0xb9c
 73a:	00 00 00 
 73d:	b9 98 0b 00 00       	mov    $0xb98,%ecx
 742:	eb d7                	jmp    0x71b
 744:	74 1a                	je     0x760
 746:	29 da                	sub    %ebx,%edx
 748:	89 50 04             	mov    %edx,0x4(%eax)
 74b:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 74e:	89 58 04             	mov    %ebx,0x4(%eax)
 751:	89 0d 94 0b 00 00    	mov    %ecx,0xb94
 757:	83 c0 08             	add    $0x8,%eax
 75a:	83 c4 04             	add    $0x4,%esp
 75d:	5b                   	pop    %ebx
 75e:	5d                   	pop    %ebp
 75f:	c3                   	ret    
 760:	8b 10                	mov    (%eax),%edx
 762:	89 11                	mov    %edx,(%ecx)
 764:	eb eb                	jmp    0x751
 766:	89 c1                	mov    %eax,%ecx
 768:	8b 00                	mov    (%eax),%eax
 76a:	8b 50 04             	mov    0x4(%eax),%edx
 76d:	39 da                	cmp    %ebx,%edx
 76f:	73 d3                	jae    0x744
 771:	39 05 94 0b 00 00    	cmp    %eax,0xb94
 777:	75 ed                	jne    0x766
 779:	89 d8                	mov    %ebx,%eax
 77b:	e8 2a ff ff ff       	call   0x6aa
 780:	85 c0                	test   %eax,%eax
 782:	75 e2                	jne    0x766
 784:	eb d4                	jmp    0x75a
