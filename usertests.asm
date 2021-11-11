
_usertests:     file format elf32-i386


Disassembly of section .text:

00000000 <.text>:
       0:	55                   	push   %ebp
       1:	89 e5                	mov    %esp,%ebp
       3:	83 ec 10             	sub    $0x10,%esp
       6:	68 b0 3b 00 00       	push   $0x3bb0
       b:	ff 35 a4 5b 00 00    	push   0x5ba4
      11:	e8 56 38 00 00       	call   0x386c
      16:	c7 04 24 43 3b 00 00 	movl   $0x3b43,(%esp)
      1d:	e8 65 37 00 00       	call   0x3787
      22:	83 c4 10             	add    $0x10,%esp
      25:	85 c0                	test   %eax,%eax
      27:	78 54                	js     0x7d
      29:	83 ec 0c             	sub    $0xc,%esp
      2c:	68 43 3b 00 00       	push   $0x3b43
      31:	e8 59 37 00 00       	call   0x378f
      36:	83 c4 10             	add    $0x10,%esp
      39:	85 c0                	test   %eax,%eax
      3b:	78 58                	js     0x95
      3d:	83 ec 0c             	sub    $0xc,%esp
      40:	68 40 3b 00 00       	push   $0x3b40
      45:	e8 25 37 00 00       	call   0x376f
      4a:	83 c4 10             	add    $0x10,%esp
      4d:	85 c0                	test   %eax,%eax
      4f:	78 5c                	js     0xad
      51:	83 ec 0c             	sub    $0xc,%esp
      54:	68 65 3b 00 00       	push   $0x3b65
      59:	e8 31 37 00 00       	call   0x378f
      5e:	83 c4 10             	add    $0x10,%esp
      61:	85 c0                	test   %eax,%eax
      63:	78 60                	js     0xc5
      65:	83 ec 08             	sub    $0x8,%esp
      68:	68 e8 3b 00 00       	push   $0x3be8
      6d:	ff 35 a4 5b 00 00    	push   0x5ba4
      73:	e8 f4 37 00 00       	call   0x386c
      78:	83 c4 10             	add    $0x10,%esp
      7b:	c9                   	leave  
      7c:	c3                   	ret    
      7d:	83 ec 08             	sub    $0x8,%esp
      80:	68 1c 3b 00 00       	push   $0x3b1c
      85:	ff 35 a4 5b 00 00    	push   0x5ba4
      8b:	e8 dc 37 00 00       	call   0x386c
      90:	e8 8a 36 00 00       	call   0x371f
      95:	83 ec 08             	sub    $0x8,%esp
      98:	68 2a 3b 00 00       	push   $0x3b2a
      9d:	ff 35 a4 5b 00 00    	push   0x5ba4
      a3:	e8 c4 37 00 00       	call   0x386c
      a8:	e8 72 36 00 00       	call   0x371f
      ad:	83 ec 08             	sub    $0x8,%esp
      b0:	68 4b 3b 00 00       	push   $0x3b4b
      b5:	ff 35 a4 5b 00 00    	push   0x5ba4
      bb:	e8 ac 37 00 00       	call   0x386c
      c0:	e8 5a 36 00 00       	call   0x371f
      c5:	83 ec 08             	sub    $0x8,%esp
      c8:	68 67 3b 00 00       	push   $0x3b67
      cd:	ff 35 a4 5b 00 00    	push   0x5ba4
      d3:	e8 94 37 00 00       	call   0x386c
      d8:	e8 42 36 00 00       	call   0x371f
      dd:	55                   	push   %ebp
      de:	89 e5                	mov    %esp,%ebp
      e0:	83 ec 10             	sub    $0x10,%esp
      e3:	68 77 3b 00 00       	push   $0x3b77
      e8:	ff 35 a4 5b 00 00    	push   0x5ba4
      ee:	e8 79 37 00 00       	call   0x386c
      f3:	e8 1f 36 00 00       	call   0x3717
      f8:	83 c4 10             	add    $0x10,%esp
      fb:	85 c0                	test   %eax,%eax
      fd:	78 47                	js     0x146
      ff:	0f 85 a1 00 00 00    	jne    0x1a6
     105:	83 ec 0c             	sub    $0xc,%esp
     108:	68 43 3b 00 00       	push   $0x3b43
     10d:	e8 75 36 00 00       	call   0x3787
     112:	83 c4 10             	add    $0x10,%esp
     115:	85 c0                	test   %eax,%eax
     117:	78 45                	js     0x15e
     119:	83 ec 0c             	sub    $0xc,%esp
     11c:	68 43 3b 00 00       	push   $0x3b43
     121:	e8 69 36 00 00       	call   0x378f
     126:	83 c4 10             	add    $0x10,%esp
     129:	85 c0                	test   %eax,%eax
     12b:	78 49                	js     0x176
     12d:	83 ec 0c             	sub    $0xc,%esp
     130:	68 40 3b 00 00       	push   $0x3b40
     135:	e8 35 36 00 00       	call   0x376f
     13a:	83 c4 10             	add    $0x10,%esp
     13d:	85 c0                	test   %eax,%eax
     13f:	78 4d                	js     0x18e
     141:	e8 d9 35 00 00       	call   0x371f
     146:	83 ec 08             	sub    $0x8,%esp
     149:	68 5d 4a 00 00       	push   $0x4a5d
     14e:	ff 35 a4 5b 00 00    	push   0x5ba4
     154:	e8 13 37 00 00       	call   0x386c
     159:	e8 c1 35 00 00       	call   0x371f
     15e:	83 ec 08             	sub    $0x8,%esp
     161:	68 1c 3b 00 00       	push   $0x3b1c
     166:	ff 35 a4 5b 00 00    	push   0x5ba4
     16c:	e8 fb 36 00 00       	call   0x386c
     171:	e8 a9 35 00 00       	call   0x371f
     176:	83 ec 08             	sub    $0x8,%esp
     179:	68 86 3b 00 00       	push   $0x3b86
     17e:	ff 35 a4 5b 00 00    	push   0x5ba4
     184:	e8 e3 36 00 00       	call   0x386c
     189:	e8 91 35 00 00       	call   0x371f
     18e:	83 ec 08             	sub    $0x8,%esp
     191:	68 4b 3b 00 00       	push   $0x3b4b
     196:	ff 35 a4 5b 00 00    	push   0x5ba4
     19c:	e8 cb 36 00 00       	call   0x386c
     1a1:	e8 79 35 00 00       	call   0x371f
     1a6:	e8 7c 35 00 00       	call   0x3727
     1ab:	83 ec 08             	sub    $0x8,%esp
     1ae:	68 9a 3b 00 00       	push   $0x3b9a
     1b3:	ff 35 a4 5b 00 00    	push   0x5ba4
     1b9:	e8 ae 36 00 00       	call   0x386c
     1be:	83 c4 10             	add    $0x10,%esp
     1c1:	c9                   	leave  
     1c2:	c3                   	ret    
     1c3:	55                   	push   %ebp
     1c4:	89 e5                	mov    %esp,%ebp
     1c6:	83 ec 10             	sub    $0x10,%esp
     1c9:	68 ac 3b 00 00       	push   $0x3bac
     1ce:	ff 35 a4 5b 00 00    	push   0x5ba4
     1d4:	e8 93 36 00 00       	call   0x386c
     1d9:	c7 04 24 bb 3b 00 00 	movl   $0x3bbb,(%esp)
     1e0:	e8 a2 35 00 00       	call   0x3787
     1e5:	83 c4 10             	add    $0x10,%esp
     1e8:	85 c0                	test   %eax,%eax
     1ea:	78 39                	js     0x225
     1ec:	e8 26 35 00 00       	call   0x3717
     1f1:	85 c0                	test   %eax,%eax
     1f3:	78 48                	js     0x23d
     1f5:	75 63                	jne    0x25a
     1f7:	83 ec 08             	sub    $0x8,%esp
     1fa:	6a 02                	push   $0x2
     1fc:	68 bb 3b 00 00       	push   $0x3bbb
     201:	e8 59 35 00 00       	call   0x375f
     206:	83 c4 10             	add    $0x10,%esp
     209:	85 c0                	test   %eax,%eax
     20b:	78 48                	js     0x255
     20d:	83 ec 08             	sub    $0x8,%esp
     210:	68 40 4b 00 00       	push   $0x4b40
     215:	ff 35 a4 5b 00 00    	push   0x5ba4
     21b:	e8 4c 36 00 00       	call   0x386c
     220:	e8 fa 34 00 00       	call   0x371f
     225:	83 ec 08             	sub    $0x8,%esp
     228:	68 c1 3b 00 00       	push   $0x3bc1
     22d:	ff 35 a4 5b 00 00    	push   0x5ba4
     233:	e8 34 36 00 00       	call   0x386c
     238:	e8 e2 34 00 00       	call   0x371f
     23d:	83 ec 08             	sub    $0x8,%esp
     240:	68 5d 4a 00 00       	push   $0x4a5d
     245:	ff 35 a4 5b 00 00    	push   0x5ba4
     24b:	e8 1c 36 00 00       	call   0x386c
     250:	e8 ca 34 00 00       	call   0x371f
     255:	e8 c5 34 00 00       	call   0x371f
     25a:	83 ec 0c             	sub    $0xc,%esp
     25d:	6a 01                	push   $0x1
     25f:	e8 4b 35 00 00       	call   0x37af
     264:	c7 04 24 bb 3b 00 00 	movl   $0x3bbb,(%esp)
     26b:	e8 ff 34 00 00       	call   0x376f
     270:	83 c4 10             	add    $0x10,%esp
     273:	85 c0                	test   %eax,%eax
     275:	75 1d                	jne    0x294
     277:	e8 ab 34 00 00       	call   0x3727
     27c:	83 ec 08             	sub    $0x8,%esp
     27f:	68 e4 3b 00 00       	push   $0x3be4
     284:	ff 35 a4 5b 00 00    	push   0x5ba4
     28a:	e8 dd 35 00 00       	call   0x386c
     28f:	83 c4 10             	add    $0x10,%esp
     292:	c9                   	leave  
     293:	c3                   	ret    
     294:	83 ec 08             	sub    $0x8,%esp
     297:	68 d5 3b 00 00       	push   $0x3bd5
     29c:	ff 35 a4 5b 00 00    	push   0x5ba4
     2a2:	e8 c5 35 00 00       	call   0x386c
     2a7:	e8 73 34 00 00       	call   0x371f
     2ac:	55                   	push   %ebp
     2ad:	89 e5                	mov    %esp,%ebp
     2af:	83 ec 10             	sub    $0x10,%esp
     2b2:	68 f6 3b 00 00       	push   $0x3bf6
     2b7:	ff 35 a4 5b 00 00    	push   0x5ba4
     2bd:	e8 aa 35 00 00       	call   0x386c
     2c2:	83 c4 08             	add    $0x8,%esp
     2c5:	6a 00                	push   $0x0
     2c7:	68 01 3c 00 00       	push   $0x3c01
     2cc:	e8 8e 34 00 00       	call   0x375f
     2d1:	83 c4 10             	add    $0x10,%esp
     2d4:	85 c0                	test   %eax,%eax
     2d6:	78 37                	js     0x30f
     2d8:	83 ec 0c             	sub    $0xc,%esp
     2db:	50                   	push   %eax
     2dc:	e8 66 34 00 00       	call   0x3747
     2e1:	83 c4 08             	add    $0x8,%esp
     2e4:	6a 00                	push   $0x0
     2e6:	68 19 3c 00 00       	push   $0x3c19
     2eb:	e8 6f 34 00 00       	call   0x375f
     2f0:	83 c4 10             	add    $0x10,%esp
     2f3:	85 c0                	test   %eax,%eax
     2f5:	79 30                	jns    0x327
     2f7:	83 ec 08             	sub    $0x8,%esp
     2fa:	68 44 3c 00 00       	push   $0x3c44
     2ff:	ff 35 a4 5b 00 00    	push   0x5ba4
     305:	e8 62 35 00 00       	call   0x386c
     30a:	83 c4 10             	add    $0x10,%esp
     30d:	c9                   	leave  
     30e:	c3                   	ret    
     30f:	83 ec 08             	sub    $0x8,%esp
     312:	68 06 3c 00 00       	push   $0x3c06
     317:	ff 35 a4 5b 00 00    	push   0x5ba4
     31d:	e8 4a 35 00 00       	call   0x386c
     322:	e8 f8 33 00 00       	call   0x371f
     327:	83 ec 08             	sub    $0x8,%esp
     32a:	68 26 3c 00 00       	push   $0x3c26
     32f:	ff 35 a4 5b 00 00    	push   0x5ba4
     335:	e8 32 35 00 00       	call   0x386c
     33a:	e8 e0 33 00 00       	call   0x371f
     33f:	55                   	push   %ebp
     340:	89 e5                	mov    %esp,%ebp
     342:	56                   	push   %esi
     343:	53                   	push   %ebx
     344:	83 ec 08             	sub    $0x8,%esp
     347:	68 52 3c 00 00       	push   $0x3c52
     34c:	ff 35 a4 5b 00 00    	push   0x5ba4
     352:	e8 15 35 00 00       	call   0x386c
     357:	83 c4 08             	add    $0x8,%esp
     35a:	68 02 02 00 00       	push   $0x202
     35f:	68 63 3c 00 00       	push   $0x3c63
     364:	e8 f6 33 00 00       	call   0x375f
     369:	83 c4 10             	add    $0x10,%esp
     36c:	85 c0                	test   %eax,%eax
     36e:	78 57                	js     0x3c7
     370:	89 c6                	mov    %eax,%esi
     372:	83 ec 08             	sub    $0x8,%esp
     375:	68 69 3c 00 00       	push   $0x3c69
     37a:	ff 35 a4 5b 00 00    	push   0x5ba4
     380:	e8 e7 34 00 00       	call   0x386c
     385:	83 c4 10             	add    $0x10,%esp
     388:	bb 00 00 00 00       	mov    $0x0,%ebx
     38d:	83 fb 63             	cmp    $0x63,%ebx
     390:	7f 7f                	jg     0x411
     392:	83 ec 04             	sub    $0x4,%esp
     395:	6a 0a                	push   $0xa
     397:	68 a0 3c 00 00       	push   $0x3ca0
     39c:	56                   	push   %esi
     39d:	e8 9d 33 00 00       	call   0x373f
     3a2:	83 c4 10             	add    $0x10,%esp
     3a5:	83 f8 0a             	cmp    $0xa,%eax
     3a8:	75 35                	jne    0x3df
     3aa:	83 ec 04             	sub    $0x4,%esp
     3ad:	6a 0a                	push   $0xa
     3af:	68 ab 3c 00 00       	push   $0x3cab
     3b4:	56                   	push   %esi
     3b5:	e8 85 33 00 00       	call   0x373f
     3ba:	83 c4 10             	add    $0x10,%esp
     3bd:	83 f8 0a             	cmp    $0xa,%eax
     3c0:	75 36                	jne    0x3f8
     3c2:	83 c3 01             	add    $0x1,%ebx
     3c5:	eb c6                	jmp    0x38d
     3c7:	83 ec 08             	sub    $0x8,%esp
     3ca:	68 84 3c 00 00       	push   $0x3c84
     3cf:	ff 35 a4 5b 00 00    	push   0x5ba4
     3d5:	e8 92 34 00 00       	call   0x386c
     3da:	e8 40 33 00 00       	call   0x371f
     3df:	83 ec 04             	sub    $0x4,%esp
     3e2:	53                   	push   %ebx
     3e3:	68 64 4b 00 00       	push   $0x4b64
     3e8:	ff 35 a4 5b 00 00    	push   0x5ba4
     3ee:	e8 79 34 00 00       	call   0x386c
     3f3:	e8 27 33 00 00       	call   0x371f
     3f8:	83 ec 04             	sub    $0x4,%esp
     3fb:	53                   	push   %ebx
     3fc:	68 88 4b 00 00       	push   $0x4b88
     401:	ff 35 a4 5b 00 00    	push   0x5ba4
     407:	e8 60 34 00 00       	call   0x386c
     40c:	e8 0e 33 00 00       	call   0x371f
     411:	83 ec 08             	sub    $0x8,%esp
     414:	68 b6 3c 00 00       	push   $0x3cb6
     419:	ff 35 a4 5b 00 00    	push   0x5ba4
     41f:	e8 48 34 00 00       	call   0x386c
     424:	89 34 24             	mov    %esi,(%esp)
     427:	e8 1b 33 00 00       	call   0x3747
     42c:	83 c4 08             	add    $0x8,%esp
     42f:	6a 00                	push   $0x0
     431:	68 63 3c 00 00       	push   $0x3c63
     436:	e8 24 33 00 00       	call   0x375f
     43b:	89 c3                	mov    %eax,%ebx
     43d:	83 c4 10             	add    $0x10,%esp
     440:	85 c0                	test   %eax,%eax
     442:	78 7b                	js     0x4bf
     444:	83 ec 08             	sub    $0x8,%esp
     447:	68 c1 3c 00 00       	push   $0x3cc1
     44c:	ff 35 a4 5b 00 00    	push   0x5ba4
     452:	e8 15 34 00 00       	call   0x386c
     457:	83 c4 0c             	add    $0xc,%esp
     45a:	68 d0 07 00 00       	push   $0x7d0
     45f:	68 e0 82 00 00       	push   $0x82e0
     464:	53                   	push   %ebx
     465:	e8 cd 32 00 00       	call   0x3737
     46a:	83 c4 10             	add    $0x10,%esp
     46d:	3d d0 07 00 00       	cmp    $0x7d0,%eax
     472:	75 63                	jne    0x4d7
     474:	83 ec 08             	sub    $0x8,%esp
     477:	68 f5 3c 00 00       	push   $0x3cf5
     47c:	ff 35 a4 5b 00 00    	push   0x5ba4
     482:	e8 e5 33 00 00       	call   0x386c
     487:	89 1c 24             	mov    %ebx,(%esp)
     48a:	e8 b8 32 00 00       	call   0x3747
     48f:	c7 04 24 63 3c 00 00 	movl   $0x3c63,(%esp)
     496:	e8 d4 32 00 00       	call   0x376f
     49b:	83 c4 10             	add    $0x10,%esp
     49e:	85 c0                	test   %eax,%eax
     4a0:	78 4d                	js     0x4ef
     4a2:	83 ec 08             	sub    $0x8,%esp
     4a5:	68 1d 3d 00 00       	push   $0x3d1d
     4aa:	ff 35 a4 5b 00 00    	push   0x5ba4
     4b0:	e8 b7 33 00 00       	call   0x386c
     4b5:	83 c4 10             	add    $0x10,%esp
     4b8:	8d 65 f8             	lea    -0x8(%ebp),%esp
     4bb:	5b                   	pop    %ebx
     4bc:	5e                   	pop    %esi
     4bd:	5d                   	pop    %ebp
     4be:	c3                   	ret    
     4bf:	83 ec 08             	sub    $0x8,%esp
     4c2:	68 da 3c 00 00       	push   $0x3cda
     4c7:	ff 35 a4 5b 00 00    	push   0x5ba4
     4cd:	e8 9a 33 00 00       	call   0x386c
     4d2:	e8 48 32 00 00       	call   0x371f
     4d7:	83 ec 08             	sub    $0x8,%esp
     4da:	68 21 40 00 00       	push   $0x4021
     4df:	ff 35 a4 5b 00 00    	push   0x5ba4
     4e5:	e8 82 33 00 00       	call   0x386c
     4ea:	e8 30 32 00 00       	call   0x371f
     4ef:	83 ec 08             	sub    $0x8,%esp
     4f2:	68 08 3d 00 00       	push   $0x3d08
     4f7:	ff 35 a4 5b 00 00    	push   0x5ba4
     4fd:	e8 6a 33 00 00       	call   0x386c
     502:	e8 18 32 00 00       	call   0x371f
     507:	55                   	push   %ebp
     508:	89 e5                	mov    %esp,%ebp
     50a:	56                   	push   %esi
     50b:	53                   	push   %ebx
     50c:	83 ec 08             	sub    $0x8,%esp
     50f:	68 31 3d 00 00       	push   $0x3d31
     514:	ff 35 a4 5b 00 00    	push   0x5ba4
     51a:	e8 4d 33 00 00       	call   0x386c
     51f:	83 c4 08             	add    $0x8,%esp
     522:	68 02 02 00 00       	push   $0x202
     527:	68 ab 3d 00 00       	push   $0x3dab
     52c:	e8 2e 32 00 00       	call   0x375f
     531:	83 c4 10             	add    $0x10,%esp
     534:	85 c0                	test   %eax,%eax
     536:	78 37                	js     0x56f
     538:	89 c6                	mov    %eax,%esi
     53a:	bb 00 00 00 00       	mov    $0x0,%ebx
     53f:	81 fb 8b 00 00 00    	cmp    $0x8b,%ebx
     545:	77 59                	ja     0x5a0
     547:	89 1d e0 82 00 00    	mov    %ebx,0x82e0
     54d:	83 ec 04             	sub    $0x4,%esp
     550:	68 00 02 00 00       	push   $0x200
     555:	68 e0 82 00 00       	push   $0x82e0
     55a:	56                   	push   %esi
     55b:	e8 df 31 00 00       	call   0x373f
     560:	83 c4 10             	add    $0x10,%esp
     563:	3d 00 02 00 00       	cmp    $0x200,%eax
     568:	75 1d                	jne    0x587
     56a:	83 c3 01             	add    $0x1,%ebx
     56d:	eb d0                	jmp    0x53f
     56f:	83 ec 08             	sub    $0x8,%esp
     572:	68 41 3d 00 00       	push   $0x3d41
     577:	ff 35 a4 5b 00 00    	push   0x5ba4
     57d:	e8 ea 32 00 00       	call   0x386c
     582:	e8 98 31 00 00       	call   0x371f
     587:	83 ec 04             	sub    $0x4,%esp
     58a:	53                   	push   %ebx
     58b:	68 5b 3d 00 00       	push   $0x3d5b
     590:	ff 35 a4 5b 00 00    	push   0x5ba4
     596:	e8 d1 32 00 00       	call   0x386c
     59b:	e8 7f 31 00 00       	call   0x371f
     5a0:	83 ec 0c             	sub    $0xc,%esp
     5a3:	56                   	push   %esi
     5a4:	e8 9e 31 00 00       	call   0x3747
     5a9:	83 c4 08             	add    $0x8,%esp
     5ac:	6a 00                	push   $0x0
     5ae:	68 ab 3d 00 00       	push   $0x3dab
     5b3:	e8 a7 31 00 00       	call   0x375f
     5b8:	89 c6                	mov    %eax,%esi
     5ba:	83 c4 10             	add    $0x10,%esp
     5bd:	85 c0                	test   %eax,%eax
     5bf:	78 3c                	js     0x5fd
     5c1:	bb 00 00 00 00       	mov    $0x0,%ebx
     5c6:	83 ec 04             	sub    $0x4,%esp
     5c9:	68 00 02 00 00       	push   $0x200
     5ce:	68 e0 82 00 00       	push   $0x82e0
     5d3:	56                   	push   %esi
     5d4:	e8 5e 31 00 00       	call   0x3737
     5d9:	83 c4 10             	add    $0x10,%esp
     5dc:	85 c0                	test   %eax,%eax
     5de:	74 35                	je     0x615
     5e0:	3d 00 02 00 00       	cmp    $0x200,%eax
     5e5:	0f 85 84 00 00 00    	jne    0x66f
     5eb:	a1 e0 82 00 00       	mov    0x82e0,%eax
     5f0:	39 d8                	cmp    %ebx,%eax
     5f2:	0f 85 90 00 00 00    	jne    0x688
     5f8:	83 c3 01             	add    $0x1,%ebx
     5fb:	eb c9                	jmp    0x5c6
     5fd:	83 ec 08             	sub    $0x8,%esp
     600:	68 79 3d 00 00       	push   $0x3d79
     605:	ff 35 a4 5b 00 00    	push   0x5ba4
     60b:	e8 5c 32 00 00       	call   0x386c
     610:	e8 0a 31 00 00       	call   0x371f
     615:	81 fb 8b 00 00 00    	cmp    $0x8b,%ebx
     61b:	74 39                	je     0x656
     61d:	83 ec 0c             	sub    $0xc,%esp
     620:	56                   	push   %esi
     621:	e8 21 31 00 00       	call   0x3747
     626:	c7 04 24 ab 3d 00 00 	movl   $0x3dab,(%esp)
     62d:	e8 3d 31 00 00       	call   0x376f
     632:	83 c4 10             	add    $0x10,%esp
     635:	85 c0                	test   %eax,%eax
     637:	78 66                	js     0x69f
     639:	83 ec 08             	sub    $0x8,%esp
     63c:	68 d2 3d 00 00       	push   $0x3dd2
     641:	ff 35 a4 5b 00 00    	push   0x5ba4
     647:	e8 20 32 00 00       	call   0x386c
     64c:	83 c4 10             	add    $0x10,%esp
     64f:	8d 65 f8             	lea    -0x8(%ebp),%esp
     652:	5b                   	pop    %ebx
     653:	5e                   	pop    %esi
     654:	5d                   	pop    %ebp
     655:	c3                   	ret    
     656:	83 ec 04             	sub    $0x4,%esp
     659:	53                   	push   %ebx
     65a:	68 92 3d 00 00       	push   $0x3d92
     65f:	ff 35 a4 5b 00 00    	push   0x5ba4
     665:	e8 02 32 00 00       	call   0x386c
     66a:	e8 b0 30 00 00       	call   0x371f
     66f:	83 ec 04             	sub    $0x4,%esp
     672:	50                   	push   %eax
     673:	68 af 3d 00 00       	push   $0x3daf
     678:	ff 35 a4 5b 00 00    	push   0x5ba4
     67e:	e8 e9 31 00 00       	call   0x386c
     683:	e8 97 30 00 00       	call   0x371f
     688:	50                   	push   %eax
     689:	53                   	push   %ebx
     68a:	68 ac 4b 00 00       	push   $0x4bac
     68f:	ff 35 a4 5b 00 00    	push   0x5ba4
     695:	e8 d2 31 00 00       	call   0x386c
     69a:	e8 80 30 00 00       	call   0x371f
     69f:	83 ec 08             	sub    $0x8,%esp
     6a2:	68 bf 3d 00 00       	push   $0x3dbf
     6a7:	ff 35 a4 5b 00 00    	push   0x5ba4
     6ad:	e8 ba 31 00 00       	call   0x386c
     6b2:	e8 68 30 00 00       	call   0x371f
     6b7:	55                   	push   %ebp
     6b8:	89 e5                	mov    %esp,%ebp
     6ba:	53                   	push   %ebx
     6bb:	83 ec 0c             	sub    $0xc,%esp
     6be:	68 cc 4b 00 00       	push   $0x4bcc
     6c3:	ff 35 a4 5b 00 00    	push   0x5ba4
     6c9:	e8 9e 31 00 00       	call   0x386c
     6ce:	c6 05 d0 82 00 00 61 	movb   $0x61,0x82d0
     6d5:	c6 05 d2 82 00 00 00 	movb   $0x0,0x82d2
     6dc:	83 c4 10             	add    $0x10,%esp
     6df:	bb 00 00 00 00       	mov    $0x0,%ebx
     6e4:	eb 28                	jmp    0x70e
     6e6:	8d 43 30             	lea    0x30(%ebx),%eax
     6e9:	a2 d1 82 00 00       	mov    %al,0x82d1
     6ee:	83 ec 08             	sub    $0x8,%esp
     6f1:	68 02 02 00 00       	push   $0x202
     6f6:	68 d0 82 00 00       	push   $0x82d0
     6fb:	e8 5f 30 00 00       	call   0x375f
     700:	89 04 24             	mov    %eax,(%esp)
     703:	e8 3f 30 00 00       	call   0x3747
     708:	83 c3 01             	add    $0x1,%ebx
     70b:	83 c4 10             	add    $0x10,%esp
     70e:	83 fb 33             	cmp    $0x33,%ebx
     711:	7e d3                	jle    0x6e6
     713:	c6 05 d0 82 00 00 61 	movb   $0x61,0x82d0
     71a:	c6 05 d2 82 00 00 00 	movb   $0x0,0x82d2
     721:	bb 00 00 00 00       	mov    $0x0,%ebx
     726:	eb 1b                	jmp    0x743
     728:	8d 43 30             	lea    0x30(%ebx),%eax
     72b:	a2 d1 82 00 00       	mov    %al,0x82d1
     730:	83 ec 0c             	sub    $0xc,%esp
     733:	68 d0 82 00 00       	push   $0x82d0
     738:	e8 32 30 00 00       	call   0x376f
     73d:	83 c3 01             	add    $0x1,%ebx
     740:	83 c4 10             	add    $0x10,%esp
     743:	83 fb 33             	cmp    $0x33,%ebx
     746:	7e e0                	jle    0x728
     748:	83 ec 08             	sub    $0x8,%esp
     74b:	68 f4 4b 00 00       	push   $0x4bf4
     750:	ff 35 a4 5b 00 00    	push   0x5ba4
     756:	e8 11 31 00 00       	call   0x386c
     75b:	83 c4 10             	add    $0x10,%esp
     75e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     761:	c9                   	leave  
     762:	c3                   	ret    
     763:	55                   	push   %ebp
     764:	89 e5                	mov    %esp,%ebp
     766:	83 ec 10             	sub    $0x10,%esp
     769:	68 e0 3d 00 00       	push   $0x3de0
     76e:	ff 35 a4 5b 00 00    	push   0x5ba4
     774:	e8 f3 30 00 00       	call   0x386c
     779:	c7 04 24 ec 3d 00 00 	movl   $0x3dec,(%esp)
     780:	e8 02 30 00 00       	call   0x3787
     785:	83 c4 10             	add    $0x10,%esp
     788:	85 c0                	test   %eax,%eax
     78a:	78 54                	js     0x7e0
     78c:	83 ec 0c             	sub    $0xc,%esp
     78f:	68 ec 3d 00 00       	push   $0x3dec
     794:	e8 f6 2f 00 00       	call   0x378f
     799:	83 c4 10             	add    $0x10,%esp
     79c:	85 c0                	test   %eax,%eax
     79e:	78 58                	js     0x7f8
     7a0:	83 ec 0c             	sub    $0xc,%esp
     7a3:	68 91 43 00 00       	push   $0x4391
     7a8:	e8 e2 2f 00 00       	call   0x378f
     7ad:	83 c4 10             	add    $0x10,%esp
     7b0:	85 c0                	test   %eax,%eax
     7b2:	78 5c                	js     0x810
     7b4:	83 ec 0c             	sub    $0xc,%esp
     7b7:	68 ec 3d 00 00       	push   $0x3dec
     7bc:	e8 ae 2f 00 00       	call   0x376f
     7c1:	83 c4 10             	add    $0x10,%esp
     7c4:	85 c0                	test   %eax,%eax
     7c6:	78 60                	js     0x828
     7c8:	83 ec 08             	sub    $0x8,%esp
     7cb:	68 29 3e 00 00       	push   $0x3e29
     7d0:	ff 35 a4 5b 00 00    	push   0x5ba4
     7d6:	e8 91 30 00 00       	call   0x386c
     7db:	83 c4 10             	add    $0x10,%esp
     7de:	c9                   	leave  
     7df:	c3                   	ret    
     7e0:	83 ec 08             	sub    $0x8,%esp
     7e3:	68 1c 3b 00 00       	push   $0x3b1c
     7e8:	ff 35 a4 5b 00 00    	push   0x5ba4
     7ee:	e8 79 30 00 00       	call   0x386c
     7f3:	e8 27 2f 00 00       	call   0x371f
     7f8:	83 ec 08             	sub    $0x8,%esp
     7fb:	68 f1 3d 00 00       	push   $0x3df1
     800:	ff 35 a4 5b 00 00    	push   0x5ba4
     806:	e8 61 30 00 00       	call   0x386c
     80b:	e8 0f 2f 00 00       	call   0x371f
     810:	83 ec 08             	sub    $0x8,%esp
     813:	68 04 3e 00 00       	push   $0x3e04
     818:	ff 35 a4 5b 00 00    	push   0x5ba4
     81e:	e8 49 30 00 00       	call   0x386c
     823:	e8 f7 2e 00 00       	call   0x371f
     828:	83 ec 08             	sub    $0x8,%esp
     82b:	68 15 3e 00 00       	push   $0x3e15
     830:	ff 35 a4 5b 00 00    	push   0x5ba4
     836:	e8 31 30 00 00       	call   0x386c
     83b:	e8 df 2e 00 00       	call   0x371f
     840:	55                   	push   %ebp
     841:	89 e5                	mov    %esp,%ebp
     843:	83 ec 10             	sub    $0x10,%esp
     846:	68 38 3e 00 00       	push   $0x3e38
     84b:	ff 35 a4 5b 00 00    	push   0x5ba4
     851:	e8 16 30 00 00       	call   0x386c
     856:	83 c4 08             	add    $0x8,%esp
     859:	68 a8 5b 00 00       	push   $0x5ba8
     85e:	68 01 3c 00 00       	push   $0x3c01
     863:	e8 ef 2e 00 00       	call   0x3757
     868:	83 c4 10             	add    $0x10,%esp
     86b:	85 c0                	test   %eax,%eax
     86d:	78 02                	js     0x871
     86f:	c9                   	leave  
     870:	c3                   	ret    
     871:	83 ec 08             	sub    $0x8,%esp
     874:	68 43 3e 00 00       	push   $0x3e43
     879:	ff 35 a4 5b 00 00    	push   0x5ba4
     87f:	e8 e8 2f 00 00       	call   0x386c
     884:	e8 96 2e 00 00       	call   0x371f
     889:	55                   	push   %ebp
     88a:	89 e5                	mov    %esp,%ebp
     88c:	57                   	push   %edi
     88d:	56                   	push   %esi
     88e:	53                   	push   %ebx
     88f:	83 ec 38             	sub    $0x38,%esp
     892:	8d 45 e0             	lea    -0x20(%ebp),%eax
     895:	50                   	push   %eax
     896:	e8 94 2e 00 00       	call   0x372f
     89b:	83 c4 10             	add    $0x10,%esp
     89e:	85 c0                	test   %eax,%eax
     8a0:	75 74                	jne    0x916
     8a2:	89 c6                	mov    %eax,%esi
     8a4:	e8 6e 2e 00 00       	call   0x3717
     8a9:	89 c7                	mov    %eax,%edi
     8ab:	85 c0                	test   %eax,%eax
     8ad:	74 7b                	je     0x92a
     8af:	0f 8e 60 01 00 00    	jle    0xa15
     8b5:	83 ec 0c             	sub    $0xc,%esp
     8b8:	ff 75 e4             	push   -0x1c(%ebp)
     8bb:	e8 87 2e 00 00       	call   0x3747
     8c0:	83 c4 10             	add    $0x10,%esp
     8c3:	89 75 d0             	mov    %esi,-0x30(%ebp)
     8c6:	89 f3                	mov    %esi,%ebx
     8c8:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
     8cf:	83 ec 04             	sub    $0x4,%esp
     8d2:	ff 75 d4             	push   -0x2c(%ebp)
     8d5:	68 e0 82 00 00       	push   $0x82e0
     8da:	ff 75 e0             	push   -0x20(%ebp)
     8dd:	e8 55 2e 00 00       	call   0x3737
     8e2:	89 c7                	mov    %eax,%edi
     8e4:	83 c4 10             	add    $0x10,%esp
     8e7:	85 c0                	test   %eax,%eax
     8e9:	0f 8e e2 00 00 00    	jle    0x9d1
     8ef:	89 f0                	mov    %esi,%eax
     8f1:	89 d9                	mov    %ebx,%ecx
     8f3:	39 f8                	cmp    %edi,%eax
     8f5:	0f 8d b4 00 00 00    	jge    0x9af
     8fb:	0f be 98 e0 82 00 00 	movsbl 0x82e0(%eax),%ebx
     902:	8d 51 01             	lea    0x1(%ecx),%edx
     905:	31 cb                	xor    %ecx,%ebx
     907:	84 db                	test   %bl,%bl
     909:	0f 85 86 00 00 00    	jne    0x995
     90f:	83 c0 01             	add    $0x1,%eax
     912:	89 d1                	mov    %edx,%ecx
     914:	eb dd                	jmp    0x8f3
     916:	83 ec 08             	sub    $0x8,%esp
     919:	68 55 3e 00 00       	push   $0x3e55
     91e:	6a 01                	push   $0x1
     920:	e8 47 2f 00 00       	call   0x386c
     925:	e8 f5 2d 00 00       	call   0x371f
     92a:	83 ec 0c             	sub    $0xc,%esp
     92d:	ff 75 e0             	push   -0x20(%ebp)
     930:	e8 12 2e 00 00       	call   0x3747
     935:	83 c4 10             	add    $0x10,%esp
     938:	89 fe                	mov    %edi,%esi
     93a:	89 fb                	mov    %edi,%ebx
     93c:	eb 35                	jmp    0x973
     93e:	88 98 e0 82 00 00    	mov    %bl,0x82e0(%eax)
     944:	83 c0 01             	add    $0x1,%eax
     947:	8d 5b 01             	lea    0x1(%ebx),%ebx
     94a:	3d 08 04 00 00       	cmp    $0x408,%eax
     94f:	7e ed                	jle    0x93e
     951:	83 ec 04             	sub    $0x4,%esp
     954:	68 09 04 00 00       	push   $0x409
     959:	68 e0 82 00 00       	push   $0x82e0
     95e:	ff 75 e4             	push   -0x1c(%ebp)
     961:	e8 d9 2d 00 00       	call   0x373f
     966:	83 c4 10             	add    $0x10,%esp
     969:	3d 09 04 00 00       	cmp    $0x409,%eax
     96e:	75 0c                	jne    0x97c
     970:	83 c6 01             	add    $0x1,%esi
     973:	83 fe 04             	cmp    $0x4,%esi
     976:	7f 18                	jg     0x990
     978:	89 f8                	mov    %edi,%eax
     97a:	eb ce                	jmp    0x94a
     97c:	83 ec 08             	sub    $0x8,%esp
     97f:	68 64 3e 00 00       	push   $0x3e64
     984:	6a 01                	push   $0x1
     986:	e8 e1 2e 00 00       	call   0x386c
     98b:	e8 8f 2d 00 00       	call   0x371f
     990:	e8 8a 2d 00 00       	call   0x371f
     995:	83 ec 08             	sub    $0x8,%esp
     998:	68 72 3e 00 00       	push   $0x3e72
     99d:	6a 01                	push   $0x1
     99f:	e8 c8 2e 00 00       	call   0x386c
     9a4:	83 c4 10             	add    $0x10,%esp
     9a7:	8d 65 f4             	lea    -0xc(%ebp),%esp
     9aa:	5b                   	pop    %ebx
     9ab:	5e                   	pop    %esi
     9ac:	5f                   	pop    %edi
     9ad:	5d                   	pop    %ebp
     9ae:	c3                   	ret    
     9af:	89 cb                	mov    %ecx,%ebx
     9b1:	01 7d d0             	add    %edi,-0x30(%ebp)
     9b4:	d1 65 d4             	shll   -0x2c(%ebp)
     9b7:	8b 45 d4             	mov    -0x2c(%ebp),%eax
     9ba:	3d 00 20 00 00       	cmp    $0x2000,%eax
     9bf:	0f 86 0a ff ff ff    	jbe    0x8cf
     9c5:	c7 45 d4 00 20 00 00 	movl   $0x2000,-0x2c(%ebp)
     9cc:	e9 fe fe ff ff       	jmp    0x8cf
     9d1:	81 7d d0 2d 14 00 00 	cmpl   $0x142d,-0x30(%ebp)
     9d8:	75 24                	jne    0x9fe
     9da:	83 ec 0c             	sub    $0xc,%esp
     9dd:	ff 75 e0             	push   -0x20(%ebp)
     9e0:	e8 62 2d 00 00       	call   0x3747
     9e5:	e8 3d 2d 00 00       	call   0x3727
     9ea:	83 c4 08             	add    $0x8,%esp
     9ed:	68 97 3e 00 00       	push   $0x3e97
     9f2:	6a 01                	push   $0x1
     9f4:	e8 73 2e 00 00       	call   0x386c
     9f9:	83 c4 10             	add    $0x10,%esp
     9fc:	eb a9                	jmp    0x9a7
     9fe:	83 ec 04             	sub    $0x4,%esp
     a01:	ff 75 d0             	push   -0x30(%ebp)
     a04:	68 80 3e 00 00       	push   $0x3e80
     a09:	6a 01                	push   $0x1
     a0b:	e8 5c 2e 00 00       	call   0x386c
     a10:	e8 0a 2d 00 00       	call   0x371f
     a15:	83 ec 08             	sub    $0x8,%esp
     a18:	68 a1 3e 00 00       	push   $0x3ea1
     a1d:	6a 01                	push   $0x1
     a1f:	e8 48 2e 00 00       	call   0x386c
     a24:	e8 f6 2c 00 00       	call   0x371f
     a29:	55                   	push   %ebp
     a2a:	89 e5                	mov    %esp,%ebp
     a2c:	57                   	push   %edi
     a2d:	56                   	push   %esi
     a2e:	53                   	push   %ebx
     a2f:	83 ec 24             	sub    $0x24,%esp
     a32:	68 b0 3e 00 00       	push   $0x3eb0
     a37:	6a 01                	push   $0x1
     a39:	e8 2e 2e 00 00       	call   0x386c
     a3e:	e8 d4 2c 00 00       	call   0x3717
     a43:	83 c4 10             	add    $0x10,%esp
     a46:	85 c0                	test   %eax,%eax
     a48:	75 02                	jne    0xa4c
     a4a:	eb fe                	jmp    0xa4a
     a4c:	89 c3                	mov    %eax,%ebx
     a4e:	e8 c4 2c 00 00       	call   0x3717
     a53:	89 c6                	mov    %eax,%esi
     a55:	85 c0                	test   %eax,%eax
     a57:	75 02                	jne    0xa5b
     a59:	eb fe                	jmp    0xa59
     a5b:	83 ec 0c             	sub    $0xc,%esp
     a5e:	8d 45 e0             	lea    -0x20(%ebp),%eax
     a61:	50                   	push   %eax
     a62:	e8 c8 2c 00 00       	call   0x372f
     a67:	e8 ab 2c 00 00       	call   0x3717
     a6c:	89 c7                	mov    %eax,%edi
     a6e:	83 c4 10             	add    $0x10,%esp
     a71:	85 c0                	test   %eax,%eax
     a73:	75 49                	jne    0xabe
     a75:	83 ec 0c             	sub    $0xc,%esp
     a78:	ff 75 e0             	push   -0x20(%ebp)
     a7b:	e8 c7 2c 00 00       	call   0x3747
     a80:	83 c4 0c             	add    $0xc,%esp
     a83:	6a 01                	push   $0x1
     a85:	68 75 44 00 00       	push   $0x4475
     a8a:	ff 75 e4             	push   -0x1c(%ebp)
     a8d:	e8 ad 2c 00 00       	call   0x373f
     a92:	83 c4 10             	add    $0x10,%esp
     a95:	83 f8 01             	cmp    $0x1,%eax
     a98:	75 10                	jne    0xaaa
     a9a:	83 ec 0c             	sub    $0xc,%esp
     a9d:	ff 75 e4             	push   -0x1c(%ebp)
     aa0:	e8 a2 2c 00 00       	call   0x3747
     aa5:	83 c4 10             	add    $0x10,%esp
     aa8:	eb fe                	jmp    0xaa8
     aaa:	83 ec 08             	sub    $0x8,%esp
     aad:	68 ba 3e 00 00       	push   $0x3eba
     ab2:	6a 01                	push   $0x1
     ab4:	e8 b3 2d 00 00       	call   0x386c
     ab9:	83 c4 10             	add    $0x10,%esp
     abc:	eb dc                	jmp    0xa9a
     abe:	83 ec 0c             	sub    $0xc,%esp
     ac1:	ff 75 e4             	push   -0x1c(%ebp)
     ac4:	e8 7e 2c 00 00       	call   0x3747
     ac9:	83 c4 0c             	add    $0xc,%esp
     acc:	68 00 20 00 00       	push   $0x2000
     ad1:	68 e0 82 00 00       	push   $0x82e0
     ad6:	ff 75 e0             	push   -0x20(%ebp)
     ad9:	e8 59 2c 00 00       	call   0x3737
     ade:	83 c4 10             	add    $0x10,%esp
     ae1:	83 f8 01             	cmp    $0x1,%eax
     ae4:	74 1a                	je     0xb00
     ae6:	83 ec 08             	sub    $0x8,%esp
     ae9:	68 ce 3e 00 00       	push   $0x3ece
     aee:	6a 01                	push   $0x1
     af0:	e8 77 2d 00 00       	call   0x386c
     af5:	83 c4 10             	add    $0x10,%esp
     af8:	8d 65 f4             	lea    -0xc(%ebp),%esp
     afb:	5b                   	pop    %ebx
     afc:	5e                   	pop    %esi
     afd:	5f                   	pop    %edi
     afe:	5d                   	pop    %ebp
     aff:	c3                   	ret    
     b00:	83 ec 0c             	sub    $0xc,%esp
     b03:	ff 75 e0             	push   -0x20(%ebp)
     b06:	e8 3c 2c 00 00       	call   0x3747
     b0b:	83 c4 08             	add    $0x8,%esp
     b0e:	68 e1 3e 00 00       	push   $0x3ee1
     b13:	6a 01                	push   $0x1
     b15:	e8 52 2d 00 00       	call   0x386c
     b1a:	89 1c 24             	mov    %ebx,(%esp)
     b1d:	e8 2d 2c 00 00       	call   0x374f
     b22:	89 34 24             	mov    %esi,(%esp)
     b25:	e8 25 2c 00 00       	call   0x374f
     b2a:	89 3c 24             	mov    %edi,(%esp)
     b2d:	e8 1d 2c 00 00       	call   0x374f
     b32:	83 c4 08             	add    $0x8,%esp
     b35:	68 ea 3e 00 00       	push   $0x3eea
     b3a:	6a 01                	push   $0x1
     b3c:	e8 2b 2d 00 00       	call   0x386c
     b41:	e8 e1 2b 00 00       	call   0x3727
     b46:	e8 dc 2b 00 00       	call   0x3727
     b4b:	e8 d7 2b 00 00       	call   0x3727
     b50:	83 c4 08             	add    $0x8,%esp
     b53:	68 f3 3e 00 00       	push   $0x3ef3
     b58:	6a 01                	push   $0x1
     b5a:	e8 0d 2d 00 00       	call   0x386c
     b5f:	83 c4 10             	add    $0x10,%esp
     b62:	eb 94                	jmp    0xaf8
     b64:	55                   	push   %ebp
     b65:	89 e5                	mov    %esp,%ebp
     b67:	56                   	push   %esi
     b68:	53                   	push   %ebx
     b69:	be 00 00 00 00       	mov    $0x0,%esi
     b6e:	83 fe 63             	cmp    $0x63,%esi
     b71:	7f 4d                	jg     0xbc0
     b73:	e8 9f 2b 00 00       	call   0x3717
     b78:	89 c3                	mov    %eax,%ebx
     b7a:	85 c0                	test   %eax,%eax
     b7c:	78 10                	js     0xb8e
     b7e:	74 3b                	je     0xbbb
     b80:	e8 a2 2b 00 00       	call   0x3727
     b85:	39 d8                	cmp    %ebx,%eax
     b87:	75 1e                	jne    0xba7
     b89:	83 c6 01             	add    $0x1,%esi
     b8c:	eb e0                	jmp    0xb6e
     b8e:	83 ec 08             	sub    $0x8,%esp
     b91:	68 5d 4a 00 00       	push   $0x4a5d
     b96:	6a 01                	push   $0x1
     b98:	e8 cf 2c 00 00       	call   0x386c
     b9d:	83 c4 10             	add    $0x10,%esp
     ba0:	8d 65 f8             	lea    -0x8(%ebp),%esp
     ba3:	5b                   	pop    %ebx
     ba4:	5e                   	pop    %esi
     ba5:	5d                   	pop    %ebp
     ba6:	c3                   	ret    
     ba7:	83 ec 08             	sub    $0x8,%esp
     baa:	68 ff 3e 00 00       	push   $0x3eff
     baf:	6a 01                	push   $0x1
     bb1:	e8 b6 2c 00 00       	call   0x386c
     bb6:	83 c4 10             	add    $0x10,%esp
     bb9:	eb e5                	jmp    0xba0
     bbb:	e8 5f 2b 00 00       	call   0x371f
     bc0:	83 ec 08             	sub    $0x8,%esp
     bc3:	68 0f 3f 00 00       	push   $0x3f0f
     bc8:	6a 01                	push   $0x1
     bca:	e8 9d 2c 00 00       	call   0x386c
     bcf:	83 c4 10             	add    $0x10,%esp
     bd2:	eb cc                	jmp    0xba0
     bd4:	55                   	push   %ebp
     bd5:	89 e5                	mov    %esp,%ebp
     bd7:	57                   	push   %edi
     bd8:	56                   	push   %esi
     bd9:	53                   	push   %ebx
     bda:	83 ec 14             	sub    $0x14,%esp
     bdd:	68 1c 3f 00 00       	push   $0x3f1c
     be2:	6a 01                	push   $0x1
     be4:	e8 83 2c 00 00       	call   0x386c
     be9:	e8 b1 2b 00 00       	call   0x379f
     bee:	89 c6                	mov    %eax,%esi
     bf0:	e8 22 2b 00 00       	call   0x3717
     bf5:	83 c4 10             	add    $0x10,%esp
     bf8:	85 c0                	test   %eax,%eax
     bfa:	0f 85 82 00 00 00    	jne    0xc82
     c00:	bb 00 00 00 00       	mov    $0x0,%ebx
     c05:	eb 04                	jmp    0xc0b
     c07:	89 18                	mov    %ebx,(%eax)
     c09:	89 c3                	mov    %eax,%ebx
     c0b:	83 ec 0c             	sub    $0xc,%esp
     c0e:	68 11 27 00 00       	push   $0x2711
     c13:	e8 7a 2e 00 00       	call   0x3a92
     c18:	83 c4 10             	add    $0x10,%esp
     c1b:	85 c0                	test   %eax,%eax
     c1d:	75 e8                	jne    0xc07
     c1f:	eb 10                	jmp    0xc31
     c21:	8b 3b                	mov    (%ebx),%edi
     c23:	83 ec 0c             	sub    $0xc,%esp
     c26:	53                   	push   %ebx
     c27:	e8 a6 2d 00 00       	call   0x39d2
     c2c:	83 c4 10             	add    $0x10,%esp
     c2f:	89 fb                	mov    %edi,%ebx
     c31:	85 db                	test   %ebx,%ebx
     c33:	75 ec                	jne    0xc21
     c35:	83 ec 0c             	sub    $0xc,%esp
     c38:	68 00 50 00 00       	push   $0x5000
     c3d:	e8 50 2e 00 00       	call   0x3a92
     c42:	83 c4 10             	add    $0x10,%esp
     c45:	85 c0                	test   %eax,%eax
     c47:	74 1d                	je     0xc66
     c49:	83 ec 0c             	sub    $0xc,%esp
     c4c:	50                   	push   %eax
     c4d:	e8 80 2d 00 00       	call   0x39d2
     c52:	83 c4 08             	add    $0x8,%esp
     c55:	68 40 3f 00 00       	push   $0x3f40
     c5a:	6a 01                	push   $0x1
     c5c:	e8 0b 2c 00 00       	call   0x386c
     c61:	e8 b9 2a 00 00       	call   0x371f
     c66:	83 ec 08             	sub    $0x8,%esp
     c69:	68 26 3f 00 00       	push   $0x3f26
     c6e:	6a 01                	push   $0x1
     c70:	e8 f7 2b 00 00       	call   0x386c
     c75:	89 34 24             	mov    %esi,(%esp)
     c78:	e8 d2 2a 00 00       	call   0x374f
     c7d:	e8 9d 2a 00 00       	call   0x371f
     c82:	e8 a0 2a 00 00       	call   0x3727
     c87:	8d 65 f4             	lea    -0xc(%ebp),%esp
     c8a:	5b                   	pop    %ebx
     c8b:	5e                   	pop    %esi
     c8c:	5f                   	pop    %edi
     c8d:	5d                   	pop    %ebp
     c8e:	c3                   	ret    
     c8f:	55                   	push   %ebp
     c90:	89 e5                	mov    %esp,%ebp
     c92:	57                   	push   %edi
     c93:	56                   	push   %esi
     c94:	53                   	push   %ebx
     c95:	83 ec 24             	sub    $0x24,%esp
     c98:	68 48 3f 00 00       	push   $0x3f48
     c9d:	6a 01                	push   $0x1
     c9f:	e8 c8 2b 00 00       	call   0x386c
     ca4:	c7 04 24 57 3f 00 00 	movl   $0x3f57,(%esp)
     cab:	e8 bf 2a 00 00       	call   0x376f
     cb0:	83 c4 08             	add    $0x8,%esp
     cb3:	68 02 02 00 00       	push   $0x202
     cb8:	68 57 3f 00 00       	push   $0x3f57
     cbd:	e8 9d 2a 00 00       	call   0x375f
     cc2:	83 c4 10             	add    $0x10,%esp
     cc5:	85 c0                	test   %eax,%eax
     cc7:	78 4d                	js     0xd16
     cc9:	89 c6                	mov    %eax,%esi
     ccb:	e8 47 2a 00 00       	call   0x3717
     cd0:	89 c7                	mov    %eax,%edi
     cd2:	85 c0                	test   %eax,%eax
     cd4:	75 57                	jne    0xd2d
     cd6:	b8 63 00 00 00       	mov    $0x63,%eax
     cdb:	83 ec 04             	sub    $0x4,%esp
     cde:	6a 0a                	push   $0xa
     ce0:	50                   	push   %eax
     ce1:	8d 45 de             	lea    -0x22(%ebp),%eax
     ce4:	50                   	push   %eax
     ce5:	e8 fa 28 00 00       	call   0x35e4
     cea:	83 c4 10             	add    $0x10,%esp
     ced:	bb 00 00 00 00       	mov    $0x0,%ebx
     cf2:	81 fb e7 03 00 00    	cmp    $0x3e7,%ebx
     cf8:	7f 4c                	jg     0xd46
     cfa:	83 ec 04             	sub    $0x4,%esp
     cfd:	6a 0a                	push   $0xa
     cff:	8d 45 de             	lea    -0x22(%ebp),%eax
     d02:	50                   	push   %eax
     d03:	56                   	push   %esi
     d04:	e8 36 2a 00 00       	call   0x373f
     d09:	83 c4 10             	add    $0x10,%esp
     d0c:	83 f8 0a             	cmp    $0xa,%eax
     d0f:	75 23                	jne    0xd34
     d11:	83 c3 01             	add    $0x1,%ebx
     d14:	eb dc                	jmp    0xcf2
     d16:	83 ec 08             	sub    $0x8,%esp
     d19:	68 1c 4c 00 00       	push   $0x4c1c
     d1e:	6a 01                	push   $0x1
     d20:	e8 47 2b 00 00       	call   0x386c
     d25:	83 c4 10             	add    $0x10,%esp
     d28:	e9 e4 00 00 00       	jmp    0xe11
     d2d:	b8 70 00 00 00       	mov    $0x70,%eax
     d32:	eb a7                	jmp    0xcdb
     d34:	83 ec 08             	sub    $0x8,%esp
     d37:	68 48 4c 00 00       	push   $0x4c48
     d3c:	6a 01                	push   $0x1
     d3e:	e8 29 2b 00 00       	call   0x386c
     d43:	83 c4 10             	add    $0x10,%esp
     d46:	85 ff                	test   %edi,%edi
     d48:	74 4d                	je     0xd97
     d4a:	e8 d8 29 00 00       	call   0x3727
     d4f:	83 ec 0c             	sub    $0xc,%esp
     d52:	56                   	push   %esi
     d53:	e8 ef 29 00 00       	call   0x3747
     d58:	83 c4 08             	add    $0x8,%esp
     d5b:	6a 00                	push   $0x0
     d5d:	68 57 3f 00 00       	push   $0x3f57
     d62:	e8 f8 29 00 00       	call   0x375f
     d67:	89 c7                	mov    %eax,%edi
     d69:	83 c4 10             	add    $0x10,%esp
     d6c:	85 c0                	test   %eax,%eax
     d6e:	78 2c                	js     0xd9c
     d70:	be 00 00 00 00       	mov    $0x0,%esi
     d75:	bb 00 00 00 00       	mov    $0x0,%ebx
     d7a:	83 ec 04             	sub    $0x4,%esp
     d7d:	6a 0a                	push   $0xa
     d7f:	8d 45 de             	lea    -0x22(%ebp),%eax
     d82:	50                   	push   %eax
     d83:	57                   	push   %edi
     d84:	e8 ae 29 00 00       	call   0x3737
     d89:	83 c4 10             	add    $0x10,%esp
     d8c:	85 c0                	test   %eax,%eax
     d8e:	7e 41                	jle    0xdd1
     d90:	b8 00 00 00 00       	mov    $0x0,%eax
     d95:	eb 21                	jmp    0xdb8
     d97:	e8 83 29 00 00       	call   0x371f
     d9c:	83 ec 08             	sub    $0x8,%esp
     d9f:	68 68 4c 00 00       	push   $0x4c68
     da4:	6a 01                	push   $0x1
     da6:	e8 c1 2a 00 00       	call   0x386c
     dab:	83 c4 10             	add    $0x10,%esp
     dae:	eb 61                	jmp    0xe11
     db0:	80 fa 70             	cmp    $0x70,%dl
     db3:	74 17                	je     0xdcc
     db5:	83 c0 01             	add    $0x1,%eax
     db8:	83 f8 09             	cmp    $0x9,%eax
     dbb:	77 bd                	ja     0xd7a
     dbd:	0f b6 54 05 de       	movzbl -0x22(%ebp,%eax,1),%edx
     dc2:	80 fa 63             	cmp    $0x63,%dl
     dc5:	75 e9                	jne    0xdb0
     dc7:	83 c3 01             	add    $0x1,%ebx
     dca:	eb e4                	jmp    0xdb0
     dcc:	83 c6 01             	add    $0x1,%esi
     dcf:	eb e4                	jmp    0xdb5
     dd1:	83 ec 0c             	sub    $0xc,%esp
     dd4:	57                   	push   %edi
     dd5:	e8 6d 29 00 00       	call   0x3747
     dda:	c7 04 24 57 3f 00 00 	movl   $0x3f57,(%esp)
     de1:	e8 89 29 00 00       	call   0x376f
     de6:	83 c4 10             	add    $0x10,%esp
     de9:	81 fb 10 27 00 00    	cmp    $0x2710,%ebx
     def:	0f 94 c2             	sete   %dl
     df2:	81 fe 10 27 00 00    	cmp    $0x2710,%esi
     df8:	0f 94 c0             	sete   %al
     dfb:	84 c2                	test   %al,%dl
     dfd:	74 1a                	je     0xe19
     dff:	83 ec 08             	sub    $0x8,%esp
     e02:	68 60 3f 00 00       	push   $0x3f60
     e07:	6a 01                	push   $0x1
     e09:	e8 5e 2a 00 00       	call   0x386c
     e0e:	83 c4 10             	add    $0x10,%esp
     e11:	8d 65 f4             	lea    -0xc(%ebp),%esp
     e14:	5b                   	pop    %ebx
     e15:	5e                   	pop    %esi
     e16:	5f                   	pop    %edi
     e17:	5d                   	pop    %ebp
     e18:	c3                   	ret    
     e19:	56                   	push   %esi
     e1a:	53                   	push   %ebx
     e1b:	68 6d 3f 00 00       	push   $0x3f6d
     e20:	6a 01                	push   $0x1
     e22:	e8 45 2a 00 00       	call   0x386c
     e27:	e8 f3 28 00 00       	call   0x371f
     e2c:	55                   	push   %ebp
     e2d:	89 e5                	mov    %esp,%ebp
     e2f:	57                   	push   %edi
     e30:	56                   	push   %esi
     e31:	53                   	push   %ebx
     e32:	83 ec 34             	sub    $0x34,%esp
     e35:	c7 45 d8 82 3f 00 00 	movl   $0x3f82,-0x28(%ebp)
     e3c:	c7 45 dc cb 40 00 00 	movl   $0x40cb,-0x24(%ebp)
     e43:	c7 45 e0 cf 40 00 00 	movl   $0x40cf,-0x20(%ebp)
     e4a:	c7 45 e4 85 3f 00 00 	movl   $0x3f85,-0x1c(%ebp)
     e51:	68 88 3f 00 00       	push   $0x3f88
     e56:	6a 01                	push   $0x1
     e58:	e8 0f 2a 00 00       	call   0x386c
     e5d:	83 c4 10             	add    $0x10,%esp
     e60:	be 00 00 00 00       	mov    $0x0,%esi
     e65:	eb 45                	jmp    0xeac
     e67:	83 ec 08             	sub    $0x8,%esp
     e6a:	68 5d 4a 00 00       	push   $0x4a5d
     e6f:	6a 01                	push   $0x1
     e71:	e8 f6 29 00 00       	call   0x386c
     e76:	e8 a4 28 00 00       	call   0x371f
     e7b:	83 ec 08             	sub    $0x8,%esp
     e7e:	68 23 42 00 00       	push   $0x4223
     e83:	6a 01                	push   $0x1
     e85:	e8 e2 29 00 00       	call   0x386c
     e8a:	e8 90 28 00 00       	call   0x371f
     e8f:	83 ec 04             	sub    $0x4,%esp
     e92:	50                   	push   %eax
     e93:	68 98 3f 00 00       	push   $0x3f98
     e98:	6a 01                	push   $0x1
     e9a:	e8 cd 29 00 00       	call   0x386c
     e9f:	e8 7b 28 00 00       	call   0x371f
     ea4:	e8 76 28 00 00       	call   0x371f
     ea9:	83 c6 01             	add    $0x1,%esi
     eac:	83 fe 03             	cmp    $0x3,%esi
     eaf:	7f 78                	jg     0xf29
     eb1:	8b 7c b5 d8          	mov    -0x28(%ebp,%esi,4),%edi
     eb5:	83 ec 0c             	sub    $0xc,%esp
     eb8:	57                   	push   %edi
     eb9:	e8 b1 28 00 00       	call   0x376f
     ebe:	e8 54 28 00 00       	call   0x3717
     ec3:	83 c4 10             	add    $0x10,%esp
     ec6:	85 c0                	test   %eax,%eax
     ec8:	78 9d                	js     0xe67
     eca:	75 dd                	jne    0xea9
     ecc:	89 c3                	mov    %eax,%ebx
     ece:	83 ec 08             	sub    $0x8,%esp
     ed1:	68 02 02 00 00       	push   $0x202
     ed6:	57                   	push   %edi
     ed7:	e8 83 28 00 00       	call   0x375f
     edc:	89 c7                	mov    %eax,%edi
     ede:	83 c4 10             	add    $0x10,%esp
     ee1:	85 c0                	test   %eax,%eax
     ee3:	78 96                	js     0xe7b
     ee5:	83 ec 04             	sub    $0x4,%esp
     ee8:	68 00 02 00 00       	push   $0x200
     eed:	83 c6 30             	add    $0x30,%esi
     ef0:	56                   	push   %esi
     ef1:	68 e0 82 00 00       	push   $0x82e0
     ef6:	e8 e9 26 00 00       	call   0x35e4
     efb:	83 c4 10             	add    $0x10,%esp
     efe:	83 fb 0b             	cmp    $0xb,%ebx
     f01:	7f a1                	jg     0xea4
     f03:	83 ec 04             	sub    $0x4,%esp
     f06:	68 f4 01 00 00       	push   $0x1f4
     f0b:	68 e0 82 00 00       	push   $0x82e0
     f10:	57                   	push   %edi
     f11:	e8 29 28 00 00       	call   0x373f
     f16:	83 c4 10             	add    $0x10,%esp
     f19:	3d f4 01 00 00       	cmp    $0x1f4,%eax
     f1e:	0f 85 6b ff ff ff    	jne    0xe8f
     f24:	83 c3 01             	add    $0x1,%ebx
     f27:	eb d5                	jmp    0xefe
     f29:	bb 00 00 00 00       	mov    $0x0,%ebx
     f2e:	eb 08                	jmp    0xf38
     f30:	e8 f2 27 00 00       	call   0x3727
     f35:	83 c3 01             	add    $0x1,%ebx
     f38:	83 fb 03             	cmp    $0x3,%ebx
     f3b:	7e f3                	jle    0xf30
     f3d:	bb 00 00 00 00       	mov    $0x0,%ebx
     f42:	eb 75                	jmp    0xfb9
     f44:	83 ec 08             	sub    $0x8,%esp
     f47:	68 a9 3f 00 00       	push   $0x3fa9
     f4c:	6a 01                	push   $0x1
     f4e:	e8 19 29 00 00       	call   0x386c
     f53:	e8 c7 27 00 00       	call   0x371f
     f58:	01 7d d4             	add    %edi,-0x2c(%ebp)
     f5b:	83 ec 04             	sub    $0x4,%esp
     f5e:	68 00 20 00 00       	push   $0x2000
     f63:	68 e0 82 00 00       	push   $0x82e0
     f68:	56                   	push   %esi
     f69:	e8 c9 27 00 00       	call   0x3737
     f6e:	89 c7                	mov    %eax,%edi
     f70:	83 c4 10             	add    $0x10,%esp
     f73:	85 c0                	test   %eax,%eax
     f75:	7e 1c                	jle    0xf93
     f77:	b8 00 00 00 00       	mov    $0x0,%eax
     f7c:	39 f8                	cmp    %edi,%eax
     f7e:	7d d8                	jge    0xf58
     f80:	0f be 88 e0 82 00 00 	movsbl 0x82e0(%eax),%ecx
     f87:	8d 53 30             	lea    0x30(%ebx),%edx
     f8a:	39 d1                	cmp    %edx,%ecx
     f8c:	75 b6                	jne    0xf44
     f8e:	83 c0 01             	add    $0x1,%eax
     f91:	eb e9                	jmp    0xf7c
     f93:	83 ec 0c             	sub    $0xc,%esp
     f96:	56                   	push   %esi
     f97:	e8 ab 27 00 00       	call   0x3747
     f9c:	83 c4 10             	add    $0x10,%esp
     f9f:	81 7d d4 70 17 00 00 	cmpl   $0x1770,-0x2c(%ebp)
     fa6:	75 39                	jne    0xfe1
     fa8:	83 ec 0c             	sub    $0xc,%esp
     fab:	ff 75 d0             	push   -0x30(%ebp)
     fae:	e8 bc 27 00 00       	call   0x376f
     fb3:	83 c3 01             	add    $0x1,%ebx
     fb6:	83 c4 10             	add    $0x10,%esp
     fb9:	83 fb 01             	cmp    $0x1,%ebx
     fbc:	7f 3a                	jg     0xff8
     fbe:	8b 44 9d d8          	mov    -0x28(%ebp,%ebx,4),%eax
     fc2:	89 45 d0             	mov    %eax,-0x30(%ebp)
     fc5:	83 ec 08             	sub    $0x8,%esp
     fc8:	6a 00                	push   $0x0
     fca:	50                   	push   %eax
     fcb:	e8 8f 27 00 00       	call   0x375f
     fd0:	89 c6                	mov    %eax,%esi
     fd2:	83 c4 10             	add    $0x10,%esp
     fd5:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
     fdc:	e9 7a ff ff ff       	jmp    0xf5b
     fe1:	83 ec 04             	sub    $0x4,%esp
     fe4:	ff 75 d4             	push   -0x2c(%ebp)
     fe7:	68 b5 3f 00 00       	push   $0x3fb5
     fec:	6a 01                	push   $0x1
     fee:	e8 79 28 00 00       	call   0x386c
     ff3:	e8 27 27 00 00       	call   0x371f
     ff8:	83 ec 08             	sub    $0x8,%esp
     ffb:	68 c6 3f 00 00       	push   $0x3fc6
    1000:	6a 01                	push   $0x1
    1002:	e8 65 28 00 00       	call   0x386c
    1007:	83 c4 10             	add    $0x10,%esp
    100a:	8d 65 f4             	lea    -0xc(%ebp),%esp
    100d:	5b                   	pop    %ebx
    100e:	5e                   	pop    %esi
    100f:	5f                   	pop    %edi
    1010:	5d                   	pop    %ebp
    1011:	c3                   	ret    
    1012:	55                   	push   %ebp
    1013:	89 e5                	mov    %esp,%ebp
    1015:	56                   	push   %esi
    1016:	53                   	push   %ebx
    1017:	83 ec 28             	sub    $0x28,%esp
    101a:	68 d4 3f 00 00       	push   $0x3fd4
    101f:	6a 01                	push   $0x1
    1021:	e8 46 28 00 00       	call   0x386c
    1026:	83 c4 10             	add    $0x10,%esp
    1029:	be 00 00 00 00       	mov    $0x0,%esi
    102e:	83 fe 03             	cmp    $0x3,%esi
    1031:	0f 8f bc 00 00 00    	jg     0x10f3
    1037:	e8 db 26 00 00       	call   0x3717
    103c:	89 c3                	mov    %eax,%ebx
    103e:	85 c0                	test   %eax,%eax
    1040:	78 07                	js     0x1049
    1042:	74 19                	je     0x105d
    1044:	83 c6 01             	add    $0x1,%esi
    1047:	eb e5                	jmp    0x102e
    1049:	83 ec 08             	sub    $0x8,%esp
    104c:	68 5d 4a 00 00       	push   $0x4a5d
    1051:	6a 01                	push   $0x1
    1053:	e8 14 28 00 00       	call   0x386c
    1058:	e8 c2 26 00 00       	call   0x371f
    105d:	8d 46 70             	lea    0x70(%esi),%eax
    1060:	88 45 d8             	mov    %al,-0x28(%ebp)
    1063:	c6 45 da 00          	movb   $0x0,-0x26(%ebp)
    1067:	eb 17                	jmp    0x1080
    1069:	83 ec 08             	sub    $0x8,%esp
    106c:	68 23 42 00 00       	push   $0x4223
    1071:	6a 01                	push   $0x1
    1073:	e8 f4 27 00 00       	call   0x386c
    1078:	e8 a2 26 00 00       	call   0x371f
    107d:	83 c3 01             	add    $0x1,%ebx
    1080:	83 fb 13             	cmp    $0x13,%ebx
    1083:	7f 69                	jg     0x10ee
    1085:	8d 43 30             	lea    0x30(%ebx),%eax
    1088:	88 45 d9             	mov    %al,-0x27(%ebp)
    108b:	83 ec 08             	sub    $0x8,%esp
    108e:	68 02 02 00 00       	push   $0x202
    1093:	8d 45 d8             	lea    -0x28(%ebp),%eax
    1096:	50                   	push   %eax
    1097:	e8 c3 26 00 00       	call   0x375f
    109c:	83 c4 10             	add    $0x10,%esp
    109f:	85 c0                	test   %eax,%eax
    10a1:	78 c6                	js     0x1069
    10a3:	83 ec 0c             	sub    $0xc,%esp
    10a6:	50                   	push   %eax
    10a7:	e8 9b 26 00 00       	call   0x3747
    10ac:	83 c4 10             	add    $0x10,%esp
    10af:	85 db                	test   %ebx,%ebx
    10b1:	7e ca                	jle    0x107d
    10b3:	f6 c3 01             	test   $0x1,%bl
    10b6:	75 c5                	jne    0x107d
    10b8:	89 d8                	mov    %ebx,%eax
    10ba:	c1 e8 1f             	shr    $0x1f,%eax
    10bd:	01 d8                	add    %ebx,%eax
    10bf:	d1 f8                	sar    %eax
    10c1:	83 c0 30             	add    $0x30,%eax
    10c4:	88 45 d9             	mov    %al,-0x27(%ebp)
    10c7:	83 ec 0c             	sub    $0xc,%esp
    10ca:	8d 45 d8             	lea    -0x28(%ebp),%eax
    10cd:	50                   	push   %eax
    10ce:	e8 9c 26 00 00       	call   0x376f
    10d3:	83 c4 10             	add    $0x10,%esp
    10d6:	85 c0                	test   %eax,%eax
    10d8:	79 a3                	jns    0x107d
    10da:	83 ec 08             	sub    $0x8,%esp
    10dd:	68 d5 3b 00 00       	push   $0x3bd5
    10e2:	6a 01                	push   $0x1
    10e4:	e8 83 27 00 00       	call   0x386c
    10e9:	e8 31 26 00 00       	call   0x371f
    10ee:	e8 2c 26 00 00       	call   0x371f
    10f3:	bb 00 00 00 00       	mov    $0x0,%ebx
    10f8:	eb 08                	jmp    0x1102
    10fa:	e8 28 26 00 00       	call   0x3727
    10ff:	83 c3 01             	add    $0x1,%ebx
    1102:	83 fb 03             	cmp    $0x3,%ebx
    1105:	7e f3                	jle    0x10fa
    1107:	c6 45 da 00          	movb   $0x0,-0x26(%ebp)
    110b:	c6 45 d9 00          	movb   $0x0,-0x27(%ebp)
    110f:	c6 45 d8 00          	movb   $0x0,-0x28(%ebp)
    1113:	bb 00 00 00 00       	mov    $0x0,%ebx
    1118:	e9 89 00 00 00       	jmp    0x11a6
    111d:	8d 53 ff             	lea    -0x1(%ebx),%edx
    1120:	83 fa 08             	cmp    $0x8,%edx
    1123:	76 54                	jbe    0x1179
    1125:	85 c0                	test   %eax,%eax
    1127:	79 6c                	jns    0x1195
    1129:	83 c6 01             	add    $0x1,%esi
    112c:	83 fe 03             	cmp    $0x3,%esi
    112f:	7f 72                	jg     0x11a3
    1131:	8d 46 70             	lea    0x70(%esi),%eax
    1134:	88 45 d8             	mov    %al,-0x28(%ebp)
    1137:	8d 43 30             	lea    0x30(%ebx),%eax
    113a:	88 45 d9             	mov    %al,-0x27(%ebp)
    113d:	83 ec 08             	sub    $0x8,%esp
    1140:	6a 00                	push   $0x0
    1142:	8d 45 d8             	lea    -0x28(%ebp),%eax
    1145:	50                   	push   %eax
    1146:	e8 14 26 00 00       	call   0x375f
    114b:	83 c4 10             	add    $0x10,%esp
    114e:	85 db                	test   %ebx,%ebx
    1150:	0f 94 c2             	sete   %dl
    1153:	83 fb 09             	cmp    $0x9,%ebx
    1156:	0f 9f c1             	setg   %cl
    1159:	08 ca                	or     %cl,%dl
    115b:	74 c0                	je     0x111d
    115d:	85 c0                	test   %eax,%eax
    115f:	79 bc                	jns    0x111d
    1161:	83 ec 04             	sub    $0x4,%esp
    1164:	8d 45 d8             	lea    -0x28(%ebp),%eax
    1167:	50                   	push   %eax
    1168:	68 94 4c 00 00       	push   $0x4c94
    116d:	6a 01                	push   $0x1
    116f:	e8 f8 26 00 00       	call   0x386c
    1174:	e8 a6 25 00 00       	call   0x371f
    1179:	85 c0                	test   %eax,%eax
    117b:	78 a8                	js     0x1125
    117d:	83 ec 04             	sub    $0x4,%esp
    1180:	8d 45 d8             	lea    -0x28(%ebp),%eax
    1183:	50                   	push   %eax
    1184:	68 b8 4c 00 00       	push   $0x4cb8
    1189:	6a 01                	push   $0x1
    118b:	e8 dc 26 00 00       	call   0x386c
    1190:	e8 8a 25 00 00       	call   0x371f
    1195:	83 ec 0c             	sub    $0xc,%esp
    1198:	50                   	push   %eax
    1199:	e8 a9 25 00 00       	call   0x3747
    119e:	83 c4 10             	add    $0x10,%esp
    11a1:	eb 86                	jmp    0x1129
    11a3:	83 c3 01             	add    $0x1,%ebx
    11a6:	83 fb 13             	cmp    $0x13,%ebx
    11a9:	7f 0a                	jg     0x11b5
    11ab:	be 00 00 00 00       	mov    $0x0,%esi
    11b0:	e9 77 ff ff ff       	jmp    0x112c
    11b5:	be 00 00 00 00       	mov    $0x0,%esi
    11ba:	eb 26                	jmp    0x11e2
    11bc:	8d 46 70             	lea    0x70(%esi),%eax
    11bf:	88 45 d8             	mov    %al,-0x28(%ebp)
    11c2:	8d 46 30             	lea    0x30(%esi),%eax
    11c5:	88 45 d9             	mov    %al,-0x27(%ebp)
    11c8:	83 ec 0c             	sub    $0xc,%esp
    11cb:	8d 45 d8             	lea    -0x28(%ebp),%eax
    11ce:	50                   	push   %eax
    11cf:	e8 9b 25 00 00       	call   0x376f
    11d4:	83 c3 01             	add    $0x1,%ebx
    11d7:	83 c4 10             	add    $0x10,%esp
    11da:	83 fb 03             	cmp    $0x3,%ebx
    11dd:	7e dd                	jle    0x11bc
    11df:	83 c6 01             	add    $0x1,%esi
    11e2:	83 fe 13             	cmp    $0x13,%esi
    11e5:	7f 07                	jg     0x11ee
    11e7:	bb 00 00 00 00       	mov    $0x0,%ebx
    11ec:	eb ec                	jmp    0x11da
    11ee:	83 ec 08             	sub    $0x8,%esp
    11f1:	68 e7 3f 00 00       	push   $0x3fe7
    11f6:	6a 01                	push   $0x1
    11f8:	e8 6f 26 00 00       	call   0x386c
    11fd:	83 c4 10             	add    $0x10,%esp
    1200:	8d 65 f8             	lea    -0x8(%ebp),%esp
    1203:	5b                   	pop    %ebx
    1204:	5e                   	pop    %esi
    1205:	5d                   	pop    %ebp
    1206:	c3                   	ret    
    1207:	55                   	push   %ebp
    1208:	89 e5                	mov    %esp,%ebp
    120a:	56                   	push   %esi
    120b:	53                   	push   %ebx
    120c:	83 ec 08             	sub    $0x8,%esp
    120f:	68 f8 3f 00 00       	push   $0x3ff8
    1214:	6a 01                	push   $0x1
    1216:	e8 51 26 00 00       	call   0x386c
    121b:	83 c4 08             	add    $0x8,%esp
    121e:	68 02 02 00 00       	push   $0x202
    1223:	68 09 40 00 00       	push   $0x4009
    1228:	e8 32 25 00 00       	call   0x375f
    122d:	83 c4 10             	add    $0x10,%esp
    1230:	85 c0                	test   %eax,%eax
    1232:	0f 88 f0 00 00 00    	js     0x1328
    1238:	89 c3                	mov    %eax,%ebx
    123a:	83 ec 04             	sub    $0x4,%esp
    123d:	6a 05                	push   $0x5
    123f:	68 2e 40 00 00       	push   $0x402e
    1244:	50                   	push   %eax
    1245:	e8 f5 24 00 00       	call   0x373f
    124a:	89 1c 24             	mov    %ebx,(%esp)
    124d:	e8 f5 24 00 00       	call   0x3747
    1252:	83 c4 08             	add    $0x8,%esp
    1255:	6a 02                	push   $0x2
    1257:	68 09 40 00 00       	push   $0x4009
    125c:	e8 fe 24 00 00       	call   0x375f
    1261:	89 c3                	mov    %eax,%ebx
    1263:	83 c4 10             	add    $0x10,%esp
    1266:	85 c0                	test   %eax,%eax
    1268:	0f 88 ce 00 00 00    	js     0x133c
    126e:	83 ec 0c             	sub    $0xc,%esp
    1271:	68 09 40 00 00       	push   $0x4009
    1276:	e8 f4 24 00 00       	call   0x376f
    127b:	83 c4 10             	add    $0x10,%esp
    127e:	85 c0                	test   %eax,%eax
    1280:	0f 85 ca 00 00 00    	jne    0x1350
    1286:	83 ec 08             	sub    $0x8,%esp
    1289:	68 02 02 00 00       	push   $0x202
    128e:	68 09 40 00 00       	push   $0x4009
    1293:	e8 c7 24 00 00       	call   0x375f
    1298:	89 c6                	mov    %eax,%esi
    129a:	83 c4 0c             	add    $0xc,%esp
    129d:	6a 03                	push   $0x3
    129f:	68 66 40 00 00       	push   $0x4066
    12a4:	50                   	push   %eax
    12a5:	e8 95 24 00 00       	call   0x373f
    12aa:	89 34 24             	mov    %esi,(%esp)
    12ad:	e8 95 24 00 00       	call   0x3747
    12b2:	83 c4 0c             	add    $0xc,%esp
    12b5:	68 00 20 00 00       	push   $0x2000
    12ba:	68 e0 82 00 00       	push   $0x82e0
    12bf:	53                   	push   %ebx
    12c0:	e8 72 24 00 00       	call   0x3737
    12c5:	83 c4 10             	add    $0x10,%esp
    12c8:	83 f8 05             	cmp    $0x5,%eax
    12cb:	0f 85 93 00 00 00    	jne    0x1364
    12d1:	80 3d e0 82 00 00 68 	cmpb   $0x68,0x82e0
    12d8:	0f 85 9a 00 00 00    	jne    0x1378
    12de:	83 ec 04             	sub    $0x4,%esp
    12e1:	6a 0a                	push   $0xa
    12e3:	68 e0 82 00 00       	push   $0x82e0
    12e8:	53                   	push   %ebx
    12e9:	e8 51 24 00 00       	call   0x373f
    12ee:	83 c4 10             	add    $0x10,%esp
    12f1:	83 f8 0a             	cmp    $0xa,%eax
    12f4:	0f 85 92 00 00 00    	jne    0x138c
    12fa:	83 ec 0c             	sub    $0xc,%esp
    12fd:	53                   	push   %ebx
    12fe:	e8 44 24 00 00       	call   0x3747
    1303:	c7 04 24 09 40 00 00 	movl   $0x4009,(%esp)
    130a:	e8 60 24 00 00       	call   0x376f
    130f:	83 c4 08             	add    $0x8,%esp
    1312:	68 b1 40 00 00       	push   $0x40b1
    1317:	6a 01                	push   $0x1
    1319:	e8 4e 25 00 00       	call   0x386c
    131e:	83 c4 10             	add    $0x10,%esp
    1321:	8d 65 f8             	lea    -0x8(%ebp),%esp
    1324:	5b                   	pop    %ebx
    1325:	5e                   	pop    %esi
    1326:	5d                   	pop    %ebp
    1327:	c3                   	ret    
    1328:	83 ec 08             	sub    $0x8,%esp
    132b:	68 14 40 00 00       	push   $0x4014
    1330:	6a 01                	push   $0x1
    1332:	e8 35 25 00 00       	call   0x386c
    1337:	e8 e3 23 00 00       	call   0x371f
    133c:	83 ec 08             	sub    $0x8,%esp
    133f:	68 34 40 00 00       	push   $0x4034
    1344:	6a 01                	push   $0x1
    1346:	e8 21 25 00 00       	call   0x386c
    134b:	e8 cf 23 00 00       	call   0x371f
    1350:	83 ec 08             	sub    $0x8,%esp
    1353:	68 4c 40 00 00       	push   $0x404c
    1358:	6a 01                	push   $0x1
    135a:	e8 0d 25 00 00       	call   0x386c
    135f:	e8 bb 23 00 00       	call   0x371f
    1364:	83 ec 08             	sub    $0x8,%esp
    1367:	68 6a 40 00 00       	push   $0x406a
    136c:	6a 01                	push   $0x1
    136e:	e8 f9 24 00 00       	call   0x386c
    1373:	e8 a7 23 00 00       	call   0x371f
    1378:	83 ec 08             	sub    $0x8,%esp
    137b:	68 81 40 00 00       	push   $0x4081
    1380:	6a 01                	push   $0x1
    1382:	e8 e5 24 00 00       	call   0x386c
    1387:	e8 93 23 00 00       	call   0x371f
    138c:	83 ec 08             	sub    $0x8,%esp
    138f:	68 98 40 00 00       	push   $0x4098
    1394:	6a 01                	push   $0x1
    1396:	e8 d1 24 00 00       	call   0x386c
    139b:	e8 7f 23 00 00       	call   0x371f
    13a0:	55                   	push   %ebp
    13a1:	89 e5                	mov    %esp,%ebp
    13a3:	53                   	push   %ebx
    13a4:	83 ec 0c             	sub    $0xc,%esp
    13a7:	68 c0 40 00 00       	push   $0x40c0
    13ac:	6a 01                	push   $0x1
    13ae:	e8 b9 24 00 00       	call   0x386c
    13b3:	c7 04 24 ca 40 00 00 	movl   $0x40ca,(%esp)
    13ba:	e8 b0 23 00 00       	call   0x376f
    13bf:	c7 04 24 ce 40 00 00 	movl   $0x40ce,(%esp)
    13c6:	e8 a4 23 00 00       	call   0x376f
    13cb:	83 c4 08             	add    $0x8,%esp
    13ce:	68 02 02 00 00       	push   $0x202
    13d3:	68 ca 40 00 00       	push   $0x40ca
    13d8:	e8 82 23 00 00       	call   0x375f
    13dd:	83 c4 10             	add    $0x10,%esp
    13e0:	85 c0                	test   %eax,%eax
    13e2:	0f 88 2a 01 00 00    	js     0x1512
    13e8:	89 c3                	mov    %eax,%ebx
    13ea:	83 ec 04             	sub    $0x4,%esp
    13ed:	6a 05                	push   $0x5
    13ef:	68 2e 40 00 00       	push   $0x402e
    13f4:	50                   	push   %eax
    13f5:	e8 45 23 00 00       	call   0x373f
    13fa:	83 c4 10             	add    $0x10,%esp
    13fd:	83 f8 05             	cmp    $0x5,%eax
    1400:	0f 85 20 01 00 00    	jne    0x1526
    1406:	83 ec 0c             	sub    $0xc,%esp
    1409:	53                   	push   %ebx
    140a:	e8 38 23 00 00       	call   0x3747
    140f:	83 c4 08             	add    $0x8,%esp
    1412:	68 ce 40 00 00       	push   $0x40ce
    1417:	68 ca 40 00 00       	push   $0x40ca
    141c:	e8 5e 23 00 00       	call   0x377f
    1421:	83 c4 10             	add    $0x10,%esp
    1424:	85 c0                	test   %eax,%eax
    1426:	0f 88 0e 01 00 00    	js     0x153a
    142c:	83 ec 0c             	sub    $0xc,%esp
    142f:	68 ca 40 00 00       	push   $0x40ca
    1434:	e8 36 23 00 00       	call   0x376f
    1439:	83 c4 08             	add    $0x8,%esp
    143c:	6a 00                	push   $0x0
    143e:	68 ca 40 00 00       	push   $0x40ca
    1443:	e8 17 23 00 00       	call   0x375f
    1448:	83 c4 10             	add    $0x10,%esp
    144b:	85 c0                	test   %eax,%eax
    144d:	0f 89 fb 00 00 00    	jns    0x154e
    1453:	83 ec 08             	sub    $0x8,%esp
    1456:	6a 00                	push   $0x0
    1458:	68 ce 40 00 00       	push   $0x40ce
    145d:	e8 fd 22 00 00       	call   0x375f
    1462:	89 c3                	mov    %eax,%ebx
    1464:	83 c4 10             	add    $0x10,%esp
    1467:	85 c0                	test   %eax,%eax
    1469:	0f 88 f3 00 00 00    	js     0x1562
    146f:	83 ec 04             	sub    $0x4,%esp
    1472:	68 00 20 00 00       	push   $0x2000
    1477:	68 e0 82 00 00       	push   $0x82e0
    147c:	50                   	push   %eax
    147d:	e8 b5 22 00 00       	call   0x3737
    1482:	83 c4 10             	add    $0x10,%esp
    1485:	83 f8 05             	cmp    $0x5,%eax
    1488:	0f 85 e8 00 00 00    	jne    0x1576
    148e:	83 ec 0c             	sub    $0xc,%esp
    1491:	53                   	push   %ebx
    1492:	e8 b0 22 00 00       	call   0x3747
    1497:	83 c4 08             	add    $0x8,%esp
    149a:	68 ce 40 00 00       	push   $0x40ce
    149f:	68 ce 40 00 00       	push   $0x40ce
    14a4:	e8 d6 22 00 00       	call   0x377f
    14a9:	83 c4 10             	add    $0x10,%esp
    14ac:	85 c0                	test   %eax,%eax
    14ae:	0f 89 d6 00 00 00    	jns    0x158a
    14b4:	83 ec 0c             	sub    $0xc,%esp
    14b7:	68 ce 40 00 00       	push   $0x40ce
    14bc:	e8 ae 22 00 00       	call   0x376f
    14c1:	83 c4 08             	add    $0x8,%esp
    14c4:	68 ca 40 00 00       	push   $0x40ca
    14c9:	68 ce 40 00 00       	push   $0x40ce
    14ce:	e8 ac 22 00 00       	call   0x377f
    14d3:	83 c4 10             	add    $0x10,%esp
    14d6:	85 c0                	test   %eax,%eax
    14d8:	0f 89 c0 00 00 00    	jns    0x159e
    14de:	83 ec 08             	sub    $0x8,%esp
    14e1:	68 ca 40 00 00       	push   $0x40ca
    14e6:	68 92 43 00 00       	push   $0x4392
    14eb:	e8 8f 22 00 00       	call   0x377f
    14f0:	83 c4 10             	add    $0x10,%esp
    14f3:	85 c0                	test   %eax,%eax
    14f5:	0f 89 b7 00 00 00    	jns    0x15b2
    14fb:	83 ec 08             	sub    $0x8,%esp
    14fe:	68 68 41 00 00       	push   $0x4168
    1503:	6a 01                	push   $0x1
    1505:	e8 62 23 00 00       	call   0x386c
    150a:	83 c4 10             	add    $0x10,%esp
    150d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1510:	c9                   	leave  
    1511:	c3                   	ret    
    1512:	83 ec 08             	sub    $0x8,%esp
    1515:	68 d2 40 00 00       	push   $0x40d2
    151a:	6a 01                	push   $0x1
    151c:	e8 4b 23 00 00       	call   0x386c
    1521:	e8 f9 21 00 00       	call   0x371f
    1526:	83 ec 08             	sub    $0x8,%esp
    1529:	68 e5 40 00 00       	push   $0x40e5
    152e:	6a 01                	push   $0x1
    1530:	e8 37 23 00 00       	call   0x386c
    1535:	e8 e5 21 00 00       	call   0x371f
    153a:	83 ec 08             	sub    $0x8,%esp
    153d:	68 f7 40 00 00       	push   $0x40f7
    1542:	6a 01                	push   $0x1
    1544:	e8 23 23 00 00       	call   0x386c
    1549:	e8 d1 21 00 00       	call   0x371f
    154e:	83 ec 08             	sub    $0x8,%esp
    1551:	68 d8 4c 00 00       	push   $0x4cd8
    1556:	6a 01                	push   $0x1
    1558:	e8 0f 23 00 00       	call   0x386c
    155d:	e8 bd 21 00 00       	call   0x371f
    1562:	83 ec 08             	sub    $0x8,%esp
    1565:	68 0c 41 00 00       	push   $0x410c
    156a:	6a 01                	push   $0x1
    156c:	e8 fb 22 00 00       	call   0x386c
    1571:	e8 a9 21 00 00       	call   0x371f
    1576:	83 ec 08             	sub    $0x8,%esp
    1579:	68 1d 41 00 00       	push   $0x411d
    157e:	6a 01                	push   $0x1
    1580:	e8 e7 22 00 00       	call   0x386c
    1585:	e8 95 21 00 00       	call   0x371f
    158a:	83 ec 08             	sub    $0x8,%esp
    158d:	68 2e 41 00 00       	push   $0x412e
    1592:	6a 01                	push   $0x1
    1594:	e8 d3 22 00 00       	call   0x386c
    1599:	e8 81 21 00 00       	call   0x371f
    159e:	83 ec 08             	sub    $0x8,%esp
    15a1:	68 00 4d 00 00       	push   $0x4d00
    15a6:	6a 01                	push   $0x1
    15a8:	e8 bf 22 00 00       	call   0x386c
    15ad:	e8 6d 21 00 00       	call   0x371f
    15b2:	83 ec 08             	sub    $0x8,%esp
    15b5:	68 4c 41 00 00       	push   $0x414c
    15ba:	6a 01                	push   $0x1
    15bc:	e8 ab 22 00 00       	call   0x386c
    15c1:	e8 59 21 00 00       	call   0x371f
    15c6:	55                   	push   %ebp
    15c7:	89 e5                	mov    %esp,%ebp
    15c9:	57                   	push   %edi
    15ca:	56                   	push   %esi
    15cb:	53                   	push   %ebx
    15cc:	83 ec 54             	sub    $0x54,%esp
    15cf:	68 75 41 00 00       	push   $0x4175
    15d4:	6a 01                	push   $0x1
    15d6:	e8 91 22 00 00       	call   0x386c
    15db:	c6 45 e5 43          	movb   $0x43,-0x1b(%ebp)
    15df:	c6 45 e7 00          	movb   $0x0,-0x19(%ebp)
    15e3:	83 c4 10             	add    $0x10,%esp
    15e6:	bb 00 00 00 00       	mov    $0x0,%ebx
    15eb:	eb 5e                	jmp    0x164b
    15ed:	85 f6                	test   %esi,%esi
    15ef:	75 22                	jne    0x1613
    15f1:	ba 67 66 66 66       	mov    $0x66666667,%edx
    15f6:	89 d8                	mov    %ebx,%eax
    15f8:	f7 ea                	imul   %edx
    15fa:	d1 fa                	sar    %edx
    15fc:	89 d8                	mov    %ebx,%eax
    15fe:	c1 f8 1f             	sar    $0x1f,%eax
    1601:	29 c2                	sub    %eax,%edx
    1603:	8d 04 92             	lea    (%edx,%edx,4),%eax
    1606:	89 da                	mov    %ebx,%edx
    1608:	29 c2                	sub    %eax,%edx
    160a:	83 fa 01             	cmp    $0x1,%edx
    160d:	0f 84 9b 00 00 00    	je     0x16ae
    1613:	83 ec 08             	sub    $0x8,%esp
    1616:	68 02 02 00 00       	push   $0x202
    161b:	8d 45 e5             	lea    -0x1b(%ebp),%eax
    161e:	50                   	push   %eax
    161f:	e8 3b 21 00 00       	call   0x375f
    1624:	83 c4 10             	add    $0x10,%esp
    1627:	85 c0                	test   %eax,%eax
    1629:	0f 88 98 00 00 00    	js     0x16c7
    162f:	83 ec 0c             	sub    $0xc,%esp
    1632:	50                   	push   %eax
    1633:	e8 0f 21 00 00       	call   0x3747
    1638:	83 c4 10             	add    $0x10,%esp
    163b:	85 f6                	test   %esi,%esi
    163d:	0f 84 9c 00 00 00    	je     0x16df
    1643:	e8 df 20 00 00       	call   0x3727
    1648:	83 c3 01             	add    $0x1,%ebx
    164b:	83 fb 27             	cmp    $0x27,%ebx
    164e:	0f 8f 90 00 00 00    	jg     0x16e4
    1654:	8d 43 30             	lea    0x30(%ebx),%eax
    1657:	88 45 e6             	mov    %al,-0x1a(%ebp)
    165a:	83 ec 0c             	sub    $0xc,%esp
    165d:	8d 45 e5             	lea    -0x1b(%ebp),%eax
    1660:	50                   	push   %eax
    1661:	e8 09 21 00 00       	call   0x376f
    1666:	e8 ac 20 00 00       	call   0x3717
    166b:	89 c6                	mov    %eax,%esi
    166d:	83 c4 10             	add    $0x10,%esp
    1670:	85 c0                	test   %eax,%eax
    1672:	0f 84 75 ff ff ff    	je     0x15ed
    1678:	ba 56 55 55 55       	mov    $0x55555556,%edx
    167d:	89 d8                	mov    %ebx,%eax
    167f:	f7 ea                	imul   %edx
    1681:	89 d8                	mov    %ebx,%eax
    1683:	c1 f8 1f             	sar    $0x1f,%eax
    1686:	29 c2                	sub    %eax,%edx
    1688:	8d 04 52             	lea    (%edx,%edx,2),%eax
    168b:	89 da                	mov    %ebx,%edx
    168d:	29 c2                	sub    %eax,%edx
    168f:	83 fa 01             	cmp    $0x1,%edx
    1692:	0f 85 55 ff ff ff    	jne    0x15ed
    1698:	83 ec 08             	sub    $0x8,%esp
    169b:	8d 45 e5             	lea    -0x1b(%ebp),%eax
    169e:	50                   	push   %eax
    169f:	68 85 41 00 00       	push   $0x4185
    16a4:	e8 d6 20 00 00       	call   0x377f
    16a9:	83 c4 10             	add    $0x10,%esp
    16ac:	eb 8d                	jmp    0x163b
    16ae:	83 ec 08             	sub    $0x8,%esp
    16b1:	8d 45 e5             	lea    -0x1b(%ebp),%eax
    16b4:	50                   	push   %eax
    16b5:	68 85 41 00 00       	push   $0x4185
    16ba:	e8 c0 20 00 00       	call   0x377f
    16bf:	83 c4 10             	add    $0x10,%esp
    16c2:	e9 74 ff ff ff       	jmp    0x163b
    16c7:	83 ec 04             	sub    $0x4,%esp
    16ca:	8d 45 e5             	lea    -0x1b(%ebp),%eax
    16cd:	50                   	push   %eax
    16ce:	68 88 41 00 00       	push   $0x4188
    16d3:	6a 01                	push   $0x1
    16d5:	e8 92 21 00 00       	call   0x386c
    16da:	e8 40 20 00 00       	call   0x371f
    16df:	e8 3b 20 00 00       	call   0x371f
    16e4:	83 ec 04             	sub    $0x4,%esp
    16e7:	6a 28                	push   $0x28
    16e9:	6a 00                	push   $0x0
    16eb:	8d 45 bd             	lea    -0x43(%ebp),%eax
    16ee:	50                   	push   %eax
    16ef:	e8 f0 1e 00 00       	call   0x35e4
    16f4:	83 c4 08             	add    $0x8,%esp
    16f7:	6a 00                	push   $0x0
    16f9:	68 92 43 00 00       	push   $0x4392
    16fe:	e8 5c 20 00 00       	call   0x375f
    1703:	89 c3                	mov    %eax,%ebx
    1705:	83 c4 10             	add    $0x10,%esp
    1708:	be 00 00 00 00       	mov    $0x0,%esi
    170d:	83 ec 04             	sub    $0x4,%esp
    1710:	6a 10                	push   $0x10
    1712:	8d 45 ac             	lea    -0x54(%ebp),%eax
    1715:	50                   	push   %eax
    1716:	53                   	push   %ebx
    1717:	e8 1b 20 00 00       	call   0x3737
    171c:	83 c4 10             	add    $0x10,%esp
    171f:	85 c0                	test   %eax,%eax
    1721:	7e 60                	jle    0x1783
    1723:	66 83 7d ac 00       	cmpw   $0x0,-0x54(%ebp)
    1728:	74 e3                	je     0x170d
    172a:	80 7d ae 43          	cmpb   $0x43,-0x52(%ebp)
    172e:	75 dd                	jne    0x170d
    1730:	80 7d b0 00          	cmpb   $0x0,-0x50(%ebp)
    1734:	75 d7                	jne    0x170d
    1736:	0f be 45 af          	movsbl -0x51(%ebp),%eax
    173a:	83 e8 30             	sub    $0x30,%eax
    173d:	83 f8 27             	cmp    $0x27,%eax
    1740:	77 11                	ja     0x1753
    1742:	80 7c 05 bd 00       	cmpb   $0x0,-0x43(%ebp,%eax,1)
    1747:	75 22                	jne    0x176b
    1749:	c6 44 05 bd 01       	movb   $0x1,-0x43(%ebp,%eax,1)
    174e:	83 c6 01             	add    $0x1,%esi
    1751:	eb ba                	jmp    0x170d
    1753:	83 ec 04             	sub    $0x4,%esp
    1756:	8d 45 ae             	lea    -0x52(%ebp),%eax
    1759:	50                   	push   %eax
    175a:	68 a4 41 00 00       	push   $0x41a4
    175f:	6a 01                	push   $0x1
    1761:	e8 06 21 00 00       	call   0x386c
    1766:	e8 b4 1f 00 00       	call   0x371f
    176b:	83 ec 04             	sub    $0x4,%esp
    176e:	8d 45 ae             	lea    -0x52(%ebp),%eax
    1771:	50                   	push   %eax
    1772:	68 bd 41 00 00       	push   $0x41bd
    1777:	6a 01                	push   $0x1
    1779:	e8 ee 20 00 00       	call   0x386c
    177e:	e8 9c 1f 00 00       	call   0x371f
    1783:	83 ec 0c             	sub    $0xc,%esp
    1786:	53                   	push   %ebx
    1787:	e8 bb 1f 00 00       	call   0x3747
    178c:	83 c4 10             	add    $0x10,%esp
    178f:	83 fe 28             	cmp    $0x28,%esi
    1792:	75 0a                	jne    0x179e
    1794:	bb 00 00 00 00       	mov    $0x0,%ebx
    1799:	e9 86 00 00 00       	jmp    0x1824
    179e:	83 ec 08             	sub    $0x8,%esp
    17a1:	68 24 4d 00 00       	push   $0x4d24
    17a6:	6a 01                	push   $0x1
    17a8:	e8 bf 20 00 00       	call   0x386c
    17ad:	e8 6d 1f 00 00       	call   0x371f
    17b2:	83 ec 08             	sub    $0x8,%esp
    17b5:	68 5d 4a 00 00       	push   $0x4a5d
    17ba:	6a 01                	push   $0x1
    17bc:	e8 ab 20 00 00       	call   0x386c
    17c1:	e8 59 1f 00 00       	call   0x371f
    17c6:	83 ec 08             	sub    $0x8,%esp
    17c9:	6a 00                	push   $0x0
    17cb:	8d 7d e5             	lea    -0x1b(%ebp),%edi
    17ce:	57                   	push   %edi
    17cf:	e8 8b 1f 00 00       	call   0x375f
    17d4:	89 04 24             	mov    %eax,(%esp)
    17d7:	e8 6b 1f 00 00       	call   0x3747
    17dc:	83 c4 08             	add    $0x8,%esp
    17df:	6a 00                	push   $0x0
    17e1:	57                   	push   %edi
    17e2:	e8 78 1f 00 00       	call   0x375f
    17e7:	89 04 24             	mov    %eax,(%esp)
    17ea:	e8 58 1f 00 00       	call   0x3747
    17ef:	83 c4 08             	add    $0x8,%esp
    17f2:	6a 00                	push   $0x0
    17f4:	57                   	push   %edi
    17f5:	e8 65 1f 00 00       	call   0x375f
    17fa:	89 04 24             	mov    %eax,(%esp)
    17fd:	e8 45 1f 00 00       	call   0x3747
    1802:	83 c4 08             	add    $0x8,%esp
    1805:	6a 00                	push   $0x0
    1807:	57                   	push   %edi
    1808:	e8 52 1f 00 00       	call   0x375f
    180d:	89 04 24             	mov    %eax,(%esp)
    1810:	e8 32 1f 00 00       	call   0x3747
    1815:	83 c4 10             	add    $0x10,%esp
    1818:	85 f6                	test   %esi,%esi
    181a:	74 79                	je     0x1895
    181c:	e8 06 1f 00 00       	call   0x3727
    1821:	83 c3 01             	add    $0x1,%ebx
    1824:	83 fb 27             	cmp    $0x27,%ebx
    1827:	7f 71                	jg     0x189a
    1829:	8d 43 30             	lea    0x30(%ebx),%eax
    182c:	88 45 e6             	mov    %al,-0x1a(%ebp)
    182f:	e8 e3 1e 00 00       	call   0x3717
    1834:	89 c6                	mov    %eax,%esi
    1836:	85 c0                	test   %eax,%eax
    1838:	0f 88 74 ff ff ff    	js     0x17b2
    183e:	ba 56 55 55 55       	mov    $0x55555556,%edx
    1843:	89 d8                	mov    %ebx,%eax
    1845:	f7 ea                	imul   %edx
    1847:	89 d8                	mov    %ebx,%eax
    1849:	c1 f8 1f             	sar    $0x1f,%eax
    184c:	29 c2                	sub    %eax,%edx
    184e:	8d 04 52             	lea    (%edx,%edx,2),%eax
    1851:	89 da                	mov    %ebx,%edx
    1853:	29 c2                	sub    %eax,%edx
    1855:	89 d0                	mov    %edx,%eax
    1857:	09 f0                	or     %esi,%eax
    1859:	0f 84 67 ff ff ff    	je     0x17c6
    185f:	83 fa 01             	cmp    $0x1,%edx
    1862:	75 08                	jne    0x186c
    1864:	85 f6                	test   %esi,%esi
    1866:	0f 85 5a ff ff ff    	jne    0x17c6
    186c:	83 ec 0c             	sub    $0xc,%esp
    186f:	8d 7d e5             	lea    -0x1b(%ebp),%edi
    1872:	57                   	push   %edi
    1873:	e8 f7 1e 00 00       	call   0x376f
    1878:	89 3c 24             	mov    %edi,(%esp)
    187b:	e8 ef 1e 00 00       	call   0x376f
    1880:	89 3c 24             	mov    %edi,(%esp)
    1883:	e8 e7 1e 00 00       	call   0x376f
    1888:	89 3c 24             	mov    %edi,(%esp)
    188b:	e8 df 1e 00 00       	call   0x376f
    1890:	83 c4 10             	add    $0x10,%esp
    1893:	eb 83                	jmp    0x1818
    1895:	e8 85 1e 00 00       	call   0x371f
    189a:	83 ec 08             	sub    $0x8,%esp
    189d:	68 da 41 00 00       	push   $0x41da
    18a2:	6a 01                	push   $0x1
    18a4:	e8 c3 1f 00 00       	call   0x386c
    18a9:	83 c4 10             	add    $0x10,%esp
    18ac:	8d 65 f4             	lea    -0xc(%ebp),%esp
    18af:	5b                   	pop    %ebx
    18b0:	5e                   	pop    %esi
    18b1:	5f                   	pop    %edi
    18b2:	5d                   	pop    %ebp
    18b3:	c3                   	ret    
    18b4:	55                   	push   %ebp
    18b5:	89 e5                	mov    %esp,%ebp
    18b7:	57                   	push   %edi
    18b8:	56                   	push   %esi
    18b9:	53                   	push   %ebx
    18ba:	83 ec 14             	sub    $0x14,%esp
    18bd:	68 e8 41 00 00       	push   $0x41e8
    18c2:	6a 01                	push   $0x1
    18c4:	e8 a3 1f 00 00       	call   0x386c
    18c9:	c7 04 24 75 44 00 00 	movl   $0x4475,(%esp)
    18d0:	e8 9a 1e 00 00       	call   0x376f
    18d5:	e8 3d 1e 00 00       	call   0x3717
    18da:	83 c4 10             	add    $0x10,%esp
    18dd:	85 c0                	test   %eax,%eax
    18df:	78 10                	js     0x18f1
    18e1:	89 c7                	mov    %eax,%edi
    18e3:	74 20                	je     0x1905
    18e5:	bb 01 00 00 00       	mov    $0x1,%ebx
    18ea:	be 00 00 00 00       	mov    $0x0,%esi
    18ef:	eb 3b                	jmp    0x192c
    18f1:	83 ec 08             	sub    $0x8,%esp
    18f4:	68 5d 4a 00 00       	push   $0x4a5d
    18f9:	6a 01                	push   $0x1
    18fb:	e8 6c 1f 00 00       	call   0x386c
    1900:	e8 1a 1e 00 00       	call   0x371f
    1905:	bb 61 00 00 00       	mov    $0x61,%ebx
    190a:	eb de                	jmp    0x18ea
    190c:	83 ec 08             	sub    $0x8,%esp
    190f:	68 02 02 00 00       	push   $0x202
    1914:	68 75 44 00 00       	push   $0x4475
    1919:	e8 41 1e 00 00       	call   0x375f
    191e:	89 04 24             	mov    %eax,(%esp)
    1921:	e8 21 1e 00 00       	call   0x3747
    1926:	83 c4 10             	add    $0x10,%esp
    1929:	83 c6 01             	add    $0x1,%esi
    192c:	83 fe 63             	cmp    $0x63,%esi
    192f:	7f 52                	jg     0x1983
    1931:	69 db 6d 4e c6 41    	imul   $0x41c64e6d,%ebx,%ebx
    1937:	81 c3 39 30 00 00    	add    $0x3039,%ebx
    193d:	ba ab aa aa aa       	mov    $0xaaaaaaab,%edx
    1942:	89 d8                	mov    %ebx,%eax
    1944:	f7 e2                	mul    %edx
    1946:	89 d0                	mov    %edx,%eax
    1948:	d1 e8                	shr    %eax
    194a:	83 e2 fe             	and    $0xfffffffe,%edx
    194d:	01 c2                	add    %eax,%edx
    194f:	89 d8                	mov    %ebx,%eax
    1951:	29 d0                	sub    %edx,%eax
    1953:	74 b7                	je     0x190c
    1955:	83 f8 01             	cmp    $0x1,%eax
    1958:	74 12                	je     0x196c
    195a:	83 ec 0c             	sub    $0xc,%esp
    195d:	68 75 44 00 00       	push   $0x4475
    1962:	e8 08 1e 00 00       	call   0x376f
    1967:	83 c4 10             	add    $0x10,%esp
    196a:	eb bd                	jmp    0x1929
    196c:	83 ec 08             	sub    $0x8,%esp
    196f:	68 75 44 00 00       	push   $0x4475
    1974:	68 f9 41 00 00       	push   $0x41f9
    1979:	e8 01 1e 00 00       	call   0x377f
    197e:	83 c4 10             	add    $0x10,%esp
    1981:	eb a6                	jmp    0x1929
    1983:	85 ff                	test   %edi,%edi
    1985:	74 1c                	je     0x19a3
    1987:	e8 9b 1d 00 00       	call   0x3727
    198c:	83 ec 08             	sub    $0x8,%esp
    198f:	68 fd 41 00 00       	push   $0x41fd
    1994:	6a 01                	push   $0x1
    1996:	e8 d1 1e 00 00       	call   0x386c
    199b:	8d 65 f4             	lea    -0xc(%ebp),%esp
    199e:	5b                   	pop    %ebx
    199f:	5e                   	pop    %esi
    19a0:	5f                   	pop    %edi
    19a1:	5d                   	pop    %ebp
    19a2:	c3                   	ret    
    19a3:	e8 77 1d 00 00       	call   0x371f
    19a8:	55                   	push   %ebp
    19a9:	89 e5                	mov    %esp,%ebp
    19ab:	53                   	push   %ebx
    19ac:	83 ec 1c             	sub    $0x1c,%esp
    19af:	68 0c 42 00 00       	push   $0x420c
    19b4:	6a 01                	push   $0x1
    19b6:	e8 b1 1e 00 00       	call   0x386c
    19bb:	c7 04 24 19 42 00 00 	movl   $0x4219,(%esp)
    19c2:	e8 a8 1d 00 00       	call   0x376f
    19c7:	83 c4 08             	add    $0x8,%esp
    19ca:	68 00 02 00 00       	push   $0x200
    19cf:	68 19 42 00 00       	push   $0x4219
    19d4:	e8 86 1d 00 00       	call   0x375f
    19d9:	83 c4 10             	add    $0x10,%esp
    19dc:	85 c0                	test   %eax,%eax
    19de:	78 65                	js     0x1a45
    19e0:	83 ec 0c             	sub    $0xc,%esp
    19e3:	50                   	push   %eax
    19e4:	e8 5e 1d 00 00       	call   0x3747
    19e9:	83 c4 10             	add    $0x10,%esp
    19ec:	bb 00 00 00 00       	mov    $0x0,%ebx
    19f1:	81 fb f3 01 00 00    	cmp    $0x1f3,%ebx
    19f7:	7f 74                	jg     0x1a6d
    19f9:	c6 45 ee 78          	movb   $0x78,-0x12(%ebp)
    19fd:	8d 43 3f             	lea    0x3f(%ebx),%eax
    1a00:	85 db                	test   %ebx,%ebx
    1a02:	0f 49 c3             	cmovns %ebx,%eax
    1a05:	c1 f8 06             	sar    $0x6,%eax
    1a08:	83 c0 30             	add    $0x30,%eax
    1a0b:	88 45 ef             	mov    %al,-0x11(%ebp)
    1a0e:	89 da                	mov    %ebx,%edx
    1a10:	c1 fa 1f             	sar    $0x1f,%edx
    1a13:	c1 ea 1a             	shr    $0x1a,%edx
    1a16:	8d 04 13             	lea    (%ebx,%edx,1),%eax
    1a19:	83 e0 3f             	and    $0x3f,%eax
    1a1c:	29 d0                	sub    %edx,%eax
    1a1e:	83 c0 30             	add    $0x30,%eax
    1a21:	88 45 f0             	mov    %al,-0x10(%ebp)
    1a24:	c6 45 f1 00          	movb   $0x0,-0xf(%ebp)
    1a28:	83 ec 08             	sub    $0x8,%esp
    1a2b:	8d 45 ee             	lea    -0x12(%ebp),%eax
    1a2e:	50                   	push   %eax
    1a2f:	68 19 42 00 00       	push   $0x4219
    1a34:	e8 46 1d 00 00       	call   0x377f
    1a39:	83 c4 10             	add    $0x10,%esp
    1a3c:	85 c0                	test   %eax,%eax
    1a3e:	75 19                	jne    0x1a59
    1a40:	83 c3 01             	add    $0x1,%ebx
    1a43:	eb ac                	jmp    0x19f1
    1a45:	83 ec 08             	sub    $0x8,%esp
    1a48:	68 1c 42 00 00       	push   $0x421c
    1a4d:	6a 01                	push   $0x1
    1a4f:	e8 18 1e 00 00       	call   0x386c
    1a54:	e8 c6 1c 00 00       	call   0x371f
    1a59:	83 ec 08             	sub    $0x8,%esp
    1a5c:	68 32 42 00 00       	push   $0x4232
    1a61:	6a 01                	push   $0x1
    1a63:	e8 04 1e 00 00       	call   0x386c
    1a68:	e8 b2 1c 00 00       	call   0x371f
    1a6d:	83 ec 0c             	sub    $0xc,%esp
    1a70:	68 19 42 00 00       	push   $0x4219
    1a75:	e8 f5 1c 00 00       	call   0x376f
    1a7a:	83 c4 10             	add    $0x10,%esp
    1a7d:	bb 00 00 00 00       	mov    $0x0,%ebx
    1a82:	eb 03                	jmp    0x1a87
    1a84:	83 c3 01             	add    $0x1,%ebx
    1a87:	81 fb f3 01 00 00    	cmp    $0x1f3,%ebx
    1a8d:	7f 56                	jg     0x1ae5
    1a8f:	c6 45 ee 78          	movb   $0x78,-0x12(%ebp)
    1a93:	8d 43 3f             	lea    0x3f(%ebx),%eax
    1a96:	85 db                	test   %ebx,%ebx
    1a98:	0f 49 c3             	cmovns %ebx,%eax
    1a9b:	c1 f8 06             	sar    $0x6,%eax
    1a9e:	83 c0 30             	add    $0x30,%eax
    1aa1:	88 45 ef             	mov    %al,-0x11(%ebp)
    1aa4:	89 da                	mov    %ebx,%edx
    1aa6:	c1 fa 1f             	sar    $0x1f,%edx
    1aa9:	c1 ea 1a             	shr    $0x1a,%edx
    1aac:	8d 04 13             	lea    (%ebx,%edx,1),%eax
    1aaf:	83 e0 3f             	and    $0x3f,%eax
    1ab2:	29 d0                	sub    %edx,%eax
    1ab4:	83 c0 30             	add    $0x30,%eax
    1ab7:	88 45 f0             	mov    %al,-0x10(%ebp)
    1aba:	c6 45 f1 00          	movb   $0x0,-0xf(%ebp)
    1abe:	83 ec 0c             	sub    $0xc,%esp
    1ac1:	8d 45 ee             	lea    -0x12(%ebp),%eax
    1ac4:	50                   	push   %eax
    1ac5:	e8 a5 1c 00 00       	call   0x376f
    1aca:	83 c4 10             	add    $0x10,%esp
    1acd:	85 c0                	test   %eax,%eax
    1acf:	74 b3                	je     0x1a84
    1ad1:	83 ec 08             	sub    $0x8,%esp
    1ad4:	68 46 42 00 00       	push   $0x4246
    1ad9:	6a 01                	push   $0x1
    1adb:	e8 8c 1d 00 00       	call   0x386c
    1ae0:	e8 3a 1c 00 00       	call   0x371f
    1ae5:	83 ec 08             	sub    $0x8,%esp
    1ae8:	68 5b 42 00 00       	push   $0x425b
    1aed:	6a 01                	push   $0x1
    1aef:	e8 78 1d 00 00       	call   0x386c
    1af4:	83 c4 10             	add    $0x10,%esp
    1af7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1afa:	c9                   	leave  
    1afb:	c3                   	ret    
    1afc:	55                   	push   %ebp
    1afd:	89 e5                	mov    %esp,%ebp
    1aff:	53                   	push   %ebx
    1b00:	83 ec 0c             	sub    $0xc,%esp
    1b03:	68 66 42 00 00       	push   $0x4266
    1b08:	6a 01                	push   $0x1
    1b0a:	e8 5d 1d 00 00       	call   0x386c
    1b0f:	c7 04 24 ef 42 00 00 	movl   $0x42ef,(%esp)
    1b16:	e8 54 1c 00 00       	call   0x376f
    1b1b:	c7 04 24 8c 43 00 00 	movl   $0x438c,(%esp)
    1b22:	e8 60 1c 00 00       	call   0x3787
    1b27:	83 c4 10             	add    $0x10,%esp
    1b2a:	85 c0                	test   %eax,%eax
    1b2c:	0f 85 14 04 00 00    	jne    0x1f46
    1b32:	83 ec 08             	sub    $0x8,%esp
    1b35:	68 02 02 00 00       	push   $0x202
    1b3a:	68 c5 42 00 00       	push   $0x42c5
    1b3f:	e8 1b 1c 00 00       	call   0x375f
    1b44:	89 c3                	mov    %eax,%ebx
    1b46:	83 c4 10             	add    $0x10,%esp
    1b49:	85 c0                	test   %eax,%eax
    1b4b:	0f 88 09 04 00 00    	js     0x1f5a
    1b51:	83 ec 04             	sub    $0x4,%esp
    1b54:	6a 02                	push   $0x2
    1b56:	68 ef 42 00 00       	push   $0x42ef
    1b5b:	50                   	push   %eax
    1b5c:	e8 de 1b 00 00       	call   0x373f
    1b61:	89 1c 24             	mov    %ebx,(%esp)
    1b64:	e8 de 1b 00 00       	call   0x3747
    1b69:	c7 04 24 8c 43 00 00 	movl   $0x438c,(%esp)
    1b70:	e8 fa 1b 00 00       	call   0x376f
    1b75:	83 c4 10             	add    $0x10,%esp
    1b78:	85 c0                	test   %eax,%eax
    1b7a:	0f 89 ee 03 00 00    	jns    0x1f6e
    1b80:	83 ec 0c             	sub    $0xc,%esp
    1b83:	68 a0 42 00 00       	push   $0x42a0
    1b88:	e8 fa 1b 00 00       	call   0x3787
    1b8d:	83 c4 10             	add    $0x10,%esp
    1b90:	85 c0                	test   %eax,%eax
    1b92:	0f 85 ea 03 00 00    	jne    0x1f82
    1b98:	83 ec 08             	sub    $0x8,%esp
    1b9b:	68 02 02 00 00       	push   $0x202
    1ba0:	68 c2 42 00 00       	push   $0x42c2
    1ba5:	e8 b5 1b 00 00       	call   0x375f
    1baa:	89 c3                	mov    %eax,%ebx
    1bac:	83 c4 10             	add    $0x10,%esp
    1baf:	85 c0                	test   %eax,%eax
    1bb1:	0f 88 df 03 00 00    	js     0x1f96
    1bb7:	83 ec 04             	sub    $0x4,%esp
    1bba:	6a 02                	push   $0x2
    1bbc:	68 e3 42 00 00       	push   $0x42e3
    1bc1:	50                   	push   %eax
    1bc2:	e8 78 1b 00 00       	call   0x373f
    1bc7:	89 1c 24             	mov    %ebx,(%esp)
    1bca:	e8 78 1b 00 00       	call   0x3747
    1bcf:	83 c4 08             	add    $0x8,%esp
    1bd2:	6a 00                	push   $0x0
    1bd4:	68 e6 42 00 00       	push   $0x42e6
    1bd9:	e8 81 1b 00 00       	call   0x375f
    1bde:	89 c3                	mov    %eax,%ebx
    1be0:	83 c4 10             	add    $0x10,%esp
    1be3:	85 c0                	test   %eax,%eax
    1be5:	0f 88 bf 03 00 00    	js     0x1faa
    1beb:	83 ec 04             	sub    $0x4,%esp
    1bee:	68 00 20 00 00       	push   $0x2000
    1bf3:	68 e0 82 00 00       	push   $0x82e0
    1bf8:	50                   	push   %eax
    1bf9:	e8 39 1b 00 00       	call   0x3737
    1bfe:	83 c4 10             	add    $0x10,%esp
    1c01:	83 f8 02             	cmp    $0x2,%eax
    1c04:	0f 85 b4 03 00 00    	jne    0x1fbe
    1c0a:	80 3d e0 82 00 00 66 	cmpb   $0x66,0x82e0
    1c11:	0f 85 a7 03 00 00    	jne    0x1fbe
    1c17:	83 ec 0c             	sub    $0xc,%esp
    1c1a:	53                   	push   %ebx
    1c1b:	e8 27 1b 00 00       	call   0x3747
    1c20:	83 c4 08             	add    $0x8,%esp
    1c23:	68 26 43 00 00       	push   $0x4326
    1c28:	68 c2 42 00 00       	push   $0x42c2
    1c2d:	e8 4d 1b 00 00       	call   0x377f
    1c32:	83 c4 10             	add    $0x10,%esp
    1c35:	85 c0                	test   %eax,%eax
    1c37:	0f 85 95 03 00 00    	jne    0x1fd2
    1c3d:	83 ec 0c             	sub    $0xc,%esp
    1c40:	68 c2 42 00 00       	push   $0x42c2
    1c45:	e8 25 1b 00 00       	call   0x376f
    1c4a:	83 c4 10             	add    $0x10,%esp
    1c4d:	85 c0                	test   %eax,%eax
    1c4f:	0f 85 91 03 00 00    	jne    0x1fe6
    1c55:	83 ec 08             	sub    $0x8,%esp
    1c58:	6a 00                	push   $0x0
    1c5a:	68 c2 42 00 00       	push   $0x42c2
    1c5f:	e8 fb 1a 00 00       	call   0x375f
    1c64:	83 c4 10             	add    $0x10,%esp
    1c67:	85 c0                	test   %eax,%eax
    1c69:	0f 89 8b 03 00 00    	jns    0x1ffa
    1c6f:	83 ec 0c             	sub    $0xc,%esp
    1c72:	68 8c 43 00 00       	push   $0x438c
    1c77:	e8 13 1b 00 00       	call   0x378f
    1c7c:	83 c4 10             	add    $0x10,%esp
    1c7f:	85 c0                	test   %eax,%eax
    1c81:	0f 85 87 03 00 00    	jne    0x200e
    1c87:	83 ec 0c             	sub    $0xc,%esp
    1c8a:	68 5a 43 00 00       	push   $0x435a
    1c8f:	e8 fb 1a 00 00       	call   0x378f
    1c94:	83 c4 10             	add    $0x10,%esp
    1c97:	85 c0                	test   %eax,%eax
    1c99:	0f 85 83 03 00 00    	jne    0x2022
    1c9f:	83 ec 0c             	sub    $0xc,%esp
    1ca2:	68 80 43 00 00       	push   $0x4380
    1ca7:	e8 e3 1a 00 00       	call   0x378f
    1cac:	83 c4 10             	add    $0x10,%esp
    1caf:	85 c0                	test   %eax,%eax
    1cb1:	0f 85 7f 03 00 00    	jne    0x2036
    1cb7:	83 ec 0c             	sub    $0xc,%esp
    1cba:	68 8f 43 00 00       	push   $0x438f
    1cbf:	e8 cb 1a 00 00       	call   0x378f
    1cc4:	83 c4 10             	add    $0x10,%esp
    1cc7:	85 c0                	test   %eax,%eax
    1cc9:	0f 85 7b 03 00 00    	jne    0x204a
    1ccf:	83 ec 08             	sub    $0x8,%esp
    1cd2:	6a 00                	push   $0x0
    1cd4:	68 26 43 00 00       	push   $0x4326
    1cd9:	e8 81 1a 00 00       	call   0x375f
    1cde:	89 c3                	mov    %eax,%ebx
    1ce0:	83 c4 10             	add    $0x10,%esp
    1ce3:	85 c0                	test   %eax,%eax
    1ce5:	0f 88 73 03 00 00    	js     0x205e
    1ceb:	83 ec 04             	sub    $0x4,%esp
    1cee:	68 00 20 00 00       	push   $0x2000
    1cf3:	68 e0 82 00 00       	push   $0x82e0
    1cf8:	50                   	push   %eax
    1cf9:	e8 39 1a 00 00       	call   0x3737
    1cfe:	83 c4 10             	add    $0x10,%esp
    1d01:	83 f8 02             	cmp    $0x2,%eax
    1d04:	0f 85 68 03 00 00    	jne    0x2072
    1d0a:	83 ec 0c             	sub    $0xc,%esp
    1d0d:	53                   	push   %ebx
    1d0e:	e8 34 1a 00 00       	call   0x3747
    1d13:	83 c4 08             	add    $0x8,%esp
    1d16:	6a 00                	push   $0x0
    1d18:	68 c2 42 00 00       	push   $0x42c2
    1d1d:	e8 3d 1a 00 00       	call   0x375f
    1d22:	83 c4 10             	add    $0x10,%esp
    1d25:	85 c0                	test   %eax,%eax
    1d27:	0f 89 59 03 00 00    	jns    0x2086
    1d2d:	83 ec 08             	sub    $0x8,%esp
    1d30:	68 02 02 00 00       	push   $0x202
    1d35:	68 da 43 00 00       	push   $0x43da
    1d3a:	e8 20 1a 00 00       	call   0x375f
    1d3f:	83 c4 10             	add    $0x10,%esp
    1d42:	85 c0                	test   %eax,%eax
    1d44:	0f 89 50 03 00 00    	jns    0x209a
    1d4a:	83 ec 08             	sub    $0x8,%esp
    1d4d:	68 02 02 00 00       	push   $0x202
    1d52:	68 ff 43 00 00       	push   $0x43ff
    1d57:	e8 03 1a 00 00       	call   0x375f
    1d5c:	83 c4 10             	add    $0x10,%esp
    1d5f:	85 c0                	test   %eax,%eax
    1d61:	0f 89 47 03 00 00    	jns    0x20ae
    1d67:	83 ec 08             	sub    $0x8,%esp
    1d6a:	68 00 02 00 00       	push   $0x200
    1d6f:	68 8c 43 00 00       	push   $0x438c
    1d74:	e8 e6 19 00 00       	call   0x375f
    1d79:	83 c4 10             	add    $0x10,%esp
    1d7c:	85 c0                	test   %eax,%eax
    1d7e:	0f 89 3e 03 00 00    	jns    0x20c2
    1d84:	83 ec 08             	sub    $0x8,%esp
    1d87:	6a 02                	push   $0x2
    1d89:	68 8c 43 00 00       	push   $0x438c
    1d8e:	e8 cc 19 00 00       	call   0x375f
    1d93:	83 c4 10             	add    $0x10,%esp
    1d96:	85 c0                	test   %eax,%eax
    1d98:	0f 89 38 03 00 00    	jns    0x20d6
    1d9e:	83 ec 08             	sub    $0x8,%esp
    1da1:	6a 01                	push   $0x1
    1da3:	68 8c 43 00 00       	push   $0x438c
    1da8:	e8 b2 19 00 00       	call   0x375f
    1dad:	83 c4 10             	add    $0x10,%esp
    1db0:	85 c0                	test   %eax,%eax
    1db2:	0f 89 32 03 00 00    	jns    0x20ea
    1db8:	83 ec 08             	sub    $0x8,%esp
    1dbb:	68 6e 44 00 00       	push   $0x446e
    1dc0:	68 da 43 00 00       	push   $0x43da
    1dc5:	e8 b5 19 00 00       	call   0x377f
    1dca:	83 c4 10             	add    $0x10,%esp
    1dcd:	85 c0                	test   %eax,%eax
    1dcf:	0f 84 29 03 00 00    	je     0x20fe
    1dd5:	83 ec 08             	sub    $0x8,%esp
    1dd8:	68 6e 44 00 00       	push   $0x446e
    1ddd:	68 ff 43 00 00       	push   $0x43ff
    1de2:	e8 98 19 00 00       	call   0x377f
    1de7:	83 c4 10             	add    $0x10,%esp
    1dea:	85 c0                	test   %eax,%eax
    1dec:	0f 84 20 03 00 00    	je     0x2112
    1df2:	83 ec 08             	sub    $0x8,%esp
    1df5:	68 26 43 00 00       	push   $0x4326
    1dfa:	68 c5 42 00 00       	push   $0x42c5
    1dff:	e8 7b 19 00 00       	call   0x377f
    1e04:	83 c4 10             	add    $0x10,%esp
    1e07:	85 c0                	test   %eax,%eax
    1e09:	0f 84 17 03 00 00    	je     0x2126
    1e0f:	83 ec 0c             	sub    $0xc,%esp
    1e12:	68 da 43 00 00       	push   $0x43da
    1e17:	e8 6b 19 00 00       	call   0x3787
    1e1c:	83 c4 10             	add    $0x10,%esp
    1e1f:	85 c0                	test   %eax,%eax
    1e21:	0f 84 13 03 00 00    	je     0x213a
    1e27:	83 ec 0c             	sub    $0xc,%esp
    1e2a:	68 ff 43 00 00       	push   $0x43ff
    1e2f:	e8 53 19 00 00       	call   0x3787
    1e34:	83 c4 10             	add    $0x10,%esp
    1e37:	85 c0                	test   %eax,%eax
    1e39:	0f 84 0f 03 00 00    	je     0x214e
    1e3f:	83 ec 0c             	sub    $0xc,%esp
    1e42:	68 26 43 00 00       	push   $0x4326
    1e47:	e8 3b 19 00 00       	call   0x3787
    1e4c:	83 c4 10             	add    $0x10,%esp
    1e4f:	85 c0                	test   %eax,%eax
    1e51:	0f 84 0b 03 00 00    	je     0x2162
    1e57:	83 ec 0c             	sub    $0xc,%esp
    1e5a:	68 ff 43 00 00       	push   $0x43ff
    1e5f:	e8 0b 19 00 00       	call   0x376f
    1e64:	83 c4 10             	add    $0x10,%esp
    1e67:	85 c0                	test   %eax,%eax
    1e69:	0f 84 07 03 00 00    	je     0x2176
    1e6f:	83 ec 0c             	sub    $0xc,%esp
    1e72:	68 da 43 00 00       	push   $0x43da
    1e77:	e8 f3 18 00 00       	call   0x376f
    1e7c:	83 c4 10             	add    $0x10,%esp
    1e7f:	85 c0                	test   %eax,%eax
    1e81:	0f 84 03 03 00 00    	je     0x218a
    1e87:	83 ec 0c             	sub    $0xc,%esp
    1e8a:	68 c5 42 00 00       	push   $0x42c5
    1e8f:	e8 fb 18 00 00       	call   0x378f
    1e94:	83 c4 10             	add    $0x10,%esp
    1e97:	85 c0                	test   %eax,%eax
    1e99:	0f 84 ff 02 00 00    	je     0x219e
    1e9f:	83 ec 0c             	sub    $0xc,%esp
    1ea2:	68 71 44 00 00       	push   $0x4471
    1ea7:	e8 e3 18 00 00       	call   0x378f
    1eac:	83 c4 10             	add    $0x10,%esp
    1eaf:	85 c0                	test   %eax,%eax
    1eb1:	0f 84 fb 02 00 00    	je     0x21b2
    1eb7:	83 ec 0c             	sub    $0xc,%esp
    1eba:	68 26 43 00 00       	push   $0x4326
    1ebf:	e8 ab 18 00 00       	call   0x376f
    1ec4:	83 c4 10             	add    $0x10,%esp
    1ec7:	85 c0                	test   %eax,%eax
    1ec9:	0f 85 f7 02 00 00    	jne    0x21c6
    1ecf:	83 ec 0c             	sub    $0xc,%esp
    1ed2:	68 c5 42 00 00       	push   $0x42c5
    1ed7:	e8 93 18 00 00       	call   0x376f
    1edc:	83 c4 10             	add    $0x10,%esp
    1edf:	85 c0                	test   %eax,%eax
    1ee1:	0f 85 f3 02 00 00    	jne    0x21da
    1ee7:	83 ec 0c             	sub    $0xc,%esp
    1eea:	68 8c 43 00 00       	push   $0x438c
    1eef:	e8 7b 18 00 00       	call   0x376f
    1ef4:	83 c4 10             	add    $0x10,%esp
    1ef7:	85 c0                	test   %eax,%eax
    1ef9:	0f 84 ef 02 00 00    	je     0x21ee
    1eff:	83 ec 0c             	sub    $0xc,%esp
    1f02:	68 a1 42 00 00       	push   $0x42a1
    1f07:	e8 63 18 00 00       	call   0x376f
    1f0c:	83 c4 10             	add    $0x10,%esp
    1f0f:	85 c0                	test   %eax,%eax
    1f11:	0f 88 eb 02 00 00    	js     0x2202
    1f17:	83 ec 0c             	sub    $0xc,%esp
    1f1a:	68 8c 43 00 00       	push   $0x438c
    1f1f:	e8 4b 18 00 00       	call   0x376f
    1f24:	83 c4 10             	add    $0x10,%esp
    1f27:	85 c0                	test   %eax,%eax
    1f29:	0f 88 e7 02 00 00    	js     0x2216
    1f2f:	83 ec 08             	sub    $0x8,%esp
    1f32:	68 6e 45 00 00       	push   $0x456e
    1f37:	6a 01                	push   $0x1
    1f39:	e8 2e 19 00 00       	call   0x386c
    1f3e:	83 c4 10             	add    $0x10,%esp
    1f41:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1f44:	c9                   	leave  
    1f45:	c3                   	ret    
    1f46:	83 ec 08             	sub    $0x8,%esp
    1f49:	68 73 42 00 00       	push   $0x4273
    1f4e:	6a 01                	push   $0x1
    1f50:	e8 17 19 00 00       	call   0x386c
    1f55:	e8 c5 17 00 00       	call   0x371f
    1f5a:	83 ec 08             	sub    $0x8,%esp
    1f5d:	68 8b 42 00 00       	push   $0x428b
    1f62:	6a 01                	push   $0x1
    1f64:	e8 03 19 00 00       	call   0x386c
    1f69:	e8 b1 17 00 00       	call   0x371f
    1f6e:	83 ec 08             	sub    $0x8,%esp
    1f71:	68 58 4d 00 00       	push   $0x4d58
    1f76:	6a 01                	push   $0x1
    1f78:	e8 ef 18 00 00       	call   0x386c
    1f7d:	e8 9d 17 00 00       	call   0x371f
    1f82:	83 ec 08             	sub    $0x8,%esp
    1f85:	68 a7 42 00 00       	push   $0x42a7
    1f8a:	6a 01                	push   $0x1
    1f8c:	e8 db 18 00 00       	call   0x386c
    1f91:	e8 89 17 00 00       	call   0x371f
    1f96:	83 ec 08             	sub    $0x8,%esp
    1f99:	68 cb 42 00 00       	push   $0x42cb
    1f9e:	6a 01                	push   $0x1
    1fa0:	e8 c7 18 00 00       	call   0x386c
    1fa5:	e8 75 17 00 00       	call   0x371f
    1faa:	83 ec 08             	sub    $0x8,%esp
    1fad:	68 f2 42 00 00       	push   $0x42f2
    1fb2:	6a 01                	push   $0x1
    1fb4:	e8 b3 18 00 00       	call   0x386c
    1fb9:	e8 61 17 00 00       	call   0x371f
    1fbe:	83 ec 08             	sub    $0x8,%esp
    1fc1:	68 0b 43 00 00       	push   $0x430b
    1fc6:	6a 01                	push   $0x1
    1fc8:	e8 9f 18 00 00       	call   0x386c
    1fcd:	e8 4d 17 00 00       	call   0x371f
    1fd2:	83 ec 08             	sub    $0x8,%esp
    1fd5:	68 80 4d 00 00       	push   $0x4d80
    1fda:	6a 01                	push   $0x1
    1fdc:	e8 8b 18 00 00       	call   0x386c
    1fe1:	e8 39 17 00 00       	call   0x371f
    1fe6:	83 ec 08             	sub    $0x8,%esp
    1fe9:	68 31 43 00 00       	push   $0x4331
    1fee:	6a 01                	push   $0x1
    1ff0:	e8 77 18 00 00       	call   0x386c
    1ff5:	e8 25 17 00 00       	call   0x371f
    1ffa:	83 ec 08             	sub    $0x8,%esp
    1ffd:	68 a4 4d 00 00       	push   $0x4da4
    2002:	6a 01                	push   $0x1
    2004:	e8 63 18 00 00       	call   0x386c
    2009:	e8 11 17 00 00       	call   0x371f
    200e:	83 ec 08             	sub    $0x8,%esp
    2011:	68 49 43 00 00       	push   $0x4349
    2016:	6a 01                	push   $0x1
    2018:	e8 4f 18 00 00       	call   0x386c
    201d:	e8 fd 16 00 00       	call   0x371f
    2022:	83 ec 08             	sub    $0x8,%esp
    2025:	68 66 43 00 00       	push   $0x4366
    202a:	6a 01                	push   $0x1
    202c:	e8 3b 18 00 00       	call   0x386c
    2031:	e8 e9 16 00 00       	call   0x371f
    2036:	83 ec 08             	sub    $0x8,%esp
    2039:	68 66 43 00 00       	push   $0x4366
    203e:	6a 01                	push   $0x1
    2040:	e8 27 18 00 00       	call   0x386c
    2045:	e8 d5 16 00 00       	call   0x371f
    204a:	83 ec 08             	sub    $0x8,%esp
    204d:	68 94 43 00 00       	push   $0x4394
    2052:	6a 01                	push   $0x1
    2054:	e8 13 18 00 00       	call   0x386c
    2059:	e8 c1 16 00 00       	call   0x371f
    205e:	83 ec 08             	sub    $0x8,%esp
    2061:	68 a7 43 00 00       	push   $0x43a7
    2066:	6a 01                	push   $0x1
    2068:	e8 ff 17 00 00       	call   0x386c
    206d:	e8 ad 16 00 00       	call   0x371f
    2072:	83 ec 08             	sub    $0x8,%esp
    2075:	68 bf 43 00 00       	push   $0x43bf
    207a:	6a 01                	push   $0x1
    207c:	e8 eb 17 00 00       	call   0x386c
    2081:	e8 99 16 00 00       	call   0x371f
    2086:	83 ec 08             	sub    $0x8,%esp
    2089:	68 c8 4d 00 00       	push   $0x4dc8
    208e:	6a 01                	push   $0x1
    2090:	e8 d7 17 00 00       	call   0x386c
    2095:	e8 85 16 00 00       	call   0x371f
    209a:	83 ec 08             	sub    $0x8,%esp
    209d:	68 e3 43 00 00       	push   $0x43e3
    20a2:	6a 01                	push   $0x1
    20a4:	e8 c3 17 00 00       	call   0x386c
    20a9:	e8 71 16 00 00       	call   0x371f
    20ae:	83 ec 08             	sub    $0x8,%esp
    20b1:	68 08 44 00 00       	push   $0x4408
    20b6:	6a 01                	push   $0x1
    20b8:	e8 af 17 00 00       	call   0x386c
    20bd:	e8 5d 16 00 00       	call   0x371f
    20c2:	83 ec 08             	sub    $0x8,%esp
    20c5:	68 24 44 00 00       	push   $0x4424
    20ca:	6a 01                	push   $0x1
    20cc:	e8 9b 17 00 00       	call   0x386c
    20d1:	e8 49 16 00 00       	call   0x371f
    20d6:	83 ec 08             	sub    $0x8,%esp
    20d9:	68 3a 44 00 00       	push   $0x443a
    20de:	6a 01                	push   $0x1
    20e0:	e8 87 17 00 00       	call   0x386c
    20e5:	e8 35 16 00 00       	call   0x371f
    20ea:	83 ec 08             	sub    $0x8,%esp
    20ed:	68 53 44 00 00       	push   $0x4453
    20f2:	6a 01                	push   $0x1
    20f4:	e8 73 17 00 00       	call   0x386c
    20f9:	e8 21 16 00 00       	call   0x371f
    20fe:	83 ec 08             	sub    $0x8,%esp
    2101:	68 f0 4d 00 00       	push   $0x4df0
    2106:	6a 01                	push   $0x1
    2108:	e8 5f 17 00 00       	call   0x386c
    210d:	e8 0d 16 00 00       	call   0x371f
    2112:	83 ec 08             	sub    $0x8,%esp
    2115:	68 14 4e 00 00       	push   $0x4e14
    211a:	6a 01                	push   $0x1
    211c:	e8 4b 17 00 00       	call   0x386c
    2121:	e8 f9 15 00 00       	call   0x371f
    2126:	83 ec 08             	sub    $0x8,%esp
    2129:	68 38 4e 00 00       	push   $0x4e38
    212e:	6a 01                	push   $0x1
    2130:	e8 37 17 00 00       	call   0x386c
    2135:	e8 e5 15 00 00       	call   0x371f
    213a:	83 ec 08             	sub    $0x8,%esp
    213d:	68 77 44 00 00       	push   $0x4477
    2142:	6a 01                	push   $0x1
    2144:	e8 23 17 00 00       	call   0x386c
    2149:	e8 d1 15 00 00       	call   0x371f
    214e:	83 ec 08             	sub    $0x8,%esp
    2151:	68 92 44 00 00       	push   $0x4492
    2156:	6a 01                	push   $0x1
    2158:	e8 0f 17 00 00       	call   0x386c
    215d:	e8 bd 15 00 00       	call   0x371f
    2162:	83 ec 08             	sub    $0x8,%esp
    2165:	68 ad 44 00 00       	push   $0x44ad
    216a:	6a 01                	push   $0x1
    216c:	e8 fb 16 00 00       	call   0x386c
    2171:	e8 a9 15 00 00       	call   0x371f
    2176:	83 ec 08             	sub    $0x8,%esp
    2179:	68 ca 44 00 00       	push   $0x44ca
    217e:	6a 01                	push   $0x1
    2180:	e8 e7 16 00 00       	call   0x386c
    2185:	e8 95 15 00 00       	call   0x371f
    218a:	83 ec 08             	sub    $0x8,%esp
    218d:	68 e6 44 00 00       	push   $0x44e6
    2192:	6a 01                	push   $0x1
    2194:	e8 d3 16 00 00       	call   0x386c
    2199:	e8 81 15 00 00       	call   0x371f
    219e:	83 ec 08             	sub    $0x8,%esp
    21a1:	68 02 45 00 00       	push   $0x4502
    21a6:	6a 01                	push   $0x1
    21a8:	e8 bf 16 00 00       	call   0x386c
    21ad:	e8 6d 15 00 00       	call   0x371f
    21b2:	83 ec 08             	sub    $0x8,%esp
    21b5:	68 1a 45 00 00       	push   $0x451a
    21ba:	6a 01                	push   $0x1
    21bc:	e8 ab 16 00 00       	call   0x386c
    21c1:	e8 59 15 00 00       	call   0x371f
    21c6:	83 ec 08             	sub    $0x8,%esp
    21c9:	68 31 43 00 00       	push   $0x4331
    21ce:	6a 01                	push   $0x1
    21d0:	e8 97 16 00 00       	call   0x386c
    21d5:	e8 45 15 00 00       	call   0x371f
    21da:	83 ec 08             	sub    $0x8,%esp
    21dd:	68 32 45 00 00       	push   $0x4532
    21e2:	6a 01                	push   $0x1
    21e4:	e8 83 16 00 00       	call   0x386c
    21e9:	e8 31 15 00 00       	call   0x371f
    21ee:	83 ec 08             	sub    $0x8,%esp
    21f1:	68 5c 4e 00 00       	push   $0x4e5c
    21f6:	6a 01                	push   $0x1
    21f8:	e8 6f 16 00 00       	call   0x386c
    21fd:	e8 1d 15 00 00       	call   0x371f
    2202:	83 ec 08             	sub    $0x8,%esp
    2205:	68 47 45 00 00       	push   $0x4547
    220a:	6a 01                	push   $0x1
    220c:	e8 5b 16 00 00       	call   0x386c
    2211:	e8 09 15 00 00       	call   0x371f
    2216:	83 ec 08             	sub    $0x8,%esp
    2219:	68 5c 45 00 00       	push   $0x455c
    221e:	6a 01                	push   $0x1
    2220:	e8 47 16 00 00       	call   0x386c
    2225:	e8 f5 14 00 00       	call   0x371f
    222a:	55                   	push   %ebp
    222b:	89 e5                	mov    %esp,%ebp
    222d:	57                   	push   %edi
    222e:	56                   	push   %esi
    222f:	53                   	push   %ebx
    2230:	83 ec 14             	sub    $0x14,%esp
    2233:	68 79 45 00 00       	push   $0x4579
    2238:	6a 01                	push   $0x1
    223a:	e8 2d 16 00 00       	call   0x386c
    223f:	c7 04 24 88 45 00 00 	movl   $0x4588,(%esp)
    2246:	e8 24 15 00 00       	call   0x376f
    224b:	83 c4 10             	add    $0x10,%esp
    224e:	be f3 01 00 00       	mov    $0x1f3,%esi
    2253:	eb 45                	jmp    0x229a
    2255:	83 ec 08             	sub    $0x8,%esp
    2258:	68 91 45 00 00       	push   $0x4591
    225d:	6a 01                	push   $0x1
    225f:	e8 08 16 00 00       	call   0x386c
    2264:	e8 b6 14 00 00       	call   0x371f
    2269:	50                   	push   %eax
    226a:	56                   	push   %esi
    226b:	68 a9 45 00 00       	push   $0x45a9
    2270:	6a 01                	push   $0x1
    2272:	e8 f5 15 00 00       	call   0x386c
    2277:	e8 a3 14 00 00       	call   0x371f
    227c:	83 ec 0c             	sub    $0xc,%esp
    227f:	57                   	push   %edi
    2280:	e8 c2 14 00 00       	call   0x3747
    2285:	c7 04 24 88 45 00 00 	movl   $0x4588,(%esp)
    228c:	e8 de 14 00 00       	call   0x376f
    2291:	81 c6 d7 01 00 00    	add    $0x1d7,%esi
    2297:	83 c4 10             	add    $0x10,%esp
    229a:	81 fe ff 17 00 00    	cmp    $0x17ff,%esi
    22a0:	7f 40                	jg     0x22e2
    22a2:	83 ec 08             	sub    $0x8,%esp
    22a5:	68 02 02 00 00       	push   $0x202
    22aa:	68 88 45 00 00       	push   $0x4588
    22af:	e8 ab 14 00 00       	call   0x375f
    22b4:	89 c7                	mov    %eax,%edi
    22b6:	83 c4 10             	add    $0x10,%esp
    22b9:	85 c0                	test   %eax,%eax
    22bb:	78 98                	js     0x2255
    22bd:	bb 00 00 00 00       	mov    $0x0,%ebx
    22c2:	83 fb 01             	cmp    $0x1,%ebx
    22c5:	7f b5                	jg     0x227c
    22c7:	83 ec 04             	sub    $0x4,%esp
    22ca:	56                   	push   %esi
    22cb:	68 e0 82 00 00       	push   $0x82e0
    22d0:	57                   	push   %edi
    22d1:	e8 69 14 00 00       	call   0x373f
    22d6:	83 c4 10             	add    $0x10,%esp
    22d9:	39 c6                	cmp    %eax,%esi
    22db:	75 8c                	jne    0x2269
    22dd:	83 c3 01             	add    $0x1,%ebx
    22e0:	eb e0                	jmp    0x22c2
    22e2:	83 ec 08             	sub    $0x8,%esp
    22e5:	68 bb 45 00 00       	push   $0x45bb
    22ea:	6a 01                	push   $0x1
    22ec:	e8 7b 15 00 00       	call   0x386c
    22f1:	83 c4 10             	add    $0x10,%esp
    22f4:	8d 65 f4             	lea    -0xc(%ebp),%esp
    22f7:	5b                   	pop    %ebx
    22f8:	5e                   	pop    %esi
    22f9:	5f                   	pop    %edi
    22fa:	5d                   	pop    %ebp
    22fb:	c3                   	ret    
    22fc:	55                   	push   %ebp
    22fd:	89 e5                	mov    %esp,%ebp
    22ff:	57                   	push   %edi
    2300:	56                   	push   %esi
    2301:	53                   	push   %ebx
    2302:	83 ec 14             	sub    $0x14,%esp
    2305:	68 c8 45 00 00       	push   $0x45c8
    230a:	6a 01                	push   $0x1
    230c:	e8 5b 15 00 00       	call   0x386c
    2311:	c7 04 24 e4 45 00 00 	movl   $0x45e4,(%esp)
    2318:	e8 52 14 00 00       	call   0x376f
    231d:	83 c4 08             	add    $0x8,%esp
    2320:	68 02 02 00 00       	push   $0x202
    2325:	68 e4 45 00 00       	push   $0x45e4
    232a:	e8 30 14 00 00       	call   0x375f
    232f:	83 c4 10             	add    $0x10,%esp
    2332:	85 c0                	test   %eax,%eax
    2334:	78 41                	js     0x2377
    2336:	89 c6                	mov    %eax,%esi
    2338:	bb 00 00 00 00       	mov    $0x0,%ebx
    233d:	83 fb 13             	cmp    $0x13,%ebx
    2340:	7f 5d                	jg     0x239f
    2342:	83 ec 04             	sub    $0x4,%esp
    2345:	68 58 02 00 00       	push   $0x258
    234a:	53                   	push   %ebx
    234b:	68 e0 82 00 00       	push   $0x82e0
    2350:	e8 8f 12 00 00       	call   0x35e4
    2355:	83 c4 0c             	add    $0xc,%esp
    2358:	68 58 02 00 00       	push   $0x258
    235d:	68 e0 82 00 00       	push   $0x82e0
    2362:	56                   	push   %esi
    2363:	e8 d7 13 00 00       	call   0x373f
    2368:	83 c4 10             	add    $0x10,%esp
    236b:	3d 58 02 00 00       	cmp    $0x258,%eax
    2370:	75 19                	jne    0x238b
    2372:	83 c3 01             	add    $0x1,%ebx
    2375:	eb c6                	jmp    0x233d
    2377:	83 ec 08             	sub    $0x8,%esp
    237a:	68 d6 45 00 00       	push   $0x45d6
    237f:	6a 01                	push   $0x1
    2381:	e8 e6 14 00 00       	call   0x386c
    2386:	e8 94 13 00 00       	call   0x371f
    238b:	83 ec 08             	sub    $0x8,%esp
    238e:	68 ec 45 00 00       	push   $0x45ec
    2393:	6a 01                	push   $0x1
    2395:	e8 d2 14 00 00       	call   0x386c
    239a:	e8 80 13 00 00       	call   0x371f
    239f:	83 ec 0c             	sub    $0xc,%esp
    23a2:	56                   	push   %esi
    23a3:	e8 9f 13 00 00       	call   0x3747
    23a8:	83 c4 08             	add    $0x8,%esp
    23ab:	6a 00                	push   $0x0
    23ad:	68 e4 45 00 00       	push   $0x45e4
    23b2:	e8 a8 13 00 00       	call   0x375f
    23b7:	89 c7                	mov    %eax,%edi
    23b9:	83 c4 10             	add    $0x10,%esp
    23bc:	85 c0                	test   %eax,%eax
    23be:	78 53                	js     0x2413
    23c0:	be 00 00 00 00       	mov    $0x0,%esi
    23c5:	bb 00 00 00 00       	mov    $0x0,%ebx
    23ca:	83 ec 04             	sub    $0x4,%esp
    23cd:	68 2c 01 00 00       	push   $0x12c
    23d2:	68 e0 82 00 00       	push   $0x82e0
    23d7:	57                   	push   %edi
    23d8:	e8 5a 13 00 00       	call   0x3737
    23dd:	83 c4 10             	add    $0x10,%esp
    23e0:	85 c0                	test   %eax,%eax
    23e2:	78 43                	js     0x2427
    23e4:	74 7d                	je     0x2463
    23e6:	3d 2c 01 00 00       	cmp    $0x12c,%eax
    23eb:	75 4e                	jne    0x243b
    23ed:	0f be 0d e0 82 00 00 	movsbl 0x82e0,%ecx
    23f4:	89 da                	mov    %ebx,%edx
    23f6:	c1 ea 1f             	shr    $0x1f,%edx
    23f9:	01 da                	add    %ebx,%edx
    23fb:	d1 fa                	sar    %edx
    23fd:	39 d1                	cmp    %edx,%ecx
    23ff:	75 4e                	jne    0x244f
    2401:	0f be 0d 0b 84 00 00 	movsbl 0x840b,%ecx
    2408:	39 ca                	cmp    %ecx,%edx
    240a:	75 43                	jne    0x244f
    240c:	01 c6                	add    %eax,%esi
    240e:	83 c3 01             	add    $0x1,%ebx
    2411:	eb b7                	jmp    0x23ca
    2413:	83 ec 08             	sub    $0x8,%esp
    2416:	68 02 46 00 00       	push   $0x4602
    241b:	6a 01                	push   $0x1
    241d:	e8 4a 14 00 00       	call   0x386c
    2422:	e8 f8 12 00 00       	call   0x371f
    2427:	83 ec 08             	sub    $0x8,%esp
    242a:	68 17 46 00 00       	push   $0x4617
    242f:	6a 01                	push   $0x1
    2431:	e8 36 14 00 00       	call   0x386c
    2436:	e8 e4 12 00 00       	call   0x371f
    243b:	83 ec 08             	sub    $0x8,%esp
    243e:	68 2c 46 00 00       	push   $0x462c
    2443:	6a 01                	push   $0x1
    2445:	e8 22 14 00 00       	call   0x386c
    244a:	e8 d0 12 00 00       	call   0x371f
    244f:	83 ec 08             	sub    $0x8,%esp
    2452:	68 40 46 00 00       	push   $0x4640
    2457:	6a 01                	push   $0x1
    2459:	e8 0e 14 00 00       	call   0x386c
    245e:	e8 bc 12 00 00       	call   0x371f
    2463:	83 ec 0c             	sub    $0xc,%esp
    2466:	57                   	push   %edi
    2467:	e8 db 12 00 00       	call   0x3747
    246c:	83 c4 10             	add    $0x10,%esp
    246f:	81 fe e0 2e 00 00    	cmp    $0x2ee0,%esi
    2475:	75 27                	jne    0x249e
    2477:	83 ec 0c             	sub    $0xc,%esp
    247a:	68 e4 45 00 00       	push   $0x45e4
    247f:	e8 eb 12 00 00       	call   0x376f
    2484:	83 c4 08             	add    $0x8,%esp
    2487:	68 73 46 00 00       	push   $0x4673
    248c:	6a 01                	push   $0x1
    248e:	e8 d9 13 00 00       	call   0x386c
    2493:	83 c4 10             	add    $0x10,%esp
    2496:	8d 65 f4             	lea    -0xc(%ebp),%esp
    2499:	5b                   	pop    %ebx
    249a:	5e                   	pop    %esi
    249b:	5f                   	pop    %edi
    249c:	5d                   	pop    %ebp
    249d:	c3                   	ret    
    249e:	83 ec 08             	sub    $0x8,%esp
    24a1:	68 59 46 00 00       	push   $0x4659
    24a6:	6a 01                	push   $0x1
    24a8:	e8 bf 13 00 00       	call   0x386c
    24ad:	e8 6d 12 00 00       	call   0x371f
    24b2:	55                   	push   %ebp
    24b3:	89 e5                	mov    %esp,%ebp
    24b5:	83 ec 10             	sub    $0x10,%esp
    24b8:	68 84 46 00 00       	push   $0x4684
    24bd:	6a 01                	push   $0x1
    24bf:	e8 a8 13 00 00       	call   0x386c
    24c4:	c7 04 24 bf 46 00 00 	movl   $0x46bf,(%esp)
    24cb:	e8 b7 12 00 00       	call   0x3787
    24d0:	83 c4 10             	add    $0x10,%esp
    24d3:	85 c0                	test   %eax,%eax
    24d5:	0f 85 9c 00 00 00    	jne    0x2577
    24db:	83 ec 0c             	sub    $0xc,%esp
    24de:	68 7c 4e 00 00       	push   $0x4e7c
    24e3:	e8 9f 12 00 00       	call   0x3787
    24e8:	83 c4 10             	add    $0x10,%esp
    24eb:	85 c0                	test   %eax,%eax
    24ed:	0f 85 98 00 00 00    	jne    0x258b
    24f3:	83 ec 08             	sub    $0x8,%esp
    24f6:	68 00 02 00 00       	push   $0x200
    24fb:	68 cc 4e 00 00       	push   $0x4ecc
    2500:	e8 5a 12 00 00       	call   0x375f
    2505:	83 c4 10             	add    $0x10,%esp
    2508:	85 c0                	test   %eax,%eax
    250a:	0f 88 8f 00 00 00    	js     0x259f
    2510:	83 ec 0c             	sub    $0xc,%esp
    2513:	50                   	push   %eax
    2514:	e8 2e 12 00 00       	call   0x3747
    2519:	83 c4 08             	add    $0x8,%esp
    251c:	6a 00                	push   $0x0
    251e:	68 3c 4f 00 00       	push   $0x4f3c
    2523:	e8 37 12 00 00       	call   0x375f
    2528:	83 c4 10             	add    $0x10,%esp
    252b:	85 c0                	test   %eax,%eax
    252d:	0f 88 80 00 00 00    	js     0x25b3
    2533:	83 ec 0c             	sub    $0xc,%esp
    2536:	50                   	push   %eax
    2537:	e8 0b 12 00 00       	call   0x3747
    253c:	c7 04 24 b0 46 00 00 	movl   $0x46b0,(%esp)
    2543:	e8 3f 12 00 00       	call   0x3787
    2548:	83 c4 10             	add    $0x10,%esp
    254b:	85 c0                	test   %eax,%eax
    254d:	74 78                	je     0x25c7
    254f:	83 ec 0c             	sub    $0xc,%esp
    2552:	68 d8 4f 00 00       	push   $0x4fd8
    2557:	e8 2b 12 00 00       	call   0x3787
    255c:	83 c4 10             	add    $0x10,%esp
    255f:	85 c0                	test   %eax,%eax
    2561:	74 78                	je     0x25db
    2563:	83 ec 08             	sub    $0x8,%esp
    2566:	68 ce 46 00 00       	push   $0x46ce
    256b:	6a 01                	push   $0x1
    256d:	e8 fa 12 00 00       	call   0x386c
    2572:	83 c4 10             	add    $0x10,%esp
    2575:	c9                   	leave  
    2576:	c3                   	ret    
    2577:	83 ec 08             	sub    $0x8,%esp
    257a:	68 93 46 00 00       	push   $0x4693
    257f:	6a 01                	push   $0x1
    2581:	e8 e6 12 00 00       	call   0x386c
    2586:	e8 94 11 00 00       	call   0x371f
    258b:	83 ec 08             	sub    $0x8,%esp
    258e:	68 9c 4e 00 00       	push   $0x4e9c
    2593:	6a 01                	push   $0x1
    2595:	e8 d2 12 00 00       	call   0x386c
    259a:	e8 80 11 00 00       	call   0x371f
    259f:	83 ec 08             	sub    $0x8,%esp
    25a2:	68 fc 4e 00 00       	push   $0x4efc
    25a7:	6a 01                	push   $0x1
    25a9:	e8 be 12 00 00       	call   0x386c
    25ae:	e8 6c 11 00 00       	call   0x371f
    25b3:	83 ec 08             	sub    $0x8,%esp
    25b6:	68 6c 4f 00 00       	push   $0x4f6c
    25bb:	6a 01                	push   $0x1
    25bd:	e8 aa 12 00 00       	call   0x386c
    25c2:	e8 58 11 00 00       	call   0x371f
    25c7:	83 ec 08             	sub    $0x8,%esp
    25ca:	68 a8 4f 00 00       	push   $0x4fa8
    25cf:	6a 01                	push   $0x1
    25d1:	e8 96 12 00 00       	call   0x386c
    25d6:	e8 44 11 00 00       	call   0x371f
    25db:	83 ec 08             	sub    $0x8,%esp
    25de:	68 f8 4f 00 00       	push   $0x4ff8
    25e3:	6a 01                	push   $0x1
    25e5:	e8 82 12 00 00       	call   0x386c
    25ea:	e8 30 11 00 00       	call   0x371f
    25ef:	55                   	push   %ebp
    25f0:	89 e5                	mov    %esp,%ebp
    25f2:	83 ec 10             	sub    $0x10,%esp
    25f5:	68 db 46 00 00       	push   $0x46db
    25fa:	6a 01                	push   $0x1
    25fc:	e8 6b 12 00 00       	call   0x386c
    2601:	c7 04 24 e7 46 00 00 	movl   $0x46e7,(%esp)
    2608:	e8 7a 11 00 00       	call   0x3787
    260d:	83 c4 10             	add    $0x10,%esp
    2610:	85 c0                	test   %eax,%eax
    2612:	0f 85 bc 00 00 00    	jne    0x26d4
    2618:	83 ec 0c             	sub    $0xc,%esp
    261b:	68 e7 46 00 00       	push   $0x46e7
    2620:	e8 6a 11 00 00       	call   0x378f
    2625:	83 c4 10             	add    $0x10,%esp
    2628:	85 c0                	test   %eax,%eax
    262a:	0f 85 b8 00 00 00    	jne    0x26e8
    2630:	83 ec 0c             	sub    $0xc,%esp
    2633:	68 92 43 00 00       	push   $0x4392
    2638:	e8 32 11 00 00       	call   0x376f
    263d:	83 c4 10             	add    $0x10,%esp
    2640:	85 c0                	test   %eax,%eax
    2642:	0f 84 b4 00 00 00    	je     0x26fc
    2648:	83 ec 0c             	sub    $0xc,%esp
    264b:	68 91 43 00 00       	push   $0x4391
    2650:	e8 1a 11 00 00       	call   0x376f
    2655:	83 c4 10             	add    $0x10,%esp
    2658:	85 c0                	test   %eax,%eax
    265a:	0f 84 b0 00 00 00    	je     0x2710
    2660:	83 ec 0c             	sub    $0xc,%esp
    2663:	68 65 3b 00 00       	push   $0x3b65
    2668:	e8 22 11 00 00       	call   0x378f
    266d:	83 c4 10             	add    $0x10,%esp
    2670:	85 c0                	test   %eax,%eax
    2672:	0f 85 ac 00 00 00    	jne    0x2724
    2678:	83 ec 0c             	sub    $0xc,%esp
    267b:	68 2f 47 00 00       	push   $0x472f
    2680:	e8 ea 10 00 00       	call   0x376f
    2685:	83 c4 10             	add    $0x10,%esp
    2688:	85 c0                	test   %eax,%eax
    268a:	0f 84 a8 00 00 00    	je     0x2738
    2690:	83 ec 0c             	sub    $0xc,%esp
    2693:	68 4d 47 00 00       	push   $0x474d
    2698:	e8 d2 10 00 00       	call   0x376f
    269d:	83 c4 10             	add    $0x10,%esp
    26a0:	85 c0                	test   %eax,%eax
    26a2:	0f 84 a4 00 00 00    	je     0x274c
    26a8:	83 ec 0c             	sub    $0xc,%esp
    26ab:	68 e7 46 00 00       	push   $0x46e7
    26b0:	e8 ba 10 00 00       	call   0x376f
    26b5:	83 c4 10             	add    $0x10,%esp
    26b8:	85 c0                	test   %eax,%eax
    26ba:	0f 85 a0 00 00 00    	jne    0x2760
    26c0:	83 ec 08             	sub    $0x8,%esp
    26c3:	68 82 47 00 00       	push   $0x4782
    26c8:	6a 01                	push   $0x1
    26ca:	e8 9d 11 00 00       	call   0x386c
    26cf:	83 c4 10             	add    $0x10,%esp
    26d2:	c9                   	leave  
    26d3:	c3                   	ret    
    26d4:	83 ec 08             	sub    $0x8,%esp
    26d7:	68 ec 46 00 00       	push   $0x46ec
    26dc:	6a 01                	push   $0x1
    26de:	e8 89 11 00 00       	call   0x386c
    26e3:	e8 37 10 00 00       	call   0x371f
    26e8:	83 ec 08             	sub    $0x8,%esp
    26eb:	68 ff 46 00 00       	push   $0x46ff
    26f0:	6a 01                	push   $0x1
    26f2:	e8 75 11 00 00       	call   0x386c
    26f7:	e8 23 10 00 00       	call   0x371f
    26fc:	83 ec 08             	sub    $0x8,%esp
    26ff:	68 12 47 00 00       	push   $0x4712
    2704:	6a 01                	push   $0x1
    2706:	e8 61 11 00 00       	call   0x386c
    270b:	e8 0f 10 00 00       	call   0x371f
    2710:	83 ec 08             	sub    $0x8,%esp
    2713:	68 20 47 00 00       	push   $0x4720
    2718:	6a 01                	push   $0x1
    271a:	e8 4d 11 00 00       	call   0x386c
    271f:	e8 fb 0f 00 00       	call   0x371f
    2724:	83 ec 08             	sub    $0x8,%esp
    2727:	68 67 3b 00 00       	push   $0x3b67
    272c:	6a 01                	push   $0x1
    272e:	e8 39 11 00 00       	call   0x386c
    2733:	e8 e7 0f 00 00       	call   0x371f
    2738:	83 ec 08             	sub    $0x8,%esp
    273b:	68 36 47 00 00       	push   $0x4736
    2740:	6a 01                	push   $0x1
    2742:	e8 25 11 00 00       	call   0x386c
    2747:	e8 d3 0f 00 00       	call   0x371f
    274c:	83 ec 08             	sub    $0x8,%esp
    274f:	68 55 47 00 00       	push   $0x4755
    2754:	6a 01                	push   $0x1
    2756:	e8 11 11 00 00       	call   0x386c
    275b:	e8 bf 0f 00 00       	call   0x371f
    2760:	83 ec 08             	sub    $0x8,%esp
    2763:	68 6d 47 00 00       	push   $0x476d
    2768:	6a 01                	push   $0x1
    276a:	e8 fd 10 00 00       	call   0x386c
    276f:	e8 ab 0f 00 00       	call   0x371f
    2774:	55                   	push   %ebp
    2775:	89 e5                	mov    %esp,%ebp
    2777:	53                   	push   %ebx
    2778:	83 ec 0c             	sub    $0xc,%esp
    277b:	68 8c 47 00 00       	push   $0x478c
    2780:	6a 01                	push   $0x1
    2782:	e8 e5 10 00 00       	call   0x386c
    2787:	83 c4 08             	add    $0x8,%esp
    278a:	68 00 02 00 00       	push   $0x200
    278f:	68 99 47 00 00       	push   $0x4799
    2794:	e8 c6 0f 00 00       	call   0x375f
    2799:	83 c4 10             	add    $0x10,%esp
    279c:	85 c0                	test   %eax,%eax
    279e:	0f 88 22 01 00 00    	js     0x28c6
    27a4:	83 ec 0c             	sub    $0xc,%esp
    27a7:	50                   	push   %eax
    27a8:	e8 9a 0f 00 00       	call   0x3747
    27ad:	c7 04 24 99 47 00 00 	movl   $0x4799,(%esp)
    27b4:	e8 d6 0f 00 00       	call   0x378f
    27b9:	83 c4 10             	add    $0x10,%esp
    27bc:	85 c0                	test   %eax,%eax
    27be:	0f 84 16 01 00 00    	je     0x28da
    27c4:	83 ec 08             	sub    $0x8,%esp
    27c7:	6a 00                	push   $0x0
    27c9:	68 d2 47 00 00       	push   $0x47d2
    27ce:	e8 8c 0f 00 00       	call   0x375f
    27d3:	83 c4 10             	add    $0x10,%esp
    27d6:	85 c0                	test   %eax,%eax
    27d8:	0f 89 10 01 00 00    	jns    0x28ee
    27de:	83 ec 08             	sub    $0x8,%esp
    27e1:	68 00 02 00 00       	push   $0x200
    27e6:	68 d2 47 00 00       	push   $0x47d2
    27eb:	e8 6f 0f 00 00       	call   0x375f
    27f0:	83 c4 10             	add    $0x10,%esp
    27f3:	85 c0                	test   %eax,%eax
    27f5:	0f 89 07 01 00 00    	jns    0x2902
    27fb:	83 ec 0c             	sub    $0xc,%esp
    27fe:	68 d2 47 00 00       	push   $0x47d2
    2803:	e8 7f 0f 00 00       	call   0x3787
    2808:	83 c4 10             	add    $0x10,%esp
    280b:	85 c0                	test   %eax,%eax
    280d:	0f 84 03 01 00 00    	je     0x2916
    2813:	83 ec 0c             	sub    $0xc,%esp
    2816:	68 d2 47 00 00       	push   $0x47d2
    281b:	e8 4f 0f 00 00       	call   0x376f
    2820:	83 c4 10             	add    $0x10,%esp
    2823:	85 c0                	test   %eax,%eax
    2825:	0f 84 ff 00 00 00    	je     0x292a
    282b:	83 ec 08             	sub    $0x8,%esp
    282e:	68 d2 47 00 00       	push   $0x47d2
    2833:	68 36 48 00 00       	push   $0x4836
    2838:	e8 42 0f 00 00       	call   0x377f
    283d:	83 c4 10             	add    $0x10,%esp
    2840:	85 c0                	test   %eax,%eax
    2842:	0f 84 f6 00 00 00    	je     0x293e
    2848:	83 ec 0c             	sub    $0xc,%esp
    284b:	68 99 47 00 00       	push   $0x4799
    2850:	e8 1a 0f 00 00       	call   0x376f
    2855:	83 c4 10             	add    $0x10,%esp
    2858:	85 c0                	test   %eax,%eax
    285a:	0f 85 f2 00 00 00    	jne    0x2952
    2860:	83 ec 08             	sub    $0x8,%esp
    2863:	6a 02                	push   $0x2
    2865:	68 92 43 00 00       	push   $0x4392
    286a:	e8 f0 0e 00 00       	call   0x375f
    286f:	83 c4 10             	add    $0x10,%esp
    2872:	85 c0                	test   %eax,%eax
    2874:	0f 89 ec 00 00 00    	jns    0x2966
    287a:	83 ec 08             	sub    $0x8,%esp
    287d:	6a 00                	push   $0x0
    287f:	68 92 43 00 00       	push   $0x4392
    2884:	e8 d6 0e 00 00       	call   0x375f
    2889:	89 c3                	mov    %eax,%ebx
    288b:	83 c4 0c             	add    $0xc,%esp
    288e:	6a 01                	push   $0x1
    2890:	68 75 44 00 00       	push   $0x4475
    2895:	50                   	push   %eax
    2896:	e8 a4 0e 00 00       	call   0x373f
    289b:	83 c4 10             	add    $0x10,%esp
    289e:	85 c0                	test   %eax,%eax
    28a0:	0f 8f d4 00 00 00    	jg     0x297a
    28a6:	83 ec 0c             	sub    $0xc,%esp
    28a9:	53                   	push   %ebx
    28aa:	e8 98 0e 00 00       	call   0x3747
    28af:	83 c4 08             	add    $0x8,%esp
    28b2:	68 69 48 00 00       	push   $0x4869
    28b7:	6a 01                	push   $0x1
    28b9:	e8 ae 0f 00 00       	call   0x386c
    28be:	83 c4 10             	add    $0x10,%esp
    28c1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    28c4:	c9                   	leave  
    28c5:	c3                   	ret    
    28c6:	83 ec 08             	sub    $0x8,%esp
    28c9:	68 a1 47 00 00       	push   $0x47a1
    28ce:	6a 01                	push   $0x1
    28d0:	e8 97 0f 00 00       	call   0x386c
    28d5:	e8 45 0e 00 00       	call   0x371f
    28da:	83 ec 08             	sub    $0x8,%esp
    28dd:	68 b8 47 00 00       	push   $0x47b8
    28e2:	6a 01                	push   $0x1
    28e4:	e8 83 0f 00 00       	call   0x386c
    28e9:	e8 31 0e 00 00       	call   0x371f
    28ee:	83 ec 08             	sub    $0x8,%esp
    28f1:	68 dd 47 00 00       	push   $0x47dd
    28f6:	6a 01                	push   $0x1
    28f8:	e8 6f 0f 00 00       	call   0x386c
    28fd:	e8 1d 0e 00 00       	call   0x371f
    2902:	83 ec 08             	sub    $0x8,%esp
    2905:	68 dd 47 00 00       	push   $0x47dd
    290a:	6a 01                	push   $0x1
    290c:	e8 5b 0f 00 00       	call   0x386c
    2911:	e8 09 0e 00 00       	call   0x371f
    2916:	83 ec 08             	sub    $0x8,%esp
    2919:	68 fb 47 00 00       	push   $0x47fb
    291e:	6a 01                	push   $0x1
    2920:	e8 47 0f 00 00       	call   0x386c
    2925:	e8 f5 0d 00 00       	call   0x371f
    292a:	83 ec 08             	sub    $0x8,%esp
    292d:	68 18 48 00 00       	push   $0x4818
    2932:	6a 01                	push   $0x1
    2934:	e8 33 0f 00 00       	call   0x386c
    2939:	e8 e1 0d 00 00       	call   0x371f
    293e:	83 ec 08             	sub    $0x8,%esp
    2941:	68 2c 50 00 00       	push   $0x502c
    2946:	6a 01                	push   $0x1
    2948:	e8 1f 0f 00 00       	call   0x386c
    294d:	e8 cd 0d 00 00       	call   0x371f
    2952:	83 ec 08             	sub    $0x8,%esp
    2955:	68 3d 48 00 00       	push   $0x483d
    295a:	6a 01                	push   $0x1
    295c:	e8 0b 0f 00 00       	call   0x386c
    2961:	e8 b9 0d 00 00       	call   0x371f
    2966:	83 ec 08             	sub    $0x8,%esp
    2969:	68 4c 50 00 00       	push   $0x504c
    296e:	6a 01                	push   $0x1
    2970:	e8 f7 0e 00 00       	call   0x386c
    2975:	e8 a5 0d 00 00       	call   0x371f
    297a:	83 ec 08             	sub    $0x8,%esp
    297d:	68 55 48 00 00       	push   $0x4855
    2982:	6a 01                	push   $0x1
    2984:	e8 e3 0e 00 00       	call   0x386c
    2989:	e8 91 0d 00 00       	call   0x371f
    298e:	55                   	push   %ebp
    298f:	89 e5                	mov    %esp,%ebp
    2991:	53                   	push   %ebx
    2992:	83 ec 0c             	sub    $0xc,%esp
    2995:	68 79 48 00 00       	push   $0x4879
    299a:	6a 01                	push   $0x1
    299c:	e8 cb 0e 00 00       	call   0x386c
    29a1:	83 c4 10             	add    $0x10,%esp
    29a4:	bb 00 00 00 00       	mov    $0x0,%ebx
    29a9:	eb 4c                	jmp    0x29f7
    29ab:	83 ec 08             	sub    $0x8,%esp
    29ae:	68 90 48 00 00       	push   $0x4890
    29b3:	6a 01                	push   $0x1
    29b5:	e8 b2 0e 00 00       	call   0x386c
    29ba:	e8 60 0d 00 00       	call   0x371f
    29bf:	83 ec 08             	sub    $0x8,%esp
    29c2:	68 a4 48 00 00       	push   $0x48a4
    29c7:	6a 01                	push   $0x1
    29c9:	e8 9e 0e 00 00       	call   0x386c
    29ce:	e8 4c 0d 00 00       	call   0x371f
    29d3:	83 ec 0c             	sub    $0xc,%esp
    29d6:	50                   	push   %eax
    29d7:	e8 6b 0d 00 00       	call   0x3747
    29dc:	83 c4 10             	add    $0x10,%esp
    29df:	e9 80 00 00 00       	jmp    0x2a64
    29e4:	83 ec 0c             	sub    $0xc,%esp
    29e7:	68 74 44 00 00       	push   $0x4474
    29ec:	e8 7e 0d 00 00       	call   0x376f
    29f1:	83 c3 01             	add    $0x1,%ebx
    29f4:	83 c4 10             	add    $0x10,%esp
    29f7:	83 fb 32             	cmp    $0x32,%ebx
    29fa:	0f 8f 92 00 00 00    	jg     0x2a92
    2a00:	83 ec 0c             	sub    $0xc,%esp
    2a03:	68 8a 48 00 00       	push   $0x488a
    2a08:	e8 7a 0d 00 00       	call   0x3787
    2a0d:	83 c4 10             	add    $0x10,%esp
    2a10:	85 c0                	test   %eax,%eax
    2a12:	75 97                	jne    0x29ab
    2a14:	83 ec 0c             	sub    $0xc,%esp
    2a17:	68 8a 48 00 00       	push   $0x488a
    2a1c:	e8 6e 0d 00 00       	call   0x378f
    2a21:	83 c4 10             	add    $0x10,%esp
    2a24:	85 c0                	test   %eax,%eax
    2a26:	75 97                	jne    0x29bf
    2a28:	83 ec 0c             	sub    $0xc,%esp
    2a2b:	68 3f 3f 00 00       	push   $0x3f3f
    2a30:	e8 52 0d 00 00       	call   0x3787
    2a35:	83 c4 08             	add    $0x8,%esp
    2a38:	68 3f 3f 00 00       	push   $0x3f3f
    2a3d:	68 36 48 00 00       	push   $0x4836
    2a42:	e8 38 0d 00 00       	call   0x377f
    2a47:	83 c4 08             	add    $0x8,%esp
    2a4a:	68 00 02 00 00       	push   $0x200
    2a4f:	68 3f 3f 00 00       	push   $0x3f3f
    2a54:	e8 06 0d 00 00       	call   0x375f
    2a59:	83 c4 10             	add    $0x10,%esp
    2a5c:	85 c0                	test   %eax,%eax
    2a5e:	0f 89 6f ff ff ff    	jns    0x29d3
    2a64:	83 ec 08             	sub    $0x8,%esp
    2a67:	68 00 02 00 00       	push   $0x200
    2a6c:	68 74 44 00 00       	push   $0x4474
    2a71:	e8 e9 0c 00 00       	call   0x375f
    2a76:	83 c4 10             	add    $0x10,%esp
    2a79:	85 c0                	test   %eax,%eax
    2a7b:	0f 88 63 ff ff ff    	js     0x29e4
    2a81:	83 ec 0c             	sub    $0xc,%esp
    2a84:	50                   	push   %eax
    2a85:	e8 bd 0c 00 00       	call   0x3747
    2a8a:	83 c4 10             	add    $0x10,%esp
    2a8d:	e9 52 ff ff ff       	jmp    0x29e4
    2a92:	83 ec 0c             	sub    $0xc,%esp
    2a95:	68 65 3b 00 00       	push   $0x3b65
    2a9a:	e8 f0 0c 00 00       	call   0x378f
    2a9f:	83 c4 08             	add    $0x8,%esp
    2aa2:	68 b8 48 00 00       	push   $0x48b8
    2aa7:	6a 01                	push   $0x1
    2aa9:	e8 be 0d 00 00       	call   0x386c
    2aae:	83 c4 10             	add    $0x10,%esp
    2ab1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    2ab4:	c9                   	leave  
    2ab5:	c3                   	ret    
    2ab6:	55                   	push   %ebp
    2ab7:	89 e5                	mov    %esp,%ebp
    2ab9:	53                   	push   %ebx
    2aba:	83 ec 0c             	sub    $0xc,%esp
    2abd:	68 cc 48 00 00       	push   $0x48cc
    2ac2:	6a 01                	push   $0x1
    2ac4:	e8 a3 0d 00 00       	call   0x386c
    2ac9:	83 c4 10             	add    $0x10,%esp
    2acc:	bb 00 00 00 00       	mov    $0x0,%ebx
    2ad1:	81 fb e7 03 00 00    	cmp    $0x3e7,%ebx
    2ad7:	7f 15                	jg     0x2aee
    2ad9:	e8 39 0c 00 00       	call   0x3717
    2ade:	85 c0                	test   %eax,%eax
    2ae0:	78 0c                	js     0x2aee
    2ae2:	74 05                	je     0x2ae9
    2ae4:	83 c3 01             	add    $0x1,%ebx
    2ae7:	eb e8                	jmp    0x2ad1
    2ae9:	e8 31 0c 00 00       	call   0x371f
    2aee:	81 fb e8 03 00 00    	cmp    $0x3e8,%ebx
    2af4:	74 12                	je     0x2b08
    2af6:	85 db                	test   %ebx,%ebx
    2af8:	7e 36                	jle    0x2b30
    2afa:	e8 28 0c 00 00       	call   0x3727
    2aff:	85 c0                	test   %eax,%eax
    2b01:	78 19                	js     0x2b1c
    2b03:	83 eb 01             	sub    $0x1,%ebx
    2b06:	eb ee                	jmp    0x2af6
    2b08:	83 ec 08             	sub    $0x8,%esp
    2b0b:	68 6c 50 00 00       	push   $0x506c
    2b10:	6a 01                	push   $0x1
    2b12:	e8 55 0d 00 00       	call   0x386c
    2b17:	e8 03 0c 00 00       	call   0x371f
    2b1c:	83 ec 08             	sub    $0x8,%esp
    2b1f:	68 d7 48 00 00       	push   $0x48d7
    2b24:	6a 01                	push   $0x1
    2b26:	e8 41 0d 00 00       	call   0x386c
    2b2b:	e8 ef 0b 00 00       	call   0x371f
    2b30:	e8 f2 0b 00 00       	call   0x3727
    2b35:	83 f8 ff             	cmp    $0xffffffff,%eax
    2b38:	75 17                	jne    0x2b51
    2b3a:	83 ec 08             	sub    $0x8,%esp
    2b3d:	68 fe 48 00 00       	push   $0x48fe
    2b42:	6a 01                	push   $0x1
    2b44:	e8 23 0d 00 00       	call   0x386c
    2b49:	83 c4 10             	add    $0x10,%esp
    2b4c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    2b4f:	c9                   	leave  
    2b50:	c3                   	ret    
    2b51:	83 ec 08             	sub    $0x8,%esp
    2b54:	68 eb 48 00 00       	push   $0x48eb
    2b59:	6a 01                	push   $0x1
    2b5b:	e8 0c 0d 00 00       	call   0x386c
    2b60:	e8 ba 0b 00 00       	call   0x371f
    2b65:	55                   	push   %ebp
    2b66:	89 e5                	mov    %esp,%ebp
    2b68:	57                   	push   %edi
    2b69:	56                   	push   %esi
    2b6a:	53                   	push   %ebx
    2b6b:	83 ec 54             	sub    $0x54,%esp
    2b6e:	68 0c 49 00 00       	push   $0x490c
    2b73:	ff 35 a4 5b 00 00    	push   0x5ba4
    2b79:	e8 ee 0c 00 00       	call   0x386c
    2b7e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2b85:	e8 1d 0c 00 00       	call   0x37a7
    2b8a:	89 c7                	mov    %eax,%edi
    2b8c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2b93:	e8 0f 0c 00 00       	call   0x37a7
    2b98:	89 c6                	mov    %eax,%esi
    2b9a:	83 c4 10             	add    $0x10,%esp
    2b9d:	bb 00 00 00 00       	mov    $0x0,%ebx
    2ba2:	81 fb 87 13 00 00    	cmp    $0x1387,%ebx
    2ba8:	7f 3a                	jg     0x2be4
    2baa:	83 ec 0c             	sub    $0xc,%esp
    2bad:	6a 01                	push   $0x1
    2baf:	e8 f3 0b 00 00       	call   0x37a7
    2bb4:	83 c4 10             	add    $0x10,%esp
    2bb7:	39 c6                	cmp    %eax,%esi
    2bb9:	75 0b                	jne    0x2bc6
    2bbb:	c6 00 01             	movb   $0x1,(%eax)
    2bbe:	8d 70 01             	lea    0x1(%eax),%esi
    2bc1:	83 c3 01             	add    $0x1,%ebx
    2bc4:	eb dc                	jmp    0x2ba2
    2bc6:	83 ec 0c             	sub    $0xc,%esp
    2bc9:	50                   	push   %eax
    2bca:	56                   	push   %esi
    2bcb:	53                   	push   %ebx
    2bcc:	68 17 49 00 00       	push   $0x4917
    2bd1:	ff 35 a4 5b 00 00    	push   0x5ba4
    2bd7:	e8 90 0c 00 00       	call   0x386c
    2bdc:	83 c4 20             	add    $0x20,%esp
    2bdf:	e8 3b 0b 00 00       	call   0x371f
    2be4:	e8 2e 0b 00 00       	call   0x3717
    2be9:	89 c3                	mov    %eax,%ebx
    2beb:	85 c0                	test   %eax,%eax
    2bed:	0f 88 53 01 00 00    	js     0x2d46
    2bf3:	83 ec 0c             	sub    $0xc,%esp
    2bf6:	6a 01                	push   $0x1
    2bf8:	e8 aa 0b 00 00       	call   0x37a7
    2bfd:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2c04:	e8 9e 0b 00 00       	call   0x37a7
    2c09:	83 c6 01             	add    $0x1,%esi
    2c0c:	83 c4 10             	add    $0x10,%esp
    2c0f:	39 c6                	cmp    %eax,%esi
    2c11:	0f 85 47 01 00 00    	jne    0x2d5e
    2c17:	85 db                	test   %ebx,%ebx
    2c19:	0f 84 57 01 00 00    	je     0x2d76
    2c1f:	e8 03 0b 00 00       	call   0x3727
    2c24:	83 ec 0c             	sub    $0xc,%esp
    2c27:	6a 00                	push   $0x0
    2c29:	e8 79 0b 00 00       	call   0x37a7
    2c2e:	89 c3                	mov    %eax,%ebx
    2c30:	b8 00 00 40 06       	mov    $0x6400000,%eax
    2c35:	29 d8                	sub    %ebx,%eax
    2c37:	89 04 24             	mov    %eax,(%esp)
    2c3a:	e8 68 0b 00 00       	call   0x37a7
    2c3f:	83 c4 10             	add    $0x10,%esp
    2c42:	39 c3                	cmp    %eax,%ebx
    2c44:	0f 85 31 01 00 00    	jne    0x2d7b
    2c4a:	c6 05 ff ff 3f 06 63 	movb   $0x63,0x63fffff
    2c51:	83 ec 0c             	sub    $0xc,%esp
    2c54:	6a 00                	push   $0x0
    2c56:	e8 4c 0b 00 00       	call   0x37a7
    2c5b:	89 c3                	mov    %eax,%ebx
    2c5d:	c7 04 24 00 f0 ff ff 	movl   $0xfffff000,(%esp)
    2c64:	e8 3e 0b 00 00       	call   0x37a7
    2c69:	83 c4 10             	add    $0x10,%esp
    2c6c:	83 f8 ff             	cmp    $0xffffffff,%eax
    2c6f:	0f 84 1e 01 00 00    	je     0x2d93
    2c75:	83 ec 0c             	sub    $0xc,%esp
    2c78:	6a 00                	push   $0x0
    2c7a:	e8 28 0b 00 00       	call   0x37a7
    2c7f:	8d 93 00 f0 ff ff    	lea    -0x1000(%ebx),%edx
    2c85:	83 c4 10             	add    $0x10,%esp
    2c88:	39 c2                	cmp    %eax,%edx
    2c8a:	0f 85 1b 01 00 00    	jne    0x2dab
    2c90:	83 ec 0c             	sub    $0xc,%esp
    2c93:	6a 00                	push   $0x0
    2c95:	e8 0d 0b 00 00       	call   0x37a7
    2c9a:	89 c3                	mov    %eax,%ebx
    2c9c:	c7 04 24 00 10 00 00 	movl   $0x1000,(%esp)
    2ca3:	e8 ff 0a 00 00       	call   0x37a7
    2ca8:	89 c6                	mov    %eax,%esi
    2caa:	83 c4 10             	add    $0x10,%esp
    2cad:	39 c3                	cmp    %eax,%ebx
    2caf:	0f 85 0d 01 00 00    	jne    0x2dc2
    2cb5:	83 ec 0c             	sub    $0xc,%esp
    2cb8:	6a 00                	push   $0x0
    2cba:	e8 e8 0a 00 00       	call   0x37a7
    2cbf:	8d 93 00 10 00 00    	lea    0x1000(%ebx),%edx
    2cc5:	83 c4 10             	add    $0x10,%esp
    2cc8:	39 c2                	cmp    %eax,%edx
    2cca:	0f 85 f2 00 00 00    	jne    0x2dc2
    2cd0:	80 3d ff ff 3f 06 63 	cmpb   $0x63,0x63fffff
    2cd7:	0f 84 fc 00 00 00    	je     0x2dd9
    2cdd:	83 ec 0c             	sub    $0xc,%esp
    2ce0:	6a 00                	push   $0x0
    2ce2:	e8 c0 0a 00 00       	call   0x37a7
    2ce7:	89 c3                	mov    %eax,%ebx
    2ce9:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2cf0:	e8 b2 0a 00 00       	call   0x37a7
    2cf5:	89 c2                	mov    %eax,%edx
    2cf7:	89 f8                	mov    %edi,%eax
    2cf9:	29 d0                	sub    %edx,%eax
    2cfb:	89 04 24             	mov    %eax,(%esp)
    2cfe:	e8 a4 0a 00 00       	call   0x37a7
    2d03:	83 c4 10             	add    $0x10,%esp
    2d06:	39 c3                	cmp    %eax,%ebx
    2d08:	0f 85 e3 00 00 00    	jne    0x2df1
    2d0e:	bb 00 00 00 80       	mov    $0x80000000,%ebx
    2d13:	81 fb 7f 84 1e 80    	cmp    $0x801e847f,%ebx
    2d19:	0f 87 23 01 00 00    	ja     0x2e42
    2d1f:	e8 7b 0a 00 00       	call   0x379f
    2d24:	89 c6                	mov    %eax,%esi
    2d26:	e8 ec 09 00 00       	call   0x3717
    2d2b:	85 c0                	test   %eax,%eax
    2d2d:	0f 88 d5 00 00 00    	js     0x2e08
    2d33:	0f 84 e7 00 00 00    	je     0x2e20
    2d39:	e8 e9 09 00 00       	call   0x3727
    2d3e:	81 c3 50 c3 00 00    	add    $0xc350,%ebx
    2d44:	eb cd                	jmp    0x2d13
    2d46:	83 ec 08             	sub    $0x8,%esp
    2d49:	68 32 49 00 00       	push   $0x4932
    2d4e:	ff 35 a4 5b 00 00    	push   0x5ba4
    2d54:	e8 13 0b 00 00       	call   0x386c
    2d59:	e8 c1 09 00 00       	call   0x371f
    2d5e:	83 ec 08             	sub    $0x8,%esp
    2d61:	68 49 49 00 00       	push   $0x4949
    2d66:	ff 35 a4 5b 00 00    	push   0x5ba4
    2d6c:	e8 fb 0a 00 00       	call   0x386c
    2d71:	e8 a9 09 00 00       	call   0x371f
    2d76:	e8 a4 09 00 00       	call   0x371f
    2d7b:	83 ec 08             	sub    $0x8,%esp
    2d7e:	68 90 50 00 00       	push   $0x5090
    2d83:	ff 35 a4 5b 00 00    	push   0x5ba4
    2d89:	e8 de 0a 00 00       	call   0x386c
    2d8e:	e8 8c 09 00 00       	call   0x371f
    2d93:	83 ec 08             	sub    $0x8,%esp
    2d96:	68 65 49 00 00       	push   $0x4965
    2d9b:	ff 35 a4 5b 00 00    	push   0x5ba4
    2da1:	e8 c6 0a 00 00       	call   0x386c
    2da6:	e8 74 09 00 00       	call   0x371f
    2dab:	50                   	push   %eax
    2dac:	53                   	push   %ebx
    2dad:	68 d0 50 00 00       	push   $0x50d0
    2db2:	ff 35 a4 5b 00 00    	push   0x5ba4
    2db8:	e8 af 0a 00 00       	call   0x386c
    2dbd:	e8 5d 09 00 00       	call   0x371f
    2dc2:	56                   	push   %esi
    2dc3:	53                   	push   %ebx
    2dc4:	68 08 51 00 00       	push   $0x5108
    2dc9:	ff 35 a4 5b 00 00    	push   0x5ba4
    2dcf:	e8 98 0a 00 00       	call   0x386c
    2dd4:	e8 46 09 00 00       	call   0x371f
    2dd9:	83 ec 08             	sub    $0x8,%esp
    2ddc:	68 30 51 00 00       	push   $0x5130
    2de1:	ff 35 a4 5b 00 00    	push   0x5ba4
    2de7:	e8 80 0a 00 00       	call   0x386c
    2dec:	e8 2e 09 00 00       	call   0x371f
    2df1:	50                   	push   %eax
    2df2:	53                   	push   %ebx
    2df3:	68 60 51 00 00       	push   $0x5160
    2df8:	ff 35 a4 5b 00 00    	push   0x5ba4
    2dfe:	e8 69 0a 00 00       	call   0x386c
    2e03:	e8 17 09 00 00       	call   0x371f
    2e08:	83 ec 08             	sub    $0x8,%esp
    2e0b:	68 5d 4a 00 00       	push   $0x4a5d
    2e10:	ff 35 a4 5b 00 00    	push   0x5ba4
    2e16:	e8 51 0a 00 00       	call   0x386c
    2e1b:	e8 ff 08 00 00       	call   0x371f
    2e20:	0f be 03             	movsbl (%ebx),%eax
    2e23:	50                   	push   %eax
    2e24:	53                   	push   %ebx
    2e25:	68 80 49 00 00       	push   $0x4980
    2e2a:	ff 35 a4 5b 00 00    	push   0x5ba4
    2e30:	e8 37 0a 00 00       	call   0x386c
    2e35:	89 34 24             	mov    %esi,(%esp)
    2e38:	e8 12 09 00 00       	call   0x374f
    2e3d:	e8 dd 08 00 00       	call   0x371f
    2e42:	83 ec 0c             	sub    $0xc,%esp
    2e45:	8d 45 e0             	lea    -0x20(%ebp),%eax
    2e48:	50                   	push   %eax
    2e49:	e8 e1 08 00 00       	call   0x372f
    2e4e:	89 c3                	mov    %eax,%ebx
    2e50:	83 c4 10             	add    $0x10,%esp
    2e53:	85 c0                	test   %eax,%eax
    2e55:	75 04                	jne    0x2e5b
    2e57:	89 c6                	mov    %eax,%esi
    2e59:	eb 59                	jmp    0x2eb4
    2e5b:	83 ec 08             	sub    $0x8,%esp
    2e5e:	68 55 3e 00 00       	push   $0x3e55
    2e63:	6a 01                	push   $0x1
    2e65:	e8 02 0a 00 00       	call   0x386c
    2e6a:	e8 b0 08 00 00       	call   0x371f
    2e6f:	83 ec 0c             	sub    $0xc,%esp
    2e72:	6a 00                	push   $0x0
    2e74:	e8 2e 09 00 00       	call   0x37a7
    2e79:	89 c2                	mov    %eax,%edx
    2e7b:	b8 00 00 40 06       	mov    $0x6400000,%eax
    2e80:	29 d0                	sub    %edx,%eax
    2e82:	89 04 24             	mov    %eax,(%esp)
    2e85:	e8 1d 09 00 00       	call   0x37a7
    2e8a:	83 c4 0c             	add    $0xc,%esp
    2e8d:	6a 01                	push   $0x1
    2e8f:	68 75 44 00 00       	push   $0x4475
    2e94:	ff 75 e4             	push   -0x1c(%ebp)
    2e97:	e8 a3 08 00 00       	call   0x373f
    2e9c:	83 c4 10             	add    $0x10,%esp
    2e9f:	83 ec 0c             	sub    $0xc,%esp
    2ea2:	68 e8 03 00 00       	push   $0x3e8
    2ea7:	e8 03 09 00 00       	call   0x37af
    2eac:	83 c4 10             	add    $0x10,%esp
    2eaf:	eb ee                	jmp    0x2e9f
    2eb1:	83 c6 01             	add    $0x1,%esi
    2eb4:	83 fe 09             	cmp    $0x9,%esi
    2eb7:	77 28                	ja     0x2ee1
    2eb9:	e8 59 08 00 00       	call   0x3717
    2ebe:	89 44 b5 b8          	mov    %eax,-0x48(%ebp,%esi,4)
    2ec2:	85 c0                	test   %eax,%eax
    2ec4:	74 a9                	je     0x2e6f
    2ec6:	83 f8 ff             	cmp    $0xffffffff,%eax
    2ec9:	74 e6                	je     0x2eb1
    2ecb:	83 ec 04             	sub    $0x4,%esp
    2ece:	6a 01                	push   $0x1
    2ed0:	8d 45 b7             	lea    -0x49(%ebp),%eax
    2ed3:	50                   	push   %eax
    2ed4:	ff 75 e0             	push   -0x20(%ebp)
    2ed7:	e8 5b 08 00 00       	call   0x3737
    2edc:	83 c4 10             	add    $0x10,%esp
    2edf:	eb d0                	jmp    0x2eb1
    2ee1:	83 ec 0c             	sub    $0xc,%esp
    2ee4:	68 00 10 00 00       	push   $0x1000
    2ee9:	e8 b9 08 00 00       	call   0x37a7
    2eee:	89 c6                	mov    %eax,%esi
    2ef0:	83 c4 10             	add    $0x10,%esp
    2ef3:	eb 03                	jmp    0x2ef8
    2ef5:	83 c3 01             	add    $0x1,%ebx
    2ef8:	83 fb 09             	cmp    $0x9,%ebx
    2efb:	77 1c                	ja     0x2f19
    2efd:	8b 44 9d b8          	mov    -0x48(%ebp,%ebx,4),%eax
    2f01:	83 f8 ff             	cmp    $0xffffffff,%eax
    2f04:	74 ef                	je     0x2ef5
    2f06:	83 ec 0c             	sub    $0xc,%esp
    2f09:	50                   	push   %eax
    2f0a:	e8 40 08 00 00       	call   0x374f
    2f0f:	e8 13 08 00 00       	call   0x3727
    2f14:	83 c4 10             	add    $0x10,%esp
    2f17:	eb dc                	jmp    0x2ef5
    2f19:	83 fe ff             	cmp    $0xffffffff,%esi
    2f1c:	74 2f                	je     0x2f4d
    2f1e:	83 ec 0c             	sub    $0xc,%esp
    2f21:	6a 00                	push   $0x0
    2f23:	e8 7f 08 00 00       	call   0x37a7
    2f28:	83 c4 10             	add    $0x10,%esp
    2f2b:	39 c7                	cmp    %eax,%edi
    2f2d:	72 36                	jb     0x2f65
    2f2f:	83 ec 08             	sub    $0x8,%esp
    2f32:	68 b4 49 00 00       	push   $0x49b4
    2f37:	ff 35 a4 5b 00 00    	push   0x5ba4
    2f3d:	e8 2a 09 00 00       	call   0x386c
    2f42:	83 c4 10             	add    $0x10,%esp
    2f45:	8d 65 f4             	lea    -0xc(%ebp),%esp
    2f48:	5b                   	pop    %ebx
    2f49:	5e                   	pop    %esi
    2f4a:	5f                   	pop    %edi
    2f4b:	5d                   	pop    %ebp
    2f4c:	c3                   	ret    
    2f4d:	83 ec 08             	sub    $0x8,%esp
    2f50:	68 99 49 00 00       	push   $0x4999
    2f55:	ff 35 a4 5b 00 00    	push   0x5ba4
    2f5b:	e8 0c 09 00 00       	call   0x386c
    2f60:	e8 ba 07 00 00       	call   0x371f
    2f65:	83 ec 0c             	sub    $0xc,%esp
    2f68:	6a 00                	push   $0x0
    2f6a:	e8 38 08 00 00       	call   0x37a7
    2f6f:	29 c7                	sub    %eax,%edi
    2f71:	89 3c 24             	mov    %edi,(%esp)
    2f74:	e8 2e 08 00 00       	call   0x37a7
    2f79:	83 c4 10             	add    $0x10,%esp
    2f7c:	eb b1                	jmp    0x2f2f
    2f7e:	c3                   	ret    
    2f7f:	55                   	push   %ebp
    2f80:	89 e5                	mov    %esp,%ebp
    2f82:	56                   	push   %esi
    2f83:	53                   	push   %ebx
    2f84:	83 ec 08             	sub    $0x8,%esp
    2f87:	68 c2 49 00 00       	push   $0x49c2
    2f8c:	ff 35 a4 5b 00 00    	push   0x5ba4
    2f92:	e8 d5 08 00 00       	call   0x386c
    2f97:	83 c4 10             	add    $0x10,%esp
    2f9a:	be 00 00 00 00       	mov    $0x0,%esi
    2f9f:	81 fe 00 30 11 00    	cmp    $0x113000,%esi
    2fa5:	77 69                	ja     0x3010
    2fa7:	e8 6b 07 00 00       	call   0x3717
    2fac:	89 c3                	mov    %eax,%ebx
    2fae:	85 c0                	test   %eax,%eax
    2fb0:	74 41                	je     0x2ff3
    2fb2:	83 ec 0c             	sub    $0xc,%esp
    2fb5:	6a 00                	push   $0x0
    2fb7:	e8 f3 07 00 00       	call   0x37af
    2fbc:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2fc3:	e8 e7 07 00 00       	call   0x37af
    2fc8:	89 1c 24             	mov    %ebx,(%esp)
    2fcb:	e8 7f 07 00 00       	call   0x374f
    2fd0:	e8 52 07 00 00       	call   0x3727
    2fd5:	83 c4 08             	add    $0x8,%esp
    2fd8:	56                   	push   %esi
    2fd9:	68 d1 49 00 00       	push   $0x49d1
    2fde:	e8 9c 07 00 00       	call   0x377f
    2fe3:	83 c4 10             	add    $0x10,%esp
    2fe6:	83 f8 ff             	cmp    $0xffffffff,%eax
    2fe9:	75 0d                	jne    0x2ff8
    2feb:	81 c6 00 10 00 00    	add    $0x1000,%esi
    2ff1:	eb ac                	jmp    0x2f9f
    2ff3:	e8 27 07 00 00       	call   0x371f
    2ff8:	83 ec 08             	sub    $0x8,%esp
    2ffb:	68 dc 49 00 00       	push   $0x49dc
    3000:	ff 35 a4 5b 00 00    	push   0x5ba4
    3006:	e8 61 08 00 00       	call   0x386c
    300b:	e8 0f 07 00 00       	call   0x371f
    3010:	83 ec 08             	sub    $0x8,%esp
    3013:	68 f5 49 00 00       	push   $0x49f5
    3018:	ff 35 a4 5b 00 00    	push   0x5ba4
    301e:	e8 49 08 00 00       	call   0x386c
    3023:	83 c4 10             	add    $0x10,%esp
    3026:	8d 65 f8             	lea    -0x8(%ebp),%esp
    3029:	5b                   	pop    %ebx
    302a:	5e                   	pop    %esi
    302b:	5d                   	pop    %ebp
    302c:	c3                   	ret    
    302d:	55                   	push   %ebp
    302e:	89 e5                	mov    %esp,%ebp
    3030:	83 ec 10             	sub    $0x10,%esp
    3033:	68 02 4a 00 00       	push   $0x4a02
    3038:	ff 35 a4 5b 00 00    	push   0x5ba4
    303e:	e8 29 08 00 00       	call   0x386c
    3043:	83 c4 10             	add    $0x10,%esp
    3046:	b8 00 00 00 00       	mov    $0x0,%eax
    304b:	3d 0f 27 00 00       	cmp    $0x270f,%eax
    3050:	77 26                	ja     0x3078
    3052:	80 b8 c0 5b 00 00 00 	cmpb   $0x0,0x5bc0(%eax)
    3059:	75 05                	jne    0x3060
    305b:	83 c0 01             	add    $0x1,%eax
    305e:	eb eb                	jmp    0x304b
    3060:	83 ec 08             	sub    $0x8,%esp
    3063:	68 0c 4a 00 00       	push   $0x4a0c
    3068:	ff 35 a4 5b 00 00    	push   0x5ba4
    306e:	e8 f9 07 00 00       	call   0x386c
    3073:	e8 a7 06 00 00       	call   0x371f
    3078:	83 ec 08             	sub    $0x8,%esp
    307b:	68 1d 4a 00 00       	push   $0x4a1d
    3080:	ff 35 a4 5b 00 00    	push   0x5ba4
    3086:	e8 e1 07 00 00       	call   0x386c
    308b:	83 c4 10             	add    $0x10,%esp
    308e:	c9                   	leave  
    308f:	c3                   	ret    
    3090:	55                   	push   %ebp
    3091:	89 e5                	mov    %esp,%ebp
    3093:	83 ec 14             	sub    $0x14,%esp
    3096:	68 2a 4a 00 00       	push   $0x4a2a
    309b:	e8 cf 06 00 00       	call   0x376f
    30a0:	e8 72 06 00 00       	call   0x3717
    30a5:	83 c4 10             	add    $0x10,%esp
    30a8:	85 c0                	test   %eax,%eax
    30aa:	74 4d                	je     0x30f9
    30ac:	0f 88 ad 00 00 00    	js     0x315f
    30b2:	e8 70 06 00 00       	call   0x3727
    30b7:	83 ec 08             	sub    $0x8,%esp
    30ba:	6a 00                	push   $0x0
    30bc:	68 2a 4a 00 00       	push   $0x4a2a
    30c1:	e8 99 06 00 00       	call   0x375f
    30c6:	83 c4 10             	add    $0x10,%esp
    30c9:	85 c0                	test   %eax,%eax
    30cb:	0f 88 a6 00 00 00    	js     0x3177
    30d1:	83 ec 0c             	sub    $0xc,%esp
    30d4:	50                   	push   %eax
    30d5:	e8 6d 06 00 00       	call   0x3747
    30da:	c7 04 24 2a 4a 00 00 	movl   $0x4a2a,(%esp)
    30e1:	e8 89 06 00 00       	call   0x376f
    30e6:	83 c4 10             	add    $0x10,%esp
    30e9:	c9                   	leave  
    30ea:	c3                   	ret    
    30eb:	c7 04 85 e0 a2 00 00 	movl   $0x5184,0xa2e0(,%eax,4)
    30f2:	84 51 00 00 
    30f6:	83 c0 01             	add    $0x1,%eax
    30f9:	83 f8 1e             	cmp    $0x1e,%eax
    30fc:	7e ed                	jle    0x30eb
    30fe:	c7 05 5c a3 00 00 00 	movl   $0x0,0xa35c
    3105:	00 00 00 
    3108:	83 ec 08             	sub    $0x8,%esp
    310b:	68 34 4a 00 00       	push   $0x4a34
    3110:	ff 35 a4 5b 00 00    	push   0x5ba4
    3116:	e8 51 07 00 00       	call   0x386c
    311b:	83 c4 08             	add    $0x8,%esp
    311e:	68 e0 a2 00 00       	push   $0xa2e0
    3123:	68 01 3c 00 00       	push   $0x3c01
    3128:	e8 2a 06 00 00       	call   0x3757
    312d:	83 c4 08             	add    $0x8,%esp
    3130:	68 41 4a 00 00       	push   $0x4a41
    3135:	ff 35 a4 5b 00 00    	push   0x5ba4
    313b:	e8 2c 07 00 00       	call   0x386c
    3140:	83 c4 08             	add    $0x8,%esp
    3143:	68 00 02 00 00       	push   $0x200
    3148:	68 2a 4a 00 00       	push   $0x4a2a
    314d:	e8 0d 06 00 00       	call   0x375f
    3152:	89 04 24             	mov    %eax,(%esp)
    3155:	e8 ed 05 00 00       	call   0x3747
    315a:	e8 c0 05 00 00       	call   0x371f
    315f:	83 ec 08             	sub    $0x8,%esp
    3162:	68 51 4a 00 00       	push   $0x4a51
    3167:	ff 35 a4 5b 00 00    	push   0x5ba4
    316d:	e8 fa 06 00 00       	call   0x386c
    3172:	e8 a8 05 00 00       	call   0x371f
    3177:	83 ec 08             	sub    $0x8,%esp
    317a:	68 6a 4a 00 00       	push   $0x4a6a
    317f:	ff 35 a4 5b 00 00    	push   0x5ba4
    3185:	e8 e2 06 00 00       	call   0x386c
    318a:	e8 90 05 00 00       	call   0x371f
    318f:	55                   	push   %ebp
    3190:	89 e5                	mov    %esp,%ebp
    3192:	57                   	push   %edi
    3193:	56                   	push   %esi
    3194:	53                   	push   %ebx
    3195:	83 ec 54             	sub    $0x54,%esp
    3198:	68 7f 4a 00 00       	push   $0x4a7f
    319d:	6a 01                	push   $0x1
    319f:	e8 c8 06 00 00       	call   0x386c
    31a4:	83 c4 10             	add    $0x10,%esp
    31a7:	bb 00 00 00 00       	mov    $0x0,%ebx
    31ac:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    31b0:	ba d3 4d 62 10       	mov    $0x10624dd3,%edx
    31b5:	89 d8                	mov    %ebx,%eax
    31b7:	f7 ea                	imul   %edx
    31b9:	c1 fa 06             	sar    $0x6,%edx
    31bc:	89 de                	mov    %ebx,%esi
    31be:	c1 fe 1f             	sar    $0x1f,%esi
    31c1:	29 f2                	sub    %esi,%edx
    31c3:	8d 42 30             	lea    0x30(%edx),%eax
    31c6:	88 45 a9             	mov    %al,-0x57(%ebp)
    31c9:	69 d2 e8 03 00 00    	imul   $0x3e8,%edx,%edx
    31cf:	89 d9                	mov    %ebx,%ecx
    31d1:	29 d1                	sub    %edx,%ecx
    31d3:	bf 1f 85 eb 51       	mov    $0x51eb851f,%edi
    31d8:	89 c8                	mov    %ecx,%eax
    31da:	f7 ef                	imul   %edi
    31dc:	c1 fa 05             	sar    $0x5,%edx
    31df:	c1 f9 1f             	sar    $0x1f,%ecx
    31e2:	29 ca                	sub    %ecx,%edx
    31e4:	83 c2 30             	add    $0x30,%edx
    31e7:	88 55 aa             	mov    %dl,-0x56(%ebp)
    31ea:	89 d8                	mov    %ebx,%eax
    31ec:	f7 ef                	imul   %edi
    31ee:	89 d7                	mov    %edx,%edi
    31f0:	c1 ff 05             	sar    $0x5,%edi
    31f3:	29 f7                	sub    %esi,%edi
    31f5:	6b c7 64             	imul   $0x64,%edi,%eax
    31f8:	89 df                	mov    %ebx,%edi
    31fa:	29 c7                	sub    %eax,%edi
    31fc:	b9 67 66 66 66       	mov    $0x66666667,%ecx
    3201:	89 f8                	mov    %edi,%eax
    3203:	f7 e9                	imul   %ecx
    3205:	c1 fa 02             	sar    $0x2,%edx
    3208:	c1 ff 1f             	sar    $0x1f,%edi
    320b:	29 fa                	sub    %edi,%edx
    320d:	83 c2 30             	add    $0x30,%edx
    3210:	88 55 ab             	mov    %dl,-0x55(%ebp)
    3213:	89 d8                	mov    %ebx,%eax
    3215:	f7 e9                	imul   %ecx
    3217:	c1 fa 02             	sar    $0x2,%edx
    321a:	29 f2                	sub    %esi,%edx
    321c:	8d 04 92             	lea    (%edx,%edx,4),%eax
    321f:	01 c0                	add    %eax,%eax
    3221:	89 da                	mov    %ebx,%edx
    3223:	29 c2                	sub    %eax,%edx
    3225:	83 c2 30             	add    $0x30,%edx
    3228:	88 55 ac             	mov    %dl,-0x54(%ebp)
    322b:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
    322f:	83 ec 04             	sub    $0x4,%esp
    3232:	8d 75 a8             	lea    -0x58(%ebp),%esi
    3235:	56                   	push   %esi
    3236:	68 8c 4a 00 00       	push   $0x4a8c
    323b:	6a 01                	push   $0x1
    323d:	e8 2a 06 00 00       	call   0x386c
    3242:	83 c4 08             	add    $0x8,%esp
    3245:	68 02 02 00 00       	push   $0x202
    324a:	56                   	push   %esi
    324b:	e8 0f 05 00 00       	call   0x375f
    3250:	89 c6                	mov    %eax,%esi
    3252:	83 c4 10             	add    $0x10,%esp
    3255:	85 c0                	test   %eax,%eax
    3257:	79 1b                	jns    0x3274
    3259:	83 ec 04             	sub    $0x4,%esp
    325c:	8d 45 a8             	lea    -0x58(%ebp),%eax
    325f:	50                   	push   %eax
    3260:	68 98 4a 00 00       	push   $0x4a98
    3265:	6a 01                	push   $0x1
    3267:	e8 00 06 00 00       	call   0x386c
    326c:	83 c4 10             	add    $0x10,%esp
    326f:	e9 e6 00 00 00       	jmp    0x335a
    3274:	bf 00 00 00 00       	mov    $0x0,%edi
    3279:	83 ec 04             	sub    $0x4,%esp
    327c:	68 00 02 00 00       	push   $0x200
    3281:	68 e0 82 00 00       	push   $0x82e0
    3286:	56                   	push   %esi
    3287:	e8 b3 04 00 00       	call   0x373f
    328c:	83 c4 10             	add    $0x10,%esp
    328f:	3d ff 01 00 00       	cmp    $0x1ff,%eax
    3294:	7e 04                	jle    0x329a
    3296:	01 c7                	add    %eax,%edi
    3298:	eb df                	jmp    0x3279
    329a:	83 ec 04             	sub    $0x4,%esp
    329d:	57                   	push   %edi
    329e:	68 a8 4a 00 00       	push   $0x4aa8
    32a3:	6a 01                	push   $0x1
    32a5:	e8 c2 05 00 00       	call   0x386c
    32aa:	89 34 24             	mov    %esi,(%esp)
    32ad:	e8 95 04 00 00       	call   0x3747
    32b2:	83 c4 10             	add    $0x10,%esp
    32b5:	85 ff                	test   %edi,%edi
    32b7:	0f 84 9d 00 00 00    	je     0x335a
    32bd:	83 c3 01             	add    $0x1,%ebx
    32c0:	e9 e7 fe ff ff       	jmp    0x31ac
    32c5:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    32c9:	ba d3 4d 62 10       	mov    $0x10624dd3,%edx
    32ce:	89 d8                	mov    %ebx,%eax
    32d0:	f7 ea                	imul   %edx
    32d2:	c1 fa 06             	sar    $0x6,%edx
    32d5:	89 de                	mov    %ebx,%esi
    32d7:	c1 fe 1f             	sar    $0x1f,%esi
    32da:	29 f2                	sub    %esi,%edx
    32dc:	8d 42 30             	lea    0x30(%edx),%eax
    32df:	88 45 a9             	mov    %al,-0x57(%ebp)
    32e2:	69 d2 e8 03 00 00    	imul   $0x3e8,%edx,%edx
    32e8:	89 d9                	mov    %ebx,%ecx
    32ea:	29 d1                	sub    %edx,%ecx
    32ec:	bf 1f 85 eb 51       	mov    $0x51eb851f,%edi
    32f1:	89 c8                	mov    %ecx,%eax
    32f3:	f7 ef                	imul   %edi
    32f5:	c1 fa 05             	sar    $0x5,%edx
    32f8:	c1 f9 1f             	sar    $0x1f,%ecx
    32fb:	29 ca                	sub    %ecx,%edx
    32fd:	83 c2 30             	add    $0x30,%edx
    3300:	88 55 aa             	mov    %dl,-0x56(%ebp)
    3303:	89 d8                	mov    %ebx,%eax
    3305:	f7 ef                	imul   %edi
    3307:	89 d7                	mov    %edx,%edi
    3309:	c1 ff 05             	sar    $0x5,%edi
    330c:	29 f7                	sub    %esi,%edi
    330e:	6b c7 64             	imul   $0x64,%edi,%eax
    3311:	89 df                	mov    %ebx,%edi
    3313:	29 c7                	sub    %eax,%edi
    3315:	b9 67 66 66 66       	mov    $0x66666667,%ecx
    331a:	89 f8                	mov    %edi,%eax
    331c:	f7 e9                	imul   %ecx
    331e:	c1 fa 02             	sar    $0x2,%edx
    3321:	c1 ff 1f             	sar    $0x1f,%edi
    3324:	29 fa                	sub    %edi,%edx
    3326:	83 c2 30             	add    $0x30,%edx
    3329:	88 55 ab             	mov    %dl,-0x55(%ebp)
    332c:	89 d8                	mov    %ebx,%eax
    332e:	f7 e9                	imul   %ecx
    3330:	c1 fa 02             	sar    $0x2,%edx
    3333:	29 f2                	sub    %esi,%edx
    3335:	8d 04 92             	lea    (%edx,%edx,4),%eax
    3338:	01 c0                	add    %eax,%eax
    333a:	89 da                	mov    %ebx,%edx
    333c:	29 c2                	sub    %eax,%edx
    333e:	83 c2 30             	add    $0x30,%edx
    3341:	88 55 ac             	mov    %dl,-0x54(%ebp)
    3344:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
    3348:	83 ec 0c             	sub    $0xc,%esp
    334b:	8d 45 a8             	lea    -0x58(%ebp),%eax
    334e:	50                   	push   %eax
    334f:	e8 1b 04 00 00       	call   0x376f
    3354:	83 eb 01             	sub    $0x1,%ebx
    3357:	83 c4 10             	add    $0x10,%esp
    335a:	85 db                	test   %ebx,%ebx
    335c:	0f 89 63 ff ff ff    	jns    0x32c5
    3362:	83 ec 08             	sub    $0x8,%esp
    3365:	68 b8 4a 00 00       	push   $0x4ab8
    336a:	6a 01                	push   $0x1
    336c:	e8 fb 04 00 00       	call   0x386c
    3371:	83 c4 10             	add    $0x10,%esp
    3374:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3377:	5b                   	pop    %ebx
    3378:	5e                   	pop    %esi
    3379:	5f                   	pop    %edi
    337a:	5d                   	pop    %ebp
    337b:	c3                   	ret    
    337c:	55                   	push   %ebp
    337d:	89 e5                	mov    %esp,%ebp
    337f:	83 ec 10             	sub    $0x10,%esp
    3382:	68 ce 4a 00 00       	push   $0x4ace
    3387:	6a 01                	push   $0x1
    3389:	e8 de 04 00 00       	call   0x386c
    338e:	e8 84 03 00 00       	call   0x3717
    3393:	83 c4 10             	add    $0x10,%esp
    3396:	85 c0                	test   %eax,%eax
    3398:	74 1b                	je     0x33b5
    339a:	78 3e                	js     0x33da
    339c:	e8 86 03 00 00       	call   0x3727
    33a1:	83 ec 08             	sub    $0x8,%esp
    33a4:	68 d8 4a 00 00       	push   $0x4ad8
    33a9:	6a 01                	push   $0x1
    33ab:	e8 bc 04 00 00       	call   0x386c
    33b0:	83 c4 10             	add    $0x10,%esp
    33b3:	c9                   	leave  
    33b4:	c3                   	ret    
    33b5:	b8 09 00 00 00       	mov    $0x9,%eax
    33ba:	ba 70 00 00 00       	mov    $0x70,%edx
    33bf:	ee                   	out    %al,(%dx)
    33c0:	ba 71 00 00 00       	mov    $0x71,%edx
    33c5:	ec                   	in     (%dx),%al
    33c6:	83 ec 08             	sub    $0x8,%esp
    33c9:	68 64 52 00 00       	push   $0x5264
    33ce:	6a 01                	push   $0x1
    33d0:	e8 97 04 00 00       	call   0x386c
    33d5:	e8 45 03 00 00       	call   0x371f
    33da:	83 ec 08             	sub    $0x8,%esp
    33dd:	68 5d 4a 00 00       	push   $0x4a5d
    33e2:	6a 01                	push   $0x1
    33e4:	e8 83 04 00 00       	call   0x386c
    33e9:	e8 31 03 00 00       	call   0x371f
    33ee:	55                   	push   %ebp
    33ef:	89 e5                	mov    %esp,%ebp
    33f1:	53                   	push   %ebx
    33f2:	83 ec 0c             	sub    $0xc,%esp
    33f5:	6a 00                	push   $0x0
    33f7:	68 e7 4a 00 00       	push   $0x4ae7
    33fc:	e8 5e 03 00 00       	call   0x375f
    3401:	83 c4 10             	add    $0x10,%esp
    3404:	85 c0                	test   %eax,%eax
    3406:	78 3a                	js     0x3442
    3408:	89 c3                	mov    %eax,%ebx
    340a:	83 ec 0c             	sub    $0xc,%esp
    340d:	6a 00                	push   $0x0
    340f:	e8 93 03 00 00       	call   0x37a7
    3414:	83 e8 01             	sub    $0x1,%eax
    3417:	83 c4 0c             	add    $0xc,%esp
    341a:	6a ff                	push   $0xffffffff
    341c:	50                   	push   %eax
    341d:	53                   	push   %ebx
    341e:	e8 14 03 00 00       	call   0x3737
    3423:	89 1c 24             	mov    %ebx,(%esp)
    3426:	e8 1c 03 00 00       	call   0x3747
    342b:	83 c4 08             	add    $0x8,%esp
    342e:	68 f9 4a 00 00       	push   $0x4af9
    3433:	6a 01                	push   $0x1
    3435:	e8 32 04 00 00       	call   0x386c
    343a:	83 c4 10             	add    $0x10,%esp
    343d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    3440:	c9                   	leave  
    3441:	c3                   	ret    
    3442:	83 ec 08             	sub    $0x8,%esp
    3445:	68 ec 4a 00 00       	push   $0x4aec
    344a:	6a 02                	push   $0x2
    344c:	e8 1b 04 00 00       	call   0x386c
    3451:	e8 c9 02 00 00       	call   0x371f
    3456:	69 05 a0 5b 00 00 0d 	imul   $0x19660d,0x5ba0,%eax
    345d:	66 19 00 
    3460:	05 5f f3 6e 3c       	add    $0x3c6ef35f,%eax
    3465:	a3 a0 5b 00 00       	mov    %eax,0x5ba0
    346a:	c3                   	ret    
    346b:	8d 4c 24 04          	lea    0x4(%esp),%ecx
    346f:	83 e4 f0             	and    $0xfffffff0,%esp
    3472:	ff 71 fc             	push   -0x4(%ecx)
    3475:	55                   	push   %ebp
    3476:	89 e5                	mov    %esp,%ebp
    3478:	51                   	push   %ecx
    3479:	83 ec 0c             	sub    $0xc,%esp
    347c:	68 0a 4b 00 00       	push   $0x4b0a
    3481:	6a 01                	push   $0x1
    3483:	e8 e4 03 00 00       	call   0x386c
    3488:	83 c4 08             	add    $0x8,%esp
    348b:	6a 00                	push   $0x0
    348d:	68 1e 4b 00 00       	push   $0x4b1e
    3492:	e8 c8 02 00 00       	call   0x375f
    3497:	83 c4 10             	add    $0x10,%esp
    349a:	85 c0                	test   %eax,%eax
    349c:	78 14                	js     0x34b2
    349e:	83 ec 08             	sub    $0x8,%esp
    34a1:	68 88 52 00 00       	push   $0x5288
    34a6:	6a 01                	push   $0x1
    34a8:	e8 bf 03 00 00       	call   0x386c
    34ad:	e8 6d 02 00 00       	call   0x371f
    34b2:	83 ec 08             	sub    $0x8,%esp
    34b5:	68 00 02 00 00       	push   $0x200
    34ba:	68 1e 4b 00 00       	push   $0x4b1e
    34bf:	e8 9b 02 00 00       	call   0x375f
    34c4:	89 04 24             	mov    %eax,(%esp)
    34c7:	e8 7b 02 00 00       	call   0x3747
    34cc:	e8 1d ff ff ff       	call   0x33ee
    34d1:	e8 3c db ff ff       	call   0x1012
    34d6:	e8 d9 e3 ff ff       	call   0x18b4
    34db:	e8 e6 e0 ff ff       	call   0x15c6
    34e0:	e8 47 d9 ff ff       	call   0xe2c
    34e5:	e8 a5 d7 ff ff       	call   0xc8f
    34ea:	e8 a1 fb ff ff       	call   0x3090
    34ef:	e8 36 ed ff ff       	call   0x222a
    34f4:	e8 97 fb ff ff       	call   0x3090
    34f9:	e8 2f fb ff ff       	call   0x302d
    34fe:	e8 62 f6 ff ff       	call   0x2b65
    3503:	e8 77 fa ff ff       	call   0x2f7f
    3508:	e8 9f cd ff ff       	call   0x2ac
    350d:	e8 2d ce ff ff       	call   0x33f
    3512:	e8 f0 cf ff ff       	call   0x507
    3517:	e8 9b d1 ff ff       	call   0x6b7
    351c:	e8 a2 cc ff ff       	call   0x1c3
    3521:	e8 b7 cb ff ff       	call   0xdd
    3526:	e8 d5 ca ff ff       	call   0x0
    352b:	e8 a4 d6 ff ff       	call   0xbd4
    3530:	e8 54 d3 ff ff       	call   0x889
    3535:	e8 ef d4 ff ff       	call   0xa29
    353a:	e8 25 d6 ff ff       	call   0xb64
    353f:	e8 ab f0 ff ff       	call   0x25ef
    3544:	e8 69 ef ff ff       	call   0x24b2
    3549:	e8 ae ed ff ff       	call   0x22fc
    354e:	e8 a9 e5 ff ff       	call   0x1afc
    3553:	e8 48 de ff ff       	call   0x13a0
    3558:	e8 aa dc ff ff       	call   0x1207
    355d:	e8 12 f2 ff ff       	call   0x2774
    3562:	e8 27 f4 ff ff       	call   0x298e
    3567:	e8 4a f5 ff ff       	call   0x2ab6
    356c:	e8 37 e4 ff ff       	call   0x19a8
    3571:	e8 06 fe ff ff       	call   0x337c
    3576:	e8 c5 d2 ff ff       	call   0x840
    357b:	e8 9f 01 00 00       	call   0x371f
    3580:	55                   	push   %ebp
    3581:	89 e5                	mov    %esp,%ebp
    3583:	56                   	push   %esi
    3584:	53                   	push   %ebx
    3585:	8b 75 08             	mov    0x8(%ebp),%esi
    3588:	8b 55 0c             	mov    0xc(%ebp),%edx
    358b:	89 f0                	mov    %esi,%eax
    358d:	89 d1                	mov    %edx,%ecx
    358f:	83 c2 01             	add    $0x1,%edx
    3592:	89 c3                	mov    %eax,%ebx
    3594:	83 c0 01             	add    $0x1,%eax
    3597:	0f b6 09             	movzbl (%ecx),%ecx
    359a:	88 0b                	mov    %cl,(%ebx)
    359c:	84 c9                	test   %cl,%cl
    359e:	75 ed                	jne    0x358d
    35a0:	89 f0                	mov    %esi,%eax
    35a2:	5b                   	pop    %ebx
    35a3:	5e                   	pop    %esi
    35a4:	5d                   	pop    %ebp
    35a5:	c3                   	ret    
    35a6:	55                   	push   %ebp
    35a7:	89 e5                	mov    %esp,%ebp
    35a9:	8b 4d 08             	mov    0x8(%ebp),%ecx
    35ac:	8b 55 0c             	mov    0xc(%ebp),%edx
    35af:	eb 06                	jmp    0x35b7
    35b1:	83 c1 01             	add    $0x1,%ecx
    35b4:	83 c2 01             	add    $0x1,%edx
    35b7:	0f b6 01             	movzbl (%ecx),%eax
    35ba:	84 c0                	test   %al,%al
    35bc:	74 04                	je     0x35c2
    35be:	3a 02                	cmp    (%edx),%al
    35c0:	74 ef                	je     0x35b1
    35c2:	0f b6 c0             	movzbl %al,%eax
    35c5:	0f b6 12             	movzbl (%edx),%edx
    35c8:	29 d0                	sub    %edx,%eax
    35ca:	5d                   	pop    %ebp
    35cb:	c3                   	ret    
    35cc:	55                   	push   %ebp
    35cd:	89 e5                	mov    %esp,%ebp
    35cf:	8b 4d 08             	mov    0x8(%ebp),%ecx
    35d2:	b8 00 00 00 00       	mov    $0x0,%eax
    35d7:	eb 03                	jmp    0x35dc
    35d9:	83 c0 01             	add    $0x1,%eax
    35dc:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
    35e0:	75 f7                	jne    0x35d9
    35e2:	5d                   	pop    %ebp
    35e3:	c3                   	ret    
    35e4:	55                   	push   %ebp
    35e5:	89 e5                	mov    %esp,%ebp
    35e7:	57                   	push   %edi
    35e8:	8b 55 08             	mov    0x8(%ebp),%edx
    35eb:	89 d7                	mov    %edx,%edi
    35ed:	8b 4d 10             	mov    0x10(%ebp),%ecx
    35f0:	8b 45 0c             	mov    0xc(%ebp),%eax
    35f3:	fc                   	cld    
    35f4:	f3 aa                	rep stos %al,%es:(%edi)
    35f6:	89 d0                	mov    %edx,%eax
    35f8:	8b 7d fc             	mov    -0x4(%ebp),%edi
    35fb:	c9                   	leave  
    35fc:	c3                   	ret    
    35fd:	55                   	push   %ebp
    35fe:	89 e5                	mov    %esp,%ebp
    3600:	8b 45 08             	mov    0x8(%ebp),%eax
    3603:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
    3607:	eb 03                	jmp    0x360c
    3609:	83 c0 01             	add    $0x1,%eax
    360c:	0f b6 10             	movzbl (%eax),%edx
    360f:	84 d2                	test   %dl,%dl
    3611:	74 06                	je     0x3619
    3613:	38 ca                	cmp    %cl,%dl
    3615:	75 f2                	jne    0x3609
    3617:	eb 05                	jmp    0x361e
    3619:	b8 00 00 00 00       	mov    $0x0,%eax
    361e:	5d                   	pop    %ebp
    361f:	c3                   	ret    
    3620:	55                   	push   %ebp
    3621:	89 e5                	mov    %esp,%ebp
    3623:	57                   	push   %edi
    3624:	56                   	push   %esi
    3625:	53                   	push   %ebx
    3626:	83 ec 1c             	sub    $0x1c,%esp
    3629:	8b 7d 08             	mov    0x8(%ebp),%edi
    362c:	bb 00 00 00 00       	mov    $0x0,%ebx
    3631:	89 de                	mov    %ebx,%esi
    3633:	83 c3 01             	add    $0x1,%ebx
    3636:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    3639:	7d 2e                	jge    0x3669
    363b:	83 ec 04             	sub    $0x4,%esp
    363e:	6a 01                	push   $0x1
    3640:	8d 45 e7             	lea    -0x19(%ebp),%eax
    3643:	50                   	push   %eax
    3644:	6a 00                	push   $0x0
    3646:	e8 ec 00 00 00       	call   0x3737
    364b:	83 c4 10             	add    $0x10,%esp
    364e:	85 c0                	test   %eax,%eax
    3650:	7e 17                	jle    0x3669
    3652:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    3656:	88 04 37             	mov    %al,(%edi,%esi,1)
    3659:	3c 0a                	cmp    $0xa,%al
    365b:	0f 94 c2             	sete   %dl
    365e:	3c 0d                	cmp    $0xd,%al
    3660:	0f 94 c0             	sete   %al
    3663:	08 c2                	or     %al,%dl
    3665:	74 ca                	je     0x3631
    3667:	89 de                	mov    %ebx,%esi
    3669:	c6 04 37 00          	movb   $0x0,(%edi,%esi,1)
    366d:	89 f8                	mov    %edi,%eax
    366f:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3672:	5b                   	pop    %ebx
    3673:	5e                   	pop    %esi
    3674:	5f                   	pop    %edi
    3675:	5d                   	pop    %ebp
    3676:	c3                   	ret    
    3677:	55                   	push   %ebp
    3678:	89 e5                	mov    %esp,%ebp
    367a:	56                   	push   %esi
    367b:	53                   	push   %ebx
    367c:	83 ec 08             	sub    $0x8,%esp
    367f:	6a 00                	push   $0x0
    3681:	ff 75 08             	push   0x8(%ebp)
    3684:	e8 d6 00 00 00       	call   0x375f
    3689:	83 c4 10             	add    $0x10,%esp
    368c:	85 c0                	test   %eax,%eax
    368e:	78 24                	js     0x36b4
    3690:	89 c3                	mov    %eax,%ebx
    3692:	83 ec 08             	sub    $0x8,%esp
    3695:	ff 75 0c             	push   0xc(%ebp)
    3698:	50                   	push   %eax
    3699:	e8 d9 00 00 00       	call   0x3777
    369e:	89 c6                	mov    %eax,%esi
    36a0:	89 1c 24             	mov    %ebx,(%esp)
    36a3:	e8 9f 00 00 00       	call   0x3747
    36a8:	83 c4 10             	add    $0x10,%esp
    36ab:	89 f0                	mov    %esi,%eax
    36ad:	8d 65 f8             	lea    -0x8(%ebp),%esp
    36b0:	5b                   	pop    %ebx
    36b1:	5e                   	pop    %esi
    36b2:	5d                   	pop    %ebp
    36b3:	c3                   	ret    
    36b4:	be ff ff ff ff       	mov    $0xffffffff,%esi
    36b9:	eb f0                	jmp    0x36ab
    36bb:	55                   	push   %ebp
    36bc:	89 e5                	mov    %esp,%ebp
    36be:	53                   	push   %ebx
    36bf:	8b 4d 08             	mov    0x8(%ebp),%ecx
    36c2:	ba 00 00 00 00       	mov    $0x0,%edx
    36c7:	eb 10                	jmp    0x36d9
    36c9:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
    36cc:	8d 14 1b             	lea    (%ebx,%ebx,1),%edx
    36cf:	83 c1 01             	add    $0x1,%ecx
    36d2:	0f be c0             	movsbl %al,%eax
    36d5:	8d 54 10 d0          	lea    -0x30(%eax,%edx,1),%edx
    36d9:	0f b6 01             	movzbl (%ecx),%eax
    36dc:	8d 58 d0             	lea    -0x30(%eax),%ebx
    36df:	80 fb 09             	cmp    $0x9,%bl
    36e2:	76 e5                	jbe    0x36c9
    36e4:	89 d0                	mov    %edx,%eax
    36e6:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    36e9:	c9                   	leave  
    36ea:	c3                   	ret    
    36eb:	55                   	push   %ebp
    36ec:	89 e5                	mov    %esp,%ebp
    36ee:	56                   	push   %esi
    36ef:	53                   	push   %ebx
    36f0:	8b 75 08             	mov    0x8(%ebp),%esi
    36f3:	8b 4d 0c             	mov    0xc(%ebp),%ecx
    36f6:	8b 45 10             	mov    0x10(%ebp),%eax
    36f9:	89 f2                	mov    %esi,%edx
    36fb:	eb 0d                	jmp    0x370a
    36fd:	0f b6 01             	movzbl (%ecx),%eax
    3700:	88 02                	mov    %al,(%edx)
    3702:	8d 49 01             	lea    0x1(%ecx),%ecx
    3705:	8d 52 01             	lea    0x1(%edx),%edx
    3708:	89 d8                	mov    %ebx,%eax
    370a:	8d 58 ff             	lea    -0x1(%eax),%ebx
    370d:	85 c0                	test   %eax,%eax
    370f:	7f ec                	jg     0x36fd
    3711:	89 f0                	mov    %esi,%eax
    3713:	5b                   	pop    %ebx
    3714:	5e                   	pop    %esi
    3715:	5d                   	pop    %ebp
    3716:	c3                   	ret    
    3717:	b8 01 00 00 00       	mov    $0x1,%eax
    371c:	cd 40                	int    $0x40
    371e:	c3                   	ret    
    371f:	b8 02 00 00 00       	mov    $0x2,%eax
    3724:	cd 40                	int    $0x40
    3726:	c3                   	ret    
    3727:	b8 03 00 00 00       	mov    $0x3,%eax
    372c:	cd 40                	int    $0x40
    372e:	c3                   	ret    
    372f:	b8 04 00 00 00       	mov    $0x4,%eax
    3734:	cd 40                	int    $0x40
    3736:	c3                   	ret    
    3737:	b8 05 00 00 00       	mov    $0x5,%eax
    373c:	cd 40                	int    $0x40
    373e:	c3                   	ret    
    373f:	b8 10 00 00 00       	mov    $0x10,%eax
    3744:	cd 40                	int    $0x40
    3746:	c3                   	ret    
    3747:	b8 15 00 00 00       	mov    $0x15,%eax
    374c:	cd 40                	int    $0x40
    374e:	c3                   	ret    
    374f:	b8 06 00 00 00       	mov    $0x6,%eax
    3754:	cd 40                	int    $0x40
    3756:	c3                   	ret    
    3757:	b8 07 00 00 00       	mov    $0x7,%eax
    375c:	cd 40                	int    $0x40
    375e:	c3                   	ret    
    375f:	b8 0f 00 00 00       	mov    $0xf,%eax
    3764:	cd 40                	int    $0x40
    3766:	c3                   	ret    
    3767:	b8 11 00 00 00       	mov    $0x11,%eax
    376c:	cd 40                	int    $0x40
    376e:	c3                   	ret    
    376f:	b8 12 00 00 00       	mov    $0x12,%eax
    3774:	cd 40                	int    $0x40
    3776:	c3                   	ret    
    3777:	b8 08 00 00 00       	mov    $0x8,%eax
    377c:	cd 40                	int    $0x40
    377e:	c3                   	ret    
    377f:	b8 13 00 00 00       	mov    $0x13,%eax
    3784:	cd 40                	int    $0x40
    3786:	c3                   	ret    
    3787:	b8 14 00 00 00       	mov    $0x14,%eax
    378c:	cd 40                	int    $0x40
    378e:	c3                   	ret    
    378f:	b8 09 00 00 00       	mov    $0x9,%eax
    3794:	cd 40                	int    $0x40
    3796:	c3                   	ret    
    3797:	b8 0a 00 00 00       	mov    $0xa,%eax
    379c:	cd 40                	int    $0x40
    379e:	c3                   	ret    
    379f:	b8 0b 00 00 00       	mov    $0xb,%eax
    37a4:	cd 40                	int    $0x40
    37a6:	c3                   	ret    
    37a7:	b8 0c 00 00 00       	mov    $0xc,%eax
    37ac:	cd 40                	int    $0x40
    37ae:	c3                   	ret    
    37af:	b8 0d 00 00 00       	mov    $0xd,%eax
    37b4:	cd 40                	int    $0x40
    37b6:	c3                   	ret    
    37b7:	b8 0e 00 00 00       	mov    $0xe,%eax
    37bc:	cd 40                	int    $0x40
    37be:	c3                   	ret    
    37bf:	b8 16 00 00 00       	mov    $0x16,%eax
    37c4:	cd 40                	int    $0x40
    37c6:	c3                   	ret    
    37c7:	55                   	push   %ebp
    37c8:	89 e5                	mov    %esp,%ebp
    37ca:	83 ec 1c             	sub    $0x1c,%esp
    37cd:	88 55 f4             	mov    %dl,-0xc(%ebp)
    37d0:	6a 01                	push   $0x1
    37d2:	8d 55 f4             	lea    -0xc(%ebp),%edx
    37d5:	52                   	push   %edx
    37d6:	50                   	push   %eax
    37d7:	e8 63 ff ff ff       	call   0x373f
    37dc:	83 c4 10             	add    $0x10,%esp
    37df:	c9                   	leave  
    37e0:	c3                   	ret    
    37e1:	55                   	push   %ebp
    37e2:	89 e5                	mov    %esp,%ebp
    37e4:	57                   	push   %edi
    37e5:	56                   	push   %esi
    37e6:	53                   	push   %ebx
    37e7:	83 ec 2c             	sub    $0x2c,%esp
    37ea:	89 45 d0             	mov    %eax,-0x30(%ebp)
    37ed:	89 d0                	mov    %edx,%eax
    37ef:	89 ce                	mov    %ecx,%esi
    37f1:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
    37f5:	0f 95 c1             	setne  %cl
    37f8:	c1 ea 1f             	shr    $0x1f,%edx
    37fb:	84 d1                	test   %dl,%cl
    37fd:	74 44                	je     0x3843
    37ff:	f7 d8                	neg    %eax
    3801:	89 c1                	mov    %eax,%ecx
    3803:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
    380a:	bb 00 00 00 00       	mov    $0x0,%ebx
    380f:	89 c8                	mov    %ecx,%eax
    3811:	ba 00 00 00 00       	mov    $0x0,%edx
    3816:	f7 f6                	div    %esi
    3818:	89 df                	mov    %ebx,%edi
    381a:	83 c3 01             	add    $0x1,%ebx
    381d:	0f b6 92 14 53 00 00 	movzbl 0x5314(%edx),%edx
    3824:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
    3828:	89 ca                	mov    %ecx,%edx
    382a:	89 c1                	mov    %eax,%ecx
    382c:	39 d6                	cmp    %edx,%esi
    382e:	76 df                	jbe    0x380f
    3830:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
    3834:	74 31                	je     0x3867
    3836:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    383b:	8d 5f 02             	lea    0x2(%edi),%ebx
    383e:	8b 75 d0             	mov    -0x30(%ebp),%esi
    3841:	eb 17                	jmp    0x385a
    3843:	89 c1                	mov    %eax,%ecx
    3845:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
    384c:	eb bc                	jmp    0x380a
    384e:	0f be 54 1d d8       	movsbl -0x28(%ebp,%ebx,1),%edx
    3853:	89 f0                	mov    %esi,%eax
    3855:	e8 6d ff ff ff       	call   0x37c7
    385a:	83 eb 01             	sub    $0x1,%ebx
    385d:	79 ef                	jns    0x384e
    385f:	83 c4 2c             	add    $0x2c,%esp
    3862:	5b                   	pop    %ebx
    3863:	5e                   	pop    %esi
    3864:	5f                   	pop    %edi
    3865:	5d                   	pop    %ebp
    3866:	c3                   	ret    
    3867:	8b 75 d0             	mov    -0x30(%ebp),%esi
    386a:	eb ee                	jmp    0x385a
    386c:	55                   	push   %ebp
    386d:	89 e5                	mov    %esp,%ebp
    386f:	57                   	push   %edi
    3870:	56                   	push   %esi
    3871:	53                   	push   %ebx
    3872:	83 ec 1c             	sub    $0x1c,%esp
    3875:	8d 45 10             	lea    0x10(%ebp),%eax
    3878:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    387b:	be 00 00 00 00       	mov    $0x0,%esi
    3880:	bb 00 00 00 00       	mov    $0x0,%ebx
    3885:	eb 14                	jmp    0x389b
    3887:	89 fa                	mov    %edi,%edx
    3889:	8b 45 08             	mov    0x8(%ebp),%eax
    388c:	e8 36 ff ff ff       	call   0x37c7
    3891:	eb 05                	jmp    0x3898
    3893:	83 fe 25             	cmp    $0x25,%esi
    3896:	74 25                	je     0x38bd
    3898:	83 c3 01             	add    $0x1,%ebx
    389b:	8b 45 0c             	mov    0xc(%ebp),%eax
    389e:	0f b6 04 18          	movzbl (%eax,%ebx,1),%eax
    38a2:	84 c0                	test   %al,%al
    38a4:	0f 84 20 01 00 00    	je     0x39ca
    38aa:	0f be f8             	movsbl %al,%edi
    38ad:	0f b6 c0             	movzbl %al,%eax
    38b0:	85 f6                	test   %esi,%esi
    38b2:	75 df                	jne    0x3893
    38b4:	83 f8 25             	cmp    $0x25,%eax
    38b7:	75 ce                	jne    0x3887
    38b9:	89 c6                	mov    %eax,%esi
    38bb:	eb db                	jmp    0x3898
    38bd:	83 f8 25             	cmp    $0x25,%eax
    38c0:	0f 84 cf 00 00 00    	je     0x3995
    38c6:	0f 8c dd 00 00 00    	jl     0x39a9
    38cc:	83 f8 78             	cmp    $0x78,%eax
    38cf:	0f 8f d4 00 00 00    	jg     0x39a9
    38d5:	83 f8 63             	cmp    $0x63,%eax
    38d8:	0f 8c cb 00 00 00    	jl     0x39a9
    38de:	83 e8 63             	sub    $0x63,%eax
    38e1:	83 f8 15             	cmp    $0x15,%eax
    38e4:	0f 87 bf 00 00 00    	ja     0x39a9
    38ea:	ff 24 85 bc 52 00 00 	jmp    *0x52bc(,%eax,4)
    38f1:	8b 7d e4             	mov    -0x1c(%ebp),%edi
    38f4:	8b 17                	mov    (%edi),%edx
    38f6:	83 ec 0c             	sub    $0xc,%esp
    38f9:	6a 01                	push   $0x1
    38fb:	b9 0a 00 00 00       	mov    $0xa,%ecx
    3900:	8b 45 08             	mov    0x8(%ebp),%eax
    3903:	e8 d9 fe ff ff       	call   0x37e1
    3908:	83 c7 04             	add    $0x4,%edi
    390b:	89 7d e4             	mov    %edi,-0x1c(%ebp)
    390e:	83 c4 10             	add    $0x10,%esp
    3911:	be 00 00 00 00       	mov    $0x0,%esi
    3916:	eb 80                	jmp    0x3898
    3918:	8b 7d e4             	mov    -0x1c(%ebp),%edi
    391b:	8b 17                	mov    (%edi),%edx
    391d:	83 ec 0c             	sub    $0xc,%esp
    3920:	6a 00                	push   $0x0
    3922:	b9 10 00 00 00       	mov    $0x10,%ecx
    3927:	8b 45 08             	mov    0x8(%ebp),%eax
    392a:	e8 b2 fe ff ff       	call   0x37e1
    392f:	83 c7 04             	add    $0x4,%edi
    3932:	89 7d e4             	mov    %edi,-0x1c(%ebp)
    3935:	83 c4 10             	add    $0x10,%esp
    3938:	be 00 00 00 00       	mov    $0x0,%esi
    393d:	e9 56 ff ff ff       	jmp    0x3898
    3942:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    3945:	8b 30                	mov    (%eax),%esi
    3947:	83 c0 04             	add    $0x4,%eax
    394a:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    394d:	85 f6                	test   %esi,%esi
    394f:	75 15                	jne    0x3966
    3951:	be b2 52 00 00       	mov    $0x52b2,%esi
    3956:	eb 0e                	jmp    0x3966
    3958:	0f be d2             	movsbl %dl,%edx
    395b:	8b 45 08             	mov    0x8(%ebp),%eax
    395e:	e8 64 fe ff ff       	call   0x37c7
    3963:	83 c6 01             	add    $0x1,%esi
    3966:	0f b6 16             	movzbl (%esi),%edx
    3969:	84 d2                	test   %dl,%dl
    396b:	75 eb                	jne    0x3958
    396d:	be 00 00 00 00       	mov    $0x0,%esi
    3972:	e9 21 ff ff ff       	jmp    0x3898
    3977:	8b 7d e4             	mov    -0x1c(%ebp),%edi
    397a:	0f be 17             	movsbl (%edi),%edx
    397d:	8b 45 08             	mov    0x8(%ebp),%eax
    3980:	e8 42 fe ff ff       	call   0x37c7
    3985:	83 c7 04             	add    $0x4,%edi
    3988:	89 7d e4             	mov    %edi,-0x1c(%ebp)
    398b:	be 00 00 00 00       	mov    $0x0,%esi
    3990:	e9 03 ff ff ff       	jmp    0x3898
    3995:	89 fa                	mov    %edi,%edx
    3997:	8b 45 08             	mov    0x8(%ebp),%eax
    399a:	e8 28 fe ff ff       	call   0x37c7
    399f:	be 00 00 00 00       	mov    $0x0,%esi
    39a4:	e9 ef fe ff ff       	jmp    0x3898
    39a9:	ba 25 00 00 00       	mov    $0x25,%edx
    39ae:	8b 45 08             	mov    0x8(%ebp),%eax
    39b1:	e8 11 fe ff ff       	call   0x37c7
    39b6:	89 fa                	mov    %edi,%edx
    39b8:	8b 45 08             	mov    0x8(%ebp),%eax
    39bb:	e8 07 fe ff ff       	call   0x37c7
    39c0:	be 00 00 00 00       	mov    $0x0,%esi
    39c5:	e9 ce fe ff ff       	jmp    0x3898
    39ca:	8d 65 f4             	lea    -0xc(%ebp),%esp
    39cd:	5b                   	pop    %ebx
    39ce:	5e                   	pop    %esi
    39cf:	5f                   	pop    %edi
    39d0:	5d                   	pop    %ebp
    39d1:	c3                   	ret    
    39d2:	55                   	push   %ebp
    39d3:	89 e5                	mov    %esp,%ebp
    39d5:	57                   	push   %edi
    39d6:	56                   	push   %esi
    39d7:	53                   	push   %ebx
    39d8:	8b 5d 08             	mov    0x8(%ebp),%ebx
    39db:	8d 4b f8             	lea    -0x8(%ebx),%ecx
    39de:	a1 60 a3 00 00       	mov    0xa360,%eax
    39e3:	eb 02                	jmp    0x39e7
    39e5:	89 d0                	mov    %edx,%eax
    39e7:	39 c8                	cmp    %ecx,%eax
    39e9:	73 04                	jae    0x39ef
    39eb:	39 08                	cmp    %ecx,(%eax)
    39ed:	77 12                	ja     0x3a01
    39ef:	8b 10                	mov    (%eax),%edx
    39f1:	39 c2                	cmp    %eax,%edx
    39f3:	77 f0                	ja     0x39e5
    39f5:	39 c8                	cmp    %ecx,%eax
    39f7:	72 08                	jb     0x3a01
    39f9:	39 ca                	cmp    %ecx,%edx
    39fb:	77 04                	ja     0x3a01
    39fd:	89 d0                	mov    %edx,%eax
    39ff:	eb e6                	jmp    0x39e7
    3a01:	8b 73 fc             	mov    -0x4(%ebx),%esi
    3a04:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    3a07:	8b 10                	mov    (%eax),%edx
    3a09:	39 d7                	cmp    %edx,%edi
    3a0b:	74 19                	je     0x3a26
    3a0d:	89 53 f8             	mov    %edx,-0x8(%ebx)
    3a10:	8b 50 04             	mov    0x4(%eax),%edx
    3a13:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    3a16:	39 ce                	cmp    %ecx,%esi
    3a18:	74 1b                	je     0x3a35
    3a1a:	89 08                	mov    %ecx,(%eax)
    3a1c:	a3 60 a3 00 00       	mov    %eax,0xa360
    3a21:	5b                   	pop    %ebx
    3a22:	5e                   	pop    %esi
    3a23:	5f                   	pop    %edi
    3a24:	5d                   	pop    %ebp
    3a25:	c3                   	ret    
    3a26:	03 72 04             	add    0x4(%edx),%esi
    3a29:	89 73 fc             	mov    %esi,-0x4(%ebx)
    3a2c:	8b 10                	mov    (%eax),%edx
    3a2e:	8b 12                	mov    (%edx),%edx
    3a30:	89 53 f8             	mov    %edx,-0x8(%ebx)
    3a33:	eb db                	jmp    0x3a10
    3a35:	03 53 fc             	add    -0x4(%ebx),%edx
    3a38:	89 50 04             	mov    %edx,0x4(%eax)
    3a3b:	8b 53 f8             	mov    -0x8(%ebx),%edx
    3a3e:	89 10                	mov    %edx,(%eax)
    3a40:	eb da                	jmp    0x3a1c
    3a42:	55                   	push   %ebp
    3a43:	89 e5                	mov    %esp,%ebp
    3a45:	53                   	push   %ebx
    3a46:	83 ec 04             	sub    $0x4,%esp
    3a49:	89 c3                	mov    %eax,%ebx
    3a4b:	3d ff 0f 00 00       	cmp    $0xfff,%eax
    3a50:	77 05                	ja     0x3a57
    3a52:	bb 00 10 00 00       	mov    $0x1000,%ebx
    3a57:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
    3a5e:	83 ec 0c             	sub    $0xc,%esp
    3a61:	50                   	push   %eax
    3a62:	e8 40 fd ff ff       	call   0x37a7
    3a67:	83 c4 10             	add    $0x10,%esp
    3a6a:	83 f8 ff             	cmp    $0xffffffff,%eax
    3a6d:	74 1c                	je     0x3a8b
    3a6f:	89 58 04             	mov    %ebx,0x4(%eax)
    3a72:	83 c0 08             	add    $0x8,%eax
    3a75:	83 ec 0c             	sub    $0xc,%esp
    3a78:	50                   	push   %eax
    3a79:	e8 54 ff ff ff       	call   0x39d2
    3a7e:	a1 60 a3 00 00       	mov    0xa360,%eax
    3a83:	83 c4 10             	add    $0x10,%esp
    3a86:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    3a89:	c9                   	leave  
    3a8a:	c3                   	ret    
    3a8b:	b8 00 00 00 00       	mov    $0x0,%eax
    3a90:	eb f4                	jmp    0x3a86
    3a92:	55                   	push   %ebp
    3a93:	89 e5                	mov    %esp,%ebp
    3a95:	53                   	push   %ebx
    3a96:	83 ec 04             	sub    $0x4,%esp
    3a99:	8b 45 08             	mov    0x8(%ebp),%eax
    3a9c:	8d 58 07             	lea    0x7(%eax),%ebx
    3a9f:	c1 eb 03             	shr    $0x3,%ebx
    3aa2:	83 c3 01             	add    $0x1,%ebx
    3aa5:	8b 0d 60 a3 00 00    	mov    0xa360,%ecx
    3aab:	85 c9                	test   %ecx,%ecx
    3aad:	74 04                	je     0x3ab3
    3aaf:	8b 01                	mov    (%ecx),%eax
    3ab1:	eb 4a                	jmp    0x3afd
    3ab3:	c7 05 60 a3 00 00 64 	movl   $0xa364,0xa360
    3aba:	a3 00 00 
    3abd:	c7 05 64 a3 00 00 64 	movl   $0xa364,0xa364
    3ac4:	a3 00 00 
    3ac7:	c7 05 68 a3 00 00 00 	movl   $0x0,0xa368
    3ace:	00 00 00 
    3ad1:	b9 64 a3 00 00       	mov    $0xa364,%ecx
    3ad6:	eb d7                	jmp    0x3aaf
    3ad8:	74 19                	je     0x3af3
    3ada:	29 da                	sub    %ebx,%edx
    3adc:	89 50 04             	mov    %edx,0x4(%eax)
    3adf:	8d 04 d0             	lea    (%eax,%edx,8),%eax
    3ae2:	89 58 04             	mov    %ebx,0x4(%eax)
    3ae5:	89 0d 60 a3 00 00    	mov    %ecx,0xa360
    3aeb:	83 c0 08             	add    $0x8,%eax
    3aee:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    3af1:	c9                   	leave  
    3af2:	c3                   	ret    
    3af3:	8b 10                	mov    (%eax),%edx
    3af5:	89 11                	mov    %edx,(%ecx)
    3af7:	eb ec                	jmp    0x3ae5
    3af9:	89 c1                	mov    %eax,%ecx
    3afb:	8b 00                	mov    (%eax),%eax
    3afd:	8b 50 04             	mov    0x4(%eax),%edx
    3b00:	39 da                	cmp    %ebx,%edx
    3b02:	73 d4                	jae    0x3ad8
    3b04:	39 05 60 a3 00 00    	cmp    %eax,0xa360
    3b0a:	75 ed                	jne    0x3af9
    3b0c:	89 d8                	mov    %ebx,%eax
    3b0e:	e8 2f ff ff ff       	call   0x3a42
    3b13:	85 c0                	test   %eax,%eax
    3b15:	75 e2                	jne    0x3af9
    3b17:	eb d5                	jmp    0x3aee
