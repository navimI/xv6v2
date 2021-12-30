
_forktest:     file format elf32-i386


Disassembly of section .text:

00000000 <.text>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	53                   	push   %ebx
   4:	83 ec 10             	sub    $0x10,%esp
   7:	8b 5d 0c             	mov    0xc(%ebp),%ebx
   a:	53                   	push   %ebx
   b:	e8 67 01 00 00       	call   0x177
  10:	83 c4 0c             	add    $0xc,%esp
  13:	50                   	push   %eax
  14:	53                   	push   %ebx
  15:	ff 75 08             	push   0x8(%ebp)
  18:	e8 e3 02 00 00       	call   0x300
  1d:	83 c4 10             	add    $0x10,%esp
  20:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  23:	c9                   	leave  
  24:	c3                   	ret    
  25:	55                   	push   %ebp
  26:	89 e5                	mov    %esp,%ebp
  28:	53                   	push   %ebx
  29:	83 ec 0c             	sub    $0xc,%esp
  2c:	68 90 03 00 00       	push   $0x390
  31:	6a 01                	push   $0x1
  33:	e8 c8 ff ff ff       	call   0x0
  38:	83 c4 10             	add    $0x10,%esp
  3b:	bb 00 00 00 00       	mov    $0x0,%ebx
  40:	81 fb e7 03 00 00    	cmp    $0x3e7,%ebx
  46:	7f 1a                	jg     0x62
  48:	e8 8b 02 00 00       	call   0x2d8
  4d:	85 c0                	test   %eax,%eax
  4f:	78 11                	js     0x62
  51:	74 05                	je     0x58
  53:	83 c3 01             	add    $0x1,%ebx
  56:	eb e8                	jmp    0x40
  58:	83 ec 0c             	sub    $0xc,%esp
  5b:	6a 00                	push   $0x0
  5d:	e8 7e 02 00 00       	call   0x2e0
  62:	81 fb e8 03 00 00    	cmp    $0x3e8,%ebx
  68:	74 1a                	je     0x84
  6a:	85 db                	test   %ebx,%ebx
  6c:	7e 51                	jle    0xbf
  6e:	83 ec 0c             	sub    $0xc,%esp
  71:	6a 00                	push   $0x0
  73:	e8 70 02 00 00       	call   0x2e8
  78:	83 c4 10             	add    $0x10,%esp
  7b:	85 c0                	test   %eax,%eax
  7d:	78 25                	js     0xa4
  7f:	83 eb 01             	sub    $0x1,%ebx
  82:	eb e6                	jmp    0x6a
  84:	83 ec 04             	sub    $0x4,%esp
  87:	68 e8 03 00 00       	push   $0x3e8
  8c:	68 d0 03 00 00       	push   $0x3d0
  91:	6a 01                	push   $0x1
  93:	e8 68 ff ff ff       	call   0x0
  98:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  9f:	e8 3c 02 00 00       	call   0x2e0
  a4:	83 ec 08             	sub    $0x8,%esp
  a7:	68 9b 03 00 00       	push   $0x39b
  ac:	6a 01                	push   $0x1
  ae:	e8 4d ff ff ff       	call   0x0
  b3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  ba:	e8 21 02 00 00       	call   0x2e0
  bf:	83 ec 0c             	sub    $0xc,%esp
  c2:	6a 00                	push   $0x0
  c4:	e8 1f 02 00 00       	call   0x2e8
  c9:	83 c4 10             	add    $0x10,%esp
  cc:	83 f8 ff             	cmp    $0xffffffff,%eax
  cf:	75 17                	jne    0xe8
  d1:	83 ec 08             	sub    $0x8,%esp
  d4:	68 c2 03 00 00       	push   $0x3c2
  d9:	6a 01                	push   $0x1
  db:	e8 20 ff ff ff       	call   0x0
  e0:	83 c4 10             	add    $0x10,%esp
  e3:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  e6:	c9                   	leave  
  e7:	c3                   	ret    
  e8:	83 ec 08             	sub    $0x8,%esp
  eb:	68 af 03 00 00       	push   $0x3af
  f0:	6a 01                	push   $0x1
  f2:	e8 09 ff ff ff       	call   0x0
  f7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  fe:	e8 dd 01 00 00       	call   0x2e0
 103:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 107:	83 e4 f0             	and    $0xfffffff0,%esp
 10a:	ff 71 fc             	push   -0x4(%ecx)
 10d:	55                   	push   %ebp
 10e:	89 e5                	mov    %esp,%ebp
 110:	51                   	push   %ecx
 111:	83 ec 04             	sub    $0x4,%esp
 114:	e8 0c ff ff ff       	call   0x25
 119:	83 ec 0c             	sub    $0xc,%esp
 11c:	6a 00                	push   $0x0
 11e:	e8 bd 01 00 00       	call   0x2e0
 123:	f3 0f 1e fb          	endbr32 
 127:	55                   	push   %ebp
 128:	89 e5                	mov    %esp,%ebp
 12a:	56                   	push   %esi
 12b:	53                   	push   %ebx
 12c:	8b 75 08             	mov    0x8(%ebp),%esi
 12f:	8b 55 0c             	mov    0xc(%ebp),%edx
 132:	89 f0                	mov    %esi,%eax
 134:	89 d1                	mov    %edx,%ecx
 136:	83 c2 01             	add    $0x1,%edx
 139:	89 c3                	mov    %eax,%ebx
 13b:	83 c0 01             	add    $0x1,%eax
 13e:	0f b6 09             	movzbl (%ecx),%ecx
 141:	88 0b                	mov    %cl,(%ebx)
 143:	84 c9                	test   %cl,%cl
 145:	75 ed                	jne    0x134
 147:	89 f0                	mov    %esi,%eax
 149:	5b                   	pop    %ebx
 14a:	5e                   	pop    %esi
 14b:	5d                   	pop    %ebp
 14c:	c3                   	ret    
 14d:	f3 0f 1e fb          	endbr32 
 151:	55                   	push   %ebp
 152:	89 e5                	mov    %esp,%ebp
 154:	8b 4d 08             	mov    0x8(%ebp),%ecx
 157:	8b 55 0c             	mov    0xc(%ebp),%edx
 15a:	0f b6 01             	movzbl (%ecx),%eax
 15d:	84 c0                	test   %al,%al
 15f:	74 0c                	je     0x16d
 161:	3a 02                	cmp    (%edx),%al
 163:	75 08                	jne    0x16d
 165:	83 c1 01             	add    $0x1,%ecx
 168:	83 c2 01             	add    $0x1,%edx
 16b:	eb ed                	jmp    0x15a
 16d:	0f b6 c0             	movzbl %al,%eax
 170:	0f b6 12             	movzbl (%edx),%edx
 173:	29 d0                	sub    %edx,%eax
 175:	5d                   	pop    %ebp
 176:	c3                   	ret    
 177:	f3 0f 1e fb          	endbr32 
 17b:	55                   	push   %ebp
 17c:	89 e5                	mov    %esp,%ebp
 17e:	8b 4d 08             	mov    0x8(%ebp),%ecx
 181:	b8 00 00 00 00       	mov    $0x0,%eax
 186:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
 18a:	74 05                	je     0x191
 18c:	83 c0 01             	add    $0x1,%eax
 18f:	eb f5                	jmp    0x186
 191:	5d                   	pop    %ebp
 192:	c3                   	ret    
 193:	f3 0f 1e fb          	endbr32 
 197:	55                   	push   %ebp
 198:	89 e5                	mov    %esp,%ebp
 19a:	57                   	push   %edi
 19b:	8b 55 08             	mov    0x8(%ebp),%edx
 19e:	89 d7                	mov    %edx,%edi
 1a0:	8b 4d 10             	mov    0x10(%ebp),%ecx
 1a3:	8b 45 0c             	mov    0xc(%ebp),%eax
 1a6:	fc                   	cld    
 1a7:	f3 aa                	rep stos %al,%es:(%edi)
 1a9:	89 d0                	mov    %edx,%eax
 1ab:	5f                   	pop    %edi
 1ac:	5d                   	pop    %ebp
 1ad:	c3                   	ret    
 1ae:	f3 0f 1e fb          	endbr32 
 1b2:	55                   	push   %ebp
 1b3:	89 e5                	mov    %esp,%ebp
 1b5:	8b 45 08             	mov    0x8(%ebp),%eax
 1b8:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
 1bc:	0f b6 10             	movzbl (%eax),%edx
 1bf:	84 d2                	test   %dl,%dl
 1c1:	74 09                	je     0x1cc
 1c3:	38 ca                	cmp    %cl,%dl
 1c5:	74 0a                	je     0x1d1
 1c7:	83 c0 01             	add    $0x1,%eax
 1ca:	eb f0                	jmp    0x1bc
 1cc:	b8 00 00 00 00       	mov    $0x0,%eax
 1d1:	5d                   	pop    %ebp
 1d2:	c3                   	ret    
 1d3:	f3 0f 1e fb          	endbr32 
 1d7:	55                   	push   %ebp
 1d8:	89 e5                	mov    %esp,%ebp
 1da:	57                   	push   %edi
 1db:	56                   	push   %esi
 1dc:	53                   	push   %ebx
 1dd:	83 ec 1c             	sub    $0x1c,%esp
 1e0:	8b 7d 08             	mov    0x8(%ebp),%edi
 1e3:	bb 00 00 00 00       	mov    $0x0,%ebx
 1e8:	89 de                	mov    %ebx,%esi
 1ea:	83 c3 01             	add    $0x1,%ebx
 1ed:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 1f0:	7d 2e                	jge    0x220
 1f2:	83 ec 04             	sub    $0x4,%esp
 1f5:	6a 01                	push   $0x1
 1f7:	8d 45 e7             	lea    -0x19(%ebp),%eax
 1fa:	50                   	push   %eax
 1fb:	6a 00                	push   $0x0
 1fd:	e8 f6 00 00 00       	call   0x2f8
 202:	83 c4 10             	add    $0x10,%esp
 205:	85 c0                	test   %eax,%eax
 207:	7e 17                	jle    0x220
 209:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 20d:	88 04 37             	mov    %al,(%edi,%esi,1)
 210:	3c 0a                	cmp    $0xa,%al
 212:	0f 94 c2             	sete   %dl
 215:	3c 0d                	cmp    $0xd,%al
 217:	0f 94 c0             	sete   %al
 21a:	08 c2                	or     %al,%dl
 21c:	74 ca                	je     0x1e8
 21e:	89 de                	mov    %ebx,%esi
 220:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 224:	89 f8                	mov    %edi,%eax
 226:	8d 65 f4             	lea    -0xc(%ebp),%esp
 229:	5b                   	pop    %ebx
 22a:	5e                   	pop    %esi
 22b:	5f                   	pop    %edi
 22c:	5d                   	pop    %ebp
 22d:	c3                   	ret    
 22e:	f3 0f 1e fb          	endbr32 
 232:	55                   	push   %ebp
 233:	89 e5                	mov    %esp,%ebp
 235:	56                   	push   %esi
 236:	53                   	push   %ebx
 237:	83 ec 08             	sub    $0x8,%esp
 23a:	6a 00                	push   $0x0
 23c:	ff 75 08             	push   0x8(%ebp)
 23f:	e8 dc 00 00 00       	call   0x320
 244:	83 c4 10             	add    $0x10,%esp
 247:	85 c0                	test   %eax,%eax
 249:	78 24                	js     0x26f
 24b:	89 c3                	mov    %eax,%ebx
 24d:	83 ec 08             	sub    $0x8,%esp
 250:	ff 75 0c             	push   0xc(%ebp)
 253:	50                   	push   %eax
 254:	e8 df 00 00 00       	call   0x338
 259:	89 c6                	mov    %eax,%esi
 25b:	89 1c 24             	mov    %ebx,(%esp)
 25e:	e8 a5 00 00 00       	call   0x308
 263:	83 c4 10             	add    $0x10,%esp
 266:	89 f0                	mov    %esi,%eax
 268:	8d 65 f8             	lea    -0x8(%ebp),%esp
 26b:	5b                   	pop    %ebx
 26c:	5e                   	pop    %esi
 26d:	5d                   	pop    %ebp
 26e:	c3                   	ret    
 26f:	be ff ff ff ff       	mov    $0xffffffff,%esi
 274:	eb f0                	jmp    0x266
 276:	f3 0f 1e fb          	endbr32 
 27a:	55                   	push   %ebp
 27b:	89 e5                	mov    %esp,%ebp
 27d:	53                   	push   %ebx
 27e:	8b 4d 08             	mov    0x8(%ebp),%ecx
 281:	ba 00 00 00 00       	mov    $0x0,%edx
 286:	0f b6 01             	movzbl (%ecx),%eax
 289:	8d 58 d0             	lea    -0x30(%eax),%ebx
 28c:	80 fb 09             	cmp    $0x9,%bl
 28f:	77 12                	ja     0x2a3
 291:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 294:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 297:	83 c1 01             	add    $0x1,%ecx
 29a:	0f be c0             	movsbl %al,%eax
 29d:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 2a1:	eb e3                	jmp    0x286
 2a3:	89 d0                	mov    %edx,%eax
 2a5:	5b                   	pop    %ebx
 2a6:	5d                   	pop    %ebp
 2a7:	c3                   	ret    
 2a8:	f3 0f 1e fb          	endbr32 
 2ac:	55                   	push   %ebp
 2ad:	89 e5                	mov    %esp,%ebp
 2af:	56                   	push   %esi
 2b0:	53                   	push   %ebx
 2b1:	8b 75 08             	mov    0x8(%ebp),%esi
 2b4:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 2b7:	8b 45 10             	mov    0x10(%ebp),%eax
 2ba:	89 f2                	mov    %esi,%edx
 2bc:	8d 58 ff             	lea    -0x1(%eax),%ebx
 2bf:	85 c0                	test   %eax,%eax
 2c1:	7e 0f                	jle    0x2d2
 2c3:	0f b6 01             	movzbl (%ecx),%eax
 2c6:	88 02                	mov    %al,(%edx)
 2c8:	8d 49 01             	lea    0x1(%ecx),%ecx
 2cb:	8d 52 01             	lea    0x1(%edx),%edx
 2ce:	89 d8                	mov    %ebx,%eax
 2d0:	eb ea                	jmp    0x2bc
 2d2:	89 f0                	mov    %esi,%eax
 2d4:	5b                   	pop    %ebx
 2d5:	5e                   	pop    %esi
 2d6:	5d                   	pop    %ebp
 2d7:	c3                   	ret    
 2d8:	b8 01 00 00 00       	mov    $0x1,%eax
 2dd:	cd 40                	int    $0x40
 2df:	c3                   	ret    
 2e0:	b8 02 00 00 00       	mov    $0x2,%eax
 2e5:	cd 40                	int    $0x40
 2e7:	c3                   	ret    
 2e8:	b8 03 00 00 00       	mov    $0x3,%eax
 2ed:	cd 40                	int    $0x40
 2ef:	c3                   	ret    
 2f0:	b8 04 00 00 00       	mov    $0x4,%eax
 2f5:	cd 40                	int    $0x40
 2f7:	c3                   	ret    
 2f8:	b8 05 00 00 00       	mov    $0x5,%eax
 2fd:	cd 40                	int    $0x40
 2ff:	c3                   	ret    
 300:	b8 10 00 00 00       	mov    $0x10,%eax
 305:	cd 40                	int    $0x40
 307:	c3                   	ret    
 308:	b8 15 00 00 00       	mov    $0x15,%eax
 30d:	cd 40                	int    $0x40
 30f:	c3                   	ret    
 310:	b8 06 00 00 00       	mov    $0x6,%eax
 315:	cd 40                	int    $0x40
 317:	c3                   	ret    
 318:	b8 07 00 00 00       	mov    $0x7,%eax
 31d:	cd 40                	int    $0x40
 31f:	c3                   	ret    
 320:	b8 0f 00 00 00       	mov    $0xf,%eax
 325:	cd 40                	int    $0x40
 327:	c3                   	ret    
 328:	b8 11 00 00 00       	mov    $0x11,%eax
 32d:	cd 40                	int    $0x40
 32f:	c3                   	ret    
 330:	b8 12 00 00 00       	mov    $0x12,%eax
 335:	cd 40                	int    $0x40
 337:	c3                   	ret    
 338:	b8 08 00 00 00       	mov    $0x8,%eax
 33d:	cd 40                	int    $0x40
 33f:	c3                   	ret    
 340:	b8 13 00 00 00       	mov    $0x13,%eax
 345:	cd 40                	int    $0x40
 347:	c3                   	ret    
 348:	b8 14 00 00 00       	mov    $0x14,%eax
 34d:	cd 40                	int    $0x40
 34f:	c3                   	ret    
 350:	b8 09 00 00 00       	mov    $0x9,%eax
 355:	cd 40                	int    $0x40
 357:	c3                   	ret    
 358:	b8 0a 00 00 00       	mov    $0xa,%eax
 35d:	cd 40                	int    $0x40
 35f:	c3                   	ret    
 360:	b8 0b 00 00 00       	mov    $0xb,%eax
 365:	cd 40                	int    $0x40
 367:	c3                   	ret    
 368:	b8 0c 00 00 00       	mov    $0xc,%eax
 36d:	cd 40                	int    $0x40
 36f:	c3                   	ret    
 370:	b8 0d 00 00 00       	mov    $0xd,%eax
 375:	cd 40                	int    $0x40
 377:	c3                   	ret    
 378:	b8 0e 00 00 00       	mov    $0xe,%eax
 37d:	cd 40                	int    $0x40
 37f:	c3                   	ret    
 380:	b8 16 00 00 00       	mov    $0x16,%eax
 385:	cd 40                	int    $0x40
 387:	c3                   	ret    
 388:	b8 17 00 00 00       	mov    $0x17,%eax
 38d:	cd 40                	int    $0x40
 38f:	c3                   	ret    
