
kernel:     file format elf32-i386


Disassembly of section .text:

80100000 <multiboot_header>:
80100000:	02 b0 ad 1b 00 00    	add    0x1bad(%eax),%dh
80100006:	00 00                	add    %al,(%eax)
80100008:	fe 4f 52             	decb   0x52(%edi)
8010000b:	e4                   	.byte 0xe4

8010000c <entry>:
8010000c:	0f 20 e0             	mov    %cr4,%eax
8010000f:	83 c8 10             	or     $0x10,%eax
80100012:	0f 22 e0             	mov    %eax,%cr4
80100015:	b8 00 90 10 00       	mov    $0x109000,%eax
8010001a:	0f 22 d8             	mov    %eax,%cr3
8010001d:	0f 20 c0             	mov    %cr0,%eax
80100020:	0d 00 00 01 80       	or     $0x80010000,%eax
80100025:	0f 22 c0             	mov    %eax,%cr0
80100028:	bc d0 54 11 80       	mov    $0x801154d0,%esp
8010002d:	b8 4b 2b 10 80       	mov    $0x80102b4b,%eax
80100032:	ff e0                	jmp    *%eax

80100034 <bget>:
80100034:	55                   	push   %ebp
80100035:	89 e5                	mov    %esp,%ebp
80100037:	57                   	push   %edi
80100038:	56                   	push   %esi
80100039:	53                   	push   %ebx
8010003a:	83 ec 18             	sub    $0x18,%esp
8010003d:	89 c6                	mov    %eax,%esi
8010003f:	89 d7                	mov    %edx,%edi
80100041:	68 20 a5 10 80       	push   $0x8010a520
80100046:	e8 a6 3c 00 00       	call   80103cf1 <acquire>
8010004b:	8b 1d 70 ec 10 80    	mov    0x8010ec70,%ebx
80100051:	83 c4 10             	add    $0x10,%esp
80100054:	eb 03                	jmp    80100059 <bget+0x25>
80100056:	8b 5b 54             	mov    0x54(%ebx),%ebx
80100059:	81 fb 1c ec 10 80    	cmp    $0x8010ec1c,%ebx
8010005f:	74 30                	je     80100091 <bget+0x5d>
80100061:	39 73 04             	cmp    %esi,0x4(%ebx)
80100064:	75 f0                	jne    80100056 <bget+0x22>
80100066:	39 7b 08             	cmp    %edi,0x8(%ebx)
80100069:	75 eb                	jne    80100056 <bget+0x22>
8010006b:	8b 43 4c             	mov    0x4c(%ebx),%eax
8010006e:	83 c0 01             	add    $0x1,%eax
80100071:	89 43 4c             	mov    %eax,0x4c(%ebx)
80100074:	83 ec 0c             	sub    $0xc,%esp
80100077:	68 20 a5 10 80       	push   $0x8010a520
8010007c:	e8 d9 3c 00 00       	call   80103d5a <release>
80100081:	8d 43 0c             	lea    0xc(%ebx),%eax
80100084:	89 04 24             	mov    %eax,(%esp)
80100087:	e8 31 3a 00 00       	call   80103abd <acquiresleep>
8010008c:	83 c4 10             	add    $0x10,%esp
8010008f:	eb 4c                	jmp    801000dd <bget+0xa9>
80100091:	8b 1d 6c ec 10 80    	mov    0x8010ec6c,%ebx
80100097:	eb 03                	jmp    8010009c <bget+0x68>
80100099:	8b 5b 50             	mov    0x50(%ebx),%ebx
8010009c:	81 fb 1c ec 10 80    	cmp    $0x8010ec1c,%ebx
801000a2:	74 43                	je     801000e7 <bget+0xb3>
801000a4:	83 7b 4c 00          	cmpl   $0x0,0x4c(%ebx)
801000a8:	75 ef                	jne    80100099 <bget+0x65>
801000aa:	f6 03 04             	testb  $0x4,(%ebx)
801000ad:	75 ea                	jne    80100099 <bget+0x65>
801000af:	89 73 04             	mov    %esi,0x4(%ebx)
801000b2:	89 7b 08             	mov    %edi,0x8(%ebx)
801000b5:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
801000bb:	c7 43 4c 01 00 00 00 	movl   $0x1,0x4c(%ebx)
801000c2:	83 ec 0c             	sub    $0xc,%esp
801000c5:	68 20 a5 10 80       	push   $0x8010a520
801000ca:	e8 8b 3c 00 00       	call   80103d5a <release>
801000cf:	8d 43 0c             	lea    0xc(%ebx),%eax
801000d2:	89 04 24             	mov    %eax,(%esp)
801000d5:	e8 e3 39 00 00       	call   80103abd <acquiresleep>
801000da:	83 c4 10             	add    $0x10,%esp
801000dd:	89 d8                	mov    %ebx,%eax
801000df:	8d 65 f4             	lea    -0xc(%ebp),%esp
801000e2:	5b                   	pop    %ebx
801000e3:	5e                   	pop    %esi
801000e4:	5f                   	pop    %edi
801000e5:	5d                   	pop    %ebp
801000e6:	c3                   	ret    
801000e7:	83 ec 0c             	sub    $0xc,%esp
801000ea:	68 e0 67 10 80       	push   $0x801067e0
801000ef:	e8 68 02 00 00       	call   8010035c <panic>

801000f4 <binit>:
801000f4:	f3 0f 1e fb          	endbr32 
801000f8:	55                   	push   %ebp
801000f9:	89 e5                	mov    %esp,%ebp
801000fb:	53                   	push   %ebx
801000fc:	83 ec 0c             	sub    $0xc,%esp
801000ff:	68 f1 67 10 80       	push   $0x801067f1
80100104:	68 20 a5 10 80       	push   $0x8010a520
80100109:	e8 93 3a 00 00       	call   80103ba1 <initlock>
8010010e:	c7 05 6c ec 10 80 1c 	movl   $0x8010ec1c,0x8010ec6c
80100115:	ec 10 80 
80100118:	c7 05 70 ec 10 80 1c 	movl   $0x8010ec1c,0x8010ec70
8010011f:	ec 10 80 
80100122:	83 c4 10             	add    $0x10,%esp
80100125:	bb 54 a5 10 80       	mov    $0x8010a554,%ebx
8010012a:	eb 37                	jmp    80100163 <binit+0x6f>
8010012c:	a1 70 ec 10 80       	mov    0x8010ec70,%eax
80100131:	89 43 54             	mov    %eax,0x54(%ebx)
80100134:	c7 43 50 1c ec 10 80 	movl   $0x8010ec1c,0x50(%ebx)
8010013b:	83 ec 08             	sub    $0x8,%esp
8010013e:	68 f8 67 10 80       	push   $0x801067f8
80100143:	8d 43 0c             	lea    0xc(%ebx),%eax
80100146:	50                   	push   %eax
80100147:	e8 3a 39 00 00       	call   80103a86 <initsleeplock>
8010014c:	a1 70 ec 10 80       	mov    0x8010ec70,%eax
80100151:	89 58 50             	mov    %ebx,0x50(%eax)
80100154:	89 1d 70 ec 10 80    	mov    %ebx,0x8010ec70
8010015a:	81 c3 5c 02 00 00    	add    $0x25c,%ebx
80100160:	83 c4 10             	add    $0x10,%esp
80100163:	81 fb 1c ec 10 80    	cmp    $0x8010ec1c,%ebx
80100169:	72 c1                	jb     8010012c <binit+0x38>
8010016b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
8010016e:	c9                   	leave  
8010016f:	c3                   	ret    

80100170 <bread>:
80100170:	f3 0f 1e fb          	endbr32 
80100174:	55                   	push   %ebp
80100175:	89 e5                	mov    %esp,%ebp
80100177:	53                   	push   %ebx
80100178:	83 ec 04             	sub    $0x4,%esp
8010017b:	8b 55 0c             	mov    0xc(%ebp),%edx
8010017e:	8b 45 08             	mov    0x8(%ebp),%eax
80100181:	e8 ae fe ff ff       	call   80100034 <bget>
80100186:	89 c3                	mov    %eax,%ebx
80100188:	f6 00 02             	testb  $0x2,(%eax)
8010018b:	74 07                	je     80100194 <bread+0x24>
8010018d:	89 d8                	mov    %ebx,%eax
8010018f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80100192:	c9                   	leave  
80100193:	c3                   	ret    
80100194:	83 ec 0c             	sub    $0xc,%esp
80100197:	50                   	push   %eax
80100198:	e8 1c 1d 00 00       	call   80101eb9 <iderw>
8010019d:	83 c4 10             	add    $0x10,%esp
801001a0:	eb eb                	jmp    8010018d <bread+0x1d>

801001a2 <bwrite>:
801001a2:	f3 0f 1e fb          	endbr32 
801001a6:	55                   	push   %ebp
801001a7:	89 e5                	mov    %esp,%ebp
801001a9:	53                   	push   %ebx
801001aa:	83 ec 10             	sub    $0x10,%esp
801001ad:	8b 5d 08             	mov    0x8(%ebp),%ebx
801001b0:	8d 43 0c             	lea    0xc(%ebx),%eax
801001b3:	50                   	push   %eax
801001b4:	e8 96 39 00 00       	call   80103b4f <holdingsleep>
801001b9:	83 c4 10             	add    $0x10,%esp
801001bc:	85 c0                	test   %eax,%eax
801001be:	74 14                	je     801001d4 <bwrite+0x32>
801001c0:	83 0b 04             	orl    $0x4,(%ebx)
801001c3:	83 ec 0c             	sub    $0xc,%esp
801001c6:	53                   	push   %ebx
801001c7:	e8 ed 1c 00 00       	call   80101eb9 <iderw>
801001cc:	83 c4 10             	add    $0x10,%esp
801001cf:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801001d2:	c9                   	leave  
801001d3:	c3                   	ret    
801001d4:	83 ec 0c             	sub    $0xc,%esp
801001d7:	68 ff 67 10 80       	push   $0x801067ff
801001dc:	e8 7b 01 00 00       	call   8010035c <panic>

801001e1 <brelse>:
801001e1:	f3 0f 1e fb          	endbr32 
801001e5:	55                   	push   %ebp
801001e6:	89 e5                	mov    %esp,%ebp
801001e8:	56                   	push   %esi
801001e9:	53                   	push   %ebx
801001ea:	8b 5d 08             	mov    0x8(%ebp),%ebx
801001ed:	8d 73 0c             	lea    0xc(%ebx),%esi
801001f0:	83 ec 0c             	sub    $0xc,%esp
801001f3:	56                   	push   %esi
801001f4:	e8 56 39 00 00       	call   80103b4f <holdingsleep>
801001f9:	83 c4 10             	add    $0x10,%esp
801001fc:	85 c0                	test   %eax,%eax
801001fe:	74 6b                	je     8010026b <brelse+0x8a>
80100200:	83 ec 0c             	sub    $0xc,%esp
80100203:	56                   	push   %esi
80100204:	e8 07 39 00 00       	call   80103b10 <releasesleep>
80100209:	c7 04 24 20 a5 10 80 	movl   $0x8010a520,(%esp)
80100210:	e8 dc 3a 00 00       	call   80103cf1 <acquire>
80100215:	8b 43 4c             	mov    0x4c(%ebx),%eax
80100218:	83 e8 01             	sub    $0x1,%eax
8010021b:	89 43 4c             	mov    %eax,0x4c(%ebx)
8010021e:	83 c4 10             	add    $0x10,%esp
80100221:	85 c0                	test   %eax,%eax
80100223:	75 2f                	jne    80100254 <brelse+0x73>
80100225:	8b 43 54             	mov    0x54(%ebx),%eax
80100228:	8b 53 50             	mov    0x50(%ebx),%edx
8010022b:	89 50 50             	mov    %edx,0x50(%eax)
8010022e:	8b 43 50             	mov    0x50(%ebx),%eax
80100231:	8b 53 54             	mov    0x54(%ebx),%edx
80100234:	89 50 54             	mov    %edx,0x54(%eax)
80100237:	a1 70 ec 10 80       	mov    0x8010ec70,%eax
8010023c:	89 43 54             	mov    %eax,0x54(%ebx)
8010023f:	c7 43 50 1c ec 10 80 	movl   $0x8010ec1c,0x50(%ebx)
80100246:	a1 70 ec 10 80       	mov    0x8010ec70,%eax
8010024b:	89 58 50             	mov    %ebx,0x50(%eax)
8010024e:	89 1d 70 ec 10 80    	mov    %ebx,0x8010ec70
80100254:	83 ec 0c             	sub    $0xc,%esp
80100257:	68 20 a5 10 80       	push   $0x8010a520
8010025c:	e8 f9 3a 00 00       	call   80103d5a <release>
80100261:	83 c4 10             	add    $0x10,%esp
80100264:	8d 65 f8             	lea    -0x8(%ebp),%esp
80100267:	5b                   	pop    %ebx
80100268:	5e                   	pop    %esi
80100269:	5d                   	pop    %ebp
8010026a:	c3                   	ret    
8010026b:	83 ec 0c             	sub    $0xc,%esp
8010026e:	68 06 68 10 80       	push   $0x80106806
80100273:	e8 e4 00 00 00       	call   8010035c <panic>

80100278 <consoleread>:
80100278:	f3 0f 1e fb          	endbr32 
8010027c:	55                   	push   %ebp
8010027d:	89 e5                	mov    %esp,%ebp
8010027f:	57                   	push   %edi
80100280:	56                   	push   %esi
80100281:	53                   	push   %ebx
80100282:	83 ec 28             	sub    $0x28,%esp
80100285:	8b 7d 08             	mov    0x8(%ebp),%edi
80100288:	8b 75 0c             	mov    0xc(%ebp),%esi
8010028b:	8b 5d 10             	mov    0x10(%ebp),%ebx
8010028e:	57                   	push   %edi
8010028f:	e8 29 14 00 00       	call   801016bd <iunlock>
80100294:	89 5d e4             	mov    %ebx,-0x1c(%ebp)
80100297:	c7 04 24 20 ef 10 80 	movl   $0x8010ef20,(%esp)
8010029e:	e8 4e 3a 00 00       	call   80103cf1 <acquire>
801002a3:	83 c4 10             	add    $0x10,%esp
801002a6:	85 db                	test   %ebx,%ebx
801002a8:	0f 8e 8f 00 00 00    	jle    8010033d <consoleread+0xc5>
801002ae:	a1 00 ef 10 80       	mov    0x8010ef00,%eax
801002b3:	3b 05 04 ef 10 80    	cmp    0x8010ef04,%eax
801002b9:	75 47                	jne    80100302 <consoleread+0x8a>
801002bb:	e8 3d 30 00 00       	call   801032fd <myproc>
801002c0:	83 78 24 00          	cmpl   $0x0,0x24(%eax)
801002c4:	75 17                	jne    801002dd <consoleread+0x65>
801002c6:	83 ec 08             	sub    $0x8,%esp
801002c9:	68 20 ef 10 80       	push   $0x8010ef20
801002ce:	68 00 ef 10 80       	push   $0x8010ef00
801002d3:	e8 e6 34 00 00       	call   801037be <sleep>
801002d8:	83 c4 10             	add    $0x10,%esp
801002db:	eb d1                	jmp    801002ae <consoleread+0x36>
801002dd:	83 ec 0c             	sub    $0xc,%esp
801002e0:	68 20 ef 10 80       	push   $0x8010ef20
801002e5:	e8 70 3a 00 00       	call   80103d5a <release>
801002ea:	89 3c 24             	mov    %edi,(%esp)
801002ed:	e8 05 13 00 00       	call   801015f7 <ilock>
801002f2:	83 c4 10             	add    $0x10,%esp
801002f5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801002fa:	8d 65 f4             	lea    -0xc(%ebp),%esp
801002fd:	5b                   	pop    %ebx
801002fe:	5e                   	pop    %esi
801002ff:	5f                   	pop    %edi
80100300:	5d                   	pop    %ebp
80100301:	c3                   	ret    
80100302:	8d 50 01             	lea    0x1(%eax),%edx
80100305:	89 15 00 ef 10 80    	mov    %edx,0x8010ef00
8010030b:	89 c2                	mov    %eax,%edx
8010030d:	83 e2 7f             	and    $0x7f,%edx
80100310:	0f b6 92 80 ee 10 80 	movzbl -0x7fef1180(%edx),%edx
80100317:	0f be ca             	movsbl %dl,%ecx
8010031a:	80 fa 04             	cmp    $0x4,%dl
8010031d:	74 14                	je     80100333 <consoleread+0xbb>
8010031f:	8d 46 01             	lea    0x1(%esi),%eax
80100322:	88 16                	mov    %dl,(%esi)
80100324:	83 eb 01             	sub    $0x1,%ebx
80100327:	83 f9 0a             	cmp    $0xa,%ecx
8010032a:	74 11                	je     8010033d <consoleread+0xc5>
8010032c:	89 c6                	mov    %eax,%esi
8010032e:	e9 73 ff ff ff       	jmp    801002a6 <consoleread+0x2e>
80100333:	3b 5d e4             	cmp    -0x1c(%ebp),%ebx
80100336:	73 05                	jae    8010033d <consoleread+0xc5>
80100338:	a3 00 ef 10 80       	mov    %eax,0x8010ef00
8010033d:	83 ec 0c             	sub    $0xc,%esp
80100340:	68 20 ef 10 80       	push   $0x8010ef20
80100345:	e8 10 3a 00 00       	call   80103d5a <release>
8010034a:	89 3c 24             	mov    %edi,(%esp)
8010034d:	e8 a5 12 00 00       	call   801015f7 <ilock>
80100352:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80100355:	29 d8                	sub    %ebx,%eax
80100357:	83 c4 10             	add    $0x10,%esp
8010035a:	eb 9e                	jmp    801002fa <consoleread+0x82>

8010035c <panic>:
8010035c:	f3 0f 1e fb          	endbr32 
80100360:	55                   	push   %ebp
80100361:	89 e5                	mov    %esp,%ebp
80100363:	53                   	push   %ebx
80100364:	83 ec 34             	sub    $0x34,%esp
80100367:	fa                   	cli    
80100368:	c7 05 54 ef 10 80 00 	movl   $0x0,0x8010ef54
8010036f:	00 00 00 
80100372:	e8 d6 20 00 00       	call   8010244d <lapicid>
80100377:	83 ec 08             	sub    $0x8,%esp
8010037a:	50                   	push   %eax
8010037b:	68 0d 68 10 80       	push   $0x8010680d
80100380:	e8 a0 02 00 00       	call   80100625 <cprintf>
80100385:	83 c4 04             	add    $0x4,%esp
80100388:	ff 75 08             	push   0x8(%ebp)
8010038b:	e8 95 02 00 00       	call   80100625 <cprintf>
80100390:	c7 04 24 3b 71 10 80 	movl   $0x8010713b,(%esp)
80100397:	e8 89 02 00 00       	call   80100625 <cprintf>
8010039c:	83 c4 08             	add    $0x8,%esp
8010039f:	8d 45 d0             	lea    -0x30(%ebp),%eax
801003a2:	50                   	push   %eax
801003a3:	8d 45 08             	lea    0x8(%ebp),%eax
801003a6:	50                   	push   %eax
801003a7:	e8 14 38 00 00       	call   80103bc0 <getcallerpcs>
801003ac:	83 c4 10             	add    $0x10,%esp
801003af:	bb 00 00 00 00       	mov    $0x0,%ebx
801003b4:	eb 17                	jmp    801003cd <panic+0x71>
801003b6:	83 ec 08             	sub    $0x8,%esp
801003b9:	ff 74 9d d0          	push   -0x30(%ebp,%ebx,4)
801003bd:	68 21 68 10 80       	push   $0x80106821
801003c2:	e8 5e 02 00 00       	call   80100625 <cprintf>
801003c7:	83 c3 01             	add    $0x1,%ebx
801003ca:	83 c4 10             	add    $0x10,%esp
801003cd:	83 fb 09             	cmp    $0x9,%ebx
801003d0:	7e e4                	jle    801003b6 <panic+0x5a>
801003d2:	c7 05 58 ef 10 80 01 	movl   $0x1,0x8010ef58
801003d9:	00 00 00 
801003dc:	eb fe                	jmp    801003dc <panic+0x80>

801003de <cgaputc>:
801003de:	55                   	push   %ebp
801003df:	89 e5                	mov    %esp,%ebp
801003e1:	57                   	push   %edi
801003e2:	56                   	push   %esi
801003e3:	53                   	push   %ebx
801003e4:	83 ec 0c             	sub    $0xc,%esp
801003e7:	89 c3                	mov    %eax,%ebx
801003e9:	b9 d4 03 00 00       	mov    $0x3d4,%ecx
801003ee:	b8 0e 00 00 00       	mov    $0xe,%eax
801003f3:	89 ca                	mov    %ecx,%edx
801003f5:	ee                   	out    %al,(%dx)
801003f6:	bf d5 03 00 00       	mov    $0x3d5,%edi
801003fb:	89 fa                	mov    %edi,%edx
801003fd:	ec                   	in     (%dx),%al
801003fe:	0f b6 f0             	movzbl %al,%esi
80100401:	c1 e6 08             	shl    $0x8,%esi
80100404:	b8 0f 00 00 00       	mov    $0xf,%eax
80100409:	89 ca                	mov    %ecx,%edx
8010040b:	ee                   	out    %al,(%dx)
8010040c:	89 fa                	mov    %edi,%edx
8010040e:	ec                   	in     (%dx),%al
8010040f:	0f b6 c8             	movzbl %al,%ecx
80100412:	09 f1                	or     %esi,%ecx
80100414:	83 fb 0a             	cmp    $0xa,%ebx
80100417:	74 62                	je     8010047b <cgaputc+0x9d>
80100419:	81 fb 00 01 00 00    	cmp    $0x100,%ebx
8010041f:	74 7b                	je     8010049c <cgaputc+0xbe>
80100421:	0f b6 c3             	movzbl %bl,%eax
80100424:	8d 59 01             	lea    0x1(%ecx),%ebx
80100427:	80 cc 07             	or     $0x7,%ah
8010042a:	66 89 84 09 00 80 0b 	mov    %ax,-0x7ff48000(%ecx,%ecx,1)
80100431:	80 
80100432:	81 fb d0 07 00 00    	cmp    $0x7d0,%ebx
80100438:	77 6f                	ja     801004a9 <cgaputc+0xcb>
8010043a:	81 fb 7f 07 00 00    	cmp    $0x77f,%ebx
80100440:	7f 74                	jg     801004b6 <cgaputc+0xd8>
80100442:	be d4 03 00 00       	mov    $0x3d4,%esi
80100447:	b8 0e 00 00 00       	mov    $0xe,%eax
8010044c:	89 f2                	mov    %esi,%edx
8010044e:	ee                   	out    %al,(%dx)
8010044f:	89 d8                	mov    %ebx,%eax
80100451:	c1 f8 08             	sar    $0x8,%eax
80100454:	b9 d5 03 00 00       	mov    $0x3d5,%ecx
80100459:	89 ca                	mov    %ecx,%edx
8010045b:	ee                   	out    %al,(%dx)
8010045c:	b8 0f 00 00 00       	mov    $0xf,%eax
80100461:	89 f2                	mov    %esi,%edx
80100463:	ee                   	out    %al,(%dx)
80100464:	89 d8                	mov    %ebx,%eax
80100466:	89 ca                	mov    %ecx,%edx
80100468:	ee                   	out    %al,(%dx)
80100469:	66 c7 84 1b 00 80 0b 	movw   $0x720,-0x7ff48000(%ebx,%ebx,1)
80100470:	80 20 07 
80100473:	8d 65 f4             	lea    -0xc(%ebp),%esp
80100476:	5b                   	pop    %ebx
80100477:	5e                   	pop    %esi
80100478:	5f                   	pop    %edi
80100479:	5d                   	pop    %ebp
8010047a:	c3                   	ret    
8010047b:	ba 67 66 66 66       	mov    $0x66666667,%edx
80100480:	89 c8                	mov    %ecx,%eax
80100482:	f7 ea                	imul   %edx
80100484:	c1 fa 05             	sar    $0x5,%edx
80100487:	8d 04 92             	lea    (%edx,%edx,4),%eax
8010048a:	c1 e0 04             	shl    $0x4,%eax
8010048d:	89 ca                	mov    %ecx,%edx
8010048f:	29 c2                	sub    %eax,%edx
80100491:	bb 50 00 00 00       	mov    $0x50,%ebx
80100496:	29 d3                	sub    %edx,%ebx
80100498:	01 cb                	add    %ecx,%ebx
8010049a:	eb 96                	jmp    80100432 <cgaputc+0x54>
8010049c:	85 c9                	test   %ecx,%ecx
8010049e:	7e 05                	jle    801004a5 <cgaputc+0xc7>
801004a0:	8d 59 ff             	lea    -0x1(%ecx),%ebx
801004a3:	eb 8d                	jmp    80100432 <cgaputc+0x54>
801004a5:	89 cb                	mov    %ecx,%ebx
801004a7:	eb 89                	jmp    80100432 <cgaputc+0x54>
801004a9:	83 ec 0c             	sub    $0xc,%esp
801004ac:	68 25 68 10 80       	push   $0x80106825
801004b1:	e8 a6 fe ff ff       	call   8010035c <panic>
801004b6:	83 ec 04             	sub    $0x4,%esp
801004b9:	68 60 0e 00 00       	push   $0xe60
801004be:	68 a0 80 0b 80       	push   $0x800b80a0
801004c3:	68 00 80 0b 80       	push   $0x800b8000
801004c8:	e8 58 39 00 00       	call   80103e25 <memmove>
801004cd:	83 eb 50             	sub    $0x50,%ebx
801004d0:	b8 80 07 00 00       	mov    $0x780,%eax
801004d5:	29 d8                	sub    %ebx,%eax
801004d7:	8d 94 1b 00 80 0b 80 	lea    -0x7ff48000(%ebx,%ebx,1),%edx
801004de:	83 c4 0c             	add    $0xc,%esp
801004e1:	01 c0                	add    %eax,%eax
801004e3:	50                   	push   %eax
801004e4:	6a 00                	push   $0x0
801004e6:	52                   	push   %edx
801004e7:	e8 b9 38 00 00       	call   80103da5 <memset>
801004ec:	83 c4 10             	add    $0x10,%esp
801004ef:	e9 4e ff ff ff       	jmp    80100442 <cgaputc+0x64>

801004f4 <consputc>:
801004f4:	83 3d 58 ef 10 80 00 	cmpl   $0x0,0x8010ef58
801004fb:	74 03                	je     80100500 <consputc+0xc>
801004fd:	fa                   	cli    
801004fe:	eb fe                	jmp    801004fe <consputc+0xa>
80100500:	55                   	push   %ebp
80100501:	89 e5                	mov    %esp,%ebp
80100503:	53                   	push   %ebx
80100504:	83 ec 04             	sub    $0x4,%esp
80100507:	89 c3                	mov    %eax,%ebx
80100509:	3d 00 01 00 00       	cmp    $0x100,%eax
8010050e:	74 18                	je     80100528 <consputc+0x34>
80100510:	83 ec 0c             	sub    $0xc,%esp
80100513:	50                   	push   %eax
80100514:	e8 f8 4c 00 00       	call   80105211 <uartputc>
80100519:	83 c4 10             	add    $0x10,%esp
8010051c:	89 d8                	mov    %ebx,%eax
8010051e:	e8 bb fe ff ff       	call   801003de <cgaputc>
80100523:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80100526:	c9                   	leave  
80100527:	c3                   	ret    
80100528:	83 ec 0c             	sub    $0xc,%esp
8010052b:	6a 08                	push   $0x8
8010052d:	e8 df 4c 00 00       	call   80105211 <uartputc>
80100532:	c7 04 24 20 00 00 00 	movl   $0x20,(%esp)
80100539:	e8 d3 4c 00 00       	call   80105211 <uartputc>
8010053e:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
80100545:	e8 c7 4c 00 00       	call   80105211 <uartputc>
8010054a:	83 c4 10             	add    $0x10,%esp
8010054d:	eb cd                	jmp    8010051c <consputc+0x28>

8010054f <printint>:
8010054f:	55                   	push   %ebp
80100550:	89 e5                	mov    %esp,%ebp
80100552:	57                   	push   %edi
80100553:	56                   	push   %esi
80100554:	53                   	push   %ebx
80100555:	83 ec 2c             	sub    $0x2c,%esp
80100558:	89 d6                	mov    %edx,%esi
8010055a:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
8010055d:	85 c9                	test   %ecx,%ecx
8010055f:	74 0c                	je     8010056d <printint+0x1e>
80100561:	89 c7                	mov    %eax,%edi
80100563:	c1 ef 1f             	shr    $0x1f,%edi
80100566:	89 7d d4             	mov    %edi,-0x2c(%ebp)
80100569:	85 c0                	test   %eax,%eax
8010056b:	78 38                	js     801005a5 <printint+0x56>
8010056d:	89 c1                	mov    %eax,%ecx
8010056f:	bb 00 00 00 00       	mov    $0x0,%ebx
80100574:	89 c8                	mov    %ecx,%eax
80100576:	ba 00 00 00 00       	mov    $0x0,%edx
8010057b:	f7 f6                	div    %esi
8010057d:	89 df                	mov    %ebx,%edi
8010057f:	83 c3 01             	add    $0x1,%ebx
80100582:	0f b6 92 50 68 10 80 	movzbl -0x7fef97b0(%edx),%edx
80100589:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
8010058d:	89 ca                	mov    %ecx,%edx
8010058f:	89 c1                	mov    %eax,%ecx
80100591:	39 d6                	cmp    %edx,%esi
80100593:	76 df                	jbe    80100574 <printint+0x25>
80100595:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
80100599:	74 1a                	je     801005b5 <printint+0x66>
8010059b:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
801005a0:	8d 5f 02             	lea    0x2(%edi),%ebx
801005a3:	eb 10                	jmp    801005b5 <printint+0x66>
801005a5:	f7 d8                	neg    %eax
801005a7:	89 c1                	mov    %eax,%ecx
801005a9:	eb c4                	jmp    8010056f <printint+0x20>
801005ab:	0f be 44 1d d8       	movsbl -0x28(%ebp,%ebx,1),%eax
801005b0:	e8 3f ff ff ff       	call   801004f4 <consputc>
801005b5:	83 eb 01             	sub    $0x1,%ebx
801005b8:	79 f1                	jns    801005ab <printint+0x5c>
801005ba:	83 c4 2c             	add    $0x2c,%esp
801005bd:	5b                   	pop    %ebx
801005be:	5e                   	pop    %esi
801005bf:	5f                   	pop    %edi
801005c0:	5d                   	pop    %ebp
801005c1:	c3                   	ret    

801005c2 <consolewrite>:
801005c2:	f3 0f 1e fb          	endbr32 
801005c6:	55                   	push   %ebp
801005c7:	89 e5                	mov    %esp,%ebp
801005c9:	57                   	push   %edi
801005ca:	56                   	push   %esi
801005cb:	53                   	push   %ebx
801005cc:	83 ec 18             	sub    $0x18,%esp
801005cf:	8b 7d 0c             	mov    0xc(%ebp),%edi
801005d2:	8b 75 10             	mov    0x10(%ebp),%esi
801005d5:	ff 75 08             	push   0x8(%ebp)
801005d8:	e8 e0 10 00 00       	call   801016bd <iunlock>
801005dd:	c7 04 24 20 ef 10 80 	movl   $0x8010ef20,(%esp)
801005e4:	e8 08 37 00 00       	call   80103cf1 <acquire>
801005e9:	83 c4 10             	add    $0x10,%esp
801005ec:	bb 00 00 00 00       	mov    $0x0,%ebx
801005f1:	eb 0c                	jmp    801005ff <consolewrite+0x3d>
801005f3:	0f b6 04 1f          	movzbl (%edi,%ebx,1),%eax
801005f7:	e8 f8 fe ff ff       	call   801004f4 <consputc>
801005fc:	83 c3 01             	add    $0x1,%ebx
801005ff:	39 f3                	cmp    %esi,%ebx
80100601:	7c f0                	jl     801005f3 <consolewrite+0x31>
80100603:	83 ec 0c             	sub    $0xc,%esp
80100606:	68 20 ef 10 80       	push   $0x8010ef20
8010060b:	e8 4a 37 00 00       	call   80103d5a <release>
80100610:	83 c4 04             	add    $0x4,%esp
80100613:	ff 75 08             	push   0x8(%ebp)
80100616:	e8 dc 0f 00 00       	call   801015f7 <ilock>
8010061b:	89 f0                	mov    %esi,%eax
8010061d:	8d 65 f4             	lea    -0xc(%ebp),%esp
80100620:	5b                   	pop    %ebx
80100621:	5e                   	pop    %esi
80100622:	5f                   	pop    %edi
80100623:	5d                   	pop    %ebp
80100624:	c3                   	ret    

80100625 <cprintf>:
80100625:	f3 0f 1e fb          	endbr32 
80100629:	55                   	push   %ebp
8010062a:	89 e5                	mov    %esp,%ebp
8010062c:	57                   	push   %edi
8010062d:	56                   	push   %esi
8010062e:	53                   	push   %ebx
8010062f:	83 ec 1c             	sub    $0x1c,%esp
80100632:	a1 54 ef 10 80       	mov    0x8010ef54,%eax
80100637:	89 45 e0             	mov    %eax,-0x20(%ebp)
8010063a:	85 c0                	test   %eax,%eax
8010063c:	75 10                	jne    8010064e <cprintf+0x29>
8010063e:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
80100642:	74 1c                	je     80100660 <cprintf+0x3b>
80100644:	8d 7d 0c             	lea    0xc(%ebp),%edi
80100647:	be 00 00 00 00       	mov    $0x0,%esi
8010064c:	eb 27                	jmp    80100675 <cprintf+0x50>
8010064e:	83 ec 0c             	sub    $0xc,%esp
80100651:	68 20 ef 10 80       	push   $0x8010ef20
80100656:	e8 96 36 00 00       	call   80103cf1 <acquire>
8010065b:	83 c4 10             	add    $0x10,%esp
8010065e:	eb de                	jmp    8010063e <cprintf+0x19>
80100660:	83 ec 0c             	sub    $0xc,%esp
80100663:	68 3f 68 10 80       	push   $0x8010683f
80100668:	e8 ef fc ff ff       	call   8010035c <panic>
8010066d:	e8 82 fe ff ff       	call   801004f4 <consputc>
80100672:	83 c6 01             	add    $0x1,%esi
80100675:	8b 55 08             	mov    0x8(%ebp),%edx
80100678:	0f b6 04 32          	movzbl (%edx,%esi,1),%eax
8010067c:	85 c0                	test   %eax,%eax
8010067e:	0f 84 b1 00 00 00    	je     80100735 <cprintf+0x110>
80100684:	83 f8 25             	cmp    $0x25,%eax
80100687:	75 e4                	jne    8010066d <cprintf+0x48>
80100689:	83 c6 01             	add    $0x1,%esi
8010068c:	0f b6 1c 32          	movzbl (%edx,%esi,1),%ebx
80100690:	85 db                	test   %ebx,%ebx
80100692:	0f 84 9d 00 00 00    	je     80100735 <cprintf+0x110>
80100698:	83 fb 70             	cmp    $0x70,%ebx
8010069b:	74 2e                	je     801006cb <cprintf+0xa6>
8010069d:	7f 22                	jg     801006c1 <cprintf+0x9c>
8010069f:	83 fb 25             	cmp    $0x25,%ebx
801006a2:	74 6c                	je     80100710 <cprintf+0xeb>
801006a4:	83 fb 64             	cmp    $0x64,%ebx
801006a7:	75 76                	jne    8010071f <cprintf+0xfa>
801006a9:	8d 5f 04             	lea    0x4(%edi),%ebx
801006ac:	8b 07                	mov    (%edi),%eax
801006ae:	b9 01 00 00 00       	mov    $0x1,%ecx
801006b3:	ba 0a 00 00 00       	mov    $0xa,%edx
801006b8:	e8 92 fe ff ff       	call   8010054f <printint>
801006bd:	89 df                	mov    %ebx,%edi
801006bf:	eb b1                	jmp    80100672 <cprintf+0x4d>
801006c1:	83 fb 73             	cmp    $0x73,%ebx
801006c4:	74 1d                	je     801006e3 <cprintf+0xbe>
801006c6:	83 fb 78             	cmp    $0x78,%ebx
801006c9:	75 54                	jne    8010071f <cprintf+0xfa>
801006cb:	8d 5f 04             	lea    0x4(%edi),%ebx
801006ce:	8b 07                	mov    (%edi),%eax
801006d0:	b9 00 00 00 00       	mov    $0x0,%ecx
801006d5:	ba 10 00 00 00       	mov    $0x10,%edx
801006da:	e8 70 fe ff ff       	call   8010054f <printint>
801006df:	89 df                	mov    %ebx,%edi
801006e1:	eb 8f                	jmp    80100672 <cprintf+0x4d>
801006e3:	8d 47 04             	lea    0x4(%edi),%eax
801006e6:	89 45 e4             	mov    %eax,-0x1c(%ebp)
801006e9:	8b 1f                	mov    (%edi),%ebx
801006eb:	85 db                	test   %ebx,%ebx
801006ed:	75 12                	jne    80100701 <cprintf+0xdc>
801006ef:	bb 38 68 10 80       	mov    $0x80106838,%ebx
801006f4:	eb 0b                	jmp    80100701 <cprintf+0xdc>
801006f6:	0f be c0             	movsbl %al,%eax
801006f9:	e8 f6 fd ff ff       	call   801004f4 <consputc>
801006fe:	83 c3 01             	add    $0x1,%ebx
80100701:	0f b6 03             	movzbl (%ebx),%eax
80100704:	84 c0                	test   %al,%al
80100706:	75 ee                	jne    801006f6 <cprintf+0xd1>
80100708:	8b 7d e4             	mov    -0x1c(%ebp),%edi
8010070b:	e9 62 ff ff ff       	jmp    80100672 <cprintf+0x4d>
80100710:	b8 25 00 00 00       	mov    $0x25,%eax
80100715:	e8 da fd ff ff       	call   801004f4 <consputc>
8010071a:	e9 53 ff ff ff       	jmp    80100672 <cprintf+0x4d>
8010071f:	b8 25 00 00 00       	mov    $0x25,%eax
80100724:	e8 cb fd ff ff       	call   801004f4 <consputc>
80100729:	89 d8                	mov    %ebx,%eax
8010072b:	e8 c4 fd ff ff       	call   801004f4 <consputc>
80100730:	e9 3d ff ff ff       	jmp    80100672 <cprintf+0x4d>
80100735:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
80100739:	75 08                	jne    80100743 <cprintf+0x11e>
8010073b:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010073e:	5b                   	pop    %ebx
8010073f:	5e                   	pop    %esi
80100740:	5f                   	pop    %edi
80100741:	5d                   	pop    %ebp
80100742:	c3                   	ret    
80100743:	83 ec 0c             	sub    $0xc,%esp
80100746:	68 20 ef 10 80       	push   $0x8010ef20
8010074b:	e8 0a 36 00 00       	call   80103d5a <release>
80100750:	83 c4 10             	add    $0x10,%esp
80100753:	eb e6                	jmp    8010073b <cprintf+0x116>

80100755 <consoleintr>:
80100755:	f3 0f 1e fb          	endbr32 
80100759:	55                   	push   %ebp
8010075a:	89 e5                	mov    %esp,%ebp
8010075c:	57                   	push   %edi
8010075d:	56                   	push   %esi
8010075e:	53                   	push   %ebx
8010075f:	83 ec 18             	sub    $0x18,%esp
80100762:	8b 5d 08             	mov    0x8(%ebp),%ebx
80100765:	68 20 ef 10 80       	push   $0x8010ef20
8010076a:	e8 82 35 00 00       	call   80103cf1 <acquire>
8010076f:	83 c4 10             	add    $0x10,%esp
80100772:	be 00 00 00 00       	mov    $0x0,%esi
80100777:	eb 13                	jmp    8010078c <consoleintr+0x37>
80100779:	83 ff 08             	cmp    $0x8,%edi
8010077c:	0f 84 d9 00 00 00    	je     8010085b <consoleintr+0x106>
80100782:	83 ff 10             	cmp    $0x10,%edi
80100785:	75 25                	jne    801007ac <consoleintr+0x57>
80100787:	be 01 00 00 00       	mov    $0x1,%esi
8010078c:	ff d3                	call   *%ebx
8010078e:	89 c7                	mov    %eax,%edi
80100790:	85 c0                	test   %eax,%eax
80100792:	0f 88 f5 00 00 00    	js     8010088d <consoleintr+0x138>
80100798:	83 ff 15             	cmp    $0x15,%edi
8010079b:	0f 84 93 00 00 00    	je     80100834 <consoleintr+0xdf>
801007a1:	7e d6                	jle    80100779 <consoleintr+0x24>
801007a3:	83 ff 7f             	cmp    $0x7f,%edi
801007a6:	0f 84 af 00 00 00    	je     8010085b <consoleintr+0x106>
801007ac:	85 ff                	test   %edi,%edi
801007ae:	74 dc                	je     8010078c <consoleintr+0x37>
801007b0:	a1 08 ef 10 80       	mov    0x8010ef08,%eax
801007b5:	89 c2                	mov    %eax,%edx
801007b7:	2b 15 00 ef 10 80    	sub    0x8010ef00,%edx
801007bd:	83 fa 7f             	cmp    $0x7f,%edx
801007c0:	77 ca                	ja     8010078c <consoleintr+0x37>
801007c2:	83 ff 0d             	cmp    $0xd,%edi
801007c5:	0f 84 b8 00 00 00    	je     80100883 <consoleintr+0x12e>
801007cb:	8d 50 01             	lea    0x1(%eax),%edx
801007ce:	89 15 08 ef 10 80    	mov    %edx,0x8010ef08
801007d4:	83 e0 7f             	and    $0x7f,%eax
801007d7:	89 f9                	mov    %edi,%ecx
801007d9:	88 88 80 ee 10 80    	mov    %cl,-0x7fef1180(%eax)
801007df:	89 f8                	mov    %edi,%eax
801007e1:	e8 0e fd ff ff       	call   801004f4 <consputc>
801007e6:	83 ff 0a             	cmp    $0xa,%edi
801007e9:	0f 94 c2             	sete   %dl
801007ec:	83 ff 04             	cmp    $0x4,%edi
801007ef:	0f 94 c0             	sete   %al
801007f2:	08 c2                	or     %al,%dl
801007f4:	75 10                	jne    80100806 <consoleintr+0xb1>
801007f6:	a1 00 ef 10 80       	mov    0x8010ef00,%eax
801007fb:	83 e8 80             	sub    $0xffffff80,%eax
801007fe:	39 05 08 ef 10 80    	cmp    %eax,0x8010ef08
80100804:	75 86                	jne    8010078c <consoleintr+0x37>
80100806:	a1 08 ef 10 80       	mov    0x8010ef08,%eax
8010080b:	a3 04 ef 10 80       	mov    %eax,0x8010ef04
80100810:	83 ec 0c             	sub    $0xc,%esp
80100813:	68 00 ef 10 80       	push   $0x8010ef00
80100818:	e8 0e 31 00 00       	call   8010392b <wakeup>
8010081d:	83 c4 10             	add    $0x10,%esp
80100820:	e9 67 ff ff ff       	jmp    8010078c <consoleintr+0x37>
80100825:	a3 08 ef 10 80       	mov    %eax,0x8010ef08
8010082a:	b8 00 01 00 00       	mov    $0x100,%eax
8010082f:	e8 c0 fc ff ff       	call   801004f4 <consputc>
80100834:	a1 08 ef 10 80       	mov    0x8010ef08,%eax
80100839:	3b 05 04 ef 10 80    	cmp    0x8010ef04,%eax
8010083f:	0f 84 47 ff ff ff    	je     8010078c <consoleintr+0x37>
80100845:	83 e8 01             	sub    $0x1,%eax
80100848:	89 c2                	mov    %eax,%edx
8010084a:	83 e2 7f             	and    $0x7f,%edx
8010084d:	80 ba 80 ee 10 80 0a 	cmpb   $0xa,-0x7fef1180(%edx)
80100854:	75 cf                	jne    80100825 <consoleintr+0xd0>
80100856:	e9 31 ff ff ff       	jmp    8010078c <consoleintr+0x37>
8010085b:	a1 08 ef 10 80       	mov    0x8010ef08,%eax
80100860:	3b 05 04 ef 10 80    	cmp    0x8010ef04,%eax
80100866:	0f 84 20 ff ff ff    	je     8010078c <consoleintr+0x37>
8010086c:	83 e8 01             	sub    $0x1,%eax
8010086f:	a3 08 ef 10 80       	mov    %eax,0x8010ef08
80100874:	b8 00 01 00 00       	mov    $0x100,%eax
80100879:	e8 76 fc ff ff       	call   801004f4 <consputc>
8010087e:	e9 09 ff ff ff       	jmp    8010078c <consoleintr+0x37>
80100883:	bf 0a 00 00 00       	mov    $0xa,%edi
80100888:	e9 3e ff ff ff       	jmp    801007cb <consoleintr+0x76>
8010088d:	83 ec 0c             	sub    $0xc,%esp
80100890:	68 20 ef 10 80       	push   $0x8010ef20
80100895:	e8 c0 34 00 00       	call   80103d5a <release>
8010089a:	83 c4 10             	add    $0x10,%esp
8010089d:	85 f6                	test   %esi,%esi
8010089f:	75 08                	jne    801008a9 <consoleintr+0x154>
801008a1:	8d 65 f4             	lea    -0xc(%ebp),%esp
801008a4:	5b                   	pop    %ebx
801008a5:	5e                   	pop    %esi
801008a6:	5f                   	pop    %edi
801008a7:	5d                   	pop    %ebp
801008a8:	c3                   	ret    
801008a9:	e8 22 31 00 00       	call   801039d0 <procdump>
801008ae:	eb f1                	jmp    801008a1 <consoleintr+0x14c>

801008b0 <consoleinit>:
801008b0:	f3 0f 1e fb          	endbr32 
801008b4:	55                   	push   %ebp
801008b5:	89 e5                	mov    %esp,%ebp
801008b7:	83 ec 10             	sub    $0x10,%esp
801008ba:	68 48 68 10 80       	push   $0x80106848
801008bf:	68 20 ef 10 80       	push   $0x8010ef20
801008c4:	e8 d8 32 00 00       	call   80103ba1 <initlock>
801008c9:	c7 05 0c f9 10 80 c2 	movl   $0x801005c2,0x8010f90c
801008d0:	05 10 80 
801008d3:	c7 05 08 f9 10 80 78 	movl   $0x80100278,0x8010f908
801008da:	02 10 80 
801008dd:	c7 05 54 ef 10 80 01 	movl   $0x1,0x8010ef54
801008e4:	00 00 00 
801008e7:	83 c4 08             	add    $0x8,%esp
801008ea:	6a 00                	push   $0x0
801008ec:	6a 01                	push   $0x1
801008ee:	e8 38 17 00 00       	call   8010202b <ioapicenable>
801008f3:	83 c4 10             	add    $0x10,%esp
801008f6:	c9                   	leave  
801008f7:	c3                   	ret    

801008f8 <exec>:
801008f8:	f3 0f 1e fb          	endbr32 
801008fc:	55                   	push   %ebp
801008fd:	89 e5                	mov    %esp,%ebp
801008ff:	57                   	push   %edi
80100900:	56                   	push   %esi
80100901:	53                   	push   %ebx
80100902:	81 ec 0c 01 00 00    	sub    $0x10c,%esp
80100908:	e8 f0 29 00 00       	call   801032fd <myproc>
8010090d:	89 85 ec fe ff ff    	mov    %eax,-0x114(%ebp)
80100913:	e8 6d 1f 00 00       	call   80102885 <begin_op>
80100918:	83 ec 0c             	sub    $0xc,%esp
8010091b:	ff 75 08             	push   0x8(%ebp)
8010091e:	e8 5a 13 00 00       	call   80101c7d <namei>
80100923:	83 c4 10             	add    $0x10,%esp
80100926:	85 c0                	test   %eax,%eax
80100928:	74 56                	je     80100980 <exec+0x88>
8010092a:	89 c3                	mov    %eax,%ebx
8010092c:	83 ec 0c             	sub    $0xc,%esp
8010092f:	50                   	push   %eax
80100930:	e8 c2 0c 00 00       	call   801015f7 <ilock>
80100935:	6a 34                	push   $0x34
80100937:	6a 00                	push   $0x0
80100939:	8d 85 24 ff ff ff    	lea    -0xdc(%ebp),%eax
8010093f:	50                   	push   %eax
80100940:	53                   	push   %ebx
80100941:	e8 b7 0e 00 00       	call   801017fd <readi>
80100946:	83 c4 20             	add    $0x20,%esp
80100949:	83 f8 34             	cmp    $0x34,%eax
8010094c:	75 0c                	jne    8010095a <exec+0x62>
8010094e:	81 bd 24 ff ff ff 7f 	cmpl   $0x464c457f,-0xdc(%ebp)
80100955:	45 4c 46 
80100958:	74 42                	je     8010099c <exec+0xa4>
8010095a:	85 db                	test   %ebx,%ebx
8010095c:	0f 84 d2 02 00 00    	je     80100c34 <exec+0x33c>
80100962:	83 ec 0c             	sub    $0xc,%esp
80100965:	53                   	push   %ebx
80100966:	e8 3f 0e 00 00       	call   801017aa <iunlockput>
8010096b:	e8 93 1f 00 00       	call   80102903 <end_op>
80100970:	83 c4 10             	add    $0x10,%esp
80100973:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80100978:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010097b:	5b                   	pop    %ebx
8010097c:	5e                   	pop    %esi
8010097d:	5f                   	pop    %edi
8010097e:	5d                   	pop    %ebp
8010097f:	c3                   	ret    
80100980:	e8 7e 1f 00 00       	call   80102903 <end_op>
80100985:	83 ec 0c             	sub    $0xc,%esp
80100988:	68 61 68 10 80       	push   $0x80106861
8010098d:	e8 93 fc ff ff       	call   80100625 <cprintf>
80100992:	83 c4 10             	add    $0x10,%esp
80100995:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010099a:	eb dc                	jmp    80100978 <exec+0x80>
8010099c:	e8 c4 5b 00 00       	call   80106565 <setupkvm>
801009a1:	89 85 f4 fe ff ff    	mov    %eax,-0x10c(%ebp)
801009a7:	85 c0                	test   %eax,%eax
801009a9:	0f 84 16 01 00 00    	je     80100ac5 <exec+0x1cd>
801009af:	8b 85 40 ff ff ff    	mov    -0xc0(%ebp),%eax
801009b5:	c7 85 f0 fe ff ff 00 	movl   $0x0,-0x110(%ebp)
801009bc:	00 00 00 
801009bf:	be 00 00 00 00       	mov    $0x0,%esi
801009c4:	eb 06                	jmp    801009cc <exec+0xd4>
801009c6:	83 c6 01             	add    $0x1,%esi
801009c9:	8d 47 20             	lea    0x20(%edi),%eax
801009cc:	0f b7 95 50 ff ff ff 	movzwl -0xb0(%ebp),%edx
801009d3:	39 f2                	cmp    %esi,%edx
801009d5:	0f 8e a1 00 00 00    	jle    80100a7c <exec+0x184>
801009db:	89 c7                	mov    %eax,%edi
801009dd:	6a 20                	push   $0x20
801009df:	50                   	push   %eax
801009e0:	8d 85 04 ff ff ff    	lea    -0xfc(%ebp),%eax
801009e6:	50                   	push   %eax
801009e7:	53                   	push   %ebx
801009e8:	e8 10 0e 00 00       	call   801017fd <readi>
801009ed:	83 c4 10             	add    $0x10,%esp
801009f0:	83 f8 20             	cmp    $0x20,%eax
801009f3:	0f 85 cc 00 00 00    	jne    80100ac5 <exec+0x1cd>
801009f9:	83 bd 04 ff ff ff 01 	cmpl   $0x1,-0xfc(%ebp)
80100a00:	75 c4                	jne    801009c6 <exec+0xce>
80100a02:	8b 85 18 ff ff ff    	mov    -0xe8(%ebp),%eax
80100a08:	85 c0                	test   %eax,%eax
80100a0a:	74 ba                	je     801009c6 <exec+0xce>
80100a0c:	3b 85 14 ff ff ff    	cmp    -0xec(%ebp),%eax
80100a12:	0f 82 ad 00 00 00    	jb     80100ac5 <exec+0x1cd>
80100a18:	03 85 0c ff ff ff    	add    -0xf4(%ebp),%eax
80100a1e:	0f 82 a1 00 00 00    	jb     80100ac5 <exec+0x1cd>
80100a24:	83 ec 04             	sub    $0x4,%esp
80100a27:	50                   	push   %eax
80100a28:	ff b5 f0 fe ff ff    	push   -0x110(%ebp)
80100a2e:	ff b5 f4 fe ff ff    	push   -0x10c(%ebp)
80100a34:	e8 ca 59 00 00       	call   80106403 <allocuvm>
80100a39:	89 85 f0 fe ff ff    	mov    %eax,-0x110(%ebp)
80100a3f:	83 c4 10             	add    $0x10,%esp
80100a42:	85 c0                	test   %eax,%eax
80100a44:	74 7f                	je     80100ac5 <exec+0x1cd>
80100a46:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
80100a4c:	a9 ff 0f 00 00       	test   $0xfff,%eax
80100a51:	75 72                	jne    80100ac5 <exec+0x1cd>
80100a53:	83 ec 0c             	sub    $0xc,%esp
80100a56:	ff b5 14 ff ff ff    	push   -0xec(%ebp)
80100a5c:	ff b5 08 ff ff ff    	push   -0xf8(%ebp)
80100a62:	53                   	push   %ebx
80100a63:	50                   	push   %eax
80100a64:	ff b5 f4 fe ff ff    	push   -0x10c(%ebp)
80100a6a:	e8 5f 58 00 00       	call   801062ce <loaduvm>
80100a6f:	83 c4 20             	add    $0x20,%esp
80100a72:	85 c0                	test   %eax,%eax
80100a74:	0f 89 4c ff ff ff    	jns    801009c6 <exec+0xce>
80100a7a:	eb 49                	jmp    80100ac5 <exec+0x1cd>
80100a7c:	83 ec 0c             	sub    $0xc,%esp
80100a7f:	53                   	push   %ebx
80100a80:	e8 25 0d 00 00       	call   801017aa <iunlockput>
80100a85:	e8 79 1e 00 00       	call   80102903 <end_op>
80100a8a:	8b 85 f0 fe ff ff    	mov    -0x110(%ebp),%eax
80100a90:	05 ff 0f 00 00       	add    $0xfff,%eax
80100a95:	25 00 f0 ff ff       	and    $0xfffff000,%eax
80100a9a:	83 c4 0c             	add    $0xc,%esp
80100a9d:	8d 90 00 20 00 00    	lea    0x2000(%eax),%edx
80100aa3:	52                   	push   %edx
80100aa4:	50                   	push   %eax
80100aa5:	8b b5 f4 fe ff ff    	mov    -0x10c(%ebp),%esi
80100aab:	56                   	push   %esi
80100aac:	e8 52 59 00 00       	call   80106403 <allocuvm>
80100ab1:	89 c7                	mov    %eax,%edi
80100ab3:	89 85 f0 fe ff ff    	mov    %eax,-0x110(%ebp)
80100ab9:	83 c4 10             	add    $0x10,%esp
80100abc:	85 c0                	test   %eax,%eax
80100abe:	75 24                	jne    80100ae4 <exec+0x1ec>
80100ac0:	bb 00 00 00 00       	mov    $0x0,%ebx
80100ac5:	8b 85 f4 fe ff ff    	mov    -0x10c(%ebp),%eax
80100acb:	85 c0                	test   %eax,%eax
80100acd:	0f 84 87 fe ff ff    	je     8010095a <exec+0x62>
80100ad3:	83 ec 0c             	sub    $0xc,%esp
80100ad6:	50                   	push   %eax
80100ad7:	e8 15 5a 00 00       	call   801064f1 <freevm>
80100adc:	83 c4 10             	add    $0x10,%esp
80100adf:	e9 76 fe ff ff       	jmp    8010095a <exec+0x62>
80100ae4:	8d 80 00 e0 ff ff    	lea    -0x2000(%eax),%eax
80100aea:	83 ec 08             	sub    $0x8,%esp
80100aed:	50                   	push   %eax
80100aee:	56                   	push   %esi
80100aef:	e8 fe 5a 00 00       	call   801065f2 <clearpteu>
80100af4:	83 c4 10             	add    $0x10,%esp
80100af7:	be 00 00 00 00       	mov    $0x0,%esi
80100afc:	eb 0a                	jmp    80100b08 <exec+0x210>
80100afe:	89 bc b5 64 ff ff ff 	mov    %edi,-0x9c(%ebp,%esi,4)
80100b05:	83 c6 01             	add    $0x1,%esi
80100b08:	8b 45 0c             	mov    0xc(%ebp),%eax
80100b0b:	8d 1c b0             	lea    (%eax,%esi,4),%ebx
80100b0e:	8b 03                	mov    (%ebx),%eax
80100b10:	85 c0                	test   %eax,%eax
80100b12:	74 47                	je     80100b5b <exec+0x263>
80100b14:	83 fe 1f             	cmp    $0x1f,%esi
80100b17:	0f 87 0d 01 00 00    	ja     80100c2a <exec+0x332>
80100b1d:	83 ec 0c             	sub    $0xc,%esp
80100b20:	50                   	push   %eax
80100b21:	e8 44 34 00 00       	call   80103f6a <strlen>
80100b26:	29 c7                	sub    %eax,%edi
80100b28:	83 ef 01             	sub    $0x1,%edi
80100b2b:	83 e7 fc             	and    $0xfffffffc,%edi
80100b2e:	83 c4 04             	add    $0x4,%esp
80100b31:	ff 33                	push   (%ebx)
80100b33:	e8 32 34 00 00       	call   80103f6a <strlen>
80100b38:	83 c0 01             	add    $0x1,%eax
80100b3b:	50                   	push   %eax
80100b3c:	ff 33                	push   (%ebx)
80100b3e:	57                   	push   %edi
80100b3f:	ff b5 f4 fe ff ff    	push   -0x10c(%ebp)
80100b45:	e8 02 5c 00 00       	call   8010674c <copyout>
80100b4a:	83 c4 20             	add    $0x20,%esp
80100b4d:	85 c0                	test   %eax,%eax
80100b4f:	79 ad                	jns    80100afe <exec+0x206>
80100b51:	bb 00 00 00 00       	mov    $0x0,%ebx
80100b56:	e9 6a ff ff ff       	jmp    80100ac5 <exec+0x1cd>
80100b5b:	89 f9                	mov    %edi,%ecx
80100b5d:	89 c3                	mov    %eax,%ebx
80100b5f:	c7 84 b5 64 ff ff ff 	movl   $0x0,-0x9c(%ebp,%esi,4)
80100b66:	00 00 00 00 
80100b6a:	c7 85 58 ff ff ff ff 	movl   $0xffffffff,-0xa8(%ebp)
80100b71:	ff ff ff 
80100b74:	89 b5 5c ff ff ff    	mov    %esi,-0xa4(%ebp)
80100b7a:	8d 14 b5 04 00 00 00 	lea    0x4(,%esi,4),%edx
80100b81:	89 f8                	mov    %edi,%eax
80100b83:	29 d0                	sub    %edx,%eax
80100b85:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
80100b8b:	8d 04 b5 10 00 00 00 	lea    0x10(,%esi,4),%eax
80100b92:	29 c1                	sub    %eax,%ecx
80100b94:	89 ce                	mov    %ecx,%esi
80100b96:	50                   	push   %eax
80100b97:	8d 85 58 ff ff ff    	lea    -0xa8(%ebp),%eax
80100b9d:	50                   	push   %eax
80100b9e:	51                   	push   %ecx
80100b9f:	ff b5 f4 fe ff ff    	push   -0x10c(%ebp)
80100ba5:	e8 a2 5b 00 00       	call   8010674c <copyout>
80100baa:	83 c4 10             	add    $0x10,%esp
80100bad:	85 c0                	test   %eax,%eax
80100baf:	0f 88 10 ff ff ff    	js     80100ac5 <exec+0x1cd>
80100bb5:	8b 55 08             	mov    0x8(%ebp),%edx
80100bb8:	89 d0                	mov    %edx,%eax
80100bba:	eb 03                	jmp    80100bbf <exec+0x2c7>
80100bbc:	83 c0 01             	add    $0x1,%eax
80100bbf:	0f b6 08             	movzbl (%eax),%ecx
80100bc2:	84 c9                	test   %cl,%cl
80100bc4:	74 0a                	je     80100bd0 <exec+0x2d8>
80100bc6:	80 f9 2f             	cmp    $0x2f,%cl
80100bc9:	75 f1                	jne    80100bbc <exec+0x2c4>
80100bcb:	8d 50 01             	lea    0x1(%eax),%edx
80100bce:	eb ec                	jmp    80100bbc <exec+0x2c4>
80100bd0:	8b bd ec fe ff ff    	mov    -0x114(%ebp),%edi
80100bd6:	89 f8                	mov    %edi,%eax
80100bd8:	83 c0 6c             	add    $0x6c,%eax
80100bdb:	83 ec 04             	sub    $0x4,%esp
80100bde:	6a 10                	push   $0x10
80100be0:	52                   	push   %edx
80100be1:	50                   	push   %eax
80100be2:	e8 42 33 00 00       	call   80103f29 <safestrcpy>
80100be7:	8b 5f 04             	mov    0x4(%edi),%ebx
80100bea:	8b 8d f4 fe ff ff    	mov    -0x10c(%ebp),%ecx
80100bf0:	89 4f 04             	mov    %ecx,0x4(%edi)
80100bf3:	8b 8d f0 fe ff ff    	mov    -0x110(%ebp),%ecx
80100bf9:	89 0f                	mov    %ecx,(%edi)
80100bfb:	8b 47 18             	mov    0x18(%edi),%eax
80100bfe:	8b 95 3c ff ff ff    	mov    -0xc4(%ebp),%edx
80100c04:	89 50 38             	mov    %edx,0x38(%eax)
80100c07:	8b 47 18             	mov    0x18(%edi),%eax
80100c0a:	89 70 44             	mov    %esi,0x44(%eax)
80100c0d:	89 3c 24             	mov    %edi,(%esp)
80100c10:	e8 e8 54 00 00       	call   801060fd <switchuvm>
80100c15:	89 1c 24             	mov    %ebx,(%esp)
80100c18:	e8 d4 58 00 00       	call   801064f1 <freevm>
80100c1d:	83 c4 10             	add    $0x10,%esp
80100c20:	b8 00 00 00 00       	mov    $0x0,%eax
80100c25:	e9 4e fd ff ff       	jmp    80100978 <exec+0x80>
80100c2a:	bb 00 00 00 00       	mov    $0x0,%ebx
80100c2f:	e9 91 fe ff ff       	jmp    80100ac5 <exec+0x1cd>
80100c34:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80100c39:	e9 3a fd ff ff       	jmp    80100978 <exec+0x80>

80100c3e <fileinit>:
80100c3e:	f3 0f 1e fb          	endbr32 
80100c42:	55                   	push   %ebp
80100c43:	89 e5                	mov    %esp,%ebp
80100c45:	83 ec 10             	sub    $0x10,%esp
80100c48:	68 6d 68 10 80       	push   $0x8010686d
80100c4d:	68 60 ef 10 80       	push   $0x8010ef60
80100c52:	e8 4a 2f 00 00       	call   80103ba1 <initlock>
80100c57:	83 c4 10             	add    $0x10,%esp
80100c5a:	c9                   	leave  
80100c5b:	c3                   	ret    

80100c5c <filealloc>:
80100c5c:	f3 0f 1e fb          	endbr32 
80100c60:	55                   	push   %ebp
80100c61:	89 e5                	mov    %esp,%ebp
80100c63:	53                   	push   %ebx
80100c64:	83 ec 10             	sub    $0x10,%esp
80100c67:	68 60 ef 10 80       	push   $0x8010ef60
80100c6c:	e8 80 30 00 00       	call   80103cf1 <acquire>
80100c71:	83 c4 10             	add    $0x10,%esp
80100c74:	bb 94 ef 10 80       	mov    $0x8010ef94,%ebx
80100c79:	81 fb f4 f8 10 80    	cmp    $0x8010f8f4,%ebx
80100c7f:	73 29                	jae    80100caa <filealloc+0x4e>
80100c81:	83 7b 04 00          	cmpl   $0x0,0x4(%ebx)
80100c85:	74 05                	je     80100c8c <filealloc+0x30>
80100c87:	83 c3 18             	add    $0x18,%ebx
80100c8a:	eb ed                	jmp    80100c79 <filealloc+0x1d>
80100c8c:	c7 43 04 01 00 00 00 	movl   $0x1,0x4(%ebx)
80100c93:	83 ec 0c             	sub    $0xc,%esp
80100c96:	68 60 ef 10 80       	push   $0x8010ef60
80100c9b:	e8 ba 30 00 00       	call   80103d5a <release>
80100ca0:	83 c4 10             	add    $0x10,%esp
80100ca3:	89 d8                	mov    %ebx,%eax
80100ca5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80100ca8:	c9                   	leave  
80100ca9:	c3                   	ret    
80100caa:	83 ec 0c             	sub    $0xc,%esp
80100cad:	68 60 ef 10 80       	push   $0x8010ef60
80100cb2:	e8 a3 30 00 00       	call   80103d5a <release>
80100cb7:	83 c4 10             	add    $0x10,%esp
80100cba:	bb 00 00 00 00       	mov    $0x0,%ebx
80100cbf:	eb e2                	jmp    80100ca3 <filealloc+0x47>

80100cc1 <filedup>:
80100cc1:	f3 0f 1e fb          	endbr32 
80100cc5:	55                   	push   %ebp
80100cc6:	89 e5                	mov    %esp,%ebp
80100cc8:	53                   	push   %ebx
80100cc9:	83 ec 10             	sub    $0x10,%esp
80100ccc:	8b 5d 08             	mov    0x8(%ebp),%ebx
80100ccf:	68 60 ef 10 80       	push   $0x8010ef60
80100cd4:	e8 18 30 00 00       	call   80103cf1 <acquire>
80100cd9:	8b 43 04             	mov    0x4(%ebx),%eax
80100cdc:	83 c4 10             	add    $0x10,%esp
80100cdf:	85 c0                	test   %eax,%eax
80100ce1:	7e 1a                	jle    80100cfd <filedup+0x3c>
80100ce3:	83 c0 01             	add    $0x1,%eax
80100ce6:	89 43 04             	mov    %eax,0x4(%ebx)
80100ce9:	83 ec 0c             	sub    $0xc,%esp
80100cec:	68 60 ef 10 80       	push   $0x8010ef60
80100cf1:	e8 64 30 00 00       	call   80103d5a <release>
80100cf6:	89 d8                	mov    %ebx,%eax
80100cf8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80100cfb:	c9                   	leave  
80100cfc:	c3                   	ret    
80100cfd:	83 ec 0c             	sub    $0xc,%esp
80100d00:	68 74 68 10 80       	push   $0x80106874
80100d05:	e8 52 f6 ff ff       	call   8010035c <panic>

80100d0a <fileclose>:
80100d0a:	f3 0f 1e fb          	endbr32 
80100d0e:	55                   	push   %ebp
80100d0f:	89 e5                	mov    %esp,%ebp
80100d11:	53                   	push   %ebx
80100d12:	83 ec 30             	sub    $0x30,%esp
80100d15:	8b 5d 08             	mov    0x8(%ebp),%ebx
80100d18:	68 60 ef 10 80       	push   $0x8010ef60
80100d1d:	e8 cf 2f 00 00       	call   80103cf1 <acquire>
80100d22:	8b 43 04             	mov    0x4(%ebx),%eax
80100d25:	83 c4 10             	add    $0x10,%esp
80100d28:	85 c0                	test   %eax,%eax
80100d2a:	7e 71                	jle    80100d9d <fileclose+0x93>
80100d2c:	83 e8 01             	sub    $0x1,%eax
80100d2f:	89 43 04             	mov    %eax,0x4(%ebx)
80100d32:	85 c0                	test   %eax,%eax
80100d34:	7f 74                	jg     80100daa <fileclose+0xa0>
80100d36:	8b 03                	mov    (%ebx),%eax
80100d38:	89 45 e0             	mov    %eax,-0x20(%ebp)
80100d3b:	8b 43 04             	mov    0x4(%ebx),%eax
80100d3e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
80100d41:	8b 43 08             	mov    0x8(%ebx),%eax
80100d44:	89 45 e8             	mov    %eax,-0x18(%ebp)
80100d47:	8b 43 0c             	mov    0xc(%ebx),%eax
80100d4a:	89 45 ec             	mov    %eax,-0x14(%ebp)
80100d4d:	8b 43 10             	mov    0x10(%ebx),%eax
80100d50:	89 45 f0             	mov    %eax,-0x10(%ebp)
80100d53:	8b 43 14             	mov    0x14(%ebx),%eax
80100d56:	89 45 f4             	mov    %eax,-0xc(%ebp)
80100d59:	c7 43 04 00 00 00 00 	movl   $0x0,0x4(%ebx)
80100d60:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
80100d66:	83 ec 0c             	sub    $0xc,%esp
80100d69:	68 60 ef 10 80       	push   $0x8010ef60
80100d6e:	e8 e7 2f 00 00       	call   80103d5a <release>
80100d73:	8b 45 e0             	mov    -0x20(%ebp),%eax
80100d76:	83 c4 10             	add    $0x10,%esp
80100d79:	83 f8 01             	cmp    $0x1,%eax
80100d7c:	74 41                	je     80100dbf <fileclose+0xb5>
80100d7e:	83 f8 02             	cmp    $0x2,%eax
80100d81:	75 37                	jne    80100dba <fileclose+0xb0>
80100d83:	e8 fd 1a 00 00       	call   80102885 <begin_op>
80100d88:	83 ec 0c             	sub    $0xc,%esp
80100d8b:	ff 75 f0             	push   -0x10(%ebp)
80100d8e:	e8 73 09 00 00       	call   80101706 <iput>
80100d93:	e8 6b 1b 00 00       	call   80102903 <end_op>
80100d98:	83 c4 10             	add    $0x10,%esp
80100d9b:	eb 1d                	jmp    80100dba <fileclose+0xb0>
80100d9d:	83 ec 0c             	sub    $0xc,%esp
80100da0:	68 7c 68 10 80       	push   $0x8010687c
80100da5:	e8 b2 f5 ff ff       	call   8010035c <panic>
80100daa:	83 ec 0c             	sub    $0xc,%esp
80100dad:	68 60 ef 10 80       	push   $0x8010ef60
80100db2:	e8 a3 2f 00 00       	call   80103d5a <release>
80100db7:	83 c4 10             	add    $0x10,%esp
80100dba:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80100dbd:	c9                   	leave  
80100dbe:	c3                   	ret    
80100dbf:	83 ec 08             	sub    $0x8,%esp
80100dc2:	0f be 45 e9          	movsbl -0x17(%ebp),%eax
80100dc6:	50                   	push   %eax
80100dc7:	ff 75 ec             	push   -0x14(%ebp)
80100dca:	e8 4b 21 00 00       	call   80102f1a <pipeclose>
80100dcf:	83 c4 10             	add    $0x10,%esp
80100dd2:	eb e6                	jmp    80100dba <fileclose+0xb0>

80100dd4 <filestat>:
80100dd4:	f3 0f 1e fb          	endbr32 
80100dd8:	55                   	push   %ebp
80100dd9:	89 e5                	mov    %esp,%ebp
80100ddb:	53                   	push   %ebx
80100ddc:	83 ec 04             	sub    $0x4,%esp
80100ddf:	8b 5d 08             	mov    0x8(%ebp),%ebx
80100de2:	83 3b 02             	cmpl   $0x2,(%ebx)
80100de5:	75 31                	jne    80100e18 <filestat+0x44>
80100de7:	83 ec 0c             	sub    $0xc,%esp
80100dea:	ff 73 10             	push   0x10(%ebx)
80100ded:	e8 05 08 00 00       	call   801015f7 <ilock>
80100df2:	83 c4 08             	add    $0x8,%esp
80100df5:	ff 75 0c             	push   0xc(%ebp)
80100df8:	ff 73 10             	push   0x10(%ebx)
80100dfb:	e8 ce 09 00 00       	call   801017ce <stati>
80100e00:	83 c4 04             	add    $0x4,%esp
80100e03:	ff 73 10             	push   0x10(%ebx)
80100e06:	e8 b2 08 00 00       	call   801016bd <iunlock>
80100e0b:	83 c4 10             	add    $0x10,%esp
80100e0e:	b8 00 00 00 00       	mov    $0x0,%eax
80100e13:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80100e16:	c9                   	leave  
80100e17:	c3                   	ret    
80100e18:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80100e1d:	eb f4                	jmp    80100e13 <filestat+0x3f>

80100e1f <fileread>:
80100e1f:	f3 0f 1e fb          	endbr32 
80100e23:	55                   	push   %ebp
80100e24:	89 e5                	mov    %esp,%ebp
80100e26:	56                   	push   %esi
80100e27:	53                   	push   %ebx
80100e28:	8b 5d 08             	mov    0x8(%ebp),%ebx
80100e2b:	80 7b 08 00          	cmpb   $0x0,0x8(%ebx)
80100e2f:	74 70                	je     80100ea1 <fileread+0x82>
80100e31:	8b 03                	mov    (%ebx),%eax
80100e33:	83 f8 01             	cmp    $0x1,%eax
80100e36:	74 44                	je     80100e7c <fileread+0x5d>
80100e38:	83 f8 02             	cmp    $0x2,%eax
80100e3b:	75 57                	jne    80100e94 <fileread+0x75>
80100e3d:	83 ec 0c             	sub    $0xc,%esp
80100e40:	ff 73 10             	push   0x10(%ebx)
80100e43:	e8 af 07 00 00       	call   801015f7 <ilock>
80100e48:	ff 75 10             	push   0x10(%ebp)
80100e4b:	ff 73 14             	push   0x14(%ebx)
80100e4e:	ff 75 0c             	push   0xc(%ebp)
80100e51:	ff 73 10             	push   0x10(%ebx)
80100e54:	e8 a4 09 00 00       	call   801017fd <readi>
80100e59:	89 c6                	mov    %eax,%esi
80100e5b:	83 c4 20             	add    $0x20,%esp
80100e5e:	85 c0                	test   %eax,%eax
80100e60:	7e 03                	jle    80100e65 <fileread+0x46>
80100e62:	01 43 14             	add    %eax,0x14(%ebx)
80100e65:	83 ec 0c             	sub    $0xc,%esp
80100e68:	ff 73 10             	push   0x10(%ebx)
80100e6b:	e8 4d 08 00 00       	call   801016bd <iunlock>
80100e70:	83 c4 10             	add    $0x10,%esp
80100e73:	89 f0                	mov    %esi,%eax
80100e75:	8d 65 f8             	lea    -0x8(%ebp),%esp
80100e78:	5b                   	pop    %ebx
80100e79:	5e                   	pop    %esi
80100e7a:	5d                   	pop    %ebp
80100e7b:	c3                   	ret    
80100e7c:	83 ec 04             	sub    $0x4,%esp
80100e7f:	ff 75 10             	push   0x10(%ebp)
80100e82:	ff 75 0c             	push   0xc(%ebp)
80100e85:	ff 73 0c             	push   0xc(%ebx)
80100e88:	e8 e6 21 00 00       	call   80103073 <piperead>
80100e8d:	89 c6                	mov    %eax,%esi
80100e8f:	83 c4 10             	add    $0x10,%esp
80100e92:	eb df                	jmp    80100e73 <fileread+0x54>
80100e94:	83 ec 0c             	sub    $0xc,%esp
80100e97:	68 86 68 10 80       	push   $0x80106886
80100e9c:	e8 bb f4 ff ff       	call   8010035c <panic>
80100ea1:	be ff ff ff ff       	mov    $0xffffffff,%esi
80100ea6:	eb cb                	jmp    80100e73 <fileread+0x54>

80100ea8 <filewrite>:
80100ea8:	f3 0f 1e fb          	endbr32 
80100eac:	55                   	push   %ebp
80100ead:	89 e5                	mov    %esp,%ebp
80100eaf:	57                   	push   %edi
80100eb0:	56                   	push   %esi
80100eb1:	53                   	push   %ebx
80100eb2:	83 ec 1c             	sub    $0x1c,%esp
80100eb5:	8b 75 08             	mov    0x8(%ebp),%esi
80100eb8:	80 7e 09 00          	cmpb   $0x0,0x9(%esi)
80100ebc:	0f 84 d0 00 00 00    	je     80100f92 <filewrite+0xea>
80100ec2:	8b 06                	mov    (%esi),%eax
80100ec4:	83 f8 01             	cmp    $0x1,%eax
80100ec7:	74 12                	je     80100edb <filewrite+0x33>
80100ec9:	83 f8 02             	cmp    $0x2,%eax
80100ecc:	0f 85 b3 00 00 00    	jne    80100f85 <filewrite+0xdd>
80100ed2:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
80100ed9:	eb 66                	jmp    80100f41 <filewrite+0x99>
80100edb:	83 ec 04             	sub    $0x4,%esp
80100ede:	ff 75 10             	push   0x10(%ebp)
80100ee1:	ff 75 0c             	push   0xc(%ebp)
80100ee4:	ff 76 0c             	push   0xc(%esi)
80100ee7:	e8 be 20 00 00       	call   80102faa <pipewrite>
80100eec:	83 c4 10             	add    $0x10,%esp
80100eef:	e9 84 00 00 00       	jmp    80100f78 <filewrite+0xd0>
80100ef4:	e8 8c 19 00 00       	call   80102885 <begin_op>
80100ef9:	83 ec 0c             	sub    $0xc,%esp
80100efc:	ff 76 10             	push   0x10(%esi)
80100eff:	e8 f3 06 00 00       	call   801015f7 <ilock>
80100f04:	57                   	push   %edi
80100f05:	ff 76 14             	push   0x14(%esi)
80100f08:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80100f0b:	03 45 0c             	add    0xc(%ebp),%eax
80100f0e:	50                   	push   %eax
80100f0f:	ff 76 10             	push   0x10(%esi)
80100f12:	e8 e7 09 00 00       	call   801018fe <writei>
80100f17:	89 c3                	mov    %eax,%ebx
80100f19:	83 c4 20             	add    $0x20,%esp
80100f1c:	85 c0                	test   %eax,%eax
80100f1e:	7e 03                	jle    80100f23 <filewrite+0x7b>
80100f20:	01 46 14             	add    %eax,0x14(%esi)
80100f23:	83 ec 0c             	sub    $0xc,%esp
80100f26:	ff 76 10             	push   0x10(%esi)
80100f29:	e8 8f 07 00 00       	call   801016bd <iunlock>
80100f2e:	e8 d0 19 00 00       	call   80102903 <end_op>
80100f33:	83 c4 10             	add    $0x10,%esp
80100f36:	85 db                	test   %ebx,%ebx
80100f38:	78 31                	js     80100f6b <filewrite+0xc3>
80100f3a:	39 df                	cmp    %ebx,%edi
80100f3c:	75 20                	jne    80100f5e <filewrite+0xb6>
80100f3e:	01 5d e4             	add    %ebx,-0x1c(%ebp)
80100f41:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80100f44:	3b 45 10             	cmp    0x10(%ebp),%eax
80100f47:	7d 22                	jge    80100f6b <filewrite+0xc3>
80100f49:	8b 7d 10             	mov    0x10(%ebp),%edi
80100f4c:	2b 7d e4             	sub    -0x1c(%ebp),%edi
80100f4f:	81 ff 00 06 00 00    	cmp    $0x600,%edi
80100f55:	7e 9d                	jle    80100ef4 <filewrite+0x4c>
80100f57:	bf 00 06 00 00       	mov    $0x600,%edi
80100f5c:	eb 96                	jmp    80100ef4 <filewrite+0x4c>
80100f5e:	83 ec 0c             	sub    $0xc,%esp
80100f61:	68 8f 68 10 80       	push   $0x8010688f
80100f66:	e8 f1 f3 ff ff       	call   8010035c <panic>
80100f6b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80100f6e:	3b 45 10             	cmp    0x10(%ebp),%eax
80100f71:	74 0d                	je     80100f80 <filewrite+0xd8>
80100f73:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80100f78:	8d 65 f4             	lea    -0xc(%ebp),%esp
80100f7b:	5b                   	pop    %ebx
80100f7c:	5e                   	pop    %esi
80100f7d:	5f                   	pop    %edi
80100f7e:	5d                   	pop    %ebp
80100f7f:	c3                   	ret    
80100f80:	8b 45 10             	mov    0x10(%ebp),%eax
80100f83:	eb f3                	jmp    80100f78 <filewrite+0xd0>
80100f85:	83 ec 0c             	sub    $0xc,%esp
80100f88:	68 95 68 10 80       	push   $0x80106895
80100f8d:	e8 ca f3 ff ff       	call   8010035c <panic>
80100f92:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80100f97:	eb df                	jmp    80100f78 <filewrite+0xd0>

80100f99 <skipelem>:
80100f99:	55                   	push   %ebp
80100f9a:	89 e5                	mov    %esp,%ebp
80100f9c:	57                   	push   %edi
80100f9d:	56                   	push   %esi
80100f9e:	53                   	push   %ebx
80100f9f:	83 ec 0c             	sub    $0xc,%esp
80100fa2:	89 d6                	mov    %edx,%esi
80100fa4:	eb 03                	jmp    80100fa9 <skipelem+0x10>
80100fa6:	83 c0 01             	add    $0x1,%eax
80100fa9:	0f b6 10             	movzbl (%eax),%edx
80100fac:	80 fa 2f             	cmp    $0x2f,%dl
80100faf:	74 f5                	je     80100fa6 <skipelem+0xd>
80100fb1:	84 d2                	test   %dl,%dl
80100fb3:	74 59                	je     8010100e <skipelem+0x75>
80100fb5:	89 c3                	mov    %eax,%ebx
80100fb7:	eb 03                	jmp    80100fbc <skipelem+0x23>
80100fb9:	83 c3 01             	add    $0x1,%ebx
80100fbc:	0f b6 13             	movzbl (%ebx),%edx
80100fbf:	80 fa 2f             	cmp    $0x2f,%dl
80100fc2:	0f 95 c1             	setne  %cl
80100fc5:	84 d2                	test   %dl,%dl
80100fc7:	0f 95 c2             	setne  %dl
80100fca:	84 d1                	test   %dl,%cl
80100fcc:	75 eb                	jne    80100fb9 <skipelem+0x20>
80100fce:	89 df                	mov    %ebx,%edi
80100fd0:	29 c7                	sub    %eax,%edi
80100fd2:	83 ff 0d             	cmp    $0xd,%edi
80100fd5:	7e 11                	jle    80100fe8 <skipelem+0x4f>
80100fd7:	83 ec 04             	sub    $0x4,%esp
80100fda:	6a 0e                	push   $0xe
80100fdc:	50                   	push   %eax
80100fdd:	56                   	push   %esi
80100fde:	e8 42 2e 00 00       	call   80103e25 <memmove>
80100fe3:	83 c4 10             	add    $0x10,%esp
80100fe6:	eb 17                	jmp    80100fff <skipelem+0x66>
80100fe8:	83 ec 04             	sub    $0x4,%esp
80100feb:	57                   	push   %edi
80100fec:	50                   	push   %eax
80100fed:	56                   	push   %esi
80100fee:	e8 32 2e 00 00       	call   80103e25 <memmove>
80100ff3:	c6 04 3e 00          	movb   $0x0,(%esi,%edi,1)
80100ff7:	83 c4 10             	add    $0x10,%esp
80100ffa:	eb 03                	jmp    80100fff <skipelem+0x66>
80100ffc:	83 c3 01             	add    $0x1,%ebx
80100fff:	80 3b 2f             	cmpb   $0x2f,(%ebx)
80101002:	74 f8                	je     80100ffc <skipelem+0x63>
80101004:	89 d8                	mov    %ebx,%eax
80101006:	8d 65 f4             	lea    -0xc(%ebp),%esp
80101009:	5b                   	pop    %ebx
8010100a:	5e                   	pop    %esi
8010100b:	5f                   	pop    %edi
8010100c:	5d                   	pop    %ebp
8010100d:	c3                   	ret    
8010100e:	bb 00 00 00 00       	mov    $0x0,%ebx
80101013:	eb ef                	jmp    80101004 <skipelem+0x6b>

80101015 <bzero>:
80101015:	55                   	push   %ebp
80101016:	89 e5                	mov    %esp,%ebp
80101018:	53                   	push   %ebx
80101019:	83 ec 0c             	sub    $0xc,%esp
8010101c:	52                   	push   %edx
8010101d:	50                   	push   %eax
8010101e:	e8 4d f1 ff ff       	call   80100170 <bread>
80101023:	89 c3                	mov    %eax,%ebx
80101025:	8d 40 5c             	lea    0x5c(%eax),%eax
80101028:	83 c4 0c             	add    $0xc,%esp
8010102b:	68 00 02 00 00       	push   $0x200
80101030:	6a 00                	push   $0x0
80101032:	50                   	push   %eax
80101033:	e8 6d 2d 00 00       	call   80103da5 <memset>
80101038:	89 1c 24             	mov    %ebx,(%esp)
8010103b:	e8 76 19 00 00       	call   801029b6 <log_write>
80101040:	89 1c 24             	mov    %ebx,(%esp)
80101043:	e8 99 f1 ff ff       	call   801001e1 <brelse>
80101048:	83 c4 10             	add    $0x10,%esp
8010104b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
8010104e:	c9                   	leave  
8010104f:	c3                   	ret    

80101050 <balloc>:
80101050:	55                   	push   %ebp
80101051:	89 e5                	mov    %esp,%ebp
80101053:	57                   	push   %edi
80101054:	56                   	push   %esi
80101055:	53                   	push   %ebx
80101056:	83 ec 1c             	sub    $0x1c,%esp
80101059:	89 45 d8             	mov    %eax,-0x28(%ebp)
8010105c:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
80101063:	eb 15                	jmp    8010107a <balloc+0x2a>
80101065:	83 ec 0c             	sub    $0xc,%esp
80101068:	ff 75 e0             	push   -0x20(%ebp)
8010106b:	e8 71 f1 ff ff       	call   801001e1 <brelse>
80101070:	81 45 e4 00 10 00 00 	addl   $0x1000,-0x1c(%ebp)
80101077:	83 c4 10             	add    $0x10,%esp
8010107a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
8010107d:	39 05 b4 15 11 80    	cmp    %eax,0x801115b4
80101083:	76 7c                	jbe    80101101 <balloc+0xb1>
80101085:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
80101088:	8d 83 ff 0f 00 00    	lea    0xfff(%ebx),%eax
8010108e:	85 db                	test   %ebx,%ebx
80101090:	0f 49 c3             	cmovns %ebx,%eax
80101093:	c1 f8 0c             	sar    $0xc,%eax
80101096:	83 ec 08             	sub    $0x8,%esp
80101099:	03 05 cc 15 11 80    	add    0x801115cc,%eax
8010109f:	50                   	push   %eax
801010a0:	ff 75 d8             	push   -0x28(%ebp)
801010a3:	e8 c8 f0 ff ff       	call   80100170 <bread>
801010a8:	89 45 e0             	mov    %eax,-0x20(%ebp)
801010ab:	83 c4 10             	add    $0x10,%esp
801010ae:	b8 00 00 00 00       	mov    $0x0,%eax
801010b3:	3d ff 0f 00 00       	cmp    $0xfff,%eax
801010b8:	7f ab                	jg     80101065 <balloc+0x15>
801010ba:	8b 7d e4             	mov    -0x1c(%ebp),%edi
801010bd:	8d 1c 07             	lea    (%edi,%eax,1),%ebx
801010c0:	3b 1d b4 15 11 80    	cmp    0x801115b4,%ebx
801010c6:	73 9d                	jae    80101065 <balloc+0x15>
801010c8:	99                   	cltd   
801010c9:	c1 ea 1d             	shr    $0x1d,%edx
801010cc:	8d 0c 10             	lea    (%eax,%edx,1),%ecx
801010cf:	83 e1 07             	and    $0x7,%ecx
801010d2:	29 d1                	sub    %edx,%ecx
801010d4:	ba 01 00 00 00       	mov    $0x1,%edx
801010d9:	d3 e2                	shl    %cl,%edx
801010db:	89 d1                	mov    %edx,%ecx
801010dd:	8d 50 07             	lea    0x7(%eax),%edx
801010e0:	85 c0                	test   %eax,%eax
801010e2:	0f 49 d0             	cmovns %eax,%edx
801010e5:	c1 fa 03             	sar    $0x3,%edx
801010e8:	89 55 dc             	mov    %edx,-0x24(%ebp)
801010eb:	8b 75 e0             	mov    -0x20(%ebp),%esi
801010ee:	0f b6 74 16 5c       	movzbl 0x5c(%esi,%edx,1),%esi
801010f3:	89 f2                	mov    %esi,%edx
801010f5:	0f b6 fa             	movzbl %dl,%edi
801010f8:	85 cf                	test   %ecx,%edi
801010fa:	74 12                	je     8010110e <balloc+0xbe>
801010fc:	83 c0 01             	add    $0x1,%eax
801010ff:	eb b2                	jmp    801010b3 <balloc+0x63>
80101101:	83 ec 0c             	sub    $0xc,%esp
80101104:	68 9f 68 10 80       	push   $0x8010689f
80101109:	e8 4e f2 ff ff       	call   8010035c <panic>
8010110e:	8b 55 dc             	mov    -0x24(%ebp),%edx
80101111:	09 f1                	or     %esi,%ecx
80101113:	8b 7d e0             	mov    -0x20(%ebp),%edi
80101116:	88 4c 17 5c          	mov    %cl,0x5c(%edi,%edx,1)
8010111a:	83 ec 0c             	sub    $0xc,%esp
8010111d:	57                   	push   %edi
8010111e:	e8 93 18 00 00       	call   801029b6 <log_write>
80101123:	89 3c 24             	mov    %edi,(%esp)
80101126:	e8 b6 f0 ff ff       	call   801001e1 <brelse>
8010112b:	89 da                	mov    %ebx,%edx
8010112d:	8b 45 d8             	mov    -0x28(%ebp),%eax
80101130:	e8 e0 fe ff ff       	call   80101015 <bzero>
80101135:	89 d8                	mov    %ebx,%eax
80101137:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010113a:	5b                   	pop    %ebx
8010113b:	5e                   	pop    %esi
8010113c:	5f                   	pop    %edi
8010113d:	5d                   	pop    %ebp
8010113e:	c3                   	ret    

8010113f <bmap>:
8010113f:	55                   	push   %ebp
80101140:	89 e5                	mov    %esp,%ebp
80101142:	57                   	push   %edi
80101143:	56                   	push   %esi
80101144:	53                   	push   %ebx
80101145:	83 ec 1c             	sub    $0x1c,%esp
80101148:	89 c3                	mov    %eax,%ebx
8010114a:	89 d7                	mov    %edx,%edi
8010114c:	83 fa 0b             	cmp    $0xb,%edx
8010114f:	76 45                	jbe    80101196 <bmap+0x57>
80101151:	8d 72 f4             	lea    -0xc(%edx),%esi
80101154:	83 fe 7f             	cmp    $0x7f,%esi
80101157:	77 7f                	ja     801011d8 <bmap+0x99>
80101159:	8b 80 8c 00 00 00    	mov    0x8c(%eax),%eax
8010115f:	85 c0                	test   %eax,%eax
80101161:	74 4a                	je     801011ad <bmap+0x6e>
80101163:	83 ec 08             	sub    $0x8,%esp
80101166:	50                   	push   %eax
80101167:	ff 33                	push   (%ebx)
80101169:	e8 02 f0 ff ff       	call   80100170 <bread>
8010116e:	89 c7                	mov    %eax,%edi
80101170:	8d 44 b0 5c          	lea    0x5c(%eax,%esi,4),%eax
80101174:	89 45 e4             	mov    %eax,-0x1c(%ebp)
80101177:	8b 30                	mov    (%eax),%esi
80101179:	83 c4 10             	add    $0x10,%esp
8010117c:	85 f6                	test   %esi,%esi
8010117e:	74 3c                	je     801011bc <bmap+0x7d>
80101180:	83 ec 0c             	sub    $0xc,%esp
80101183:	57                   	push   %edi
80101184:	e8 58 f0 ff ff       	call   801001e1 <brelse>
80101189:	83 c4 10             	add    $0x10,%esp
8010118c:	89 f0                	mov    %esi,%eax
8010118e:	8d 65 f4             	lea    -0xc(%ebp),%esp
80101191:	5b                   	pop    %ebx
80101192:	5e                   	pop    %esi
80101193:	5f                   	pop    %edi
80101194:	5d                   	pop    %ebp
80101195:	c3                   	ret    
80101196:	8b 74 90 5c          	mov    0x5c(%eax,%edx,4),%esi
8010119a:	85 f6                	test   %esi,%esi
8010119c:	75 ee                	jne    8010118c <bmap+0x4d>
8010119e:	8b 00                	mov    (%eax),%eax
801011a0:	e8 ab fe ff ff       	call   80101050 <balloc>
801011a5:	89 c6                	mov    %eax,%esi
801011a7:	89 44 bb 5c          	mov    %eax,0x5c(%ebx,%edi,4)
801011ab:	eb df                	jmp    8010118c <bmap+0x4d>
801011ad:	8b 03                	mov    (%ebx),%eax
801011af:	e8 9c fe ff ff       	call   80101050 <balloc>
801011b4:	89 83 8c 00 00 00    	mov    %eax,0x8c(%ebx)
801011ba:	eb a7                	jmp    80101163 <bmap+0x24>
801011bc:	8b 03                	mov    (%ebx),%eax
801011be:	e8 8d fe ff ff       	call   80101050 <balloc>
801011c3:	89 c6                	mov    %eax,%esi
801011c5:	8b 45 e4             	mov    -0x1c(%ebp),%eax
801011c8:	89 30                	mov    %esi,(%eax)
801011ca:	83 ec 0c             	sub    $0xc,%esp
801011cd:	57                   	push   %edi
801011ce:	e8 e3 17 00 00       	call   801029b6 <log_write>
801011d3:	83 c4 10             	add    $0x10,%esp
801011d6:	eb a8                	jmp    80101180 <bmap+0x41>
801011d8:	83 ec 0c             	sub    $0xc,%esp
801011db:	68 b5 68 10 80       	push   $0x801068b5
801011e0:	e8 77 f1 ff ff       	call   8010035c <panic>

801011e5 <iget>:
801011e5:	55                   	push   %ebp
801011e6:	89 e5                	mov    %esp,%ebp
801011e8:	57                   	push   %edi
801011e9:	56                   	push   %esi
801011ea:	53                   	push   %ebx
801011eb:	83 ec 28             	sub    $0x28,%esp
801011ee:	89 c7                	mov    %eax,%edi
801011f0:	89 55 e4             	mov    %edx,-0x1c(%ebp)
801011f3:	68 60 f9 10 80       	push   $0x8010f960
801011f8:	e8 f4 2a 00 00       	call   80103cf1 <acquire>
801011fd:	83 c4 10             	add    $0x10,%esp
80101200:	be 00 00 00 00       	mov    $0x0,%esi
80101205:	bb 94 f9 10 80       	mov    $0x8010f994,%ebx
8010120a:	eb 0a                	jmp    80101216 <iget+0x31>
8010120c:	85 f6                	test   %esi,%esi
8010120e:	74 3b                	je     8010124b <iget+0x66>
80101210:	81 c3 90 00 00 00    	add    $0x90,%ebx
80101216:	81 fb b4 15 11 80    	cmp    $0x801115b4,%ebx
8010121c:	73 35                	jae    80101253 <iget+0x6e>
8010121e:	8b 43 08             	mov    0x8(%ebx),%eax
80101221:	85 c0                	test   %eax,%eax
80101223:	7e e7                	jle    8010120c <iget+0x27>
80101225:	39 3b                	cmp    %edi,(%ebx)
80101227:	75 e3                	jne    8010120c <iget+0x27>
80101229:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
8010122c:	39 4b 04             	cmp    %ecx,0x4(%ebx)
8010122f:	75 db                	jne    8010120c <iget+0x27>
80101231:	83 c0 01             	add    $0x1,%eax
80101234:	89 43 08             	mov    %eax,0x8(%ebx)
80101237:	83 ec 0c             	sub    $0xc,%esp
8010123a:	68 60 f9 10 80       	push   $0x8010f960
8010123f:	e8 16 2b 00 00       	call   80103d5a <release>
80101244:	83 c4 10             	add    $0x10,%esp
80101247:	89 de                	mov    %ebx,%esi
80101249:	eb 32                	jmp    8010127d <iget+0x98>
8010124b:	85 c0                	test   %eax,%eax
8010124d:	75 c1                	jne    80101210 <iget+0x2b>
8010124f:	89 de                	mov    %ebx,%esi
80101251:	eb bd                	jmp    80101210 <iget+0x2b>
80101253:	85 f6                	test   %esi,%esi
80101255:	74 30                	je     80101287 <iget+0xa2>
80101257:	89 3e                	mov    %edi,(%esi)
80101259:	8b 45 e4             	mov    -0x1c(%ebp),%eax
8010125c:	89 46 04             	mov    %eax,0x4(%esi)
8010125f:	c7 46 08 01 00 00 00 	movl   $0x1,0x8(%esi)
80101266:	c7 46 4c 00 00 00 00 	movl   $0x0,0x4c(%esi)
8010126d:	83 ec 0c             	sub    $0xc,%esp
80101270:	68 60 f9 10 80       	push   $0x8010f960
80101275:	e8 e0 2a 00 00       	call   80103d5a <release>
8010127a:	83 c4 10             	add    $0x10,%esp
8010127d:	89 f0                	mov    %esi,%eax
8010127f:	8d 65 f4             	lea    -0xc(%ebp),%esp
80101282:	5b                   	pop    %ebx
80101283:	5e                   	pop    %esi
80101284:	5f                   	pop    %edi
80101285:	5d                   	pop    %ebp
80101286:	c3                   	ret    
80101287:	83 ec 0c             	sub    $0xc,%esp
8010128a:	68 c8 68 10 80       	push   $0x801068c8
8010128f:	e8 c8 f0 ff ff       	call   8010035c <panic>

80101294 <readsb>:
80101294:	f3 0f 1e fb          	endbr32 
80101298:	55                   	push   %ebp
80101299:	89 e5                	mov    %esp,%ebp
8010129b:	53                   	push   %ebx
8010129c:	83 ec 0c             	sub    $0xc,%esp
8010129f:	6a 01                	push   $0x1
801012a1:	ff 75 08             	push   0x8(%ebp)
801012a4:	e8 c7 ee ff ff       	call   80100170 <bread>
801012a9:	89 c3                	mov    %eax,%ebx
801012ab:	8d 40 5c             	lea    0x5c(%eax),%eax
801012ae:	83 c4 0c             	add    $0xc,%esp
801012b1:	6a 1c                	push   $0x1c
801012b3:	50                   	push   %eax
801012b4:	ff 75 0c             	push   0xc(%ebp)
801012b7:	e8 69 2b 00 00       	call   80103e25 <memmove>
801012bc:	89 1c 24             	mov    %ebx,(%esp)
801012bf:	e8 1d ef ff ff       	call   801001e1 <brelse>
801012c4:	83 c4 10             	add    $0x10,%esp
801012c7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801012ca:	c9                   	leave  
801012cb:	c3                   	ret    

801012cc <bfree>:
801012cc:	55                   	push   %ebp
801012cd:	89 e5                	mov    %esp,%ebp
801012cf:	57                   	push   %edi
801012d0:	56                   	push   %esi
801012d1:	53                   	push   %ebx
801012d2:	83 ec 14             	sub    $0x14,%esp
801012d5:	89 c3                	mov    %eax,%ebx
801012d7:	89 d6                	mov    %edx,%esi
801012d9:	68 b4 15 11 80       	push   $0x801115b4
801012de:	50                   	push   %eax
801012df:	e8 b0 ff ff ff       	call   80101294 <readsb>
801012e4:	89 f0                	mov    %esi,%eax
801012e6:	c1 e8 0c             	shr    $0xc,%eax
801012e9:	83 c4 08             	add    $0x8,%esp
801012ec:	03 05 cc 15 11 80    	add    0x801115cc,%eax
801012f2:	50                   	push   %eax
801012f3:	53                   	push   %ebx
801012f4:	e8 77 ee ff ff       	call   80100170 <bread>
801012f9:	89 c3                	mov    %eax,%ebx
801012fb:	89 f7                	mov    %esi,%edi
801012fd:	81 e7 ff 0f 00 00    	and    $0xfff,%edi
80101303:	89 f1                	mov    %esi,%ecx
80101305:	83 e1 07             	and    $0x7,%ecx
80101308:	b8 01 00 00 00       	mov    $0x1,%eax
8010130d:	d3 e0                	shl    %cl,%eax
8010130f:	83 c4 10             	add    $0x10,%esp
80101312:	c1 ff 03             	sar    $0x3,%edi
80101315:	0f b6 54 3b 5c       	movzbl 0x5c(%ebx,%edi,1),%edx
8010131a:	0f b6 ca             	movzbl %dl,%ecx
8010131d:	85 c1                	test   %eax,%ecx
8010131f:	74 24                	je     80101345 <bfree+0x79>
80101321:	f7 d0                	not    %eax
80101323:	21 d0                	and    %edx,%eax
80101325:	88 44 3b 5c          	mov    %al,0x5c(%ebx,%edi,1)
80101329:	83 ec 0c             	sub    $0xc,%esp
8010132c:	53                   	push   %ebx
8010132d:	e8 84 16 00 00       	call   801029b6 <log_write>
80101332:	89 1c 24             	mov    %ebx,(%esp)
80101335:	e8 a7 ee ff ff       	call   801001e1 <brelse>
8010133a:	83 c4 10             	add    $0x10,%esp
8010133d:	8d 65 f4             	lea    -0xc(%ebp),%esp
80101340:	5b                   	pop    %ebx
80101341:	5e                   	pop    %esi
80101342:	5f                   	pop    %edi
80101343:	5d                   	pop    %ebp
80101344:	c3                   	ret    
80101345:	83 ec 0c             	sub    $0xc,%esp
80101348:	68 d8 68 10 80       	push   $0x801068d8
8010134d:	e8 0a f0 ff ff       	call   8010035c <panic>

80101352 <iinit>:
80101352:	f3 0f 1e fb          	endbr32 
80101356:	55                   	push   %ebp
80101357:	89 e5                	mov    %esp,%ebp
80101359:	53                   	push   %ebx
8010135a:	83 ec 0c             	sub    $0xc,%esp
8010135d:	68 eb 68 10 80       	push   $0x801068eb
80101362:	68 60 f9 10 80       	push   $0x8010f960
80101367:	e8 35 28 00 00       	call   80103ba1 <initlock>
8010136c:	83 c4 10             	add    $0x10,%esp
8010136f:	bb 00 00 00 00       	mov    $0x0,%ebx
80101374:	eb 21                	jmp    80101397 <iinit+0x45>
80101376:	83 ec 08             	sub    $0x8,%esp
80101379:	68 f2 68 10 80       	push   $0x801068f2
8010137e:	8d 14 db             	lea    (%ebx,%ebx,8),%edx
80101381:	89 d0                	mov    %edx,%eax
80101383:	c1 e0 04             	shl    $0x4,%eax
80101386:	05 a0 f9 10 80       	add    $0x8010f9a0,%eax
8010138b:	50                   	push   %eax
8010138c:	e8 f5 26 00 00       	call   80103a86 <initsleeplock>
80101391:	83 c3 01             	add    $0x1,%ebx
80101394:	83 c4 10             	add    $0x10,%esp
80101397:	83 fb 31             	cmp    $0x31,%ebx
8010139a:	7e da                	jle    80101376 <iinit+0x24>
8010139c:	83 ec 08             	sub    $0x8,%esp
8010139f:	68 b4 15 11 80       	push   $0x801115b4
801013a4:	ff 75 08             	push   0x8(%ebp)
801013a7:	e8 e8 fe ff ff       	call   80101294 <readsb>
801013ac:	ff 35 cc 15 11 80    	push   0x801115cc
801013b2:	ff 35 c8 15 11 80    	push   0x801115c8
801013b8:	ff 35 c4 15 11 80    	push   0x801115c4
801013be:	ff 35 c0 15 11 80    	push   0x801115c0
801013c4:	ff 35 bc 15 11 80    	push   0x801115bc
801013ca:	ff 35 b8 15 11 80    	push   0x801115b8
801013d0:	ff 35 b4 15 11 80    	push   0x801115b4
801013d6:	68 58 69 10 80       	push   $0x80106958
801013db:	e8 45 f2 ff ff       	call   80100625 <cprintf>
801013e0:	83 c4 30             	add    $0x30,%esp
801013e3:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801013e6:	c9                   	leave  
801013e7:	c3                   	ret    

801013e8 <ialloc>:
801013e8:	f3 0f 1e fb          	endbr32 
801013ec:	55                   	push   %ebp
801013ed:	89 e5                	mov    %esp,%ebp
801013ef:	57                   	push   %edi
801013f0:	56                   	push   %esi
801013f1:	53                   	push   %ebx
801013f2:	83 ec 1c             	sub    $0x1c,%esp
801013f5:	8b 45 0c             	mov    0xc(%ebp),%eax
801013f8:	89 45 e0             	mov    %eax,-0x20(%ebp)
801013fb:	bb 01 00 00 00       	mov    $0x1,%ebx
80101400:	89 5d e4             	mov    %ebx,-0x1c(%ebp)
80101403:	39 1d bc 15 11 80    	cmp    %ebx,0x801115bc
80101409:	76 3f                	jbe    8010144a <ialloc+0x62>
8010140b:	89 d8                	mov    %ebx,%eax
8010140d:	c1 e8 03             	shr    $0x3,%eax
80101410:	83 ec 08             	sub    $0x8,%esp
80101413:	03 05 c8 15 11 80    	add    0x801115c8,%eax
80101419:	50                   	push   %eax
8010141a:	ff 75 08             	push   0x8(%ebp)
8010141d:	e8 4e ed ff ff       	call   80100170 <bread>
80101422:	89 c6                	mov    %eax,%esi
80101424:	89 d8                	mov    %ebx,%eax
80101426:	83 e0 07             	and    $0x7,%eax
80101429:	c1 e0 06             	shl    $0x6,%eax
8010142c:	8d 7c 06 5c          	lea    0x5c(%esi,%eax,1),%edi
80101430:	83 c4 10             	add    $0x10,%esp
80101433:	66 83 3f 00          	cmpw   $0x0,(%edi)
80101437:	74 1e                	je     80101457 <ialloc+0x6f>
80101439:	83 ec 0c             	sub    $0xc,%esp
8010143c:	56                   	push   %esi
8010143d:	e8 9f ed ff ff       	call   801001e1 <brelse>
80101442:	83 c3 01             	add    $0x1,%ebx
80101445:	83 c4 10             	add    $0x10,%esp
80101448:	eb b6                	jmp    80101400 <ialloc+0x18>
8010144a:	83 ec 0c             	sub    $0xc,%esp
8010144d:	68 f8 68 10 80       	push   $0x801068f8
80101452:	e8 05 ef ff ff       	call   8010035c <panic>
80101457:	83 ec 04             	sub    $0x4,%esp
8010145a:	6a 40                	push   $0x40
8010145c:	6a 00                	push   $0x0
8010145e:	57                   	push   %edi
8010145f:	e8 41 29 00 00       	call   80103da5 <memset>
80101464:	0f b7 45 e0          	movzwl -0x20(%ebp),%eax
80101468:	66 89 07             	mov    %ax,(%edi)
8010146b:	89 34 24             	mov    %esi,(%esp)
8010146e:	e8 43 15 00 00       	call   801029b6 <log_write>
80101473:	89 34 24             	mov    %esi,(%esp)
80101476:	e8 66 ed ff ff       	call   801001e1 <brelse>
8010147b:	8b 55 e4             	mov    -0x1c(%ebp),%edx
8010147e:	8b 45 08             	mov    0x8(%ebp),%eax
80101481:	e8 5f fd ff ff       	call   801011e5 <iget>
80101486:	8d 65 f4             	lea    -0xc(%ebp),%esp
80101489:	5b                   	pop    %ebx
8010148a:	5e                   	pop    %esi
8010148b:	5f                   	pop    %edi
8010148c:	5d                   	pop    %ebp
8010148d:	c3                   	ret    

8010148e <iupdate>:
8010148e:	f3 0f 1e fb          	endbr32 
80101492:	55                   	push   %ebp
80101493:	89 e5                	mov    %esp,%ebp
80101495:	56                   	push   %esi
80101496:	53                   	push   %ebx
80101497:	8b 5d 08             	mov    0x8(%ebp),%ebx
8010149a:	8b 43 04             	mov    0x4(%ebx),%eax
8010149d:	c1 e8 03             	shr    $0x3,%eax
801014a0:	83 ec 08             	sub    $0x8,%esp
801014a3:	03 05 c8 15 11 80    	add    0x801115c8,%eax
801014a9:	50                   	push   %eax
801014aa:	ff 33                	push   (%ebx)
801014ac:	e8 bf ec ff ff       	call   80100170 <bread>
801014b1:	89 c6                	mov    %eax,%esi
801014b3:	8b 43 04             	mov    0x4(%ebx),%eax
801014b6:	83 e0 07             	and    $0x7,%eax
801014b9:	c1 e0 06             	shl    $0x6,%eax
801014bc:	8d 44 06 5c          	lea    0x5c(%esi,%eax,1),%eax
801014c0:	0f b7 53 50          	movzwl 0x50(%ebx),%edx
801014c4:	66 89 10             	mov    %dx,(%eax)
801014c7:	0f b7 53 52          	movzwl 0x52(%ebx),%edx
801014cb:	66 89 50 02          	mov    %dx,0x2(%eax)
801014cf:	0f b7 53 54          	movzwl 0x54(%ebx),%edx
801014d3:	66 89 50 04          	mov    %dx,0x4(%eax)
801014d7:	0f b7 53 56          	movzwl 0x56(%ebx),%edx
801014db:	66 89 50 06          	mov    %dx,0x6(%eax)
801014df:	8b 53 58             	mov    0x58(%ebx),%edx
801014e2:	89 50 08             	mov    %edx,0x8(%eax)
801014e5:	83 c3 5c             	add    $0x5c,%ebx
801014e8:	83 c0 0c             	add    $0xc,%eax
801014eb:	83 c4 0c             	add    $0xc,%esp
801014ee:	6a 34                	push   $0x34
801014f0:	53                   	push   %ebx
801014f1:	50                   	push   %eax
801014f2:	e8 2e 29 00 00       	call   80103e25 <memmove>
801014f7:	89 34 24             	mov    %esi,(%esp)
801014fa:	e8 b7 14 00 00       	call   801029b6 <log_write>
801014ff:	89 34 24             	mov    %esi,(%esp)
80101502:	e8 da ec ff ff       	call   801001e1 <brelse>
80101507:	83 c4 10             	add    $0x10,%esp
8010150a:	8d 65 f8             	lea    -0x8(%ebp),%esp
8010150d:	5b                   	pop    %ebx
8010150e:	5e                   	pop    %esi
8010150f:	5d                   	pop    %ebp
80101510:	c3                   	ret    

80101511 <itrunc>:
80101511:	55                   	push   %ebp
80101512:	89 e5                	mov    %esp,%ebp
80101514:	57                   	push   %edi
80101515:	56                   	push   %esi
80101516:	53                   	push   %ebx
80101517:	83 ec 1c             	sub    $0x1c,%esp
8010151a:	89 c6                	mov    %eax,%esi
8010151c:	bb 00 00 00 00       	mov    $0x0,%ebx
80101521:	eb 03                	jmp    80101526 <itrunc+0x15>
80101523:	83 c3 01             	add    $0x1,%ebx
80101526:	83 fb 0b             	cmp    $0xb,%ebx
80101529:	7f 19                	jg     80101544 <itrunc+0x33>
8010152b:	8b 54 9e 5c          	mov    0x5c(%esi,%ebx,4),%edx
8010152f:	85 d2                	test   %edx,%edx
80101531:	74 f0                	je     80101523 <itrunc+0x12>
80101533:	8b 06                	mov    (%esi),%eax
80101535:	e8 92 fd ff ff       	call   801012cc <bfree>
8010153a:	c7 44 9e 5c 00 00 00 	movl   $0x0,0x5c(%esi,%ebx,4)
80101541:	00 
80101542:	eb df                	jmp    80101523 <itrunc+0x12>
80101544:	8b 86 8c 00 00 00    	mov    0x8c(%esi),%eax
8010154a:	85 c0                	test   %eax,%eax
8010154c:	75 1b                	jne    80101569 <itrunc+0x58>
8010154e:	c7 46 58 00 00 00 00 	movl   $0x0,0x58(%esi)
80101555:	83 ec 0c             	sub    $0xc,%esp
80101558:	56                   	push   %esi
80101559:	e8 30 ff ff ff       	call   8010148e <iupdate>
8010155e:	83 c4 10             	add    $0x10,%esp
80101561:	8d 65 f4             	lea    -0xc(%ebp),%esp
80101564:	5b                   	pop    %ebx
80101565:	5e                   	pop    %esi
80101566:	5f                   	pop    %edi
80101567:	5d                   	pop    %ebp
80101568:	c3                   	ret    
80101569:	83 ec 08             	sub    $0x8,%esp
8010156c:	50                   	push   %eax
8010156d:	ff 36                	push   (%esi)
8010156f:	e8 fc eb ff ff       	call   80100170 <bread>
80101574:	89 45 e4             	mov    %eax,-0x1c(%ebp)
80101577:	8d 78 5c             	lea    0x5c(%eax),%edi
8010157a:	83 c4 10             	add    $0x10,%esp
8010157d:	bb 00 00 00 00       	mov    $0x0,%ebx
80101582:	eb 03                	jmp    80101587 <itrunc+0x76>
80101584:	83 c3 01             	add    $0x1,%ebx
80101587:	83 fb 7f             	cmp    $0x7f,%ebx
8010158a:	77 10                	ja     8010159c <itrunc+0x8b>
8010158c:	8b 14 9f             	mov    (%edi,%ebx,4),%edx
8010158f:	85 d2                	test   %edx,%edx
80101591:	74 f1                	je     80101584 <itrunc+0x73>
80101593:	8b 06                	mov    (%esi),%eax
80101595:	e8 32 fd ff ff       	call   801012cc <bfree>
8010159a:	eb e8                	jmp    80101584 <itrunc+0x73>
8010159c:	83 ec 0c             	sub    $0xc,%esp
8010159f:	ff 75 e4             	push   -0x1c(%ebp)
801015a2:	e8 3a ec ff ff       	call   801001e1 <brelse>
801015a7:	8b 06                	mov    (%esi),%eax
801015a9:	8b 96 8c 00 00 00    	mov    0x8c(%esi),%edx
801015af:	e8 18 fd ff ff       	call   801012cc <bfree>
801015b4:	c7 86 8c 00 00 00 00 	movl   $0x0,0x8c(%esi)
801015bb:	00 00 00 
801015be:	83 c4 10             	add    $0x10,%esp
801015c1:	eb 8b                	jmp    8010154e <itrunc+0x3d>

801015c3 <idup>:
801015c3:	f3 0f 1e fb          	endbr32 
801015c7:	55                   	push   %ebp
801015c8:	89 e5                	mov    %esp,%ebp
801015ca:	53                   	push   %ebx
801015cb:	83 ec 10             	sub    $0x10,%esp
801015ce:	8b 5d 08             	mov    0x8(%ebp),%ebx
801015d1:	68 60 f9 10 80       	push   $0x8010f960
801015d6:	e8 16 27 00 00       	call   80103cf1 <acquire>
801015db:	8b 43 08             	mov    0x8(%ebx),%eax
801015de:	83 c0 01             	add    $0x1,%eax
801015e1:	89 43 08             	mov    %eax,0x8(%ebx)
801015e4:	c7 04 24 60 f9 10 80 	movl   $0x8010f960,(%esp)
801015eb:	e8 6a 27 00 00       	call   80103d5a <release>
801015f0:	89 d8                	mov    %ebx,%eax
801015f2:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801015f5:	c9                   	leave  
801015f6:	c3                   	ret    

801015f7 <ilock>:
801015f7:	f3 0f 1e fb          	endbr32 
801015fb:	55                   	push   %ebp
801015fc:	89 e5                	mov    %esp,%ebp
801015fe:	56                   	push   %esi
801015ff:	53                   	push   %ebx
80101600:	8b 5d 08             	mov    0x8(%ebp),%ebx
80101603:	85 db                	test   %ebx,%ebx
80101605:	74 22                	je     80101629 <ilock+0x32>
80101607:	83 7b 08 00          	cmpl   $0x0,0x8(%ebx)
8010160b:	7e 1c                	jle    80101629 <ilock+0x32>
8010160d:	83 ec 0c             	sub    $0xc,%esp
80101610:	8d 43 0c             	lea    0xc(%ebx),%eax
80101613:	50                   	push   %eax
80101614:	e8 a4 24 00 00       	call   80103abd <acquiresleep>
80101619:	83 c4 10             	add    $0x10,%esp
8010161c:	83 7b 4c 00          	cmpl   $0x0,0x4c(%ebx)
80101620:	74 14                	je     80101636 <ilock+0x3f>
80101622:	8d 65 f8             	lea    -0x8(%ebp),%esp
80101625:	5b                   	pop    %ebx
80101626:	5e                   	pop    %esi
80101627:	5d                   	pop    %ebp
80101628:	c3                   	ret    
80101629:	83 ec 0c             	sub    $0xc,%esp
8010162c:	68 0a 69 10 80       	push   $0x8010690a
80101631:	e8 26 ed ff ff       	call   8010035c <panic>
80101636:	8b 43 04             	mov    0x4(%ebx),%eax
80101639:	c1 e8 03             	shr    $0x3,%eax
8010163c:	83 ec 08             	sub    $0x8,%esp
8010163f:	03 05 c8 15 11 80    	add    0x801115c8,%eax
80101645:	50                   	push   %eax
80101646:	ff 33                	push   (%ebx)
80101648:	e8 23 eb ff ff       	call   80100170 <bread>
8010164d:	89 c6                	mov    %eax,%esi
8010164f:	8b 43 04             	mov    0x4(%ebx),%eax
80101652:	83 e0 07             	and    $0x7,%eax
80101655:	c1 e0 06             	shl    $0x6,%eax
80101658:	8d 44 06 5c          	lea    0x5c(%esi,%eax,1),%eax
8010165c:	0f b7 10             	movzwl (%eax),%edx
8010165f:	66 89 53 50          	mov    %dx,0x50(%ebx)
80101663:	0f b7 50 02          	movzwl 0x2(%eax),%edx
80101667:	66 89 53 52          	mov    %dx,0x52(%ebx)
8010166b:	0f b7 50 04          	movzwl 0x4(%eax),%edx
8010166f:	66 89 53 54          	mov    %dx,0x54(%ebx)
80101673:	0f b7 50 06          	movzwl 0x6(%eax),%edx
80101677:	66 89 53 56          	mov    %dx,0x56(%ebx)
8010167b:	8b 50 08             	mov    0x8(%eax),%edx
8010167e:	89 53 58             	mov    %edx,0x58(%ebx)
80101681:	83 c0 0c             	add    $0xc,%eax
80101684:	8d 53 5c             	lea    0x5c(%ebx),%edx
80101687:	83 c4 0c             	add    $0xc,%esp
8010168a:	6a 34                	push   $0x34
8010168c:	50                   	push   %eax
8010168d:	52                   	push   %edx
8010168e:	e8 92 27 00 00       	call   80103e25 <memmove>
80101693:	89 34 24             	mov    %esi,(%esp)
80101696:	e8 46 eb ff ff       	call   801001e1 <brelse>
8010169b:	c7 43 4c 01 00 00 00 	movl   $0x1,0x4c(%ebx)
801016a2:	83 c4 10             	add    $0x10,%esp
801016a5:	66 83 7b 50 00       	cmpw   $0x0,0x50(%ebx)
801016aa:	0f 85 72 ff ff ff    	jne    80101622 <ilock+0x2b>
801016b0:	83 ec 0c             	sub    $0xc,%esp
801016b3:	68 10 69 10 80       	push   $0x80106910
801016b8:	e8 9f ec ff ff       	call   8010035c <panic>

801016bd <iunlock>:
801016bd:	f3 0f 1e fb          	endbr32 
801016c1:	55                   	push   %ebp
801016c2:	89 e5                	mov    %esp,%ebp
801016c4:	56                   	push   %esi
801016c5:	53                   	push   %ebx
801016c6:	8b 5d 08             	mov    0x8(%ebp),%ebx
801016c9:	85 db                	test   %ebx,%ebx
801016cb:	74 2c                	je     801016f9 <iunlock+0x3c>
801016cd:	8d 73 0c             	lea    0xc(%ebx),%esi
801016d0:	83 ec 0c             	sub    $0xc,%esp
801016d3:	56                   	push   %esi
801016d4:	e8 76 24 00 00       	call   80103b4f <holdingsleep>
801016d9:	83 c4 10             	add    $0x10,%esp
801016dc:	85 c0                	test   %eax,%eax
801016de:	74 19                	je     801016f9 <iunlock+0x3c>
801016e0:	83 7b 08 00          	cmpl   $0x0,0x8(%ebx)
801016e4:	7e 13                	jle    801016f9 <iunlock+0x3c>
801016e6:	83 ec 0c             	sub    $0xc,%esp
801016e9:	56                   	push   %esi
801016ea:	e8 21 24 00 00       	call   80103b10 <releasesleep>
801016ef:	83 c4 10             	add    $0x10,%esp
801016f2:	8d 65 f8             	lea    -0x8(%ebp),%esp
801016f5:	5b                   	pop    %ebx
801016f6:	5e                   	pop    %esi
801016f7:	5d                   	pop    %ebp
801016f8:	c3                   	ret    
801016f9:	83 ec 0c             	sub    $0xc,%esp
801016fc:	68 1f 69 10 80       	push   $0x8010691f
80101701:	e8 56 ec ff ff       	call   8010035c <panic>

80101706 <iput>:
80101706:	f3 0f 1e fb          	endbr32 
8010170a:	55                   	push   %ebp
8010170b:	89 e5                	mov    %esp,%ebp
8010170d:	57                   	push   %edi
8010170e:	56                   	push   %esi
8010170f:	53                   	push   %ebx
80101710:	83 ec 18             	sub    $0x18,%esp
80101713:	8b 5d 08             	mov    0x8(%ebp),%ebx
80101716:	8d 73 0c             	lea    0xc(%ebx),%esi
80101719:	56                   	push   %esi
8010171a:	e8 9e 23 00 00       	call   80103abd <acquiresleep>
8010171f:	83 c4 10             	add    $0x10,%esp
80101722:	83 7b 4c 00          	cmpl   $0x0,0x4c(%ebx)
80101726:	74 07                	je     8010172f <iput+0x29>
80101728:	66 83 7b 56 00       	cmpw   $0x0,0x56(%ebx)
8010172d:	74 35                	je     80101764 <iput+0x5e>
8010172f:	83 ec 0c             	sub    $0xc,%esp
80101732:	56                   	push   %esi
80101733:	e8 d8 23 00 00       	call   80103b10 <releasesleep>
80101738:	c7 04 24 60 f9 10 80 	movl   $0x8010f960,(%esp)
8010173f:	e8 ad 25 00 00       	call   80103cf1 <acquire>
80101744:	8b 43 08             	mov    0x8(%ebx),%eax
80101747:	83 e8 01             	sub    $0x1,%eax
8010174a:	89 43 08             	mov    %eax,0x8(%ebx)
8010174d:	c7 04 24 60 f9 10 80 	movl   $0x8010f960,(%esp)
80101754:	e8 01 26 00 00       	call   80103d5a <release>
80101759:	83 c4 10             	add    $0x10,%esp
8010175c:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010175f:	5b                   	pop    %ebx
80101760:	5e                   	pop    %esi
80101761:	5f                   	pop    %edi
80101762:	5d                   	pop    %ebp
80101763:	c3                   	ret    
80101764:	83 ec 0c             	sub    $0xc,%esp
80101767:	68 60 f9 10 80       	push   $0x8010f960
8010176c:	e8 80 25 00 00       	call   80103cf1 <acquire>
80101771:	8b 7b 08             	mov    0x8(%ebx),%edi
80101774:	c7 04 24 60 f9 10 80 	movl   $0x8010f960,(%esp)
8010177b:	e8 da 25 00 00       	call   80103d5a <release>
80101780:	83 c4 10             	add    $0x10,%esp
80101783:	83 ff 01             	cmp    $0x1,%edi
80101786:	75 a7                	jne    8010172f <iput+0x29>
80101788:	89 d8                	mov    %ebx,%eax
8010178a:	e8 82 fd ff ff       	call   80101511 <itrunc>
8010178f:	66 c7 43 50 00 00    	movw   $0x0,0x50(%ebx)
80101795:	83 ec 0c             	sub    $0xc,%esp
80101798:	53                   	push   %ebx
80101799:	e8 f0 fc ff ff       	call   8010148e <iupdate>
8010179e:	c7 43 4c 00 00 00 00 	movl   $0x0,0x4c(%ebx)
801017a5:	83 c4 10             	add    $0x10,%esp
801017a8:	eb 85                	jmp    8010172f <iput+0x29>

801017aa <iunlockput>:
801017aa:	f3 0f 1e fb          	endbr32 
801017ae:	55                   	push   %ebp
801017af:	89 e5                	mov    %esp,%ebp
801017b1:	53                   	push   %ebx
801017b2:	83 ec 10             	sub    $0x10,%esp
801017b5:	8b 5d 08             	mov    0x8(%ebp),%ebx
801017b8:	53                   	push   %ebx
801017b9:	e8 ff fe ff ff       	call   801016bd <iunlock>
801017be:	89 1c 24             	mov    %ebx,(%esp)
801017c1:	e8 40 ff ff ff       	call   80101706 <iput>
801017c6:	83 c4 10             	add    $0x10,%esp
801017c9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801017cc:	c9                   	leave  
801017cd:	c3                   	ret    

801017ce <stati>:
801017ce:	f3 0f 1e fb          	endbr32 
801017d2:	55                   	push   %ebp
801017d3:	89 e5                	mov    %esp,%ebp
801017d5:	8b 55 08             	mov    0x8(%ebp),%edx
801017d8:	8b 45 0c             	mov    0xc(%ebp),%eax
801017db:	8b 0a                	mov    (%edx),%ecx
801017dd:	89 48 04             	mov    %ecx,0x4(%eax)
801017e0:	8b 4a 04             	mov    0x4(%edx),%ecx
801017e3:	89 48 08             	mov    %ecx,0x8(%eax)
801017e6:	0f b7 4a 50          	movzwl 0x50(%edx),%ecx
801017ea:	66 89 08             	mov    %cx,(%eax)
801017ed:	0f b7 4a 56          	movzwl 0x56(%edx),%ecx
801017f1:	66 89 48 0c          	mov    %cx,0xc(%eax)
801017f5:	8b 52 58             	mov    0x58(%edx),%edx
801017f8:	89 50 10             	mov    %edx,0x10(%eax)
801017fb:	5d                   	pop    %ebp
801017fc:	c3                   	ret    

801017fd <readi>:
801017fd:	f3 0f 1e fb          	endbr32 
80101801:	55                   	push   %ebp
80101802:	89 e5                	mov    %esp,%ebp
80101804:	57                   	push   %edi
80101805:	56                   	push   %esi
80101806:	53                   	push   %ebx
80101807:	83 ec 1c             	sub    $0x1c,%esp
8010180a:	8b 7d 10             	mov    0x10(%ebp),%edi
8010180d:	8b 45 08             	mov    0x8(%ebp),%eax
80101810:	66 83 78 50 03       	cmpw   $0x3,0x50(%eax)
80101815:	74 2c                	je     80101843 <readi+0x46>
80101817:	8b 45 08             	mov    0x8(%ebp),%eax
8010181a:	8b 40 58             	mov    0x58(%eax),%eax
8010181d:	39 f8                	cmp    %edi,%eax
8010181f:	0f 82 cb 00 00 00    	jb     801018f0 <readi+0xf3>
80101825:	89 fa                	mov    %edi,%edx
80101827:	03 55 14             	add    0x14(%ebp),%edx
8010182a:	0f 82 c7 00 00 00    	jb     801018f7 <readi+0xfa>
80101830:	39 d0                	cmp    %edx,%eax
80101832:	73 05                	jae    80101839 <readi+0x3c>
80101834:	29 f8                	sub    %edi,%eax
80101836:	89 45 14             	mov    %eax,0x14(%ebp)
80101839:	be 00 00 00 00       	mov    $0x0,%esi
8010183e:	e9 8f 00 00 00       	jmp    801018d2 <readi+0xd5>
80101843:	0f b7 40 52          	movzwl 0x52(%eax),%eax
80101847:	66 83 f8 09          	cmp    $0x9,%ax
8010184b:	0f 87 91 00 00 00    	ja     801018e2 <readi+0xe5>
80101851:	98                   	cwtl   
80101852:	8b 04 c5 00 f9 10 80 	mov    -0x7fef0700(,%eax,8),%eax
80101859:	85 c0                	test   %eax,%eax
8010185b:	0f 84 88 00 00 00    	je     801018e9 <readi+0xec>
80101861:	83 ec 04             	sub    $0x4,%esp
80101864:	ff 75 14             	push   0x14(%ebp)
80101867:	ff 75 0c             	push   0xc(%ebp)
8010186a:	ff 75 08             	push   0x8(%ebp)
8010186d:	ff d0                	call   *%eax
8010186f:	83 c4 10             	add    $0x10,%esp
80101872:	eb 66                	jmp    801018da <readi+0xdd>
80101874:	89 fa                	mov    %edi,%edx
80101876:	c1 ea 09             	shr    $0x9,%edx
80101879:	8b 45 08             	mov    0x8(%ebp),%eax
8010187c:	e8 be f8 ff ff       	call   8010113f <bmap>
80101881:	83 ec 08             	sub    $0x8,%esp
80101884:	50                   	push   %eax
80101885:	8b 45 08             	mov    0x8(%ebp),%eax
80101888:	ff 30                	push   (%eax)
8010188a:	e8 e1 e8 ff ff       	call   80100170 <bread>
8010188f:	89 c1                	mov    %eax,%ecx
80101891:	89 f8                	mov    %edi,%eax
80101893:	25 ff 01 00 00       	and    $0x1ff,%eax
80101898:	bb 00 02 00 00       	mov    $0x200,%ebx
8010189d:	29 c3                	sub    %eax,%ebx
8010189f:	8b 55 14             	mov    0x14(%ebp),%edx
801018a2:	29 f2                	sub    %esi,%edx
801018a4:	83 c4 0c             	add    $0xc,%esp
801018a7:	39 d3                	cmp    %edx,%ebx
801018a9:	0f 47 da             	cmova  %edx,%ebx
801018ac:	53                   	push   %ebx
801018ad:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
801018b0:	8d 44 01 5c          	lea    0x5c(%ecx,%eax,1),%eax
801018b4:	50                   	push   %eax
801018b5:	ff 75 0c             	push   0xc(%ebp)
801018b8:	e8 68 25 00 00       	call   80103e25 <memmove>
801018bd:	83 c4 04             	add    $0x4,%esp
801018c0:	ff 75 e4             	push   -0x1c(%ebp)
801018c3:	e8 19 e9 ff ff       	call   801001e1 <brelse>
801018c8:	01 de                	add    %ebx,%esi
801018ca:	01 df                	add    %ebx,%edi
801018cc:	01 5d 0c             	add    %ebx,0xc(%ebp)
801018cf:	83 c4 10             	add    $0x10,%esp
801018d2:	39 75 14             	cmp    %esi,0x14(%ebp)
801018d5:	77 9d                	ja     80101874 <readi+0x77>
801018d7:	8b 45 14             	mov    0x14(%ebp),%eax
801018da:	8d 65 f4             	lea    -0xc(%ebp),%esp
801018dd:	5b                   	pop    %ebx
801018de:	5e                   	pop    %esi
801018df:	5f                   	pop    %edi
801018e0:	5d                   	pop    %ebp
801018e1:	c3                   	ret    
801018e2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801018e7:	eb f1                	jmp    801018da <readi+0xdd>
801018e9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801018ee:	eb ea                	jmp    801018da <readi+0xdd>
801018f0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801018f5:	eb e3                	jmp    801018da <readi+0xdd>
801018f7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801018fc:	eb dc                	jmp    801018da <readi+0xdd>

801018fe <writei>:
801018fe:	f3 0f 1e fb          	endbr32 
80101902:	55                   	push   %ebp
80101903:	89 e5                	mov    %esp,%ebp
80101905:	57                   	push   %edi
80101906:	56                   	push   %esi
80101907:	53                   	push   %ebx
80101908:	83 ec 1c             	sub    $0x1c,%esp
8010190b:	8b 7d 10             	mov    0x10(%ebp),%edi
8010190e:	8b 45 08             	mov    0x8(%ebp),%eax
80101911:	66 83 78 50 03       	cmpw   $0x3,0x50(%eax)
80101916:	74 2e                	je     80101946 <writei+0x48>
80101918:	8b 45 08             	mov    0x8(%ebp),%eax
8010191b:	39 78 58             	cmp    %edi,0x58(%eax)
8010191e:	0f 82 f5 00 00 00    	jb     80101a19 <writei+0x11b>
80101924:	89 f8                	mov    %edi,%eax
80101926:	03 45 14             	add    0x14(%ebp),%eax
80101929:	0f 82 f1 00 00 00    	jb     80101a20 <writei+0x122>
8010192f:	3d 00 18 01 00       	cmp    $0x11800,%eax
80101934:	0f 87 ed 00 00 00    	ja     80101a27 <writei+0x129>
8010193a:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
80101941:	e9 93 00 00 00       	jmp    801019d9 <writei+0xdb>
80101946:	0f b7 40 52          	movzwl 0x52(%eax),%eax
8010194a:	66 83 f8 09          	cmp    $0x9,%ax
8010194e:	0f 87 b7 00 00 00    	ja     80101a0b <writei+0x10d>
80101954:	98                   	cwtl   
80101955:	8b 04 c5 04 f9 10 80 	mov    -0x7fef06fc(,%eax,8),%eax
8010195c:	85 c0                	test   %eax,%eax
8010195e:	0f 84 ae 00 00 00    	je     80101a12 <writei+0x114>
80101964:	83 ec 04             	sub    $0x4,%esp
80101967:	ff 75 14             	push   0x14(%ebp)
8010196a:	ff 75 0c             	push   0xc(%ebp)
8010196d:	ff 75 08             	push   0x8(%ebp)
80101970:	ff d0                	call   *%eax
80101972:	83 c4 10             	add    $0x10,%esp
80101975:	eb 7b                	jmp    801019f2 <writei+0xf4>
80101977:	89 fa                	mov    %edi,%edx
80101979:	c1 ea 09             	shr    $0x9,%edx
8010197c:	8b 45 08             	mov    0x8(%ebp),%eax
8010197f:	e8 bb f7 ff ff       	call   8010113f <bmap>
80101984:	83 ec 08             	sub    $0x8,%esp
80101987:	50                   	push   %eax
80101988:	8b 45 08             	mov    0x8(%ebp),%eax
8010198b:	ff 30                	push   (%eax)
8010198d:	e8 de e7 ff ff       	call   80100170 <bread>
80101992:	89 c6                	mov    %eax,%esi
80101994:	89 f8                	mov    %edi,%eax
80101996:	25 ff 01 00 00       	and    $0x1ff,%eax
8010199b:	bb 00 02 00 00       	mov    $0x200,%ebx
801019a0:	29 c3                	sub    %eax,%ebx
801019a2:	8b 55 14             	mov    0x14(%ebp),%edx
801019a5:	2b 55 e4             	sub    -0x1c(%ebp),%edx
801019a8:	83 c4 0c             	add    $0xc,%esp
801019ab:	39 d3                	cmp    %edx,%ebx
801019ad:	0f 47 da             	cmova  %edx,%ebx
801019b0:	53                   	push   %ebx
801019b1:	ff 75 0c             	push   0xc(%ebp)
801019b4:	8d 44 06 5c          	lea    0x5c(%esi,%eax,1),%eax
801019b8:	50                   	push   %eax
801019b9:	e8 67 24 00 00       	call   80103e25 <memmove>
801019be:	89 34 24             	mov    %esi,(%esp)
801019c1:	e8 f0 0f 00 00       	call   801029b6 <log_write>
801019c6:	89 34 24             	mov    %esi,(%esp)
801019c9:	e8 13 e8 ff ff       	call   801001e1 <brelse>
801019ce:	01 5d e4             	add    %ebx,-0x1c(%ebp)
801019d1:	01 df                	add    %ebx,%edi
801019d3:	01 5d 0c             	add    %ebx,0xc(%ebp)
801019d6:	83 c4 10             	add    $0x10,%esp
801019d9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
801019dc:	3b 45 14             	cmp    0x14(%ebp),%eax
801019df:	72 96                	jb     80101977 <writei+0x79>
801019e1:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
801019e5:	74 08                	je     801019ef <writei+0xf1>
801019e7:	8b 45 08             	mov    0x8(%ebp),%eax
801019ea:	39 78 58             	cmp    %edi,0x58(%eax)
801019ed:	72 0b                	jb     801019fa <writei+0xfc>
801019ef:	8b 45 14             	mov    0x14(%ebp),%eax
801019f2:	8d 65 f4             	lea    -0xc(%ebp),%esp
801019f5:	5b                   	pop    %ebx
801019f6:	5e                   	pop    %esi
801019f7:	5f                   	pop    %edi
801019f8:	5d                   	pop    %ebp
801019f9:	c3                   	ret    
801019fa:	89 78 58             	mov    %edi,0x58(%eax)
801019fd:	83 ec 0c             	sub    $0xc,%esp
80101a00:	50                   	push   %eax
80101a01:	e8 88 fa ff ff       	call   8010148e <iupdate>
80101a06:	83 c4 10             	add    $0x10,%esp
80101a09:	eb e4                	jmp    801019ef <writei+0xf1>
80101a0b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80101a10:	eb e0                	jmp    801019f2 <writei+0xf4>
80101a12:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80101a17:	eb d9                	jmp    801019f2 <writei+0xf4>
80101a19:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80101a1e:	eb d2                	jmp    801019f2 <writei+0xf4>
80101a20:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80101a25:	eb cb                	jmp    801019f2 <writei+0xf4>
80101a27:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80101a2c:	eb c4                	jmp    801019f2 <writei+0xf4>

80101a2e <namecmp>:
80101a2e:	f3 0f 1e fb          	endbr32 
80101a32:	55                   	push   %ebp
80101a33:	89 e5                	mov    %esp,%ebp
80101a35:	83 ec 0c             	sub    $0xc,%esp
80101a38:	6a 0e                	push   $0xe
80101a3a:	ff 75 0c             	push   0xc(%ebp)
80101a3d:	ff 75 08             	push   0x8(%ebp)
80101a40:	e8 54 24 00 00       	call   80103e99 <strncmp>
80101a45:	c9                   	leave  
80101a46:	c3                   	ret    

80101a47 <dirlookup>:
80101a47:	f3 0f 1e fb          	endbr32 
80101a4b:	55                   	push   %ebp
80101a4c:	89 e5                	mov    %esp,%ebp
80101a4e:	57                   	push   %edi
80101a4f:	56                   	push   %esi
80101a50:	53                   	push   %ebx
80101a51:	83 ec 1c             	sub    $0x1c,%esp
80101a54:	8b 75 08             	mov    0x8(%ebp),%esi
80101a57:	8b 7d 0c             	mov    0xc(%ebp),%edi
80101a5a:	66 83 7e 50 01       	cmpw   $0x1,0x50(%esi)
80101a5f:	75 07                	jne    80101a68 <dirlookup+0x21>
80101a61:	bb 00 00 00 00       	mov    $0x0,%ebx
80101a66:	eb 1d                	jmp    80101a85 <dirlookup+0x3e>
80101a68:	83 ec 0c             	sub    $0xc,%esp
80101a6b:	68 27 69 10 80       	push   $0x80106927
80101a70:	e8 e7 e8 ff ff       	call   8010035c <panic>
80101a75:	83 ec 0c             	sub    $0xc,%esp
80101a78:	68 39 69 10 80       	push   $0x80106939
80101a7d:	e8 da e8 ff ff       	call   8010035c <panic>
80101a82:	83 c3 10             	add    $0x10,%ebx
80101a85:	39 5e 58             	cmp    %ebx,0x58(%esi)
80101a88:	76 48                	jbe    80101ad2 <dirlookup+0x8b>
80101a8a:	6a 10                	push   $0x10
80101a8c:	53                   	push   %ebx
80101a8d:	8d 45 d8             	lea    -0x28(%ebp),%eax
80101a90:	50                   	push   %eax
80101a91:	56                   	push   %esi
80101a92:	e8 66 fd ff ff       	call   801017fd <readi>
80101a97:	83 c4 10             	add    $0x10,%esp
80101a9a:	83 f8 10             	cmp    $0x10,%eax
80101a9d:	75 d6                	jne    80101a75 <dirlookup+0x2e>
80101a9f:	66 83 7d d8 00       	cmpw   $0x0,-0x28(%ebp)
80101aa4:	74 dc                	je     80101a82 <dirlookup+0x3b>
80101aa6:	83 ec 08             	sub    $0x8,%esp
80101aa9:	8d 45 da             	lea    -0x26(%ebp),%eax
80101aac:	50                   	push   %eax
80101aad:	57                   	push   %edi
80101aae:	e8 7b ff ff ff       	call   80101a2e <namecmp>
80101ab3:	83 c4 10             	add    $0x10,%esp
80101ab6:	85 c0                	test   %eax,%eax
80101ab8:	75 c8                	jne    80101a82 <dirlookup+0x3b>
80101aba:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
80101abe:	74 05                	je     80101ac5 <dirlookup+0x7e>
80101ac0:	8b 45 10             	mov    0x10(%ebp),%eax
80101ac3:	89 18                	mov    %ebx,(%eax)
80101ac5:	0f b7 55 d8          	movzwl -0x28(%ebp),%edx
80101ac9:	8b 06                	mov    (%esi),%eax
80101acb:	e8 15 f7 ff ff       	call   801011e5 <iget>
80101ad0:	eb 05                	jmp    80101ad7 <dirlookup+0x90>
80101ad2:	b8 00 00 00 00       	mov    $0x0,%eax
80101ad7:	8d 65 f4             	lea    -0xc(%ebp),%esp
80101ada:	5b                   	pop    %ebx
80101adb:	5e                   	pop    %esi
80101adc:	5f                   	pop    %edi
80101add:	5d                   	pop    %ebp
80101ade:	c3                   	ret    

80101adf <namex>:
80101adf:	55                   	push   %ebp
80101ae0:	89 e5                	mov    %esp,%ebp
80101ae2:	57                   	push   %edi
80101ae3:	56                   	push   %esi
80101ae4:	53                   	push   %ebx
80101ae5:	83 ec 1c             	sub    $0x1c,%esp
80101ae8:	89 c3                	mov    %eax,%ebx
80101aea:	89 55 e0             	mov    %edx,-0x20(%ebp)
80101aed:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
80101af0:	80 38 2f             	cmpb   $0x2f,(%eax)
80101af3:	74 17                	je     80101b0c <namex+0x2d>
80101af5:	e8 03 18 00 00       	call   801032fd <myproc>
80101afa:	83 ec 0c             	sub    $0xc,%esp
80101afd:	ff 70 68             	push   0x68(%eax)
80101b00:	e8 be fa ff ff       	call   801015c3 <idup>
80101b05:	89 c6                	mov    %eax,%esi
80101b07:	83 c4 10             	add    $0x10,%esp
80101b0a:	eb 53                	jmp    80101b5f <namex+0x80>
80101b0c:	ba 01 00 00 00       	mov    $0x1,%edx
80101b11:	b8 01 00 00 00       	mov    $0x1,%eax
80101b16:	e8 ca f6 ff ff       	call   801011e5 <iget>
80101b1b:	89 c6                	mov    %eax,%esi
80101b1d:	eb 40                	jmp    80101b5f <namex+0x80>
80101b1f:	83 ec 0c             	sub    $0xc,%esp
80101b22:	56                   	push   %esi
80101b23:	e8 82 fc ff ff       	call   801017aa <iunlockput>
80101b28:	83 c4 10             	add    $0x10,%esp
80101b2b:	be 00 00 00 00       	mov    $0x0,%esi
80101b30:	89 f0                	mov    %esi,%eax
80101b32:	8d 65 f4             	lea    -0xc(%ebp),%esp
80101b35:	5b                   	pop    %ebx
80101b36:	5e                   	pop    %esi
80101b37:	5f                   	pop    %edi
80101b38:	5d                   	pop    %ebp
80101b39:	c3                   	ret    
80101b3a:	83 ec 04             	sub    $0x4,%esp
80101b3d:	6a 00                	push   $0x0
80101b3f:	ff 75 e4             	push   -0x1c(%ebp)
80101b42:	56                   	push   %esi
80101b43:	e8 ff fe ff ff       	call   80101a47 <dirlookup>
80101b48:	89 c7                	mov    %eax,%edi
80101b4a:	83 c4 10             	add    $0x10,%esp
80101b4d:	85 c0                	test   %eax,%eax
80101b4f:	74 4a                	je     80101b9b <namex+0xbc>
80101b51:	83 ec 0c             	sub    $0xc,%esp
80101b54:	56                   	push   %esi
80101b55:	e8 50 fc ff ff       	call   801017aa <iunlockput>
80101b5a:	83 c4 10             	add    $0x10,%esp
80101b5d:	89 fe                	mov    %edi,%esi
80101b5f:	8b 55 e4             	mov    -0x1c(%ebp),%edx
80101b62:	89 d8                	mov    %ebx,%eax
80101b64:	e8 30 f4 ff ff       	call   80100f99 <skipelem>
80101b69:	89 c3                	mov    %eax,%ebx
80101b6b:	85 c0                	test   %eax,%eax
80101b6d:	74 3c                	je     80101bab <namex+0xcc>
80101b6f:	83 ec 0c             	sub    $0xc,%esp
80101b72:	56                   	push   %esi
80101b73:	e8 7f fa ff ff       	call   801015f7 <ilock>
80101b78:	83 c4 10             	add    $0x10,%esp
80101b7b:	66 83 7e 50 01       	cmpw   $0x1,0x50(%esi)
80101b80:	75 9d                	jne    80101b1f <namex+0x40>
80101b82:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
80101b86:	74 b2                	je     80101b3a <namex+0x5b>
80101b88:	80 3b 00             	cmpb   $0x0,(%ebx)
80101b8b:	75 ad                	jne    80101b3a <namex+0x5b>
80101b8d:	83 ec 0c             	sub    $0xc,%esp
80101b90:	56                   	push   %esi
80101b91:	e8 27 fb ff ff       	call   801016bd <iunlock>
80101b96:	83 c4 10             	add    $0x10,%esp
80101b99:	eb 95                	jmp    80101b30 <namex+0x51>
80101b9b:	83 ec 0c             	sub    $0xc,%esp
80101b9e:	56                   	push   %esi
80101b9f:	e8 06 fc ff ff       	call   801017aa <iunlockput>
80101ba4:	83 c4 10             	add    $0x10,%esp
80101ba7:	89 fe                	mov    %edi,%esi
80101ba9:	eb 85                	jmp    80101b30 <namex+0x51>
80101bab:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
80101baf:	0f 84 7b ff ff ff    	je     80101b30 <namex+0x51>
80101bb5:	83 ec 0c             	sub    $0xc,%esp
80101bb8:	56                   	push   %esi
80101bb9:	e8 48 fb ff ff       	call   80101706 <iput>
80101bbe:	83 c4 10             	add    $0x10,%esp
80101bc1:	89 de                	mov    %ebx,%esi
80101bc3:	e9 68 ff ff ff       	jmp    80101b30 <namex+0x51>

80101bc8 <dirlink>:
80101bc8:	f3 0f 1e fb          	endbr32 
80101bcc:	55                   	push   %ebp
80101bcd:	89 e5                	mov    %esp,%ebp
80101bcf:	57                   	push   %edi
80101bd0:	56                   	push   %esi
80101bd1:	53                   	push   %ebx
80101bd2:	83 ec 20             	sub    $0x20,%esp
80101bd5:	8b 5d 08             	mov    0x8(%ebp),%ebx
80101bd8:	8b 7d 0c             	mov    0xc(%ebp),%edi
80101bdb:	6a 00                	push   $0x0
80101bdd:	57                   	push   %edi
80101bde:	53                   	push   %ebx
80101bdf:	e8 63 fe ff ff       	call   80101a47 <dirlookup>
80101be4:	83 c4 10             	add    $0x10,%esp
80101be7:	85 c0                	test   %eax,%eax
80101be9:	75 2d                	jne    80101c18 <dirlink+0x50>
80101beb:	b8 00 00 00 00       	mov    $0x0,%eax
80101bf0:	89 c6                	mov    %eax,%esi
80101bf2:	39 43 58             	cmp    %eax,0x58(%ebx)
80101bf5:	76 41                	jbe    80101c38 <dirlink+0x70>
80101bf7:	6a 10                	push   $0x10
80101bf9:	50                   	push   %eax
80101bfa:	8d 45 d8             	lea    -0x28(%ebp),%eax
80101bfd:	50                   	push   %eax
80101bfe:	53                   	push   %ebx
80101bff:	e8 f9 fb ff ff       	call   801017fd <readi>
80101c04:	83 c4 10             	add    $0x10,%esp
80101c07:	83 f8 10             	cmp    $0x10,%eax
80101c0a:	75 1f                	jne    80101c2b <dirlink+0x63>
80101c0c:	66 83 7d d8 00       	cmpw   $0x0,-0x28(%ebp)
80101c11:	74 25                	je     80101c38 <dirlink+0x70>
80101c13:	8d 46 10             	lea    0x10(%esi),%eax
80101c16:	eb d8                	jmp    80101bf0 <dirlink+0x28>
80101c18:	83 ec 0c             	sub    $0xc,%esp
80101c1b:	50                   	push   %eax
80101c1c:	e8 e5 fa ff ff       	call   80101706 <iput>
80101c21:	83 c4 10             	add    $0x10,%esp
80101c24:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80101c29:	eb 3d                	jmp    80101c68 <dirlink+0xa0>
80101c2b:	83 ec 0c             	sub    $0xc,%esp
80101c2e:	68 48 69 10 80       	push   $0x80106948
80101c33:	e8 24 e7 ff ff       	call   8010035c <panic>
80101c38:	83 ec 04             	sub    $0x4,%esp
80101c3b:	6a 0e                	push   $0xe
80101c3d:	57                   	push   %edi
80101c3e:	8d 7d d8             	lea    -0x28(%ebp),%edi
80101c41:	8d 45 da             	lea    -0x26(%ebp),%eax
80101c44:	50                   	push   %eax
80101c45:	e8 92 22 00 00       	call   80103edc <strncpy>
80101c4a:	8b 45 10             	mov    0x10(%ebp),%eax
80101c4d:	66 89 45 d8          	mov    %ax,-0x28(%ebp)
80101c51:	6a 10                	push   $0x10
80101c53:	56                   	push   %esi
80101c54:	57                   	push   %edi
80101c55:	53                   	push   %ebx
80101c56:	e8 a3 fc ff ff       	call   801018fe <writei>
80101c5b:	83 c4 20             	add    $0x20,%esp
80101c5e:	83 f8 10             	cmp    $0x10,%eax
80101c61:	75 0d                	jne    80101c70 <dirlink+0xa8>
80101c63:	b8 00 00 00 00       	mov    $0x0,%eax
80101c68:	8d 65 f4             	lea    -0xc(%ebp),%esp
80101c6b:	5b                   	pop    %ebx
80101c6c:	5e                   	pop    %esi
80101c6d:	5f                   	pop    %edi
80101c6e:	5d                   	pop    %ebp
80101c6f:	c3                   	ret    
80101c70:	83 ec 0c             	sub    $0xc,%esp
80101c73:	68 34 6f 10 80       	push   $0x80106f34
80101c78:	e8 df e6 ff ff       	call   8010035c <panic>

80101c7d <namei>:
80101c7d:	f3 0f 1e fb          	endbr32 
80101c81:	55                   	push   %ebp
80101c82:	89 e5                	mov    %esp,%ebp
80101c84:	83 ec 18             	sub    $0x18,%esp
80101c87:	8d 4d ea             	lea    -0x16(%ebp),%ecx
80101c8a:	ba 00 00 00 00       	mov    $0x0,%edx
80101c8f:	8b 45 08             	mov    0x8(%ebp),%eax
80101c92:	e8 48 fe ff ff       	call   80101adf <namex>
80101c97:	c9                   	leave  
80101c98:	c3                   	ret    

80101c99 <nameiparent>:
80101c99:	f3 0f 1e fb          	endbr32 
80101c9d:	55                   	push   %ebp
80101c9e:	89 e5                	mov    %esp,%ebp
80101ca0:	83 ec 08             	sub    $0x8,%esp
80101ca3:	8b 4d 0c             	mov    0xc(%ebp),%ecx
80101ca6:	ba 01 00 00 00       	mov    $0x1,%edx
80101cab:	8b 45 08             	mov    0x8(%ebp),%eax
80101cae:	e8 2c fe ff ff       	call   80101adf <namex>
80101cb3:	c9                   	leave  
80101cb4:	c3                   	ret    

80101cb5 <idewait>:
80101cb5:	89 c1                	mov    %eax,%ecx
80101cb7:	ba f7 01 00 00       	mov    $0x1f7,%edx
80101cbc:	ec                   	in     (%dx),%al
80101cbd:	89 c2                	mov    %eax,%edx
80101cbf:	83 e2 c0             	and    $0xffffffc0,%edx
80101cc2:	80 fa 40             	cmp    $0x40,%dl
80101cc5:	75 f0                	jne    80101cb7 <idewait+0x2>
80101cc7:	85 c9                	test   %ecx,%ecx
80101cc9:	74 09                	je     80101cd4 <idewait+0x1f>
80101ccb:	a8 21                	test   $0x21,%al
80101ccd:	75 08                	jne    80101cd7 <idewait+0x22>
80101ccf:	b9 00 00 00 00       	mov    $0x0,%ecx
80101cd4:	89 c8                	mov    %ecx,%eax
80101cd6:	c3                   	ret    
80101cd7:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
80101cdc:	eb f6                	jmp    80101cd4 <idewait+0x1f>

80101cde <idestart>:
80101cde:	55                   	push   %ebp
80101cdf:	89 e5                	mov    %esp,%ebp
80101ce1:	56                   	push   %esi
80101ce2:	53                   	push   %ebx
80101ce3:	85 c0                	test   %eax,%eax
80101ce5:	0f 84 91 00 00 00    	je     80101d7c <idestart+0x9e>
80101ceb:	89 c6                	mov    %eax,%esi
80101ced:	8b 58 08             	mov    0x8(%eax),%ebx
80101cf0:	81 fb e7 03 00 00    	cmp    $0x3e7,%ebx
80101cf6:	0f 87 8d 00 00 00    	ja     80101d89 <idestart+0xab>
80101cfc:	b8 00 00 00 00       	mov    $0x0,%eax
80101d01:	e8 af ff ff ff       	call   80101cb5 <idewait>
80101d06:	b8 00 00 00 00       	mov    $0x0,%eax
80101d0b:	ba f6 03 00 00       	mov    $0x3f6,%edx
80101d10:	ee                   	out    %al,(%dx)
80101d11:	b8 01 00 00 00       	mov    $0x1,%eax
80101d16:	ba f2 01 00 00       	mov    $0x1f2,%edx
80101d1b:	ee                   	out    %al,(%dx)
80101d1c:	ba f3 01 00 00       	mov    $0x1f3,%edx
80101d21:	89 d8                	mov    %ebx,%eax
80101d23:	ee                   	out    %al,(%dx)
80101d24:	89 d8                	mov    %ebx,%eax
80101d26:	c1 f8 08             	sar    $0x8,%eax
80101d29:	ba f4 01 00 00       	mov    $0x1f4,%edx
80101d2e:	ee                   	out    %al,(%dx)
80101d2f:	89 d8                	mov    %ebx,%eax
80101d31:	c1 f8 10             	sar    $0x10,%eax
80101d34:	ba f5 01 00 00       	mov    $0x1f5,%edx
80101d39:	ee                   	out    %al,(%dx)
80101d3a:	0f b6 46 04          	movzbl 0x4(%esi),%eax
80101d3e:	c1 e0 04             	shl    $0x4,%eax
80101d41:	83 e0 10             	and    $0x10,%eax
80101d44:	c1 fb 18             	sar    $0x18,%ebx
80101d47:	83 e3 0f             	and    $0xf,%ebx
80101d4a:	09 d8                	or     %ebx,%eax
80101d4c:	83 c8 e0             	or     $0xffffffe0,%eax
80101d4f:	ba f6 01 00 00       	mov    $0x1f6,%edx
80101d54:	ee                   	out    %al,(%dx)
80101d55:	f6 06 04             	testb  $0x4,(%esi)
80101d58:	74 3c                	je     80101d96 <idestart+0xb8>
80101d5a:	b8 30 00 00 00       	mov    $0x30,%eax
80101d5f:	ba f7 01 00 00       	mov    $0x1f7,%edx
80101d64:	ee                   	out    %al,(%dx)
80101d65:	83 c6 5c             	add    $0x5c,%esi
80101d68:	b9 80 00 00 00       	mov    $0x80,%ecx
80101d6d:	ba f0 01 00 00       	mov    $0x1f0,%edx
80101d72:	fc                   	cld    
80101d73:	f3 6f                	rep outsl %ds:(%esi),(%dx)
80101d75:	8d 65 f8             	lea    -0x8(%ebp),%esp
80101d78:	5b                   	pop    %ebx
80101d79:	5e                   	pop    %esi
80101d7a:	5d                   	pop    %ebp
80101d7b:	c3                   	ret    
80101d7c:	83 ec 0c             	sub    $0xc,%esp
80101d7f:	68 ab 69 10 80       	push   $0x801069ab
80101d84:	e8 d3 e5 ff ff       	call   8010035c <panic>
80101d89:	83 ec 0c             	sub    $0xc,%esp
80101d8c:	68 b4 69 10 80       	push   $0x801069b4
80101d91:	e8 c6 e5 ff ff       	call   8010035c <panic>
80101d96:	b8 20 00 00 00       	mov    $0x20,%eax
80101d9b:	ba f7 01 00 00       	mov    $0x1f7,%edx
80101da0:	ee                   	out    %al,(%dx)
80101da1:	eb d2                	jmp    80101d75 <idestart+0x97>

80101da3 <ideinit>:
80101da3:	f3 0f 1e fb          	endbr32 
80101da7:	55                   	push   %ebp
80101da8:	89 e5                	mov    %esp,%ebp
80101daa:	83 ec 10             	sub    $0x10,%esp
80101dad:	68 c6 69 10 80       	push   $0x801069c6
80101db2:	68 00 16 11 80       	push   $0x80111600
80101db7:	e8 e5 1d 00 00       	call   80103ba1 <initlock>
80101dbc:	83 c4 08             	add    $0x8,%esp
80101dbf:	a1 84 17 11 80       	mov    0x80111784,%eax
80101dc4:	83 e8 01             	sub    $0x1,%eax
80101dc7:	50                   	push   %eax
80101dc8:	6a 0e                	push   $0xe
80101dca:	e8 5c 02 00 00       	call   8010202b <ioapicenable>
80101dcf:	b8 00 00 00 00       	mov    $0x0,%eax
80101dd4:	e8 dc fe ff ff       	call   80101cb5 <idewait>
80101dd9:	b8 f0 ff ff ff       	mov    $0xfffffff0,%eax
80101dde:	ba f6 01 00 00       	mov    $0x1f6,%edx
80101de3:	ee                   	out    %al,(%dx)
80101de4:	83 c4 10             	add    $0x10,%esp
80101de7:	b9 00 00 00 00       	mov    $0x0,%ecx
80101dec:	81 f9 e7 03 00 00    	cmp    $0x3e7,%ecx
80101df2:	7f 19                	jg     80101e0d <ideinit+0x6a>
80101df4:	ba f7 01 00 00       	mov    $0x1f7,%edx
80101df9:	ec                   	in     (%dx),%al
80101dfa:	84 c0                	test   %al,%al
80101dfc:	75 05                	jne    80101e03 <ideinit+0x60>
80101dfe:	83 c1 01             	add    $0x1,%ecx
80101e01:	eb e9                	jmp    80101dec <ideinit+0x49>
80101e03:	c7 05 e0 15 11 80 01 	movl   $0x1,0x801115e0
80101e0a:	00 00 00 
80101e0d:	b8 e0 ff ff ff       	mov    $0xffffffe0,%eax
80101e12:	ba f6 01 00 00       	mov    $0x1f6,%edx
80101e17:	ee                   	out    %al,(%dx)
80101e18:	c9                   	leave  
80101e19:	c3                   	ret    

80101e1a <ideintr>:
80101e1a:	f3 0f 1e fb          	endbr32 
80101e1e:	55                   	push   %ebp
80101e1f:	89 e5                	mov    %esp,%ebp
80101e21:	57                   	push   %edi
80101e22:	53                   	push   %ebx
80101e23:	83 ec 0c             	sub    $0xc,%esp
80101e26:	68 00 16 11 80       	push   $0x80111600
80101e2b:	e8 c1 1e 00 00       	call   80103cf1 <acquire>
80101e30:	8b 1d e4 15 11 80    	mov    0x801115e4,%ebx
80101e36:	83 c4 10             	add    $0x10,%esp
80101e39:	85 db                	test   %ebx,%ebx
80101e3b:	74 4a                	je     80101e87 <ideintr+0x6d>
80101e3d:	8b 43 58             	mov    0x58(%ebx),%eax
80101e40:	a3 e4 15 11 80       	mov    %eax,0x801115e4
80101e45:	f6 03 04             	testb  $0x4,(%ebx)
80101e48:	74 4f                	je     80101e99 <ideintr+0x7f>
80101e4a:	8b 03                	mov    (%ebx),%eax
80101e4c:	83 c8 02             	or     $0x2,%eax
80101e4f:	89 03                	mov    %eax,(%ebx)
80101e51:	83 e0 fb             	and    $0xfffffffb,%eax
80101e54:	89 03                	mov    %eax,(%ebx)
80101e56:	83 ec 0c             	sub    $0xc,%esp
80101e59:	53                   	push   %ebx
80101e5a:	e8 cc 1a 00 00       	call   8010392b <wakeup>
80101e5f:	a1 e4 15 11 80       	mov    0x801115e4,%eax
80101e64:	83 c4 10             	add    $0x10,%esp
80101e67:	85 c0                	test   %eax,%eax
80101e69:	74 05                	je     80101e70 <ideintr+0x56>
80101e6b:	e8 6e fe ff ff       	call   80101cde <idestart>
80101e70:	83 ec 0c             	sub    $0xc,%esp
80101e73:	68 00 16 11 80       	push   $0x80111600
80101e78:	e8 dd 1e 00 00       	call   80103d5a <release>
80101e7d:	83 c4 10             	add    $0x10,%esp
80101e80:	8d 65 f8             	lea    -0x8(%ebp),%esp
80101e83:	5b                   	pop    %ebx
80101e84:	5f                   	pop    %edi
80101e85:	5d                   	pop    %ebp
80101e86:	c3                   	ret    
80101e87:	83 ec 0c             	sub    $0xc,%esp
80101e8a:	68 00 16 11 80       	push   $0x80111600
80101e8f:	e8 c6 1e 00 00       	call   80103d5a <release>
80101e94:	83 c4 10             	add    $0x10,%esp
80101e97:	eb e7                	jmp    80101e80 <ideintr+0x66>
80101e99:	b8 01 00 00 00       	mov    $0x1,%eax
80101e9e:	e8 12 fe ff ff       	call   80101cb5 <idewait>
80101ea3:	85 c0                	test   %eax,%eax
80101ea5:	78 a3                	js     80101e4a <ideintr+0x30>
80101ea7:	8d 7b 5c             	lea    0x5c(%ebx),%edi
80101eaa:	b9 80 00 00 00       	mov    $0x80,%ecx
80101eaf:	ba f0 01 00 00       	mov    $0x1f0,%edx
80101eb4:	fc                   	cld    
80101eb5:	f3 6d                	rep insl (%dx),%es:(%edi)
80101eb7:	eb 91                	jmp    80101e4a <ideintr+0x30>

80101eb9 <iderw>:
80101eb9:	f3 0f 1e fb          	endbr32 
80101ebd:	55                   	push   %ebp
80101ebe:	89 e5                	mov    %esp,%ebp
80101ec0:	53                   	push   %ebx
80101ec1:	83 ec 10             	sub    $0x10,%esp
80101ec4:	8b 5d 08             	mov    0x8(%ebp),%ebx
80101ec7:	8d 43 0c             	lea    0xc(%ebx),%eax
80101eca:	50                   	push   %eax
80101ecb:	e8 7f 1c 00 00       	call   80103b4f <holdingsleep>
80101ed0:	83 c4 10             	add    $0x10,%esp
80101ed3:	85 c0                	test   %eax,%eax
80101ed5:	74 37                	je     80101f0e <iderw+0x55>
80101ed7:	8b 03                	mov    (%ebx),%eax
80101ed9:	83 e0 06             	and    $0x6,%eax
80101edc:	83 f8 02             	cmp    $0x2,%eax
80101edf:	74 3a                	je     80101f1b <iderw+0x62>
80101ee1:	83 7b 04 00          	cmpl   $0x0,0x4(%ebx)
80101ee5:	74 09                	je     80101ef0 <iderw+0x37>
80101ee7:	83 3d e0 15 11 80 00 	cmpl   $0x0,0x801115e0
80101eee:	74 38                	je     80101f28 <iderw+0x6f>
80101ef0:	83 ec 0c             	sub    $0xc,%esp
80101ef3:	68 00 16 11 80       	push   $0x80111600
80101ef8:	e8 f4 1d 00 00       	call   80103cf1 <acquire>
80101efd:	c7 43 58 00 00 00 00 	movl   $0x0,0x58(%ebx)
80101f04:	83 c4 10             	add    $0x10,%esp
80101f07:	ba e4 15 11 80       	mov    $0x801115e4,%edx
80101f0c:	eb 2a                	jmp    80101f38 <iderw+0x7f>
80101f0e:	83 ec 0c             	sub    $0xc,%esp
80101f11:	68 ca 69 10 80       	push   $0x801069ca
80101f16:	e8 41 e4 ff ff       	call   8010035c <panic>
80101f1b:	83 ec 0c             	sub    $0xc,%esp
80101f1e:	68 e0 69 10 80       	push   $0x801069e0
80101f23:	e8 34 e4 ff ff       	call   8010035c <panic>
80101f28:	83 ec 0c             	sub    $0xc,%esp
80101f2b:	68 f5 69 10 80       	push   $0x801069f5
80101f30:	e8 27 e4 ff ff       	call   8010035c <panic>
80101f35:	8d 50 58             	lea    0x58(%eax),%edx
80101f38:	8b 02                	mov    (%edx),%eax
80101f3a:	85 c0                	test   %eax,%eax
80101f3c:	75 f7                	jne    80101f35 <iderw+0x7c>
80101f3e:	89 1a                	mov    %ebx,(%edx)
80101f40:	39 1d e4 15 11 80    	cmp    %ebx,0x801115e4
80101f46:	75 1a                	jne    80101f62 <iderw+0xa9>
80101f48:	89 d8                	mov    %ebx,%eax
80101f4a:	e8 8f fd ff ff       	call   80101cde <idestart>
80101f4f:	eb 11                	jmp    80101f62 <iderw+0xa9>
80101f51:	83 ec 08             	sub    $0x8,%esp
80101f54:	68 00 16 11 80       	push   $0x80111600
80101f59:	53                   	push   %ebx
80101f5a:	e8 5f 18 00 00       	call   801037be <sleep>
80101f5f:	83 c4 10             	add    $0x10,%esp
80101f62:	8b 03                	mov    (%ebx),%eax
80101f64:	83 e0 06             	and    $0x6,%eax
80101f67:	83 f8 02             	cmp    $0x2,%eax
80101f6a:	75 e5                	jne    80101f51 <iderw+0x98>
80101f6c:	83 ec 0c             	sub    $0xc,%esp
80101f6f:	68 00 16 11 80       	push   $0x80111600
80101f74:	e8 e1 1d 00 00       	call   80103d5a <release>
80101f79:	83 c4 10             	add    $0x10,%esp
80101f7c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80101f7f:	c9                   	leave  
80101f80:	c3                   	ret    

80101f81 <ioapicread>:
80101f81:	8b 15 34 16 11 80    	mov    0x80111634,%edx
80101f87:	89 02                	mov    %eax,(%edx)
80101f89:	a1 34 16 11 80       	mov    0x80111634,%eax
80101f8e:	8b 40 10             	mov    0x10(%eax),%eax
80101f91:	c3                   	ret    

80101f92 <ioapicwrite>:
80101f92:	8b 0d 34 16 11 80    	mov    0x80111634,%ecx
80101f98:	89 01                	mov    %eax,(%ecx)
80101f9a:	a1 34 16 11 80       	mov    0x80111634,%eax
80101f9f:	89 50 10             	mov    %edx,0x10(%eax)
80101fa2:	c3                   	ret    

80101fa3 <ioapicinit>:
80101fa3:	f3 0f 1e fb          	endbr32 
80101fa7:	55                   	push   %ebp
80101fa8:	89 e5                	mov    %esp,%ebp
80101faa:	57                   	push   %edi
80101fab:	56                   	push   %esi
80101fac:	53                   	push   %ebx
80101fad:	83 ec 0c             	sub    $0xc,%esp
80101fb0:	c7 05 34 16 11 80 00 	movl   $0xfec00000,0x80111634
80101fb7:	00 c0 fe 
80101fba:	b8 01 00 00 00       	mov    $0x1,%eax
80101fbf:	e8 bd ff ff ff       	call   80101f81 <ioapicread>
80101fc4:	c1 e8 10             	shr    $0x10,%eax
80101fc7:	0f b6 f8             	movzbl %al,%edi
80101fca:	b8 00 00 00 00       	mov    $0x0,%eax
80101fcf:	e8 ad ff ff ff       	call   80101f81 <ioapicread>
80101fd4:	c1 e8 18             	shr    $0x18,%eax
80101fd7:	0f b6 15 80 17 11 80 	movzbl 0x80111780,%edx
80101fde:	39 c2                	cmp    %eax,%edx
80101fe0:	75 07                	jne    80101fe9 <ioapicinit+0x46>
80101fe2:	bb 00 00 00 00       	mov    $0x0,%ebx
80101fe7:	eb 36                	jmp    8010201f <ioapicinit+0x7c>
80101fe9:	83 ec 0c             	sub    $0xc,%esp
80101fec:	68 14 6a 10 80       	push   $0x80106a14
80101ff1:	e8 2f e6 ff ff       	call   80100625 <cprintf>
80101ff6:	83 c4 10             	add    $0x10,%esp
80101ff9:	eb e7                	jmp    80101fe2 <ioapicinit+0x3f>
80101ffb:	8d 53 20             	lea    0x20(%ebx),%edx
80101ffe:	81 ca 00 00 01 00    	or     $0x10000,%edx
80102004:	8d 74 1b 10          	lea    0x10(%ebx,%ebx,1),%esi
80102008:	89 f0                	mov    %esi,%eax
8010200a:	e8 83 ff ff ff       	call   80101f92 <ioapicwrite>
8010200f:	8d 46 01             	lea    0x1(%esi),%eax
80102012:	ba 00 00 00 00       	mov    $0x0,%edx
80102017:	e8 76 ff ff ff       	call   80101f92 <ioapicwrite>
8010201c:	83 c3 01             	add    $0x1,%ebx
8010201f:	39 fb                	cmp    %edi,%ebx
80102021:	7e d8                	jle    80101ffb <ioapicinit+0x58>
80102023:	8d 65 f4             	lea    -0xc(%ebp),%esp
80102026:	5b                   	pop    %ebx
80102027:	5e                   	pop    %esi
80102028:	5f                   	pop    %edi
80102029:	5d                   	pop    %ebp
8010202a:	c3                   	ret    

8010202b <ioapicenable>:
8010202b:	f3 0f 1e fb          	endbr32 
8010202f:	55                   	push   %ebp
80102030:	89 e5                	mov    %esp,%ebp
80102032:	53                   	push   %ebx
80102033:	83 ec 04             	sub    $0x4,%esp
80102036:	8b 45 08             	mov    0x8(%ebp),%eax
80102039:	8d 50 20             	lea    0x20(%eax),%edx
8010203c:	8d 5c 00 10          	lea    0x10(%eax,%eax,1),%ebx
80102040:	89 d8                	mov    %ebx,%eax
80102042:	e8 4b ff ff ff       	call   80101f92 <ioapicwrite>
80102047:	8b 55 0c             	mov    0xc(%ebp),%edx
8010204a:	c1 e2 18             	shl    $0x18,%edx
8010204d:	8d 43 01             	lea    0x1(%ebx),%eax
80102050:	e8 3d ff ff ff       	call   80101f92 <ioapicwrite>
80102055:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80102058:	c9                   	leave  
80102059:	c3                   	ret    

8010205a <kfree>:
8010205a:	f3 0f 1e fb          	endbr32 
8010205e:	55                   	push   %ebp
8010205f:	89 e5                	mov    %esp,%ebp
80102061:	53                   	push   %ebx
80102062:	83 ec 04             	sub    $0x4,%esp
80102065:	8b 5d 08             	mov    0x8(%ebp),%ebx
80102068:	f7 c3 ff 0f 00 00    	test   $0xfff,%ebx
8010206e:	75 4c                	jne    801020bc <kfree+0x62>
80102070:	81 fb d0 54 11 80    	cmp    $0x801154d0,%ebx
80102076:	72 44                	jb     801020bc <kfree+0x62>
80102078:	8d 83 00 00 00 80    	lea    -0x80000000(%ebx),%eax
8010207e:	3d ff ff ff 0d       	cmp    $0xdffffff,%eax
80102083:	77 37                	ja     801020bc <kfree+0x62>
80102085:	83 ec 04             	sub    $0x4,%esp
80102088:	68 00 10 00 00       	push   $0x1000
8010208d:	6a 01                	push   $0x1
8010208f:	53                   	push   %ebx
80102090:	e8 10 1d 00 00       	call   80103da5 <memset>
80102095:	83 c4 10             	add    $0x10,%esp
80102098:	83 3d 74 16 11 80 00 	cmpl   $0x0,0x80111674
8010209f:	75 28                	jne    801020c9 <kfree+0x6f>
801020a1:	a1 78 16 11 80       	mov    0x80111678,%eax
801020a6:	89 03                	mov    %eax,(%ebx)
801020a8:	89 1d 78 16 11 80    	mov    %ebx,0x80111678
801020ae:	83 3d 74 16 11 80 00 	cmpl   $0x0,0x80111674
801020b5:	75 24                	jne    801020db <kfree+0x81>
801020b7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801020ba:	c9                   	leave  
801020bb:	c3                   	ret    
801020bc:	83 ec 0c             	sub    $0xc,%esp
801020bf:	68 46 6a 10 80       	push   $0x80106a46
801020c4:	e8 93 e2 ff ff       	call   8010035c <panic>
801020c9:	83 ec 0c             	sub    $0xc,%esp
801020cc:	68 40 16 11 80       	push   $0x80111640
801020d1:	e8 1b 1c 00 00       	call   80103cf1 <acquire>
801020d6:	83 c4 10             	add    $0x10,%esp
801020d9:	eb c6                	jmp    801020a1 <kfree+0x47>
801020db:	83 ec 0c             	sub    $0xc,%esp
801020de:	68 40 16 11 80       	push   $0x80111640
801020e3:	e8 72 1c 00 00       	call   80103d5a <release>
801020e8:	83 c4 10             	add    $0x10,%esp
801020eb:	eb ca                	jmp    801020b7 <kfree+0x5d>

801020ed <freerange>:
801020ed:	f3 0f 1e fb          	endbr32 
801020f1:	55                   	push   %ebp
801020f2:	89 e5                	mov    %esp,%ebp
801020f4:	56                   	push   %esi
801020f5:	53                   	push   %ebx
801020f6:	8b 5d 0c             	mov    0xc(%ebp),%ebx
801020f9:	8b 45 08             	mov    0x8(%ebp),%eax
801020fc:	05 ff 0f 00 00       	add    $0xfff,%eax
80102101:	25 00 f0 ff ff       	and    $0xfffff000,%eax
80102106:	eb 0e                	jmp    80102116 <freerange+0x29>
80102108:	83 ec 0c             	sub    $0xc,%esp
8010210b:	50                   	push   %eax
8010210c:	e8 49 ff ff ff       	call   8010205a <kfree>
80102111:	83 c4 10             	add    $0x10,%esp
80102114:	89 f0                	mov    %esi,%eax
80102116:	8d b0 00 10 00 00    	lea    0x1000(%eax),%esi
8010211c:	39 de                	cmp    %ebx,%esi
8010211e:	76 e8                	jbe    80102108 <freerange+0x1b>
80102120:	8d 65 f8             	lea    -0x8(%ebp),%esp
80102123:	5b                   	pop    %ebx
80102124:	5e                   	pop    %esi
80102125:	5d                   	pop    %ebp
80102126:	c3                   	ret    

80102127 <kinit1>:
80102127:	f3 0f 1e fb          	endbr32 
8010212b:	55                   	push   %ebp
8010212c:	89 e5                	mov    %esp,%ebp
8010212e:	83 ec 10             	sub    $0x10,%esp
80102131:	68 4c 6a 10 80       	push   $0x80106a4c
80102136:	68 40 16 11 80       	push   $0x80111640
8010213b:	e8 61 1a 00 00       	call   80103ba1 <initlock>
80102140:	c7 05 74 16 11 80 00 	movl   $0x0,0x80111674
80102147:	00 00 00 
8010214a:	83 c4 08             	add    $0x8,%esp
8010214d:	ff 75 0c             	push   0xc(%ebp)
80102150:	ff 75 08             	push   0x8(%ebp)
80102153:	e8 95 ff ff ff       	call   801020ed <freerange>
80102158:	83 c4 10             	add    $0x10,%esp
8010215b:	c9                   	leave  
8010215c:	c3                   	ret    

8010215d <kinit2>:
8010215d:	f3 0f 1e fb          	endbr32 
80102161:	55                   	push   %ebp
80102162:	89 e5                	mov    %esp,%ebp
80102164:	83 ec 10             	sub    $0x10,%esp
80102167:	ff 75 0c             	push   0xc(%ebp)
8010216a:	ff 75 08             	push   0x8(%ebp)
8010216d:	e8 7b ff ff ff       	call   801020ed <freerange>
80102172:	c7 05 74 16 11 80 01 	movl   $0x1,0x80111674
80102179:	00 00 00 
8010217c:	83 c4 10             	add    $0x10,%esp
8010217f:	c9                   	leave  
80102180:	c3                   	ret    

80102181 <kalloc>:
80102181:	f3 0f 1e fb          	endbr32 
80102185:	55                   	push   %ebp
80102186:	89 e5                	mov    %esp,%ebp
80102188:	53                   	push   %ebx
80102189:	83 ec 04             	sub    $0x4,%esp
8010218c:	83 3d 74 16 11 80 00 	cmpl   $0x0,0x80111674
80102193:	75 21                	jne    801021b6 <kalloc+0x35>
80102195:	8b 1d 78 16 11 80    	mov    0x80111678,%ebx
8010219b:	85 db                	test   %ebx,%ebx
8010219d:	74 07                	je     801021a6 <kalloc+0x25>
8010219f:	8b 03                	mov    (%ebx),%eax
801021a1:	a3 78 16 11 80       	mov    %eax,0x80111678
801021a6:	83 3d 74 16 11 80 00 	cmpl   $0x0,0x80111674
801021ad:	75 19                	jne    801021c8 <kalloc+0x47>
801021af:	89 d8                	mov    %ebx,%eax
801021b1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801021b4:	c9                   	leave  
801021b5:	c3                   	ret    
801021b6:	83 ec 0c             	sub    $0xc,%esp
801021b9:	68 40 16 11 80       	push   $0x80111640
801021be:	e8 2e 1b 00 00       	call   80103cf1 <acquire>
801021c3:	83 c4 10             	add    $0x10,%esp
801021c6:	eb cd                	jmp    80102195 <kalloc+0x14>
801021c8:	83 ec 0c             	sub    $0xc,%esp
801021cb:	68 40 16 11 80       	push   $0x80111640
801021d0:	e8 85 1b 00 00       	call   80103d5a <release>
801021d5:	83 c4 10             	add    $0x10,%esp
801021d8:	eb d5                	jmp    801021af <kalloc+0x2e>

801021da <kbdgetc>:
801021da:	f3 0f 1e fb          	endbr32 
801021de:	ba 64 00 00 00       	mov    $0x64,%edx
801021e3:	ec                   	in     (%dx),%al
801021e4:	a8 01                	test   $0x1,%al
801021e6:	0f 84 b3 00 00 00    	je     8010229f <kbdgetc+0xc5>
801021ec:	ba 60 00 00 00       	mov    $0x60,%edx
801021f1:	ec                   	in     (%dx),%al
801021f2:	0f b6 d0             	movzbl %al,%edx
801021f5:	3c e0                	cmp    $0xe0,%al
801021f7:	74 60                	je     80102259 <kbdgetc+0x7f>
801021f9:	84 c0                	test   %al,%al
801021fb:	78 69                	js     80102266 <kbdgetc+0x8c>
801021fd:	8b 0d 7c 16 11 80    	mov    0x8011167c,%ecx
80102203:	f6 c1 40             	test   $0x40,%cl
80102206:	74 0f                	je     80102217 <kbdgetc+0x3d>
80102208:	83 c8 80             	or     $0xffffff80,%eax
8010220b:	0f b6 d0             	movzbl %al,%edx
8010220e:	83 e1 bf             	and    $0xffffffbf,%ecx
80102211:	89 0d 7c 16 11 80    	mov    %ecx,0x8011167c
80102217:	0f b6 82 80 6b 10 80 	movzbl -0x7fef9480(%edx),%eax
8010221e:	0b 05 7c 16 11 80    	or     0x8011167c,%eax
80102224:	a3 7c 16 11 80       	mov    %eax,0x8011167c
80102229:	0f b6 8a 80 6a 10 80 	movzbl -0x7fef9580(%edx),%ecx
80102230:	31 c8                	xor    %ecx,%eax
80102232:	a3 7c 16 11 80       	mov    %eax,0x8011167c
80102237:	89 c1                	mov    %eax,%ecx
80102239:	83 e1 03             	and    $0x3,%ecx
8010223c:	8b 0c 8d 60 6a 10 80 	mov    -0x7fef95a0(,%ecx,4),%ecx
80102243:	0f b6 14 11          	movzbl (%ecx,%edx,1),%edx
80102247:	a8 08                	test   $0x8,%al
80102249:	74 0b                	je     80102256 <kbdgetc+0x7c>
8010224b:	8d 42 9f             	lea    -0x61(%edx),%eax
8010224e:	83 f8 19             	cmp    $0x19,%eax
80102251:	77 3f                	ja     80102292 <kbdgetc+0xb8>
80102253:	83 ea 20             	sub    $0x20,%edx
80102256:	89 d0                	mov    %edx,%eax
80102258:	c3                   	ret    
80102259:	83 0d 7c 16 11 80 40 	orl    $0x40,0x8011167c
80102260:	b8 00 00 00 00       	mov    $0x0,%eax
80102265:	c3                   	ret    
80102266:	8b 0d 7c 16 11 80    	mov    0x8011167c,%ecx
8010226c:	f6 c1 40             	test   $0x40,%cl
8010226f:	75 05                	jne    80102276 <kbdgetc+0x9c>
80102271:	89 c2                	mov    %eax,%edx
80102273:	83 e2 7f             	and    $0x7f,%edx
80102276:	0f b6 82 80 6b 10 80 	movzbl -0x7fef9480(%edx),%eax
8010227d:	83 c8 40             	or     $0x40,%eax
80102280:	0f b6 c0             	movzbl %al,%eax
80102283:	f7 d0                	not    %eax
80102285:	21 c8                	and    %ecx,%eax
80102287:	a3 7c 16 11 80       	mov    %eax,0x8011167c
8010228c:	b8 00 00 00 00       	mov    $0x0,%eax
80102291:	c3                   	ret    
80102292:	8d 42 bf             	lea    -0x41(%edx),%eax
80102295:	83 f8 19             	cmp    $0x19,%eax
80102298:	77 bc                	ja     80102256 <kbdgetc+0x7c>
8010229a:	83 c2 20             	add    $0x20,%edx
8010229d:	eb b7                	jmp    80102256 <kbdgetc+0x7c>
8010229f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801022a4:	c3                   	ret    

801022a5 <kbdintr>:
801022a5:	f3 0f 1e fb          	endbr32 
801022a9:	55                   	push   %ebp
801022aa:	89 e5                	mov    %esp,%ebp
801022ac:	83 ec 14             	sub    $0x14,%esp
801022af:	68 da 21 10 80       	push   $0x801021da
801022b4:	e8 9c e4 ff ff       	call   80100755 <consoleintr>
801022b9:	83 c4 10             	add    $0x10,%esp
801022bc:	c9                   	leave  
801022bd:	c3                   	ret    

801022be <lapicw>:
801022be:	8b 0d 80 16 11 80    	mov    0x80111680,%ecx
801022c4:	8d 04 81             	lea    (%ecx,%eax,4),%eax
801022c7:	89 10                	mov    %edx,(%eax)
801022c9:	a1 80 16 11 80       	mov    0x80111680,%eax
801022ce:	8b 40 20             	mov    0x20(%eax),%eax
801022d1:	c3                   	ret    

801022d2 <cmos_read>:
801022d2:	ba 70 00 00 00       	mov    $0x70,%edx
801022d7:	ee                   	out    %al,(%dx)
801022d8:	ba 71 00 00 00       	mov    $0x71,%edx
801022dd:	ec                   	in     (%dx),%al
801022de:	0f b6 c0             	movzbl %al,%eax
801022e1:	c3                   	ret    

801022e2 <fill_rtcdate>:
801022e2:	55                   	push   %ebp
801022e3:	89 e5                	mov    %esp,%ebp
801022e5:	53                   	push   %ebx
801022e6:	83 ec 04             	sub    $0x4,%esp
801022e9:	89 c3                	mov    %eax,%ebx
801022eb:	b8 00 00 00 00       	mov    $0x0,%eax
801022f0:	e8 dd ff ff ff       	call   801022d2 <cmos_read>
801022f5:	89 03                	mov    %eax,(%ebx)
801022f7:	b8 02 00 00 00       	mov    $0x2,%eax
801022fc:	e8 d1 ff ff ff       	call   801022d2 <cmos_read>
80102301:	89 43 04             	mov    %eax,0x4(%ebx)
80102304:	b8 04 00 00 00       	mov    $0x4,%eax
80102309:	e8 c4 ff ff ff       	call   801022d2 <cmos_read>
8010230e:	89 43 08             	mov    %eax,0x8(%ebx)
80102311:	b8 07 00 00 00       	mov    $0x7,%eax
80102316:	e8 b7 ff ff ff       	call   801022d2 <cmos_read>
8010231b:	89 43 0c             	mov    %eax,0xc(%ebx)
8010231e:	b8 08 00 00 00       	mov    $0x8,%eax
80102323:	e8 aa ff ff ff       	call   801022d2 <cmos_read>
80102328:	89 43 10             	mov    %eax,0x10(%ebx)
8010232b:	b8 09 00 00 00       	mov    $0x9,%eax
80102330:	e8 9d ff ff ff       	call   801022d2 <cmos_read>
80102335:	89 43 14             	mov    %eax,0x14(%ebx)
80102338:	8b 5d fc             	mov    -0x4(%ebp),%ebx
8010233b:	c9                   	leave  
8010233c:	c3                   	ret    

8010233d <lapicinit>:
8010233d:	f3 0f 1e fb          	endbr32 
80102341:	83 3d 80 16 11 80 00 	cmpl   $0x0,0x80111680
80102348:	0f 84 fe 00 00 00    	je     8010244c <lapicinit+0x10f>
8010234e:	55                   	push   %ebp
8010234f:	89 e5                	mov    %esp,%ebp
80102351:	83 ec 08             	sub    $0x8,%esp
80102354:	ba 3f 01 00 00       	mov    $0x13f,%edx
80102359:	b8 3c 00 00 00       	mov    $0x3c,%eax
8010235e:	e8 5b ff ff ff       	call   801022be <lapicw>
80102363:	ba 0b 00 00 00       	mov    $0xb,%edx
80102368:	b8 f8 00 00 00       	mov    $0xf8,%eax
8010236d:	e8 4c ff ff ff       	call   801022be <lapicw>
80102372:	ba 20 00 02 00       	mov    $0x20020,%edx
80102377:	b8 c8 00 00 00       	mov    $0xc8,%eax
8010237c:	e8 3d ff ff ff       	call   801022be <lapicw>
80102381:	ba 80 96 98 00       	mov    $0x989680,%edx
80102386:	b8 e0 00 00 00       	mov    $0xe0,%eax
8010238b:	e8 2e ff ff ff       	call   801022be <lapicw>
80102390:	ba 00 00 01 00       	mov    $0x10000,%edx
80102395:	b8 d4 00 00 00       	mov    $0xd4,%eax
8010239a:	e8 1f ff ff ff       	call   801022be <lapicw>
8010239f:	ba 00 00 01 00       	mov    $0x10000,%edx
801023a4:	b8 d8 00 00 00       	mov    $0xd8,%eax
801023a9:	e8 10 ff ff ff       	call   801022be <lapicw>
801023ae:	a1 80 16 11 80       	mov    0x80111680,%eax
801023b3:	8b 40 30             	mov    0x30(%eax),%eax
801023b6:	c1 e8 10             	shr    $0x10,%eax
801023b9:	a8 fc                	test   $0xfc,%al
801023bb:	75 7b                	jne    80102438 <lapicinit+0xfb>
801023bd:	ba 33 00 00 00       	mov    $0x33,%edx
801023c2:	b8 dc 00 00 00       	mov    $0xdc,%eax
801023c7:	e8 f2 fe ff ff       	call   801022be <lapicw>
801023cc:	ba 00 00 00 00       	mov    $0x0,%edx
801023d1:	b8 a0 00 00 00       	mov    $0xa0,%eax
801023d6:	e8 e3 fe ff ff       	call   801022be <lapicw>
801023db:	ba 00 00 00 00       	mov    $0x0,%edx
801023e0:	b8 a0 00 00 00       	mov    $0xa0,%eax
801023e5:	e8 d4 fe ff ff       	call   801022be <lapicw>
801023ea:	ba 00 00 00 00       	mov    $0x0,%edx
801023ef:	b8 2c 00 00 00       	mov    $0x2c,%eax
801023f4:	e8 c5 fe ff ff       	call   801022be <lapicw>
801023f9:	ba 00 00 00 00       	mov    $0x0,%edx
801023fe:	b8 c4 00 00 00       	mov    $0xc4,%eax
80102403:	e8 b6 fe ff ff       	call   801022be <lapicw>
80102408:	ba 00 85 08 00       	mov    $0x88500,%edx
8010240d:	b8 c0 00 00 00       	mov    $0xc0,%eax
80102412:	e8 a7 fe ff ff       	call   801022be <lapicw>
80102417:	a1 80 16 11 80       	mov    0x80111680,%eax
8010241c:	8b 80 00 03 00 00    	mov    0x300(%eax),%eax
80102422:	f6 c4 10             	test   $0x10,%ah
80102425:	75 f0                	jne    80102417 <lapicinit+0xda>
80102427:	ba 00 00 00 00       	mov    $0x0,%edx
8010242c:	b8 20 00 00 00       	mov    $0x20,%eax
80102431:	e8 88 fe ff ff       	call   801022be <lapicw>
80102436:	c9                   	leave  
80102437:	c3                   	ret    
80102438:	ba 00 00 01 00       	mov    $0x10000,%edx
8010243d:	b8 d0 00 00 00       	mov    $0xd0,%eax
80102442:	e8 77 fe ff ff       	call   801022be <lapicw>
80102447:	e9 71 ff ff ff       	jmp    801023bd <lapicinit+0x80>
8010244c:	c3                   	ret    

8010244d <lapicid>:
8010244d:	f3 0f 1e fb          	endbr32 
80102451:	a1 80 16 11 80       	mov    0x80111680,%eax
80102456:	85 c0                	test   %eax,%eax
80102458:	74 07                	je     80102461 <lapicid+0x14>
8010245a:	8b 40 20             	mov    0x20(%eax),%eax
8010245d:	c1 e8 18             	shr    $0x18,%eax
80102460:	c3                   	ret    
80102461:	b8 00 00 00 00       	mov    $0x0,%eax
80102466:	c3                   	ret    

80102467 <lapiceoi>:
80102467:	f3 0f 1e fb          	endbr32 
8010246b:	83 3d 80 16 11 80 00 	cmpl   $0x0,0x80111680
80102472:	74 17                	je     8010248b <lapiceoi+0x24>
80102474:	55                   	push   %ebp
80102475:	89 e5                	mov    %esp,%ebp
80102477:	83 ec 08             	sub    $0x8,%esp
8010247a:	ba 00 00 00 00       	mov    $0x0,%edx
8010247f:	b8 2c 00 00 00       	mov    $0x2c,%eax
80102484:	e8 35 fe ff ff       	call   801022be <lapicw>
80102489:	c9                   	leave  
8010248a:	c3                   	ret    
8010248b:	c3                   	ret    

8010248c <microdelay>:
8010248c:	f3 0f 1e fb          	endbr32 
80102490:	c3                   	ret    

80102491 <lapicstartap>:
80102491:	f3 0f 1e fb          	endbr32 
80102495:	55                   	push   %ebp
80102496:	89 e5                	mov    %esp,%ebp
80102498:	57                   	push   %edi
80102499:	56                   	push   %esi
8010249a:	53                   	push   %ebx
8010249b:	83 ec 0c             	sub    $0xc,%esp
8010249e:	8b 75 08             	mov    0x8(%ebp),%esi
801024a1:	8b 7d 0c             	mov    0xc(%ebp),%edi
801024a4:	b8 0f 00 00 00       	mov    $0xf,%eax
801024a9:	ba 70 00 00 00       	mov    $0x70,%edx
801024ae:	ee                   	out    %al,(%dx)
801024af:	b8 0a 00 00 00       	mov    $0xa,%eax
801024b4:	ba 71 00 00 00       	mov    $0x71,%edx
801024b9:	ee                   	out    %al,(%dx)
801024ba:	66 c7 05 67 04 00 80 	movw   $0x0,0x80000467
801024c1:	00 00 
801024c3:	89 f8                	mov    %edi,%eax
801024c5:	c1 e8 04             	shr    $0x4,%eax
801024c8:	66 a3 69 04 00 80    	mov    %ax,0x80000469
801024ce:	c1 e6 18             	shl    $0x18,%esi
801024d1:	89 f2                	mov    %esi,%edx
801024d3:	b8 c4 00 00 00       	mov    $0xc4,%eax
801024d8:	e8 e1 fd ff ff       	call   801022be <lapicw>
801024dd:	ba 00 c5 00 00       	mov    $0xc500,%edx
801024e2:	b8 c0 00 00 00       	mov    $0xc0,%eax
801024e7:	e8 d2 fd ff ff       	call   801022be <lapicw>
801024ec:	ba 00 85 00 00       	mov    $0x8500,%edx
801024f1:	b8 c0 00 00 00       	mov    $0xc0,%eax
801024f6:	e8 c3 fd ff ff       	call   801022be <lapicw>
801024fb:	bb 00 00 00 00       	mov    $0x0,%ebx
80102500:	eb 21                	jmp    80102523 <lapicstartap+0x92>
80102502:	89 f2                	mov    %esi,%edx
80102504:	b8 c4 00 00 00       	mov    $0xc4,%eax
80102509:	e8 b0 fd ff ff       	call   801022be <lapicw>
8010250e:	89 fa                	mov    %edi,%edx
80102510:	c1 ea 0c             	shr    $0xc,%edx
80102513:	80 ce 06             	or     $0x6,%dh
80102516:	b8 c0 00 00 00       	mov    $0xc0,%eax
8010251b:	e8 9e fd ff ff       	call   801022be <lapicw>
80102520:	83 c3 01             	add    $0x1,%ebx
80102523:	83 fb 01             	cmp    $0x1,%ebx
80102526:	7e da                	jle    80102502 <lapicstartap+0x71>
80102528:	83 c4 0c             	add    $0xc,%esp
8010252b:	5b                   	pop    %ebx
8010252c:	5e                   	pop    %esi
8010252d:	5f                   	pop    %edi
8010252e:	5d                   	pop    %ebp
8010252f:	c3                   	ret    

80102530 <cmostime>:
80102530:	f3 0f 1e fb          	endbr32 
80102534:	55                   	push   %ebp
80102535:	89 e5                	mov    %esp,%ebp
80102537:	57                   	push   %edi
80102538:	56                   	push   %esi
80102539:	53                   	push   %ebx
8010253a:	83 ec 3c             	sub    $0x3c,%esp
8010253d:	8b 75 08             	mov    0x8(%ebp),%esi
80102540:	b8 0b 00 00 00       	mov    $0xb,%eax
80102545:	e8 88 fd ff ff       	call   801022d2 <cmos_read>
8010254a:	83 e0 04             	and    $0x4,%eax
8010254d:	89 c7                	mov    %eax,%edi
8010254f:	8d 45 d0             	lea    -0x30(%ebp),%eax
80102552:	e8 8b fd ff ff       	call   801022e2 <fill_rtcdate>
80102557:	b8 0a 00 00 00       	mov    $0xa,%eax
8010255c:	e8 71 fd ff ff       	call   801022d2 <cmos_read>
80102561:	a8 80                	test   $0x80,%al
80102563:	75 ea                	jne    8010254f <cmostime+0x1f>
80102565:	8d 5d b8             	lea    -0x48(%ebp),%ebx
80102568:	89 d8                	mov    %ebx,%eax
8010256a:	e8 73 fd ff ff       	call   801022e2 <fill_rtcdate>
8010256f:	83 ec 04             	sub    $0x4,%esp
80102572:	6a 18                	push   $0x18
80102574:	53                   	push   %ebx
80102575:	8d 45 d0             	lea    -0x30(%ebp),%eax
80102578:	50                   	push   %eax
80102579:	e8 6e 18 00 00       	call   80103dec <memcmp>
8010257e:	83 c4 10             	add    $0x10,%esp
80102581:	85 c0                	test   %eax,%eax
80102583:	75 ca                	jne    8010254f <cmostime+0x1f>
80102585:	85 ff                	test   %edi,%edi
80102587:	75 78                	jne    80102601 <cmostime+0xd1>
80102589:	8b 45 d0             	mov    -0x30(%ebp),%eax
8010258c:	89 c2                	mov    %eax,%edx
8010258e:	c1 ea 04             	shr    $0x4,%edx
80102591:	8d 14 92             	lea    (%edx,%edx,4),%edx
80102594:	83 e0 0f             	and    $0xf,%eax
80102597:	8d 04 50             	lea    (%eax,%edx,2),%eax
8010259a:	89 45 d0             	mov    %eax,-0x30(%ebp)
8010259d:	8b 45 d4             	mov    -0x2c(%ebp),%eax
801025a0:	89 c2                	mov    %eax,%edx
801025a2:	c1 ea 04             	shr    $0x4,%edx
801025a5:	8d 14 92             	lea    (%edx,%edx,4),%edx
801025a8:	83 e0 0f             	and    $0xf,%eax
801025ab:	8d 04 50             	lea    (%eax,%edx,2),%eax
801025ae:	89 45 d4             	mov    %eax,-0x2c(%ebp)
801025b1:	8b 45 d8             	mov    -0x28(%ebp),%eax
801025b4:	89 c2                	mov    %eax,%edx
801025b6:	c1 ea 04             	shr    $0x4,%edx
801025b9:	8d 14 92             	lea    (%edx,%edx,4),%edx
801025bc:	83 e0 0f             	and    $0xf,%eax
801025bf:	8d 04 50             	lea    (%eax,%edx,2),%eax
801025c2:	89 45 d8             	mov    %eax,-0x28(%ebp)
801025c5:	8b 45 dc             	mov    -0x24(%ebp),%eax
801025c8:	89 c2                	mov    %eax,%edx
801025ca:	c1 ea 04             	shr    $0x4,%edx
801025cd:	8d 14 92             	lea    (%edx,%edx,4),%edx
801025d0:	83 e0 0f             	and    $0xf,%eax
801025d3:	8d 04 50             	lea    (%eax,%edx,2),%eax
801025d6:	89 45 dc             	mov    %eax,-0x24(%ebp)
801025d9:	8b 45 e0             	mov    -0x20(%ebp),%eax
801025dc:	89 c2                	mov    %eax,%edx
801025de:	c1 ea 04             	shr    $0x4,%edx
801025e1:	8d 14 92             	lea    (%edx,%edx,4),%edx
801025e4:	83 e0 0f             	and    $0xf,%eax
801025e7:	8d 04 50             	lea    (%eax,%edx,2),%eax
801025ea:	89 45 e0             	mov    %eax,-0x20(%ebp)
801025ed:	8b 45 e4             	mov    -0x1c(%ebp),%eax
801025f0:	89 c2                	mov    %eax,%edx
801025f2:	c1 ea 04             	shr    $0x4,%edx
801025f5:	8d 14 92             	lea    (%edx,%edx,4),%edx
801025f8:	83 e0 0f             	and    $0xf,%eax
801025fb:	8d 04 50             	lea    (%eax,%edx,2),%eax
801025fe:	89 45 e4             	mov    %eax,-0x1c(%ebp)
80102601:	8b 45 d0             	mov    -0x30(%ebp),%eax
80102604:	89 06                	mov    %eax,(%esi)
80102606:	8b 45 d4             	mov    -0x2c(%ebp),%eax
80102609:	89 46 04             	mov    %eax,0x4(%esi)
8010260c:	8b 45 d8             	mov    -0x28(%ebp),%eax
8010260f:	89 46 08             	mov    %eax,0x8(%esi)
80102612:	8b 45 dc             	mov    -0x24(%ebp),%eax
80102615:	89 46 0c             	mov    %eax,0xc(%esi)
80102618:	8b 45 e0             	mov    -0x20(%ebp),%eax
8010261b:	89 46 10             	mov    %eax,0x10(%esi)
8010261e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80102621:	89 46 14             	mov    %eax,0x14(%esi)
80102624:	81 46 14 d0 07 00 00 	addl   $0x7d0,0x14(%esi)
8010262b:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010262e:	5b                   	pop    %ebx
8010262f:	5e                   	pop    %esi
80102630:	5f                   	pop    %edi
80102631:	5d                   	pop    %ebp
80102632:	c3                   	ret    

80102633 <read_head>:
80102633:	55                   	push   %ebp
80102634:	89 e5                	mov    %esp,%ebp
80102636:	53                   	push   %ebx
80102637:	83 ec 0c             	sub    $0xc,%esp
8010263a:	ff 35 d4 16 11 80    	push   0x801116d4
80102640:	ff 35 e4 16 11 80    	push   0x801116e4
80102646:	e8 25 db ff ff       	call   80100170 <bread>
8010264b:	89 c1                	mov    %eax,%ecx
8010264d:	8b 58 5c             	mov    0x5c(%eax),%ebx
80102650:	89 1d e8 16 11 80    	mov    %ebx,0x801116e8
80102656:	83 c4 10             	add    $0x10,%esp
80102659:	b8 00 00 00 00       	mov    $0x0,%eax
8010265e:	eb 0e                	jmp    8010266e <read_head+0x3b>
80102660:	8b 54 81 60          	mov    0x60(%ecx,%eax,4),%edx
80102664:	89 14 85 ec 16 11 80 	mov    %edx,-0x7feee914(,%eax,4)
8010266b:	83 c0 01             	add    $0x1,%eax
8010266e:	39 c3                	cmp    %eax,%ebx
80102670:	7f ee                	jg     80102660 <read_head+0x2d>
80102672:	83 ec 0c             	sub    $0xc,%esp
80102675:	51                   	push   %ecx
80102676:	e8 66 db ff ff       	call   801001e1 <brelse>
8010267b:	83 c4 10             	add    $0x10,%esp
8010267e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80102681:	c9                   	leave  
80102682:	c3                   	ret    

80102683 <install_trans>:
80102683:	55                   	push   %ebp
80102684:	89 e5                	mov    %esp,%ebp
80102686:	57                   	push   %edi
80102687:	56                   	push   %esi
80102688:	53                   	push   %ebx
80102689:	83 ec 0c             	sub    $0xc,%esp
8010268c:	be 00 00 00 00       	mov    $0x0,%esi
80102691:	eb 66                	jmp    801026f9 <install_trans+0x76>
80102693:	89 f0                	mov    %esi,%eax
80102695:	03 05 d4 16 11 80    	add    0x801116d4,%eax
8010269b:	83 c0 01             	add    $0x1,%eax
8010269e:	83 ec 08             	sub    $0x8,%esp
801026a1:	50                   	push   %eax
801026a2:	ff 35 e4 16 11 80    	push   0x801116e4
801026a8:	e8 c3 da ff ff       	call   80100170 <bread>
801026ad:	89 c7                	mov    %eax,%edi
801026af:	83 c4 08             	add    $0x8,%esp
801026b2:	ff 34 b5 ec 16 11 80 	push   -0x7feee914(,%esi,4)
801026b9:	ff 35 e4 16 11 80    	push   0x801116e4
801026bf:	e8 ac da ff ff       	call   80100170 <bread>
801026c4:	89 c3                	mov    %eax,%ebx
801026c6:	8d 57 5c             	lea    0x5c(%edi),%edx
801026c9:	8d 40 5c             	lea    0x5c(%eax),%eax
801026cc:	83 c4 0c             	add    $0xc,%esp
801026cf:	68 00 02 00 00       	push   $0x200
801026d4:	52                   	push   %edx
801026d5:	50                   	push   %eax
801026d6:	e8 4a 17 00 00       	call   80103e25 <memmove>
801026db:	89 1c 24             	mov    %ebx,(%esp)
801026de:	e8 bf da ff ff       	call   801001a2 <bwrite>
801026e3:	89 3c 24             	mov    %edi,(%esp)
801026e6:	e8 f6 da ff ff       	call   801001e1 <brelse>
801026eb:	89 1c 24             	mov    %ebx,(%esp)
801026ee:	e8 ee da ff ff       	call   801001e1 <brelse>
801026f3:	83 c6 01             	add    $0x1,%esi
801026f6:	83 c4 10             	add    $0x10,%esp
801026f9:	39 35 e8 16 11 80    	cmp    %esi,0x801116e8
801026ff:	7f 92                	jg     80102693 <install_trans+0x10>
80102701:	8d 65 f4             	lea    -0xc(%ebp),%esp
80102704:	5b                   	pop    %ebx
80102705:	5e                   	pop    %esi
80102706:	5f                   	pop    %edi
80102707:	5d                   	pop    %ebp
80102708:	c3                   	ret    

80102709 <write_head>:
80102709:	55                   	push   %ebp
8010270a:	89 e5                	mov    %esp,%ebp
8010270c:	53                   	push   %ebx
8010270d:	83 ec 0c             	sub    $0xc,%esp
80102710:	ff 35 d4 16 11 80    	push   0x801116d4
80102716:	ff 35 e4 16 11 80    	push   0x801116e4
8010271c:	e8 4f da ff ff       	call   80100170 <bread>
80102721:	89 c3                	mov    %eax,%ebx
80102723:	8b 0d e8 16 11 80    	mov    0x801116e8,%ecx
80102729:	89 48 5c             	mov    %ecx,0x5c(%eax)
8010272c:	83 c4 10             	add    $0x10,%esp
8010272f:	b8 00 00 00 00       	mov    $0x0,%eax
80102734:	eb 0e                	jmp    80102744 <write_head+0x3b>
80102736:	8b 14 85 ec 16 11 80 	mov    -0x7feee914(,%eax,4),%edx
8010273d:	89 54 83 60          	mov    %edx,0x60(%ebx,%eax,4)
80102741:	83 c0 01             	add    $0x1,%eax
80102744:	39 c1                	cmp    %eax,%ecx
80102746:	7f ee                	jg     80102736 <write_head+0x2d>
80102748:	83 ec 0c             	sub    $0xc,%esp
8010274b:	53                   	push   %ebx
8010274c:	e8 51 da ff ff       	call   801001a2 <bwrite>
80102751:	89 1c 24             	mov    %ebx,(%esp)
80102754:	e8 88 da ff ff       	call   801001e1 <brelse>
80102759:	83 c4 10             	add    $0x10,%esp
8010275c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
8010275f:	c9                   	leave  
80102760:	c3                   	ret    

80102761 <recover_from_log>:
80102761:	55                   	push   %ebp
80102762:	89 e5                	mov    %esp,%ebp
80102764:	83 ec 08             	sub    $0x8,%esp
80102767:	e8 c7 fe ff ff       	call   80102633 <read_head>
8010276c:	e8 12 ff ff ff       	call   80102683 <install_trans>
80102771:	c7 05 e8 16 11 80 00 	movl   $0x0,0x801116e8
80102778:	00 00 00 
8010277b:	e8 89 ff ff ff       	call   80102709 <write_head>
80102780:	c9                   	leave  
80102781:	c3                   	ret    

80102782 <write_log>:
80102782:	55                   	push   %ebp
80102783:	89 e5                	mov    %esp,%ebp
80102785:	57                   	push   %edi
80102786:	56                   	push   %esi
80102787:	53                   	push   %ebx
80102788:	83 ec 0c             	sub    $0xc,%esp
8010278b:	be 00 00 00 00       	mov    $0x0,%esi
80102790:	eb 66                	jmp    801027f8 <write_log+0x76>
80102792:	89 f0                	mov    %esi,%eax
80102794:	03 05 d4 16 11 80    	add    0x801116d4,%eax
8010279a:	83 c0 01             	add    $0x1,%eax
8010279d:	83 ec 08             	sub    $0x8,%esp
801027a0:	50                   	push   %eax
801027a1:	ff 35 e4 16 11 80    	push   0x801116e4
801027a7:	e8 c4 d9 ff ff       	call   80100170 <bread>
801027ac:	89 c3                	mov    %eax,%ebx
801027ae:	83 c4 08             	add    $0x8,%esp
801027b1:	ff 34 b5 ec 16 11 80 	push   -0x7feee914(,%esi,4)
801027b8:	ff 35 e4 16 11 80    	push   0x801116e4
801027be:	e8 ad d9 ff ff       	call   80100170 <bread>
801027c3:	89 c7                	mov    %eax,%edi
801027c5:	8d 50 5c             	lea    0x5c(%eax),%edx
801027c8:	8d 43 5c             	lea    0x5c(%ebx),%eax
801027cb:	83 c4 0c             	add    $0xc,%esp
801027ce:	68 00 02 00 00       	push   $0x200
801027d3:	52                   	push   %edx
801027d4:	50                   	push   %eax
801027d5:	e8 4b 16 00 00       	call   80103e25 <memmove>
801027da:	89 1c 24             	mov    %ebx,(%esp)
801027dd:	e8 c0 d9 ff ff       	call   801001a2 <bwrite>
801027e2:	89 3c 24             	mov    %edi,(%esp)
801027e5:	e8 f7 d9 ff ff       	call   801001e1 <brelse>
801027ea:	89 1c 24             	mov    %ebx,(%esp)
801027ed:	e8 ef d9 ff ff       	call   801001e1 <brelse>
801027f2:	83 c6 01             	add    $0x1,%esi
801027f5:	83 c4 10             	add    $0x10,%esp
801027f8:	39 35 e8 16 11 80    	cmp    %esi,0x801116e8
801027fe:	7f 92                	jg     80102792 <write_log+0x10>
80102800:	8d 65 f4             	lea    -0xc(%ebp),%esp
80102803:	5b                   	pop    %ebx
80102804:	5e                   	pop    %esi
80102805:	5f                   	pop    %edi
80102806:	5d                   	pop    %ebp
80102807:	c3                   	ret    

80102808 <commit>:
80102808:	83 3d e8 16 11 80 00 	cmpl   $0x0,0x801116e8
8010280f:	7f 01                	jg     80102812 <commit+0xa>
80102811:	c3                   	ret    
80102812:	55                   	push   %ebp
80102813:	89 e5                	mov    %esp,%ebp
80102815:	83 ec 08             	sub    $0x8,%esp
80102818:	e8 65 ff ff ff       	call   80102782 <write_log>
8010281d:	e8 e7 fe ff ff       	call   80102709 <write_head>
80102822:	e8 5c fe ff ff       	call   80102683 <install_trans>
80102827:	c7 05 e8 16 11 80 00 	movl   $0x0,0x801116e8
8010282e:	00 00 00 
80102831:	e8 d3 fe ff ff       	call   80102709 <write_head>
80102836:	c9                   	leave  
80102837:	c3                   	ret    

80102838 <initlog>:
80102838:	f3 0f 1e fb          	endbr32 
8010283c:	55                   	push   %ebp
8010283d:	89 e5                	mov    %esp,%ebp
8010283f:	53                   	push   %ebx
80102840:	83 ec 2c             	sub    $0x2c,%esp
80102843:	8b 5d 08             	mov    0x8(%ebp),%ebx
80102846:	68 80 6c 10 80       	push   $0x80106c80
8010284b:	68 a0 16 11 80       	push   $0x801116a0
80102850:	e8 4c 13 00 00       	call   80103ba1 <initlock>
80102855:	83 c4 08             	add    $0x8,%esp
80102858:	8d 45 dc             	lea    -0x24(%ebp),%eax
8010285b:	50                   	push   %eax
8010285c:	53                   	push   %ebx
8010285d:	e8 32 ea ff ff       	call   80101294 <readsb>
80102862:	8b 45 ec             	mov    -0x14(%ebp),%eax
80102865:	a3 d4 16 11 80       	mov    %eax,0x801116d4
8010286a:	8b 45 e8             	mov    -0x18(%ebp),%eax
8010286d:	a3 d8 16 11 80       	mov    %eax,0x801116d8
80102872:	89 1d e4 16 11 80    	mov    %ebx,0x801116e4
80102878:	e8 e4 fe ff ff       	call   80102761 <recover_from_log>
8010287d:	83 c4 10             	add    $0x10,%esp
80102880:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80102883:	c9                   	leave  
80102884:	c3                   	ret    

80102885 <begin_op>:
80102885:	f3 0f 1e fb          	endbr32 
80102889:	55                   	push   %ebp
8010288a:	89 e5                	mov    %esp,%ebp
8010288c:	83 ec 14             	sub    $0x14,%esp
8010288f:	68 a0 16 11 80       	push   $0x801116a0
80102894:	e8 58 14 00 00       	call   80103cf1 <acquire>
80102899:	83 c4 10             	add    $0x10,%esp
8010289c:	eb 15                	jmp    801028b3 <begin_op+0x2e>
8010289e:	83 ec 08             	sub    $0x8,%esp
801028a1:	68 a0 16 11 80       	push   $0x801116a0
801028a6:	68 a0 16 11 80       	push   $0x801116a0
801028ab:	e8 0e 0f 00 00       	call   801037be <sleep>
801028b0:	83 c4 10             	add    $0x10,%esp
801028b3:	83 3d e0 16 11 80 00 	cmpl   $0x0,0x801116e0
801028ba:	75 e2                	jne    8010289e <begin_op+0x19>
801028bc:	a1 dc 16 11 80       	mov    0x801116dc,%eax
801028c1:	83 c0 01             	add    $0x1,%eax
801028c4:	8d 0c 80             	lea    (%eax,%eax,4),%ecx
801028c7:	8d 14 09             	lea    (%ecx,%ecx,1),%edx
801028ca:	03 15 e8 16 11 80    	add    0x801116e8,%edx
801028d0:	83 fa 1e             	cmp    $0x1e,%edx
801028d3:	7e 17                	jle    801028ec <begin_op+0x67>
801028d5:	83 ec 08             	sub    $0x8,%esp
801028d8:	68 a0 16 11 80       	push   $0x801116a0
801028dd:	68 a0 16 11 80       	push   $0x801116a0
801028e2:	e8 d7 0e 00 00       	call   801037be <sleep>
801028e7:	83 c4 10             	add    $0x10,%esp
801028ea:	eb c7                	jmp    801028b3 <begin_op+0x2e>
801028ec:	a3 dc 16 11 80       	mov    %eax,0x801116dc
801028f1:	83 ec 0c             	sub    $0xc,%esp
801028f4:	68 a0 16 11 80       	push   $0x801116a0
801028f9:	e8 5c 14 00 00       	call   80103d5a <release>
801028fe:	83 c4 10             	add    $0x10,%esp
80102901:	c9                   	leave  
80102902:	c3                   	ret    

80102903 <end_op>:
80102903:	f3 0f 1e fb          	endbr32 
80102907:	55                   	push   %ebp
80102908:	89 e5                	mov    %esp,%ebp
8010290a:	53                   	push   %ebx
8010290b:	83 ec 10             	sub    $0x10,%esp
8010290e:	68 a0 16 11 80       	push   $0x801116a0
80102913:	e8 d9 13 00 00       	call   80103cf1 <acquire>
80102918:	a1 dc 16 11 80       	mov    0x801116dc,%eax
8010291d:	83 e8 01             	sub    $0x1,%eax
80102920:	a3 dc 16 11 80       	mov    %eax,0x801116dc
80102925:	8b 1d e0 16 11 80    	mov    0x801116e0,%ebx
8010292b:	83 c4 10             	add    $0x10,%esp
8010292e:	85 db                	test   %ebx,%ebx
80102930:	75 2c                	jne    8010295e <end_op+0x5b>
80102932:	85 c0                	test   %eax,%eax
80102934:	75 35                	jne    8010296b <end_op+0x68>
80102936:	c7 05 e0 16 11 80 01 	movl   $0x1,0x801116e0
8010293d:	00 00 00 
80102940:	bb 01 00 00 00       	mov    $0x1,%ebx
80102945:	83 ec 0c             	sub    $0xc,%esp
80102948:	68 a0 16 11 80       	push   $0x801116a0
8010294d:	e8 08 14 00 00       	call   80103d5a <release>
80102952:	83 c4 10             	add    $0x10,%esp
80102955:	85 db                	test   %ebx,%ebx
80102957:	75 24                	jne    8010297d <end_op+0x7a>
80102959:	8b 5d fc             	mov    -0x4(%ebp),%ebx
8010295c:	c9                   	leave  
8010295d:	c3                   	ret    
8010295e:	83 ec 0c             	sub    $0xc,%esp
80102961:	68 84 6c 10 80       	push   $0x80106c84
80102966:	e8 f1 d9 ff ff       	call   8010035c <panic>
8010296b:	83 ec 0c             	sub    $0xc,%esp
8010296e:	68 a0 16 11 80       	push   $0x801116a0
80102973:	e8 b3 0f 00 00       	call   8010392b <wakeup>
80102978:	83 c4 10             	add    $0x10,%esp
8010297b:	eb c8                	jmp    80102945 <end_op+0x42>
8010297d:	e8 86 fe ff ff       	call   80102808 <commit>
80102982:	83 ec 0c             	sub    $0xc,%esp
80102985:	68 a0 16 11 80       	push   $0x801116a0
8010298a:	e8 62 13 00 00       	call   80103cf1 <acquire>
8010298f:	c7 05 e0 16 11 80 00 	movl   $0x0,0x801116e0
80102996:	00 00 00 
80102999:	c7 04 24 a0 16 11 80 	movl   $0x801116a0,(%esp)
801029a0:	e8 86 0f 00 00       	call   8010392b <wakeup>
801029a5:	c7 04 24 a0 16 11 80 	movl   $0x801116a0,(%esp)
801029ac:	e8 a9 13 00 00       	call   80103d5a <release>
801029b1:	83 c4 10             	add    $0x10,%esp
801029b4:	eb a3                	jmp    80102959 <end_op+0x56>

801029b6 <log_write>:
801029b6:	f3 0f 1e fb          	endbr32 
801029ba:	55                   	push   %ebp
801029bb:	89 e5                	mov    %esp,%ebp
801029bd:	53                   	push   %ebx
801029be:	83 ec 04             	sub    $0x4,%esp
801029c1:	8b 5d 08             	mov    0x8(%ebp),%ebx
801029c4:	8b 15 e8 16 11 80    	mov    0x801116e8,%edx
801029ca:	83 fa 1d             	cmp    $0x1d,%edx
801029cd:	7f 2c                	jg     801029fb <log_write+0x45>
801029cf:	a1 d8 16 11 80       	mov    0x801116d8,%eax
801029d4:	83 e8 01             	sub    $0x1,%eax
801029d7:	39 c2                	cmp    %eax,%edx
801029d9:	7d 20                	jge    801029fb <log_write+0x45>
801029db:	83 3d dc 16 11 80 00 	cmpl   $0x0,0x801116dc
801029e2:	7e 24                	jle    80102a08 <log_write+0x52>
801029e4:	83 ec 0c             	sub    $0xc,%esp
801029e7:	68 a0 16 11 80       	push   $0x801116a0
801029ec:	e8 00 13 00 00       	call   80103cf1 <acquire>
801029f1:	83 c4 10             	add    $0x10,%esp
801029f4:	b8 00 00 00 00       	mov    $0x0,%eax
801029f9:	eb 1d                	jmp    80102a18 <log_write+0x62>
801029fb:	83 ec 0c             	sub    $0xc,%esp
801029fe:	68 93 6c 10 80       	push   $0x80106c93
80102a03:	e8 54 d9 ff ff       	call   8010035c <panic>
80102a08:	83 ec 0c             	sub    $0xc,%esp
80102a0b:	68 a9 6c 10 80       	push   $0x80106ca9
80102a10:	e8 47 d9 ff ff       	call   8010035c <panic>
80102a15:	83 c0 01             	add    $0x1,%eax
80102a18:	8b 15 e8 16 11 80    	mov    0x801116e8,%edx
80102a1e:	39 c2                	cmp    %eax,%edx
80102a20:	7e 0c                	jle    80102a2e <log_write+0x78>
80102a22:	8b 4b 08             	mov    0x8(%ebx),%ecx
80102a25:	39 0c 85 ec 16 11 80 	cmp    %ecx,-0x7feee914(,%eax,4)
80102a2c:	75 e7                	jne    80102a15 <log_write+0x5f>
80102a2e:	8b 4b 08             	mov    0x8(%ebx),%ecx
80102a31:	89 0c 85 ec 16 11 80 	mov    %ecx,-0x7feee914(,%eax,4)
80102a38:	39 c2                	cmp    %eax,%edx
80102a3a:	74 18                	je     80102a54 <log_write+0x9e>
80102a3c:	83 0b 04             	orl    $0x4,(%ebx)
80102a3f:	83 ec 0c             	sub    $0xc,%esp
80102a42:	68 a0 16 11 80       	push   $0x801116a0
80102a47:	e8 0e 13 00 00       	call   80103d5a <release>
80102a4c:	83 c4 10             	add    $0x10,%esp
80102a4f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80102a52:	c9                   	leave  
80102a53:	c3                   	ret    
80102a54:	83 c2 01             	add    $0x1,%edx
80102a57:	89 15 e8 16 11 80    	mov    %edx,0x801116e8
80102a5d:	eb dd                	jmp    80102a3c <log_write+0x86>

80102a5f <startothers>:
80102a5f:	55                   	push   %ebp
80102a60:	89 e5                	mov    %esp,%ebp
80102a62:	53                   	push   %ebx
80102a63:	83 ec 08             	sub    $0x8,%esp
80102a66:	68 8e 00 00 00       	push   $0x8e
80102a6b:	68 8c a4 10 80       	push   $0x8010a48c
80102a70:	68 00 70 00 80       	push   $0x80007000
80102a75:	e8 ab 13 00 00       	call   80103e25 <memmove>
80102a7a:	83 c4 10             	add    $0x10,%esp
80102a7d:	bb a0 17 11 80       	mov    $0x801117a0,%ebx
80102a82:	eb 06                	jmp    80102a8a <startothers+0x2b>
80102a84:	81 c3 b0 00 00 00    	add    $0xb0,%ebx
80102a8a:	69 05 84 17 11 80 b0 	imul   $0xb0,0x80111784,%eax
80102a91:	00 00 00 
80102a94:	05 a0 17 11 80       	add    $0x801117a0,%eax
80102a99:	39 d8                	cmp    %ebx,%eax
80102a9b:	76 4c                	jbe    80102ae9 <startothers+0x8a>
80102a9d:	e8 da 07 00 00       	call   8010327c <mycpu>
80102aa2:	39 c3                	cmp    %eax,%ebx
80102aa4:	74 de                	je     80102a84 <startothers+0x25>
80102aa6:	e8 d6 f6 ff ff       	call   80102181 <kalloc>
80102aab:	05 00 10 00 00       	add    $0x1000,%eax
80102ab0:	a3 fc 6f 00 80       	mov    %eax,0x80006ffc
80102ab5:	c7 05 f8 6f 00 80 2d 	movl   $0x80102b2d,0x80006ff8
80102abc:	2b 10 80 
80102abf:	c7 05 f4 6f 00 80 00 	movl   $0x109000,0x80006ff4
80102ac6:	90 10 00 
80102ac9:	83 ec 08             	sub    $0x8,%esp
80102acc:	68 00 70 00 00       	push   $0x7000
80102ad1:	0f b6 03             	movzbl (%ebx),%eax
80102ad4:	50                   	push   %eax
80102ad5:	e8 b7 f9 ff ff       	call   80102491 <lapicstartap>
80102ada:	83 c4 10             	add    $0x10,%esp
80102add:	8b 83 a0 00 00 00    	mov    0xa0(%ebx),%eax
80102ae3:	85 c0                	test   %eax,%eax
80102ae5:	74 f6                	je     80102add <startothers+0x7e>
80102ae7:	eb 9b                	jmp    80102a84 <startothers+0x25>
80102ae9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80102aec:	c9                   	leave  
80102aed:	c3                   	ret    

80102aee <mpmain>:
80102aee:	55                   	push   %ebp
80102aef:	89 e5                	mov    %esp,%ebp
80102af1:	53                   	push   %ebx
80102af2:	83 ec 04             	sub    $0x4,%esp
80102af5:	e8 e4 07 00 00       	call   801032de <cpuid>
80102afa:	89 c3                	mov    %eax,%ebx
80102afc:	e8 dd 07 00 00       	call   801032de <cpuid>
80102b01:	83 ec 04             	sub    $0x4,%esp
80102b04:	53                   	push   %ebx
80102b05:	50                   	push   %eax
80102b06:	68 c4 6c 10 80       	push   $0x80106cc4
80102b0b:	e8 15 db ff ff       	call   80100625 <cprintf>
80102b10:	e8 8d 24 00 00       	call   80104fa2 <idtinit>
80102b15:	e8 62 07 00 00       	call   8010327c <mycpu>
80102b1a:	89 c2                	mov    %eax,%edx
80102b1c:	b8 01 00 00 00       	mov    $0x1,%eax
80102b21:	f0 87 82 a0 00 00 00 	lock xchg %eax,0xa0(%edx)
80102b28:	e8 5c 0a 00 00       	call   80103589 <scheduler>

80102b2d <mpenter>:
80102b2d:	f3 0f 1e fb          	endbr32 
80102b31:	55                   	push   %ebp
80102b32:	89 e5                	mov    %esp,%ebp
80102b34:	83 ec 08             	sub    $0x8,%esp
80102b37:	e8 af 35 00 00       	call   801060eb <switchkvm>
80102b3c:	e8 31 33 00 00       	call   80105e72 <seginit>
80102b41:	e8 f7 f7 ff ff       	call   8010233d <lapicinit>
80102b46:	e8 a3 ff ff ff       	call   80102aee <mpmain>

80102b4b <main>:
80102b4b:	f3 0f 1e fb          	endbr32 
80102b4f:	8d 4c 24 04          	lea    0x4(%esp),%ecx
80102b53:	83 e4 f0             	and    $0xfffffff0,%esp
80102b56:	ff 71 fc             	push   -0x4(%ecx)
80102b59:	55                   	push   %ebp
80102b5a:	89 e5                	mov    %esp,%ebp
80102b5c:	51                   	push   %ecx
80102b5d:	83 ec 0c             	sub    $0xc,%esp
80102b60:	68 00 00 40 80       	push   $0x80400000
80102b65:	68 d0 54 11 80       	push   $0x801154d0
80102b6a:	e8 b8 f5 ff ff       	call   80102127 <kinit1>
80102b6f:	e8 63 3a 00 00       	call   801065d7 <kvmalloc>
80102b74:	e8 c3 01 00 00       	call   80102d3c <mpinit>
80102b79:	e8 bf f7 ff ff       	call   8010233d <lapicinit>
80102b7e:	e8 ef 32 00 00       	call   80105e72 <seginit>
80102b83:	e8 8e 02 00 00       	call   80102e16 <picinit>
80102b88:	e8 16 f4 ff ff       	call   80101fa3 <ioapicinit>
80102b8d:	e8 1e dd ff ff       	call   801008b0 <consoleinit>
80102b92:	e8 c3 26 00 00       	call   8010525a <uartinit>
80102b97:	e8 c2 06 00 00       	call   8010325e <pinit>
80102b9c:	e8 f8 22 00 00       	call   80104e99 <tvinit>
80102ba1:	e8 4e d5 ff ff       	call   801000f4 <binit>
80102ba6:	e8 93 e0 ff ff       	call   80100c3e <fileinit>
80102bab:	e8 f3 f1 ff ff       	call   80101da3 <ideinit>
80102bb0:	e8 aa fe ff ff       	call   80102a5f <startothers>
80102bb5:	83 c4 08             	add    $0x8,%esp
80102bb8:	68 00 00 00 8e       	push   $0x8e000000
80102bbd:	68 00 00 40 80       	push   $0x80400000
80102bc2:	e8 96 f5 ff ff       	call   8010215d <kinit2>
80102bc7:	e8 58 07 00 00       	call   80103324 <userinit>
80102bcc:	e8 1d ff ff ff       	call   80102aee <mpmain>

80102bd1 <sum>:
80102bd1:	55                   	push   %ebp
80102bd2:	89 e5                	mov    %esp,%ebp
80102bd4:	56                   	push   %esi
80102bd5:	53                   	push   %ebx
80102bd6:	89 c6                	mov    %eax,%esi
80102bd8:	89 d3                	mov    %edx,%ebx
80102bda:	b8 00 00 00 00       	mov    $0x0,%eax
80102bdf:	ba 00 00 00 00       	mov    $0x0,%edx
80102be4:	eb 09                	jmp    80102bef <sum+0x1e>
80102be6:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
80102bea:	01 c8                	add    %ecx,%eax
80102bec:	83 c2 01             	add    $0x1,%edx
80102bef:	39 da                	cmp    %ebx,%edx
80102bf1:	7c f3                	jl     80102be6 <sum+0x15>
80102bf3:	5b                   	pop    %ebx
80102bf4:	5e                   	pop    %esi
80102bf5:	5d                   	pop    %ebp
80102bf6:	c3                   	ret    

80102bf7 <mpsearch1>:
80102bf7:	55                   	push   %ebp
80102bf8:	89 e5                	mov    %esp,%ebp
80102bfa:	56                   	push   %esi
80102bfb:	53                   	push   %ebx
80102bfc:	8d b0 00 00 00 80    	lea    -0x80000000(%eax),%esi
80102c02:	89 f3                	mov    %esi,%ebx
80102c04:	01 d6                	add    %edx,%esi
80102c06:	eb 03                	jmp    80102c0b <mpsearch1+0x14>
80102c08:	83 c3 10             	add    $0x10,%ebx
80102c0b:	39 f3                	cmp    %esi,%ebx
80102c0d:	73 29                	jae    80102c38 <mpsearch1+0x41>
80102c0f:	83 ec 04             	sub    $0x4,%esp
80102c12:	6a 04                	push   $0x4
80102c14:	68 d8 6c 10 80       	push   $0x80106cd8
80102c19:	53                   	push   %ebx
80102c1a:	e8 cd 11 00 00       	call   80103dec <memcmp>
80102c1f:	83 c4 10             	add    $0x10,%esp
80102c22:	85 c0                	test   %eax,%eax
80102c24:	75 e2                	jne    80102c08 <mpsearch1+0x11>
80102c26:	ba 10 00 00 00       	mov    $0x10,%edx
80102c2b:	89 d8                	mov    %ebx,%eax
80102c2d:	e8 9f ff ff ff       	call   80102bd1 <sum>
80102c32:	84 c0                	test   %al,%al
80102c34:	75 d2                	jne    80102c08 <mpsearch1+0x11>
80102c36:	eb 05                	jmp    80102c3d <mpsearch1+0x46>
80102c38:	bb 00 00 00 00       	mov    $0x0,%ebx
80102c3d:	89 d8                	mov    %ebx,%eax
80102c3f:	8d 65 f8             	lea    -0x8(%ebp),%esp
80102c42:	5b                   	pop    %ebx
80102c43:	5e                   	pop    %esi
80102c44:	5d                   	pop    %ebp
80102c45:	c3                   	ret    

80102c46 <mpsearch>:
80102c46:	55                   	push   %ebp
80102c47:	89 e5                	mov    %esp,%ebp
80102c49:	83 ec 08             	sub    $0x8,%esp
80102c4c:	0f b6 05 0f 04 00 80 	movzbl 0x8000040f,%eax
80102c53:	c1 e0 08             	shl    $0x8,%eax
80102c56:	0f b6 15 0e 04 00 80 	movzbl 0x8000040e,%edx
80102c5d:	09 d0                	or     %edx,%eax
80102c5f:	c1 e0 04             	shl    $0x4,%eax
80102c62:	74 1f                	je     80102c83 <mpsearch+0x3d>
80102c64:	ba 00 04 00 00       	mov    $0x400,%edx
80102c69:	e8 89 ff ff ff       	call   80102bf7 <mpsearch1>
80102c6e:	85 c0                	test   %eax,%eax
80102c70:	75 0f                	jne    80102c81 <mpsearch+0x3b>
80102c72:	ba 00 00 01 00       	mov    $0x10000,%edx
80102c77:	b8 00 00 0f 00       	mov    $0xf0000,%eax
80102c7c:	e8 76 ff ff ff       	call   80102bf7 <mpsearch1>
80102c81:	c9                   	leave  
80102c82:	c3                   	ret    
80102c83:	0f b6 05 14 04 00 80 	movzbl 0x80000414,%eax
80102c8a:	c1 e0 08             	shl    $0x8,%eax
80102c8d:	0f b6 15 13 04 00 80 	movzbl 0x80000413,%edx
80102c94:	09 d0                	or     %edx,%eax
80102c96:	c1 e0 0a             	shl    $0xa,%eax
80102c99:	2d 00 04 00 00       	sub    $0x400,%eax
80102c9e:	ba 00 04 00 00       	mov    $0x400,%edx
80102ca3:	e8 4f ff ff ff       	call   80102bf7 <mpsearch1>
80102ca8:	85 c0                	test   %eax,%eax
80102caa:	75 d5                	jne    80102c81 <mpsearch+0x3b>
80102cac:	eb c4                	jmp    80102c72 <mpsearch+0x2c>

80102cae <mpconfig>:
80102cae:	55                   	push   %ebp
80102caf:	89 e5                	mov    %esp,%ebp
80102cb1:	57                   	push   %edi
80102cb2:	56                   	push   %esi
80102cb3:	53                   	push   %ebx
80102cb4:	83 ec 1c             	sub    $0x1c,%esp
80102cb7:	89 45 e4             	mov    %eax,-0x1c(%ebp)
80102cba:	e8 87 ff ff ff       	call   80102c46 <mpsearch>
80102cbf:	89 c3                	mov    %eax,%ebx
80102cc1:	85 c0                	test   %eax,%eax
80102cc3:	74 5a                	je     80102d1f <mpconfig+0x71>
80102cc5:	8b 70 04             	mov    0x4(%eax),%esi
80102cc8:	85 f6                	test   %esi,%esi
80102cca:	74 57                	je     80102d23 <mpconfig+0x75>
80102ccc:	8d be 00 00 00 80    	lea    -0x80000000(%esi),%edi
80102cd2:	83 ec 04             	sub    $0x4,%esp
80102cd5:	6a 04                	push   $0x4
80102cd7:	68 dd 6c 10 80       	push   $0x80106cdd
80102cdc:	57                   	push   %edi
80102cdd:	e8 0a 11 00 00       	call   80103dec <memcmp>
80102ce2:	83 c4 10             	add    $0x10,%esp
80102ce5:	85 c0                	test   %eax,%eax
80102ce7:	75 3e                	jne    80102d27 <mpconfig+0x79>
80102ce9:	0f b6 86 06 00 00 80 	movzbl -0x7ffffffa(%esi),%eax
80102cf0:	3c 01                	cmp    $0x1,%al
80102cf2:	0f 95 c2             	setne  %dl
80102cf5:	3c 04                	cmp    $0x4,%al
80102cf7:	0f 95 c0             	setne  %al
80102cfa:	84 c2                	test   %al,%dl
80102cfc:	75 30                	jne    80102d2e <mpconfig+0x80>
80102cfe:	0f b7 96 04 00 00 80 	movzwl -0x7ffffffc(%esi),%edx
80102d05:	89 f8                	mov    %edi,%eax
80102d07:	e8 c5 fe ff ff       	call   80102bd1 <sum>
80102d0c:	84 c0                	test   %al,%al
80102d0e:	75 25                	jne    80102d35 <mpconfig+0x87>
80102d10:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80102d13:	89 18                	mov    %ebx,(%eax)
80102d15:	89 f8                	mov    %edi,%eax
80102d17:	8d 65 f4             	lea    -0xc(%ebp),%esp
80102d1a:	5b                   	pop    %ebx
80102d1b:	5e                   	pop    %esi
80102d1c:	5f                   	pop    %edi
80102d1d:	5d                   	pop    %ebp
80102d1e:	c3                   	ret    
80102d1f:	89 c7                	mov    %eax,%edi
80102d21:	eb f2                	jmp    80102d15 <mpconfig+0x67>
80102d23:	89 f7                	mov    %esi,%edi
80102d25:	eb ee                	jmp    80102d15 <mpconfig+0x67>
80102d27:	bf 00 00 00 00       	mov    $0x0,%edi
80102d2c:	eb e7                	jmp    80102d15 <mpconfig+0x67>
80102d2e:	bf 00 00 00 00       	mov    $0x0,%edi
80102d33:	eb e0                	jmp    80102d15 <mpconfig+0x67>
80102d35:	bf 00 00 00 00       	mov    $0x0,%edi
80102d3a:	eb d9                	jmp    80102d15 <mpconfig+0x67>

80102d3c <mpinit>:
80102d3c:	f3 0f 1e fb          	endbr32 
80102d40:	55                   	push   %ebp
80102d41:	89 e5                	mov    %esp,%ebp
80102d43:	57                   	push   %edi
80102d44:	56                   	push   %esi
80102d45:	53                   	push   %ebx
80102d46:	83 ec 1c             	sub    $0x1c,%esp
80102d49:	8d 45 e4             	lea    -0x1c(%ebp),%eax
80102d4c:	e8 5d ff ff ff       	call   80102cae <mpconfig>
80102d51:	85 c0                	test   %eax,%eax
80102d53:	74 19                	je     80102d6e <mpinit+0x32>
80102d55:	8b 50 24             	mov    0x24(%eax),%edx
80102d58:	89 15 80 16 11 80    	mov    %edx,0x80111680
80102d5e:	8d 50 2c             	lea    0x2c(%eax),%edx
80102d61:	0f b7 48 04          	movzwl 0x4(%eax),%ecx
80102d65:	01 c1                	add    %eax,%ecx
80102d67:	bb 01 00 00 00       	mov    $0x1,%ebx
80102d6c:	eb 20                	jmp    80102d8e <mpinit+0x52>
80102d6e:	83 ec 0c             	sub    $0xc,%esp
80102d71:	68 e2 6c 10 80       	push   $0x80106ce2
80102d76:	e8 e1 d5 ff ff       	call   8010035c <panic>
80102d7b:	bb 00 00 00 00       	mov    $0x0,%ebx
80102d80:	eb 0c                	jmp    80102d8e <mpinit+0x52>
80102d82:	83 e8 03             	sub    $0x3,%eax
80102d85:	3c 01                	cmp    $0x1,%al
80102d87:	76 1a                	jbe    80102da3 <mpinit+0x67>
80102d89:	bb 00 00 00 00       	mov    $0x0,%ebx
80102d8e:	39 ca                	cmp    %ecx,%edx
80102d90:	73 4d                	jae    80102ddf <mpinit+0xa3>
80102d92:	0f b6 02             	movzbl (%edx),%eax
80102d95:	3c 02                	cmp    $0x2,%al
80102d97:	74 38                	je     80102dd1 <mpinit+0x95>
80102d99:	77 e7                	ja     80102d82 <mpinit+0x46>
80102d9b:	84 c0                	test   %al,%al
80102d9d:	74 09                	je     80102da8 <mpinit+0x6c>
80102d9f:	3c 01                	cmp    $0x1,%al
80102da1:	75 d8                	jne    80102d7b <mpinit+0x3f>
80102da3:	83 c2 08             	add    $0x8,%edx
80102da6:	eb e6                	jmp    80102d8e <mpinit+0x52>
80102da8:	8b 35 84 17 11 80    	mov    0x80111784,%esi
80102dae:	83 fe 07             	cmp    $0x7,%esi
80102db1:	7f 19                	jg     80102dcc <mpinit+0x90>
80102db3:	0f b6 42 01          	movzbl 0x1(%edx),%eax
80102db7:	69 fe b0 00 00 00    	imul   $0xb0,%esi,%edi
80102dbd:	88 87 a0 17 11 80    	mov    %al,-0x7feee860(%edi)
80102dc3:	83 c6 01             	add    $0x1,%esi
80102dc6:	89 35 84 17 11 80    	mov    %esi,0x80111784
80102dcc:	83 c2 14             	add    $0x14,%edx
80102dcf:	eb bd                	jmp    80102d8e <mpinit+0x52>
80102dd1:	0f b6 42 01          	movzbl 0x1(%edx),%eax
80102dd5:	a2 80 17 11 80       	mov    %al,0x80111780
80102dda:	83 c2 08             	add    $0x8,%edx
80102ddd:	eb af                	jmp    80102d8e <mpinit+0x52>
80102ddf:	85 db                	test   %ebx,%ebx
80102de1:	74 26                	je     80102e09 <mpinit+0xcd>
80102de3:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80102de6:	80 78 0c 00          	cmpb   $0x0,0xc(%eax)
80102dea:	74 15                	je     80102e01 <mpinit+0xc5>
80102dec:	b8 70 00 00 00       	mov    $0x70,%eax
80102df1:	ba 22 00 00 00       	mov    $0x22,%edx
80102df6:	ee                   	out    %al,(%dx)
80102df7:	ba 23 00 00 00       	mov    $0x23,%edx
80102dfc:	ec                   	in     (%dx),%al
80102dfd:	83 c8 01             	or     $0x1,%eax
80102e00:	ee                   	out    %al,(%dx)
80102e01:	8d 65 f4             	lea    -0xc(%ebp),%esp
80102e04:	5b                   	pop    %ebx
80102e05:	5e                   	pop    %esi
80102e06:	5f                   	pop    %edi
80102e07:	5d                   	pop    %ebp
80102e08:	c3                   	ret    
80102e09:	83 ec 0c             	sub    $0xc,%esp
80102e0c:	68 fc 6c 10 80       	push   $0x80106cfc
80102e11:	e8 46 d5 ff ff       	call   8010035c <panic>

80102e16 <picinit>:
80102e16:	f3 0f 1e fb          	endbr32 
80102e1a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80102e1f:	ba 21 00 00 00       	mov    $0x21,%edx
80102e24:	ee                   	out    %al,(%dx)
80102e25:	ba a1 00 00 00       	mov    $0xa1,%edx
80102e2a:	ee                   	out    %al,(%dx)
80102e2b:	c3                   	ret    

80102e2c <pipealloc>:
80102e2c:	f3 0f 1e fb          	endbr32 
80102e30:	55                   	push   %ebp
80102e31:	89 e5                	mov    %esp,%ebp
80102e33:	57                   	push   %edi
80102e34:	56                   	push   %esi
80102e35:	53                   	push   %ebx
80102e36:	83 ec 0c             	sub    $0xc,%esp
80102e39:	8b 5d 08             	mov    0x8(%ebp),%ebx
80102e3c:	8b 75 0c             	mov    0xc(%ebp),%esi
80102e3f:	c7 06 00 00 00 00    	movl   $0x0,(%esi)
80102e45:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
80102e4b:	e8 0c de ff ff       	call   80100c5c <filealloc>
80102e50:	89 03                	mov    %eax,(%ebx)
80102e52:	85 c0                	test   %eax,%eax
80102e54:	0f 84 88 00 00 00    	je     80102ee2 <pipealloc+0xb6>
80102e5a:	e8 fd dd ff ff       	call   80100c5c <filealloc>
80102e5f:	89 06                	mov    %eax,(%esi)
80102e61:	85 c0                	test   %eax,%eax
80102e63:	74 7d                	je     80102ee2 <pipealloc+0xb6>
80102e65:	e8 17 f3 ff ff       	call   80102181 <kalloc>
80102e6a:	89 c7                	mov    %eax,%edi
80102e6c:	85 c0                	test   %eax,%eax
80102e6e:	74 72                	je     80102ee2 <pipealloc+0xb6>
80102e70:	c7 80 3c 02 00 00 01 	movl   $0x1,0x23c(%eax)
80102e77:	00 00 00 
80102e7a:	c7 80 40 02 00 00 01 	movl   $0x1,0x240(%eax)
80102e81:	00 00 00 
80102e84:	c7 80 38 02 00 00 00 	movl   $0x0,0x238(%eax)
80102e8b:	00 00 00 
80102e8e:	c7 80 34 02 00 00 00 	movl   $0x0,0x234(%eax)
80102e95:	00 00 00 
80102e98:	83 ec 08             	sub    $0x8,%esp
80102e9b:	68 1b 6d 10 80       	push   $0x80106d1b
80102ea0:	50                   	push   %eax
80102ea1:	e8 fb 0c 00 00       	call   80103ba1 <initlock>
80102ea6:	8b 03                	mov    (%ebx),%eax
80102ea8:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
80102eae:	8b 03                	mov    (%ebx),%eax
80102eb0:	c6 40 08 01          	movb   $0x1,0x8(%eax)
80102eb4:	8b 03                	mov    (%ebx),%eax
80102eb6:	c6 40 09 00          	movb   $0x0,0x9(%eax)
80102eba:	8b 03                	mov    (%ebx),%eax
80102ebc:	89 78 0c             	mov    %edi,0xc(%eax)
80102ebf:	8b 06                	mov    (%esi),%eax
80102ec1:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
80102ec7:	8b 06                	mov    (%esi),%eax
80102ec9:	c6 40 08 00          	movb   $0x0,0x8(%eax)
80102ecd:	8b 06                	mov    (%esi),%eax
80102ecf:	c6 40 09 01          	movb   $0x1,0x9(%eax)
80102ed3:	8b 06                	mov    (%esi),%eax
80102ed5:	89 78 0c             	mov    %edi,0xc(%eax)
80102ed8:	83 c4 10             	add    $0x10,%esp
80102edb:	b8 00 00 00 00       	mov    $0x0,%eax
80102ee0:	eb 29                	jmp    80102f0b <pipealloc+0xdf>
80102ee2:	8b 03                	mov    (%ebx),%eax
80102ee4:	85 c0                	test   %eax,%eax
80102ee6:	74 0c                	je     80102ef4 <pipealloc+0xc8>
80102ee8:	83 ec 0c             	sub    $0xc,%esp
80102eeb:	50                   	push   %eax
80102eec:	e8 19 de ff ff       	call   80100d0a <fileclose>
80102ef1:	83 c4 10             	add    $0x10,%esp
80102ef4:	8b 06                	mov    (%esi),%eax
80102ef6:	85 c0                	test   %eax,%eax
80102ef8:	74 19                	je     80102f13 <pipealloc+0xe7>
80102efa:	83 ec 0c             	sub    $0xc,%esp
80102efd:	50                   	push   %eax
80102efe:	e8 07 de ff ff       	call   80100d0a <fileclose>
80102f03:	83 c4 10             	add    $0x10,%esp
80102f06:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80102f0b:	8d 65 f4             	lea    -0xc(%ebp),%esp
80102f0e:	5b                   	pop    %ebx
80102f0f:	5e                   	pop    %esi
80102f10:	5f                   	pop    %edi
80102f11:	5d                   	pop    %ebp
80102f12:	c3                   	ret    
80102f13:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80102f18:	eb f1                	jmp    80102f0b <pipealloc+0xdf>

80102f1a <pipeclose>:
80102f1a:	f3 0f 1e fb          	endbr32 
80102f1e:	55                   	push   %ebp
80102f1f:	89 e5                	mov    %esp,%ebp
80102f21:	53                   	push   %ebx
80102f22:	83 ec 10             	sub    $0x10,%esp
80102f25:	8b 5d 08             	mov    0x8(%ebp),%ebx
80102f28:	53                   	push   %ebx
80102f29:	e8 c3 0d 00 00       	call   80103cf1 <acquire>
80102f2e:	83 c4 10             	add    $0x10,%esp
80102f31:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
80102f35:	74 3f                	je     80102f76 <pipeclose+0x5c>
80102f37:	c7 83 40 02 00 00 00 	movl   $0x0,0x240(%ebx)
80102f3e:	00 00 00 
80102f41:	8d 83 34 02 00 00    	lea    0x234(%ebx),%eax
80102f47:	83 ec 0c             	sub    $0xc,%esp
80102f4a:	50                   	push   %eax
80102f4b:	e8 db 09 00 00       	call   8010392b <wakeup>
80102f50:	83 c4 10             	add    $0x10,%esp
80102f53:	83 bb 3c 02 00 00 00 	cmpl   $0x0,0x23c(%ebx)
80102f5a:	75 09                	jne    80102f65 <pipeclose+0x4b>
80102f5c:	83 bb 40 02 00 00 00 	cmpl   $0x0,0x240(%ebx)
80102f63:	74 2f                	je     80102f94 <pipeclose+0x7a>
80102f65:	83 ec 0c             	sub    $0xc,%esp
80102f68:	53                   	push   %ebx
80102f69:	e8 ec 0d 00 00       	call   80103d5a <release>
80102f6e:	83 c4 10             	add    $0x10,%esp
80102f71:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80102f74:	c9                   	leave  
80102f75:	c3                   	ret    
80102f76:	c7 83 3c 02 00 00 00 	movl   $0x0,0x23c(%ebx)
80102f7d:	00 00 00 
80102f80:	8d 83 38 02 00 00    	lea    0x238(%ebx),%eax
80102f86:	83 ec 0c             	sub    $0xc,%esp
80102f89:	50                   	push   %eax
80102f8a:	e8 9c 09 00 00       	call   8010392b <wakeup>
80102f8f:	83 c4 10             	add    $0x10,%esp
80102f92:	eb bf                	jmp    80102f53 <pipeclose+0x39>
80102f94:	83 ec 0c             	sub    $0xc,%esp
80102f97:	53                   	push   %ebx
80102f98:	e8 bd 0d 00 00       	call   80103d5a <release>
80102f9d:	89 1c 24             	mov    %ebx,(%esp)
80102fa0:	e8 b5 f0 ff ff       	call   8010205a <kfree>
80102fa5:	83 c4 10             	add    $0x10,%esp
80102fa8:	eb c7                	jmp    80102f71 <pipeclose+0x57>

80102faa <pipewrite>:
80102faa:	f3 0f 1e fb          	endbr32 
80102fae:	55                   	push   %ebp
80102faf:	89 e5                	mov    %esp,%ebp
80102fb1:	57                   	push   %edi
80102fb2:	56                   	push   %esi
80102fb3:	53                   	push   %ebx
80102fb4:	83 ec 18             	sub    $0x18,%esp
80102fb7:	8b 5d 08             	mov    0x8(%ebp),%ebx
80102fba:	8b 75 10             	mov    0x10(%ebp),%esi
80102fbd:	53                   	push   %ebx
80102fbe:	e8 2e 0d 00 00       	call   80103cf1 <acquire>
80102fc3:	83 c4 10             	add    $0x10,%esp
80102fc6:	bf 00 00 00 00       	mov    $0x0,%edi
80102fcb:	39 f7                	cmp    %esi,%edi
80102fcd:	7c 40                	jl     8010300f <pipewrite+0x65>
80102fcf:	8d 83 34 02 00 00    	lea    0x234(%ebx),%eax
80102fd5:	83 ec 0c             	sub    $0xc,%esp
80102fd8:	50                   	push   %eax
80102fd9:	e8 4d 09 00 00       	call   8010392b <wakeup>
80102fde:	89 1c 24             	mov    %ebx,(%esp)
80102fe1:	e8 74 0d 00 00       	call   80103d5a <release>
80102fe6:	83 c4 10             	add    $0x10,%esp
80102fe9:	89 f0                	mov    %esi,%eax
80102feb:	eb 5c                	jmp    80103049 <pipewrite+0x9f>
80102fed:	8d 83 34 02 00 00    	lea    0x234(%ebx),%eax
80102ff3:	83 ec 0c             	sub    $0xc,%esp
80102ff6:	50                   	push   %eax
80102ff7:	e8 2f 09 00 00       	call   8010392b <wakeup>
80102ffc:	8d 83 38 02 00 00    	lea    0x238(%ebx),%eax
80103002:	83 c4 08             	add    $0x8,%esp
80103005:	53                   	push   %ebx
80103006:	50                   	push   %eax
80103007:	e8 b2 07 00 00       	call   801037be <sleep>
8010300c:	83 c4 10             	add    $0x10,%esp
8010300f:	8b 93 38 02 00 00    	mov    0x238(%ebx),%edx
80103015:	8b 83 34 02 00 00    	mov    0x234(%ebx),%eax
8010301b:	05 00 02 00 00       	add    $0x200,%eax
80103020:	39 c2                	cmp    %eax,%edx
80103022:	75 2d                	jne    80103051 <pipewrite+0xa7>
80103024:	83 bb 3c 02 00 00 00 	cmpl   $0x0,0x23c(%ebx)
8010302b:	74 0b                	je     80103038 <pipewrite+0x8e>
8010302d:	e8 cb 02 00 00       	call   801032fd <myproc>
80103032:	83 78 24 00          	cmpl   $0x0,0x24(%eax)
80103036:	74 b5                	je     80102fed <pipewrite+0x43>
80103038:	83 ec 0c             	sub    $0xc,%esp
8010303b:	53                   	push   %ebx
8010303c:	e8 19 0d 00 00       	call   80103d5a <release>
80103041:	83 c4 10             	add    $0x10,%esp
80103044:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80103049:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010304c:	5b                   	pop    %ebx
8010304d:	5e                   	pop    %esi
8010304e:	5f                   	pop    %edi
8010304f:	5d                   	pop    %ebp
80103050:	c3                   	ret    
80103051:	8d 42 01             	lea    0x1(%edx),%eax
80103054:	89 83 38 02 00 00    	mov    %eax,0x238(%ebx)
8010305a:	81 e2 ff 01 00 00    	and    $0x1ff,%edx
80103060:	8b 45 0c             	mov    0xc(%ebp),%eax
80103063:	0f b6 04 38          	movzbl (%eax,%edi,1),%eax
80103067:	88 44 13 34          	mov    %al,0x34(%ebx,%edx,1)
8010306b:	83 c7 01             	add    $0x1,%edi
8010306e:	e9 58 ff ff ff       	jmp    80102fcb <pipewrite+0x21>

80103073 <piperead>:
80103073:	f3 0f 1e fb          	endbr32 
80103077:	55                   	push   %ebp
80103078:	89 e5                	mov    %esp,%ebp
8010307a:	57                   	push   %edi
8010307b:	56                   	push   %esi
8010307c:	53                   	push   %ebx
8010307d:	83 ec 18             	sub    $0x18,%esp
80103080:	8b 5d 08             	mov    0x8(%ebp),%ebx
80103083:	8b 7d 0c             	mov    0xc(%ebp),%edi
80103086:	53                   	push   %ebx
80103087:	e8 65 0c 00 00       	call   80103cf1 <acquire>
8010308c:	83 c4 10             	add    $0x10,%esp
8010308f:	eb 13                	jmp    801030a4 <piperead+0x31>
80103091:	8d 83 34 02 00 00    	lea    0x234(%ebx),%eax
80103097:	83 ec 08             	sub    $0x8,%esp
8010309a:	53                   	push   %ebx
8010309b:	50                   	push   %eax
8010309c:	e8 1d 07 00 00       	call   801037be <sleep>
801030a1:	83 c4 10             	add    $0x10,%esp
801030a4:	8b 83 38 02 00 00    	mov    0x238(%ebx),%eax
801030aa:	39 83 34 02 00 00    	cmp    %eax,0x234(%ebx)
801030b0:	75 78                	jne    8010312a <piperead+0xb7>
801030b2:	8b b3 40 02 00 00    	mov    0x240(%ebx),%esi
801030b8:	85 f6                	test   %esi,%esi
801030ba:	74 37                	je     801030f3 <piperead+0x80>
801030bc:	e8 3c 02 00 00       	call   801032fd <myproc>
801030c1:	83 78 24 00          	cmpl   $0x0,0x24(%eax)
801030c5:	74 ca                	je     80103091 <piperead+0x1e>
801030c7:	83 ec 0c             	sub    $0xc,%esp
801030ca:	53                   	push   %ebx
801030cb:	e8 8a 0c 00 00       	call   80103d5a <release>
801030d0:	83 c4 10             	add    $0x10,%esp
801030d3:	be ff ff ff ff       	mov    $0xffffffff,%esi
801030d8:	eb 46                	jmp    80103120 <piperead+0xad>
801030da:	8d 50 01             	lea    0x1(%eax),%edx
801030dd:	89 93 34 02 00 00    	mov    %edx,0x234(%ebx)
801030e3:	25 ff 01 00 00       	and    $0x1ff,%eax
801030e8:	0f b6 44 03 34       	movzbl 0x34(%ebx,%eax,1),%eax
801030ed:	88 04 37             	mov    %al,(%edi,%esi,1)
801030f0:	83 c6 01             	add    $0x1,%esi
801030f3:	3b 75 10             	cmp    0x10(%ebp),%esi
801030f6:	7d 0e                	jge    80103106 <piperead+0x93>
801030f8:	8b 83 34 02 00 00    	mov    0x234(%ebx),%eax
801030fe:	3b 83 38 02 00 00    	cmp    0x238(%ebx),%eax
80103104:	75 d4                	jne    801030da <piperead+0x67>
80103106:	8d 83 38 02 00 00    	lea    0x238(%ebx),%eax
8010310c:	83 ec 0c             	sub    $0xc,%esp
8010310f:	50                   	push   %eax
80103110:	e8 16 08 00 00       	call   8010392b <wakeup>
80103115:	89 1c 24             	mov    %ebx,(%esp)
80103118:	e8 3d 0c 00 00       	call   80103d5a <release>
8010311d:	83 c4 10             	add    $0x10,%esp
80103120:	89 f0                	mov    %esi,%eax
80103122:	8d 65 f4             	lea    -0xc(%ebp),%esp
80103125:	5b                   	pop    %ebx
80103126:	5e                   	pop    %esi
80103127:	5f                   	pop    %edi
80103128:	5d                   	pop    %ebp
80103129:	c3                   	ret    
8010312a:	be 00 00 00 00       	mov    $0x0,%esi
8010312f:	eb c2                	jmp    801030f3 <piperead+0x80>

80103131 <wakeup1>:
80103131:	89 c2                	mov    %eax,%edx
80103133:	b8 54 1d 11 80       	mov    $0x80111d54,%eax
80103138:	eb 03                	jmp    8010313d <wakeup1+0xc>
8010313a:	83 c0 7c             	add    $0x7c,%eax
8010313d:	3d 54 3c 11 80       	cmp    $0x80113c54,%eax
80103142:	73 14                	jae    80103158 <wakeup1+0x27>
80103144:	83 78 0c 02          	cmpl   $0x2,0xc(%eax)
80103148:	75 f0                	jne    8010313a <wakeup1+0x9>
8010314a:	39 50 20             	cmp    %edx,0x20(%eax)
8010314d:	75 eb                	jne    8010313a <wakeup1+0x9>
8010314f:	c7 40 0c 03 00 00 00 	movl   $0x3,0xc(%eax)
80103156:	eb e2                	jmp    8010313a <wakeup1+0x9>
80103158:	c3                   	ret    

80103159 <allocproc>:
80103159:	55                   	push   %ebp
8010315a:	89 e5                	mov    %esp,%ebp
8010315c:	53                   	push   %ebx
8010315d:	83 ec 10             	sub    $0x10,%esp
80103160:	68 20 1d 11 80       	push   $0x80111d20
80103165:	e8 87 0b 00 00       	call   80103cf1 <acquire>
8010316a:	83 c4 10             	add    $0x10,%esp
8010316d:	bb 54 1d 11 80       	mov    $0x80111d54,%ebx
80103172:	eb 03                	jmp    80103177 <allocproc+0x1e>
80103174:	83 c3 7c             	add    $0x7c,%ebx
80103177:	81 fb 54 3c 11 80    	cmp    $0x80113c54,%ebx
8010317d:	73 76                	jae    801031f5 <allocproc+0x9c>
8010317f:	83 7b 0c 00          	cmpl   $0x0,0xc(%ebx)
80103183:	75 ef                	jne    80103174 <allocproc+0x1b>
80103185:	c7 43 0c 01 00 00 00 	movl   $0x1,0xc(%ebx)
8010318c:	a1 04 a0 10 80       	mov    0x8010a004,%eax
80103191:	8d 50 01             	lea    0x1(%eax),%edx
80103194:	89 15 04 a0 10 80    	mov    %edx,0x8010a004
8010319a:	89 43 10             	mov    %eax,0x10(%ebx)
8010319d:	83 ec 0c             	sub    $0xc,%esp
801031a0:	68 20 1d 11 80       	push   $0x80111d20
801031a5:	e8 b0 0b 00 00       	call   80103d5a <release>
801031aa:	e8 d2 ef ff ff       	call   80102181 <kalloc>
801031af:	89 43 08             	mov    %eax,0x8(%ebx)
801031b2:	83 c4 10             	add    $0x10,%esp
801031b5:	85 c0                	test   %eax,%eax
801031b7:	74 53                	je     8010320c <allocproc+0xb3>
801031b9:	8d 90 b4 0f 00 00    	lea    0xfb4(%eax),%edx
801031bf:	89 53 18             	mov    %edx,0x18(%ebx)
801031c2:	c7 80 b0 0f 00 00 8e 	movl   $0x80104e8e,0xfb0(%eax)
801031c9:	4e 10 80 
801031cc:	05 9c 0f 00 00       	add    $0xf9c,%eax
801031d1:	89 43 1c             	mov    %eax,0x1c(%ebx)
801031d4:	83 ec 04             	sub    $0x4,%esp
801031d7:	6a 14                	push   $0x14
801031d9:	6a 00                	push   $0x0
801031db:	50                   	push   %eax
801031dc:	e8 c4 0b 00 00       	call   80103da5 <memset>
801031e1:	8b 43 1c             	mov    0x1c(%ebx),%eax
801031e4:	c7 40 10 17 32 10 80 	movl   $0x80103217,0x10(%eax)
801031eb:	83 c4 10             	add    $0x10,%esp
801031ee:	89 d8                	mov    %ebx,%eax
801031f0:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801031f3:	c9                   	leave  
801031f4:	c3                   	ret    
801031f5:	83 ec 0c             	sub    $0xc,%esp
801031f8:	68 20 1d 11 80       	push   $0x80111d20
801031fd:	e8 58 0b 00 00       	call   80103d5a <release>
80103202:	83 c4 10             	add    $0x10,%esp
80103205:	bb 00 00 00 00       	mov    $0x0,%ebx
8010320a:	eb e2                	jmp    801031ee <allocproc+0x95>
8010320c:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
80103213:	89 c3                	mov    %eax,%ebx
80103215:	eb d7                	jmp    801031ee <allocproc+0x95>

80103217 <forkret>:
80103217:	f3 0f 1e fb          	endbr32 
8010321b:	55                   	push   %ebp
8010321c:	89 e5                	mov    %esp,%ebp
8010321e:	83 ec 14             	sub    $0x14,%esp
80103221:	68 20 1d 11 80       	push   $0x80111d20
80103226:	e8 2f 0b 00 00       	call   80103d5a <release>
8010322b:	83 c4 10             	add    $0x10,%esp
8010322e:	83 3d 00 a0 10 80 00 	cmpl   $0x0,0x8010a000
80103235:	75 02                	jne    80103239 <forkret+0x22>
80103237:	c9                   	leave  
80103238:	c3                   	ret    
80103239:	c7 05 00 a0 10 80 00 	movl   $0x0,0x8010a000
80103240:	00 00 00 
80103243:	83 ec 0c             	sub    $0xc,%esp
80103246:	6a 01                	push   $0x1
80103248:	e8 05 e1 ff ff       	call   80101352 <iinit>
8010324d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
80103254:	e8 df f5 ff ff       	call   80102838 <initlog>
80103259:	83 c4 10             	add    $0x10,%esp
8010325c:	eb d9                	jmp    80103237 <forkret+0x20>

8010325e <pinit>:
8010325e:	f3 0f 1e fb          	endbr32 
80103262:	55                   	push   %ebp
80103263:	89 e5                	mov    %esp,%ebp
80103265:	83 ec 10             	sub    $0x10,%esp
80103268:	68 20 6d 10 80       	push   $0x80106d20
8010326d:	68 20 1d 11 80       	push   $0x80111d20
80103272:	e8 2a 09 00 00       	call   80103ba1 <initlock>
80103277:	83 c4 10             	add    $0x10,%esp
8010327a:	c9                   	leave  
8010327b:	c3                   	ret    

8010327c <mycpu>:
8010327c:	f3 0f 1e fb          	endbr32 
80103280:	55                   	push   %ebp
80103281:	89 e5                	mov    %esp,%ebp
80103283:	83 ec 08             	sub    $0x8,%esp
80103286:	9c                   	pushf  
80103287:	58                   	pop    %eax
80103288:	f6 c4 02             	test   $0x2,%ah
8010328b:	75 2a                	jne    801032b7 <mycpu+0x3b>
8010328d:	e8 bb f1 ff ff       	call   8010244d <lapicid>
80103292:	89 c1                	mov    %eax,%ecx
80103294:	b8 00 00 00 00       	mov    $0x0,%eax
80103299:	39 05 84 17 11 80    	cmp    %eax,0x80111784
8010329f:	7e 23                	jle    801032c4 <mycpu+0x48>
801032a1:	69 d0 b0 00 00 00    	imul   $0xb0,%eax,%edx
801032a7:	0f b6 92 a0 17 11 80 	movzbl -0x7feee860(%edx),%edx
801032ae:	39 ca                	cmp    %ecx,%edx
801032b0:	74 1f                	je     801032d1 <mycpu+0x55>
801032b2:	83 c0 01             	add    $0x1,%eax
801032b5:	eb e2                	jmp    80103299 <mycpu+0x1d>
801032b7:	83 ec 0c             	sub    $0xc,%esp
801032ba:	68 04 6e 10 80       	push   $0x80106e04
801032bf:	e8 98 d0 ff ff       	call   8010035c <panic>
801032c4:	83 ec 0c             	sub    $0xc,%esp
801032c7:	68 27 6d 10 80       	push   $0x80106d27
801032cc:	e8 8b d0 ff ff       	call   8010035c <panic>
801032d1:	69 c0 b0 00 00 00    	imul   $0xb0,%eax,%eax
801032d7:	05 a0 17 11 80       	add    $0x801117a0,%eax
801032dc:	c9                   	leave  
801032dd:	c3                   	ret    

801032de <cpuid>:
801032de:	f3 0f 1e fb          	endbr32 
801032e2:	55                   	push   %ebp
801032e3:	89 e5                	mov    %esp,%ebp
801032e5:	83 ec 08             	sub    $0x8,%esp
801032e8:	e8 8f ff ff ff       	call   8010327c <mycpu>
801032ed:	2d a0 17 11 80       	sub    $0x801117a0,%eax
801032f2:	c1 f8 04             	sar    $0x4,%eax
801032f5:	69 c0 a3 8b 2e ba    	imul   $0xba2e8ba3,%eax,%eax
801032fb:	c9                   	leave  
801032fc:	c3                   	ret    

801032fd <myproc>:
801032fd:	f3 0f 1e fb          	endbr32 
80103301:	55                   	push   %ebp
80103302:	89 e5                	mov    %esp,%ebp
80103304:	53                   	push   %ebx
80103305:	83 ec 04             	sub    $0x4,%esp
80103308:	e8 fd 08 00 00       	call   80103c0a <pushcli>
8010330d:	e8 6a ff ff ff       	call   8010327c <mycpu>
80103312:	8b 98 ac 00 00 00    	mov    0xac(%eax),%ebx
80103318:	e8 2d 09 00 00       	call   80103c4a <popcli>
8010331d:	89 d8                	mov    %ebx,%eax
8010331f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80103322:	c9                   	leave  
80103323:	c3                   	ret    

80103324 <userinit>:
80103324:	f3 0f 1e fb          	endbr32 
80103328:	55                   	push   %ebp
80103329:	89 e5                	mov    %esp,%ebp
8010332b:	53                   	push   %ebx
8010332c:	83 ec 04             	sub    $0x4,%esp
8010332f:	e8 25 fe ff ff       	call   80103159 <allocproc>
80103334:	89 c3                	mov    %eax,%ebx
80103336:	a3 54 3c 11 80       	mov    %eax,0x80113c54
8010333b:	e8 25 32 00 00       	call   80106565 <setupkvm>
80103340:	89 43 04             	mov    %eax,0x4(%ebx)
80103343:	85 c0                	test   %eax,%eax
80103345:	0f 84 b8 00 00 00    	je     80103403 <userinit+0xdf>
8010334b:	83 ec 04             	sub    $0x4,%esp
8010334e:	68 2c 00 00 00       	push   $0x2c
80103353:	68 60 a4 10 80       	push   $0x8010a460
80103358:	50                   	push   %eax
80103359:	e8 03 2f 00 00       	call   80106261 <inituvm>
8010335e:	c7 03 00 10 00 00    	movl   $0x1000,(%ebx)
80103364:	8b 43 18             	mov    0x18(%ebx),%eax
80103367:	83 c4 0c             	add    $0xc,%esp
8010336a:	6a 4c                	push   $0x4c
8010336c:	6a 00                	push   $0x0
8010336e:	50                   	push   %eax
8010336f:	e8 31 0a 00 00       	call   80103da5 <memset>
80103374:	8b 43 18             	mov    0x18(%ebx),%eax
80103377:	66 c7 40 3c 1b 00    	movw   $0x1b,0x3c(%eax)
8010337d:	8b 43 18             	mov    0x18(%ebx),%eax
80103380:	66 c7 40 2c 23 00    	movw   $0x23,0x2c(%eax)
80103386:	8b 43 18             	mov    0x18(%ebx),%eax
80103389:	0f b7 50 2c          	movzwl 0x2c(%eax),%edx
8010338d:	66 89 50 28          	mov    %dx,0x28(%eax)
80103391:	8b 43 18             	mov    0x18(%ebx),%eax
80103394:	0f b7 50 2c          	movzwl 0x2c(%eax),%edx
80103398:	66 89 50 48          	mov    %dx,0x48(%eax)
8010339c:	8b 43 18             	mov    0x18(%ebx),%eax
8010339f:	c7 40 40 00 02 00 00 	movl   $0x200,0x40(%eax)
801033a6:	8b 43 18             	mov    0x18(%ebx),%eax
801033a9:	c7 40 44 00 10 00 00 	movl   $0x1000,0x44(%eax)
801033b0:	8b 43 18             	mov    0x18(%ebx),%eax
801033b3:	c7 40 38 00 00 00 00 	movl   $0x0,0x38(%eax)
801033ba:	8d 43 6c             	lea    0x6c(%ebx),%eax
801033bd:	83 c4 0c             	add    $0xc,%esp
801033c0:	6a 10                	push   $0x10
801033c2:	68 50 6d 10 80       	push   $0x80106d50
801033c7:	50                   	push   %eax
801033c8:	e8 5c 0b 00 00       	call   80103f29 <safestrcpy>
801033cd:	c7 04 24 59 6d 10 80 	movl   $0x80106d59,(%esp)
801033d4:	e8 a4 e8 ff ff       	call   80101c7d <namei>
801033d9:	89 43 68             	mov    %eax,0x68(%ebx)
801033dc:	c7 04 24 20 1d 11 80 	movl   $0x80111d20,(%esp)
801033e3:	e8 09 09 00 00       	call   80103cf1 <acquire>
801033e8:	c7 43 0c 03 00 00 00 	movl   $0x3,0xc(%ebx)
801033ef:	c7 04 24 20 1d 11 80 	movl   $0x80111d20,(%esp)
801033f6:	e8 5f 09 00 00       	call   80103d5a <release>
801033fb:	83 c4 10             	add    $0x10,%esp
801033fe:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80103401:	c9                   	leave  
80103402:	c3                   	ret    
80103403:	83 ec 0c             	sub    $0xc,%esp
80103406:	68 37 6d 10 80       	push   $0x80106d37
8010340b:	e8 4c cf ff ff       	call   8010035c <panic>

80103410 <growproc>:
80103410:	f3 0f 1e fb          	endbr32 
80103414:	55                   	push   %ebp
80103415:	89 e5                	mov    %esp,%ebp
80103417:	56                   	push   %esi
80103418:	53                   	push   %ebx
80103419:	8b 75 08             	mov    0x8(%ebp),%esi
8010341c:	e8 dc fe ff ff       	call   801032fd <myproc>
80103421:	89 c3                	mov    %eax,%ebx
80103423:	8b 00                	mov    (%eax),%eax
80103425:	85 f6                	test   %esi,%esi
80103427:	7f 1b                	jg     80103444 <growproc+0x34>
80103429:	78 36                	js     80103461 <growproc+0x51>
8010342b:	89 03                	mov    %eax,(%ebx)
8010342d:	8b 43 04             	mov    0x4(%ebx),%eax
80103430:	05 00 00 00 80       	add    $0x80000000,%eax
80103435:	0f 22 d8             	mov    %eax,%cr3
80103438:	b8 00 00 00 00       	mov    $0x0,%eax
8010343d:	8d 65 f8             	lea    -0x8(%ebp),%esp
80103440:	5b                   	pop    %ebx
80103441:	5e                   	pop    %esi
80103442:	5d                   	pop    %ebp
80103443:	c3                   	ret    
80103444:	83 ec 04             	sub    $0x4,%esp
80103447:	01 c6                	add    %eax,%esi
80103449:	56                   	push   %esi
8010344a:	50                   	push   %eax
8010344b:	ff 73 04             	push   0x4(%ebx)
8010344e:	e8 b0 2f 00 00       	call   80106403 <allocuvm>
80103453:	83 c4 10             	add    $0x10,%esp
80103456:	85 c0                	test   %eax,%eax
80103458:	75 d1                	jne    8010342b <growproc+0x1b>
8010345a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010345f:	eb dc                	jmp    8010343d <growproc+0x2d>
80103461:	83 ec 04             	sub    $0x4,%esp
80103464:	01 c6                	add    %eax,%esi
80103466:	56                   	push   %esi
80103467:	50                   	push   %eax
80103468:	ff 73 04             	push   0x4(%ebx)
8010346b:	e8 fd 2e 00 00       	call   8010636d <deallocuvm>
80103470:	83 c4 10             	add    $0x10,%esp
80103473:	85 c0                	test   %eax,%eax
80103475:	75 b4                	jne    8010342b <growproc+0x1b>
80103477:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010347c:	eb bf                	jmp    8010343d <growproc+0x2d>

8010347e <fork>:
8010347e:	f3 0f 1e fb          	endbr32 
80103482:	55                   	push   %ebp
80103483:	89 e5                	mov    %esp,%ebp
80103485:	57                   	push   %edi
80103486:	56                   	push   %esi
80103487:	53                   	push   %ebx
80103488:	83 ec 1c             	sub    $0x1c,%esp
8010348b:	e8 6d fe ff ff       	call   801032fd <myproc>
80103490:	89 c3                	mov    %eax,%ebx
80103492:	e8 c2 fc ff ff       	call   80103159 <allocproc>
80103497:	89 45 e4             	mov    %eax,-0x1c(%ebp)
8010349a:	85 c0                	test   %eax,%eax
8010349c:	0f 84 e0 00 00 00    	je     80103582 <fork+0x104>
801034a2:	89 c7                	mov    %eax,%edi
801034a4:	83 ec 08             	sub    $0x8,%esp
801034a7:	ff 33                	push   (%ebx)
801034a9:	ff 73 04             	push   0x4(%ebx)
801034ac:	e8 71 31 00 00       	call   80106622 <copyuvm>
801034b1:	89 47 04             	mov    %eax,0x4(%edi)
801034b4:	83 c4 10             	add    $0x10,%esp
801034b7:	85 c0                	test   %eax,%eax
801034b9:	74 2a                	je     801034e5 <fork+0x67>
801034bb:	8b 03                	mov    (%ebx),%eax
801034bd:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
801034c0:	89 01                	mov    %eax,(%ecx)
801034c2:	89 c8                	mov    %ecx,%eax
801034c4:	89 59 14             	mov    %ebx,0x14(%ecx)
801034c7:	8b 73 18             	mov    0x18(%ebx),%esi
801034ca:	8b 79 18             	mov    0x18(%ecx),%edi
801034cd:	b9 13 00 00 00       	mov    $0x13,%ecx
801034d2:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
801034d4:	8b 40 18             	mov    0x18(%eax),%eax
801034d7:	c7 40 1c 00 00 00 00 	movl   $0x0,0x1c(%eax)
801034de:	be 00 00 00 00       	mov    $0x0,%esi
801034e3:	eb 29                	jmp    8010350e <fork+0x90>
801034e5:	83 ec 0c             	sub    $0xc,%esp
801034e8:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
801034eb:	ff 73 08             	push   0x8(%ebx)
801034ee:	e8 67 eb ff ff       	call   8010205a <kfree>
801034f3:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
801034fa:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
80103501:	83 c4 10             	add    $0x10,%esp
80103504:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
80103509:	eb 6d                	jmp    80103578 <fork+0xfa>
8010350b:	83 c6 01             	add    $0x1,%esi
8010350e:	83 fe 0f             	cmp    $0xf,%esi
80103511:	7f 1d                	jg     80103530 <fork+0xb2>
80103513:	8b 44 b3 28          	mov    0x28(%ebx,%esi,4),%eax
80103517:	85 c0                	test   %eax,%eax
80103519:	74 f0                	je     8010350b <fork+0x8d>
8010351b:	83 ec 0c             	sub    $0xc,%esp
8010351e:	50                   	push   %eax
8010351f:	e8 9d d7 ff ff       	call   80100cc1 <filedup>
80103524:	8b 55 e4             	mov    -0x1c(%ebp),%edx
80103527:	89 44 b2 28          	mov    %eax,0x28(%edx,%esi,4)
8010352b:	83 c4 10             	add    $0x10,%esp
8010352e:	eb db                	jmp    8010350b <fork+0x8d>
80103530:	83 ec 0c             	sub    $0xc,%esp
80103533:	ff 73 68             	push   0x68(%ebx)
80103536:	e8 88 e0 ff ff       	call   801015c3 <idup>
8010353b:	8b 7d e4             	mov    -0x1c(%ebp),%edi
8010353e:	89 47 68             	mov    %eax,0x68(%edi)
80103541:	83 c3 6c             	add    $0x6c,%ebx
80103544:	8d 47 6c             	lea    0x6c(%edi),%eax
80103547:	83 c4 0c             	add    $0xc,%esp
8010354a:	6a 10                	push   $0x10
8010354c:	53                   	push   %ebx
8010354d:	50                   	push   %eax
8010354e:	e8 d6 09 00 00       	call   80103f29 <safestrcpy>
80103553:	8b 5f 10             	mov    0x10(%edi),%ebx
80103556:	c7 04 24 20 1d 11 80 	movl   $0x80111d20,(%esp)
8010355d:	e8 8f 07 00 00       	call   80103cf1 <acquire>
80103562:	c7 47 0c 03 00 00 00 	movl   $0x3,0xc(%edi)
80103569:	c7 04 24 20 1d 11 80 	movl   $0x80111d20,(%esp)
80103570:	e8 e5 07 00 00       	call   80103d5a <release>
80103575:	83 c4 10             	add    $0x10,%esp
80103578:	89 d8                	mov    %ebx,%eax
8010357a:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010357d:	5b                   	pop    %ebx
8010357e:	5e                   	pop    %esi
8010357f:	5f                   	pop    %edi
80103580:	5d                   	pop    %ebp
80103581:	c3                   	ret    
80103582:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
80103587:	eb ef                	jmp    80103578 <fork+0xfa>

80103589 <scheduler>:
80103589:	f3 0f 1e fb          	endbr32 
8010358d:	55                   	push   %ebp
8010358e:	89 e5                	mov    %esp,%ebp
80103590:	56                   	push   %esi
80103591:	53                   	push   %ebx
80103592:	e8 e5 fc ff ff       	call   8010327c <mycpu>
80103597:	89 c6                	mov    %eax,%esi
80103599:	c7 80 ac 00 00 00 00 	movl   $0x0,0xac(%eax)
801035a0:	00 00 00 
801035a3:	eb 5a                	jmp    801035ff <scheduler+0x76>
801035a5:	83 c3 7c             	add    $0x7c,%ebx
801035a8:	81 fb 54 3c 11 80    	cmp    $0x80113c54,%ebx
801035ae:	73 3f                	jae    801035ef <scheduler+0x66>
801035b0:	83 7b 0c 03          	cmpl   $0x3,0xc(%ebx)
801035b4:	75 ef                	jne    801035a5 <scheduler+0x1c>
801035b6:	89 9e ac 00 00 00    	mov    %ebx,0xac(%esi)
801035bc:	83 ec 0c             	sub    $0xc,%esp
801035bf:	53                   	push   %ebx
801035c0:	e8 38 2b 00 00       	call   801060fd <switchuvm>
801035c5:	c7 43 0c 04 00 00 00 	movl   $0x4,0xc(%ebx)
801035cc:	83 c4 08             	add    $0x8,%esp
801035cf:	ff 73 1c             	push   0x1c(%ebx)
801035d2:	8d 46 04             	lea    0x4(%esi),%eax
801035d5:	50                   	push   %eax
801035d6:	e8 ab 09 00 00       	call   80103f86 <swtch>
801035db:	e8 0b 2b 00 00       	call   801060eb <switchkvm>
801035e0:	c7 86 ac 00 00 00 00 	movl   $0x0,0xac(%esi)
801035e7:	00 00 00 
801035ea:	83 c4 10             	add    $0x10,%esp
801035ed:	eb b6                	jmp    801035a5 <scheduler+0x1c>
801035ef:	83 ec 0c             	sub    $0xc,%esp
801035f2:	68 20 1d 11 80       	push   $0x80111d20
801035f7:	e8 5e 07 00 00       	call   80103d5a <release>
801035fc:	83 c4 10             	add    $0x10,%esp
801035ff:	fb                   	sti    
80103600:	83 ec 0c             	sub    $0xc,%esp
80103603:	68 20 1d 11 80       	push   $0x80111d20
80103608:	e8 e4 06 00 00       	call   80103cf1 <acquire>
8010360d:	83 c4 10             	add    $0x10,%esp
80103610:	bb 54 1d 11 80       	mov    $0x80111d54,%ebx
80103615:	eb 91                	jmp    801035a8 <scheduler+0x1f>

80103617 <sched>:
80103617:	f3 0f 1e fb          	endbr32 
8010361b:	55                   	push   %ebp
8010361c:	89 e5                	mov    %esp,%ebp
8010361e:	56                   	push   %esi
8010361f:	53                   	push   %ebx
80103620:	e8 d8 fc ff ff       	call   801032fd <myproc>
80103625:	89 c3                	mov    %eax,%ebx
80103627:	83 ec 0c             	sub    $0xc,%esp
8010362a:	68 20 1d 11 80       	push   $0x80111d20
8010362f:	e8 7a 06 00 00       	call   80103cae <holding>
80103634:	83 c4 10             	add    $0x10,%esp
80103637:	85 c0                	test   %eax,%eax
80103639:	74 4f                	je     8010368a <sched+0x73>
8010363b:	e8 3c fc ff ff       	call   8010327c <mycpu>
80103640:	83 b8 a4 00 00 00 01 	cmpl   $0x1,0xa4(%eax)
80103647:	75 4e                	jne    80103697 <sched+0x80>
80103649:	83 7b 0c 04          	cmpl   $0x4,0xc(%ebx)
8010364d:	74 55                	je     801036a4 <sched+0x8d>
8010364f:	9c                   	pushf  
80103650:	58                   	pop    %eax
80103651:	f6 c4 02             	test   $0x2,%ah
80103654:	75 5b                	jne    801036b1 <sched+0x9a>
80103656:	e8 21 fc ff ff       	call   8010327c <mycpu>
8010365b:	8b b0 a8 00 00 00    	mov    0xa8(%eax),%esi
80103661:	e8 16 fc ff ff       	call   8010327c <mycpu>
80103666:	83 ec 08             	sub    $0x8,%esp
80103669:	ff 70 04             	push   0x4(%eax)
8010366c:	83 c3 1c             	add    $0x1c,%ebx
8010366f:	53                   	push   %ebx
80103670:	e8 11 09 00 00       	call   80103f86 <swtch>
80103675:	e8 02 fc ff ff       	call   8010327c <mycpu>
8010367a:	89 b0 a8 00 00 00    	mov    %esi,0xa8(%eax)
80103680:	83 c4 10             	add    $0x10,%esp
80103683:	8d 65 f8             	lea    -0x8(%ebp),%esp
80103686:	5b                   	pop    %ebx
80103687:	5e                   	pop    %esi
80103688:	5d                   	pop    %ebp
80103689:	c3                   	ret    
8010368a:	83 ec 0c             	sub    $0xc,%esp
8010368d:	68 5b 6d 10 80       	push   $0x80106d5b
80103692:	e8 c5 cc ff ff       	call   8010035c <panic>
80103697:	83 ec 0c             	sub    $0xc,%esp
8010369a:	68 6d 6d 10 80       	push   $0x80106d6d
8010369f:	e8 b8 cc ff ff       	call   8010035c <panic>
801036a4:	83 ec 0c             	sub    $0xc,%esp
801036a7:	68 79 6d 10 80       	push   $0x80106d79
801036ac:	e8 ab cc ff ff       	call   8010035c <panic>
801036b1:	83 ec 0c             	sub    $0xc,%esp
801036b4:	68 87 6d 10 80       	push   $0x80106d87
801036b9:	e8 9e cc ff ff       	call   8010035c <panic>

801036be <exit>:
801036be:	f3 0f 1e fb          	endbr32 
801036c2:	55                   	push   %ebp
801036c3:	89 e5                	mov    %esp,%ebp
801036c5:	56                   	push   %esi
801036c6:	53                   	push   %ebx
801036c7:	e8 31 fc ff ff       	call   801032fd <myproc>
801036cc:	39 05 54 3c 11 80    	cmp    %eax,0x80113c54
801036d2:	74 09                	je     801036dd <exit+0x1f>
801036d4:	89 c6                	mov    %eax,%esi
801036d6:	bb 00 00 00 00       	mov    $0x0,%ebx
801036db:	eb 24                	jmp    80103701 <exit+0x43>
801036dd:	83 ec 0c             	sub    $0xc,%esp
801036e0:	68 9b 6d 10 80       	push   $0x80106d9b
801036e5:	e8 72 cc ff ff       	call   8010035c <panic>
801036ea:	83 ec 0c             	sub    $0xc,%esp
801036ed:	50                   	push   %eax
801036ee:	e8 17 d6 ff ff       	call   80100d0a <fileclose>
801036f3:	c7 44 9e 28 00 00 00 	movl   $0x0,0x28(%esi,%ebx,4)
801036fa:	00 
801036fb:	83 c4 10             	add    $0x10,%esp
801036fe:	83 c3 01             	add    $0x1,%ebx
80103701:	83 fb 0f             	cmp    $0xf,%ebx
80103704:	7f 0a                	jg     80103710 <exit+0x52>
80103706:	8b 44 9e 28          	mov    0x28(%esi,%ebx,4),%eax
8010370a:	85 c0                	test   %eax,%eax
8010370c:	75 dc                	jne    801036ea <exit+0x2c>
8010370e:	eb ee                	jmp    801036fe <exit+0x40>
80103710:	e8 70 f1 ff ff       	call   80102885 <begin_op>
80103715:	83 ec 0c             	sub    $0xc,%esp
80103718:	ff 76 68             	push   0x68(%esi)
8010371b:	e8 e6 df ff ff       	call   80101706 <iput>
80103720:	e8 de f1 ff ff       	call   80102903 <end_op>
80103725:	c7 46 68 00 00 00 00 	movl   $0x0,0x68(%esi)
8010372c:	c7 04 24 20 1d 11 80 	movl   $0x80111d20,(%esp)
80103733:	e8 b9 05 00 00       	call   80103cf1 <acquire>
80103738:	8b 46 14             	mov    0x14(%esi),%eax
8010373b:	e8 f1 f9 ff ff       	call   80103131 <wakeup1>
80103740:	83 c4 10             	add    $0x10,%esp
80103743:	bb 54 1d 11 80       	mov    $0x80111d54,%ebx
80103748:	eb 03                	jmp    8010374d <exit+0x8f>
8010374a:	83 c3 7c             	add    $0x7c,%ebx
8010374d:	81 fb 54 3c 11 80    	cmp    $0x80113c54,%ebx
80103753:	73 1a                	jae    8010376f <exit+0xb1>
80103755:	39 73 14             	cmp    %esi,0x14(%ebx)
80103758:	75 f0                	jne    8010374a <exit+0x8c>
8010375a:	a1 54 3c 11 80       	mov    0x80113c54,%eax
8010375f:	89 43 14             	mov    %eax,0x14(%ebx)
80103762:	83 7b 0c 05          	cmpl   $0x5,0xc(%ebx)
80103766:	75 e2                	jne    8010374a <exit+0x8c>
80103768:	e8 c4 f9 ff ff       	call   80103131 <wakeup1>
8010376d:	eb db                	jmp    8010374a <exit+0x8c>
8010376f:	c7 46 0c 05 00 00 00 	movl   $0x5,0xc(%esi)
80103776:	e8 9c fe ff ff       	call   80103617 <sched>
8010377b:	83 ec 0c             	sub    $0xc,%esp
8010377e:	68 a8 6d 10 80       	push   $0x80106da8
80103783:	e8 d4 cb ff ff       	call   8010035c <panic>

80103788 <yield>:
80103788:	f3 0f 1e fb          	endbr32 
8010378c:	55                   	push   %ebp
8010378d:	89 e5                	mov    %esp,%ebp
8010378f:	83 ec 14             	sub    $0x14,%esp
80103792:	68 20 1d 11 80       	push   $0x80111d20
80103797:	e8 55 05 00 00       	call   80103cf1 <acquire>
8010379c:	e8 5c fb ff ff       	call   801032fd <myproc>
801037a1:	c7 40 0c 03 00 00 00 	movl   $0x3,0xc(%eax)
801037a8:	e8 6a fe ff ff       	call   80103617 <sched>
801037ad:	c7 04 24 20 1d 11 80 	movl   $0x80111d20,(%esp)
801037b4:	e8 a1 05 00 00       	call   80103d5a <release>
801037b9:	83 c4 10             	add    $0x10,%esp
801037bc:	c9                   	leave  
801037bd:	c3                   	ret    

801037be <sleep>:
801037be:	f3 0f 1e fb          	endbr32 
801037c2:	55                   	push   %ebp
801037c3:	89 e5                	mov    %esp,%ebp
801037c5:	56                   	push   %esi
801037c6:	53                   	push   %ebx
801037c7:	8b 75 0c             	mov    0xc(%ebp),%esi
801037ca:	e8 2e fb ff ff       	call   801032fd <myproc>
801037cf:	85 c0                	test   %eax,%eax
801037d1:	74 66                	je     80103839 <sleep+0x7b>
801037d3:	89 c3                	mov    %eax,%ebx
801037d5:	85 f6                	test   %esi,%esi
801037d7:	74 6d                	je     80103846 <sleep+0x88>
801037d9:	81 fe 20 1d 11 80    	cmp    $0x80111d20,%esi
801037df:	74 18                	je     801037f9 <sleep+0x3b>
801037e1:	83 ec 0c             	sub    $0xc,%esp
801037e4:	68 20 1d 11 80       	push   $0x80111d20
801037e9:	e8 03 05 00 00       	call   80103cf1 <acquire>
801037ee:	89 34 24             	mov    %esi,(%esp)
801037f1:	e8 64 05 00 00       	call   80103d5a <release>
801037f6:	83 c4 10             	add    $0x10,%esp
801037f9:	8b 45 08             	mov    0x8(%ebp),%eax
801037fc:	89 43 20             	mov    %eax,0x20(%ebx)
801037ff:	c7 43 0c 02 00 00 00 	movl   $0x2,0xc(%ebx)
80103806:	e8 0c fe ff ff       	call   80103617 <sched>
8010380b:	c7 43 20 00 00 00 00 	movl   $0x0,0x20(%ebx)
80103812:	81 fe 20 1d 11 80    	cmp    $0x80111d20,%esi
80103818:	74 18                	je     80103832 <sleep+0x74>
8010381a:	83 ec 0c             	sub    $0xc,%esp
8010381d:	68 20 1d 11 80       	push   $0x80111d20
80103822:	e8 33 05 00 00       	call   80103d5a <release>
80103827:	89 34 24             	mov    %esi,(%esp)
8010382a:	e8 c2 04 00 00       	call   80103cf1 <acquire>
8010382f:	83 c4 10             	add    $0x10,%esp
80103832:	8d 65 f8             	lea    -0x8(%ebp),%esp
80103835:	5b                   	pop    %ebx
80103836:	5e                   	pop    %esi
80103837:	5d                   	pop    %ebp
80103838:	c3                   	ret    
80103839:	83 ec 0c             	sub    $0xc,%esp
8010383c:	68 b4 6d 10 80       	push   $0x80106db4
80103841:	e8 16 cb ff ff       	call   8010035c <panic>
80103846:	83 ec 0c             	sub    $0xc,%esp
80103849:	68 ba 6d 10 80       	push   $0x80106dba
8010384e:	e8 09 cb ff ff       	call   8010035c <panic>

80103853 <wait>:
80103853:	f3 0f 1e fb          	endbr32 
80103857:	55                   	push   %ebp
80103858:	89 e5                	mov    %esp,%ebp
8010385a:	56                   	push   %esi
8010385b:	53                   	push   %ebx
8010385c:	e8 9c fa ff ff       	call   801032fd <myproc>
80103861:	89 c6                	mov    %eax,%esi
80103863:	83 ec 0c             	sub    $0xc,%esp
80103866:	68 20 1d 11 80       	push   $0x80111d20
8010386b:	e8 81 04 00 00       	call   80103cf1 <acquire>
80103870:	83 c4 10             	add    $0x10,%esp
80103873:	b8 00 00 00 00       	mov    $0x0,%eax
80103878:	bb 54 1d 11 80       	mov    $0x80111d54,%ebx
8010387d:	eb 5b                	jmp    801038da <wait+0x87>
8010387f:	8b 73 10             	mov    0x10(%ebx),%esi
80103882:	83 ec 0c             	sub    $0xc,%esp
80103885:	ff 73 08             	push   0x8(%ebx)
80103888:	e8 cd e7 ff ff       	call   8010205a <kfree>
8010388d:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
80103894:	83 c4 04             	add    $0x4,%esp
80103897:	ff 73 04             	push   0x4(%ebx)
8010389a:	e8 52 2c 00 00       	call   801064f1 <freevm>
8010389f:	c7 43 10 00 00 00 00 	movl   $0x0,0x10(%ebx)
801038a6:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)
801038ad:	c6 43 6c 00          	movb   $0x0,0x6c(%ebx)
801038b1:	c7 43 24 00 00 00 00 	movl   $0x0,0x24(%ebx)
801038b8:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
801038bf:	c7 04 24 20 1d 11 80 	movl   $0x80111d20,(%esp)
801038c6:	e8 8f 04 00 00       	call   80103d5a <release>
801038cb:	83 c4 10             	add    $0x10,%esp
801038ce:	89 f0                	mov    %esi,%eax
801038d0:	8d 65 f8             	lea    -0x8(%ebp),%esp
801038d3:	5b                   	pop    %ebx
801038d4:	5e                   	pop    %esi
801038d5:	5d                   	pop    %ebp
801038d6:	c3                   	ret    
801038d7:	83 c3 7c             	add    $0x7c,%ebx
801038da:	81 fb 54 3c 11 80    	cmp    $0x80113c54,%ebx
801038e0:	73 12                	jae    801038f4 <wait+0xa1>
801038e2:	39 73 14             	cmp    %esi,0x14(%ebx)
801038e5:	75 f0                	jne    801038d7 <wait+0x84>
801038e7:	83 7b 0c 05          	cmpl   $0x5,0xc(%ebx)
801038eb:	74 92                	je     8010387f <wait+0x2c>
801038ed:	b8 01 00 00 00       	mov    $0x1,%eax
801038f2:	eb e3                	jmp    801038d7 <wait+0x84>
801038f4:	85 c0                	test   %eax,%eax
801038f6:	74 06                	je     801038fe <wait+0xab>
801038f8:	83 7e 24 00          	cmpl   $0x0,0x24(%esi)
801038fc:	74 17                	je     80103915 <wait+0xc2>
801038fe:	83 ec 0c             	sub    $0xc,%esp
80103901:	68 20 1d 11 80       	push   $0x80111d20
80103906:	e8 4f 04 00 00       	call   80103d5a <release>
8010390b:	83 c4 10             	add    $0x10,%esp
8010390e:	be ff ff ff ff       	mov    $0xffffffff,%esi
80103913:	eb b9                	jmp    801038ce <wait+0x7b>
80103915:	83 ec 08             	sub    $0x8,%esp
80103918:	68 20 1d 11 80       	push   $0x80111d20
8010391d:	56                   	push   %esi
8010391e:	e8 9b fe ff ff       	call   801037be <sleep>
80103923:	83 c4 10             	add    $0x10,%esp
80103926:	e9 48 ff ff ff       	jmp    80103873 <wait+0x20>

8010392b <wakeup>:
8010392b:	f3 0f 1e fb          	endbr32 
8010392f:	55                   	push   %ebp
80103930:	89 e5                	mov    %esp,%ebp
80103932:	83 ec 14             	sub    $0x14,%esp
80103935:	68 20 1d 11 80       	push   $0x80111d20
8010393a:	e8 b2 03 00 00       	call   80103cf1 <acquire>
8010393f:	8b 45 08             	mov    0x8(%ebp),%eax
80103942:	e8 ea f7 ff ff       	call   80103131 <wakeup1>
80103947:	c7 04 24 20 1d 11 80 	movl   $0x80111d20,(%esp)
8010394e:	e8 07 04 00 00       	call   80103d5a <release>
80103953:	83 c4 10             	add    $0x10,%esp
80103956:	c9                   	leave  
80103957:	c3                   	ret    

80103958 <kill>:
80103958:	f3 0f 1e fb          	endbr32 
8010395c:	55                   	push   %ebp
8010395d:	89 e5                	mov    %esp,%ebp
8010395f:	53                   	push   %ebx
80103960:	83 ec 10             	sub    $0x10,%esp
80103963:	8b 5d 08             	mov    0x8(%ebp),%ebx
80103966:	68 20 1d 11 80       	push   $0x80111d20
8010396b:	e8 81 03 00 00       	call   80103cf1 <acquire>
80103970:	83 c4 10             	add    $0x10,%esp
80103973:	b8 54 1d 11 80       	mov    $0x80111d54,%eax
80103978:	eb 0c                	jmp    80103986 <kill+0x2e>
8010397a:	c7 40 0c 03 00 00 00 	movl   $0x3,0xc(%eax)
80103981:	eb 1c                	jmp    8010399f <kill+0x47>
80103983:	83 c0 7c             	add    $0x7c,%eax
80103986:	3d 54 3c 11 80       	cmp    $0x80113c54,%eax
8010398b:	73 2c                	jae    801039b9 <kill+0x61>
8010398d:	39 58 10             	cmp    %ebx,0x10(%eax)
80103990:	75 f1                	jne    80103983 <kill+0x2b>
80103992:	c7 40 24 01 00 00 00 	movl   $0x1,0x24(%eax)
80103999:	83 78 0c 02          	cmpl   $0x2,0xc(%eax)
8010399d:	74 db                	je     8010397a <kill+0x22>
8010399f:	83 ec 0c             	sub    $0xc,%esp
801039a2:	68 20 1d 11 80       	push   $0x80111d20
801039a7:	e8 ae 03 00 00       	call   80103d5a <release>
801039ac:	83 c4 10             	add    $0x10,%esp
801039af:	b8 00 00 00 00       	mov    $0x0,%eax
801039b4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801039b7:	c9                   	leave  
801039b8:	c3                   	ret    
801039b9:	83 ec 0c             	sub    $0xc,%esp
801039bc:	68 20 1d 11 80       	push   $0x80111d20
801039c1:	e8 94 03 00 00       	call   80103d5a <release>
801039c6:	83 c4 10             	add    $0x10,%esp
801039c9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801039ce:	eb e4                	jmp    801039b4 <kill+0x5c>

801039d0 <procdump>:
801039d0:	f3 0f 1e fb          	endbr32 
801039d4:	55                   	push   %ebp
801039d5:	89 e5                	mov    %esp,%ebp
801039d7:	56                   	push   %esi
801039d8:	53                   	push   %ebx
801039d9:	83 ec 30             	sub    $0x30,%esp
801039dc:	bb 54 1d 11 80       	mov    $0x80111d54,%ebx
801039e1:	eb 33                	jmp    80103a16 <procdump+0x46>
801039e3:	b8 cb 6d 10 80       	mov    $0x80106dcb,%eax
801039e8:	8d 53 6c             	lea    0x6c(%ebx),%edx
801039eb:	52                   	push   %edx
801039ec:	50                   	push   %eax
801039ed:	ff 73 10             	push   0x10(%ebx)
801039f0:	68 cf 6d 10 80       	push   $0x80106dcf
801039f5:	e8 2b cc ff ff       	call   80100625 <cprintf>
801039fa:	83 c4 10             	add    $0x10,%esp
801039fd:	83 7b 0c 02          	cmpl   $0x2,0xc(%ebx)
80103a01:	74 39                	je     80103a3c <procdump+0x6c>
80103a03:	83 ec 0c             	sub    $0xc,%esp
80103a06:	68 3b 71 10 80       	push   $0x8010713b
80103a0b:	e8 15 cc ff ff       	call   80100625 <cprintf>
80103a10:	83 c4 10             	add    $0x10,%esp
80103a13:	83 c3 7c             	add    $0x7c,%ebx
80103a16:	81 fb 54 3c 11 80    	cmp    $0x80113c54,%ebx
80103a1c:	73 61                	jae    80103a7f <procdump+0xaf>
80103a1e:	8b 43 0c             	mov    0xc(%ebx),%eax
80103a21:	85 c0                	test   %eax,%eax
80103a23:	74 ee                	je     80103a13 <procdump+0x43>
80103a25:	83 f8 05             	cmp    $0x5,%eax
80103a28:	77 b9                	ja     801039e3 <procdump+0x13>
80103a2a:	8b 04 85 2c 6e 10 80 	mov    -0x7fef91d4(,%eax,4),%eax
80103a31:	85 c0                	test   %eax,%eax
80103a33:	75 b3                	jne    801039e8 <procdump+0x18>
80103a35:	b8 cb 6d 10 80       	mov    $0x80106dcb,%eax
80103a3a:	eb ac                	jmp    801039e8 <procdump+0x18>
80103a3c:	8b 43 1c             	mov    0x1c(%ebx),%eax
80103a3f:	8b 40 0c             	mov    0xc(%eax),%eax
80103a42:	83 c0 08             	add    $0x8,%eax
80103a45:	83 ec 08             	sub    $0x8,%esp
80103a48:	8d 55 d0             	lea    -0x30(%ebp),%edx
80103a4b:	52                   	push   %edx
80103a4c:	50                   	push   %eax
80103a4d:	e8 6e 01 00 00       	call   80103bc0 <getcallerpcs>
80103a52:	83 c4 10             	add    $0x10,%esp
80103a55:	be 00 00 00 00       	mov    $0x0,%esi
80103a5a:	eb 14                	jmp    80103a70 <procdump+0xa0>
80103a5c:	83 ec 08             	sub    $0x8,%esp
80103a5f:	50                   	push   %eax
80103a60:	68 21 68 10 80       	push   $0x80106821
80103a65:	e8 bb cb ff ff       	call   80100625 <cprintf>
80103a6a:	83 c6 01             	add    $0x1,%esi
80103a6d:	83 c4 10             	add    $0x10,%esp
80103a70:	83 fe 09             	cmp    $0x9,%esi
80103a73:	7f 8e                	jg     80103a03 <procdump+0x33>
80103a75:	8b 44 b5 d0          	mov    -0x30(%ebp,%esi,4),%eax
80103a79:	85 c0                	test   %eax,%eax
80103a7b:	75 df                	jne    80103a5c <procdump+0x8c>
80103a7d:	eb 84                	jmp    80103a03 <procdump+0x33>
80103a7f:	8d 65 f8             	lea    -0x8(%ebp),%esp
80103a82:	5b                   	pop    %ebx
80103a83:	5e                   	pop    %esi
80103a84:	5d                   	pop    %ebp
80103a85:	c3                   	ret    

80103a86 <initsleeplock>:
80103a86:	f3 0f 1e fb          	endbr32 
80103a8a:	55                   	push   %ebp
80103a8b:	89 e5                	mov    %esp,%ebp
80103a8d:	53                   	push   %ebx
80103a8e:	83 ec 0c             	sub    $0xc,%esp
80103a91:	8b 5d 08             	mov    0x8(%ebp),%ebx
80103a94:	68 44 6e 10 80       	push   $0x80106e44
80103a99:	8d 43 04             	lea    0x4(%ebx),%eax
80103a9c:	50                   	push   %eax
80103a9d:	e8 ff 00 00 00       	call   80103ba1 <initlock>
80103aa2:	8b 45 0c             	mov    0xc(%ebp),%eax
80103aa5:	89 43 38             	mov    %eax,0x38(%ebx)
80103aa8:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
80103aae:	c7 43 3c 00 00 00 00 	movl   $0x0,0x3c(%ebx)
80103ab5:	83 c4 10             	add    $0x10,%esp
80103ab8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80103abb:	c9                   	leave  
80103abc:	c3                   	ret    

80103abd <acquiresleep>:
80103abd:	f3 0f 1e fb          	endbr32 
80103ac1:	55                   	push   %ebp
80103ac2:	89 e5                	mov    %esp,%ebp
80103ac4:	56                   	push   %esi
80103ac5:	53                   	push   %ebx
80103ac6:	8b 5d 08             	mov    0x8(%ebp),%ebx
80103ac9:	8d 73 04             	lea    0x4(%ebx),%esi
80103acc:	83 ec 0c             	sub    $0xc,%esp
80103acf:	56                   	push   %esi
80103ad0:	e8 1c 02 00 00       	call   80103cf1 <acquire>
80103ad5:	83 c4 10             	add    $0x10,%esp
80103ad8:	eb 0d                	jmp    80103ae7 <acquiresleep+0x2a>
80103ada:	83 ec 08             	sub    $0x8,%esp
80103add:	56                   	push   %esi
80103ade:	53                   	push   %ebx
80103adf:	e8 da fc ff ff       	call   801037be <sleep>
80103ae4:	83 c4 10             	add    $0x10,%esp
80103ae7:	83 3b 00             	cmpl   $0x0,(%ebx)
80103aea:	75 ee                	jne    80103ada <acquiresleep+0x1d>
80103aec:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
80103af2:	e8 06 f8 ff ff       	call   801032fd <myproc>
80103af7:	8b 40 10             	mov    0x10(%eax),%eax
80103afa:	89 43 3c             	mov    %eax,0x3c(%ebx)
80103afd:	83 ec 0c             	sub    $0xc,%esp
80103b00:	56                   	push   %esi
80103b01:	e8 54 02 00 00       	call   80103d5a <release>
80103b06:	83 c4 10             	add    $0x10,%esp
80103b09:	8d 65 f8             	lea    -0x8(%ebp),%esp
80103b0c:	5b                   	pop    %ebx
80103b0d:	5e                   	pop    %esi
80103b0e:	5d                   	pop    %ebp
80103b0f:	c3                   	ret    

80103b10 <releasesleep>:
80103b10:	f3 0f 1e fb          	endbr32 
80103b14:	55                   	push   %ebp
80103b15:	89 e5                	mov    %esp,%ebp
80103b17:	56                   	push   %esi
80103b18:	53                   	push   %ebx
80103b19:	8b 5d 08             	mov    0x8(%ebp),%ebx
80103b1c:	8d 73 04             	lea    0x4(%ebx),%esi
80103b1f:	83 ec 0c             	sub    $0xc,%esp
80103b22:	56                   	push   %esi
80103b23:	e8 c9 01 00 00       	call   80103cf1 <acquire>
80103b28:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
80103b2e:	c7 43 3c 00 00 00 00 	movl   $0x0,0x3c(%ebx)
80103b35:	89 1c 24             	mov    %ebx,(%esp)
80103b38:	e8 ee fd ff ff       	call   8010392b <wakeup>
80103b3d:	89 34 24             	mov    %esi,(%esp)
80103b40:	e8 15 02 00 00       	call   80103d5a <release>
80103b45:	83 c4 10             	add    $0x10,%esp
80103b48:	8d 65 f8             	lea    -0x8(%ebp),%esp
80103b4b:	5b                   	pop    %ebx
80103b4c:	5e                   	pop    %esi
80103b4d:	5d                   	pop    %ebp
80103b4e:	c3                   	ret    

80103b4f <holdingsleep>:
80103b4f:	f3 0f 1e fb          	endbr32 
80103b53:	55                   	push   %ebp
80103b54:	89 e5                	mov    %esp,%ebp
80103b56:	56                   	push   %esi
80103b57:	53                   	push   %ebx
80103b58:	8b 5d 08             	mov    0x8(%ebp),%ebx
80103b5b:	8d 73 04             	lea    0x4(%ebx),%esi
80103b5e:	83 ec 0c             	sub    $0xc,%esp
80103b61:	56                   	push   %esi
80103b62:	e8 8a 01 00 00       	call   80103cf1 <acquire>
80103b67:	83 c4 10             	add    $0x10,%esp
80103b6a:	83 3b 00             	cmpl   $0x0,(%ebx)
80103b6d:	75 17                	jne    80103b86 <holdingsleep+0x37>
80103b6f:	bb 00 00 00 00       	mov    $0x0,%ebx
80103b74:	83 ec 0c             	sub    $0xc,%esp
80103b77:	56                   	push   %esi
80103b78:	e8 dd 01 00 00       	call   80103d5a <release>
80103b7d:	89 d8                	mov    %ebx,%eax
80103b7f:	8d 65 f8             	lea    -0x8(%ebp),%esp
80103b82:	5b                   	pop    %ebx
80103b83:	5e                   	pop    %esi
80103b84:	5d                   	pop    %ebp
80103b85:	c3                   	ret    
80103b86:	8b 5b 3c             	mov    0x3c(%ebx),%ebx
80103b89:	e8 6f f7 ff ff       	call   801032fd <myproc>
80103b8e:	3b 58 10             	cmp    0x10(%eax),%ebx
80103b91:	74 07                	je     80103b9a <holdingsleep+0x4b>
80103b93:	bb 00 00 00 00       	mov    $0x0,%ebx
80103b98:	eb da                	jmp    80103b74 <holdingsleep+0x25>
80103b9a:	bb 01 00 00 00       	mov    $0x1,%ebx
80103b9f:	eb d3                	jmp    80103b74 <holdingsleep+0x25>

80103ba1 <initlock>:
80103ba1:	f3 0f 1e fb          	endbr32 
80103ba5:	55                   	push   %ebp
80103ba6:	89 e5                	mov    %esp,%ebp
80103ba8:	8b 45 08             	mov    0x8(%ebp),%eax
80103bab:	8b 55 0c             	mov    0xc(%ebp),%edx
80103bae:	89 50 04             	mov    %edx,0x4(%eax)
80103bb1:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
80103bb7:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
80103bbe:	5d                   	pop    %ebp
80103bbf:	c3                   	ret    

80103bc0 <getcallerpcs>:
80103bc0:	f3 0f 1e fb          	endbr32 
80103bc4:	55                   	push   %ebp
80103bc5:	89 e5                	mov    %esp,%ebp
80103bc7:	53                   	push   %ebx
80103bc8:	8b 4d 0c             	mov    0xc(%ebp),%ecx
80103bcb:	8b 45 08             	mov    0x8(%ebp),%eax
80103bce:	8d 50 f8             	lea    -0x8(%eax),%edx
80103bd1:	b8 00 00 00 00       	mov    $0x0,%eax
80103bd6:	83 f8 09             	cmp    $0x9,%eax
80103bd9:	7f 25                	jg     80103c00 <getcallerpcs+0x40>
80103bdb:	8d 9a 00 00 00 80    	lea    -0x80000000(%edx),%ebx
80103be1:	81 fb fe ff ff 7f    	cmp    $0x7ffffffe,%ebx
80103be7:	77 17                	ja     80103c00 <getcallerpcs+0x40>
80103be9:	8b 5a 04             	mov    0x4(%edx),%ebx
80103bec:	89 1c 81             	mov    %ebx,(%ecx,%eax,4)
80103bef:	8b 12                	mov    (%edx),%edx
80103bf1:	83 c0 01             	add    $0x1,%eax
80103bf4:	eb e0                	jmp    80103bd6 <getcallerpcs+0x16>
80103bf6:	c7 04 81 00 00 00 00 	movl   $0x0,(%ecx,%eax,4)
80103bfd:	83 c0 01             	add    $0x1,%eax
80103c00:	83 f8 09             	cmp    $0x9,%eax
80103c03:	7e f1                	jle    80103bf6 <getcallerpcs+0x36>
80103c05:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80103c08:	c9                   	leave  
80103c09:	c3                   	ret    

80103c0a <pushcli>:
80103c0a:	f3 0f 1e fb          	endbr32 
80103c0e:	55                   	push   %ebp
80103c0f:	89 e5                	mov    %esp,%ebp
80103c11:	53                   	push   %ebx
80103c12:	83 ec 04             	sub    $0x4,%esp
80103c15:	9c                   	pushf  
80103c16:	5b                   	pop    %ebx
80103c17:	fa                   	cli    
80103c18:	e8 5f f6 ff ff       	call   8010327c <mycpu>
80103c1d:	83 b8 a4 00 00 00 00 	cmpl   $0x0,0xa4(%eax)
80103c24:	74 11                	je     80103c37 <pushcli+0x2d>
80103c26:	e8 51 f6 ff ff       	call   8010327c <mycpu>
80103c2b:	83 80 a4 00 00 00 01 	addl   $0x1,0xa4(%eax)
80103c32:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80103c35:	c9                   	leave  
80103c36:	c3                   	ret    
80103c37:	e8 40 f6 ff ff       	call   8010327c <mycpu>
80103c3c:	81 e3 00 02 00 00    	and    $0x200,%ebx
80103c42:	89 98 a8 00 00 00    	mov    %ebx,0xa8(%eax)
80103c48:	eb dc                	jmp    80103c26 <pushcli+0x1c>

80103c4a <popcli>:
80103c4a:	f3 0f 1e fb          	endbr32 
80103c4e:	55                   	push   %ebp
80103c4f:	89 e5                	mov    %esp,%ebp
80103c51:	83 ec 08             	sub    $0x8,%esp
80103c54:	9c                   	pushf  
80103c55:	58                   	pop    %eax
80103c56:	f6 c4 02             	test   $0x2,%ah
80103c59:	75 28                	jne    80103c83 <popcli+0x39>
80103c5b:	e8 1c f6 ff ff       	call   8010327c <mycpu>
80103c60:	89 c2                	mov    %eax,%edx
80103c62:	8b 80 a4 00 00 00    	mov    0xa4(%eax),%eax
80103c68:	83 e8 01             	sub    $0x1,%eax
80103c6b:	89 82 a4 00 00 00    	mov    %eax,0xa4(%edx)
80103c71:	78 1d                	js     80103c90 <popcli+0x46>
80103c73:	e8 04 f6 ff ff       	call   8010327c <mycpu>
80103c78:	83 b8 a4 00 00 00 00 	cmpl   $0x0,0xa4(%eax)
80103c7f:	74 1c                	je     80103c9d <popcli+0x53>
80103c81:	c9                   	leave  
80103c82:	c3                   	ret    
80103c83:	83 ec 0c             	sub    $0xc,%esp
80103c86:	68 4f 6e 10 80       	push   $0x80106e4f
80103c8b:	e8 cc c6 ff ff       	call   8010035c <panic>
80103c90:	83 ec 0c             	sub    $0xc,%esp
80103c93:	68 66 6e 10 80       	push   $0x80106e66
80103c98:	e8 bf c6 ff ff       	call   8010035c <panic>
80103c9d:	e8 da f5 ff ff       	call   8010327c <mycpu>
80103ca2:	83 b8 a8 00 00 00 00 	cmpl   $0x0,0xa8(%eax)
80103ca9:	74 d6                	je     80103c81 <popcli+0x37>
80103cab:	fb                   	sti    
80103cac:	eb d3                	jmp    80103c81 <popcli+0x37>

80103cae <holding>:
80103cae:	f3 0f 1e fb          	endbr32 
80103cb2:	55                   	push   %ebp
80103cb3:	89 e5                	mov    %esp,%ebp
80103cb5:	53                   	push   %ebx
80103cb6:	83 ec 04             	sub    $0x4,%esp
80103cb9:	8b 5d 08             	mov    0x8(%ebp),%ebx
80103cbc:	e8 49 ff ff ff       	call   80103c0a <pushcli>
80103cc1:	83 3b 00             	cmpl   $0x0,(%ebx)
80103cc4:	75 11                	jne    80103cd7 <holding+0x29>
80103cc6:	bb 00 00 00 00       	mov    $0x0,%ebx
80103ccb:	e8 7a ff ff ff       	call   80103c4a <popcli>
80103cd0:	89 d8                	mov    %ebx,%eax
80103cd2:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80103cd5:	c9                   	leave  
80103cd6:	c3                   	ret    
80103cd7:	8b 5b 08             	mov    0x8(%ebx),%ebx
80103cda:	e8 9d f5 ff ff       	call   8010327c <mycpu>
80103cdf:	39 c3                	cmp    %eax,%ebx
80103ce1:	74 07                	je     80103cea <holding+0x3c>
80103ce3:	bb 00 00 00 00       	mov    $0x0,%ebx
80103ce8:	eb e1                	jmp    80103ccb <holding+0x1d>
80103cea:	bb 01 00 00 00       	mov    $0x1,%ebx
80103cef:	eb da                	jmp    80103ccb <holding+0x1d>

80103cf1 <acquire>:
80103cf1:	f3 0f 1e fb          	endbr32 
80103cf5:	55                   	push   %ebp
80103cf6:	89 e5                	mov    %esp,%ebp
80103cf8:	53                   	push   %ebx
80103cf9:	83 ec 04             	sub    $0x4,%esp
80103cfc:	e8 09 ff ff ff       	call   80103c0a <pushcli>
80103d01:	83 ec 0c             	sub    $0xc,%esp
80103d04:	ff 75 08             	push   0x8(%ebp)
80103d07:	e8 a2 ff ff ff       	call   80103cae <holding>
80103d0c:	83 c4 10             	add    $0x10,%esp
80103d0f:	85 c0                	test   %eax,%eax
80103d11:	75 3a                	jne    80103d4d <acquire+0x5c>
80103d13:	8b 55 08             	mov    0x8(%ebp),%edx
80103d16:	b8 01 00 00 00       	mov    $0x1,%eax
80103d1b:	f0 87 02             	lock xchg %eax,(%edx)
80103d1e:	85 c0                	test   %eax,%eax
80103d20:	75 f1                	jne    80103d13 <acquire+0x22>
80103d22:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
80103d27:	8b 5d 08             	mov    0x8(%ebp),%ebx
80103d2a:	e8 4d f5 ff ff       	call   8010327c <mycpu>
80103d2f:	89 43 08             	mov    %eax,0x8(%ebx)
80103d32:	8b 45 08             	mov    0x8(%ebp),%eax
80103d35:	83 c0 0c             	add    $0xc,%eax
80103d38:	83 ec 08             	sub    $0x8,%esp
80103d3b:	50                   	push   %eax
80103d3c:	8d 45 08             	lea    0x8(%ebp),%eax
80103d3f:	50                   	push   %eax
80103d40:	e8 7b fe ff ff       	call   80103bc0 <getcallerpcs>
80103d45:	83 c4 10             	add    $0x10,%esp
80103d48:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80103d4b:	c9                   	leave  
80103d4c:	c3                   	ret    
80103d4d:	83 ec 0c             	sub    $0xc,%esp
80103d50:	68 6d 6e 10 80       	push   $0x80106e6d
80103d55:	e8 02 c6 ff ff       	call   8010035c <panic>

80103d5a <release>:
80103d5a:	f3 0f 1e fb          	endbr32 
80103d5e:	55                   	push   %ebp
80103d5f:	89 e5                	mov    %esp,%ebp
80103d61:	53                   	push   %ebx
80103d62:	83 ec 10             	sub    $0x10,%esp
80103d65:	8b 5d 08             	mov    0x8(%ebp),%ebx
80103d68:	53                   	push   %ebx
80103d69:	e8 40 ff ff ff       	call   80103cae <holding>
80103d6e:	83 c4 10             	add    $0x10,%esp
80103d71:	85 c0                	test   %eax,%eax
80103d73:	74 23                	je     80103d98 <release+0x3e>
80103d75:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
80103d7c:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
80103d83:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
80103d88:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
80103d8e:	e8 b7 fe ff ff       	call   80103c4a <popcli>
80103d93:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80103d96:	c9                   	leave  
80103d97:	c3                   	ret    
80103d98:	83 ec 0c             	sub    $0xc,%esp
80103d9b:	68 75 6e 10 80       	push   $0x80106e75
80103da0:	e8 b7 c5 ff ff       	call   8010035c <panic>

80103da5 <memset>:
80103da5:	f3 0f 1e fb          	endbr32 
80103da9:	55                   	push   %ebp
80103daa:	89 e5                	mov    %esp,%ebp
80103dac:	57                   	push   %edi
80103dad:	53                   	push   %ebx
80103dae:	8b 55 08             	mov    0x8(%ebp),%edx
80103db1:	8b 45 0c             	mov    0xc(%ebp),%eax
80103db4:	8b 4d 10             	mov    0x10(%ebp),%ecx
80103db7:	f6 c2 03             	test   $0x3,%dl
80103dba:	75 25                	jne    80103de1 <memset+0x3c>
80103dbc:	f6 c1 03             	test   $0x3,%cl
80103dbf:	75 20                	jne    80103de1 <memset+0x3c>
80103dc1:	0f b6 f8             	movzbl %al,%edi
80103dc4:	c1 e9 02             	shr    $0x2,%ecx
80103dc7:	c1 e0 18             	shl    $0x18,%eax
80103dca:	89 fb                	mov    %edi,%ebx
80103dcc:	c1 e3 10             	shl    $0x10,%ebx
80103dcf:	09 d8                	or     %ebx,%eax
80103dd1:	89 fb                	mov    %edi,%ebx
80103dd3:	c1 e3 08             	shl    $0x8,%ebx
80103dd6:	09 d8                	or     %ebx,%eax
80103dd8:	09 f8                	or     %edi,%eax
80103dda:	89 d7                	mov    %edx,%edi
80103ddc:	fc                   	cld    
80103ddd:	f3 ab                	rep stos %eax,%es:(%edi)
80103ddf:	eb 05                	jmp    80103de6 <memset+0x41>
80103de1:	89 d7                	mov    %edx,%edi
80103de3:	fc                   	cld    
80103de4:	f3 aa                	rep stos %al,%es:(%edi)
80103de6:	89 d0                	mov    %edx,%eax
80103de8:	5b                   	pop    %ebx
80103de9:	5f                   	pop    %edi
80103dea:	5d                   	pop    %ebp
80103deb:	c3                   	ret    

80103dec <memcmp>:
80103dec:	f3 0f 1e fb          	endbr32 
80103df0:	55                   	push   %ebp
80103df1:	89 e5                	mov    %esp,%ebp
80103df3:	56                   	push   %esi
80103df4:	53                   	push   %ebx
80103df5:	8b 4d 08             	mov    0x8(%ebp),%ecx
80103df8:	8b 55 0c             	mov    0xc(%ebp),%edx
80103dfb:	8b 45 10             	mov    0x10(%ebp),%eax
80103dfe:	eb 08                	jmp    80103e08 <memcmp+0x1c>
80103e00:	83 c1 01             	add    $0x1,%ecx
80103e03:	83 c2 01             	add    $0x1,%edx
80103e06:	89 f0                	mov    %esi,%eax
80103e08:	8d 70 ff             	lea    -0x1(%eax),%esi
80103e0b:	85 c0                	test   %eax,%eax
80103e0d:	74 12                	je     80103e21 <memcmp+0x35>
80103e0f:	0f b6 01             	movzbl (%ecx),%eax
80103e12:	0f b6 1a             	movzbl (%edx),%ebx
80103e15:	38 d8                	cmp    %bl,%al
80103e17:	74 e7                	je     80103e00 <memcmp+0x14>
80103e19:	0f b6 c0             	movzbl %al,%eax
80103e1c:	0f b6 db             	movzbl %bl,%ebx
80103e1f:	29 d8                	sub    %ebx,%eax
80103e21:	5b                   	pop    %ebx
80103e22:	5e                   	pop    %esi
80103e23:	5d                   	pop    %ebp
80103e24:	c3                   	ret    

80103e25 <memmove>:
80103e25:	f3 0f 1e fb          	endbr32 
80103e29:	55                   	push   %ebp
80103e2a:	89 e5                	mov    %esp,%ebp
80103e2c:	56                   	push   %esi
80103e2d:	53                   	push   %ebx
80103e2e:	8b 75 08             	mov    0x8(%ebp),%esi
80103e31:	8b 55 0c             	mov    0xc(%ebp),%edx
80103e34:	8b 45 10             	mov    0x10(%ebp),%eax
80103e37:	39 f2                	cmp    %esi,%edx
80103e39:	73 3c                	jae    80103e77 <memmove+0x52>
80103e3b:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
80103e3e:	39 f1                	cmp    %esi,%ecx
80103e40:	76 39                	jbe    80103e7b <memmove+0x56>
80103e42:	8d 14 06             	lea    (%esi,%eax,1),%edx
80103e45:	eb 0d                	jmp    80103e54 <memmove+0x2f>
80103e47:	83 e9 01             	sub    $0x1,%ecx
80103e4a:	83 ea 01             	sub    $0x1,%edx
80103e4d:	0f b6 01             	movzbl (%ecx),%eax
80103e50:	88 02                	mov    %al,(%edx)
80103e52:	89 d8                	mov    %ebx,%eax
80103e54:	8d 58 ff             	lea    -0x1(%eax),%ebx
80103e57:	85 c0                	test   %eax,%eax
80103e59:	75 ec                	jne    80103e47 <memmove+0x22>
80103e5b:	eb 14                	jmp    80103e71 <memmove+0x4c>
80103e5d:	0f b6 02             	movzbl (%edx),%eax
80103e60:	88 01                	mov    %al,(%ecx)
80103e62:	8d 49 01             	lea    0x1(%ecx),%ecx
80103e65:	8d 52 01             	lea    0x1(%edx),%edx
80103e68:	89 d8                	mov    %ebx,%eax
80103e6a:	8d 58 ff             	lea    -0x1(%eax),%ebx
80103e6d:	85 c0                	test   %eax,%eax
80103e6f:	75 ec                	jne    80103e5d <memmove+0x38>
80103e71:	89 f0                	mov    %esi,%eax
80103e73:	5b                   	pop    %ebx
80103e74:	5e                   	pop    %esi
80103e75:	5d                   	pop    %ebp
80103e76:	c3                   	ret    
80103e77:	89 f1                	mov    %esi,%ecx
80103e79:	eb ef                	jmp    80103e6a <memmove+0x45>
80103e7b:	89 f1                	mov    %esi,%ecx
80103e7d:	eb eb                	jmp    80103e6a <memmove+0x45>

80103e7f <memcpy>:
80103e7f:	f3 0f 1e fb          	endbr32 
80103e83:	55                   	push   %ebp
80103e84:	89 e5                	mov    %esp,%ebp
80103e86:	83 ec 0c             	sub    $0xc,%esp
80103e89:	ff 75 10             	push   0x10(%ebp)
80103e8c:	ff 75 0c             	push   0xc(%ebp)
80103e8f:	ff 75 08             	push   0x8(%ebp)
80103e92:	e8 8e ff ff ff       	call   80103e25 <memmove>
80103e97:	c9                   	leave  
80103e98:	c3                   	ret    

80103e99 <strncmp>:
80103e99:	f3 0f 1e fb          	endbr32 
80103e9d:	55                   	push   %ebp
80103e9e:	89 e5                	mov    %esp,%ebp
80103ea0:	53                   	push   %ebx
80103ea1:	8b 55 08             	mov    0x8(%ebp),%edx
80103ea4:	8b 4d 0c             	mov    0xc(%ebp),%ecx
80103ea7:	8b 45 10             	mov    0x10(%ebp),%eax
80103eaa:	eb 09                	jmp    80103eb5 <strncmp+0x1c>
80103eac:	83 e8 01             	sub    $0x1,%eax
80103eaf:	83 c2 01             	add    $0x1,%edx
80103eb2:	83 c1 01             	add    $0x1,%ecx
80103eb5:	85 c0                	test   %eax,%eax
80103eb7:	74 0b                	je     80103ec4 <strncmp+0x2b>
80103eb9:	0f b6 1a             	movzbl (%edx),%ebx
80103ebc:	84 db                	test   %bl,%bl
80103ebe:	74 04                	je     80103ec4 <strncmp+0x2b>
80103ec0:	3a 19                	cmp    (%ecx),%bl
80103ec2:	74 e8                	je     80103eac <strncmp+0x13>
80103ec4:	85 c0                	test   %eax,%eax
80103ec6:	74 0d                	je     80103ed5 <strncmp+0x3c>
80103ec8:	0f b6 02             	movzbl (%edx),%eax
80103ecb:	0f b6 11             	movzbl (%ecx),%edx
80103ece:	29 d0                	sub    %edx,%eax
80103ed0:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80103ed3:	c9                   	leave  
80103ed4:	c3                   	ret    
80103ed5:	b8 00 00 00 00       	mov    $0x0,%eax
80103eda:	eb f4                	jmp    80103ed0 <strncmp+0x37>

80103edc <strncpy>:
80103edc:	f3 0f 1e fb          	endbr32 
80103ee0:	55                   	push   %ebp
80103ee1:	89 e5                	mov    %esp,%ebp
80103ee3:	57                   	push   %edi
80103ee4:	56                   	push   %esi
80103ee5:	53                   	push   %ebx
80103ee6:	8b 7d 08             	mov    0x8(%ebp),%edi
80103ee9:	8b 4d 0c             	mov    0xc(%ebp),%ecx
80103eec:	8b 45 10             	mov    0x10(%ebp),%eax
80103eef:	89 fa                	mov    %edi,%edx
80103ef1:	eb 04                	jmp    80103ef7 <strncpy+0x1b>
80103ef3:	89 f1                	mov    %esi,%ecx
80103ef5:	89 da                	mov    %ebx,%edx
80103ef7:	89 c3                	mov    %eax,%ebx
80103ef9:	83 e8 01             	sub    $0x1,%eax
80103efc:	85 db                	test   %ebx,%ebx
80103efe:	7e 11                	jle    80103f11 <strncpy+0x35>
80103f00:	8d 71 01             	lea    0x1(%ecx),%esi
80103f03:	8d 5a 01             	lea    0x1(%edx),%ebx
80103f06:	0f b6 09             	movzbl (%ecx),%ecx
80103f09:	88 0a                	mov    %cl,(%edx)
80103f0b:	84 c9                	test   %cl,%cl
80103f0d:	75 e4                	jne    80103ef3 <strncpy+0x17>
80103f0f:	89 da                	mov    %ebx,%edx
80103f11:	8d 48 ff             	lea    -0x1(%eax),%ecx
80103f14:	85 c0                	test   %eax,%eax
80103f16:	7e 0a                	jle    80103f22 <strncpy+0x46>
80103f18:	c6 02 00             	movb   $0x0,(%edx)
80103f1b:	89 c8                	mov    %ecx,%eax
80103f1d:	8d 52 01             	lea    0x1(%edx),%edx
80103f20:	eb ef                	jmp    80103f11 <strncpy+0x35>
80103f22:	89 f8                	mov    %edi,%eax
80103f24:	5b                   	pop    %ebx
80103f25:	5e                   	pop    %esi
80103f26:	5f                   	pop    %edi
80103f27:	5d                   	pop    %ebp
80103f28:	c3                   	ret    

80103f29 <safestrcpy>:
80103f29:	f3 0f 1e fb          	endbr32 
80103f2d:	55                   	push   %ebp
80103f2e:	89 e5                	mov    %esp,%ebp
80103f30:	57                   	push   %edi
80103f31:	56                   	push   %esi
80103f32:	53                   	push   %ebx
80103f33:	8b 7d 08             	mov    0x8(%ebp),%edi
80103f36:	8b 4d 0c             	mov    0xc(%ebp),%ecx
80103f39:	8b 45 10             	mov    0x10(%ebp),%eax
80103f3c:	85 c0                	test   %eax,%eax
80103f3e:	7e 23                	jle    80103f63 <safestrcpy+0x3a>
80103f40:	89 fa                	mov    %edi,%edx
80103f42:	eb 04                	jmp    80103f48 <safestrcpy+0x1f>
80103f44:	89 f1                	mov    %esi,%ecx
80103f46:	89 da                	mov    %ebx,%edx
80103f48:	83 e8 01             	sub    $0x1,%eax
80103f4b:	85 c0                	test   %eax,%eax
80103f4d:	7e 11                	jle    80103f60 <safestrcpy+0x37>
80103f4f:	8d 71 01             	lea    0x1(%ecx),%esi
80103f52:	8d 5a 01             	lea    0x1(%edx),%ebx
80103f55:	0f b6 09             	movzbl (%ecx),%ecx
80103f58:	88 0a                	mov    %cl,(%edx)
80103f5a:	84 c9                	test   %cl,%cl
80103f5c:	75 e6                	jne    80103f44 <safestrcpy+0x1b>
80103f5e:	89 da                	mov    %ebx,%edx
80103f60:	c6 02 00             	movb   $0x0,(%edx)
80103f63:	89 f8                	mov    %edi,%eax
80103f65:	5b                   	pop    %ebx
80103f66:	5e                   	pop    %esi
80103f67:	5f                   	pop    %edi
80103f68:	5d                   	pop    %ebp
80103f69:	c3                   	ret    

80103f6a <strlen>:
80103f6a:	f3 0f 1e fb          	endbr32 
80103f6e:	55                   	push   %ebp
80103f6f:	89 e5                	mov    %esp,%ebp
80103f71:	8b 55 08             	mov    0x8(%ebp),%edx
80103f74:	b8 00 00 00 00       	mov    $0x0,%eax
80103f79:	eb 03                	jmp    80103f7e <strlen+0x14>
80103f7b:	83 c0 01             	add    $0x1,%eax
80103f7e:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
80103f82:	75 f7                	jne    80103f7b <strlen+0x11>
80103f84:	5d                   	pop    %ebp
80103f85:	c3                   	ret    

80103f86 <swtch>:
80103f86:	8b 44 24 04          	mov    0x4(%esp),%eax
80103f8a:	8b 54 24 08          	mov    0x8(%esp),%edx
80103f8e:	55                   	push   %ebp
80103f8f:	53                   	push   %ebx
80103f90:	56                   	push   %esi
80103f91:	57                   	push   %edi
80103f92:	89 20                	mov    %esp,(%eax)
80103f94:	89 d4                	mov    %edx,%esp
80103f96:	5f                   	pop    %edi
80103f97:	5e                   	pop    %esi
80103f98:	5b                   	pop    %ebx
80103f99:	5d                   	pop    %ebp
80103f9a:	c3                   	ret    

80103f9b <fetchint>:
// to a saved program counter, and then the first argument.

// Fetch the int at addr from the current process.
int
fetchint(uint addr, int *ip)
{
80103f9b:	55                   	push   %ebp
80103f9c:	89 e5                	mov    %esp,%ebp
80103f9e:	53                   	push   %ebx
80103f9f:	83 ec 04             	sub    $0x4,%esp
80103fa2:	8b 5d 08             	mov    0x8(%ebp),%ebx
  struct proc *curproc = myproc();
80103fa5:	e8 53 f3 ff ff       	call   801032fd <myproc>

  if(addr >= curproc->sz || addr+4 > curproc->sz)
80103faa:	8b 00                	mov    (%eax),%eax
80103fac:	39 d8                	cmp    %ebx,%eax
80103fae:	76 18                	jbe    80103fc8 <fetchint+0x2d>
80103fb0:	8d 53 04             	lea    0x4(%ebx),%edx
80103fb3:	39 d0                	cmp    %edx,%eax
80103fb5:	72 18                	jb     80103fcf <fetchint+0x34>
    return -1;
  *ip = *(int*)(addr);
80103fb7:	8b 13                	mov    (%ebx),%edx
80103fb9:	8b 45 0c             	mov    0xc(%ebp),%eax
80103fbc:	89 10                	mov    %edx,(%eax)
  return 0;
80103fbe:	b8 00 00 00 00       	mov    $0x0,%eax
}
80103fc3:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80103fc6:	c9                   	leave  
80103fc7:	c3                   	ret    
    return -1;
80103fc8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80103fcd:	eb f4                	jmp    80103fc3 <fetchint+0x28>
80103fcf:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80103fd4:	eb ed                	jmp    80103fc3 <fetchint+0x28>

80103fd6 <fetchstr>:
// Fetch the nul-terminated string at addr from the current process.
// Doesn't actually copy the string - just sets *pp to point at it.
// Returns length of string, not including nul.
int
fetchstr(uint addr, char **pp)
{
80103fd6:	55                   	push   %ebp
80103fd7:	89 e5                	mov    %esp,%ebp
80103fd9:	53                   	push   %ebx
80103fda:	83 ec 04             	sub    $0x4,%esp
80103fdd:	8b 5d 08             	mov    0x8(%ebp),%ebx
  char *s, *ep;
  struct proc *curproc = myproc();
80103fe0:	e8 18 f3 ff ff       	call   801032fd <myproc>

  if(addr >= curproc->sz)
80103fe5:	39 18                	cmp    %ebx,(%eax)
80103fe7:	76 25                	jbe    8010400e <fetchstr+0x38>
    return -1;
  *pp = (char*)addr;
80103fe9:	8b 55 0c             	mov    0xc(%ebp),%edx
80103fec:	89 1a                	mov    %ebx,(%edx)
  ep = (char*)curproc->sz;
80103fee:	8b 10                	mov    (%eax),%edx
  for(s = *pp; s < ep; s++){
80103ff0:	89 d8                	mov    %ebx,%eax
80103ff2:	eb 03                	jmp    80103ff7 <fetchstr+0x21>
80103ff4:	83 c0 01             	add    $0x1,%eax
80103ff7:	39 d0                	cmp    %edx,%eax
80103ff9:	73 09                	jae    80104004 <fetchstr+0x2e>
    if(*s == 0)
80103ffb:	80 38 00             	cmpb   $0x0,(%eax)
80103ffe:	75 f4                	jne    80103ff4 <fetchstr+0x1e>
      return s - *pp;
80104000:	29 d8                	sub    %ebx,%eax
80104002:	eb 05                	jmp    80104009 <fetchstr+0x33>
  }
  return -1;
80104004:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
80104009:	8b 5d fc             	mov    -0x4(%ebp),%ebx
8010400c:	c9                   	leave  
8010400d:	c3                   	ret    
    return -1;
8010400e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104013:	eb f4                	jmp    80104009 <fetchstr+0x33>

80104015 <argint>:

// Fetch the nth 32-bit system call argument.
int
argint(int n, int *ip)
{
80104015:	55                   	push   %ebp
80104016:	89 e5                	mov    %esp,%ebp
80104018:	83 ec 08             	sub    $0x8,%esp
  return fetchint((myproc()->tf->esp) + 4 + 4*n, ip);
8010401b:	e8 dd f2 ff ff       	call   801032fd <myproc>
80104020:	8b 50 18             	mov    0x18(%eax),%edx
80104023:	8b 45 08             	mov    0x8(%ebp),%eax
80104026:	c1 e0 02             	shl    $0x2,%eax
80104029:	03 42 44             	add    0x44(%edx),%eax
8010402c:	83 ec 08             	sub    $0x8,%esp
8010402f:	ff 75 0c             	push   0xc(%ebp)
80104032:	83 c0 04             	add    $0x4,%eax
80104035:	50                   	push   %eax
80104036:	e8 60 ff ff ff       	call   80103f9b <fetchint>
}
8010403b:	c9                   	leave  
8010403c:	c3                   	ret    

8010403d <argptr>:
// Fetch the nth word-sized system call argument as a pointer
// to a block of memory of size bytes.  Check that the pointer
// lies within the process address space.
int
argptr(int n, void **pp, int size)
{
8010403d:	55                   	push   %ebp
8010403e:	89 e5                	mov    %esp,%ebp
80104040:	56                   	push   %esi
80104041:	53                   	push   %ebx
80104042:	83 ec 10             	sub    $0x10,%esp
80104045:	8b 5d 10             	mov    0x10(%ebp),%ebx
  int i;
  struct proc *curproc = myproc();
80104048:	e8 b0 f2 ff ff       	call   801032fd <myproc>
8010404d:	89 c6                	mov    %eax,%esi
 
  if(argint(n, &i) < 0)
8010404f:	83 ec 08             	sub    $0x8,%esp
80104052:	8d 45 f4             	lea    -0xc(%ebp),%eax
80104055:	50                   	push   %eax
80104056:	ff 75 08             	push   0x8(%ebp)
80104059:	e8 b7 ff ff ff       	call   80104015 <argint>
8010405e:	83 c4 10             	add    $0x10,%esp
80104061:	85 c0                	test   %eax,%eax
80104063:	78 24                	js     80104089 <argptr+0x4c>
    return -1;
  if(size < 0 || (uint)i >= curproc->sz || (uint)i+size > curproc->sz)
80104065:	85 db                	test   %ebx,%ebx
80104067:	78 27                	js     80104090 <argptr+0x53>
80104069:	8b 16                	mov    (%esi),%edx
8010406b:	8b 45 f4             	mov    -0xc(%ebp),%eax
8010406e:	39 c2                	cmp    %eax,%edx
80104070:	76 25                	jbe    80104097 <argptr+0x5a>
80104072:	01 c3                	add    %eax,%ebx
80104074:	39 da                	cmp    %ebx,%edx
80104076:	72 26                	jb     8010409e <argptr+0x61>
    return -1;
  *pp = (void*)i;
80104078:	8b 55 0c             	mov    0xc(%ebp),%edx
8010407b:	89 02                	mov    %eax,(%edx)
  return 0;
8010407d:	b8 00 00 00 00       	mov    $0x0,%eax
}
80104082:	8d 65 f8             	lea    -0x8(%ebp),%esp
80104085:	5b                   	pop    %ebx
80104086:	5e                   	pop    %esi
80104087:	5d                   	pop    %ebp
80104088:	c3                   	ret    
    return -1;
80104089:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010408e:	eb f2                	jmp    80104082 <argptr+0x45>
    return -1;
80104090:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104095:	eb eb                	jmp    80104082 <argptr+0x45>
80104097:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010409c:	eb e4                	jmp    80104082 <argptr+0x45>
8010409e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801040a3:	eb dd                	jmp    80104082 <argptr+0x45>

801040a5 <argstr>:
// Check that the pointer is valid and the string is nul-terminated.
// (There is no shared writable memory, so the string can't change
// between this check and being used by the kernel.)
int
argstr(int n, char **pp)
{
801040a5:	55                   	push   %ebp
801040a6:	89 e5                	mov    %esp,%ebp
801040a8:	83 ec 20             	sub    $0x20,%esp
  int addr;
  if(argint(n, &addr) < 0)
801040ab:	8d 45 f4             	lea    -0xc(%ebp),%eax
801040ae:	50                   	push   %eax
801040af:	ff 75 08             	push   0x8(%ebp)
801040b2:	e8 5e ff ff ff       	call   80104015 <argint>
801040b7:	83 c4 10             	add    $0x10,%esp
801040ba:	85 c0                	test   %eax,%eax
801040bc:	78 13                	js     801040d1 <argstr+0x2c>
    return -1;
  return fetchstr(addr, pp);
801040be:	83 ec 08             	sub    $0x8,%esp
801040c1:	ff 75 0c             	push   0xc(%ebp)
801040c4:	ff 75 f4             	push   -0xc(%ebp)
801040c7:	e8 0a ff ff ff       	call   80103fd6 <fetchstr>
801040cc:	83 c4 10             	add    $0x10,%esp
}
801040cf:	c9                   	leave  
801040d0:	c3                   	ret    
    return -1;
801040d1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801040d6:	eb f7                	jmp    801040cf <argstr+0x2a>

801040d8 <syscall>:
[SYS_date]   sys_date,
};

void
syscall(void)
{
801040d8:	55                   	push   %ebp
801040d9:	89 e5                	mov    %esp,%ebp
801040db:	53                   	push   %ebx
801040dc:	83 ec 04             	sub    $0x4,%esp
  int num;
  struct proc *curproc = myproc();
801040df:	e8 19 f2 ff ff       	call   801032fd <myproc>
801040e4:	89 c3                	mov    %eax,%ebx

  num = curproc->tf->eax;
801040e6:	8b 40 18             	mov    0x18(%eax),%eax
801040e9:	8b 40 1c             	mov    0x1c(%eax),%eax
  if(num > 0 && num < NELEM(syscalls) && syscalls[num]) {
801040ec:	8d 50 ff             	lea    -0x1(%eax),%edx
801040ef:	83 fa 15             	cmp    $0x15,%edx
801040f2:	77 17                	ja     8010410b <syscall+0x33>
801040f4:	8b 14 85 a0 6e 10 80 	mov    -0x7fef9160(,%eax,4),%edx
801040fb:	85 d2                	test   %edx,%edx
801040fd:	74 0c                	je     8010410b <syscall+0x33>
    curproc->tf->eax = syscalls[num]();
801040ff:	ff d2                	call   *%edx
80104101:	89 c2                	mov    %eax,%edx
80104103:	8b 43 18             	mov    0x18(%ebx),%eax
80104106:	89 50 1c             	mov    %edx,0x1c(%eax)
80104109:	eb 1f                	jmp    8010412a <syscall+0x52>
  } else {
    cprintf("%d %s: unknown sys call %d\n",
            curproc->pid, curproc->name, num);
8010410b:	8d 53 6c             	lea    0x6c(%ebx),%edx
    cprintf("%d %s: unknown sys call %d\n",
8010410e:	50                   	push   %eax
8010410f:	52                   	push   %edx
80104110:	ff 73 10             	push   0x10(%ebx)
80104113:	68 7d 6e 10 80       	push   $0x80106e7d
80104118:	e8 08 c5 ff ff       	call   80100625 <cprintf>
    curproc->tf->eax = -1;
8010411d:	8b 43 18             	mov    0x18(%ebx),%eax
80104120:	c7 40 1c ff ff ff ff 	movl   $0xffffffff,0x1c(%eax)
80104127:	83 c4 10             	add    $0x10,%esp
  }
}
8010412a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
8010412d:	c9                   	leave  
8010412e:	c3                   	ret    

8010412f <argfd>:
8010412f:	55                   	push   %ebp
80104130:	89 e5                	mov    %esp,%ebp
80104132:	56                   	push   %esi
80104133:	53                   	push   %ebx
80104134:	83 ec 18             	sub    $0x18,%esp
80104137:	89 d6                	mov    %edx,%esi
80104139:	89 cb                	mov    %ecx,%ebx
8010413b:	8d 55 f4             	lea    -0xc(%ebp),%edx
8010413e:	52                   	push   %edx
8010413f:	50                   	push   %eax
80104140:	e8 d0 fe ff ff       	call   80104015 <argint>
80104145:	83 c4 10             	add    $0x10,%esp
80104148:	85 c0                	test   %eax,%eax
8010414a:	78 35                	js     80104181 <argfd+0x52>
8010414c:	83 7d f4 0f          	cmpl   $0xf,-0xc(%ebp)
80104150:	77 28                	ja     8010417a <argfd+0x4b>
80104152:	e8 a6 f1 ff ff       	call   801032fd <myproc>
80104157:	8b 55 f4             	mov    -0xc(%ebp),%edx
8010415a:	8b 44 90 28          	mov    0x28(%eax,%edx,4),%eax
8010415e:	85 c0                	test   %eax,%eax
80104160:	74 18                	je     8010417a <argfd+0x4b>
80104162:	85 f6                	test   %esi,%esi
80104164:	74 02                	je     80104168 <argfd+0x39>
80104166:	89 16                	mov    %edx,(%esi)
80104168:	85 db                	test   %ebx,%ebx
8010416a:	74 1c                	je     80104188 <argfd+0x59>
8010416c:	89 03                	mov    %eax,(%ebx)
8010416e:	b8 00 00 00 00       	mov    $0x0,%eax
80104173:	8d 65 f8             	lea    -0x8(%ebp),%esp
80104176:	5b                   	pop    %ebx
80104177:	5e                   	pop    %esi
80104178:	5d                   	pop    %ebp
80104179:	c3                   	ret    
8010417a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010417f:	eb f2                	jmp    80104173 <argfd+0x44>
80104181:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104186:	eb eb                	jmp    80104173 <argfd+0x44>
80104188:	b8 00 00 00 00       	mov    $0x0,%eax
8010418d:	eb e4                	jmp    80104173 <argfd+0x44>

8010418f <fdalloc>:
8010418f:	55                   	push   %ebp
80104190:	89 e5                	mov    %esp,%ebp
80104192:	53                   	push   %ebx
80104193:	83 ec 04             	sub    $0x4,%esp
80104196:	89 c3                	mov    %eax,%ebx
80104198:	e8 60 f1 ff ff       	call   801032fd <myproc>
8010419d:	89 c2                	mov    %eax,%edx
8010419f:	b8 00 00 00 00       	mov    $0x0,%eax
801041a4:	83 f8 0f             	cmp    $0xf,%eax
801041a7:	7f 12                	jg     801041bb <fdalloc+0x2c>
801041a9:	83 7c 82 28 00       	cmpl   $0x0,0x28(%edx,%eax,4)
801041ae:	74 05                	je     801041b5 <fdalloc+0x26>
801041b0:	83 c0 01             	add    $0x1,%eax
801041b3:	eb ef                	jmp    801041a4 <fdalloc+0x15>
801041b5:	89 5c 82 28          	mov    %ebx,0x28(%edx,%eax,4)
801041b9:	eb 05                	jmp    801041c0 <fdalloc+0x31>
801041bb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801041c0:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801041c3:	c9                   	leave  
801041c4:	c3                   	ret    

801041c5 <isdirempty>:
801041c5:	55                   	push   %ebp
801041c6:	89 e5                	mov    %esp,%ebp
801041c8:	56                   	push   %esi
801041c9:	53                   	push   %ebx
801041ca:	83 ec 10             	sub    $0x10,%esp
801041cd:	89 c3                	mov    %eax,%ebx
801041cf:	b8 20 00 00 00       	mov    $0x20,%eax
801041d4:	89 c6                	mov    %eax,%esi
801041d6:	39 43 58             	cmp    %eax,0x58(%ebx)
801041d9:	76 2e                	jbe    80104209 <isdirempty+0x44>
801041db:	6a 10                	push   $0x10
801041dd:	50                   	push   %eax
801041de:	8d 45 e8             	lea    -0x18(%ebp),%eax
801041e1:	50                   	push   %eax
801041e2:	53                   	push   %ebx
801041e3:	e8 15 d6 ff ff       	call   801017fd <readi>
801041e8:	83 c4 10             	add    $0x10,%esp
801041eb:	83 f8 10             	cmp    $0x10,%eax
801041ee:	75 0c                	jne    801041fc <isdirempty+0x37>
801041f0:	66 83 7d e8 00       	cmpw   $0x0,-0x18(%ebp)
801041f5:	75 1e                	jne    80104215 <isdirempty+0x50>
801041f7:	8d 46 10             	lea    0x10(%esi),%eax
801041fa:	eb d8                	jmp    801041d4 <isdirempty+0xf>
801041fc:	83 ec 0c             	sub    $0xc,%esp
801041ff:	68 fc 6e 10 80       	push   $0x80106efc
80104204:	e8 53 c1 ff ff       	call   8010035c <panic>
80104209:	b8 01 00 00 00       	mov    $0x1,%eax
8010420e:	8d 65 f8             	lea    -0x8(%ebp),%esp
80104211:	5b                   	pop    %ebx
80104212:	5e                   	pop    %esi
80104213:	5d                   	pop    %ebp
80104214:	c3                   	ret    
80104215:	b8 00 00 00 00       	mov    $0x0,%eax
8010421a:	eb f2                	jmp    8010420e <isdirempty+0x49>

8010421c <create>:
8010421c:	55                   	push   %ebp
8010421d:	89 e5                	mov    %esp,%ebp
8010421f:	57                   	push   %edi
80104220:	56                   	push   %esi
80104221:	53                   	push   %ebx
80104222:	83 ec 44             	sub    $0x44,%esp
80104225:	89 55 c4             	mov    %edx,-0x3c(%ebp)
80104228:	89 4d c0             	mov    %ecx,-0x40(%ebp)
8010422b:	8b 7d 08             	mov    0x8(%ebp),%edi
8010422e:	8d 55 d6             	lea    -0x2a(%ebp),%edx
80104231:	52                   	push   %edx
80104232:	50                   	push   %eax
80104233:	e8 61 da ff ff       	call   80101c99 <nameiparent>
80104238:	89 c6                	mov    %eax,%esi
8010423a:	83 c4 10             	add    $0x10,%esp
8010423d:	85 c0                	test   %eax,%eax
8010423f:	0f 84 35 01 00 00    	je     8010437a <create+0x15e>
80104245:	83 ec 0c             	sub    $0xc,%esp
80104248:	50                   	push   %eax
80104249:	e8 a9 d3 ff ff       	call   801015f7 <ilock>
8010424e:	83 c4 0c             	add    $0xc,%esp
80104251:	8d 45 e4             	lea    -0x1c(%ebp),%eax
80104254:	50                   	push   %eax
80104255:	8d 45 d6             	lea    -0x2a(%ebp),%eax
80104258:	50                   	push   %eax
80104259:	56                   	push   %esi
8010425a:	e8 e8 d7 ff ff       	call   80101a47 <dirlookup>
8010425f:	89 c3                	mov    %eax,%ebx
80104261:	83 c4 10             	add    $0x10,%esp
80104264:	85 c0                	test   %eax,%eax
80104266:	74 3d                	je     801042a5 <create+0x89>
80104268:	83 ec 0c             	sub    $0xc,%esp
8010426b:	56                   	push   %esi
8010426c:	e8 39 d5 ff ff       	call   801017aa <iunlockput>
80104271:	89 1c 24             	mov    %ebx,(%esp)
80104274:	e8 7e d3 ff ff       	call   801015f7 <ilock>
80104279:	83 c4 10             	add    $0x10,%esp
8010427c:	66 83 7d c4 02       	cmpw   $0x2,-0x3c(%ebp)
80104281:	75 07                	jne    8010428a <create+0x6e>
80104283:	66 83 7b 50 02       	cmpw   $0x2,0x50(%ebx)
80104288:	74 11                	je     8010429b <create+0x7f>
8010428a:	83 ec 0c             	sub    $0xc,%esp
8010428d:	53                   	push   %ebx
8010428e:	e8 17 d5 ff ff       	call   801017aa <iunlockput>
80104293:	83 c4 10             	add    $0x10,%esp
80104296:	bb 00 00 00 00       	mov    $0x0,%ebx
8010429b:	89 d8                	mov    %ebx,%eax
8010429d:	8d 65 f4             	lea    -0xc(%ebp),%esp
801042a0:	5b                   	pop    %ebx
801042a1:	5e                   	pop    %esi
801042a2:	5f                   	pop    %edi
801042a3:	5d                   	pop    %ebp
801042a4:	c3                   	ret    
801042a5:	83 ec 08             	sub    $0x8,%esp
801042a8:	0f bf 45 c4          	movswl -0x3c(%ebp),%eax
801042ac:	50                   	push   %eax
801042ad:	ff 36                	push   (%esi)
801042af:	e8 34 d1 ff ff       	call   801013e8 <ialloc>
801042b4:	89 c3                	mov    %eax,%ebx
801042b6:	83 c4 10             	add    $0x10,%esp
801042b9:	85 c0                	test   %eax,%eax
801042bb:	74 52                	je     8010430f <create+0xf3>
801042bd:	83 ec 0c             	sub    $0xc,%esp
801042c0:	50                   	push   %eax
801042c1:	e8 31 d3 ff ff       	call   801015f7 <ilock>
801042c6:	0f b7 45 c0          	movzwl -0x40(%ebp),%eax
801042ca:	66 89 43 52          	mov    %ax,0x52(%ebx)
801042ce:	66 89 7b 54          	mov    %di,0x54(%ebx)
801042d2:	66 c7 43 56 01 00    	movw   $0x1,0x56(%ebx)
801042d8:	89 1c 24             	mov    %ebx,(%esp)
801042db:	e8 ae d1 ff ff       	call   8010148e <iupdate>
801042e0:	83 c4 10             	add    $0x10,%esp
801042e3:	66 83 7d c4 01       	cmpw   $0x1,-0x3c(%ebp)
801042e8:	74 32                	je     8010431c <create+0x100>
801042ea:	83 ec 04             	sub    $0x4,%esp
801042ed:	ff 73 04             	push   0x4(%ebx)
801042f0:	8d 45 d6             	lea    -0x2a(%ebp),%eax
801042f3:	50                   	push   %eax
801042f4:	56                   	push   %esi
801042f5:	e8 ce d8 ff ff       	call   80101bc8 <dirlink>
801042fa:	83 c4 10             	add    $0x10,%esp
801042fd:	85 c0                	test   %eax,%eax
801042ff:	78 6c                	js     8010436d <create+0x151>
80104301:	83 ec 0c             	sub    $0xc,%esp
80104304:	56                   	push   %esi
80104305:	e8 a0 d4 ff ff       	call   801017aa <iunlockput>
8010430a:	83 c4 10             	add    $0x10,%esp
8010430d:	eb 8c                	jmp    8010429b <create+0x7f>
8010430f:	83 ec 0c             	sub    $0xc,%esp
80104312:	68 0e 6f 10 80       	push   $0x80106f0e
80104317:	e8 40 c0 ff ff       	call   8010035c <panic>
8010431c:	0f b7 46 56          	movzwl 0x56(%esi),%eax
80104320:	83 c0 01             	add    $0x1,%eax
80104323:	66 89 46 56          	mov    %ax,0x56(%esi)
80104327:	83 ec 0c             	sub    $0xc,%esp
8010432a:	56                   	push   %esi
8010432b:	e8 5e d1 ff ff       	call   8010148e <iupdate>
80104330:	83 c4 0c             	add    $0xc,%esp
80104333:	ff 73 04             	push   0x4(%ebx)
80104336:	68 1e 6f 10 80       	push   $0x80106f1e
8010433b:	53                   	push   %ebx
8010433c:	e8 87 d8 ff ff       	call   80101bc8 <dirlink>
80104341:	83 c4 10             	add    $0x10,%esp
80104344:	85 c0                	test   %eax,%eax
80104346:	78 18                	js     80104360 <create+0x144>
80104348:	83 ec 04             	sub    $0x4,%esp
8010434b:	ff 76 04             	push   0x4(%esi)
8010434e:	68 1d 6f 10 80       	push   $0x80106f1d
80104353:	53                   	push   %ebx
80104354:	e8 6f d8 ff ff       	call   80101bc8 <dirlink>
80104359:	83 c4 10             	add    $0x10,%esp
8010435c:	85 c0                	test   %eax,%eax
8010435e:	79 8a                	jns    801042ea <create+0xce>
80104360:	83 ec 0c             	sub    $0xc,%esp
80104363:	68 20 6f 10 80       	push   $0x80106f20
80104368:	e8 ef bf ff ff       	call   8010035c <panic>
8010436d:	83 ec 0c             	sub    $0xc,%esp
80104370:	68 2c 6f 10 80       	push   $0x80106f2c
80104375:	e8 e2 bf ff ff       	call   8010035c <panic>
8010437a:	89 c3                	mov    %eax,%ebx
8010437c:	e9 1a ff ff ff       	jmp    8010429b <create+0x7f>

80104381 <sys_dup>:
80104381:	f3 0f 1e fb          	endbr32 
80104385:	55                   	push   %ebp
80104386:	89 e5                	mov    %esp,%ebp
80104388:	53                   	push   %ebx
80104389:	83 ec 14             	sub    $0x14,%esp
8010438c:	8d 4d f4             	lea    -0xc(%ebp),%ecx
8010438f:	ba 00 00 00 00       	mov    $0x0,%edx
80104394:	b8 00 00 00 00       	mov    $0x0,%eax
80104399:	e8 91 fd ff ff       	call   8010412f <argfd>
8010439e:	85 c0                	test   %eax,%eax
801043a0:	78 23                	js     801043c5 <sys_dup+0x44>
801043a2:	8b 45 f4             	mov    -0xc(%ebp),%eax
801043a5:	e8 e5 fd ff ff       	call   8010418f <fdalloc>
801043aa:	89 c3                	mov    %eax,%ebx
801043ac:	85 c0                	test   %eax,%eax
801043ae:	78 1c                	js     801043cc <sys_dup+0x4b>
801043b0:	83 ec 0c             	sub    $0xc,%esp
801043b3:	ff 75 f4             	push   -0xc(%ebp)
801043b6:	e8 06 c9 ff ff       	call   80100cc1 <filedup>
801043bb:	83 c4 10             	add    $0x10,%esp
801043be:	89 d8                	mov    %ebx,%eax
801043c0:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801043c3:	c9                   	leave  
801043c4:	c3                   	ret    
801043c5:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
801043ca:	eb f2                	jmp    801043be <sys_dup+0x3d>
801043cc:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
801043d1:	eb eb                	jmp    801043be <sys_dup+0x3d>

801043d3 <sys_read>:
801043d3:	f3 0f 1e fb          	endbr32 
801043d7:	55                   	push   %ebp
801043d8:	89 e5                	mov    %esp,%ebp
801043da:	83 ec 18             	sub    $0x18,%esp
801043dd:	8d 4d f4             	lea    -0xc(%ebp),%ecx
801043e0:	ba 00 00 00 00       	mov    $0x0,%edx
801043e5:	b8 00 00 00 00       	mov    $0x0,%eax
801043ea:	e8 40 fd ff ff       	call   8010412f <argfd>
801043ef:	85 c0                	test   %eax,%eax
801043f1:	78 43                	js     80104436 <sys_read+0x63>
801043f3:	83 ec 08             	sub    $0x8,%esp
801043f6:	8d 45 f0             	lea    -0x10(%ebp),%eax
801043f9:	50                   	push   %eax
801043fa:	6a 02                	push   $0x2
801043fc:	e8 14 fc ff ff       	call   80104015 <argint>
80104401:	83 c4 10             	add    $0x10,%esp
80104404:	85 c0                	test   %eax,%eax
80104406:	78 2e                	js     80104436 <sys_read+0x63>
80104408:	83 ec 04             	sub    $0x4,%esp
8010440b:	ff 75 f0             	push   -0x10(%ebp)
8010440e:	8d 45 ec             	lea    -0x14(%ebp),%eax
80104411:	50                   	push   %eax
80104412:	6a 01                	push   $0x1
80104414:	e8 24 fc ff ff       	call   8010403d <argptr>
80104419:	83 c4 10             	add    $0x10,%esp
8010441c:	85 c0                	test   %eax,%eax
8010441e:	78 16                	js     80104436 <sys_read+0x63>
80104420:	83 ec 04             	sub    $0x4,%esp
80104423:	ff 75 f0             	push   -0x10(%ebp)
80104426:	ff 75 ec             	push   -0x14(%ebp)
80104429:	ff 75 f4             	push   -0xc(%ebp)
8010442c:	e8 ee c9 ff ff       	call   80100e1f <fileread>
80104431:	83 c4 10             	add    $0x10,%esp
80104434:	c9                   	leave  
80104435:	c3                   	ret    
80104436:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010443b:	eb f7                	jmp    80104434 <sys_read+0x61>

8010443d <sys_write>:
8010443d:	f3 0f 1e fb          	endbr32 
80104441:	55                   	push   %ebp
80104442:	89 e5                	mov    %esp,%ebp
80104444:	83 ec 18             	sub    $0x18,%esp
80104447:	8d 4d f4             	lea    -0xc(%ebp),%ecx
8010444a:	ba 00 00 00 00       	mov    $0x0,%edx
8010444f:	b8 00 00 00 00       	mov    $0x0,%eax
80104454:	e8 d6 fc ff ff       	call   8010412f <argfd>
80104459:	85 c0                	test   %eax,%eax
8010445b:	78 43                	js     801044a0 <sys_write+0x63>
8010445d:	83 ec 08             	sub    $0x8,%esp
80104460:	8d 45 f0             	lea    -0x10(%ebp),%eax
80104463:	50                   	push   %eax
80104464:	6a 02                	push   $0x2
80104466:	e8 aa fb ff ff       	call   80104015 <argint>
8010446b:	83 c4 10             	add    $0x10,%esp
8010446e:	85 c0                	test   %eax,%eax
80104470:	78 2e                	js     801044a0 <sys_write+0x63>
80104472:	83 ec 04             	sub    $0x4,%esp
80104475:	ff 75 f0             	push   -0x10(%ebp)
80104478:	8d 45 ec             	lea    -0x14(%ebp),%eax
8010447b:	50                   	push   %eax
8010447c:	6a 01                	push   $0x1
8010447e:	e8 ba fb ff ff       	call   8010403d <argptr>
80104483:	83 c4 10             	add    $0x10,%esp
80104486:	85 c0                	test   %eax,%eax
80104488:	78 16                	js     801044a0 <sys_write+0x63>
8010448a:	83 ec 04             	sub    $0x4,%esp
8010448d:	ff 75 f0             	push   -0x10(%ebp)
80104490:	ff 75 ec             	push   -0x14(%ebp)
80104493:	ff 75 f4             	push   -0xc(%ebp)
80104496:	e8 0d ca ff ff       	call   80100ea8 <filewrite>
8010449b:	83 c4 10             	add    $0x10,%esp
8010449e:	c9                   	leave  
8010449f:	c3                   	ret    
801044a0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801044a5:	eb f7                	jmp    8010449e <sys_write+0x61>

801044a7 <sys_close>:
801044a7:	f3 0f 1e fb          	endbr32 
801044ab:	55                   	push   %ebp
801044ac:	89 e5                	mov    %esp,%ebp
801044ae:	83 ec 18             	sub    $0x18,%esp
801044b1:	8d 4d f0             	lea    -0x10(%ebp),%ecx
801044b4:	8d 55 f4             	lea    -0xc(%ebp),%edx
801044b7:	b8 00 00 00 00       	mov    $0x0,%eax
801044bc:	e8 6e fc ff ff       	call   8010412f <argfd>
801044c1:	85 c0                	test   %eax,%eax
801044c3:	78 25                	js     801044ea <sys_close+0x43>
801044c5:	e8 33 ee ff ff       	call   801032fd <myproc>
801044ca:	8b 55 f4             	mov    -0xc(%ebp),%edx
801044cd:	c7 44 90 28 00 00 00 	movl   $0x0,0x28(%eax,%edx,4)
801044d4:	00 
801044d5:	83 ec 0c             	sub    $0xc,%esp
801044d8:	ff 75 f0             	push   -0x10(%ebp)
801044db:	e8 2a c8 ff ff       	call   80100d0a <fileclose>
801044e0:	83 c4 10             	add    $0x10,%esp
801044e3:	b8 00 00 00 00       	mov    $0x0,%eax
801044e8:	c9                   	leave  
801044e9:	c3                   	ret    
801044ea:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801044ef:	eb f7                	jmp    801044e8 <sys_close+0x41>

801044f1 <sys_fstat>:
801044f1:	f3 0f 1e fb          	endbr32 
801044f5:	55                   	push   %ebp
801044f6:	89 e5                	mov    %esp,%ebp
801044f8:	83 ec 18             	sub    $0x18,%esp
801044fb:	8d 4d f4             	lea    -0xc(%ebp),%ecx
801044fe:	ba 00 00 00 00       	mov    $0x0,%edx
80104503:	b8 00 00 00 00       	mov    $0x0,%eax
80104508:	e8 22 fc ff ff       	call   8010412f <argfd>
8010450d:	85 c0                	test   %eax,%eax
8010450f:	78 2a                	js     8010453b <sys_fstat+0x4a>
80104511:	83 ec 04             	sub    $0x4,%esp
80104514:	6a 14                	push   $0x14
80104516:	8d 45 f0             	lea    -0x10(%ebp),%eax
80104519:	50                   	push   %eax
8010451a:	6a 01                	push   $0x1
8010451c:	e8 1c fb ff ff       	call   8010403d <argptr>
80104521:	83 c4 10             	add    $0x10,%esp
80104524:	85 c0                	test   %eax,%eax
80104526:	78 13                	js     8010453b <sys_fstat+0x4a>
80104528:	83 ec 08             	sub    $0x8,%esp
8010452b:	ff 75 f0             	push   -0x10(%ebp)
8010452e:	ff 75 f4             	push   -0xc(%ebp)
80104531:	e8 9e c8 ff ff       	call   80100dd4 <filestat>
80104536:	83 c4 10             	add    $0x10,%esp
80104539:	c9                   	leave  
8010453a:	c3                   	ret    
8010453b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104540:	eb f7                	jmp    80104539 <sys_fstat+0x48>

80104542 <sys_link>:
80104542:	f3 0f 1e fb          	endbr32 
80104546:	55                   	push   %ebp
80104547:	89 e5                	mov    %esp,%ebp
80104549:	56                   	push   %esi
8010454a:	53                   	push   %ebx
8010454b:	83 ec 28             	sub    $0x28,%esp
8010454e:	8d 45 e0             	lea    -0x20(%ebp),%eax
80104551:	50                   	push   %eax
80104552:	6a 00                	push   $0x0
80104554:	e8 4c fb ff ff       	call   801040a5 <argstr>
80104559:	83 c4 10             	add    $0x10,%esp
8010455c:	85 c0                	test   %eax,%eax
8010455e:	0f 88 d3 00 00 00    	js     80104637 <sys_link+0xf5>
80104564:	83 ec 08             	sub    $0x8,%esp
80104567:	8d 45 e4             	lea    -0x1c(%ebp),%eax
8010456a:	50                   	push   %eax
8010456b:	6a 01                	push   $0x1
8010456d:	e8 33 fb ff ff       	call   801040a5 <argstr>
80104572:	83 c4 10             	add    $0x10,%esp
80104575:	85 c0                	test   %eax,%eax
80104577:	0f 88 ba 00 00 00    	js     80104637 <sys_link+0xf5>
8010457d:	e8 03 e3 ff ff       	call   80102885 <begin_op>
80104582:	83 ec 0c             	sub    $0xc,%esp
80104585:	ff 75 e0             	push   -0x20(%ebp)
80104588:	e8 f0 d6 ff ff       	call   80101c7d <namei>
8010458d:	89 c3                	mov    %eax,%ebx
8010458f:	83 c4 10             	add    $0x10,%esp
80104592:	85 c0                	test   %eax,%eax
80104594:	0f 84 a4 00 00 00    	je     8010463e <sys_link+0xfc>
8010459a:	83 ec 0c             	sub    $0xc,%esp
8010459d:	50                   	push   %eax
8010459e:	e8 54 d0 ff ff       	call   801015f7 <ilock>
801045a3:	83 c4 10             	add    $0x10,%esp
801045a6:	66 83 7b 50 01       	cmpw   $0x1,0x50(%ebx)
801045ab:	0f 84 99 00 00 00    	je     8010464a <sys_link+0x108>
801045b1:	0f b7 43 56          	movzwl 0x56(%ebx),%eax
801045b5:	83 c0 01             	add    $0x1,%eax
801045b8:	66 89 43 56          	mov    %ax,0x56(%ebx)
801045bc:	83 ec 0c             	sub    $0xc,%esp
801045bf:	53                   	push   %ebx
801045c0:	e8 c9 ce ff ff       	call   8010148e <iupdate>
801045c5:	89 1c 24             	mov    %ebx,(%esp)
801045c8:	e8 f0 d0 ff ff       	call   801016bd <iunlock>
801045cd:	83 c4 08             	add    $0x8,%esp
801045d0:	8d 45 ea             	lea    -0x16(%ebp),%eax
801045d3:	50                   	push   %eax
801045d4:	ff 75 e4             	push   -0x1c(%ebp)
801045d7:	e8 bd d6 ff ff       	call   80101c99 <nameiparent>
801045dc:	89 c6                	mov    %eax,%esi
801045de:	83 c4 10             	add    $0x10,%esp
801045e1:	85 c0                	test   %eax,%eax
801045e3:	0f 84 85 00 00 00    	je     8010466e <sys_link+0x12c>
801045e9:	83 ec 0c             	sub    $0xc,%esp
801045ec:	50                   	push   %eax
801045ed:	e8 05 d0 ff ff       	call   801015f7 <ilock>
801045f2:	83 c4 10             	add    $0x10,%esp
801045f5:	8b 03                	mov    (%ebx),%eax
801045f7:	39 06                	cmp    %eax,(%esi)
801045f9:	75 67                	jne    80104662 <sys_link+0x120>
801045fb:	83 ec 04             	sub    $0x4,%esp
801045fe:	ff 73 04             	push   0x4(%ebx)
80104601:	8d 45 ea             	lea    -0x16(%ebp),%eax
80104604:	50                   	push   %eax
80104605:	56                   	push   %esi
80104606:	e8 bd d5 ff ff       	call   80101bc8 <dirlink>
8010460b:	83 c4 10             	add    $0x10,%esp
8010460e:	85 c0                	test   %eax,%eax
80104610:	78 50                	js     80104662 <sys_link+0x120>
80104612:	83 ec 0c             	sub    $0xc,%esp
80104615:	56                   	push   %esi
80104616:	e8 8f d1 ff ff       	call   801017aa <iunlockput>
8010461b:	89 1c 24             	mov    %ebx,(%esp)
8010461e:	e8 e3 d0 ff ff       	call   80101706 <iput>
80104623:	e8 db e2 ff ff       	call   80102903 <end_op>
80104628:	83 c4 10             	add    $0x10,%esp
8010462b:	b8 00 00 00 00       	mov    $0x0,%eax
80104630:	8d 65 f8             	lea    -0x8(%ebp),%esp
80104633:	5b                   	pop    %ebx
80104634:	5e                   	pop    %esi
80104635:	5d                   	pop    %ebp
80104636:	c3                   	ret    
80104637:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010463c:	eb f2                	jmp    80104630 <sys_link+0xee>
8010463e:	e8 c0 e2 ff ff       	call   80102903 <end_op>
80104643:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104648:	eb e6                	jmp    80104630 <sys_link+0xee>
8010464a:	83 ec 0c             	sub    $0xc,%esp
8010464d:	53                   	push   %ebx
8010464e:	e8 57 d1 ff ff       	call   801017aa <iunlockput>
80104653:	e8 ab e2 ff ff       	call   80102903 <end_op>
80104658:	83 c4 10             	add    $0x10,%esp
8010465b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104660:	eb ce                	jmp    80104630 <sys_link+0xee>
80104662:	83 ec 0c             	sub    $0xc,%esp
80104665:	56                   	push   %esi
80104666:	e8 3f d1 ff ff       	call   801017aa <iunlockput>
8010466b:	83 c4 10             	add    $0x10,%esp
8010466e:	83 ec 0c             	sub    $0xc,%esp
80104671:	53                   	push   %ebx
80104672:	e8 80 cf ff ff       	call   801015f7 <ilock>
80104677:	0f b7 43 56          	movzwl 0x56(%ebx),%eax
8010467b:	83 e8 01             	sub    $0x1,%eax
8010467e:	66 89 43 56          	mov    %ax,0x56(%ebx)
80104682:	89 1c 24             	mov    %ebx,(%esp)
80104685:	e8 04 ce ff ff       	call   8010148e <iupdate>
8010468a:	89 1c 24             	mov    %ebx,(%esp)
8010468d:	e8 18 d1 ff ff       	call   801017aa <iunlockput>
80104692:	e8 6c e2 ff ff       	call   80102903 <end_op>
80104697:	83 c4 10             	add    $0x10,%esp
8010469a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010469f:	eb 8f                	jmp    80104630 <sys_link+0xee>

801046a1 <sys_unlink>:
801046a1:	f3 0f 1e fb          	endbr32 
801046a5:	55                   	push   %ebp
801046a6:	89 e5                	mov    %esp,%ebp
801046a8:	57                   	push   %edi
801046a9:	56                   	push   %esi
801046aa:	53                   	push   %ebx
801046ab:	83 ec 44             	sub    $0x44,%esp
801046ae:	8d 45 c4             	lea    -0x3c(%ebp),%eax
801046b1:	50                   	push   %eax
801046b2:	6a 00                	push   $0x0
801046b4:	e8 ec f9 ff ff       	call   801040a5 <argstr>
801046b9:	83 c4 10             	add    $0x10,%esp
801046bc:	85 c0                	test   %eax,%eax
801046be:	0f 88 83 01 00 00    	js     80104847 <sys_unlink+0x1a6>
801046c4:	e8 bc e1 ff ff       	call   80102885 <begin_op>
801046c9:	83 ec 08             	sub    $0x8,%esp
801046cc:	8d 45 ca             	lea    -0x36(%ebp),%eax
801046cf:	50                   	push   %eax
801046d0:	ff 75 c4             	push   -0x3c(%ebp)
801046d3:	e8 c1 d5 ff ff       	call   80101c99 <nameiparent>
801046d8:	89 c6                	mov    %eax,%esi
801046da:	83 c4 10             	add    $0x10,%esp
801046dd:	85 c0                	test   %eax,%eax
801046df:	0f 84 ed 00 00 00    	je     801047d2 <sys_unlink+0x131>
801046e5:	83 ec 0c             	sub    $0xc,%esp
801046e8:	50                   	push   %eax
801046e9:	e8 09 cf ff ff       	call   801015f7 <ilock>
801046ee:	83 c4 08             	add    $0x8,%esp
801046f1:	68 1e 6f 10 80       	push   $0x80106f1e
801046f6:	8d 45 ca             	lea    -0x36(%ebp),%eax
801046f9:	50                   	push   %eax
801046fa:	e8 2f d3 ff ff       	call   80101a2e <namecmp>
801046ff:	83 c4 10             	add    $0x10,%esp
80104702:	85 c0                	test   %eax,%eax
80104704:	0f 84 fc 00 00 00    	je     80104806 <sys_unlink+0x165>
8010470a:	83 ec 08             	sub    $0x8,%esp
8010470d:	68 1d 6f 10 80       	push   $0x80106f1d
80104712:	8d 45 ca             	lea    -0x36(%ebp),%eax
80104715:	50                   	push   %eax
80104716:	e8 13 d3 ff ff       	call   80101a2e <namecmp>
8010471b:	83 c4 10             	add    $0x10,%esp
8010471e:	85 c0                	test   %eax,%eax
80104720:	0f 84 e0 00 00 00    	je     80104806 <sys_unlink+0x165>
80104726:	83 ec 04             	sub    $0x4,%esp
80104729:	8d 45 c0             	lea    -0x40(%ebp),%eax
8010472c:	50                   	push   %eax
8010472d:	8d 45 ca             	lea    -0x36(%ebp),%eax
80104730:	50                   	push   %eax
80104731:	56                   	push   %esi
80104732:	e8 10 d3 ff ff       	call   80101a47 <dirlookup>
80104737:	89 c3                	mov    %eax,%ebx
80104739:	83 c4 10             	add    $0x10,%esp
8010473c:	85 c0                	test   %eax,%eax
8010473e:	0f 84 c2 00 00 00    	je     80104806 <sys_unlink+0x165>
80104744:	83 ec 0c             	sub    $0xc,%esp
80104747:	50                   	push   %eax
80104748:	e8 aa ce ff ff       	call   801015f7 <ilock>
8010474d:	83 c4 10             	add    $0x10,%esp
80104750:	66 83 7b 56 00       	cmpw   $0x0,0x56(%ebx)
80104755:	0f 8e 83 00 00 00    	jle    801047de <sys_unlink+0x13d>
8010475b:	66 83 7b 50 01       	cmpw   $0x1,0x50(%ebx)
80104760:	0f 84 85 00 00 00    	je     801047eb <sys_unlink+0x14a>
80104766:	83 ec 04             	sub    $0x4,%esp
80104769:	6a 10                	push   $0x10
8010476b:	6a 00                	push   $0x0
8010476d:	8d 7d d8             	lea    -0x28(%ebp),%edi
80104770:	57                   	push   %edi
80104771:	e8 2f f6 ff ff       	call   80103da5 <memset>
80104776:	6a 10                	push   $0x10
80104778:	ff 75 c0             	push   -0x40(%ebp)
8010477b:	57                   	push   %edi
8010477c:	56                   	push   %esi
8010477d:	e8 7c d1 ff ff       	call   801018fe <writei>
80104782:	83 c4 20             	add    $0x20,%esp
80104785:	83 f8 10             	cmp    $0x10,%eax
80104788:	0f 85 90 00 00 00    	jne    8010481e <sys_unlink+0x17d>
8010478e:	66 83 7b 50 01       	cmpw   $0x1,0x50(%ebx)
80104793:	0f 84 92 00 00 00    	je     8010482b <sys_unlink+0x18a>
80104799:	83 ec 0c             	sub    $0xc,%esp
8010479c:	56                   	push   %esi
8010479d:	e8 08 d0 ff ff       	call   801017aa <iunlockput>
801047a2:	0f b7 43 56          	movzwl 0x56(%ebx),%eax
801047a6:	83 e8 01             	sub    $0x1,%eax
801047a9:	66 89 43 56          	mov    %ax,0x56(%ebx)
801047ad:	89 1c 24             	mov    %ebx,(%esp)
801047b0:	e8 d9 cc ff ff       	call   8010148e <iupdate>
801047b5:	89 1c 24             	mov    %ebx,(%esp)
801047b8:	e8 ed cf ff ff       	call   801017aa <iunlockput>
801047bd:	e8 41 e1 ff ff       	call   80102903 <end_op>
801047c2:	83 c4 10             	add    $0x10,%esp
801047c5:	b8 00 00 00 00       	mov    $0x0,%eax
801047ca:	8d 65 f4             	lea    -0xc(%ebp),%esp
801047cd:	5b                   	pop    %ebx
801047ce:	5e                   	pop    %esi
801047cf:	5f                   	pop    %edi
801047d0:	5d                   	pop    %ebp
801047d1:	c3                   	ret    
801047d2:	e8 2c e1 ff ff       	call   80102903 <end_op>
801047d7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801047dc:	eb ec                	jmp    801047ca <sys_unlink+0x129>
801047de:	83 ec 0c             	sub    $0xc,%esp
801047e1:	68 3c 6f 10 80       	push   $0x80106f3c
801047e6:	e8 71 bb ff ff       	call   8010035c <panic>
801047eb:	89 d8                	mov    %ebx,%eax
801047ed:	e8 d3 f9 ff ff       	call   801041c5 <isdirempty>
801047f2:	85 c0                	test   %eax,%eax
801047f4:	0f 85 6c ff ff ff    	jne    80104766 <sys_unlink+0xc5>
801047fa:	83 ec 0c             	sub    $0xc,%esp
801047fd:	53                   	push   %ebx
801047fe:	e8 a7 cf ff ff       	call   801017aa <iunlockput>
80104803:	83 c4 10             	add    $0x10,%esp
80104806:	83 ec 0c             	sub    $0xc,%esp
80104809:	56                   	push   %esi
8010480a:	e8 9b cf ff ff       	call   801017aa <iunlockput>
8010480f:	e8 ef e0 ff ff       	call   80102903 <end_op>
80104814:	83 c4 10             	add    $0x10,%esp
80104817:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010481c:	eb ac                	jmp    801047ca <sys_unlink+0x129>
8010481e:	83 ec 0c             	sub    $0xc,%esp
80104821:	68 4e 6f 10 80       	push   $0x80106f4e
80104826:	e8 31 bb ff ff       	call   8010035c <panic>
8010482b:	0f b7 46 56          	movzwl 0x56(%esi),%eax
8010482f:	83 e8 01             	sub    $0x1,%eax
80104832:	66 89 46 56          	mov    %ax,0x56(%esi)
80104836:	83 ec 0c             	sub    $0xc,%esp
80104839:	56                   	push   %esi
8010483a:	e8 4f cc ff ff       	call   8010148e <iupdate>
8010483f:	83 c4 10             	add    $0x10,%esp
80104842:	e9 52 ff ff ff       	jmp    80104799 <sys_unlink+0xf8>
80104847:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010484c:	e9 79 ff ff ff       	jmp    801047ca <sys_unlink+0x129>

80104851 <sys_open>:
80104851:	f3 0f 1e fb          	endbr32 
80104855:	55                   	push   %ebp
80104856:	89 e5                	mov    %esp,%ebp
80104858:	57                   	push   %edi
80104859:	56                   	push   %esi
8010485a:	53                   	push   %ebx
8010485b:	83 ec 24             	sub    $0x24,%esp
8010485e:	8d 45 e4             	lea    -0x1c(%ebp),%eax
80104861:	50                   	push   %eax
80104862:	6a 00                	push   $0x0
80104864:	e8 3c f8 ff ff       	call   801040a5 <argstr>
80104869:	83 c4 10             	add    $0x10,%esp
8010486c:	85 c0                	test   %eax,%eax
8010486e:	0f 88 a0 00 00 00    	js     80104914 <sys_open+0xc3>
80104874:	83 ec 08             	sub    $0x8,%esp
80104877:	8d 45 e0             	lea    -0x20(%ebp),%eax
8010487a:	50                   	push   %eax
8010487b:	6a 01                	push   $0x1
8010487d:	e8 93 f7 ff ff       	call   80104015 <argint>
80104882:	83 c4 10             	add    $0x10,%esp
80104885:	85 c0                	test   %eax,%eax
80104887:	0f 88 87 00 00 00    	js     80104914 <sys_open+0xc3>
8010488d:	e8 f3 df ff ff       	call   80102885 <begin_op>
80104892:	f6 45 e1 02          	testb  $0x2,-0x1f(%ebp)
80104896:	0f 84 8b 00 00 00    	je     80104927 <sys_open+0xd6>
8010489c:	83 ec 0c             	sub    $0xc,%esp
8010489f:	6a 00                	push   $0x0
801048a1:	b9 00 00 00 00       	mov    $0x0,%ecx
801048a6:	ba 02 00 00 00       	mov    $0x2,%edx
801048ab:	8b 45 e4             	mov    -0x1c(%ebp),%eax
801048ae:	e8 69 f9 ff ff       	call   8010421c <create>
801048b3:	89 c6                	mov    %eax,%esi
801048b5:	83 c4 10             	add    $0x10,%esp
801048b8:	85 c0                	test   %eax,%eax
801048ba:	74 5f                	je     8010491b <sys_open+0xca>
801048bc:	e8 9b c3 ff ff       	call   80100c5c <filealloc>
801048c1:	89 c3                	mov    %eax,%ebx
801048c3:	85 c0                	test   %eax,%eax
801048c5:	0f 84 b5 00 00 00    	je     80104980 <sys_open+0x12f>
801048cb:	e8 bf f8 ff ff       	call   8010418f <fdalloc>
801048d0:	89 c7                	mov    %eax,%edi
801048d2:	85 c0                	test   %eax,%eax
801048d4:	0f 88 a6 00 00 00    	js     80104980 <sys_open+0x12f>
801048da:	83 ec 0c             	sub    $0xc,%esp
801048dd:	56                   	push   %esi
801048de:	e8 da cd ff ff       	call   801016bd <iunlock>
801048e3:	e8 1b e0 ff ff       	call   80102903 <end_op>
801048e8:	c7 03 02 00 00 00    	movl   $0x2,(%ebx)
801048ee:	89 73 10             	mov    %esi,0x10(%ebx)
801048f1:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)
801048f8:	8b 45 e0             	mov    -0x20(%ebp),%eax
801048fb:	83 c4 10             	add    $0x10,%esp
801048fe:	a8 01                	test   $0x1,%al
80104900:	0f 94 43 08          	sete   0x8(%ebx)
80104904:	a8 03                	test   $0x3,%al
80104906:	0f 95 43 09          	setne  0x9(%ebx)
8010490a:	89 f8                	mov    %edi,%eax
8010490c:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010490f:	5b                   	pop    %ebx
80104910:	5e                   	pop    %esi
80104911:	5f                   	pop    %edi
80104912:	5d                   	pop    %ebp
80104913:	c3                   	ret    
80104914:	bf ff ff ff ff       	mov    $0xffffffff,%edi
80104919:	eb ef                	jmp    8010490a <sys_open+0xb9>
8010491b:	e8 e3 df ff ff       	call   80102903 <end_op>
80104920:	bf ff ff ff ff       	mov    $0xffffffff,%edi
80104925:	eb e3                	jmp    8010490a <sys_open+0xb9>
80104927:	83 ec 0c             	sub    $0xc,%esp
8010492a:	ff 75 e4             	push   -0x1c(%ebp)
8010492d:	e8 4b d3 ff ff       	call   80101c7d <namei>
80104932:	89 c6                	mov    %eax,%esi
80104934:	83 c4 10             	add    $0x10,%esp
80104937:	85 c0                	test   %eax,%eax
80104939:	74 39                	je     80104974 <sys_open+0x123>
8010493b:	83 ec 0c             	sub    $0xc,%esp
8010493e:	50                   	push   %eax
8010493f:	e8 b3 cc ff ff       	call   801015f7 <ilock>
80104944:	83 c4 10             	add    $0x10,%esp
80104947:	66 83 7e 50 01       	cmpw   $0x1,0x50(%esi)
8010494c:	0f 85 6a ff ff ff    	jne    801048bc <sys_open+0x6b>
80104952:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
80104956:	0f 84 60 ff ff ff    	je     801048bc <sys_open+0x6b>
8010495c:	83 ec 0c             	sub    $0xc,%esp
8010495f:	56                   	push   %esi
80104960:	e8 45 ce ff ff       	call   801017aa <iunlockput>
80104965:	e8 99 df ff ff       	call   80102903 <end_op>
8010496a:	83 c4 10             	add    $0x10,%esp
8010496d:	bf ff ff ff ff       	mov    $0xffffffff,%edi
80104972:	eb 96                	jmp    8010490a <sys_open+0xb9>
80104974:	e8 8a df ff ff       	call   80102903 <end_op>
80104979:	bf ff ff ff ff       	mov    $0xffffffff,%edi
8010497e:	eb 8a                	jmp    8010490a <sys_open+0xb9>
80104980:	85 db                	test   %ebx,%ebx
80104982:	74 0c                	je     80104990 <sys_open+0x13f>
80104984:	83 ec 0c             	sub    $0xc,%esp
80104987:	53                   	push   %ebx
80104988:	e8 7d c3 ff ff       	call   80100d0a <fileclose>
8010498d:	83 c4 10             	add    $0x10,%esp
80104990:	83 ec 0c             	sub    $0xc,%esp
80104993:	56                   	push   %esi
80104994:	e8 11 ce ff ff       	call   801017aa <iunlockput>
80104999:	e8 65 df ff ff       	call   80102903 <end_op>
8010499e:	83 c4 10             	add    $0x10,%esp
801049a1:	bf ff ff ff ff       	mov    $0xffffffff,%edi
801049a6:	e9 5f ff ff ff       	jmp    8010490a <sys_open+0xb9>

801049ab <sys_mkdir>:
801049ab:	f3 0f 1e fb          	endbr32 
801049af:	55                   	push   %ebp
801049b0:	89 e5                	mov    %esp,%ebp
801049b2:	83 ec 18             	sub    $0x18,%esp
801049b5:	e8 cb de ff ff       	call   80102885 <begin_op>
801049ba:	83 ec 08             	sub    $0x8,%esp
801049bd:	8d 45 f4             	lea    -0xc(%ebp),%eax
801049c0:	50                   	push   %eax
801049c1:	6a 00                	push   $0x0
801049c3:	e8 dd f6 ff ff       	call   801040a5 <argstr>
801049c8:	83 c4 10             	add    $0x10,%esp
801049cb:	85 c0                	test   %eax,%eax
801049cd:	78 36                	js     80104a05 <sys_mkdir+0x5a>
801049cf:	83 ec 0c             	sub    $0xc,%esp
801049d2:	6a 00                	push   $0x0
801049d4:	b9 00 00 00 00       	mov    $0x0,%ecx
801049d9:	ba 01 00 00 00       	mov    $0x1,%edx
801049de:	8b 45 f4             	mov    -0xc(%ebp),%eax
801049e1:	e8 36 f8 ff ff       	call   8010421c <create>
801049e6:	83 c4 10             	add    $0x10,%esp
801049e9:	85 c0                	test   %eax,%eax
801049eb:	74 18                	je     80104a05 <sys_mkdir+0x5a>
801049ed:	83 ec 0c             	sub    $0xc,%esp
801049f0:	50                   	push   %eax
801049f1:	e8 b4 cd ff ff       	call   801017aa <iunlockput>
801049f6:	e8 08 df ff ff       	call   80102903 <end_op>
801049fb:	83 c4 10             	add    $0x10,%esp
801049fe:	b8 00 00 00 00       	mov    $0x0,%eax
80104a03:	c9                   	leave  
80104a04:	c3                   	ret    
80104a05:	e8 f9 de ff ff       	call   80102903 <end_op>
80104a0a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104a0f:	eb f2                	jmp    80104a03 <sys_mkdir+0x58>

80104a11 <sys_mknod>:
80104a11:	f3 0f 1e fb          	endbr32 
80104a15:	55                   	push   %ebp
80104a16:	89 e5                	mov    %esp,%ebp
80104a18:	83 ec 18             	sub    $0x18,%esp
80104a1b:	e8 65 de ff ff       	call   80102885 <begin_op>
80104a20:	83 ec 08             	sub    $0x8,%esp
80104a23:	8d 45 f4             	lea    -0xc(%ebp),%eax
80104a26:	50                   	push   %eax
80104a27:	6a 00                	push   $0x0
80104a29:	e8 77 f6 ff ff       	call   801040a5 <argstr>
80104a2e:	83 c4 10             	add    $0x10,%esp
80104a31:	85 c0                	test   %eax,%eax
80104a33:	78 62                	js     80104a97 <sys_mknod+0x86>
80104a35:	83 ec 08             	sub    $0x8,%esp
80104a38:	8d 45 f0             	lea    -0x10(%ebp),%eax
80104a3b:	50                   	push   %eax
80104a3c:	6a 01                	push   $0x1
80104a3e:	e8 d2 f5 ff ff       	call   80104015 <argint>
80104a43:	83 c4 10             	add    $0x10,%esp
80104a46:	85 c0                	test   %eax,%eax
80104a48:	78 4d                	js     80104a97 <sys_mknod+0x86>
80104a4a:	83 ec 08             	sub    $0x8,%esp
80104a4d:	8d 45 ec             	lea    -0x14(%ebp),%eax
80104a50:	50                   	push   %eax
80104a51:	6a 02                	push   $0x2
80104a53:	e8 bd f5 ff ff       	call   80104015 <argint>
80104a58:	83 c4 10             	add    $0x10,%esp
80104a5b:	85 c0                	test   %eax,%eax
80104a5d:	78 38                	js     80104a97 <sys_mknod+0x86>
80104a5f:	0f bf 4d f0          	movswl -0x10(%ebp),%ecx
80104a63:	83 ec 0c             	sub    $0xc,%esp
80104a66:	0f bf 45 ec          	movswl -0x14(%ebp),%eax
80104a6a:	50                   	push   %eax
80104a6b:	ba 03 00 00 00       	mov    $0x3,%edx
80104a70:	8b 45 f4             	mov    -0xc(%ebp),%eax
80104a73:	e8 a4 f7 ff ff       	call   8010421c <create>
80104a78:	83 c4 10             	add    $0x10,%esp
80104a7b:	85 c0                	test   %eax,%eax
80104a7d:	74 18                	je     80104a97 <sys_mknod+0x86>
80104a7f:	83 ec 0c             	sub    $0xc,%esp
80104a82:	50                   	push   %eax
80104a83:	e8 22 cd ff ff       	call   801017aa <iunlockput>
80104a88:	e8 76 de ff ff       	call   80102903 <end_op>
80104a8d:	83 c4 10             	add    $0x10,%esp
80104a90:	b8 00 00 00 00       	mov    $0x0,%eax
80104a95:	c9                   	leave  
80104a96:	c3                   	ret    
80104a97:	e8 67 de ff ff       	call   80102903 <end_op>
80104a9c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104aa1:	eb f2                	jmp    80104a95 <sys_mknod+0x84>

80104aa3 <sys_chdir>:
80104aa3:	f3 0f 1e fb          	endbr32 
80104aa7:	55                   	push   %ebp
80104aa8:	89 e5                	mov    %esp,%ebp
80104aaa:	56                   	push   %esi
80104aab:	53                   	push   %ebx
80104aac:	83 ec 10             	sub    $0x10,%esp
80104aaf:	e8 49 e8 ff ff       	call   801032fd <myproc>
80104ab4:	89 c6                	mov    %eax,%esi
80104ab6:	e8 ca dd ff ff       	call   80102885 <begin_op>
80104abb:	83 ec 08             	sub    $0x8,%esp
80104abe:	8d 45 f4             	lea    -0xc(%ebp),%eax
80104ac1:	50                   	push   %eax
80104ac2:	6a 00                	push   $0x0
80104ac4:	e8 dc f5 ff ff       	call   801040a5 <argstr>
80104ac9:	83 c4 10             	add    $0x10,%esp
80104acc:	85 c0                	test   %eax,%eax
80104ace:	78 52                	js     80104b22 <sys_chdir+0x7f>
80104ad0:	83 ec 0c             	sub    $0xc,%esp
80104ad3:	ff 75 f4             	push   -0xc(%ebp)
80104ad6:	e8 a2 d1 ff ff       	call   80101c7d <namei>
80104adb:	89 c3                	mov    %eax,%ebx
80104add:	83 c4 10             	add    $0x10,%esp
80104ae0:	85 c0                	test   %eax,%eax
80104ae2:	74 3e                	je     80104b22 <sys_chdir+0x7f>
80104ae4:	83 ec 0c             	sub    $0xc,%esp
80104ae7:	50                   	push   %eax
80104ae8:	e8 0a cb ff ff       	call   801015f7 <ilock>
80104aed:	83 c4 10             	add    $0x10,%esp
80104af0:	66 83 7b 50 01       	cmpw   $0x1,0x50(%ebx)
80104af5:	75 37                	jne    80104b2e <sys_chdir+0x8b>
80104af7:	83 ec 0c             	sub    $0xc,%esp
80104afa:	53                   	push   %ebx
80104afb:	e8 bd cb ff ff       	call   801016bd <iunlock>
80104b00:	83 c4 04             	add    $0x4,%esp
80104b03:	ff 76 68             	push   0x68(%esi)
80104b06:	e8 fb cb ff ff       	call   80101706 <iput>
80104b0b:	e8 f3 dd ff ff       	call   80102903 <end_op>
80104b10:	89 5e 68             	mov    %ebx,0x68(%esi)
80104b13:	83 c4 10             	add    $0x10,%esp
80104b16:	b8 00 00 00 00       	mov    $0x0,%eax
80104b1b:	8d 65 f8             	lea    -0x8(%ebp),%esp
80104b1e:	5b                   	pop    %ebx
80104b1f:	5e                   	pop    %esi
80104b20:	5d                   	pop    %ebp
80104b21:	c3                   	ret    
80104b22:	e8 dc dd ff ff       	call   80102903 <end_op>
80104b27:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104b2c:	eb ed                	jmp    80104b1b <sys_chdir+0x78>
80104b2e:	83 ec 0c             	sub    $0xc,%esp
80104b31:	53                   	push   %ebx
80104b32:	e8 73 cc ff ff       	call   801017aa <iunlockput>
80104b37:	e8 c7 dd ff ff       	call   80102903 <end_op>
80104b3c:	83 c4 10             	add    $0x10,%esp
80104b3f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104b44:	eb d5                	jmp    80104b1b <sys_chdir+0x78>

80104b46 <sys_exec>:
80104b46:	f3 0f 1e fb          	endbr32 
80104b4a:	55                   	push   %ebp
80104b4b:	89 e5                	mov    %esp,%ebp
80104b4d:	53                   	push   %ebx
80104b4e:	81 ec 9c 00 00 00    	sub    $0x9c,%esp
80104b54:	8d 45 f4             	lea    -0xc(%ebp),%eax
80104b57:	50                   	push   %eax
80104b58:	6a 00                	push   $0x0
80104b5a:	e8 46 f5 ff ff       	call   801040a5 <argstr>
80104b5f:	83 c4 10             	add    $0x10,%esp
80104b62:	85 c0                	test   %eax,%eax
80104b64:	78 38                	js     80104b9e <sys_exec+0x58>
80104b66:	83 ec 08             	sub    $0x8,%esp
80104b69:	8d 85 70 ff ff ff    	lea    -0x90(%ebp),%eax
80104b6f:	50                   	push   %eax
80104b70:	6a 01                	push   $0x1
80104b72:	e8 9e f4 ff ff       	call   80104015 <argint>
80104b77:	83 c4 10             	add    $0x10,%esp
80104b7a:	85 c0                	test   %eax,%eax
80104b7c:	78 20                	js     80104b9e <sys_exec+0x58>
80104b7e:	83 ec 04             	sub    $0x4,%esp
80104b81:	68 80 00 00 00       	push   $0x80
80104b86:	6a 00                	push   $0x0
80104b88:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
80104b8e:	50                   	push   %eax
80104b8f:	e8 11 f2 ff ff       	call   80103da5 <memset>
80104b94:	83 c4 10             	add    $0x10,%esp
80104b97:	bb 00 00 00 00       	mov    $0x0,%ebx
80104b9c:	eb 2c                	jmp    80104bca <sys_exec+0x84>
80104b9e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104ba3:	eb 78                	jmp    80104c1d <sys_exec+0xd7>
80104ba5:	c7 84 9d 74 ff ff ff 	movl   $0x0,-0x8c(%ebp,%ebx,4)
80104bac:	00 00 00 00 
80104bb0:	83 ec 08             	sub    $0x8,%esp
80104bb3:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
80104bb9:	50                   	push   %eax
80104bba:	ff 75 f4             	push   -0xc(%ebp)
80104bbd:	e8 36 bd ff ff       	call   801008f8 <exec>
80104bc2:	83 c4 10             	add    $0x10,%esp
80104bc5:	eb 56                	jmp    80104c1d <sys_exec+0xd7>
80104bc7:	83 c3 01             	add    $0x1,%ebx
80104bca:	83 fb 1f             	cmp    $0x1f,%ebx
80104bcd:	77 49                	ja     80104c18 <sys_exec+0xd2>
80104bcf:	83 ec 08             	sub    $0x8,%esp
80104bd2:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
80104bd8:	50                   	push   %eax
80104bd9:	8b 85 70 ff ff ff    	mov    -0x90(%ebp),%eax
80104bdf:	8d 04 98             	lea    (%eax,%ebx,4),%eax
80104be2:	50                   	push   %eax
80104be3:	e8 b3 f3 ff ff       	call   80103f9b <fetchint>
80104be8:	83 c4 10             	add    $0x10,%esp
80104beb:	85 c0                	test   %eax,%eax
80104bed:	78 33                	js     80104c22 <sys_exec+0xdc>
80104bef:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
80104bf5:	85 c0                	test   %eax,%eax
80104bf7:	74 ac                	je     80104ba5 <sys_exec+0x5f>
80104bf9:	83 ec 08             	sub    $0x8,%esp
80104bfc:	8d 94 9d 74 ff ff ff 	lea    -0x8c(%ebp,%ebx,4),%edx
80104c03:	52                   	push   %edx
80104c04:	50                   	push   %eax
80104c05:	e8 cc f3 ff ff       	call   80103fd6 <fetchstr>
80104c0a:	83 c4 10             	add    $0x10,%esp
80104c0d:	85 c0                	test   %eax,%eax
80104c0f:	79 b6                	jns    80104bc7 <sys_exec+0x81>
80104c11:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104c16:	eb 05                	jmp    80104c1d <sys_exec+0xd7>
80104c18:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104c1d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80104c20:	c9                   	leave  
80104c21:	c3                   	ret    
80104c22:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104c27:	eb f4                	jmp    80104c1d <sys_exec+0xd7>

80104c29 <sys_pipe>:
80104c29:	f3 0f 1e fb          	endbr32 
80104c2d:	55                   	push   %ebp
80104c2e:	89 e5                	mov    %esp,%ebp
80104c30:	53                   	push   %ebx
80104c31:	83 ec 18             	sub    $0x18,%esp
80104c34:	6a 08                	push   $0x8
80104c36:	8d 45 f4             	lea    -0xc(%ebp),%eax
80104c39:	50                   	push   %eax
80104c3a:	6a 00                	push   $0x0
80104c3c:	e8 fc f3 ff ff       	call   8010403d <argptr>
80104c41:	83 c4 10             	add    $0x10,%esp
80104c44:	85 c0                	test   %eax,%eax
80104c46:	78 79                	js     80104cc1 <sys_pipe+0x98>
80104c48:	83 ec 08             	sub    $0x8,%esp
80104c4b:	8d 45 ec             	lea    -0x14(%ebp),%eax
80104c4e:	50                   	push   %eax
80104c4f:	8d 45 f0             	lea    -0x10(%ebp),%eax
80104c52:	50                   	push   %eax
80104c53:	e8 d4 e1 ff ff       	call   80102e2c <pipealloc>
80104c58:	83 c4 10             	add    $0x10,%esp
80104c5b:	85 c0                	test   %eax,%eax
80104c5d:	78 69                	js     80104cc8 <sys_pipe+0x9f>
80104c5f:	8b 45 f0             	mov    -0x10(%ebp),%eax
80104c62:	e8 28 f5 ff ff       	call   8010418f <fdalloc>
80104c67:	89 c3                	mov    %eax,%ebx
80104c69:	85 c0                	test   %eax,%eax
80104c6b:	78 21                	js     80104c8e <sys_pipe+0x65>
80104c6d:	8b 45 ec             	mov    -0x14(%ebp),%eax
80104c70:	e8 1a f5 ff ff       	call   8010418f <fdalloc>
80104c75:	85 c0                	test   %eax,%eax
80104c77:	78 15                	js     80104c8e <sys_pipe+0x65>
80104c79:	8b 55 f4             	mov    -0xc(%ebp),%edx
80104c7c:	89 1a                	mov    %ebx,(%edx)
80104c7e:	8b 55 f4             	mov    -0xc(%ebp),%edx
80104c81:	89 42 04             	mov    %eax,0x4(%edx)
80104c84:	b8 00 00 00 00       	mov    $0x0,%eax
80104c89:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80104c8c:	c9                   	leave  
80104c8d:	c3                   	ret    
80104c8e:	85 db                	test   %ebx,%ebx
80104c90:	79 20                	jns    80104cb2 <sys_pipe+0x89>
80104c92:	83 ec 0c             	sub    $0xc,%esp
80104c95:	ff 75 f0             	push   -0x10(%ebp)
80104c98:	e8 6d c0 ff ff       	call   80100d0a <fileclose>
80104c9d:	83 c4 04             	add    $0x4,%esp
80104ca0:	ff 75 ec             	push   -0x14(%ebp)
80104ca3:	e8 62 c0 ff ff       	call   80100d0a <fileclose>
80104ca8:	83 c4 10             	add    $0x10,%esp
80104cab:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104cb0:	eb d7                	jmp    80104c89 <sys_pipe+0x60>
80104cb2:	e8 46 e6 ff ff       	call   801032fd <myproc>
80104cb7:	c7 44 98 28 00 00 00 	movl   $0x0,0x28(%eax,%ebx,4)
80104cbe:	00 
80104cbf:	eb d1                	jmp    80104c92 <sys_pipe+0x69>
80104cc1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104cc6:	eb c1                	jmp    80104c89 <sys_pipe+0x60>
80104cc8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104ccd:	eb ba                	jmp    80104c89 <sys_pipe+0x60>

80104ccf <sys_fork>:
#include "memlayout.h"
#include "mmu.h"
#include "proc.h"

int sys_fork(void)
{
80104ccf:	55                   	push   %ebp
80104cd0:	89 e5                	mov    %esp,%ebp
80104cd2:	83 ec 08             	sub    $0x8,%esp
  return fork();
80104cd5:	e8 a4 e7 ff ff       	call   8010347e <fork>
}
80104cda:	c9                   	leave  
80104cdb:	c3                   	ret    

80104cdc <sys_exit>:

int sys_exit(void)
{
80104cdc:	55                   	push   %ebp
80104cdd:	89 e5                	mov    %esp,%ebp
80104cdf:	83 ec 08             	sub    $0x8,%esp
  exit(0);
80104ce2:	e8 d7 e9 ff ff       	call   801036be <exit>
  return 0; // not reached
}
80104ce7:	b8 00 00 00 00       	mov    $0x0,%eax
80104cec:	c9                   	leave  
80104ced:	c3                   	ret    

80104cee <sys_wait>:

int sys_wait(void)
{
80104cee:	55                   	push   %ebp
80104cef:	89 e5                	mov    %esp,%ebp
80104cf1:	83 ec 08             	sub    $0x8,%esp
  return wait(0);
80104cf4:	e8 5a eb ff ff       	call   80103853 <wait>
}
80104cf9:	c9                   	leave  
80104cfa:	c3                   	ret    

80104cfb <sys_kill>:

int sys_kill(void)
{
80104cfb:	55                   	push   %ebp
80104cfc:	89 e5                	mov    %esp,%ebp
80104cfe:	83 ec 20             	sub    $0x20,%esp
  int pid;

  if (argint(0, &pid) < 0)
80104d01:	8d 45 f4             	lea    -0xc(%ebp),%eax
80104d04:	50                   	push   %eax
80104d05:	6a 00                	push   $0x0
80104d07:	e8 09 f3 ff ff       	call   80104015 <argint>
80104d0c:	83 c4 10             	add    $0x10,%esp
80104d0f:	85 c0                	test   %eax,%eax
80104d11:	78 10                	js     80104d23 <sys_kill+0x28>
    return -1;
  return kill(pid);
80104d13:	83 ec 0c             	sub    $0xc,%esp
80104d16:	ff 75 f4             	push   -0xc(%ebp)
80104d19:	e8 3a ec ff ff       	call   80103958 <kill>
80104d1e:	83 c4 10             	add    $0x10,%esp
}
80104d21:	c9                   	leave  
80104d22:	c3                   	ret    
    return -1;
80104d23:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104d28:	eb f7                	jmp    80104d21 <sys_kill+0x26>

80104d2a <sys_getpid>:

int sys_getpid(void)
{
80104d2a:	55                   	push   %ebp
80104d2b:	89 e5                	mov    %esp,%ebp
80104d2d:	83 ec 08             	sub    $0x8,%esp
  return myproc()->pid;
80104d30:	e8 c8 e5 ff ff       	call   801032fd <myproc>
80104d35:	8b 40 10             	mov    0x10(%eax),%eax
}
80104d38:	c9                   	leave  
80104d39:	c3                   	ret    

80104d3a <sys_sbrk>:

int sys_sbrk(void)
{
80104d3a:	55                   	push   %ebp
80104d3b:	89 e5                	mov    %esp,%ebp
80104d3d:	53                   	push   %ebx
80104d3e:	83 ec 1c             	sub    $0x1c,%esp
  int addr;
  int n;

  if (argint(0, &n) < 0)
80104d41:	8d 45 f4             	lea    -0xc(%ebp),%eax
80104d44:	50                   	push   %eax
80104d45:	6a 00                	push   $0x0
80104d47:	e8 c9 f2 ff ff       	call   80104015 <argint>
80104d4c:	83 c4 10             	add    $0x10,%esp
80104d4f:	85 c0                	test   %eax,%eax
80104d51:	78 20                	js     80104d73 <sys_sbrk+0x39>
    return -1;
  addr = myproc()->sz;
80104d53:	e8 a5 e5 ff ff       	call   801032fd <myproc>
80104d58:	8b 18                	mov    (%eax),%ebx
  if (growproc(n) < 0)
80104d5a:	83 ec 0c             	sub    $0xc,%esp
80104d5d:	ff 75 f4             	push   -0xc(%ebp)
80104d60:	e8 ab e6 ff ff       	call   80103410 <growproc>
80104d65:	83 c4 10             	add    $0x10,%esp
80104d68:	85 c0                	test   %eax,%eax
80104d6a:	78 0e                	js     80104d7a <sys_sbrk+0x40>
    return -1;
  return addr;
}
80104d6c:	89 d8                	mov    %ebx,%eax
80104d6e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80104d71:	c9                   	leave  
80104d72:	c3                   	ret    
    return -1;
80104d73:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
80104d78:	eb f2                	jmp    80104d6c <sys_sbrk+0x32>
    return -1;
80104d7a:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
80104d7f:	eb eb                	jmp    80104d6c <sys_sbrk+0x32>

80104d81 <sys_sleep>:

int sys_sleep(void)
{
80104d81:	55                   	push   %ebp
80104d82:	89 e5                	mov    %esp,%ebp
80104d84:	53                   	push   %ebx
80104d85:	83 ec 1c             	sub    $0x1c,%esp
  int n;
  uint ticks0;

  if (argint(0, &n) < 0)
80104d88:	8d 45 f4             	lea    -0xc(%ebp),%eax
80104d8b:	50                   	push   %eax
80104d8c:	6a 00                	push   $0x0
80104d8e:	e8 82 f2 ff ff       	call   80104015 <argint>
80104d93:	83 c4 10             	add    $0x10,%esp
80104d96:	85 c0                	test   %eax,%eax
80104d98:	78 75                	js     80104e0f <sys_sleep+0x8e>
    return -1;
  acquire(&tickslock);
80104d9a:	83 ec 0c             	sub    $0xc,%esp
80104d9d:	68 80 3c 11 80       	push   $0x80113c80
80104da2:	e8 4a ef ff ff       	call   80103cf1 <acquire>
  ticks0 = ticks;
80104da7:	8b 1d 60 3c 11 80    	mov    0x80113c60,%ebx
  while (ticks - ticks0 < n)
80104dad:	83 c4 10             	add    $0x10,%esp
80104db0:	a1 60 3c 11 80       	mov    0x80113c60,%eax
80104db5:	29 d8                	sub    %ebx,%eax
80104db7:	3b 45 f4             	cmp    -0xc(%ebp),%eax
80104dba:	73 39                	jae    80104df5 <sys_sleep+0x74>
  {
    if (myproc()->killed)
80104dbc:	e8 3c e5 ff ff       	call   801032fd <myproc>
80104dc1:	83 78 24 00          	cmpl   $0x0,0x24(%eax)
80104dc5:	75 17                	jne    80104dde <sys_sleep+0x5d>
    {
      release(&tickslock);
      return -1;
    }
    sleep(&ticks, &tickslock);
80104dc7:	83 ec 08             	sub    $0x8,%esp
80104dca:	68 80 3c 11 80       	push   $0x80113c80
80104dcf:	68 60 3c 11 80       	push   $0x80113c60
80104dd4:	e8 e5 e9 ff ff       	call   801037be <sleep>
80104dd9:	83 c4 10             	add    $0x10,%esp
80104ddc:	eb d2                	jmp    80104db0 <sys_sleep+0x2f>
      release(&tickslock);
80104dde:	83 ec 0c             	sub    $0xc,%esp
80104de1:	68 80 3c 11 80       	push   $0x80113c80
80104de6:	e8 6f ef ff ff       	call   80103d5a <release>
      return -1;
80104deb:	83 c4 10             	add    $0x10,%esp
80104dee:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104df3:	eb 15                	jmp    80104e0a <sys_sleep+0x89>
  }
  release(&tickslock);
80104df5:	83 ec 0c             	sub    $0xc,%esp
80104df8:	68 80 3c 11 80       	push   $0x80113c80
80104dfd:	e8 58 ef ff ff       	call   80103d5a <release>
  return 0;
80104e02:	83 c4 10             	add    $0x10,%esp
80104e05:	b8 00 00 00 00       	mov    $0x0,%eax
}
80104e0a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80104e0d:	c9                   	leave  
80104e0e:	c3                   	ret    
    return -1;
80104e0f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104e14:	eb f4                	jmp    80104e0a <sys_sleep+0x89>

80104e16 <sys_uptime>:

// return how many clock tick interrupts have occurred
// since start.
int sys_uptime(void)
{
80104e16:	55                   	push   %ebp
80104e17:	89 e5                	mov    %esp,%ebp
80104e19:	53                   	push   %ebx
80104e1a:	83 ec 10             	sub    $0x10,%esp
  uint xticks;

  acquire(&tickslock);
80104e1d:	68 80 3c 11 80       	push   $0x80113c80
80104e22:	e8 ca ee ff ff       	call   80103cf1 <acquire>
  xticks = ticks;
80104e27:	8b 1d 60 3c 11 80    	mov    0x80113c60,%ebx
  release(&tickslock);
80104e2d:	c7 04 24 80 3c 11 80 	movl   $0x80113c80,(%esp)
80104e34:	e8 21 ef ff ff       	call   80103d5a <release>
  return xticks;
}
80104e39:	89 d8                	mov    %ebx,%eax
80104e3b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80104e3e:	c9                   	leave  
80104e3f:	c3                   	ret    

80104e40 <sys_date>:

int sys_date(void)
{
80104e40:	55                   	push   %ebp
80104e41:	89 e5                	mov    %esp,%ebp
80104e43:	83 ec 1c             	sub    $0x1c,%esp
  struct rtcdate* r;
  if(argptr(0, (void**)&r, sizeof(struct rtcdate))<0)
80104e46:	6a 18                	push   $0x18
80104e48:	8d 45 f4             	lea    -0xc(%ebp),%eax
80104e4b:	50                   	push   %eax
80104e4c:	6a 00                	push   $0x0
80104e4e:	e8 ea f1 ff ff       	call   8010403d <argptr>
80104e53:	83 c4 10             	add    $0x10,%esp
80104e56:	85 c0                	test   %eax,%eax
80104e58:	78 15                	js     80104e6f <sys_date+0x2f>
    return -1;


  cmostime(r);
80104e5a:	83 ec 0c             	sub    $0xc,%esp
80104e5d:	ff 75 f4             	push   -0xc(%ebp)
80104e60:	e8 cb d6 ff ff       	call   80102530 <cmostime>
  
  return 0;
80104e65:	83 c4 10             	add    $0x10,%esp
80104e68:	b8 00 00 00 00       	mov    $0x0,%eax
80104e6d:	c9                   	leave  
80104e6e:	c3                   	ret    
    return -1;
80104e6f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104e74:	eb f7                	jmp    80104e6d <sys_date+0x2d>

80104e76 <alltraps>:
80104e76:	1e                   	push   %ds
80104e77:	06                   	push   %es
80104e78:	0f a0                	push   %fs
80104e7a:	0f a8                	push   %gs
80104e7c:	60                   	pusha  
80104e7d:	66 b8 10 00          	mov    $0x10,%ax
80104e81:	8e d8                	mov    %eax,%ds
80104e83:	8e c0                	mov    %eax,%es
80104e85:	54                   	push   %esp
80104e86:	e8 3f 01 00 00       	call   80104fca <trap>
80104e8b:	83 c4 04             	add    $0x4,%esp

80104e8e <trapret>:
80104e8e:	61                   	popa   
80104e8f:	0f a9                	pop    %gs
80104e91:	0f a1                	pop    %fs
80104e93:	07                   	pop    %es
80104e94:	1f                   	pop    %ds
80104e95:	83 c4 08             	add    $0x8,%esp
80104e98:	cf                   	iret   

80104e99 <tvinit>:
80104e99:	f3 0f 1e fb          	endbr32 
80104e9d:	55                   	push   %ebp
80104e9e:	89 e5                	mov    %esp,%ebp
80104ea0:	53                   	push   %ebx
80104ea1:	83 ec 04             	sub    $0x4,%esp
80104ea4:	b8 00 00 00 00       	mov    $0x0,%eax
80104ea9:	eb 76                	jmp    80104f21 <tvinit+0x88>
80104eab:	8b 0c 85 08 a0 10 80 	mov    -0x7fef5ff8(,%eax,4),%ecx
80104eb2:	66 89 0c c5 c0 3c 11 	mov    %cx,-0x7feec340(,%eax,8)
80104eb9:	80 
80104eba:	66 c7 04 c5 c2 3c 11 	movw   $0x8,-0x7feec33e(,%eax,8)
80104ec1:	80 08 00 
80104ec4:	0f b6 14 c5 c4 3c 11 	movzbl -0x7feec33c(,%eax,8),%edx
80104ecb:	80 
80104ecc:	83 e2 e0             	and    $0xffffffe0,%edx
80104ecf:	88 14 c5 c4 3c 11 80 	mov    %dl,-0x7feec33c(,%eax,8)
80104ed6:	c6 04 c5 c4 3c 11 80 	movb   $0x0,-0x7feec33c(,%eax,8)
80104edd:	00 
80104ede:	0f b6 14 c5 c5 3c 11 	movzbl -0x7feec33b(,%eax,8),%edx
80104ee5:	80 
80104ee6:	83 e2 f0             	and    $0xfffffff0,%edx
80104ee9:	83 ca 0e             	or     $0xe,%edx
80104eec:	88 14 c5 c5 3c 11 80 	mov    %dl,-0x7feec33b(,%eax,8)
80104ef3:	89 d3                	mov    %edx,%ebx
80104ef5:	83 e3 ef             	and    $0xffffffef,%ebx
80104ef8:	88 1c c5 c5 3c 11 80 	mov    %bl,-0x7feec33b(,%eax,8)
80104eff:	83 e2 8f             	and    $0xffffff8f,%edx
80104f02:	88 14 c5 c5 3c 11 80 	mov    %dl,-0x7feec33b(,%eax,8)
80104f09:	83 ca 80             	or     $0xffffff80,%edx
80104f0c:	88 14 c5 c5 3c 11 80 	mov    %dl,-0x7feec33b(,%eax,8)
80104f13:	c1 e9 10             	shr    $0x10,%ecx
80104f16:	66 89 0c c5 c6 3c 11 	mov    %cx,-0x7feec33a(,%eax,8)
80104f1d:	80 
80104f1e:	83 c0 01             	add    $0x1,%eax
80104f21:	3d ff 00 00 00       	cmp    $0xff,%eax
80104f26:	7e 83                	jle    80104eab <tvinit+0x12>
80104f28:	8b 15 08 a1 10 80    	mov    0x8010a108,%edx
80104f2e:	66 89 15 c0 3e 11 80 	mov    %dx,0x80113ec0
80104f35:	66 c7 05 c2 3e 11 80 	movw   $0x8,0x80113ec2
80104f3c:	08 00 
80104f3e:	0f b6 05 c4 3e 11 80 	movzbl 0x80113ec4,%eax
80104f45:	83 e0 e0             	and    $0xffffffe0,%eax
80104f48:	a2 c4 3e 11 80       	mov    %al,0x80113ec4
80104f4d:	c6 05 c4 3e 11 80 00 	movb   $0x0,0x80113ec4
80104f54:	0f b6 05 c5 3e 11 80 	movzbl 0x80113ec5,%eax
80104f5b:	83 c8 0f             	or     $0xf,%eax
80104f5e:	a2 c5 3e 11 80       	mov    %al,0x80113ec5
80104f63:	83 e0 ef             	and    $0xffffffef,%eax
80104f66:	a2 c5 3e 11 80       	mov    %al,0x80113ec5
80104f6b:	89 c1                	mov    %eax,%ecx
80104f6d:	83 c9 60             	or     $0x60,%ecx
80104f70:	88 0d c5 3e 11 80    	mov    %cl,0x80113ec5
80104f76:	83 c8 e0             	or     $0xffffffe0,%eax
80104f79:	a2 c5 3e 11 80       	mov    %al,0x80113ec5
80104f7e:	c1 ea 10             	shr    $0x10,%edx
80104f81:	66 89 15 c6 3e 11 80 	mov    %dx,0x80113ec6
80104f88:	83 ec 08             	sub    $0x8,%esp
80104f8b:	68 5d 6f 10 80       	push   $0x80106f5d
80104f90:	68 80 3c 11 80       	push   $0x80113c80
80104f95:	e8 07 ec ff ff       	call   80103ba1 <initlock>
80104f9a:	83 c4 10             	add    $0x10,%esp
80104f9d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80104fa0:	c9                   	leave  
80104fa1:	c3                   	ret    

80104fa2 <idtinit>:
80104fa2:	f3 0f 1e fb          	endbr32 
80104fa6:	55                   	push   %ebp
80104fa7:	89 e5                	mov    %esp,%ebp
80104fa9:	83 ec 10             	sub    $0x10,%esp
80104fac:	66 c7 45 fa ff 07    	movw   $0x7ff,-0x6(%ebp)
80104fb2:	b8 c0 3c 11 80       	mov    $0x80113cc0,%eax
80104fb7:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
80104fbb:	c1 e8 10             	shr    $0x10,%eax
80104fbe:	66 89 45 fe          	mov    %ax,-0x2(%ebp)
80104fc2:	8d 45 fa             	lea    -0x6(%ebp),%eax
80104fc5:	0f 01 18             	lidtl  (%eax)
80104fc8:	c9                   	leave  
80104fc9:	c3                   	ret    

80104fca <trap>:
80104fca:	f3 0f 1e fb          	endbr32 
80104fce:	55                   	push   %ebp
80104fcf:	89 e5                	mov    %esp,%ebp
80104fd1:	57                   	push   %edi
80104fd2:	56                   	push   %esi
80104fd3:	53                   	push   %ebx
80104fd4:	83 ec 1c             	sub    $0x1c,%esp
80104fd7:	8b 5d 08             	mov    0x8(%ebp),%ebx
80104fda:	8b 43 30             	mov    0x30(%ebx),%eax
80104fdd:	83 f8 40             	cmp    $0x40,%eax
80104fe0:	74 14                	je     80104ff6 <trap+0x2c>
80104fe2:	83 e8 20             	sub    $0x20,%eax
80104fe5:	83 f8 1f             	cmp    $0x1f,%eax
80104fe8:	0f 87 3b 01 00 00    	ja     80105129 <trap+0x15f>
80104fee:	3e ff 24 85 04 70 10 	notrack jmp *-0x7fef8ffc(,%eax,4)
80104ff5:	80 
80104ff6:	e8 02 e3 ff ff       	call   801032fd <myproc>
80104ffb:	83 78 24 00          	cmpl   $0x0,0x24(%eax)
80104fff:	75 1f                	jne    80105020 <trap+0x56>
80105001:	e8 f7 e2 ff ff       	call   801032fd <myproc>
80105006:	89 58 18             	mov    %ebx,0x18(%eax)
80105009:	e8 ca f0 ff ff       	call   801040d8 <syscall>
8010500e:	e8 ea e2 ff ff       	call   801032fd <myproc>
80105013:	83 78 24 00          	cmpl   $0x0,0x24(%eax)
80105017:	74 7e                	je     80105097 <trap+0xcd>
80105019:	e8 a0 e6 ff ff       	call   801036be <exit>
8010501e:	eb 77                	jmp    80105097 <trap+0xcd>
80105020:	e8 99 e6 ff ff       	call   801036be <exit>
80105025:	eb da                	jmp    80105001 <trap+0x37>
80105027:	e8 b2 e2 ff ff       	call   801032de <cpuid>
8010502c:	85 c0                	test   %eax,%eax
8010502e:	74 6f                	je     8010509f <trap+0xd5>
80105030:	e8 32 d4 ff ff       	call   80102467 <lapiceoi>
80105035:	e8 c3 e2 ff ff       	call   801032fd <myproc>
8010503a:	85 c0                	test   %eax,%eax
8010503c:	74 1c                	je     8010505a <trap+0x90>
8010503e:	e8 ba e2 ff ff       	call   801032fd <myproc>
80105043:	83 78 24 00          	cmpl   $0x0,0x24(%eax)
80105047:	74 11                	je     8010505a <trap+0x90>
80105049:	0f b7 43 3c          	movzwl 0x3c(%ebx),%eax
8010504d:	83 e0 03             	and    $0x3,%eax
80105050:	66 83 f8 03          	cmp    $0x3,%ax
80105054:	0f 84 62 01 00 00    	je     801051bc <trap+0x1f2>
8010505a:	e8 9e e2 ff ff       	call   801032fd <myproc>
8010505f:	85 c0                	test   %eax,%eax
80105061:	74 0f                	je     80105072 <trap+0xa8>
80105063:	e8 95 e2 ff ff       	call   801032fd <myproc>
80105068:	83 78 0c 04          	cmpl   $0x4,0xc(%eax)
8010506c:	0f 84 54 01 00 00    	je     801051c6 <trap+0x1fc>
80105072:	e8 86 e2 ff ff       	call   801032fd <myproc>
80105077:	85 c0                	test   %eax,%eax
80105079:	74 1c                	je     80105097 <trap+0xcd>
8010507b:	e8 7d e2 ff ff       	call   801032fd <myproc>
80105080:	83 78 24 00          	cmpl   $0x0,0x24(%eax)
80105084:	74 11                	je     80105097 <trap+0xcd>
80105086:	0f b7 43 3c          	movzwl 0x3c(%ebx),%eax
8010508a:	83 e0 03             	and    $0x3,%eax
8010508d:	66 83 f8 03          	cmp    $0x3,%ax
80105091:	0f 84 43 01 00 00    	je     801051da <trap+0x210>
80105097:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010509a:	5b                   	pop    %ebx
8010509b:	5e                   	pop    %esi
8010509c:	5f                   	pop    %edi
8010509d:	5d                   	pop    %ebp
8010509e:	c3                   	ret    
8010509f:	83 ec 0c             	sub    $0xc,%esp
801050a2:	68 80 3c 11 80       	push   $0x80113c80
801050a7:	e8 45 ec ff ff       	call   80103cf1 <acquire>
801050ac:	83 05 60 3c 11 80 01 	addl   $0x1,0x80113c60
801050b3:	c7 04 24 60 3c 11 80 	movl   $0x80113c60,(%esp)
801050ba:	e8 6c e8 ff ff       	call   8010392b <wakeup>
801050bf:	c7 04 24 80 3c 11 80 	movl   $0x80113c80,(%esp)
801050c6:	e8 8f ec ff ff       	call   80103d5a <release>
801050cb:	83 c4 10             	add    $0x10,%esp
801050ce:	e9 5d ff ff ff       	jmp    80105030 <trap+0x66>
801050d3:	e8 42 cd ff ff       	call   80101e1a <ideintr>
801050d8:	e8 8a d3 ff ff       	call   80102467 <lapiceoi>
801050dd:	e9 53 ff ff ff       	jmp    80105035 <trap+0x6b>
801050e2:	e8 be d1 ff ff       	call   801022a5 <kbdintr>
801050e7:	e8 7b d3 ff ff       	call   80102467 <lapiceoi>
801050ec:	e9 44 ff ff ff       	jmp    80105035 <trap+0x6b>
801050f1:	e8 0a 02 00 00       	call   80105300 <uartintr>
801050f6:	e8 6c d3 ff ff       	call   80102467 <lapiceoi>
801050fb:	e9 35 ff ff ff       	jmp    80105035 <trap+0x6b>
80105100:	8b 7b 38             	mov    0x38(%ebx),%edi
80105103:	0f b7 73 3c          	movzwl 0x3c(%ebx),%esi
80105107:	e8 d2 e1 ff ff       	call   801032de <cpuid>
8010510c:	57                   	push   %edi
8010510d:	0f b7 f6             	movzwl %si,%esi
80105110:	56                   	push   %esi
80105111:	50                   	push   %eax
80105112:	68 68 6f 10 80       	push   $0x80106f68
80105117:	e8 09 b5 ff ff       	call   80100625 <cprintf>
8010511c:	e8 46 d3 ff ff       	call   80102467 <lapiceoi>
80105121:	83 c4 10             	add    $0x10,%esp
80105124:	e9 0c ff ff ff       	jmp    80105035 <trap+0x6b>
80105129:	e8 cf e1 ff ff       	call   801032fd <myproc>
8010512e:	85 c0                	test   %eax,%eax
80105130:	74 5f                	je     80105191 <trap+0x1c7>
80105132:	f6 43 3c 03          	testb  $0x3,0x3c(%ebx)
80105136:	74 59                	je     80105191 <trap+0x1c7>
80105138:	0f 20 d7             	mov    %cr2,%edi
8010513b:	8b 43 38             	mov    0x38(%ebx),%eax
8010513e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
80105141:	e8 98 e1 ff ff       	call   801032de <cpuid>
80105146:	89 45 e0             	mov    %eax,-0x20(%ebp)
80105149:	8b 53 34             	mov    0x34(%ebx),%edx
8010514c:	89 55 dc             	mov    %edx,-0x24(%ebp)
8010514f:	8b 73 30             	mov    0x30(%ebx),%esi
80105152:	e8 a6 e1 ff ff       	call   801032fd <myproc>
80105157:	8d 48 6c             	lea    0x6c(%eax),%ecx
8010515a:	89 4d d8             	mov    %ecx,-0x28(%ebp)
8010515d:	e8 9b e1 ff ff       	call   801032fd <myproc>
80105162:	57                   	push   %edi
80105163:	ff 75 e4             	push   -0x1c(%ebp)
80105166:	ff 75 e0             	push   -0x20(%ebp)
80105169:	ff 75 dc             	push   -0x24(%ebp)
8010516c:	56                   	push   %esi
8010516d:	ff 75 d8             	push   -0x28(%ebp)
80105170:	ff 70 10             	push   0x10(%eax)
80105173:	68 c0 6f 10 80       	push   $0x80106fc0
80105178:	e8 a8 b4 ff ff       	call   80100625 <cprintf>
8010517d:	83 c4 20             	add    $0x20,%esp
80105180:	e8 78 e1 ff ff       	call   801032fd <myproc>
80105185:	c7 40 24 01 00 00 00 	movl   $0x1,0x24(%eax)
8010518c:	e9 a4 fe ff ff       	jmp    80105035 <trap+0x6b>
80105191:	0f 20 d7             	mov    %cr2,%edi
80105194:	8b 73 38             	mov    0x38(%ebx),%esi
80105197:	e8 42 e1 ff ff       	call   801032de <cpuid>
8010519c:	83 ec 0c             	sub    $0xc,%esp
8010519f:	57                   	push   %edi
801051a0:	56                   	push   %esi
801051a1:	50                   	push   %eax
801051a2:	ff 73 30             	push   0x30(%ebx)
801051a5:	68 8c 6f 10 80       	push   $0x80106f8c
801051aa:	e8 76 b4 ff ff       	call   80100625 <cprintf>
801051af:	83 c4 14             	add    $0x14,%esp
801051b2:	68 62 6f 10 80       	push   $0x80106f62
801051b7:	e8 a0 b1 ff ff       	call   8010035c <panic>
801051bc:	e8 fd e4 ff ff       	call   801036be <exit>
801051c1:	e9 94 fe ff ff       	jmp    8010505a <trap+0x90>
801051c6:	83 7b 30 20          	cmpl   $0x20,0x30(%ebx)
801051ca:	0f 85 a2 fe ff ff    	jne    80105072 <trap+0xa8>
801051d0:	e8 b3 e5 ff ff       	call   80103788 <yield>
801051d5:	e9 98 fe ff ff       	jmp    80105072 <trap+0xa8>
801051da:	e8 df e4 ff ff       	call   801036be <exit>
801051df:	e9 b3 fe ff ff       	jmp    80105097 <trap+0xcd>

801051e4 <uartgetc>:
801051e4:	f3 0f 1e fb          	endbr32 
801051e8:	83 3d c0 44 11 80 00 	cmpl   $0x0,0x801144c0
801051ef:	74 14                	je     80105205 <uartgetc+0x21>
801051f1:	ba fd 03 00 00       	mov    $0x3fd,%edx
801051f6:	ec                   	in     (%dx),%al
801051f7:	a8 01                	test   $0x1,%al
801051f9:	74 10                	je     8010520b <uartgetc+0x27>
801051fb:	ba f8 03 00 00       	mov    $0x3f8,%edx
80105200:	ec                   	in     (%dx),%al
80105201:	0f b6 c0             	movzbl %al,%eax
80105204:	c3                   	ret    
80105205:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010520a:	c3                   	ret    
8010520b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80105210:	c3                   	ret    

80105211 <uartputc>:
80105211:	f3 0f 1e fb          	endbr32 
80105215:	83 3d c0 44 11 80 00 	cmpl   $0x0,0x801144c0
8010521c:	74 3b                	je     80105259 <uartputc+0x48>
8010521e:	55                   	push   %ebp
8010521f:	89 e5                	mov    %esp,%ebp
80105221:	53                   	push   %ebx
80105222:	83 ec 04             	sub    $0x4,%esp
80105225:	bb 00 00 00 00       	mov    $0x0,%ebx
8010522a:	eb 10                	jmp    8010523c <uartputc+0x2b>
8010522c:	83 ec 0c             	sub    $0xc,%esp
8010522f:	6a 0a                	push   $0xa
80105231:	e8 56 d2 ff ff       	call   8010248c <microdelay>
80105236:	83 c3 01             	add    $0x1,%ebx
80105239:	83 c4 10             	add    $0x10,%esp
8010523c:	83 fb 7f             	cmp    $0x7f,%ebx
8010523f:	7f 0a                	jg     8010524b <uartputc+0x3a>
80105241:	ba fd 03 00 00       	mov    $0x3fd,%edx
80105246:	ec                   	in     (%dx),%al
80105247:	a8 20                	test   $0x20,%al
80105249:	74 e1                	je     8010522c <uartputc+0x1b>
8010524b:	8b 45 08             	mov    0x8(%ebp),%eax
8010524e:	ba f8 03 00 00       	mov    $0x3f8,%edx
80105253:	ee                   	out    %al,(%dx)
80105254:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80105257:	c9                   	leave  
80105258:	c3                   	ret    
80105259:	c3                   	ret    

8010525a <uartinit>:
8010525a:	f3 0f 1e fb          	endbr32 
8010525e:	55                   	push   %ebp
8010525f:	89 e5                	mov    %esp,%ebp
80105261:	56                   	push   %esi
80105262:	53                   	push   %ebx
80105263:	b9 00 00 00 00       	mov    $0x0,%ecx
80105268:	ba fa 03 00 00       	mov    $0x3fa,%edx
8010526d:	89 c8                	mov    %ecx,%eax
8010526f:	ee                   	out    %al,(%dx)
80105270:	be fb 03 00 00       	mov    $0x3fb,%esi
80105275:	b8 80 ff ff ff       	mov    $0xffffff80,%eax
8010527a:	89 f2                	mov    %esi,%edx
8010527c:	ee                   	out    %al,(%dx)
8010527d:	b8 0c 00 00 00       	mov    $0xc,%eax
80105282:	ba f8 03 00 00       	mov    $0x3f8,%edx
80105287:	ee                   	out    %al,(%dx)
80105288:	bb f9 03 00 00       	mov    $0x3f9,%ebx
8010528d:	89 c8                	mov    %ecx,%eax
8010528f:	89 da                	mov    %ebx,%edx
80105291:	ee                   	out    %al,(%dx)
80105292:	b8 03 00 00 00       	mov    $0x3,%eax
80105297:	89 f2                	mov    %esi,%edx
80105299:	ee                   	out    %al,(%dx)
8010529a:	ba fc 03 00 00       	mov    $0x3fc,%edx
8010529f:	89 c8                	mov    %ecx,%eax
801052a1:	ee                   	out    %al,(%dx)
801052a2:	b8 01 00 00 00       	mov    $0x1,%eax
801052a7:	89 da                	mov    %ebx,%edx
801052a9:	ee                   	out    %al,(%dx)
801052aa:	ba fd 03 00 00       	mov    $0x3fd,%edx
801052af:	ec                   	in     (%dx),%al
801052b0:	3c ff                	cmp    $0xff,%al
801052b2:	74 45                	je     801052f9 <uartinit+0x9f>
801052b4:	c7 05 c0 44 11 80 01 	movl   $0x1,0x801144c0
801052bb:	00 00 00 
801052be:	ba fa 03 00 00       	mov    $0x3fa,%edx
801052c3:	ec                   	in     (%dx),%al
801052c4:	ba f8 03 00 00       	mov    $0x3f8,%edx
801052c9:	ec                   	in     (%dx),%al
801052ca:	83 ec 08             	sub    $0x8,%esp
801052cd:	6a 00                	push   $0x0
801052cf:	6a 04                	push   $0x4
801052d1:	e8 55 cd ff ff       	call   8010202b <ioapicenable>
801052d6:	83 c4 10             	add    $0x10,%esp
801052d9:	bb 84 70 10 80       	mov    $0x80107084,%ebx
801052de:	eb 12                	jmp    801052f2 <uartinit+0x98>
801052e0:	83 ec 0c             	sub    $0xc,%esp
801052e3:	0f be c0             	movsbl %al,%eax
801052e6:	50                   	push   %eax
801052e7:	e8 25 ff ff ff       	call   80105211 <uartputc>
801052ec:	83 c3 01             	add    $0x1,%ebx
801052ef:	83 c4 10             	add    $0x10,%esp
801052f2:	0f b6 03             	movzbl (%ebx),%eax
801052f5:	84 c0                	test   %al,%al
801052f7:	75 e7                	jne    801052e0 <uartinit+0x86>
801052f9:	8d 65 f8             	lea    -0x8(%ebp),%esp
801052fc:	5b                   	pop    %ebx
801052fd:	5e                   	pop    %esi
801052fe:	5d                   	pop    %ebp
801052ff:	c3                   	ret    

80105300 <uartintr>:
80105300:	f3 0f 1e fb          	endbr32 
80105304:	55                   	push   %ebp
80105305:	89 e5                	mov    %esp,%ebp
80105307:	83 ec 14             	sub    $0x14,%esp
8010530a:	68 e4 51 10 80       	push   $0x801051e4
8010530f:	e8 41 b4 ff ff       	call   80100755 <consoleintr>
80105314:	83 c4 10             	add    $0x10,%esp
80105317:	c9                   	leave  
80105318:	c3                   	ret    

80105319 <vector0>:
80105319:	6a 00                	push   $0x0
8010531b:	6a 00                	push   $0x0
8010531d:	e9 54 fb ff ff       	jmp    80104e76 <alltraps>

80105322 <vector1>:
80105322:	6a 00                	push   $0x0
80105324:	6a 01                	push   $0x1
80105326:	e9 4b fb ff ff       	jmp    80104e76 <alltraps>

8010532b <vector2>:
8010532b:	6a 00                	push   $0x0
8010532d:	6a 02                	push   $0x2
8010532f:	e9 42 fb ff ff       	jmp    80104e76 <alltraps>

80105334 <vector3>:
80105334:	6a 00                	push   $0x0
80105336:	6a 03                	push   $0x3
80105338:	e9 39 fb ff ff       	jmp    80104e76 <alltraps>

8010533d <vector4>:
8010533d:	6a 00                	push   $0x0
8010533f:	6a 04                	push   $0x4
80105341:	e9 30 fb ff ff       	jmp    80104e76 <alltraps>

80105346 <vector5>:
80105346:	6a 00                	push   $0x0
80105348:	6a 05                	push   $0x5
8010534a:	e9 27 fb ff ff       	jmp    80104e76 <alltraps>

8010534f <vector6>:
8010534f:	6a 00                	push   $0x0
80105351:	6a 06                	push   $0x6
80105353:	e9 1e fb ff ff       	jmp    80104e76 <alltraps>

80105358 <vector7>:
80105358:	6a 00                	push   $0x0
8010535a:	6a 07                	push   $0x7
8010535c:	e9 15 fb ff ff       	jmp    80104e76 <alltraps>

80105361 <vector8>:
80105361:	6a 08                	push   $0x8
80105363:	e9 0e fb ff ff       	jmp    80104e76 <alltraps>

80105368 <vector9>:
80105368:	6a 00                	push   $0x0
8010536a:	6a 09                	push   $0x9
8010536c:	e9 05 fb ff ff       	jmp    80104e76 <alltraps>

80105371 <vector10>:
80105371:	6a 0a                	push   $0xa
80105373:	e9 fe fa ff ff       	jmp    80104e76 <alltraps>

80105378 <vector11>:
80105378:	6a 0b                	push   $0xb
8010537a:	e9 f7 fa ff ff       	jmp    80104e76 <alltraps>

8010537f <vector12>:
8010537f:	6a 0c                	push   $0xc
80105381:	e9 f0 fa ff ff       	jmp    80104e76 <alltraps>

80105386 <vector13>:
80105386:	6a 0d                	push   $0xd
80105388:	e9 e9 fa ff ff       	jmp    80104e76 <alltraps>

8010538d <vector14>:
8010538d:	6a 0e                	push   $0xe
8010538f:	e9 e2 fa ff ff       	jmp    80104e76 <alltraps>

80105394 <vector15>:
80105394:	6a 00                	push   $0x0
80105396:	6a 0f                	push   $0xf
80105398:	e9 d9 fa ff ff       	jmp    80104e76 <alltraps>

8010539d <vector16>:
8010539d:	6a 00                	push   $0x0
8010539f:	6a 10                	push   $0x10
801053a1:	e9 d0 fa ff ff       	jmp    80104e76 <alltraps>

801053a6 <vector17>:
801053a6:	6a 11                	push   $0x11
801053a8:	e9 c9 fa ff ff       	jmp    80104e76 <alltraps>

801053ad <vector18>:
801053ad:	6a 00                	push   $0x0
801053af:	6a 12                	push   $0x12
801053b1:	e9 c0 fa ff ff       	jmp    80104e76 <alltraps>

801053b6 <vector19>:
801053b6:	6a 00                	push   $0x0
801053b8:	6a 13                	push   $0x13
801053ba:	e9 b7 fa ff ff       	jmp    80104e76 <alltraps>

801053bf <vector20>:
801053bf:	6a 00                	push   $0x0
801053c1:	6a 14                	push   $0x14
801053c3:	e9 ae fa ff ff       	jmp    80104e76 <alltraps>

801053c8 <vector21>:
801053c8:	6a 00                	push   $0x0
801053ca:	6a 15                	push   $0x15
801053cc:	e9 a5 fa ff ff       	jmp    80104e76 <alltraps>

801053d1 <vector22>:
801053d1:	6a 00                	push   $0x0
801053d3:	6a 16                	push   $0x16
801053d5:	e9 9c fa ff ff       	jmp    80104e76 <alltraps>

801053da <vector23>:
801053da:	6a 00                	push   $0x0
801053dc:	6a 17                	push   $0x17
801053de:	e9 93 fa ff ff       	jmp    80104e76 <alltraps>

801053e3 <vector24>:
801053e3:	6a 00                	push   $0x0
801053e5:	6a 18                	push   $0x18
801053e7:	e9 8a fa ff ff       	jmp    80104e76 <alltraps>

801053ec <vector25>:
801053ec:	6a 00                	push   $0x0
801053ee:	6a 19                	push   $0x19
801053f0:	e9 81 fa ff ff       	jmp    80104e76 <alltraps>

801053f5 <vector26>:
801053f5:	6a 00                	push   $0x0
801053f7:	6a 1a                	push   $0x1a
801053f9:	e9 78 fa ff ff       	jmp    80104e76 <alltraps>

801053fe <vector27>:
801053fe:	6a 00                	push   $0x0
80105400:	6a 1b                	push   $0x1b
80105402:	e9 6f fa ff ff       	jmp    80104e76 <alltraps>

80105407 <vector28>:
80105407:	6a 00                	push   $0x0
80105409:	6a 1c                	push   $0x1c
8010540b:	e9 66 fa ff ff       	jmp    80104e76 <alltraps>

80105410 <vector29>:
80105410:	6a 00                	push   $0x0
80105412:	6a 1d                	push   $0x1d
80105414:	e9 5d fa ff ff       	jmp    80104e76 <alltraps>

80105419 <vector30>:
80105419:	6a 00                	push   $0x0
8010541b:	6a 1e                	push   $0x1e
8010541d:	e9 54 fa ff ff       	jmp    80104e76 <alltraps>

80105422 <vector31>:
80105422:	6a 00                	push   $0x0
80105424:	6a 1f                	push   $0x1f
80105426:	e9 4b fa ff ff       	jmp    80104e76 <alltraps>

8010542b <vector32>:
8010542b:	6a 00                	push   $0x0
8010542d:	6a 20                	push   $0x20
8010542f:	e9 42 fa ff ff       	jmp    80104e76 <alltraps>

80105434 <vector33>:
80105434:	6a 00                	push   $0x0
80105436:	6a 21                	push   $0x21
80105438:	e9 39 fa ff ff       	jmp    80104e76 <alltraps>

8010543d <vector34>:
8010543d:	6a 00                	push   $0x0
8010543f:	6a 22                	push   $0x22
80105441:	e9 30 fa ff ff       	jmp    80104e76 <alltraps>

80105446 <vector35>:
80105446:	6a 00                	push   $0x0
80105448:	6a 23                	push   $0x23
8010544a:	e9 27 fa ff ff       	jmp    80104e76 <alltraps>

8010544f <vector36>:
8010544f:	6a 00                	push   $0x0
80105451:	6a 24                	push   $0x24
80105453:	e9 1e fa ff ff       	jmp    80104e76 <alltraps>

80105458 <vector37>:
80105458:	6a 00                	push   $0x0
8010545a:	6a 25                	push   $0x25
8010545c:	e9 15 fa ff ff       	jmp    80104e76 <alltraps>

80105461 <vector38>:
80105461:	6a 00                	push   $0x0
80105463:	6a 26                	push   $0x26
80105465:	e9 0c fa ff ff       	jmp    80104e76 <alltraps>

8010546a <vector39>:
8010546a:	6a 00                	push   $0x0
8010546c:	6a 27                	push   $0x27
8010546e:	e9 03 fa ff ff       	jmp    80104e76 <alltraps>

80105473 <vector40>:
80105473:	6a 00                	push   $0x0
80105475:	6a 28                	push   $0x28
80105477:	e9 fa f9 ff ff       	jmp    80104e76 <alltraps>

8010547c <vector41>:
8010547c:	6a 00                	push   $0x0
8010547e:	6a 29                	push   $0x29
80105480:	e9 f1 f9 ff ff       	jmp    80104e76 <alltraps>

80105485 <vector42>:
80105485:	6a 00                	push   $0x0
80105487:	6a 2a                	push   $0x2a
80105489:	e9 e8 f9 ff ff       	jmp    80104e76 <alltraps>

8010548e <vector43>:
8010548e:	6a 00                	push   $0x0
80105490:	6a 2b                	push   $0x2b
80105492:	e9 df f9 ff ff       	jmp    80104e76 <alltraps>

80105497 <vector44>:
80105497:	6a 00                	push   $0x0
80105499:	6a 2c                	push   $0x2c
8010549b:	e9 d6 f9 ff ff       	jmp    80104e76 <alltraps>

801054a0 <vector45>:
801054a0:	6a 00                	push   $0x0
801054a2:	6a 2d                	push   $0x2d
801054a4:	e9 cd f9 ff ff       	jmp    80104e76 <alltraps>

801054a9 <vector46>:
801054a9:	6a 00                	push   $0x0
801054ab:	6a 2e                	push   $0x2e
801054ad:	e9 c4 f9 ff ff       	jmp    80104e76 <alltraps>

801054b2 <vector47>:
801054b2:	6a 00                	push   $0x0
801054b4:	6a 2f                	push   $0x2f
801054b6:	e9 bb f9 ff ff       	jmp    80104e76 <alltraps>

801054bb <vector48>:
801054bb:	6a 00                	push   $0x0
801054bd:	6a 30                	push   $0x30
801054bf:	e9 b2 f9 ff ff       	jmp    80104e76 <alltraps>

801054c4 <vector49>:
801054c4:	6a 00                	push   $0x0
801054c6:	6a 31                	push   $0x31
801054c8:	e9 a9 f9 ff ff       	jmp    80104e76 <alltraps>

801054cd <vector50>:
801054cd:	6a 00                	push   $0x0
801054cf:	6a 32                	push   $0x32
801054d1:	e9 a0 f9 ff ff       	jmp    80104e76 <alltraps>

801054d6 <vector51>:
801054d6:	6a 00                	push   $0x0
801054d8:	6a 33                	push   $0x33
801054da:	e9 97 f9 ff ff       	jmp    80104e76 <alltraps>

801054df <vector52>:
801054df:	6a 00                	push   $0x0
801054e1:	6a 34                	push   $0x34
801054e3:	e9 8e f9 ff ff       	jmp    80104e76 <alltraps>

801054e8 <vector53>:
801054e8:	6a 00                	push   $0x0
801054ea:	6a 35                	push   $0x35
801054ec:	e9 85 f9 ff ff       	jmp    80104e76 <alltraps>

801054f1 <vector54>:
801054f1:	6a 00                	push   $0x0
801054f3:	6a 36                	push   $0x36
801054f5:	e9 7c f9 ff ff       	jmp    80104e76 <alltraps>

801054fa <vector55>:
801054fa:	6a 00                	push   $0x0
801054fc:	6a 37                	push   $0x37
801054fe:	e9 73 f9 ff ff       	jmp    80104e76 <alltraps>

80105503 <vector56>:
80105503:	6a 00                	push   $0x0
80105505:	6a 38                	push   $0x38
80105507:	e9 6a f9 ff ff       	jmp    80104e76 <alltraps>

8010550c <vector57>:
8010550c:	6a 00                	push   $0x0
8010550e:	6a 39                	push   $0x39
80105510:	e9 61 f9 ff ff       	jmp    80104e76 <alltraps>

80105515 <vector58>:
80105515:	6a 00                	push   $0x0
80105517:	6a 3a                	push   $0x3a
80105519:	e9 58 f9 ff ff       	jmp    80104e76 <alltraps>

8010551e <vector59>:
8010551e:	6a 00                	push   $0x0
80105520:	6a 3b                	push   $0x3b
80105522:	e9 4f f9 ff ff       	jmp    80104e76 <alltraps>

80105527 <vector60>:
80105527:	6a 00                	push   $0x0
80105529:	6a 3c                	push   $0x3c
8010552b:	e9 46 f9 ff ff       	jmp    80104e76 <alltraps>

80105530 <vector61>:
80105530:	6a 00                	push   $0x0
80105532:	6a 3d                	push   $0x3d
80105534:	e9 3d f9 ff ff       	jmp    80104e76 <alltraps>

80105539 <vector62>:
80105539:	6a 00                	push   $0x0
8010553b:	6a 3e                	push   $0x3e
8010553d:	e9 34 f9 ff ff       	jmp    80104e76 <alltraps>

80105542 <vector63>:
80105542:	6a 00                	push   $0x0
80105544:	6a 3f                	push   $0x3f
80105546:	e9 2b f9 ff ff       	jmp    80104e76 <alltraps>

8010554b <vector64>:
8010554b:	6a 00                	push   $0x0
8010554d:	6a 40                	push   $0x40
8010554f:	e9 22 f9 ff ff       	jmp    80104e76 <alltraps>

80105554 <vector65>:
80105554:	6a 00                	push   $0x0
80105556:	6a 41                	push   $0x41
80105558:	e9 19 f9 ff ff       	jmp    80104e76 <alltraps>

8010555d <vector66>:
8010555d:	6a 00                	push   $0x0
8010555f:	6a 42                	push   $0x42
80105561:	e9 10 f9 ff ff       	jmp    80104e76 <alltraps>

80105566 <vector67>:
80105566:	6a 00                	push   $0x0
80105568:	6a 43                	push   $0x43
8010556a:	e9 07 f9 ff ff       	jmp    80104e76 <alltraps>

8010556f <vector68>:
8010556f:	6a 00                	push   $0x0
80105571:	6a 44                	push   $0x44
80105573:	e9 fe f8 ff ff       	jmp    80104e76 <alltraps>

80105578 <vector69>:
80105578:	6a 00                	push   $0x0
8010557a:	6a 45                	push   $0x45
8010557c:	e9 f5 f8 ff ff       	jmp    80104e76 <alltraps>

80105581 <vector70>:
80105581:	6a 00                	push   $0x0
80105583:	6a 46                	push   $0x46
80105585:	e9 ec f8 ff ff       	jmp    80104e76 <alltraps>

8010558a <vector71>:
8010558a:	6a 00                	push   $0x0
8010558c:	6a 47                	push   $0x47
8010558e:	e9 e3 f8 ff ff       	jmp    80104e76 <alltraps>

80105593 <vector72>:
80105593:	6a 00                	push   $0x0
80105595:	6a 48                	push   $0x48
80105597:	e9 da f8 ff ff       	jmp    80104e76 <alltraps>

8010559c <vector73>:
8010559c:	6a 00                	push   $0x0
8010559e:	6a 49                	push   $0x49
801055a0:	e9 d1 f8 ff ff       	jmp    80104e76 <alltraps>

801055a5 <vector74>:
801055a5:	6a 00                	push   $0x0
801055a7:	6a 4a                	push   $0x4a
801055a9:	e9 c8 f8 ff ff       	jmp    80104e76 <alltraps>

801055ae <vector75>:
801055ae:	6a 00                	push   $0x0
801055b0:	6a 4b                	push   $0x4b
801055b2:	e9 bf f8 ff ff       	jmp    80104e76 <alltraps>

801055b7 <vector76>:
801055b7:	6a 00                	push   $0x0
801055b9:	6a 4c                	push   $0x4c
801055bb:	e9 b6 f8 ff ff       	jmp    80104e76 <alltraps>

801055c0 <vector77>:
801055c0:	6a 00                	push   $0x0
801055c2:	6a 4d                	push   $0x4d
801055c4:	e9 ad f8 ff ff       	jmp    80104e76 <alltraps>

801055c9 <vector78>:
801055c9:	6a 00                	push   $0x0
801055cb:	6a 4e                	push   $0x4e
801055cd:	e9 a4 f8 ff ff       	jmp    80104e76 <alltraps>

801055d2 <vector79>:
801055d2:	6a 00                	push   $0x0
801055d4:	6a 4f                	push   $0x4f
801055d6:	e9 9b f8 ff ff       	jmp    80104e76 <alltraps>

801055db <vector80>:
801055db:	6a 00                	push   $0x0
801055dd:	6a 50                	push   $0x50
801055df:	e9 92 f8 ff ff       	jmp    80104e76 <alltraps>

801055e4 <vector81>:
801055e4:	6a 00                	push   $0x0
801055e6:	6a 51                	push   $0x51
801055e8:	e9 89 f8 ff ff       	jmp    80104e76 <alltraps>

801055ed <vector82>:
801055ed:	6a 00                	push   $0x0
801055ef:	6a 52                	push   $0x52
801055f1:	e9 80 f8 ff ff       	jmp    80104e76 <alltraps>

801055f6 <vector83>:
801055f6:	6a 00                	push   $0x0
801055f8:	6a 53                	push   $0x53
801055fa:	e9 77 f8 ff ff       	jmp    80104e76 <alltraps>

801055ff <vector84>:
801055ff:	6a 00                	push   $0x0
80105601:	6a 54                	push   $0x54
80105603:	e9 6e f8 ff ff       	jmp    80104e76 <alltraps>

80105608 <vector85>:
80105608:	6a 00                	push   $0x0
8010560a:	6a 55                	push   $0x55
8010560c:	e9 65 f8 ff ff       	jmp    80104e76 <alltraps>

80105611 <vector86>:
80105611:	6a 00                	push   $0x0
80105613:	6a 56                	push   $0x56
80105615:	e9 5c f8 ff ff       	jmp    80104e76 <alltraps>

8010561a <vector87>:
8010561a:	6a 00                	push   $0x0
8010561c:	6a 57                	push   $0x57
8010561e:	e9 53 f8 ff ff       	jmp    80104e76 <alltraps>

80105623 <vector88>:
80105623:	6a 00                	push   $0x0
80105625:	6a 58                	push   $0x58
80105627:	e9 4a f8 ff ff       	jmp    80104e76 <alltraps>

8010562c <vector89>:
8010562c:	6a 00                	push   $0x0
8010562e:	6a 59                	push   $0x59
80105630:	e9 41 f8 ff ff       	jmp    80104e76 <alltraps>

80105635 <vector90>:
80105635:	6a 00                	push   $0x0
80105637:	6a 5a                	push   $0x5a
80105639:	e9 38 f8 ff ff       	jmp    80104e76 <alltraps>

8010563e <vector91>:
8010563e:	6a 00                	push   $0x0
80105640:	6a 5b                	push   $0x5b
80105642:	e9 2f f8 ff ff       	jmp    80104e76 <alltraps>

80105647 <vector92>:
80105647:	6a 00                	push   $0x0
80105649:	6a 5c                	push   $0x5c
8010564b:	e9 26 f8 ff ff       	jmp    80104e76 <alltraps>

80105650 <vector93>:
80105650:	6a 00                	push   $0x0
80105652:	6a 5d                	push   $0x5d
80105654:	e9 1d f8 ff ff       	jmp    80104e76 <alltraps>

80105659 <vector94>:
80105659:	6a 00                	push   $0x0
8010565b:	6a 5e                	push   $0x5e
8010565d:	e9 14 f8 ff ff       	jmp    80104e76 <alltraps>

80105662 <vector95>:
80105662:	6a 00                	push   $0x0
80105664:	6a 5f                	push   $0x5f
80105666:	e9 0b f8 ff ff       	jmp    80104e76 <alltraps>

8010566b <vector96>:
8010566b:	6a 00                	push   $0x0
8010566d:	6a 60                	push   $0x60
8010566f:	e9 02 f8 ff ff       	jmp    80104e76 <alltraps>

80105674 <vector97>:
80105674:	6a 00                	push   $0x0
80105676:	6a 61                	push   $0x61
80105678:	e9 f9 f7 ff ff       	jmp    80104e76 <alltraps>

8010567d <vector98>:
8010567d:	6a 00                	push   $0x0
8010567f:	6a 62                	push   $0x62
80105681:	e9 f0 f7 ff ff       	jmp    80104e76 <alltraps>

80105686 <vector99>:
80105686:	6a 00                	push   $0x0
80105688:	6a 63                	push   $0x63
8010568a:	e9 e7 f7 ff ff       	jmp    80104e76 <alltraps>

8010568f <vector100>:
8010568f:	6a 00                	push   $0x0
80105691:	6a 64                	push   $0x64
80105693:	e9 de f7 ff ff       	jmp    80104e76 <alltraps>

80105698 <vector101>:
80105698:	6a 00                	push   $0x0
8010569a:	6a 65                	push   $0x65
8010569c:	e9 d5 f7 ff ff       	jmp    80104e76 <alltraps>

801056a1 <vector102>:
801056a1:	6a 00                	push   $0x0
801056a3:	6a 66                	push   $0x66
801056a5:	e9 cc f7 ff ff       	jmp    80104e76 <alltraps>

801056aa <vector103>:
801056aa:	6a 00                	push   $0x0
801056ac:	6a 67                	push   $0x67
801056ae:	e9 c3 f7 ff ff       	jmp    80104e76 <alltraps>

801056b3 <vector104>:
801056b3:	6a 00                	push   $0x0
801056b5:	6a 68                	push   $0x68
801056b7:	e9 ba f7 ff ff       	jmp    80104e76 <alltraps>

801056bc <vector105>:
801056bc:	6a 00                	push   $0x0
801056be:	6a 69                	push   $0x69
801056c0:	e9 b1 f7 ff ff       	jmp    80104e76 <alltraps>

801056c5 <vector106>:
801056c5:	6a 00                	push   $0x0
801056c7:	6a 6a                	push   $0x6a
801056c9:	e9 a8 f7 ff ff       	jmp    80104e76 <alltraps>

801056ce <vector107>:
801056ce:	6a 00                	push   $0x0
801056d0:	6a 6b                	push   $0x6b
801056d2:	e9 9f f7 ff ff       	jmp    80104e76 <alltraps>

801056d7 <vector108>:
801056d7:	6a 00                	push   $0x0
801056d9:	6a 6c                	push   $0x6c
801056db:	e9 96 f7 ff ff       	jmp    80104e76 <alltraps>

801056e0 <vector109>:
801056e0:	6a 00                	push   $0x0
801056e2:	6a 6d                	push   $0x6d
801056e4:	e9 8d f7 ff ff       	jmp    80104e76 <alltraps>

801056e9 <vector110>:
801056e9:	6a 00                	push   $0x0
801056eb:	6a 6e                	push   $0x6e
801056ed:	e9 84 f7 ff ff       	jmp    80104e76 <alltraps>

801056f2 <vector111>:
801056f2:	6a 00                	push   $0x0
801056f4:	6a 6f                	push   $0x6f
801056f6:	e9 7b f7 ff ff       	jmp    80104e76 <alltraps>

801056fb <vector112>:
801056fb:	6a 00                	push   $0x0
801056fd:	6a 70                	push   $0x70
801056ff:	e9 72 f7 ff ff       	jmp    80104e76 <alltraps>

80105704 <vector113>:
80105704:	6a 00                	push   $0x0
80105706:	6a 71                	push   $0x71
80105708:	e9 69 f7 ff ff       	jmp    80104e76 <alltraps>

8010570d <vector114>:
8010570d:	6a 00                	push   $0x0
8010570f:	6a 72                	push   $0x72
80105711:	e9 60 f7 ff ff       	jmp    80104e76 <alltraps>

80105716 <vector115>:
80105716:	6a 00                	push   $0x0
80105718:	6a 73                	push   $0x73
8010571a:	e9 57 f7 ff ff       	jmp    80104e76 <alltraps>

8010571f <vector116>:
8010571f:	6a 00                	push   $0x0
80105721:	6a 74                	push   $0x74
80105723:	e9 4e f7 ff ff       	jmp    80104e76 <alltraps>

80105728 <vector117>:
80105728:	6a 00                	push   $0x0
8010572a:	6a 75                	push   $0x75
8010572c:	e9 45 f7 ff ff       	jmp    80104e76 <alltraps>

80105731 <vector118>:
80105731:	6a 00                	push   $0x0
80105733:	6a 76                	push   $0x76
80105735:	e9 3c f7 ff ff       	jmp    80104e76 <alltraps>

8010573a <vector119>:
8010573a:	6a 00                	push   $0x0
8010573c:	6a 77                	push   $0x77
8010573e:	e9 33 f7 ff ff       	jmp    80104e76 <alltraps>

80105743 <vector120>:
80105743:	6a 00                	push   $0x0
80105745:	6a 78                	push   $0x78
80105747:	e9 2a f7 ff ff       	jmp    80104e76 <alltraps>

8010574c <vector121>:
8010574c:	6a 00                	push   $0x0
8010574e:	6a 79                	push   $0x79
80105750:	e9 21 f7 ff ff       	jmp    80104e76 <alltraps>

80105755 <vector122>:
80105755:	6a 00                	push   $0x0
80105757:	6a 7a                	push   $0x7a
80105759:	e9 18 f7 ff ff       	jmp    80104e76 <alltraps>

8010575e <vector123>:
8010575e:	6a 00                	push   $0x0
80105760:	6a 7b                	push   $0x7b
80105762:	e9 0f f7 ff ff       	jmp    80104e76 <alltraps>

80105767 <vector124>:
80105767:	6a 00                	push   $0x0
80105769:	6a 7c                	push   $0x7c
8010576b:	e9 06 f7 ff ff       	jmp    80104e76 <alltraps>

80105770 <vector125>:
80105770:	6a 00                	push   $0x0
80105772:	6a 7d                	push   $0x7d
80105774:	e9 fd f6 ff ff       	jmp    80104e76 <alltraps>

80105779 <vector126>:
80105779:	6a 00                	push   $0x0
8010577b:	6a 7e                	push   $0x7e
8010577d:	e9 f4 f6 ff ff       	jmp    80104e76 <alltraps>

80105782 <vector127>:
80105782:	6a 00                	push   $0x0
80105784:	6a 7f                	push   $0x7f
80105786:	e9 eb f6 ff ff       	jmp    80104e76 <alltraps>

8010578b <vector128>:
8010578b:	6a 00                	push   $0x0
8010578d:	68 80 00 00 00       	push   $0x80
80105792:	e9 df f6 ff ff       	jmp    80104e76 <alltraps>

80105797 <vector129>:
80105797:	6a 00                	push   $0x0
80105799:	68 81 00 00 00       	push   $0x81
8010579e:	e9 d3 f6 ff ff       	jmp    80104e76 <alltraps>

801057a3 <vector130>:
801057a3:	6a 00                	push   $0x0
801057a5:	68 82 00 00 00       	push   $0x82
801057aa:	e9 c7 f6 ff ff       	jmp    80104e76 <alltraps>

801057af <vector131>:
801057af:	6a 00                	push   $0x0
801057b1:	68 83 00 00 00       	push   $0x83
801057b6:	e9 bb f6 ff ff       	jmp    80104e76 <alltraps>

801057bb <vector132>:
801057bb:	6a 00                	push   $0x0
801057bd:	68 84 00 00 00       	push   $0x84
801057c2:	e9 af f6 ff ff       	jmp    80104e76 <alltraps>

801057c7 <vector133>:
801057c7:	6a 00                	push   $0x0
801057c9:	68 85 00 00 00       	push   $0x85
801057ce:	e9 a3 f6 ff ff       	jmp    80104e76 <alltraps>

801057d3 <vector134>:
801057d3:	6a 00                	push   $0x0
801057d5:	68 86 00 00 00       	push   $0x86
801057da:	e9 97 f6 ff ff       	jmp    80104e76 <alltraps>

801057df <vector135>:
801057df:	6a 00                	push   $0x0
801057e1:	68 87 00 00 00       	push   $0x87
801057e6:	e9 8b f6 ff ff       	jmp    80104e76 <alltraps>

801057eb <vector136>:
801057eb:	6a 00                	push   $0x0
801057ed:	68 88 00 00 00       	push   $0x88
801057f2:	e9 7f f6 ff ff       	jmp    80104e76 <alltraps>

801057f7 <vector137>:
801057f7:	6a 00                	push   $0x0
801057f9:	68 89 00 00 00       	push   $0x89
801057fe:	e9 73 f6 ff ff       	jmp    80104e76 <alltraps>

80105803 <vector138>:
80105803:	6a 00                	push   $0x0
80105805:	68 8a 00 00 00       	push   $0x8a
8010580a:	e9 67 f6 ff ff       	jmp    80104e76 <alltraps>

8010580f <vector139>:
8010580f:	6a 00                	push   $0x0
80105811:	68 8b 00 00 00       	push   $0x8b
80105816:	e9 5b f6 ff ff       	jmp    80104e76 <alltraps>

8010581b <vector140>:
8010581b:	6a 00                	push   $0x0
8010581d:	68 8c 00 00 00       	push   $0x8c
80105822:	e9 4f f6 ff ff       	jmp    80104e76 <alltraps>

80105827 <vector141>:
80105827:	6a 00                	push   $0x0
80105829:	68 8d 00 00 00       	push   $0x8d
8010582e:	e9 43 f6 ff ff       	jmp    80104e76 <alltraps>

80105833 <vector142>:
80105833:	6a 00                	push   $0x0
80105835:	68 8e 00 00 00       	push   $0x8e
8010583a:	e9 37 f6 ff ff       	jmp    80104e76 <alltraps>

8010583f <vector143>:
8010583f:	6a 00                	push   $0x0
80105841:	68 8f 00 00 00       	push   $0x8f
80105846:	e9 2b f6 ff ff       	jmp    80104e76 <alltraps>

8010584b <vector144>:
8010584b:	6a 00                	push   $0x0
8010584d:	68 90 00 00 00       	push   $0x90
80105852:	e9 1f f6 ff ff       	jmp    80104e76 <alltraps>

80105857 <vector145>:
80105857:	6a 00                	push   $0x0
80105859:	68 91 00 00 00       	push   $0x91
8010585e:	e9 13 f6 ff ff       	jmp    80104e76 <alltraps>

80105863 <vector146>:
80105863:	6a 00                	push   $0x0
80105865:	68 92 00 00 00       	push   $0x92
8010586a:	e9 07 f6 ff ff       	jmp    80104e76 <alltraps>

8010586f <vector147>:
8010586f:	6a 00                	push   $0x0
80105871:	68 93 00 00 00       	push   $0x93
80105876:	e9 fb f5 ff ff       	jmp    80104e76 <alltraps>

8010587b <vector148>:
8010587b:	6a 00                	push   $0x0
8010587d:	68 94 00 00 00       	push   $0x94
80105882:	e9 ef f5 ff ff       	jmp    80104e76 <alltraps>

80105887 <vector149>:
80105887:	6a 00                	push   $0x0
80105889:	68 95 00 00 00       	push   $0x95
8010588e:	e9 e3 f5 ff ff       	jmp    80104e76 <alltraps>

80105893 <vector150>:
80105893:	6a 00                	push   $0x0
80105895:	68 96 00 00 00       	push   $0x96
8010589a:	e9 d7 f5 ff ff       	jmp    80104e76 <alltraps>

8010589f <vector151>:
8010589f:	6a 00                	push   $0x0
801058a1:	68 97 00 00 00       	push   $0x97
801058a6:	e9 cb f5 ff ff       	jmp    80104e76 <alltraps>

801058ab <vector152>:
801058ab:	6a 00                	push   $0x0
801058ad:	68 98 00 00 00       	push   $0x98
801058b2:	e9 bf f5 ff ff       	jmp    80104e76 <alltraps>

801058b7 <vector153>:
801058b7:	6a 00                	push   $0x0
801058b9:	68 99 00 00 00       	push   $0x99
801058be:	e9 b3 f5 ff ff       	jmp    80104e76 <alltraps>

801058c3 <vector154>:
801058c3:	6a 00                	push   $0x0
801058c5:	68 9a 00 00 00       	push   $0x9a
801058ca:	e9 a7 f5 ff ff       	jmp    80104e76 <alltraps>

801058cf <vector155>:
801058cf:	6a 00                	push   $0x0
801058d1:	68 9b 00 00 00       	push   $0x9b
801058d6:	e9 9b f5 ff ff       	jmp    80104e76 <alltraps>

801058db <vector156>:
801058db:	6a 00                	push   $0x0
801058dd:	68 9c 00 00 00       	push   $0x9c
801058e2:	e9 8f f5 ff ff       	jmp    80104e76 <alltraps>

801058e7 <vector157>:
801058e7:	6a 00                	push   $0x0
801058e9:	68 9d 00 00 00       	push   $0x9d
801058ee:	e9 83 f5 ff ff       	jmp    80104e76 <alltraps>

801058f3 <vector158>:
801058f3:	6a 00                	push   $0x0
801058f5:	68 9e 00 00 00       	push   $0x9e
801058fa:	e9 77 f5 ff ff       	jmp    80104e76 <alltraps>

801058ff <vector159>:
801058ff:	6a 00                	push   $0x0
80105901:	68 9f 00 00 00       	push   $0x9f
80105906:	e9 6b f5 ff ff       	jmp    80104e76 <alltraps>

8010590b <vector160>:
8010590b:	6a 00                	push   $0x0
8010590d:	68 a0 00 00 00       	push   $0xa0
80105912:	e9 5f f5 ff ff       	jmp    80104e76 <alltraps>

80105917 <vector161>:
80105917:	6a 00                	push   $0x0
80105919:	68 a1 00 00 00       	push   $0xa1
8010591e:	e9 53 f5 ff ff       	jmp    80104e76 <alltraps>

80105923 <vector162>:
80105923:	6a 00                	push   $0x0
80105925:	68 a2 00 00 00       	push   $0xa2
8010592a:	e9 47 f5 ff ff       	jmp    80104e76 <alltraps>

8010592f <vector163>:
8010592f:	6a 00                	push   $0x0
80105931:	68 a3 00 00 00       	push   $0xa3
80105936:	e9 3b f5 ff ff       	jmp    80104e76 <alltraps>

8010593b <vector164>:
8010593b:	6a 00                	push   $0x0
8010593d:	68 a4 00 00 00       	push   $0xa4
80105942:	e9 2f f5 ff ff       	jmp    80104e76 <alltraps>

80105947 <vector165>:
80105947:	6a 00                	push   $0x0
80105949:	68 a5 00 00 00       	push   $0xa5
8010594e:	e9 23 f5 ff ff       	jmp    80104e76 <alltraps>

80105953 <vector166>:
80105953:	6a 00                	push   $0x0
80105955:	68 a6 00 00 00       	push   $0xa6
8010595a:	e9 17 f5 ff ff       	jmp    80104e76 <alltraps>

8010595f <vector167>:
8010595f:	6a 00                	push   $0x0
80105961:	68 a7 00 00 00       	push   $0xa7
80105966:	e9 0b f5 ff ff       	jmp    80104e76 <alltraps>

8010596b <vector168>:
8010596b:	6a 00                	push   $0x0
8010596d:	68 a8 00 00 00       	push   $0xa8
80105972:	e9 ff f4 ff ff       	jmp    80104e76 <alltraps>

80105977 <vector169>:
80105977:	6a 00                	push   $0x0
80105979:	68 a9 00 00 00       	push   $0xa9
8010597e:	e9 f3 f4 ff ff       	jmp    80104e76 <alltraps>

80105983 <vector170>:
80105983:	6a 00                	push   $0x0
80105985:	68 aa 00 00 00       	push   $0xaa
8010598a:	e9 e7 f4 ff ff       	jmp    80104e76 <alltraps>

8010598f <vector171>:
8010598f:	6a 00                	push   $0x0
80105991:	68 ab 00 00 00       	push   $0xab
80105996:	e9 db f4 ff ff       	jmp    80104e76 <alltraps>

8010599b <vector172>:
8010599b:	6a 00                	push   $0x0
8010599d:	68 ac 00 00 00       	push   $0xac
801059a2:	e9 cf f4 ff ff       	jmp    80104e76 <alltraps>

801059a7 <vector173>:
801059a7:	6a 00                	push   $0x0
801059a9:	68 ad 00 00 00       	push   $0xad
801059ae:	e9 c3 f4 ff ff       	jmp    80104e76 <alltraps>

801059b3 <vector174>:
801059b3:	6a 00                	push   $0x0
801059b5:	68 ae 00 00 00       	push   $0xae
801059ba:	e9 b7 f4 ff ff       	jmp    80104e76 <alltraps>

801059bf <vector175>:
801059bf:	6a 00                	push   $0x0
801059c1:	68 af 00 00 00       	push   $0xaf
801059c6:	e9 ab f4 ff ff       	jmp    80104e76 <alltraps>

801059cb <vector176>:
801059cb:	6a 00                	push   $0x0
801059cd:	68 b0 00 00 00       	push   $0xb0
801059d2:	e9 9f f4 ff ff       	jmp    80104e76 <alltraps>

801059d7 <vector177>:
801059d7:	6a 00                	push   $0x0
801059d9:	68 b1 00 00 00       	push   $0xb1
801059de:	e9 93 f4 ff ff       	jmp    80104e76 <alltraps>

801059e3 <vector178>:
801059e3:	6a 00                	push   $0x0
801059e5:	68 b2 00 00 00       	push   $0xb2
801059ea:	e9 87 f4 ff ff       	jmp    80104e76 <alltraps>

801059ef <vector179>:
801059ef:	6a 00                	push   $0x0
801059f1:	68 b3 00 00 00       	push   $0xb3
801059f6:	e9 7b f4 ff ff       	jmp    80104e76 <alltraps>

801059fb <vector180>:
801059fb:	6a 00                	push   $0x0
801059fd:	68 b4 00 00 00       	push   $0xb4
80105a02:	e9 6f f4 ff ff       	jmp    80104e76 <alltraps>

80105a07 <vector181>:
80105a07:	6a 00                	push   $0x0
80105a09:	68 b5 00 00 00       	push   $0xb5
80105a0e:	e9 63 f4 ff ff       	jmp    80104e76 <alltraps>

80105a13 <vector182>:
80105a13:	6a 00                	push   $0x0
80105a15:	68 b6 00 00 00       	push   $0xb6
80105a1a:	e9 57 f4 ff ff       	jmp    80104e76 <alltraps>

80105a1f <vector183>:
80105a1f:	6a 00                	push   $0x0
80105a21:	68 b7 00 00 00       	push   $0xb7
80105a26:	e9 4b f4 ff ff       	jmp    80104e76 <alltraps>

80105a2b <vector184>:
80105a2b:	6a 00                	push   $0x0
80105a2d:	68 b8 00 00 00       	push   $0xb8
80105a32:	e9 3f f4 ff ff       	jmp    80104e76 <alltraps>

80105a37 <vector185>:
80105a37:	6a 00                	push   $0x0
80105a39:	68 b9 00 00 00       	push   $0xb9
80105a3e:	e9 33 f4 ff ff       	jmp    80104e76 <alltraps>

80105a43 <vector186>:
80105a43:	6a 00                	push   $0x0
80105a45:	68 ba 00 00 00       	push   $0xba
80105a4a:	e9 27 f4 ff ff       	jmp    80104e76 <alltraps>

80105a4f <vector187>:
80105a4f:	6a 00                	push   $0x0
80105a51:	68 bb 00 00 00       	push   $0xbb
80105a56:	e9 1b f4 ff ff       	jmp    80104e76 <alltraps>

80105a5b <vector188>:
80105a5b:	6a 00                	push   $0x0
80105a5d:	68 bc 00 00 00       	push   $0xbc
80105a62:	e9 0f f4 ff ff       	jmp    80104e76 <alltraps>

80105a67 <vector189>:
80105a67:	6a 00                	push   $0x0
80105a69:	68 bd 00 00 00       	push   $0xbd
80105a6e:	e9 03 f4 ff ff       	jmp    80104e76 <alltraps>

80105a73 <vector190>:
80105a73:	6a 00                	push   $0x0
80105a75:	68 be 00 00 00       	push   $0xbe
80105a7a:	e9 f7 f3 ff ff       	jmp    80104e76 <alltraps>

80105a7f <vector191>:
80105a7f:	6a 00                	push   $0x0
80105a81:	68 bf 00 00 00       	push   $0xbf
80105a86:	e9 eb f3 ff ff       	jmp    80104e76 <alltraps>

80105a8b <vector192>:
80105a8b:	6a 00                	push   $0x0
80105a8d:	68 c0 00 00 00       	push   $0xc0
80105a92:	e9 df f3 ff ff       	jmp    80104e76 <alltraps>

80105a97 <vector193>:
80105a97:	6a 00                	push   $0x0
80105a99:	68 c1 00 00 00       	push   $0xc1
80105a9e:	e9 d3 f3 ff ff       	jmp    80104e76 <alltraps>

80105aa3 <vector194>:
80105aa3:	6a 00                	push   $0x0
80105aa5:	68 c2 00 00 00       	push   $0xc2
80105aaa:	e9 c7 f3 ff ff       	jmp    80104e76 <alltraps>

80105aaf <vector195>:
80105aaf:	6a 00                	push   $0x0
80105ab1:	68 c3 00 00 00       	push   $0xc3
80105ab6:	e9 bb f3 ff ff       	jmp    80104e76 <alltraps>

80105abb <vector196>:
80105abb:	6a 00                	push   $0x0
80105abd:	68 c4 00 00 00       	push   $0xc4
80105ac2:	e9 af f3 ff ff       	jmp    80104e76 <alltraps>

80105ac7 <vector197>:
80105ac7:	6a 00                	push   $0x0
80105ac9:	68 c5 00 00 00       	push   $0xc5
80105ace:	e9 a3 f3 ff ff       	jmp    80104e76 <alltraps>

80105ad3 <vector198>:
80105ad3:	6a 00                	push   $0x0
80105ad5:	68 c6 00 00 00       	push   $0xc6
80105ada:	e9 97 f3 ff ff       	jmp    80104e76 <alltraps>

80105adf <vector199>:
80105adf:	6a 00                	push   $0x0
80105ae1:	68 c7 00 00 00       	push   $0xc7
80105ae6:	e9 8b f3 ff ff       	jmp    80104e76 <alltraps>

80105aeb <vector200>:
80105aeb:	6a 00                	push   $0x0
80105aed:	68 c8 00 00 00       	push   $0xc8
80105af2:	e9 7f f3 ff ff       	jmp    80104e76 <alltraps>

80105af7 <vector201>:
80105af7:	6a 00                	push   $0x0
80105af9:	68 c9 00 00 00       	push   $0xc9
80105afe:	e9 73 f3 ff ff       	jmp    80104e76 <alltraps>

80105b03 <vector202>:
80105b03:	6a 00                	push   $0x0
80105b05:	68 ca 00 00 00       	push   $0xca
80105b0a:	e9 67 f3 ff ff       	jmp    80104e76 <alltraps>

80105b0f <vector203>:
80105b0f:	6a 00                	push   $0x0
80105b11:	68 cb 00 00 00       	push   $0xcb
80105b16:	e9 5b f3 ff ff       	jmp    80104e76 <alltraps>

80105b1b <vector204>:
80105b1b:	6a 00                	push   $0x0
80105b1d:	68 cc 00 00 00       	push   $0xcc
80105b22:	e9 4f f3 ff ff       	jmp    80104e76 <alltraps>

80105b27 <vector205>:
80105b27:	6a 00                	push   $0x0
80105b29:	68 cd 00 00 00       	push   $0xcd
80105b2e:	e9 43 f3 ff ff       	jmp    80104e76 <alltraps>

80105b33 <vector206>:
80105b33:	6a 00                	push   $0x0
80105b35:	68 ce 00 00 00       	push   $0xce
80105b3a:	e9 37 f3 ff ff       	jmp    80104e76 <alltraps>

80105b3f <vector207>:
80105b3f:	6a 00                	push   $0x0
80105b41:	68 cf 00 00 00       	push   $0xcf
80105b46:	e9 2b f3 ff ff       	jmp    80104e76 <alltraps>

80105b4b <vector208>:
80105b4b:	6a 00                	push   $0x0
80105b4d:	68 d0 00 00 00       	push   $0xd0
80105b52:	e9 1f f3 ff ff       	jmp    80104e76 <alltraps>

80105b57 <vector209>:
80105b57:	6a 00                	push   $0x0
80105b59:	68 d1 00 00 00       	push   $0xd1
80105b5e:	e9 13 f3 ff ff       	jmp    80104e76 <alltraps>

80105b63 <vector210>:
80105b63:	6a 00                	push   $0x0
80105b65:	68 d2 00 00 00       	push   $0xd2
80105b6a:	e9 07 f3 ff ff       	jmp    80104e76 <alltraps>

80105b6f <vector211>:
80105b6f:	6a 00                	push   $0x0
80105b71:	68 d3 00 00 00       	push   $0xd3
80105b76:	e9 fb f2 ff ff       	jmp    80104e76 <alltraps>

80105b7b <vector212>:
80105b7b:	6a 00                	push   $0x0
80105b7d:	68 d4 00 00 00       	push   $0xd4
80105b82:	e9 ef f2 ff ff       	jmp    80104e76 <alltraps>

80105b87 <vector213>:
80105b87:	6a 00                	push   $0x0
80105b89:	68 d5 00 00 00       	push   $0xd5
80105b8e:	e9 e3 f2 ff ff       	jmp    80104e76 <alltraps>

80105b93 <vector214>:
80105b93:	6a 00                	push   $0x0
80105b95:	68 d6 00 00 00       	push   $0xd6
80105b9a:	e9 d7 f2 ff ff       	jmp    80104e76 <alltraps>

80105b9f <vector215>:
80105b9f:	6a 00                	push   $0x0
80105ba1:	68 d7 00 00 00       	push   $0xd7
80105ba6:	e9 cb f2 ff ff       	jmp    80104e76 <alltraps>

80105bab <vector216>:
80105bab:	6a 00                	push   $0x0
80105bad:	68 d8 00 00 00       	push   $0xd8
80105bb2:	e9 bf f2 ff ff       	jmp    80104e76 <alltraps>

80105bb7 <vector217>:
80105bb7:	6a 00                	push   $0x0
80105bb9:	68 d9 00 00 00       	push   $0xd9
80105bbe:	e9 b3 f2 ff ff       	jmp    80104e76 <alltraps>

80105bc3 <vector218>:
80105bc3:	6a 00                	push   $0x0
80105bc5:	68 da 00 00 00       	push   $0xda
80105bca:	e9 a7 f2 ff ff       	jmp    80104e76 <alltraps>

80105bcf <vector219>:
80105bcf:	6a 00                	push   $0x0
80105bd1:	68 db 00 00 00       	push   $0xdb
80105bd6:	e9 9b f2 ff ff       	jmp    80104e76 <alltraps>

80105bdb <vector220>:
80105bdb:	6a 00                	push   $0x0
80105bdd:	68 dc 00 00 00       	push   $0xdc
80105be2:	e9 8f f2 ff ff       	jmp    80104e76 <alltraps>

80105be7 <vector221>:
80105be7:	6a 00                	push   $0x0
80105be9:	68 dd 00 00 00       	push   $0xdd
80105bee:	e9 83 f2 ff ff       	jmp    80104e76 <alltraps>

80105bf3 <vector222>:
80105bf3:	6a 00                	push   $0x0
80105bf5:	68 de 00 00 00       	push   $0xde
80105bfa:	e9 77 f2 ff ff       	jmp    80104e76 <alltraps>

80105bff <vector223>:
80105bff:	6a 00                	push   $0x0
80105c01:	68 df 00 00 00       	push   $0xdf
80105c06:	e9 6b f2 ff ff       	jmp    80104e76 <alltraps>

80105c0b <vector224>:
80105c0b:	6a 00                	push   $0x0
80105c0d:	68 e0 00 00 00       	push   $0xe0
80105c12:	e9 5f f2 ff ff       	jmp    80104e76 <alltraps>

80105c17 <vector225>:
80105c17:	6a 00                	push   $0x0
80105c19:	68 e1 00 00 00       	push   $0xe1
80105c1e:	e9 53 f2 ff ff       	jmp    80104e76 <alltraps>

80105c23 <vector226>:
80105c23:	6a 00                	push   $0x0
80105c25:	68 e2 00 00 00       	push   $0xe2
80105c2a:	e9 47 f2 ff ff       	jmp    80104e76 <alltraps>

80105c2f <vector227>:
80105c2f:	6a 00                	push   $0x0
80105c31:	68 e3 00 00 00       	push   $0xe3
80105c36:	e9 3b f2 ff ff       	jmp    80104e76 <alltraps>

80105c3b <vector228>:
80105c3b:	6a 00                	push   $0x0
80105c3d:	68 e4 00 00 00       	push   $0xe4
80105c42:	e9 2f f2 ff ff       	jmp    80104e76 <alltraps>

80105c47 <vector229>:
80105c47:	6a 00                	push   $0x0
80105c49:	68 e5 00 00 00       	push   $0xe5
80105c4e:	e9 23 f2 ff ff       	jmp    80104e76 <alltraps>

80105c53 <vector230>:
80105c53:	6a 00                	push   $0x0
80105c55:	68 e6 00 00 00       	push   $0xe6
80105c5a:	e9 17 f2 ff ff       	jmp    80104e76 <alltraps>

80105c5f <vector231>:
80105c5f:	6a 00                	push   $0x0
80105c61:	68 e7 00 00 00       	push   $0xe7
80105c66:	e9 0b f2 ff ff       	jmp    80104e76 <alltraps>

80105c6b <vector232>:
80105c6b:	6a 00                	push   $0x0
80105c6d:	68 e8 00 00 00       	push   $0xe8
80105c72:	e9 ff f1 ff ff       	jmp    80104e76 <alltraps>

80105c77 <vector233>:
80105c77:	6a 00                	push   $0x0
80105c79:	68 e9 00 00 00       	push   $0xe9
80105c7e:	e9 f3 f1 ff ff       	jmp    80104e76 <alltraps>

80105c83 <vector234>:
80105c83:	6a 00                	push   $0x0
80105c85:	68 ea 00 00 00       	push   $0xea
80105c8a:	e9 e7 f1 ff ff       	jmp    80104e76 <alltraps>

80105c8f <vector235>:
80105c8f:	6a 00                	push   $0x0
80105c91:	68 eb 00 00 00       	push   $0xeb
80105c96:	e9 db f1 ff ff       	jmp    80104e76 <alltraps>

80105c9b <vector236>:
80105c9b:	6a 00                	push   $0x0
80105c9d:	68 ec 00 00 00       	push   $0xec
80105ca2:	e9 cf f1 ff ff       	jmp    80104e76 <alltraps>

80105ca7 <vector237>:
80105ca7:	6a 00                	push   $0x0
80105ca9:	68 ed 00 00 00       	push   $0xed
80105cae:	e9 c3 f1 ff ff       	jmp    80104e76 <alltraps>

80105cb3 <vector238>:
80105cb3:	6a 00                	push   $0x0
80105cb5:	68 ee 00 00 00       	push   $0xee
80105cba:	e9 b7 f1 ff ff       	jmp    80104e76 <alltraps>

80105cbf <vector239>:
80105cbf:	6a 00                	push   $0x0
80105cc1:	68 ef 00 00 00       	push   $0xef
80105cc6:	e9 ab f1 ff ff       	jmp    80104e76 <alltraps>

80105ccb <vector240>:
80105ccb:	6a 00                	push   $0x0
80105ccd:	68 f0 00 00 00       	push   $0xf0
80105cd2:	e9 9f f1 ff ff       	jmp    80104e76 <alltraps>

80105cd7 <vector241>:
80105cd7:	6a 00                	push   $0x0
80105cd9:	68 f1 00 00 00       	push   $0xf1
80105cde:	e9 93 f1 ff ff       	jmp    80104e76 <alltraps>

80105ce3 <vector242>:
80105ce3:	6a 00                	push   $0x0
80105ce5:	68 f2 00 00 00       	push   $0xf2
80105cea:	e9 87 f1 ff ff       	jmp    80104e76 <alltraps>

80105cef <vector243>:
80105cef:	6a 00                	push   $0x0
80105cf1:	68 f3 00 00 00       	push   $0xf3
80105cf6:	e9 7b f1 ff ff       	jmp    80104e76 <alltraps>

80105cfb <vector244>:
80105cfb:	6a 00                	push   $0x0
80105cfd:	68 f4 00 00 00       	push   $0xf4
80105d02:	e9 6f f1 ff ff       	jmp    80104e76 <alltraps>

80105d07 <vector245>:
80105d07:	6a 00                	push   $0x0
80105d09:	68 f5 00 00 00       	push   $0xf5
80105d0e:	e9 63 f1 ff ff       	jmp    80104e76 <alltraps>

80105d13 <vector246>:
80105d13:	6a 00                	push   $0x0
80105d15:	68 f6 00 00 00       	push   $0xf6
80105d1a:	e9 57 f1 ff ff       	jmp    80104e76 <alltraps>

80105d1f <vector247>:
80105d1f:	6a 00                	push   $0x0
80105d21:	68 f7 00 00 00       	push   $0xf7
80105d26:	e9 4b f1 ff ff       	jmp    80104e76 <alltraps>

80105d2b <vector248>:
80105d2b:	6a 00                	push   $0x0
80105d2d:	68 f8 00 00 00       	push   $0xf8
80105d32:	e9 3f f1 ff ff       	jmp    80104e76 <alltraps>

80105d37 <vector249>:
80105d37:	6a 00                	push   $0x0
80105d39:	68 f9 00 00 00       	push   $0xf9
80105d3e:	e9 33 f1 ff ff       	jmp    80104e76 <alltraps>

80105d43 <vector250>:
80105d43:	6a 00                	push   $0x0
80105d45:	68 fa 00 00 00       	push   $0xfa
80105d4a:	e9 27 f1 ff ff       	jmp    80104e76 <alltraps>

80105d4f <vector251>:
80105d4f:	6a 00                	push   $0x0
80105d51:	68 fb 00 00 00       	push   $0xfb
80105d56:	e9 1b f1 ff ff       	jmp    80104e76 <alltraps>

80105d5b <vector252>:
80105d5b:	6a 00                	push   $0x0
80105d5d:	68 fc 00 00 00       	push   $0xfc
80105d62:	e9 0f f1 ff ff       	jmp    80104e76 <alltraps>

80105d67 <vector253>:
80105d67:	6a 00                	push   $0x0
80105d69:	68 fd 00 00 00       	push   $0xfd
80105d6e:	e9 03 f1 ff ff       	jmp    80104e76 <alltraps>

80105d73 <vector254>:
80105d73:	6a 00                	push   $0x0
80105d75:	68 fe 00 00 00       	push   $0xfe
80105d7a:	e9 f7 f0 ff ff       	jmp    80104e76 <alltraps>

80105d7f <vector255>:
80105d7f:	6a 00                	push   $0x0
80105d81:	68 ff 00 00 00       	push   $0xff
80105d86:	e9 eb f0 ff ff       	jmp    80104e76 <alltraps>

80105d8b <walkpgdir>:
80105d8b:	55                   	push   %ebp
80105d8c:	89 e5                	mov    %esp,%ebp
80105d8e:	57                   	push   %edi
80105d8f:	56                   	push   %esi
80105d90:	53                   	push   %ebx
80105d91:	83 ec 0c             	sub    $0xc,%esp
80105d94:	89 d3                	mov    %edx,%ebx
80105d96:	c1 ea 16             	shr    $0x16,%edx
80105d99:	8d 3c 90             	lea    (%eax,%edx,4),%edi
80105d9c:	8b 37                	mov    (%edi),%esi
80105d9e:	f7 c6 01 00 00 00    	test   $0x1,%esi
80105da4:	74 20                	je     80105dc6 <walkpgdir+0x3b>
80105da6:	81 e6 00 f0 ff ff    	and    $0xfffff000,%esi
80105dac:	81 c6 00 00 00 80    	add    $0x80000000,%esi
80105db2:	c1 eb 0c             	shr    $0xc,%ebx
80105db5:	81 e3 ff 03 00 00    	and    $0x3ff,%ebx
80105dbb:	8d 04 9e             	lea    (%esi,%ebx,4),%eax
80105dbe:	8d 65 f4             	lea    -0xc(%ebp),%esp
80105dc1:	5b                   	pop    %ebx
80105dc2:	5e                   	pop    %esi
80105dc3:	5f                   	pop    %edi
80105dc4:	5d                   	pop    %ebp
80105dc5:	c3                   	ret    
80105dc6:	85 c9                	test   %ecx,%ecx
80105dc8:	74 2b                	je     80105df5 <walkpgdir+0x6a>
80105dca:	e8 b2 c3 ff ff       	call   80102181 <kalloc>
80105dcf:	89 c6                	mov    %eax,%esi
80105dd1:	85 c0                	test   %eax,%eax
80105dd3:	74 20                	je     80105df5 <walkpgdir+0x6a>
80105dd5:	83 ec 04             	sub    $0x4,%esp
80105dd8:	68 00 10 00 00       	push   $0x1000
80105ddd:	6a 00                	push   $0x0
80105ddf:	50                   	push   %eax
80105de0:	e8 c0 df ff ff       	call   80103da5 <memset>
80105de5:	8d 86 00 00 00 80    	lea    -0x80000000(%esi),%eax
80105deb:	83 c8 07             	or     $0x7,%eax
80105dee:	89 07                	mov    %eax,(%edi)
80105df0:	83 c4 10             	add    $0x10,%esp
80105df3:	eb bd                	jmp    80105db2 <walkpgdir+0x27>
80105df5:	b8 00 00 00 00       	mov    $0x0,%eax
80105dfa:	eb c2                	jmp    80105dbe <walkpgdir+0x33>

80105dfc <mappages>:
80105dfc:	55                   	push   %ebp
80105dfd:	89 e5                	mov    %esp,%ebp
80105dff:	57                   	push   %edi
80105e00:	56                   	push   %esi
80105e01:	53                   	push   %ebx
80105e02:	83 ec 1c             	sub    $0x1c,%esp
80105e05:	89 45 e4             	mov    %eax,-0x1c(%ebp)
80105e08:	8b 75 08             	mov    0x8(%ebp),%esi
80105e0b:	89 d3                	mov    %edx,%ebx
80105e0d:	81 e3 00 f0 ff ff    	and    $0xfffff000,%ebx
80105e13:	8d 7c 0a ff          	lea    -0x1(%edx,%ecx,1),%edi
80105e17:	81 e7 00 f0 ff ff    	and    $0xfffff000,%edi
80105e1d:	b9 01 00 00 00       	mov    $0x1,%ecx
80105e22:	89 da                	mov    %ebx,%edx
80105e24:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80105e27:	e8 5f ff ff ff       	call   80105d8b <walkpgdir>
80105e2c:	85 c0                	test   %eax,%eax
80105e2e:	74 2e                	je     80105e5e <mappages+0x62>
80105e30:	f6 00 01             	testb  $0x1,(%eax)
80105e33:	75 1c                	jne    80105e51 <mappages+0x55>
80105e35:	89 f2                	mov    %esi,%edx
80105e37:	0b 55 0c             	or     0xc(%ebp),%edx
80105e3a:	83 ca 01             	or     $0x1,%edx
80105e3d:	89 10                	mov    %edx,(%eax)
80105e3f:	39 fb                	cmp    %edi,%ebx
80105e41:	74 28                	je     80105e6b <mappages+0x6f>
80105e43:	81 c3 00 10 00 00    	add    $0x1000,%ebx
80105e49:	81 c6 00 10 00 00    	add    $0x1000,%esi
80105e4f:	eb cc                	jmp    80105e1d <mappages+0x21>
80105e51:	83 ec 0c             	sub    $0xc,%esp
80105e54:	68 8c 70 10 80       	push   $0x8010708c
80105e59:	e8 fe a4 ff ff       	call   8010035c <panic>
80105e5e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80105e63:	8d 65 f4             	lea    -0xc(%ebp),%esp
80105e66:	5b                   	pop    %ebx
80105e67:	5e                   	pop    %esi
80105e68:	5f                   	pop    %edi
80105e69:	5d                   	pop    %ebp
80105e6a:	c3                   	ret    
80105e6b:	b8 00 00 00 00       	mov    $0x0,%eax
80105e70:	eb f1                	jmp    80105e63 <mappages+0x67>

80105e72 <seginit>:
80105e72:	f3 0f 1e fb          	endbr32 
80105e76:	55                   	push   %ebp
80105e77:	89 e5                	mov    %esp,%ebp
80105e79:	57                   	push   %edi
80105e7a:	56                   	push   %esi
80105e7b:	53                   	push   %ebx
80105e7c:	83 ec 1c             	sub    $0x1c,%esp
80105e7f:	e8 5a d4 ff ff       	call   801032de <cpuid>
80105e84:	69 f8 b0 00 00 00    	imul   $0xb0,%eax,%edi
80105e8a:	66 c7 87 18 18 11 80 	movw   $0xffff,-0x7feee7e8(%edi)
80105e91:	ff ff 
80105e93:	66 c7 87 1a 18 11 80 	movw   $0x0,-0x7feee7e6(%edi)
80105e9a:	00 00 
80105e9c:	c6 87 1c 18 11 80 00 	movb   $0x0,-0x7feee7e4(%edi)
80105ea3:	0f b6 8f 1d 18 11 80 	movzbl -0x7feee7e3(%edi),%ecx
80105eaa:	83 e1 f0             	and    $0xfffffff0,%ecx
80105ead:	89 ce                	mov    %ecx,%esi
80105eaf:	83 ce 0a             	or     $0xa,%esi
80105eb2:	89 f2                	mov    %esi,%edx
80105eb4:	88 97 1d 18 11 80    	mov    %dl,-0x7feee7e3(%edi)
80105eba:	83 c9 1a             	or     $0x1a,%ecx
80105ebd:	88 8f 1d 18 11 80    	mov    %cl,-0x7feee7e3(%edi)
80105ec3:	83 e1 9f             	and    $0xffffff9f,%ecx
80105ec6:	88 8f 1d 18 11 80    	mov    %cl,-0x7feee7e3(%edi)
80105ecc:	83 c9 80             	or     $0xffffff80,%ecx
80105ecf:	88 8f 1d 18 11 80    	mov    %cl,-0x7feee7e3(%edi)
80105ed5:	0f b6 8f 1e 18 11 80 	movzbl -0x7feee7e2(%edi),%ecx
80105edc:	83 c9 0f             	or     $0xf,%ecx
80105edf:	88 8f 1e 18 11 80    	mov    %cl,-0x7feee7e2(%edi)
80105ee5:	89 ce                	mov    %ecx,%esi
80105ee7:	83 e6 ef             	and    $0xffffffef,%esi
80105eea:	89 f2                	mov    %esi,%edx
80105eec:	88 97 1e 18 11 80    	mov    %dl,-0x7feee7e2(%edi)
80105ef2:	83 e1 cf             	and    $0xffffffcf,%ecx
80105ef5:	88 8f 1e 18 11 80    	mov    %cl,-0x7feee7e2(%edi)
80105efb:	89 ce                	mov    %ecx,%esi
80105efd:	83 ce 40             	or     $0x40,%esi
80105f00:	89 f2                	mov    %esi,%edx
80105f02:	88 97 1e 18 11 80    	mov    %dl,-0x7feee7e2(%edi)
80105f08:	83 c9 c0             	or     $0xffffffc0,%ecx
80105f0b:	88 8f 1e 18 11 80    	mov    %cl,-0x7feee7e2(%edi)
80105f11:	c6 87 1f 18 11 80 00 	movb   $0x0,-0x7feee7e1(%edi)
80105f18:	66 c7 87 20 18 11 80 	movw   $0xffff,-0x7feee7e0(%edi)
80105f1f:	ff ff 
80105f21:	66 c7 87 22 18 11 80 	movw   $0x0,-0x7feee7de(%edi)
80105f28:	00 00 
80105f2a:	c6 87 24 18 11 80 00 	movb   $0x0,-0x7feee7dc(%edi)
80105f31:	0f b6 8f 25 18 11 80 	movzbl -0x7feee7db(%edi),%ecx
80105f38:	83 e1 f0             	and    $0xfffffff0,%ecx
80105f3b:	89 ce                	mov    %ecx,%esi
80105f3d:	83 ce 02             	or     $0x2,%esi
80105f40:	89 f2                	mov    %esi,%edx
80105f42:	88 97 25 18 11 80    	mov    %dl,-0x7feee7db(%edi)
80105f48:	83 c9 12             	or     $0x12,%ecx
80105f4b:	88 8f 25 18 11 80    	mov    %cl,-0x7feee7db(%edi)
80105f51:	83 e1 9f             	and    $0xffffff9f,%ecx
80105f54:	88 8f 25 18 11 80    	mov    %cl,-0x7feee7db(%edi)
80105f5a:	83 c9 80             	or     $0xffffff80,%ecx
80105f5d:	88 8f 25 18 11 80    	mov    %cl,-0x7feee7db(%edi)
80105f63:	0f b6 8f 26 18 11 80 	movzbl -0x7feee7da(%edi),%ecx
80105f6a:	83 c9 0f             	or     $0xf,%ecx
80105f6d:	88 8f 26 18 11 80    	mov    %cl,-0x7feee7da(%edi)
80105f73:	89 ce                	mov    %ecx,%esi
80105f75:	83 e6 ef             	and    $0xffffffef,%esi
80105f78:	89 f2                	mov    %esi,%edx
80105f7a:	88 97 26 18 11 80    	mov    %dl,-0x7feee7da(%edi)
80105f80:	83 e1 cf             	and    $0xffffffcf,%ecx
80105f83:	88 8f 26 18 11 80    	mov    %cl,-0x7feee7da(%edi)
80105f89:	89 ce                	mov    %ecx,%esi
80105f8b:	83 ce 40             	or     $0x40,%esi
80105f8e:	89 f2                	mov    %esi,%edx
80105f90:	88 97 26 18 11 80    	mov    %dl,-0x7feee7da(%edi)
80105f96:	83 c9 c0             	or     $0xffffffc0,%ecx
80105f99:	88 8f 26 18 11 80    	mov    %cl,-0x7feee7da(%edi)
80105f9f:	c6 87 27 18 11 80 00 	movb   $0x0,-0x7feee7d9(%edi)
80105fa6:	66 c7 87 28 18 11 80 	movw   $0xffff,-0x7feee7d8(%edi)
80105fad:	ff ff 
80105faf:	66 c7 87 2a 18 11 80 	movw   $0x0,-0x7feee7d6(%edi)
80105fb6:	00 00 
80105fb8:	c6 87 2c 18 11 80 00 	movb   $0x0,-0x7feee7d4(%edi)
80105fbf:	0f b6 9f 2d 18 11 80 	movzbl -0x7feee7d3(%edi),%ebx
80105fc6:	83 e3 f0             	and    $0xfffffff0,%ebx
80105fc9:	89 de                	mov    %ebx,%esi
80105fcb:	83 ce 0a             	or     $0xa,%esi
80105fce:	89 f2                	mov    %esi,%edx
80105fd0:	88 97 2d 18 11 80    	mov    %dl,-0x7feee7d3(%edi)
80105fd6:	89 de                	mov    %ebx,%esi
80105fd8:	83 ce 1a             	or     $0x1a,%esi
80105fdb:	89 f2                	mov    %esi,%edx
80105fdd:	88 97 2d 18 11 80    	mov    %dl,-0x7feee7d3(%edi)
80105fe3:	83 cb 7a             	or     $0x7a,%ebx
80105fe6:	88 9f 2d 18 11 80    	mov    %bl,-0x7feee7d3(%edi)
80105fec:	c6 87 2d 18 11 80 fa 	movb   $0xfa,-0x7feee7d3(%edi)
80105ff3:	0f b6 9f 2e 18 11 80 	movzbl -0x7feee7d2(%edi),%ebx
80105ffa:	83 cb 0f             	or     $0xf,%ebx
80105ffd:	88 9f 2e 18 11 80    	mov    %bl,-0x7feee7d2(%edi)
80106003:	89 de                	mov    %ebx,%esi
80106005:	83 e6 ef             	and    $0xffffffef,%esi
80106008:	89 f2                	mov    %esi,%edx
8010600a:	88 97 2e 18 11 80    	mov    %dl,-0x7feee7d2(%edi)
80106010:	83 e3 cf             	and    $0xffffffcf,%ebx
80106013:	88 9f 2e 18 11 80    	mov    %bl,-0x7feee7d2(%edi)
80106019:	89 de                	mov    %ebx,%esi
8010601b:	83 ce 40             	or     $0x40,%esi
8010601e:	89 f2                	mov    %esi,%edx
80106020:	88 97 2e 18 11 80    	mov    %dl,-0x7feee7d2(%edi)
80106026:	83 cb c0             	or     $0xffffffc0,%ebx
80106029:	88 9f 2e 18 11 80    	mov    %bl,-0x7feee7d2(%edi)
8010602f:	c6 87 2f 18 11 80 00 	movb   $0x0,-0x7feee7d1(%edi)
80106036:	66 c7 87 30 18 11 80 	movw   $0xffff,-0x7feee7d0(%edi)
8010603d:	ff ff 
8010603f:	66 c7 87 32 18 11 80 	movw   $0x0,-0x7feee7ce(%edi)
80106046:	00 00 
80106048:	c6 87 34 18 11 80 00 	movb   $0x0,-0x7feee7cc(%edi)
8010604f:	0f b6 9f 35 18 11 80 	movzbl -0x7feee7cb(%edi),%ebx
80106056:	83 e3 f0             	and    $0xfffffff0,%ebx
80106059:	89 de                	mov    %ebx,%esi
8010605b:	83 ce 02             	or     $0x2,%esi
8010605e:	89 f2                	mov    %esi,%edx
80106060:	88 97 35 18 11 80    	mov    %dl,-0x7feee7cb(%edi)
80106066:	89 de                	mov    %ebx,%esi
80106068:	83 ce 12             	or     $0x12,%esi
8010606b:	89 f2                	mov    %esi,%edx
8010606d:	88 97 35 18 11 80    	mov    %dl,-0x7feee7cb(%edi)
80106073:	83 cb 72             	or     $0x72,%ebx
80106076:	88 9f 35 18 11 80    	mov    %bl,-0x7feee7cb(%edi)
8010607c:	c6 87 35 18 11 80 f2 	movb   $0xf2,-0x7feee7cb(%edi)
80106083:	0f b6 9f 36 18 11 80 	movzbl -0x7feee7ca(%edi),%ebx
8010608a:	83 cb 0f             	or     $0xf,%ebx
8010608d:	88 9f 36 18 11 80    	mov    %bl,-0x7feee7ca(%edi)
80106093:	89 de                	mov    %ebx,%esi
80106095:	83 e6 ef             	and    $0xffffffef,%esi
80106098:	89 f2                	mov    %esi,%edx
8010609a:	88 97 36 18 11 80    	mov    %dl,-0x7feee7ca(%edi)
801060a0:	83 e3 cf             	and    $0xffffffcf,%ebx
801060a3:	88 9f 36 18 11 80    	mov    %bl,-0x7feee7ca(%edi)
801060a9:	89 de                	mov    %ebx,%esi
801060ab:	83 ce 40             	or     $0x40,%esi
801060ae:	89 f2                	mov    %esi,%edx
801060b0:	88 97 36 18 11 80    	mov    %dl,-0x7feee7ca(%edi)
801060b6:	83 cb c0             	or     $0xffffffc0,%ebx
801060b9:	88 9f 36 18 11 80    	mov    %bl,-0x7feee7ca(%edi)
801060bf:	c6 87 37 18 11 80 00 	movb   $0x0,-0x7feee7c9(%edi)
801060c6:	8d 97 10 18 11 80    	lea    -0x7feee7f0(%edi),%edx
801060cc:	66 c7 45 e2 2f 00    	movw   $0x2f,-0x1e(%ebp)
801060d2:	66 89 55 e4          	mov    %dx,-0x1c(%ebp)
801060d6:	c1 ea 10             	shr    $0x10,%edx
801060d9:	66 89 55 e6          	mov    %dx,-0x1a(%ebp)
801060dd:	8d 45 e2             	lea    -0x1e(%ebp),%eax
801060e0:	0f 01 10             	lgdtl  (%eax)
801060e3:	83 c4 1c             	add    $0x1c,%esp
801060e6:	5b                   	pop    %ebx
801060e7:	5e                   	pop    %esi
801060e8:	5f                   	pop    %edi
801060e9:	5d                   	pop    %ebp
801060ea:	c3                   	ret    

801060eb <switchkvm>:
801060eb:	f3 0f 1e fb          	endbr32 
801060ef:	a1 c4 44 11 80       	mov    0x801144c4,%eax
801060f4:	05 00 00 00 80       	add    $0x80000000,%eax
801060f9:	0f 22 d8             	mov    %eax,%cr3
801060fc:	c3                   	ret    

801060fd <switchuvm>:
801060fd:	f3 0f 1e fb          	endbr32 
80106101:	55                   	push   %ebp
80106102:	89 e5                	mov    %esp,%ebp
80106104:	57                   	push   %edi
80106105:	56                   	push   %esi
80106106:	53                   	push   %ebx
80106107:	83 ec 1c             	sub    $0x1c,%esp
8010610a:	8b 75 08             	mov    0x8(%ebp),%esi
8010610d:	85 f6                	test   %esi,%esi
8010610f:	0f 84 25 01 00 00    	je     8010623a <switchuvm+0x13d>
80106115:	83 7e 08 00          	cmpl   $0x0,0x8(%esi)
80106119:	0f 84 28 01 00 00    	je     80106247 <switchuvm+0x14a>
8010611f:	83 7e 04 00          	cmpl   $0x0,0x4(%esi)
80106123:	0f 84 2b 01 00 00    	je     80106254 <switchuvm+0x157>
80106129:	e8 dc da ff ff       	call   80103c0a <pushcli>
8010612e:	e8 49 d1 ff ff       	call   8010327c <mycpu>
80106133:	89 c3                	mov    %eax,%ebx
80106135:	e8 42 d1 ff ff       	call   8010327c <mycpu>
8010613a:	8d 78 08             	lea    0x8(%eax),%edi
8010613d:	e8 3a d1 ff ff       	call   8010327c <mycpu>
80106142:	83 c0 08             	add    $0x8,%eax
80106145:	c1 e8 10             	shr    $0x10,%eax
80106148:	89 45 e4             	mov    %eax,-0x1c(%ebp)
8010614b:	e8 2c d1 ff ff       	call   8010327c <mycpu>
80106150:	8d 50 08             	lea    0x8(%eax),%edx
80106153:	c1 ea 18             	shr    $0x18,%edx
80106156:	66 c7 83 98 00 00 00 	movw   $0x67,0x98(%ebx)
8010615d:	67 00 
8010615f:	66 89 bb 9a 00 00 00 	mov    %di,0x9a(%ebx)
80106166:	0f b6 45 e4          	movzbl -0x1c(%ebp),%eax
8010616a:	88 83 9c 00 00 00    	mov    %al,0x9c(%ebx)
80106170:	0f b6 83 9d 00 00 00 	movzbl 0x9d(%ebx),%eax
80106177:	83 e0 f0             	and    $0xfffffff0,%eax
8010617a:	89 c1                	mov    %eax,%ecx
8010617c:	83 c9 09             	or     $0x9,%ecx
8010617f:	88 8b 9d 00 00 00    	mov    %cl,0x9d(%ebx)
80106185:	83 c8 19             	or     $0x19,%eax
80106188:	88 83 9d 00 00 00    	mov    %al,0x9d(%ebx)
8010618e:	83 e0 9f             	and    $0xffffff9f,%eax
80106191:	88 83 9d 00 00 00    	mov    %al,0x9d(%ebx)
80106197:	83 c8 80             	or     $0xffffff80,%eax
8010619a:	88 83 9d 00 00 00    	mov    %al,0x9d(%ebx)
801061a0:	0f b6 83 9e 00 00 00 	movzbl 0x9e(%ebx),%eax
801061a7:	89 c1                	mov    %eax,%ecx
801061a9:	83 e1 f0             	and    $0xfffffff0,%ecx
801061ac:	88 8b 9e 00 00 00    	mov    %cl,0x9e(%ebx)
801061b2:	89 c1                	mov    %eax,%ecx
801061b4:	83 e1 e0             	and    $0xffffffe0,%ecx
801061b7:	88 8b 9e 00 00 00    	mov    %cl,0x9e(%ebx)
801061bd:	83 e0 c0             	and    $0xffffffc0,%eax
801061c0:	88 83 9e 00 00 00    	mov    %al,0x9e(%ebx)
801061c6:	83 c8 40             	or     $0x40,%eax
801061c9:	88 83 9e 00 00 00    	mov    %al,0x9e(%ebx)
801061cf:	83 e0 7f             	and    $0x7f,%eax
801061d2:	88 83 9e 00 00 00    	mov    %al,0x9e(%ebx)
801061d8:	88 93 9f 00 00 00    	mov    %dl,0x9f(%ebx)
801061de:	e8 99 d0 ff ff       	call   8010327c <mycpu>
801061e3:	0f b6 90 9d 00 00 00 	movzbl 0x9d(%eax),%edx
801061ea:	83 e2 ef             	and    $0xffffffef,%edx
801061ed:	88 90 9d 00 00 00    	mov    %dl,0x9d(%eax)
801061f3:	e8 84 d0 ff ff       	call   8010327c <mycpu>
801061f8:	66 c7 40 10 10 00    	movw   $0x10,0x10(%eax)
801061fe:	8b 5e 08             	mov    0x8(%esi),%ebx
80106201:	e8 76 d0 ff ff       	call   8010327c <mycpu>
80106206:	81 c3 00 10 00 00    	add    $0x1000,%ebx
8010620c:	89 58 0c             	mov    %ebx,0xc(%eax)
8010620f:	e8 68 d0 ff ff       	call   8010327c <mycpu>
80106214:	66 c7 40 6e ff ff    	movw   $0xffff,0x6e(%eax)
8010621a:	b8 28 00 00 00       	mov    $0x28,%eax
8010621f:	0f 00 d8             	ltr    %ax
80106222:	8b 46 04             	mov    0x4(%esi),%eax
80106225:	05 00 00 00 80       	add    $0x80000000,%eax
8010622a:	0f 22 d8             	mov    %eax,%cr3
8010622d:	e8 18 da ff ff       	call   80103c4a <popcli>
80106232:	8d 65 f4             	lea    -0xc(%ebp),%esp
80106235:	5b                   	pop    %ebx
80106236:	5e                   	pop    %esi
80106237:	5f                   	pop    %edi
80106238:	5d                   	pop    %ebp
80106239:	c3                   	ret    
8010623a:	83 ec 0c             	sub    $0xc,%esp
8010623d:	68 92 70 10 80       	push   $0x80107092
80106242:	e8 15 a1 ff ff       	call   8010035c <panic>
80106247:	83 ec 0c             	sub    $0xc,%esp
8010624a:	68 a8 70 10 80       	push   $0x801070a8
8010624f:	e8 08 a1 ff ff       	call   8010035c <panic>
80106254:	83 ec 0c             	sub    $0xc,%esp
80106257:	68 bd 70 10 80       	push   $0x801070bd
8010625c:	e8 fb a0 ff ff       	call   8010035c <panic>

80106261 <inituvm>:
80106261:	f3 0f 1e fb          	endbr32 
80106265:	55                   	push   %ebp
80106266:	89 e5                	mov    %esp,%ebp
80106268:	56                   	push   %esi
80106269:	53                   	push   %ebx
8010626a:	8b 75 10             	mov    0x10(%ebp),%esi
8010626d:	81 fe ff 0f 00 00    	cmp    $0xfff,%esi
80106273:	77 4c                	ja     801062c1 <inituvm+0x60>
80106275:	e8 07 bf ff ff       	call   80102181 <kalloc>
8010627a:	89 c3                	mov    %eax,%ebx
8010627c:	83 ec 04             	sub    $0x4,%esp
8010627f:	68 00 10 00 00       	push   $0x1000
80106284:	6a 00                	push   $0x0
80106286:	50                   	push   %eax
80106287:	e8 19 db ff ff       	call   80103da5 <memset>
8010628c:	83 c4 08             	add    $0x8,%esp
8010628f:	6a 06                	push   $0x6
80106291:	8d 83 00 00 00 80    	lea    -0x80000000(%ebx),%eax
80106297:	50                   	push   %eax
80106298:	b9 00 10 00 00       	mov    $0x1000,%ecx
8010629d:	ba 00 00 00 00       	mov    $0x0,%edx
801062a2:	8b 45 08             	mov    0x8(%ebp),%eax
801062a5:	e8 52 fb ff ff       	call   80105dfc <mappages>
801062aa:	83 c4 0c             	add    $0xc,%esp
801062ad:	56                   	push   %esi
801062ae:	ff 75 0c             	push   0xc(%ebp)
801062b1:	53                   	push   %ebx
801062b2:	e8 6e db ff ff       	call   80103e25 <memmove>
801062b7:	83 c4 10             	add    $0x10,%esp
801062ba:	8d 65 f8             	lea    -0x8(%ebp),%esp
801062bd:	5b                   	pop    %ebx
801062be:	5e                   	pop    %esi
801062bf:	5d                   	pop    %ebp
801062c0:	c3                   	ret    
801062c1:	83 ec 0c             	sub    $0xc,%esp
801062c4:	68 d1 70 10 80       	push   $0x801070d1
801062c9:	e8 8e a0 ff ff       	call   8010035c <panic>

801062ce <loaduvm>:
801062ce:	f3 0f 1e fb          	endbr32 
801062d2:	55                   	push   %ebp
801062d3:	89 e5                	mov    %esp,%ebp
801062d5:	57                   	push   %edi
801062d6:	56                   	push   %esi
801062d7:	53                   	push   %ebx
801062d8:	83 ec 0c             	sub    $0xc,%esp
801062db:	8b 7d 18             	mov    0x18(%ebp),%edi
801062de:	8b 5d 0c             	mov    0xc(%ebp),%ebx
801062e1:	81 e3 ff 0f 00 00    	and    $0xfff,%ebx
801062e7:	74 3c                	je     80106325 <loaduvm+0x57>
801062e9:	83 ec 0c             	sub    $0xc,%esp
801062ec:	68 8c 71 10 80       	push   $0x8010718c
801062f1:	e8 66 a0 ff ff       	call   8010035c <panic>
801062f6:	83 ec 0c             	sub    $0xc,%esp
801062f9:	68 eb 70 10 80       	push   $0x801070eb
801062fe:	e8 59 a0 ff ff       	call   8010035c <panic>
80106303:	05 00 00 00 80       	add    $0x80000000,%eax
80106308:	56                   	push   %esi
80106309:	89 da                	mov    %ebx,%edx
8010630b:	03 55 14             	add    0x14(%ebp),%edx
8010630e:	52                   	push   %edx
8010630f:	50                   	push   %eax
80106310:	ff 75 10             	push   0x10(%ebp)
80106313:	e8 e5 b4 ff ff       	call   801017fd <readi>
80106318:	83 c4 10             	add    $0x10,%esp
8010631b:	39 f0                	cmp    %esi,%eax
8010631d:	75 47                	jne    80106366 <loaduvm+0x98>
8010631f:	81 c3 00 10 00 00    	add    $0x1000,%ebx
80106325:	39 fb                	cmp    %edi,%ebx
80106327:	73 30                	jae    80106359 <loaduvm+0x8b>
80106329:	89 da                	mov    %ebx,%edx
8010632b:	03 55 0c             	add    0xc(%ebp),%edx
8010632e:	b9 00 00 00 00       	mov    $0x0,%ecx
80106333:	8b 45 08             	mov    0x8(%ebp),%eax
80106336:	e8 50 fa ff ff       	call   80105d8b <walkpgdir>
8010633b:	85 c0                	test   %eax,%eax
8010633d:	74 b7                	je     801062f6 <loaduvm+0x28>
8010633f:	8b 00                	mov    (%eax),%eax
80106341:	25 00 f0 ff ff       	and    $0xfffff000,%eax
80106346:	89 fe                	mov    %edi,%esi
80106348:	29 de                	sub    %ebx,%esi
8010634a:	81 fe ff 0f 00 00    	cmp    $0xfff,%esi
80106350:	76 b1                	jbe    80106303 <loaduvm+0x35>
80106352:	be 00 10 00 00       	mov    $0x1000,%esi
80106357:	eb aa                	jmp    80106303 <loaduvm+0x35>
80106359:	b8 00 00 00 00       	mov    $0x0,%eax
8010635e:	8d 65 f4             	lea    -0xc(%ebp),%esp
80106361:	5b                   	pop    %ebx
80106362:	5e                   	pop    %esi
80106363:	5f                   	pop    %edi
80106364:	5d                   	pop    %ebp
80106365:	c3                   	ret    
80106366:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010636b:	eb f1                	jmp    8010635e <loaduvm+0x90>

8010636d <deallocuvm>:
8010636d:	f3 0f 1e fb          	endbr32 
80106371:	55                   	push   %ebp
80106372:	89 e5                	mov    %esp,%ebp
80106374:	57                   	push   %edi
80106375:	56                   	push   %esi
80106376:	53                   	push   %ebx
80106377:	83 ec 0c             	sub    $0xc,%esp
8010637a:	8b 7d 0c             	mov    0xc(%ebp),%edi
8010637d:	39 7d 10             	cmp    %edi,0x10(%ebp)
80106380:	73 11                	jae    80106393 <deallocuvm+0x26>
80106382:	8b 45 10             	mov    0x10(%ebp),%eax
80106385:	8d 98 ff 0f 00 00    	lea    0xfff(%eax),%ebx
8010638b:	81 e3 00 f0 ff ff    	and    $0xfffff000,%ebx
80106391:	eb 19                	jmp    801063ac <deallocuvm+0x3f>
80106393:	89 f8                	mov    %edi,%eax
80106395:	eb 64                	jmp    801063fb <deallocuvm+0x8e>
80106397:	c1 eb 16             	shr    $0x16,%ebx
8010639a:	83 c3 01             	add    $0x1,%ebx
8010639d:	c1 e3 16             	shl    $0x16,%ebx
801063a0:	81 eb 00 10 00 00    	sub    $0x1000,%ebx
801063a6:	81 c3 00 10 00 00    	add    $0x1000,%ebx
801063ac:	39 fb                	cmp    %edi,%ebx
801063ae:	73 48                	jae    801063f8 <deallocuvm+0x8b>
801063b0:	b9 00 00 00 00       	mov    $0x0,%ecx
801063b5:	89 da                	mov    %ebx,%edx
801063b7:	8b 45 08             	mov    0x8(%ebp),%eax
801063ba:	e8 cc f9 ff ff       	call   80105d8b <walkpgdir>
801063bf:	89 c6                	mov    %eax,%esi
801063c1:	85 c0                	test   %eax,%eax
801063c3:	74 d2                	je     80106397 <deallocuvm+0x2a>
801063c5:	8b 00                	mov    (%eax),%eax
801063c7:	a8 01                	test   $0x1,%al
801063c9:	74 db                	je     801063a6 <deallocuvm+0x39>
801063cb:	25 00 f0 ff ff       	and    $0xfffff000,%eax
801063d0:	74 19                	je     801063eb <deallocuvm+0x7e>
801063d2:	05 00 00 00 80       	add    $0x80000000,%eax
801063d7:	83 ec 0c             	sub    $0xc,%esp
801063da:	50                   	push   %eax
801063db:	e8 7a bc ff ff       	call   8010205a <kfree>
801063e0:	c7 06 00 00 00 00    	movl   $0x0,(%esi)
801063e6:	83 c4 10             	add    $0x10,%esp
801063e9:	eb bb                	jmp    801063a6 <deallocuvm+0x39>
801063eb:	83 ec 0c             	sub    $0xc,%esp
801063ee:	68 46 6a 10 80       	push   $0x80106a46
801063f3:	e8 64 9f ff ff       	call   8010035c <panic>
801063f8:	8b 45 10             	mov    0x10(%ebp),%eax
801063fb:	8d 65 f4             	lea    -0xc(%ebp),%esp
801063fe:	5b                   	pop    %ebx
801063ff:	5e                   	pop    %esi
80106400:	5f                   	pop    %edi
80106401:	5d                   	pop    %ebp
80106402:	c3                   	ret    

80106403 <allocuvm>:
80106403:	f3 0f 1e fb          	endbr32 
80106407:	55                   	push   %ebp
80106408:	89 e5                	mov    %esp,%ebp
8010640a:	57                   	push   %edi
8010640b:	56                   	push   %esi
8010640c:	53                   	push   %ebx
8010640d:	83 ec 1c             	sub    $0x1c,%esp
80106410:	8b 7d 10             	mov    0x10(%ebp),%edi
80106413:	89 7d e4             	mov    %edi,-0x1c(%ebp)
80106416:	85 ff                	test   %edi,%edi
80106418:	0f 88 c1 00 00 00    	js     801064df <allocuvm+0xdc>
8010641e:	3b 7d 0c             	cmp    0xc(%ebp),%edi
80106421:	72 5c                	jb     8010647f <allocuvm+0x7c>
80106423:	8b 45 0c             	mov    0xc(%ebp),%eax
80106426:	8d b0 ff 0f 00 00    	lea    0xfff(%eax),%esi
8010642c:	81 e6 00 f0 ff ff    	and    $0xfffff000,%esi
80106432:	39 fe                	cmp    %edi,%esi
80106434:	0f 83 ac 00 00 00    	jae    801064e6 <allocuvm+0xe3>
8010643a:	e8 42 bd ff ff       	call   80102181 <kalloc>
8010643f:	89 c3                	mov    %eax,%ebx
80106441:	85 c0                	test   %eax,%eax
80106443:	74 42                	je     80106487 <allocuvm+0x84>
80106445:	83 ec 04             	sub    $0x4,%esp
80106448:	68 00 10 00 00       	push   $0x1000
8010644d:	6a 00                	push   $0x0
8010644f:	50                   	push   %eax
80106450:	e8 50 d9 ff ff       	call   80103da5 <memset>
80106455:	83 c4 08             	add    $0x8,%esp
80106458:	6a 06                	push   $0x6
8010645a:	8d 83 00 00 00 80    	lea    -0x80000000(%ebx),%eax
80106460:	50                   	push   %eax
80106461:	b9 00 10 00 00       	mov    $0x1000,%ecx
80106466:	89 f2                	mov    %esi,%edx
80106468:	8b 45 08             	mov    0x8(%ebp),%eax
8010646b:	e8 8c f9 ff ff       	call   80105dfc <mappages>
80106470:	83 c4 10             	add    $0x10,%esp
80106473:	85 c0                	test   %eax,%eax
80106475:	78 38                	js     801064af <allocuvm+0xac>
80106477:	81 c6 00 10 00 00    	add    $0x1000,%esi
8010647d:	eb b3                	jmp    80106432 <allocuvm+0x2f>
8010647f:	8b 45 0c             	mov    0xc(%ebp),%eax
80106482:	89 45 e4             	mov    %eax,-0x1c(%ebp)
80106485:	eb 5f                	jmp    801064e6 <allocuvm+0xe3>
80106487:	83 ec 0c             	sub    $0xc,%esp
8010648a:	68 09 71 10 80       	push   $0x80107109
8010648f:	e8 91 a1 ff ff       	call   80100625 <cprintf>
80106494:	83 c4 0c             	add    $0xc,%esp
80106497:	ff 75 0c             	push   0xc(%ebp)
8010649a:	57                   	push   %edi
8010649b:	ff 75 08             	push   0x8(%ebp)
8010649e:	e8 ca fe ff ff       	call   8010636d <deallocuvm>
801064a3:	83 c4 10             	add    $0x10,%esp
801064a6:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
801064ad:	eb 37                	jmp    801064e6 <allocuvm+0xe3>
801064af:	83 ec 0c             	sub    $0xc,%esp
801064b2:	68 21 71 10 80       	push   $0x80107121
801064b7:	e8 69 a1 ff ff       	call   80100625 <cprintf>
801064bc:	83 c4 0c             	add    $0xc,%esp
801064bf:	ff 75 0c             	push   0xc(%ebp)
801064c2:	57                   	push   %edi
801064c3:	ff 75 08             	push   0x8(%ebp)
801064c6:	e8 a2 fe ff ff       	call   8010636d <deallocuvm>
801064cb:	89 1c 24             	mov    %ebx,(%esp)
801064ce:	e8 87 bb ff ff       	call   8010205a <kfree>
801064d3:	83 c4 10             	add    $0x10,%esp
801064d6:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
801064dd:	eb 07                	jmp    801064e6 <allocuvm+0xe3>
801064df:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
801064e6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
801064e9:	8d 65 f4             	lea    -0xc(%ebp),%esp
801064ec:	5b                   	pop    %ebx
801064ed:	5e                   	pop    %esi
801064ee:	5f                   	pop    %edi
801064ef:	5d                   	pop    %ebp
801064f0:	c3                   	ret    

801064f1 <freevm>:
801064f1:	f3 0f 1e fb          	endbr32 
801064f5:	55                   	push   %ebp
801064f6:	89 e5                	mov    %esp,%ebp
801064f8:	56                   	push   %esi
801064f9:	53                   	push   %ebx
801064fa:	8b 75 08             	mov    0x8(%ebp),%esi
801064fd:	85 f6                	test   %esi,%esi
801064ff:	74 1a                	je     8010651b <freevm+0x2a>
80106501:	83 ec 04             	sub    $0x4,%esp
80106504:	6a 00                	push   $0x0
80106506:	68 00 00 00 80       	push   $0x80000000
8010650b:	56                   	push   %esi
8010650c:	e8 5c fe ff ff       	call   8010636d <deallocuvm>
80106511:	83 c4 10             	add    $0x10,%esp
80106514:	bb 00 00 00 00       	mov    $0x0,%ebx
80106519:	eb 10                	jmp    8010652b <freevm+0x3a>
8010651b:	83 ec 0c             	sub    $0xc,%esp
8010651e:	68 3d 71 10 80       	push   $0x8010713d
80106523:	e8 34 9e ff ff       	call   8010035c <panic>
80106528:	83 c3 01             	add    $0x1,%ebx
8010652b:	81 fb ff 03 00 00    	cmp    $0x3ff,%ebx
80106531:	77 1f                	ja     80106552 <freevm+0x61>
80106533:	8b 04 9e             	mov    (%esi,%ebx,4),%eax
80106536:	a8 01                	test   $0x1,%al
80106538:	74 ee                	je     80106528 <freevm+0x37>
8010653a:	25 00 f0 ff ff       	and    $0xfffff000,%eax
8010653f:	05 00 00 00 80       	add    $0x80000000,%eax
80106544:	83 ec 0c             	sub    $0xc,%esp
80106547:	50                   	push   %eax
80106548:	e8 0d bb ff ff       	call   8010205a <kfree>
8010654d:	83 c4 10             	add    $0x10,%esp
80106550:	eb d6                	jmp    80106528 <freevm+0x37>
80106552:	83 ec 0c             	sub    $0xc,%esp
80106555:	56                   	push   %esi
80106556:	e8 ff ba ff ff       	call   8010205a <kfree>
8010655b:	83 c4 10             	add    $0x10,%esp
8010655e:	8d 65 f8             	lea    -0x8(%ebp),%esp
80106561:	5b                   	pop    %ebx
80106562:	5e                   	pop    %esi
80106563:	5d                   	pop    %ebp
80106564:	c3                   	ret    

80106565 <setupkvm>:
80106565:	f3 0f 1e fb          	endbr32 
80106569:	55                   	push   %ebp
8010656a:	89 e5                	mov    %esp,%ebp
8010656c:	56                   	push   %esi
8010656d:	53                   	push   %ebx
8010656e:	e8 0e bc ff ff       	call   80102181 <kalloc>
80106573:	89 c6                	mov    %eax,%esi
80106575:	85 c0                	test   %eax,%eax
80106577:	74 55                	je     801065ce <setupkvm+0x69>
80106579:	83 ec 04             	sub    $0x4,%esp
8010657c:	68 00 10 00 00       	push   $0x1000
80106581:	6a 00                	push   $0x0
80106583:	50                   	push   %eax
80106584:	e8 1c d8 ff ff       	call   80103da5 <memset>
80106589:	83 c4 10             	add    $0x10,%esp
8010658c:	bb 20 a4 10 80       	mov    $0x8010a420,%ebx
80106591:	81 fb 60 a4 10 80    	cmp    $0x8010a460,%ebx
80106597:	73 35                	jae    801065ce <setupkvm+0x69>
80106599:	8b 43 04             	mov    0x4(%ebx),%eax
8010659c:	8b 4b 08             	mov    0x8(%ebx),%ecx
8010659f:	29 c1                	sub    %eax,%ecx
801065a1:	83 ec 08             	sub    $0x8,%esp
801065a4:	ff 73 0c             	push   0xc(%ebx)
801065a7:	50                   	push   %eax
801065a8:	8b 13                	mov    (%ebx),%edx
801065aa:	89 f0                	mov    %esi,%eax
801065ac:	e8 4b f8 ff ff       	call   80105dfc <mappages>
801065b1:	83 c4 10             	add    $0x10,%esp
801065b4:	85 c0                	test   %eax,%eax
801065b6:	78 05                	js     801065bd <setupkvm+0x58>
801065b8:	83 c3 10             	add    $0x10,%ebx
801065bb:	eb d4                	jmp    80106591 <setupkvm+0x2c>
801065bd:	83 ec 0c             	sub    $0xc,%esp
801065c0:	56                   	push   %esi
801065c1:	e8 2b ff ff ff       	call   801064f1 <freevm>
801065c6:	83 c4 10             	add    $0x10,%esp
801065c9:	be 00 00 00 00       	mov    $0x0,%esi
801065ce:	89 f0                	mov    %esi,%eax
801065d0:	8d 65 f8             	lea    -0x8(%ebp),%esp
801065d3:	5b                   	pop    %ebx
801065d4:	5e                   	pop    %esi
801065d5:	5d                   	pop    %ebp
801065d6:	c3                   	ret    

801065d7 <kvmalloc>:
801065d7:	f3 0f 1e fb          	endbr32 
801065db:	55                   	push   %ebp
801065dc:	89 e5                	mov    %esp,%ebp
801065de:	83 ec 08             	sub    $0x8,%esp
801065e1:	e8 7f ff ff ff       	call   80106565 <setupkvm>
801065e6:	a3 c4 44 11 80       	mov    %eax,0x801144c4
801065eb:	e8 fb fa ff ff       	call   801060eb <switchkvm>
801065f0:	c9                   	leave  
801065f1:	c3                   	ret    

801065f2 <clearpteu>:
801065f2:	f3 0f 1e fb          	endbr32 
801065f6:	55                   	push   %ebp
801065f7:	89 e5                	mov    %esp,%ebp
801065f9:	83 ec 08             	sub    $0x8,%esp
801065fc:	b9 00 00 00 00       	mov    $0x0,%ecx
80106601:	8b 55 0c             	mov    0xc(%ebp),%edx
80106604:	8b 45 08             	mov    0x8(%ebp),%eax
80106607:	e8 7f f7 ff ff       	call   80105d8b <walkpgdir>
8010660c:	85 c0                	test   %eax,%eax
8010660e:	74 05                	je     80106615 <clearpteu+0x23>
80106610:	83 20 fb             	andl   $0xfffffffb,(%eax)
80106613:	c9                   	leave  
80106614:	c3                   	ret    
80106615:	83 ec 0c             	sub    $0xc,%esp
80106618:	68 4e 71 10 80       	push   $0x8010714e
8010661d:	e8 3a 9d ff ff       	call   8010035c <panic>

80106622 <copyuvm>:
80106622:	f3 0f 1e fb          	endbr32 
80106626:	55                   	push   %ebp
80106627:	89 e5                	mov    %esp,%ebp
80106629:	57                   	push   %edi
8010662a:	56                   	push   %esi
8010662b:	53                   	push   %ebx
8010662c:	83 ec 1c             	sub    $0x1c,%esp
8010662f:	e8 31 ff ff ff       	call   80106565 <setupkvm>
80106634:	89 45 dc             	mov    %eax,-0x24(%ebp)
80106637:	85 c0                	test   %eax,%eax
80106639:	0f 84 c4 00 00 00    	je     80106703 <copyuvm+0xe1>
8010663f:	bf 00 00 00 00       	mov    $0x0,%edi
80106644:	3b 7d 0c             	cmp    0xc(%ebp),%edi
80106647:	0f 83 b6 00 00 00    	jae    80106703 <copyuvm+0xe1>
8010664d:	89 7d e4             	mov    %edi,-0x1c(%ebp)
80106650:	b9 00 00 00 00       	mov    $0x0,%ecx
80106655:	89 fa                	mov    %edi,%edx
80106657:	8b 45 08             	mov    0x8(%ebp),%eax
8010665a:	e8 2c f7 ff ff       	call   80105d8b <walkpgdir>
8010665f:	85 c0                	test   %eax,%eax
80106661:	74 65                	je     801066c8 <copyuvm+0xa6>
80106663:	8b 00                	mov    (%eax),%eax
80106665:	a8 01                	test   $0x1,%al
80106667:	74 6c                	je     801066d5 <copyuvm+0xb3>
80106669:	89 c6                	mov    %eax,%esi
8010666b:	81 e6 00 f0 ff ff    	and    $0xfffff000,%esi
80106671:	25 ff 0f 00 00       	and    $0xfff,%eax
80106676:	89 45 e0             	mov    %eax,-0x20(%ebp)
80106679:	e8 03 bb ff ff       	call   80102181 <kalloc>
8010667e:	89 c3                	mov    %eax,%ebx
80106680:	85 c0                	test   %eax,%eax
80106682:	74 6a                	je     801066ee <copyuvm+0xcc>
80106684:	81 c6 00 00 00 80    	add    $0x80000000,%esi
8010668a:	83 ec 04             	sub    $0x4,%esp
8010668d:	68 00 10 00 00       	push   $0x1000
80106692:	56                   	push   %esi
80106693:	50                   	push   %eax
80106694:	e8 8c d7 ff ff       	call   80103e25 <memmove>
80106699:	83 c4 08             	add    $0x8,%esp
8010669c:	ff 75 e0             	push   -0x20(%ebp)
8010669f:	8d 83 00 00 00 80    	lea    -0x80000000(%ebx),%eax
801066a5:	50                   	push   %eax
801066a6:	b9 00 10 00 00       	mov    $0x1000,%ecx
801066ab:	8b 55 e4             	mov    -0x1c(%ebp),%edx
801066ae:	8b 45 dc             	mov    -0x24(%ebp),%eax
801066b1:	e8 46 f7 ff ff       	call   80105dfc <mappages>
801066b6:	83 c4 10             	add    $0x10,%esp
801066b9:	85 c0                	test   %eax,%eax
801066bb:	78 25                	js     801066e2 <copyuvm+0xc0>
801066bd:	81 c7 00 10 00 00    	add    $0x1000,%edi
801066c3:	e9 7c ff ff ff       	jmp    80106644 <copyuvm+0x22>
801066c8:	83 ec 0c             	sub    $0xc,%esp
801066cb:	68 58 71 10 80       	push   $0x80107158
801066d0:	e8 87 9c ff ff       	call   8010035c <panic>
801066d5:	83 ec 0c             	sub    $0xc,%esp
801066d8:	68 72 71 10 80       	push   $0x80107172
801066dd:	e8 7a 9c ff ff       	call   8010035c <panic>
801066e2:	83 ec 0c             	sub    $0xc,%esp
801066e5:	53                   	push   %ebx
801066e6:	e8 6f b9 ff ff       	call   8010205a <kfree>
801066eb:	83 c4 10             	add    $0x10,%esp
801066ee:	83 ec 0c             	sub    $0xc,%esp
801066f1:	ff 75 dc             	push   -0x24(%ebp)
801066f4:	e8 f8 fd ff ff       	call   801064f1 <freevm>
801066f9:	83 c4 10             	add    $0x10,%esp
801066fc:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
80106703:	8b 45 dc             	mov    -0x24(%ebp),%eax
80106706:	8d 65 f4             	lea    -0xc(%ebp),%esp
80106709:	5b                   	pop    %ebx
8010670a:	5e                   	pop    %esi
8010670b:	5f                   	pop    %edi
8010670c:	5d                   	pop    %ebp
8010670d:	c3                   	ret    

8010670e <uva2ka>:
8010670e:	f3 0f 1e fb          	endbr32 
80106712:	55                   	push   %ebp
80106713:	89 e5                	mov    %esp,%ebp
80106715:	83 ec 08             	sub    $0x8,%esp
80106718:	b9 00 00 00 00       	mov    $0x0,%ecx
8010671d:	8b 55 0c             	mov    0xc(%ebp),%edx
80106720:	8b 45 08             	mov    0x8(%ebp),%eax
80106723:	e8 63 f6 ff ff       	call   80105d8b <walkpgdir>
80106728:	8b 00                	mov    (%eax),%eax
8010672a:	a8 01                	test   $0x1,%al
8010672c:	74 10                	je     8010673e <uva2ka+0x30>
8010672e:	a8 04                	test   $0x4,%al
80106730:	74 13                	je     80106745 <uva2ka+0x37>
80106732:	25 00 f0 ff ff       	and    $0xfffff000,%eax
80106737:	05 00 00 00 80       	add    $0x80000000,%eax
8010673c:	c9                   	leave  
8010673d:	c3                   	ret    
8010673e:	b8 00 00 00 00       	mov    $0x0,%eax
80106743:	eb f7                	jmp    8010673c <uva2ka+0x2e>
80106745:	b8 00 00 00 00       	mov    $0x0,%eax
8010674a:	eb f0                	jmp    8010673c <uva2ka+0x2e>

8010674c <copyout>:
8010674c:	f3 0f 1e fb          	endbr32 
80106750:	55                   	push   %ebp
80106751:	89 e5                	mov    %esp,%ebp
80106753:	57                   	push   %edi
80106754:	56                   	push   %esi
80106755:	53                   	push   %ebx
80106756:	83 ec 0c             	sub    $0xc,%esp
80106759:	8b 7d 14             	mov    0x14(%ebp),%edi
8010675c:	eb 25                	jmp    80106783 <copyout+0x37>
8010675e:	8b 55 0c             	mov    0xc(%ebp),%edx
80106761:	29 f2                	sub    %esi,%edx
80106763:	01 d0                	add    %edx,%eax
80106765:	83 ec 04             	sub    $0x4,%esp
80106768:	53                   	push   %ebx
80106769:	ff 75 10             	push   0x10(%ebp)
8010676c:	50                   	push   %eax
8010676d:	e8 b3 d6 ff ff       	call   80103e25 <memmove>
80106772:	29 df                	sub    %ebx,%edi
80106774:	01 5d 10             	add    %ebx,0x10(%ebp)
80106777:	8d 86 00 10 00 00    	lea    0x1000(%esi),%eax
8010677d:	89 45 0c             	mov    %eax,0xc(%ebp)
80106780:	83 c4 10             	add    $0x10,%esp
80106783:	85 ff                	test   %edi,%edi
80106785:	74 2f                	je     801067b6 <copyout+0x6a>
80106787:	8b 75 0c             	mov    0xc(%ebp),%esi
8010678a:	81 e6 00 f0 ff ff    	and    $0xfffff000,%esi
80106790:	83 ec 08             	sub    $0x8,%esp
80106793:	56                   	push   %esi
80106794:	ff 75 08             	push   0x8(%ebp)
80106797:	e8 72 ff ff ff       	call   8010670e <uva2ka>
8010679c:	83 c4 10             	add    $0x10,%esp
8010679f:	85 c0                	test   %eax,%eax
801067a1:	74 20                	je     801067c3 <copyout+0x77>
801067a3:	89 f3                	mov    %esi,%ebx
801067a5:	2b 5d 0c             	sub    0xc(%ebp),%ebx
801067a8:	81 c3 00 10 00 00    	add    $0x1000,%ebx
801067ae:	39 df                	cmp    %ebx,%edi
801067b0:	73 ac                	jae    8010675e <copyout+0x12>
801067b2:	89 fb                	mov    %edi,%ebx
801067b4:	eb a8                	jmp    8010675e <copyout+0x12>
801067b6:	b8 00 00 00 00       	mov    $0x0,%eax
801067bb:	8d 65 f4             	lea    -0xc(%ebp),%esp
801067be:	5b                   	pop    %ebx
801067bf:	5e                   	pop    %esi
801067c0:	5f                   	pop    %edi
801067c1:	5d                   	pop    %ebp
801067c2:	c3                   	ret    
801067c3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801067c8:	eb f1                	jmp    801067bb <copyout+0x6f>
