
_echo:     file format elf32-i386


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
  19:	b8 01 00 00 00       	mov    $0x1,%eax
  1e:	eb 1a                	jmp    0x3a
  20:	ba ee 05 00 00       	mov    $0x5ee,%edx
  25:	52                   	push   %edx
  26:	ff 34 87             	push   (%edi,%eax,4)
  29:	68 f0 05 00 00       	push   $0x5f0
  2e:	6a 01                	push   $0x1
  30:	e8 08 03 00 00       	call   0x33d
  35:	83 c4 10             	add    $0x10,%esp
  38:	89 d8                	mov    %ebx,%eax
  3a:	39 f0                	cmp    %esi,%eax
  3c:	7d 0e                	jge    0x4c
  3e:	8d 58 01             	lea    0x1(%eax),%ebx
  41:	39 f3                	cmp    %esi,%ebx
  43:	7d db                	jge    0x20
  45:	ba ec 05 00 00       	mov    $0x5ec,%edx
  4a:	eb d9                	jmp    0x25
  4c:	e8 9f 01 00 00       	call   0x1f0
  51:	55                   	push   %ebp
  52:	89 e5                	mov    %esp,%ebp
  54:	56                   	push   %esi
  55:	53                   	push   %ebx
  56:	8b 75 08             	mov    0x8(%ebp),%esi
  59:	8b 55 0c             	mov    0xc(%ebp),%edx
  5c:	89 f0                	mov    %esi,%eax
  5e:	89 d1                	mov    %edx,%ecx
  60:	83 c2 01             	add    $0x1,%edx
  63:	89 c3                	mov    %eax,%ebx
  65:	83 c0 01             	add    $0x1,%eax
  68:	0f b6 09             	movzbl (%ecx),%ecx
  6b:	88 0b                	mov    %cl,(%ebx)
  6d:	84 c9                	test   %cl,%cl
  6f:	75 ed                	jne    0x5e
  71:	89 f0                	mov    %esi,%eax
  73:	5b                   	pop    %ebx
  74:	5e                   	pop    %esi
  75:	5d                   	pop    %ebp
  76:	c3                   	ret    
  77:	55                   	push   %ebp
  78:	89 e5                	mov    %esp,%ebp
  7a:	8b 4d 08             	mov    0x8(%ebp),%ecx
  7d:	8b 55 0c             	mov    0xc(%ebp),%edx
  80:	eb 06                	jmp    0x88
  82:	83 c1 01             	add    $0x1,%ecx
  85:	83 c2 01             	add    $0x1,%edx
  88:	0f b6 01             	movzbl (%ecx),%eax
  8b:	84 c0                	test   %al,%al
  8d:	74 04                	je     0x93
  8f:	3a 02                	cmp    (%edx),%al
  91:	74 ef                	je     0x82
  93:	0f b6 c0             	movzbl %al,%eax
  96:	0f b6 12             	movzbl (%edx),%edx
  99:	29 d0                	sub    %edx,%eax
  9b:	5d                   	pop    %ebp
  9c:	c3                   	ret    
  9d:	55                   	push   %ebp
  9e:	89 e5                	mov    %esp,%ebp
  a0:	8b 4d 08             	mov    0x8(%ebp),%ecx
  a3:	b8 00 00 00 00       	mov    $0x0,%eax
  a8:	eb 03                	jmp    0xad
  aa:	83 c0 01             	add    $0x1,%eax
  ad:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
  b1:	75 f7                	jne    0xaa
  b3:	5d                   	pop    %ebp
  b4:	c3                   	ret    
  b5:	55                   	push   %ebp
  b6:	89 e5                	mov    %esp,%ebp
  b8:	57                   	push   %edi
  b9:	8b 55 08             	mov    0x8(%ebp),%edx
  bc:	89 d7                	mov    %edx,%edi
  be:	8b 4d 10             	mov    0x10(%ebp),%ecx
  c1:	8b 45 0c             	mov    0xc(%ebp),%eax
  c4:	fc                   	cld    
  c5:	f3 aa                	rep stos %al,%es:(%edi)
  c7:	89 d0                	mov    %edx,%eax
  c9:	8b 7d fc             	mov    -0x4(%ebp),%edi
  cc:	c9                   	leave  
  cd:	c3                   	ret    
  ce:	55                   	push   %ebp
  cf:	89 e5                	mov    %esp,%ebp
  d1:	8b 45 08             	mov    0x8(%ebp),%eax
  d4:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  d8:	eb 03                	jmp    0xdd
  da:	83 c0 01             	add    $0x1,%eax
  dd:	0f b6 10             	movzbl (%eax),%edx
  e0:	84 d2                	test   %dl,%dl
  e2:	74 06                	je     0xea
  e4:	38 ca                	cmp    %cl,%dl
  e6:	75 f2                	jne    0xda
  e8:	eb 05                	jmp    0xef
  ea:	b8 00 00 00 00       	mov    $0x0,%eax
  ef:	5d                   	pop    %ebp
  f0:	c3                   	ret    
  f1:	55                   	push   %ebp
  f2:	89 e5                	mov    %esp,%ebp
  f4:	57                   	push   %edi
  f5:	56                   	push   %esi
  f6:	53                   	push   %ebx
  f7:	83 ec 1c             	sub    $0x1c,%esp
  fa:	8b 7d 08             	mov    0x8(%ebp),%edi
  fd:	bb 00 00 00 00       	mov    $0x0,%ebx
 102:	89 de                	mov    %ebx,%esi
 104:	83 c3 01             	add    $0x1,%ebx
 107:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 10a:	7d 2e                	jge    0x13a
 10c:	83 ec 04             	sub    $0x4,%esp
 10f:	6a 01                	push   $0x1
 111:	8d 45 e7             	lea    -0x19(%ebp),%eax
 114:	50                   	push   %eax
 115:	6a 00                	push   $0x0
 117:	e8 ec 00 00 00       	call   0x208
 11c:	83 c4 10             	add    $0x10,%esp
 11f:	85 c0                	test   %eax,%eax
 121:	7e 17                	jle    0x13a
 123:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 127:	88 04 37             	mov    %al,(%edi,%esi,1)
 12a:	3c 0a                	cmp    $0xa,%al
 12c:	0f 94 c2             	sete   %dl
 12f:	3c 0d                	cmp    $0xd,%al
 131:	0f 94 c0             	sete   %al
 134:	08 c2                	or     %al,%dl
 136:	74 ca                	je     0x102
 138:	89 de                	mov    %ebx,%esi
 13a:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 13e:	89 f8                	mov    %edi,%eax
 140:	8d 65 f4             	lea    -0xc(%ebp),%esp
 143:	5b                   	pop    %ebx
 144:	5e                   	pop    %esi
 145:	5f                   	pop    %edi
 146:	5d                   	pop    %ebp
 147:	c3                   	ret    
 148:	55                   	push   %ebp
 149:	89 e5                	mov    %esp,%ebp
 14b:	56                   	push   %esi
 14c:	53                   	push   %ebx
 14d:	83 ec 08             	sub    $0x8,%esp
 150:	6a 00                	push   $0x0
 152:	ff 75 08             	push   0x8(%ebp)
 155:	e8 d6 00 00 00       	call   0x230
 15a:	83 c4 10             	add    $0x10,%esp
 15d:	85 c0                	test   %eax,%eax
 15f:	78 24                	js     0x185
 161:	89 c3                	mov    %eax,%ebx
 163:	83 ec 08             	sub    $0x8,%esp
 166:	ff 75 0c             	push   0xc(%ebp)
 169:	50                   	push   %eax
 16a:	e8 d9 00 00 00       	call   0x248
 16f:	89 c6                	mov    %eax,%esi
 171:	89 1c 24             	mov    %ebx,(%esp)
 174:	e8 9f 00 00 00       	call   0x218
 179:	83 c4 10             	add    $0x10,%esp
 17c:	89 f0                	mov    %esi,%eax
 17e:	8d 65 f8             	lea    -0x8(%ebp),%esp
 181:	5b                   	pop    %ebx
 182:	5e                   	pop    %esi
 183:	5d                   	pop    %ebp
 184:	c3                   	ret    
 185:	be ff ff ff ff       	mov    $0xffffffff,%esi
 18a:	eb f0                	jmp    0x17c
 18c:	55                   	push   %ebp
 18d:	89 e5                	mov    %esp,%ebp
 18f:	53                   	push   %ebx
 190:	8b 4d 08             	mov    0x8(%ebp),%ecx
 193:	ba 00 00 00 00       	mov    $0x0,%edx
 198:	eb 10                	jmp    0x1aa
 19a:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 19d:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 1a0:	83 c1 01             	add    $0x1,%ecx
 1a3:	0f be c0             	movsbl %al,%eax
 1a6:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 1aa:	0f b6 01             	movzbl (%ecx),%eax
 1ad:	8d 58 d0             	lea    -0x30(%eax),%ebx
 1b0:	80 fb 09             	cmp    $0x9,%bl
 1b3:	76 e5                	jbe    0x19a
 1b5:	89 d0                	mov    %edx,%eax
 1b7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 1ba:	c9                   	leave  
 1bb:	c3                   	ret    
 1bc:	55                   	push   %ebp
 1bd:	89 e5                	mov    %esp,%ebp
 1bf:	56                   	push   %esi
 1c0:	53                   	push   %ebx
 1c1:	8b 75 08             	mov    0x8(%ebp),%esi
 1c4:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 1c7:	8b 45 10             	mov    0x10(%ebp),%eax
 1ca:	89 f2                	mov    %esi,%edx
 1cc:	eb 0d                	jmp    0x1db
 1ce:	0f b6 01             	movzbl (%ecx),%eax
 1d1:	88 02                	mov    %al,(%edx)
 1d3:	8d 49 01             	lea    0x1(%ecx),%ecx
 1d6:	8d 52 01             	lea    0x1(%edx),%edx
 1d9:	89 d8                	mov    %ebx,%eax
 1db:	8d 58 ff             	lea    -0x1(%eax),%ebx
 1de:	85 c0                	test   %eax,%eax
 1e0:	7f ec                	jg     0x1ce
 1e2:	89 f0                	mov    %esi,%eax
 1e4:	5b                   	pop    %ebx
 1e5:	5e                   	pop    %esi
 1e6:	5d                   	pop    %ebp
 1e7:	c3                   	ret    
 1e8:	b8 01 00 00 00       	mov    $0x1,%eax
 1ed:	cd 40                	int    $0x40
 1ef:	c3                   	ret    
 1f0:	b8 02 00 00 00       	mov    $0x2,%eax
 1f5:	cd 40                	int    $0x40
 1f7:	c3                   	ret    
 1f8:	b8 03 00 00 00       	mov    $0x3,%eax
 1fd:	cd 40                	int    $0x40
 1ff:	c3                   	ret    
 200:	b8 04 00 00 00       	mov    $0x4,%eax
 205:	cd 40                	int    $0x40
 207:	c3                   	ret    
 208:	b8 05 00 00 00       	mov    $0x5,%eax
 20d:	cd 40                	int    $0x40
 20f:	c3                   	ret    
 210:	b8 10 00 00 00       	mov    $0x10,%eax
 215:	cd 40                	int    $0x40
 217:	c3                   	ret    
 218:	b8 15 00 00 00       	mov    $0x15,%eax
 21d:	cd 40                	int    $0x40
 21f:	c3                   	ret    
 220:	b8 06 00 00 00       	mov    $0x6,%eax
 225:	cd 40                	int    $0x40
 227:	c3                   	ret    
 228:	b8 07 00 00 00       	mov    $0x7,%eax
 22d:	cd 40                	int    $0x40
 22f:	c3                   	ret    
 230:	b8 0f 00 00 00       	mov    $0xf,%eax
 235:	cd 40                	int    $0x40
 237:	c3                   	ret    
 238:	b8 11 00 00 00       	mov    $0x11,%eax
 23d:	cd 40                	int    $0x40
 23f:	c3                   	ret    
 240:	b8 12 00 00 00       	mov    $0x12,%eax
 245:	cd 40                	int    $0x40
 247:	c3                   	ret    
 248:	b8 08 00 00 00       	mov    $0x8,%eax
 24d:	cd 40                	int    $0x40
 24f:	c3                   	ret    
 250:	b8 13 00 00 00       	mov    $0x13,%eax
 255:	cd 40                	int    $0x40
 257:	c3                   	ret    
 258:	b8 14 00 00 00       	mov    $0x14,%eax
 25d:	cd 40                	int    $0x40
 25f:	c3                   	ret    
 260:	b8 09 00 00 00       	mov    $0x9,%eax
 265:	cd 40                	int    $0x40
 267:	c3                   	ret    
 268:	b8 0a 00 00 00       	mov    $0xa,%eax
 26d:	cd 40                	int    $0x40
 26f:	c3                   	ret    
 270:	b8 0b 00 00 00       	mov    $0xb,%eax
 275:	cd 40                	int    $0x40
 277:	c3                   	ret    
 278:	b8 0c 00 00 00       	mov    $0xc,%eax
 27d:	cd 40                	int    $0x40
 27f:	c3                   	ret    
 280:	b8 0d 00 00 00       	mov    $0xd,%eax
 285:	cd 40                	int    $0x40
 287:	c3                   	ret    
 288:	b8 0e 00 00 00       	mov    $0xe,%eax
 28d:	cd 40                	int    $0x40
 28f:	c3                   	ret    
 290:	b8 16 00 00 00       	mov    $0x16,%eax
 295:	cd 40                	int    $0x40
 297:	c3                   	ret    
 298:	55                   	push   %ebp
 299:	89 e5                	mov    %esp,%ebp
 29b:	83 ec 1c             	sub    $0x1c,%esp
 29e:	88 55 f4             	mov    %dl,-0xc(%ebp)
 2a1:	6a 01                	push   $0x1
 2a3:	8d 55 f4             	lea    -0xc(%ebp),%edx
 2a6:	52                   	push   %edx
 2a7:	50                   	push   %eax
 2a8:	e8 63 ff ff ff       	call   0x210
 2ad:	83 c4 10             	add    $0x10,%esp
 2b0:	c9                   	leave  
 2b1:	c3                   	ret    
 2b2:	55                   	push   %ebp
 2b3:	89 e5                	mov    %esp,%ebp
 2b5:	57                   	push   %edi
 2b6:	56                   	push   %esi
 2b7:	53                   	push   %ebx
 2b8:	83 ec 2c             	sub    $0x2c,%esp
 2bb:	89 45 d0             	mov    %eax,-0x30(%ebp)
 2be:	89 d0                	mov    %edx,%eax
 2c0:	89 ce                	mov    %ecx,%esi
 2c2:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 2c6:	0f 95 c1             	setne  %cl
 2c9:	c1 ea 1f             	shr    $0x1f,%edx
 2cc:	84 d1                	test   %dl,%cl
 2ce:	74 44                	je     0x314
 2d0:	f7 d8                	neg    %eax
 2d2:	89 c1                	mov    %eax,%ecx
 2d4:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 2db:	bb 00 00 00 00       	mov    $0x0,%ebx
 2e0:	89 c8                	mov    %ecx,%eax
 2e2:	ba 00 00 00 00       	mov    $0x0,%edx
 2e7:	f7 f6                	div    %esi
 2e9:	89 df                	mov    %ebx,%edi
 2eb:	83 c3 01             	add    $0x1,%ebx
 2ee:	0f b6 92 54 06 00 00 	movzbl 0x654(%edx),%edx
 2f5:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 2f9:	89 ca                	mov    %ecx,%edx
 2fb:	89 c1                	mov    %eax,%ecx
 2fd:	39 d6                	cmp    %edx,%esi
 2ff:	76 df                	jbe    0x2e0
 301:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 305:	74 31                	je     0x338
 307:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 30c:	8d 5f 02             	lea    0x2(%edi),%ebx
 30f:	8b 75 d0             	mov    -0x30(%ebp),%esi
 312:	eb 17                	jmp    0x32b
 314:	89 c1                	mov    %eax,%ecx
 316:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 31d:	eb bc                	jmp    0x2db
 31f:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 324:	89 f0                	mov    %esi,%eax
 326:	e8 6d ff ff ff       	call   0x298
 32b:	83 eb 01             	sub    $0x1,%ebx
 32e:	79 ef                	jns    0x31f
 330:	83 c4 2c             	add    $0x2c,%esp
 333:	5b                   	pop    %ebx
 334:	5e                   	pop    %esi
 335:	5f                   	pop    %edi
 336:	5d                   	pop    %ebp
 337:	c3                   	ret    
 338:	8b 75 d0             	mov    -0x30(%ebp),%esi
 33b:	eb ee                	jmp    0x32b
 33d:	55                   	push   %ebp
 33e:	89 e5                	mov    %esp,%ebp
 340:	57                   	push   %edi
 341:	56                   	push   %esi
 342:	53                   	push   %ebx
 343:	83 ec 1c             	sub    $0x1c,%esp
 346:	8d 45 10             	lea    0x10(%ebp),%eax
 349:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 34c:	be 00 00 00 00       	mov    $0x0,%esi
 351:	bb 00 00 00 00       	mov    $0x0,%ebx
 356:	eb 14                	jmp    0x36c
 358:	89 fa                	mov    %edi,%edx
 35a:	8b 45 08             	mov    0x8(%ebp),%eax
 35d:	e8 36 ff ff ff       	call   0x298
 362:	eb 05                	jmp    0x369
 364:	83 fe 25             	cmp    $0x25,%esi
 367:	74 25                	je     0x38e
 369:	83 c3 01             	add    $0x1,%ebx
 36c:	8b 45 0c             	mov    0xc(%ebp),%eax
 36f:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 373:	84 c0                	test   %al,%al
 375:	0f 84 20 01 00 00    	je     0x49b
 37b:	0f be f8             	movsbl %al,%edi
 37e:	0f b6 c0             	movzbl %al,%eax
 381:	85 f6                	test   %esi,%esi
 383:	75 df                	jne    0x364
 385:	83 f8 25             	cmp    $0x25,%eax
 388:	75 ce                	jne    0x358
 38a:	89 c6                	mov    %eax,%esi
 38c:	eb db                	jmp    0x369
 38e:	83 f8 25             	cmp    $0x25,%eax
 391:	0f 84 cf 00 00 00    	je     0x466
 397:	0f 8c dd 00 00 00    	jl     0x47a
 39d:	83 f8 78             	cmp    $0x78,%eax
 3a0:	0f 8f d4 00 00 00    	jg     0x47a
 3a6:	83 f8 63             	cmp    $0x63,%eax
 3a9:	0f 8c cb 00 00 00    	jl     0x47a
 3af:	83 e8 63             	sub    $0x63,%eax
 3b2:	83 f8 15             	cmp    $0x15,%eax
 3b5:	0f 87 bf 00 00 00    	ja     0x47a
 3bb:	ff 24 85 fc 05 00 00 	jmp    *0x5fc(,%eax,4)
 3c2:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 3c5:	8b 17                	mov    (%edi),%edx
 3c7:	83 ec 0c             	sub    $0xc,%esp
 3ca:	6a 01                	push   $0x1
 3cc:	b9 0a 00 00 00       	mov    $0xa,%ecx
 3d1:	8b 45 08             	mov    0x8(%ebp),%eax
 3d4:	e8 d9 fe ff ff       	call   0x2b2
 3d9:	83 c7 04             	add    $0x4,%edi
 3dc:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 3df:	83 c4 10             	add    $0x10,%esp
 3e2:	be 00 00 00 00       	mov    $0x0,%esi
 3e7:	eb 80                	jmp    0x369
 3e9:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 3ec:	8b 17                	mov    (%edi),%edx
 3ee:	83 ec 0c             	sub    $0xc,%esp
 3f1:	6a 00                	push   $0x0
 3f3:	b9 10 00 00 00       	mov    $0x10,%ecx
 3f8:	8b 45 08             	mov    0x8(%ebp),%eax
 3fb:	e8 b2 fe ff ff       	call   0x2b2
 400:	83 c7 04             	add    $0x4,%edi
 403:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 406:	83 c4 10             	add    $0x10,%esp
 409:	be 00 00 00 00       	mov    $0x0,%esi
 40e:	e9 56 ff ff ff       	jmp    0x369
 413:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 416:	8b 30                	mov    (%eax),%esi
 418:	83 c0 04             	add    $0x4,%eax
 41b:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 41e:	85 f6                	test   %esi,%esi
 420:	75 15                	jne    0x437
 422:	be f5 05 00 00       	mov    $0x5f5,%esi
 427:	eb 0e                	jmp    0x437
 429:	0f be d2             	movsbl %dl,%edx
 42c:	8b 45 08             	mov    0x8(%ebp),%eax
 42f:	e8 64 fe ff ff       	call   0x298
 434:	83 c6 01             	add    $0x1,%esi
 437:	0f b6 16             	movzbl (%esi),%edx
 43a:	84 d2                	test   %dl,%dl
 43c:	75 eb                	jne    0x429
 43e:	be 00 00 00 00       	mov    $0x0,%esi
 443:	e9 21 ff ff ff       	jmp    0x369
 448:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 44b:	0f be 17             	movsbl (%edi),%edx
 44e:	8b 45 08             	mov    0x8(%ebp),%eax
 451:	e8 42 fe ff ff       	call   0x298
 456:	83 c7 04             	add    $0x4,%edi
 459:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 45c:	be 00 00 00 00       	mov    $0x0,%esi
 461:	e9 03 ff ff ff       	jmp    0x369
 466:	89 fa                	mov    %edi,%edx
 468:	8b 45 08             	mov    0x8(%ebp),%eax
 46b:	e8 28 fe ff ff       	call   0x298
 470:	be 00 00 00 00       	mov    $0x0,%esi
 475:	e9 ef fe ff ff       	jmp    0x369
 47a:	ba 25 00 00 00       	mov    $0x25,%edx
 47f:	8b 45 08             	mov    0x8(%ebp),%eax
 482:	e8 11 fe ff ff       	call   0x298
 487:	89 fa                	mov    %edi,%edx
 489:	8b 45 08             	mov    0x8(%ebp),%eax
 48c:	e8 07 fe ff ff       	call   0x298
 491:	be 00 00 00 00       	mov    $0x0,%esi
 496:	e9 ce fe ff ff       	jmp    0x369
 49b:	8d 65 f4             	lea    -0xc(%ebp),%esp
 49e:	5b                   	pop    %ebx
 49f:	5e                   	pop    %esi
 4a0:	5f                   	pop    %edi
 4a1:	5d                   	pop    %ebp
 4a2:	c3                   	ret    
 4a3:	55                   	push   %ebp
 4a4:	89 e5                	mov    %esp,%ebp
 4a6:	57                   	push   %edi
 4a7:	56                   	push   %esi
 4a8:	53                   	push   %ebx
 4a9:	8b 5d 08             	mov    0x8(%ebp),%ebx
 4ac:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 4af:	a1 00 09 00 00       	mov    0x900,%eax
 4b4:	eb 02                	jmp    0x4b8
 4b6:	89 d0                	mov    %edx,%eax
 4b8:	39 c8                	cmp    %ecx,%eax
 4ba:	73 04                	jae    0x4c0
 4bc:	39 08                	cmp    %ecx,(%eax)
 4be:	77 12                	ja     0x4d2
 4c0:	8b 10                	mov    (%eax),%edx
 4c2:	39 c2                	cmp    %eax,%edx
 4c4:	77 f0                	ja     0x4b6
 4c6:	39 c8                	cmp    %ecx,%eax
 4c8:	72 08                	jb     0x4d2
 4ca:	39 ca                	cmp    %ecx,%edx
 4cc:	77 04                	ja     0x4d2
 4ce:	89 d0                	mov    %edx,%eax
 4d0:	eb e6                	jmp    0x4b8
 4d2:	8b 73 fc             	mov    -0x4(%ebx),%esi
 4d5:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 4d8:	8b 10                	mov    (%eax),%edx
 4da:	39 d7                	cmp    %edx,%edi
 4dc:	74 19                	je     0x4f7
 4de:	89 53 f8             	mov    %edx,-0x8(%ebx)
 4e1:	8b 50 04             	mov    0x4(%eax),%edx
 4e4:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 4e7:	39 ce                	cmp    %ecx,%esi
 4e9:	74 1b                	je     0x506
 4eb:	89 08                	mov    %ecx,(%eax)
 4ed:	a3 00 09 00 00       	mov    %eax,0x900
 4f2:	5b                   	pop    %ebx
 4f3:	5e                   	pop    %esi
 4f4:	5f                   	pop    %edi
 4f5:	5d                   	pop    %ebp
 4f6:	c3                   	ret    
 4f7:	03 72 04             	add    0x4(%edx),%esi
 4fa:	89 73 fc             	mov    %esi,-0x4(%ebx)
 4fd:	8b 10                	mov    (%eax),%edx
 4ff:	8b 12                	mov    (%edx),%edx
 501:	89 53 f8             	mov    %edx,-0x8(%ebx)
 504:	eb db                	jmp    0x4e1
 506:	03 53 fc             	add    -0x4(%ebx),%edx
 509:	89 50 04             	mov    %edx,0x4(%eax)
 50c:	8b 53 f8             	mov    -0x8(%ebx),%edx
 50f:	89 10                	mov    %edx,(%eax)
 511:	eb da                	jmp    0x4ed
 513:	55                   	push   %ebp
 514:	89 e5                	mov    %esp,%ebp
 516:	53                   	push   %ebx
 517:	83 ec 04             	sub    $0x4,%esp
 51a:	89 c3                	mov    %eax,%ebx
 51c:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 521:	77 05                	ja     0x528
 523:	bb 00 10 00 00       	mov    $0x1000,%ebx
 528:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 52f:	83 ec 0c             	sub    $0xc,%esp
 532:	50                   	push   %eax
 533:	e8 40 fd ff ff       	call   0x278
 538:	83 c4 10             	add    $0x10,%esp
 53b:	83 f8 ff             	cmp    $0xffffffff,%eax
 53e:	74 1c                	je     0x55c
 540:	89 58 04             	mov    %ebx,0x4(%eax)
 543:	83 c0 08             	add    $0x8,%eax
 546:	83 ec 0c             	sub    $0xc,%esp
 549:	50                   	push   %eax
 54a:	e8 54 ff ff ff       	call   0x4a3
 54f:	a1 00 09 00 00       	mov    0x900,%eax
 554:	83 c4 10             	add    $0x10,%esp
 557:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 55a:	c9                   	leave  
 55b:	c3                   	ret    
 55c:	b8 00 00 00 00       	mov    $0x0,%eax
 561:	eb f4                	jmp    0x557
 563:	55                   	push   %ebp
 564:	89 e5                	mov    %esp,%ebp
 566:	53                   	push   %ebx
 567:	83 ec 04             	sub    $0x4,%esp
 56a:	8b 45 08             	mov    0x8(%ebp),%eax
 56d:	8d 58 07             	lea    0x7(%eax),%ebx
 570:	c1 eb 03             	shr    $0x3,%ebx
 573:	83 c3 01             	add    $0x1,%ebx
 576:	8b 0d 00 09 00 00    	mov    0x900,%ecx
 57c:	85 c9                	test   %ecx,%ecx
 57e:	74 04                	je     0x584
 580:	8b 01                	mov    (%ecx),%eax
 582:	eb 4a                	jmp    0x5ce
 584:	c7 05 00 09 00 00 04 	movl   $0x904,0x900
 58b:	09 00 00 
 58e:	c7 05 04 09 00 00 04 	movl   $0x904,0x904
 595:	09 00 00 
 598:	c7 05 08 09 00 00 00 	movl   $0x0,0x908
 59f:	00 00 00 
 5a2:	b9 04 09 00 00       	mov    $0x904,%ecx
 5a7:	eb d7                	jmp    0x580
 5a9:	74 19                	je     0x5c4
 5ab:	29 da                	sub    %ebx,%edx
 5ad:	89 50 04             	mov    %edx,0x4(%eax)
 5b0:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 5b3:	89 58 04             	mov    %ebx,0x4(%eax)
 5b6:	89 0d 00 09 00 00    	mov    %ecx,0x900
 5bc:	83 c0 08             	add    $0x8,%eax
 5bf:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 5c2:	c9                   	leave  
 5c3:	c3                   	ret    
 5c4:	8b 10                	mov    (%eax),%edx
 5c6:	89 11                	mov    %edx,(%ecx)
 5c8:	eb ec                	jmp    0x5b6
 5ca:	89 c1                	mov    %eax,%ecx
 5cc:	8b 00                	mov    (%eax),%eax
 5ce:	8b 50 04             	mov    0x4(%eax),%edx
 5d1:	39 da                	cmp    %ebx,%edx
 5d3:	73 d4                	jae    0x5a9
 5d5:	39 05 00 09 00 00    	cmp    %eax,0x900
 5db:	75 ed                	jne    0x5ca
 5dd:	89 d8                	mov    %ebx,%eax
 5df:	e8 2f ff ff ff       	call   0x513
 5e4:	85 c0                	test   %eax,%eax
 5e6:	75 e2                	jne    0x5ca
 5e8:	eb d5                	jmp    0x5bf
