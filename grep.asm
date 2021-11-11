
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
 137:	e8 e1 01 00 00       	call   0x31d
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
 168:	e8 f2 02 00 00       	call   0x45f
 16d:	83 c4 10             	add    $0x10,%esp
 170:	eb bc                	jmp    0x12e
 172:	81 fe 40 0c 00 00    	cmp    $0xc40,%esi
 178:	74 62                	je     0x1dc
 17a:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
 17d:	85 c9                	test   %ecx,%ecx
 17f:	7f 3b                	jg     0x1bc
 181:	b8 ff 03 00 00       	mov    $0x3ff,%eax
 186:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
 189:	29 c8                	sub    %ecx,%eax
 18b:	83 ec 04             	sub    $0x4,%esp
 18e:	50                   	push   %eax
 18f:	8d 81 40 0c 00 00    	lea    0xc40(%ecx),%eax
 195:	50                   	push   %eax
 196:	ff 75 0c             	push   0xc(%ebp)
 199:	e8 b9 02 00 00       	call   0x457
 19e:	83 c4 10             	add    $0x10,%esp
 1a1:	85 c0                	test   %eax,%eax
 1a3:	7e 40                	jle    0x1e5
 1a5:	01 45 e4             	add    %eax,-0x1c(%ebp)
 1a8:	8b 55 e4             	mov    -0x1c(%ebp),%edx
 1ab:	c6 82 40 0c 00 00 00 	movb   $0x0,0xc40(%edx)
 1b2:	be 40 0c 00 00       	mov    $0xc40,%esi
 1b7:	e9 75 ff ff ff       	jmp    0x131
 1bc:	89 f0                	mov    %esi,%eax
 1be:	2d 40 0c 00 00       	sub    $0xc40,%eax
 1c3:	29 c1                	sub    %eax,%ecx
 1c5:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
 1c8:	83 ec 04             	sub    $0x4,%esp
 1cb:	51                   	push   %ecx
 1cc:	56                   	push   %esi
 1cd:	68 40 0c 00 00       	push   $0xc40
 1d2:	e8 34 02 00 00       	call   0x40b
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
 20f:	7e 50                	jle    0x261
 211:	8b 45 e0             	mov    -0x20(%ebp),%eax
 214:	8b 40 04             	mov    0x4(%eax),%eax
 217:	89 45 dc             	mov    %eax,-0x24(%ebp)
 21a:	83 7d e4 02          	cmpl   $0x2,-0x1c(%ebp)
 21e:	7e 55                	jle    0x275
 220:	be 02 00 00 00       	mov    $0x2,%esi
 225:	3b 75 e4             	cmp    -0x1c(%ebp),%esi
 228:	7d 71                	jge    0x29b
 22a:	8b 45 e0             	mov    -0x20(%ebp),%eax
 22d:	8d 3c b0             	lea    (%eax,%esi,4),%edi
 230:	83 ec 08             	sub    $0x8,%esp
 233:	6a 00                	push   $0x0
 235:	ff 37                	push   (%edi)
 237:	e8 43 02 00 00       	call   0x47f
 23c:	89 c3                	mov    %eax,%ebx
 23e:	83 c4 10             	add    $0x10,%esp
 241:	85 c0                	test   %eax,%eax
 243:	78 40                	js     0x285
 245:	83 ec 08             	sub    $0x8,%esp
 248:	50                   	push   %eax
 249:	ff 75 dc             	push   -0x24(%ebp)
 24c:	e8 c8 fe ff ff       	call   0x119
 251:	89 1c 24             	mov    %ebx,(%esp)
 254:	e8 0e 02 00 00       	call   0x467
 259:	83 c6 01             	add    $0x1,%esi
 25c:	83 c4 10             	add    $0x10,%esp
 25f:	eb c4                	jmp    0x225
 261:	83 ec 08             	sub    $0x8,%esp
 264:	68 3c 08 00 00       	push   $0x83c
 269:	6a 02                	push   $0x2
 26b:	e8 1c 03 00 00       	call   0x58c
 270:	e8 ca 01 00 00       	call   0x43f
 275:	83 ec 08             	sub    $0x8,%esp
 278:	6a 00                	push   $0x0
 27a:	50                   	push   %eax
 27b:	e8 99 fe ff ff       	call   0x119
 280:	e8 ba 01 00 00       	call   0x43f
 285:	83 ec 04             	sub    $0x4,%esp
 288:	ff 37                	push   (%edi)
 28a:	68 5c 08 00 00       	push   $0x85c
 28f:	6a 01                	push   $0x1
 291:	e8 f6 02 00 00       	call   0x58c
 296:	e8 a4 01 00 00       	call   0x43f
 29b:	e8 9f 01 00 00       	call   0x43f
 2a0:	55                   	push   %ebp
 2a1:	89 e5                	mov    %esp,%ebp
 2a3:	56                   	push   %esi
 2a4:	53                   	push   %ebx
 2a5:	8b 75 08             	mov    0x8(%ebp),%esi
 2a8:	8b 55 0c             	mov    0xc(%ebp),%edx
 2ab:	89 f0                	mov    %esi,%eax
 2ad:	89 d1                	mov    %edx,%ecx
 2af:	83 c2 01             	add    $0x1,%edx
 2b2:	89 c3                	mov    %eax,%ebx
 2b4:	83 c0 01             	add    $0x1,%eax
 2b7:	0f b6 09             	movzbl (%ecx),%ecx
 2ba:	88 0b                	mov    %cl,(%ebx)
 2bc:	84 c9                	test   %cl,%cl
 2be:	75 ed                	jne    0x2ad
 2c0:	89 f0                	mov    %esi,%eax
 2c2:	5b                   	pop    %ebx
 2c3:	5e                   	pop    %esi
 2c4:	5d                   	pop    %ebp
 2c5:	c3                   	ret    
 2c6:	55                   	push   %ebp
 2c7:	89 e5                	mov    %esp,%ebp
 2c9:	8b 4d 08             	mov    0x8(%ebp),%ecx
 2cc:	8b 55 0c             	mov    0xc(%ebp),%edx
 2cf:	eb 06                	jmp    0x2d7
 2d1:	83 c1 01             	add    $0x1,%ecx
 2d4:	83 c2 01             	add    $0x1,%edx
 2d7:	0f b6 01             	movzbl (%ecx),%eax
 2da:	84 c0                	test   %al,%al
 2dc:	74 04                	je     0x2e2
 2de:	3a 02                	cmp    (%edx),%al
 2e0:	74 ef                	je     0x2d1
 2e2:	0f b6 c0             	movzbl %al,%eax
 2e5:	0f b6 12             	movzbl (%edx),%edx
 2e8:	29 d0                	sub    %edx,%eax
 2ea:	5d                   	pop    %ebp
 2eb:	c3                   	ret    
 2ec:	55                   	push   %ebp
 2ed:	89 e5                	mov    %esp,%ebp
 2ef:	8b 4d 08             	mov    0x8(%ebp),%ecx
 2f2:	b8 00 00 00 00       	mov    $0x0,%eax
 2f7:	eb 03                	jmp    0x2fc
 2f9:	83 c0 01             	add    $0x1,%eax
 2fc:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
 300:	75 f7                	jne    0x2f9
 302:	5d                   	pop    %ebp
 303:	c3                   	ret    
 304:	55                   	push   %ebp
 305:	89 e5                	mov    %esp,%ebp
 307:	57                   	push   %edi
 308:	8b 55 08             	mov    0x8(%ebp),%edx
 30b:	89 d7                	mov    %edx,%edi
 30d:	8b 4d 10             	mov    0x10(%ebp),%ecx
 310:	8b 45 0c             	mov    0xc(%ebp),%eax
 313:	fc                   	cld    
 314:	f3 aa                	rep stos %al,%es:(%edi)
 316:	89 d0                	mov    %edx,%eax
 318:	8b 7d fc             	mov    -0x4(%ebp),%edi
 31b:	c9                   	leave  
 31c:	c3                   	ret    
 31d:	55                   	push   %ebp
 31e:	89 e5                	mov    %esp,%ebp
 320:	8b 45 08             	mov    0x8(%ebp),%eax
 323:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
 327:	eb 03                	jmp    0x32c
 329:	83 c0 01             	add    $0x1,%eax
 32c:	0f b6 10             	movzbl (%eax),%edx
 32f:	84 d2                	test   %dl,%dl
 331:	74 06                	je     0x339
 333:	38 ca                	cmp    %cl,%dl
 335:	75 f2                	jne    0x329
 337:	eb 05                	jmp    0x33e
 339:	b8 00 00 00 00       	mov    $0x0,%eax
 33e:	5d                   	pop    %ebp
 33f:	c3                   	ret    
 340:	55                   	push   %ebp
 341:	89 e5                	mov    %esp,%ebp
 343:	57                   	push   %edi
 344:	56                   	push   %esi
 345:	53                   	push   %ebx
 346:	83 ec 1c             	sub    $0x1c,%esp
 349:	8b 7d 08             	mov    0x8(%ebp),%edi
 34c:	bb 00 00 00 00       	mov    $0x0,%ebx
 351:	89 de                	mov    %ebx,%esi
 353:	83 c3 01             	add    $0x1,%ebx
 356:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 359:	7d 2e                	jge    0x389
 35b:	83 ec 04             	sub    $0x4,%esp
 35e:	6a 01                	push   $0x1
 360:	8d 45 e7             	lea    -0x19(%ebp),%eax
 363:	50                   	push   %eax
 364:	6a 00                	push   $0x0
 366:	e8 ec 00 00 00       	call   0x457
 36b:	83 c4 10             	add    $0x10,%esp
 36e:	85 c0                	test   %eax,%eax
 370:	7e 17                	jle    0x389
 372:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 376:	88 04 37             	mov    %al,(%edi,%esi,1)
 379:	3c 0a                	cmp    $0xa,%al
 37b:	0f 94 c2             	sete   %dl
 37e:	3c 0d                	cmp    $0xd,%al
 380:	0f 94 c0             	sete   %al
 383:	08 c2                	or     %al,%dl
 385:	74 ca                	je     0x351
 387:	89 de                	mov    %ebx,%esi
 389:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
 38d:	89 f8                	mov    %edi,%eax
 38f:	8d 65 f4             	lea    -0xc(%ebp),%esp
 392:	5b                   	pop    %ebx
 393:	5e                   	pop    %esi
 394:	5f                   	pop    %edi
 395:	5d                   	pop    %ebp
 396:	c3                   	ret    
 397:	55                   	push   %ebp
 398:	89 e5                	mov    %esp,%ebp
 39a:	56                   	push   %esi
 39b:	53                   	push   %ebx
 39c:	83 ec 08             	sub    $0x8,%esp
 39f:	6a 00                	push   $0x0
 3a1:	ff 75 08             	push   0x8(%ebp)
 3a4:	e8 d6 00 00 00       	call   0x47f
 3a9:	83 c4 10             	add    $0x10,%esp
 3ac:	85 c0                	test   %eax,%eax
 3ae:	78 24                	js     0x3d4
 3b0:	89 c3                	mov    %eax,%ebx
 3b2:	83 ec 08             	sub    $0x8,%esp
 3b5:	ff 75 0c             	push   0xc(%ebp)
 3b8:	50                   	push   %eax
 3b9:	e8 d9 00 00 00       	call   0x497
 3be:	89 c6                	mov    %eax,%esi
 3c0:	89 1c 24             	mov    %ebx,(%esp)
 3c3:	e8 9f 00 00 00       	call   0x467
 3c8:	83 c4 10             	add    $0x10,%esp
 3cb:	89 f0                	mov    %esi,%eax
 3cd:	8d 65 f8             	lea    -0x8(%ebp),%esp
 3d0:	5b                   	pop    %ebx
 3d1:	5e                   	pop    %esi
 3d2:	5d                   	pop    %ebp
 3d3:	c3                   	ret    
 3d4:	be ff ff ff ff       	mov    $0xffffffff,%esi
 3d9:	eb f0                	jmp    0x3cb
 3db:	55                   	push   %ebp
 3dc:	89 e5                	mov    %esp,%ebp
 3de:	53                   	push   %ebx
 3df:	8b 4d 08             	mov    0x8(%ebp),%ecx
 3e2:	ba 00 00 00 00       	mov    $0x0,%edx
 3e7:	eb 10                	jmp    0x3f9
 3e9:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 3ec:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
 3ef:	83 c1 01             	add    $0x1,%ecx
 3f2:	0f be c0             	movsbl %al,%eax
 3f5:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
 3f9:	0f b6 01             	movzbl (%ecx),%eax
 3fc:	8d 58 d0             	lea    -0x30(%eax),%ebx
 3ff:	80 fb 09             	cmp    $0x9,%bl
 402:	76 e5                	jbe    0x3e9
 404:	89 d0                	mov    %edx,%eax
 406:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 409:	c9                   	leave  
 40a:	c3                   	ret    
 40b:	55                   	push   %ebp
 40c:	89 e5                	mov    %esp,%ebp
 40e:	56                   	push   %esi
 40f:	53                   	push   %ebx
 410:	8b 75 08             	mov    0x8(%ebp),%esi
 413:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 416:	8b 45 10             	mov    0x10(%ebp),%eax
 419:	89 f2                	mov    %esi,%edx
 41b:	eb 0d                	jmp    0x42a
 41d:	0f b6 01             	movzbl (%ecx),%eax
 420:	88 02                	mov    %al,(%edx)
 422:	8d 49 01             	lea    0x1(%ecx),%ecx
 425:	8d 52 01             	lea    0x1(%edx),%edx
 428:	89 d8                	mov    %ebx,%eax
 42a:	8d 58 ff             	lea    -0x1(%eax),%ebx
 42d:	85 c0                	test   %eax,%eax
 42f:	7f ec                	jg     0x41d
 431:	89 f0                	mov    %esi,%eax
 433:	5b                   	pop    %ebx
 434:	5e                   	pop    %esi
 435:	5d                   	pop    %ebp
 436:	c3                   	ret    
 437:	b8 01 00 00 00       	mov    $0x1,%eax
 43c:	cd 40                	int    $0x40
 43e:	c3                   	ret    
 43f:	b8 02 00 00 00       	mov    $0x2,%eax
 444:	cd 40                	int    $0x40
 446:	c3                   	ret    
 447:	b8 03 00 00 00       	mov    $0x3,%eax
 44c:	cd 40                	int    $0x40
 44e:	c3                   	ret    
 44f:	b8 04 00 00 00       	mov    $0x4,%eax
 454:	cd 40                	int    $0x40
 456:	c3                   	ret    
 457:	b8 05 00 00 00       	mov    $0x5,%eax
 45c:	cd 40                	int    $0x40
 45e:	c3                   	ret    
 45f:	b8 10 00 00 00       	mov    $0x10,%eax
 464:	cd 40                	int    $0x40
 466:	c3                   	ret    
 467:	b8 15 00 00 00       	mov    $0x15,%eax
 46c:	cd 40                	int    $0x40
 46e:	c3                   	ret    
 46f:	b8 06 00 00 00       	mov    $0x6,%eax
 474:	cd 40                	int    $0x40
 476:	c3                   	ret    
 477:	b8 07 00 00 00       	mov    $0x7,%eax
 47c:	cd 40                	int    $0x40
 47e:	c3                   	ret    
 47f:	b8 0f 00 00 00       	mov    $0xf,%eax
 484:	cd 40                	int    $0x40
 486:	c3                   	ret    
 487:	b8 11 00 00 00       	mov    $0x11,%eax
 48c:	cd 40                	int    $0x40
 48e:	c3                   	ret    
 48f:	b8 12 00 00 00       	mov    $0x12,%eax
 494:	cd 40                	int    $0x40
 496:	c3                   	ret    
 497:	b8 08 00 00 00       	mov    $0x8,%eax
 49c:	cd 40                	int    $0x40
 49e:	c3                   	ret    
 49f:	b8 13 00 00 00       	mov    $0x13,%eax
 4a4:	cd 40                	int    $0x40
 4a6:	c3                   	ret    
 4a7:	b8 14 00 00 00       	mov    $0x14,%eax
 4ac:	cd 40                	int    $0x40
 4ae:	c3                   	ret    
 4af:	b8 09 00 00 00       	mov    $0x9,%eax
 4b4:	cd 40                	int    $0x40
 4b6:	c3                   	ret    
 4b7:	b8 0a 00 00 00       	mov    $0xa,%eax
 4bc:	cd 40                	int    $0x40
 4be:	c3                   	ret    
 4bf:	b8 0b 00 00 00       	mov    $0xb,%eax
 4c4:	cd 40                	int    $0x40
 4c6:	c3                   	ret    
 4c7:	b8 0c 00 00 00       	mov    $0xc,%eax
 4cc:	cd 40                	int    $0x40
 4ce:	c3                   	ret    
 4cf:	b8 0d 00 00 00       	mov    $0xd,%eax
 4d4:	cd 40                	int    $0x40
 4d6:	c3                   	ret    
 4d7:	b8 0e 00 00 00       	mov    $0xe,%eax
 4dc:	cd 40                	int    $0x40
 4de:	c3                   	ret    
 4df:	b8 16 00 00 00       	mov    $0x16,%eax
 4e4:	cd 40                	int    $0x40
 4e6:	c3                   	ret    
 4e7:	55                   	push   %ebp
 4e8:	89 e5                	mov    %esp,%ebp
 4ea:	83 ec 1c             	sub    $0x1c,%esp
 4ed:	88 55 f4             	mov    %dl,-0xc(%ebp)
 4f0:	6a 01                	push   $0x1
 4f2:	8d 55 f4             	lea    -0xc(%ebp),%edx
 4f5:	52                   	push   %edx
 4f6:	50                   	push   %eax
 4f7:	e8 63 ff ff ff       	call   0x45f
 4fc:	83 c4 10             	add    $0x10,%esp
 4ff:	c9                   	leave  
 500:	c3                   	ret    
 501:	55                   	push   %ebp
 502:	89 e5                	mov    %esp,%ebp
 504:	57                   	push   %edi
 505:	56                   	push   %esi
 506:	53                   	push   %ebx
 507:	83 ec 2c             	sub    $0x2c,%esp
 50a:	89 45 d0             	mov    %eax,-0x30(%ebp)
 50d:	89 d0                	mov    %edx,%eax
 50f:	89 ce                	mov    %ecx,%esi
 511:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 515:	0f 95 c1             	setne  %cl
 518:	c1 ea 1f             	shr    $0x1f,%edx
 51b:	84 d1                	test   %dl,%cl
 51d:	74 44                	je     0x563
 51f:	f7 d8                	neg    %eax
 521:	89 c1                	mov    %eax,%ecx
 523:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 52a:	bb 00 00 00 00       	mov    $0x0,%ebx
 52f:	89 c8                	mov    %ecx,%eax
 531:	ba 00 00 00 00       	mov    $0x0,%edx
 536:	f7 f6                	div    %esi
 538:	89 df                	mov    %ebx,%edi
 53a:	83 c3 01             	add    $0x1,%ebx
 53d:	0f b6 92 d4 08 00 00 	movzbl 0x8d4(%edx),%edx
 544:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
 548:	89 ca                	mov    %ecx,%edx
 54a:	89 c1                	mov    %eax,%ecx
 54c:	39 d6                	cmp    %edx,%esi
 54e:	76 df                	jbe    0x52f
 550:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 554:	74 31                	je     0x587
 556:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
 55b:	8d 5f 02             	lea    0x2(%edi),%ebx
 55e:	8b 75 d0             	mov    -0x30(%ebp),%esi
 561:	eb 17                	jmp    0x57a
 563:	89 c1                	mov    %eax,%ecx
 565:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 56c:	eb bc                	jmp    0x52a
 56e:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
 573:	89 f0                	mov    %esi,%eax
 575:	e8 6d ff ff ff       	call   0x4e7
 57a:	83 eb 01             	sub    $0x1,%ebx
 57d:	79 ef                	jns    0x56e
 57f:	83 c4 2c             	add    $0x2c,%esp
 582:	5b                   	pop    %ebx
 583:	5e                   	pop    %esi
 584:	5f                   	pop    %edi
 585:	5d                   	pop    %ebp
 586:	c3                   	ret    
 587:	8b 75 d0             	mov    -0x30(%ebp),%esi
 58a:	eb ee                	jmp    0x57a
 58c:	55                   	push   %ebp
 58d:	89 e5                	mov    %esp,%ebp
 58f:	57                   	push   %edi
 590:	56                   	push   %esi
 591:	53                   	push   %ebx
 592:	83 ec 1c             	sub    $0x1c,%esp
 595:	8d 45 10             	lea    0x10(%ebp),%eax
 598:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 59b:	be 00 00 00 00       	mov    $0x0,%esi
 5a0:	bb 00 00 00 00       	mov    $0x0,%ebx
 5a5:	eb 14                	jmp    0x5bb
 5a7:	89 fa                	mov    %edi,%edx
 5a9:	8b 45 08             	mov    0x8(%ebp),%eax
 5ac:	e8 36 ff ff ff       	call   0x4e7
 5b1:	eb 05                	jmp    0x5b8
 5b3:	83 fe 25             	cmp    $0x25,%esi
 5b6:	74 25                	je     0x5dd
 5b8:	83 c3 01             	add    $0x1,%ebx
 5bb:	8b 45 0c             	mov    0xc(%ebp),%eax
 5be:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
 5c2:	84 c0                	test   %al,%al
 5c4:	0f 84 20 01 00 00    	je     0x6ea
 5ca:	0f be f8             	movsbl %al,%edi
 5cd:	0f b6 c0             	movzbl %al,%eax
 5d0:	85 f6                	test   %esi,%esi
 5d2:	75 df                	jne    0x5b3
 5d4:	83 f8 25             	cmp    $0x25,%eax
 5d7:	75 ce                	jne    0x5a7
 5d9:	89 c6                	mov    %eax,%esi
 5db:	eb db                	jmp    0x5b8
 5dd:	83 f8 25             	cmp    $0x25,%eax
 5e0:	0f 84 cf 00 00 00    	je     0x6b5
 5e6:	0f 8c dd 00 00 00    	jl     0x6c9
 5ec:	83 f8 78             	cmp    $0x78,%eax
 5ef:	0f 8f d4 00 00 00    	jg     0x6c9
 5f5:	83 f8 63             	cmp    $0x63,%eax
 5f8:	0f 8c cb 00 00 00    	jl     0x6c9
 5fe:	83 e8 63             	sub    $0x63,%eax
 601:	83 f8 15             	cmp    $0x15,%eax
 604:	0f 87 bf 00 00 00    	ja     0x6c9
 60a:	ff 24 85 7c 08 00 00 	jmp    *0x87c(,%eax,4)
 611:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 614:	8b 17                	mov    (%edi),%edx
 616:	83 ec 0c             	sub    $0xc,%esp
 619:	6a 01                	push   $0x1
 61b:	b9 0a 00 00 00       	mov    $0xa,%ecx
 620:	8b 45 08             	mov    0x8(%ebp),%eax
 623:	e8 d9 fe ff ff       	call   0x501
 628:	83 c7 04             	add    $0x4,%edi
 62b:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 62e:	83 c4 10             	add    $0x10,%esp
 631:	be 00 00 00 00       	mov    $0x0,%esi
 636:	eb 80                	jmp    0x5b8
 638:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 63b:	8b 17                	mov    (%edi),%edx
 63d:	83 ec 0c             	sub    $0xc,%esp
 640:	6a 00                	push   $0x0
 642:	b9 10 00 00 00       	mov    $0x10,%ecx
 647:	8b 45 08             	mov    0x8(%ebp),%eax
 64a:	e8 b2 fe ff ff       	call   0x501
 64f:	83 c7 04             	add    $0x4,%edi
 652:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 655:	83 c4 10             	add    $0x10,%esp
 658:	be 00 00 00 00       	mov    $0x0,%esi
 65d:	e9 56 ff ff ff       	jmp    0x5b8
 662:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 665:	8b 30                	mov    (%eax),%esi
 667:	83 c0 04             	add    $0x4,%eax
 66a:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 66d:	85 f6                	test   %esi,%esi
 66f:	75 15                	jne    0x686
 671:	be 72 08 00 00       	mov    $0x872,%esi
 676:	eb 0e                	jmp    0x686
 678:	0f be d2             	movsbl %dl,%edx
 67b:	8b 45 08             	mov    0x8(%ebp),%eax
 67e:	e8 64 fe ff ff       	call   0x4e7
 683:	83 c6 01             	add    $0x1,%esi
 686:	0f b6 16             	movzbl (%esi),%edx
 689:	84 d2                	test   %dl,%dl
 68b:	75 eb                	jne    0x678
 68d:	be 00 00 00 00       	mov    $0x0,%esi
 692:	e9 21 ff ff ff       	jmp    0x5b8
 697:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 69a:	0f be 17             	movsbl (%edi),%edx
 69d:	8b 45 08             	mov    0x8(%ebp),%eax
 6a0:	e8 42 fe ff ff       	call   0x4e7
 6a5:	83 c7 04             	add    $0x4,%edi
 6a8:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 6ab:	be 00 00 00 00       	mov    $0x0,%esi
 6b0:	e9 03 ff ff ff       	jmp    0x5b8
 6b5:	89 fa                	mov    %edi,%edx
 6b7:	8b 45 08             	mov    0x8(%ebp),%eax
 6ba:	e8 28 fe ff ff       	call   0x4e7
 6bf:	be 00 00 00 00       	mov    $0x0,%esi
 6c4:	e9 ef fe ff ff       	jmp    0x5b8
 6c9:	ba 25 00 00 00       	mov    $0x25,%edx
 6ce:	8b 45 08             	mov    0x8(%ebp),%eax
 6d1:	e8 11 fe ff ff       	call   0x4e7
 6d6:	89 fa                	mov    %edi,%edx
 6d8:	8b 45 08             	mov    0x8(%ebp),%eax
 6db:	e8 07 fe ff ff       	call   0x4e7
 6e0:	be 00 00 00 00       	mov    $0x0,%esi
 6e5:	e9 ce fe ff ff       	jmp    0x5b8
 6ea:	8d 65 f4             	lea    -0xc(%ebp),%esp
 6ed:	5b                   	pop    %ebx
 6ee:	5e                   	pop    %esi
 6ef:	5f                   	pop    %edi
 6f0:	5d                   	pop    %ebp
 6f1:	c3                   	ret    
 6f2:	55                   	push   %ebp
 6f3:	89 e5                	mov    %esp,%ebp
 6f5:	57                   	push   %edi
 6f6:	56                   	push   %esi
 6f7:	53                   	push   %ebx
 6f8:	8b 5d 08             	mov    0x8(%ebp),%ebx
 6fb:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 6fe:	a1 40 10 00 00       	mov    0x1040,%eax
 703:	eb 02                	jmp    0x707
 705:	89 d0                	mov    %edx,%eax
 707:	39 c8                	cmp    %ecx,%eax
 709:	73 04                	jae    0x70f
 70b:	39 08                	cmp    %ecx,(%eax)
 70d:	77 12                	ja     0x721
 70f:	8b 10                	mov    (%eax),%edx
 711:	39 c2                	cmp    %eax,%edx
 713:	77 f0                	ja     0x705
 715:	39 c8                	cmp    %ecx,%eax
 717:	72 08                	jb     0x721
 719:	39 ca                	cmp    %ecx,%edx
 71b:	77 04                	ja     0x721
 71d:	89 d0                	mov    %edx,%eax
 71f:	eb e6                	jmp    0x707
 721:	8b 73 fc             	mov    -0x4(%ebx),%esi
 724:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 727:	8b 10                	mov    (%eax),%edx
 729:	39 d7                	cmp    %edx,%edi
 72b:	74 19                	je     0x746
 72d:	89 53 f8             	mov    %edx,-0x8(%ebx)
 730:	8b 50 04             	mov    0x4(%eax),%edx
 733:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 736:	39 ce                	cmp    %ecx,%esi
 738:	74 1b                	je     0x755
 73a:	89 08                	mov    %ecx,(%eax)
 73c:	a3 40 10 00 00       	mov    %eax,0x1040
 741:	5b                   	pop    %ebx
 742:	5e                   	pop    %esi
 743:	5f                   	pop    %edi
 744:	5d                   	pop    %ebp
 745:	c3                   	ret    
 746:	03 72 04             	add    0x4(%edx),%esi
 749:	89 73 fc             	mov    %esi,-0x4(%ebx)
 74c:	8b 10                	mov    (%eax),%edx
 74e:	8b 12                	mov    (%edx),%edx
 750:	89 53 f8             	mov    %edx,-0x8(%ebx)
 753:	eb db                	jmp    0x730
 755:	03 53 fc             	add    -0x4(%ebx),%edx
 758:	89 50 04             	mov    %edx,0x4(%eax)
 75b:	8b 53 f8             	mov    -0x8(%ebx),%edx
 75e:	89 10                	mov    %edx,(%eax)
 760:	eb da                	jmp    0x73c
 762:	55                   	push   %ebp
 763:	89 e5                	mov    %esp,%ebp
 765:	53                   	push   %ebx
 766:	83 ec 04             	sub    $0x4,%esp
 769:	89 c3                	mov    %eax,%ebx
 76b:	3d ff 0f 00 00       	cmp    $0xfff,%eax
 770:	77 05                	ja     0x777
 772:	bb 00 10 00 00       	mov    $0x1000,%ebx
 777:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 77e:	83 ec 0c             	sub    $0xc,%esp
 781:	50                   	push   %eax
 782:	e8 40 fd ff ff       	call   0x4c7
 787:	83 c4 10             	add    $0x10,%esp
 78a:	83 f8 ff             	cmp    $0xffffffff,%eax
 78d:	74 1c                	je     0x7ab
 78f:	89 58 04             	mov    %ebx,0x4(%eax)
 792:	83 c0 08             	add    $0x8,%eax
 795:	83 ec 0c             	sub    $0xc,%esp
 798:	50                   	push   %eax
 799:	e8 54 ff ff ff       	call   0x6f2
 79e:	a1 40 10 00 00       	mov    0x1040,%eax
 7a3:	83 c4 10             	add    $0x10,%esp
 7a6:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 7a9:	c9                   	leave  
 7aa:	c3                   	ret    
 7ab:	b8 00 00 00 00       	mov    $0x0,%eax
 7b0:	eb f4                	jmp    0x7a6
 7b2:	55                   	push   %ebp
 7b3:	89 e5                	mov    %esp,%ebp
 7b5:	53                   	push   %ebx
 7b6:	83 ec 04             	sub    $0x4,%esp
 7b9:	8b 45 08             	mov    0x8(%ebp),%eax
 7bc:	8d 58 07             	lea    0x7(%eax),%ebx
 7bf:	c1 eb 03             	shr    $0x3,%ebx
 7c2:	83 c3 01             	add    $0x1,%ebx
 7c5:	8b 0d 40 10 00 00    	mov    0x1040,%ecx
 7cb:	85 c9                	test   %ecx,%ecx
 7cd:	74 04                	je     0x7d3
 7cf:	8b 01                	mov    (%ecx),%eax
 7d1:	eb 4a                	jmp    0x81d
 7d3:	c7 05 40 10 00 00 44 	movl   $0x1044,0x1040
 7da:	10 00 00 
 7dd:	c7 05 44 10 00 00 44 	movl   $0x1044,0x1044
 7e4:	10 00 00 
 7e7:	c7 05 48 10 00 00 00 	movl   $0x0,0x1048
 7ee:	00 00 00 
 7f1:	b9 44 10 00 00       	mov    $0x1044,%ecx
 7f6:	eb d7                	jmp    0x7cf
 7f8:	74 19                	je     0x813
 7fa:	29 da                	sub    %ebx,%edx
 7fc:	89 50 04             	mov    %edx,0x4(%eax)
 7ff:	8d 04 d0             	lea    (%eax,%edx,8),%eax
 802:	89 58 04             	mov    %ebx,0x4(%eax)
 805:	89 0d 40 10 00 00    	mov    %ecx,0x1040
 80b:	83 c0 08             	add    $0x8,%eax
 80e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 811:	c9                   	leave  
 812:	c3                   	ret    
 813:	8b 10                	mov    (%eax),%edx
 815:	89 11                	mov    %edx,(%ecx)
 817:	eb ec                	jmp    0x805
 819:	89 c1                	mov    %eax,%ecx
 81b:	8b 00                	mov    (%eax),%eax
 81d:	8b 50 04             	mov    0x4(%eax),%edx
 820:	39 da                	cmp    %ebx,%edx
 822:	73 d4                	jae    0x7f8
 824:	39 05 40 10 00 00    	cmp    %eax,0x1040
 82a:	75 ed                	jne    0x819
 82c:	89 d8                	mov    %ebx,%eax
 82e:	e8 2f ff ff ff       	call   0x762
 833:	85 c0                	test   %eax,%eax
 835:	75 e2                	jne    0x819
 837:	eb d5                	jmp    0x80e
