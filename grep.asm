
_grep:     file format elf32-i386


Disassembly of section .text:

00000000 <.text>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	57                   	push   %edi
   4:	56                   	push   %esi
   5:	53                   	push   %ebx
   6:	83 ec 0c             	sub    $0xc,%esp
   9:	8b 75 08             	mov    0x8(%ebp),%esi
   c:	8b 7d 0c             	mov    0xc(%ebp),%edi
   f:	8b 5d 10             	mov    0x10(%ebp),%ebx
  12:	83 ec 08             	sub    $0x8,%esp
  15:	53                   	push   %ebx
  16:	57                   	push   %edi
  17:	e8 2c 00 00 00       	call   0x48
  1c:	83 c4 10             	add    $0x10,%esp
  1f:	85 c0                	test   %eax,%eax
  21:	75 18                	jne    0x3b
  23:	0f b6 13             	movzbl (%ebx),%edx
  26:	84 d2                	test   %dl,%dl
  28:	74 16                	je     0x40
  2a:	83 c3 01             	add    $0x1,%ebx
  2d:	0f be d2             	movsbl %dl,%edx
  30:	39 f2                	cmp    %esi,%edx
  32:	74 de                	je     0x12
  34:	83 fe 2e             	cmp    $0x2e,%esi
  37:	74 d9                	je     0x12
  39:	eb 05                	jmp    0x40
  3b:	b8 01 00 00 00       	mov    $0x1,%eax
  40:	8d 65 f4             	lea    -0xc(%ebp),%esp
  43:	5b                   	pop    %ebx
  44:	5e                   	pop    %esi
  45:	5f                   	pop    %edi
  46:	5d                   	pop    %ebp
  47:	c3                   	ret    
  48:	55                   	push   %ebp
  49:	89 e5                	mov    %esp,%ebp
  4b:	83 ec 08             	sub    $0x8,%esp
  4e:	8b 55 08             	mov    0x8(%ebp),%edx
  51:	0f b6 02             	movzbl (%edx),%eax
  54:	84 c0                	test   %al,%al
  56:	74 68                	je     0xc0
  58:	0f b6 4a 01          	movzbl 0x1(%edx),%ecx
  5c:	80 f9 2a             	cmp    $0x2a,%cl
  5f:	74 1d                	je     0x7e
  61:	3c 24                	cmp    $0x24,%al
  63:	74 31                	je     0x96
  65:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  68:	0f b6 09             	movzbl (%ecx),%ecx
  6b:	84 c9                	test   %cl,%cl
  6d:	74 58                	je     0xc7
  6f:	3c 2e                	cmp    $0x2e,%al
  71:	74 35                	je     0xa8
  73:	38 c8                	cmp    %cl,%al
  75:	74 31                	je     0xa8
  77:	b8 00 00 00 00       	mov    $0x0,%eax
  7c:	eb 47                	jmp    0xc5
  7e:	83 ec 04             	sub    $0x4,%esp
  81:	ff 75 0c             	push   0xc(%ebp)
  84:	83 c2 02             	add    $0x2,%edx
  87:	52                   	push   %edx
  88:	0f be c0             	movsbl %al,%eax
  8b:	50                   	push   %eax
  8c:	e8 6f ff ff ff       	call   0x0
  91:	83 c4 10             	add    $0x10,%esp
  94:	eb 2f                	jmp    0xc5
  96:	84 c9                	test   %cl,%cl
  98:	75 cb                	jne    0x65
  9a:	8b 45 0c             	mov    0xc(%ebp),%eax
  9d:	80 38 00             	cmpb   $0x0,(%eax)
  a0:	0f 94 c0             	sete   %al
  a3:	0f b6 c0             	movzbl %al,%eax
  a6:	eb 1d                	jmp    0xc5
  a8:	83 ec 08             	sub    $0x8,%esp
  ab:	8b 45 0c             	mov    0xc(%ebp),%eax
  ae:	83 c0 01             	add    $0x1,%eax
  b1:	50                   	push   %eax
  b2:	83 c2 01             	add    $0x1,%edx
  b5:	52                   	push   %edx
  b6:	e8 8d ff ff ff       	call   0x48
  bb:	83 c4 10             	add    $0x10,%esp
  be:	eb 05                	jmp    0xc5
  c0:	b8 01 00 00 00       	mov    $0x1,%eax
  c5:	c9                   	leave  
  c6:	c3                   	ret    
  c7:	b8 00 00 00 00       	mov    $0x0,%eax
  cc:	eb f7                	jmp    0xc5
  ce:	55                   	push   %ebp
  cf:	89 e5                	mov    %esp,%ebp
  d1:	56                   	push   %esi
  d2:	53                   	push   %ebx
  d3:	8b 75 08             	mov    0x8(%ebp),%esi
  d6:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  d9:	80 3e 5e             	cmpb   $0x5e,(%esi)
  dc:	75 14                	jne    0xf2
  de:	83 ec 08             	sub    $0x8,%esp
  e1:	53                   	push   %ebx
  e2:	83 c6 01             	add    $0x1,%esi
  e5:	56                   	push   %esi
  e6:	e8 5d ff ff ff       	call   0x48
  eb:	83 c4 10             	add    $0x10,%esp
  ee:	eb 22                	jmp    0x112
  f0:	89 d3                	mov    %edx,%ebx
  f2:	83 ec 08             	sub    $0x8,%esp
  f5:	53                   	push   %ebx
  f6:	56                   	push   %esi
  f7:	e8 4c ff ff ff       	call   0x48
  fc:	83 c4 10             	add    $0x10,%esp
  ff:	85 c0                	test   %eax,%eax
 101:	75 0a                	jne    0x10d
 103:	8d 53 01             	lea    0x1(%ebx),%edx
 106:	80 3b 00             	cmpb   $0x0,(%ebx)
 109:	75 e5                	jne    0xf0
 10b:	eb 05                	jmp    0x112
 10d:	b8 01 00 00 00       	mov    $0x1,%eax
 112:	8d 65 f8             	lea    -0x8(%ebp),%esp
 115:	5b                   	pop    %ebx
 116:	5e                   	pop    %esi
 117:	5d                   	pop    %ebp
 118:	c3                   	ret    
 119:	55                   	push   %ebp
 11a:	89 e5                	mov    %esp,%ebp
 11c:	57                   	push   %edi
 11d:	56                   	push   %esi
 11e:	53                   	push   %ebx
 11f:	83 ec 1c             	sub    $0x1c,%esp
 122:	8b 7d 08             	mov    0x8(%ebp),%edi
 125:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
 12c:	eb 53                	jmp    0x181
 12e:	8d 73 01             	lea    0x1(%ebx),%esi
 131:	83 ec 08             	sub    $0x8,%esp
 134:	6a 0a                	push   $0xa
 136:	56                   	push   %esi
 137:	e8 0d 02 00 00       	call   0x349
 13c:	89 c3                	mov    %eax,%ebx
 13e:	83 c4 10             	add    $0x10,%esp
 141:	85 c0                	test   %eax,%eax
 143:	74 2d                	je     0x172
 145:	c6 03 00             	movb   $0x0,(%ebx)
 148:	83 ec 08             	sub    $0x8,%esp
 14b:	56                   	push   %esi
 14c:	57                   	push   %edi
 14d:	e8 7c ff ff ff       	call   0xce
 152:	83 c4 10             	add    $0x10,%esp
 155:	85 c0                	test   %eax,%eax
 157:	74 d5                	je     0x12e
 159:	c6 03 0a             	movb   $0xa,(%ebx)
 15c:	8d 43 01             	lea    0x1(%ebx),%eax
 15f:	83 ec 04             	sub    $0x4,%esp
 162:	29 f0                	sub    %esi,%eax
 164:	50                   	push   %eax
 165:	56                   	push   %esi
 166:	6a 01                	push   $0x1
 168:	e8 2e 03 00 00       	call   0x49b
 16d:	83 c4 10             	add    $0x10,%esp
 170:	eb bc                	jmp    0x12e
 172:	81 fe 80 0c 00 00    	cmp    $0xc80,%esi
 178:	74 62                	je     0x1dc
 17a:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
 17d:	85 c9                	test   %ecx,%ecx
 17f:	7f 3b                	jg     0x1bc
 181:	b8 ff 03 00 00       	mov    $0x3ff,%eax
 186:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
 189:	29 c8                	sub    %ecx,%eax
 18b:	83 ec 04             	sub    $0x4,%esp
 18e:	50                   	push   %eax
 18f:	8d 81 80 0c 00 00    	lea    0xc80(%ecx),%eax
 195:	50                   	push   %eax
 196:	ff 75 0c             	push   0xc(%ebp)
 199:	e8 f5 02 00 00       	call   0x493
 19e:	83 c4 10             	add    $0x10,%esp
 1a1:	85 c0                	test   %eax,%eax
 1a3:	7e 40                	jle    0x1e5
 1a5:	01 45 e4             	add    %eax,-0x1c(%ebp)
 1a8:	8b 55 e4             	mov    -0x1c(%ebp),%edx
 1ab:	c6 82 80 0c 00 00 00 	movb   $0x0,0xc80(%edx)
 1b2:	be 80 0c 00 00       	mov    $0xc80,%esi
 1b7:	e9 75 ff ff ff       	jmp    0x131
 1bc:	89 f0                	mov    %esi,%eax
 1be:	2d 80 0c 00 00       	sub    $0xc80,%eax
 1c3:	29 c1                	sub    %eax,%ecx
 1c5:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
 1c8:	83 ec 04             	sub    $0x4,%esp
 1cb:	51                   	push   %ecx
 1cc:	56                   	push   %esi
 1cd:	68 80 0c 00 00       	push   $0xc80
 1d2:	e8 6c 02 00 00       	call   0x443
 1d7:	83 c4 10             	add    $0x10,%esp
 1da:	eb a5                	jmp    0x181
 1dc:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
 1e3:	eb 9c                	jmp    0x181
 1e5:	8d 65 f4             	lea    -0xc(%ebp),%esp
 1e8:	5b                   	pop    %ebx
 1e9:	5e                   	pop    %esi
 1ea:	5f                   	pop    %edi
 1eb:	5d                   	pop    %ebp
 1ec:	c3                   	ret    
 1ed:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 1f1:	83 e4 f0             	and    $0xfffffff0,%esp
 1f4:	ff 71 fc             	push   -0x4(%ecx)
 1f7:	55                   	push   %ebp
 1f8:	89 e5                	mov    %esp,%ebp
 1fa:	57                   	push   %edi
 1fb:	56                   	push   %esi
 1fc:	53                   	push   %ebx
 1fd:	51                   	push   %ecx
 1fe:	83 ec 18             	sub    $0x18,%esp
 201:	8b 01                	mov    (%ecx),%eax
 203:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 206:	8b 51 04             	mov    0x4(%ecx),%edx
 209:	89 55 e0             	mov    %edx,-0x20(%ebp)
 20c:	83 f8 01             	cmp    $0x1,%eax
 20f:	7e 54                	jle    0x265
 211:	8b 45 e0             	mov    -0x20(%ebp),%eax
 214:	8b 40 04             	mov    0x4(%eax),%eax
 217:	89 45 dc             	mov    %eax,-0x24(%ebp)
 21a:	83 7d e4 02          	cmpl   $0x2,-0x1c(%ebp)
 21e:	7e 60                	jle    0x280
 220:	be 02 00 00 00       	mov    $0x2,%esi
 225:	3b 75 e4             	cmp    -0x1c(%ebp),%esi
 228:	0f 8d 86 00 00 00    	jge    0x2b4
 22e:	8b 45 e0             	mov    -0x20(%ebp),%eax
 231:	8d 3c b0             	lea    (%eax,%esi,4),%edi
 234:	83 ec 08             	sub    $0x8,%esp
 237:	6a 00                	push   $0x0
 239:	ff 37                	push   (%edi)
 23b:	e8 7b 02 00 00       	call   0x4bb
 240:	89 c3                	mov    %eax,%ebx
 242:	83 c4 10             	add    $0x10,%esp
 245:	85 c0                	test   %eax,%eax
 247:	78 4e                	js     0x297
 249:	83 ec 08             	sub    $0x8,%esp
 24c:	50                   	push   %eax
 24d:	ff 75 dc             	push   -0x24(%ebp)
 250:	e8 c4 fe ff ff       	call   0x119
 255:	89 1c 24             	mov    %ebx,(%esp)
 258:	e8 46 02 00 00       	call   0x4a3
 25d:	83 c6 01             	add    $0x1,%esi
 260:	83 c4 10             	add    $0x10,%esp
 263:	eb c0                	jmp    0x225
 265:	83 ec 08             	sub    $0x8,%esp
 268:	68 88 08 00 00       	push   $0x888
 26d:	6a 02                	push   $0x2
 26f:	e8 5c 03 00 00       	call   0x5d0
 274:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 27b:	e8 fb 01 00 00       	call   0x47b
 280:	83 ec 08             	sub    $0x8,%esp
 283:	6a 00                	push   $0x0
 285:	50                   	push   %eax
 286:	e8 8e fe ff ff       	call   0x119
 28b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 292:	e8 e4 01 00 00       	call   0x47b
 297:	83 ec 04             	sub    $0x4,%esp
 29a:	ff 37                	push   (%edi)
 29c:	68 a8 08 00 00       	push   $0x8a8
 2a1:	6a 01                	push   $0x1
 2a3:	e8 28 03 00 00       	call   0x5d0
 2a8:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 2af:	e8 c7 01 00 00       	call   0x47b
 2b4:	83 ec 0c             	sub    $0xc,%esp
 2b7:	6a 00                	push   $0x0
 2b9:	e8 bd 01 00 00       	call   0x47b
 2be:	f3 0f 1e fb          	endbr32 
 2c2:	55                   	push   %ebp
 2c3:	89 e5                	mov    %esp,%ebp
 2c5:	56                   	push   %esi
 2c6:	53                   	push   %ebx
 2c7:	8b 75 08             	mov    0x8(%ebp),%esi
 2ca:	8b 55 0c             	mov    0xc(%ebp),%edx
 2cd:	89 f0                	mov    %esi,%eax
 2cf:	89 d1                	mov    %edx,%ecx
 2d1:	83 c2 01             	add    $0x1,%edx
 2d4:	89 c3                	mov    %eax,%ebx
 2d6:	83 c0 01             	add    $0x1,%eax
 2d9:	0f b6 09             	movzbl (%ecx),%ecx
 2dc:	88 0b                	mov    %cl,(%ebx)
 2de:	84 c9                	test   %cl,%cl
 2e0:	75 ed                	jne    0x2cf
 2e2:	89 f0                	mov    %esi,%eax
 2e4:	5b                   	pop    %ebx
 2e5:	5e                   	pop    %esi
 2e6:	5d                   	pop    %ebp
 2e7:	c3                   	ret    
 2e8:	f3 0f 1e fb          	endbr32 
 2ec:	55                   	push   %ebp
 2ed:	89 e5                	mov    %esp,%ebp
 2ef:	8b 4d 08             	mov    0x8(%ebp),%ecx
 2f2:	8b 55 0c             	mov    0xc(%ebp),%edx
 2f5:	0f b6 01             	movzbl (%ecx),%eax
 2f8:	84 c0                	test   %al,%al
 2fa:	74 0c                	je     0x308
 2fc:	3a 02                	cmp    (%edx),%al
 2fe:	75 08                	jne    0x308
 300:	83 c1 01             	add    $0x1,%ecx
 303:	83 c2 01             	add    $0x1,%edx
 306:	eb ed                	jmp    0x2f5
 308:	0f b6 c0             	movzbl %al,%eax
 30b:	0f b6 12             	movzbl (%edx),%edx
 30e:	29 d0                	sub    %edx,%eax
 310:	5d                   	pop    %ebp
 311:	c3                   	ret    
 312:	f3 0f 1e fb          	endbr32 
 316:	55                   	push   %ebp
 317:	89 e5                	mov    %esp,%ebp
 319:	8b 4d 08             	mov    0x8(%ebp),%ecx
 31c:	b8 00 00 00 00       	mov    $0x0,%eax
 321:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
 325:	74 05                	je     0x32c
 327:	83 c0 01             	add    $0x1,%eax
 32a:	eb f5                	jmp    0x321
 32c:	5d                   	pop    %ebp
 32d:	c3                   	ret    
 32e:	f3 0f 1e fb          	endbr32 
 332:	55                   	push   %ebp
 333:	89 e5                	mov    %esp,%ebp
 335:	57                   	push   %edi
 336:	8b 55 08             	mov    0x8(%ebp),%edx
 339:	89 d7                	mov    %edx,%edi
 33b:	8b 4d 10             	mov    0x10(%ebp),%ecx
 33e:	8b 45 0c             	mov    0xc(%ebp),%eax
 341:	fc                   	cld    
 342:	f3 aa                	rep stos %al,%es:(%edi)
 344:	89 d0                	mov    %edx,%eax
 346:	5f                   	pop    %edi
 347:	5d                   	pop    %ebp
 348:	c3                   	ret    
 349:	f3 0f 1e fb          	endbr32 
 34d:	55                   	push   %ebp
 34e:	89 e5                	mov    %esp,%ebp
 350:	8b 45 08             	mov    0x8(%ebp),%eax
 353:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
 357:	0f b6 10             	movzbl (%eax),%edx
 35a:	84 d2                	test   %dl,%dl
 35c:	74 09                	je     0x367
 35e:	38 ca                	cmp    %cl,%dl
 360:	74 0a                	je     0x36c
 362:	83 c0 01             	add    $0x1,%eax
 365:	eb f0                	jmp    0x357
 367:	b8 00 00 00 00       	mov    $0x0,%eax
 36c:	5d                   	pop    %ebp
 36d:	c3                   	ret    
 36e:	f3 0f 1e fb          	endbr32 
 372:	55                   	push   %ebp
 373:	89 e5                	mov    %esp,%ebp
 375:	57                   	push   %edi
 376:	56                   	push   %esi
 377:	53                   	push   %ebx
 378:	83 ec 1c             	sub    $0x1c,%esp
 37b:	8b 7d 08             	mov    0x8(%ebp),%edi
 37e:	bb 00 00 00 00       	mov    $0x0,%ebx
 383:	89 de                	mov    %ebx,%esi
 385:	83 c3 01             	add    $0x1,%ebx
 388:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 38b:	7d 2e                	jge    0x3bb
 38d:	83 ec 04             	sub    $0x4,%esp
 390:	6a 01                	push   $0x1
 392:	8d 45 e7             	lea    -0x19(%ebp),%eax
 395:	50                   	push   %eax
 396:	6a 00                	push   $0x0
 398:	e8 f6 00 00 00       	call   0x493
 39d:	83 c4 10             	add    $0x10,%esp
 3a0:	85 c0                	test   %eax,%eax
 3a2:	7e 17                	jle    0x3bb
 3a4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 3a8:	88 04 37             	mov    %al,(%edi,%esi,1)
 3ab:	3c 0a                	cmp    $0xa,%al
 3ad:	0f 94 c2             	sete   %dl
 3b0:	3c 0d                	cmp    $0xd,%al
 3b2:	0f 94 c0             	sete   %al
 3b5:	08 c2                	or     %al,%dl
 3b7:	74 ca                	je     0x383
 3b9:	89 de                	mov    %ebx,%esi
 3bb:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 3bf:	89 f8                	mov    %edi,%eax
 3c1:	8d 65 f4             	lea    -0xc(%ebp),%esp
 3c4:	5b                   	pop    %ebx
 3c5:	5e                   	pop    %esi
 3c6:	5f                   	pop    %edi
 3c7:	5d                   	pop    %ebp
 3c8:	c3                   	ret    
 3c9:	f3 0f 1e fb          	endbr32 
 3cd:	55                   	push   %ebp
 3ce:	89 e5                	mov    %esp,%ebp
 3d0:	56                   	push   %esi
 3d1:	53                   	push   %ebx
 3d2:	83 ec 08             	sub    $0x8,%esp
 3d5:	6a 00                	push   $0x0
 3d7:	ff 75 08             	push   0x8(%ebp)
 3da:	e8 dc 00 00 00       	call   0x4bb
 3df:	83 c4 10             	add    $0x10,%esp
 3e2:	85 c0                	test   %eax,%eax
 3e4:	78 24                	js     0x40a
 3e6:	89 c3                	mov    %eax,%ebx
 3e8:	83 ec 08             	sub    $0x8,%esp
 3eb:	ff 75 0c             	push   0xc(%ebp)
 3ee:	50                   	push   %eax
 3ef:	e8 df 00 00 00       	call   0x4d3
 3f4:	89 c6                	mov    %eax,%esi
 3f6:	89 1c 24             	mov    %ebx,(%esp)
 3f9:	e8 a5 00 00 00       	call   0x4a3
 3fe:	83 c4 10             	add    $0x10,%esp
 401:	89 f0                	mov    %esi,%eax
 403:	8d 65 f8             	lea    -0x8(%ebp),%esp
 406:	5b                   	pop    %ebx
 407:	5e                   	pop    %esi
 408:	5d                   	pop    %ebp
 409:	c3                   	ret    
 40a:	be ff ff ff ff       	mov    $0xffffffff,%esi
 40f:	eb f0                	jmp    0x401
 411:	f3 0f 1e fb          	endbr32 
 415:	55                   	push   %ebp
 416:	89 e5                	mov    %esp,%ebp
 418:	53                   	push   %ebx
 419:	8b 4d 08             	mov    0x8(%ebp),%ecx
 41c:	ba 00 00 00 00       	mov    $0x0,%edx
 421:	0f b6 01             	movzbl (%ecx),%eax
 424:	8d 58 d0             	lea    -0x30(%eax),%ebx
 427:	80 fb 09             	cmp    $0x9,%bl
 42a:	77 12                	ja     0x43e
 42c:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 42f:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 432:	83 c1 01             	add    $0x1,%ecx
 435:	0f be c0             	movsbl %al,%eax
 438:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 43c:	eb e3                	jmp    0x421
 43e:	89 d0                	mov    %edx,%eax
 440:	5b                   	pop    %ebx
 441:	5d                   	pop    %ebp
 442:	c3                   	ret    
 443:	f3 0f 1e fb          	endbr32 
 447:	55                   	push   %ebp
 448:	89 e5                	mov    %esp,%ebp
 44a:	56                   	push   %esi
 44b:	53                   	push   %ebx
 44c:	8b 75 08             	mov    0x8(%ebp),%esi
 44f:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 452:	8b 45 10             	mov    0x10(%ebp),%eax
 455:	89 f2                	mov    %esi,%edx
 457:	8d 58 ff             	lea    -0x1(%eax),%ebx
 45a:	85 c0                	test   %eax,%eax
 45c:	7e 0f                	jle    0x46d
 45e:	0f b6 01             	movzbl (%ecx),%eax
 461:	88 02                	mov    %al,(%edx)
 463:	8d 49 01             	lea    0x1(%ecx),%ecx
 466:	8d 52 01             	lea    0x1(%edx),%edx
 469:	89 d8                	mov    %ebx,%eax
 46b:	eb ea                	jmp    0x457
 46d:	89 f0                	mov    %esi,%eax
 46f:	5b                   	pop    %ebx
 470:	5e                   	pop    %esi
 471:	5d                   	pop    %ebp
 472:	c3                   	ret    
 473:	b8 01 00 00 00       	mov    $0x1,%eax
 478:	cd 40                	int    $0x40
 47a:	c3                   	ret    
 47b:	b8 02 00 00 00       	mov    $0x2,%eax
 480:	cd 40                	int    $0x40
 482:	c3                   	ret    
 483:	b8 03 00 00 00       	mov    $0x3,%eax
 488:	cd 40                	int    $0x40
 48a:	c3                   	ret    
 48b:	b8 04 00 00 00       	mov    $0x4,%eax
 490:	cd 40                	int    $0x40
 492:	c3                   	ret    
 493:	b8 05 00 00 00       	mov    $0x5,%eax
 498:	cd 40                	int    $0x40
 49a:	c3                   	ret    
 49b:	b8 10 00 00 00       	mov    $0x10,%eax
 4a0:	cd 40                	int    $0x40
 4a2:	c3                   	ret    
 4a3:	b8 15 00 00 00       	mov    $0x15,%eax
 4a8:	cd 40                	int    $0x40
 4aa:	c3                   	ret    
 4ab:	b8 06 00 00 00       	mov    $0x6,%eax
 4b0:	cd 40                	int    $0x40
 4b2:	c3                   	ret    
 4b3:	b8 07 00 00 00       	mov    $0x7,%eax
 4b8:	cd 40                	int    $0x40
 4ba:	c3                   	ret    
 4bb:	b8 0f 00 00 00       	mov    $0xf,%eax
 4c0:	cd 40                	int    $0x40
 4c2:	c3                   	ret    
 4c3:	b8 11 00 00 00       	mov    $0x11,%eax
 4c8:	cd 40                	int    $0x40
 4ca:	c3                   	ret    
 4cb:	b8 12 00 00 00       	mov    $0x12,%eax
 4d0:	cd 40                	int    $0x40
 4d2:	c3                   	ret    
 4d3:	b8 08 00 00 00       	mov    $0x8,%eax
 4d8:	cd 40                	int    $0x40
 4da:	c3                   	ret    
 4db:	b8 13 00 00 00       	mov    $0x13,%eax
 4e0:	cd 40                	int    $0x40
 4e2:	c3                   	ret    
 4e3:	b8 14 00 00 00       	mov    $0x14,%eax
 4e8:	cd 40                	int    $0x40
 4ea:	c3                   	ret    
 4eb:	b8 09 00 00 00       	mov    $0x9,%eax
 4f0:	cd 40                	int    $0x40
 4f2:	c3                   	ret    
 4f3:	b8 0a 00 00 00       	mov    $0xa,%eax
 4f8:	cd 40                	int    $0x40
 4fa:	c3                   	ret    
 4fb:	b8 0b 00 00 00       	mov    $0xb,%eax
 500:	cd 40                	int    $0x40
 502:	c3                   	ret    
 503:	b8 0c 00 00 00       	mov    $0xc,%eax
 508:	cd 40                	int    $0x40
 50a:	c3                   	ret    
 50b:	b8 0d 00 00 00       	mov    $0xd,%eax
 510:	cd 40                	int    $0x40
 512:	c3                   	ret    
 513:	b8 0e 00 00 00       	mov    $0xe,%eax
 518:	cd 40                	int    $0x40
 51a:	c3                   	ret    
 51b:	b8 16 00 00 00       	mov    $0x16,%eax
 520:	cd 40                	int    $0x40
 522:	c3                   	ret    
 523:	b8 17 00 00 00       	mov    $0x17,%eax
 528:	cd 40                	int    $0x40
 52a:	c3                   	ret    
 52b:	55                   	push   %ebp
 52c:	89 e5                	mov    %esp,%ebp
 52e:	83 ec 1c             	sub    $0x1c,%esp
 531:	88 55 f4             	mov    %dl,-0xc(%ebp)
 534:	6a 01                	push   $0x1
 536:	8d 55 f4             	lea    -0xc(%ebp),%edx
 539:	52                   	push   %edx
 53a:	50                   	push   %eax
 53b:	e8 5b ff ff ff       	call   0x49b
 540:	83 c4 10             	add    $0x10,%esp
 543:	c9                   	leave  
 544:	c3                   	ret    
 545:	55                   	push   %ebp
 546:	89 e5                	mov    %esp,%ebp
 548:	57                   	push   %edi
 549:	56                   	push   %esi
 54a:	53                   	push   %ebx
 54b:	83 ec 2c             	sub    $0x2c,%esp
 54e:	89 45 d0             	mov    %eax,-0x30(%ebp)
 551:	89 d0                	mov    %edx,%eax
 553:	89 ce                	mov    %ecx,%esi
 555:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 559:	0f 95 c1             	setne  %cl
 55c:	c1 ea 1f             	shr    $0x1f,%edx
 55f:	84 d1                	test   %dl,%cl
 561:	74 44                	je     0x5a7
 563:	f7 d8                	neg    %eax
 565:	89 c1                	mov    %eax,%ecx
 567:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 56e:	bb 00 00 00 00       	mov    $0x0,%ebx
 573:	89 c8                	mov    %ecx,%eax
 575:	ba 00 00 00 00       	mov    $0x0,%edx
 57a:	f7 f6                	div    %esi
 57c:	89 df                	mov    %ebx,%edi
 57e:	83 c3 01             	add    $0x1,%ebx
 581:	0f b6 92 20 09 00 00 	movzbl 0x920(%edx),%edx
 588:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 58c:	89 ca                	mov    %ecx,%edx
 58e:	89 c1                	mov    %eax,%ecx
 590:	39 d6                	cmp    %edx,%esi
 592:	76 df                	jbe    0x573
 594:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 598:	74 31                	je     0x5cb
 59a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 59f:	8d 5f 02             	lea    0x2(%edi),%ebx
 5a2:	8b 75 d0             	mov    -0x30(%ebp),%esi
 5a5:	eb 17                	jmp    0x5be
 5a7:	89 c1                	mov    %eax,%ecx
 5a9:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 5b0:	eb bc                	jmp    0x56e
 5b2:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 5b7:	89 f0                	mov    %esi,%eax
 5b9:	e8 6d ff ff ff       	call   0x52b
 5be:	83 eb 01             	sub    $0x1,%ebx
 5c1:	79 ef                	jns    0x5b2
 5c3:	83 c4 2c             	add    $0x2c,%esp
 5c6:	5b                   	pop    %ebx
 5c7:	5e                   	pop    %esi
 5c8:	5f                   	pop    %edi
 5c9:	5d                   	pop    %ebp
 5ca:	c3                   	ret    
 5cb:	8b 75 d0             	mov    -0x30(%ebp),%esi
 5ce:	eb ee                	jmp    0x5be
 5d0:	55                   	push   %ebp
 5d1:	89 e5                	mov    %esp,%ebp
 5d3:	57                   	push   %edi
 5d4:	56                   	push   %esi
 5d5:	53                   	push   %ebx
 5d6:	83 ec 1c             	sub    $0x1c,%esp
 5d9:	8d 45 10             	lea    0x10(%ebp),%eax
 5dc:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 5df:	be 00 00 00 00       	mov    $0x0,%esi
 5e4:	bb 00 00 00 00       	mov    $0x0,%ebx
 5e9:	eb 14                	jmp    0x5ff
 5eb:	89 fa                	mov    %edi,%edx
 5ed:	8b 45 08             	mov    0x8(%ebp),%eax
 5f0:	e8 36 ff ff ff       	call   0x52b
 5f5:	eb 05                	jmp    0x5fc
 5f7:	83 fe 25             	cmp    $0x25,%esi
 5fa:	74 25                	je     0x621
 5fc:	83 c3 01             	add    $0x1,%ebx
 5ff:	8b 45 0c             	mov    0xc(%ebp),%eax
 602:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 606:	84 c0                	test   %al,%al
 608:	0f 84 20 01 00 00    	je     0x72e
 60e:	0f be f8             	movsbl %al,%edi
 611:	0f b6 c0             	movzbl %al,%eax
 614:	85 f6                	test   %esi,%esi
 616:	75 df                	jne    0x5f7
 618:	83 f8 25             	cmp    $0x25,%eax
 61b:	75 ce                	jne    0x5eb
 61d:	89 c6                	mov    %eax,%esi
 61f:	eb db                	jmp    0x5fc
 621:	83 f8 25             	cmp    $0x25,%eax
 624:	0f 84 cf 00 00 00    	je     0x6f9
 62a:	0f 8c dd 00 00 00    	jl     0x70d
 630:	83 f8 78             	cmp    $0x78,%eax
 633:	0f 8f d4 00 00 00    	jg     0x70d
 639:	83 f8 63             	cmp    $0x63,%eax
 63c:	0f 8c cb 00 00 00    	jl     0x70d
 642:	83 e8 63             	sub    $0x63,%eax
 645:	83 f8 15             	cmp    $0x15,%eax
 648:	0f 87 bf 00 00 00    	ja     0x70d
 64e:	ff 24 85 c8 08 00 00 	jmp    *0x8c8(,%eax,4)
 655:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 658:	8b 17                	mov    (%edi),%edx
 65a:	83 ec 0c             	sub    $0xc,%esp
 65d:	6a 01                	push   $0x1
 65f:	b9 0a 00 00 00       	mov    $0xa,%ecx
 664:	8b 45 08             	mov    0x8(%ebp),%eax
 667:	e8 d9 fe ff ff       	call   0x545
 66c:	83 c7 04             	add    $0x4,%edi
 66f:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 672:	83 c4 10             	add    $0x10,%esp
 675:	be 00 00 00 00       	mov    $0x0,%esi
 67a:	eb 80                	jmp    0x5fc
 67c:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 67f:	8b 17                	mov    (%edi),%edx
 681:	83 ec 0c             	sub    $0xc,%esp
 684:	6a 00                	push   $0x0
 686:	b9 10 00 00 00       	mov    $0x10,%ecx
 68b:	8b 45 08             	mov    0x8(%ebp),%eax
 68e:	e8 b2 fe ff ff       	call   0x545
 693:	83 c7 04             	add    $0x4,%edi
 696:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 699:	83 c4 10             	add    $0x10,%esp
 69c:	be 00 00 00 00       	mov    $0x0,%esi
 6a1:	e9 56 ff ff ff       	jmp    0x5fc
 6a6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 6a9:	8b 30                	mov    (%eax),%esi
 6ab:	83 c0 04             	add    $0x4,%eax
 6ae:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 6b1:	85 f6                	test   %esi,%esi
 6b3:	75 15                	jne    0x6ca
 6b5:	be be 08 00 00       	mov    $0x8be,%esi
 6ba:	eb 0e                	jmp    0x6ca
 6bc:	0f be d2             	movsbl %dl,%edx
 6bf:	8b 45 08             	mov    0x8(%ebp),%eax
 6c2:	e8 64 fe ff ff       	call   0x52b
 6c7:	83 c6 01             	add    $0x1,%esi
 6ca:	0f b6 16             	movzbl (%esi),%edx
 6cd:	84 d2                	test   %dl,%dl
 6cf:	75 eb                	jne    0x6bc
 6d1:	be 00 00 00 00       	mov    $0x0,%esi
 6d6:	e9 21 ff ff ff       	jmp    0x5fc
 6db:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 6de:	0f be 17             	movsbl (%edi),%edx
 6e1:	8b 45 08             	mov    0x8(%ebp),%eax
 6e4:	e8 42 fe ff ff       	call   0x52b
 6e9:	83 c7 04             	add    $0x4,%edi
 6ec:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 6ef:	be 00 00 00 00       	mov    $0x0,%esi
 6f4:	e9 03 ff ff ff       	jmp    0x5fc
 6f9:	89 fa                	mov    %edi,%edx
 6fb:	8b 45 08             	mov    0x8(%ebp),%eax
 6fe:	e8 28 fe ff ff       	call   0x52b
 703:	be 00 00 00 00       	mov    $0x0,%esi
 708:	e9 ef fe ff ff       	jmp    0x5fc
 70d:	ba 25 00 00 00       	mov    $0x25,%edx
 712:	8b 45 08             	mov    0x8(%ebp),%eax
 715:	e8 11 fe ff ff       	call   0x52b
 71a:	89 fa                	mov    %edi,%edx
 71c:	8b 45 08             	mov    0x8(%ebp),%eax
 71f:	e8 07 fe ff ff       	call   0x52b
 724:	be 00 00 00 00       	mov    $0x0,%esi
 729:	e9 ce fe ff ff       	jmp    0x5fc
 72e:	8d 65 f4             	lea    -0xc(%ebp),%esp
 731:	5b                   	pop    %ebx
 732:	5e                   	pop    %esi
 733:	5f                   	pop    %edi
 734:	5d                   	pop    %ebp
 735:	c3                   	ret    
 736:	f3 0f 1e fb          	endbr32 
 73a:	55                   	push   %ebp
 73b:	89 e5                	mov    %esp,%ebp
 73d:	57                   	push   %edi
 73e:	56                   	push   %esi
 73f:	53                   	push   %ebx
 740:	8b 5d 08             	mov    0x8(%ebp),%ebx
 743:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 746:	a1 80 10 00 00       	mov    0x1080,%eax
 74b:	eb 02                	jmp    0x74f
 74d:	89 d0                	mov    %edx,%eax
 74f:	39 c8                	cmp    %ecx,%eax
 751:	73 04                	jae    0x757
 753:	39 08                	cmp    %ecx,(%eax)
 755:	77 12                	ja     0x769
 757:	8b 10                	mov    (%eax),%edx
 759:	39 c2                	cmp    %eax,%edx
 75b:	77 f0                	ja     0x74d
 75d:	39 c8                	cmp    %ecx,%eax
 75f:	72 08                	jb     0x769
 761:	39 ca                	cmp    %ecx,%edx
 763:	77 04                	ja     0x769
 765:	89 d0                	mov    %edx,%eax
 767:	eb e6                	jmp    0x74f
 769:	8b 73 fc             	mov    -0x4(%ebx),%esi
 76c:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 76f:	8b 10                	mov    (%eax),%edx
 771:	39 d7                	cmp    %edx,%edi
 773:	74 19                	je     0x78e
 775:	89 53 f8             	mov    %edx,-0x8(%ebx)
 778:	8b 50 04             	mov    0x4(%eax),%edx
 77b:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 77e:	39 ce                	cmp    %ecx,%esi
 780:	74 1b                	je     0x79d
 782:	89 08                	mov    %ecx,(%eax)
 784:	a3 80 10 00 00       	mov    %eax,0x1080
 789:	5b                   	pop    %ebx
 78a:	5e                   	pop    %esi
 78b:	5f                   	pop    %edi
 78c:	5d                   	pop    %ebp
 78d:	c3                   	ret    
 78e:	03 72 04             	add    0x4(%edx),%esi
 791:	89 73 fc             	mov    %esi,-0x4(%ebx)
 794:	8b 10                	mov    (%eax),%edx
 796:	8b 12                	mov    (%edx),%edx
 798:	89 53 f8             	mov    %edx,-0x8(%ebx)
 79b:	eb db                	jmp    0x778
 79d:	03 53 fc             	add    -0x4(%ebx),%edx
 7a0:	89 50 04             	mov    %edx,0x4(%eax)
 7a3:	8b 53 f8             	mov    -0x8(%ebx),%edx
 7a6:	89 10                	mov    %edx,(%eax)
 7a8:	eb da                	jmp    0x784
 7aa:	55                   	push   %ebp
 7ab:	89 e5                	mov    %esp,%ebp
 7ad:	53                   	push   %ebx
 7ae:	83 ec 04             	sub    $0x4,%esp
 7b1:	89 c3                	mov    %eax,%ebx
 7b3:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 7b8:	77 05                	ja     0x7bf
 7ba:	bb 00 10 00 00       	mov    $0x1000,%ebx
 7bf:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 7c6:	83 ec 0c             	sub    $0xc,%esp
 7c9:	50                   	push   %eax
 7ca:	e8 34 fd ff ff       	call   0x503
 7cf:	83 c4 10             	add    $0x10,%esp
 7d2:	83 f8 ff             	cmp    $0xffffffff,%eax
 7d5:	74 1c                	je     0x7f3
 7d7:	89 58 04             	mov    %ebx,0x4(%eax)
 7da:	83 c0 08             	add    $0x8,%eax
 7dd:	83 ec 0c             	sub    $0xc,%esp
 7e0:	50                   	push   %eax
 7e1:	e8 50 ff ff ff       	call   0x736
 7e6:	a1 80 10 00 00       	mov    0x1080,%eax
 7eb:	83 c4 10             	add    $0x10,%esp
 7ee:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 7f1:	c9                   	leave  
 7f2:	c3                   	ret    
 7f3:	b8 00 00 00 00       	mov    $0x0,%eax
 7f8:	eb f4                	jmp    0x7ee
 7fa:	f3 0f 1e fb          	endbr32 
 7fe:	55                   	push   %ebp
 7ff:	89 e5                	mov    %esp,%ebp
 801:	53                   	push   %ebx
 802:	83 ec 04             	sub    $0x4,%esp
 805:	8b 45 08             	mov    0x8(%ebp),%eax
 808:	8d 58 07             	lea    0x7(%eax),%ebx
 80b:	c1 eb 03             	shr    $0x3,%ebx
 80e:	83 c3 01             	add    $0x1,%ebx
 811:	8b 0d 80 10 00 00    	mov    0x1080,%ecx
 817:	85 c9                	test   %ecx,%ecx
 819:	74 04                	je     0x81f
 81b:	8b 01                	mov    (%ecx),%eax
 81d:	eb 4b                	jmp    0x86a
 81f:	c7 05 80 10 00 00 84 	movl   $0x1084,0x1080
 826:	10 00 00 
 829:	c7 05 84 10 00 00 84 	movl   $0x1084,0x1084
 830:	10 00 00 
 833:	c7 05 88 10 00 00 00 	movl   $0x0,0x1088
 83a:	00 00 00 
 83d:	b9 84 10 00 00       	mov    $0x1084,%ecx
 842:	eb d7                	jmp    0x81b
 844:	74 1a                	je     0x860
 846:	29 da                	sub    %ebx,%edx
 848:	89 50 04             	mov    %edx,0x4(%eax)
 84b:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 84e:	89 58 04             	mov    %ebx,0x4(%eax)
 851:	89 0d 80 10 00 00    	mov    %ecx,0x1080
 857:	83 c0 08             	add    $0x8,%eax
 85a:	83 c4 04             	add    $0x4,%esp
 85d:	5b                   	pop    %ebx
 85e:	5d                   	pop    %ebp
 85f:	c3                   	ret    
 860:	8b 10                	mov    (%eax),%edx
 862:	89 11                	mov    %edx,(%ecx)
 864:	eb eb                	jmp    0x851
 866:	89 c1                	mov    %eax,%ecx
 868:	8b 00                	mov    (%eax),%eax
 86a:	8b 50 04             	mov    0x4(%eax),%edx
 86d:	39 da                	cmp    %ebx,%edx
 86f:	73 d3                	jae    0x844
 871:	39 05 80 10 00 00    	cmp    %eax,0x1080
 877:	75 ed                	jne    0x866
 879:	89 d8                	mov    %ebx,%eax
 87b:	e8 2a ff ff ff       	call   0x7aa
 880:	85 c0                	test   %eax,%eax
 882:	75 e2                	jne    0x866
 884:	eb d4                	jmp    0x85a
