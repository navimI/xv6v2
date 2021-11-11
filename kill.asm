
_kill:     file format elf32-i386


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
  11:	83 ec 08             	sub    $0x8,%esp
  14:	8b 31                	mov    (%ecx),%esi
  16:	8b 79 04             	mov    0x4(%ecx),%edi
  19:	83 fe 01             	cmp    $0x1,%esi
  1c:	7e 07                	jle    0x25
  1e:	bb 01 00 00 00       	mov    $0x1,%ebx
  23:	eb 2d                	jmp    0x52
  25:	83 ec 08             	sub    $0x8,%esp
  28:	68 f4 05 00 00       	push   $0x5f4
  2d:	6a 02                	push   $0x2
  2f:	e8 13 03 00 00       	call   0x347
  34:	e8 c1 01 00 00       	call   0x1fa
  39:	83 ec 0c             	sub    $0xc,%esp
  3c:	ff 34 9f             	push   (%edi,%ebx,4)
  3f:	e8 52 01 00 00       	call   0x196
  44:	89 04 24             	mov    %eax,(%esp)
  47:	e8 de 01 00 00       	call   0x22a
  4c:	83 c3 01             	add    $0x1,%ebx
  4f:	83 c4 10             	add    $0x10,%esp
  52:	39 f3                	cmp    %esi,%ebx
  54:	7c e3                	jl     0x39
  56:	e8 9f 01 00 00       	call   0x1fa
  5b:	55                   	push   %ebp
  5c:	89 e5                	mov    %esp,%ebp
  5e:	56                   	push   %esi
  5f:	53                   	push   %ebx
  60:	8b 75 08             	mov    0x8(%ebp),%esi
  63:	8b 55 0c             	mov    0xc(%ebp),%edx
  66:	89 f0                	mov    %esi,%eax
  68:	89 d1                	mov    %edx,%ecx
  6a:	83 c2 01             	add    $0x1,%edx
  6d:	89 c3                	mov    %eax,%ebx
  6f:	83 c0 01             	add    $0x1,%eax
  72:	0f b6 09             	movzbl (%ecx),%ecx
  75:	88 0b                	mov    %cl,(%ebx)
  77:	84 c9                	test   %cl,%cl
  79:	75 ed                	jne    0x68
  7b:	89 f0                	mov    %esi,%eax
  7d:	5b                   	pop    %ebx
  7e:	5e                   	pop    %esi
  7f:	5d                   	pop    %ebp
  80:	c3                   	ret    
  81:	55                   	push   %ebp
  82:	89 e5                	mov    %esp,%ebp
  84:	8b 4d 08             	mov    0x8(%ebp),%ecx
  87:	8b 55 0c             	mov    0xc(%ebp),%edx
  8a:	eb 06                	jmp    0x92
  8c:	83 c1 01             	add    $0x1,%ecx
  8f:	83 c2 01             	add    $0x1,%edx
  92:	0f b6 01             	movzbl (%ecx),%eax
  95:	84 c0                	test   %al,%al
  97:	74 04                	je     0x9d
  99:	3a 02                	cmp    (%edx),%al
  9b:	74 ef                	je     0x8c
  9d:	0f b6 c0             	movzbl %al,%eax
  a0:	0f b6 12             	movzbl (%edx),%edx
  a3:	29 d0                	sub    %edx,%eax
  a5:	5d                   	pop    %ebp
  a6:	c3                   	ret    
  a7:	55                   	push   %ebp
  a8:	89 e5                	mov    %esp,%ebp
  aa:	8b 4d 08             	mov    0x8(%ebp),%ecx
  ad:	b8 00 00 00 00       	mov    $0x0,%eax
  b2:	eb 03                	jmp    0xb7
  b4:	83 c0 01             	add    $0x1,%eax
  b7:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
  bb:	75 f7                	jne    0xb4
  bd:	5d                   	pop    %ebp
  be:	c3                   	ret    
  bf:	55                   	push   %ebp
  c0:	89 e5                	mov    %esp,%ebp
  c2:	57                   	push   %edi
  c3:	8b 55 08             	mov    0x8(%ebp),%edx
  c6:	89 d7                	mov    %edx,%edi
  c8:	8b 4d 10             	mov    0x10(%ebp),%ecx
  cb:	8b 45 0c             	mov    0xc(%ebp),%eax
  ce:	fc                   	cld    
  cf:	f3 aa                	rep stos %al,%es:(%edi)
  d1:	89 d0                	mov    %edx,%eax
  d3:	8b 7d fc             	mov    -0x4(%ebp),%edi
  d6:	c9                   	leave  
  d7:	c3                   	ret    
  d8:	55                   	push   %ebp
  d9:	89 e5                	mov    %esp,%ebp
  db:	8b 45 08             	mov    0x8(%ebp),%eax
  de:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  e2:	eb 03                	jmp    0xe7
  e4:	83 c0 01             	add    $0x1,%eax
  e7:	0f b6 10             	movzbl (%eax),%edx
  ea:	84 d2                	test   %dl,%dl
  ec:	74 06                	je     0xf4
  ee:	38 ca                	cmp    %cl,%dl
  f0:	75 f2                	jne    0xe4
  f2:	eb 05                	jmp    0xf9
  f4:	b8 00 00 00 00       	mov    $0x0,%eax
  f9:	5d                   	pop    %ebp
  fa:	c3                   	ret    
  fb:	55                   	push   %ebp
  fc:	89 e5                	mov    %esp,%ebp
  fe:	57                   	push   %edi
  ff:	56                   	push   %esi
 100:	53                   	push   %ebx
 101:	83 ec 1c             	sub    $0x1c,%esp
 104:	8b 7d 08             	mov    0x8(%ebp),%edi
 107:	bb 00 00 00 00       	mov    $0x0,%ebx
 10c:	89 de                	mov    %ebx,%esi
 10e:	83 c3 01             	add    $0x1,%ebx
 111:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 114:	7d 2e                	jge    0x144
 116:	83 ec 04             	sub    $0x4,%esp
 119:	6a 01                	push   $0x1
 11b:	8d 45 e7             	lea    -0x19(%ebp),%eax
 11e:	50                   	push   %eax
 11f:	6a 00                	push   $0x0
 121:	e8 ec 00 00 00       	call   0x212
 126:	83 c4 10             	add    $0x10,%esp
 129:	85 c0                	test   %eax,%eax
 12b:	7e 17                	jle    0x144
 12d:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 131:	88 04 37             	mov    %al,(%edi,%esi,1)
 134:	3c 0a                	cmp    $0xa,%al
 136:	0f 94 c2             	sete   %dl
 139:	3c 0d                	cmp    $0xd,%al
 13b:	0f 94 c0             	sete   %al
 13e:	08 c2                	or     %al,%dl
 140:	74 ca                	je     0x10c
 142:	89 de                	mov    %ebx,%esi
 144:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 148:	89 f8                	mov    %edi,%eax
 14a:	8d 65 f4             	lea    -0xc(%ebp),%esp
 14d:	5b                   	pop    %ebx
 14e:	5e                   	pop    %esi
 14f:	5f                   	pop    %edi
 150:	5d                   	pop    %ebp
 151:	c3                   	ret    
 152:	55                   	push   %ebp
 153:	89 e5                	mov    %esp,%ebp
 155:	56                   	push   %esi
 156:	53                   	push   %ebx
 157:	83 ec 08             	sub    $0x8,%esp
 15a:	6a 00                	push   $0x0
 15c:	ff 75 08             	push   0x8(%ebp)
 15f:	e8 d6 00 00 00       	call   0x23a
 164:	83 c4 10             	add    $0x10,%esp
 167:	85 c0                	test   %eax,%eax
 169:	78 24                	js     0x18f
 16b:	89 c3                	mov    %eax,%ebx
 16d:	83 ec 08             	sub    $0x8,%esp
 170:	ff 75 0c             	push   0xc(%ebp)
 173:	50                   	push   %eax
 174:	e8 d9 00 00 00       	call   0x252
 179:	89 c6                	mov    %eax,%esi
 17b:	89 1c 24             	mov    %ebx,(%esp)
 17e:	e8 9f 00 00 00       	call   0x222
 183:	83 c4 10             	add    $0x10,%esp
 186:	89 f0                	mov    %esi,%eax
 188:	8d 65 f8             	lea    -0x8(%ebp),%esp
 18b:	5b                   	pop    %ebx
 18c:	5e                   	pop    %esi
 18d:	5d                   	pop    %ebp
 18e:	c3                   	ret    
 18f:	be ff ff ff ff       	mov    $0xffffffff,%esi
 194:	eb f0                	jmp    0x186
 196:	55                   	push   %ebp
 197:	89 e5                	mov    %esp,%ebp
 199:	53                   	push   %ebx
 19a:	8b 4d 08             	mov    0x8(%ebp),%ecx
 19d:	ba 00 00 00 00       	mov    $0x0,%edx
 1a2:	eb 10                	jmp    0x1b4
 1a4:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 1a7:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 1aa:	83 c1 01             	add    $0x1,%ecx
 1ad:	0f be c0             	movsbl %al,%eax
 1b0:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 1b4:	0f b6 01             	movzbl (%ecx),%eax
 1b7:	8d 58 d0             	lea    -0x30(%eax),%ebx
 1ba:	80 fb 09             	cmp    $0x9,%bl
 1bd:	76 e5                	jbe    0x1a4
 1bf:	89 d0                	mov    %edx,%eax
 1c1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 1c4:	c9                   	leave  
 1c5:	c3                   	ret    
 1c6:	55                   	push   %ebp
 1c7:	89 e5                	mov    %esp,%ebp
 1c9:	56                   	push   %esi
 1ca:	53                   	push   %ebx
 1cb:	8b 75 08             	mov    0x8(%ebp),%esi
 1ce:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 1d1:	8b 45 10             	mov    0x10(%ebp),%eax
 1d4:	89 f2                	mov    %esi,%edx
 1d6:	eb 0d                	jmp    0x1e5
 1d8:	0f b6 01             	movzbl (%ecx),%eax
 1db:	88 02                	mov    %al,(%edx)
 1dd:	8d 49 01             	lea    0x1(%ecx),%ecx
 1e0:	8d 52 01             	lea    0x1(%edx),%edx
 1e3:	89 d8                	mov    %ebx,%eax
 1e5:	8d 58 ff             	lea    -0x1(%eax),%ebx
 1e8:	85 c0                	test   %eax,%eax
 1ea:	7f ec                	jg     0x1d8
 1ec:	89 f0                	mov    %esi,%eax
 1ee:	5b                   	pop    %ebx
 1ef:	5e                   	pop    %esi
 1f0:	5d                   	pop    %ebp
 1f1:	c3                   	ret    
 1f2:	b8 01 00 00 00       	mov    $0x1,%eax
 1f7:	cd 40                	int    $0x40
 1f9:	c3                   	ret    
 1fa:	b8 02 00 00 00       	mov    $0x2,%eax
 1ff:	cd 40                	int    $0x40
 201:	c3                   	ret    
 202:	b8 03 00 00 00       	mov    $0x3,%eax
 207:	cd 40                	int    $0x40
 209:	c3                   	ret    
 20a:	b8 04 00 00 00       	mov    $0x4,%eax
 20f:	cd 40                	int    $0x40
 211:	c3                   	ret    
 212:	b8 05 00 00 00       	mov    $0x5,%eax
 217:	cd 40                	int    $0x40
 219:	c3                   	ret    
 21a:	b8 10 00 00 00       	mov    $0x10,%eax
 21f:	cd 40                	int    $0x40
 221:	c3                   	ret    
 222:	b8 15 00 00 00       	mov    $0x15,%eax
 227:	cd 40                	int    $0x40
 229:	c3                   	ret    
 22a:	b8 06 00 00 00       	mov    $0x6,%eax
 22f:	cd 40                	int    $0x40
 231:	c3                   	ret    
 232:	b8 07 00 00 00       	mov    $0x7,%eax
 237:	cd 40                	int    $0x40
 239:	c3                   	ret    
 23a:	b8 0f 00 00 00       	mov    $0xf,%eax
 23f:	cd 40                	int    $0x40
 241:	c3                   	ret    
 242:	b8 11 00 00 00       	mov    $0x11,%eax
 247:	cd 40                	int    $0x40
 249:	c3                   	ret    
 24a:	b8 12 00 00 00       	mov    $0x12,%eax
 24f:	cd 40                	int    $0x40
 251:	c3                   	ret    
 252:	b8 08 00 00 00       	mov    $0x8,%eax
 257:	cd 40                	int    $0x40
 259:	c3                   	ret    
 25a:	b8 13 00 00 00       	mov    $0x13,%eax
 25f:	cd 40                	int    $0x40
 261:	c3                   	ret    
 262:	b8 14 00 00 00       	mov    $0x14,%eax
 267:	cd 40                	int    $0x40
 269:	c3                   	ret    
 26a:	b8 09 00 00 00       	mov    $0x9,%eax
 26f:	cd 40                	int    $0x40
 271:	c3                   	ret    
 272:	b8 0a 00 00 00       	mov    $0xa,%eax
 277:	cd 40                	int    $0x40
 279:	c3                   	ret    
 27a:	b8 0b 00 00 00       	mov    $0xb,%eax
 27f:	cd 40                	int    $0x40
 281:	c3                   	ret    
 282:	b8 0c 00 00 00       	mov    $0xc,%eax
 287:	cd 40                	int    $0x40
 289:	c3                   	ret    
 28a:	b8 0d 00 00 00       	mov    $0xd,%eax
 28f:	cd 40                	int    $0x40
 291:	c3                   	ret    
 292:	b8 0e 00 00 00       	mov    $0xe,%eax
 297:	cd 40                	int    $0x40
 299:	c3                   	ret    
 29a:	b8 16 00 00 00       	mov    $0x16,%eax
 29f:	cd 40                	int    $0x40
 2a1:	c3                   	ret    
 2a2:	55                   	push   %ebp
 2a3:	89 e5                	mov    %esp,%ebp
 2a5:	83 ec 1c             	sub    $0x1c,%esp
 2a8:	88 55 f4             	mov    %dl,-0xc(%ebp)
 2ab:	6a 01                	push   $0x1
 2ad:	8d 55 f4             	lea    -0xc(%ebp),%edx
 2b0:	52                   	push   %edx
 2b1:	50                   	push   %eax
 2b2:	e8 63 ff ff ff       	call   0x21a
 2b7:	83 c4 10             	add    $0x10,%esp
 2ba:	c9                   	leave  
 2bb:	c3                   	ret    
 2bc:	55                   	push   %ebp
 2bd:	89 e5                	mov    %esp,%ebp
 2bf:	57                   	push   %edi
 2c0:	56                   	push   %esi
 2c1:	53                   	push   %ebx
 2c2:	83 ec 2c             	sub    $0x2c,%esp
 2c5:	89 45 d0             	mov    %eax,-0x30(%ebp)
 2c8:	89 d0                	mov    %edx,%eax
 2ca:	89 ce                	mov    %ecx,%esi
 2cc:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 2d0:	0f 95 c1             	setne  %cl
 2d3:	c1 ea 1f             	shr    $0x1f,%edx
 2d6:	84 d1                	test   %dl,%cl
 2d8:	74 44                	je     0x31e
 2da:	f7 d8                	neg    %eax
 2dc:	89 c1                	mov    %eax,%ecx
 2de:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 2e5:	bb 00 00 00 00       	mov    $0x0,%ebx
 2ea:	89 c8                	mov    %ecx,%eax
 2ec:	ba 00 00 00 00       	mov    $0x0,%edx
 2f1:	f7 f6                	div    %esi
 2f3:	89 df                	mov    %ebx,%edi
 2f5:	83 c3 01             	add    $0x1,%ebx
 2f8:	0f b6 92 68 06 00 00 	movzbl 0x668(%edx),%edx
 2ff:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 303:	89 ca                	mov    %ecx,%edx
 305:	89 c1                	mov    %eax,%ecx
 307:	39 d6                	cmp    %edx,%esi
 309:	76 df                	jbe    0x2ea
 30b:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 30f:	74 31                	je     0x342
 311:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 316:	8d 5f 02             	lea    0x2(%edi),%ebx
 319:	8b 75 d0             	mov    -0x30(%ebp),%esi
 31c:	eb 17                	jmp    0x335
 31e:	89 c1                	mov    %eax,%ecx
 320:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 327:	eb bc                	jmp    0x2e5
 329:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 32e:	89 f0                	mov    %esi,%eax
 330:	e8 6d ff ff ff       	call   0x2a2
 335:	83 eb 01             	sub    $0x1,%ebx
 338:	79 ef                	jns    0x329
 33a:	83 c4 2c             	add    $0x2c,%esp
 33d:	5b                   	pop    %ebx
 33e:	5e                   	pop    %esi
 33f:	5f                   	pop    %edi
 340:	5d                   	pop    %ebp
 341:	c3                   	ret    
 342:	8b 75 d0             	mov    -0x30(%ebp),%esi
 345:	eb ee                	jmp    0x335
 347:	55                   	push   %ebp
 348:	89 e5                	mov    %esp,%ebp
 34a:	57                   	push   %edi
 34b:	56                   	push   %esi
 34c:	53                   	push   %ebx
 34d:	83 ec 1c             	sub    $0x1c,%esp
 350:	8d 45 10             	lea    0x10(%ebp),%eax
 353:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 356:	be 00 00 00 00       	mov    $0x0,%esi
 35b:	bb 00 00 00 00       	mov    $0x0,%ebx
 360:	eb 14                	jmp    0x376
 362:	89 fa                	mov    %edi,%edx
 364:	8b 45 08             	mov    0x8(%ebp),%eax
 367:	e8 36 ff ff ff       	call   0x2a2
 36c:	eb 05                	jmp    0x373
 36e:	83 fe 25             	cmp    $0x25,%esi
 371:	74 25                	je     0x398
 373:	83 c3 01             	add    $0x1,%ebx
 376:	8b 45 0c             	mov    0xc(%ebp),%eax
 379:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 37d:	84 c0                	test   %al,%al
 37f:	0f 84 20 01 00 00    	je     0x4a5
 385:	0f be f8             	movsbl %al,%edi
 388:	0f b6 c0             	movzbl %al,%eax
 38b:	85 f6                	test   %esi,%esi
 38d:	75 df                	jne    0x36e
 38f:	83 f8 25             	cmp    $0x25,%eax
 392:	75 ce                	jne    0x362
 394:	89 c6                	mov    %eax,%esi
 396:	eb db                	jmp    0x373
 398:	83 f8 25             	cmp    $0x25,%eax
 39b:	0f 84 cf 00 00 00    	je     0x470
 3a1:	0f 8c dd 00 00 00    	jl     0x484
 3a7:	83 f8 78             	cmp    $0x78,%eax
 3aa:	0f 8f d4 00 00 00    	jg     0x484
 3b0:	83 f8 63             	cmp    $0x63,%eax
 3b3:	0f 8c cb 00 00 00    	jl     0x484
 3b9:	83 e8 63             	sub    $0x63,%eax
 3bc:	83 f8 15             	cmp    $0x15,%eax
 3bf:	0f 87 bf 00 00 00    	ja     0x484
 3c5:	ff 24 85 10 06 00 00 	jmp    *0x610(,%eax,4)
 3cc:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 3cf:	8b 17                	mov    (%edi),%edx
 3d1:	83 ec 0c             	sub    $0xc,%esp
 3d4:	6a 01                	push   $0x1
 3d6:	b9 0a 00 00 00       	mov    $0xa,%ecx
 3db:	8b 45 08             	mov    0x8(%ebp),%eax
 3de:	e8 d9 fe ff ff       	call   0x2bc
 3e3:	83 c7 04             	add    $0x4,%edi
 3e6:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 3e9:	83 c4 10             	add    $0x10,%esp
 3ec:	be 00 00 00 00       	mov    $0x0,%esi
 3f1:	eb 80                	jmp    0x373
 3f3:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 3f6:	8b 17                	mov    (%edi),%edx
 3f8:	83 ec 0c             	sub    $0xc,%esp
 3fb:	6a 00                	push   $0x0
 3fd:	b9 10 00 00 00       	mov    $0x10,%ecx
 402:	8b 45 08             	mov    0x8(%ebp),%eax
 405:	e8 b2 fe ff ff       	call   0x2bc
 40a:	83 c7 04             	add    $0x4,%edi
 40d:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 410:	83 c4 10             	add    $0x10,%esp
 413:	be 00 00 00 00       	mov    $0x0,%esi
 418:	e9 56 ff ff ff       	jmp    0x373
 41d:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 420:	8b 30                	mov    (%eax),%esi
 422:	83 c0 04             	add    $0x4,%eax
 425:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 428:	85 f6                	test   %esi,%esi
 42a:	75 15                	jne    0x441
 42c:	be 08 06 00 00       	mov    $0x608,%esi
 431:	eb 0e                	jmp    0x441
 433:	0f be d2             	movsbl %dl,%edx
 436:	8b 45 08             	mov    0x8(%ebp),%eax
 439:	e8 64 fe ff ff       	call   0x2a2
 43e:	83 c6 01             	add    $0x1,%esi
 441:	0f b6 16             	movzbl (%esi),%edx
 444:	84 d2                	test   %dl,%dl
 446:	75 eb                	jne    0x433
 448:	be 00 00 00 00       	mov    $0x0,%esi
 44d:	e9 21 ff ff ff       	jmp    0x373
 452:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 455:	0f be 17             	movsbl (%edi),%edx
 458:	8b 45 08             	mov    0x8(%ebp),%eax
 45b:	e8 42 fe ff ff       	call   0x2a2
 460:	83 c7 04             	add    $0x4,%edi
 463:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 466:	be 00 00 00 00       	mov    $0x0,%esi
 46b:	e9 03 ff ff ff       	jmp    0x373
 470:	89 fa                	mov    %edi,%edx
 472:	8b 45 08             	mov    0x8(%ebp),%eax
 475:	e8 28 fe ff ff       	call   0x2a2
 47a:	be 00 00 00 00       	mov    $0x0,%esi
 47f:	e9 ef fe ff ff       	jmp    0x373
 484:	ba 25 00 00 00       	mov    $0x25,%edx
 489:	8b 45 08             	mov    0x8(%ebp),%eax
 48c:	e8 11 fe ff ff       	call   0x2a2
 491:	89 fa                	mov    %edi,%edx
 493:	8b 45 08             	mov    0x8(%ebp),%eax
 496:	e8 07 fe ff ff       	call   0x2a2
 49b:	be 00 00 00 00       	mov    $0x0,%esi
 4a0:	e9 ce fe ff ff       	jmp    0x373
 4a5:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4a8:	5b                   	pop    %ebx
 4a9:	5e                   	pop    %esi
 4aa:	5f                   	pop    %edi
 4ab:	5d                   	pop    %ebp
 4ac:	c3                   	ret    
 4ad:	55                   	push   %ebp
 4ae:	89 e5                	mov    %esp,%ebp
 4b0:	57                   	push   %edi
 4b1:	56                   	push   %esi
 4b2:	53                   	push   %ebx
 4b3:	8b 5d 08             	mov    0x8(%ebp),%ebx
 4b6:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 4b9:	a1 14 09 00 00       	mov    0x914,%eax
 4be:	eb 02                	jmp    0x4c2
 4c0:	89 d0                	mov    %edx,%eax
 4c2:	39 c8                	cmp    %ecx,%eax
 4c4:	73 04                	jae    0x4ca
 4c6:	39 08                	cmp    %ecx,(%eax)
 4c8:	77 12                	ja     0x4dc
 4ca:	8b 10                	mov    (%eax),%edx
 4cc:	39 c2                	cmp    %eax,%edx
 4ce:	77 f0                	ja     0x4c0
 4d0:	39 c8                	cmp    %ecx,%eax
 4d2:	72 08                	jb     0x4dc
 4d4:	39 ca                	cmp    %ecx,%edx
 4d6:	77 04                	ja     0x4dc
 4d8:	89 d0                	mov    %edx,%eax
 4da:	eb e6                	jmp    0x4c2
 4dc:	8b 73 fc             	mov    -0x4(%ebx),%esi
 4df:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 4e2:	8b 10                	mov    (%eax),%edx
 4e4:	39 d7                	cmp    %edx,%edi
 4e6:	74 19                	je     0x501
 4e8:	89 53 f8             	mov    %edx,-0x8(%ebx)
 4eb:	8b 50 04             	mov    0x4(%eax),%edx
 4ee:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 4f1:	39 ce                	cmp    %ecx,%esi
 4f3:	74 1b                	je     0x510
 4f5:	89 08                	mov    %ecx,(%eax)
 4f7:	a3 14 09 00 00       	mov    %eax,0x914
 4fc:	5b                   	pop    %ebx
 4fd:	5e                   	pop    %esi
 4fe:	5f                   	pop    %edi
 4ff:	5d                   	pop    %ebp
 500:	c3                   	ret    
 501:	03 72 04             	add    0x4(%edx),%esi
 504:	89 73 fc             	mov    %esi,-0x4(%ebx)
 507:	8b 10                	mov    (%eax),%edx
 509:	8b 12                	mov    (%edx),%edx
 50b:	89 53 f8             	mov    %edx,-0x8(%ebx)
 50e:	eb db                	jmp    0x4eb
 510:	03 53 fc             	add    -0x4(%ebx),%edx
 513:	89 50 04             	mov    %edx,0x4(%eax)
 516:	8b 53 f8             	mov    -0x8(%ebx),%edx
 519:	89 10                	mov    %edx,(%eax)
 51b:	eb da                	jmp    0x4f7
 51d:	55                   	push   %ebp
 51e:	89 e5                	mov    %esp,%ebp
 520:	53                   	push   %ebx
 521:	83 ec 04             	sub    $0x4,%esp
 524:	89 c3                	mov    %eax,%ebx
 526:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 52b:	77 05                	ja     0x532
 52d:	bb 00 10 00 00       	mov    $0x1000,%ebx
 532:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 539:	83 ec 0c             	sub    $0xc,%esp
 53c:	50                   	push   %eax
 53d:	e8 40 fd ff ff       	call   0x282
 542:	83 c4 10             	add    $0x10,%esp
 545:	83 f8 ff             	cmp    $0xffffffff,%eax
 548:	74 1c                	je     0x566
 54a:	89 58 04             	mov    %ebx,0x4(%eax)
 54d:	83 c0 08             	add    $0x8,%eax
 550:	83 ec 0c             	sub    $0xc,%esp
 553:	50                   	push   %eax
 554:	e8 54 ff ff ff       	call   0x4ad
 559:	a1 14 09 00 00       	mov    0x914,%eax
 55e:	83 c4 10             	add    $0x10,%esp
 561:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 564:	c9                   	leave  
 565:	c3                   	ret    
 566:	b8 00 00 00 00       	mov    $0x0,%eax
 56b:	eb f4                	jmp    0x561
 56d:	55                   	push   %ebp
 56e:	89 e5                	mov    %esp,%ebp
 570:	53                   	push   %ebx
 571:	83 ec 04             	sub    $0x4,%esp
 574:	8b 45 08             	mov    0x8(%ebp),%eax
 577:	8d 58 07             	lea    0x7(%eax),%ebx
 57a:	c1 eb 03             	shr    $0x3,%ebx
 57d:	83 c3 01             	add    $0x1,%ebx
 580:	8b 0d 14 09 00 00    	mov    0x914,%ecx
 586:	85 c9                	test   %ecx,%ecx
 588:	74 04                	je     0x58e
 58a:	8b 01                	mov    (%ecx),%eax
 58c:	eb 4a                	jmp    0x5d8
 58e:	c7 05 14 09 00 00 18 	movl   $0x918,0x914
 595:	09 00 00 
 598:	c7 05 18 09 00 00 18 	movl   $0x918,0x918
 59f:	09 00 00 
 5a2:	c7 05 1c 09 00 00 00 	movl   $0x0,0x91c
 5a9:	00 00 00 
 5ac:	b9 18 09 00 00       	mov    $0x918,%ecx
 5b1:	eb d7                	jmp    0x58a
 5b3:	74 19                	je     0x5ce
 5b5:	29 da                	sub    %ebx,%edx
 5b7:	89 50 04             	mov    %edx,0x4(%eax)
 5ba:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 5bd:	89 58 04             	mov    %ebx,0x4(%eax)
 5c0:	89 0d 14 09 00 00    	mov    %ecx,0x914
 5c6:	83 c0 08             	add    $0x8,%eax
 5c9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 5cc:	c9                   	leave  
 5cd:	c3                   	ret    
 5ce:	8b 10                	mov    (%eax),%edx
 5d0:	89 11                	mov    %edx,(%ecx)
 5d2:	eb ec                	jmp    0x5c0
 5d4:	89 c1                	mov    %eax,%ecx
 5d6:	8b 00                	mov    (%eax),%eax
 5d8:	8b 50 04             	mov    0x4(%eax),%edx
 5db:	39 da                	cmp    %ebx,%edx
 5dd:	73 d4                	jae    0x5b3
 5df:	39 05 14 09 00 00    	cmp    %eax,0x914
 5e5:	75 ed                	jne    0x5d4
 5e7:	89 d8                	mov    %ebx,%eax
 5e9:	e8 2f ff ff ff       	call   0x51d
 5ee:	85 c0                	test   %eax,%eax
 5f0:	75 e2                	jne    0x5d4
 5f2:	eb d5                	jmp    0x5c9
