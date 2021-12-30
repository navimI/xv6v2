
_tsbrk4:     file format elf32-i386


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
  1c:	e8 72 03 00 00       	call   0x393
  21:	89 c3                	mov    %eax,%ebx
  23:	e8 db 02 00 00       	call   0x303
  28:	c6 83 f4 01 00 00 01 	movb   $0x1,0x1f4(%ebx)
  2f:	8d b3 98 3a 00 00    	lea    0x3a98(%ebx),%esi
  35:	c7 04 24 68 c5 ff ff 	movl   $0xffffc568,(%esp)
  3c:	e8 52 03 00 00       	call   0x393
  41:	83 c4 10             	add    $0x10,%esp
  44:	39 c6                	cmp    %eax,%esi
  46:	74 1b                	je     0x63
  48:	83 ec 08             	sub    $0x8,%esp
  4b:	68 18 07 00 00       	push   $0x718
  50:	6a 01                	push   $0x1
  52:	e8 09 04 00 00       	call   0x460
  57:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  5e:	e8 a8 02 00 00       	call   0x30b
  63:	83 ec 0c             	sub    $0xc,%esp
  66:	6a 00                	push   $0x0
  68:	e8 26 03 00 00       	call   0x393
  6d:	83 c4 10             	add    $0x10,%esp
  70:	39 c3                	cmp    %eax,%ebx
  72:	74 1b                	je     0x8f
  74:	83 ec 08             	sub    $0x8,%esp
  77:	68 3d 07 00 00       	push   $0x73d
  7c:	6a 01                	push   $0x1
  7e:	e8 dd 03 00 00       	call   0x460
  83:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
  8a:	e8 7c 02 00 00       	call   0x30b
  8f:	83 ec 0c             	sub    $0xc,%esp
  92:	68 98 3a 00 00       	push   $0x3a98
  97:	e8 f7 02 00 00       	call   0x393
  9c:	83 c4 10             	add    $0x10,%esp
  9f:	39 c3                	cmp    %eax,%ebx
  a1:	74 1b                	je     0xbe
  a3:	83 ec 08             	sub    $0x8,%esp
  a6:	68 56 07 00 00       	push   $0x756
  ab:	6a 01                	push   $0x1
  ad:	e8 ae 03 00 00       	call   0x460
  b2:	c7 04 24 03 00 00 00 	movl   $0x3,(%esp)
  b9:	e8 4d 02 00 00       	call   0x30b
  be:	0f b6 83 f4 01 00 00 	movzbl 0x1f4(%ebx),%eax
  c5:	83 c0 01             	add    $0x1,%eax
  c8:	88 83 f4 01 00 00    	mov    %al,0x1f4(%ebx)
  ce:	83 ec 04             	sub    $0x4,%esp
  d1:	0f be c0             	movsbl %al,%eax
  d4:	50                   	push   %eax
  d5:	68 6f 07 00 00       	push   $0x76f
  da:	6a 01                	push   $0x1
  dc:	e8 7f 03 00 00       	call   0x460
  e1:	c7 04 24 68 c5 ff ff 	movl   $0xffffc568,(%esp)
  e8:	e8 a6 02 00 00       	call   0x393
  ed:	c7 04 24 00 00 80 00 	movl   $0x800000,(%esp)
  f4:	e8 9a 02 00 00       	call   0x393
  f9:	89 c3                	mov    %eax,%ebx
  fb:	e8 03 02 00 00       	call   0x303
 100:	c6 83 00 00 4b 00 01 	movb   $0x1,0x4b0000(%ebx)
 107:	c7 04 24 00 00 80 ff 	movl   $0xff800000,(%esp)
 10e:	e8 80 02 00 00       	call   0x393
 113:	c7 04 24 00 00 80 00 	movl   $0x800000,(%esp)
 11a:	e8 74 02 00 00       	call   0x393
 11f:	0f b6 88 00 00 4b 00 	movzbl 0x4b0000(%eax),%ecx
 126:	8d 51 01             	lea    0x1(%ecx),%edx
 129:	88 90 00 00 4b 00    	mov    %dl,0x4b0000(%eax)
 12f:	83 c4 0c             	add    $0xc,%esp
 132:	0f be d2             	movsbl %dl,%edx
 135:	52                   	push   %edx
 136:	68 6f 07 00 00       	push   $0x76f
 13b:	6a 01                	push   $0x1
 13d:	e8 1e 03 00 00       	call   0x460
 142:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 149:	e8 bd 01 00 00       	call   0x30b
 14e:	f3 0f 1e fb          	endbr32 
 152:	55                   	push   %ebp
 153:	89 e5                	mov    %esp,%ebp
 155:	56                   	push   %esi
 156:	53                   	push   %ebx
 157:	8b 75 08             	mov    0x8(%ebp),%esi
 15a:	8b 55 0c             	mov    0xc(%ebp),%edx
 15d:	89 f0                	mov    %esi,%eax
 15f:	89 d1                	mov    %edx,%ecx
 161:	83 c2 01             	add    $0x1,%edx
 164:	89 c3                	mov    %eax,%ebx
 166:	83 c0 01             	add    $0x1,%eax
 169:	0f b6 09             	movzbl (%ecx),%ecx
 16c:	88 0b                	mov    %cl,(%ebx)
 16e:	84 c9                	test   %cl,%cl
 170:	75 ed                	jne    0x15f
 172:	89 f0                	mov    %esi,%eax
 174:	5b                   	pop    %ebx
 175:	5e                   	pop    %esi
 176:	5d                   	pop    %ebp
 177:	c3                   	ret    
 178:	f3 0f 1e fb          	endbr32 
 17c:	55                   	push   %ebp
 17d:	89 e5                	mov    %esp,%ebp
 17f:	8b 4d 08             	mov    0x8(%ebp),%ecx
 182:	8b 55 0c             	mov    0xc(%ebp),%edx
 185:	0f b6 01             	movzbl (%ecx),%eax
 188:	84 c0                	test   %al,%al
 18a:	74 0c                	je     0x198
 18c:	3a 02                	cmp    (%edx),%al
 18e:	75 08                	jne    0x198
 190:	83 c1 01             	add    $0x1,%ecx
 193:	83 c2 01             	add    $0x1,%edx
 196:	eb ed                	jmp    0x185
 198:	0f b6 c0             	movzbl %al,%eax
 19b:	0f b6 12             	movzbl (%edx),%edx
 19e:	29 d0                	sub    %edx,%eax
 1a0:	5d                   	pop    %ebp
 1a1:	c3                   	ret    
 1a2:	f3 0f 1e fb          	endbr32 
 1a6:	55                   	push   %ebp
 1a7:	89 e5                	mov    %esp,%ebp
 1a9:	8b 4d 08             	mov    0x8(%ebp),%ecx
 1ac:	b8 00 00 00 00       	mov    $0x0,%eax
 1b1:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
 1b5:	74 05                	je     0x1bc
 1b7:	83 c0 01             	add    $0x1,%eax
 1ba:	eb f5                	jmp    0x1b1
 1bc:	5d                   	pop    %ebp
 1bd:	c3                   	ret    
 1be:	f3 0f 1e fb          	endbr32 
 1c2:	55                   	push   %ebp
 1c3:	89 e5                	mov    %esp,%ebp
 1c5:	57                   	push   %edi
 1c6:	8b 55 08             	mov    0x8(%ebp),%edx
 1c9:	89 d7                	mov    %edx,%edi
 1cb:	8b 4d 10             	mov    0x10(%ebp),%ecx
 1ce:	8b 45 0c             	mov    0xc(%ebp),%eax
 1d1:	fc                   	cld    
 1d2:	f3 aa                	rep stos %al,%es:(%edi)
 1d4:	89 d0                	mov    %edx,%eax
 1d6:	5f                   	pop    %edi
 1d7:	5d                   	pop    %ebp
 1d8:	c3                   	ret    
 1d9:	f3 0f 1e fb          	endbr32 
 1dd:	55                   	push   %ebp
 1de:	89 e5                	mov    %esp,%ebp
 1e0:	8b 45 08             	mov    0x8(%ebp),%eax
 1e3:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
 1e7:	0f b6 10             	movzbl (%eax),%edx
 1ea:	84 d2                	test   %dl,%dl
 1ec:	74 09                	je     0x1f7
 1ee:	38 ca                	cmp    %cl,%dl
 1f0:	74 0a                	je     0x1fc
 1f2:	83 c0 01             	add    $0x1,%eax
 1f5:	eb f0                	jmp    0x1e7
 1f7:	b8 00 00 00 00       	mov    $0x0,%eax
 1fc:	5d                   	pop    %ebp
 1fd:	c3                   	ret    
 1fe:	f3 0f 1e fb          	endbr32 
 202:	55                   	push   %ebp
 203:	89 e5                	mov    %esp,%ebp
 205:	57                   	push   %edi
 206:	56                   	push   %esi
 207:	53                   	push   %ebx
 208:	83 ec 1c             	sub    $0x1c,%esp
 20b:	8b 7d 08             	mov    0x8(%ebp),%edi
 20e:	bb 00 00 00 00       	mov    $0x0,%ebx
 213:	89 de                	mov    %ebx,%esi
 215:	83 c3 01             	add    $0x1,%ebx
 218:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 21b:	7d 2e                	jge    0x24b
 21d:	83 ec 04             	sub    $0x4,%esp
 220:	6a 01                	push   $0x1
 222:	8d 45 e7             	lea    -0x19(%ebp),%eax
 225:	50                   	push   %eax
 226:	6a 00                	push   $0x0
 228:	e8 f6 00 00 00       	call   0x323
 22d:	83 c4 10             	add    $0x10,%esp
 230:	85 c0                	test   %eax,%eax
 232:	7e 17                	jle    0x24b
 234:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 238:	88 04 37             	mov    %al,(%edi,%esi,1)
 23b:	3c 0a                	cmp    $0xa,%al
 23d:	0f 94 c2             	sete   %dl
 240:	3c 0d                	cmp    $0xd,%al
 242:	0f 94 c0             	sete   %al
 245:	08 c2                	or     %al,%dl
 247:	74 ca                	je     0x213
 249:	89 de                	mov    %ebx,%esi
 24b:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 24f:	89 f8                	mov    %edi,%eax
 251:	8d 65 f4             	lea    -0xc(%ebp),%esp
 254:	5b                   	pop    %ebx
 255:	5e                   	pop    %esi
 256:	5f                   	pop    %edi
 257:	5d                   	pop    %ebp
 258:	c3                   	ret    
 259:	f3 0f 1e fb          	endbr32 
 25d:	55                   	push   %ebp
 25e:	89 e5                	mov    %esp,%ebp
 260:	56                   	push   %esi
 261:	53                   	push   %ebx
 262:	83 ec 08             	sub    $0x8,%esp
 265:	6a 00                	push   $0x0
 267:	ff 75 08             	push   0x8(%ebp)
 26a:	e8 dc 00 00 00       	call   0x34b
 26f:	83 c4 10             	add    $0x10,%esp
 272:	85 c0                	test   %eax,%eax
 274:	78 24                	js     0x29a
 276:	89 c3                	mov    %eax,%ebx
 278:	83 ec 08             	sub    $0x8,%esp
 27b:	ff 75 0c             	push   0xc(%ebp)
 27e:	50                   	push   %eax
 27f:	e8 df 00 00 00       	call   0x363
 284:	89 c6                	mov    %eax,%esi
 286:	89 1c 24             	mov    %ebx,(%esp)
 289:	e8 a5 00 00 00       	call   0x333
 28e:	83 c4 10             	add    $0x10,%esp
 291:	89 f0                	mov    %esi,%eax
 293:	8d 65 f8             	lea    -0x8(%ebp),%esp
 296:	5b                   	pop    %ebx
 297:	5e                   	pop    %esi
 298:	5d                   	pop    %ebp
 299:	c3                   	ret    
 29a:	be ff ff ff ff       	mov    $0xffffffff,%esi
 29f:	eb f0                	jmp    0x291
 2a1:	f3 0f 1e fb          	endbr32 
 2a5:	55                   	push   %ebp
 2a6:	89 e5                	mov    %esp,%ebp
 2a8:	53                   	push   %ebx
 2a9:	8b 4d 08             	mov    0x8(%ebp),%ecx
 2ac:	ba 00 00 00 00       	mov    $0x0,%edx
 2b1:	0f b6 01             	movzbl (%ecx),%eax
 2b4:	8d 58 d0             	lea    -0x30(%eax),%ebx
 2b7:	80 fb 09             	cmp    $0x9,%bl
 2ba:	77 12                	ja     0x2ce
 2bc:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 2bf:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 2c2:	83 c1 01             	add    $0x1,%ecx
 2c5:	0f be c0             	movsbl %al,%eax
 2c8:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 2cc:	eb e3                	jmp    0x2b1
 2ce:	89 d0                	mov    %edx,%eax
 2d0:	5b                   	pop    %ebx
 2d1:	5d                   	pop    %ebp
 2d2:	c3                   	ret    
 2d3:	f3 0f 1e fb          	endbr32 
 2d7:	55                   	push   %ebp
 2d8:	89 e5                	mov    %esp,%ebp
 2da:	56                   	push   %esi
 2db:	53                   	push   %ebx
 2dc:	8b 75 08             	mov    0x8(%ebp),%esi
 2df:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 2e2:	8b 45 10             	mov    0x10(%ebp),%eax
 2e5:	89 f2                	mov    %esi,%edx
 2e7:	8d 58 ff             	lea    -0x1(%eax),%ebx
 2ea:	85 c0                	test   %eax,%eax
 2ec:	7e 0f                	jle    0x2fd
 2ee:	0f b6 01             	movzbl (%ecx),%eax
 2f1:	88 02                	mov    %al,(%edx)
 2f3:	8d 49 01             	lea    0x1(%ecx),%ecx
 2f6:	8d 52 01             	lea    0x1(%edx),%edx
 2f9:	89 d8                	mov    %ebx,%eax
 2fb:	eb ea                	jmp    0x2e7
 2fd:	89 f0                	mov    %esi,%eax
 2ff:	5b                   	pop    %ebx
 300:	5e                   	pop    %esi
 301:	5d                   	pop    %ebp
 302:	c3                   	ret    
 303:	b8 01 00 00 00       	mov    $0x1,%eax
 308:	cd 40                	int    $0x40
 30a:	c3                   	ret    
 30b:	b8 02 00 00 00       	mov    $0x2,%eax
 310:	cd 40                	int    $0x40
 312:	c3                   	ret    
 313:	b8 03 00 00 00       	mov    $0x3,%eax
 318:	cd 40                	int    $0x40
 31a:	c3                   	ret    
 31b:	b8 04 00 00 00       	mov    $0x4,%eax
 320:	cd 40                	int    $0x40
 322:	c3                   	ret    
 323:	b8 05 00 00 00       	mov    $0x5,%eax
 328:	cd 40                	int    $0x40
 32a:	c3                   	ret    
 32b:	b8 10 00 00 00       	mov    $0x10,%eax
 330:	cd 40                	int    $0x40
 332:	c3                   	ret    
 333:	b8 15 00 00 00       	mov    $0x15,%eax
 338:	cd 40                	int    $0x40
 33a:	c3                   	ret    
 33b:	b8 06 00 00 00       	mov    $0x6,%eax
 340:	cd 40                	int    $0x40
 342:	c3                   	ret    
 343:	b8 07 00 00 00       	mov    $0x7,%eax
 348:	cd 40                	int    $0x40
 34a:	c3                   	ret    
 34b:	b8 0f 00 00 00       	mov    $0xf,%eax
 350:	cd 40                	int    $0x40
 352:	c3                   	ret    
 353:	b8 11 00 00 00       	mov    $0x11,%eax
 358:	cd 40                	int    $0x40
 35a:	c3                   	ret    
 35b:	b8 12 00 00 00       	mov    $0x12,%eax
 360:	cd 40                	int    $0x40
 362:	c3                   	ret    
 363:	b8 08 00 00 00       	mov    $0x8,%eax
 368:	cd 40                	int    $0x40
 36a:	c3                   	ret    
 36b:	b8 13 00 00 00       	mov    $0x13,%eax
 370:	cd 40                	int    $0x40
 372:	c3                   	ret    
 373:	b8 14 00 00 00       	mov    $0x14,%eax
 378:	cd 40                	int    $0x40
 37a:	c3                   	ret    
 37b:	b8 09 00 00 00       	mov    $0x9,%eax
 380:	cd 40                	int    $0x40
 382:	c3                   	ret    
 383:	b8 0a 00 00 00       	mov    $0xa,%eax
 388:	cd 40                	int    $0x40
 38a:	c3                   	ret    
 38b:	b8 0b 00 00 00       	mov    $0xb,%eax
 390:	cd 40                	int    $0x40
 392:	c3                   	ret    
 393:	b8 0c 00 00 00       	mov    $0xc,%eax
 398:	cd 40                	int    $0x40
 39a:	c3                   	ret    
 39b:	b8 0d 00 00 00       	mov    $0xd,%eax
 3a0:	cd 40                	int    $0x40
 3a2:	c3                   	ret    
 3a3:	b8 0e 00 00 00       	mov    $0xe,%eax
 3a8:	cd 40                	int    $0x40
 3aa:	c3                   	ret    
 3ab:	b8 16 00 00 00       	mov    $0x16,%eax
 3b0:	cd 40                	int    $0x40
 3b2:	c3                   	ret    
 3b3:	b8 17 00 00 00       	mov    $0x17,%eax
 3b8:	cd 40                	int    $0x40
 3ba:	c3                   	ret    
 3bb:	55                   	push   %ebp
 3bc:	89 e5                	mov    %esp,%ebp
 3be:	83 ec 1c             	sub    $0x1c,%esp
 3c1:	88 55 f4             	mov    %dl,-0xc(%ebp)
 3c4:	6a 01                	push   $0x1
 3c6:	8d 55 f4             	lea    -0xc(%ebp),%edx
 3c9:	52                   	push   %edx
 3ca:	50                   	push   %eax
 3cb:	e8 5b ff ff ff       	call   0x32b
 3d0:	83 c4 10             	add    $0x10,%esp
 3d3:	c9                   	leave  
 3d4:	c3                   	ret    
 3d5:	55                   	push   %ebp
 3d6:	89 e5                	mov    %esp,%ebp
 3d8:	57                   	push   %edi
 3d9:	56                   	push   %esi
 3da:	53                   	push   %ebx
 3db:	83 ec 2c             	sub    $0x2c,%esp
 3de:	89 45 d0             	mov    %eax,-0x30(%ebp)
 3e1:	89 d0                	mov    %edx,%eax
 3e3:	89 ce                	mov    %ecx,%esi
 3e5:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 3e9:	0f 95 c1             	setne  %cl
 3ec:	c1 ea 1f             	shr    $0x1f,%edx
 3ef:	84 d1                	test   %dl,%cl
 3f1:	74 44                	je     0x437
 3f3:	f7 d8                	neg    %eax
 3f5:	89 c1                	mov    %eax,%ecx
 3f7:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 3fe:	bb 00 00 00 00       	mov    $0x0,%ebx
 403:	89 c8                	mov    %ecx,%eax
 405:	ba 00 00 00 00       	mov    $0x0,%edx
 40a:	f7 f6                	div    %esi
 40c:	89 df                	mov    %ebx,%edi
 40e:	83 c3 01             	add    $0x1,%ebx
 411:	0f b6 92 e4 07 00 00 	movzbl 0x7e4(%edx),%edx
 418:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 41c:	89 ca                	mov    %ecx,%edx
 41e:	89 c1                	mov    %eax,%ecx
 420:	39 d6                	cmp    %edx,%esi
 422:	76 df                	jbe    0x403
 424:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 428:	74 31                	je     0x45b
 42a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 42f:	8d 5f 02             	lea    0x2(%edi),%ebx
 432:	8b 75 d0             	mov    -0x30(%ebp),%esi
 435:	eb 17                	jmp    0x44e
 437:	89 c1                	mov    %eax,%ecx
 439:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 440:	eb bc                	jmp    0x3fe
 442:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 447:	89 f0                	mov    %esi,%eax
 449:	e8 6d ff ff ff       	call   0x3bb
 44e:	83 eb 01             	sub    $0x1,%ebx
 451:	79 ef                	jns    0x442
 453:	83 c4 2c             	add    $0x2c,%esp
 456:	5b                   	pop    %ebx
 457:	5e                   	pop    %esi
 458:	5f                   	pop    %edi
 459:	5d                   	pop    %ebp
 45a:	c3                   	ret    
 45b:	8b 75 d0             	mov    -0x30(%ebp),%esi
 45e:	eb ee                	jmp    0x44e
 460:	55                   	push   %ebp
 461:	89 e5                	mov    %esp,%ebp
 463:	57                   	push   %edi
 464:	56                   	push   %esi
 465:	53                   	push   %ebx
 466:	83 ec 1c             	sub    $0x1c,%esp
 469:	8d 45 10             	lea    0x10(%ebp),%eax
 46c:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 46f:	be 00 00 00 00       	mov    $0x0,%esi
 474:	bb 00 00 00 00       	mov    $0x0,%ebx
 479:	eb 14                	jmp    0x48f
 47b:	89 fa                	mov    %edi,%edx
 47d:	8b 45 08             	mov    0x8(%ebp),%eax
 480:	e8 36 ff ff ff       	call   0x3bb
 485:	eb 05                	jmp    0x48c
 487:	83 fe 25             	cmp    $0x25,%esi
 48a:	74 25                	je     0x4b1
 48c:	83 c3 01             	add    $0x1,%ebx
 48f:	8b 45 0c             	mov    0xc(%ebp),%eax
 492:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 496:	84 c0                	test   %al,%al
 498:	0f 84 20 01 00 00    	je     0x5be
 49e:	0f be f8             	movsbl %al,%edi
 4a1:	0f b6 c0             	movzbl %al,%eax
 4a4:	85 f6                	test   %esi,%esi
 4a6:	75 df                	jne    0x487
 4a8:	83 f8 25             	cmp    $0x25,%eax
 4ab:	75 ce                	jne    0x47b
 4ad:	89 c6                	mov    %eax,%esi
 4af:	eb db                	jmp    0x48c
 4b1:	83 f8 25             	cmp    $0x25,%eax
 4b4:	0f 84 cf 00 00 00    	je     0x589
 4ba:	0f 8c dd 00 00 00    	jl     0x59d
 4c0:	83 f8 78             	cmp    $0x78,%eax
 4c3:	0f 8f d4 00 00 00    	jg     0x59d
 4c9:	83 f8 63             	cmp    $0x63,%eax
 4cc:	0f 8c cb 00 00 00    	jl     0x59d
 4d2:	83 e8 63             	sub    $0x63,%eax
 4d5:	83 f8 15             	cmp    $0x15,%eax
 4d8:	0f 87 bf 00 00 00    	ja     0x59d
 4de:	ff 24 85 8c 07 00 00 	jmp    *0x78c(,%eax,4)
 4e5:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 4e8:	8b 17                	mov    (%edi),%edx
 4ea:	83 ec 0c             	sub    $0xc,%esp
 4ed:	6a 01                	push   $0x1
 4ef:	b9 0a 00 00 00       	mov    $0xa,%ecx
 4f4:	8b 45 08             	mov    0x8(%ebp),%eax
 4f7:	e8 d9 fe ff ff       	call   0x3d5
 4fc:	83 c7 04             	add    $0x4,%edi
 4ff:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 502:	83 c4 10             	add    $0x10,%esp
 505:	be 00 00 00 00       	mov    $0x0,%esi
 50a:	eb 80                	jmp    0x48c
 50c:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 50f:	8b 17                	mov    (%edi),%edx
 511:	83 ec 0c             	sub    $0xc,%esp
 514:	6a 00                	push   $0x0
 516:	b9 10 00 00 00       	mov    $0x10,%ecx
 51b:	8b 45 08             	mov    0x8(%ebp),%eax
 51e:	e8 b2 fe ff ff       	call   0x3d5
 523:	83 c7 04             	add    $0x4,%edi
 526:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 529:	83 c4 10             	add    $0x10,%esp
 52c:	be 00 00 00 00       	mov    $0x0,%esi
 531:	e9 56 ff ff ff       	jmp    0x48c
 536:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 539:	8b 30                	mov    (%eax),%esi
 53b:	83 c0 04             	add    $0x4,%eax
 53e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 541:	85 f6                	test   %esi,%esi
 543:	75 15                	jne    0x55a
 545:	be 85 07 00 00       	mov    $0x785,%esi
 54a:	eb 0e                	jmp    0x55a
 54c:	0f be d2             	movsbl %dl,%edx
 54f:	8b 45 08             	mov    0x8(%ebp),%eax
 552:	e8 64 fe ff ff       	call   0x3bb
 557:	83 c6 01             	add    $0x1,%esi
 55a:	0f b6 16             	movzbl (%esi),%edx
 55d:	84 d2                	test   %dl,%dl
 55f:	75 eb                	jne    0x54c
 561:	be 00 00 00 00       	mov    $0x0,%esi
 566:	e9 21 ff ff ff       	jmp    0x48c
 56b:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 56e:	0f be 17             	movsbl (%edi),%edx
 571:	8b 45 08             	mov    0x8(%ebp),%eax
 574:	e8 42 fe ff ff       	call   0x3bb
 579:	83 c7 04             	add    $0x4,%edi
 57c:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 57f:	be 00 00 00 00       	mov    $0x0,%esi
 584:	e9 03 ff ff ff       	jmp    0x48c
 589:	89 fa                	mov    %edi,%edx
 58b:	8b 45 08             	mov    0x8(%ebp),%eax
 58e:	e8 28 fe ff ff       	call   0x3bb
 593:	be 00 00 00 00       	mov    $0x0,%esi
 598:	e9 ef fe ff ff       	jmp    0x48c
 59d:	ba 25 00 00 00       	mov    $0x25,%edx
 5a2:	8b 45 08             	mov    0x8(%ebp),%eax
 5a5:	e8 11 fe ff ff       	call   0x3bb
 5aa:	89 fa                	mov    %edi,%edx
 5ac:	8b 45 08             	mov    0x8(%ebp),%eax
 5af:	e8 07 fe ff ff       	call   0x3bb
 5b4:	be 00 00 00 00       	mov    $0x0,%esi
 5b9:	e9 ce fe ff ff       	jmp    0x48c
 5be:	8d 65 f4             	lea    -0xc(%ebp),%esp
 5c1:	5b                   	pop    %ebx
 5c2:	5e                   	pop    %esi
 5c3:	5f                   	pop    %edi
 5c4:	5d                   	pop    %ebp
 5c5:	c3                   	ret    
 5c6:	f3 0f 1e fb          	endbr32 
 5ca:	55                   	push   %ebp
 5cb:	89 e5                	mov    %esp,%ebp
 5cd:	57                   	push   %edi
 5ce:	56                   	push   %esi
 5cf:	53                   	push   %ebx
 5d0:	8b 5d 08             	mov    0x8(%ebp),%ebx
 5d3:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 5d6:	a1 8c 0a 00 00       	mov    0xa8c,%eax
 5db:	eb 02                	jmp    0x5df
 5dd:	89 d0                	mov    %edx,%eax
 5df:	39 c8                	cmp    %ecx,%eax
 5e1:	73 04                	jae    0x5e7
 5e3:	39 08                	cmp    %ecx,(%eax)
 5e5:	77 12                	ja     0x5f9
 5e7:	8b 10                	mov    (%eax),%edx
 5e9:	39 c2                	cmp    %eax,%edx
 5eb:	77 f0                	ja     0x5dd
 5ed:	39 c8                	cmp    %ecx,%eax
 5ef:	72 08                	jb     0x5f9
 5f1:	39 ca                	cmp    %ecx,%edx
 5f3:	77 04                	ja     0x5f9
 5f5:	89 d0                	mov    %edx,%eax
 5f7:	eb e6                	jmp    0x5df
 5f9:	8b 73 fc             	mov    -0x4(%ebx),%esi
 5fc:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 5ff:	8b 10                	mov    (%eax),%edx
 601:	39 d7                	cmp    %edx,%edi
 603:	74 19                	je     0x61e
 605:	89 53 f8             	mov    %edx,-0x8(%ebx)
 608:	8b 50 04             	mov    0x4(%eax),%edx
 60b:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 60e:	39 ce                	cmp    %ecx,%esi
 610:	74 1b                	je     0x62d
 612:	89 08                	mov    %ecx,(%eax)
 614:	a3 8c 0a 00 00       	mov    %eax,0xa8c
 619:	5b                   	pop    %ebx
 61a:	5e                   	pop    %esi
 61b:	5f                   	pop    %edi
 61c:	5d                   	pop    %ebp
 61d:	c3                   	ret    
 61e:	03 72 04             	add    0x4(%edx),%esi
 621:	89 73 fc             	mov    %esi,-0x4(%ebx)
 624:	8b 10                	mov    (%eax),%edx
 626:	8b 12                	mov    (%edx),%edx
 628:	89 53 f8             	mov    %edx,-0x8(%ebx)
 62b:	eb db                	jmp    0x608
 62d:	03 53 fc             	add    -0x4(%ebx),%edx
 630:	89 50 04             	mov    %edx,0x4(%eax)
 633:	8b 53 f8             	mov    -0x8(%ebx),%edx
 636:	89 10                	mov    %edx,(%eax)
 638:	eb da                	jmp    0x614
 63a:	55                   	push   %ebp
 63b:	89 e5                	mov    %esp,%ebp
 63d:	53                   	push   %ebx
 63e:	83 ec 04             	sub    $0x4,%esp
 641:	89 c3                	mov    %eax,%ebx
 643:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 648:	77 05                	ja     0x64f
 64a:	bb 00 10 00 00       	mov    $0x1000,%ebx
 64f:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 656:	83 ec 0c             	sub    $0xc,%esp
 659:	50                   	push   %eax
 65a:	e8 34 fd ff ff       	call   0x393
 65f:	83 c4 10             	add    $0x10,%esp
 662:	83 f8 ff             	cmp    $0xffffffff,%eax
 665:	74 1c                	je     0x683
 667:	89 58 04             	mov    %ebx,0x4(%eax)
 66a:	83 c0 08             	add    $0x8,%eax
 66d:	83 ec 0c             	sub    $0xc,%esp
 670:	50                   	push   %eax
 671:	e8 50 ff ff ff       	call   0x5c6
 676:	a1 8c 0a 00 00       	mov    0xa8c,%eax
 67b:	83 c4 10             	add    $0x10,%esp
 67e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 681:	c9                   	leave  
 682:	c3                   	ret    
 683:	b8 00 00 00 00       	mov    $0x0,%eax
 688:	eb f4                	jmp    0x67e
 68a:	f3 0f 1e fb          	endbr32 
 68e:	55                   	push   %ebp
 68f:	89 e5                	mov    %esp,%ebp
 691:	53                   	push   %ebx
 692:	83 ec 04             	sub    $0x4,%esp
 695:	8b 45 08             	mov    0x8(%ebp),%eax
 698:	8d 58 07             	lea    0x7(%eax),%ebx
 69b:	c1 eb 03             	shr    $0x3,%ebx
 69e:	83 c3 01             	add    $0x1,%ebx
 6a1:	8b 0d 8c 0a 00 00    	mov    0xa8c,%ecx
 6a7:	85 c9                	test   %ecx,%ecx
 6a9:	74 04                	je     0x6af
 6ab:	8b 01                	mov    (%ecx),%eax
 6ad:	eb 4b                	jmp    0x6fa
 6af:	c7 05 8c 0a 00 00 90 	movl   $0xa90,0xa8c
 6b6:	0a 00 00 
 6b9:	c7 05 90 0a 00 00 90 	movl   $0xa90,0xa90
 6c0:	0a 00 00 
 6c3:	c7 05 94 0a 00 00 00 	movl   $0x0,0xa94
 6ca:	00 00 00 
 6cd:	b9 90 0a 00 00       	mov    $0xa90,%ecx
 6d2:	eb d7                	jmp    0x6ab
 6d4:	74 1a                	je     0x6f0
 6d6:	29 da                	sub    %ebx,%edx
 6d8:	89 50 04             	mov    %edx,0x4(%eax)
 6db:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 6de:	89 58 04             	mov    %ebx,0x4(%eax)
 6e1:	89 0d 8c 0a 00 00    	mov    %ecx,0xa8c
 6e7:	83 c0 08             	add    $0x8,%eax
 6ea:	83 c4 04             	add    $0x4,%esp
 6ed:	5b                   	pop    %ebx
 6ee:	5d                   	pop    %ebp
 6ef:	c3                   	ret    
 6f0:	8b 10                	mov    (%eax),%edx
 6f2:	89 11                	mov    %edx,(%ecx)
 6f4:	eb eb                	jmp    0x6e1
 6f6:	89 c1                	mov    %eax,%ecx
 6f8:	8b 00                	mov    (%eax),%eax
 6fa:	8b 50 04             	mov    0x4(%eax),%edx
 6fd:	39 da                	cmp    %ebx,%edx
 6ff:	73 d3                	jae    0x6d4
 701:	39 05 8c 0a 00 00    	cmp    %eax,0xa8c
 707:	75 ed                	jne    0x6f6
 709:	89 d8                	mov    %ebx,%eax
 70b:	e8 2a ff ff ff       	call   0x63a
 710:	85 c0                	test   %eax,%eax
 712:	75 e2                	jne    0x6f6
 714:	eb d4                	jmp    0x6ea
