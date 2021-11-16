
_sh:     formato del fichero elf32-i386


Desensamblado de la sección .text:

00000000 <.text>:
       0:	f3 0f 1e fb          	endbr32 
       4:	55                   	push   %ebp
       5:	89 e5                	mov    %esp,%ebp
       7:	56                   	push   %esi
       8:	53                   	push   %ebx
       9:	8b 5d 08             	mov    0x8(%ebp),%ebx
       c:	8b 75 0c             	mov    0xc(%ebp),%esi
       f:	83 ec 08             	sub    $0x8,%esp
      12:	68 0c 10 00 00       	push   $0x100c
      17:	6a 02                	push   $0x2
      19:	e8 2e 0d 00 00       	call   0xd4c
      1e:	83 c4 0c             	add    $0xc,%esp
      21:	56                   	push   %esi
      22:	6a 00                	push   $0x0
      24:	53                   	push   %ebx
      25:	e8 84 0a 00 00       	call   0xaae
      2a:	83 c4 08             	add    $0x8,%esp
      2d:	56                   	push   %esi
      2e:	53                   	push   %ebx
      2f:	e8 ba 0a 00 00       	call   0xaee
      34:	83 c4 10             	add    $0x10,%esp
      37:	80 3b 00             	cmpb   $0x0,(%ebx)
      3a:	74 0c                	je     0x48
      3c:	b8 00 00 00 00       	mov    $0x0,%eax
      41:	8d 65 f8             	lea    -0x8(%ebp),%esp
      44:	5b                   	pop    %ebx
      45:	5e                   	pop    %esi
      46:	5d                   	pop    %ebp
      47:	c3                   	ret    
      48:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
      4d:	eb f2                	jmp    0x41
      4f:	f3 0f 1e fb          	endbr32 
      53:	55                   	push   %ebp
      54:	89 e5                	mov    %esp,%ebp
      56:	83 ec 0c             	sub    $0xc,%esp
      59:	ff 75 08             	pushl  0x8(%ebp)
      5c:	68 a9 10 00 00       	push   $0x10a9
      61:	6a 02                	push   $0x2
      63:	e8 e4 0c 00 00       	call   0xd4c
      68:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
      6f:	e8 87 0b 00 00       	call   0xbfb
      74:	f3 0f 1e fb          	endbr32 
      78:	55                   	push   %ebp
      79:	89 e5                	mov    %esp,%ebp
      7b:	83 ec 08             	sub    $0x8,%esp
      7e:	e8 70 0b 00 00       	call   0xbf3
      83:	83 f8 ff             	cmp    $0xffffffff,%eax
      86:	74 02                	je     0x8a
      88:	c9                   	leave  
      89:	c3                   	ret    
      8a:	83 ec 0c             	sub    $0xc,%esp
      8d:	68 0f 10 00 00       	push   $0x100f
      92:	e8 b8 ff ff ff       	call   0x4f
      97:	f3 0f 1e fb          	endbr32 
      9b:	55                   	push   %ebp
      9c:	89 e5                	mov    %esp,%ebp
      9e:	53                   	push   %ebx
      9f:	83 ec 14             	sub    $0x14,%esp
      a2:	8b 5d 08             	mov    0x8(%ebp),%ebx
      a5:	85 db                	test   %ebx,%ebx
      a7:	74 0f                	je     0xb8
      a9:	8b 03                	mov    (%ebx),%eax
      ab:	83 f8 05             	cmp    $0x5,%eax
      ae:	77 12                	ja     0xc2
      b0:	3e ff 24 85 c4 10 00 	notrack jmp *0x10c4(,%eax,4)
      b7:	00 
      b8:	83 ec 0c             	sub    $0xc,%esp
      bb:	6a 00                	push   $0x0
      bd:	e8 39 0b 00 00       	call   0xbfb
      c2:	83 ec 0c             	sub    $0xc,%esp
      c5:	68 14 10 00 00       	push   $0x1014
      ca:	e8 80 ff ff ff       	call   0x4f
      cf:	8b 43 04             	mov    0x4(%ebx),%eax
      d2:	85 c0                	test   %eax,%eax
      d4:	74 2c                	je     0x102
      d6:	8d 53 04             	lea    0x4(%ebx),%edx
      d9:	83 ec 08             	sub    $0x8,%esp
      dc:	52                   	push   %edx
      dd:	50                   	push   %eax
      de:	e8 50 0b 00 00       	call   0xc33
      e3:	83 c4 0c             	add    $0xc,%esp
      e6:	ff 73 04             	pushl  0x4(%ebx)
      e9:	68 1b 10 00 00       	push   $0x101b
      ee:	6a 02                	push   $0x2
      f0:	e8 57 0c 00 00       	call   0xd4c
      f5:	83 c4 10             	add    $0x10,%esp
      f8:	83 ec 0c             	sub    $0xc,%esp
      fb:	6a 00                	push   $0x0
      fd:	e8 f9 0a 00 00       	call   0xbfb
     102:	83 ec 0c             	sub    $0xc,%esp
     105:	6a 00                	push   $0x0
     107:	e8 ef 0a 00 00       	call   0xbfb
     10c:	83 ec 0c             	sub    $0xc,%esp
     10f:	ff 73 14             	pushl  0x14(%ebx)
     112:	e8 0c 0b 00 00       	call   0xc23
     117:	83 c4 08             	add    $0x8,%esp
     11a:	ff 73 10             	pushl  0x10(%ebx)
     11d:	ff 73 08             	pushl  0x8(%ebx)
     120:	e8 16 0b 00 00       	call   0xc3b
     125:	83 c4 10             	add    $0x10,%esp
     128:	85 c0                	test   %eax,%eax
     12a:	78 0b                	js     0x137
     12c:	83 ec 0c             	sub    $0xc,%esp
     12f:	ff 73 04             	pushl  0x4(%ebx)
     132:	e8 60 ff ff ff       	call   0x97
     137:	83 ec 04             	sub    $0x4,%esp
     13a:	ff 73 08             	pushl  0x8(%ebx)
     13d:	68 2b 10 00 00       	push   $0x102b
     142:	6a 02                	push   $0x2
     144:	e8 03 0c 00 00       	call   0xd4c
     149:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     150:	e8 a6 0a 00 00       	call   0xbfb
     155:	e8 1a ff ff ff       	call   0x74
     15a:	85 c0                	test   %eax,%eax
     15c:	74 15                	je     0x173
     15e:	83 ec 0c             	sub    $0xc,%esp
     161:	6a 00                	push   $0x0
     163:	e8 9b 0a 00 00       	call   0xc03
     168:	83 c4 04             	add    $0x4,%esp
     16b:	ff 73 08             	pushl  0x8(%ebx)
     16e:	e8 24 ff ff ff       	call   0x97
     173:	83 ec 0c             	sub    $0xc,%esp
     176:	ff 73 04             	pushl  0x4(%ebx)
     179:	e8 19 ff ff ff       	call   0x97
     17e:	83 ec 0c             	sub    $0xc,%esp
     181:	8d 45 f0             	lea    -0x10(%ebp),%eax
     184:	50                   	push   %eax
     185:	e8 81 0a 00 00       	call   0xc0b
     18a:	83 c4 10             	add    $0x10,%esp
     18d:	85 c0                	test   %eax,%eax
     18f:	78 48                	js     0x1d9
     191:	e8 de fe ff ff       	call   0x74
     196:	85 c0                	test   %eax,%eax
     198:	74 4c                	je     0x1e6
     19a:	e8 d5 fe ff ff       	call   0x74
     19f:	85 c0                	test   %eax,%eax
     1a1:	74 79                	je     0x21c
     1a3:	83 ec 0c             	sub    $0xc,%esp
     1a6:	ff 75 f0             	pushl  -0x10(%ebp)
     1a9:	e8 75 0a 00 00       	call   0xc23
     1ae:	83 c4 04             	add    $0x4,%esp
     1b1:	ff 75 f4             	pushl  -0xc(%ebp)
     1b4:	e8 6a 0a 00 00       	call   0xc23
     1b9:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     1c0:	e8 3e 0a 00 00       	call   0xc03
     1c5:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     1cc:	e8 32 0a 00 00       	call   0xc03
     1d1:	83 c4 10             	add    $0x10,%esp
     1d4:	e9 1f ff ff ff       	jmp    0xf8
     1d9:	83 ec 0c             	sub    $0xc,%esp
     1dc:	68 3b 10 00 00       	push   $0x103b
     1e1:	e8 69 fe ff ff       	call   0x4f
     1e6:	83 ec 0c             	sub    $0xc,%esp
     1e9:	6a 01                	push   $0x1
     1eb:	e8 33 0a 00 00       	call   0xc23
     1f0:	83 c4 04             	add    $0x4,%esp
     1f3:	ff 75 f4             	pushl  -0xc(%ebp)
     1f6:	e8 78 0a 00 00       	call   0xc73
     1fb:	83 c4 04             	add    $0x4,%esp
     1fe:	ff 75 f0             	pushl  -0x10(%ebp)
     201:	e8 1d 0a 00 00       	call   0xc23
     206:	83 c4 04             	add    $0x4,%esp
     209:	ff 75 f4             	pushl  -0xc(%ebp)
     20c:	e8 12 0a 00 00       	call   0xc23
     211:	83 c4 04             	add    $0x4,%esp
     214:	ff 73 04             	pushl  0x4(%ebx)
     217:	e8 7b fe ff ff       	call   0x97
     21c:	83 ec 0c             	sub    $0xc,%esp
     21f:	6a 00                	push   $0x0
     221:	e8 fd 09 00 00       	call   0xc23
     226:	83 c4 04             	add    $0x4,%esp
     229:	ff 75 f0             	pushl  -0x10(%ebp)
     22c:	e8 42 0a 00 00       	call   0xc73
     231:	83 c4 04             	add    $0x4,%esp
     234:	ff 75 f0             	pushl  -0x10(%ebp)
     237:	e8 e7 09 00 00       	call   0xc23
     23c:	83 c4 04             	add    $0x4,%esp
     23f:	ff 75 f4             	pushl  -0xc(%ebp)
     242:	e8 dc 09 00 00       	call   0xc23
     247:	83 c4 04             	add    $0x4,%esp
     24a:	ff 73 08             	pushl  0x8(%ebx)
     24d:	e8 45 fe ff ff       	call   0x97
     252:	e8 1d fe ff ff       	call   0x74
     257:	85 c0                	test   %eax,%eax
     259:	0f 85 99 fe ff ff    	jne    0xf8
     25f:	83 ec 0c             	sub    $0xc,%esp
     262:	ff 73 04             	pushl  0x4(%ebx)
     265:	e8 2d fe ff ff       	call   0x97
     26a:	f3 0f 1e fb          	endbr32 
     26e:	55                   	push   %ebp
     26f:	89 e5                	mov    %esp,%ebp
     271:	53                   	push   %ebx
     272:	83 ec 10             	sub    $0x10,%esp
     275:	6a 54                	push   $0x54
     277:	e8 01 0d 00 00       	call   0xf7d
     27c:	89 c3                	mov    %eax,%ebx
     27e:	83 c4 0c             	add    $0xc,%esp
     281:	6a 54                	push   $0x54
     283:	6a 00                	push   $0x0
     285:	50                   	push   %eax
     286:	e8 23 08 00 00       	call   0xaae
     28b:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
     291:	89 d8                	mov    %ebx,%eax
     293:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     296:	c9                   	leave  
     297:	c3                   	ret    
     298:	f3 0f 1e fb          	endbr32 
     29c:	55                   	push   %ebp
     29d:	89 e5                	mov    %esp,%ebp
     29f:	53                   	push   %ebx
     2a0:	83 ec 10             	sub    $0x10,%esp
     2a3:	6a 18                	push   $0x18
     2a5:	e8 d3 0c 00 00       	call   0xf7d
     2aa:	89 c3                	mov    %eax,%ebx
     2ac:	83 c4 0c             	add    $0xc,%esp
     2af:	6a 18                	push   $0x18
     2b1:	6a 00                	push   $0x0
     2b3:	50                   	push   %eax
     2b4:	e8 f5 07 00 00       	call   0xaae
     2b9:	c7 03 02 00 00 00    	movl   $0x2,(%ebx)
     2bf:	8b 45 08             	mov    0x8(%ebp),%eax
     2c2:	89 43 04             	mov    %eax,0x4(%ebx)
     2c5:	8b 45 0c             	mov    0xc(%ebp),%eax
     2c8:	89 43 08             	mov    %eax,0x8(%ebx)
     2cb:	8b 45 10             	mov    0x10(%ebp),%eax
     2ce:	89 43 0c             	mov    %eax,0xc(%ebx)
     2d1:	8b 45 14             	mov    0x14(%ebp),%eax
     2d4:	89 43 10             	mov    %eax,0x10(%ebx)
     2d7:	8b 45 18             	mov    0x18(%ebp),%eax
     2da:	89 43 14             	mov    %eax,0x14(%ebx)
     2dd:	89 d8                	mov    %ebx,%eax
     2df:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     2e2:	c9                   	leave  
     2e3:	c3                   	ret    
     2e4:	f3 0f 1e fb          	endbr32 
     2e8:	55                   	push   %ebp
     2e9:	89 e5                	mov    %esp,%ebp
     2eb:	53                   	push   %ebx
     2ec:	83 ec 10             	sub    $0x10,%esp
     2ef:	6a 0c                	push   $0xc
     2f1:	e8 87 0c 00 00       	call   0xf7d
     2f6:	89 c3                	mov    %eax,%ebx
     2f8:	83 c4 0c             	add    $0xc,%esp
     2fb:	6a 0c                	push   $0xc
     2fd:	6a 00                	push   $0x0
     2ff:	50                   	push   %eax
     300:	e8 a9 07 00 00       	call   0xaae
     305:	c7 03 03 00 00 00    	movl   $0x3,(%ebx)
     30b:	8b 45 08             	mov    0x8(%ebp),%eax
     30e:	89 43 04             	mov    %eax,0x4(%ebx)
     311:	8b 45 0c             	mov    0xc(%ebp),%eax
     314:	89 43 08             	mov    %eax,0x8(%ebx)
     317:	89 d8                	mov    %ebx,%eax
     319:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     31c:	c9                   	leave  
     31d:	c3                   	ret    
     31e:	f3 0f 1e fb          	endbr32 
     322:	55                   	push   %ebp
     323:	89 e5                	mov    %esp,%ebp
     325:	53                   	push   %ebx
     326:	83 ec 10             	sub    $0x10,%esp
     329:	6a 0c                	push   $0xc
     32b:	e8 4d 0c 00 00       	call   0xf7d
     330:	89 c3                	mov    %eax,%ebx
     332:	83 c4 0c             	add    $0xc,%esp
     335:	6a 0c                	push   $0xc
     337:	6a 00                	push   $0x0
     339:	50                   	push   %eax
     33a:	e8 6f 07 00 00       	call   0xaae
     33f:	c7 03 04 00 00 00    	movl   $0x4,(%ebx)
     345:	8b 45 08             	mov    0x8(%ebp),%eax
     348:	89 43 04             	mov    %eax,0x4(%ebx)
     34b:	8b 45 0c             	mov    0xc(%ebp),%eax
     34e:	89 43 08             	mov    %eax,0x8(%ebx)
     351:	89 d8                	mov    %ebx,%eax
     353:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     356:	c9                   	leave  
     357:	c3                   	ret    
     358:	f3 0f 1e fb          	endbr32 
     35c:	55                   	push   %ebp
     35d:	89 e5                	mov    %esp,%ebp
     35f:	53                   	push   %ebx
     360:	83 ec 10             	sub    $0x10,%esp
     363:	6a 08                	push   $0x8
     365:	e8 13 0c 00 00       	call   0xf7d
     36a:	89 c3                	mov    %eax,%ebx
     36c:	83 c4 0c             	add    $0xc,%esp
     36f:	6a 08                	push   $0x8
     371:	6a 00                	push   $0x0
     373:	50                   	push   %eax
     374:	e8 35 07 00 00       	call   0xaae
     379:	c7 03 05 00 00 00    	movl   $0x5,(%ebx)
     37f:	8b 45 08             	mov    0x8(%ebp),%eax
     382:	89 43 04             	mov    %eax,0x4(%ebx)
     385:	89 d8                	mov    %ebx,%eax
     387:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     38a:	c9                   	leave  
     38b:	c3                   	ret    
     38c:	f3 0f 1e fb          	endbr32 
     390:	55                   	push   %ebp
     391:	89 e5                	mov    %esp,%ebp
     393:	57                   	push   %edi
     394:	56                   	push   %esi
     395:	53                   	push   %ebx
     396:	83 ec 0c             	sub    $0xc,%esp
     399:	8b 75 0c             	mov    0xc(%ebp),%esi
     39c:	8b 7d 10             	mov    0x10(%ebp),%edi
     39f:	8b 45 08             	mov    0x8(%ebp),%eax
     3a2:	8b 18                	mov    (%eax),%ebx
     3a4:	39 f3                	cmp    %esi,%ebx
     3a6:	73 1d                	jae    0x3c5
     3a8:	83 ec 08             	sub    $0x8,%esp
     3ab:	0f be 03             	movsbl (%ebx),%eax
     3ae:	50                   	push   %eax
     3af:	68 7c 16 00 00       	push   $0x167c
     3b4:	e8 10 07 00 00       	call   0xac9
     3b9:	83 c4 10             	add    $0x10,%esp
     3bc:	85 c0                	test   %eax,%eax
     3be:	74 05                	je     0x3c5
     3c0:	83 c3 01             	add    $0x1,%ebx
     3c3:	eb df                	jmp    0x3a4
     3c5:	85 ff                	test   %edi,%edi
     3c7:	74 02                	je     0x3cb
     3c9:	89 1f                	mov    %ebx,(%edi)
     3cb:	0f b6 03             	movzbl (%ebx),%eax
     3ce:	0f be f8             	movsbl %al,%edi
     3d1:	3c 3c                	cmp    $0x3c,%al
     3d3:	7f 27                	jg     0x3fc
     3d5:	3c 3b                	cmp    $0x3b,%al
     3d7:	7d 13                	jge    0x3ec
     3d9:	84 c0                	test   %al,%al
     3db:	74 12                	je     0x3ef
     3dd:	78 41                	js     0x420
     3df:	3c 26                	cmp    $0x26,%al
     3e1:	74 09                	je     0x3ec
     3e3:	7c 3b                	jl     0x420
     3e5:	83 e8 28             	sub    $0x28,%eax
     3e8:	3c 01                	cmp    $0x1,%al
     3ea:	77 34                	ja     0x420
     3ec:	83 c3 01             	add    $0x1,%ebx
     3ef:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
     3f3:	74 77                	je     0x46c
     3f5:	8b 45 14             	mov    0x14(%ebp),%eax
     3f8:	89 18                	mov    %ebx,(%eax)
     3fa:	eb 70                	jmp    0x46c
     3fc:	3c 3e                	cmp    $0x3e,%al
     3fe:	75 0d                	jne    0x40d
     400:	8d 43 01             	lea    0x1(%ebx),%eax
     403:	80 7b 01 3e          	cmpb   $0x3e,0x1(%ebx)
     407:	74 0a                	je     0x413
     409:	89 c3                	mov    %eax,%ebx
     40b:	eb e2                	jmp    0x3ef
     40d:	3c 7c                	cmp    $0x7c,%al
     40f:	75 0f                	jne    0x420
     411:	eb d9                	jmp    0x3ec
     413:	83 c3 02             	add    $0x2,%ebx
     416:	bf 2b 00 00 00       	mov    $0x2b,%edi
     41b:	eb d2                	jmp    0x3ef
     41d:	83 c3 01             	add    $0x1,%ebx
     420:	39 f3                	cmp    %esi,%ebx
     422:	73 37                	jae    0x45b
     424:	83 ec 08             	sub    $0x8,%esp
     427:	0f be 03             	movsbl (%ebx),%eax
     42a:	50                   	push   %eax
     42b:	68 7c 16 00 00       	push   $0x167c
     430:	e8 94 06 00 00       	call   0xac9
     435:	83 c4 10             	add    $0x10,%esp
     438:	85 c0                	test   %eax,%eax
     43a:	75 26                	jne    0x462
     43c:	83 ec 08             	sub    $0x8,%esp
     43f:	0f be 03             	movsbl (%ebx),%eax
     442:	50                   	push   %eax
     443:	68 74 16 00 00       	push   $0x1674
     448:	e8 7c 06 00 00       	call   0xac9
     44d:	83 c4 10             	add    $0x10,%esp
     450:	85 c0                	test   %eax,%eax
     452:	74 c9                	je     0x41d
     454:	bf 61 00 00 00       	mov    $0x61,%edi
     459:	eb 94                	jmp    0x3ef
     45b:	bf 61 00 00 00       	mov    $0x61,%edi
     460:	eb 8d                	jmp    0x3ef
     462:	bf 61 00 00 00       	mov    $0x61,%edi
     467:	eb 86                	jmp    0x3ef
     469:	83 c3 01             	add    $0x1,%ebx
     46c:	39 f3                	cmp    %esi,%ebx
     46e:	73 18                	jae    0x488
     470:	83 ec 08             	sub    $0x8,%esp
     473:	0f be 03             	movsbl (%ebx),%eax
     476:	50                   	push   %eax
     477:	68 7c 16 00 00       	push   $0x167c
     47c:	e8 48 06 00 00       	call   0xac9
     481:	83 c4 10             	add    $0x10,%esp
     484:	85 c0                	test   %eax,%eax
     486:	75 e1                	jne    0x469
     488:	8b 45 08             	mov    0x8(%ebp),%eax
     48b:	89 18                	mov    %ebx,(%eax)
     48d:	89 f8                	mov    %edi,%eax
     48f:	8d 65 f4             	lea    -0xc(%ebp),%esp
     492:	5b                   	pop    %ebx
     493:	5e                   	pop    %esi
     494:	5f                   	pop    %edi
     495:	5d                   	pop    %ebp
     496:	c3                   	ret    
     497:	f3 0f 1e fb          	endbr32 
     49b:	55                   	push   %ebp
     49c:	89 e5                	mov    %esp,%ebp
     49e:	57                   	push   %edi
     49f:	56                   	push   %esi
     4a0:	53                   	push   %ebx
     4a1:	83 ec 0c             	sub    $0xc,%esp
     4a4:	8b 7d 08             	mov    0x8(%ebp),%edi
     4a7:	8b 75 0c             	mov    0xc(%ebp),%esi
     4aa:	8b 1f                	mov    (%edi),%ebx
     4ac:	39 f3                	cmp    %esi,%ebx
     4ae:	73 1d                	jae    0x4cd
     4b0:	83 ec 08             	sub    $0x8,%esp
     4b3:	0f be 03             	movsbl (%ebx),%eax
     4b6:	50                   	push   %eax
     4b7:	68 7c 16 00 00       	push   $0x167c
     4bc:	e8 08 06 00 00       	call   0xac9
     4c1:	83 c4 10             	add    $0x10,%esp
     4c4:	85 c0                	test   %eax,%eax
     4c6:	74 05                	je     0x4cd
     4c8:	83 c3 01             	add    $0x1,%ebx
     4cb:	eb df                	jmp    0x4ac
     4cd:	89 1f                	mov    %ebx,(%edi)
     4cf:	0f b6 03             	movzbl (%ebx),%eax
     4d2:	84 c0                	test   %al,%al
     4d4:	75 0d                	jne    0x4e3
     4d6:	b8 00 00 00 00       	mov    $0x0,%eax
     4db:	8d 65 f4             	lea    -0xc(%ebp),%esp
     4de:	5b                   	pop    %ebx
     4df:	5e                   	pop    %esi
     4e0:	5f                   	pop    %edi
     4e1:	5d                   	pop    %ebp
     4e2:	c3                   	ret    
     4e3:	83 ec 08             	sub    $0x8,%esp
     4e6:	0f be c0             	movsbl %al,%eax
     4e9:	50                   	push   %eax
     4ea:	ff 75 10             	pushl  0x10(%ebp)
     4ed:	e8 d7 05 00 00       	call   0xac9
     4f2:	83 c4 10             	add    $0x10,%esp
     4f5:	85 c0                	test   %eax,%eax
     4f7:	74 07                	je     0x500
     4f9:	b8 01 00 00 00       	mov    $0x1,%eax
     4fe:	eb db                	jmp    0x4db
     500:	b8 00 00 00 00       	mov    $0x0,%eax
     505:	eb d4                	jmp    0x4db
     507:	f3 0f 1e fb          	endbr32 
     50b:	55                   	push   %ebp
     50c:	89 e5                	mov    %esp,%ebp
     50e:	57                   	push   %edi
     50f:	56                   	push   %esi
     510:	53                   	push   %ebx
     511:	83 ec 1c             	sub    $0x1c,%esp
     514:	8b 7d 0c             	mov    0xc(%ebp),%edi
     517:	8b 75 10             	mov    0x10(%ebp),%esi
     51a:	eb 28                	jmp    0x544
     51c:	83 ec 0c             	sub    $0xc,%esp
     51f:	68 40 10 00 00       	push   $0x1040
     524:	e8 26 fb ff ff       	call   0x4f
     529:	83 ec 0c             	sub    $0xc,%esp
     52c:	6a 00                	push   $0x0
     52e:	6a 00                	push   $0x0
     530:	ff 75 e0             	pushl  -0x20(%ebp)
     533:	ff 75 e4             	pushl  -0x1c(%ebp)
     536:	ff 75 08             	pushl  0x8(%ebp)
     539:	e8 5a fd ff ff       	call   0x298
     53e:	89 45 08             	mov    %eax,0x8(%ebp)
     541:	83 c4 20             	add    $0x20,%esp
     544:	83 ec 04             	sub    $0x4,%esp
     547:	68 5d 10 00 00       	push   $0x105d
     54c:	56                   	push   %esi
     54d:	57                   	push   %edi
     54e:	e8 44 ff ff ff       	call   0x497
     553:	83 c4 10             	add    $0x10,%esp
     556:	85 c0                	test   %eax,%eax
     558:	74 76                	je     0x5d0
     55a:	6a 00                	push   $0x0
     55c:	6a 00                	push   $0x0
     55e:	56                   	push   %esi
     55f:	57                   	push   %edi
     560:	e8 27 fe ff ff       	call   0x38c
     565:	89 c3                	mov    %eax,%ebx
     567:	8d 45 e0             	lea    -0x20(%ebp),%eax
     56a:	50                   	push   %eax
     56b:	8d 45 e4             	lea    -0x1c(%ebp),%eax
     56e:	50                   	push   %eax
     56f:	56                   	push   %esi
     570:	57                   	push   %edi
     571:	e8 16 fe ff ff       	call   0x38c
     576:	83 c4 20             	add    $0x20,%esp
     579:	83 f8 61             	cmp    $0x61,%eax
     57c:	75 9e                	jne    0x51c
     57e:	83 fb 3c             	cmp    $0x3c,%ebx
     581:	74 a6                	je     0x529
     583:	83 fb 3e             	cmp    $0x3e,%ebx
     586:	74 25                	je     0x5ad
     588:	83 fb 2b             	cmp    $0x2b,%ebx
     58b:	75 b7                	jne    0x544
     58d:	83 ec 0c             	sub    $0xc,%esp
     590:	6a 01                	push   $0x1
     592:	68 01 02 00 00       	push   $0x201
     597:	ff 75 e0             	pushl  -0x20(%ebp)
     59a:	ff 75 e4             	pushl  -0x1c(%ebp)
     59d:	ff 75 08             	pushl  0x8(%ebp)
     5a0:	e8 f3 fc ff ff       	call   0x298
     5a5:	89 45 08             	mov    %eax,0x8(%ebp)
     5a8:	83 c4 20             	add    $0x20,%esp
     5ab:	eb 97                	jmp    0x544
     5ad:	83 ec 0c             	sub    $0xc,%esp
     5b0:	6a 01                	push   $0x1
     5b2:	68 01 02 00 00       	push   $0x201
     5b7:	ff 75 e0             	pushl  -0x20(%ebp)
     5ba:	ff 75 e4             	pushl  -0x1c(%ebp)
     5bd:	ff 75 08             	pushl  0x8(%ebp)
     5c0:	e8 d3 fc ff ff       	call   0x298
     5c5:	89 45 08             	mov    %eax,0x8(%ebp)
     5c8:	83 c4 20             	add    $0x20,%esp
     5cb:	e9 74 ff ff ff       	jmp    0x544
     5d0:	8b 45 08             	mov    0x8(%ebp),%eax
     5d3:	8d 65 f4             	lea    -0xc(%ebp),%esp
     5d6:	5b                   	pop    %ebx
     5d7:	5e                   	pop    %esi
     5d8:	5f                   	pop    %edi
     5d9:	5d                   	pop    %ebp
     5da:	c3                   	ret    
     5db:	f3 0f 1e fb          	endbr32 
     5df:	55                   	push   %ebp
     5e0:	89 e5                	mov    %esp,%ebp
     5e2:	57                   	push   %edi
     5e3:	56                   	push   %esi
     5e4:	53                   	push   %ebx
     5e5:	83 ec 30             	sub    $0x30,%esp
     5e8:	8b 75 08             	mov    0x8(%ebp),%esi
     5eb:	8b 7d 0c             	mov    0xc(%ebp),%edi
     5ee:	68 60 10 00 00       	push   $0x1060
     5f3:	57                   	push   %edi
     5f4:	56                   	push   %esi
     5f5:	e8 9d fe ff ff       	call   0x497
     5fa:	83 c4 10             	add    $0x10,%esp
     5fd:	85 c0                	test   %eax,%eax
     5ff:	75 1d                	jne    0x61e
     601:	89 c3                	mov    %eax,%ebx
     603:	e8 62 fc ff ff       	call   0x26a
     608:	89 45 d0             	mov    %eax,-0x30(%ebp)
     60b:	83 ec 04             	sub    $0x4,%esp
     60e:	57                   	push   %edi
     60f:	56                   	push   %esi
     610:	50                   	push   %eax
     611:	e8 f1 fe ff ff       	call   0x507
     616:	89 45 d4             	mov    %eax,-0x2c(%ebp)
     619:	83 c4 10             	add    $0x10,%esp
     61c:	eb 3b                	jmp    0x659
     61e:	83 ec 08             	sub    $0x8,%esp
     621:	57                   	push   %edi
     622:	56                   	push   %esi
     623:	e8 97 01 00 00       	call   0x7bf
     628:	89 45 d4             	mov    %eax,-0x2c(%ebp)
     62b:	83 c4 10             	add    $0x10,%esp
     62e:	8b 45 d4             	mov    -0x2c(%ebp),%eax
     631:	8d 65 f4             	lea    -0xc(%ebp),%esp
     634:	5b                   	pop    %ebx
     635:	5e                   	pop    %esi
     636:	5f                   	pop    %edi
     637:	5d                   	pop    %ebp
     638:	c3                   	ret    
     639:	83 ec 0c             	sub    $0xc,%esp
     63c:	68 62 10 00 00       	push   $0x1062
     641:	e8 09 fa ff ff       	call   0x4f
     646:	83 ec 04             	sub    $0x4,%esp
     649:	57                   	push   %edi
     64a:	56                   	push   %esi
     64b:	ff 75 d4             	pushl  -0x2c(%ebp)
     64e:	e8 b4 fe ff ff       	call   0x507
     653:	89 45 d4             	mov    %eax,-0x2c(%ebp)
     656:	83 c4 10             	add    $0x10,%esp
     659:	83 ec 04             	sub    $0x4,%esp
     65c:	68 77 10 00 00       	push   $0x1077
     661:	57                   	push   %edi
     662:	56                   	push   %esi
     663:	e8 2f fe ff ff       	call   0x497
     668:	83 c4 10             	add    $0x10,%esp
     66b:	85 c0                	test   %eax,%eax
     66d:	75 41                	jne    0x6b0
     66f:	8d 45 e0             	lea    -0x20(%ebp),%eax
     672:	50                   	push   %eax
     673:	8d 45 e4             	lea    -0x1c(%ebp),%eax
     676:	50                   	push   %eax
     677:	57                   	push   %edi
     678:	56                   	push   %esi
     679:	e8 0e fd ff ff       	call   0x38c
     67e:	83 c4 10             	add    $0x10,%esp
     681:	85 c0                	test   %eax,%eax
     683:	74 2b                	je     0x6b0
     685:	83 f8 61             	cmp    $0x61,%eax
     688:	75 af                	jne    0x639
     68a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     68d:	8b 55 d0             	mov    -0x30(%ebp),%edx
     690:	89 44 9a 04          	mov    %eax,0x4(%edx,%ebx,4)
     694:	8b 45 e0             	mov    -0x20(%ebp),%eax
     697:	89 44 9a 2c          	mov    %eax,0x2c(%edx,%ebx,4)
     69b:	83 c3 01             	add    $0x1,%ebx
     69e:	83 fb 09             	cmp    $0x9,%ebx
     6a1:	7e a3                	jle    0x646
     6a3:	83 ec 0c             	sub    $0xc,%esp
     6a6:	68 69 10 00 00       	push   $0x1069
     6ab:	e8 9f f9 ff ff       	call   0x4f
     6b0:	8b 45 d0             	mov    -0x30(%ebp),%eax
     6b3:	c7 44 98 04 00 00 00 	movl   $0x0,0x4(%eax,%ebx,4)
     6ba:	00 
     6bb:	c7 44 98 2c 00 00 00 	movl   $0x0,0x2c(%eax,%ebx,4)
     6c2:	00 
     6c3:	e9 66 ff ff ff       	jmp    0x62e
     6c8:	f3 0f 1e fb          	endbr32 
     6cc:	55                   	push   %ebp
     6cd:	89 e5                	mov    %esp,%ebp
     6cf:	57                   	push   %edi
     6d0:	56                   	push   %esi
     6d1:	53                   	push   %ebx
     6d2:	83 ec 14             	sub    $0x14,%esp
     6d5:	8b 75 08             	mov    0x8(%ebp),%esi
     6d8:	8b 7d 0c             	mov    0xc(%ebp),%edi
     6db:	57                   	push   %edi
     6dc:	56                   	push   %esi
     6dd:	e8 f9 fe ff ff       	call   0x5db
     6e2:	89 c3                	mov    %eax,%ebx
     6e4:	83 c4 0c             	add    $0xc,%esp
     6e7:	68 7c 10 00 00       	push   $0x107c
     6ec:	57                   	push   %edi
     6ed:	56                   	push   %esi
     6ee:	e8 a4 fd ff ff       	call   0x497
     6f3:	83 c4 10             	add    $0x10,%esp
     6f6:	85 c0                	test   %eax,%eax
     6f8:	75 0a                	jne    0x704
     6fa:	89 d8                	mov    %ebx,%eax
     6fc:	8d 65 f4             	lea    -0xc(%ebp),%esp
     6ff:	5b                   	pop    %ebx
     700:	5e                   	pop    %esi
     701:	5f                   	pop    %edi
     702:	5d                   	pop    %ebp
     703:	c3                   	ret    
     704:	6a 00                	push   $0x0
     706:	6a 00                	push   $0x0
     708:	57                   	push   %edi
     709:	56                   	push   %esi
     70a:	e8 7d fc ff ff       	call   0x38c
     70f:	83 c4 08             	add    $0x8,%esp
     712:	57                   	push   %edi
     713:	56                   	push   %esi
     714:	e8 af ff ff ff       	call   0x6c8
     719:	83 c4 08             	add    $0x8,%esp
     71c:	50                   	push   %eax
     71d:	53                   	push   %ebx
     71e:	e8 c1 fb ff ff       	call   0x2e4
     723:	89 c3                	mov    %eax,%ebx
     725:	83 c4 10             	add    $0x10,%esp
     728:	eb d0                	jmp    0x6fa
     72a:	f3 0f 1e fb          	endbr32 
     72e:	55                   	push   %ebp
     72f:	89 e5                	mov    %esp,%ebp
     731:	57                   	push   %edi
     732:	56                   	push   %esi
     733:	53                   	push   %ebx
     734:	83 ec 14             	sub    $0x14,%esp
     737:	8b 75 08             	mov    0x8(%ebp),%esi
     73a:	8b 7d 0c             	mov    0xc(%ebp),%edi
     73d:	57                   	push   %edi
     73e:	56                   	push   %esi
     73f:	e8 84 ff ff ff       	call   0x6c8
     744:	89 c3                	mov    %eax,%ebx
     746:	83 c4 10             	add    $0x10,%esp
     749:	83 ec 04             	sub    $0x4,%esp
     74c:	68 7e 10 00 00       	push   $0x107e
     751:	57                   	push   %edi
     752:	56                   	push   %esi
     753:	e8 3f fd ff ff       	call   0x497
     758:	83 c4 10             	add    $0x10,%esp
     75b:	85 c0                	test   %eax,%eax
     75d:	74 1a                	je     0x779
     75f:	6a 00                	push   $0x0
     761:	6a 00                	push   $0x0
     763:	57                   	push   %edi
     764:	56                   	push   %esi
     765:	e8 22 fc ff ff       	call   0x38c
     76a:	89 1c 24             	mov    %ebx,(%esp)
     76d:	e8 e6 fb ff ff       	call   0x358
     772:	89 c3                	mov    %eax,%ebx
     774:	83 c4 10             	add    $0x10,%esp
     777:	eb d0                	jmp    0x749
     779:	83 ec 04             	sub    $0x4,%esp
     77c:	68 7a 10 00 00       	push   $0x107a
     781:	57                   	push   %edi
     782:	56                   	push   %esi
     783:	e8 0f fd ff ff       	call   0x497
     788:	83 c4 10             	add    $0x10,%esp
     78b:	85 c0                	test   %eax,%eax
     78d:	75 0a                	jne    0x799
     78f:	89 d8                	mov    %ebx,%eax
     791:	8d 65 f4             	lea    -0xc(%ebp),%esp
     794:	5b                   	pop    %ebx
     795:	5e                   	pop    %esi
     796:	5f                   	pop    %edi
     797:	5d                   	pop    %ebp
     798:	c3                   	ret    
     799:	6a 00                	push   $0x0
     79b:	6a 00                	push   $0x0
     79d:	57                   	push   %edi
     79e:	56                   	push   %esi
     79f:	e8 e8 fb ff ff       	call   0x38c
     7a4:	83 c4 08             	add    $0x8,%esp
     7a7:	57                   	push   %edi
     7a8:	56                   	push   %esi
     7a9:	e8 7c ff ff ff       	call   0x72a
     7ae:	83 c4 08             	add    $0x8,%esp
     7b1:	50                   	push   %eax
     7b2:	53                   	push   %ebx
     7b3:	e8 66 fb ff ff       	call   0x31e
     7b8:	89 c3                	mov    %eax,%ebx
     7ba:	83 c4 10             	add    $0x10,%esp
     7bd:	eb d0                	jmp    0x78f
     7bf:	f3 0f 1e fb          	endbr32 
     7c3:	55                   	push   %ebp
     7c4:	89 e5                	mov    %esp,%ebp
     7c6:	57                   	push   %edi
     7c7:	56                   	push   %esi
     7c8:	53                   	push   %ebx
     7c9:	83 ec 10             	sub    $0x10,%esp
     7cc:	8b 5d 08             	mov    0x8(%ebp),%ebx
     7cf:	8b 75 0c             	mov    0xc(%ebp),%esi
     7d2:	68 60 10 00 00       	push   $0x1060
     7d7:	56                   	push   %esi
     7d8:	53                   	push   %ebx
     7d9:	e8 b9 fc ff ff       	call   0x497
     7de:	83 c4 10             	add    $0x10,%esp
     7e1:	85 c0                	test   %eax,%eax
     7e3:	74 4b                	je     0x830
     7e5:	6a 00                	push   $0x0
     7e7:	6a 00                	push   $0x0
     7e9:	56                   	push   %esi
     7ea:	53                   	push   %ebx
     7eb:	e8 9c fb ff ff       	call   0x38c
     7f0:	83 c4 08             	add    $0x8,%esp
     7f3:	56                   	push   %esi
     7f4:	53                   	push   %ebx
     7f5:	e8 30 ff ff ff       	call   0x72a
     7fa:	89 c7                	mov    %eax,%edi
     7fc:	83 c4 0c             	add    $0xc,%esp
     7ff:	68 9c 10 00 00       	push   $0x109c
     804:	56                   	push   %esi
     805:	53                   	push   %ebx
     806:	e8 8c fc ff ff       	call   0x497
     80b:	83 c4 10             	add    $0x10,%esp
     80e:	85 c0                	test   %eax,%eax
     810:	74 2b                	je     0x83d
     812:	6a 00                	push   $0x0
     814:	6a 00                	push   $0x0
     816:	56                   	push   %esi
     817:	53                   	push   %ebx
     818:	e8 6f fb ff ff       	call   0x38c
     81d:	83 c4 0c             	add    $0xc,%esp
     820:	56                   	push   %esi
     821:	53                   	push   %ebx
     822:	57                   	push   %edi
     823:	e8 df fc ff ff       	call   0x507
     828:	8d 65 f4             	lea    -0xc(%ebp),%esp
     82b:	5b                   	pop    %ebx
     82c:	5e                   	pop    %esi
     82d:	5f                   	pop    %edi
     82e:	5d                   	pop    %ebp
     82f:	c3                   	ret    
     830:	83 ec 0c             	sub    $0xc,%esp
     833:	68 80 10 00 00       	push   $0x1080
     838:	e8 12 f8 ff ff       	call   0x4f
     83d:	83 ec 0c             	sub    $0xc,%esp
     840:	68 8b 10 00 00       	push   $0x108b
     845:	e8 05 f8 ff ff       	call   0x4f
     84a:	f3 0f 1e fb          	endbr32 
     84e:	55                   	push   %ebp
     84f:	89 e5                	mov    %esp,%ebp
     851:	53                   	push   %ebx
     852:	83 ec 04             	sub    $0x4,%esp
     855:	8b 5d 08             	mov    0x8(%ebp),%ebx
     858:	85 db                	test   %ebx,%ebx
     85a:	74 3b                	je     0x897
     85c:	8b 03                	mov    (%ebx),%eax
     85e:	83 f8 05             	cmp    $0x5,%eax
     861:	77 34                	ja     0x897
     863:	3e ff 24 85 dc 10 00 	notrack jmp *0x10dc(,%eax,4)
     86a:	00 
     86b:	b8 00 00 00 00       	mov    $0x0,%eax
     870:	83 7c 83 04 00       	cmpl   $0x0,0x4(%ebx,%eax,4)
     875:	74 20                	je     0x897
     877:	8b 54 83 2c          	mov    0x2c(%ebx,%eax,4),%edx
     87b:	c6 02 00             	movb   $0x0,(%edx)
     87e:	83 c0 01             	add    $0x1,%eax
     881:	eb ed                	jmp    0x870
     883:	83 ec 0c             	sub    $0xc,%esp
     886:	ff 73 04             	pushl  0x4(%ebx)
     889:	e8 bc ff ff ff       	call   0x84a
     88e:	8b 43 0c             	mov    0xc(%ebx),%eax
     891:	c6 00 00             	movb   $0x0,(%eax)
     894:	83 c4 10             	add    $0x10,%esp
     897:	89 d8                	mov    %ebx,%eax
     899:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     89c:	c9                   	leave  
     89d:	c3                   	ret    
     89e:	83 ec 0c             	sub    $0xc,%esp
     8a1:	ff 73 04             	pushl  0x4(%ebx)
     8a4:	e8 a1 ff ff ff       	call   0x84a
     8a9:	83 c4 04             	add    $0x4,%esp
     8ac:	ff 73 08             	pushl  0x8(%ebx)
     8af:	e8 96 ff ff ff       	call   0x84a
     8b4:	83 c4 10             	add    $0x10,%esp
     8b7:	eb de                	jmp    0x897
     8b9:	83 ec 0c             	sub    $0xc,%esp
     8bc:	ff 73 04             	pushl  0x4(%ebx)
     8bf:	e8 86 ff ff ff       	call   0x84a
     8c4:	83 c4 04             	add    $0x4,%esp
     8c7:	ff 73 08             	pushl  0x8(%ebx)
     8ca:	e8 7b ff ff ff       	call   0x84a
     8cf:	83 c4 10             	add    $0x10,%esp
     8d2:	eb c3                	jmp    0x897
     8d4:	83 ec 0c             	sub    $0xc,%esp
     8d7:	ff 73 04             	pushl  0x4(%ebx)
     8da:	e8 6b ff ff ff       	call   0x84a
     8df:	83 c4 10             	add    $0x10,%esp
     8e2:	eb b3                	jmp    0x897
     8e4:	f3 0f 1e fb          	endbr32 
     8e8:	55                   	push   %ebp
     8e9:	89 e5                	mov    %esp,%ebp
     8eb:	56                   	push   %esi
     8ec:	53                   	push   %ebx
     8ed:	8b 5d 08             	mov    0x8(%ebp),%ebx
     8f0:	83 ec 0c             	sub    $0xc,%esp
     8f3:	53                   	push   %ebx
     8f4:	e8 99 01 00 00       	call   0xa92
     8f9:	01 c3                	add    %eax,%ebx
     8fb:	83 c4 08             	add    $0x8,%esp
     8fe:	53                   	push   %ebx
     8ff:	8d 45 08             	lea    0x8(%ebp),%eax
     902:	50                   	push   %eax
     903:	e8 22 fe ff ff       	call   0x72a
     908:	89 c6                	mov    %eax,%esi
     90a:	83 c4 0c             	add    $0xc,%esp
     90d:	68 2a 10 00 00       	push   $0x102a
     912:	53                   	push   %ebx
     913:	8d 45 08             	lea    0x8(%ebp),%eax
     916:	50                   	push   %eax
     917:	e8 7b fb ff ff       	call   0x497
     91c:	8b 45 08             	mov    0x8(%ebp),%eax
     91f:	83 c4 10             	add    $0x10,%esp
     922:	39 d8                	cmp    %ebx,%eax
     924:	75 12                	jne    0x938
     926:	83 ec 0c             	sub    $0xc,%esp
     929:	56                   	push   %esi
     92a:	e8 1b ff ff ff       	call   0x84a
     92f:	89 f0                	mov    %esi,%eax
     931:	8d 65 f8             	lea    -0x8(%ebp),%esp
     934:	5b                   	pop    %ebx
     935:	5e                   	pop    %esi
     936:	5d                   	pop    %ebp
     937:	c3                   	ret    
     938:	83 ec 04             	sub    $0x4,%esp
     93b:	50                   	push   %eax
     93c:	68 9e 10 00 00       	push   $0x109e
     941:	6a 02                	push   $0x2
     943:	e8 04 04 00 00       	call   0xd4c
     948:	c7 04 24 62 10 00 00 	movl   $0x1062,(%esp)
     94f:	e8 fb f6 ff ff       	call   0x4f
     954:	f3 0f 1e fb          	endbr32 
     958:	8d 4c 24 04          	lea    0x4(%esp),%ecx
     95c:	83 e4 f0             	and    $0xfffffff0,%esp
     95f:	ff 71 fc             	pushl  -0x4(%ecx)
     962:	55                   	push   %ebp
     963:	89 e5                	mov    %esp,%ebp
     965:	51                   	push   %ecx
     966:	83 ec 14             	sub    $0x14,%esp
     969:	83 ec 08             	sub    $0x8,%esp
     96c:	6a 02                	push   $0x2
     96e:	68 ad 10 00 00       	push   $0x10ad
     973:	e8 c3 02 00 00       	call   0xc3b
     978:	83 c4 10             	add    $0x10,%esp
     97b:	85 c0                	test   %eax,%eax
     97d:	78 2f                	js     0x9ae
     97f:	83 f8 02             	cmp    $0x2,%eax
     982:	7e e5                	jle    0x969
     984:	83 ec 0c             	sub    $0xc,%esp
     987:	50                   	push   %eax
     988:	e8 96 02 00 00       	call   0xc23
     98d:	83 c4 10             	add    $0x10,%esp
     990:	eb 1c                	jmp    0x9ae
     992:	e8 dd f6 ff ff       	call   0x74
     997:	85 c0                	test   %eax,%eax
     999:	0f 84 80 00 00 00    	je     0xa1f
     99f:	83 ec 0c             	sub    $0xc,%esp
     9a2:	8d 45 f4             	lea    -0xc(%ebp),%eax
     9a5:	50                   	push   %eax
     9a6:	e8 58 02 00 00       	call   0xc03
     9ab:	83 c4 10             	add    $0x10,%esp
     9ae:	83 ec 08             	sub    $0x8,%esp
     9b1:	6a 64                	push   $0x64
     9b3:	68 a0 16 00 00       	push   $0x16a0
     9b8:	e8 43 f6 ff ff       	call   0x0
     9bd:	83 c4 10             	add    $0x10,%esp
     9c0:	85 c0                	test   %eax,%eax
     9c2:	78 70                	js     0xa34
     9c4:	80 3d a0 16 00 00 63 	cmpb   $0x63,0x16a0
     9cb:	75 c5                	jne    0x992
     9cd:	80 3d a1 16 00 00 64 	cmpb   $0x64,0x16a1
     9d4:	75 bc                	jne    0x992
     9d6:	80 3d a2 16 00 00 20 	cmpb   $0x20,0x16a2
     9dd:	75 b3                	jne    0x992
     9df:	83 ec 0c             	sub    $0xc,%esp
     9e2:	68 a0 16 00 00       	push   $0x16a0
     9e7:	e8 a6 00 00 00       	call   0xa92
     9ec:	c6 80 9f 16 00 00 00 	movb   $0x0,0x169f(%eax)
     9f3:	c7 04 24 a3 16 00 00 	movl   $0x16a3,(%esp)
     9fa:	e8 6c 02 00 00       	call   0xc6b
     9ff:	83 c4 10             	add    $0x10,%esp
     a02:	85 c0                	test   %eax,%eax
     a04:	79 a8                	jns    0x9ae
     a06:	83 ec 04             	sub    $0x4,%esp
     a09:	68 a3 16 00 00       	push   $0x16a3
     a0e:	68 b5 10 00 00       	push   $0x10b5
     a13:	6a 02                	push   $0x2
     a15:	e8 32 03 00 00       	call   0xd4c
     a1a:	83 c4 10             	add    $0x10,%esp
     a1d:	eb 8f                	jmp    0x9ae
     a1f:	83 ec 0c             	sub    $0xc,%esp
     a22:	68 a0 16 00 00       	push   $0x16a0
     a27:	e8 b8 fe ff ff       	call   0x8e4
     a2c:	89 04 24             	mov    %eax,(%esp)
     a2f:	e8 63 f6 ff ff       	call   0x97
     a34:	83 ec 0c             	sub    $0xc,%esp
     a37:	6a 00                	push   $0x0
     a39:	e8 bd 01 00 00       	call   0xbfb
     a3e:	f3 0f 1e fb          	endbr32 
     a42:	55                   	push   %ebp
     a43:	89 e5                	mov    %esp,%ebp
     a45:	56                   	push   %esi
     a46:	53                   	push   %ebx
     a47:	8b 75 08             	mov    0x8(%ebp),%esi
     a4a:	8b 55 0c             	mov    0xc(%ebp),%edx
     a4d:	89 f0                	mov    %esi,%eax
     a4f:	89 d1                	mov    %edx,%ecx
     a51:	83 c2 01             	add    $0x1,%edx
     a54:	89 c3                	mov    %eax,%ebx
     a56:	83 c0 01             	add    $0x1,%eax
     a59:	0f b6 09             	movzbl (%ecx),%ecx
     a5c:	88 0b                	mov    %cl,(%ebx)
     a5e:	84 c9                	test   %cl,%cl
     a60:	75 ed                	jne    0xa4f
     a62:	89 f0                	mov    %esi,%eax
     a64:	5b                   	pop    %ebx
     a65:	5e                   	pop    %esi
     a66:	5d                   	pop    %ebp
     a67:	c3                   	ret    
     a68:	f3 0f 1e fb          	endbr32 
     a6c:	55                   	push   %ebp
     a6d:	89 e5                	mov    %esp,%ebp
     a6f:	8b 4d 08             	mov    0x8(%ebp),%ecx
     a72:	8b 55 0c             	mov    0xc(%ebp),%edx
     a75:	0f b6 01             	movzbl (%ecx),%eax
     a78:	84 c0                	test   %al,%al
     a7a:	74 0c                	je     0xa88
     a7c:	3a 02                	cmp    (%edx),%al
     a7e:	75 08                	jne    0xa88
     a80:	83 c1 01             	add    $0x1,%ecx
     a83:	83 c2 01             	add    $0x1,%edx
     a86:	eb ed                	jmp    0xa75
     a88:	0f b6 c0             	movzbl %al,%eax
     a8b:	0f b6 12             	movzbl (%edx),%edx
     a8e:	29 d0                	sub    %edx,%eax
     a90:	5d                   	pop    %ebp
     a91:	c3                   	ret    
     a92:	f3 0f 1e fb          	endbr32 
     a96:	55                   	push   %ebp
     a97:	89 e5                	mov    %esp,%ebp
     a99:	8b 4d 08             	mov    0x8(%ebp),%ecx
     a9c:	b8 00 00 00 00       	mov    $0x0,%eax
     aa1:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
     aa5:	74 05                	je     0xaac
     aa7:	83 c0 01             	add    $0x1,%eax
     aaa:	eb f5                	jmp    0xaa1
     aac:	5d                   	pop    %ebp
     aad:	c3                   	ret    
     aae:	f3 0f 1e fb          	endbr32 
     ab2:	55                   	push   %ebp
     ab3:	89 e5                	mov    %esp,%ebp
     ab5:	57                   	push   %edi
     ab6:	8b 55 08             	mov    0x8(%ebp),%edx
     ab9:	89 d7                	mov    %edx,%edi
     abb:	8b 4d 10             	mov    0x10(%ebp),%ecx
     abe:	8b 45 0c             	mov    0xc(%ebp),%eax
     ac1:	fc                   	cld    
     ac2:	f3 aa                	rep stos %al,%es:(%edi)
     ac4:	89 d0                	mov    %edx,%eax
     ac6:	5f                   	pop    %edi
     ac7:	5d                   	pop    %ebp
     ac8:	c3                   	ret    
     ac9:	f3 0f 1e fb          	endbr32 
     acd:	55                   	push   %ebp
     ace:	89 e5                	mov    %esp,%ebp
     ad0:	8b 45 08             	mov    0x8(%ebp),%eax
     ad3:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
     ad7:	0f b6 10             	movzbl (%eax),%edx
     ada:	84 d2                	test   %dl,%dl
     adc:	74 09                	je     0xae7
     ade:	38 ca                	cmp    %cl,%dl
     ae0:	74 0a                	je     0xaec
     ae2:	83 c0 01             	add    $0x1,%eax
     ae5:	eb f0                	jmp    0xad7
     ae7:	b8 00 00 00 00       	mov    $0x0,%eax
     aec:	5d                   	pop    %ebp
     aed:	c3                   	ret    
     aee:	f3 0f 1e fb          	endbr32 
     af2:	55                   	push   %ebp
     af3:	89 e5                	mov    %esp,%ebp
     af5:	57                   	push   %edi
     af6:	56                   	push   %esi
     af7:	53                   	push   %ebx
     af8:	83 ec 1c             	sub    $0x1c,%esp
     afb:	8b 7d 08             	mov    0x8(%ebp),%edi
     afe:	bb 00 00 00 00       	mov    $0x0,%ebx
     b03:	89 de                	mov    %ebx,%esi
     b05:	83 c3 01             	add    $0x1,%ebx
     b08:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
     b0b:	7d 2e                	jge    0xb3b
     b0d:	83 ec 04             	sub    $0x4,%esp
     b10:	6a 01                	push   $0x1
     b12:	8d 45 e7             	lea    -0x19(%ebp),%eax
     b15:	50                   	push   %eax
     b16:	6a 00                	push   $0x0
     b18:	e8 f6 00 00 00       	call   0xc13
     b1d:	83 c4 10             	add    $0x10,%esp
     b20:	85 c0                	test   %eax,%eax
     b22:	7e 17                	jle    0xb3b
     b24:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
     b28:	88 04 37             	mov    %al,(%edi,%esi,1)
     b2b:	3c 0a                	cmp    $0xa,%al
     b2d:	0f 94 c2             	sete   %dl
     b30:	3c 0d                	cmp    $0xd,%al
     b32:	0f 94 c0             	sete   %al
     b35:	08 c2                	or     %al,%dl
     b37:	74 ca                	je     0xb03
     b39:	89 de                	mov    %ebx,%esi
     b3b:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
     b3f:	89 f8                	mov    %edi,%eax
     b41:	8d 65 f4             	lea    -0xc(%ebp),%esp
     b44:	5b                   	pop    %ebx
     b45:	5e                   	pop    %esi
     b46:	5f                   	pop    %edi
     b47:	5d                   	pop    %ebp
     b48:	c3                   	ret    
     b49:	f3 0f 1e fb          	endbr32 
     b4d:	55                   	push   %ebp
     b4e:	89 e5                	mov    %esp,%ebp
     b50:	56                   	push   %esi
     b51:	53                   	push   %ebx
     b52:	83 ec 08             	sub    $0x8,%esp
     b55:	6a 00                	push   $0x0
     b57:	ff 75 08             	pushl  0x8(%ebp)
     b5a:	e8 dc 00 00 00       	call   0xc3b
     b5f:	83 c4 10             	add    $0x10,%esp
     b62:	85 c0                	test   %eax,%eax
     b64:	78 24                	js     0xb8a
     b66:	89 c3                	mov    %eax,%ebx
     b68:	83 ec 08             	sub    $0x8,%esp
     b6b:	ff 75 0c             	pushl  0xc(%ebp)
     b6e:	50                   	push   %eax
     b6f:	e8 df 00 00 00       	call   0xc53
     b74:	89 c6                	mov    %eax,%esi
     b76:	89 1c 24             	mov    %ebx,(%esp)
     b79:	e8 a5 00 00 00       	call   0xc23
     b7e:	83 c4 10             	add    $0x10,%esp
     b81:	89 f0                	mov    %esi,%eax
     b83:	8d 65 f8             	lea    -0x8(%ebp),%esp
     b86:	5b                   	pop    %ebx
     b87:	5e                   	pop    %esi
     b88:	5d                   	pop    %ebp
     b89:	c3                   	ret    
     b8a:	be ff ff ff ff       	mov    $0xffffffff,%esi
     b8f:	eb f0                	jmp    0xb81
     b91:	f3 0f 1e fb          	endbr32 
     b95:	55                   	push   %ebp
     b96:	89 e5                	mov    %esp,%ebp
     b98:	53                   	push   %ebx
     b99:	8b 4d 08             	mov    0x8(%ebp),%ecx
     b9c:	ba 00 00 00 00       	mov    $0x0,%edx
     ba1:	0f b6 01             	movzbl (%ecx),%eax
     ba4:	8d 58 d0             	lea    -0x30(%eax),%ebx
     ba7:	80 fb 09             	cmp    $0x9,%bl
     baa:	77 12                	ja     0xbbe
     bac:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
     baf:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
     bb2:	83 c1 01             	add    $0x1,%ecx
     bb5:	0f be c0             	movsbl %al,%eax
     bb8:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
     bbc:	eb e3                	jmp    0xba1
     bbe:	89 d0                	mov    %edx,%eax
     bc0:	5b                   	pop    %ebx
     bc1:	5d                   	pop    %ebp
     bc2:	c3                   	ret    
     bc3:	f3 0f 1e fb          	endbr32 
     bc7:	55                   	push   %ebp
     bc8:	89 e5                	mov    %esp,%ebp
     bca:	56                   	push   %esi
     bcb:	53                   	push   %ebx
     bcc:	8b 75 08             	mov    0x8(%ebp),%esi
     bcf:	8b 4d 0c             	mov    0xc(%ebp),%ecx
     bd2:	8b 45 10             	mov    0x10(%ebp),%eax
     bd5:	89 f2                	mov    %esi,%edx
     bd7:	8d 58 ff             	lea    -0x1(%eax),%ebx
     bda:	85 c0                	test   %eax,%eax
     bdc:	7e 0f                	jle    0xbed
     bde:	0f b6 01             	movzbl (%ecx),%eax
     be1:	88 02                	mov    %al,(%edx)
     be3:	8d 49 01             	lea    0x1(%ecx),%ecx
     be6:	8d 52 01             	lea    0x1(%edx),%edx
     be9:	89 d8                	mov    %ebx,%eax
     beb:	eb ea                	jmp    0xbd7
     bed:	89 f0                	mov    %esi,%eax
     bef:	5b                   	pop    %ebx
     bf0:	5e                   	pop    %esi
     bf1:	5d                   	pop    %ebp
     bf2:	c3                   	ret    
     bf3:	b8 01 00 00 00       	mov    $0x1,%eax
     bf8:	cd 40                	int    $0x40
     bfa:	c3                   	ret    
     bfb:	b8 02 00 00 00       	mov    $0x2,%eax
     c00:	cd 40                	int    $0x40
     c02:	c3                   	ret    
     c03:	b8 03 00 00 00       	mov    $0x3,%eax
     c08:	cd 40                	int    $0x40
     c0a:	c3                   	ret    
     c0b:	b8 04 00 00 00       	mov    $0x4,%eax
     c10:	cd 40                	int    $0x40
     c12:	c3                   	ret    
     c13:	b8 05 00 00 00       	mov    $0x5,%eax
     c18:	cd 40                	int    $0x40
     c1a:	c3                   	ret    
     c1b:	b8 10 00 00 00       	mov    $0x10,%eax
     c20:	cd 40                	int    $0x40
     c22:	c3                   	ret    
     c23:	b8 15 00 00 00       	mov    $0x15,%eax
     c28:	cd 40                	int    $0x40
     c2a:	c3                   	ret    
     c2b:	b8 06 00 00 00       	mov    $0x6,%eax
     c30:	cd 40                	int    $0x40
     c32:	c3                   	ret    
     c33:	b8 07 00 00 00       	mov    $0x7,%eax
     c38:	cd 40                	int    $0x40
     c3a:	c3                   	ret    
     c3b:	b8 0f 00 00 00       	mov    $0xf,%eax
     c40:	cd 40                	int    $0x40
     c42:	c3                   	ret    
     c43:	b8 11 00 00 00       	mov    $0x11,%eax
     c48:	cd 40                	int    $0x40
     c4a:	c3                   	ret    
     c4b:	b8 12 00 00 00       	mov    $0x12,%eax
     c50:	cd 40                	int    $0x40
     c52:	c3                   	ret    
     c53:	b8 08 00 00 00       	mov    $0x8,%eax
     c58:	cd 40                	int    $0x40
     c5a:	c3                   	ret    
     c5b:	b8 13 00 00 00       	mov    $0x13,%eax
     c60:	cd 40                	int    $0x40
     c62:	c3                   	ret    
     c63:	b8 14 00 00 00       	mov    $0x14,%eax
     c68:	cd 40                	int    $0x40
     c6a:	c3                   	ret    
     c6b:	b8 09 00 00 00       	mov    $0x9,%eax
     c70:	cd 40                	int    $0x40
     c72:	c3                   	ret    
     c73:	b8 0a 00 00 00       	mov    $0xa,%eax
     c78:	cd 40                	int    $0x40
     c7a:	c3                   	ret    
     c7b:	b8 0b 00 00 00       	mov    $0xb,%eax
     c80:	cd 40                	int    $0x40
     c82:	c3                   	ret    
     c83:	b8 0c 00 00 00       	mov    $0xc,%eax
     c88:	cd 40                	int    $0x40
     c8a:	c3                   	ret    
     c8b:	b8 0d 00 00 00       	mov    $0xd,%eax
     c90:	cd 40                	int    $0x40
     c92:	c3                   	ret    
     c93:	b8 0e 00 00 00       	mov    $0xe,%eax
     c98:	cd 40                	int    $0x40
     c9a:	c3                   	ret    
     c9b:	b8 16 00 00 00       	mov    $0x16,%eax
     ca0:	cd 40                	int    $0x40
     ca2:	c3                   	ret    
     ca3:	b8 17 00 00 00       	mov    $0x17,%eax
     ca8:	cd 40                	int    $0x40
     caa:	c3                   	ret    
     cab:	55                   	push   %ebp
     cac:	89 e5                	mov    %esp,%ebp
     cae:	83 ec 1c             	sub    $0x1c,%esp
     cb1:	88 55 f4             	mov    %dl,-0xc(%ebp)
     cb4:	6a 01                	push   $0x1
     cb6:	8d 55 f4             	lea    -0xc(%ebp),%edx
     cb9:	52                   	push   %edx
     cba:	50                   	push   %eax
     cbb:	e8 5b ff ff ff       	call   0xc1b
     cc0:	83 c4 10             	add    $0x10,%esp
     cc3:	c9                   	leave  
     cc4:	c3                   	ret    
     cc5:	55                   	push   %ebp
     cc6:	89 e5                	mov    %esp,%ebp
     cc8:	57                   	push   %edi
     cc9:	56                   	push   %esi
     cca:	53                   	push   %ebx
     ccb:	83 ec 2c             	sub    $0x2c,%esp
     cce:	89 45 d0             	mov    %eax,-0x30(%ebp)
     cd1:	89 d6                	mov    %edx,%esi
     cd3:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
     cd7:	0f 95 c2             	setne  %dl
     cda:	89 f0                	mov    %esi,%eax
     cdc:	c1 e8 1f             	shr    $0x1f,%eax
     cdf:	84 c2                	test   %al,%dl
     ce1:	74 42                	je     0xd25
     ce3:	f7 de                	neg    %esi
     ce5:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
     cec:	bb 00 00 00 00       	mov    $0x0,%ebx
     cf1:	89 f0                	mov    %esi,%eax
     cf3:	ba 00 00 00 00       	mov    $0x0,%edx
     cf8:	f7 f1                	div    %ecx
     cfa:	89 df                	mov    %ebx,%edi
     cfc:	83 c3 01             	add    $0x1,%ebx
     cff:	0f b6 92 fc 10 00 00 	movzbl 0x10fc(%edx),%edx
     d06:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
     d0a:	89 f2                	mov    %esi,%edx
     d0c:	89 c6                	mov    %eax,%esi
     d0e:	39 d1                	cmp    %edx,%ecx
     d10:	76 df                	jbe    0xcf1
     d12:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
     d16:	74 2f                	je     0xd47
     d18:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
     d1d:	8d 5f 02             	lea    0x2(%edi),%ebx
     d20:	8b 75 d0             	mov    -0x30(%ebp),%esi
     d23:	eb 15                	jmp    0xd3a
     d25:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
     d2c:	eb be                	jmp    0xcec
     d2e:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
     d33:	89 f0                	mov    %esi,%eax
     d35:	e8 71 ff ff ff       	call   0xcab
     d3a:	83 eb 01             	sub    $0x1,%ebx
     d3d:	79 ef                	jns    0xd2e
     d3f:	83 c4 2c             	add    $0x2c,%esp
     d42:	5b                   	pop    %ebx
     d43:	5e                   	pop    %esi
     d44:	5f                   	pop    %edi
     d45:	5d                   	pop    %ebp
     d46:	c3                   	ret    
     d47:	8b 75 d0             	mov    -0x30(%ebp),%esi
     d4a:	eb ee                	jmp    0xd3a
     d4c:	f3 0f 1e fb          	endbr32 
     d50:	55                   	push   %ebp
     d51:	89 e5                	mov    %esp,%ebp
     d53:	57                   	push   %edi
     d54:	56                   	push   %esi
     d55:	53                   	push   %ebx
     d56:	83 ec 1c             	sub    $0x1c,%esp
     d59:	8d 45 10             	lea    0x10(%ebp),%eax
     d5c:	89 45 e4             	mov    %eax,-0x1c(%ebp)
     d5f:	be 00 00 00 00       	mov    $0x0,%esi
     d64:	bb 00 00 00 00       	mov    $0x0,%ebx
     d69:	eb 14                	jmp    0xd7f
     d6b:	89 fa                	mov    %edi,%edx
     d6d:	8b 45 08             	mov    0x8(%ebp),%eax
     d70:	e8 36 ff ff ff       	call   0xcab
     d75:	eb 05                	jmp    0xd7c
     d77:	83 fe 25             	cmp    $0x25,%esi
     d7a:	74 25                	je     0xda1
     d7c:	83 c3 01             	add    $0x1,%ebx
     d7f:	8b 45 0c             	mov    0xc(%ebp),%eax
     d82:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
     d86:	84 c0                	test   %al,%al
     d88:	0f 84 23 01 00 00    	je     0xeb1
     d8e:	0f be f8             	movsbl %al,%edi
     d91:	0f b6 c0             	movzbl %al,%eax
     d94:	85 f6                	test   %esi,%esi
     d96:	75 df                	jne    0xd77
     d98:	83 f8 25             	cmp    $0x25,%eax
     d9b:	75 ce                	jne    0xd6b
     d9d:	89 c6                	mov    %eax,%esi
     d9f:	eb db                	jmp    0xd7c
     da1:	83 f8 64             	cmp    $0x64,%eax
     da4:	74 49                	je     0xdef
     da6:	83 f8 78             	cmp    $0x78,%eax
     da9:	0f 94 c1             	sete   %cl
     dac:	83 f8 70             	cmp    $0x70,%eax
     daf:	0f 94 c2             	sete   %dl
     db2:	08 d1                	or     %dl,%cl
     db4:	75 63                	jne    0xe19
     db6:	83 f8 73             	cmp    $0x73,%eax
     db9:	0f 84 84 00 00 00    	je     0xe43
     dbf:	83 f8 63             	cmp    $0x63,%eax
     dc2:	0f 84 b7 00 00 00    	je     0xe7f
     dc8:	83 f8 25             	cmp    $0x25,%eax
     dcb:	0f 84 cc 00 00 00    	je     0xe9d
     dd1:	ba 25 00 00 00       	mov    $0x25,%edx
     dd6:	8b 45 08             	mov    0x8(%ebp),%eax
     dd9:	e8 cd fe ff ff       	call   0xcab
     dde:	89 fa                	mov    %edi,%edx
     de0:	8b 45 08             	mov    0x8(%ebp),%eax
     de3:	e8 c3 fe ff ff       	call   0xcab
     de8:	be 00 00 00 00       	mov    $0x0,%esi
     ded:	eb 8d                	jmp    0xd7c
     def:	8b 7d e4             	mov    -0x1c(%ebp),%edi
     df2:	8b 17                	mov    (%edi),%edx
     df4:	83 ec 0c             	sub    $0xc,%esp
     df7:	6a 01                	push   $0x1
     df9:	b9 0a 00 00 00       	mov    $0xa,%ecx
     dfe:	8b 45 08             	mov    0x8(%ebp),%eax
     e01:	e8 bf fe ff ff       	call   0xcc5
     e06:	83 c7 04             	add    $0x4,%edi
     e09:	89 7d e4             	mov    %edi,-0x1c(%ebp)
     e0c:	83 c4 10             	add    $0x10,%esp
     e0f:	be 00 00 00 00       	mov    $0x0,%esi
     e14:	e9 63 ff ff ff       	jmp    0xd7c
     e19:	8b 7d e4             	mov    -0x1c(%ebp),%edi
     e1c:	8b 17                	mov    (%edi),%edx
     e1e:	83 ec 0c             	sub    $0xc,%esp
     e21:	6a 00                	push   $0x0
     e23:	b9 10 00 00 00       	mov    $0x10,%ecx
     e28:	8b 45 08             	mov    0x8(%ebp),%eax
     e2b:	e8 95 fe ff ff       	call   0xcc5
     e30:	83 c7 04             	add    $0x4,%edi
     e33:	89 7d e4             	mov    %edi,-0x1c(%ebp)
     e36:	83 c4 10             	add    $0x10,%esp
     e39:	be 00 00 00 00       	mov    $0x0,%esi
     e3e:	e9 39 ff ff ff       	jmp    0xd7c
     e43:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     e46:	8b 30                	mov    (%eax),%esi
     e48:	83 c0 04             	add    $0x4,%eax
     e4b:	89 45 e4             	mov    %eax,-0x1c(%ebp)
     e4e:	85 f6                	test   %esi,%esi
     e50:	75 28                	jne    0xe7a
     e52:	be f4 10 00 00       	mov    $0x10f4,%esi
     e57:	8b 7d 08             	mov    0x8(%ebp),%edi
     e5a:	eb 0d                	jmp    0xe69
     e5c:	0f be d2             	movsbl %dl,%edx
     e5f:	89 f8                	mov    %edi,%eax
     e61:	e8 45 fe ff ff       	call   0xcab
     e66:	83 c6 01             	add    $0x1,%esi
     e69:	0f b6 16             	movzbl (%esi),%edx
     e6c:	84 d2                	test   %dl,%dl
     e6e:	75 ec                	jne    0xe5c
     e70:	be 00 00 00 00       	mov    $0x0,%esi
     e75:	e9 02 ff ff ff       	jmp    0xd7c
     e7a:	8b 7d 08             	mov    0x8(%ebp),%edi
     e7d:	eb ea                	jmp    0xe69
     e7f:	8b 7d e4             	mov    -0x1c(%ebp),%edi
     e82:	0f be 17             	movsbl (%edi),%edx
     e85:	8b 45 08             	mov    0x8(%ebp),%eax
     e88:	e8 1e fe ff ff       	call   0xcab
     e8d:	83 c7 04             	add    $0x4,%edi
     e90:	89 7d e4             	mov    %edi,-0x1c(%ebp)
     e93:	be 00 00 00 00       	mov    $0x0,%esi
     e98:	e9 df fe ff ff       	jmp    0xd7c
     e9d:	89 fa                	mov    %edi,%edx
     e9f:	8b 45 08             	mov    0x8(%ebp),%eax
     ea2:	e8 04 fe ff ff       	call   0xcab
     ea7:	be 00 00 00 00       	mov    $0x0,%esi
     eac:	e9 cb fe ff ff       	jmp    0xd7c
     eb1:	8d 65 f4             	lea    -0xc(%ebp),%esp
     eb4:	5b                   	pop    %ebx
     eb5:	5e                   	pop    %esi
     eb6:	5f                   	pop    %edi
     eb7:	5d                   	pop    %ebp
     eb8:	c3                   	ret    
     eb9:	f3 0f 1e fb          	endbr32 
     ebd:	55                   	push   %ebp
     ebe:	89 e5                	mov    %esp,%ebp
     ec0:	57                   	push   %edi
     ec1:	56                   	push   %esi
     ec2:	53                   	push   %ebx
     ec3:	8b 5d 08             	mov    0x8(%ebp),%ebx
     ec6:	8d 4b f8             	lea    -0x8(%ebx),%ecx
     ec9:	a1 04 17 00 00       	mov    0x1704,%eax
     ece:	eb 02                	jmp    0xed2
     ed0:	89 d0                	mov    %edx,%eax
     ed2:	39 c8                	cmp    %ecx,%eax
     ed4:	73 04                	jae    0xeda
     ed6:	39 08                	cmp    %ecx,(%eax)
     ed8:	77 12                	ja     0xeec
     eda:	8b 10                	mov    (%eax),%edx
     edc:	39 c2                	cmp    %eax,%edx
     ede:	77 f0                	ja     0xed0
     ee0:	39 c8                	cmp    %ecx,%eax
     ee2:	72 08                	jb     0xeec
     ee4:	39 ca                	cmp    %ecx,%edx
     ee6:	77 04                	ja     0xeec
     ee8:	89 d0                	mov    %edx,%eax
     eea:	eb e6                	jmp    0xed2
     eec:	8b 73 fc             	mov    -0x4(%ebx),%esi
     eef:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
     ef2:	8b 10                	mov    (%eax),%edx
     ef4:	39 d7                	cmp    %edx,%edi
     ef6:	74 19                	je     0xf11
     ef8:	89 53 f8             	mov    %edx,-0x8(%ebx)
     efb:	8b 50 04             	mov    0x4(%eax),%edx
     efe:	8d 34 d0             	lea    (%eax,%edx,8),%esi
     f01:	39 ce                	cmp    %ecx,%esi
     f03:	74 1b                	je     0xf20
     f05:	89 08                	mov    %ecx,(%eax)
     f07:	a3 04 17 00 00       	mov    %eax,0x1704
     f0c:	5b                   	pop    %ebx
     f0d:	5e                   	pop    %esi
     f0e:	5f                   	pop    %edi
     f0f:	5d                   	pop    %ebp
     f10:	c3                   	ret    
     f11:	03 72 04             	add    0x4(%edx),%esi
     f14:	89 73 fc             	mov    %esi,-0x4(%ebx)
     f17:	8b 10                	mov    (%eax),%edx
     f19:	8b 12                	mov    (%edx),%edx
     f1b:	89 53 f8             	mov    %edx,-0x8(%ebx)
     f1e:	eb db                	jmp    0xefb
     f20:	03 53 fc             	add    -0x4(%ebx),%edx
     f23:	89 50 04             	mov    %edx,0x4(%eax)
     f26:	8b 53 f8             	mov    -0x8(%ebx),%edx
     f29:	89 10                	mov    %edx,(%eax)
     f2b:	eb da                	jmp    0xf07
     f2d:	55                   	push   %ebp
     f2e:	89 e5                	mov    %esp,%ebp
     f30:	53                   	push   %ebx
     f31:	83 ec 04             	sub    $0x4,%esp
     f34:	89 c3                	mov    %eax,%ebx
     f36:	3d ff 0f 00 00       	cmp    $0xfff,%eax
     f3b:	77 05                	ja     0xf42
     f3d:	bb 00 10 00 00       	mov    $0x1000,%ebx
     f42:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
     f49:	83 ec 0c             	sub    $0xc,%esp
     f4c:	50                   	push   %eax
     f4d:	e8 31 fd ff ff       	call   0xc83
     f52:	83 c4 10             	add    $0x10,%esp
     f55:	83 f8 ff             	cmp    $0xffffffff,%eax
     f58:	74 1c                	je     0xf76
     f5a:	89 58 04             	mov    %ebx,0x4(%eax)
     f5d:	83 c0 08             	add    $0x8,%eax
     f60:	83 ec 0c             	sub    $0xc,%esp
     f63:	50                   	push   %eax
     f64:	e8 50 ff ff ff       	call   0xeb9
     f69:	a1 04 17 00 00       	mov    0x1704,%eax
     f6e:	83 c4 10             	add    $0x10,%esp
     f71:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     f74:	c9                   	leave  
     f75:	c3                   	ret    
     f76:	b8 00 00 00 00       	mov    $0x0,%eax
     f7b:	eb f4                	jmp    0xf71
     f7d:	f3 0f 1e fb          	endbr32 
     f81:	55                   	push   %ebp
     f82:	89 e5                	mov    %esp,%ebp
     f84:	53                   	push   %ebx
     f85:	83 ec 04             	sub    $0x4,%esp
     f88:	8b 45 08             	mov    0x8(%ebp),%eax
     f8b:	8d 58 07             	lea    0x7(%eax),%ebx
     f8e:	c1 eb 03             	shr    $0x3,%ebx
     f91:	83 c3 01             	add    $0x1,%ebx
     f94:	8b 0d 04 17 00 00    	mov    0x1704,%ecx
     f9a:	85 c9                	test   %ecx,%ecx
     f9c:	74 04                	je     0xfa2
     f9e:	8b 01                	mov    (%ecx),%eax
     fa0:	eb 4b                	jmp    0xfed
     fa2:	c7 05 04 17 00 00 08 	movl   $0x1708,0x1704
     fa9:	17 00 00 
     fac:	c7 05 08 17 00 00 08 	movl   $0x1708,0x1708
     fb3:	17 00 00 
     fb6:	c7 05 0c 17 00 00 00 	movl   $0x0,0x170c
     fbd:	00 00 00 
     fc0:	b9 08 17 00 00       	mov    $0x1708,%ecx
     fc5:	eb d7                	jmp    0xf9e
     fc7:	74 1a                	je     0xfe3
     fc9:	29 da                	sub    %ebx,%edx
     fcb:	89 50 04             	mov    %edx,0x4(%eax)
     fce:	8d 04 d0             	lea    (%eax,%edx,8),%eax
     fd1:	89 58 04             	mov    %ebx,0x4(%eax)
     fd4:	89 0d 04 17 00 00    	mov    %ecx,0x1704
     fda:	83 c0 08             	add    $0x8,%eax
     fdd:	83 c4 04             	add    $0x4,%esp
     fe0:	5b                   	pop    %ebx
     fe1:	5d                   	pop    %ebp
     fe2:	c3                   	ret    
     fe3:	8b 10                	mov    (%eax),%edx
     fe5:	89 11                	mov    %edx,(%ecx)
     fe7:	eb eb                	jmp    0xfd4
     fe9:	89 c1                	mov    %eax,%ecx
     feb:	8b 00                	mov    (%eax),%eax
     fed:	8b 50 04             	mov    0x4(%eax),%edx
     ff0:	39 da                	cmp    %ebx,%edx
     ff2:	73 d3                	jae    0xfc7
     ff4:	39 05 04 17 00 00    	cmp    %eax,0x1704
     ffa:	75 ed                	jne    0xfe9
     ffc:	89 d8                	mov    %ebx,%eax
     ffe:	e8 2a ff ff ff       	call   0xf2d
    1003:	85 c0                	test   %eax,%eax
    1005:	75 e2                	jne    0xfe9
    1007:	eb d4                	jmp    0xfdd
