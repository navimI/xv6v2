
kernel:     formato del fichero elf32-i386


Desensamblado de la sección .text:

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
80100028:	bc 30 be 10 80       	mov    $0x8010be30,%esp
8010002d:	b8 30 2b 10 80       	mov    $0x80102b30,%eax
80100032:	ff e0                	jmp    *%eax

80100034 <bget>:
// Look through buffer cache for block on device dev.
// If not found, allocate a buffer.
// In either case, return locked buffer.
static struct buf*
bget(uint dev, uint blockno)
{
80100034:	55                   	push   %ebp
80100035:	89 e5                	mov    %esp,%ebp
80100037:	57                   	push   %edi
80100038:	56                   	push   %esi
80100039:	53                   	push   %ebx
8010003a:	83 ec 18             	sub    $0x18,%esp
8010003d:	89 c6                	mov    %eax,%esi
8010003f:	89 d7                	mov    %edx,%edi
  struct buf *b;

  acquire(&bcache.lock);
80100041:	68 40 be 10 80       	push   $0x8010be40
80100046:	e8 6c 3c 00 00       	call   80103cb7 <acquire>

  // Is the block already cached?
  for(b = bcache.head.next; b != &bcache.head; b = b->next){
8010004b:	8b 1d 90 05 11 80    	mov    0x80110590,%ebx
80100051:	83 c4 10             	add    $0x10,%esp
80100054:	eb 03                	jmp    80100059 <bget+0x25>
80100056:	8b 5b 54             	mov    0x54(%ebx),%ebx
80100059:	81 fb 3c 05 11 80    	cmp    $0x8011053c,%ebx
8010005f:	74 30                	je     80100091 <bget+0x5d>
    if(b->dev == dev && b->blockno == blockno){
80100061:	39 73 04             	cmp    %esi,0x4(%ebx)
80100064:	75 f0                	jne    80100056 <bget+0x22>
80100066:	39 7b 08             	cmp    %edi,0x8(%ebx)
80100069:	75 eb                	jne    80100056 <bget+0x22>
      b->refcnt++;
8010006b:	8b 43 4c             	mov    0x4c(%ebx),%eax
8010006e:	83 c0 01             	add    $0x1,%eax
80100071:	89 43 4c             	mov    %eax,0x4c(%ebx)
      release(&bcache.lock);
80100074:	83 ec 0c             	sub    $0xc,%esp
80100077:	68 40 be 10 80       	push   $0x8010be40
8010007c:	e8 9b 3c 00 00       	call   80103d1c <release>
      acquiresleep(&b->lock);
80100081:	8d 43 0c             	lea    0xc(%ebx),%eax
80100084:	89 04 24             	mov    %eax,(%esp)
80100087:	e8 17 3a 00 00       	call   80103aa3 <acquiresleep>
      return b;
8010008c:	83 c4 10             	add    $0x10,%esp
8010008f:	eb 4c                	jmp    801000dd <bget+0xa9>
  }

  // Not cached; recycle an unused buffer.
  // Even if refcnt==0, B_DIRTY indicates a buffer is in use
  // because log.c has modified it but not yet committed it.
  for(b = bcache.head.prev; b != &bcache.head; b = b->prev){
80100091:	8b 1d 8c 05 11 80    	mov    0x8011058c,%ebx
80100097:	eb 03                	jmp    8010009c <bget+0x68>
80100099:	8b 5b 50             	mov    0x50(%ebx),%ebx
8010009c:	81 fb 3c 05 11 80    	cmp    $0x8011053c,%ebx
801000a2:	74 43                	je     801000e7 <bget+0xb3>
    if(b->refcnt == 0 && (b->flags & B_DIRTY) == 0) {
801000a4:	83 7b 4c 00          	cmpl   $0x0,0x4c(%ebx)
801000a8:	75 ef                	jne    80100099 <bget+0x65>
801000aa:	f6 03 04             	testb  $0x4,(%ebx)
801000ad:	75 ea                	jne    80100099 <bget+0x65>
      b->dev = dev;
801000af:	89 73 04             	mov    %esi,0x4(%ebx)
      b->blockno = blockno;
801000b2:	89 7b 08             	mov    %edi,0x8(%ebx)
      b->flags = 0;
801000b5:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
      b->refcnt = 1;
801000bb:	c7 43 4c 01 00 00 00 	movl   $0x1,0x4c(%ebx)
      release(&bcache.lock);
801000c2:	83 ec 0c             	sub    $0xc,%esp
801000c5:	68 40 be 10 80       	push   $0x8010be40
801000ca:	e8 4d 3c 00 00       	call   80103d1c <release>
      acquiresleep(&b->lock);
801000cf:	8d 43 0c             	lea    0xc(%ebx),%eax
801000d2:	89 04 24             	mov    %eax,(%esp)
801000d5:	e8 c9 39 00 00       	call   80103aa3 <acquiresleep>
      return b;
801000da:	83 c4 10             	add    $0x10,%esp
    }
  }
  panic("bget: no buffers");
}
801000dd:	89 d8                	mov    %ebx,%eax
801000df:	8d 65 f4             	lea    -0xc(%ebp),%esp
801000e2:	5b                   	pop    %ebx
801000e3:	5e                   	pop    %esi
801000e4:	5f                   	pop    %edi
801000e5:	5d                   	pop    %ebp
801000e6:	c3                   	ret    
  panic("bget: no buffers");
801000e7:	83 ec 0c             	sub    $0xc,%esp
801000ea:	68 60 68 10 80       	push   $0x80106860
801000ef:	e8 68 02 00 00       	call   8010035c <panic>

801000f4 <binit>:
{
801000f4:	f3 0f 1e fb          	endbr32 
801000f8:	55                   	push   %ebp
801000f9:	89 e5                	mov    %esp,%ebp
801000fb:	53                   	push   %ebx
801000fc:	83 ec 0c             	sub    $0xc,%esp
  initlock(&bcache.lock, "bcache");
801000ff:	68 71 68 10 80       	push   $0x80106871
80100104:	68 40 be 10 80       	push   $0x8010be40
80100109:	e8 6d 3a 00 00       	call   80103b7b <initlock>
  bcache.head.prev = &bcache.head;
8010010e:	c7 05 8c 05 11 80 3c 	movl   $0x8011053c,0x8011058c
80100115:	05 11 80 
  bcache.head.next = &bcache.head;
80100118:	c7 05 90 05 11 80 3c 	movl   $0x8011053c,0x80110590
8010011f:	05 11 80 
  for(b = bcache.buf; b < bcache.buf+NBUF; b++){
80100122:	83 c4 10             	add    $0x10,%esp
80100125:	bb 74 be 10 80       	mov    $0x8010be74,%ebx
8010012a:	eb 37                	jmp    80100163 <binit+0x6f>
    b->next = bcache.head.next;
8010012c:	a1 90 05 11 80       	mov    0x80110590,%eax
80100131:	89 43 54             	mov    %eax,0x54(%ebx)
    b->prev = &bcache.head;
80100134:	c7 43 50 3c 05 11 80 	movl   $0x8011053c,0x50(%ebx)
    initsleeplock(&b->lock, "buffer");
8010013b:	83 ec 08             	sub    $0x8,%esp
8010013e:	68 78 68 10 80       	push   $0x80106878
80100143:	8d 43 0c             	lea    0xc(%ebx),%eax
80100146:	50                   	push   %eax
80100147:	e8 24 39 00 00       	call   80103a70 <initsleeplock>
    bcache.head.next->prev = b;
8010014c:	a1 90 05 11 80       	mov    0x80110590,%eax
80100151:	89 58 50             	mov    %ebx,0x50(%eax)
    bcache.head.next = b;
80100154:	89 1d 90 05 11 80    	mov    %ebx,0x80110590
  for(b = bcache.buf; b < bcache.buf+NBUF; b++){
8010015a:	81 c3 5c 02 00 00    	add    $0x25c,%ebx
80100160:	83 c4 10             	add    $0x10,%esp
80100163:	81 fb 3c 05 11 80    	cmp    $0x8011053c,%ebx
80100169:	72 c1                	jb     8010012c <binit+0x38>
}
8010016b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
8010016e:	c9                   	leave  
8010016f:	c3                   	ret    

80100170 <bread>:

// Return a locked buf with the contents of the indicated block.
struct buf*
bread(uint dev, uint blockno)
{
80100170:	f3 0f 1e fb          	endbr32 
80100174:	55                   	push   %ebp
80100175:	89 e5                	mov    %esp,%ebp
80100177:	53                   	push   %ebx
80100178:	83 ec 04             	sub    $0x4,%esp
  struct buf *b;

  b = bget(dev, blockno);
8010017b:	8b 55 0c             	mov    0xc(%ebp),%edx
8010017e:	8b 45 08             	mov    0x8(%ebp),%eax
80100181:	e8 ae fe ff ff       	call   80100034 <bget>
80100186:	89 c3                	mov    %eax,%ebx
  if((b->flags & B_VALID) == 0) {
80100188:	f6 00 02             	testb  $0x2,(%eax)
8010018b:	74 07                	je     80100194 <bread+0x24>
    iderw(b);
  }
  return b;
}
8010018d:	89 d8                	mov    %ebx,%eax
8010018f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80100192:	c9                   	leave  
80100193:	c3                   	ret    
    iderw(b);
80100194:	83 ec 0c             	sub    $0xc,%esp
80100197:	50                   	push   %eax
80100198:	e8 07 1d 00 00       	call   80101ea4 <iderw>
8010019d:	83 c4 10             	add    $0x10,%esp
  return b;
801001a0:	eb eb                	jmp    8010018d <bread+0x1d>

801001a2 <bwrite>:

// Write b's contents to disk.  Must be locked.
void
bwrite(struct buf *b)
{
801001a2:	f3 0f 1e fb          	endbr32 
801001a6:	55                   	push   %ebp
801001a7:	89 e5                	mov    %esp,%ebp
801001a9:	53                   	push   %ebx
801001aa:	83 ec 10             	sub    $0x10,%esp
801001ad:	8b 5d 08             	mov    0x8(%ebp),%ebx
  if(!holdingsleep(&b->lock))
801001b0:	8d 43 0c             	lea    0xc(%ebx),%eax
801001b3:	50                   	push   %eax
801001b4:	e8 74 39 00 00       	call   80103b2d <holdingsleep>
801001b9:	83 c4 10             	add    $0x10,%esp
801001bc:	85 c0                	test   %eax,%eax
801001be:	74 14                	je     801001d4 <bwrite+0x32>
    panic("bwrite");
  b->flags |= B_DIRTY;
801001c0:	83 0b 04             	orl    $0x4,(%ebx)
  iderw(b);
801001c3:	83 ec 0c             	sub    $0xc,%esp
801001c6:	53                   	push   %ebx
801001c7:	e8 d8 1c 00 00       	call   80101ea4 <iderw>
}
801001cc:	83 c4 10             	add    $0x10,%esp
801001cf:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801001d2:	c9                   	leave  
801001d3:	c3                   	ret    
    panic("bwrite");
801001d4:	83 ec 0c             	sub    $0xc,%esp
801001d7:	68 7f 68 10 80       	push   $0x8010687f
801001dc:	e8 7b 01 00 00       	call   8010035c <panic>

801001e1 <brelse>:

// Release a locked buffer.
// Move to the head of the MRU list.
void
brelse(struct buf *b)
{
801001e1:	f3 0f 1e fb          	endbr32 
801001e5:	55                   	push   %ebp
801001e6:	89 e5                	mov    %esp,%ebp
801001e8:	56                   	push   %esi
801001e9:	53                   	push   %ebx
801001ea:	8b 5d 08             	mov    0x8(%ebp),%ebx
  if(!holdingsleep(&b->lock))
801001ed:	8d 73 0c             	lea    0xc(%ebx),%esi
801001f0:	83 ec 0c             	sub    $0xc,%esp
801001f3:	56                   	push   %esi
801001f4:	e8 34 39 00 00       	call   80103b2d <holdingsleep>
801001f9:	83 c4 10             	add    $0x10,%esp
801001fc:	85 c0                	test   %eax,%eax
801001fe:	74 6b                	je     8010026b <brelse+0x8a>
    panic("brelse");

  releasesleep(&b->lock);
80100200:	83 ec 0c             	sub    $0xc,%esp
80100203:	56                   	push   %esi
80100204:	e8 e9 38 00 00       	call   80103af2 <releasesleep>

  acquire(&bcache.lock);
80100209:	c7 04 24 40 be 10 80 	movl   $0x8010be40,(%esp)
80100210:	e8 a2 3a 00 00       	call   80103cb7 <acquire>
  b->refcnt--;
80100215:	8b 43 4c             	mov    0x4c(%ebx),%eax
80100218:	83 e8 01             	sub    $0x1,%eax
8010021b:	89 43 4c             	mov    %eax,0x4c(%ebx)
  if (b->refcnt == 0) {
8010021e:	83 c4 10             	add    $0x10,%esp
80100221:	85 c0                	test   %eax,%eax
80100223:	75 2f                	jne    80100254 <brelse+0x73>
    // no one is waiting for it.
    b->next->prev = b->prev;
80100225:	8b 43 54             	mov    0x54(%ebx),%eax
80100228:	8b 53 50             	mov    0x50(%ebx),%edx
8010022b:	89 50 50             	mov    %edx,0x50(%eax)
    b->prev->next = b->next;
8010022e:	8b 43 50             	mov    0x50(%ebx),%eax
80100231:	8b 53 54             	mov    0x54(%ebx),%edx
80100234:	89 50 54             	mov    %edx,0x54(%eax)
    b->next = bcache.head.next;
80100237:	a1 90 05 11 80       	mov    0x80110590,%eax
8010023c:	89 43 54             	mov    %eax,0x54(%ebx)
    b->prev = &bcache.head;
8010023f:	c7 43 50 3c 05 11 80 	movl   $0x8011053c,0x50(%ebx)
    bcache.head.next->prev = b;
80100246:	a1 90 05 11 80       	mov    0x80110590,%eax
8010024b:	89 58 50             	mov    %ebx,0x50(%eax)
    bcache.head.next = b;
8010024e:	89 1d 90 05 11 80    	mov    %ebx,0x80110590
  }
  
  release(&bcache.lock);
80100254:	83 ec 0c             	sub    $0xc,%esp
80100257:	68 40 be 10 80       	push   $0x8010be40
8010025c:	e8 bb 3a 00 00       	call   80103d1c <release>
}
80100261:	83 c4 10             	add    $0x10,%esp
80100264:	8d 65 f8             	lea    -0x8(%ebp),%esp
80100267:	5b                   	pop    %ebx
80100268:	5e                   	pop    %esi
80100269:	5d                   	pop    %ebp
8010026a:	c3                   	ret    
    panic("brelse");
8010026b:	83 ec 0c             	sub    $0xc,%esp
8010026e:	68 86 68 10 80       	push   $0x80106886
80100273:	e8 e4 00 00 00       	call   8010035c <panic>

80100278 <consoleread>:
  }
}

int
consoleread(struct inode *ip, char *dst, int n)
{
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
  uint target;
  int c;

  iunlock(ip);
8010028e:	57                   	push   %edi
8010028f:	e8 17 14 00 00       	call   801016ab <iunlock>
  target = n;
80100294:	89 5d e4             	mov    %ebx,-0x1c(%ebp)
  acquire(&cons.lock);
80100297:	c7 04 24 20 a5 10 80 	movl   $0x8010a520,(%esp)
8010029e:	e8 14 3a 00 00       	call   80103cb7 <acquire>
  while(n > 0){
801002a3:	83 c4 10             	add    $0x10,%esp
801002a6:	85 db                	test   %ebx,%ebx
801002a8:	0f 8e 8f 00 00 00    	jle    8010033d <consoleread+0xc5>
    while(input.r == input.w){
801002ae:	a1 20 08 11 80       	mov    0x80110820,%eax
801002b3:	3b 05 24 08 11 80    	cmp    0x80110824,%eax
801002b9:	75 47                	jne    80100302 <consoleread+0x8a>
      if(myproc()->killed){
801002bb:	e8 20 30 00 00       	call   801032e0 <myproc>
801002c0:	83 78 24 00          	cmpl   $0x0,0x24(%eax)
801002c4:	75 17                	jne    801002dd <consoleread+0x65>
        release(&cons.lock);
        ilock(ip);
        return -1;
      }
      sleep(&input.r, &cons.lock);
801002c6:	83 ec 08             	sub    $0x8,%esp
801002c9:	68 20 a5 10 80       	push   $0x8010a520
801002ce:	68 20 08 11 80       	push   $0x80110820
801002d3:	e8 d0 34 00 00       	call   801037a8 <sleep>
801002d8:	83 c4 10             	add    $0x10,%esp
801002db:	eb d1                	jmp    801002ae <consoleread+0x36>
        release(&cons.lock);
801002dd:	83 ec 0c             	sub    $0xc,%esp
801002e0:	68 20 a5 10 80       	push   $0x8010a520
801002e5:	e8 32 3a 00 00       	call   80103d1c <release>
        ilock(ip);
801002ea:	89 3c 24             	mov    %edi,(%esp)
801002ed:	e8 f3 12 00 00       	call   801015e5 <ilock>
        return -1;
801002f2:	83 c4 10             	add    $0x10,%esp
801002f5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  }
  release(&cons.lock);
  ilock(ip);

  return target - n;
}
801002fa:	8d 65 f4             	lea    -0xc(%ebp),%esp
801002fd:	5b                   	pop    %ebx
801002fe:	5e                   	pop    %esi
801002ff:	5f                   	pop    %edi
80100300:	5d                   	pop    %ebp
80100301:	c3                   	ret    
    c = input.buf[input.r++ % INPUT_BUF];
80100302:	8d 50 01             	lea    0x1(%eax),%edx
80100305:	89 15 20 08 11 80    	mov    %edx,0x80110820
8010030b:	89 c2                	mov    %eax,%edx
8010030d:	83 e2 7f             	and    $0x7f,%edx
80100310:	0f b6 92 a0 07 11 80 	movzbl -0x7feef860(%edx),%edx
80100317:	0f be ca             	movsbl %dl,%ecx
    if(c == C('D')){  // EOF
8010031a:	80 fa 04             	cmp    $0x4,%dl
8010031d:	74 14                	je     80100333 <consoleread+0xbb>
    *dst++ = c;
8010031f:	8d 46 01             	lea    0x1(%esi),%eax
80100322:	88 16                	mov    %dl,(%esi)
    --n;
80100324:	83 eb 01             	sub    $0x1,%ebx
    if(c == '\n')
80100327:	83 f9 0a             	cmp    $0xa,%ecx
8010032a:	74 11                	je     8010033d <consoleread+0xc5>
    *dst++ = c;
8010032c:	89 c6                	mov    %eax,%esi
8010032e:	e9 73 ff ff ff       	jmp    801002a6 <consoleread+0x2e>
      if(n < target){
80100333:	3b 5d e4             	cmp    -0x1c(%ebp),%ebx
80100336:	73 05                	jae    8010033d <consoleread+0xc5>
        input.r--;
80100338:	a3 20 08 11 80       	mov    %eax,0x80110820
  release(&cons.lock);
8010033d:	83 ec 0c             	sub    $0xc,%esp
80100340:	68 20 a5 10 80       	push   $0x8010a520
80100345:	e8 d2 39 00 00       	call   80103d1c <release>
  ilock(ip);
8010034a:	89 3c 24             	mov    %edi,(%esp)
8010034d:	e8 93 12 00 00       	call   801015e5 <ilock>
  return target - n;
80100352:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80100355:	29 d8                	sub    %ebx,%eax
80100357:	83 c4 10             	add    $0x10,%esp
8010035a:	eb 9e                	jmp    801002fa <consoleread+0x82>

8010035c <panic>:
{
8010035c:	f3 0f 1e fb          	endbr32 
80100360:	55                   	push   %ebp
80100361:	89 e5                	mov    %esp,%ebp
80100363:	53                   	push   %ebx
80100364:	83 ec 34             	sub    $0x34,%esp
}

static inline void
cli(void)
{
  asm volatile("cli");
80100367:	fa                   	cli    
  cons.locking = 0;
80100368:	c7 05 54 a5 10 80 00 	movl   $0x0,0x8010a554
8010036f:	00 00 00 
  cprintf("lapicid %d: panic: ", lapicid());
80100372:	e8 bd 20 00 00       	call   80102434 <lapicid>
80100377:	83 ec 08             	sub    $0x8,%esp
8010037a:	50                   	push   %eax
8010037b:	68 8d 68 10 80       	push   $0x8010688d
80100380:	e8 a4 02 00 00       	call   80100629 <cprintf>
  cprintf(s);
80100385:	83 c4 04             	add    $0x4,%esp
80100388:	ff 75 08             	pushl  0x8(%ebp)
8010038b:	e8 99 02 00 00       	call   80100629 <cprintf>
  cprintf("\n");
80100390:	c7 04 24 bf 71 10 80 	movl   $0x801071bf,(%esp)
80100397:	e8 8d 02 00 00       	call   80100629 <cprintf>
  getcallerpcs(&s, pcs);
8010039c:	83 c4 08             	add    $0x8,%esp
8010039f:	8d 45 d0             	lea    -0x30(%ebp),%eax
801003a2:	50                   	push   %eax
801003a3:	8d 45 08             	lea    0x8(%ebp),%eax
801003a6:	50                   	push   %eax
801003a7:	e8 ea 37 00 00       	call   80103b96 <getcallerpcs>
  for(i=0; i<10; i++)
801003ac:	83 c4 10             	add    $0x10,%esp
801003af:	bb 00 00 00 00       	mov    $0x0,%ebx
801003b4:	eb 17                	jmp    801003cd <panic+0x71>
    cprintf(" %p", pcs[i]);
801003b6:	83 ec 08             	sub    $0x8,%esp
801003b9:	ff 74 9d d0          	pushl  -0x30(%ebp,%ebx,4)
801003bd:	68 a1 68 10 80       	push   $0x801068a1
801003c2:	e8 62 02 00 00       	call   80100629 <cprintf>
  for(i=0; i<10; i++)
801003c7:	83 c3 01             	add    $0x1,%ebx
801003ca:	83 c4 10             	add    $0x10,%esp
801003cd:	83 fb 09             	cmp    $0x9,%ebx
801003d0:	7e e4                	jle    801003b6 <panic+0x5a>
  panicked = 1; // freeze other CPU
801003d2:	c7 05 58 a5 10 80 01 	movl   $0x1,0x8010a558
801003d9:	00 00 00 
  for(;;)
801003dc:	eb fe                	jmp    801003dc <panic+0x80>

801003de <cgaputc>:
{
801003de:	55                   	push   %ebp
801003df:	89 e5                	mov    %esp,%ebp
801003e1:	57                   	push   %edi
801003e2:	56                   	push   %esi
801003e3:	53                   	push   %ebx
801003e4:	83 ec 0c             	sub    $0xc,%esp
801003e7:	89 c6                	mov    %eax,%esi
  asm volatile("out %0,%1" : : "a" (data), "d" (port));
801003e9:	b9 d4 03 00 00       	mov    $0x3d4,%ecx
801003ee:	b8 0e 00 00 00       	mov    $0xe,%eax
801003f3:	89 ca                	mov    %ecx,%edx
801003f5:	ee                   	out    %al,(%dx)
  asm volatile("in %1,%0" : "=a" (data) : "d" (port));
801003f6:	bb d5 03 00 00       	mov    $0x3d5,%ebx
801003fb:	89 da                	mov    %ebx,%edx
801003fd:	ec                   	in     (%dx),%al
  pos = inb(CRTPORT+1) << 8;
801003fe:	0f b6 f8             	movzbl %al,%edi
80100401:	c1 e7 08             	shl    $0x8,%edi
  asm volatile("out %0,%1" : : "a" (data), "d" (port));
80100404:	b8 0f 00 00 00       	mov    $0xf,%eax
80100409:	89 ca                	mov    %ecx,%edx
8010040b:	ee                   	out    %al,(%dx)
  asm volatile("in %1,%0" : "=a" (data) : "d" (port));
8010040c:	89 da                	mov    %ebx,%edx
8010040e:	ec                   	in     (%dx),%al
  pos |= inb(CRTPORT+1);
8010040f:	0f b6 c8             	movzbl %al,%ecx
80100412:	09 f9                	or     %edi,%ecx
  if(c == '\n')
80100414:	83 fe 0a             	cmp    $0xa,%esi
80100417:	74 66                	je     8010047f <cgaputc+0xa1>
  else if(c == BACKSPACE){
80100419:	81 fe 00 01 00 00    	cmp    $0x100,%esi
8010041f:	74 7f                	je     801004a0 <cgaputc+0xc2>
    crt[pos++] = (c&0xff) | 0x0700;  // black on white
80100421:	89 f0                	mov    %esi,%eax
80100423:	0f b6 f0             	movzbl %al,%esi
80100426:	8d 59 01             	lea    0x1(%ecx),%ebx
80100429:	66 81 ce 00 07       	or     $0x700,%si
8010042e:	66 89 b4 09 00 80 0b 	mov    %si,-0x7ff48000(%ecx,%ecx,1)
80100435:	80 
  if(pos < 0 || pos > 25*80)
80100436:	81 fb d0 07 00 00    	cmp    $0x7d0,%ebx
8010043c:	77 6f                	ja     801004ad <cgaputc+0xcf>
  if((pos/80) >= 24){  // Scroll up.
8010043e:	81 fb 7f 07 00 00    	cmp    $0x77f,%ebx
80100444:	7f 74                	jg     801004ba <cgaputc+0xdc>
  asm volatile("out %0,%1" : : "a" (data), "d" (port));
80100446:	be d4 03 00 00       	mov    $0x3d4,%esi
8010044b:	b8 0e 00 00 00       	mov    $0xe,%eax
80100450:	89 f2                	mov    %esi,%edx
80100452:	ee                   	out    %al,(%dx)
  outb(CRTPORT+1, pos>>8);
80100453:	89 d8                	mov    %ebx,%eax
80100455:	c1 f8 08             	sar    $0x8,%eax
80100458:	b9 d5 03 00 00       	mov    $0x3d5,%ecx
8010045d:	89 ca                	mov    %ecx,%edx
8010045f:	ee                   	out    %al,(%dx)
80100460:	b8 0f 00 00 00       	mov    $0xf,%eax
80100465:	89 f2                	mov    %esi,%edx
80100467:	ee                   	out    %al,(%dx)
80100468:	89 d8                	mov    %ebx,%eax
8010046a:	89 ca                	mov    %ecx,%edx
8010046c:	ee                   	out    %al,(%dx)
  crt[pos] = ' ' | 0x0700;
8010046d:	66 c7 84 1b 00 80 0b 	movw   $0x720,-0x7ff48000(%ebx,%ebx,1)
80100474:	80 20 07 
}
80100477:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010047a:	5b                   	pop    %ebx
8010047b:	5e                   	pop    %esi
8010047c:	5f                   	pop    %edi
8010047d:	5d                   	pop    %ebp
8010047e:	c3                   	ret    
    pos += 80 - pos%80;
8010047f:	ba 67 66 66 66       	mov    $0x66666667,%edx
80100484:	89 c8                	mov    %ecx,%eax
80100486:	f7 ea                	imul   %edx
80100488:	c1 fa 05             	sar    $0x5,%edx
8010048b:	8d 04 92             	lea    (%edx,%edx,4),%eax
8010048e:	c1 e0 04             	shl    $0x4,%eax
80100491:	89 ca                	mov    %ecx,%edx
80100493:	29 c2                	sub    %eax,%edx
80100495:	bb 50 00 00 00       	mov    $0x50,%ebx
8010049a:	29 d3                	sub    %edx,%ebx
8010049c:	01 cb                	add    %ecx,%ebx
8010049e:	eb 96                	jmp    80100436 <cgaputc+0x58>
    if(pos > 0) --pos;
801004a0:	85 c9                	test   %ecx,%ecx
801004a2:	7e 05                	jle    801004a9 <cgaputc+0xcb>
801004a4:	8d 59 ff             	lea    -0x1(%ecx),%ebx
801004a7:	eb 8d                	jmp    80100436 <cgaputc+0x58>
  pos |= inb(CRTPORT+1);
801004a9:	89 cb                	mov    %ecx,%ebx
801004ab:	eb 89                	jmp    80100436 <cgaputc+0x58>
    panic("pos under/overflow");
801004ad:	83 ec 0c             	sub    $0xc,%esp
801004b0:	68 a5 68 10 80       	push   $0x801068a5
801004b5:	e8 a2 fe ff ff       	call   8010035c <panic>
    memmove(crt, crt+80, sizeof(crt[0])*23*80);
801004ba:	83 ec 04             	sub    $0x4,%esp
801004bd:	68 60 0e 00 00       	push   $0xe60
801004c2:	68 a0 80 0b 80       	push   $0x800b80a0
801004c7:	68 00 80 0b 80       	push   $0x800b8000
801004cc:	e8 0a 39 00 00       	call   80103ddb <memmove>
    pos -= 80;
801004d1:	83 eb 50             	sub    $0x50,%ebx
    memset(crt+pos, 0, sizeof(crt[0])*(24*80 - pos));
801004d4:	b8 80 07 00 00       	mov    $0x780,%eax
801004d9:	29 d8                	sub    %ebx,%eax
801004db:	8d 94 1b 00 80 0b 80 	lea    -0x7ff48000(%ebx,%ebx,1),%edx
801004e2:	83 c4 0c             	add    $0xc,%esp
801004e5:	01 c0                	add    %eax,%eax
801004e7:	50                   	push   %eax
801004e8:	6a 00                	push   $0x0
801004ea:	52                   	push   %edx
801004eb:	e8 73 38 00 00       	call   80103d63 <memset>
801004f0:	83 c4 10             	add    $0x10,%esp
801004f3:	e9 4e ff ff ff       	jmp    80100446 <cgaputc+0x68>

801004f8 <consputc>:
  if(panicked){
801004f8:	83 3d 58 a5 10 80 00 	cmpl   $0x0,0x8010a558
801004ff:	74 03                	je     80100504 <consputc+0xc>
  asm volatile("cli");
80100501:	fa                   	cli    
    for(;;)
80100502:	eb fe                	jmp    80100502 <consputc+0xa>
{
80100504:	55                   	push   %ebp
80100505:	89 e5                	mov    %esp,%ebp
80100507:	53                   	push   %ebx
80100508:	83 ec 04             	sub    $0x4,%esp
8010050b:	89 c3                	mov    %eax,%ebx
  if(c == BACKSPACE){
8010050d:	3d 00 01 00 00       	cmp    $0x100,%eax
80100512:	74 18                	je     8010052c <consputc+0x34>
    uartputc(c);
80100514:	83 ec 0c             	sub    $0xc,%esp
80100517:	50                   	push   %eax
80100518:	e8 73 4d 00 00       	call   80105290 <uartputc>
8010051d:	83 c4 10             	add    $0x10,%esp
  cgaputc(c);
80100520:	89 d8                	mov    %ebx,%eax
80100522:	e8 b7 fe ff ff       	call   801003de <cgaputc>
}
80100527:	8b 5d fc             	mov    -0x4(%ebp),%ebx
8010052a:	c9                   	leave  
8010052b:	c3                   	ret    
    uartputc('\b'); uartputc(' '); uartputc('\b');
8010052c:	83 ec 0c             	sub    $0xc,%esp
8010052f:	6a 08                	push   $0x8
80100531:	e8 5a 4d 00 00       	call   80105290 <uartputc>
80100536:	c7 04 24 20 00 00 00 	movl   $0x20,(%esp)
8010053d:	e8 4e 4d 00 00       	call   80105290 <uartputc>
80100542:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
80100549:	e8 42 4d 00 00       	call   80105290 <uartputc>
8010054e:	83 c4 10             	add    $0x10,%esp
80100551:	eb cd                	jmp    80100520 <consputc+0x28>

80100553 <printint>:
{
80100553:	55                   	push   %ebp
80100554:	89 e5                	mov    %esp,%ebp
80100556:	57                   	push   %edi
80100557:	56                   	push   %esi
80100558:	53                   	push   %ebx
80100559:	83 ec 2c             	sub    $0x2c,%esp
8010055c:	89 d6                	mov    %edx,%esi
8010055e:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
  if(sign && (sign = xx < 0))
80100561:	85 c9                	test   %ecx,%ecx
80100563:	74 0c                	je     80100571 <printint+0x1e>
80100565:	89 c7                	mov    %eax,%edi
80100567:	c1 ef 1f             	shr    $0x1f,%edi
8010056a:	89 7d d4             	mov    %edi,-0x2c(%ebp)
8010056d:	85 c0                	test   %eax,%eax
8010056f:	78 38                	js     801005a9 <printint+0x56>
    x = xx;
80100571:	89 c1                	mov    %eax,%ecx
  i = 0;
80100573:	bb 00 00 00 00       	mov    $0x0,%ebx
    buf[i++] = digits[x % base];
80100578:	89 c8                	mov    %ecx,%eax
8010057a:	ba 00 00 00 00       	mov    $0x0,%edx
8010057f:	f7 f6                	div    %esi
80100581:	89 df                	mov    %ebx,%edi
80100583:	83 c3 01             	add    $0x1,%ebx
80100586:	0f b6 92 d0 68 10 80 	movzbl -0x7fef9730(%edx),%edx
8010058d:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
  }while((x /= base) != 0);
80100591:	89 ca                	mov    %ecx,%edx
80100593:	89 c1                	mov    %eax,%ecx
80100595:	39 d6                	cmp    %edx,%esi
80100597:	76 df                	jbe    80100578 <printint+0x25>
  if(sign)
80100599:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
8010059d:	74 1a                	je     801005b9 <printint+0x66>
    buf[i++] = '-';
8010059f:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
801005a4:	8d 5f 02             	lea    0x2(%edi),%ebx
801005a7:	eb 10                	jmp    801005b9 <printint+0x66>
    x = -xx;
801005a9:	f7 d8                	neg    %eax
801005ab:	89 c1                	mov    %eax,%ecx
801005ad:	eb c4                	jmp    80100573 <printint+0x20>
    consputc(buf[i]);
801005af:	0f be 44 1d d8       	movsbl -0x28(%ebp,%ebx,1),%eax
801005b4:	e8 3f ff ff ff       	call   801004f8 <consputc>
  while(--i >= 0)
801005b9:	83 eb 01             	sub    $0x1,%ebx
801005bc:	79 f1                	jns    801005af <printint+0x5c>
}
801005be:	83 c4 2c             	add    $0x2c,%esp
801005c1:	5b                   	pop    %ebx
801005c2:	5e                   	pop    %esi
801005c3:	5f                   	pop    %edi
801005c4:	5d                   	pop    %ebp
801005c5:	c3                   	ret    

801005c6 <consolewrite>:

int
consolewrite(struct inode *ip, char *buf, int n)
{
801005c6:	f3 0f 1e fb          	endbr32 
801005ca:	55                   	push   %ebp
801005cb:	89 e5                	mov    %esp,%ebp
801005cd:	57                   	push   %edi
801005ce:	56                   	push   %esi
801005cf:	53                   	push   %ebx
801005d0:	83 ec 18             	sub    $0x18,%esp
801005d3:	8b 7d 0c             	mov    0xc(%ebp),%edi
801005d6:	8b 75 10             	mov    0x10(%ebp),%esi
  int i;

  iunlock(ip);
801005d9:	ff 75 08             	pushl  0x8(%ebp)
801005dc:	e8 ca 10 00 00       	call   801016ab <iunlock>
  acquire(&cons.lock);
801005e1:	c7 04 24 20 a5 10 80 	movl   $0x8010a520,(%esp)
801005e8:	e8 ca 36 00 00       	call   80103cb7 <acquire>
  for(i = 0; i < n; i++)
801005ed:	83 c4 10             	add    $0x10,%esp
801005f0:	bb 00 00 00 00       	mov    $0x0,%ebx
801005f5:	39 f3                	cmp    %esi,%ebx
801005f7:	7d 0e                	jge    80100607 <consolewrite+0x41>
    consputc(buf[i] & 0xff);
801005f9:	0f b6 04 1f          	movzbl (%edi,%ebx,1),%eax
801005fd:	e8 f6 fe ff ff       	call   801004f8 <consputc>
  for(i = 0; i < n; i++)
80100602:	83 c3 01             	add    $0x1,%ebx
80100605:	eb ee                	jmp    801005f5 <consolewrite+0x2f>
  release(&cons.lock);
80100607:	83 ec 0c             	sub    $0xc,%esp
8010060a:	68 20 a5 10 80       	push   $0x8010a520
8010060f:	e8 08 37 00 00       	call   80103d1c <release>
  ilock(ip);
80100614:	83 c4 04             	add    $0x4,%esp
80100617:	ff 75 08             	pushl  0x8(%ebp)
8010061a:	e8 c6 0f 00 00       	call   801015e5 <ilock>

  return n;
}
8010061f:	89 f0                	mov    %esi,%eax
80100621:	8d 65 f4             	lea    -0xc(%ebp),%esp
80100624:	5b                   	pop    %ebx
80100625:	5e                   	pop    %esi
80100626:	5f                   	pop    %edi
80100627:	5d                   	pop    %ebp
80100628:	c3                   	ret    

80100629 <cprintf>:
{
80100629:	f3 0f 1e fb          	endbr32 
8010062d:	55                   	push   %ebp
8010062e:	89 e5                	mov    %esp,%ebp
80100630:	57                   	push   %edi
80100631:	56                   	push   %esi
80100632:	53                   	push   %ebx
80100633:	83 ec 1c             	sub    $0x1c,%esp
  locking = cons.locking;
80100636:	a1 54 a5 10 80       	mov    0x8010a554,%eax
8010063b:	89 45 e0             	mov    %eax,-0x20(%ebp)
  if(locking)
8010063e:	85 c0                	test   %eax,%eax
80100640:	75 10                	jne    80100652 <cprintf+0x29>
  if (fmt == 0)
80100642:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
80100646:	74 1c                	je     80100664 <cprintf+0x3b>
  argp = (uint*)(void*)(&fmt + 1);
80100648:	8d 7d 0c             	lea    0xc(%ebp),%edi
  for(i = 0; (c = fmt[i] & 0xff) != 0; i++){
8010064b:	be 00 00 00 00       	mov    $0x0,%esi
80100650:	eb 27                	jmp    80100679 <cprintf+0x50>
    acquire(&cons.lock);
80100652:	83 ec 0c             	sub    $0xc,%esp
80100655:	68 20 a5 10 80       	push   $0x8010a520
8010065a:	e8 58 36 00 00       	call   80103cb7 <acquire>
8010065f:	83 c4 10             	add    $0x10,%esp
80100662:	eb de                	jmp    80100642 <cprintf+0x19>
    panic("null fmt");
80100664:	83 ec 0c             	sub    $0xc,%esp
80100667:	68 bf 68 10 80       	push   $0x801068bf
8010066c:	e8 eb fc ff ff       	call   8010035c <panic>
      consputc(c);
80100671:	e8 82 fe ff ff       	call   801004f8 <consputc>
  for(i = 0; (c = fmt[i] & 0xff) != 0; i++){
80100676:	83 c6 01             	add    $0x1,%esi
80100679:	8b 55 08             	mov    0x8(%ebp),%edx
8010067c:	0f b6 04 32          	movzbl (%edx,%esi,1),%eax
80100680:	85 c0                	test   %eax,%eax
80100682:	0f 84 b1 00 00 00    	je     80100739 <cprintf+0x110>
    if(c != '%'){
80100688:	83 f8 25             	cmp    $0x25,%eax
8010068b:	75 e4                	jne    80100671 <cprintf+0x48>
    c = fmt[++i] & 0xff;
8010068d:	83 c6 01             	add    $0x1,%esi
80100690:	0f b6 1c 32          	movzbl (%edx,%esi,1),%ebx
    if(c == 0)
80100694:	85 db                	test   %ebx,%ebx
80100696:	0f 84 9d 00 00 00    	je     80100739 <cprintf+0x110>
    switch(c){
8010069c:	83 fb 70             	cmp    $0x70,%ebx
8010069f:	74 2e                	je     801006cf <cprintf+0xa6>
801006a1:	7f 22                	jg     801006c5 <cprintf+0x9c>
801006a3:	83 fb 25             	cmp    $0x25,%ebx
801006a6:	74 6c                	je     80100714 <cprintf+0xeb>
801006a8:	83 fb 64             	cmp    $0x64,%ebx
801006ab:	75 76                	jne    80100723 <cprintf+0xfa>
      printint(*argp++, 10, 1);
801006ad:	8d 5f 04             	lea    0x4(%edi),%ebx
801006b0:	8b 07                	mov    (%edi),%eax
801006b2:	b9 01 00 00 00       	mov    $0x1,%ecx
801006b7:	ba 0a 00 00 00       	mov    $0xa,%edx
801006bc:	e8 92 fe ff ff       	call   80100553 <printint>
801006c1:	89 df                	mov    %ebx,%edi
      break;
801006c3:	eb b1                	jmp    80100676 <cprintf+0x4d>
    switch(c){
801006c5:	83 fb 73             	cmp    $0x73,%ebx
801006c8:	74 1d                	je     801006e7 <cprintf+0xbe>
801006ca:	83 fb 78             	cmp    $0x78,%ebx
801006cd:	75 54                	jne    80100723 <cprintf+0xfa>
      printint(*argp++, 16, 0);
801006cf:	8d 5f 04             	lea    0x4(%edi),%ebx
801006d2:	8b 07                	mov    (%edi),%eax
801006d4:	b9 00 00 00 00       	mov    $0x0,%ecx
801006d9:	ba 10 00 00 00       	mov    $0x10,%edx
801006de:	e8 70 fe ff ff       	call   80100553 <printint>
801006e3:	89 df                	mov    %ebx,%edi
      break;
801006e5:	eb 8f                	jmp    80100676 <cprintf+0x4d>
      if((s = (char*)*argp++) == 0)
801006e7:	8d 47 04             	lea    0x4(%edi),%eax
801006ea:	89 45 e4             	mov    %eax,-0x1c(%ebp)
801006ed:	8b 1f                	mov    (%edi),%ebx
801006ef:	85 db                	test   %ebx,%ebx
801006f1:	75 05                	jne    801006f8 <cprintf+0xcf>
        s = "(null)";
801006f3:	bb b8 68 10 80       	mov    $0x801068b8,%ebx
      for(; *s; s++)
801006f8:	0f b6 03             	movzbl (%ebx),%eax
801006fb:	84 c0                	test   %al,%al
801006fd:	74 0d                	je     8010070c <cprintf+0xe3>
        consputc(*s);
801006ff:	0f be c0             	movsbl %al,%eax
80100702:	e8 f1 fd ff ff       	call   801004f8 <consputc>
      for(; *s; s++)
80100707:	83 c3 01             	add    $0x1,%ebx
8010070a:	eb ec                	jmp    801006f8 <cprintf+0xcf>
      if((s = (char*)*argp++) == 0)
8010070c:	8b 7d e4             	mov    -0x1c(%ebp),%edi
8010070f:	e9 62 ff ff ff       	jmp    80100676 <cprintf+0x4d>
      consputc('%');
80100714:	b8 25 00 00 00       	mov    $0x25,%eax
80100719:	e8 da fd ff ff       	call   801004f8 <consputc>
      break;
8010071e:	e9 53 ff ff ff       	jmp    80100676 <cprintf+0x4d>
      consputc('%');
80100723:	b8 25 00 00 00       	mov    $0x25,%eax
80100728:	e8 cb fd ff ff       	call   801004f8 <consputc>
      consputc(c);
8010072d:	89 d8                	mov    %ebx,%eax
8010072f:	e8 c4 fd ff ff       	call   801004f8 <consputc>
      break;
80100734:	e9 3d ff ff ff       	jmp    80100676 <cprintf+0x4d>
  if(locking)
80100739:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
8010073d:	75 08                	jne    80100747 <cprintf+0x11e>
}
8010073f:	8d 65 f4             	lea    -0xc(%ebp),%esp
80100742:	5b                   	pop    %ebx
80100743:	5e                   	pop    %esi
80100744:	5f                   	pop    %edi
80100745:	5d                   	pop    %ebp
80100746:	c3                   	ret    
    release(&cons.lock);
80100747:	83 ec 0c             	sub    $0xc,%esp
8010074a:	68 20 a5 10 80       	push   $0x8010a520
8010074f:	e8 c8 35 00 00       	call   80103d1c <release>
80100754:	83 c4 10             	add    $0x10,%esp
}
80100757:	eb e6                	jmp    8010073f <cprintf+0x116>

80100759 <consoleintr>:
{
80100759:	f3 0f 1e fb          	endbr32 
8010075d:	55                   	push   %ebp
8010075e:	89 e5                	mov    %esp,%ebp
80100760:	57                   	push   %edi
80100761:	56                   	push   %esi
80100762:	53                   	push   %ebx
80100763:	83 ec 18             	sub    $0x18,%esp
80100766:	8b 5d 08             	mov    0x8(%ebp),%ebx
  acquire(&cons.lock);
80100769:	68 20 a5 10 80       	push   $0x8010a520
8010076e:	e8 44 35 00 00       	call   80103cb7 <acquire>
  while((c = getc()) >= 0){
80100773:	83 c4 10             	add    $0x10,%esp
  int c, doprocdump = 0;
80100776:	be 00 00 00 00       	mov    $0x0,%esi
  while((c = getc()) >= 0){
8010077b:	eb 13                	jmp    80100790 <consoleintr+0x37>
    switch(c){
8010077d:	83 ff 08             	cmp    $0x8,%edi
80100780:	0f 84 d9 00 00 00    	je     8010085f <consoleintr+0x106>
80100786:	83 ff 10             	cmp    $0x10,%edi
80100789:	75 25                	jne    801007b0 <consoleintr+0x57>
8010078b:	be 01 00 00 00       	mov    $0x1,%esi
  while((c = getc()) >= 0){
80100790:	ff d3                	call   *%ebx
80100792:	89 c7                	mov    %eax,%edi
80100794:	85 c0                	test   %eax,%eax
80100796:	0f 88 f5 00 00 00    	js     80100891 <consoleintr+0x138>
    switch(c){
8010079c:	83 ff 15             	cmp    $0x15,%edi
8010079f:	0f 84 93 00 00 00    	je     80100838 <consoleintr+0xdf>
801007a5:	7e d6                	jle    8010077d <consoleintr+0x24>
801007a7:	83 ff 7f             	cmp    $0x7f,%edi
801007aa:	0f 84 af 00 00 00    	je     8010085f <consoleintr+0x106>
      if(c != 0 && input.e-input.r < INPUT_BUF){
801007b0:	85 ff                	test   %edi,%edi
801007b2:	74 dc                	je     80100790 <consoleintr+0x37>
801007b4:	a1 28 08 11 80       	mov    0x80110828,%eax
801007b9:	89 c2                	mov    %eax,%edx
801007bb:	2b 15 20 08 11 80    	sub    0x80110820,%edx
801007c1:	83 fa 7f             	cmp    $0x7f,%edx
801007c4:	77 ca                	ja     80100790 <consoleintr+0x37>
        c = (c == '\r') ? '\n' : c;
801007c6:	83 ff 0d             	cmp    $0xd,%edi
801007c9:	0f 84 b8 00 00 00    	je     80100887 <consoleintr+0x12e>
        input.buf[input.e++ % INPUT_BUF] = c;
801007cf:	8d 50 01             	lea    0x1(%eax),%edx
801007d2:	89 15 28 08 11 80    	mov    %edx,0x80110828
801007d8:	83 e0 7f             	and    $0x7f,%eax
801007db:	89 f9                	mov    %edi,%ecx
801007dd:	88 88 a0 07 11 80    	mov    %cl,-0x7feef860(%eax)
        consputc(c);
801007e3:	89 f8                	mov    %edi,%eax
801007e5:	e8 0e fd ff ff       	call   801004f8 <consputc>
        if(c == '\n' || c == C('D') || input.e == input.r+INPUT_BUF){
801007ea:	83 ff 0a             	cmp    $0xa,%edi
801007ed:	0f 94 c2             	sete   %dl
801007f0:	83 ff 04             	cmp    $0x4,%edi
801007f3:	0f 94 c0             	sete   %al
801007f6:	08 c2                	or     %al,%dl
801007f8:	75 10                	jne    8010080a <consoleintr+0xb1>
801007fa:	a1 20 08 11 80       	mov    0x80110820,%eax
801007ff:	83 e8 80             	sub    $0xffffff80,%eax
80100802:	39 05 28 08 11 80    	cmp    %eax,0x80110828
80100808:	75 86                	jne    80100790 <consoleintr+0x37>
          input.w = input.e;
8010080a:	a1 28 08 11 80       	mov    0x80110828,%eax
8010080f:	a3 24 08 11 80       	mov    %eax,0x80110824
          wakeup(&input.r);
80100814:	83 ec 0c             	sub    $0xc,%esp
80100817:	68 20 08 11 80       	push   $0x80110820
8010081c:	e8 f4 30 00 00       	call   80103915 <wakeup>
80100821:	83 c4 10             	add    $0x10,%esp
80100824:	e9 67 ff ff ff       	jmp    80100790 <consoleintr+0x37>
        input.e--;
80100829:	a3 28 08 11 80       	mov    %eax,0x80110828
        consputc(BACKSPACE);
8010082e:	b8 00 01 00 00       	mov    $0x100,%eax
80100833:	e8 c0 fc ff ff       	call   801004f8 <consputc>
      while(input.e != input.w &&
80100838:	a1 28 08 11 80       	mov    0x80110828,%eax
8010083d:	3b 05 24 08 11 80    	cmp    0x80110824,%eax
80100843:	0f 84 47 ff ff ff    	je     80100790 <consoleintr+0x37>
            input.buf[(input.e-1) % INPUT_BUF] != '\n'){
80100849:	83 e8 01             	sub    $0x1,%eax
8010084c:	89 c2                	mov    %eax,%edx
8010084e:	83 e2 7f             	and    $0x7f,%edx
      while(input.e != input.w &&
80100851:	80 ba a0 07 11 80 0a 	cmpb   $0xa,-0x7feef860(%edx)
80100858:	75 cf                	jne    80100829 <consoleintr+0xd0>
8010085a:	e9 31 ff ff ff       	jmp    80100790 <consoleintr+0x37>
      if(input.e != input.w){
8010085f:	a1 28 08 11 80       	mov    0x80110828,%eax
80100864:	3b 05 24 08 11 80    	cmp    0x80110824,%eax
8010086a:	0f 84 20 ff ff ff    	je     80100790 <consoleintr+0x37>
        input.e--;
80100870:	83 e8 01             	sub    $0x1,%eax
80100873:	a3 28 08 11 80       	mov    %eax,0x80110828
        consputc(BACKSPACE);
80100878:	b8 00 01 00 00       	mov    $0x100,%eax
8010087d:	e8 76 fc ff ff       	call   801004f8 <consputc>
80100882:	e9 09 ff ff ff       	jmp    80100790 <consoleintr+0x37>
        c = (c == '\r') ? '\n' : c;
80100887:	bf 0a 00 00 00       	mov    $0xa,%edi
8010088c:	e9 3e ff ff ff       	jmp    801007cf <consoleintr+0x76>
  release(&cons.lock);
80100891:	83 ec 0c             	sub    $0xc,%esp
80100894:	68 20 a5 10 80       	push   $0x8010a520
80100899:	e8 7e 34 00 00       	call   80103d1c <release>
  if(doprocdump) {
8010089e:	83 c4 10             	add    $0x10,%esp
801008a1:	85 f6                	test   %esi,%esi
801008a3:	75 08                	jne    801008ad <consoleintr+0x154>
}
801008a5:	8d 65 f4             	lea    -0xc(%ebp),%esp
801008a8:	5b                   	pop    %ebx
801008a9:	5e                   	pop    %esi
801008aa:	5f                   	pop    %edi
801008ab:	5d                   	pop    %ebp
801008ac:	c3                   	ret    
    procdump();  // now call procdump() wo. cons.lock held
801008ad:	e8 08 31 00 00       	call   801039ba <procdump>
}
801008b2:	eb f1                	jmp    801008a5 <consoleintr+0x14c>

801008b4 <consoleinit>:

void
consoleinit(void)
{
801008b4:	f3 0f 1e fb          	endbr32 
801008b8:	55                   	push   %ebp
801008b9:	89 e5                	mov    %esp,%ebp
801008bb:	83 ec 10             	sub    $0x10,%esp
  initlock(&cons.lock, "console");
801008be:	68 c8 68 10 80       	push   $0x801068c8
801008c3:	68 20 a5 10 80       	push   $0x8010a520
801008c8:	e8 ae 32 00 00       	call   80103b7b <initlock>

  devsw[CONSOLE].write = consolewrite;
801008cd:	c7 05 ec 11 11 80 c6 	movl   $0x801005c6,0x801111ec
801008d4:	05 10 80 
  devsw[CONSOLE].read = consoleread;
801008d7:	c7 05 e8 11 11 80 78 	movl   $0x80100278,0x801111e8
801008de:	02 10 80 
  cons.locking = 1;
801008e1:	c7 05 54 a5 10 80 01 	movl   $0x1,0x8010a554
801008e8:	00 00 00 

  ioapicenable(IRQ_KBD, 0);
801008eb:	83 c4 08             	add    $0x8,%esp
801008ee:	6a 00                	push   $0x0
801008f0:	6a 01                	push   $0x1
801008f2:	e8 1f 17 00 00       	call   80102016 <ioapicenable>
}
801008f7:	83 c4 10             	add    $0x10,%esp
801008fa:	c9                   	leave  
801008fb:	c3                   	ret    

801008fc <exec>:
#include "x86.h"
#include "elf.h"

int
exec(char *path, char **argv)
{
801008fc:	f3 0f 1e fb          	endbr32 
80100900:	55                   	push   %ebp
80100901:	89 e5                	mov    %esp,%ebp
80100903:	57                   	push   %edi
80100904:	56                   	push   %esi
80100905:	53                   	push   %ebx
80100906:	81 ec 0c 01 00 00    	sub    $0x10c,%esp
  uint argc, sz, sp, ustack[3+MAXARG+1];
  struct elfhdr elf;
  struct inode *ip;
  struct proghdr ph;
  pde_t *pgdir, *oldpgdir;
  struct proc *curproc = myproc();
8010090c:	e8 cf 29 00 00       	call   801032e0 <myproc>
80100911:	89 85 ec fe ff ff    	mov    %eax,-0x114(%ebp)

  begin_op();
80100917:	e8 4e 1f 00 00       	call   8010286a <begin_op>

  if((ip = namei(path)) == 0){
8010091c:	83 ec 0c             	sub    $0xc,%esp
8010091f:	ff 75 08             	pushl  0x8(%ebp)
80100922:	e8 43 13 00 00       	call   80101c6a <namei>
80100927:	83 c4 10             	add    $0x10,%esp
8010092a:	85 c0                	test   %eax,%eax
8010092c:	74 56                	je     80100984 <exec+0x88>
8010092e:	89 c3                	mov    %eax,%ebx
    end_op();
    cprintf("exec: fail\n");
    return -1;
  }
  ilock(ip);
80100930:	83 ec 0c             	sub    $0xc,%esp
80100933:	50                   	push   %eax
80100934:	e8 ac 0c 00 00       	call   801015e5 <ilock>
  pgdir = 0;

  // Check ELF header
  if(readi(ip, (char*)&elf, 0, sizeof(elf)) != sizeof(elf))
80100939:	6a 34                	push   $0x34
8010093b:	6a 00                	push   $0x0
8010093d:	8d 85 24 ff ff ff    	lea    -0xdc(%ebp),%eax
80100943:	50                   	push   %eax
80100944:	53                   	push   %ebx
80100945:	e8 a1 0e 00 00       	call   801017eb <readi>
8010094a:	83 c4 20             	add    $0x20,%esp
8010094d:	83 f8 34             	cmp    $0x34,%eax
80100950:	75 0c                	jne    8010095e <exec+0x62>
    goto bad;
  if(elf.magic != ELF_MAGIC)
80100952:	81 bd 24 ff ff ff 7f 	cmpl   $0x464c457f,-0xdc(%ebp)
80100959:	45 4c 46 
8010095c:	74 42                	je     801009a0 <exec+0xa4>
  return 0;

 bad:
  if(pgdir)
    freevm(pgdir);
  if(ip){
8010095e:	85 db                	test   %ebx,%ebx
80100960:	0f 84 d6 02 00 00    	je     80100c3c <exec+0x340>
    iunlockput(ip);
80100966:	83 ec 0c             	sub    $0xc,%esp
80100969:	53                   	push   %ebx
8010096a:	e8 29 0e 00 00       	call   80101798 <iunlockput>
    end_op();
8010096f:	e8 74 1f 00 00       	call   801028e8 <end_op>
80100974:	83 c4 10             	add    $0x10,%esp
  }
  return -1;
80100977:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
8010097c:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010097f:	5b                   	pop    %ebx
80100980:	5e                   	pop    %esi
80100981:	5f                   	pop    %edi
80100982:	5d                   	pop    %ebp
80100983:	c3                   	ret    
    end_op();
80100984:	e8 5f 1f 00 00       	call   801028e8 <end_op>
    cprintf("exec: fail\n");
80100989:	83 ec 0c             	sub    $0xc,%esp
8010098c:	68 e1 68 10 80       	push   $0x801068e1
80100991:	e8 93 fc ff ff       	call   80100629 <cprintf>
    return -1;
80100996:	83 c4 10             	add    $0x10,%esp
80100999:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010099e:	eb dc                	jmp    8010097c <exec+0x80>
  if((pgdir = setupkvm()) == 0)
801009a0:	e8 3f 5c 00 00       	call   801065e4 <setupkvm>
801009a5:	89 85 f4 fe ff ff    	mov    %eax,-0x10c(%ebp)
801009ab:	85 c0                	test   %eax,%eax
801009ad:	0f 84 16 01 00 00    	je     80100ac9 <exec+0x1cd>
  for(i=0, off=elf.phoff; i<elf.phnum; i++, off+=sizeof(ph)){
801009b3:	8b 85 40 ff ff ff    	mov    -0xc0(%ebp),%eax
  sz = 0;
801009b9:	c7 85 f0 fe ff ff 00 	movl   $0x0,-0x110(%ebp)
801009c0:	00 00 00 
  for(i=0, off=elf.phoff; i<elf.phnum; i++, off+=sizeof(ph)){
801009c3:	be 00 00 00 00       	mov    $0x0,%esi
801009c8:	eb 06                	jmp    801009d0 <exec+0xd4>
801009ca:	83 c6 01             	add    $0x1,%esi
801009cd:	8d 47 20             	lea    0x20(%edi),%eax
801009d0:	0f b7 95 50 ff ff ff 	movzwl -0xb0(%ebp),%edx
801009d7:	39 f2                	cmp    %esi,%edx
801009d9:	0f 8e a1 00 00 00    	jle    80100a80 <exec+0x184>
    if(readi(ip, (char*)&ph, off, sizeof(ph)) != sizeof(ph))
801009df:	89 c7                	mov    %eax,%edi
801009e1:	6a 20                	push   $0x20
801009e3:	50                   	push   %eax
801009e4:	8d 85 04 ff ff ff    	lea    -0xfc(%ebp),%eax
801009ea:	50                   	push   %eax
801009eb:	53                   	push   %ebx
801009ec:	e8 fa 0d 00 00       	call   801017eb <readi>
801009f1:	83 c4 10             	add    $0x10,%esp
801009f4:	83 f8 20             	cmp    $0x20,%eax
801009f7:	0f 85 cc 00 00 00    	jne    80100ac9 <exec+0x1cd>
    if(ph.type != ELF_PROG_LOAD || ph.memsz == 0)
801009fd:	83 bd 04 ff ff ff 01 	cmpl   $0x1,-0xfc(%ebp)
80100a04:	75 c4                	jne    801009ca <exec+0xce>
80100a06:	8b 85 18 ff ff ff    	mov    -0xe8(%ebp),%eax
80100a0c:	85 c0                	test   %eax,%eax
80100a0e:	74 ba                	je     801009ca <exec+0xce>
    if(ph.memsz < ph.filesz)
80100a10:	3b 85 14 ff ff ff    	cmp    -0xec(%ebp),%eax
80100a16:	0f 82 ad 00 00 00    	jb     80100ac9 <exec+0x1cd>
    if(ph.vaddr + ph.memsz < ph.vaddr)
80100a1c:	03 85 0c ff ff ff    	add    -0xf4(%ebp),%eax
80100a22:	0f 82 a1 00 00 00    	jb     80100ac9 <exec+0x1cd>
    if((sz = allocuvm(pgdir, sz, ph.vaddr + ph.memsz)) == 0)
80100a28:	83 ec 04             	sub    $0x4,%esp
80100a2b:	50                   	push   %eax
80100a2c:	ff b5 f0 fe ff ff    	pushl  -0x110(%ebp)
80100a32:	ff b5 f4 fe ff ff    	pushl  -0x10c(%ebp)
80100a38:	e8 45 5a 00 00       	call   80106482 <allocuvm>
80100a3d:	89 85 f0 fe ff ff    	mov    %eax,-0x110(%ebp)
80100a43:	83 c4 10             	add    $0x10,%esp
80100a46:	85 c0                	test   %eax,%eax
80100a48:	74 7f                	je     80100ac9 <exec+0x1cd>
    if(ph.vaddr % PGSIZE != 0)
80100a4a:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
80100a50:	a9 ff 0f 00 00       	test   $0xfff,%eax
80100a55:	75 72                	jne    80100ac9 <exec+0x1cd>
    if(loaduvm(pgdir, (char*)ph.vaddr, ip, ph.off, ph.filesz) < 0)
80100a57:	83 ec 0c             	sub    $0xc,%esp
80100a5a:	ff b5 14 ff ff ff    	pushl  -0xec(%ebp)
80100a60:	ff b5 08 ff ff ff    	pushl  -0xf8(%ebp)
80100a66:	53                   	push   %ebx
80100a67:	50                   	push   %eax
80100a68:	ff b5 f4 fe ff ff    	pushl  -0x10c(%ebp)
80100a6e:	e8 da 58 00 00       	call   8010634d <loaduvm>
80100a73:	83 c4 20             	add    $0x20,%esp
80100a76:	85 c0                	test   %eax,%eax
80100a78:	0f 89 4c ff ff ff    	jns    801009ca <exec+0xce>
80100a7e:	eb 49                	jmp    80100ac9 <exec+0x1cd>
  iunlockput(ip);
80100a80:	83 ec 0c             	sub    $0xc,%esp
80100a83:	53                   	push   %ebx
80100a84:	e8 0f 0d 00 00       	call   80101798 <iunlockput>
  end_op();
80100a89:	e8 5a 1e 00 00       	call   801028e8 <end_op>
  sz = PGROUNDUP(sz);
80100a8e:	8b 85 f0 fe ff ff    	mov    -0x110(%ebp),%eax
80100a94:	05 ff 0f 00 00       	add    $0xfff,%eax
80100a99:	25 00 f0 ff ff       	and    $0xfffff000,%eax
  if((sz = allocuvm(pgdir, sz, sz + 2*PGSIZE)) == 0)
80100a9e:	83 c4 0c             	add    $0xc,%esp
80100aa1:	8d 90 00 20 00 00    	lea    0x2000(%eax),%edx
80100aa7:	52                   	push   %edx
80100aa8:	50                   	push   %eax
80100aa9:	8b b5 f4 fe ff ff    	mov    -0x10c(%ebp),%esi
80100aaf:	56                   	push   %esi
80100ab0:	e8 cd 59 00 00       	call   80106482 <allocuvm>
80100ab5:	89 c7                	mov    %eax,%edi
80100ab7:	89 85 f0 fe ff ff    	mov    %eax,-0x110(%ebp)
80100abd:	83 c4 10             	add    $0x10,%esp
80100ac0:	85 c0                	test   %eax,%eax
80100ac2:	75 24                	jne    80100ae8 <exec+0x1ec>
  ip = 0;
80100ac4:	bb 00 00 00 00       	mov    $0x0,%ebx
  if(pgdir)
80100ac9:	8b 85 f4 fe ff ff    	mov    -0x10c(%ebp),%eax
80100acf:	85 c0                	test   %eax,%eax
80100ad1:	0f 84 87 fe ff ff    	je     8010095e <exec+0x62>
    freevm(pgdir);
80100ad7:	83 ec 0c             	sub    $0xc,%esp
80100ada:	50                   	push   %eax
80100adb:	e8 90 5a 00 00       	call   80106570 <freevm>
80100ae0:	83 c4 10             	add    $0x10,%esp
80100ae3:	e9 76 fe ff ff       	jmp    8010095e <exec+0x62>
  clearpteu(pgdir, (char*)(sz - 2*PGSIZE));
80100ae8:	8d 80 00 e0 ff ff    	lea    -0x2000(%eax),%eax
80100aee:	83 ec 08             	sub    $0x8,%esp
80100af1:	50                   	push   %eax
80100af2:	56                   	push   %esi
80100af3:	e8 79 5b 00 00       	call   80106671 <clearpteu>
  for(argc = 0; argv[argc]; argc++) {
80100af8:	83 c4 10             	add    $0x10,%esp
80100afb:	be 00 00 00 00       	mov    $0x0,%esi
80100b00:	8b 45 0c             	mov    0xc(%ebp),%eax
80100b03:	8d 1c b0             	lea    (%eax,%esi,4),%ebx
80100b06:	8b 03                	mov    (%ebx),%eax
80100b08:	85 c0                	test   %eax,%eax
80100b0a:	74 4d                	je     80100b59 <exec+0x25d>
    if(argc >= MAXARG)
80100b0c:	83 fe 1f             	cmp    $0x1f,%esi
80100b0f:	0f 87 13 01 00 00    	ja     80100c28 <exec+0x32c>
    sp = (sp - (strlen(argv[argc]) + 1)) & ~3;
80100b15:	83 ec 0c             	sub    $0xc,%esp
80100b18:	50                   	push   %eax
80100b19:	e8 ee 33 00 00       	call   80103f0c <strlen>
80100b1e:	29 c7                	sub    %eax,%edi
80100b20:	83 ef 01             	sub    $0x1,%edi
80100b23:	83 e7 fc             	and    $0xfffffffc,%edi
    if(copyout(pgdir, sp, argv[argc], strlen(argv[argc]) + 1) < 0)
80100b26:	83 c4 04             	add    $0x4,%esp
80100b29:	ff 33                	pushl  (%ebx)
80100b2b:	e8 dc 33 00 00       	call   80103f0c <strlen>
80100b30:	83 c0 01             	add    $0x1,%eax
80100b33:	50                   	push   %eax
80100b34:	ff 33                	pushl  (%ebx)
80100b36:	57                   	push   %edi
80100b37:	ff b5 f4 fe ff ff    	pushl  -0x10c(%ebp)
80100b3d:	e8 89 5c 00 00       	call   801067cb <copyout>
80100b42:	83 c4 20             	add    $0x20,%esp
80100b45:	85 c0                	test   %eax,%eax
80100b47:	0f 88 e5 00 00 00    	js     80100c32 <exec+0x336>
    ustack[3+argc] = sp;
80100b4d:	89 bc b5 64 ff ff ff 	mov    %edi,-0x9c(%ebp,%esi,4)
  for(argc = 0; argv[argc]; argc++) {
80100b54:	83 c6 01             	add    $0x1,%esi
80100b57:	eb a7                	jmp    80100b00 <exec+0x204>
80100b59:	89 f9                	mov    %edi,%ecx
80100b5b:	89 c3                	mov    %eax,%ebx
  ustack[3+argc] = 0;
80100b5d:	c7 84 b5 64 ff ff ff 	movl   $0x0,-0x9c(%ebp,%esi,4)
80100b64:	00 00 00 00 
  ustack[0] = 0xffffffff;  // fake return PC
80100b68:	c7 85 58 ff ff ff ff 	movl   $0xffffffff,-0xa8(%ebp)
80100b6f:	ff ff ff 
  ustack[1] = argc;
80100b72:	89 b5 5c ff ff ff    	mov    %esi,-0xa4(%ebp)
  ustack[2] = sp - (argc+1)*4;  // argv pointer
80100b78:	8d 04 b5 04 00 00 00 	lea    0x4(,%esi,4),%eax
80100b7f:	89 fa                	mov    %edi,%edx
80100b81:	29 c2                	sub    %eax,%edx
80100b83:	89 95 60 ff ff ff    	mov    %edx,-0xa0(%ebp)
  sp -= (3+argc+1) * 4;
80100b89:	8d 04 b5 10 00 00 00 	lea    0x10(,%esi,4),%eax
80100b90:	29 c1                	sub    %eax,%ecx
80100b92:	89 ce                	mov    %ecx,%esi
  if(copyout(pgdir, sp, ustack, (3+argc+1)*4) < 0)
80100b94:	50                   	push   %eax
80100b95:	8d 85 58 ff ff ff    	lea    -0xa8(%ebp),%eax
80100b9b:	50                   	push   %eax
80100b9c:	51                   	push   %ecx
80100b9d:	ff b5 f4 fe ff ff    	pushl  -0x10c(%ebp)
80100ba3:	e8 23 5c 00 00       	call   801067cb <copyout>
80100ba8:	83 c4 10             	add    $0x10,%esp
80100bab:	85 c0                	test   %eax,%eax
80100bad:	0f 88 16 ff ff ff    	js     80100ac9 <exec+0x1cd>
  for(last=s=path; *s; s++)
80100bb3:	8b 55 08             	mov    0x8(%ebp),%edx
80100bb6:	89 d0                	mov    %edx,%eax
80100bb8:	eb 03                	jmp    80100bbd <exec+0x2c1>
80100bba:	83 c0 01             	add    $0x1,%eax
80100bbd:	0f b6 08             	movzbl (%eax),%ecx
80100bc0:	84 c9                	test   %cl,%cl
80100bc2:	74 0a                	je     80100bce <exec+0x2d2>
    if(*s == '/')
80100bc4:	80 f9 2f             	cmp    $0x2f,%cl
80100bc7:	75 f1                	jne    80100bba <exec+0x2be>
      last = s+1;
80100bc9:	8d 50 01             	lea    0x1(%eax),%edx
80100bcc:	eb ec                	jmp    80100bba <exec+0x2be>
  safestrcpy(curproc->name, last, sizeof(curproc->name));
80100bce:	8b bd ec fe ff ff    	mov    -0x114(%ebp),%edi
80100bd4:	89 f8                	mov    %edi,%eax
80100bd6:	83 c0 6c             	add    $0x6c,%eax
80100bd9:	83 ec 04             	sub    $0x4,%esp
80100bdc:	6a 10                	push   $0x10
80100bde:	52                   	push   %edx
80100bdf:	50                   	push   %eax
80100be0:	e8 ea 32 00 00       	call   80103ecf <safestrcpy>
  oldpgdir = curproc->pgdir;
80100be5:	8b 5f 04             	mov    0x4(%edi),%ebx
  curproc->pgdir = pgdir;
80100be8:	8b 8d f4 fe ff ff    	mov    -0x10c(%ebp),%ecx
80100bee:	89 4f 04             	mov    %ecx,0x4(%edi)
  curproc->sz = sz;
80100bf1:	8b 8d f0 fe ff ff    	mov    -0x110(%ebp),%ecx
80100bf7:	89 0f                	mov    %ecx,(%edi)
  curproc->tf->eip = elf.entry;  // main
80100bf9:	8b 47 18             	mov    0x18(%edi),%eax
80100bfc:	8b 95 3c ff ff ff    	mov    -0xc4(%ebp),%edx
80100c02:	89 50 38             	mov    %edx,0x38(%eax)
  curproc->tf->esp = sp;
80100c05:	8b 47 18             	mov    0x18(%edi),%eax
80100c08:	89 70 44             	mov    %esi,0x44(%eax)
  switchuvm(curproc);
80100c0b:	89 3c 24             	mov    %edi,(%esp)
80100c0e:	e8 69 55 00 00       	call   8010617c <switchuvm>
  freevm(oldpgdir);
80100c13:	89 1c 24             	mov    %ebx,(%esp)
80100c16:	e8 55 59 00 00       	call   80106570 <freevm>
  return 0;
80100c1b:	83 c4 10             	add    $0x10,%esp
80100c1e:	b8 00 00 00 00       	mov    $0x0,%eax
80100c23:	e9 54 fd ff ff       	jmp    8010097c <exec+0x80>
  ip = 0;
80100c28:	bb 00 00 00 00       	mov    $0x0,%ebx
80100c2d:	e9 97 fe ff ff       	jmp    80100ac9 <exec+0x1cd>
80100c32:	bb 00 00 00 00       	mov    $0x0,%ebx
80100c37:	e9 8d fe ff ff       	jmp    80100ac9 <exec+0x1cd>
  return -1;
80100c3c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80100c41:	e9 36 fd ff ff       	jmp    8010097c <exec+0x80>

80100c46 <fileinit>:
  struct file file[NFILE];
} ftable;

void
fileinit(void)
{
80100c46:	f3 0f 1e fb          	endbr32 
80100c4a:	55                   	push   %ebp
80100c4b:	89 e5                	mov    %esp,%ebp
80100c4d:	83 ec 10             	sub    $0x10,%esp
  initlock(&ftable.lock, "ftable");
80100c50:	68 ed 68 10 80       	push   $0x801068ed
80100c55:	68 40 08 11 80       	push   $0x80110840
80100c5a:	e8 1c 2f 00 00       	call   80103b7b <initlock>
}
80100c5f:	83 c4 10             	add    $0x10,%esp
80100c62:	c9                   	leave  
80100c63:	c3                   	ret    

80100c64 <filealloc>:

// Allocate a file structure.
struct file*
filealloc(void)
{
80100c64:	f3 0f 1e fb          	endbr32 
80100c68:	55                   	push   %ebp
80100c69:	89 e5                	mov    %esp,%ebp
80100c6b:	53                   	push   %ebx
80100c6c:	83 ec 10             	sub    $0x10,%esp
  struct file *f;

  acquire(&ftable.lock);
80100c6f:	68 40 08 11 80       	push   $0x80110840
80100c74:	e8 3e 30 00 00       	call   80103cb7 <acquire>
  for(f = ftable.file; f < ftable.file + NFILE; f++){
80100c79:	83 c4 10             	add    $0x10,%esp
80100c7c:	bb 74 08 11 80       	mov    $0x80110874,%ebx
80100c81:	eb 03                	jmp    80100c86 <filealloc+0x22>
80100c83:	83 c3 18             	add    $0x18,%ebx
80100c86:	81 fb d4 11 11 80    	cmp    $0x801111d4,%ebx
80100c8c:	73 24                	jae    80100cb2 <filealloc+0x4e>
    if(f->ref == 0){
80100c8e:	83 7b 04 00          	cmpl   $0x0,0x4(%ebx)
80100c92:	75 ef                	jne    80100c83 <filealloc+0x1f>
      f->ref = 1;
80100c94:	c7 43 04 01 00 00 00 	movl   $0x1,0x4(%ebx)
      release(&ftable.lock);
80100c9b:	83 ec 0c             	sub    $0xc,%esp
80100c9e:	68 40 08 11 80       	push   $0x80110840
80100ca3:	e8 74 30 00 00       	call   80103d1c <release>
      return f;
80100ca8:	83 c4 10             	add    $0x10,%esp
    }
  }
  release(&ftable.lock);
  return 0;
}
80100cab:	89 d8                	mov    %ebx,%eax
80100cad:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80100cb0:	c9                   	leave  
80100cb1:	c3                   	ret    
  release(&ftable.lock);
80100cb2:	83 ec 0c             	sub    $0xc,%esp
80100cb5:	68 40 08 11 80       	push   $0x80110840
80100cba:	e8 5d 30 00 00       	call   80103d1c <release>
  return 0;
80100cbf:	83 c4 10             	add    $0x10,%esp
80100cc2:	bb 00 00 00 00       	mov    $0x0,%ebx
80100cc7:	eb e2                	jmp    80100cab <filealloc+0x47>

80100cc9 <filedup>:

// Increment ref count for file f.
struct file*
filedup(struct file *f)
{
80100cc9:	f3 0f 1e fb          	endbr32 
80100ccd:	55                   	push   %ebp
80100cce:	89 e5                	mov    %esp,%ebp
80100cd0:	53                   	push   %ebx
80100cd1:	83 ec 10             	sub    $0x10,%esp
80100cd4:	8b 5d 08             	mov    0x8(%ebp),%ebx
  acquire(&ftable.lock);
80100cd7:	68 40 08 11 80       	push   $0x80110840
80100cdc:	e8 d6 2f 00 00       	call   80103cb7 <acquire>
  if(f->ref < 1)
80100ce1:	8b 43 04             	mov    0x4(%ebx),%eax
80100ce4:	83 c4 10             	add    $0x10,%esp
80100ce7:	85 c0                	test   %eax,%eax
80100ce9:	7e 1a                	jle    80100d05 <filedup+0x3c>
    panic("filedup");
  f->ref++;
80100ceb:	83 c0 01             	add    $0x1,%eax
80100cee:	89 43 04             	mov    %eax,0x4(%ebx)
  release(&ftable.lock);
80100cf1:	83 ec 0c             	sub    $0xc,%esp
80100cf4:	68 40 08 11 80       	push   $0x80110840
80100cf9:	e8 1e 30 00 00       	call   80103d1c <release>
  return f;
}
80100cfe:	89 d8                	mov    %ebx,%eax
80100d00:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80100d03:	c9                   	leave  
80100d04:	c3                   	ret    
    panic("filedup");
80100d05:	83 ec 0c             	sub    $0xc,%esp
80100d08:	68 f4 68 10 80       	push   $0x801068f4
80100d0d:	e8 4a f6 ff ff       	call   8010035c <panic>

80100d12 <fileclose>:

// Close file f.  (Decrement ref count, close when reaches 0.)
void
fileclose(struct file *f)
{
80100d12:	f3 0f 1e fb          	endbr32 
80100d16:	55                   	push   %ebp
80100d17:	89 e5                	mov    %esp,%ebp
80100d19:	53                   	push   %ebx
80100d1a:	83 ec 30             	sub    $0x30,%esp
80100d1d:	8b 5d 08             	mov    0x8(%ebp),%ebx
  struct file ff;

  acquire(&ftable.lock);
80100d20:	68 40 08 11 80       	push   $0x80110840
80100d25:	e8 8d 2f 00 00       	call   80103cb7 <acquire>
  if(f->ref < 1)
80100d2a:	8b 43 04             	mov    0x4(%ebx),%eax
80100d2d:	83 c4 10             	add    $0x10,%esp
80100d30:	85 c0                	test   %eax,%eax
80100d32:	7e 65                	jle    80100d99 <fileclose+0x87>
    panic("fileclose");
  if(--f->ref > 0){
80100d34:	83 e8 01             	sub    $0x1,%eax
80100d37:	89 43 04             	mov    %eax,0x4(%ebx)
80100d3a:	85 c0                	test   %eax,%eax
80100d3c:	7f 68                	jg     80100da6 <fileclose+0x94>
    release(&ftable.lock);
    return;
  }
  ff = *f;
80100d3e:	8b 03                	mov    (%ebx),%eax
80100d40:	89 45 e0             	mov    %eax,-0x20(%ebp)
80100d43:	8b 43 08             	mov    0x8(%ebx),%eax
80100d46:	89 45 e8             	mov    %eax,-0x18(%ebp)
80100d49:	8b 43 0c             	mov    0xc(%ebx),%eax
80100d4c:	89 45 ec             	mov    %eax,-0x14(%ebp)
80100d4f:	8b 43 10             	mov    0x10(%ebx),%eax
80100d52:	89 45 f0             	mov    %eax,-0x10(%ebp)
  f->ref = 0;
80100d55:	c7 43 04 00 00 00 00 	movl   $0x0,0x4(%ebx)
  f->type = FD_NONE;
80100d5c:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
  release(&ftable.lock);
80100d62:	83 ec 0c             	sub    $0xc,%esp
80100d65:	68 40 08 11 80       	push   $0x80110840
80100d6a:	e8 ad 2f 00 00       	call   80103d1c <release>

  if(ff.type == FD_PIPE)
80100d6f:	8b 45 e0             	mov    -0x20(%ebp),%eax
80100d72:	83 c4 10             	add    $0x10,%esp
80100d75:	83 f8 01             	cmp    $0x1,%eax
80100d78:	74 41                	je     80100dbb <fileclose+0xa9>
    pipeclose(ff.pipe, ff.writable);
  else if(ff.type == FD_INODE){
80100d7a:	83 f8 02             	cmp    $0x2,%eax
80100d7d:	75 37                	jne    80100db6 <fileclose+0xa4>
    begin_op();
80100d7f:	e8 e6 1a 00 00       	call   8010286a <begin_op>
    iput(ff.ip);
80100d84:	83 ec 0c             	sub    $0xc,%esp
80100d87:	ff 75 f0             	pushl  -0x10(%ebp)
80100d8a:	e8 65 09 00 00       	call   801016f4 <iput>
    end_op();
80100d8f:	e8 54 1b 00 00       	call   801028e8 <end_op>
80100d94:	83 c4 10             	add    $0x10,%esp
80100d97:	eb 1d                	jmp    80100db6 <fileclose+0xa4>
    panic("fileclose");
80100d99:	83 ec 0c             	sub    $0xc,%esp
80100d9c:	68 fc 68 10 80       	push   $0x801068fc
80100da1:	e8 b6 f5 ff ff       	call   8010035c <panic>
    release(&ftable.lock);
80100da6:	83 ec 0c             	sub    $0xc,%esp
80100da9:	68 40 08 11 80       	push   $0x80110840
80100dae:	e8 69 2f 00 00       	call   80103d1c <release>
    return;
80100db3:	83 c4 10             	add    $0x10,%esp
  }
}
80100db6:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80100db9:	c9                   	leave  
80100dba:	c3                   	ret    
    pipeclose(ff.pipe, ff.writable);
80100dbb:	83 ec 08             	sub    $0x8,%esp
80100dbe:	0f be 45 e9          	movsbl -0x17(%ebp),%eax
80100dc2:	50                   	push   %eax
80100dc3:	ff 75 ec             	pushl  -0x14(%ebp)
80100dc6:	e8 32 21 00 00       	call   80102efd <pipeclose>
80100dcb:	83 c4 10             	add    $0x10,%esp
80100dce:	eb e6                	jmp    80100db6 <fileclose+0xa4>

80100dd0 <filestat>:

// Get metadata about file f.
int
filestat(struct file *f, struct stat *st)
{
80100dd0:	f3 0f 1e fb          	endbr32 
80100dd4:	55                   	push   %ebp
80100dd5:	89 e5                	mov    %esp,%ebp
80100dd7:	53                   	push   %ebx
80100dd8:	83 ec 04             	sub    $0x4,%esp
80100ddb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  if(f->type == FD_INODE){
80100dde:	83 3b 02             	cmpl   $0x2,(%ebx)
80100de1:	75 31                	jne    80100e14 <filestat+0x44>
    ilock(f->ip);
80100de3:	83 ec 0c             	sub    $0xc,%esp
80100de6:	ff 73 10             	pushl  0x10(%ebx)
80100de9:	e8 f7 07 00 00       	call   801015e5 <ilock>
    stati(f->ip, st);
80100dee:	83 c4 08             	add    $0x8,%esp
80100df1:	ff 75 0c             	pushl  0xc(%ebp)
80100df4:	ff 73 10             	pushl  0x10(%ebx)
80100df7:	e8 c0 09 00 00       	call   801017bc <stati>
    iunlock(f->ip);
80100dfc:	83 c4 04             	add    $0x4,%esp
80100dff:	ff 73 10             	pushl  0x10(%ebx)
80100e02:	e8 a4 08 00 00       	call   801016ab <iunlock>
    return 0;
80100e07:	83 c4 10             	add    $0x10,%esp
80100e0a:	b8 00 00 00 00       	mov    $0x0,%eax
  }
  return -1;
}
80100e0f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80100e12:	c9                   	leave  
80100e13:	c3                   	ret    
  return -1;
80100e14:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80100e19:	eb f4                	jmp    80100e0f <filestat+0x3f>

80100e1b <fileread>:

// Read from file f.
int
fileread(struct file *f, char *addr, int n)
{
80100e1b:	f3 0f 1e fb          	endbr32 
80100e1f:	55                   	push   %ebp
80100e20:	89 e5                	mov    %esp,%ebp
80100e22:	56                   	push   %esi
80100e23:	53                   	push   %ebx
80100e24:	8b 5d 08             	mov    0x8(%ebp),%ebx
  int r;

  if(f->readable == 0)
80100e27:	80 7b 08 00          	cmpb   $0x0,0x8(%ebx)
80100e2b:	74 70                	je     80100e9d <fileread+0x82>
    return -1;
  if(f->type == FD_PIPE)
80100e2d:	8b 03                	mov    (%ebx),%eax
80100e2f:	83 f8 01             	cmp    $0x1,%eax
80100e32:	74 44                	je     80100e78 <fileread+0x5d>
    return piperead(f->pipe, addr, n);
  if(f->type == FD_INODE){
80100e34:	83 f8 02             	cmp    $0x2,%eax
80100e37:	75 57                	jne    80100e90 <fileread+0x75>
    ilock(f->ip);
80100e39:	83 ec 0c             	sub    $0xc,%esp
80100e3c:	ff 73 10             	pushl  0x10(%ebx)
80100e3f:	e8 a1 07 00 00       	call   801015e5 <ilock>
    if((r = readi(f->ip, addr, f->off, n)) > 0)
80100e44:	ff 75 10             	pushl  0x10(%ebp)
80100e47:	ff 73 14             	pushl  0x14(%ebx)
80100e4a:	ff 75 0c             	pushl  0xc(%ebp)
80100e4d:	ff 73 10             	pushl  0x10(%ebx)
80100e50:	e8 96 09 00 00       	call   801017eb <readi>
80100e55:	89 c6                	mov    %eax,%esi
80100e57:	83 c4 20             	add    $0x20,%esp
80100e5a:	85 c0                	test   %eax,%eax
80100e5c:	7e 03                	jle    80100e61 <fileread+0x46>
      f->off += r;
80100e5e:	01 43 14             	add    %eax,0x14(%ebx)
    iunlock(f->ip);
80100e61:	83 ec 0c             	sub    $0xc,%esp
80100e64:	ff 73 10             	pushl  0x10(%ebx)
80100e67:	e8 3f 08 00 00       	call   801016ab <iunlock>
    return r;
80100e6c:	83 c4 10             	add    $0x10,%esp
  }
  panic("fileread");
}
80100e6f:	89 f0                	mov    %esi,%eax
80100e71:	8d 65 f8             	lea    -0x8(%ebp),%esp
80100e74:	5b                   	pop    %ebx
80100e75:	5e                   	pop    %esi
80100e76:	5d                   	pop    %ebp
80100e77:	c3                   	ret    
    return piperead(f->pipe, addr, n);
80100e78:	83 ec 04             	sub    $0x4,%esp
80100e7b:	ff 75 10             	pushl  0x10(%ebp)
80100e7e:	ff 75 0c             	pushl  0xc(%ebp)
80100e81:	ff 73 0c             	pushl  0xc(%ebx)
80100e84:	e8 ce 21 00 00       	call   80103057 <piperead>
80100e89:	89 c6                	mov    %eax,%esi
80100e8b:	83 c4 10             	add    $0x10,%esp
80100e8e:	eb df                	jmp    80100e6f <fileread+0x54>
  panic("fileread");
80100e90:	83 ec 0c             	sub    $0xc,%esp
80100e93:	68 06 69 10 80       	push   $0x80106906
80100e98:	e8 bf f4 ff ff       	call   8010035c <panic>
    return -1;
80100e9d:	be ff ff ff ff       	mov    $0xffffffff,%esi
80100ea2:	eb cb                	jmp    80100e6f <fileread+0x54>

80100ea4 <filewrite>:

//PAGEBREAK!
// Write to file f.
int
filewrite(struct file *f, char *addr, int n)
{
80100ea4:	f3 0f 1e fb          	endbr32 
80100ea8:	55                   	push   %ebp
80100ea9:	89 e5                	mov    %esp,%ebp
80100eab:	57                   	push   %edi
80100eac:	56                   	push   %esi
80100ead:	53                   	push   %ebx
80100eae:	83 ec 1c             	sub    $0x1c,%esp
80100eb1:	8b 75 08             	mov    0x8(%ebp),%esi
  int r;

  if(f->writable == 0)
80100eb4:	80 7e 09 00          	cmpb   $0x0,0x9(%esi)
80100eb8:	0f 84 cc 00 00 00    	je     80100f8a <filewrite+0xe6>
    return -1;
  if(f->type == FD_PIPE)
80100ebe:	8b 06                	mov    (%esi),%eax
80100ec0:	83 f8 01             	cmp    $0x1,%eax
80100ec3:	74 10                	je     80100ed5 <filewrite+0x31>
    return pipewrite(f->pipe, addr, n);
  if(f->type == FD_INODE){
80100ec5:	83 f8 02             	cmp    $0x2,%eax
80100ec8:	0f 85 af 00 00 00    	jne    80100f7d <filewrite+0xd9>
    // i-node, indirect block, allocation blocks,
    // and 2 blocks of slop for non-aligned writes.
    // this really belongs lower down, since writei()
    // might be writing a device like the console.
    int max = ((MAXOPBLOCKS-1-1-2) / 2) * 512;
    int i = 0;
80100ece:	bf 00 00 00 00       	mov    $0x0,%edi
80100ed3:	eb 67                	jmp    80100f3c <filewrite+0x98>
    return pipewrite(f->pipe, addr, n);
80100ed5:	83 ec 04             	sub    $0x4,%esp
80100ed8:	ff 75 10             	pushl  0x10(%ebp)
80100edb:	ff 75 0c             	pushl  0xc(%ebp)
80100ede:	ff 76 0c             	pushl  0xc(%esi)
80100ee1:	e8 a7 20 00 00       	call   80102f8d <pipewrite>
80100ee6:	83 c4 10             	add    $0x10,%esp
80100ee9:	e9 82 00 00 00       	jmp    80100f70 <filewrite+0xcc>
    while(i < n){
      int n1 = n - i;
      if(n1 > max)
        n1 = max;

      begin_op();
80100eee:	e8 77 19 00 00       	call   8010286a <begin_op>
      ilock(f->ip);
80100ef3:	83 ec 0c             	sub    $0xc,%esp
80100ef6:	ff 76 10             	pushl  0x10(%esi)
80100ef9:	e8 e7 06 00 00       	call   801015e5 <ilock>
      if ((r = writei(f->ip, addr + i, f->off, n1)) > 0)
80100efe:	ff 75 e4             	pushl  -0x1c(%ebp)
80100f01:	ff 76 14             	pushl  0x14(%esi)
80100f04:	89 f8                	mov    %edi,%eax
80100f06:	03 45 0c             	add    0xc(%ebp),%eax
80100f09:	50                   	push   %eax
80100f0a:	ff 76 10             	pushl  0x10(%esi)
80100f0d:	e8 da 09 00 00       	call   801018ec <writei>
80100f12:	89 c3                	mov    %eax,%ebx
80100f14:	83 c4 20             	add    $0x20,%esp
80100f17:	85 c0                	test   %eax,%eax
80100f19:	7e 03                	jle    80100f1e <filewrite+0x7a>
        f->off += r;
80100f1b:	01 46 14             	add    %eax,0x14(%esi)
      iunlock(f->ip);
80100f1e:	83 ec 0c             	sub    $0xc,%esp
80100f21:	ff 76 10             	pushl  0x10(%esi)
80100f24:	e8 82 07 00 00       	call   801016ab <iunlock>
      end_op();
80100f29:	e8 ba 19 00 00       	call   801028e8 <end_op>

      if(r < 0)
80100f2e:	83 c4 10             	add    $0x10,%esp
80100f31:	85 db                	test   %ebx,%ebx
80100f33:	78 31                	js     80100f66 <filewrite+0xc2>
        break;
      if(r != n1)
80100f35:	39 5d e4             	cmp    %ebx,-0x1c(%ebp)
80100f38:	75 1f                	jne    80100f59 <filewrite+0xb5>
        panic("short filewrite");
      i += r;
80100f3a:	01 df                	add    %ebx,%edi
    while(i < n){
80100f3c:	3b 7d 10             	cmp    0x10(%ebp),%edi
80100f3f:	7d 25                	jge    80100f66 <filewrite+0xc2>
      int n1 = n - i;
80100f41:	8b 45 10             	mov    0x10(%ebp),%eax
80100f44:	29 f8                	sub    %edi,%eax
80100f46:	89 45 e4             	mov    %eax,-0x1c(%ebp)
      if(n1 > max)
80100f49:	3d 00 06 00 00       	cmp    $0x600,%eax
80100f4e:	7e 9e                	jle    80100eee <filewrite+0x4a>
        n1 = max;
80100f50:	c7 45 e4 00 06 00 00 	movl   $0x600,-0x1c(%ebp)
80100f57:	eb 95                	jmp    80100eee <filewrite+0x4a>
        panic("short filewrite");
80100f59:	83 ec 0c             	sub    $0xc,%esp
80100f5c:	68 0f 69 10 80       	push   $0x8010690f
80100f61:	e8 f6 f3 ff ff       	call   8010035c <panic>
    }
    return i == n ? n : -1;
80100f66:	3b 7d 10             	cmp    0x10(%ebp),%edi
80100f69:	74 0d                	je     80100f78 <filewrite+0xd4>
80100f6b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  }
  panic("filewrite");
}
80100f70:	8d 65 f4             	lea    -0xc(%ebp),%esp
80100f73:	5b                   	pop    %ebx
80100f74:	5e                   	pop    %esi
80100f75:	5f                   	pop    %edi
80100f76:	5d                   	pop    %ebp
80100f77:	c3                   	ret    
    return i == n ? n : -1;
80100f78:	8b 45 10             	mov    0x10(%ebp),%eax
80100f7b:	eb f3                	jmp    80100f70 <filewrite+0xcc>
  panic("filewrite");
80100f7d:	83 ec 0c             	sub    $0xc,%esp
80100f80:	68 15 69 10 80       	push   $0x80106915
80100f85:	e8 d2 f3 ff ff       	call   8010035c <panic>
    return -1;
80100f8a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80100f8f:	eb df                	jmp    80100f70 <filewrite+0xcc>

80100f91 <skipelem>:
//   skipelem("a", name) = "", setting name = "a"
//   skipelem("", name) = skipelem("////", name) = 0
//
static char*
skipelem(char *path, char *name)
{
80100f91:	55                   	push   %ebp
80100f92:	89 e5                	mov    %esp,%ebp
80100f94:	57                   	push   %edi
80100f95:	56                   	push   %esi
80100f96:	53                   	push   %ebx
80100f97:	83 ec 0c             	sub    $0xc,%esp
80100f9a:	89 d6                	mov    %edx,%esi
  char *s;
  int len;

  while(*path == '/')
80100f9c:	0f b6 10             	movzbl (%eax),%edx
80100f9f:	80 fa 2f             	cmp    $0x2f,%dl
80100fa2:	75 05                	jne    80100fa9 <skipelem+0x18>
    path++;
80100fa4:	83 c0 01             	add    $0x1,%eax
80100fa7:	eb f3                	jmp    80100f9c <skipelem+0xb>
  if(*path == 0)
80100fa9:	84 d2                	test   %dl,%dl
80100fab:	74 59                	je     80101006 <skipelem+0x75>
80100fad:	89 c3                	mov    %eax,%ebx
    return 0;
  s = path;
  while(*path != '/' && *path != 0)
80100faf:	0f b6 13             	movzbl (%ebx),%edx
80100fb2:	80 fa 2f             	cmp    $0x2f,%dl
80100fb5:	0f 95 c1             	setne  %cl
80100fb8:	84 d2                	test   %dl,%dl
80100fba:	0f 95 c2             	setne  %dl
80100fbd:	84 d1                	test   %dl,%cl
80100fbf:	74 05                	je     80100fc6 <skipelem+0x35>
    path++;
80100fc1:	83 c3 01             	add    $0x1,%ebx
80100fc4:	eb e9                	jmp    80100faf <skipelem+0x1e>
  len = path - s;
80100fc6:	89 df                	mov    %ebx,%edi
80100fc8:	29 c7                	sub    %eax,%edi
  if(len >= DIRSIZ)
80100fca:	83 ff 0d             	cmp    $0xd,%edi
80100fcd:	7e 11                	jle    80100fe0 <skipelem+0x4f>
    memmove(name, s, DIRSIZ);
80100fcf:	83 ec 04             	sub    $0x4,%esp
80100fd2:	6a 0e                	push   $0xe
80100fd4:	50                   	push   %eax
80100fd5:	56                   	push   %esi
80100fd6:	e8 00 2e 00 00       	call   80103ddb <memmove>
80100fdb:	83 c4 10             	add    $0x10,%esp
80100fde:	eb 17                	jmp    80100ff7 <skipelem+0x66>
  else {
    memmove(name, s, len);
80100fe0:	83 ec 04             	sub    $0x4,%esp
80100fe3:	57                   	push   %edi
80100fe4:	50                   	push   %eax
80100fe5:	56                   	push   %esi
80100fe6:	e8 f0 2d 00 00       	call   80103ddb <memmove>
    name[len] = 0;
80100feb:	c6 04 3e 00          	movb   $0x0,(%esi,%edi,1)
80100fef:	83 c4 10             	add    $0x10,%esp
80100ff2:	eb 03                	jmp    80100ff7 <skipelem+0x66>
  }
  while(*path == '/')
    path++;
80100ff4:	83 c3 01             	add    $0x1,%ebx
  while(*path == '/')
80100ff7:	80 3b 2f             	cmpb   $0x2f,(%ebx)
80100ffa:	74 f8                	je     80100ff4 <skipelem+0x63>
  return path;
}
80100ffc:	89 d8                	mov    %ebx,%eax
80100ffe:	8d 65 f4             	lea    -0xc(%ebp),%esp
80101001:	5b                   	pop    %ebx
80101002:	5e                   	pop    %esi
80101003:	5f                   	pop    %edi
80101004:	5d                   	pop    %ebp
80101005:	c3                   	ret    
    return 0;
80101006:	bb 00 00 00 00       	mov    $0x0,%ebx
8010100b:	eb ef                	jmp    80100ffc <skipelem+0x6b>

8010100d <bzero>:
{
8010100d:	55                   	push   %ebp
8010100e:	89 e5                	mov    %esp,%ebp
80101010:	53                   	push   %ebx
80101011:	83 ec 0c             	sub    $0xc,%esp
  bp = bread(dev, bno);
80101014:	52                   	push   %edx
80101015:	50                   	push   %eax
80101016:	e8 55 f1 ff ff       	call   80100170 <bread>
8010101b:	89 c3                	mov    %eax,%ebx
  memset(bp->data, 0, BSIZE);
8010101d:	8d 40 5c             	lea    0x5c(%eax),%eax
80101020:	83 c4 0c             	add    $0xc,%esp
80101023:	68 00 02 00 00       	push   $0x200
80101028:	6a 00                	push   $0x0
8010102a:	50                   	push   %eax
8010102b:	e8 33 2d 00 00       	call   80103d63 <memset>
  log_write(bp);
80101030:	89 1c 24             	mov    %ebx,(%esp)
80101033:	e8 63 19 00 00       	call   8010299b <log_write>
  brelse(bp);
80101038:	89 1c 24             	mov    %ebx,(%esp)
8010103b:	e8 a1 f1 ff ff       	call   801001e1 <brelse>
}
80101040:	83 c4 10             	add    $0x10,%esp
80101043:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80101046:	c9                   	leave  
80101047:	c3                   	ret    

80101048 <balloc>:
{
80101048:	55                   	push   %ebp
80101049:	89 e5                	mov    %esp,%ebp
8010104b:	57                   	push   %edi
8010104c:	56                   	push   %esi
8010104d:	53                   	push   %ebx
8010104e:	83 ec 1c             	sub    $0x1c,%esp
80101051:	89 45 d8             	mov    %eax,-0x28(%ebp)
  for(b = 0; b < sb.size; b += BPB){
80101054:	be 00 00 00 00       	mov    $0x0,%esi
80101059:	eb 14                	jmp    8010106f <balloc+0x27>
    brelse(bp);
8010105b:	83 ec 0c             	sub    $0xc,%esp
8010105e:	ff 75 e4             	pushl  -0x1c(%ebp)
80101061:	e8 7b f1 ff ff       	call   801001e1 <brelse>
  for(b = 0; b < sb.size; b += BPB){
80101066:	81 c6 00 10 00 00    	add    $0x1000,%esi
8010106c:	83 c4 10             	add    $0x10,%esp
8010106f:	39 35 40 12 11 80    	cmp    %esi,0x80111240
80101075:	76 75                	jbe    801010ec <balloc+0xa4>
    bp = bread(dev, BBLOCK(b, sb));
80101077:	8d 86 ff 0f 00 00    	lea    0xfff(%esi),%eax
8010107d:	85 f6                	test   %esi,%esi
8010107f:	0f 49 c6             	cmovns %esi,%eax
80101082:	c1 f8 0c             	sar    $0xc,%eax
80101085:	83 ec 08             	sub    $0x8,%esp
80101088:	03 05 58 12 11 80    	add    0x80111258,%eax
8010108e:	50                   	push   %eax
8010108f:	ff 75 d8             	pushl  -0x28(%ebp)
80101092:	e8 d9 f0 ff ff       	call   80100170 <bread>
80101097:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    for(bi = 0; bi < BPB && b + bi < sb.size; bi++){
8010109a:	83 c4 10             	add    $0x10,%esp
8010109d:	b8 00 00 00 00       	mov    $0x0,%eax
801010a2:	3d ff 0f 00 00       	cmp    $0xfff,%eax
801010a7:	7f b2                	jg     8010105b <balloc+0x13>
801010a9:	8d 1c 06             	lea    (%esi,%eax,1),%ebx
801010ac:	89 5d e0             	mov    %ebx,-0x20(%ebp)
801010af:	3b 1d 40 12 11 80    	cmp    0x80111240,%ebx
801010b5:	73 a4                	jae    8010105b <balloc+0x13>
      m = 1 << (bi % 8);
801010b7:	99                   	cltd   
801010b8:	c1 ea 1d             	shr    $0x1d,%edx
801010bb:	8d 0c 10             	lea    (%eax,%edx,1),%ecx
801010be:	83 e1 07             	and    $0x7,%ecx
801010c1:	29 d1                	sub    %edx,%ecx
801010c3:	ba 01 00 00 00       	mov    $0x1,%edx
801010c8:	d3 e2                	shl    %cl,%edx
      if((bp->data[bi/8] & m) == 0){  // Is block free?
801010ca:	8d 48 07             	lea    0x7(%eax),%ecx
801010cd:	85 c0                	test   %eax,%eax
801010cf:	0f 49 c8             	cmovns %eax,%ecx
801010d2:	c1 f9 03             	sar    $0x3,%ecx
801010d5:	89 4d dc             	mov    %ecx,-0x24(%ebp)
801010d8:	8b 7d e4             	mov    -0x1c(%ebp),%edi
801010db:	0f b6 4c 0f 5c       	movzbl 0x5c(%edi,%ecx,1),%ecx
801010e0:	0f b6 f9             	movzbl %cl,%edi
801010e3:	85 d7                	test   %edx,%edi
801010e5:	74 12                	je     801010f9 <balloc+0xb1>
    for(bi = 0; bi < BPB && b + bi < sb.size; bi++){
801010e7:	83 c0 01             	add    $0x1,%eax
801010ea:	eb b6                	jmp    801010a2 <balloc+0x5a>
  panic("balloc: out of blocks");
801010ec:	83 ec 0c             	sub    $0xc,%esp
801010ef:	68 1f 69 10 80       	push   $0x8010691f
801010f4:	e8 63 f2 ff ff       	call   8010035c <panic>
        bp->data[bi/8] |= m;  // Mark block in use.
801010f9:	09 ca                	or     %ecx,%edx
801010fb:	8b 45 e4             	mov    -0x1c(%ebp),%eax
801010fe:	8b 75 dc             	mov    -0x24(%ebp),%esi
80101101:	88 54 30 5c          	mov    %dl,0x5c(%eax,%esi,1)
        log_write(bp);
80101105:	83 ec 0c             	sub    $0xc,%esp
80101108:	89 c6                	mov    %eax,%esi
8010110a:	50                   	push   %eax
8010110b:	e8 8b 18 00 00       	call   8010299b <log_write>
        brelse(bp);
80101110:	89 34 24             	mov    %esi,(%esp)
80101113:	e8 c9 f0 ff ff       	call   801001e1 <brelse>
        bzero(dev, b + bi);
80101118:	89 da                	mov    %ebx,%edx
8010111a:	8b 45 d8             	mov    -0x28(%ebp),%eax
8010111d:	e8 eb fe ff ff       	call   8010100d <bzero>
}
80101122:	8b 45 e0             	mov    -0x20(%ebp),%eax
80101125:	8d 65 f4             	lea    -0xc(%ebp),%esp
80101128:	5b                   	pop    %ebx
80101129:	5e                   	pop    %esi
8010112a:	5f                   	pop    %edi
8010112b:	5d                   	pop    %ebp
8010112c:	c3                   	ret    

8010112d <bmap>:
{
8010112d:	55                   	push   %ebp
8010112e:	89 e5                	mov    %esp,%ebp
80101130:	57                   	push   %edi
80101131:	56                   	push   %esi
80101132:	53                   	push   %ebx
80101133:	83 ec 1c             	sub    $0x1c,%esp
80101136:	89 c3                	mov    %eax,%ebx
80101138:	89 d7                	mov    %edx,%edi
  if(bn < NDIRECT){
8010113a:	83 fa 0b             	cmp    $0xb,%edx
8010113d:	76 45                	jbe    80101184 <bmap+0x57>
  bn -= NDIRECT;
8010113f:	8d 72 f4             	lea    -0xc(%edx),%esi
  if(bn < NINDIRECT){
80101142:	83 fe 7f             	cmp    $0x7f,%esi
80101145:	77 7f                	ja     801011c6 <bmap+0x99>
    if((addr = ip->addrs[NDIRECT]) == 0)
80101147:	8b 80 8c 00 00 00    	mov    0x8c(%eax),%eax
8010114d:	85 c0                	test   %eax,%eax
8010114f:	74 4a                	je     8010119b <bmap+0x6e>
    bp = bread(ip->dev, addr);
80101151:	83 ec 08             	sub    $0x8,%esp
80101154:	50                   	push   %eax
80101155:	ff 33                	pushl  (%ebx)
80101157:	e8 14 f0 ff ff       	call   80100170 <bread>
8010115c:	89 c7                	mov    %eax,%edi
    if((addr = a[bn]) == 0){
8010115e:	8d 44 b0 5c          	lea    0x5c(%eax,%esi,4),%eax
80101162:	89 45 e4             	mov    %eax,-0x1c(%ebp)
80101165:	8b 30                	mov    (%eax),%esi
80101167:	83 c4 10             	add    $0x10,%esp
8010116a:	85 f6                	test   %esi,%esi
8010116c:	74 3c                	je     801011aa <bmap+0x7d>
    brelse(bp);
8010116e:	83 ec 0c             	sub    $0xc,%esp
80101171:	57                   	push   %edi
80101172:	e8 6a f0 ff ff       	call   801001e1 <brelse>
    return addr;
80101177:	83 c4 10             	add    $0x10,%esp
}
8010117a:	89 f0                	mov    %esi,%eax
8010117c:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010117f:	5b                   	pop    %ebx
80101180:	5e                   	pop    %esi
80101181:	5f                   	pop    %edi
80101182:	5d                   	pop    %ebp
80101183:	c3                   	ret    
    if((addr = ip->addrs[bn]) == 0)
80101184:	8b 74 90 5c          	mov    0x5c(%eax,%edx,4),%esi
80101188:	85 f6                	test   %esi,%esi
8010118a:	75 ee                	jne    8010117a <bmap+0x4d>
      ip->addrs[bn] = addr = balloc(ip->dev);
8010118c:	8b 00                	mov    (%eax),%eax
8010118e:	e8 b5 fe ff ff       	call   80101048 <balloc>
80101193:	89 c6                	mov    %eax,%esi
80101195:	89 44 bb 5c          	mov    %eax,0x5c(%ebx,%edi,4)
    return addr;
80101199:	eb df                	jmp    8010117a <bmap+0x4d>
      ip->addrs[NDIRECT] = addr = balloc(ip->dev);
8010119b:	8b 03                	mov    (%ebx),%eax
8010119d:	e8 a6 fe ff ff       	call   80101048 <balloc>
801011a2:	89 83 8c 00 00 00    	mov    %eax,0x8c(%ebx)
801011a8:	eb a7                	jmp    80101151 <bmap+0x24>
      a[bn] = addr = balloc(ip->dev);
801011aa:	8b 03                	mov    (%ebx),%eax
801011ac:	e8 97 fe ff ff       	call   80101048 <balloc>
801011b1:	89 c6                	mov    %eax,%esi
801011b3:	8b 45 e4             	mov    -0x1c(%ebp),%eax
801011b6:	89 30                	mov    %esi,(%eax)
      log_write(bp);
801011b8:	83 ec 0c             	sub    $0xc,%esp
801011bb:	57                   	push   %edi
801011bc:	e8 da 17 00 00       	call   8010299b <log_write>
801011c1:	83 c4 10             	add    $0x10,%esp
801011c4:	eb a8                	jmp    8010116e <bmap+0x41>
  panic("bmap: out of range");
801011c6:	83 ec 0c             	sub    $0xc,%esp
801011c9:	68 35 69 10 80       	push   $0x80106935
801011ce:	e8 89 f1 ff ff       	call   8010035c <panic>

801011d3 <iget>:
{
801011d3:	55                   	push   %ebp
801011d4:	89 e5                	mov    %esp,%ebp
801011d6:	57                   	push   %edi
801011d7:	56                   	push   %esi
801011d8:	53                   	push   %ebx
801011d9:	83 ec 28             	sub    $0x28,%esp
801011dc:	89 c7                	mov    %eax,%edi
801011de:	89 55 e4             	mov    %edx,-0x1c(%ebp)
  acquire(&icache.lock);
801011e1:	68 60 12 11 80       	push   $0x80111260
801011e6:	e8 cc 2a 00 00       	call   80103cb7 <acquire>
  for(ip = &icache.inode[0]; ip < &icache.inode[NINODE]; ip++){
801011eb:	83 c4 10             	add    $0x10,%esp
  empty = 0;
801011ee:	be 00 00 00 00       	mov    $0x0,%esi
  for(ip = &icache.inode[0]; ip < &icache.inode[NINODE]; ip++){
801011f3:	bb 94 12 11 80       	mov    $0x80111294,%ebx
801011f8:	eb 0a                	jmp    80101204 <iget+0x31>
    if(empty == 0 && ip->ref == 0)    // Remember empty slot.
801011fa:	85 f6                	test   %esi,%esi
801011fc:	74 3b                	je     80101239 <iget+0x66>
  for(ip = &icache.inode[0]; ip < &icache.inode[NINODE]; ip++){
801011fe:	81 c3 90 00 00 00    	add    $0x90,%ebx
80101204:	81 fb b4 2e 11 80    	cmp    $0x80112eb4,%ebx
8010120a:	73 35                	jae    80101241 <iget+0x6e>
    if(ip->ref > 0 && ip->dev == dev && ip->inum == inum){
8010120c:	8b 43 08             	mov    0x8(%ebx),%eax
8010120f:	85 c0                	test   %eax,%eax
80101211:	7e e7                	jle    801011fa <iget+0x27>
80101213:	39 3b                	cmp    %edi,(%ebx)
80101215:	75 e3                	jne    801011fa <iget+0x27>
80101217:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
8010121a:	39 4b 04             	cmp    %ecx,0x4(%ebx)
8010121d:	75 db                	jne    801011fa <iget+0x27>
      ip->ref++;
8010121f:	83 c0 01             	add    $0x1,%eax
80101222:	89 43 08             	mov    %eax,0x8(%ebx)
      release(&icache.lock);
80101225:	83 ec 0c             	sub    $0xc,%esp
80101228:	68 60 12 11 80       	push   $0x80111260
8010122d:	e8 ea 2a 00 00       	call   80103d1c <release>
      return ip;
80101232:	83 c4 10             	add    $0x10,%esp
80101235:	89 de                	mov    %ebx,%esi
80101237:	eb 32                	jmp    8010126b <iget+0x98>
    if(empty == 0 && ip->ref == 0)    // Remember empty slot.
80101239:	85 c0                	test   %eax,%eax
8010123b:	75 c1                	jne    801011fe <iget+0x2b>
      empty = ip;
8010123d:	89 de                	mov    %ebx,%esi
8010123f:	eb bd                	jmp    801011fe <iget+0x2b>
  if(empty == 0)
80101241:	85 f6                	test   %esi,%esi
80101243:	74 30                	je     80101275 <iget+0xa2>
  ip->dev = dev;
80101245:	89 3e                	mov    %edi,(%esi)
  ip->inum = inum;
80101247:	8b 45 e4             	mov    -0x1c(%ebp),%eax
8010124a:	89 46 04             	mov    %eax,0x4(%esi)
  ip->ref = 1;
8010124d:	c7 46 08 01 00 00 00 	movl   $0x1,0x8(%esi)
  ip->valid = 0;
80101254:	c7 46 4c 00 00 00 00 	movl   $0x0,0x4c(%esi)
  release(&icache.lock);
8010125b:	83 ec 0c             	sub    $0xc,%esp
8010125e:	68 60 12 11 80       	push   $0x80111260
80101263:	e8 b4 2a 00 00       	call   80103d1c <release>
  return ip;
80101268:	83 c4 10             	add    $0x10,%esp
}
8010126b:	89 f0                	mov    %esi,%eax
8010126d:	8d 65 f4             	lea    -0xc(%ebp),%esp
80101270:	5b                   	pop    %ebx
80101271:	5e                   	pop    %esi
80101272:	5f                   	pop    %edi
80101273:	5d                   	pop    %ebp
80101274:	c3                   	ret    
    panic("iget: no inodes");
80101275:	83 ec 0c             	sub    $0xc,%esp
80101278:	68 48 69 10 80       	push   $0x80106948
8010127d:	e8 da f0 ff ff       	call   8010035c <panic>

80101282 <readsb>:
{
80101282:	f3 0f 1e fb          	endbr32 
80101286:	55                   	push   %ebp
80101287:	89 e5                	mov    %esp,%ebp
80101289:	53                   	push   %ebx
8010128a:	83 ec 0c             	sub    $0xc,%esp
  bp = bread(dev, 1);
8010128d:	6a 01                	push   $0x1
8010128f:	ff 75 08             	pushl  0x8(%ebp)
80101292:	e8 d9 ee ff ff       	call   80100170 <bread>
80101297:	89 c3                	mov    %eax,%ebx
  memmove(sb, bp->data, sizeof(*sb));
80101299:	8d 40 5c             	lea    0x5c(%eax),%eax
8010129c:	83 c4 0c             	add    $0xc,%esp
8010129f:	6a 1c                	push   $0x1c
801012a1:	50                   	push   %eax
801012a2:	ff 75 0c             	pushl  0xc(%ebp)
801012a5:	e8 31 2b 00 00       	call   80103ddb <memmove>
  brelse(bp);
801012aa:	89 1c 24             	mov    %ebx,(%esp)
801012ad:	e8 2f ef ff ff       	call   801001e1 <brelse>
}
801012b2:	83 c4 10             	add    $0x10,%esp
801012b5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801012b8:	c9                   	leave  
801012b9:	c3                   	ret    

801012ba <bfree>:
{
801012ba:	55                   	push   %ebp
801012bb:	89 e5                	mov    %esp,%ebp
801012bd:	57                   	push   %edi
801012be:	56                   	push   %esi
801012bf:	53                   	push   %ebx
801012c0:	83 ec 14             	sub    $0x14,%esp
801012c3:	89 c3                	mov    %eax,%ebx
801012c5:	89 d6                	mov    %edx,%esi
  readsb(dev, &sb);
801012c7:	68 40 12 11 80       	push   $0x80111240
801012cc:	50                   	push   %eax
801012cd:	e8 b0 ff ff ff       	call   80101282 <readsb>
  bp = bread(dev, BBLOCK(b, sb));
801012d2:	89 f0                	mov    %esi,%eax
801012d4:	c1 e8 0c             	shr    $0xc,%eax
801012d7:	83 c4 08             	add    $0x8,%esp
801012da:	03 05 58 12 11 80    	add    0x80111258,%eax
801012e0:	50                   	push   %eax
801012e1:	53                   	push   %ebx
801012e2:	e8 89 ee ff ff       	call   80100170 <bread>
801012e7:	89 c3                	mov    %eax,%ebx
  bi = b % BPB;
801012e9:	89 f7                	mov    %esi,%edi
801012eb:	81 e7 ff 0f 00 00    	and    $0xfff,%edi
  m = 1 << (bi % 8);
801012f1:	89 f1                	mov    %esi,%ecx
801012f3:	83 e1 07             	and    $0x7,%ecx
801012f6:	b8 01 00 00 00       	mov    $0x1,%eax
801012fb:	d3 e0                	shl    %cl,%eax
  if((bp->data[bi/8] & m) == 0)
801012fd:	83 c4 10             	add    $0x10,%esp
80101300:	c1 ff 03             	sar    $0x3,%edi
80101303:	0f b6 54 3b 5c       	movzbl 0x5c(%ebx,%edi,1),%edx
80101308:	0f b6 ca             	movzbl %dl,%ecx
8010130b:	85 c1                	test   %eax,%ecx
8010130d:	74 24                	je     80101333 <bfree+0x79>
  bp->data[bi/8] &= ~m;
8010130f:	f7 d0                	not    %eax
80101311:	21 d0                	and    %edx,%eax
80101313:	88 44 3b 5c          	mov    %al,0x5c(%ebx,%edi,1)
  log_write(bp);
80101317:	83 ec 0c             	sub    $0xc,%esp
8010131a:	53                   	push   %ebx
8010131b:	e8 7b 16 00 00       	call   8010299b <log_write>
  brelse(bp);
80101320:	89 1c 24             	mov    %ebx,(%esp)
80101323:	e8 b9 ee ff ff       	call   801001e1 <brelse>
}
80101328:	83 c4 10             	add    $0x10,%esp
8010132b:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010132e:	5b                   	pop    %ebx
8010132f:	5e                   	pop    %esi
80101330:	5f                   	pop    %edi
80101331:	5d                   	pop    %ebp
80101332:	c3                   	ret    
    panic("freeing free block");
80101333:	83 ec 0c             	sub    $0xc,%esp
80101336:	68 58 69 10 80       	push   $0x80106958
8010133b:	e8 1c f0 ff ff       	call   8010035c <panic>

80101340 <iinit>:
{
80101340:	f3 0f 1e fb          	endbr32 
80101344:	55                   	push   %ebp
80101345:	89 e5                	mov    %esp,%ebp
80101347:	53                   	push   %ebx
80101348:	83 ec 0c             	sub    $0xc,%esp
  initlock(&icache.lock, "icache");
8010134b:	68 6b 69 10 80       	push   $0x8010696b
80101350:	68 60 12 11 80       	push   $0x80111260
80101355:	e8 21 28 00 00       	call   80103b7b <initlock>
  for(i = 0; i < NINODE; i++) {
8010135a:	83 c4 10             	add    $0x10,%esp
8010135d:	bb 00 00 00 00       	mov    $0x0,%ebx
80101362:	83 fb 31             	cmp    $0x31,%ebx
80101365:	7f 23                	jg     8010138a <iinit+0x4a>
    initsleeplock(&icache.inode[i].lock, "inode");
80101367:	83 ec 08             	sub    $0x8,%esp
8010136a:	68 72 69 10 80       	push   $0x80106972
8010136f:	8d 14 db             	lea    (%ebx,%ebx,8),%edx
80101372:	89 d0                	mov    %edx,%eax
80101374:	c1 e0 04             	shl    $0x4,%eax
80101377:	05 a0 12 11 80       	add    $0x801112a0,%eax
8010137c:	50                   	push   %eax
8010137d:	e8 ee 26 00 00       	call   80103a70 <initsleeplock>
  for(i = 0; i < NINODE; i++) {
80101382:	83 c3 01             	add    $0x1,%ebx
80101385:	83 c4 10             	add    $0x10,%esp
80101388:	eb d8                	jmp    80101362 <iinit+0x22>
  readsb(dev, &sb);
8010138a:	83 ec 08             	sub    $0x8,%esp
8010138d:	68 40 12 11 80       	push   $0x80111240
80101392:	ff 75 08             	pushl  0x8(%ebp)
80101395:	e8 e8 fe ff ff       	call   80101282 <readsb>
  cprintf("sb: size %d nblocks %d ninodes %d nlog %d logstart %d\
8010139a:	ff 35 58 12 11 80    	pushl  0x80111258
801013a0:	ff 35 54 12 11 80    	pushl  0x80111254
801013a6:	ff 35 50 12 11 80    	pushl  0x80111250
801013ac:	ff 35 4c 12 11 80    	pushl  0x8011124c
801013b2:	ff 35 48 12 11 80    	pushl  0x80111248
801013b8:	ff 35 44 12 11 80    	pushl  0x80111244
801013be:	ff 35 40 12 11 80    	pushl  0x80111240
801013c4:	68 d8 69 10 80       	push   $0x801069d8
801013c9:	e8 5b f2 ff ff       	call   80100629 <cprintf>
}
801013ce:	83 c4 30             	add    $0x30,%esp
801013d1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801013d4:	c9                   	leave  
801013d5:	c3                   	ret    

801013d6 <ialloc>:
{
801013d6:	f3 0f 1e fb          	endbr32 
801013da:	55                   	push   %ebp
801013db:	89 e5                	mov    %esp,%ebp
801013dd:	57                   	push   %edi
801013de:	56                   	push   %esi
801013df:	53                   	push   %ebx
801013e0:	83 ec 1c             	sub    $0x1c,%esp
801013e3:	8b 45 0c             	mov    0xc(%ebp),%eax
801013e6:	89 45 e0             	mov    %eax,-0x20(%ebp)
  for(inum = 1; inum < sb.ninodes; inum++){
801013e9:	bb 01 00 00 00       	mov    $0x1,%ebx
801013ee:	89 5d e4             	mov    %ebx,-0x1c(%ebp)
801013f1:	39 1d 48 12 11 80    	cmp    %ebx,0x80111248
801013f7:	76 76                	jbe    8010146f <ialloc+0x99>
    bp = bread(dev, IBLOCK(inum, sb));
801013f9:	89 d8                	mov    %ebx,%eax
801013fb:	c1 e8 03             	shr    $0x3,%eax
801013fe:	83 ec 08             	sub    $0x8,%esp
80101401:	03 05 54 12 11 80    	add    0x80111254,%eax
80101407:	50                   	push   %eax
80101408:	ff 75 08             	pushl  0x8(%ebp)
8010140b:	e8 60 ed ff ff       	call   80100170 <bread>
80101410:	89 c6                	mov    %eax,%esi
    dip = (struct dinode*)bp->data + inum%IPB;
80101412:	89 d8                	mov    %ebx,%eax
80101414:	83 e0 07             	and    $0x7,%eax
80101417:	c1 e0 06             	shl    $0x6,%eax
8010141a:	8d 7c 06 5c          	lea    0x5c(%esi,%eax,1),%edi
    if(dip->type == 0){  // a free inode
8010141e:	83 c4 10             	add    $0x10,%esp
80101421:	66 83 3f 00          	cmpw   $0x0,(%edi)
80101425:	74 11                	je     80101438 <ialloc+0x62>
    brelse(bp);
80101427:	83 ec 0c             	sub    $0xc,%esp
8010142a:	56                   	push   %esi
8010142b:	e8 b1 ed ff ff       	call   801001e1 <brelse>
  for(inum = 1; inum < sb.ninodes; inum++){
80101430:	83 c3 01             	add    $0x1,%ebx
80101433:	83 c4 10             	add    $0x10,%esp
80101436:	eb b6                	jmp    801013ee <ialloc+0x18>
      memset(dip, 0, sizeof(*dip));
80101438:	83 ec 04             	sub    $0x4,%esp
8010143b:	6a 40                	push   $0x40
8010143d:	6a 00                	push   $0x0
8010143f:	57                   	push   %edi
80101440:	e8 1e 29 00 00       	call   80103d63 <memset>
      dip->type = type;
80101445:	0f b7 45 e0          	movzwl -0x20(%ebp),%eax
80101449:	66 89 07             	mov    %ax,(%edi)
      log_write(bp);   // mark it allocated on the disk
8010144c:	89 34 24             	mov    %esi,(%esp)
8010144f:	e8 47 15 00 00       	call   8010299b <log_write>
      brelse(bp);
80101454:	89 34 24             	mov    %esi,(%esp)
80101457:	e8 85 ed ff ff       	call   801001e1 <brelse>
      return iget(dev, inum);
8010145c:	8b 55 e4             	mov    -0x1c(%ebp),%edx
8010145f:	8b 45 08             	mov    0x8(%ebp),%eax
80101462:	e8 6c fd ff ff       	call   801011d3 <iget>
}
80101467:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010146a:	5b                   	pop    %ebx
8010146b:	5e                   	pop    %esi
8010146c:	5f                   	pop    %edi
8010146d:	5d                   	pop    %ebp
8010146e:	c3                   	ret    
  panic("ialloc: no inodes");
8010146f:	83 ec 0c             	sub    $0xc,%esp
80101472:	68 78 69 10 80       	push   $0x80106978
80101477:	e8 e0 ee ff ff       	call   8010035c <panic>

8010147c <iupdate>:
{
8010147c:	f3 0f 1e fb          	endbr32 
80101480:	55                   	push   %ebp
80101481:	89 e5                	mov    %esp,%ebp
80101483:	56                   	push   %esi
80101484:	53                   	push   %ebx
80101485:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = bread(ip->dev, IBLOCK(ip->inum, sb));
80101488:	8b 43 04             	mov    0x4(%ebx),%eax
8010148b:	c1 e8 03             	shr    $0x3,%eax
8010148e:	83 ec 08             	sub    $0x8,%esp
80101491:	03 05 54 12 11 80    	add    0x80111254,%eax
80101497:	50                   	push   %eax
80101498:	ff 33                	pushl  (%ebx)
8010149a:	e8 d1 ec ff ff       	call   80100170 <bread>
8010149f:	89 c6                	mov    %eax,%esi
  dip = (struct dinode*)bp->data + ip->inum%IPB;
801014a1:	8b 43 04             	mov    0x4(%ebx),%eax
801014a4:	83 e0 07             	and    $0x7,%eax
801014a7:	c1 e0 06             	shl    $0x6,%eax
801014aa:	8d 44 06 5c          	lea    0x5c(%esi,%eax,1),%eax
  dip->type = ip->type;
801014ae:	0f b7 53 50          	movzwl 0x50(%ebx),%edx
801014b2:	66 89 10             	mov    %dx,(%eax)
  dip->major = ip->major;
801014b5:	0f b7 53 52          	movzwl 0x52(%ebx),%edx
801014b9:	66 89 50 02          	mov    %dx,0x2(%eax)
  dip->minor = ip->minor;
801014bd:	0f b7 53 54          	movzwl 0x54(%ebx),%edx
801014c1:	66 89 50 04          	mov    %dx,0x4(%eax)
  dip->nlink = ip->nlink;
801014c5:	0f b7 53 56          	movzwl 0x56(%ebx),%edx
801014c9:	66 89 50 06          	mov    %dx,0x6(%eax)
  dip->size = ip->size;
801014cd:	8b 53 58             	mov    0x58(%ebx),%edx
801014d0:	89 50 08             	mov    %edx,0x8(%eax)
  memmove(dip->addrs, ip->addrs, sizeof(ip->addrs));
801014d3:	83 c3 5c             	add    $0x5c,%ebx
801014d6:	83 c0 0c             	add    $0xc,%eax
801014d9:	83 c4 0c             	add    $0xc,%esp
801014dc:	6a 34                	push   $0x34
801014de:	53                   	push   %ebx
801014df:	50                   	push   %eax
801014e0:	e8 f6 28 00 00       	call   80103ddb <memmove>
  log_write(bp);
801014e5:	89 34 24             	mov    %esi,(%esp)
801014e8:	e8 ae 14 00 00       	call   8010299b <log_write>
  brelse(bp);
801014ed:	89 34 24             	mov    %esi,(%esp)
801014f0:	e8 ec ec ff ff       	call   801001e1 <brelse>
}
801014f5:	83 c4 10             	add    $0x10,%esp
801014f8:	8d 65 f8             	lea    -0x8(%ebp),%esp
801014fb:	5b                   	pop    %ebx
801014fc:	5e                   	pop    %esi
801014fd:	5d                   	pop    %ebp
801014fe:	c3                   	ret    

801014ff <itrunc>:
{
801014ff:	55                   	push   %ebp
80101500:	89 e5                	mov    %esp,%ebp
80101502:	57                   	push   %edi
80101503:	56                   	push   %esi
80101504:	53                   	push   %ebx
80101505:	83 ec 1c             	sub    $0x1c,%esp
80101508:	89 c6                	mov    %eax,%esi
  for(i = 0; i < NDIRECT; i++){
8010150a:	bb 00 00 00 00       	mov    $0x0,%ebx
8010150f:	eb 03                	jmp    80101514 <itrunc+0x15>
80101511:	83 c3 01             	add    $0x1,%ebx
80101514:	83 fb 0b             	cmp    $0xb,%ebx
80101517:	7f 19                	jg     80101532 <itrunc+0x33>
    if(ip->addrs[i]){
80101519:	8b 54 9e 5c          	mov    0x5c(%esi,%ebx,4),%edx
8010151d:	85 d2                	test   %edx,%edx
8010151f:	74 f0                	je     80101511 <itrunc+0x12>
      bfree(ip->dev, ip->addrs[i]);
80101521:	8b 06                	mov    (%esi),%eax
80101523:	e8 92 fd ff ff       	call   801012ba <bfree>
      ip->addrs[i] = 0;
80101528:	c7 44 9e 5c 00 00 00 	movl   $0x0,0x5c(%esi,%ebx,4)
8010152f:	00 
80101530:	eb df                	jmp    80101511 <itrunc+0x12>
  if(ip->addrs[NDIRECT]){
80101532:	8b 86 8c 00 00 00    	mov    0x8c(%esi),%eax
80101538:	85 c0                	test   %eax,%eax
8010153a:	75 1b                	jne    80101557 <itrunc+0x58>
  ip->size = 0;
8010153c:	c7 46 58 00 00 00 00 	movl   $0x0,0x58(%esi)
  iupdate(ip);
80101543:	83 ec 0c             	sub    $0xc,%esp
80101546:	56                   	push   %esi
80101547:	e8 30 ff ff ff       	call   8010147c <iupdate>
}
8010154c:	83 c4 10             	add    $0x10,%esp
8010154f:	8d 65 f4             	lea    -0xc(%ebp),%esp
80101552:	5b                   	pop    %ebx
80101553:	5e                   	pop    %esi
80101554:	5f                   	pop    %edi
80101555:	5d                   	pop    %ebp
80101556:	c3                   	ret    
    bp = bread(ip->dev, ip->addrs[NDIRECT]);
80101557:	83 ec 08             	sub    $0x8,%esp
8010155a:	50                   	push   %eax
8010155b:	ff 36                	pushl  (%esi)
8010155d:	e8 0e ec ff ff       	call   80100170 <bread>
80101562:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    a = (uint*)bp->data;
80101565:	8d 78 5c             	lea    0x5c(%eax),%edi
    for(j = 0; j < NINDIRECT; j++){
80101568:	83 c4 10             	add    $0x10,%esp
8010156b:	bb 00 00 00 00       	mov    $0x0,%ebx
80101570:	eb 0a                	jmp    8010157c <itrunc+0x7d>
        bfree(ip->dev, a[j]);
80101572:	8b 06                	mov    (%esi),%eax
80101574:	e8 41 fd ff ff       	call   801012ba <bfree>
    for(j = 0; j < NINDIRECT; j++){
80101579:	83 c3 01             	add    $0x1,%ebx
8010157c:	83 fb 7f             	cmp    $0x7f,%ebx
8010157f:	77 09                	ja     8010158a <itrunc+0x8b>
      if(a[j])
80101581:	8b 14 9f             	mov    (%edi,%ebx,4),%edx
80101584:	85 d2                	test   %edx,%edx
80101586:	74 f1                	je     80101579 <itrunc+0x7a>
80101588:	eb e8                	jmp    80101572 <itrunc+0x73>
    brelse(bp);
8010158a:	83 ec 0c             	sub    $0xc,%esp
8010158d:	ff 75 e4             	pushl  -0x1c(%ebp)
80101590:	e8 4c ec ff ff       	call   801001e1 <brelse>
    bfree(ip->dev, ip->addrs[NDIRECT]);
80101595:	8b 06                	mov    (%esi),%eax
80101597:	8b 96 8c 00 00 00    	mov    0x8c(%esi),%edx
8010159d:	e8 18 fd ff ff       	call   801012ba <bfree>
    ip->addrs[NDIRECT] = 0;
801015a2:	c7 86 8c 00 00 00 00 	movl   $0x0,0x8c(%esi)
801015a9:	00 00 00 
801015ac:	83 c4 10             	add    $0x10,%esp
801015af:	eb 8b                	jmp    8010153c <itrunc+0x3d>

801015b1 <idup>:
{
801015b1:	f3 0f 1e fb          	endbr32 
801015b5:	55                   	push   %ebp
801015b6:	89 e5                	mov    %esp,%ebp
801015b8:	53                   	push   %ebx
801015b9:	83 ec 10             	sub    $0x10,%esp
801015bc:	8b 5d 08             	mov    0x8(%ebp),%ebx
  acquire(&icache.lock);
801015bf:	68 60 12 11 80       	push   $0x80111260
801015c4:	e8 ee 26 00 00       	call   80103cb7 <acquire>
  ip->ref++;
801015c9:	8b 43 08             	mov    0x8(%ebx),%eax
801015cc:	83 c0 01             	add    $0x1,%eax
801015cf:	89 43 08             	mov    %eax,0x8(%ebx)
  release(&icache.lock);
801015d2:	c7 04 24 60 12 11 80 	movl   $0x80111260,(%esp)
801015d9:	e8 3e 27 00 00       	call   80103d1c <release>
}
801015de:	89 d8                	mov    %ebx,%eax
801015e0:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801015e3:	c9                   	leave  
801015e4:	c3                   	ret    

801015e5 <ilock>:
{
801015e5:	f3 0f 1e fb          	endbr32 
801015e9:	55                   	push   %ebp
801015ea:	89 e5                	mov    %esp,%ebp
801015ec:	56                   	push   %esi
801015ed:	53                   	push   %ebx
801015ee:	8b 5d 08             	mov    0x8(%ebp),%ebx
  if(ip == 0 || ip->ref < 1)
801015f1:	85 db                	test   %ebx,%ebx
801015f3:	74 22                	je     80101617 <ilock+0x32>
801015f5:	83 7b 08 00          	cmpl   $0x0,0x8(%ebx)
801015f9:	7e 1c                	jle    80101617 <ilock+0x32>
  acquiresleep(&ip->lock);
801015fb:	83 ec 0c             	sub    $0xc,%esp
801015fe:	8d 43 0c             	lea    0xc(%ebx),%eax
80101601:	50                   	push   %eax
80101602:	e8 9c 24 00 00       	call   80103aa3 <acquiresleep>
  if(ip->valid == 0){
80101607:	83 c4 10             	add    $0x10,%esp
8010160a:	83 7b 4c 00          	cmpl   $0x0,0x4c(%ebx)
8010160e:	74 14                	je     80101624 <ilock+0x3f>
}
80101610:	8d 65 f8             	lea    -0x8(%ebp),%esp
80101613:	5b                   	pop    %ebx
80101614:	5e                   	pop    %esi
80101615:	5d                   	pop    %ebp
80101616:	c3                   	ret    
    panic("ilock");
80101617:	83 ec 0c             	sub    $0xc,%esp
8010161a:	68 8a 69 10 80       	push   $0x8010698a
8010161f:	e8 38 ed ff ff       	call   8010035c <panic>
    bp = bread(ip->dev, IBLOCK(ip->inum, sb));
80101624:	8b 43 04             	mov    0x4(%ebx),%eax
80101627:	c1 e8 03             	shr    $0x3,%eax
8010162a:	83 ec 08             	sub    $0x8,%esp
8010162d:	03 05 54 12 11 80    	add    0x80111254,%eax
80101633:	50                   	push   %eax
80101634:	ff 33                	pushl  (%ebx)
80101636:	e8 35 eb ff ff       	call   80100170 <bread>
8010163b:	89 c6                	mov    %eax,%esi
    dip = (struct dinode*)bp->data + ip->inum%IPB;
8010163d:	8b 43 04             	mov    0x4(%ebx),%eax
80101640:	83 e0 07             	and    $0x7,%eax
80101643:	c1 e0 06             	shl    $0x6,%eax
80101646:	8d 44 06 5c          	lea    0x5c(%esi,%eax,1),%eax
    ip->type = dip->type;
8010164a:	0f b7 10             	movzwl (%eax),%edx
8010164d:	66 89 53 50          	mov    %dx,0x50(%ebx)
    ip->major = dip->major;
80101651:	0f b7 50 02          	movzwl 0x2(%eax),%edx
80101655:	66 89 53 52          	mov    %dx,0x52(%ebx)
    ip->minor = dip->minor;
80101659:	0f b7 50 04          	movzwl 0x4(%eax),%edx
8010165d:	66 89 53 54          	mov    %dx,0x54(%ebx)
    ip->nlink = dip->nlink;
80101661:	0f b7 50 06          	movzwl 0x6(%eax),%edx
80101665:	66 89 53 56          	mov    %dx,0x56(%ebx)
    ip->size = dip->size;
80101669:	8b 50 08             	mov    0x8(%eax),%edx
8010166c:	89 53 58             	mov    %edx,0x58(%ebx)
    memmove(ip->addrs, dip->addrs, sizeof(ip->addrs));
8010166f:	83 c0 0c             	add    $0xc,%eax
80101672:	8d 53 5c             	lea    0x5c(%ebx),%edx
80101675:	83 c4 0c             	add    $0xc,%esp
80101678:	6a 34                	push   $0x34
8010167a:	50                   	push   %eax
8010167b:	52                   	push   %edx
8010167c:	e8 5a 27 00 00       	call   80103ddb <memmove>
    brelse(bp);
80101681:	89 34 24             	mov    %esi,(%esp)
80101684:	e8 58 eb ff ff       	call   801001e1 <brelse>
    ip->valid = 1;
80101689:	c7 43 4c 01 00 00 00 	movl   $0x1,0x4c(%ebx)
    if(ip->type == 0)
80101690:	83 c4 10             	add    $0x10,%esp
80101693:	66 83 7b 50 00       	cmpw   $0x0,0x50(%ebx)
80101698:	0f 85 72 ff ff ff    	jne    80101610 <ilock+0x2b>
      panic("ilock: no type");
8010169e:	83 ec 0c             	sub    $0xc,%esp
801016a1:	68 90 69 10 80       	push   $0x80106990
801016a6:	e8 b1 ec ff ff       	call   8010035c <panic>

801016ab <iunlock>:
{
801016ab:	f3 0f 1e fb          	endbr32 
801016af:	55                   	push   %ebp
801016b0:	89 e5                	mov    %esp,%ebp
801016b2:	56                   	push   %esi
801016b3:	53                   	push   %ebx
801016b4:	8b 5d 08             	mov    0x8(%ebp),%ebx
  if(ip == 0 || !holdingsleep(&ip->lock) || ip->ref < 1)
801016b7:	85 db                	test   %ebx,%ebx
801016b9:	74 2c                	je     801016e7 <iunlock+0x3c>
801016bb:	8d 73 0c             	lea    0xc(%ebx),%esi
801016be:	83 ec 0c             	sub    $0xc,%esp
801016c1:	56                   	push   %esi
801016c2:	e8 66 24 00 00       	call   80103b2d <holdingsleep>
801016c7:	83 c4 10             	add    $0x10,%esp
801016ca:	85 c0                	test   %eax,%eax
801016cc:	74 19                	je     801016e7 <iunlock+0x3c>
801016ce:	83 7b 08 00          	cmpl   $0x0,0x8(%ebx)
801016d2:	7e 13                	jle    801016e7 <iunlock+0x3c>
  releasesleep(&ip->lock);
801016d4:	83 ec 0c             	sub    $0xc,%esp
801016d7:	56                   	push   %esi
801016d8:	e8 15 24 00 00       	call   80103af2 <releasesleep>
}
801016dd:	83 c4 10             	add    $0x10,%esp
801016e0:	8d 65 f8             	lea    -0x8(%ebp),%esp
801016e3:	5b                   	pop    %ebx
801016e4:	5e                   	pop    %esi
801016e5:	5d                   	pop    %ebp
801016e6:	c3                   	ret    
    panic("iunlock");
801016e7:	83 ec 0c             	sub    $0xc,%esp
801016ea:	68 9f 69 10 80       	push   $0x8010699f
801016ef:	e8 68 ec ff ff       	call   8010035c <panic>

801016f4 <iput>:
{
801016f4:	f3 0f 1e fb          	endbr32 
801016f8:	55                   	push   %ebp
801016f9:	89 e5                	mov    %esp,%ebp
801016fb:	57                   	push   %edi
801016fc:	56                   	push   %esi
801016fd:	53                   	push   %ebx
801016fe:	83 ec 18             	sub    $0x18,%esp
80101701:	8b 5d 08             	mov    0x8(%ebp),%ebx
  acquiresleep(&ip->lock);
80101704:	8d 73 0c             	lea    0xc(%ebx),%esi
80101707:	56                   	push   %esi
80101708:	e8 96 23 00 00       	call   80103aa3 <acquiresleep>
  if(ip->valid && ip->nlink == 0){
8010170d:	83 c4 10             	add    $0x10,%esp
80101710:	83 7b 4c 00          	cmpl   $0x0,0x4c(%ebx)
80101714:	74 07                	je     8010171d <iput+0x29>
80101716:	66 83 7b 56 00       	cmpw   $0x0,0x56(%ebx)
8010171b:	74 35                	je     80101752 <iput+0x5e>
  releasesleep(&ip->lock);
8010171d:	83 ec 0c             	sub    $0xc,%esp
80101720:	56                   	push   %esi
80101721:	e8 cc 23 00 00       	call   80103af2 <releasesleep>
  acquire(&icache.lock);
80101726:	c7 04 24 60 12 11 80 	movl   $0x80111260,(%esp)
8010172d:	e8 85 25 00 00       	call   80103cb7 <acquire>
  ip->ref--;
80101732:	8b 43 08             	mov    0x8(%ebx),%eax
80101735:	83 e8 01             	sub    $0x1,%eax
80101738:	89 43 08             	mov    %eax,0x8(%ebx)
  release(&icache.lock);
8010173b:	c7 04 24 60 12 11 80 	movl   $0x80111260,(%esp)
80101742:	e8 d5 25 00 00       	call   80103d1c <release>
}
80101747:	83 c4 10             	add    $0x10,%esp
8010174a:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010174d:	5b                   	pop    %ebx
8010174e:	5e                   	pop    %esi
8010174f:	5f                   	pop    %edi
80101750:	5d                   	pop    %ebp
80101751:	c3                   	ret    
    acquire(&icache.lock);
80101752:	83 ec 0c             	sub    $0xc,%esp
80101755:	68 60 12 11 80       	push   $0x80111260
8010175a:	e8 58 25 00 00       	call   80103cb7 <acquire>
    int r = ip->ref;
8010175f:	8b 7b 08             	mov    0x8(%ebx),%edi
    release(&icache.lock);
80101762:	c7 04 24 60 12 11 80 	movl   $0x80111260,(%esp)
80101769:	e8 ae 25 00 00       	call   80103d1c <release>
    if(r == 1){
8010176e:	83 c4 10             	add    $0x10,%esp
80101771:	83 ff 01             	cmp    $0x1,%edi
80101774:	75 a7                	jne    8010171d <iput+0x29>
      itrunc(ip);
80101776:	89 d8                	mov    %ebx,%eax
80101778:	e8 82 fd ff ff       	call   801014ff <itrunc>
      ip->type = 0;
8010177d:	66 c7 43 50 00 00    	movw   $0x0,0x50(%ebx)
      iupdate(ip);
80101783:	83 ec 0c             	sub    $0xc,%esp
80101786:	53                   	push   %ebx
80101787:	e8 f0 fc ff ff       	call   8010147c <iupdate>
      ip->valid = 0;
8010178c:	c7 43 4c 00 00 00 00 	movl   $0x0,0x4c(%ebx)
80101793:	83 c4 10             	add    $0x10,%esp
80101796:	eb 85                	jmp    8010171d <iput+0x29>

80101798 <iunlockput>:
{
80101798:	f3 0f 1e fb          	endbr32 
8010179c:	55                   	push   %ebp
8010179d:	89 e5                	mov    %esp,%ebp
8010179f:	53                   	push   %ebx
801017a0:	83 ec 10             	sub    $0x10,%esp
801017a3:	8b 5d 08             	mov    0x8(%ebp),%ebx
  iunlock(ip);
801017a6:	53                   	push   %ebx
801017a7:	e8 ff fe ff ff       	call   801016ab <iunlock>
  iput(ip);
801017ac:	89 1c 24             	mov    %ebx,(%esp)
801017af:	e8 40 ff ff ff       	call   801016f4 <iput>
}
801017b4:	83 c4 10             	add    $0x10,%esp
801017b7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801017ba:	c9                   	leave  
801017bb:	c3                   	ret    

801017bc <stati>:
{
801017bc:	f3 0f 1e fb          	endbr32 
801017c0:	55                   	push   %ebp
801017c1:	89 e5                	mov    %esp,%ebp
801017c3:	8b 55 08             	mov    0x8(%ebp),%edx
801017c6:	8b 45 0c             	mov    0xc(%ebp),%eax
  st->dev = ip->dev;
801017c9:	8b 0a                	mov    (%edx),%ecx
801017cb:	89 48 04             	mov    %ecx,0x4(%eax)
  st->ino = ip->inum;
801017ce:	8b 4a 04             	mov    0x4(%edx),%ecx
801017d1:	89 48 08             	mov    %ecx,0x8(%eax)
  st->type = ip->type;
801017d4:	0f b7 4a 50          	movzwl 0x50(%edx),%ecx
801017d8:	66 89 08             	mov    %cx,(%eax)
  st->nlink = ip->nlink;
801017db:	0f b7 4a 56          	movzwl 0x56(%edx),%ecx
801017df:	66 89 48 0c          	mov    %cx,0xc(%eax)
  st->size = ip->size;
801017e3:	8b 52 58             	mov    0x58(%edx),%edx
801017e6:	89 50 10             	mov    %edx,0x10(%eax)
}
801017e9:	5d                   	pop    %ebp
801017ea:	c3                   	ret    

801017eb <readi>:
{
801017eb:	f3 0f 1e fb          	endbr32 
801017ef:	55                   	push   %ebp
801017f0:	89 e5                	mov    %esp,%ebp
801017f2:	57                   	push   %edi
801017f3:	56                   	push   %esi
801017f4:	53                   	push   %ebx
801017f5:	83 ec 1c             	sub    $0x1c,%esp
801017f8:	8b 75 10             	mov    0x10(%ebp),%esi
  if(ip->type == T_DEV){
801017fb:	8b 45 08             	mov    0x8(%ebp),%eax
801017fe:	66 83 78 50 03       	cmpw   $0x3,0x50(%eax)
80101803:	74 2c                	je     80101831 <readi+0x46>
  if(off > ip->size || off + n < off)
80101805:	8b 45 08             	mov    0x8(%ebp),%eax
80101808:	8b 40 58             	mov    0x58(%eax),%eax
8010180b:	39 f0                	cmp    %esi,%eax
8010180d:	0f 82 cb 00 00 00    	jb     801018de <readi+0xf3>
80101813:	89 f2                	mov    %esi,%edx
80101815:	03 55 14             	add    0x14(%ebp),%edx
80101818:	0f 82 c7 00 00 00    	jb     801018e5 <readi+0xfa>
  if(off + n > ip->size)
8010181e:	39 d0                	cmp    %edx,%eax
80101820:	73 05                	jae    80101827 <readi+0x3c>
    n = ip->size - off;
80101822:	29 f0                	sub    %esi,%eax
80101824:	89 45 14             	mov    %eax,0x14(%ebp)
  for(tot=0; tot<n; tot+=m, off+=m, dst+=m){
80101827:	bf 00 00 00 00       	mov    $0x0,%edi
8010182c:	e9 8f 00 00 00       	jmp    801018c0 <readi+0xd5>
    if(ip->major < 0 || ip->major >= NDEV || !devsw[ip->major].read)
80101831:	0f b7 40 52          	movzwl 0x52(%eax),%eax
80101835:	66 83 f8 09          	cmp    $0x9,%ax
80101839:	0f 87 91 00 00 00    	ja     801018d0 <readi+0xe5>
8010183f:	98                   	cwtl   
80101840:	8b 04 c5 e0 11 11 80 	mov    -0x7feeee20(,%eax,8),%eax
80101847:	85 c0                	test   %eax,%eax
80101849:	0f 84 88 00 00 00    	je     801018d7 <readi+0xec>
    return devsw[ip->major].read(ip, dst, n);
8010184f:	83 ec 04             	sub    $0x4,%esp
80101852:	ff 75 14             	pushl  0x14(%ebp)
80101855:	ff 75 0c             	pushl  0xc(%ebp)
80101858:	ff 75 08             	pushl  0x8(%ebp)
8010185b:	ff d0                	call   *%eax
8010185d:	83 c4 10             	add    $0x10,%esp
80101860:	eb 66                	jmp    801018c8 <readi+0xdd>
    bp = bread(ip->dev, bmap(ip, off/BSIZE));
80101862:	89 f2                	mov    %esi,%edx
80101864:	c1 ea 09             	shr    $0x9,%edx
80101867:	8b 45 08             	mov    0x8(%ebp),%eax
8010186a:	e8 be f8 ff ff       	call   8010112d <bmap>
8010186f:	83 ec 08             	sub    $0x8,%esp
80101872:	50                   	push   %eax
80101873:	8b 45 08             	mov    0x8(%ebp),%eax
80101876:	ff 30                	pushl  (%eax)
80101878:	e8 f3 e8 ff ff       	call   80100170 <bread>
8010187d:	89 c1                	mov    %eax,%ecx
    m = min(n - tot, BSIZE - off%BSIZE);
8010187f:	89 f0                	mov    %esi,%eax
80101881:	25 ff 01 00 00       	and    $0x1ff,%eax
80101886:	bb 00 02 00 00       	mov    $0x200,%ebx
8010188b:	29 c3                	sub    %eax,%ebx
8010188d:	8b 55 14             	mov    0x14(%ebp),%edx
80101890:	29 fa                	sub    %edi,%edx
80101892:	83 c4 0c             	add    $0xc,%esp
80101895:	39 d3                	cmp    %edx,%ebx
80101897:	0f 47 da             	cmova  %edx,%ebx
    memmove(dst, bp->data + off%BSIZE, m);
8010189a:	53                   	push   %ebx
8010189b:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
8010189e:	8d 44 01 5c          	lea    0x5c(%ecx,%eax,1),%eax
801018a2:	50                   	push   %eax
801018a3:	ff 75 0c             	pushl  0xc(%ebp)
801018a6:	e8 30 25 00 00       	call   80103ddb <memmove>
    brelse(bp);
801018ab:	83 c4 04             	add    $0x4,%esp
801018ae:	ff 75 e4             	pushl  -0x1c(%ebp)
801018b1:	e8 2b e9 ff ff       	call   801001e1 <brelse>
  for(tot=0; tot<n; tot+=m, off+=m, dst+=m){
801018b6:	01 df                	add    %ebx,%edi
801018b8:	01 de                	add    %ebx,%esi
801018ba:	01 5d 0c             	add    %ebx,0xc(%ebp)
801018bd:	83 c4 10             	add    $0x10,%esp
801018c0:	39 7d 14             	cmp    %edi,0x14(%ebp)
801018c3:	77 9d                	ja     80101862 <readi+0x77>
  return n;
801018c5:	8b 45 14             	mov    0x14(%ebp),%eax
}
801018c8:	8d 65 f4             	lea    -0xc(%ebp),%esp
801018cb:	5b                   	pop    %ebx
801018cc:	5e                   	pop    %esi
801018cd:	5f                   	pop    %edi
801018ce:	5d                   	pop    %ebp
801018cf:	c3                   	ret    
      return -1;
801018d0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801018d5:	eb f1                	jmp    801018c8 <readi+0xdd>
801018d7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801018dc:	eb ea                	jmp    801018c8 <readi+0xdd>
    return -1;
801018de:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801018e3:	eb e3                	jmp    801018c8 <readi+0xdd>
801018e5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801018ea:	eb dc                	jmp    801018c8 <readi+0xdd>

801018ec <writei>:
{
801018ec:	f3 0f 1e fb          	endbr32 
801018f0:	55                   	push   %ebp
801018f1:	89 e5                	mov    %esp,%ebp
801018f3:	57                   	push   %edi
801018f4:	56                   	push   %esi
801018f5:	53                   	push   %ebx
801018f6:	83 ec 1c             	sub    $0x1c,%esp
801018f9:	8b 75 10             	mov    0x10(%ebp),%esi
  if(ip->type == T_DEV){
801018fc:	8b 45 08             	mov    0x8(%ebp),%eax
801018ff:	66 83 78 50 03       	cmpw   $0x3,0x50(%eax)
80101904:	0f 84 9b 00 00 00    	je     801019a5 <writei+0xb9>
  if(off > ip->size || off + n < off)
8010190a:	8b 45 08             	mov    0x8(%ebp),%eax
8010190d:	39 70 58             	cmp    %esi,0x58(%eax)
80101910:	0f 82 f0 00 00 00    	jb     80101a06 <writei+0x11a>
80101916:	89 f0                	mov    %esi,%eax
80101918:	03 45 14             	add    0x14(%ebp),%eax
8010191b:	0f 82 ec 00 00 00    	jb     80101a0d <writei+0x121>
  if(off + n > MAXFILE*BSIZE)
80101921:	3d 00 18 01 00       	cmp    $0x11800,%eax
80101926:	0f 87 e8 00 00 00    	ja     80101a14 <writei+0x128>
  for(tot=0; tot<n; tot+=m, off+=m, src+=m){
8010192c:	bf 00 00 00 00       	mov    $0x0,%edi
80101931:	3b 7d 14             	cmp    0x14(%ebp),%edi
80101934:	0f 83 94 00 00 00    	jae    801019ce <writei+0xe2>
    bp = bread(ip->dev, bmap(ip, off/BSIZE));
8010193a:	89 f2                	mov    %esi,%edx
8010193c:	c1 ea 09             	shr    $0x9,%edx
8010193f:	8b 45 08             	mov    0x8(%ebp),%eax
80101942:	e8 e6 f7 ff ff       	call   8010112d <bmap>
80101947:	83 ec 08             	sub    $0x8,%esp
8010194a:	50                   	push   %eax
8010194b:	8b 45 08             	mov    0x8(%ebp),%eax
8010194e:	ff 30                	pushl  (%eax)
80101950:	e8 1b e8 ff ff       	call   80100170 <bread>
80101955:	89 c1                	mov    %eax,%ecx
    m = min(n - tot, BSIZE - off%BSIZE);
80101957:	89 f0                	mov    %esi,%eax
80101959:	25 ff 01 00 00       	and    $0x1ff,%eax
8010195e:	bb 00 02 00 00       	mov    $0x200,%ebx
80101963:	29 c3                	sub    %eax,%ebx
80101965:	8b 55 14             	mov    0x14(%ebp),%edx
80101968:	29 fa                	sub    %edi,%edx
8010196a:	83 c4 0c             	add    $0xc,%esp
8010196d:	39 d3                	cmp    %edx,%ebx
8010196f:	0f 47 da             	cmova  %edx,%ebx
    memmove(bp->data + off%BSIZE, src, m);
80101972:	53                   	push   %ebx
80101973:	ff 75 0c             	pushl  0xc(%ebp)
80101976:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
80101979:	8d 44 01 5c          	lea    0x5c(%ecx,%eax,1),%eax
8010197d:	50                   	push   %eax
8010197e:	e8 58 24 00 00       	call   80103ddb <memmove>
    log_write(bp);
80101983:	83 c4 04             	add    $0x4,%esp
80101986:	ff 75 e4             	pushl  -0x1c(%ebp)
80101989:	e8 0d 10 00 00       	call   8010299b <log_write>
    brelse(bp);
8010198e:	83 c4 04             	add    $0x4,%esp
80101991:	ff 75 e4             	pushl  -0x1c(%ebp)
80101994:	e8 48 e8 ff ff       	call   801001e1 <brelse>
  for(tot=0; tot<n; tot+=m, off+=m, src+=m){
80101999:	01 df                	add    %ebx,%edi
8010199b:	01 de                	add    %ebx,%esi
8010199d:	01 5d 0c             	add    %ebx,0xc(%ebp)
801019a0:	83 c4 10             	add    $0x10,%esp
801019a3:	eb 8c                	jmp    80101931 <writei+0x45>
    if(ip->major < 0 || ip->major >= NDEV || !devsw[ip->major].write)
801019a5:	0f b7 40 52          	movzwl 0x52(%eax),%eax
801019a9:	66 83 f8 09          	cmp    $0x9,%ax
801019ad:	77 49                	ja     801019f8 <writei+0x10c>
801019af:	98                   	cwtl   
801019b0:	8b 04 c5 e4 11 11 80 	mov    -0x7feeee1c(,%eax,8),%eax
801019b7:	85 c0                	test   %eax,%eax
801019b9:	74 44                	je     801019ff <writei+0x113>
    return devsw[ip->major].write(ip, src, n);
801019bb:	83 ec 04             	sub    $0x4,%esp
801019be:	ff 75 14             	pushl  0x14(%ebp)
801019c1:	ff 75 0c             	pushl  0xc(%ebp)
801019c4:	ff 75 08             	pushl  0x8(%ebp)
801019c7:	ff d0                	call   *%eax
801019c9:	83 c4 10             	add    $0x10,%esp
801019cc:	eb 11                	jmp    801019df <writei+0xf3>
  if(n > 0 && off > ip->size){
801019ce:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
801019d2:	74 08                	je     801019dc <writei+0xf0>
801019d4:	8b 45 08             	mov    0x8(%ebp),%eax
801019d7:	39 70 58             	cmp    %esi,0x58(%eax)
801019da:	72 0b                	jb     801019e7 <writei+0xfb>
  return n;
801019dc:	8b 45 14             	mov    0x14(%ebp),%eax
}
801019df:	8d 65 f4             	lea    -0xc(%ebp),%esp
801019e2:	5b                   	pop    %ebx
801019e3:	5e                   	pop    %esi
801019e4:	5f                   	pop    %edi
801019e5:	5d                   	pop    %ebp
801019e6:	c3                   	ret    
    ip->size = off;
801019e7:	89 70 58             	mov    %esi,0x58(%eax)
    iupdate(ip);
801019ea:	83 ec 0c             	sub    $0xc,%esp
801019ed:	50                   	push   %eax
801019ee:	e8 89 fa ff ff       	call   8010147c <iupdate>
801019f3:	83 c4 10             	add    $0x10,%esp
801019f6:	eb e4                	jmp    801019dc <writei+0xf0>
      return -1;
801019f8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801019fd:	eb e0                	jmp    801019df <writei+0xf3>
801019ff:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80101a04:	eb d9                	jmp    801019df <writei+0xf3>
    return -1;
80101a06:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80101a0b:	eb d2                	jmp    801019df <writei+0xf3>
80101a0d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80101a12:	eb cb                	jmp    801019df <writei+0xf3>
    return -1;
80101a14:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80101a19:	eb c4                	jmp    801019df <writei+0xf3>

80101a1b <namecmp>:
{
80101a1b:	f3 0f 1e fb          	endbr32 
80101a1f:	55                   	push   %ebp
80101a20:	89 e5                	mov    %esp,%ebp
80101a22:	83 ec 0c             	sub    $0xc,%esp
  return strncmp(s, t, DIRSIZ);
80101a25:	6a 0e                	push   $0xe
80101a27:	ff 75 0c             	pushl  0xc(%ebp)
80101a2a:	ff 75 08             	pushl  0x8(%ebp)
80101a2d:	e8 15 24 00 00       	call   80103e47 <strncmp>
}
80101a32:	c9                   	leave  
80101a33:	c3                   	ret    

80101a34 <dirlookup>:
{
80101a34:	f3 0f 1e fb          	endbr32 
80101a38:	55                   	push   %ebp
80101a39:	89 e5                	mov    %esp,%ebp
80101a3b:	57                   	push   %edi
80101a3c:	56                   	push   %esi
80101a3d:	53                   	push   %ebx
80101a3e:	83 ec 1c             	sub    $0x1c,%esp
80101a41:	8b 75 08             	mov    0x8(%ebp),%esi
80101a44:	8b 7d 0c             	mov    0xc(%ebp),%edi
  if(dp->type != T_DIR)
80101a47:	66 83 7e 50 01       	cmpw   $0x1,0x50(%esi)
80101a4c:	75 07                	jne    80101a55 <dirlookup+0x21>
  for(off = 0; off < dp->size; off += sizeof(de)){
80101a4e:	bb 00 00 00 00       	mov    $0x0,%ebx
80101a53:	eb 1d                	jmp    80101a72 <dirlookup+0x3e>
    panic("dirlookup not DIR");
80101a55:	83 ec 0c             	sub    $0xc,%esp
80101a58:	68 a7 69 10 80       	push   $0x801069a7
80101a5d:	e8 fa e8 ff ff       	call   8010035c <panic>
      panic("dirlookup read");
80101a62:	83 ec 0c             	sub    $0xc,%esp
80101a65:	68 b9 69 10 80       	push   $0x801069b9
80101a6a:	e8 ed e8 ff ff       	call   8010035c <panic>
  for(off = 0; off < dp->size; off += sizeof(de)){
80101a6f:	83 c3 10             	add    $0x10,%ebx
80101a72:	39 5e 58             	cmp    %ebx,0x58(%esi)
80101a75:	76 48                	jbe    80101abf <dirlookup+0x8b>
    if(readi(dp, (char*)&de, off, sizeof(de)) != sizeof(de))
80101a77:	6a 10                	push   $0x10
80101a79:	53                   	push   %ebx
80101a7a:	8d 45 d8             	lea    -0x28(%ebp),%eax
80101a7d:	50                   	push   %eax
80101a7e:	56                   	push   %esi
80101a7f:	e8 67 fd ff ff       	call   801017eb <readi>
80101a84:	83 c4 10             	add    $0x10,%esp
80101a87:	83 f8 10             	cmp    $0x10,%eax
80101a8a:	75 d6                	jne    80101a62 <dirlookup+0x2e>
    if(de.inum == 0)
80101a8c:	66 83 7d d8 00       	cmpw   $0x0,-0x28(%ebp)
80101a91:	74 dc                	je     80101a6f <dirlookup+0x3b>
    if(namecmp(name, de.name) == 0){
80101a93:	83 ec 08             	sub    $0x8,%esp
80101a96:	8d 45 da             	lea    -0x26(%ebp),%eax
80101a99:	50                   	push   %eax
80101a9a:	57                   	push   %edi
80101a9b:	e8 7b ff ff ff       	call   80101a1b <namecmp>
80101aa0:	83 c4 10             	add    $0x10,%esp
80101aa3:	85 c0                	test   %eax,%eax
80101aa5:	75 c8                	jne    80101a6f <dirlookup+0x3b>
      if(poff)
80101aa7:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
80101aab:	74 05                	je     80101ab2 <dirlookup+0x7e>
        *poff = off;
80101aad:	8b 45 10             	mov    0x10(%ebp),%eax
80101ab0:	89 18                	mov    %ebx,(%eax)
      inum = de.inum;
80101ab2:	0f b7 55 d8          	movzwl -0x28(%ebp),%edx
      return iget(dp->dev, inum);
80101ab6:	8b 06                	mov    (%esi),%eax
80101ab8:	e8 16 f7 ff ff       	call   801011d3 <iget>
80101abd:	eb 05                	jmp    80101ac4 <dirlookup+0x90>
  return 0;
80101abf:	b8 00 00 00 00       	mov    $0x0,%eax
}
80101ac4:	8d 65 f4             	lea    -0xc(%ebp),%esp
80101ac7:	5b                   	pop    %ebx
80101ac8:	5e                   	pop    %esi
80101ac9:	5f                   	pop    %edi
80101aca:	5d                   	pop    %ebp
80101acb:	c3                   	ret    

80101acc <namex>:
// If parent != 0, return the inode for the parent and copy the final
// path element into name, which must have room for DIRSIZ bytes.
// Must be called inside a transaction since it calls iput().
static struct inode*
namex(char *path, int nameiparent, char *name)
{
80101acc:	55                   	push   %ebp
80101acd:	89 e5                	mov    %esp,%ebp
80101acf:	57                   	push   %edi
80101ad0:	56                   	push   %esi
80101ad1:	53                   	push   %ebx
80101ad2:	83 ec 1c             	sub    $0x1c,%esp
80101ad5:	89 c3                	mov    %eax,%ebx
80101ad7:	89 55 e0             	mov    %edx,-0x20(%ebp)
80101ada:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
  struct inode *ip, *next;

  if(*path == '/')
80101add:	80 38 2f             	cmpb   $0x2f,(%eax)
80101ae0:	74 17                	je     80101af9 <namex+0x2d>
    ip = iget(ROOTDEV, ROOTINO);
  else
    ip = idup(myproc()->cwd);
80101ae2:	e8 f9 17 00 00       	call   801032e0 <myproc>
80101ae7:	83 ec 0c             	sub    $0xc,%esp
80101aea:	ff 70 68             	pushl  0x68(%eax)
80101aed:	e8 bf fa ff ff       	call   801015b1 <idup>
80101af2:	89 c6                	mov    %eax,%esi
80101af4:	83 c4 10             	add    $0x10,%esp
80101af7:	eb 53                	jmp    80101b4c <namex+0x80>
    ip = iget(ROOTDEV, ROOTINO);
80101af9:	ba 01 00 00 00       	mov    $0x1,%edx
80101afe:	b8 01 00 00 00       	mov    $0x1,%eax
80101b03:	e8 cb f6 ff ff       	call   801011d3 <iget>
80101b08:	89 c6                	mov    %eax,%esi
80101b0a:	eb 40                	jmp    80101b4c <namex+0x80>

  while((path = skipelem(path, name)) != 0){
    ilock(ip);
    if(ip->type != T_DIR){
      iunlockput(ip);
80101b0c:	83 ec 0c             	sub    $0xc,%esp
80101b0f:	56                   	push   %esi
80101b10:	e8 83 fc ff ff       	call   80101798 <iunlockput>
      return 0;
80101b15:	83 c4 10             	add    $0x10,%esp
80101b18:	be 00 00 00 00       	mov    $0x0,%esi
  if(nameiparent){
    iput(ip);
    return 0;
  }
  return ip;
}
80101b1d:	89 f0                	mov    %esi,%eax
80101b1f:	8d 65 f4             	lea    -0xc(%ebp),%esp
80101b22:	5b                   	pop    %ebx
80101b23:	5e                   	pop    %esi
80101b24:	5f                   	pop    %edi
80101b25:	5d                   	pop    %ebp
80101b26:	c3                   	ret    
    if((next = dirlookup(ip, name, 0)) == 0){
80101b27:	83 ec 04             	sub    $0x4,%esp
80101b2a:	6a 00                	push   $0x0
80101b2c:	ff 75 e4             	pushl  -0x1c(%ebp)
80101b2f:	56                   	push   %esi
80101b30:	e8 ff fe ff ff       	call   80101a34 <dirlookup>
80101b35:	89 c7                	mov    %eax,%edi
80101b37:	83 c4 10             	add    $0x10,%esp
80101b3a:	85 c0                	test   %eax,%eax
80101b3c:	74 4a                	je     80101b88 <namex+0xbc>
    iunlockput(ip);
80101b3e:	83 ec 0c             	sub    $0xc,%esp
80101b41:	56                   	push   %esi
80101b42:	e8 51 fc ff ff       	call   80101798 <iunlockput>
80101b47:	83 c4 10             	add    $0x10,%esp
    ip = next;
80101b4a:	89 fe                	mov    %edi,%esi
  while((path = skipelem(path, name)) != 0){
80101b4c:	8b 55 e4             	mov    -0x1c(%ebp),%edx
80101b4f:	89 d8                	mov    %ebx,%eax
80101b51:	e8 3b f4 ff ff       	call   80100f91 <skipelem>
80101b56:	89 c3                	mov    %eax,%ebx
80101b58:	85 c0                	test   %eax,%eax
80101b5a:	74 3c                	je     80101b98 <namex+0xcc>
    ilock(ip);
80101b5c:	83 ec 0c             	sub    $0xc,%esp
80101b5f:	56                   	push   %esi
80101b60:	e8 80 fa ff ff       	call   801015e5 <ilock>
    if(ip->type != T_DIR){
80101b65:	83 c4 10             	add    $0x10,%esp
80101b68:	66 83 7e 50 01       	cmpw   $0x1,0x50(%esi)
80101b6d:	75 9d                	jne    80101b0c <namex+0x40>
    if(nameiparent && *path == '\0'){
80101b6f:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
80101b73:	74 b2                	je     80101b27 <namex+0x5b>
80101b75:	80 3b 00             	cmpb   $0x0,(%ebx)
80101b78:	75 ad                	jne    80101b27 <namex+0x5b>
      iunlock(ip);
80101b7a:	83 ec 0c             	sub    $0xc,%esp
80101b7d:	56                   	push   %esi
80101b7e:	e8 28 fb ff ff       	call   801016ab <iunlock>
      return ip;
80101b83:	83 c4 10             	add    $0x10,%esp
80101b86:	eb 95                	jmp    80101b1d <namex+0x51>
      iunlockput(ip);
80101b88:	83 ec 0c             	sub    $0xc,%esp
80101b8b:	56                   	push   %esi
80101b8c:	e8 07 fc ff ff       	call   80101798 <iunlockput>
      return 0;
80101b91:	83 c4 10             	add    $0x10,%esp
80101b94:	89 fe                	mov    %edi,%esi
80101b96:	eb 85                	jmp    80101b1d <namex+0x51>
  if(nameiparent){
80101b98:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
80101b9c:	0f 84 7b ff ff ff    	je     80101b1d <namex+0x51>
    iput(ip);
80101ba2:	83 ec 0c             	sub    $0xc,%esp
80101ba5:	56                   	push   %esi
80101ba6:	e8 49 fb ff ff       	call   801016f4 <iput>
    return 0;
80101bab:	83 c4 10             	add    $0x10,%esp
80101bae:	89 de                	mov    %ebx,%esi
80101bb0:	e9 68 ff ff ff       	jmp    80101b1d <namex+0x51>

80101bb5 <dirlink>:
{
80101bb5:	f3 0f 1e fb          	endbr32 
80101bb9:	55                   	push   %ebp
80101bba:	89 e5                	mov    %esp,%ebp
80101bbc:	57                   	push   %edi
80101bbd:	56                   	push   %esi
80101bbe:	53                   	push   %ebx
80101bbf:	83 ec 20             	sub    $0x20,%esp
80101bc2:	8b 5d 08             	mov    0x8(%ebp),%ebx
80101bc5:	8b 7d 0c             	mov    0xc(%ebp),%edi
  if((ip = dirlookup(dp, name, 0)) != 0){
80101bc8:	6a 00                	push   $0x0
80101bca:	57                   	push   %edi
80101bcb:	53                   	push   %ebx
80101bcc:	e8 63 fe ff ff       	call   80101a34 <dirlookup>
80101bd1:	83 c4 10             	add    $0x10,%esp
80101bd4:	85 c0                	test   %eax,%eax
80101bd6:	75 07                	jne    80101bdf <dirlink+0x2a>
  for(off = 0; off < dp->size; off += sizeof(de)){
80101bd8:	b8 00 00 00 00       	mov    $0x0,%eax
80101bdd:	eb 23                	jmp    80101c02 <dirlink+0x4d>
    iput(ip);
80101bdf:	83 ec 0c             	sub    $0xc,%esp
80101be2:	50                   	push   %eax
80101be3:	e8 0c fb ff ff       	call   801016f4 <iput>
    return -1;
80101be8:	83 c4 10             	add    $0x10,%esp
80101beb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80101bf0:	eb 63                	jmp    80101c55 <dirlink+0xa0>
      panic("dirlink read");
80101bf2:	83 ec 0c             	sub    $0xc,%esp
80101bf5:	68 c8 69 10 80       	push   $0x801069c8
80101bfa:	e8 5d e7 ff ff       	call   8010035c <panic>
  for(off = 0; off < dp->size; off += sizeof(de)){
80101bff:	8d 46 10             	lea    0x10(%esi),%eax
80101c02:	89 c6                	mov    %eax,%esi
80101c04:	39 43 58             	cmp    %eax,0x58(%ebx)
80101c07:	76 1c                	jbe    80101c25 <dirlink+0x70>
    if(readi(dp, (char*)&de, off, sizeof(de)) != sizeof(de))
80101c09:	6a 10                	push   $0x10
80101c0b:	50                   	push   %eax
80101c0c:	8d 45 d8             	lea    -0x28(%ebp),%eax
80101c0f:	50                   	push   %eax
80101c10:	53                   	push   %ebx
80101c11:	e8 d5 fb ff ff       	call   801017eb <readi>
80101c16:	83 c4 10             	add    $0x10,%esp
80101c19:	83 f8 10             	cmp    $0x10,%eax
80101c1c:	75 d4                	jne    80101bf2 <dirlink+0x3d>
    if(de.inum == 0)
80101c1e:	66 83 7d d8 00       	cmpw   $0x0,-0x28(%ebp)
80101c23:	75 da                	jne    80101bff <dirlink+0x4a>
  strncpy(de.name, name, DIRSIZ);
80101c25:	83 ec 04             	sub    $0x4,%esp
80101c28:	6a 0e                	push   $0xe
80101c2a:	57                   	push   %edi
80101c2b:	8d 7d d8             	lea    -0x28(%ebp),%edi
80101c2e:	8d 45 da             	lea    -0x26(%ebp),%eax
80101c31:	50                   	push   %eax
80101c32:	e8 4f 22 00 00       	call   80103e86 <strncpy>
  de.inum = inum;
80101c37:	8b 45 10             	mov    0x10(%ebp),%eax
80101c3a:	66 89 45 d8          	mov    %ax,-0x28(%ebp)
  if(writei(dp, (char*)&de, off, sizeof(de)) != sizeof(de))
80101c3e:	6a 10                	push   $0x10
80101c40:	56                   	push   %esi
80101c41:	57                   	push   %edi
80101c42:	53                   	push   %ebx
80101c43:	e8 a4 fc ff ff       	call   801018ec <writei>
80101c48:	83 c4 20             	add    $0x20,%esp
80101c4b:	83 f8 10             	cmp    $0x10,%eax
80101c4e:	75 0d                	jne    80101c5d <dirlink+0xa8>
  return 0;
80101c50:	b8 00 00 00 00       	mov    $0x0,%eax
}
80101c55:	8d 65 f4             	lea    -0xc(%ebp),%esp
80101c58:	5b                   	pop    %ebx
80101c59:	5e                   	pop    %esi
80101c5a:	5f                   	pop    %edi
80101c5b:	5d                   	pop    %ebp
80101c5c:	c3                   	ret    
    panic("dirlink");
80101c5d:	83 ec 0c             	sub    $0xc,%esp
80101c60:	68 b8 6f 10 80       	push   $0x80106fb8
80101c65:	e8 f2 e6 ff ff       	call   8010035c <panic>

80101c6a <namei>:

struct inode*
namei(char *path)
{
80101c6a:	f3 0f 1e fb          	endbr32 
80101c6e:	55                   	push   %ebp
80101c6f:	89 e5                	mov    %esp,%ebp
80101c71:	83 ec 18             	sub    $0x18,%esp
  char name[DIRSIZ];
  return namex(path, 0, name);
80101c74:	8d 4d ea             	lea    -0x16(%ebp),%ecx
80101c77:	ba 00 00 00 00       	mov    $0x0,%edx
80101c7c:	8b 45 08             	mov    0x8(%ebp),%eax
80101c7f:	e8 48 fe ff ff       	call   80101acc <namex>
}
80101c84:	c9                   	leave  
80101c85:	c3                   	ret    

80101c86 <nameiparent>:

struct inode*
nameiparent(char *path, char *name)
{
80101c86:	f3 0f 1e fb          	endbr32 
80101c8a:	55                   	push   %ebp
80101c8b:	89 e5                	mov    %esp,%ebp
80101c8d:	83 ec 08             	sub    $0x8,%esp
  return namex(path, 1, name);
80101c90:	8b 4d 0c             	mov    0xc(%ebp),%ecx
80101c93:	ba 01 00 00 00       	mov    $0x1,%edx
80101c98:	8b 45 08             	mov    0x8(%ebp),%eax
80101c9b:	e8 2c fe ff ff       	call   80101acc <namex>
}
80101ca0:	c9                   	leave  
80101ca1:	c3                   	ret    

80101ca2 <idewait>:
static void idestart(struct buf*);

// Wait for IDE disk to become ready.
static int
idewait(int checkerr)
{
80101ca2:	89 c1                	mov    %eax,%ecx
  asm volatile("in %1,%0" : "=a" (data) : "d" (port));
80101ca4:	ba f7 01 00 00       	mov    $0x1f7,%edx
80101ca9:	ec                   	in     (%dx),%al
80101caa:	89 c2                	mov    %eax,%edx
  int r;

  while(((r = inb(0x1f7)) & (IDE_BSY|IDE_DRDY)) != IDE_DRDY)
80101cac:	83 e0 c0             	and    $0xffffffc0,%eax
80101caf:	3c 40                	cmp    $0x40,%al
80101cb1:	75 f1                	jne    80101ca4 <idewait+0x2>
    ;
  if(checkerr && (r & (IDE_DF|IDE_ERR)) != 0)
80101cb3:	85 c9                	test   %ecx,%ecx
80101cb5:	74 0a                	je     80101cc1 <idewait+0x1f>
80101cb7:	f6 c2 21             	test   $0x21,%dl
80101cba:	75 08                	jne    80101cc4 <idewait+0x22>
    return -1;
  return 0;
80101cbc:	b9 00 00 00 00       	mov    $0x0,%ecx
}
80101cc1:	89 c8                	mov    %ecx,%eax
80101cc3:	c3                   	ret    
    return -1;
80101cc4:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
80101cc9:	eb f6                	jmp    80101cc1 <idewait+0x1f>

80101ccb <idestart>:
}

// Start the request for b.  Caller must hold idelock.
static void
idestart(struct buf *b)
{
80101ccb:	55                   	push   %ebp
80101ccc:	89 e5                	mov    %esp,%ebp
80101cce:	56                   	push   %esi
80101ccf:	53                   	push   %ebx
  if(b == 0)
80101cd0:	85 c0                	test   %eax,%eax
80101cd2:	0f 84 91 00 00 00    	je     80101d69 <idestart+0x9e>
80101cd8:	89 c6                	mov    %eax,%esi
    panic("idestart");
  if(b->blockno >= FSSIZE)
80101cda:	8b 58 08             	mov    0x8(%eax),%ebx
80101cdd:	81 fb e7 03 00 00    	cmp    $0x3e7,%ebx
80101ce3:	0f 87 8d 00 00 00    	ja     80101d76 <idestart+0xab>
  int read_cmd = (sector_per_block == 1) ? IDE_CMD_READ :  IDE_CMD_RDMUL;
  int write_cmd = (sector_per_block == 1) ? IDE_CMD_WRITE : IDE_CMD_WRMUL;

  if (sector_per_block > 7) panic("idestart");

  idewait(0);
80101ce9:	b8 00 00 00 00       	mov    $0x0,%eax
80101cee:	e8 af ff ff ff       	call   80101ca2 <idewait>
  asm volatile("out %0,%1" : : "a" (data), "d" (port));
80101cf3:	b8 00 00 00 00       	mov    $0x0,%eax
80101cf8:	ba f6 03 00 00       	mov    $0x3f6,%edx
80101cfd:	ee                   	out    %al,(%dx)
80101cfe:	b8 01 00 00 00       	mov    $0x1,%eax
80101d03:	ba f2 01 00 00       	mov    $0x1f2,%edx
80101d08:	ee                   	out    %al,(%dx)
80101d09:	ba f3 01 00 00       	mov    $0x1f3,%edx
80101d0e:	89 d8                	mov    %ebx,%eax
80101d10:	ee                   	out    %al,(%dx)
  outb(0x3f6, 0);  // generate interrupt
  outb(0x1f2, sector_per_block);  // number of sectors
  outb(0x1f3, sector & 0xff);
  outb(0x1f4, (sector >> 8) & 0xff);
80101d11:	89 d8                	mov    %ebx,%eax
80101d13:	c1 f8 08             	sar    $0x8,%eax
80101d16:	ba f4 01 00 00       	mov    $0x1f4,%edx
80101d1b:	ee                   	out    %al,(%dx)
  outb(0x1f5, (sector >> 16) & 0xff);
80101d1c:	89 d8                	mov    %ebx,%eax
80101d1e:	c1 f8 10             	sar    $0x10,%eax
80101d21:	ba f5 01 00 00       	mov    $0x1f5,%edx
80101d26:	ee                   	out    %al,(%dx)
  outb(0x1f6, 0xe0 | ((b->dev&1)<<4) | ((sector>>24)&0x0f));
80101d27:	0f b6 46 04          	movzbl 0x4(%esi),%eax
80101d2b:	c1 e0 04             	shl    $0x4,%eax
80101d2e:	83 e0 10             	and    $0x10,%eax
80101d31:	c1 fb 18             	sar    $0x18,%ebx
80101d34:	83 e3 0f             	and    $0xf,%ebx
80101d37:	09 d8                	or     %ebx,%eax
80101d39:	83 c8 e0             	or     $0xffffffe0,%eax
80101d3c:	ba f6 01 00 00       	mov    $0x1f6,%edx
80101d41:	ee                   	out    %al,(%dx)
  if(b->flags & B_DIRTY){
80101d42:	f6 06 04             	testb  $0x4,(%esi)
80101d45:	74 3c                	je     80101d83 <idestart+0xb8>
80101d47:	b8 30 00 00 00       	mov    $0x30,%eax
80101d4c:	ba f7 01 00 00       	mov    $0x1f7,%edx
80101d51:	ee                   	out    %al,(%dx)
    outb(0x1f7, write_cmd);
    outsl(0x1f0, b->data, BSIZE/4);
80101d52:	83 c6 5c             	add    $0x5c,%esi
  asm volatile("cld; rep outsl" :
80101d55:	b9 80 00 00 00       	mov    $0x80,%ecx
80101d5a:	ba f0 01 00 00       	mov    $0x1f0,%edx
80101d5f:	fc                   	cld    
80101d60:	f3 6f                	rep outsl %ds:(%esi),(%dx)
  } else {
    outb(0x1f7, read_cmd);
  }
}
80101d62:	8d 65 f8             	lea    -0x8(%ebp),%esp
80101d65:	5b                   	pop    %ebx
80101d66:	5e                   	pop    %esi
80101d67:	5d                   	pop    %ebp
80101d68:	c3                   	ret    
    panic("idestart");
80101d69:	83 ec 0c             	sub    $0xc,%esp
80101d6c:	68 2b 6a 10 80       	push   $0x80106a2b
80101d71:	e8 e6 e5 ff ff       	call   8010035c <panic>
    panic("incorrect blockno");
80101d76:	83 ec 0c             	sub    $0xc,%esp
80101d79:	68 34 6a 10 80       	push   $0x80106a34
80101d7e:	e8 d9 e5 ff ff       	call   8010035c <panic>
  asm volatile("out %0,%1" : : "a" (data), "d" (port));
80101d83:	b8 20 00 00 00       	mov    $0x20,%eax
80101d88:	ba f7 01 00 00       	mov    $0x1f7,%edx
80101d8d:	ee                   	out    %al,(%dx)
}
80101d8e:	eb d2                	jmp    80101d62 <idestart+0x97>

80101d90 <ideinit>:
{
80101d90:	f3 0f 1e fb          	endbr32 
80101d94:	55                   	push   %ebp
80101d95:	89 e5                	mov    %esp,%ebp
80101d97:	83 ec 10             	sub    $0x10,%esp
  initlock(&idelock, "ide");
80101d9a:	68 46 6a 10 80       	push   $0x80106a46
80101d9f:	68 80 a5 10 80       	push   $0x8010a580
80101da4:	e8 d2 1d 00 00       	call   80103b7b <initlock>
  ioapicenable(IRQ_IDE, ncpu - 1);
80101da9:	83 c4 08             	add    $0x8,%esp
80101dac:	a1 80 35 11 80       	mov    0x80113580,%eax
80101db1:	83 e8 01             	sub    $0x1,%eax
80101db4:	50                   	push   %eax
80101db5:	6a 0e                	push   $0xe
80101db7:	e8 5a 02 00 00       	call   80102016 <ioapicenable>
  idewait(0);
80101dbc:	b8 00 00 00 00       	mov    $0x0,%eax
80101dc1:	e8 dc fe ff ff       	call   80101ca2 <idewait>
80101dc6:	b8 f0 ff ff ff       	mov    $0xfffffff0,%eax
80101dcb:	ba f6 01 00 00       	mov    $0x1f6,%edx
80101dd0:	ee                   	out    %al,(%dx)
  for(i=0; i<1000; i++){
80101dd1:	83 c4 10             	add    $0x10,%esp
80101dd4:	b9 00 00 00 00       	mov    $0x0,%ecx
80101dd9:	eb 03                	jmp    80101dde <ideinit+0x4e>
80101ddb:	83 c1 01             	add    $0x1,%ecx
80101dde:	81 f9 e7 03 00 00    	cmp    $0x3e7,%ecx
80101de4:	7f 14                	jg     80101dfa <ideinit+0x6a>
  asm volatile("in %1,%0" : "=a" (data) : "d" (port));
80101de6:	ba f7 01 00 00       	mov    $0x1f7,%edx
80101deb:	ec                   	in     (%dx),%al
    if(inb(0x1f7) != 0){
80101dec:	84 c0                	test   %al,%al
80101dee:	74 eb                	je     80101ddb <ideinit+0x4b>
      havedisk1 = 1;
80101df0:	c7 05 60 a5 10 80 01 	movl   $0x1,0x8010a560
80101df7:	00 00 00 
  asm volatile("out %0,%1" : : "a" (data), "d" (port));
80101dfa:	b8 e0 ff ff ff       	mov    $0xffffffe0,%eax
80101dff:	ba f6 01 00 00       	mov    $0x1f6,%edx
80101e04:	ee                   	out    %al,(%dx)
}
80101e05:	c9                   	leave  
80101e06:	c3                   	ret    

80101e07 <ideintr>:

// Interrupt handler.
void
ideintr(void)
{
80101e07:	f3 0f 1e fb          	endbr32 
80101e0b:	55                   	push   %ebp
80101e0c:	89 e5                	mov    %esp,%ebp
80101e0e:	57                   	push   %edi
80101e0f:	53                   	push   %ebx
  struct buf *b;

  // First queued buffer is the active request.
  acquire(&idelock);
80101e10:	83 ec 0c             	sub    $0xc,%esp
80101e13:	68 80 a5 10 80       	push   $0x8010a580
80101e18:	e8 9a 1e 00 00       	call   80103cb7 <acquire>

  if((b = idequeue) == 0){
80101e1d:	8b 1d 64 a5 10 80    	mov    0x8010a564,%ebx
80101e23:	83 c4 10             	add    $0x10,%esp
80101e26:	85 db                	test   %ebx,%ebx
80101e28:	74 48                	je     80101e72 <ideintr+0x6b>
    release(&idelock);
    return;
  }
  idequeue = b->qnext;
80101e2a:	8b 43 58             	mov    0x58(%ebx),%eax
80101e2d:	a3 64 a5 10 80       	mov    %eax,0x8010a564

  // Read data if needed.
  if(!(b->flags & B_DIRTY) && idewait(1) >= 0)
80101e32:	f6 03 04             	testb  $0x4,(%ebx)
80101e35:	74 4d                	je     80101e84 <ideintr+0x7d>
    insl(0x1f0, b->data, BSIZE/4);

  // Wake process waiting for this buf.
  b->flags |= B_VALID;
80101e37:	8b 03                	mov    (%ebx),%eax
80101e39:	83 c8 02             	or     $0x2,%eax
  b->flags &= ~B_DIRTY;
80101e3c:	83 e0 fb             	and    $0xfffffffb,%eax
80101e3f:	89 03                	mov    %eax,(%ebx)
  wakeup(b);
80101e41:	83 ec 0c             	sub    $0xc,%esp
80101e44:	53                   	push   %ebx
80101e45:	e8 cb 1a 00 00       	call   80103915 <wakeup>

  // Start disk on next buf in queue.
  if(idequeue != 0)
80101e4a:	a1 64 a5 10 80       	mov    0x8010a564,%eax
80101e4f:	83 c4 10             	add    $0x10,%esp
80101e52:	85 c0                	test   %eax,%eax
80101e54:	74 05                	je     80101e5b <ideintr+0x54>
    idestart(idequeue);
80101e56:	e8 70 fe ff ff       	call   80101ccb <idestart>

  release(&idelock);
80101e5b:	83 ec 0c             	sub    $0xc,%esp
80101e5e:	68 80 a5 10 80       	push   $0x8010a580
80101e63:	e8 b4 1e 00 00       	call   80103d1c <release>
80101e68:	83 c4 10             	add    $0x10,%esp
}
80101e6b:	8d 65 f8             	lea    -0x8(%ebp),%esp
80101e6e:	5b                   	pop    %ebx
80101e6f:	5f                   	pop    %edi
80101e70:	5d                   	pop    %ebp
80101e71:	c3                   	ret    
    release(&idelock);
80101e72:	83 ec 0c             	sub    $0xc,%esp
80101e75:	68 80 a5 10 80       	push   $0x8010a580
80101e7a:	e8 9d 1e 00 00       	call   80103d1c <release>
    return;
80101e7f:	83 c4 10             	add    $0x10,%esp
80101e82:	eb e7                	jmp    80101e6b <ideintr+0x64>
  if(!(b->flags & B_DIRTY) && idewait(1) >= 0)
80101e84:	b8 01 00 00 00       	mov    $0x1,%eax
80101e89:	e8 14 fe ff ff       	call   80101ca2 <idewait>
80101e8e:	85 c0                	test   %eax,%eax
80101e90:	78 a5                	js     80101e37 <ideintr+0x30>
    insl(0x1f0, b->data, BSIZE/4);
80101e92:	8d 7b 5c             	lea    0x5c(%ebx),%edi
  asm volatile("cld; rep insl" :
80101e95:	b9 80 00 00 00       	mov    $0x80,%ecx
80101e9a:	ba f0 01 00 00       	mov    $0x1f0,%edx
80101e9f:	fc                   	cld    
80101ea0:	f3 6d                	rep insl (%dx),%es:(%edi)
}
80101ea2:	eb 93                	jmp    80101e37 <ideintr+0x30>

80101ea4 <iderw>:
// Sync buf with disk.
// If B_DIRTY is set, write buf to disk, clear B_DIRTY, set B_VALID.
// Else if B_VALID is not set, read buf from disk, set B_VALID.
void
iderw(struct buf *b)
{
80101ea4:	f3 0f 1e fb          	endbr32 
80101ea8:	55                   	push   %ebp
80101ea9:	89 e5                	mov    %esp,%ebp
80101eab:	53                   	push   %ebx
80101eac:	83 ec 10             	sub    $0x10,%esp
80101eaf:	8b 5d 08             	mov    0x8(%ebp),%ebx
  struct buf **pp;

  if(!holdingsleep(&b->lock))
80101eb2:	8d 43 0c             	lea    0xc(%ebx),%eax
80101eb5:	50                   	push   %eax
80101eb6:	e8 72 1c 00 00       	call   80103b2d <holdingsleep>
80101ebb:	83 c4 10             	add    $0x10,%esp
80101ebe:	85 c0                	test   %eax,%eax
80101ec0:	74 37                	je     80101ef9 <iderw+0x55>
    panic("iderw: buf not locked");
  if((b->flags & (B_VALID|B_DIRTY)) == B_VALID)
80101ec2:	8b 03                	mov    (%ebx),%eax
80101ec4:	83 e0 06             	and    $0x6,%eax
80101ec7:	83 f8 02             	cmp    $0x2,%eax
80101eca:	74 3a                	je     80101f06 <iderw+0x62>
    panic("iderw: nothing to do");
  if(b->dev != 0 && !havedisk1)
80101ecc:	83 7b 04 00          	cmpl   $0x0,0x4(%ebx)
80101ed0:	74 09                	je     80101edb <iderw+0x37>
80101ed2:	83 3d 60 a5 10 80 00 	cmpl   $0x0,0x8010a560
80101ed9:	74 38                	je     80101f13 <iderw+0x6f>
    panic("iderw: ide disk 1 not present");

  acquire(&idelock);  //DOC:acquire-lock
80101edb:	83 ec 0c             	sub    $0xc,%esp
80101ede:	68 80 a5 10 80       	push   $0x8010a580
80101ee3:	e8 cf 1d 00 00       	call   80103cb7 <acquire>

  // Append b to idequeue.
  b->qnext = 0;
80101ee8:	c7 43 58 00 00 00 00 	movl   $0x0,0x58(%ebx)
  for(pp=&idequeue; *pp; pp=&(*pp)->qnext)  //DOC:insert-queue
80101eef:	83 c4 10             	add    $0x10,%esp
80101ef2:	ba 64 a5 10 80       	mov    $0x8010a564,%edx
80101ef7:	eb 2a                	jmp    80101f23 <iderw+0x7f>
    panic("iderw: buf not locked");
80101ef9:	83 ec 0c             	sub    $0xc,%esp
80101efc:	68 4a 6a 10 80       	push   $0x80106a4a
80101f01:	e8 56 e4 ff ff       	call   8010035c <panic>
    panic("iderw: nothing to do");
80101f06:	83 ec 0c             	sub    $0xc,%esp
80101f09:	68 60 6a 10 80       	push   $0x80106a60
80101f0e:	e8 49 e4 ff ff       	call   8010035c <panic>
    panic("iderw: ide disk 1 not present");
80101f13:	83 ec 0c             	sub    $0xc,%esp
80101f16:	68 75 6a 10 80       	push   $0x80106a75
80101f1b:	e8 3c e4 ff ff       	call   8010035c <panic>
  for(pp=&idequeue; *pp; pp=&(*pp)->qnext)  //DOC:insert-queue
80101f20:	8d 50 58             	lea    0x58(%eax),%edx
80101f23:	8b 02                	mov    (%edx),%eax
80101f25:	85 c0                	test   %eax,%eax
80101f27:	75 f7                	jne    80101f20 <iderw+0x7c>
    ;
  *pp = b;
80101f29:	89 1a                	mov    %ebx,(%edx)

  // Start disk if necessary.
  if(idequeue == b)
80101f2b:	39 1d 64 a5 10 80    	cmp    %ebx,0x8010a564
80101f31:	75 1a                	jne    80101f4d <iderw+0xa9>
    idestart(b);
80101f33:	89 d8                	mov    %ebx,%eax
80101f35:	e8 91 fd ff ff       	call   80101ccb <idestart>
80101f3a:	eb 11                	jmp    80101f4d <iderw+0xa9>

  // Wait for request to finish.
  while((b->flags & (B_VALID|B_DIRTY)) != B_VALID){
    sleep(b, &idelock);
80101f3c:	83 ec 08             	sub    $0x8,%esp
80101f3f:	68 80 a5 10 80       	push   $0x8010a580
80101f44:	53                   	push   %ebx
80101f45:	e8 5e 18 00 00       	call   801037a8 <sleep>
80101f4a:	83 c4 10             	add    $0x10,%esp
  while((b->flags & (B_VALID|B_DIRTY)) != B_VALID){
80101f4d:	8b 03                	mov    (%ebx),%eax
80101f4f:	83 e0 06             	and    $0x6,%eax
80101f52:	83 f8 02             	cmp    $0x2,%eax
80101f55:	75 e5                	jne    80101f3c <iderw+0x98>
  }


  release(&idelock);
80101f57:	83 ec 0c             	sub    $0xc,%esp
80101f5a:	68 80 a5 10 80       	push   $0x8010a580
80101f5f:	e8 b8 1d 00 00       	call   80103d1c <release>
}
80101f64:	83 c4 10             	add    $0x10,%esp
80101f67:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80101f6a:	c9                   	leave  
80101f6b:	c3                   	ret    

80101f6c <ioapicread>:
};

static uint
ioapicread(int reg)
{
  ioapic->reg = reg;
80101f6c:	8b 15 b4 2e 11 80    	mov    0x80112eb4,%edx
80101f72:	89 02                	mov    %eax,(%edx)
  return ioapic->data;
80101f74:	a1 b4 2e 11 80       	mov    0x80112eb4,%eax
80101f79:	8b 40 10             	mov    0x10(%eax),%eax
}
80101f7c:	c3                   	ret    

80101f7d <ioapicwrite>:

static void
ioapicwrite(int reg, uint data)
{
  ioapic->reg = reg;
80101f7d:	8b 0d b4 2e 11 80    	mov    0x80112eb4,%ecx
80101f83:	89 01                	mov    %eax,(%ecx)
  ioapic->data = data;
80101f85:	a1 b4 2e 11 80       	mov    0x80112eb4,%eax
80101f8a:	89 50 10             	mov    %edx,0x10(%eax)
}
80101f8d:	c3                   	ret    

80101f8e <ioapicinit>:

void
ioapicinit(void)
{
80101f8e:	f3 0f 1e fb          	endbr32 
80101f92:	55                   	push   %ebp
80101f93:	89 e5                	mov    %esp,%ebp
80101f95:	57                   	push   %edi
80101f96:	56                   	push   %esi
80101f97:	53                   	push   %ebx
80101f98:	83 ec 0c             	sub    $0xc,%esp
  int i, id, maxintr;

  ioapic = (volatile struct ioapic*)IOAPIC;
80101f9b:	c7 05 b4 2e 11 80 00 	movl   $0xfec00000,0x80112eb4
80101fa2:	00 c0 fe 
  maxintr = (ioapicread(REG_VER) >> 16) & 0xFF;
80101fa5:	b8 01 00 00 00       	mov    $0x1,%eax
80101faa:	e8 bd ff ff ff       	call   80101f6c <ioapicread>
80101faf:	c1 e8 10             	shr    $0x10,%eax
80101fb2:	0f b6 f8             	movzbl %al,%edi
  id = ioapicread(REG_ID) >> 24;
80101fb5:	b8 00 00 00 00       	mov    $0x0,%eax
80101fba:	e8 ad ff ff ff       	call   80101f6c <ioapicread>
80101fbf:	c1 e8 18             	shr    $0x18,%eax
  if(id != ioapicid)
80101fc2:	0f b6 15 e0 2f 11 80 	movzbl 0x80112fe0,%edx
80101fc9:	39 c2                	cmp    %eax,%edx
80101fcb:	75 2f                	jne    80101ffc <ioapicinit+0x6e>
{
80101fcd:	bb 00 00 00 00       	mov    $0x0,%ebx
    cprintf("ioapicinit: id isn't equal to ioapicid; not a MP\n");

  // Mark all interrupts edge-triggered, active high, disabled,
  // and not routed to any CPUs.
  for(i = 0; i <= maxintr; i++){
80101fd2:	39 fb                	cmp    %edi,%ebx
80101fd4:	7f 38                	jg     8010200e <ioapicinit+0x80>
    ioapicwrite(REG_TABLE+2*i, INT_DISABLED | (T_IRQ0 + i));
80101fd6:	8d 53 20             	lea    0x20(%ebx),%edx
80101fd9:	81 ca 00 00 01 00    	or     $0x10000,%edx
80101fdf:	8d 74 1b 10          	lea    0x10(%ebx,%ebx,1),%esi
80101fe3:	89 f0                	mov    %esi,%eax
80101fe5:	e8 93 ff ff ff       	call   80101f7d <ioapicwrite>
    ioapicwrite(REG_TABLE+2*i+1, 0);
80101fea:	8d 46 01             	lea    0x1(%esi),%eax
80101fed:	ba 00 00 00 00       	mov    $0x0,%edx
80101ff2:	e8 86 ff ff ff       	call   80101f7d <ioapicwrite>
  for(i = 0; i <= maxintr; i++){
80101ff7:	83 c3 01             	add    $0x1,%ebx
80101ffa:	eb d6                	jmp    80101fd2 <ioapicinit+0x44>
    cprintf("ioapicinit: id isn't equal to ioapicid; not a MP\n");
80101ffc:	83 ec 0c             	sub    $0xc,%esp
80101fff:	68 94 6a 10 80       	push   $0x80106a94
80102004:	e8 20 e6 ff ff       	call   80100629 <cprintf>
80102009:	83 c4 10             	add    $0x10,%esp
8010200c:	eb bf                	jmp    80101fcd <ioapicinit+0x3f>
  }
}
8010200e:	8d 65 f4             	lea    -0xc(%ebp),%esp
80102011:	5b                   	pop    %ebx
80102012:	5e                   	pop    %esi
80102013:	5f                   	pop    %edi
80102014:	5d                   	pop    %ebp
80102015:	c3                   	ret    

80102016 <ioapicenable>:

void
ioapicenable(int irq, int cpunum)
{
80102016:	f3 0f 1e fb          	endbr32 
8010201a:	55                   	push   %ebp
8010201b:	89 e5                	mov    %esp,%ebp
8010201d:	53                   	push   %ebx
8010201e:	83 ec 04             	sub    $0x4,%esp
80102021:	8b 45 08             	mov    0x8(%ebp),%eax
  // Mark interrupt edge-triggered, active high,
  // enabled, and routed to the given cpunum,
  // which happens to be that cpu's APIC ID.
  ioapicwrite(REG_TABLE+2*irq, T_IRQ0 + irq);
80102024:	8d 50 20             	lea    0x20(%eax),%edx
80102027:	8d 5c 00 10          	lea    0x10(%eax,%eax,1),%ebx
8010202b:	89 d8                	mov    %ebx,%eax
8010202d:	e8 4b ff ff ff       	call   80101f7d <ioapicwrite>
  ioapicwrite(REG_TABLE+2*irq+1, cpunum << 24);
80102032:	8b 55 0c             	mov    0xc(%ebp),%edx
80102035:	c1 e2 18             	shl    $0x18,%edx
80102038:	8d 43 01             	lea    0x1(%ebx),%eax
8010203b:	e8 3d ff ff ff       	call   80101f7d <ioapicwrite>
}
80102040:	83 c4 04             	add    $0x4,%esp
80102043:	5b                   	pop    %ebx
80102044:	5d                   	pop    %ebp
80102045:	c3                   	ret    

80102046 <kfree>:
// which normally should have been returned by a
// call to kalloc().  (The exception is when
// initializing the allocator; see kinit above.)
void
kfree(char *v)
{
80102046:	f3 0f 1e fb          	endbr32 
8010204a:	55                   	push   %ebp
8010204b:	89 e5                	mov    %esp,%ebp
8010204d:	53                   	push   %ebx
8010204e:	83 ec 04             	sub    $0x4,%esp
80102051:	8b 5d 08             	mov    0x8(%ebp),%ebx
  struct run *r;

  if((uint)v % PGSIZE || v < end || V2P(v) >= PHYSTOP)
80102054:	f7 c3 ff 0f 00 00    	test   $0xfff,%ebx
8010205a:	75 4c                	jne    801020a8 <kfree+0x62>
8010205c:	81 fb d4 55 11 80    	cmp    $0x801155d4,%ebx
80102062:	72 44                	jb     801020a8 <kfree+0x62>
80102064:	8d 83 00 00 00 80    	lea    -0x80000000(%ebx),%eax
8010206a:	3d ff ff ff 0d       	cmp    $0xdffffff,%eax
8010206f:	77 37                	ja     801020a8 <kfree+0x62>
    panic("kfree");

  // Fill with junk to catch dangling refs.
  memset(v, 1, PGSIZE);
80102071:	83 ec 04             	sub    $0x4,%esp
80102074:	68 00 10 00 00       	push   $0x1000
80102079:	6a 01                	push   $0x1
8010207b:	53                   	push   %ebx
8010207c:	e8 e2 1c 00 00       	call   80103d63 <memset>

  if(kmem.use_lock)
80102081:	83 c4 10             	add    $0x10,%esp
80102084:	83 3d f4 2e 11 80 00 	cmpl   $0x0,0x80112ef4
8010208b:	75 28                	jne    801020b5 <kfree+0x6f>
    acquire(&kmem.lock);
  r = (struct run*)v;
  r->next = kmem.freelist;
8010208d:	a1 f8 2e 11 80       	mov    0x80112ef8,%eax
80102092:	89 03                	mov    %eax,(%ebx)
  kmem.freelist = r;
80102094:	89 1d f8 2e 11 80    	mov    %ebx,0x80112ef8
  if(kmem.use_lock)
8010209a:	83 3d f4 2e 11 80 00 	cmpl   $0x0,0x80112ef4
801020a1:	75 24                	jne    801020c7 <kfree+0x81>
    release(&kmem.lock);
}
801020a3:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801020a6:	c9                   	leave  
801020a7:	c3                   	ret    
    panic("kfree");
801020a8:	83 ec 0c             	sub    $0xc,%esp
801020ab:	68 c6 6a 10 80       	push   $0x80106ac6
801020b0:	e8 a7 e2 ff ff       	call   8010035c <panic>
    acquire(&kmem.lock);
801020b5:	83 ec 0c             	sub    $0xc,%esp
801020b8:	68 c0 2e 11 80       	push   $0x80112ec0
801020bd:	e8 f5 1b 00 00       	call   80103cb7 <acquire>
801020c2:	83 c4 10             	add    $0x10,%esp
801020c5:	eb c6                	jmp    8010208d <kfree+0x47>
    release(&kmem.lock);
801020c7:	83 ec 0c             	sub    $0xc,%esp
801020ca:	68 c0 2e 11 80       	push   $0x80112ec0
801020cf:	e8 48 1c 00 00       	call   80103d1c <release>
801020d4:	83 c4 10             	add    $0x10,%esp
}
801020d7:	eb ca                	jmp    801020a3 <kfree+0x5d>

801020d9 <freerange>:
{
801020d9:	f3 0f 1e fb          	endbr32 
801020dd:	55                   	push   %ebp
801020de:	89 e5                	mov    %esp,%ebp
801020e0:	56                   	push   %esi
801020e1:	53                   	push   %ebx
801020e2:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  p = (char*)PGROUNDUP((uint)vstart);
801020e5:	8b 45 08             	mov    0x8(%ebp),%eax
801020e8:	05 ff 0f 00 00       	add    $0xfff,%eax
801020ed:	25 00 f0 ff ff       	and    $0xfffff000,%eax
  for(; p + PGSIZE <= (char*)vend; p += PGSIZE)
801020f2:	8d b0 00 10 00 00    	lea    0x1000(%eax),%esi
801020f8:	39 de                	cmp    %ebx,%esi
801020fa:	77 10                	ja     8010210c <freerange+0x33>
    kfree(p);
801020fc:	83 ec 0c             	sub    $0xc,%esp
801020ff:	50                   	push   %eax
80102100:	e8 41 ff ff ff       	call   80102046 <kfree>
80102105:	83 c4 10             	add    $0x10,%esp
  for(; p + PGSIZE <= (char*)vend; p += PGSIZE)
80102108:	89 f0                	mov    %esi,%eax
8010210a:	eb e6                	jmp    801020f2 <freerange+0x19>
}
8010210c:	8d 65 f8             	lea    -0x8(%ebp),%esp
8010210f:	5b                   	pop    %ebx
80102110:	5e                   	pop    %esi
80102111:	5d                   	pop    %ebp
80102112:	c3                   	ret    

80102113 <kinit1>:
{
80102113:	f3 0f 1e fb          	endbr32 
80102117:	55                   	push   %ebp
80102118:	89 e5                	mov    %esp,%ebp
8010211a:	83 ec 10             	sub    $0x10,%esp
  initlock(&kmem.lock, "kmem");
8010211d:	68 cc 6a 10 80       	push   $0x80106acc
80102122:	68 c0 2e 11 80       	push   $0x80112ec0
80102127:	e8 4f 1a 00 00       	call   80103b7b <initlock>
  kmem.use_lock = 0;
8010212c:	c7 05 f4 2e 11 80 00 	movl   $0x0,0x80112ef4
80102133:	00 00 00 
  freerange(vstart, vend);
80102136:	83 c4 08             	add    $0x8,%esp
80102139:	ff 75 0c             	pushl  0xc(%ebp)
8010213c:	ff 75 08             	pushl  0x8(%ebp)
8010213f:	e8 95 ff ff ff       	call   801020d9 <freerange>
}
80102144:	83 c4 10             	add    $0x10,%esp
80102147:	c9                   	leave  
80102148:	c3                   	ret    

80102149 <kinit2>:
{
80102149:	f3 0f 1e fb          	endbr32 
8010214d:	55                   	push   %ebp
8010214e:	89 e5                	mov    %esp,%ebp
80102150:	83 ec 10             	sub    $0x10,%esp
  freerange(vstart, vend);
80102153:	ff 75 0c             	pushl  0xc(%ebp)
80102156:	ff 75 08             	pushl  0x8(%ebp)
80102159:	e8 7b ff ff ff       	call   801020d9 <freerange>
  kmem.use_lock = 1;
8010215e:	c7 05 f4 2e 11 80 01 	movl   $0x1,0x80112ef4
80102165:	00 00 00 
}
80102168:	83 c4 10             	add    $0x10,%esp
8010216b:	c9                   	leave  
8010216c:	c3                   	ret    

8010216d <kalloc>:
// Allocate one 4096-byte page of physical memory.
// Returns a pointer that the kernel can use.
// Returns 0 if the memory cannot be allocated.
char*
kalloc(void)
{
8010216d:	f3 0f 1e fb          	endbr32 
80102171:	55                   	push   %ebp
80102172:	89 e5                	mov    %esp,%ebp
80102174:	53                   	push   %ebx
80102175:	83 ec 04             	sub    $0x4,%esp
  struct run *r;

  if(kmem.use_lock)
80102178:	83 3d f4 2e 11 80 00 	cmpl   $0x0,0x80112ef4
8010217f:	75 21                	jne    801021a2 <kalloc+0x35>
    acquire(&kmem.lock);
  r = kmem.freelist;
80102181:	8b 1d f8 2e 11 80    	mov    0x80112ef8,%ebx
  if(r)
80102187:	85 db                	test   %ebx,%ebx
80102189:	74 07                	je     80102192 <kalloc+0x25>
    kmem.freelist = r->next;
8010218b:	8b 03                	mov    (%ebx),%eax
8010218d:	a3 f8 2e 11 80       	mov    %eax,0x80112ef8
  if(kmem.use_lock)
80102192:	83 3d f4 2e 11 80 00 	cmpl   $0x0,0x80112ef4
80102199:	75 19                	jne    801021b4 <kalloc+0x47>
    release(&kmem.lock);
  return (char*)r;
}
8010219b:	89 d8                	mov    %ebx,%eax
8010219d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801021a0:	c9                   	leave  
801021a1:	c3                   	ret    
    acquire(&kmem.lock);
801021a2:	83 ec 0c             	sub    $0xc,%esp
801021a5:	68 c0 2e 11 80       	push   $0x80112ec0
801021aa:	e8 08 1b 00 00       	call   80103cb7 <acquire>
801021af:	83 c4 10             	add    $0x10,%esp
801021b2:	eb cd                	jmp    80102181 <kalloc+0x14>
    release(&kmem.lock);
801021b4:	83 ec 0c             	sub    $0xc,%esp
801021b7:	68 c0 2e 11 80       	push   $0x80112ec0
801021bc:	e8 5b 1b 00 00       	call   80103d1c <release>
801021c1:	83 c4 10             	add    $0x10,%esp
  return (char*)r;
801021c4:	eb d5                	jmp    8010219b <kalloc+0x2e>

801021c6 <kbdgetc>:
#include "defs.h"
#include "kbd.h"

int
kbdgetc(void)
{
801021c6:	f3 0f 1e fb          	endbr32 
  asm volatile("in %1,%0" : "=a" (data) : "d" (port));
801021ca:	ba 64 00 00 00       	mov    $0x64,%edx
801021cf:	ec                   	in     (%dx),%al
    normalmap, shiftmap, ctlmap, ctlmap
  };
  uint st, data, c;

  st = inb(KBSTATP);
  if((st & KBS_DIB) == 0)
801021d0:	a8 01                	test   $0x1,%al
801021d2:	0f 84 ad 00 00 00    	je     80102285 <kbdgetc+0xbf>
801021d8:	ba 60 00 00 00       	mov    $0x60,%edx
801021dd:	ec                   	in     (%dx),%al
    return -1;
  data = inb(KBDATAP);
801021de:	0f b6 d0             	movzbl %al,%edx

  if(data == 0xE0){
801021e1:	3c e0                	cmp    $0xe0,%al
801021e3:	74 5b                	je     80102240 <kbdgetc+0x7a>
    shift |= E0ESC;
    return 0;
  } else if(data & 0x80){
801021e5:	84 c0                	test   %al,%al
801021e7:	78 64                	js     8010224d <kbdgetc+0x87>
    // Key released
    data = (shift & E0ESC ? data : data & 0x7F);
    shift &= ~(shiftcode[data] | E0ESC);
    return 0;
  } else if(shift & E0ESC){
801021e9:	8b 0d b4 a5 10 80    	mov    0x8010a5b4,%ecx
801021ef:	f6 c1 40             	test   $0x40,%cl
801021f2:	74 0f                	je     80102203 <kbdgetc+0x3d>
    // Last character was an E0 escape; or with 0x80
    data |= 0x80;
801021f4:	83 c8 80             	or     $0xffffff80,%eax
801021f7:	0f b6 d0             	movzbl %al,%edx
    shift &= ~E0ESC;
801021fa:	83 e1 bf             	and    $0xffffffbf,%ecx
801021fd:	89 0d b4 a5 10 80    	mov    %ecx,0x8010a5b4
  }

  shift |= shiftcode[data];
80102203:	0f b6 8a 00 6c 10 80 	movzbl -0x7fef9400(%edx),%ecx
8010220a:	0b 0d b4 a5 10 80    	or     0x8010a5b4,%ecx
  shift ^= togglecode[data];
80102210:	0f b6 82 00 6b 10 80 	movzbl -0x7fef9500(%edx),%eax
80102217:	31 c1                	xor    %eax,%ecx
80102219:	89 0d b4 a5 10 80    	mov    %ecx,0x8010a5b4
  c = charcode[shift & (CTL | SHIFT)][data];
8010221f:	89 c8                	mov    %ecx,%eax
80102221:	83 e0 03             	and    $0x3,%eax
80102224:	8b 04 85 e0 6a 10 80 	mov    -0x7fef9520(,%eax,4),%eax
8010222b:	0f b6 04 10          	movzbl (%eax,%edx,1),%eax
  if(shift & CAPSLOCK){
8010222f:	f6 c1 08             	test   $0x8,%cl
80102232:	74 56                	je     8010228a <kbdgetc+0xc4>
    if('a' <= c && c <= 'z')
80102234:	8d 50 9f             	lea    -0x61(%eax),%edx
80102237:	83 fa 19             	cmp    $0x19,%edx
8010223a:	77 3d                	ja     80102279 <kbdgetc+0xb3>
      c += 'A' - 'a';
8010223c:	83 e8 20             	sub    $0x20,%eax
8010223f:	c3                   	ret    
    shift |= E0ESC;
80102240:	83 0d b4 a5 10 80 40 	orl    $0x40,0x8010a5b4
    return 0;
80102247:	b8 00 00 00 00       	mov    $0x0,%eax
8010224c:	c3                   	ret    
    data = (shift & E0ESC ? data : data & 0x7F);
8010224d:	8b 0d b4 a5 10 80    	mov    0x8010a5b4,%ecx
80102253:	f6 c1 40             	test   $0x40,%cl
80102256:	75 05                	jne    8010225d <kbdgetc+0x97>
80102258:	89 c2                	mov    %eax,%edx
8010225a:	83 e2 7f             	and    $0x7f,%edx
    shift &= ~(shiftcode[data] | E0ESC);
8010225d:	0f b6 82 00 6c 10 80 	movzbl -0x7fef9400(%edx),%eax
80102264:	83 c8 40             	or     $0x40,%eax
80102267:	0f b6 c0             	movzbl %al,%eax
8010226a:	f7 d0                	not    %eax
8010226c:	21 c8                	and    %ecx,%eax
8010226e:	a3 b4 a5 10 80       	mov    %eax,0x8010a5b4
    return 0;
80102273:	b8 00 00 00 00       	mov    $0x0,%eax
80102278:	c3                   	ret    
    else if('A' <= c && c <= 'Z')
80102279:	8d 50 bf             	lea    -0x41(%eax),%edx
8010227c:	83 fa 19             	cmp    $0x19,%edx
8010227f:	77 09                	ja     8010228a <kbdgetc+0xc4>
      c += 'a' - 'A';
80102281:	83 c0 20             	add    $0x20,%eax
  }
  return c;
80102284:	c3                   	ret    
    return -1;
80102285:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
8010228a:	c3                   	ret    

8010228b <kbdintr>:

void
kbdintr(void)
{
8010228b:	f3 0f 1e fb          	endbr32 
8010228f:	55                   	push   %ebp
80102290:	89 e5                	mov    %esp,%ebp
80102292:	83 ec 14             	sub    $0x14,%esp
  consoleintr(kbdgetc);
80102295:	68 c6 21 10 80       	push   $0x801021c6
8010229a:	e8 ba e4 ff ff       	call   80100759 <consoleintr>
}
8010229f:	83 c4 10             	add    $0x10,%esp
801022a2:	c9                   	leave  
801022a3:	c3                   	ret    

801022a4 <lapicw>:

//PAGEBREAK!
static void
lapicw(int index, int value)
{
  lapic[index] = value;
801022a4:	8b 0d fc 2e 11 80    	mov    0x80112efc,%ecx
801022aa:	8d 04 81             	lea    (%ecx,%eax,4),%eax
801022ad:	89 10                	mov    %edx,(%eax)
  lapic[ID];  // wait for write to finish, by reading
801022af:	a1 fc 2e 11 80       	mov    0x80112efc,%eax
801022b4:	8b 40 20             	mov    0x20(%eax),%eax
}
801022b7:	c3                   	ret    

801022b8 <cmos_read>:
  asm volatile("out %0,%1" : : "a" (data), "d" (port));
801022b8:	ba 70 00 00 00       	mov    $0x70,%edx
801022bd:	ee                   	out    %al,(%dx)
  asm volatile("in %1,%0" : "=a" (data) : "d" (port));
801022be:	ba 71 00 00 00       	mov    $0x71,%edx
801022c3:	ec                   	in     (%dx),%al
cmos_read(uint reg)
{
  outb(CMOS_PORT,  reg);
  microdelay(200);

  return inb(CMOS_RETURN);
801022c4:	0f b6 c0             	movzbl %al,%eax
}
801022c7:	c3                   	ret    

801022c8 <fill_rtcdate>:

static void
fill_rtcdate(struct rtcdate *r)
{
801022c8:	55                   	push   %ebp
801022c9:	89 e5                	mov    %esp,%ebp
801022cb:	53                   	push   %ebx
801022cc:	83 ec 04             	sub    $0x4,%esp
801022cf:	89 c3                	mov    %eax,%ebx
  r->second = cmos_read(SECS);
801022d1:	b8 00 00 00 00       	mov    $0x0,%eax
801022d6:	e8 dd ff ff ff       	call   801022b8 <cmos_read>
801022db:	89 03                	mov    %eax,(%ebx)
  r->minute = cmos_read(MINS);
801022dd:	b8 02 00 00 00       	mov    $0x2,%eax
801022e2:	e8 d1 ff ff ff       	call   801022b8 <cmos_read>
801022e7:	89 43 04             	mov    %eax,0x4(%ebx)
  r->hour   = cmos_read(HOURS);
801022ea:	b8 04 00 00 00       	mov    $0x4,%eax
801022ef:	e8 c4 ff ff ff       	call   801022b8 <cmos_read>
801022f4:	89 43 08             	mov    %eax,0x8(%ebx)
  r->day    = cmos_read(DAY);
801022f7:	b8 07 00 00 00       	mov    $0x7,%eax
801022fc:	e8 b7 ff ff ff       	call   801022b8 <cmos_read>
80102301:	89 43 0c             	mov    %eax,0xc(%ebx)
  r->month  = cmos_read(MONTH);
80102304:	b8 08 00 00 00       	mov    $0x8,%eax
80102309:	e8 aa ff ff ff       	call   801022b8 <cmos_read>
8010230e:	89 43 10             	mov    %eax,0x10(%ebx)
  r->year   = cmos_read(YEAR);
80102311:	b8 09 00 00 00       	mov    $0x9,%eax
80102316:	e8 9d ff ff ff       	call   801022b8 <cmos_read>
8010231b:	89 43 14             	mov    %eax,0x14(%ebx)
}
8010231e:	83 c4 04             	add    $0x4,%esp
80102321:	5b                   	pop    %ebx
80102322:	5d                   	pop    %ebp
80102323:	c3                   	ret    

80102324 <lapicinit>:
{
80102324:	f3 0f 1e fb          	endbr32 
  if(!lapic)
80102328:	83 3d fc 2e 11 80 00 	cmpl   $0x0,0x80112efc
8010232f:	0f 84 fe 00 00 00    	je     80102433 <lapicinit+0x10f>
{
80102335:	55                   	push   %ebp
80102336:	89 e5                	mov    %esp,%ebp
80102338:	83 ec 08             	sub    $0x8,%esp
  lapicw(SVR, ENABLE | (T_IRQ0 + IRQ_SPURIOUS));
8010233b:	ba 3f 01 00 00       	mov    $0x13f,%edx
80102340:	b8 3c 00 00 00       	mov    $0x3c,%eax
80102345:	e8 5a ff ff ff       	call   801022a4 <lapicw>
  lapicw(TDCR, X1);
8010234a:	ba 0b 00 00 00       	mov    $0xb,%edx
8010234f:	b8 f8 00 00 00       	mov    $0xf8,%eax
80102354:	e8 4b ff ff ff       	call   801022a4 <lapicw>
  lapicw(TIMER, PERIODIC | (T_IRQ0 + IRQ_TIMER));
80102359:	ba 20 00 02 00       	mov    $0x20020,%edx
8010235e:	b8 c8 00 00 00       	mov    $0xc8,%eax
80102363:	e8 3c ff ff ff       	call   801022a4 <lapicw>
  lapicw(TICR, 10000000);
80102368:	ba 80 96 98 00       	mov    $0x989680,%edx
8010236d:	b8 e0 00 00 00       	mov    $0xe0,%eax
80102372:	e8 2d ff ff ff       	call   801022a4 <lapicw>
  lapicw(LINT0, MASKED);
80102377:	ba 00 00 01 00       	mov    $0x10000,%edx
8010237c:	b8 d4 00 00 00       	mov    $0xd4,%eax
80102381:	e8 1e ff ff ff       	call   801022a4 <lapicw>
  lapicw(LINT1, MASKED);
80102386:	ba 00 00 01 00       	mov    $0x10000,%edx
8010238b:	b8 d8 00 00 00       	mov    $0xd8,%eax
80102390:	e8 0f ff ff ff       	call   801022a4 <lapicw>
  if(((lapic[VER]>>16) & 0xFF) >= 4)
80102395:	a1 fc 2e 11 80       	mov    0x80112efc,%eax
8010239a:	8b 40 30             	mov    0x30(%eax),%eax
8010239d:	c1 e8 10             	shr    $0x10,%eax
801023a0:	a8 fc                	test   $0xfc,%al
801023a2:	75 7b                	jne    8010241f <lapicinit+0xfb>
  lapicw(ERROR, T_IRQ0 + IRQ_ERROR);
801023a4:	ba 33 00 00 00       	mov    $0x33,%edx
801023a9:	b8 dc 00 00 00       	mov    $0xdc,%eax
801023ae:	e8 f1 fe ff ff       	call   801022a4 <lapicw>
  lapicw(ESR, 0);
801023b3:	ba 00 00 00 00       	mov    $0x0,%edx
801023b8:	b8 a0 00 00 00       	mov    $0xa0,%eax
801023bd:	e8 e2 fe ff ff       	call   801022a4 <lapicw>
  lapicw(ESR, 0);
801023c2:	ba 00 00 00 00       	mov    $0x0,%edx
801023c7:	b8 a0 00 00 00       	mov    $0xa0,%eax
801023cc:	e8 d3 fe ff ff       	call   801022a4 <lapicw>
  lapicw(EOI, 0);
801023d1:	ba 00 00 00 00       	mov    $0x0,%edx
801023d6:	b8 2c 00 00 00       	mov    $0x2c,%eax
801023db:	e8 c4 fe ff ff       	call   801022a4 <lapicw>
  lapicw(ICRHI, 0);
801023e0:	ba 00 00 00 00       	mov    $0x0,%edx
801023e5:	b8 c4 00 00 00       	mov    $0xc4,%eax
801023ea:	e8 b5 fe ff ff       	call   801022a4 <lapicw>
  lapicw(ICRLO, BCAST | INIT | LEVEL);
801023ef:	ba 00 85 08 00       	mov    $0x88500,%edx
801023f4:	b8 c0 00 00 00       	mov    $0xc0,%eax
801023f9:	e8 a6 fe ff ff       	call   801022a4 <lapicw>
  while(lapic[ICRLO] & DELIVS)
801023fe:	a1 fc 2e 11 80       	mov    0x80112efc,%eax
80102403:	8b 80 00 03 00 00    	mov    0x300(%eax),%eax
80102409:	f6 c4 10             	test   $0x10,%ah
8010240c:	75 f0                	jne    801023fe <lapicinit+0xda>
  lapicw(TPR, 0);
8010240e:	ba 00 00 00 00       	mov    $0x0,%edx
80102413:	b8 20 00 00 00       	mov    $0x20,%eax
80102418:	e8 87 fe ff ff       	call   801022a4 <lapicw>
}
8010241d:	c9                   	leave  
8010241e:	c3                   	ret    
    lapicw(PCINT, MASKED);
8010241f:	ba 00 00 01 00       	mov    $0x10000,%edx
80102424:	b8 d0 00 00 00       	mov    $0xd0,%eax
80102429:	e8 76 fe ff ff       	call   801022a4 <lapicw>
8010242e:	e9 71 ff ff ff       	jmp    801023a4 <lapicinit+0x80>
80102433:	c3                   	ret    

80102434 <lapicid>:
{
80102434:	f3 0f 1e fb          	endbr32 
  if (!lapic)
80102438:	a1 fc 2e 11 80       	mov    0x80112efc,%eax
8010243d:	85 c0                	test   %eax,%eax
8010243f:	74 07                	je     80102448 <lapicid+0x14>
  return lapic[ID] >> 24;
80102441:	8b 40 20             	mov    0x20(%eax),%eax
80102444:	c1 e8 18             	shr    $0x18,%eax
80102447:	c3                   	ret    
    return 0;
80102448:	b8 00 00 00 00       	mov    $0x0,%eax
}
8010244d:	c3                   	ret    

8010244e <lapiceoi>:
{
8010244e:	f3 0f 1e fb          	endbr32 
  if(lapic)
80102452:	83 3d fc 2e 11 80 00 	cmpl   $0x0,0x80112efc
80102459:	74 17                	je     80102472 <lapiceoi+0x24>
{
8010245b:	55                   	push   %ebp
8010245c:	89 e5                	mov    %esp,%ebp
8010245e:	83 ec 08             	sub    $0x8,%esp
    lapicw(EOI, 0);
80102461:	ba 00 00 00 00       	mov    $0x0,%edx
80102466:	b8 2c 00 00 00       	mov    $0x2c,%eax
8010246b:	e8 34 fe ff ff       	call   801022a4 <lapicw>
}
80102470:	c9                   	leave  
80102471:	c3                   	ret    
80102472:	c3                   	ret    

80102473 <microdelay>:
{
80102473:	f3 0f 1e fb          	endbr32 
}
80102477:	c3                   	ret    

80102478 <lapicstartap>:
{
80102478:	f3 0f 1e fb          	endbr32 
8010247c:	55                   	push   %ebp
8010247d:	89 e5                	mov    %esp,%ebp
8010247f:	57                   	push   %edi
80102480:	56                   	push   %esi
80102481:	53                   	push   %ebx
80102482:	83 ec 0c             	sub    $0xc,%esp
80102485:	8b 75 08             	mov    0x8(%ebp),%esi
80102488:	8b 7d 0c             	mov    0xc(%ebp),%edi
  asm volatile("out %0,%1" : : "a" (data), "d" (port));
8010248b:	b8 0f 00 00 00       	mov    $0xf,%eax
80102490:	ba 70 00 00 00       	mov    $0x70,%edx
80102495:	ee                   	out    %al,(%dx)
80102496:	b8 0a 00 00 00       	mov    $0xa,%eax
8010249b:	ba 71 00 00 00       	mov    $0x71,%edx
801024a0:	ee                   	out    %al,(%dx)
  wrv[0] = 0;
801024a1:	66 c7 05 67 04 00 80 	movw   $0x0,0x80000467
801024a8:	00 00 
  wrv[1] = addr >> 4;
801024aa:	89 f8                	mov    %edi,%eax
801024ac:	c1 e8 04             	shr    $0x4,%eax
801024af:	66 a3 69 04 00 80    	mov    %ax,0x80000469
  lapicw(ICRHI, apicid<<24);
801024b5:	c1 e6 18             	shl    $0x18,%esi
801024b8:	89 f2                	mov    %esi,%edx
801024ba:	b8 c4 00 00 00       	mov    $0xc4,%eax
801024bf:	e8 e0 fd ff ff       	call   801022a4 <lapicw>
  lapicw(ICRLO, INIT | LEVEL | ASSERT);
801024c4:	ba 00 c5 00 00       	mov    $0xc500,%edx
801024c9:	b8 c0 00 00 00       	mov    $0xc0,%eax
801024ce:	e8 d1 fd ff ff       	call   801022a4 <lapicw>
  lapicw(ICRLO, INIT | LEVEL);
801024d3:	ba 00 85 00 00       	mov    $0x8500,%edx
801024d8:	b8 c0 00 00 00       	mov    $0xc0,%eax
801024dd:	e8 c2 fd ff ff       	call   801022a4 <lapicw>
  for(i = 0; i < 2; i++){
801024e2:	bb 00 00 00 00       	mov    $0x0,%ebx
801024e7:	eb 21                	jmp    8010250a <lapicstartap+0x92>
    lapicw(ICRHI, apicid<<24);
801024e9:	89 f2                	mov    %esi,%edx
801024eb:	b8 c4 00 00 00       	mov    $0xc4,%eax
801024f0:	e8 af fd ff ff       	call   801022a4 <lapicw>
    lapicw(ICRLO, STARTUP | (addr>>12));
801024f5:	89 fa                	mov    %edi,%edx
801024f7:	c1 ea 0c             	shr    $0xc,%edx
801024fa:	80 ce 06             	or     $0x6,%dh
801024fd:	b8 c0 00 00 00       	mov    $0xc0,%eax
80102502:	e8 9d fd ff ff       	call   801022a4 <lapicw>
  for(i = 0; i < 2; i++){
80102507:	83 c3 01             	add    $0x1,%ebx
8010250a:	83 fb 01             	cmp    $0x1,%ebx
8010250d:	7e da                	jle    801024e9 <lapicstartap+0x71>
}
8010250f:	83 c4 0c             	add    $0xc,%esp
80102512:	5b                   	pop    %ebx
80102513:	5e                   	pop    %esi
80102514:	5f                   	pop    %edi
80102515:	5d                   	pop    %ebp
80102516:	c3                   	ret    

80102517 <cmostime>:

// qemu seems to use 24-hour GWT and the values are BCD encoded
void
cmostime(struct rtcdate *r)
{
80102517:	f3 0f 1e fb          	endbr32 
8010251b:	55                   	push   %ebp
8010251c:	89 e5                	mov    %esp,%ebp
8010251e:	57                   	push   %edi
8010251f:	56                   	push   %esi
80102520:	53                   	push   %ebx
80102521:	83 ec 3c             	sub    $0x3c,%esp
80102524:	8b 75 08             	mov    0x8(%ebp),%esi
  struct rtcdate t1, t2;
  int sb, bcd;

  sb = cmos_read(CMOS_STATB);
80102527:	b8 0b 00 00 00       	mov    $0xb,%eax
8010252c:	e8 87 fd ff ff       	call   801022b8 <cmos_read>

  bcd = (sb & (1 << 2)) == 0;
80102531:	83 e0 04             	and    $0x4,%eax
80102534:	89 c7                	mov    %eax,%edi

  // make sure CMOS doesn't modify time while we read it
  for(;;) {
    fill_rtcdate(&t1);
80102536:	8d 45 d0             	lea    -0x30(%ebp),%eax
80102539:	e8 8a fd ff ff       	call   801022c8 <fill_rtcdate>
    if(cmos_read(CMOS_STATA) & CMOS_UIP)
8010253e:	b8 0a 00 00 00       	mov    $0xa,%eax
80102543:	e8 70 fd ff ff       	call   801022b8 <cmos_read>
80102548:	a8 80                	test   $0x80,%al
8010254a:	75 ea                	jne    80102536 <cmostime+0x1f>
        continue;
    fill_rtcdate(&t2);
8010254c:	8d 5d b8             	lea    -0x48(%ebp),%ebx
8010254f:	89 d8                	mov    %ebx,%eax
80102551:	e8 72 fd ff ff       	call   801022c8 <fill_rtcdate>
    if(memcmp(&t1, &t2, sizeof(t1)) == 0)
80102556:	83 ec 04             	sub    $0x4,%esp
80102559:	6a 18                	push   $0x18
8010255b:	53                   	push   %ebx
8010255c:	8d 45 d0             	lea    -0x30(%ebp),%eax
8010255f:	50                   	push   %eax
80102560:	e8 41 18 00 00       	call   80103da6 <memcmp>
80102565:	83 c4 10             	add    $0x10,%esp
80102568:	85 c0                	test   %eax,%eax
8010256a:	75 ca                	jne    80102536 <cmostime+0x1f>
      break;
  }

  // convert
  if(bcd) {
8010256c:	85 ff                	test   %edi,%edi
8010256e:	75 78                	jne    801025e8 <cmostime+0xd1>
#define    CONV(x)     (t1.x = ((t1.x >> 4) * 10) + (t1.x & 0xf))
    CONV(second);
80102570:	8b 45 d0             	mov    -0x30(%ebp),%eax
80102573:	89 c2                	mov    %eax,%edx
80102575:	c1 ea 04             	shr    $0x4,%edx
80102578:	8d 14 92             	lea    (%edx,%edx,4),%edx
8010257b:	83 e0 0f             	and    $0xf,%eax
8010257e:	8d 04 50             	lea    (%eax,%edx,2),%eax
80102581:	89 45 d0             	mov    %eax,-0x30(%ebp)
    CONV(minute);
80102584:	8b 45 d4             	mov    -0x2c(%ebp),%eax
80102587:	89 c2                	mov    %eax,%edx
80102589:	c1 ea 04             	shr    $0x4,%edx
8010258c:	8d 14 92             	lea    (%edx,%edx,4),%edx
8010258f:	83 e0 0f             	and    $0xf,%eax
80102592:	8d 04 50             	lea    (%eax,%edx,2),%eax
80102595:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    CONV(hour  );
80102598:	8b 45 d8             	mov    -0x28(%ebp),%eax
8010259b:	89 c2                	mov    %eax,%edx
8010259d:	c1 ea 04             	shr    $0x4,%edx
801025a0:	8d 14 92             	lea    (%edx,%edx,4),%edx
801025a3:	83 e0 0f             	and    $0xf,%eax
801025a6:	8d 04 50             	lea    (%eax,%edx,2),%eax
801025a9:	89 45 d8             	mov    %eax,-0x28(%ebp)
    CONV(day   );
801025ac:	8b 45 dc             	mov    -0x24(%ebp),%eax
801025af:	89 c2                	mov    %eax,%edx
801025b1:	c1 ea 04             	shr    $0x4,%edx
801025b4:	8d 14 92             	lea    (%edx,%edx,4),%edx
801025b7:	83 e0 0f             	and    $0xf,%eax
801025ba:	8d 04 50             	lea    (%eax,%edx,2),%eax
801025bd:	89 45 dc             	mov    %eax,-0x24(%ebp)
    CONV(month );
801025c0:	8b 45 e0             	mov    -0x20(%ebp),%eax
801025c3:	89 c2                	mov    %eax,%edx
801025c5:	c1 ea 04             	shr    $0x4,%edx
801025c8:	8d 14 92             	lea    (%edx,%edx,4),%edx
801025cb:	83 e0 0f             	and    $0xf,%eax
801025ce:	8d 04 50             	lea    (%eax,%edx,2),%eax
801025d1:	89 45 e0             	mov    %eax,-0x20(%ebp)
    CONV(year  );
801025d4:	8b 45 e4             	mov    -0x1c(%ebp),%eax
801025d7:	89 c2                	mov    %eax,%edx
801025d9:	c1 ea 04             	shr    $0x4,%edx
801025dc:	8d 14 92             	lea    (%edx,%edx,4),%edx
801025df:	83 e0 0f             	and    $0xf,%eax
801025e2:	8d 04 50             	lea    (%eax,%edx,2),%eax
801025e5:	89 45 e4             	mov    %eax,-0x1c(%ebp)
#undef     CONV
  }

  *r = t1;
801025e8:	8b 45 d0             	mov    -0x30(%ebp),%eax
801025eb:	89 06                	mov    %eax,(%esi)
801025ed:	8b 45 d4             	mov    -0x2c(%ebp),%eax
801025f0:	89 46 04             	mov    %eax,0x4(%esi)
801025f3:	8b 45 d8             	mov    -0x28(%ebp),%eax
801025f6:	89 46 08             	mov    %eax,0x8(%esi)
801025f9:	8b 45 dc             	mov    -0x24(%ebp),%eax
801025fc:	89 46 0c             	mov    %eax,0xc(%esi)
801025ff:	8b 45 e0             	mov    -0x20(%ebp),%eax
80102602:	89 46 10             	mov    %eax,0x10(%esi)
80102605:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80102608:	89 46 14             	mov    %eax,0x14(%esi)
  r->year += 2000;
8010260b:	81 46 14 d0 07 00 00 	addl   $0x7d0,0x14(%esi)
}
80102612:	8d 65 f4             	lea    -0xc(%ebp),%esp
80102615:	5b                   	pop    %ebx
80102616:	5e                   	pop    %esi
80102617:	5f                   	pop    %edi
80102618:	5d                   	pop    %ebp
80102619:	c3                   	ret    

8010261a <read_head>:
}

// Read the log header from disk into the in-memory log header
static void
read_head(void)
{
8010261a:	55                   	push   %ebp
8010261b:	89 e5                	mov    %esp,%ebp
8010261d:	53                   	push   %ebx
8010261e:	83 ec 0c             	sub    $0xc,%esp
  struct buf *buf = bread(log.dev, log.start);
80102621:	ff 35 34 2f 11 80    	pushl  0x80112f34
80102627:	ff 35 44 2f 11 80    	pushl  0x80112f44
8010262d:	e8 3e db ff ff       	call   80100170 <bread>
  struct logheader *lh = (struct logheader *) (buf->data);
  int i;
  log.lh.n = lh->n;
80102632:	8b 58 5c             	mov    0x5c(%eax),%ebx
80102635:	89 1d 48 2f 11 80    	mov    %ebx,0x80112f48
  for (i = 0; i < log.lh.n; i++) {
8010263b:	83 c4 10             	add    $0x10,%esp
8010263e:	ba 00 00 00 00       	mov    $0x0,%edx
80102643:	39 d3                	cmp    %edx,%ebx
80102645:	7e 10                	jle    80102657 <read_head+0x3d>
    log.lh.block[i] = lh->block[i];
80102647:	8b 4c 90 60          	mov    0x60(%eax,%edx,4),%ecx
8010264b:	89 0c 95 4c 2f 11 80 	mov    %ecx,-0x7feed0b4(,%edx,4)
  for (i = 0; i < log.lh.n; i++) {
80102652:	83 c2 01             	add    $0x1,%edx
80102655:	eb ec                	jmp    80102643 <read_head+0x29>
  }
  brelse(buf);
80102657:	83 ec 0c             	sub    $0xc,%esp
8010265a:	50                   	push   %eax
8010265b:	e8 81 db ff ff       	call   801001e1 <brelse>
}
80102660:	83 c4 10             	add    $0x10,%esp
80102663:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80102666:	c9                   	leave  
80102667:	c3                   	ret    

80102668 <install_trans>:
{
80102668:	55                   	push   %ebp
80102669:	89 e5                	mov    %esp,%ebp
8010266b:	57                   	push   %edi
8010266c:	56                   	push   %esi
8010266d:	53                   	push   %ebx
8010266e:	83 ec 0c             	sub    $0xc,%esp
  for (tail = 0; tail < log.lh.n; tail++) {
80102671:	be 00 00 00 00       	mov    $0x0,%esi
80102676:	39 35 48 2f 11 80    	cmp    %esi,0x80112f48
8010267c:	7e 68                	jle    801026e6 <install_trans+0x7e>
    struct buf *lbuf = bread(log.dev, log.start+tail+1); // read log block
8010267e:	89 f0                	mov    %esi,%eax
80102680:	03 05 34 2f 11 80    	add    0x80112f34,%eax
80102686:	83 c0 01             	add    $0x1,%eax
80102689:	83 ec 08             	sub    $0x8,%esp
8010268c:	50                   	push   %eax
8010268d:	ff 35 44 2f 11 80    	pushl  0x80112f44
80102693:	e8 d8 da ff ff       	call   80100170 <bread>
80102698:	89 c7                	mov    %eax,%edi
    struct buf *dbuf = bread(log.dev, log.lh.block[tail]); // read dst
8010269a:	83 c4 08             	add    $0x8,%esp
8010269d:	ff 34 b5 4c 2f 11 80 	pushl  -0x7feed0b4(,%esi,4)
801026a4:	ff 35 44 2f 11 80    	pushl  0x80112f44
801026aa:	e8 c1 da ff ff       	call   80100170 <bread>
801026af:	89 c3                	mov    %eax,%ebx
    memmove(dbuf->data, lbuf->data, BSIZE);  // copy block to dst
801026b1:	8d 57 5c             	lea    0x5c(%edi),%edx
801026b4:	8d 40 5c             	lea    0x5c(%eax),%eax
801026b7:	83 c4 0c             	add    $0xc,%esp
801026ba:	68 00 02 00 00       	push   $0x200
801026bf:	52                   	push   %edx
801026c0:	50                   	push   %eax
801026c1:	e8 15 17 00 00       	call   80103ddb <memmove>
    bwrite(dbuf);  // write dst to disk
801026c6:	89 1c 24             	mov    %ebx,(%esp)
801026c9:	e8 d4 da ff ff       	call   801001a2 <bwrite>
    brelse(lbuf);
801026ce:	89 3c 24             	mov    %edi,(%esp)
801026d1:	e8 0b db ff ff       	call   801001e1 <brelse>
    brelse(dbuf);
801026d6:	89 1c 24             	mov    %ebx,(%esp)
801026d9:	e8 03 db ff ff       	call   801001e1 <brelse>
  for (tail = 0; tail < log.lh.n; tail++) {
801026de:	83 c6 01             	add    $0x1,%esi
801026e1:	83 c4 10             	add    $0x10,%esp
801026e4:	eb 90                	jmp    80102676 <install_trans+0xe>
}
801026e6:	8d 65 f4             	lea    -0xc(%ebp),%esp
801026e9:	5b                   	pop    %ebx
801026ea:	5e                   	pop    %esi
801026eb:	5f                   	pop    %edi
801026ec:	5d                   	pop    %ebp
801026ed:	c3                   	ret    

801026ee <write_head>:
// Write in-memory log header to disk.
// This is the true point at which the
// current transaction commits.
static void
write_head(void)
{
801026ee:	55                   	push   %ebp
801026ef:	89 e5                	mov    %esp,%ebp
801026f1:	53                   	push   %ebx
801026f2:	83 ec 0c             	sub    $0xc,%esp
  struct buf *buf = bread(log.dev, log.start);
801026f5:	ff 35 34 2f 11 80    	pushl  0x80112f34
801026fb:	ff 35 44 2f 11 80    	pushl  0x80112f44
80102701:	e8 6a da ff ff       	call   80100170 <bread>
80102706:	89 c3                	mov    %eax,%ebx
  struct logheader *hb = (struct logheader *) (buf->data);
  int i;
  hb->n = log.lh.n;
80102708:	8b 0d 48 2f 11 80    	mov    0x80112f48,%ecx
8010270e:	89 48 5c             	mov    %ecx,0x5c(%eax)
  for (i = 0; i < log.lh.n; i++) {
80102711:	83 c4 10             	add    $0x10,%esp
80102714:	b8 00 00 00 00       	mov    $0x0,%eax
80102719:	39 c1                	cmp    %eax,%ecx
8010271b:	7e 10                	jle    8010272d <write_head+0x3f>
    hb->block[i] = log.lh.block[i];
8010271d:	8b 14 85 4c 2f 11 80 	mov    -0x7feed0b4(,%eax,4),%edx
80102724:	89 54 83 60          	mov    %edx,0x60(%ebx,%eax,4)
  for (i = 0; i < log.lh.n; i++) {
80102728:	83 c0 01             	add    $0x1,%eax
8010272b:	eb ec                	jmp    80102719 <write_head+0x2b>
  }
  bwrite(buf);
8010272d:	83 ec 0c             	sub    $0xc,%esp
80102730:	53                   	push   %ebx
80102731:	e8 6c da ff ff       	call   801001a2 <bwrite>
  brelse(buf);
80102736:	89 1c 24             	mov    %ebx,(%esp)
80102739:	e8 a3 da ff ff       	call   801001e1 <brelse>
}
8010273e:	83 c4 10             	add    $0x10,%esp
80102741:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80102744:	c9                   	leave  
80102745:	c3                   	ret    

80102746 <recover_from_log>:

static void
recover_from_log(void)
{
80102746:	55                   	push   %ebp
80102747:	89 e5                	mov    %esp,%ebp
80102749:	83 ec 08             	sub    $0x8,%esp
  read_head();
8010274c:	e8 c9 fe ff ff       	call   8010261a <read_head>
  install_trans(); // if committed, copy from log to disk
80102751:	e8 12 ff ff ff       	call   80102668 <install_trans>
  log.lh.n = 0;
80102756:	c7 05 48 2f 11 80 00 	movl   $0x0,0x80112f48
8010275d:	00 00 00 
  write_head(); // clear the log
80102760:	e8 89 ff ff ff       	call   801026ee <write_head>
}
80102765:	c9                   	leave  
80102766:	c3                   	ret    

80102767 <write_log>:
}

// Copy modified blocks from cache to log.
static void
write_log(void)
{
80102767:	55                   	push   %ebp
80102768:	89 e5                	mov    %esp,%ebp
8010276a:	57                   	push   %edi
8010276b:	56                   	push   %esi
8010276c:	53                   	push   %ebx
8010276d:	83 ec 0c             	sub    $0xc,%esp
  int tail;

  for (tail = 0; tail < log.lh.n; tail++) {
80102770:	be 00 00 00 00       	mov    $0x0,%esi
80102775:	39 35 48 2f 11 80    	cmp    %esi,0x80112f48
8010277b:	7e 68                	jle    801027e5 <write_log+0x7e>
    struct buf *to = bread(log.dev, log.start+tail+1); // log block
8010277d:	89 f0                	mov    %esi,%eax
8010277f:	03 05 34 2f 11 80    	add    0x80112f34,%eax
80102785:	83 c0 01             	add    $0x1,%eax
80102788:	83 ec 08             	sub    $0x8,%esp
8010278b:	50                   	push   %eax
8010278c:	ff 35 44 2f 11 80    	pushl  0x80112f44
80102792:	e8 d9 d9 ff ff       	call   80100170 <bread>
80102797:	89 c3                	mov    %eax,%ebx
    struct buf *from = bread(log.dev, log.lh.block[tail]); // cache block
80102799:	83 c4 08             	add    $0x8,%esp
8010279c:	ff 34 b5 4c 2f 11 80 	pushl  -0x7feed0b4(,%esi,4)
801027a3:	ff 35 44 2f 11 80    	pushl  0x80112f44
801027a9:	e8 c2 d9 ff ff       	call   80100170 <bread>
801027ae:	89 c7                	mov    %eax,%edi
    memmove(to->data, from->data, BSIZE);
801027b0:	8d 50 5c             	lea    0x5c(%eax),%edx
801027b3:	8d 43 5c             	lea    0x5c(%ebx),%eax
801027b6:	83 c4 0c             	add    $0xc,%esp
801027b9:	68 00 02 00 00       	push   $0x200
801027be:	52                   	push   %edx
801027bf:	50                   	push   %eax
801027c0:	e8 16 16 00 00       	call   80103ddb <memmove>
    bwrite(to);  // write the log
801027c5:	89 1c 24             	mov    %ebx,(%esp)
801027c8:	e8 d5 d9 ff ff       	call   801001a2 <bwrite>
    brelse(from);
801027cd:	89 3c 24             	mov    %edi,(%esp)
801027d0:	e8 0c da ff ff       	call   801001e1 <brelse>
    brelse(to);
801027d5:	89 1c 24             	mov    %ebx,(%esp)
801027d8:	e8 04 da ff ff       	call   801001e1 <brelse>
  for (tail = 0; tail < log.lh.n; tail++) {
801027dd:	83 c6 01             	add    $0x1,%esi
801027e0:	83 c4 10             	add    $0x10,%esp
801027e3:	eb 90                	jmp    80102775 <write_log+0xe>
  }
}
801027e5:	8d 65 f4             	lea    -0xc(%ebp),%esp
801027e8:	5b                   	pop    %ebx
801027e9:	5e                   	pop    %esi
801027ea:	5f                   	pop    %edi
801027eb:	5d                   	pop    %ebp
801027ec:	c3                   	ret    

801027ed <commit>:

static void
commit()
{
  if (log.lh.n > 0) {
801027ed:	83 3d 48 2f 11 80 00 	cmpl   $0x0,0x80112f48
801027f4:	7f 01                	jg     801027f7 <commit+0xa>
801027f6:	c3                   	ret    
{
801027f7:	55                   	push   %ebp
801027f8:	89 e5                	mov    %esp,%ebp
801027fa:	83 ec 08             	sub    $0x8,%esp
    write_log();     // Write modified blocks from cache to log
801027fd:	e8 65 ff ff ff       	call   80102767 <write_log>
    write_head();    // Write header to disk -- the real commit
80102802:	e8 e7 fe ff ff       	call   801026ee <write_head>
    install_trans(); // Now install writes to home locations
80102807:	e8 5c fe ff ff       	call   80102668 <install_trans>
    log.lh.n = 0;
8010280c:	c7 05 48 2f 11 80 00 	movl   $0x0,0x80112f48
80102813:	00 00 00 
    write_head();    // Erase the transaction from the log
80102816:	e8 d3 fe ff ff       	call   801026ee <write_head>
  }
}
8010281b:	c9                   	leave  
8010281c:	c3                   	ret    

8010281d <initlog>:
{
8010281d:	f3 0f 1e fb          	endbr32 
80102821:	55                   	push   %ebp
80102822:	89 e5                	mov    %esp,%ebp
80102824:	53                   	push   %ebx
80102825:	83 ec 2c             	sub    $0x2c,%esp
80102828:	8b 5d 08             	mov    0x8(%ebp),%ebx
  initlock(&log.lock, "log");
8010282b:	68 00 6d 10 80       	push   $0x80106d00
80102830:	68 00 2f 11 80       	push   $0x80112f00
80102835:	e8 41 13 00 00       	call   80103b7b <initlock>
  readsb(dev, &sb);
8010283a:	83 c4 08             	add    $0x8,%esp
8010283d:	8d 45 dc             	lea    -0x24(%ebp),%eax
80102840:	50                   	push   %eax
80102841:	53                   	push   %ebx
80102842:	e8 3b ea ff ff       	call   80101282 <readsb>
  log.start = sb.logstart;
80102847:	8b 45 ec             	mov    -0x14(%ebp),%eax
8010284a:	a3 34 2f 11 80       	mov    %eax,0x80112f34
  log.size = sb.nlog;
8010284f:	8b 45 e8             	mov    -0x18(%ebp),%eax
80102852:	a3 38 2f 11 80       	mov    %eax,0x80112f38
  log.dev = dev;
80102857:	89 1d 44 2f 11 80    	mov    %ebx,0x80112f44
  recover_from_log();
8010285d:	e8 e4 fe ff ff       	call   80102746 <recover_from_log>
}
80102862:	83 c4 10             	add    $0x10,%esp
80102865:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80102868:	c9                   	leave  
80102869:	c3                   	ret    

8010286a <begin_op>:
{
8010286a:	f3 0f 1e fb          	endbr32 
8010286e:	55                   	push   %ebp
8010286f:	89 e5                	mov    %esp,%ebp
80102871:	83 ec 14             	sub    $0x14,%esp
  acquire(&log.lock);
80102874:	68 00 2f 11 80       	push   $0x80112f00
80102879:	e8 39 14 00 00       	call   80103cb7 <acquire>
8010287e:	83 c4 10             	add    $0x10,%esp
80102881:	eb 15                	jmp    80102898 <begin_op+0x2e>
      sleep(&log, &log.lock);
80102883:	83 ec 08             	sub    $0x8,%esp
80102886:	68 00 2f 11 80       	push   $0x80112f00
8010288b:	68 00 2f 11 80       	push   $0x80112f00
80102890:	e8 13 0f 00 00       	call   801037a8 <sleep>
80102895:	83 c4 10             	add    $0x10,%esp
    if(log.committing){
80102898:	83 3d 40 2f 11 80 00 	cmpl   $0x0,0x80112f40
8010289f:	75 e2                	jne    80102883 <begin_op+0x19>
    } else if(log.lh.n + (log.outstanding+1)*MAXOPBLOCKS > LOGSIZE){
801028a1:	a1 3c 2f 11 80       	mov    0x80112f3c,%eax
801028a6:	83 c0 01             	add    $0x1,%eax
801028a9:	8d 0c 80             	lea    (%eax,%eax,4),%ecx
801028ac:	8d 14 09             	lea    (%ecx,%ecx,1),%edx
801028af:	03 15 48 2f 11 80    	add    0x80112f48,%edx
801028b5:	83 fa 1e             	cmp    $0x1e,%edx
801028b8:	7e 17                	jle    801028d1 <begin_op+0x67>
      sleep(&log, &log.lock);
801028ba:	83 ec 08             	sub    $0x8,%esp
801028bd:	68 00 2f 11 80       	push   $0x80112f00
801028c2:	68 00 2f 11 80       	push   $0x80112f00
801028c7:	e8 dc 0e 00 00       	call   801037a8 <sleep>
801028cc:	83 c4 10             	add    $0x10,%esp
801028cf:	eb c7                	jmp    80102898 <begin_op+0x2e>
      log.outstanding += 1;
801028d1:	a3 3c 2f 11 80       	mov    %eax,0x80112f3c
      release(&log.lock);
801028d6:	83 ec 0c             	sub    $0xc,%esp
801028d9:	68 00 2f 11 80       	push   $0x80112f00
801028de:	e8 39 14 00 00       	call   80103d1c <release>
}
801028e3:	83 c4 10             	add    $0x10,%esp
801028e6:	c9                   	leave  
801028e7:	c3                   	ret    

801028e8 <end_op>:
{
801028e8:	f3 0f 1e fb          	endbr32 
801028ec:	55                   	push   %ebp
801028ed:	89 e5                	mov    %esp,%ebp
801028ef:	53                   	push   %ebx
801028f0:	83 ec 10             	sub    $0x10,%esp
  acquire(&log.lock);
801028f3:	68 00 2f 11 80       	push   $0x80112f00
801028f8:	e8 ba 13 00 00       	call   80103cb7 <acquire>
  log.outstanding -= 1;
801028fd:	a1 3c 2f 11 80       	mov    0x80112f3c,%eax
80102902:	83 e8 01             	sub    $0x1,%eax
80102905:	a3 3c 2f 11 80       	mov    %eax,0x80112f3c
  if(log.committing)
8010290a:	8b 1d 40 2f 11 80    	mov    0x80112f40,%ebx
80102910:	83 c4 10             	add    $0x10,%esp
80102913:	85 db                	test   %ebx,%ebx
80102915:	75 2c                	jne    80102943 <end_op+0x5b>
  if(log.outstanding == 0){
80102917:	85 c0                	test   %eax,%eax
80102919:	75 35                	jne    80102950 <end_op+0x68>
    log.committing = 1;
8010291b:	c7 05 40 2f 11 80 01 	movl   $0x1,0x80112f40
80102922:	00 00 00 
    do_commit = 1;
80102925:	bb 01 00 00 00       	mov    $0x1,%ebx
  release(&log.lock);
8010292a:	83 ec 0c             	sub    $0xc,%esp
8010292d:	68 00 2f 11 80       	push   $0x80112f00
80102932:	e8 e5 13 00 00       	call   80103d1c <release>
  if(do_commit){
80102937:	83 c4 10             	add    $0x10,%esp
8010293a:	85 db                	test   %ebx,%ebx
8010293c:	75 24                	jne    80102962 <end_op+0x7a>
}
8010293e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80102941:	c9                   	leave  
80102942:	c3                   	ret    
    panic("log.committing");
80102943:	83 ec 0c             	sub    $0xc,%esp
80102946:	68 04 6d 10 80       	push   $0x80106d04
8010294b:	e8 0c da ff ff       	call   8010035c <panic>
    wakeup(&log);
80102950:	83 ec 0c             	sub    $0xc,%esp
80102953:	68 00 2f 11 80       	push   $0x80112f00
80102958:	e8 b8 0f 00 00       	call   80103915 <wakeup>
8010295d:	83 c4 10             	add    $0x10,%esp
80102960:	eb c8                	jmp    8010292a <end_op+0x42>
    commit();
80102962:	e8 86 fe ff ff       	call   801027ed <commit>
    acquire(&log.lock);
80102967:	83 ec 0c             	sub    $0xc,%esp
8010296a:	68 00 2f 11 80       	push   $0x80112f00
8010296f:	e8 43 13 00 00       	call   80103cb7 <acquire>
    log.committing = 0;
80102974:	c7 05 40 2f 11 80 00 	movl   $0x0,0x80112f40
8010297b:	00 00 00 
    wakeup(&log);
8010297e:	c7 04 24 00 2f 11 80 	movl   $0x80112f00,(%esp)
80102985:	e8 8b 0f 00 00       	call   80103915 <wakeup>
    release(&log.lock);
8010298a:	c7 04 24 00 2f 11 80 	movl   $0x80112f00,(%esp)
80102991:	e8 86 13 00 00       	call   80103d1c <release>
80102996:	83 c4 10             	add    $0x10,%esp
}
80102999:	eb a3                	jmp    8010293e <end_op+0x56>

8010299b <log_write>:
//   modify bp->data[]
//   log_write(bp)
//   brelse(bp)
void
log_write(struct buf *b)
{
8010299b:	f3 0f 1e fb          	endbr32 
8010299f:	55                   	push   %ebp
801029a0:	89 e5                	mov    %esp,%ebp
801029a2:	53                   	push   %ebx
801029a3:	83 ec 04             	sub    $0x4,%esp
801029a6:	8b 5d 08             	mov    0x8(%ebp),%ebx
  int i;

  if (log.lh.n >= LOGSIZE || log.lh.n >= log.size - 1)
801029a9:	8b 15 48 2f 11 80    	mov    0x80112f48,%edx
801029af:	83 fa 1d             	cmp    $0x1d,%edx
801029b2:	7f 45                	jg     801029f9 <log_write+0x5e>
801029b4:	a1 38 2f 11 80       	mov    0x80112f38,%eax
801029b9:	83 e8 01             	sub    $0x1,%eax
801029bc:	39 c2                	cmp    %eax,%edx
801029be:	7d 39                	jge    801029f9 <log_write+0x5e>
    panic("too big a transaction");
  if (log.outstanding < 1)
801029c0:	83 3d 3c 2f 11 80 00 	cmpl   $0x0,0x80112f3c
801029c7:	7e 3d                	jle    80102a06 <log_write+0x6b>
    panic("log_write outside of trans");

  acquire(&log.lock);
801029c9:	83 ec 0c             	sub    $0xc,%esp
801029cc:	68 00 2f 11 80       	push   $0x80112f00
801029d1:	e8 e1 12 00 00       	call   80103cb7 <acquire>
  for (i = 0; i < log.lh.n; i++) {
801029d6:	83 c4 10             	add    $0x10,%esp
801029d9:	b8 00 00 00 00       	mov    $0x0,%eax
801029de:	8b 15 48 2f 11 80    	mov    0x80112f48,%edx
801029e4:	39 c2                	cmp    %eax,%edx
801029e6:	7e 2b                	jle    80102a13 <log_write+0x78>
    if (log.lh.block[i] == b->blockno)   // log absorbtion
801029e8:	8b 4b 08             	mov    0x8(%ebx),%ecx
801029eb:	39 0c 85 4c 2f 11 80 	cmp    %ecx,-0x7feed0b4(,%eax,4)
801029f2:	74 1f                	je     80102a13 <log_write+0x78>
  for (i = 0; i < log.lh.n; i++) {
801029f4:	83 c0 01             	add    $0x1,%eax
801029f7:	eb e5                	jmp    801029de <log_write+0x43>
    panic("too big a transaction");
801029f9:	83 ec 0c             	sub    $0xc,%esp
801029fc:	68 13 6d 10 80       	push   $0x80106d13
80102a01:	e8 56 d9 ff ff       	call   8010035c <panic>
    panic("log_write outside of trans");
80102a06:	83 ec 0c             	sub    $0xc,%esp
80102a09:	68 29 6d 10 80       	push   $0x80106d29
80102a0e:	e8 49 d9 ff ff       	call   8010035c <panic>
      break;
  }
  log.lh.block[i] = b->blockno;
80102a13:	8b 4b 08             	mov    0x8(%ebx),%ecx
80102a16:	89 0c 85 4c 2f 11 80 	mov    %ecx,-0x7feed0b4(,%eax,4)
  if (i == log.lh.n)
80102a1d:	39 c2                	cmp    %eax,%edx
80102a1f:	74 18                	je     80102a39 <log_write+0x9e>
    log.lh.n++;
  b->flags |= B_DIRTY; // prevent eviction
80102a21:	83 0b 04             	orl    $0x4,(%ebx)
  release(&log.lock);
80102a24:	83 ec 0c             	sub    $0xc,%esp
80102a27:	68 00 2f 11 80       	push   $0x80112f00
80102a2c:	e8 eb 12 00 00       	call   80103d1c <release>
}
80102a31:	83 c4 10             	add    $0x10,%esp
80102a34:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80102a37:	c9                   	leave  
80102a38:	c3                   	ret    
    log.lh.n++;
80102a39:	83 c2 01             	add    $0x1,%edx
80102a3c:	89 15 48 2f 11 80    	mov    %edx,0x80112f48
80102a42:	eb dd                	jmp    80102a21 <log_write+0x86>

80102a44 <startothers>:
pde_t entrypgdir[];  // For entry.S

// Start the non-boot (AP) processors.
static void
startothers(void)
{
80102a44:	55                   	push   %ebp
80102a45:	89 e5                	mov    %esp,%ebp
80102a47:	53                   	push   %ebx
80102a48:	83 ec 08             	sub    $0x8,%esp

  // Write entry code to unused memory at 0x7000.
  // The linker has placed the image of entryother.S in
  // _binary_entryother_start.
  code = P2V(0x7000);
  memmove(code, _binary_entryother_start, (uint)_binary_entryother_size);
80102a4b:	68 8e 00 00 00       	push   $0x8e
80102a50:	68 8c a4 10 80       	push   $0x8010a48c
80102a55:	68 00 70 00 80       	push   $0x80007000
80102a5a:	e8 7c 13 00 00       	call   80103ddb <memmove>

  for(c = cpus; c < cpus+ncpu; c++){
80102a5f:	83 c4 10             	add    $0x10,%esp
80102a62:	bb 00 30 11 80       	mov    $0x80113000,%ebx
80102a67:	eb 47                	jmp    80102ab0 <startothers+0x6c>
      continue;

    // Tell entryother.S what stack to use, where to enter, and what
    // pgdir to use. We cannot use kpgdir yet, because the AP processor
    // is running in low  memory, so we use entrypgdir for the APs too.
    stack = kalloc();
80102a69:	e8 ff f6 ff ff       	call   8010216d <kalloc>
    *(void**)(code-4) = stack + KSTACKSIZE;
80102a6e:	05 00 10 00 00       	add    $0x1000,%eax
80102a73:	a3 fc 6f 00 80       	mov    %eax,0x80006ffc
    *(void(**)(void))(code-8) = mpenter;
80102a78:	c7 05 f8 6f 00 80 12 	movl   $0x80102b12,0x80006ff8
80102a7f:	2b 10 80 
    *(int**)(code-12) = (void *) V2P(entrypgdir);
80102a82:	c7 05 f4 6f 00 80 00 	movl   $0x109000,0x80006ff4
80102a89:	90 10 00 

    lapicstartap(c->apicid, V2P(code));
80102a8c:	83 ec 08             	sub    $0x8,%esp
80102a8f:	68 00 70 00 00       	push   $0x7000
80102a94:	0f b6 03             	movzbl (%ebx),%eax
80102a97:	50                   	push   %eax
80102a98:	e8 db f9 ff ff       	call   80102478 <lapicstartap>

    // wait for cpu to finish mpmain()
    while(c->started == 0)
80102a9d:	83 c4 10             	add    $0x10,%esp
80102aa0:	8b 83 a0 00 00 00    	mov    0xa0(%ebx),%eax
80102aa6:	85 c0                	test   %eax,%eax
80102aa8:	74 f6                	je     80102aa0 <startothers+0x5c>
  for(c = cpus; c < cpus+ncpu; c++){
80102aaa:	81 c3 b0 00 00 00    	add    $0xb0,%ebx
80102ab0:	69 05 80 35 11 80 b0 	imul   $0xb0,0x80113580,%eax
80102ab7:	00 00 00 
80102aba:	05 00 30 11 80       	add    $0x80113000,%eax
80102abf:	39 d8                	cmp    %ebx,%eax
80102ac1:	76 0b                	jbe    80102ace <startothers+0x8a>
    if(c == mycpu())  // We've started already.
80102ac3:	e8 99 07 00 00       	call   80103261 <mycpu>
80102ac8:	39 c3                	cmp    %eax,%ebx
80102aca:	74 de                	je     80102aaa <startothers+0x66>
80102acc:	eb 9b                	jmp    80102a69 <startothers+0x25>
      ;
  }
}
80102ace:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80102ad1:	c9                   	leave  
80102ad2:	c3                   	ret    

80102ad3 <mpmain>:
{
80102ad3:	55                   	push   %ebp
80102ad4:	89 e5                	mov    %esp,%ebp
80102ad6:	53                   	push   %ebx
80102ad7:	83 ec 04             	sub    $0x4,%esp
  cprintf("cpu%d: starting %d\n", cpuid(), cpuid());
80102ada:	e8 e2 07 00 00       	call   801032c1 <cpuid>
80102adf:	89 c3                	mov    %eax,%ebx
80102ae1:	e8 db 07 00 00       	call   801032c1 <cpuid>
80102ae6:	83 ec 04             	sub    $0x4,%esp
80102ae9:	53                   	push   %ebx
80102aea:	50                   	push   %eax
80102aeb:	68 44 6d 10 80       	push   $0x80106d44
80102af0:	e8 34 db ff ff       	call   80100629 <cprintf>
  idtinit();       // load idt register
80102af5:	e8 27 25 00 00       	call   80105021 <idtinit>
  xchg(&(mycpu()->started), 1); // tell startothers() we're up
80102afa:	e8 62 07 00 00       	call   80103261 <mycpu>
80102aff:	89 c2                	mov    %eax,%edx
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
80102b01:	b8 01 00 00 00       	mov    $0x1,%eax
80102b06:	f0 87 82 a0 00 00 00 	lock xchg %eax,0xa0(%edx)
  scheduler();     // start running processes
80102b0d:	e8 5b 0a 00 00       	call   8010356d <scheduler>

80102b12 <mpenter>:
{
80102b12:	f3 0f 1e fb          	endbr32 
80102b16:	55                   	push   %ebp
80102b17:	89 e5                	mov    %esp,%ebp
80102b19:	83 ec 08             	sub    $0x8,%esp
  switchkvm();
80102b1c:	e8 49 36 00 00       	call   8010616a <switchkvm>
  seginit();
80102b21:	e8 cb 33 00 00       	call   80105ef1 <seginit>
  lapicinit();
80102b26:	e8 f9 f7 ff ff       	call   80102324 <lapicinit>
  mpmain();
80102b2b:	e8 a3 ff ff ff       	call   80102ad3 <mpmain>

80102b30 <main>:
{
80102b30:	f3 0f 1e fb          	endbr32 
80102b34:	8d 4c 24 04          	lea    0x4(%esp),%ecx
80102b38:	83 e4 f0             	and    $0xfffffff0,%esp
80102b3b:	ff 71 fc             	pushl  -0x4(%ecx)
80102b3e:	55                   	push   %ebp
80102b3f:	89 e5                	mov    %esp,%ebp
80102b41:	51                   	push   %ecx
80102b42:	83 ec 0c             	sub    $0xc,%esp
  kinit1(end, P2V(4*1024*1024)); // phys page allocator
80102b45:	68 00 00 40 80       	push   $0x80400000
80102b4a:	68 d4 55 11 80       	push   $0x801155d4
80102b4f:	e8 bf f5 ff ff       	call   80102113 <kinit1>
  kvmalloc();      // kernel page table
80102b54:	e8 fd 3a 00 00       	call   80106656 <kvmalloc>
  mpinit();        // detect other processors
80102b59:	e8 c1 01 00 00       	call   80102d1f <mpinit>
  lapicinit();     // interrupt controller
80102b5e:	e8 c1 f7 ff ff       	call   80102324 <lapicinit>
  seginit();       // segment descriptors
80102b63:	e8 89 33 00 00       	call   80105ef1 <seginit>
  picinit();       // disable pic
80102b68:	e8 8c 02 00 00       	call   80102df9 <picinit>
  ioapicinit();    // another interrupt controller
80102b6d:	e8 1c f4 ff ff       	call   80101f8e <ioapicinit>
  consoleinit();   // console hardware
80102b72:	e8 3d dd ff ff       	call   801008b4 <consoleinit>
  uartinit();      // serial port
80102b77:	e8 5d 27 00 00       	call   801052d9 <uartinit>
  pinit();         // process table
80102b7c:	e8 c2 06 00 00       	call   80103243 <pinit>
  tvinit();        // trap vectors
80102b81:	e8 92 23 00 00       	call   80104f18 <tvinit>
  binit();         // buffer cache
80102b86:	e8 69 d5 ff ff       	call   801000f4 <binit>
  fileinit();      // file table
80102b8b:	e8 b6 e0 ff ff       	call   80100c46 <fileinit>
  ideinit();       // disk 
80102b90:	e8 fb f1 ff ff       	call   80101d90 <ideinit>
  startothers();   // start other processors
80102b95:	e8 aa fe ff ff       	call   80102a44 <startothers>
  kinit2(P2V(4*1024*1024), P2V(PHYSTOP)); // must come after startothers()
80102b9a:	83 c4 08             	add    $0x8,%esp
80102b9d:	68 00 00 00 8e       	push   $0x8e000000
80102ba2:	68 00 00 40 80       	push   $0x80400000
80102ba7:	e8 9d f5 ff ff       	call   80102149 <kinit2>
  userinit();      // first user process
80102bac:	e8 57 07 00 00       	call   80103308 <userinit>
  mpmain();        // finish this processor's setup
80102bb1:	e8 1d ff ff ff       	call   80102ad3 <mpmain>

80102bb6 <sum>:
int ncpu;
uchar ioapicid;

static uchar
sum(uchar *addr, int len)
{
80102bb6:	55                   	push   %ebp
80102bb7:	89 e5                	mov    %esp,%ebp
80102bb9:	56                   	push   %esi
80102bba:	53                   	push   %ebx
80102bbb:	89 c6                	mov    %eax,%esi
  int i, sum;

  sum = 0;
80102bbd:	b8 00 00 00 00       	mov    $0x0,%eax
  for(i=0; i<len; i++)
80102bc2:	b9 00 00 00 00       	mov    $0x0,%ecx
80102bc7:	39 d1                	cmp    %edx,%ecx
80102bc9:	7d 0b                	jge    80102bd6 <sum+0x20>
    sum += addr[i];
80102bcb:	0f b6 1c 0e          	movzbl (%esi,%ecx,1),%ebx
80102bcf:	01 d8                	add    %ebx,%eax
  for(i=0; i<len; i++)
80102bd1:	83 c1 01             	add    $0x1,%ecx
80102bd4:	eb f1                	jmp    80102bc7 <sum+0x11>
  return sum;
}
80102bd6:	5b                   	pop    %ebx
80102bd7:	5e                   	pop    %esi
80102bd8:	5d                   	pop    %ebp
80102bd9:	c3                   	ret    

80102bda <mpsearch1>:

// Look for an MP structure in the len bytes at addr.
static struct mp*
mpsearch1(uint a, int len)
{
80102bda:	55                   	push   %ebp
80102bdb:	89 e5                	mov    %esp,%ebp
80102bdd:	56                   	push   %esi
80102bde:	53                   	push   %ebx
  uchar *e, *p, *addr;

  addr = P2V(a);
80102bdf:	8d b0 00 00 00 80    	lea    -0x80000000(%eax),%esi
80102be5:	89 f3                	mov    %esi,%ebx
  e = addr+len;
80102be7:	01 d6                	add    %edx,%esi
  for(p = addr; p < e; p += sizeof(struct mp))
80102be9:	eb 03                	jmp    80102bee <mpsearch1+0x14>
80102beb:	83 c3 10             	add    $0x10,%ebx
80102bee:	39 f3                	cmp    %esi,%ebx
80102bf0:	73 29                	jae    80102c1b <mpsearch1+0x41>
    if(memcmp(p, "_MP_", 4) == 0 && sum(p, sizeof(struct mp)) == 0)
80102bf2:	83 ec 04             	sub    $0x4,%esp
80102bf5:	6a 04                	push   $0x4
80102bf7:	68 58 6d 10 80       	push   $0x80106d58
80102bfc:	53                   	push   %ebx
80102bfd:	e8 a4 11 00 00       	call   80103da6 <memcmp>
80102c02:	83 c4 10             	add    $0x10,%esp
80102c05:	85 c0                	test   %eax,%eax
80102c07:	75 e2                	jne    80102beb <mpsearch1+0x11>
80102c09:	ba 10 00 00 00       	mov    $0x10,%edx
80102c0e:	89 d8                	mov    %ebx,%eax
80102c10:	e8 a1 ff ff ff       	call   80102bb6 <sum>
80102c15:	84 c0                	test   %al,%al
80102c17:	75 d2                	jne    80102beb <mpsearch1+0x11>
80102c19:	eb 05                	jmp    80102c20 <mpsearch1+0x46>
      return (struct mp*)p;
  return 0;
80102c1b:	bb 00 00 00 00       	mov    $0x0,%ebx
}
80102c20:	89 d8                	mov    %ebx,%eax
80102c22:	8d 65 f8             	lea    -0x8(%ebp),%esp
80102c25:	5b                   	pop    %ebx
80102c26:	5e                   	pop    %esi
80102c27:	5d                   	pop    %ebp
80102c28:	c3                   	ret    

80102c29 <mpsearch>:
// 1) in the first KB of the EBDA;
// 2) in the last KB of system base memory;
// 3) in the BIOS ROM between 0xE0000 and 0xFFFFF.
static struct mp*
mpsearch(void)
{
80102c29:	55                   	push   %ebp
80102c2a:	89 e5                	mov    %esp,%ebp
80102c2c:	83 ec 08             	sub    $0x8,%esp
  uchar *bda;
  uint p;
  struct mp *mp;

  bda = (uchar *) P2V(0x400);
  if((p = ((bda[0x0F]<<8)| bda[0x0E]) << 4)){
80102c2f:	0f b6 05 0f 04 00 80 	movzbl 0x8000040f,%eax
80102c36:	c1 e0 08             	shl    $0x8,%eax
80102c39:	0f b6 15 0e 04 00 80 	movzbl 0x8000040e,%edx
80102c40:	09 d0                	or     %edx,%eax
80102c42:	c1 e0 04             	shl    $0x4,%eax
80102c45:	74 1f                	je     80102c66 <mpsearch+0x3d>
    if((mp = mpsearch1(p, 1024)))
80102c47:	ba 00 04 00 00       	mov    $0x400,%edx
80102c4c:	e8 89 ff ff ff       	call   80102bda <mpsearch1>
80102c51:	85 c0                	test   %eax,%eax
80102c53:	75 0f                	jne    80102c64 <mpsearch+0x3b>
  } else {
    p = ((bda[0x14]<<8)|bda[0x13])*1024;
    if((mp = mpsearch1(p-1024, 1024)))
      return mp;
  }
  return mpsearch1(0xF0000, 0x10000);
80102c55:	ba 00 00 01 00       	mov    $0x10000,%edx
80102c5a:	b8 00 00 0f 00       	mov    $0xf0000,%eax
80102c5f:	e8 76 ff ff ff       	call   80102bda <mpsearch1>
}
80102c64:	c9                   	leave  
80102c65:	c3                   	ret    
    p = ((bda[0x14]<<8)|bda[0x13])*1024;
80102c66:	0f b6 05 14 04 00 80 	movzbl 0x80000414,%eax
80102c6d:	c1 e0 08             	shl    $0x8,%eax
80102c70:	0f b6 15 13 04 00 80 	movzbl 0x80000413,%edx
80102c77:	09 d0                	or     %edx,%eax
80102c79:	c1 e0 0a             	shl    $0xa,%eax
    if((mp = mpsearch1(p-1024, 1024)))
80102c7c:	2d 00 04 00 00       	sub    $0x400,%eax
80102c81:	ba 00 04 00 00       	mov    $0x400,%edx
80102c86:	e8 4f ff ff ff       	call   80102bda <mpsearch1>
80102c8b:	85 c0                	test   %eax,%eax
80102c8d:	75 d5                	jne    80102c64 <mpsearch+0x3b>
80102c8f:	eb c4                	jmp    80102c55 <mpsearch+0x2c>

80102c91 <mpconfig>:
// Check for correct signature, calculate the checksum and,
// if correct, check the version.
// To do: check extended table checksum.
static struct mpconf*
mpconfig(struct mp **pmp)
{
80102c91:	55                   	push   %ebp
80102c92:	89 e5                	mov    %esp,%ebp
80102c94:	57                   	push   %edi
80102c95:	56                   	push   %esi
80102c96:	53                   	push   %ebx
80102c97:	83 ec 1c             	sub    $0x1c,%esp
80102c9a:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  struct mpconf *conf;
  struct mp *mp;

  if((mp = mpsearch()) == 0 || mp->physaddr == 0)
80102c9d:	e8 87 ff ff ff       	call   80102c29 <mpsearch>
80102ca2:	89 c3                	mov    %eax,%ebx
80102ca4:	85 c0                	test   %eax,%eax
80102ca6:	74 5a                	je     80102d02 <mpconfig+0x71>
80102ca8:	8b 70 04             	mov    0x4(%eax),%esi
80102cab:	85 f6                	test   %esi,%esi
80102cad:	74 57                	je     80102d06 <mpconfig+0x75>
    return 0;
  conf = (struct mpconf*) P2V((uint) mp->physaddr);
80102caf:	8d be 00 00 00 80    	lea    -0x80000000(%esi),%edi
  if(memcmp(conf, "PCMP", 4) != 0)
80102cb5:	83 ec 04             	sub    $0x4,%esp
80102cb8:	6a 04                	push   $0x4
80102cba:	68 5d 6d 10 80       	push   $0x80106d5d
80102cbf:	57                   	push   %edi
80102cc0:	e8 e1 10 00 00       	call   80103da6 <memcmp>
80102cc5:	83 c4 10             	add    $0x10,%esp
80102cc8:	85 c0                	test   %eax,%eax
80102cca:	75 3e                	jne    80102d0a <mpconfig+0x79>
    return 0;
  if(conf->version != 1 && conf->version != 4)
80102ccc:	0f b6 86 06 00 00 80 	movzbl -0x7ffffffa(%esi),%eax
80102cd3:	3c 01                	cmp    $0x1,%al
80102cd5:	0f 95 c2             	setne  %dl
80102cd8:	3c 04                	cmp    $0x4,%al
80102cda:	0f 95 c0             	setne  %al
80102cdd:	84 c2                	test   %al,%dl
80102cdf:	75 30                	jne    80102d11 <mpconfig+0x80>
    return 0;
  if(sum((uchar*)conf, conf->length) != 0)
80102ce1:	0f b7 96 04 00 00 80 	movzwl -0x7ffffffc(%esi),%edx
80102ce8:	89 f8                	mov    %edi,%eax
80102cea:	e8 c7 fe ff ff       	call   80102bb6 <sum>
80102cef:	84 c0                	test   %al,%al
80102cf1:	75 25                	jne    80102d18 <mpconfig+0x87>
    return 0;
  *pmp = mp;
80102cf3:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80102cf6:	89 18                	mov    %ebx,(%eax)
  return conf;
}
80102cf8:	89 f8                	mov    %edi,%eax
80102cfa:	8d 65 f4             	lea    -0xc(%ebp),%esp
80102cfd:	5b                   	pop    %ebx
80102cfe:	5e                   	pop    %esi
80102cff:	5f                   	pop    %edi
80102d00:	5d                   	pop    %ebp
80102d01:	c3                   	ret    
    return 0;
80102d02:	89 c7                	mov    %eax,%edi
80102d04:	eb f2                	jmp    80102cf8 <mpconfig+0x67>
80102d06:	89 f7                	mov    %esi,%edi
80102d08:	eb ee                	jmp    80102cf8 <mpconfig+0x67>
    return 0;
80102d0a:	bf 00 00 00 00       	mov    $0x0,%edi
80102d0f:	eb e7                	jmp    80102cf8 <mpconfig+0x67>
    return 0;
80102d11:	bf 00 00 00 00       	mov    $0x0,%edi
80102d16:	eb e0                	jmp    80102cf8 <mpconfig+0x67>
    return 0;
80102d18:	bf 00 00 00 00       	mov    $0x0,%edi
80102d1d:	eb d9                	jmp    80102cf8 <mpconfig+0x67>

80102d1f <mpinit>:

void
mpinit(void)
{
80102d1f:	f3 0f 1e fb          	endbr32 
80102d23:	55                   	push   %ebp
80102d24:	89 e5                	mov    %esp,%ebp
80102d26:	57                   	push   %edi
80102d27:	56                   	push   %esi
80102d28:	53                   	push   %ebx
80102d29:	83 ec 1c             	sub    $0x1c,%esp
  struct mp *mp;
  struct mpconf *conf;
  struct mpproc *proc;
  struct mpioapic *ioapic;

  if((conf = mpconfig(&mp)) == 0)
80102d2c:	8d 45 e4             	lea    -0x1c(%ebp),%eax
80102d2f:	e8 5d ff ff ff       	call   80102c91 <mpconfig>
80102d34:	85 c0                	test   %eax,%eax
80102d36:	74 19                	je     80102d51 <mpinit+0x32>
    panic("Expect to run on an SMP");
  ismp = 1;
  lapic = (uint*)conf->lapicaddr;
80102d38:	8b 50 24             	mov    0x24(%eax),%edx
80102d3b:	89 15 fc 2e 11 80    	mov    %edx,0x80112efc
  for(p=(uchar*)(conf+1), e=(uchar*)conf+conf->length; p<e; ){
80102d41:	8d 50 2c             	lea    0x2c(%eax),%edx
80102d44:	0f b7 48 04          	movzwl 0x4(%eax),%ecx
80102d48:	01 c1                	add    %eax,%ecx
  ismp = 1;
80102d4a:	bb 01 00 00 00       	mov    $0x1,%ebx
  for(p=(uchar*)(conf+1), e=(uchar*)conf+conf->length; p<e; ){
80102d4f:	eb 20                	jmp    80102d71 <mpinit+0x52>
    panic("Expect to run on an SMP");
80102d51:	83 ec 0c             	sub    $0xc,%esp
80102d54:	68 62 6d 10 80       	push   $0x80106d62
80102d59:	e8 fe d5 ff ff       	call   8010035c <panic>
    switch(*p){
80102d5e:	bb 00 00 00 00       	mov    $0x0,%ebx
80102d63:	eb 0c                	jmp    80102d71 <mpinit+0x52>
80102d65:	83 e8 03             	sub    $0x3,%eax
80102d68:	3c 01                	cmp    $0x1,%al
80102d6a:	76 1a                	jbe    80102d86 <mpinit+0x67>
80102d6c:	bb 00 00 00 00       	mov    $0x0,%ebx
  for(p=(uchar*)(conf+1), e=(uchar*)conf+conf->length; p<e; ){
80102d71:	39 ca                	cmp    %ecx,%edx
80102d73:	73 4d                	jae    80102dc2 <mpinit+0xa3>
    switch(*p){
80102d75:	0f b6 02             	movzbl (%edx),%eax
80102d78:	3c 02                	cmp    $0x2,%al
80102d7a:	74 38                	je     80102db4 <mpinit+0x95>
80102d7c:	77 e7                	ja     80102d65 <mpinit+0x46>
80102d7e:	84 c0                	test   %al,%al
80102d80:	74 09                	je     80102d8b <mpinit+0x6c>
80102d82:	3c 01                	cmp    $0x1,%al
80102d84:	75 d8                	jne    80102d5e <mpinit+0x3f>
      p += sizeof(struct mpioapic);
      continue;
    case MPBUS:
    case MPIOINTR:
    case MPLINTR:
      p += 8;
80102d86:	83 c2 08             	add    $0x8,%edx
      continue;
80102d89:	eb e6                	jmp    80102d71 <mpinit+0x52>
      if(ncpu < NCPU) {
80102d8b:	8b 35 80 35 11 80    	mov    0x80113580,%esi
80102d91:	83 fe 07             	cmp    $0x7,%esi
80102d94:	7f 19                	jg     80102daf <mpinit+0x90>
        cpus[ncpu].apicid = proc->apicid;  // apicid may differ from ncpu
80102d96:	0f b6 42 01          	movzbl 0x1(%edx),%eax
80102d9a:	69 fe b0 00 00 00    	imul   $0xb0,%esi,%edi
80102da0:	88 87 00 30 11 80    	mov    %al,-0x7feed000(%edi)
        ncpu++;
80102da6:	83 c6 01             	add    $0x1,%esi
80102da9:	89 35 80 35 11 80    	mov    %esi,0x80113580
      p += sizeof(struct mpproc);
80102daf:	83 c2 14             	add    $0x14,%edx
      continue;
80102db2:	eb bd                	jmp    80102d71 <mpinit+0x52>
      ioapicid = ioapic->apicno;
80102db4:	0f b6 42 01          	movzbl 0x1(%edx),%eax
80102db8:	a2 e0 2f 11 80       	mov    %al,0x80112fe0
      p += sizeof(struct mpioapic);
80102dbd:	83 c2 08             	add    $0x8,%edx
      continue;
80102dc0:	eb af                	jmp    80102d71 <mpinit+0x52>
    default:
      ismp = 0;
      break;
    }
  }
  if(!ismp)
80102dc2:	85 db                	test   %ebx,%ebx
80102dc4:	74 26                	je     80102dec <mpinit+0xcd>
    panic("Didn't find a suitable machine");

  if(mp->imcrp){
80102dc6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80102dc9:	80 78 0c 00          	cmpb   $0x0,0xc(%eax)
80102dcd:	74 15                	je     80102de4 <mpinit+0xc5>
  asm volatile("out %0,%1" : : "a" (data), "d" (port));
80102dcf:	b8 70 00 00 00       	mov    $0x70,%eax
80102dd4:	ba 22 00 00 00       	mov    $0x22,%edx
80102dd9:	ee                   	out    %al,(%dx)
  asm volatile("in %1,%0" : "=a" (data) : "d" (port));
80102dda:	ba 23 00 00 00       	mov    $0x23,%edx
80102ddf:	ec                   	in     (%dx),%al
    // Bochs doesn't support IMCR, so this doesn't run on Bochs.
    // But it would on real hardware.
    outb(0x22, 0x70);   // Select IMCR
    outb(0x23, inb(0x23) | 1);  // Mask external interrupts.
80102de0:	83 c8 01             	or     $0x1,%eax
  asm volatile("out %0,%1" : : "a" (data), "d" (port));
80102de3:	ee                   	out    %al,(%dx)
  }
}
80102de4:	8d 65 f4             	lea    -0xc(%ebp),%esp
80102de7:	5b                   	pop    %ebx
80102de8:	5e                   	pop    %esi
80102de9:	5f                   	pop    %edi
80102dea:	5d                   	pop    %ebp
80102deb:	c3                   	ret    
    panic("Didn't find a suitable machine");
80102dec:	83 ec 0c             	sub    $0xc,%esp
80102def:	68 7c 6d 10 80       	push   $0x80106d7c
80102df4:	e8 63 d5 ff ff       	call   8010035c <panic>

80102df9 <picinit>:
#define IO_PIC2         0xA0    // Slave (IRQs 8-15)

// Don't use the 8259A interrupt controllers.  Xv6 assumes SMP hardware.
void
picinit(void)
{
80102df9:	f3 0f 1e fb          	endbr32 
80102dfd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80102e02:	ba 21 00 00 00       	mov    $0x21,%edx
80102e07:	ee                   	out    %al,(%dx)
80102e08:	ba a1 00 00 00       	mov    $0xa1,%edx
80102e0d:	ee                   	out    %al,(%dx)
  // mask all interrupts
  outb(IO_PIC1+1, 0xFF);
  outb(IO_PIC2+1, 0xFF);
}
80102e0e:	c3                   	ret    

80102e0f <pipealloc>:
  int writeopen;  // write fd is still open
};

int
pipealloc(struct file **f0, struct file **f1)
{
80102e0f:	f3 0f 1e fb          	endbr32 
80102e13:	55                   	push   %ebp
80102e14:	89 e5                	mov    %esp,%ebp
80102e16:	57                   	push   %edi
80102e17:	56                   	push   %esi
80102e18:	53                   	push   %ebx
80102e19:	83 ec 0c             	sub    $0xc,%esp
80102e1c:	8b 5d 08             	mov    0x8(%ebp),%ebx
80102e1f:	8b 75 0c             	mov    0xc(%ebp),%esi
  struct pipe *p;

  p = 0;
  *f0 = *f1 = 0;
80102e22:	c7 06 00 00 00 00    	movl   $0x0,(%esi)
80102e28:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
  if((*f0 = filealloc()) == 0 || (*f1 = filealloc()) == 0)
80102e2e:	e8 31 de ff ff       	call   80100c64 <filealloc>
80102e33:	89 03                	mov    %eax,(%ebx)
80102e35:	85 c0                	test   %eax,%eax
80102e37:	0f 84 88 00 00 00    	je     80102ec5 <pipealloc+0xb6>
80102e3d:	e8 22 de ff ff       	call   80100c64 <filealloc>
80102e42:	89 06                	mov    %eax,(%esi)
80102e44:	85 c0                	test   %eax,%eax
80102e46:	74 7d                	je     80102ec5 <pipealloc+0xb6>
    goto bad;
  if((p = (struct pipe*)kalloc()) == 0)
80102e48:	e8 20 f3 ff ff       	call   8010216d <kalloc>
80102e4d:	89 c7                	mov    %eax,%edi
80102e4f:	85 c0                	test   %eax,%eax
80102e51:	74 72                	je     80102ec5 <pipealloc+0xb6>
    goto bad;
  p->readopen = 1;
80102e53:	c7 80 3c 02 00 00 01 	movl   $0x1,0x23c(%eax)
80102e5a:	00 00 00 
  p->writeopen = 1;
80102e5d:	c7 80 40 02 00 00 01 	movl   $0x1,0x240(%eax)
80102e64:	00 00 00 
  p->nwrite = 0;
80102e67:	c7 80 38 02 00 00 00 	movl   $0x0,0x238(%eax)
80102e6e:	00 00 00 
  p->nread = 0;
80102e71:	c7 80 34 02 00 00 00 	movl   $0x0,0x234(%eax)
80102e78:	00 00 00 
  initlock(&p->lock, "pipe");
80102e7b:	83 ec 08             	sub    $0x8,%esp
80102e7e:	68 9b 6d 10 80       	push   $0x80106d9b
80102e83:	50                   	push   %eax
80102e84:	e8 f2 0c 00 00       	call   80103b7b <initlock>
  (*f0)->type = FD_PIPE;
80102e89:	8b 03                	mov    (%ebx),%eax
80102e8b:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
  (*f0)->readable = 1;
80102e91:	8b 03                	mov    (%ebx),%eax
80102e93:	c6 40 08 01          	movb   $0x1,0x8(%eax)
  (*f0)->writable = 0;
80102e97:	8b 03                	mov    (%ebx),%eax
80102e99:	c6 40 09 00          	movb   $0x0,0x9(%eax)
  (*f0)->pipe = p;
80102e9d:	8b 03                	mov    (%ebx),%eax
80102e9f:	89 78 0c             	mov    %edi,0xc(%eax)
  (*f1)->type = FD_PIPE;
80102ea2:	8b 06                	mov    (%esi),%eax
80102ea4:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
  (*f1)->readable = 0;
80102eaa:	8b 06                	mov    (%esi),%eax
80102eac:	c6 40 08 00          	movb   $0x0,0x8(%eax)
  (*f1)->writable = 1;
80102eb0:	8b 06                	mov    (%esi),%eax
80102eb2:	c6 40 09 01          	movb   $0x1,0x9(%eax)
  (*f1)->pipe = p;
80102eb6:	8b 06                	mov    (%esi),%eax
80102eb8:	89 78 0c             	mov    %edi,0xc(%eax)
  return 0;
80102ebb:	83 c4 10             	add    $0x10,%esp
80102ebe:	b8 00 00 00 00       	mov    $0x0,%eax
80102ec3:	eb 29                	jmp    80102eee <pipealloc+0xdf>

//PAGEBREAK: 20
 bad:
  if(p)
    kfree((char*)p);
  if(*f0)
80102ec5:	8b 03                	mov    (%ebx),%eax
80102ec7:	85 c0                	test   %eax,%eax
80102ec9:	74 0c                	je     80102ed7 <pipealloc+0xc8>
    fileclose(*f0);
80102ecb:	83 ec 0c             	sub    $0xc,%esp
80102ece:	50                   	push   %eax
80102ecf:	e8 3e de ff ff       	call   80100d12 <fileclose>
80102ed4:	83 c4 10             	add    $0x10,%esp
  if(*f1)
80102ed7:	8b 06                	mov    (%esi),%eax
80102ed9:	85 c0                	test   %eax,%eax
80102edb:	74 19                	je     80102ef6 <pipealloc+0xe7>
    fileclose(*f1);
80102edd:	83 ec 0c             	sub    $0xc,%esp
80102ee0:	50                   	push   %eax
80102ee1:	e8 2c de ff ff       	call   80100d12 <fileclose>
80102ee6:	83 c4 10             	add    $0x10,%esp
  return -1;
80102ee9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
80102eee:	8d 65 f4             	lea    -0xc(%ebp),%esp
80102ef1:	5b                   	pop    %ebx
80102ef2:	5e                   	pop    %esi
80102ef3:	5f                   	pop    %edi
80102ef4:	5d                   	pop    %ebp
80102ef5:	c3                   	ret    
  return -1;
80102ef6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80102efb:	eb f1                	jmp    80102eee <pipealloc+0xdf>

80102efd <pipeclose>:

void
pipeclose(struct pipe *p, int writable)
{
80102efd:	f3 0f 1e fb          	endbr32 
80102f01:	55                   	push   %ebp
80102f02:	89 e5                	mov    %esp,%ebp
80102f04:	53                   	push   %ebx
80102f05:	83 ec 10             	sub    $0x10,%esp
80102f08:	8b 5d 08             	mov    0x8(%ebp),%ebx
  acquire(&p->lock);
80102f0b:	53                   	push   %ebx
80102f0c:	e8 a6 0d 00 00       	call   80103cb7 <acquire>
  if(writable){
80102f11:	83 c4 10             	add    $0x10,%esp
80102f14:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
80102f18:	74 3f                	je     80102f59 <pipeclose+0x5c>
    p->writeopen = 0;
80102f1a:	c7 83 40 02 00 00 00 	movl   $0x0,0x240(%ebx)
80102f21:	00 00 00 
    wakeup(&p->nread);
80102f24:	8d 83 34 02 00 00    	lea    0x234(%ebx),%eax
80102f2a:	83 ec 0c             	sub    $0xc,%esp
80102f2d:	50                   	push   %eax
80102f2e:	e8 e2 09 00 00       	call   80103915 <wakeup>
80102f33:	83 c4 10             	add    $0x10,%esp
  } else {
    p->readopen = 0;
    wakeup(&p->nwrite);
  }
  if(p->readopen == 0 && p->writeopen == 0){
80102f36:	83 bb 3c 02 00 00 00 	cmpl   $0x0,0x23c(%ebx)
80102f3d:	75 09                	jne    80102f48 <pipeclose+0x4b>
80102f3f:	83 bb 40 02 00 00 00 	cmpl   $0x0,0x240(%ebx)
80102f46:	74 2f                	je     80102f77 <pipeclose+0x7a>
    release(&p->lock);
    kfree((char*)p);
  } else
    release(&p->lock);
80102f48:	83 ec 0c             	sub    $0xc,%esp
80102f4b:	53                   	push   %ebx
80102f4c:	e8 cb 0d 00 00       	call   80103d1c <release>
80102f51:	83 c4 10             	add    $0x10,%esp
}
80102f54:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80102f57:	c9                   	leave  
80102f58:	c3                   	ret    
    p->readopen = 0;
80102f59:	c7 83 3c 02 00 00 00 	movl   $0x0,0x23c(%ebx)
80102f60:	00 00 00 
    wakeup(&p->nwrite);
80102f63:	8d 83 38 02 00 00    	lea    0x238(%ebx),%eax
80102f69:	83 ec 0c             	sub    $0xc,%esp
80102f6c:	50                   	push   %eax
80102f6d:	e8 a3 09 00 00       	call   80103915 <wakeup>
80102f72:	83 c4 10             	add    $0x10,%esp
80102f75:	eb bf                	jmp    80102f36 <pipeclose+0x39>
    release(&p->lock);
80102f77:	83 ec 0c             	sub    $0xc,%esp
80102f7a:	53                   	push   %ebx
80102f7b:	e8 9c 0d 00 00       	call   80103d1c <release>
    kfree((char*)p);
80102f80:	89 1c 24             	mov    %ebx,(%esp)
80102f83:	e8 be f0 ff ff       	call   80102046 <kfree>
80102f88:	83 c4 10             	add    $0x10,%esp
80102f8b:	eb c7                	jmp    80102f54 <pipeclose+0x57>

80102f8d <pipewrite>:

//PAGEBREAK: 40
int
pipewrite(struct pipe *p, char *addr, int n)
{
80102f8d:	f3 0f 1e fb          	endbr32 
80102f91:	55                   	push   %ebp
80102f92:	89 e5                	mov    %esp,%ebp
80102f94:	57                   	push   %edi
80102f95:	56                   	push   %esi
80102f96:	53                   	push   %ebx
80102f97:	83 ec 18             	sub    $0x18,%esp
80102f9a:	8b 5d 08             	mov    0x8(%ebp),%ebx
  int i;

  acquire(&p->lock);
80102f9d:	89 de                	mov    %ebx,%esi
80102f9f:	53                   	push   %ebx
80102fa0:	e8 12 0d 00 00       	call   80103cb7 <acquire>
  for(i = 0; i < n; i++){
80102fa5:	83 c4 10             	add    $0x10,%esp
80102fa8:	bf 00 00 00 00       	mov    $0x0,%edi
80102fad:	3b 7d 10             	cmp    0x10(%ebp),%edi
80102fb0:	7c 41                	jl     80102ff3 <pipewrite+0x66>
      wakeup(&p->nread);
      sleep(&p->nwrite, &p->lock);  //DOC: pipewrite-sleep
    }
    p->data[p->nwrite++ % PIPESIZE] = addr[i];
  }
  wakeup(&p->nread);  //DOC: pipewrite-wakeup1
80102fb2:	8d 83 34 02 00 00    	lea    0x234(%ebx),%eax
80102fb8:	83 ec 0c             	sub    $0xc,%esp
80102fbb:	50                   	push   %eax
80102fbc:	e8 54 09 00 00       	call   80103915 <wakeup>
  release(&p->lock);
80102fc1:	89 1c 24             	mov    %ebx,(%esp)
80102fc4:	e8 53 0d 00 00       	call   80103d1c <release>
  return n;
80102fc9:	83 c4 10             	add    $0x10,%esp
80102fcc:	8b 45 10             	mov    0x10(%ebp),%eax
80102fcf:	eb 5c                	jmp    8010302d <pipewrite+0xa0>
      wakeup(&p->nread);
80102fd1:	8d 83 34 02 00 00    	lea    0x234(%ebx),%eax
80102fd7:	83 ec 0c             	sub    $0xc,%esp
80102fda:	50                   	push   %eax
80102fdb:	e8 35 09 00 00       	call   80103915 <wakeup>
      sleep(&p->nwrite, &p->lock);  //DOC: pipewrite-sleep
80102fe0:	8d 83 38 02 00 00    	lea    0x238(%ebx),%eax
80102fe6:	83 c4 08             	add    $0x8,%esp
80102fe9:	56                   	push   %esi
80102fea:	50                   	push   %eax
80102feb:	e8 b8 07 00 00       	call   801037a8 <sleep>
80102ff0:	83 c4 10             	add    $0x10,%esp
    while(p->nwrite == p->nread + PIPESIZE){  //DOC: pipewrite-full
80102ff3:	8b 93 38 02 00 00    	mov    0x238(%ebx),%edx
80102ff9:	8b 83 34 02 00 00    	mov    0x234(%ebx),%eax
80102fff:	05 00 02 00 00       	add    $0x200,%eax
80103004:	39 c2                	cmp    %eax,%edx
80103006:	75 2d                	jne    80103035 <pipewrite+0xa8>
      if(p->readopen == 0 || myproc()->killed){
80103008:	83 bb 3c 02 00 00 00 	cmpl   $0x0,0x23c(%ebx)
8010300f:	74 0b                	je     8010301c <pipewrite+0x8f>
80103011:	e8 ca 02 00 00       	call   801032e0 <myproc>
80103016:	83 78 24 00          	cmpl   $0x0,0x24(%eax)
8010301a:	74 b5                	je     80102fd1 <pipewrite+0x44>
        release(&p->lock);
8010301c:	83 ec 0c             	sub    $0xc,%esp
8010301f:	53                   	push   %ebx
80103020:	e8 f7 0c 00 00       	call   80103d1c <release>
        return -1;
80103025:	83 c4 10             	add    $0x10,%esp
80103028:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
8010302d:	8d 65 f4             	lea    -0xc(%ebp),%esp
80103030:	5b                   	pop    %ebx
80103031:	5e                   	pop    %esi
80103032:	5f                   	pop    %edi
80103033:	5d                   	pop    %ebp
80103034:	c3                   	ret    
    p->data[p->nwrite++ % PIPESIZE] = addr[i];
80103035:	8d 42 01             	lea    0x1(%edx),%eax
80103038:	89 83 38 02 00 00    	mov    %eax,0x238(%ebx)
8010303e:	81 e2 ff 01 00 00    	and    $0x1ff,%edx
80103044:	8b 45 0c             	mov    0xc(%ebp),%eax
80103047:	0f b6 04 38          	movzbl (%eax,%edi,1),%eax
8010304b:	88 44 13 34          	mov    %al,0x34(%ebx,%edx,1)
  for(i = 0; i < n; i++){
8010304f:	83 c7 01             	add    $0x1,%edi
80103052:	e9 56 ff ff ff       	jmp    80102fad <pipewrite+0x20>

80103057 <piperead>:

int
piperead(struct pipe *p, char *addr, int n)
{
80103057:	f3 0f 1e fb          	endbr32 
8010305b:	55                   	push   %ebp
8010305c:	89 e5                	mov    %esp,%ebp
8010305e:	57                   	push   %edi
8010305f:	56                   	push   %esi
80103060:	53                   	push   %ebx
80103061:	83 ec 18             	sub    $0x18,%esp
80103064:	8b 5d 08             	mov    0x8(%ebp),%ebx
  int i;

  acquire(&p->lock);
80103067:	89 df                	mov    %ebx,%edi
80103069:	53                   	push   %ebx
8010306a:	e8 48 0c 00 00       	call   80103cb7 <acquire>
  while(p->nread == p->nwrite && p->writeopen){  //DOC: pipe-empty
8010306f:	83 c4 10             	add    $0x10,%esp
80103072:	eb 13                	jmp    80103087 <piperead+0x30>
    if(myproc()->killed){
      release(&p->lock);
      return -1;
    }
    sleep(&p->nread, &p->lock); //DOC: piperead-sleep
80103074:	8d 83 34 02 00 00    	lea    0x234(%ebx),%eax
8010307a:	83 ec 08             	sub    $0x8,%esp
8010307d:	57                   	push   %edi
8010307e:	50                   	push   %eax
8010307f:	e8 24 07 00 00       	call   801037a8 <sleep>
80103084:	83 c4 10             	add    $0x10,%esp
  while(p->nread == p->nwrite && p->writeopen){  //DOC: pipe-empty
80103087:	8b 83 38 02 00 00    	mov    0x238(%ebx),%eax
8010308d:	39 83 34 02 00 00    	cmp    %eax,0x234(%ebx)
80103093:	75 28                	jne    801030bd <piperead+0x66>
80103095:	8b b3 40 02 00 00    	mov    0x240(%ebx),%esi
8010309b:	85 f6                	test   %esi,%esi
8010309d:	74 23                	je     801030c2 <piperead+0x6b>
    if(myproc()->killed){
8010309f:	e8 3c 02 00 00       	call   801032e0 <myproc>
801030a4:	83 78 24 00          	cmpl   $0x0,0x24(%eax)
801030a8:	74 ca                	je     80103074 <piperead+0x1d>
      release(&p->lock);
801030aa:	83 ec 0c             	sub    $0xc,%esp
801030ad:	53                   	push   %ebx
801030ae:	e8 69 0c 00 00       	call   80103d1c <release>
      return -1;
801030b3:	83 c4 10             	add    $0x10,%esp
801030b6:	be ff ff ff ff       	mov    $0xffffffff,%esi
801030bb:	eb 50                	jmp    8010310d <piperead+0xb6>
801030bd:	be 00 00 00 00       	mov    $0x0,%esi
  }
  for(i = 0; i < n; i++){  //DOC: piperead-copy
801030c2:	3b 75 10             	cmp    0x10(%ebp),%esi
801030c5:	7d 2c                	jge    801030f3 <piperead+0x9c>
    if(p->nread == p->nwrite)
801030c7:	8b 83 34 02 00 00    	mov    0x234(%ebx),%eax
801030cd:	3b 83 38 02 00 00    	cmp    0x238(%ebx),%eax
801030d3:	74 1e                	je     801030f3 <piperead+0x9c>
      break;
    addr[i] = p->data[p->nread++ % PIPESIZE];
801030d5:	8d 50 01             	lea    0x1(%eax),%edx
801030d8:	89 93 34 02 00 00    	mov    %edx,0x234(%ebx)
801030de:	25 ff 01 00 00       	and    $0x1ff,%eax
801030e3:	0f b6 44 03 34       	movzbl 0x34(%ebx,%eax,1),%eax
801030e8:	8b 4d 0c             	mov    0xc(%ebp),%ecx
801030eb:	88 04 31             	mov    %al,(%ecx,%esi,1)
  for(i = 0; i < n; i++){  //DOC: piperead-copy
801030ee:	83 c6 01             	add    $0x1,%esi
801030f1:	eb cf                	jmp    801030c2 <piperead+0x6b>
  }
  wakeup(&p->nwrite);  //DOC: piperead-wakeup
801030f3:	8d 83 38 02 00 00    	lea    0x238(%ebx),%eax
801030f9:	83 ec 0c             	sub    $0xc,%esp
801030fc:	50                   	push   %eax
801030fd:	e8 13 08 00 00       	call   80103915 <wakeup>
  release(&p->lock);
80103102:	89 1c 24             	mov    %ebx,(%esp)
80103105:	e8 12 0c 00 00       	call   80103d1c <release>
  return i;
8010310a:	83 c4 10             	add    $0x10,%esp
}
8010310d:	89 f0                	mov    %esi,%eax
8010310f:	8d 65 f4             	lea    -0xc(%ebp),%esp
80103112:	5b                   	pop    %ebx
80103113:	5e                   	pop    %esi
80103114:	5f                   	pop    %edi
80103115:	5d                   	pop    %ebp
80103116:	c3                   	ret    

80103117 <wakeup1>:
static void
wakeup1(void *chan)
{
  struct proc *p;

  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++)
80103117:	ba d4 35 11 80       	mov    $0x801135d4,%edx
8010311c:	eb 0a                	jmp    80103128 <wakeup1+0x11>
    if(p->state == SLEEPING && p->chan == chan)
      p->state = RUNNABLE;
8010311e:	c7 42 0c 03 00 00 00 	movl   $0x3,0xc(%edx)
  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++)
80103125:	83 ea 80             	sub    $0xffffff80,%edx
80103128:	81 fa d4 55 11 80    	cmp    $0x801155d4,%edx
8010312e:	73 0d                	jae    8010313d <wakeup1+0x26>
    if(p->state == SLEEPING && p->chan == chan)
80103130:	83 7a 0c 02          	cmpl   $0x2,0xc(%edx)
80103134:	75 ef                	jne    80103125 <wakeup1+0xe>
80103136:	39 42 20             	cmp    %eax,0x20(%edx)
80103139:	75 ea                	jne    80103125 <wakeup1+0xe>
8010313b:	eb e1                	jmp    8010311e <wakeup1+0x7>
}
8010313d:	c3                   	ret    

8010313e <allocproc>:
{
8010313e:	55                   	push   %ebp
8010313f:	89 e5                	mov    %esp,%ebp
80103141:	53                   	push   %ebx
80103142:	83 ec 10             	sub    $0x10,%esp
  acquire(&ptable.lock);
80103145:	68 a0 35 11 80       	push   $0x801135a0
8010314a:	e8 68 0b 00 00       	call   80103cb7 <acquire>
  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++)
8010314f:	83 c4 10             	add    $0x10,%esp
80103152:	bb d4 35 11 80       	mov    $0x801135d4,%ebx
80103157:	81 fb d4 55 11 80    	cmp    $0x801155d4,%ebx
8010315d:	73 7b                	jae    801031da <allocproc+0x9c>
    if(p->state == UNUSED)
8010315f:	83 7b 0c 00          	cmpl   $0x0,0xc(%ebx)
80103163:	74 05                	je     8010316a <allocproc+0x2c>
  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++)
80103165:	83 eb 80             	sub    $0xffffff80,%ebx
80103168:	eb ed                	jmp    80103157 <allocproc+0x19>
  p->state = EMBRYO;
8010316a:	c7 43 0c 01 00 00 00 	movl   $0x1,0xc(%ebx)
  p->pid = nextpid++;
80103171:	a1 04 a0 10 80       	mov    0x8010a004,%eax
80103176:	8d 50 01             	lea    0x1(%eax),%edx
80103179:	89 15 04 a0 10 80    	mov    %edx,0x8010a004
8010317f:	89 43 10             	mov    %eax,0x10(%ebx)
  release(&ptable.lock);
80103182:	83 ec 0c             	sub    $0xc,%esp
80103185:	68 a0 35 11 80       	push   $0x801135a0
8010318a:	e8 8d 0b 00 00       	call   80103d1c <release>
  if((p->kstack = kalloc()) == 0){
8010318f:	e8 d9 ef ff ff       	call   8010216d <kalloc>
80103194:	89 43 08             	mov    %eax,0x8(%ebx)
80103197:	83 c4 10             	add    $0x10,%esp
8010319a:	85 c0                	test   %eax,%eax
8010319c:	74 53                	je     801031f1 <allocproc+0xb3>
  sp -= sizeof *p->tf;
8010319e:	8d 90 b4 0f 00 00    	lea    0xfb4(%eax),%edx
  p->tf = (struct trapframe*)sp;
801031a4:	89 53 18             	mov    %edx,0x18(%ebx)
  *(uint*)sp = (uint)trapret;
801031a7:	c7 80 b0 0f 00 00 0d 	movl   $0x80104f0d,0xfb0(%eax)
801031ae:	4f 10 80 
  sp -= sizeof *p->context;
801031b1:	05 9c 0f 00 00       	add    $0xf9c,%eax
  p->context = (struct context*)sp;
801031b6:	89 43 1c             	mov    %eax,0x1c(%ebx)
  memset(p->context, 0, sizeof *p->context);
801031b9:	83 ec 04             	sub    $0x4,%esp
801031bc:	6a 14                	push   $0x14
801031be:	6a 00                	push   $0x0
801031c0:	50                   	push   %eax
801031c1:	e8 9d 0b 00 00       	call   80103d63 <memset>
  p->context->eip = (uint)forkret;
801031c6:	8b 43 1c             	mov    0x1c(%ebx),%eax
801031c9:	c7 40 10 fc 31 10 80 	movl   $0x801031fc,0x10(%eax)
  return p;
801031d0:	83 c4 10             	add    $0x10,%esp
}
801031d3:	89 d8                	mov    %ebx,%eax
801031d5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801031d8:	c9                   	leave  
801031d9:	c3                   	ret    
  release(&ptable.lock);
801031da:	83 ec 0c             	sub    $0xc,%esp
801031dd:	68 a0 35 11 80       	push   $0x801135a0
801031e2:	e8 35 0b 00 00       	call   80103d1c <release>
  return 0;
801031e7:	83 c4 10             	add    $0x10,%esp
801031ea:	bb 00 00 00 00       	mov    $0x0,%ebx
801031ef:	eb e2                	jmp    801031d3 <allocproc+0x95>
    p->state = UNUSED;
801031f1:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
    return 0;
801031f8:	89 c3                	mov    %eax,%ebx
801031fa:	eb d7                	jmp    801031d3 <allocproc+0x95>

801031fc <forkret>:
{
801031fc:	f3 0f 1e fb          	endbr32 
80103200:	55                   	push   %ebp
80103201:	89 e5                	mov    %esp,%ebp
80103203:	83 ec 14             	sub    $0x14,%esp
  release(&ptable.lock);
80103206:	68 a0 35 11 80       	push   $0x801135a0
8010320b:	e8 0c 0b 00 00       	call   80103d1c <release>
  if (first) {
80103210:	83 c4 10             	add    $0x10,%esp
80103213:	83 3d 00 a0 10 80 00 	cmpl   $0x0,0x8010a000
8010321a:	75 02                	jne    8010321e <forkret+0x22>
}
8010321c:	c9                   	leave  
8010321d:	c3                   	ret    
    first = 0;
8010321e:	c7 05 00 a0 10 80 00 	movl   $0x0,0x8010a000
80103225:	00 00 00 
    iinit(ROOTDEV);
80103228:	83 ec 0c             	sub    $0xc,%esp
8010322b:	6a 01                	push   $0x1
8010322d:	e8 0e e1 ff ff       	call   80101340 <iinit>
    initlog(ROOTDEV);
80103232:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
80103239:	e8 df f5 ff ff       	call   8010281d <initlog>
8010323e:	83 c4 10             	add    $0x10,%esp
}
80103241:	eb d9                	jmp    8010321c <forkret+0x20>

80103243 <pinit>:
{
80103243:	f3 0f 1e fb          	endbr32 
80103247:	55                   	push   %ebp
80103248:	89 e5                	mov    %esp,%ebp
8010324a:	83 ec 10             	sub    $0x10,%esp
  initlock(&ptable.lock, "ptable");
8010324d:	68 a0 6d 10 80       	push   $0x80106da0
80103252:	68 a0 35 11 80       	push   $0x801135a0
80103257:	e8 1f 09 00 00       	call   80103b7b <initlock>
}
8010325c:	83 c4 10             	add    $0x10,%esp
8010325f:	c9                   	leave  
80103260:	c3                   	ret    

80103261 <mycpu>:
{
80103261:	f3 0f 1e fb          	endbr32 
80103265:	55                   	push   %ebp
80103266:	89 e5                	mov    %esp,%ebp
80103268:	83 ec 08             	sub    $0x8,%esp
  asm volatile("pushfl; popl %0" : "=r" (eflags));
8010326b:	9c                   	pushf  
8010326c:	58                   	pop    %eax
  if(readeflags()&FL_IF)
8010326d:	f6 c4 02             	test   $0x2,%ah
80103270:	75 28                	jne    8010329a <mycpu+0x39>
  apicid = lapicid();
80103272:	e8 bd f1 ff ff       	call   80102434 <lapicid>
  for (i = 0; i < ncpu; ++i) {
80103277:	ba 00 00 00 00       	mov    $0x0,%edx
8010327c:	39 15 80 35 11 80    	cmp    %edx,0x80113580
80103282:	7e 30                	jle    801032b4 <mycpu+0x53>
    if (cpus[i].apicid == apicid)
80103284:	69 ca b0 00 00 00    	imul   $0xb0,%edx,%ecx
8010328a:	0f b6 89 00 30 11 80 	movzbl -0x7feed000(%ecx),%ecx
80103291:	39 c1                	cmp    %eax,%ecx
80103293:	74 12                	je     801032a7 <mycpu+0x46>
  for (i = 0; i < ncpu; ++i) {
80103295:	83 c2 01             	add    $0x1,%edx
80103298:	eb e2                	jmp    8010327c <mycpu+0x1b>
    panic("mycpu called with interrupts enabled\n");
8010329a:	83 ec 0c             	sub    $0xc,%esp
8010329d:	68 84 6e 10 80       	push   $0x80106e84
801032a2:	e8 b5 d0 ff ff       	call   8010035c <panic>
      return &cpus[i];
801032a7:	69 c2 b0 00 00 00    	imul   $0xb0,%edx,%eax
801032ad:	05 00 30 11 80       	add    $0x80113000,%eax
}
801032b2:	c9                   	leave  
801032b3:	c3                   	ret    
  panic("unknown apicid\n");
801032b4:	83 ec 0c             	sub    $0xc,%esp
801032b7:	68 a7 6d 10 80       	push   $0x80106da7
801032bc:	e8 9b d0 ff ff       	call   8010035c <panic>

801032c1 <cpuid>:
cpuid() {
801032c1:	f3 0f 1e fb          	endbr32 
801032c5:	55                   	push   %ebp
801032c6:	89 e5                	mov    %esp,%ebp
801032c8:	83 ec 08             	sub    $0x8,%esp
  return mycpu()-cpus;
801032cb:	e8 91 ff ff ff       	call   80103261 <mycpu>
801032d0:	2d 00 30 11 80       	sub    $0x80113000,%eax
801032d5:	c1 f8 04             	sar    $0x4,%eax
801032d8:	69 c0 a3 8b 2e ba    	imul   $0xba2e8ba3,%eax,%eax
}
801032de:	c9                   	leave  
801032df:	c3                   	ret    

801032e0 <myproc>:
myproc(void) {
801032e0:	f3 0f 1e fb          	endbr32 
801032e4:	55                   	push   %ebp
801032e5:	89 e5                	mov    %esp,%ebp
801032e7:	53                   	push   %ebx
801032e8:	83 ec 04             	sub    $0x4,%esp
  pushcli();
801032eb:	e8 ec 08 00 00       	call   80103bdc <pushcli>
  c = mycpu();
801032f0:	e8 6c ff ff ff       	call   80103261 <mycpu>
  p = c->proc;
801032f5:	8b 98 ac 00 00 00    	mov    0xac(%eax),%ebx
  popcli();
801032fb:	e8 18 09 00 00       	call   80103c18 <popcli>
}
80103300:	89 d8                	mov    %ebx,%eax
80103302:	83 c4 04             	add    $0x4,%esp
80103305:	5b                   	pop    %ebx
80103306:	5d                   	pop    %ebp
80103307:	c3                   	ret    

80103308 <userinit>:
{
80103308:	f3 0f 1e fb          	endbr32 
8010330c:	55                   	push   %ebp
8010330d:	89 e5                	mov    %esp,%ebp
8010330f:	53                   	push   %ebx
80103310:	83 ec 04             	sub    $0x4,%esp
  p = allocproc();
80103313:	e8 26 fe ff ff       	call   8010313e <allocproc>
80103318:	89 c3                	mov    %eax,%ebx
  initproc = p;
8010331a:	a3 b8 a5 10 80       	mov    %eax,0x8010a5b8
  if((p->pgdir = setupkvm()) == 0)
8010331f:	e8 c0 32 00 00       	call   801065e4 <setupkvm>
80103324:	89 43 04             	mov    %eax,0x4(%ebx)
80103327:	85 c0                	test   %eax,%eax
80103329:	0f 84 b8 00 00 00    	je     801033e7 <userinit+0xdf>
  inituvm(p->pgdir, _binary_initcode_start, (int)_binary_initcode_size);
8010332f:	83 ec 04             	sub    $0x4,%esp
80103332:	68 2c 00 00 00       	push   $0x2c
80103337:	68 60 a4 10 80       	push   $0x8010a460
8010333c:	50                   	push   %eax
8010333d:	e8 9e 2f 00 00       	call   801062e0 <inituvm>
  p->sz = PGSIZE;
80103342:	c7 03 00 10 00 00    	movl   $0x1000,(%ebx)
  memset(p->tf, 0, sizeof(*p->tf));
80103348:	8b 43 18             	mov    0x18(%ebx),%eax
8010334b:	83 c4 0c             	add    $0xc,%esp
8010334e:	6a 4c                	push   $0x4c
80103350:	6a 00                	push   $0x0
80103352:	50                   	push   %eax
80103353:	e8 0b 0a 00 00       	call   80103d63 <memset>
  p->tf->cs = (SEG_UCODE << 3) | DPL_USER;
80103358:	8b 43 18             	mov    0x18(%ebx),%eax
8010335b:	66 c7 40 3c 1b 00    	movw   $0x1b,0x3c(%eax)
  p->tf->ds = (SEG_UDATA << 3) | DPL_USER;
80103361:	8b 43 18             	mov    0x18(%ebx),%eax
80103364:	66 c7 40 2c 23 00    	movw   $0x23,0x2c(%eax)
  p->tf->es = p->tf->ds;
8010336a:	8b 43 18             	mov    0x18(%ebx),%eax
8010336d:	0f b7 50 2c          	movzwl 0x2c(%eax),%edx
80103371:	66 89 50 28          	mov    %dx,0x28(%eax)
  p->tf->ss = p->tf->ds;
80103375:	8b 43 18             	mov    0x18(%ebx),%eax
80103378:	0f b7 50 2c          	movzwl 0x2c(%eax),%edx
8010337c:	66 89 50 48          	mov    %dx,0x48(%eax)
  p->tf->eflags = FL_IF;
80103380:	8b 43 18             	mov    0x18(%ebx),%eax
80103383:	c7 40 40 00 02 00 00 	movl   $0x200,0x40(%eax)
  p->tf->esp = PGSIZE;
8010338a:	8b 43 18             	mov    0x18(%ebx),%eax
8010338d:	c7 40 44 00 10 00 00 	movl   $0x1000,0x44(%eax)
  p->tf->eip = 0;  // beginning of initcode.S
80103394:	8b 43 18             	mov    0x18(%ebx),%eax
80103397:	c7 40 38 00 00 00 00 	movl   $0x0,0x38(%eax)
  safestrcpy(p->name, "initcode", sizeof(p->name));
8010339e:	8d 43 6c             	lea    0x6c(%ebx),%eax
801033a1:	83 c4 0c             	add    $0xc,%esp
801033a4:	6a 10                	push   $0x10
801033a6:	68 d0 6d 10 80       	push   $0x80106dd0
801033ab:	50                   	push   %eax
801033ac:	e8 1e 0b 00 00       	call   80103ecf <safestrcpy>
  p->cwd = namei("/");
801033b1:	c7 04 24 d9 6d 10 80 	movl   $0x80106dd9,(%esp)
801033b8:	e8 ad e8 ff ff       	call   80101c6a <namei>
801033bd:	89 43 68             	mov    %eax,0x68(%ebx)
  acquire(&ptable.lock);
801033c0:	c7 04 24 a0 35 11 80 	movl   $0x801135a0,(%esp)
801033c7:	e8 eb 08 00 00       	call   80103cb7 <acquire>
  p->state = RUNNABLE;
801033cc:	c7 43 0c 03 00 00 00 	movl   $0x3,0xc(%ebx)
  release(&ptable.lock);
801033d3:	c7 04 24 a0 35 11 80 	movl   $0x801135a0,(%esp)
801033da:	e8 3d 09 00 00       	call   80103d1c <release>
}
801033df:	83 c4 10             	add    $0x10,%esp
801033e2:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801033e5:	c9                   	leave  
801033e6:	c3                   	ret    
    panic("userinit: out of memory?");
801033e7:	83 ec 0c             	sub    $0xc,%esp
801033ea:	68 b7 6d 10 80       	push   $0x80106db7
801033ef:	e8 68 cf ff ff       	call   8010035c <panic>

801033f4 <growproc>:
{
801033f4:	f3 0f 1e fb          	endbr32 
801033f8:	55                   	push   %ebp
801033f9:	89 e5                	mov    %esp,%ebp
801033fb:	56                   	push   %esi
801033fc:	53                   	push   %ebx
801033fd:	8b 75 08             	mov    0x8(%ebp),%esi
  struct proc *curproc = myproc();
80103400:	e8 db fe ff ff       	call   801032e0 <myproc>
80103405:	89 c3                	mov    %eax,%ebx
  sz = curproc->sz;
80103407:	8b 00                	mov    (%eax),%eax
  if(n > 0){
80103409:	85 f6                	test   %esi,%esi
8010340b:	7f 1b                	jg     80103428 <growproc+0x34>
  } else if(n < 0){
8010340d:	78 36                	js     80103445 <growproc+0x51>
  curproc->sz = sz;
8010340f:	89 03                	mov    %eax,(%ebx)
  lcr3(V2P(curproc->pgdir));  // Invalidate TLB.
80103411:	8b 43 04             	mov    0x4(%ebx),%eax
80103414:	05 00 00 00 80       	add    $0x80000000,%eax
}

static inline void
lcr3(uint val)
{
  asm volatile("movl %0,%%cr3" : : "r" (val));
80103419:	0f 22 d8             	mov    %eax,%cr3
  return 0;
8010341c:	b8 00 00 00 00       	mov    $0x0,%eax
}
80103421:	8d 65 f8             	lea    -0x8(%ebp),%esp
80103424:	5b                   	pop    %ebx
80103425:	5e                   	pop    %esi
80103426:	5d                   	pop    %ebp
80103427:	c3                   	ret    
    if((sz = allocuvm(curproc->pgdir, sz, sz + n)) == 0)
80103428:	83 ec 04             	sub    $0x4,%esp
8010342b:	01 c6                	add    %eax,%esi
8010342d:	56                   	push   %esi
8010342e:	50                   	push   %eax
8010342f:	ff 73 04             	pushl  0x4(%ebx)
80103432:	e8 4b 30 00 00       	call   80106482 <allocuvm>
80103437:	83 c4 10             	add    $0x10,%esp
8010343a:	85 c0                	test   %eax,%eax
8010343c:	75 d1                	jne    8010340f <growproc+0x1b>
      return -1;
8010343e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80103443:	eb dc                	jmp    80103421 <growproc+0x2d>
    if((sz = deallocuvm(curproc->pgdir, sz, sz + n)) == 0)
80103445:	83 ec 04             	sub    $0x4,%esp
80103448:	01 c6                	add    %eax,%esi
8010344a:	56                   	push   %esi
8010344b:	50                   	push   %eax
8010344c:	ff 73 04             	pushl  0x4(%ebx)
8010344f:	e8 98 2f 00 00       	call   801063ec <deallocuvm>
80103454:	83 c4 10             	add    $0x10,%esp
80103457:	85 c0                	test   %eax,%eax
80103459:	75 b4                	jne    8010340f <growproc+0x1b>
      return -1;
8010345b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80103460:	eb bf                	jmp    80103421 <growproc+0x2d>

80103462 <fork>:
{
80103462:	f3 0f 1e fb          	endbr32 
80103466:	55                   	push   %ebp
80103467:	89 e5                	mov    %esp,%ebp
80103469:	57                   	push   %edi
8010346a:	56                   	push   %esi
8010346b:	53                   	push   %ebx
8010346c:	83 ec 1c             	sub    $0x1c,%esp
  struct proc *curproc = myproc();
8010346f:	e8 6c fe ff ff       	call   801032e0 <myproc>
80103474:	89 c3                	mov    %eax,%ebx
  if((np = allocproc()) == 0){
80103476:	e8 c3 fc ff ff       	call   8010313e <allocproc>
8010347b:	89 45 e4             	mov    %eax,-0x1c(%ebp)
8010347e:	85 c0                	test   %eax,%eax
80103480:	0f 84 e0 00 00 00    	je     80103566 <fork+0x104>
80103486:	89 c7                	mov    %eax,%edi
  if((np->pgdir = copyuvm(curproc->pgdir, curproc->sz)) == 0){
80103488:	83 ec 08             	sub    $0x8,%esp
8010348b:	ff 33                	pushl  (%ebx)
8010348d:	ff 73 04             	pushl  0x4(%ebx)
80103490:	e8 0c 32 00 00       	call   801066a1 <copyuvm>
80103495:	89 47 04             	mov    %eax,0x4(%edi)
80103498:	83 c4 10             	add    $0x10,%esp
8010349b:	85 c0                	test   %eax,%eax
8010349d:	74 2a                	je     801034c9 <fork+0x67>
  np->sz = curproc->sz;
8010349f:	8b 03                	mov    (%ebx),%eax
801034a1:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
801034a4:	89 01                	mov    %eax,(%ecx)
  np->parent = curproc;
801034a6:	89 c8                	mov    %ecx,%eax
801034a8:	89 59 14             	mov    %ebx,0x14(%ecx)
  *np->tf = *curproc->tf;
801034ab:	8b 73 18             	mov    0x18(%ebx),%esi
801034ae:	8b 79 18             	mov    0x18(%ecx),%edi
801034b1:	b9 13 00 00 00       	mov    $0x13,%ecx
801034b6:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
  np->tf->eax = 0;
801034b8:	8b 40 18             	mov    0x18(%eax),%eax
801034bb:	c7 40 1c 00 00 00 00 	movl   $0x0,0x1c(%eax)
  for(i = 0; i < NOFILE; i++)
801034c2:	be 00 00 00 00       	mov    $0x0,%esi
801034c7:	eb 3c                	jmp    80103505 <fork+0xa3>
    kfree(np->kstack);
801034c9:	83 ec 0c             	sub    $0xc,%esp
801034cc:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
801034cf:	ff 73 08             	pushl  0x8(%ebx)
801034d2:	e8 6f eb ff ff       	call   80102046 <kfree>
    np->kstack = 0;
801034d7:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
    np->state = UNUSED;
801034de:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
    return -1;
801034e5:	83 c4 10             	add    $0x10,%esp
801034e8:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
801034ed:	eb 6d                	jmp    8010355c <fork+0xfa>
      np->ofile[i] = filedup(curproc->ofile[i]);
801034ef:	83 ec 0c             	sub    $0xc,%esp
801034f2:	50                   	push   %eax
801034f3:	e8 d1 d7 ff ff       	call   80100cc9 <filedup>
801034f8:	8b 55 e4             	mov    -0x1c(%ebp),%edx
801034fb:	89 44 b2 28          	mov    %eax,0x28(%edx,%esi,4)
801034ff:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < NOFILE; i++)
80103502:	83 c6 01             	add    $0x1,%esi
80103505:	83 fe 0f             	cmp    $0xf,%esi
80103508:	7f 0a                	jg     80103514 <fork+0xb2>
    if(curproc->ofile[i])
8010350a:	8b 44 b3 28          	mov    0x28(%ebx,%esi,4),%eax
8010350e:	85 c0                	test   %eax,%eax
80103510:	75 dd                	jne    801034ef <fork+0x8d>
80103512:	eb ee                	jmp    80103502 <fork+0xa0>
  np->cwd = idup(curproc->cwd);
80103514:	83 ec 0c             	sub    $0xc,%esp
80103517:	ff 73 68             	pushl  0x68(%ebx)
8010351a:	e8 92 e0 ff ff       	call   801015b1 <idup>
8010351f:	8b 7d e4             	mov    -0x1c(%ebp),%edi
80103522:	89 47 68             	mov    %eax,0x68(%edi)
  safestrcpy(np->name, curproc->name, sizeof(curproc->name));
80103525:	83 c3 6c             	add    $0x6c,%ebx
80103528:	8d 47 6c             	lea    0x6c(%edi),%eax
8010352b:	83 c4 0c             	add    $0xc,%esp
8010352e:	6a 10                	push   $0x10
80103530:	53                   	push   %ebx
80103531:	50                   	push   %eax
80103532:	e8 98 09 00 00       	call   80103ecf <safestrcpy>
  pid = np->pid;
80103537:	8b 5f 10             	mov    0x10(%edi),%ebx
  acquire(&ptable.lock);
8010353a:	c7 04 24 a0 35 11 80 	movl   $0x801135a0,(%esp)
80103541:	e8 71 07 00 00       	call   80103cb7 <acquire>
  np->state = RUNNABLE;
80103546:	c7 47 0c 03 00 00 00 	movl   $0x3,0xc(%edi)
  release(&ptable.lock);
8010354d:	c7 04 24 a0 35 11 80 	movl   $0x801135a0,(%esp)
80103554:	e8 c3 07 00 00       	call   80103d1c <release>
  return pid;
80103559:	83 c4 10             	add    $0x10,%esp
}
8010355c:	89 d8                	mov    %ebx,%eax
8010355e:	8d 65 f4             	lea    -0xc(%ebp),%esp
80103561:	5b                   	pop    %ebx
80103562:	5e                   	pop    %esi
80103563:	5f                   	pop    %edi
80103564:	5d                   	pop    %ebp
80103565:	c3                   	ret    
    return -1;
80103566:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
8010356b:	eb ef                	jmp    8010355c <fork+0xfa>

8010356d <scheduler>:
{
8010356d:	f3 0f 1e fb          	endbr32 
80103571:	55                   	push   %ebp
80103572:	89 e5                	mov    %esp,%ebp
80103574:	56                   	push   %esi
80103575:	53                   	push   %ebx
  struct cpu *c = mycpu();
80103576:	e8 e6 fc ff ff       	call   80103261 <mycpu>
8010357b:	89 c6                	mov    %eax,%esi
  c->proc = 0;
8010357d:	c7 80 ac 00 00 00 00 	movl   $0x0,0xac(%eax)
80103584:	00 00 00 
80103587:	eb 5a                	jmp    801035e3 <scheduler+0x76>
    for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
80103589:	83 eb 80             	sub    $0xffffff80,%ebx
8010358c:	81 fb d4 55 11 80    	cmp    $0x801155d4,%ebx
80103592:	73 3f                	jae    801035d3 <scheduler+0x66>
      if(p->state != RUNNABLE)
80103594:	83 7b 0c 03          	cmpl   $0x3,0xc(%ebx)
80103598:	75 ef                	jne    80103589 <scheduler+0x1c>
      c->proc = p;
8010359a:	89 9e ac 00 00 00    	mov    %ebx,0xac(%esi)
      switchuvm(p);
801035a0:	83 ec 0c             	sub    $0xc,%esp
801035a3:	53                   	push   %ebx
801035a4:	e8 d3 2b 00 00       	call   8010617c <switchuvm>
      p->state = RUNNING;
801035a9:	c7 43 0c 04 00 00 00 	movl   $0x4,0xc(%ebx)
      swtch(&(c->scheduler), p->context);
801035b0:	83 c4 08             	add    $0x8,%esp
801035b3:	ff 73 1c             	pushl  0x1c(%ebx)
801035b6:	8d 46 04             	lea    0x4(%esi),%eax
801035b9:	50                   	push   %eax
801035ba:	e8 65 09 00 00       	call   80103f24 <swtch>
      switchkvm();
801035bf:	e8 a6 2b 00 00       	call   8010616a <switchkvm>
      c->proc = 0;
801035c4:	c7 86 ac 00 00 00 00 	movl   $0x0,0xac(%esi)
801035cb:	00 00 00 
801035ce:	83 c4 10             	add    $0x10,%esp
801035d1:	eb b6                	jmp    80103589 <scheduler+0x1c>
    release(&ptable.lock);
801035d3:	83 ec 0c             	sub    $0xc,%esp
801035d6:	68 a0 35 11 80       	push   $0x801135a0
801035db:	e8 3c 07 00 00       	call   80103d1c <release>
    sti();
801035e0:	83 c4 10             	add    $0x10,%esp
  asm volatile("sti");
801035e3:	fb                   	sti    
    acquire(&ptable.lock);
801035e4:	83 ec 0c             	sub    $0xc,%esp
801035e7:	68 a0 35 11 80       	push   $0x801135a0
801035ec:	e8 c6 06 00 00       	call   80103cb7 <acquire>
    for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
801035f1:	83 c4 10             	add    $0x10,%esp
801035f4:	bb d4 35 11 80       	mov    $0x801135d4,%ebx
801035f9:	eb 91                	jmp    8010358c <scheduler+0x1f>

801035fb <sched>:
{
801035fb:	f3 0f 1e fb          	endbr32 
801035ff:	55                   	push   %ebp
80103600:	89 e5                	mov    %esp,%ebp
80103602:	56                   	push   %esi
80103603:	53                   	push   %ebx
  struct proc *p = myproc();
80103604:	e8 d7 fc ff ff       	call   801032e0 <myproc>
80103609:	89 c3                	mov    %eax,%ebx
  if(!holding(&ptable.lock))
8010360b:	83 ec 0c             	sub    $0xc,%esp
8010360e:	68 a0 35 11 80       	push   $0x801135a0
80103613:	e8 60 06 00 00       	call   80103c78 <holding>
80103618:	83 c4 10             	add    $0x10,%esp
8010361b:	85 c0                	test   %eax,%eax
8010361d:	74 4f                	je     8010366e <sched+0x73>
  if(mycpu()->ncli != 1)
8010361f:	e8 3d fc ff ff       	call   80103261 <mycpu>
80103624:	83 b8 a4 00 00 00 01 	cmpl   $0x1,0xa4(%eax)
8010362b:	75 4e                	jne    8010367b <sched+0x80>
  if(p->state == RUNNING)
8010362d:	83 7b 0c 04          	cmpl   $0x4,0xc(%ebx)
80103631:	74 55                	je     80103688 <sched+0x8d>
  asm volatile("pushfl; popl %0" : "=r" (eflags));
80103633:	9c                   	pushf  
80103634:	58                   	pop    %eax
  if(readeflags()&FL_IF)
80103635:	f6 c4 02             	test   $0x2,%ah
80103638:	75 5b                	jne    80103695 <sched+0x9a>
  intena = mycpu()->intena;
8010363a:	e8 22 fc ff ff       	call   80103261 <mycpu>
8010363f:	8b b0 a8 00 00 00    	mov    0xa8(%eax),%esi
  swtch(&p->context, mycpu()->scheduler);
80103645:	e8 17 fc ff ff       	call   80103261 <mycpu>
8010364a:	83 ec 08             	sub    $0x8,%esp
8010364d:	ff 70 04             	pushl  0x4(%eax)
80103650:	83 c3 1c             	add    $0x1c,%ebx
80103653:	53                   	push   %ebx
80103654:	e8 cb 08 00 00       	call   80103f24 <swtch>
  mycpu()->intena = intena;
80103659:	e8 03 fc ff ff       	call   80103261 <mycpu>
8010365e:	89 b0 a8 00 00 00    	mov    %esi,0xa8(%eax)
}
80103664:	83 c4 10             	add    $0x10,%esp
80103667:	8d 65 f8             	lea    -0x8(%ebp),%esp
8010366a:	5b                   	pop    %ebx
8010366b:	5e                   	pop    %esi
8010366c:	5d                   	pop    %ebp
8010366d:	c3                   	ret    
    panic("sched ptable.lock");
8010366e:	83 ec 0c             	sub    $0xc,%esp
80103671:	68 db 6d 10 80       	push   $0x80106ddb
80103676:	e8 e1 cc ff ff       	call   8010035c <panic>
    panic("sched locks");
8010367b:	83 ec 0c             	sub    $0xc,%esp
8010367e:	68 ed 6d 10 80       	push   $0x80106ded
80103683:	e8 d4 cc ff ff       	call   8010035c <panic>
    panic("sched running");
80103688:	83 ec 0c             	sub    $0xc,%esp
8010368b:	68 f9 6d 10 80       	push   $0x80106df9
80103690:	e8 c7 cc ff ff       	call   8010035c <panic>
    panic("sched interruptible");
80103695:	83 ec 0c             	sub    $0xc,%esp
80103698:	68 07 6e 10 80       	push   $0x80106e07
8010369d:	e8 ba cc ff ff       	call   8010035c <panic>

801036a2 <exit>:
{
801036a2:	f3 0f 1e fb          	endbr32 
801036a6:	55                   	push   %ebp
801036a7:	89 e5                	mov    %esp,%ebp
801036a9:	56                   	push   %esi
801036aa:	53                   	push   %ebx
  struct proc *curproc = myproc();
801036ab:	e8 30 fc ff ff       	call   801032e0 <myproc>
  if(curproc == initproc)
801036b0:	39 05 b8 a5 10 80    	cmp    %eax,0x8010a5b8
801036b6:	74 09                	je     801036c1 <exit+0x1f>
801036b8:	89 c6                	mov    %eax,%esi
  for(fd = 0; fd < NOFILE; fd++){
801036ba:	bb 00 00 00 00       	mov    $0x0,%ebx
801036bf:	eb 24                	jmp    801036e5 <exit+0x43>
    panic("init exiting");
801036c1:	83 ec 0c             	sub    $0xc,%esp
801036c4:	68 1b 6e 10 80       	push   $0x80106e1b
801036c9:	e8 8e cc ff ff       	call   8010035c <panic>
      fileclose(curproc->ofile[fd]);
801036ce:	83 ec 0c             	sub    $0xc,%esp
801036d1:	50                   	push   %eax
801036d2:	e8 3b d6 ff ff       	call   80100d12 <fileclose>
      curproc->ofile[fd] = 0;
801036d7:	c7 44 9e 28 00 00 00 	movl   $0x0,0x28(%esi,%ebx,4)
801036de:	00 
801036df:	83 c4 10             	add    $0x10,%esp
  for(fd = 0; fd < NOFILE; fd++){
801036e2:	83 c3 01             	add    $0x1,%ebx
801036e5:	83 fb 0f             	cmp    $0xf,%ebx
801036e8:	7f 0a                	jg     801036f4 <exit+0x52>
    if(curproc->ofile[fd]){
801036ea:	8b 44 9e 28          	mov    0x28(%esi,%ebx,4),%eax
801036ee:	85 c0                	test   %eax,%eax
801036f0:	75 dc                	jne    801036ce <exit+0x2c>
801036f2:	eb ee                	jmp    801036e2 <exit+0x40>
  begin_op();
801036f4:	e8 71 f1 ff ff       	call   8010286a <begin_op>
  iput(curproc->cwd);
801036f9:	83 ec 0c             	sub    $0xc,%esp
801036fc:	ff 76 68             	pushl  0x68(%esi)
801036ff:	e8 f0 df ff ff       	call   801016f4 <iput>
  end_op();
80103704:	e8 df f1 ff ff       	call   801028e8 <end_op>
  curproc->cwd = 0;
80103709:	c7 46 68 00 00 00 00 	movl   $0x0,0x68(%esi)
  acquire(&ptable.lock);
80103710:	c7 04 24 a0 35 11 80 	movl   $0x801135a0,(%esp)
80103717:	e8 9b 05 00 00       	call   80103cb7 <acquire>
  wakeup1(curproc->parent);
8010371c:	8b 46 14             	mov    0x14(%esi),%eax
8010371f:	e8 f3 f9 ff ff       	call   80103117 <wakeup1>
  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
80103724:	83 c4 10             	add    $0x10,%esp
80103727:	bb d4 35 11 80       	mov    $0x801135d4,%ebx
8010372c:	eb 03                	jmp    80103731 <exit+0x8f>
8010372e:	83 eb 80             	sub    $0xffffff80,%ebx
80103731:	81 fb d4 55 11 80    	cmp    $0x801155d4,%ebx
80103737:	73 1a                	jae    80103753 <exit+0xb1>
    if(p->parent == curproc){
80103739:	39 73 14             	cmp    %esi,0x14(%ebx)
8010373c:	75 f0                	jne    8010372e <exit+0x8c>
      p->parent = initproc;
8010373e:	a1 b8 a5 10 80       	mov    0x8010a5b8,%eax
80103743:	89 43 14             	mov    %eax,0x14(%ebx)
      if(p->state == ZOMBIE)
80103746:	83 7b 0c 05          	cmpl   $0x5,0xc(%ebx)
8010374a:	75 e2                	jne    8010372e <exit+0x8c>
        wakeup1(initproc);
8010374c:	e8 c6 f9 ff ff       	call   80103117 <wakeup1>
80103751:	eb db                	jmp    8010372e <exit+0x8c>
  curproc->status = status;
80103753:	8b 45 08             	mov    0x8(%ebp),%eax
80103756:	89 46 7c             	mov    %eax,0x7c(%esi)
  curproc->state = ZOMBIE;
80103759:	c7 46 0c 05 00 00 00 	movl   $0x5,0xc(%esi)
  sched();
80103760:	e8 96 fe ff ff       	call   801035fb <sched>
  panic("zombie exit");
80103765:	83 ec 0c             	sub    $0xc,%esp
80103768:	68 28 6e 10 80       	push   $0x80106e28
8010376d:	e8 ea cb ff ff       	call   8010035c <panic>

80103772 <yield>:
{
80103772:	f3 0f 1e fb          	endbr32 
80103776:	55                   	push   %ebp
80103777:	89 e5                	mov    %esp,%ebp
80103779:	83 ec 14             	sub    $0x14,%esp
  acquire(&ptable.lock);  //DOC: yieldlock
8010377c:	68 a0 35 11 80       	push   $0x801135a0
80103781:	e8 31 05 00 00       	call   80103cb7 <acquire>
  myproc()->state = RUNNABLE;
80103786:	e8 55 fb ff ff       	call   801032e0 <myproc>
8010378b:	c7 40 0c 03 00 00 00 	movl   $0x3,0xc(%eax)
  sched();
80103792:	e8 64 fe ff ff       	call   801035fb <sched>
  release(&ptable.lock);
80103797:	c7 04 24 a0 35 11 80 	movl   $0x801135a0,(%esp)
8010379e:	e8 79 05 00 00       	call   80103d1c <release>
}
801037a3:	83 c4 10             	add    $0x10,%esp
801037a6:	c9                   	leave  
801037a7:	c3                   	ret    

801037a8 <sleep>:
{
801037a8:	f3 0f 1e fb          	endbr32 
801037ac:	55                   	push   %ebp
801037ad:	89 e5                	mov    %esp,%ebp
801037af:	56                   	push   %esi
801037b0:	53                   	push   %ebx
801037b1:	8b 75 0c             	mov    0xc(%ebp),%esi
  struct proc *p = myproc();
801037b4:	e8 27 fb ff ff       	call   801032e0 <myproc>
  if(p == 0)
801037b9:	85 c0                	test   %eax,%eax
801037bb:	74 66                	je     80103823 <sleep+0x7b>
801037bd:	89 c3                	mov    %eax,%ebx
  if(lk == 0)
801037bf:	85 f6                	test   %esi,%esi
801037c1:	74 6d                	je     80103830 <sleep+0x88>
  if(lk != &ptable.lock){  //DOC: sleeplock0
801037c3:	81 fe a0 35 11 80    	cmp    $0x801135a0,%esi
801037c9:	74 18                	je     801037e3 <sleep+0x3b>
    acquire(&ptable.lock);  //DOC: sleeplock1
801037cb:	83 ec 0c             	sub    $0xc,%esp
801037ce:	68 a0 35 11 80       	push   $0x801135a0
801037d3:	e8 df 04 00 00       	call   80103cb7 <acquire>
    release(lk);
801037d8:	89 34 24             	mov    %esi,(%esp)
801037db:	e8 3c 05 00 00       	call   80103d1c <release>
801037e0:	83 c4 10             	add    $0x10,%esp
  p->chan = chan;
801037e3:	8b 45 08             	mov    0x8(%ebp),%eax
801037e6:	89 43 20             	mov    %eax,0x20(%ebx)
  p->state = SLEEPING;
801037e9:	c7 43 0c 02 00 00 00 	movl   $0x2,0xc(%ebx)
  sched();
801037f0:	e8 06 fe ff ff       	call   801035fb <sched>
  p->chan = 0;
801037f5:	c7 43 20 00 00 00 00 	movl   $0x0,0x20(%ebx)
  if(lk != &ptable.lock){  //DOC: sleeplock2
801037fc:	81 fe a0 35 11 80    	cmp    $0x801135a0,%esi
80103802:	74 18                	je     8010381c <sleep+0x74>
    release(&ptable.lock);
80103804:	83 ec 0c             	sub    $0xc,%esp
80103807:	68 a0 35 11 80       	push   $0x801135a0
8010380c:	e8 0b 05 00 00       	call   80103d1c <release>
    acquire(lk);
80103811:	89 34 24             	mov    %esi,(%esp)
80103814:	e8 9e 04 00 00       	call   80103cb7 <acquire>
80103819:	83 c4 10             	add    $0x10,%esp
}
8010381c:	8d 65 f8             	lea    -0x8(%ebp),%esp
8010381f:	5b                   	pop    %ebx
80103820:	5e                   	pop    %esi
80103821:	5d                   	pop    %ebp
80103822:	c3                   	ret    
    panic("sleep");
80103823:	83 ec 0c             	sub    $0xc,%esp
80103826:	68 34 6e 10 80       	push   $0x80106e34
8010382b:	e8 2c cb ff ff       	call   8010035c <panic>
    panic("sleep without lk");
80103830:	83 ec 0c             	sub    $0xc,%esp
80103833:	68 3a 6e 10 80       	push   $0x80106e3a
80103838:	e8 1f cb ff ff       	call   8010035c <panic>

8010383d <wait>:
{
8010383d:	f3 0f 1e fb          	endbr32 
80103841:	55                   	push   %ebp
80103842:	89 e5                	mov    %esp,%ebp
80103844:	56                   	push   %esi
80103845:	53                   	push   %ebx
  struct proc *curproc = myproc();
80103846:	e8 95 fa ff ff       	call   801032e0 <myproc>
8010384b:	89 c6                	mov    %eax,%esi
  acquire(&ptable.lock);
8010384d:	83 ec 0c             	sub    $0xc,%esp
80103850:	68 a0 35 11 80       	push   $0x801135a0
80103855:	e8 5d 04 00 00       	call   80103cb7 <acquire>
8010385a:	83 c4 10             	add    $0x10,%esp
    havekids = 0;
8010385d:	b8 00 00 00 00       	mov    $0x0,%eax
    for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
80103862:	bb d4 35 11 80       	mov    $0x801135d4,%ebx
80103867:	eb 5b                	jmp    801038c4 <wait+0x87>
        pid = p->pid;
80103869:	8b 73 10             	mov    0x10(%ebx),%esi
        kfree(p->kstack);
8010386c:	83 ec 0c             	sub    $0xc,%esp
8010386f:	ff 73 08             	pushl  0x8(%ebx)
80103872:	e8 cf e7 ff ff       	call   80102046 <kfree>
        p->kstack = 0;
80103877:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
        freevm(p->pgdir);
8010387e:	83 c4 04             	add    $0x4,%esp
80103881:	ff 73 04             	pushl  0x4(%ebx)
80103884:	e8 e7 2c 00 00       	call   80106570 <freevm>
        p->pid = 0;
80103889:	c7 43 10 00 00 00 00 	movl   $0x0,0x10(%ebx)
        p->parent = 0;
80103890:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)
        p->name[0] = 0;
80103897:	c6 43 6c 00          	movb   $0x0,0x6c(%ebx)
        p->killed = 0;
8010389b:	c7 43 24 00 00 00 00 	movl   $0x0,0x24(%ebx)
        p->state = UNUSED;
801038a2:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
        release(&ptable.lock);
801038a9:	c7 04 24 a0 35 11 80 	movl   $0x801135a0,(%esp)
801038b0:	e8 67 04 00 00       	call   80103d1c <release>
        return pid;
801038b5:	83 c4 10             	add    $0x10,%esp
}
801038b8:	89 f0                	mov    %esi,%eax
801038ba:	8d 65 f8             	lea    -0x8(%ebp),%esp
801038bd:	5b                   	pop    %ebx
801038be:	5e                   	pop    %esi
801038bf:	5d                   	pop    %ebp
801038c0:	c3                   	ret    
    for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
801038c1:	83 eb 80             	sub    $0xffffff80,%ebx
801038c4:	81 fb d4 55 11 80    	cmp    $0x801155d4,%ebx
801038ca:	73 12                	jae    801038de <wait+0xa1>
      if(p->parent != curproc)
801038cc:	39 73 14             	cmp    %esi,0x14(%ebx)
801038cf:	75 f0                	jne    801038c1 <wait+0x84>
      if(p->state == ZOMBIE){
801038d1:	83 7b 0c 05          	cmpl   $0x5,0xc(%ebx)
801038d5:	74 92                	je     80103869 <wait+0x2c>
      havekids = 1;
801038d7:	b8 01 00 00 00       	mov    $0x1,%eax
801038dc:	eb e3                	jmp    801038c1 <wait+0x84>
    if(!havekids || curproc->killed){
801038de:	85 c0                	test   %eax,%eax
801038e0:	74 06                	je     801038e8 <wait+0xab>
801038e2:	83 7e 24 00          	cmpl   $0x0,0x24(%esi)
801038e6:	74 17                	je     801038ff <wait+0xc2>
      release(&ptable.lock);
801038e8:	83 ec 0c             	sub    $0xc,%esp
801038eb:	68 a0 35 11 80       	push   $0x801135a0
801038f0:	e8 27 04 00 00       	call   80103d1c <release>
      return -1;
801038f5:	83 c4 10             	add    $0x10,%esp
801038f8:	be ff ff ff ff       	mov    $0xffffffff,%esi
801038fd:	eb b9                	jmp    801038b8 <wait+0x7b>
    sleep(curproc, &ptable.lock);  //DOC: wait-sleep
801038ff:	83 ec 08             	sub    $0x8,%esp
80103902:	68 a0 35 11 80       	push   $0x801135a0
80103907:	56                   	push   %esi
80103908:	e8 9b fe ff ff       	call   801037a8 <sleep>
    havekids = 0;
8010390d:	83 c4 10             	add    $0x10,%esp
80103910:	e9 48 ff ff ff       	jmp    8010385d <wait+0x20>

80103915 <wakeup>:

// Wake up all processes sleeping on chan.
void
wakeup(void *chan)
{
80103915:	f3 0f 1e fb          	endbr32 
80103919:	55                   	push   %ebp
8010391a:	89 e5                	mov    %esp,%ebp
8010391c:	83 ec 14             	sub    $0x14,%esp
  acquire(&ptable.lock);
8010391f:	68 a0 35 11 80       	push   $0x801135a0
80103924:	e8 8e 03 00 00       	call   80103cb7 <acquire>
  wakeup1(chan);
80103929:	8b 45 08             	mov    0x8(%ebp),%eax
8010392c:	e8 e6 f7 ff ff       	call   80103117 <wakeup1>
  release(&ptable.lock);
80103931:	c7 04 24 a0 35 11 80 	movl   $0x801135a0,(%esp)
80103938:	e8 df 03 00 00       	call   80103d1c <release>
}
8010393d:	83 c4 10             	add    $0x10,%esp
80103940:	c9                   	leave  
80103941:	c3                   	ret    

80103942 <kill>:
// Kill the process with the given pid.
// Process won't exit until it returns
// to user space (see trap in trap.c).
int
kill(int pid)
{
80103942:	f3 0f 1e fb          	endbr32 
80103946:	55                   	push   %ebp
80103947:	89 e5                	mov    %esp,%ebp
80103949:	53                   	push   %ebx
8010394a:	83 ec 10             	sub    $0x10,%esp
8010394d:	8b 5d 08             	mov    0x8(%ebp),%ebx
  struct proc *p;

  acquire(&ptable.lock);
80103950:	68 a0 35 11 80       	push   $0x801135a0
80103955:	e8 5d 03 00 00       	call   80103cb7 <acquire>
  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
8010395a:	83 c4 10             	add    $0x10,%esp
8010395d:	b8 d4 35 11 80       	mov    $0x801135d4,%eax
80103962:	3d d4 55 11 80       	cmp    $0x801155d4,%eax
80103967:	73 3a                	jae    801039a3 <kill+0x61>
    if(p->pid == pid){
80103969:	39 58 10             	cmp    %ebx,0x10(%eax)
8010396c:	74 05                	je     80103973 <kill+0x31>
  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
8010396e:	83 e8 80             	sub    $0xffffff80,%eax
80103971:	eb ef                	jmp    80103962 <kill+0x20>
      p->killed = 1;
80103973:	c7 40 24 01 00 00 00 	movl   $0x1,0x24(%eax)
      // Wake process from sleep if necessary.
      if(p->state == SLEEPING)
8010397a:	83 78 0c 02          	cmpl   $0x2,0xc(%eax)
8010397e:	74 1a                	je     8010399a <kill+0x58>
        p->state = RUNNABLE;
      release(&ptable.lock);
80103980:	83 ec 0c             	sub    $0xc,%esp
80103983:	68 a0 35 11 80       	push   $0x801135a0
80103988:	e8 8f 03 00 00       	call   80103d1c <release>
      return 0;
8010398d:	83 c4 10             	add    $0x10,%esp
80103990:	b8 00 00 00 00       	mov    $0x0,%eax
    }
  }
  release(&ptable.lock);
  return -1;
}
80103995:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80103998:	c9                   	leave  
80103999:	c3                   	ret    
        p->state = RUNNABLE;
8010399a:	c7 40 0c 03 00 00 00 	movl   $0x3,0xc(%eax)
801039a1:	eb dd                	jmp    80103980 <kill+0x3e>
  release(&ptable.lock);
801039a3:	83 ec 0c             	sub    $0xc,%esp
801039a6:	68 a0 35 11 80       	push   $0x801135a0
801039ab:	e8 6c 03 00 00       	call   80103d1c <release>
  return -1;
801039b0:	83 c4 10             	add    $0x10,%esp
801039b3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801039b8:	eb db                	jmp    80103995 <kill+0x53>

801039ba <procdump>:
// Print a process listing to console.  For debugging.
// Runs when user types ^P on console.
// No lock to avoid wedging a stuck machine further.
void
procdump(void)
{
801039ba:	f3 0f 1e fb          	endbr32 
801039be:	55                   	push   %ebp
801039bf:	89 e5                	mov    %esp,%ebp
801039c1:	56                   	push   %esi
801039c2:	53                   	push   %ebx
801039c3:	83 ec 30             	sub    $0x30,%esp
  int i;
  struct proc *p;
  char *state;
  uint pc[10];

  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
801039c6:	bb d4 35 11 80       	mov    $0x801135d4,%ebx
801039cb:	eb 33                	jmp    80103a00 <procdump+0x46>
    if(p->state == UNUSED)
      continue;
    if(p->state >= 0 && p->state < NELEM(states) && states[p->state])
      state = states[p->state];
    else
      state = "???";
801039cd:	b8 4b 6e 10 80       	mov    $0x80106e4b,%eax
    cprintf("%d %s %s", p->pid, state, p->name);
801039d2:	8d 53 6c             	lea    0x6c(%ebx),%edx
801039d5:	52                   	push   %edx
801039d6:	50                   	push   %eax
801039d7:	ff 73 10             	pushl  0x10(%ebx)
801039da:	68 4f 6e 10 80       	push   $0x80106e4f
801039df:	e8 45 cc ff ff       	call   80100629 <cprintf>
    if(p->state == SLEEPING){
801039e4:	83 c4 10             	add    $0x10,%esp
801039e7:	83 7b 0c 02          	cmpl   $0x2,0xc(%ebx)
801039eb:	74 39                	je     80103a26 <procdump+0x6c>
      getcallerpcs((uint*)p->context->ebp+2, pc);
      for(i=0; i<10 && pc[i] != 0; i++)
        cprintf(" %p", pc[i]);
    }
    cprintf("\n");
801039ed:	83 ec 0c             	sub    $0xc,%esp
801039f0:	68 bf 71 10 80       	push   $0x801071bf
801039f5:	e8 2f cc ff ff       	call   80100629 <cprintf>
801039fa:	83 c4 10             	add    $0x10,%esp
  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
801039fd:	83 eb 80             	sub    $0xffffff80,%ebx
80103a00:	81 fb d4 55 11 80    	cmp    $0x801155d4,%ebx
80103a06:	73 61                	jae    80103a69 <procdump+0xaf>
    if(p->state == UNUSED)
80103a08:	8b 43 0c             	mov    0xc(%ebx),%eax
80103a0b:	85 c0                	test   %eax,%eax
80103a0d:	74 ee                	je     801039fd <procdump+0x43>
    if(p->state >= 0 && p->state < NELEM(states) && states[p->state])
80103a0f:	83 f8 05             	cmp    $0x5,%eax
80103a12:	77 b9                	ja     801039cd <procdump+0x13>
80103a14:	8b 04 85 ac 6e 10 80 	mov    -0x7fef9154(,%eax,4),%eax
80103a1b:	85 c0                	test   %eax,%eax
80103a1d:	75 b3                	jne    801039d2 <procdump+0x18>
      state = "???";
80103a1f:	b8 4b 6e 10 80       	mov    $0x80106e4b,%eax
80103a24:	eb ac                	jmp    801039d2 <procdump+0x18>
      getcallerpcs((uint*)p->context->ebp+2, pc);
80103a26:	8b 43 1c             	mov    0x1c(%ebx),%eax
80103a29:	8b 40 0c             	mov    0xc(%eax),%eax
80103a2c:	83 c0 08             	add    $0x8,%eax
80103a2f:	83 ec 08             	sub    $0x8,%esp
80103a32:	8d 55 d0             	lea    -0x30(%ebp),%edx
80103a35:	52                   	push   %edx
80103a36:	50                   	push   %eax
80103a37:	e8 5a 01 00 00       	call   80103b96 <getcallerpcs>
      for(i=0; i<10 && pc[i] != 0; i++)
80103a3c:	83 c4 10             	add    $0x10,%esp
80103a3f:	be 00 00 00 00       	mov    $0x0,%esi
80103a44:	eb 14                	jmp    80103a5a <procdump+0xa0>
        cprintf(" %p", pc[i]);
80103a46:	83 ec 08             	sub    $0x8,%esp
80103a49:	50                   	push   %eax
80103a4a:	68 a1 68 10 80       	push   $0x801068a1
80103a4f:	e8 d5 cb ff ff       	call   80100629 <cprintf>
      for(i=0; i<10 && pc[i] != 0; i++)
80103a54:	83 c6 01             	add    $0x1,%esi
80103a57:	83 c4 10             	add    $0x10,%esp
80103a5a:	83 fe 09             	cmp    $0x9,%esi
80103a5d:	7f 8e                	jg     801039ed <procdump+0x33>
80103a5f:	8b 44 b5 d0          	mov    -0x30(%ebp,%esi,4),%eax
80103a63:	85 c0                	test   %eax,%eax
80103a65:	75 df                	jne    80103a46 <procdump+0x8c>
80103a67:	eb 84                	jmp    801039ed <procdump+0x33>
  }
}
80103a69:	8d 65 f8             	lea    -0x8(%ebp),%esp
80103a6c:	5b                   	pop    %ebx
80103a6d:	5e                   	pop    %esi
80103a6e:	5d                   	pop    %ebp
80103a6f:	c3                   	ret    

80103a70 <initsleeplock>:
80103a70:	55                   	push   %ebp
80103a71:	89 e5                	mov    %esp,%ebp
80103a73:	53                   	push   %ebx
80103a74:	83 ec 0c             	sub    $0xc,%esp
80103a77:	8b 5d 08             	mov    0x8(%ebp),%ebx
80103a7a:	68 c4 6e 10 80       	push   $0x80106ec4
80103a7f:	8d 43 04             	lea    0x4(%ebx),%eax
80103a82:	50                   	push   %eax
80103a83:	e8 f3 00 00 00       	call   80103b7b <initlock>
80103a88:	8b 45 0c             	mov    0xc(%ebp),%eax
80103a8b:	89 43 38             	mov    %eax,0x38(%ebx)
80103a8e:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
80103a94:	c7 43 3c 00 00 00 00 	movl   $0x0,0x3c(%ebx)
80103a9b:	83 c4 10             	add    $0x10,%esp
80103a9e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80103aa1:	c9                   	leave  
80103aa2:	c3                   	ret    

80103aa3 <acquiresleep>:
80103aa3:	55                   	push   %ebp
80103aa4:	89 e5                	mov    %esp,%ebp
80103aa6:	56                   	push   %esi
80103aa7:	53                   	push   %ebx
80103aa8:	8b 5d 08             	mov    0x8(%ebp),%ebx
80103aab:	8d 73 04             	lea    0x4(%ebx),%esi
80103aae:	83 ec 0c             	sub    $0xc,%esp
80103ab1:	56                   	push   %esi
80103ab2:	e8 00 02 00 00       	call   80103cb7 <acquire>
80103ab7:	83 c4 10             	add    $0x10,%esp
80103aba:	eb 0d                	jmp    80103ac9 <acquiresleep+0x26>
80103abc:	83 ec 08             	sub    $0x8,%esp
80103abf:	56                   	push   %esi
80103ac0:	53                   	push   %ebx
80103ac1:	e8 e2 fc ff ff       	call   801037a8 <sleep>
80103ac6:	83 c4 10             	add    $0x10,%esp
80103ac9:	83 3b 00             	cmpl   $0x0,(%ebx)
80103acc:	75 ee                	jne    80103abc <acquiresleep+0x19>
80103ace:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
80103ad4:	e8 07 f8 ff ff       	call   801032e0 <myproc>
80103ad9:	8b 40 10             	mov    0x10(%eax),%eax
80103adc:	89 43 3c             	mov    %eax,0x3c(%ebx)
80103adf:	83 ec 0c             	sub    $0xc,%esp
80103ae2:	56                   	push   %esi
80103ae3:	e8 34 02 00 00       	call   80103d1c <release>
80103ae8:	83 c4 10             	add    $0x10,%esp
80103aeb:	8d 65 f8             	lea    -0x8(%ebp),%esp
80103aee:	5b                   	pop    %ebx
80103aef:	5e                   	pop    %esi
80103af0:	5d                   	pop    %ebp
80103af1:	c3                   	ret    

80103af2 <releasesleep>:
80103af2:	55                   	push   %ebp
80103af3:	89 e5                	mov    %esp,%ebp
80103af5:	56                   	push   %esi
80103af6:	53                   	push   %ebx
80103af7:	8b 5d 08             	mov    0x8(%ebp),%ebx
80103afa:	8d 73 04             	lea    0x4(%ebx),%esi
80103afd:	83 ec 0c             	sub    $0xc,%esp
80103b00:	56                   	push   %esi
80103b01:	e8 b1 01 00 00       	call   80103cb7 <acquire>
80103b06:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
80103b0c:	c7 43 3c 00 00 00 00 	movl   $0x0,0x3c(%ebx)
80103b13:	89 1c 24             	mov    %ebx,(%esp)
80103b16:	e8 fa fd ff ff       	call   80103915 <wakeup>
80103b1b:	89 34 24             	mov    %esi,(%esp)
80103b1e:	e8 f9 01 00 00       	call   80103d1c <release>
80103b23:	83 c4 10             	add    $0x10,%esp
80103b26:	8d 65 f8             	lea    -0x8(%ebp),%esp
80103b29:	5b                   	pop    %ebx
80103b2a:	5e                   	pop    %esi
80103b2b:	5d                   	pop    %ebp
80103b2c:	c3                   	ret    

80103b2d <holdingsleep>:
80103b2d:	55                   	push   %ebp
80103b2e:	89 e5                	mov    %esp,%ebp
80103b30:	56                   	push   %esi
80103b31:	53                   	push   %ebx
80103b32:	8b 5d 08             	mov    0x8(%ebp),%ebx
80103b35:	8d 73 04             	lea    0x4(%ebx),%esi
80103b38:	83 ec 0c             	sub    $0xc,%esp
80103b3b:	56                   	push   %esi
80103b3c:	e8 76 01 00 00       	call   80103cb7 <acquire>
80103b41:	83 c4 10             	add    $0x10,%esp
80103b44:	83 3b 00             	cmpl   $0x0,(%ebx)
80103b47:	75 17                	jne    80103b60 <holdingsleep+0x33>
80103b49:	bb 00 00 00 00       	mov    $0x0,%ebx
80103b4e:	83 ec 0c             	sub    $0xc,%esp
80103b51:	56                   	push   %esi
80103b52:	e8 c5 01 00 00       	call   80103d1c <release>
80103b57:	89 d8                	mov    %ebx,%eax
80103b59:	8d 65 f8             	lea    -0x8(%ebp),%esp
80103b5c:	5b                   	pop    %ebx
80103b5d:	5e                   	pop    %esi
80103b5e:	5d                   	pop    %ebp
80103b5f:	c3                   	ret    
80103b60:	8b 5b 3c             	mov    0x3c(%ebx),%ebx
80103b63:	e8 78 f7 ff ff       	call   801032e0 <myproc>
80103b68:	3b 58 10             	cmp    0x10(%eax),%ebx
80103b6b:	74 07                	je     80103b74 <holdingsleep+0x47>
80103b6d:	bb 00 00 00 00       	mov    $0x0,%ebx
80103b72:	eb da                	jmp    80103b4e <holdingsleep+0x21>
80103b74:	bb 01 00 00 00       	mov    $0x1,%ebx
80103b79:	eb d3                	jmp    80103b4e <holdingsleep+0x21>

80103b7b <initlock>:
80103b7b:	55                   	push   %ebp
80103b7c:	89 e5                	mov    %esp,%ebp
80103b7e:	8b 45 08             	mov    0x8(%ebp),%eax
80103b81:	8b 55 0c             	mov    0xc(%ebp),%edx
80103b84:	89 50 04             	mov    %edx,0x4(%eax)
80103b87:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
80103b8d:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
80103b94:	5d                   	pop    %ebp
80103b95:	c3                   	ret    

80103b96 <getcallerpcs>:
80103b96:	55                   	push   %ebp
80103b97:	89 e5                	mov    %esp,%ebp
80103b99:	53                   	push   %ebx
80103b9a:	8b 4d 0c             	mov    0xc(%ebp),%ecx
80103b9d:	8b 45 08             	mov    0x8(%ebp),%eax
80103ba0:	8d 50 f8             	lea    -0x8(%eax),%edx
80103ba3:	b8 00 00 00 00       	mov    $0x0,%eax
80103ba8:	83 f8 09             	cmp    $0x9,%eax
80103bab:	7f 25                	jg     80103bd2 <getcallerpcs+0x3c>
80103bad:	8d 9a 00 00 00 80    	lea    -0x80000000(%edx),%ebx
80103bb3:	81 fb fe ff ff 7f    	cmp    $0x7ffffffe,%ebx
80103bb9:	77 17                	ja     80103bd2 <getcallerpcs+0x3c>
80103bbb:	8b 5a 04             	mov    0x4(%edx),%ebx
80103bbe:	89 1c 81             	mov    %ebx,(%ecx,%eax,4)
80103bc1:	8b 12                	mov    (%edx),%edx
80103bc3:	83 c0 01             	add    $0x1,%eax
80103bc6:	eb e0                	jmp    80103ba8 <getcallerpcs+0x12>
80103bc8:	c7 04 81 00 00 00 00 	movl   $0x0,(%ecx,%eax,4)
80103bcf:	83 c0 01             	add    $0x1,%eax
80103bd2:	83 f8 09             	cmp    $0x9,%eax
80103bd5:	7e f1                	jle    80103bc8 <getcallerpcs+0x32>
80103bd7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80103bda:	c9                   	leave  
80103bdb:	c3                   	ret    

80103bdc <pushcli>:
80103bdc:	55                   	push   %ebp
80103bdd:	89 e5                	mov    %esp,%ebp
80103bdf:	53                   	push   %ebx
80103be0:	83 ec 04             	sub    $0x4,%esp
80103be3:	9c                   	pushf  
80103be4:	5b                   	pop    %ebx
80103be5:	fa                   	cli    
80103be6:	e8 76 f6 ff ff       	call   80103261 <mycpu>
80103beb:	83 b8 a4 00 00 00 00 	cmpl   $0x0,0xa4(%eax)
80103bf2:	74 11                	je     80103c05 <pushcli+0x29>
80103bf4:	e8 68 f6 ff ff       	call   80103261 <mycpu>
80103bf9:	83 80 a4 00 00 00 01 	addl   $0x1,0xa4(%eax)
80103c00:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80103c03:	c9                   	leave  
80103c04:	c3                   	ret    
80103c05:	e8 57 f6 ff ff       	call   80103261 <mycpu>
80103c0a:	81 e3 00 02 00 00    	and    $0x200,%ebx
80103c10:	89 98 a8 00 00 00    	mov    %ebx,0xa8(%eax)
80103c16:	eb dc                	jmp    80103bf4 <pushcli+0x18>

80103c18 <popcli>:
80103c18:	55                   	push   %ebp
80103c19:	89 e5                	mov    %esp,%ebp
80103c1b:	83 ec 08             	sub    $0x8,%esp
80103c1e:	9c                   	pushf  
80103c1f:	58                   	pop    %eax
80103c20:	f6 c4 02             	test   $0x2,%ah
80103c23:	75 28                	jne    80103c4d <popcli+0x35>
80103c25:	e8 37 f6 ff ff       	call   80103261 <mycpu>
80103c2a:	8b 88 a4 00 00 00    	mov    0xa4(%eax),%ecx
80103c30:	8d 51 ff             	lea    -0x1(%ecx),%edx
80103c33:	89 90 a4 00 00 00    	mov    %edx,0xa4(%eax)
80103c39:	85 d2                	test   %edx,%edx
80103c3b:	78 1d                	js     80103c5a <popcli+0x42>
80103c3d:	e8 1f f6 ff ff       	call   80103261 <mycpu>
80103c42:	83 b8 a4 00 00 00 00 	cmpl   $0x0,0xa4(%eax)
80103c49:	74 1c                	je     80103c67 <popcli+0x4f>
80103c4b:	c9                   	leave  
80103c4c:	c3                   	ret    
80103c4d:	83 ec 0c             	sub    $0xc,%esp
80103c50:	68 cf 6e 10 80       	push   $0x80106ecf
80103c55:	e8 02 c7 ff ff       	call   8010035c <panic>
80103c5a:	83 ec 0c             	sub    $0xc,%esp
80103c5d:	68 e6 6e 10 80       	push   $0x80106ee6
80103c62:	e8 f5 c6 ff ff       	call   8010035c <panic>
80103c67:	e8 f5 f5 ff ff       	call   80103261 <mycpu>
80103c6c:	83 b8 a8 00 00 00 00 	cmpl   $0x0,0xa8(%eax)
80103c73:	74 d6                	je     80103c4b <popcli+0x33>
80103c75:	fb                   	sti    
80103c76:	eb d3                	jmp    80103c4b <popcli+0x33>

80103c78 <holding>:
80103c78:	55                   	push   %ebp
80103c79:	89 e5                	mov    %esp,%ebp
80103c7b:	53                   	push   %ebx
80103c7c:	83 ec 04             	sub    $0x4,%esp
80103c7f:	8b 5d 08             	mov    0x8(%ebp),%ebx
80103c82:	e8 55 ff ff ff       	call   80103bdc <pushcli>
80103c87:	83 3b 00             	cmpl   $0x0,(%ebx)
80103c8a:	75 11                	jne    80103c9d <holding+0x25>
80103c8c:	bb 00 00 00 00       	mov    $0x0,%ebx
80103c91:	e8 82 ff ff ff       	call   80103c18 <popcli>
80103c96:	89 d8                	mov    %ebx,%eax
80103c98:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80103c9b:	c9                   	leave  
80103c9c:	c3                   	ret    
80103c9d:	8b 5b 08             	mov    0x8(%ebx),%ebx
80103ca0:	e8 bc f5 ff ff       	call   80103261 <mycpu>
80103ca5:	39 c3                	cmp    %eax,%ebx
80103ca7:	74 07                	je     80103cb0 <holding+0x38>
80103ca9:	bb 00 00 00 00       	mov    $0x0,%ebx
80103cae:	eb e1                	jmp    80103c91 <holding+0x19>
80103cb0:	bb 01 00 00 00       	mov    $0x1,%ebx
80103cb5:	eb da                	jmp    80103c91 <holding+0x19>

80103cb7 <acquire>:
80103cb7:	55                   	push   %ebp
80103cb8:	89 e5                	mov    %esp,%ebp
80103cba:	53                   	push   %ebx
80103cbb:	83 ec 04             	sub    $0x4,%esp
80103cbe:	e8 19 ff ff ff       	call   80103bdc <pushcli>
80103cc3:	83 ec 0c             	sub    $0xc,%esp
80103cc6:	ff 75 08             	pushl  0x8(%ebp)
80103cc9:	e8 aa ff ff ff       	call   80103c78 <holding>
80103cce:	83 c4 10             	add    $0x10,%esp
80103cd1:	85 c0                	test   %eax,%eax
80103cd3:	75 3a                	jne    80103d0f <acquire+0x58>
80103cd5:	8b 55 08             	mov    0x8(%ebp),%edx
80103cd8:	b8 01 00 00 00       	mov    $0x1,%eax
80103cdd:	f0 87 02             	lock xchg %eax,(%edx)
80103ce0:	85 c0                	test   %eax,%eax
80103ce2:	75 f1                	jne    80103cd5 <acquire+0x1e>
80103ce4:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
80103ce9:	8b 5d 08             	mov    0x8(%ebp),%ebx
80103cec:	e8 70 f5 ff ff       	call   80103261 <mycpu>
80103cf1:	89 43 08             	mov    %eax,0x8(%ebx)
80103cf4:	8b 45 08             	mov    0x8(%ebp),%eax
80103cf7:	83 c0 0c             	add    $0xc,%eax
80103cfa:	83 ec 08             	sub    $0x8,%esp
80103cfd:	50                   	push   %eax
80103cfe:	8d 45 08             	lea    0x8(%ebp),%eax
80103d01:	50                   	push   %eax
80103d02:	e8 8f fe ff ff       	call   80103b96 <getcallerpcs>
80103d07:	83 c4 10             	add    $0x10,%esp
80103d0a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80103d0d:	c9                   	leave  
80103d0e:	c3                   	ret    
80103d0f:	83 ec 0c             	sub    $0xc,%esp
80103d12:	68 ed 6e 10 80       	push   $0x80106eed
80103d17:	e8 40 c6 ff ff       	call   8010035c <panic>

80103d1c <release>:
80103d1c:	55                   	push   %ebp
80103d1d:	89 e5                	mov    %esp,%ebp
80103d1f:	53                   	push   %ebx
80103d20:	83 ec 10             	sub    $0x10,%esp
80103d23:	8b 5d 08             	mov    0x8(%ebp),%ebx
80103d26:	53                   	push   %ebx
80103d27:	e8 4c ff ff ff       	call   80103c78 <holding>
80103d2c:	83 c4 10             	add    $0x10,%esp
80103d2f:	85 c0                	test   %eax,%eax
80103d31:	74 23                	je     80103d56 <release+0x3a>
80103d33:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
80103d3a:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
80103d41:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
80103d46:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
80103d4c:	e8 c7 fe ff ff       	call   80103c18 <popcli>
80103d51:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80103d54:	c9                   	leave  
80103d55:	c3                   	ret    
80103d56:	83 ec 0c             	sub    $0xc,%esp
80103d59:	68 f5 6e 10 80       	push   $0x80106ef5
80103d5e:	e8 f9 c5 ff ff       	call   8010035c <panic>

80103d63 <memset>:
80103d63:	55                   	push   %ebp
80103d64:	89 e5                	mov    %esp,%ebp
80103d66:	57                   	push   %edi
80103d67:	53                   	push   %ebx
80103d68:	8b 55 08             	mov    0x8(%ebp),%edx
80103d6b:	8b 45 0c             	mov    0xc(%ebp),%eax
80103d6e:	8b 4d 10             	mov    0x10(%ebp),%ecx
80103d71:	f6 c2 03             	test   $0x3,%dl
80103d74:	75 25                	jne    80103d9b <memset+0x38>
80103d76:	f6 c1 03             	test   $0x3,%cl
80103d79:	75 20                	jne    80103d9b <memset+0x38>
80103d7b:	0f b6 f8             	movzbl %al,%edi
80103d7e:	c1 e9 02             	shr    $0x2,%ecx
80103d81:	c1 e0 18             	shl    $0x18,%eax
80103d84:	89 fb                	mov    %edi,%ebx
80103d86:	c1 e3 10             	shl    $0x10,%ebx
80103d89:	09 d8                	or     %ebx,%eax
80103d8b:	89 fb                	mov    %edi,%ebx
80103d8d:	c1 e3 08             	shl    $0x8,%ebx
80103d90:	09 d8                	or     %ebx,%eax
80103d92:	09 f8                	or     %edi,%eax
80103d94:	89 d7                	mov    %edx,%edi
80103d96:	fc                   	cld    
80103d97:	f3 ab                	rep stos %eax,%es:(%edi)
80103d99:	eb 05                	jmp    80103da0 <memset+0x3d>
80103d9b:	89 d7                	mov    %edx,%edi
80103d9d:	fc                   	cld    
80103d9e:	f3 aa                	rep stos %al,%es:(%edi)
80103da0:	89 d0                	mov    %edx,%eax
80103da2:	5b                   	pop    %ebx
80103da3:	5f                   	pop    %edi
80103da4:	5d                   	pop    %ebp
80103da5:	c3                   	ret    

80103da6 <memcmp>:
80103da6:	55                   	push   %ebp
80103da7:	89 e5                	mov    %esp,%ebp
80103da9:	56                   	push   %esi
80103daa:	53                   	push   %ebx
80103dab:	8b 4d 08             	mov    0x8(%ebp),%ecx
80103dae:	8b 55 0c             	mov    0xc(%ebp),%edx
80103db1:	8b 45 10             	mov    0x10(%ebp),%eax
80103db4:	eb 08                	jmp    80103dbe <memcmp+0x18>
80103db6:	83 c1 01             	add    $0x1,%ecx
80103db9:	83 c2 01             	add    $0x1,%edx
80103dbc:	89 f0                	mov    %esi,%eax
80103dbe:	8d 70 ff             	lea    -0x1(%eax),%esi
80103dc1:	85 c0                	test   %eax,%eax
80103dc3:	74 12                	je     80103dd7 <memcmp+0x31>
80103dc5:	0f b6 01             	movzbl (%ecx),%eax
80103dc8:	0f b6 1a             	movzbl (%edx),%ebx
80103dcb:	38 d8                	cmp    %bl,%al
80103dcd:	74 e7                	je     80103db6 <memcmp+0x10>
80103dcf:	0f b6 c0             	movzbl %al,%eax
80103dd2:	0f b6 db             	movzbl %bl,%ebx
80103dd5:	29 d8                	sub    %ebx,%eax
80103dd7:	5b                   	pop    %ebx
80103dd8:	5e                   	pop    %esi
80103dd9:	5d                   	pop    %ebp
80103dda:	c3                   	ret    

80103ddb <memmove>:
80103ddb:	55                   	push   %ebp
80103ddc:	89 e5                	mov    %esp,%ebp
80103dde:	56                   	push   %esi
80103ddf:	53                   	push   %ebx
80103de0:	8b 75 08             	mov    0x8(%ebp),%esi
80103de3:	8b 55 0c             	mov    0xc(%ebp),%edx
80103de6:	8b 45 10             	mov    0x10(%ebp),%eax
80103de9:	39 f2                	cmp    %esi,%edx
80103deb:	73 3c                	jae    80103e29 <memmove+0x4e>
80103ded:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
80103df0:	39 f1                	cmp    %esi,%ecx
80103df2:	76 39                	jbe    80103e2d <memmove+0x52>
80103df4:	8d 14 06             	lea    (%esi,%eax,1),%edx
80103df7:	eb 0d                	jmp    80103e06 <memmove+0x2b>
80103df9:	83 e9 01             	sub    $0x1,%ecx
80103dfc:	83 ea 01             	sub    $0x1,%edx
80103dff:	0f b6 01             	movzbl (%ecx),%eax
80103e02:	88 02                	mov    %al,(%edx)
80103e04:	89 d8                	mov    %ebx,%eax
80103e06:	8d 58 ff             	lea    -0x1(%eax),%ebx
80103e09:	85 c0                	test   %eax,%eax
80103e0b:	75 ec                	jne    80103df9 <memmove+0x1e>
80103e0d:	eb 14                	jmp    80103e23 <memmove+0x48>
80103e0f:	0f b6 02             	movzbl (%edx),%eax
80103e12:	88 01                	mov    %al,(%ecx)
80103e14:	8d 49 01             	lea    0x1(%ecx),%ecx
80103e17:	8d 52 01             	lea    0x1(%edx),%edx
80103e1a:	89 d8                	mov    %ebx,%eax
80103e1c:	8d 58 ff             	lea    -0x1(%eax),%ebx
80103e1f:	85 c0                	test   %eax,%eax
80103e21:	75 ec                	jne    80103e0f <memmove+0x34>
80103e23:	89 f0                	mov    %esi,%eax
80103e25:	5b                   	pop    %ebx
80103e26:	5e                   	pop    %esi
80103e27:	5d                   	pop    %ebp
80103e28:	c3                   	ret    
80103e29:	89 f1                	mov    %esi,%ecx
80103e2b:	eb ef                	jmp    80103e1c <memmove+0x41>
80103e2d:	89 f1                	mov    %esi,%ecx
80103e2f:	eb eb                	jmp    80103e1c <memmove+0x41>

80103e31 <memcpy>:
80103e31:	55                   	push   %ebp
80103e32:	89 e5                	mov    %esp,%ebp
80103e34:	83 ec 0c             	sub    $0xc,%esp
80103e37:	ff 75 10             	pushl  0x10(%ebp)
80103e3a:	ff 75 0c             	pushl  0xc(%ebp)
80103e3d:	ff 75 08             	pushl  0x8(%ebp)
80103e40:	e8 96 ff ff ff       	call   80103ddb <memmove>
80103e45:	c9                   	leave  
80103e46:	c3                   	ret    

80103e47 <strncmp>:
80103e47:	55                   	push   %ebp
80103e48:	89 e5                	mov    %esp,%ebp
80103e4a:	53                   	push   %ebx
80103e4b:	8b 55 08             	mov    0x8(%ebp),%edx
80103e4e:	8b 4d 0c             	mov    0xc(%ebp),%ecx
80103e51:	8b 45 10             	mov    0x10(%ebp),%eax
80103e54:	eb 09                	jmp    80103e5f <strncmp+0x18>
80103e56:	83 e8 01             	sub    $0x1,%eax
80103e59:	83 c2 01             	add    $0x1,%edx
80103e5c:	83 c1 01             	add    $0x1,%ecx
80103e5f:	85 c0                	test   %eax,%eax
80103e61:	74 0b                	je     80103e6e <strncmp+0x27>
80103e63:	0f b6 1a             	movzbl (%edx),%ebx
80103e66:	84 db                	test   %bl,%bl
80103e68:	74 04                	je     80103e6e <strncmp+0x27>
80103e6a:	3a 19                	cmp    (%ecx),%bl
80103e6c:	74 e8                	je     80103e56 <strncmp+0xf>
80103e6e:	85 c0                	test   %eax,%eax
80103e70:	74 0d                	je     80103e7f <strncmp+0x38>
80103e72:	0f b6 02             	movzbl (%edx),%eax
80103e75:	0f b6 11             	movzbl (%ecx),%edx
80103e78:	29 d0                	sub    %edx,%eax
80103e7a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80103e7d:	c9                   	leave  
80103e7e:	c3                   	ret    
80103e7f:	b8 00 00 00 00       	mov    $0x0,%eax
80103e84:	eb f4                	jmp    80103e7a <strncmp+0x33>

80103e86 <strncpy>:
80103e86:	55                   	push   %ebp
80103e87:	89 e5                	mov    %esp,%ebp
80103e89:	57                   	push   %edi
80103e8a:	56                   	push   %esi
80103e8b:	53                   	push   %ebx
80103e8c:	8b 7d 08             	mov    0x8(%ebp),%edi
80103e8f:	8b 4d 0c             	mov    0xc(%ebp),%ecx
80103e92:	8b 45 10             	mov    0x10(%ebp),%eax
80103e95:	89 fa                	mov    %edi,%edx
80103e97:	eb 04                	jmp    80103e9d <strncpy+0x17>
80103e99:	89 f1                	mov    %esi,%ecx
80103e9b:	89 da                	mov    %ebx,%edx
80103e9d:	89 c3                	mov    %eax,%ebx
80103e9f:	83 e8 01             	sub    $0x1,%eax
80103ea2:	85 db                	test   %ebx,%ebx
80103ea4:	7e 11                	jle    80103eb7 <strncpy+0x31>
80103ea6:	8d 71 01             	lea    0x1(%ecx),%esi
80103ea9:	8d 5a 01             	lea    0x1(%edx),%ebx
80103eac:	0f b6 09             	movzbl (%ecx),%ecx
80103eaf:	88 0a                	mov    %cl,(%edx)
80103eb1:	84 c9                	test   %cl,%cl
80103eb3:	75 e4                	jne    80103e99 <strncpy+0x13>
80103eb5:	89 da                	mov    %ebx,%edx
80103eb7:	8d 48 ff             	lea    -0x1(%eax),%ecx
80103eba:	85 c0                	test   %eax,%eax
80103ebc:	7e 0a                	jle    80103ec8 <strncpy+0x42>
80103ebe:	c6 02 00             	movb   $0x0,(%edx)
80103ec1:	89 c8                	mov    %ecx,%eax
80103ec3:	8d 52 01             	lea    0x1(%edx),%edx
80103ec6:	eb ef                	jmp    80103eb7 <strncpy+0x31>
80103ec8:	89 f8                	mov    %edi,%eax
80103eca:	5b                   	pop    %ebx
80103ecb:	5e                   	pop    %esi
80103ecc:	5f                   	pop    %edi
80103ecd:	5d                   	pop    %ebp
80103ece:	c3                   	ret    

80103ecf <safestrcpy>:
80103ecf:	55                   	push   %ebp
80103ed0:	89 e5                	mov    %esp,%ebp
80103ed2:	57                   	push   %edi
80103ed3:	56                   	push   %esi
80103ed4:	53                   	push   %ebx
80103ed5:	8b 7d 08             	mov    0x8(%ebp),%edi
80103ed8:	8b 4d 0c             	mov    0xc(%ebp),%ecx
80103edb:	8b 45 10             	mov    0x10(%ebp),%eax
80103ede:	85 c0                	test   %eax,%eax
80103ee0:	7e 23                	jle    80103f05 <safestrcpy+0x36>
80103ee2:	89 fa                	mov    %edi,%edx
80103ee4:	eb 04                	jmp    80103eea <safestrcpy+0x1b>
80103ee6:	89 f1                	mov    %esi,%ecx
80103ee8:	89 da                	mov    %ebx,%edx
80103eea:	83 e8 01             	sub    $0x1,%eax
80103eed:	85 c0                	test   %eax,%eax
80103eef:	7e 11                	jle    80103f02 <safestrcpy+0x33>
80103ef1:	8d 71 01             	lea    0x1(%ecx),%esi
80103ef4:	8d 5a 01             	lea    0x1(%edx),%ebx
80103ef7:	0f b6 09             	movzbl (%ecx),%ecx
80103efa:	88 0a                	mov    %cl,(%edx)
80103efc:	84 c9                	test   %cl,%cl
80103efe:	75 e6                	jne    80103ee6 <safestrcpy+0x17>
80103f00:	89 da                	mov    %ebx,%edx
80103f02:	c6 02 00             	movb   $0x0,(%edx)
80103f05:	89 f8                	mov    %edi,%eax
80103f07:	5b                   	pop    %ebx
80103f08:	5e                   	pop    %esi
80103f09:	5f                   	pop    %edi
80103f0a:	5d                   	pop    %ebp
80103f0b:	c3                   	ret    

80103f0c <strlen>:
80103f0c:	55                   	push   %ebp
80103f0d:	89 e5                	mov    %esp,%ebp
80103f0f:	8b 55 08             	mov    0x8(%ebp),%edx
80103f12:	b8 00 00 00 00       	mov    $0x0,%eax
80103f17:	eb 03                	jmp    80103f1c <strlen+0x10>
80103f19:	83 c0 01             	add    $0x1,%eax
80103f1c:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
80103f20:	75 f7                	jne    80103f19 <strlen+0xd>
80103f22:	5d                   	pop    %ebp
80103f23:	c3                   	ret    

80103f24 <swtch>:
80103f24:	8b 44 24 04          	mov    0x4(%esp),%eax
80103f28:	8b 54 24 08          	mov    0x8(%esp),%edx
80103f2c:	55                   	push   %ebp
80103f2d:	53                   	push   %ebx
80103f2e:	56                   	push   %esi
80103f2f:	57                   	push   %edi
80103f30:	89 20                	mov    %esp,(%eax)
80103f32:	89 d4                	mov    %edx,%esp
80103f34:	5f                   	pop    %edi
80103f35:	5e                   	pop    %esi
80103f36:	5b                   	pop    %ebx
80103f37:	5d                   	pop    %ebp
80103f38:	c3                   	ret    

80103f39 <fetchint>:
// to a saved program counter, and then the first argument.

// Fetch the int at addr from the current process.
int
fetchint(uint addr, int *ip)
{
80103f39:	f3 0f 1e fb          	endbr32 
80103f3d:	55                   	push   %ebp
80103f3e:	89 e5                	mov    %esp,%ebp
80103f40:	53                   	push   %ebx
80103f41:	83 ec 04             	sub    $0x4,%esp
80103f44:	8b 5d 08             	mov    0x8(%ebp),%ebx
  struct proc *curproc = myproc();
80103f47:	e8 94 f3 ff ff       	call   801032e0 <myproc>

  if(addr >= curproc->sz || addr+4 > curproc->sz)
80103f4c:	8b 00                	mov    (%eax),%eax
80103f4e:	39 d8                	cmp    %ebx,%eax
80103f50:	76 19                	jbe    80103f6b <fetchint+0x32>
80103f52:	8d 53 04             	lea    0x4(%ebx),%edx
80103f55:	39 d0                	cmp    %edx,%eax
80103f57:	72 19                	jb     80103f72 <fetchint+0x39>
    return -1;
  *ip = *(int*)(addr);
80103f59:	8b 13                	mov    (%ebx),%edx
80103f5b:	8b 45 0c             	mov    0xc(%ebp),%eax
80103f5e:	89 10                	mov    %edx,(%eax)
  return 0;
80103f60:	b8 00 00 00 00       	mov    $0x0,%eax
}
80103f65:	83 c4 04             	add    $0x4,%esp
80103f68:	5b                   	pop    %ebx
80103f69:	5d                   	pop    %ebp
80103f6a:	c3                   	ret    
    return -1;
80103f6b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80103f70:	eb f3                	jmp    80103f65 <fetchint+0x2c>
80103f72:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80103f77:	eb ec                	jmp    80103f65 <fetchint+0x2c>

80103f79 <fetchstr>:
// Fetch the nul-terminated string at addr from the current process.
// Doesn't actually copy the string - just sets *pp to point at it.
// Returns length of string, not including nul.
int
fetchstr(uint addr, char **pp)
{
80103f79:	f3 0f 1e fb          	endbr32 
80103f7d:	55                   	push   %ebp
80103f7e:	89 e5                	mov    %esp,%ebp
80103f80:	53                   	push   %ebx
80103f81:	83 ec 04             	sub    $0x4,%esp
80103f84:	8b 5d 08             	mov    0x8(%ebp),%ebx
  char *s, *ep;
  struct proc *curproc = myproc();
80103f87:	e8 54 f3 ff ff       	call   801032e0 <myproc>

  if(addr >= curproc->sz)
80103f8c:	39 18                	cmp    %ebx,(%eax)
80103f8e:	76 26                	jbe    80103fb6 <fetchstr+0x3d>
    return -1;
  *pp = (char*)addr;
80103f90:	8b 55 0c             	mov    0xc(%ebp),%edx
80103f93:	89 1a                	mov    %ebx,(%edx)
  ep = (char*)curproc->sz;
80103f95:	8b 10                	mov    (%eax),%edx
  for(s = *pp; s < ep; s++){
80103f97:	89 d8                	mov    %ebx,%eax
80103f99:	39 d0                	cmp    %edx,%eax
80103f9b:	73 0e                	jae    80103fab <fetchstr+0x32>
    if(*s == 0)
80103f9d:	80 38 00             	cmpb   $0x0,(%eax)
80103fa0:	74 05                	je     80103fa7 <fetchstr+0x2e>
  for(s = *pp; s < ep; s++){
80103fa2:	83 c0 01             	add    $0x1,%eax
80103fa5:	eb f2                	jmp    80103f99 <fetchstr+0x20>
      return s - *pp;
80103fa7:	29 d8                	sub    %ebx,%eax
80103fa9:	eb 05                	jmp    80103fb0 <fetchstr+0x37>
  }
  return -1;
80103fab:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
80103fb0:	83 c4 04             	add    $0x4,%esp
80103fb3:	5b                   	pop    %ebx
80103fb4:	5d                   	pop    %ebp
80103fb5:	c3                   	ret    
    return -1;
80103fb6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80103fbb:	eb f3                	jmp    80103fb0 <fetchstr+0x37>

80103fbd <argint>:

// Fetch the nth 32-bit system call argument.
int
argint(int n, int *ip)
{
80103fbd:	f3 0f 1e fb          	endbr32 
80103fc1:	55                   	push   %ebp
80103fc2:	89 e5                	mov    %esp,%ebp
80103fc4:	83 ec 08             	sub    $0x8,%esp
  return fetchint((myproc()->tf->esp) + 4 + 4*n, ip);
80103fc7:	e8 14 f3 ff ff       	call   801032e0 <myproc>
80103fcc:	8b 50 18             	mov    0x18(%eax),%edx
80103fcf:	8b 45 08             	mov    0x8(%ebp),%eax
80103fd2:	c1 e0 02             	shl    $0x2,%eax
80103fd5:	03 42 44             	add    0x44(%edx),%eax
80103fd8:	83 ec 08             	sub    $0x8,%esp
80103fdb:	ff 75 0c             	pushl  0xc(%ebp)
80103fde:	83 c0 04             	add    $0x4,%eax
80103fe1:	50                   	push   %eax
80103fe2:	e8 52 ff ff ff       	call   80103f39 <fetchint>
}
80103fe7:	c9                   	leave  
80103fe8:	c3                   	ret    

80103fe9 <argptr>:
// Fetch the nth word-sized system call argument as a pointer
// to a block of memory of size bytes.  Check that the pointer
// lies within the process address space.
int
argptr(int n, void **pp, int size)
{
80103fe9:	f3 0f 1e fb          	endbr32 
80103fed:	55                   	push   %ebp
80103fee:	89 e5                	mov    %esp,%ebp
80103ff0:	56                   	push   %esi
80103ff1:	53                   	push   %ebx
80103ff2:	83 ec 10             	sub    $0x10,%esp
80103ff5:	8b 5d 10             	mov    0x10(%ebp),%ebx
  int i;
  struct proc *curproc = myproc();
80103ff8:	e8 e3 f2 ff ff       	call   801032e0 <myproc>
80103ffd:	89 c6                	mov    %eax,%esi
 
  if(argint(n, &i) < 0)
80103fff:	83 ec 08             	sub    $0x8,%esp
80104002:	8d 45 f4             	lea    -0xc(%ebp),%eax
80104005:	50                   	push   %eax
80104006:	ff 75 08             	pushl  0x8(%ebp)
80104009:	e8 af ff ff ff       	call   80103fbd <argint>
8010400e:	83 c4 10             	add    $0x10,%esp
80104011:	85 c0                	test   %eax,%eax
80104013:	78 24                	js     80104039 <argptr+0x50>
    return -1;
  if(size < 0 || (uint)i >= curproc->sz || (uint)i+size > curproc->sz)
80104015:	85 db                	test   %ebx,%ebx
80104017:	78 27                	js     80104040 <argptr+0x57>
80104019:	8b 16                	mov    (%esi),%edx
8010401b:	8b 45 f4             	mov    -0xc(%ebp),%eax
8010401e:	39 c2                	cmp    %eax,%edx
80104020:	76 25                	jbe    80104047 <argptr+0x5e>
80104022:	01 c3                	add    %eax,%ebx
80104024:	39 da                	cmp    %ebx,%edx
80104026:	72 26                	jb     8010404e <argptr+0x65>
    return -1;
  *pp = (void*)i;
80104028:	8b 55 0c             	mov    0xc(%ebp),%edx
8010402b:	89 02                	mov    %eax,(%edx)
  return 0;
8010402d:	b8 00 00 00 00       	mov    $0x0,%eax
}
80104032:	8d 65 f8             	lea    -0x8(%ebp),%esp
80104035:	5b                   	pop    %ebx
80104036:	5e                   	pop    %esi
80104037:	5d                   	pop    %ebp
80104038:	c3                   	ret    
    return -1;
80104039:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010403e:	eb f2                	jmp    80104032 <argptr+0x49>
    return -1;
80104040:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104045:	eb eb                	jmp    80104032 <argptr+0x49>
80104047:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010404c:	eb e4                	jmp    80104032 <argptr+0x49>
8010404e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104053:	eb dd                	jmp    80104032 <argptr+0x49>

80104055 <argstr>:
// Check that the pointer is valid and the string is nul-terminated.
// (There is no shared writable memory, so the string can't change
// between this check and being used by the kernel.)
int
argstr(int n, char **pp)
{
80104055:	f3 0f 1e fb          	endbr32 
80104059:	55                   	push   %ebp
8010405a:	89 e5                	mov    %esp,%ebp
8010405c:	83 ec 20             	sub    $0x20,%esp
  int addr;
  if(argint(n, &addr) < 0)
8010405f:	8d 45 f4             	lea    -0xc(%ebp),%eax
80104062:	50                   	push   %eax
80104063:	ff 75 08             	pushl  0x8(%ebp)
80104066:	e8 52 ff ff ff       	call   80103fbd <argint>
8010406b:	83 c4 10             	add    $0x10,%esp
8010406e:	85 c0                	test   %eax,%eax
80104070:	78 13                	js     80104085 <argstr+0x30>
    return -1;
  return fetchstr(addr, pp);
80104072:	83 ec 08             	sub    $0x8,%esp
80104075:	ff 75 0c             	pushl  0xc(%ebp)
80104078:	ff 75 f4             	pushl  -0xc(%ebp)
8010407b:	e8 f9 fe ff ff       	call   80103f79 <fetchstr>
80104080:	83 c4 10             	add    $0x10,%esp
}
80104083:	c9                   	leave  
80104084:	c3                   	ret    
    return -1;
80104085:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010408a:	eb f7                	jmp    80104083 <argstr+0x2e>

8010408c <syscall>:
[SYS_date]   sys_date,
};

void
syscall(void)
{
8010408c:	f3 0f 1e fb          	endbr32 
80104090:	55                   	push   %ebp
80104091:	89 e5                	mov    %esp,%ebp
80104093:	53                   	push   %ebx
80104094:	83 ec 04             	sub    $0x4,%esp
  int num;
  struct proc *curproc = myproc();
80104097:	e8 44 f2 ff ff       	call   801032e0 <myproc>
8010409c:	89 c3                	mov    %eax,%ebx

  num = curproc->tf->eax;
8010409e:	8b 40 18             	mov    0x18(%eax),%eax
801040a1:	8b 40 1c             	mov    0x1c(%eax),%eax
  if(num > 0 && num < NELEM(syscalls) && syscalls[num]) {
801040a4:	8d 50 ff             	lea    -0x1(%eax),%edx
801040a7:	83 fa 16             	cmp    $0x16,%edx
801040aa:	77 17                	ja     801040c3 <syscall+0x37>
801040ac:	8b 14 85 20 6f 10 80 	mov    -0x7fef90e0(,%eax,4),%edx
801040b3:	85 d2                	test   %edx,%edx
801040b5:	74 0c                	je     801040c3 <syscall+0x37>
    curproc->tf->eax = syscalls[num]();
801040b7:	ff d2                	call   *%edx
801040b9:	89 c2                	mov    %eax,%edx
801040bb:	8b 43 18             	mov    0x18(%ebx),%eax
801040be:	89 50 1c             	mov    %edx,0x1c(%eax)
801040c1:	eb 1f                	jmp    801040e2 <syscall+0x56>
  } else {
    cprintf("%d %s: unknown sys call %d\n",
            curproc->pid, curproc->name, num);
801040c3:	8d 53 6c             	lea    0x6c(%ebx),%edx
    cprintf("%d %s: unknown sys call %d\n",
801040c6:	50                   	push   %eax
801040c7:	52                   	push   %edx
801040c8:	ff 73 10             	pushl  0x10(%ebx)
801040cb:	68 fd 6e 10 80       	push   $0x80106efd
801040d0:	e8 54 c5 ff ff       	call   80100629 <cprintf>
    curproc->tf->eax = -1;
801040d5:	8b 43 18             	mov    0x18(%ebx),%eax
801040d8:	c7 40 1c ff ff ff ff 	movl   $0xffffffff,0x1c(%eax)
801040df:	83 c4 10             	add    $0x10,%esp
  }
}
801040e2:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801040e5:	c9                   	leave  
801040e6:	c3                   	ret    

801040e7 <argfd>:

// Fetch the nth word-sized system call argument as a file descriptor
// and return both the descriptor and the corresponding struct file.
static int
argfd(int n, int *pfd, struct file **pf)
{
801040e7:	55                   	push   %ebp
801040e8:	89 e5                	mov    %esp,%ebp
801040ea:	56                   	push   %esi
801040eb:	53                   	push   %ebx
801040ec:	83 ec 18             	sub    $0x18,%esp
801040ef:	89 d6                	mov    %edx,%esi
801040f1:	89 cb                	mov    %ecx,%ebx
  int fd;
  struct file *f;

  if(argint(n, &fd) < 0)
801040f3:	8d 55 f4             	lea    -0xc(%ebp),%edx
801040f6:	52                   	push   %edx
801040f7:	50                   	push   %eax
801040f8:	e8 c0 fe ff ff       	call   80103fbd <argint>
801040fd:	83 c4 10             	add    $0x10,%esp
80104100:	85 c0                	test   %eax,%eax
80104102:	78 35                	js     80104139 <argfd+0x52>
    return -1;
  if(fd < 0 || fd >= NOFILE || (f=myproc()->ofile[fd]) == 0)
80104104:	83 7d f4 0f          	cmpl   $0xf,-0xc(%ebp)
80104108:	77 28                	ja     80104132 <argfd+0x4b>
8010410a:	e8 d1 f1 ff ff       	call   801032e0 <myproc>
8010410f:	8b 55 f4             	mov    -0xc(%ebp),%edx
80104112:	8b 44 90 28          	mov    0x28(%eax,%edx,4),%eax
80104116:	85 c0                	test   %eax,%eax
80104118:	74 18                	je     80104132 <argfd+0x4b>
    return -1;
  if(pfd)
8010411a:	85 f6                	test   %esi,%esi
8010411c:	74 02                	je     80104120 <argfd+0x39>
    *pfd = fd;
8010411e:	89 16                	mov    %edx,(%esi)
  if(pf)
80104120:	85 db                	test   %ebx,%ebx
80104122:	74 1c                	je     80104140 <argfd+0x59>
    *pf = f;
80104124:	89 03                	mov    %eax,(%ebx)
  return 0;
80104126:	b8 00 00 00 00       	mov    $0x0,%eax
}
8010412b:	8d 65 f8             	lea    -0x8(%ebp),%esp
8010412e:	5b                   	pop    %ebx
8010412f:	5e                   	pop    %esi
80104130:	5d                   	pop    %ebp
80104131:	c3                   	ret    
    return -1;
80104132:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104137:	eb f2                	jmp    8010412b <argfd+0x44>
    return -1;
80104139:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010413e:	eb eb                	jmp    8010412b <argfd+0x44>
  return 0;
80104140:	b8 00 00 00 00       	mov    $0x0,%eax
80104145:	eb e4                	jmp    8010412b <argfd+0x44>

80104147 <fdalloc>:

// Allocate a file descriptor for the given file.
// Takes over file reference from caller on success.
static int
fdalloc(struct file *f)
{
80104147:	55                   	push   %ebp
80104148:	89 e5                	mov    %esp,%ebp
8010414a:	53                   	push   %ebx
8010414b:	83 ec 04             	sub    $0x4,%esp
8010414e:	89 c3                	mov    %eax,%ebx
  int fd;
  struct proc *curproc = myproc();
80104150:	e8 8b f1 ff ff       	call   801032e0 <myproc>
80104155:	89 c2                	mov    %eax,%edx

  for(fd = 0; fd < NOFILE; fd++){
80104157:	b8 00 00 00 00       	mov    $0x0,%eax
8010415c:	83 f8 0f             	cmp    $0xf,%eax
8010415f:	7f 12                	jg     80104173 <fdalloc+0x2c>
    if(curproc->ofile[fd] == 0){
80104161:	83 7c 82 28 00       	cmpl   $0x0,0x28(%edx,%eax,4)
80104166:	74 05                	je     8010416d <fdalloc+0x26>
  for(fd = 0; fd < NOFILE; fd++){
80104168:	83 c0 01             	add    $0x1,%eax
8010416b:	eb ef                	jmp    8010415c <fdalloc+0x15>
      curproc->ofile[fd] = f;
8010416d:	89 5c 82 28          	mov    %ebx,0x28(%edx,%eax,4)
      return fd;
80104171:	eb 05                	jmp    80104178 <fdalloc+0x31>
    }
  }
  return -1;
80104173:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
80104178:	83 c4 04             	add    $0x4,%esp
8010417b:	5b                   	pop    %ebx
8010417c:	5d                   	pop    %ebp
8010417d:	c3                   	ret    

8010417e <isdirempty>:
}

// Is the directory dp empty except for "." and ".." ?
static int
isdirempty(struct inode *dp)
{
8010417e:	55                   	push   %ebp
8010417f:	89 e5                	mov    %esp,%ebp
80104181:	56                   	push   %esi
80104182:	53                   	push   %ebx
80104183:	83 ec 10             	sub    $0x10,%esp
80104186:	89 c3                	mov    %eax,%ebx
  int off;
  struct dirent de;

  for(off=2*sizeof(de); off<dp->size; off+=sizeof(de)){
80104188:	b8 20 00 00 00       	mov    $0x20,%eax
8010418d:	89 c6                	mov    %eax,%esi
8010418f:	39 43 58             	cmp    %eax,0x58(%ebx)
80104192:	76 2e                	jbe    801041c2 <isdirempty+0x44>
    if(readi(dp, (char*)&de, off, sizeof(de)) != sizeof(de))
80104194:	6a 10                	push   $0x10
80104196:	50                   	push   %eax
80104197:	8d 45 e8             	lea    -0x18(%ebp),%eax
8010419a:	50                   	push   %eax
8010419b:	53                   	push   %ebx
8010419c:	e8 4a d6 ff ff       	call   801017eb <readi>
801041a1:	83 c4 10             	add    $0x10,%esp
801041a4:	83 f8 10             	cmp    $0x10,%eax
801041a7:	75 0c                	jne    801041b5 <isdirempty+0x37>
      panic("isdirempty: readi");
    if(de.inum != 0)
801041a9:	66 83 7d e8 00       	cmpw   $0x0,-0x18(%ebp)
801041ae:	75 1e                	jne    801041ce <isdirempty+0x50>
  for(off=2*sizeof(de); off<dp->size; off+=sizeof(de)){
801041b0:	8d 46 10             	lea    0x10(%esi),%eax
801041b3:	eb d8                	jmp    8010418d <isdirempty+0xf>
      panic("isdirempty: readi");
801041b5:	83 ec 0c             	sub    $0xc,%esp
801041b8:	68 80 6f 10 80       	push   $0x80106f80
801041bd:	e8 9a c1 ff ff       	call   8010035c <panic>
      return 0;
  }
  return 1;
801041c2:	b8 01 00 00 00       	mov    $0x1,%eax
}
801041c7:	8d 65 f8             	lea    -0x8(%ebp),%esp
801041ca:	5b                   	pop    %ebx
801041cb:	5e                   	pop    %esi
801041cc:	5d                   	pop    %ebp
801041cd:	c3                   	ret    
      return 0;
801041ce:	b8 00 00 00 00       	mov    $0x0,%eax
801041d3:	eb f2                	jmp    801041c7 <isdirempty+0x49>

801041d5 <create>:
  return -1;
}

static struct inode*
create(char *path, short type, short major, short minor)
{
801041d5:	55                   	push   %ebp
801041d6:	89 e5                	mov    %esp,%ebp
801041d8:	57                   	push   %edi
801041d9:	56                   	push   %esi
801041da:	53                   	push   %ebx
801041db:	83 ec 44             	sub    $0x44,%esp
801041de:	89 55 c4             	mov    %edx,-0x3c(%ebp)
801041e1:	89 4d c0             	mov    %ecx,-0x40(%ebp)
801041e4:	8b 7d 08             	mov    0x8(%ebp),%edi
  uint off;
  struct inode *ip, *dp;
  char name[DIRSIZ];

  if((dp = nameiparent(path, name)) == 0)
801041e7:	8d 55 d6             	lea    -0x2a(%ebp),%edx
801041ea:	52                   	push   %edx
801041eb:	50                   	push   %eax
801041ec:	e8 95 da ff ff       	call   80101c86 <nameiparent>
801041f1:	89 c6                	mov    %eax,%esi
801041f3:	83 c4 10             	add    $0x10,%esp
801041f6:	85 c0                	test   %eax,%eax
801041f8:	0f 84 35 01 00 00    	je     80104333 <create+0x15e>
    return 0;
  ilock(dp);
801041fe:	83 ec 0c             	sub    $0xc,%esp
80104201:	50                   	push   %eax
80104202:	e8 de d3 ff ff       	call   801015e5 <ilock>

  if((ip = dirlookup(dp, name, &off)) != 0){
80104207:	83 c4 0c             	add    $0xc,%esp
8010420a:	8d 45 e4             	lea    -0x1c(%ebp),%eax
8010420d:	50                   	push   %eax
8010420e:	8d 45 d6             	lea    -0x2a(%ebp),%eax
80104211:	50                   	push   %eax
80104212:	56                   	push   %esi
80104213:	e8 1c d8 ff ff       	call   80101a34 <dirlookup>
80104218:	89 c3                	mov    %eax,%ebx
8010421a:	83 c4 10             	add    $0x10,%esp
8010421d:	85 c0                	test   %eax,%eax
8010421f:	74 3d                	je     8010425e <create+0x89>
    iunlockput(dp);
80104221:	83 ec 0c             	sub    $0xc,%esp
80104224:	56                   	push   %esi
80104225:	e8 6e d5 ff ff       	call   80101798 <iunlockput>
    ilock(ip);
8010422a:	89 1c 24             	mov    %ebx,(%esp)
8010422d:	e8 b3 d3 ff ff       	call   801015e5 <ilock>
    if(type == T_FILE && ip->type == T_FILE)
80104232:	83 c4 10             	add    $0x10,%esp
80104235:	66 83 7d c4 02       	cmpw   $0x2,-0x3c(%ebp)
8010423a:	75 07                	jne    80104243 <create+0x6e>
8010423c:	66 83 7b 50 02       	cmpw   $0x2,0x50(%ebx)
80104241:	74 11                	je     80104254 <create+0x7f>
      return ip;
    iunlockput(ip);
80104243:	83 ec 0c             	sub    $0xc,%esp
80104246:	53                   	push   %ebx
80104247:	e8 4c d5 ff ff       	call   80101798 <iunlockput>
    return 0;
8010424c:	83 c4 10             	add    $0x10,%esp
8010424f:	bb 00 00 00 00       	mov    $0x0,%ebx
    panic("create: dirlink");

  iunlockput(dp);

  return ip;
}
80104254:	89 d8                	mov    %ebx,%eax
80104256:	8d 65 f4             	lea    -0xc(%ebp),%esp
80104259:	5b                   	pop    %ebx
8010425a:	5e                   	pop    %esi
8010425b:	5f                   	pop    %edi
8010425c:	5d                   	pop    %ebp
8010425d:	c3                   	ret    
  if((ip = ialloc(dp->dev, type)) == 0)
8010425e:	83 ec 08             	sub    $0x8,%esp
80104261:	0f bf 45 c4          	movswl -0x3c(%ebp),%eax
80104265:	50                   	push   %eax
80104266:	ff 36                	pushl  (%esi)
80104268:	e8 69 d1 ff ff       	call   801013d6 <ialloc>
8010426d:	89 c3                	mov    %eax,%ebx
8010426f:	83 c4 10             	add    $0x10,%esp
80104272:	85 c0                	test   %eax,%eax
80104274:	74 52                	je     801042c8 <create+0xf3>
  ilock(ip);
80104276:	83 ec 0c             	sub    $0xc,%esp
80104279:	50                   	push   %eax
8010427a:	e8 66 d3 ff ff       	call   801015e5 <ilock>
  ip->major = major;
8010427f:	0f b7 45 c0          	movzwl -0x40(%ebp),%eax
80104283:	66 89 43 52          	mov    %ax,0x52(%ebx)
  ip->minor = minor;
80104287:	66 89 7b 54          	mov    %di,0x54(%ebx)
  ip->nlink = 1;
8010428b:	66 c7 43 56 01 00    	movw   $0x1,0x56(%ebx)
  iupdate(ip);
80104291:	89 1c 24             	mov    %ebx,(%esp)
80104294:	e8 e3 d1 ff ff       	call   8010147c <iupdate>
  if(type == T_DIR){  // Create . and .. entries.
80104299:	83 c4 10             	add    $0x10,%esp
8010429c:	66 83 7d c4 01       	cmpw   $0x1,-0x3c(%ebp)
801042a1:	74 32                	je     801042d5 <create+0x100>
  if(dirlink(dp, name, ip->inum) < 0)
801042a3:	83 ec 04             	sub    $0x4,%esp
801042a6:	ff 73 04             	pushl  0x4(%ebx)
801042a9:	8d 45 d6             	lea    -0x2a(%ebp),%eax
801042ac:	50                   	push   %eax
801042ad:	56                   	push   %esi
801042ae:	e8 02 d9 ff ff       	call   80101bb5 <dirlink>
801042b3:	83 c4 10             	add    $0x10,%esp
801042b6:	85 c0                	test   %eax,%eax
801042b8:	78 6c                	js     80104326 <create+0x151>
  iunlockput(dp);
801042ba:	83 ec 0c             	sub    $0xc,%esp
801042bd:	56                   	push   %esi
801042be:	e8 d5 d4 ff ff       	call   80101798 <iunlockput>
  return ip;
801042c3:	83 c4 10             	add    $0x10,%esp
801042c6:	eb 8c                	jmp    80104254 <create+0x7f>
    panic("create: ialloc");
801042c8:	83 ec 0c             	sub    $0xc,%esp
801042cb:	68 92 6f 10 80       	push   $0x80106f92
801042d0:	e8 87 c0 ff ff       	call   8010035c <panic>
    dp->nlink++;  // for ".."
801042d5:	0f b7 46 56          	movzwl 0x56(%esi),%eax
801042d9:	83 c0 01             	add    $0x1,%eax
801042dc:	66 89 46 56          	mov    %ax,0x56(%esi)
    iupdate(dp);
801042e0:	83 ec 0c             	sub    $0xc,%esp
801042e3:	56                   	push   %esi
801042e4:	e8 93 d1 ff ff       	call   8010147c <iupdate>
    if(dirlink(ip, ".", ip->inum) < 0 || dirlink(ip, "..", dp->inum) < 0)
801042e9:	83 c4 0c             	add    $0xc,%esp
801042ec:	ff 73 04             	pushl  0x4(%ebx)
801042ef:	68 a2 6f 10 80       	push   $0x80106fa2
801042f4:	53                   	push   %ebx
801042f5:	e8 bb d8 ff ff       	call   80101bb5 <dirlink>
801042fa:	83 c4 10             	add    $0x10,%esp
801042fd:	85 c0                	test   %eax,%eax
801042ff:	78 18                	js     80104319 <create+0x144>
80104301:	83 ec 04             	sub    $0x4,%esp
80104304:	ff 76 04             	pushl  0x4(%esi)
80104307:	68 a1 6f 10 80       	push   $0x80106fa1
8010430c:	53                   	push   %ebx
8010430d:	e8 a3 d8 ff ff       	call   80101bb5 <dirlink>
80104312:	83 c4 10             	add    $0x10,%esp
80104315:	85 c0                	test   %eax,%eax
80104317:	79 8a                	jns    801042a3 <create+0xce>
      panic("create dots");
80104319:	83 ec 0c             	sub    $0xc,%esp
8010431c:	68 a4 6f 10 80       	push   $0x80106fa4
80104321:	e8 36 c0 ff ff       	call   8010035c <panic>
    panic("create: dirlink");
80104326:	83 ec 0c             	sub    $0xc,%esp
80104329:	68 b0 6f 10 80       	push   $0x80106fb0
8010432e:	e8 29 c0 ff ff       	call   8010035c <panic>
    return 0;
80104333:	89 c3                	mov    %eax,%ebx
80104335:	e9 1a ff ff ff       	jmp    80104254 <create+0x7f>

8010433a <sys_dup>:
{
8010433a:	f3 0f 1e fb          	endbr32 
8010433e:	55                   	push   %ebp
8010433f:	89 e5                	mov    %esp,%ebp
80104341:	53                   	push   %ebx
80104342:	83 ec 14             	sub    $0x14,%esp
  if(argfd(0, 0, &f) < 0)
80104345:	8d 4d f4             	lea    -0xc(%ebp),%ecx
80104348:	ba 00 00 00 00       	mov    $0x0,%edx
8010434d:	b8 00 00 00 00       	mov    $0x0,%eax
80104352:	e8 90 fd ff ff       	call   801040e7 <argfd>
80104357:	85 c0                	test   %eax,%eax
80104359:	78 23                	js     8010437e <sys_dup+0x44>
  if((fd=fdalloc(f)) < 0)
8010435b:	8b 45 f4             	mov    -0xc(%ebp),%eax
8010435e:	e8 e4 fd ff ff       	call   80104147 <fdalloc>
80104363:	89 c3                	mov    %eax,%ebx
80104365:	85 c0                	test   %eax,%eax
80104367:	78 1c                	js     80104385 <sys_dup+0x4b>
  filedup(f);
80104369:	83 ec 0c             	sub    $0xc,%esp
8010436c:	ff 75 f4             	pushl  -0xc(%ebp)
8010436f:	e8 55 c9 ff ff       	call   80100cc9 <filedup>
  return fd;
80104374:	83 c4 10             	add    $0x10,%esp
}
80104377:	89 d8                	mov    %ebx,%eax
80104379:	8b 5d fc             	mov    -0x4(%ebp),%ebx
8010437c:	c9                   	leave  
8010437d:	c3                   	ret    
    return -1;
8010437e:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
80104383:	eb f2                	jmp    80104377 <sys_dup+0x3d>
    return -1;
80104385:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
8010438a:	eb eb                	jmp    80104377 <sys_dup+0x3d>

8010438c <sys_dup2>:
{
8010438c:	f3 0f 1e fb          	endbr32 
80104390:	55                   	push   %ebp
80104391:	89 e5                	mov    %esp,%ebp
80104393:	53                   	push   %ebx
80104394:	83 ec 14             	sub    $0x14,%esp
  struct proc *curproc = myproc();
80104397:	e8 44 ef ff ff       	call   801032e0 <myproc>
8010439c:	89 c3                	mov    %eax,%ebx
  if(argfd(0, &oldfd, &oldf) < 0)//si el fichero no esta abierto da error
8010439e:	8d 4d f4             	lea    -0xc(%ebp),%ecx
801043a1:	8d 55 f0             	lea    -0x10(%ebp),%edx
801043a4:	b8 00 00 00 00       	mov    $0x0,%eax
801043a9:	e8 39 fd ff ff       	call   801040e7 <argfd>
801043ae:	85 c0                	test   %eax,%eax
801043b0:	78 56                	js     80104408 <sys_dup2+0x7c>
  if(argint(1, &newfd) < 0)
801043b2:	83 ec 08             	sub    $0x8,%esp
801043b5:	8d 45 ec             	lea    -0x14(%ebp),%eax
801043b8:	50                   	push   %eax
801043b9:	6a 01                	push   $0x1
801043bb:	e8 fd fb ff ff       	call   80103fbd <argint>
801043c0:	83 c4 10             	add    $0x10,%esp
801043c3:	85 c0                	test   %eax,%eax
801043c5:	78 48                	js     8010440f <sys_dup2+0x83>
  if(newfd < 0 || newfd >= NOFILE)
801043c7:	8b 55 ec             	mov    -0x14(%ebp),%edx
801043ca:	83 fa 0f             	cmp    $0xf,%edx
801043cd:	77 47                	ja     80104416 <sys_dup2+0x8a>
  if(oldfd == newfd)
801043cf:	8b 45 f0             	mov    -0x10(%ebp),%eax
801043d2:	39 c2                	cmp    %eax,%edx
801043d4:	74 2d                	je     80104403 <sys_dup2+0x77>
  if((newf = curproc->ofile[newfd])!= 0)
801043d6:	8b 44 93 28          	mov    0x28(%ebx,%edx,4),%eax
801043da:	85 c0                	test   %eax,%eax
801043dc:	74 0c                	je     801043ea <sys_dup2+0x5e>
    fileclose(newf);
801043de:	83 ec 0c             	sub    $0xc,%esp
801043e1:	50                   	push   %eax
801043e2:	e8 2b c9 ff ff       	call   80100d12 <fileclose>
801043e7:	83 c4 10             	add    $0x10,%esp
  curproc->ofile[newfd] = oldf;
801043ea:	8b 45 f4             	mov    -0xc(%ebp),%eax
801043ed:	8b 55 ec             	mov    -0x14(%ebp),%edx
801043f0:	89 44 93 28          	mov    %eax,0x28(%ebx,%edx,4)
  filedup(oldf);
801043f4:	83 ec 0c             	sub    $0xc,%esp
801043f7:	50                   	push   %eax
801043f8:	e8 cc c8 ff ff       	call   80100cc9 <filedup>
  return newfd;
801043fd:	8b 45 ec             	mov    -0x14(%ebp),%eax
80104400:	83 c4 10             	add    $0x10,%esp
}
80104403:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80104406:	c9                   	leave  
80104407:	c3                   	ret    
    return -1;
80104408:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010440d:	eb f4                	jmp    80104403 <sys_dup2+0x77>
    return -1;
8010440f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104414:	eb ed                	jmp    80104403 <sys_dup2+0x77>
    return -1;
80104416:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010441b:	eb e6                	jmp    80104403 <sys_dup2+0x77>

8010441d <sys_read>:
{
8010441d:	f3 0f 1e fb          	endbr32 
80104421:	55                   	push   %ebp
80104422:	89 e5                	mov    %esp,%ebp
80104424:	83 ec 18             	sub    $0x18,%esp
  if(argfd(0, 0, &f) < 0 || argint(2, &n) < 0 || argptr(1, (void**)&p, n) < 0)
80104427:	8d 4d f4             	lea    -0xc(%ebp),%ecx
8010442a:	ba 00 00 00 00       	mov    $0x0,%edx
8010442f:	b8 00 00 00 00       	mov    $0x0,%eax
80104434:	e8 ae fc ff ff       	call   801040e7 <argfd>
80104439:	85 c0                	test   %eax,%eax
8010443b:	78 43                	js     80104480 <sys_read+0x63>
8010443d:	83 ec 08             	sub    $0x8,%esp
80104440:	8d 45 f0             	lea    -0x10(%ebp),%eax
80104443:	50                   	push   %eax
80104444:	6a 02                	push   $0x2
80104446:	e8 72 fb ff ff       	call   80103fbd <argint>
8010444b:	83 c4 10             	add    $0x10,%esp
8010444e:	85 c0                	test   %eax,%eax
80104450:	78 2e                	js     80104480 <sys_read+0x63>
80104452:	83 ec 04             	sub    $0x4,%esp
80104455:	ff 75 f0             	pushl  -0x10(%ebp)
80104458:	8d 45 ec             	lea    -0x14(%ebp),%eax
8010445b:	50                   	push   %eax
8010445c:	6a 01                	push   $0x1
8010445e:	e8 86 fb ff ff       	call   80103fe9 <argptr>
80104463:	83 c4 10             	add    $0x10,%esp
80104466:	85 c0                	test   %eax,%eax
80104468:	78 16                	js     80104480 <sys_read+0x63>
  return fileread(f, p, n);
8010446a:	83 ec 04             	sub    $0x4,%esp
8010446d:	ff 75 f0             	pushl  -0x10(%ebp)
80104470:	ff 75 ec             	pushl  -0x14(%ebp)
80104473:	ff 75 f4             	pushl  -0xc(%ebp)
80104476:	e8 a0 c9 ff ff       	call   80100e1b <fileread>
8010447b:	83 c4 10             	add    $0x10,%esp
}
8010447e:	c9                   	leave  
8010447f:	c3                   	ret    
    return -1;
80104480:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104485:	eb f7                	jmp    8010447e <sys_read+0x61>

80104487 <sys_write>:
{
80104487:	f3 0f 1e fb          	endbr32 
8010448b:	55                   	push   %ebp
8010448c:	89 e5                	mov    %esp,%ebp
8010448e:	83 ec 18             	sub    $0x18,%esp
  if(argfd(0, 0, &f) < 0 || argint(2, &n) < 0 || argptr(1, (void**)&p, n) < 0)
80104491:	8d 4d f4             	lea    -0xc(%ebp),%ecx
80104494:	ba 00 00 00 00       	mov    $0x0,%edx
80104499:	b8 00 00 00 00       	mov    $0x0,%eax
8010449e:	e8 44 fc ff ff       	call   801040e7 <argfd>
801044a3:	85 c0                	test   %eax,%eax
801044a5:	78 43                	js     801044ea <sys_write+0x63>
801044a7:	83 ec 08             	sub    $0x8,%esp
801044aa:	8d 45 f0             	lea    -0x10(%ebp),%eax
801044ad:	50                   	push   %eax
801044ae:	6a 02                	push   $0x2
801044b0:	e8 08 fb ff ff       	call   80103fbd <argint>
801044b5:	83 c4 10             	add    $0x10,%esp
801044b8:	85 c0                	test   %eax,%eax
801044ba:	78 2e                	js     801044ea <sys_write+0x63>
801044bc:	83 ec 04             	sub    $0x4,%esp
801044bf:	ff 75 f0             	pushl  -0x10(%ebp)
801044c2:	8d 45 ec             	lea    -0x14(%ebp),%eax
801044c5:	50                   	push   %eax
801044c6:	6a 01                	push   $0x1
801044c8:	e8 1c fb ff ff       	call   80103fe9 <argptr>
801044cd:	83 c4 10             	add    $0x10,%esp
801044d0:	85 c0                	test   %eax,%eax
801044d2:	78 16                	js     801044ea <sys_write+0x63>
  return filewrite(f, p, n);
801044d4:	83 ec 04             	sub    $0x4,%esp
801044d7:	ff 75 f0             	pushl  -0x10(%ebp)
801044da:	ff 75 ec             	pushl  -0x14(%ebp)
801044dd:	ff 75 f4             	pushl  -0xc(%ebp)
801044e0:	e8 bf c9 ff ff       	call   80100ea4 <filewrite>
801044e5:	83 c4 10             	add    $0x10,%esp
}
801044e8:	c9                   	leave  
801044e9:	c3                   	ret    
    return -1;
801044ea:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801044ef:	eb f7                	jmp    801044e8 <sys_write+0x61>

801044f1 <sys_close>:
{
801044f1:	f3 0f 1e fb          	endbr32 
801044f5:	55                   	push   %ebp
801044f6:	89 e5                	mov    %esp,%ebp
801044f8:	83 ec 18             	sub    $0x18,%esp
  if(argfd(0, &fd, &f) < 0)
801044fb:	8d 4d f0             	lea    -0x10(%ebp),%ecx
801044fe:	8d 55 f4             	lea    -0xc(%ebp),%edx
80104501:	b8 00 00 00 00       	mov    $0x0,%eax
80104506:	e8 dc fb ff ff       	call   801040e7 <argfd>
8010450b:	85 c0                	test   %eax,%eax
8010450d:	78 25                	js     80104534 <sys_close+0x43>
  myproc()->ofile[fd] = 0;
8010450f:	e8 cc ed ff ff       	call   801032e0 <myproc>
80104514:	8b 55 f4             	mov    -0xc(%ebp),%edx
80104517:	c7 44 90 28 00 00 00 	movl   $0x0,0x28(%eax,%edx,4)
8010451e:	00 
  fileclose(f);
8010451f:	83 ec 0c             	sub    $0xc,%esp
80104522:	ff 75 f0             	pushl  -0x10(%ebp)
80104525:	e8 e8 c7 ff ff       	call   80100d12 <fileclose>
  return 0;
8010452a:	83 c4 10             	add    $0x10,%esp
8010452d:	b8 00 00 00 00       	mov    $0x0,%eax
}
80104532:	c9                   	leave  
80104533:	c3                   	ret    
    return -1;
80104534:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104539:	eb f7                	jmp    80104532 <sys_close+0x41>

8010453b <sys_fstat>:
{
8010453b:	f3 0f 1e fb          	endbr32 
8010453f:	55                   	push   %ebp
80104540:	89 e5                	mov    %esp,%ebp
80104542:	83 ec 18             	sub    $0x18,%esp
  if(argfd(0, 0, &f) < 0 || argptr(1, (void*)&st, sizeof(*st)) < 0)
80104545:	8d 4d f4             	lea    -0xc(%ebp),%ecx
80104548:	ba 00 00 00 00       	mov    $0x0,%edx
8010454d:	b8 00 00 00 00       	mov    $0x0,%eax
80104552:	e8 90 fb ff ff       	call   801040e7 <argfd>
80104557:	85 c0                	test   %eax,%eax
80104559:	78 2a                	js     80104585 <sys_fstat+0x4a>
8010455b:	83 ec 04             	sub    $0x4,%esp
8010455e:	6a 14                	push   $0x14
80104560:	8d 45 f0             	lea    -0x10(%ebp),%eax
80104563:	50                   	push   %eax
80104564:	6a 01                	push   $0x1
80104566:	e8 7e fa ff ff       	call   80103fe9 <argptr>
8010456b:	83 c4 10             	add    $0x10,%esp
8010456e:	85 c0                	test   %eax,%eax
80104570:	78 13                	js     80104585 <sys_fstat+0x4a>
  return filestat(f, st);
80104572:	83 ec 08             	sub    $0x8,%esp
80104575:	ff 75 f0             	pushl  -0x10(%ebp)
80104578:	ff 75 f4             	pushl  -0xc(%ebp)
8010457b:	e8 50 c8 ff ff       	call   80100dd0 <filestat>
80104580:	83 c4 10             	add    $0x10,%esp
}
80104583:	c9                   	leave  
80104584:	c3                   	ret    
    return -1;
80104585:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010458a:	eb f7                	jmp    80104583 <sys_fstat+0x48>

8010458c <sys_link>:
{
8010458c:	f3 0f 1e fb          	endbr32 
80104590:	55                   	push   %ebp
80104591:	89 e5                	mov    %esp,%ebp
80104593:	56                   	push   %esi
80104594:	53                   	push   %ebx
80104595:	83 ec 28             	sub    $0x28,%esp
  if(argstr(0, &old) < 0 || argstr(1, &new) < 0)
80104598:	8d 45 e0             	lea    -0x20(%ebp),%eax
8010459b:	50                   	push   %eax
8010459c:	6a 00                	push   $0x0
8010459e:	e8 b2 fa ff ff       	call   80104055 <argstr>
801045a3:	83 c4 10             	add    $0x10,%esp
801045a6:	85 c0                	test   %eax,%eax
801045a8:	0f 88 d3 00 00 00    	js     80104681 <sys_link+0xf5>
801045ae:	83 ec 08             	sub    $0x8,%esp
801045b1:	8d 45 e4             	lea    -0x1c(%ebp),%eax
801045b4:	50                   	push   %eax
801045b5:	6a 01                	push   $0x1
801045b7:	e8 99 fa ff ff       	call   80104055 <argstr>
801045bc:	83 c4 10             	add    $0x10,%esp
801045bf:	85 c0                	test   %eax,%eax
801045c1:	0f 88 ba 00 00 00    	js     80104681 <sys_link+0xf5>
  begin_op();
801045c7:	e8 9e e2 ff ff       	call   8010286a <begin_op>
  if((ip = namei(old)) == 0){
801045cc:	83 ec 0c             	sub    $0xc,%esp
801045cf:	ff 75 e0             	pushl  -0x20(%ebp)
801045d2:	e8 93 d6 ff ff       	call   80101c6a <namei>
801045d7:	89 c3                	mov    %eax,%ebx
801045d9:	83 c4 10             	add    $0x10,%esp
801045dc:	85 c0                	test   %eax,%eax
801045de:	0f 84 a4 00 00 00    	je     80104688 <sys_link+0xfc>
  ilock(ip);
801045e4:	83 ec 0c             	sub    $0xc,%esp
801045e7:	50                   	push   %eax
801045e8:	e8 f8 cf ff ff       	call   801015e5 <ilock>
  if(ip->type == T_DIR){
801045ed:	83 c4 10             	add    $0x10,%esp
801045f0:	66 83 7b 50 01       	cmpw   $0x1,0x50(%ebx)
801045f5:	0f 84 99 00 00 00    	je     80104694 <sys_link+0x108>
  ip->nlink++;
801045fb:	0f b7 43 56          	movzwl 0x56(%ebx),%eax
801045ff:	83 c0 01             	add    $0x1,%eax
80104602:	66 89 43 56          	mov    %ax,0x56(%ebx)
  iupdate(ip);
80104606:	83 ec 0c             	sub    $0xc,%esp
80104609:	53                   	push   %ebx
8010460a:	e8 6d ce ff ff       	call   8010147c <iupdate>
  iunlock(ip);
8010460f:	89 1c 24             	mov    %ebx,(%esp)
80104612:	e8 94 d0 ff ff       	call   801016ab <iunlock>
  if((dp = nameiparent(new, name)) == 0)
80104617:	83 c4 08             	add    $0x8,%esp
8010461a:	8d 45 ea             	lea    -0x16(%ebp),%eax
8010461d:	50                   	push   %eax
8010461e:	ff 75 e4             	pushl  -0x1c(%ebp)
80104621:	e8 60 d6 ff ff       	call   80101c86 <nameiparent>
80104626:	89 c6                	mov    %eax,%esi
80104628:	83 c4 10             	add    $0x10,%esp
8010462b:	85 c0                	test   %eax,%eax
8010462d:	0f 84 85 00 00 00    	je     801046b8 <sys_link+0x12c>
  ilock(dp);
80104633:	83 ec 0c             	sub    $0xc,%esp
80104636:	50                   	push   %eax
80104637:	e8 a9 cf ff ff       	call   801015e5 <ilock>
  if(dp->dev != ip->dev || dirlink(dp, name, ip->inum) < 0){
8010463c:	83 c4 10             	add    $0x10,%esp
8010463f:	8b 03                	mov    (%ebx),%eax
80104641:	39 06                	cmp    %eax,(%esi)
80104643:	75 67                	jne    801046ac <sys_link+0x120>
80104645:	83 ec 04             	sub    $0x4,%esp
80104648:	ff 73 04             	pushl  0x4(%ebx)
8010464b:	8d 45 ea             	lea    -0x16(%ebp),%eax
8010464e:	50                   	push   %eax
8010464f:	56                   	push   %esi
80104650:	e8 60 d5 ff ff       	call   80101bb5 <dirlink>
80104655:	83 c4 10             	add    $0x10,%esp
80104658:	85 c0                	test   %eax,%eax
8010465a:	78 50                	js     801046ac <sys_link+0x120>
  iunlockput(dp);
8010465c:	83 ec 0c             	sub    $0xc,%esp
8010465f:	56                   	push   %esi
80104660:	e8 33 d1 ff ff       	call   80101798 <iunlockput>
  iput(ip);
80104665:	89 1c 24             	mov    %ebx,(%esp)
80104668:	e8 87 d0 ff ff       	call   801016f4 <iput>
  end_op();
8010466d:	e8 76 e2 ff ff       	call   801028e8 <end_op>
  return 0;
80104672:	83 c4 10             	add    $0x10,%esp
80104675:	b8 00 00 00 00       	mov    $0x0,%eax
}
8010467a:	8d 65 f8             	lea    -0x8(%ebp),%esp
8010467d:	5b                   	pop    %ebx
8010467e:	5e                   	pop    %esi
8010467f:	5d                   	pop    %ebp
80104680:	c3                   	ret    
    return -1;
80104681:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104686:	eb f2                	jmp    8010467a <sys_link+0xee>
    end_op();
80104688:	e8 5b e2 ff ff       	call   801028e8 <end_op>
    return -1;
8010468d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104692:	eb e6                	jmp    8010467a <sys_link+0xee>
    iunlockput(ip);
80104694:	83 ec 0c             	sub    $0xc,%esp
80104697:	53                   	push   %ebx
80104698:	e8 fb d0 ff ff       	call   80101798 <iunlockput>
    end_op();
8010469d:	e8 46 e2 ff ff       	call   801028e8 <end_op>
    return -1;
801046a2:	83 c4 10             	add    $0x10,%esp
801046a5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801046aa:	eb ce                	jmp    8010467a <sys_link+0xee>
    iunlockput(dp);
801046ac:	83 ec 0c             	sub    $0xc,%esp
801046af:	56                   	push   %esi
801046b0:	e8 e3 d0 ff ff       	call   80101798 <iunlockput>
    goto bad;
801046b5:	83 c4 10             	add    $0x10,%esp
  ilock(ip);
801046b8:	83 ec 0c             	sub    $0xc,%esp
801046bb:	53                   	push   %ebx
801046bc:	e8 24 cf ff ff       	call   801015e5 <ilock>
  ip->nlink--;
801046c1:	0f b7 43 56          	movzwl 0x56(%ebx),%eax
801046c5:	83 e8 01             	sub    $0x1,%eax
801046c8:	66 89 43 56          	mov    %ax,0x56(%ebx)
  iupdate(ip);
801046cc:	89 1c 24             	mov    %ebx,(%esp)
801046cf:	e8 a8 cd ff ff       	call   8010147c <iupdate>
  iunlockput(ip);
801046d4:	89 1c 24             	mov    %ebx,(%esp)
801046d7:	e8 bc d0 ff ff       	call   80101798 <iunlockput>
  end_op();
801046dc:	e8 07 e2 ff ff       	call   801028e8 <end_op>
  return -1;
801046e1:	83 c4 10             	add    $0x10,%esp
801046e4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801046e9:	eb 8f                	jmp    8010467a <sys_link+0xee>

801046eb <sys_unlink>:
{
801046eb:	f3 0f 1e fb          	endbr32 
801046ef:	55                   	push   %ebp
801046f0:	89 e5                	mov    %esp,%ebp
801046f2:	57                   	push   %edi
801046f3:	56                   	push   %esi
801046f4:	53                   	push   %ebx
801046f5:	83 ec 44             	sub    $0x44,%esp
  if(argstr(0, &path) < 0)
801046f8:	8d 45 c4             	lea    -0x3c(%ebp),%eax
801046fb:	50                   	push   %eax
801046fc:	6a 00                	push   $0x0
801046fe:	e8 52 f9 ff ff       	call   80104055 <argstr>
80104703:	83 c4 10             	add    $0x10,%esp
80104706:	85 c0                	test   %eax,%eax
80104708:	0f 88 83 01 00 00    	js     80104891 <sys_unlink+0x1a6>
  begin_op();
8010470e:	e8 57 e1 ff ff       	call   8010286a <begin_op>
  if((dp = nameiparent(path, name)) == 0){
80104713:	83 ec 08             	sub    $0x8,%esp
80104716:	8d 45 ca             	lea    -0x36(%ebp),%eax
80104719:	50                   	push   %eax
8010471a:	ff 75 c4             	pushl  -0x3c(%ebp)
8010471d:	e8 64 d5 ff ff       	call   80101c86 <nameiparent>
80104722:	89 c6                	mov    %eax,%esi
80104724:	83 c4 10             	add    $0x10,%esp
80104727:	85 c0                	test   %eax,%eax
80104729:	0f 84 ed 00 00 00    	je     8010481c <sys_unlink+0x131>
  ilock(dp);
8010472f:	83 ec 0c             	sub    $0xc,%esp
80104732:	50                   	push   %eax
80104733:	e8 ad ce ff ff       	call   801015e5 <ilock>
  if(namecmp(name, ".") == 0 || namecmp(name, "..") == 0)
80104738:	83 c4 08             	add    $0x8,%esp
8010473b:	68 a2 6f 10 80       	push   $0x80106fa2
80104740:	8d 45 ca             	lea    -0x36(%ebp),%eax
80104743:	50                   	push   %eax
80104744:	e8 d2 d2 ff ff       	call   80101a1b <namecmp>
80104749:	83 c4 10             	add    $0x10,%esp
8010474c:	85 c0                	test   %eax,%eax
8010474e:	0f 84 fc 00 00 00    	je     80104850 <sys_unlink+0x165>
80104754:	83 ec 08             	sub    $0x8,%esp
80104757:	68 a1 6f 10 80       	push   $0x80106fa1
8010475c:	8d 45 ca             	lea    -0x36(%ebp),%eax
8010475f:	50                   	push   %eax
80104760:	e8 b6 d2 ff ff       	call   80101a1b <namecmp>
80104765:	83 c4 10             	add    $0x10,%esp
80104768:	85 c0                	test   %eax,%eax
8010476a:	0f 84 e0 00 00 00    	je     80104850 <sys_unlink+0x165>
  if((ip = dirlookup(dp, name, &off)) == 0)
80104770:	83 ec 04             	sub    $0x4,%esp
80104773:	8d 45 c0             	lea    -0x40(%ebp),%eax
80104776:	50                   	push   %eax
80104777:	8d 45 ca             	lea    -0x36(%ebp),%eax
8010477a:	50                   	push   %eax
8010477b:	56                   	push   %esi
8010477c:	e8 b3 d2 ff ff       	call   80101a34 <dirlookup>
80104781:	89 c3                	mov    %eax,%ebx
80104783:	83 c4 10             	add    $0x10,%esp
80104786:	85 c0                	test   %eax,%eax
80104788:	0f 84 c2 00 00 00    	je     80104850 <sys_unlink+0x165>
  ilock(ip);
8010478e:	83 ec 0c             	sub    $0xc,%esp
80104791:	50                   	push   %eax
80104792:	e8 4e ce ff ff       	call   801015e5 <ilock>
  if(ip->nlink < 1)
80104797:	83 c4 10             	add    $0x10,%esp
8010479a:	66 83 7b 56 00       	cmpw   $0x0,0x56(%ebx)
8010479f:	0f 8e 83 00 00 00    	jle    80104828 <sys_unlink+0x13d>
  if(ip->type == T_DIR && !isdirempty(ip)){
801047a5:	66 83 7b 50 01       	cmpw   $0x1,0x50(%ebx)
801047aa:	0f 84 85 00 00 00    	je     80104835 <sys_unlink+0x14a>
  memset(&de, 0, sizeof(de));
801047b0:	83 ec 04             	sub    $0x4,%esp
801047b3:	6a 10                	push   $0x10
801047b5:	6a 00                	push   $0x0
801047b7:	8d 7d d8             	lea    -0x28(%ebp),%edi
801047ba:	57                   	push   %edi
801047bb:	e8 a3 f5 ff ff       	call   80103d63 <memset>
  if(writei(dp, (char*)&de, off, sizeof(de)) != sizeof(de))
801047c0:	6a 10                	push   $0x10
801047c2:	ff 75 c0             	pushl  -0x40(%ebp)
801047c5:	57                   	push   %edi
801047c6:	56                   	push   %esi
801047c7:	e8 20 d1 ff ff       	call   801018ec <writei>
801047cc:	83 c4 20             	add    $0x20,%esp
801047cf:	83 f8 10             	cmp    $0x10,%eax
801047d2:	0f 85 90 00 00 00    	jne    80104868 <sys_unlink+0x17d>
  if(ip->type == T_DIR){
801047d8:	66 83 7b 50 01       	cmpw   $0x1,0x50(%ebx)
801047dd:	0f 84 92 00 00 00    	je     80104875 <sys_unlink+0x18a>
  iunlockput(dp);
801047e3:	83 ec 0c             	sub    $0xc,%esp
801047e6:	56                   	push   %esi
801047e7:	e8 ac cf ff ff       	call   80101798 <iunlockput>
  ip->nlink--;
801047ec:	0f b7 43 56          	movzwl 0x56(%ebx),%eax
801047f0:	83 e8 01             	sub    $0x1,%eax
801047f3:	66 89 43 56          	mov    %ax,0x56(%ebx)
  iupdate(ip);
801047f7:	89 1c 24             	mov    %ebx,(%esp)
801047fa:	e8 7d cc ff ff       	call   8010147c <iupdate>
  iunlockput(ip);
801047ff:	89 1c 24             	mov    %ebx,(%esp)
80104802:	e8 91 cf ff ff       	call   80101798 <iunlockput>
  end_op();
80104807:	e8 dc e0 ff ff       	call   801028e8 <end_op>
  return 0;
8010480c:	83 c4 10             	add    $0x10,%esp
8010480f:	b8 00 00 00 00       	mov    $0x0,%eax
}
80104814:	8d 65 f4             	lea    -0xc(%ebp),%esp
80104817:	5b                   	pop    %ebx
80104818:	5e                   	pop    %esi
80104819:	5f                   	pop    %edi
8010481a:	5d                   	pop    %ebp
8010481b:	c3                   	ret    
    end_op();
8010481c:	e8 c7 e0 ff ff       	call   801028e8 <end_op>
    return -1;
80104821:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104826:	eb ec                	jmp    80104814 <sys_unlink+0x129>
    panic("unlink: nlink < 1");
80104828:	83 ec 0c             	sub    $0xc,%esp
8010482b:	68 c0 6f 10 80       	push   $0x80106fc0
80104830:	e8 27 bb ff ff       	call   8010035c <panic>
  if(ip->type == T_DIR && !isdirempty(ip)){
80104835:	89 d8                	mov    %ebx,%eax
80104837:	e8 42 f9 ff ff       	call   8010417e <isdirempty>
8010483c:	85 c0                	test   %eax,%eax
8010483e:	0f 85 6c ff ff ff    	jne    801047b0 <sys_unlink+0xc5>
    iunlockput(ip);
80104844:	83 ec 0c             	sub    $0xc,%esp
80104847:	53                   	push   %ebx
80104848:	e8 4b cf ff ff       	call   80101798 <iunlockput>
    goto bad;
8010484d:	83 c4 10             	add    $0x10,%esp
  iunlockput(dp);
80104850:	83 ec 0c             	sub    $0xc,%esp
80104853:	56                   	push   %esi
80104854:	e8 3f cf ff ff       	call   80101798 <iunlockput>
  end_op();
80104859:	e8 8a e0 ff ff       	call   801028e8 <end_op>
  return -1;
8010485e:	83 c4 10             	add    $0x10,%esp
80104861:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104866:	eb ac                	jmp    80104814 <sys_unlink+0x129>
    panic("unlink: writei");
80104868:	83 ec 0c             	sub    $0xc,%esp
8010486b:	68 d2 6f 10 80       	push   $0x80106fd2
80104870:	e8 e7 ba ff ff       	call   8010035c <panic>
    dp->nlink--;
80104875:	0f b7 46 56          	movzwl 0x56(%esi),%eax
80104879:	83 e8 01             	sub    $0x1,%eax
8010487c:	66 89 46 56          	mov    %ax,0x56(%esi)
    iupdate(dp);
80104880:	83 ec 0c             	sub    $0xc,%esp
80104883:	56                   	push   %esi
80104884:	e8 f3 cb ff ff       	call   8010147c <iupdate>
80104889:	83 c4 10             	add    $0x10,%esp
8010488c:	e9 52 ff ff ff       	jmp    801047e3 <sys_unlink+0xf8>
    return -1;
80104891:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104896:	e9 79 ff ff ff       	jmp    80104814 <sys_unlink+0x129>

8010489b <sys_open>:

int
sys_open(void)
{
8010489b:	f3 0f 1e fb          	endbr32 
8010489f:	55                   	push   %ebp
801048a0:	89 e5                	mov    %esp,%ebp
801048a2:	57                   	push   %edi
801048a3:	56                   	push   %esi
801048a4:	53                   	push   %ebx
801048a5:	83 ec 24             	sub    $0x24,%esp
  char *path;
  int fd, omode;
  struct file *f;
  struct inode *ip;

  if(argstr(0, &path) < 0 || argint(1, &omode) < 0)
801048a8:	8d 45 e4             	lea    -0x1c(%ebp),%eax
801048ab:	50                   	push   %eax
801048ac:	6a 00                	push   $0x0
801048ae:	e8 a2 f7 ff ff       	call   80104055 <argstr>
801048b3:	83 c4 10             	add    $0x10,%esp
801048b6:	85 c0                	test   %eax,%eax
801048b8:	0f 88 a0 00 00 00    	js     8010495e <sys_open+0xc3>
801048be:	83 ec 08             	sub    $0x8,%esp
801048c1:	8d 45 e0             	lea    -0x20(%ebp),%eax
801048c4:	50                   	push   %eax
801048c5:	6a 01                	push   $0x1
801048c7:	e8 f1 f6 ff ff       	call   80103fbd <argint>
801048cc:	83 c4 10             	add    $0x10,%esp
801048cf:	85 c0                	test   %eax,%eax
801048d1:	0f 88 87 00 00 00    	js     8010495e <sys_open+0xc3>
    return -1;

  begin_op();
801048d7:	e8 8e df ff ff       	call   8010286a <begin_op>

  if(omode & O_CREATE){
801048dc:	f6 45 e1 02          	testb  $0x2,-0x1f(%ebp)
801048e0:	0f 84 8b 00 00 00    	je     80104971 <sys_open+0xd6>
    ip = create(path, T_FILE, 0, 0);
801048e6:	83 ec 0c             	sub    $0xc,%esp
801048e9:	6a 00                	push   $0x0
801048eb:	b9 00 00 00 00       	mov    $0x0,%ecx
801048f0:	ba 02 00 00 00       	mov    $0x2,%edx
801048f5:	8b 45 e4             	mov    -0x1c(%ebp),%eax
801048f8:	e8 d8 f8 ff ff       	call   801041d5 <create>
801048fd:	89 c6                	mov    %eax,%esi
    if(ip == 0){
801048ff:	83 c4 10             	add    $0x10,%esp
80104902:	85 c0                	test   %eax,%eax
80104904:	74 5f                	je     80104965 <sys_open+0xca>
      end_op();
      return -1;
    }
  }

  if((f = filealloc()) == 0 || (fd = fdalloc(f)) < 0){
80104906:	e8 59 c3 ff ff       	call   80100c64 <filealloc>
8010490b:	89 c3                	mov    %eax,%ebx
8010490d:	85 c0                	test   %eax,%eax
8010490f:	0f 84 b5 00 00 00    	je     801049ca <sys_open+0x12f>
80104915:	e8 2d f8 ff ff       	call   80104147 <fdalloc>
8010491a:	89 c7                	mov    %eax,%edi
8010491c:	85 c0                	test   %eax,%eax
8010491e:	0f 88 a6 00 00 00    	js     801049ca <sys_open+0x12f>
      fileclose(f);
    iunlockput(ip);
    end_op();
    return -1;
  }
  iunlock(ip);
80104924:	83 ec 0c             	sub    $0xc,%esp
80104927:	56                   	push   %esi
80104928:	e8 7e cd ff ff       	call   801016ab <iunlock>
  end_op();
8010492d:	e8 b6 df ff ff       	call   801028e8 <end_op>

  f->type = FD_INODE;
80104932:	c7 03 02 00 00 00    	movl   $0x2,(%ebx)
  f->ip = ip;
80104938:	89 73 10             	mov    %esi,0x10(%ebx)
  f->off = 0;
8010493b:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)
  f->readable = !(omode & O_WRONLY);
80104942:	8b 45 e0             	mov    -0x20(%ebp),%eax
80104945:	83 c4 10             	add    $0x10,%esp
80104948:	a8 01                	test   $0x1,%al
8010494a:	0f 94 43 08          	sete   0x8(%ebx)
  f->writable = (omode & O_WRONLY) || (omode & O_RDWR);
8010494e:	a8 03                	test   $0x3,%al
80104950:	0f 95 43 09          	setne  0x9(%ebx)
  return fd;
}
80104954:	89 f8                	mov    %edi,%eax
80104956:	8d 65 f4             	lea    -0xc(%ebp),%esp
80104959:	5b                   	pop    %ebx
8010495a:	5e                   	pop    %esi
8010495b:	5f                   	pop    %edi
8010495c:	5d                   	pop    %ebp
8010495d:	c3                   	ret    
    return -1;
8010495e:	bf ff ff ff ff       	mov    $0xffffffff,%edi
80104963:	eb ef                	jmp    80104954 <sys_open+0xb9>
      end_op();
80104965:	e8 7e df ff ff       	call   801028e8 <end_op>
      return -1;
8010496a:	bf ff ff ff ff       	mov    $0xffffffff,%edi
8010496f:	eb e3                	jmp    80104954 <sys_open+0xb9>
    if((ip = namei(path)) == 0){
80104971:	83 ec 0c             	sub    $0xc,%esp
80104974:	ff 75 e4             	pushl  -0x1c(%ebp)
80104977:	e8 ee d2 ff ff       	call   80101c6a <namei>
8010497c:	89 c6                	mov    %eax,%esi
8010497e:	83 c4 10             	add    $0x10,%esp
80104981:	85 c0                	test   %eax,%eax
80104983:	74 39                	je     801049be <sys_open+0x123>
    ilock(ip);
80104985:	83 ec 0c             	sub    $0xc,%esp
80104988:	50                   	push   %eax
80104989:	e8 57 cc ff ff       	call   801015e5 <ilock>
    if(ip->type == T_DIR && omode != O_RDONLY){
8010498e:	83 c4 10             	add    $0x10,%esp
80104991:	66 83 7e 50 01       	cmpw   $0x1,0x50(%esi)
80104996:	0f 85 6a ff ff ff    	jne    80104906 <sys_open+0x6b>
8010499c:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
801049a0:	0f 84 60 ff ff ff    	je     80104906 <sys_open+0x6b>
      iunlockput(ip);
801049a6:	83 ec 0c             	sub    $0xc,%esp
801049a9:	56                   	push   %esi
801049aa:	e8 e9 cd ff ff       	call   80101798 <iunlockput>
      end_op();
801049af:	e8 34 df ff ff       	call   801028e8 <end_op>
      return -1;
801049b4:	83 c4 10             	add    $0x10,%esp
801049b7:	bf ff ff ff ff       	mov    $0xffffffff,%edi
801049bc:	eb 96                	jmp    80104954 <sys_open+0xb9>
      end_op();
801049be:	e8 25 df ff ff       	call   801028e8 <end_op>
      return -1;
801049c3:	bf ff ff ff ff       	mov    $0xffffffff,%edi
801049c8:	eb 8a                	jmp    80104954 <sys_open+0xb9>
    if(f)
801049ca:	85 db                	test   %ebx,%ebx
801049cc:	74 0c                	je     801049da <sys_open+0x13f>
      fileclose(f);
801049ce:	83 ec 0c             	sub    $0xc,%esp
801049d1:	53                   	push   %ebx
801049d2:	e8 3b c3 ff ff       	call   80100d12 <fileclose>
801049d7:	83 c4 10             	add    $0x10,%esp
    iunlockput(ip);
801049da:	83 ec 0c             	sub    $0xc,%esp
801049dd:	56                   	push   %esi
801049de:	e8 b5 cd ff ff       	call   80101798 <iunlockput>
    end_op();
801049e3:	e8 00 df ff ff       	call   801028e8 <end_op>
    return -1;
801049e8:	83 c4 10             	add    $0x10,%esp
801049eb:	bf ff ff ff ff       	mov    $0xffffffff,%edi
801049f0:	e9 5f ff ff ff       	jmp    80104954 <sys_open+0xb9>

801049f5 <sys_mkdir>:

int
sys_mkdir(void)
{
801049f5:	f3 0f 1e fb          	endbr32 
801049f9:	55                   	push   %ebp
801049fa:	89 e5                	mov    %esp,%ebp
801049fc:	83 ec 18             	sub    $0x18,%esp
  char *path;
  struct inode *ip;

  begin_op();
801049ff:	e8 66 de ff ff       	call   8010286a <begin_op>
  if(argstr(0, &path) < 0 || (ip = create(path, T_DIR, 0, 0)) == 0){
80104a04:	83 ec 08             	sub    $0x8,%esp
80104a07:	8d 45 f4             	lea    -0xc(%ebp),%eax
80104a0a:	50                   	push   %eax
80104a0b:	6a 00                	push   $0x0
80104a0d:	e8 43 f6 ff ff       	call   80104055 <argstr>
80104a12:	83 c4 10             	add    $0x10,%esp
80104a15:	85 c0                	test   %eax,%eax
80104a17:	78 36                	js     80104a4f <sys_mkdir+0x5a>
80104a19:	83 ec 0c             	sub    $0xc,%esp
80104a1c:	6a 00                	push   $0x0
80104a1e:	b9 00 00 00 00       	mov    $0x0,%ecx
80104a23:	ba 01 00 00 00       	mov    $0x1,%edx
80104a28:	8b 45 f4             	mov    -0xc(%ebp),%eax
80104a2b:	e8 a5 f7 ff ff       	call   801041d5 <create>
80104a30:	83 c4 10             	add    $0x10,%esp
80104a33:	85 c0                	test   %eax,%eax
80104a35:	74 18                	je     80104a4f <sys_mkdir+0x5a>
    end_op();
    return -1;
  }
  iunlockput(ip);
80104a37:	83 ec 0c             	sub    $0xc,%esp
80104a3a:	50                   	push   %eax
80104a3b:	e8 58 cd ff ff       	call   80101798 <iunlockput>
  end_op();
80104a40:	e8 a3 de ff ff       	call   801028e8 <end_op>
  return 0;
80104a45:	83 c4 10             	add    $0x10,%esp
80104a48:	b8 00 00 00 00       	mov    $0x0,%eax
}
80104a4d:	c9                   	leave  
80104a4e:	c3                   	ret    
    end_op();
80104a4f:	e8 94 de ff ff       	call   801028e8 <end_op>
    return -1;
80104a54:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104a59:	eb f2                	jmp    80104a4d <sys_mkdir+0x58>

80104a5b <sys_mknod>:

int
sys_mknod(void)
{
80104a5b:	f3 0f 1e fb          	endbr32 
80104a5f:	55                   	push   %ebp
80104a60:	89 e5                	mov    %esp,%ebp
80104a62:	83 ec 18             	sub    $0x18,%esp
  struct inode *ip;
  char *path;
  int major, minor;

  begin_op();
80104a65:	e8 00 de ff ff       	call   8010286a <begin_op>
  if((argstr(0, &path)) < 0 ||
80104a6a:	83 ec 08             	sub    $0x8,%esp
80104a6d:	8d 45 f4             	lea    -0xc(%ebp),%eax
80104a70:	50                   	push   %eax
80104a71:	6a 00                	push   $0x0
80104a73:	e8 dd f5 ff ff       	call   80104055 <argstr>
80104a78:	83 c4 10             	add    $0x10,%esp
80104a7b:	85 c0                	test   %eax,%eax
80104a7d:	78 62                	js     80104ae1 <sys_mknod+0x86>
     argint(1, &major) < 0 ||
80104a7f:	83 ec 08             	sub    $0x8,%esp
80104a82:	8d 45 f0             	lea    -0x10(%ebp),%eax
80104a85:	50                   	push   %eax
80104a86:	6a 01                	push   $0x1
80104a88:	e8 30 f5 ff ff       	call   80103fbd <argint>
  if((argstr(0, &path)) < 0 ||
80104a8d:	83 c4 10             	add    $0x10,%esp
80104a90:	85 c0                	test   %eax,%eax
80104a92:	78 4d                	js     80104ae1 <sys_mknod+0x86>
     argint(2, &minor) < 0 ||
80104a94:	83 ec 08             	sub    $0x8,%esp
80104a97:	8d 45 ec             	lea    -0x14(%ebp),%eax
80104a9a:	50                   	push   %eax
80104a9b:	6a 02                	push   $0x2
80104a9d:	e8 1b f5 ff ff       	call   80103fbd <argint>
     argint(1, &major) < 0 ||
80104aa2:	83 c4 10             	add    $0x10,%esp
80104aa5:	85 c0                	test   %eax,%eax
80104aa7:	78 38                	js     80104ae1 <sys_mknod+0x86>
     (ip = create(path, T_DEV, major, minor)) == 0){
80104aa9:	0f bf 4d f0          	movswl -0x10(%ebp),%ecx
80104aad:	83 ec 0c             	sub    $0xc,%esp
80104ab0:	0f bf 45 ec          	movswl -0x14(%ebp),%eax
80104ab4:	50                   	push   %eax
80104ab5:	ba 03 00 00 00       	mov    $0x3,%edx
80104aba:	8b 45 f4             	mov    -0xc(%ebp),%eax
80104abd:	e8 13 f7 ff ff       	call   801041d5 <create>
     argint(2, &minor) < 0 ||
80104ac2:	83 c4 10             	add    $0x10,%esp
80104ac5:	85 c0                	test   %eax,%eax
80104ac7:	74 18                	je     80104ae1 <sys_mknod+0x86>
    end_op();
    return -1;
  }
  iunlockput(ip);
80104ac9:	83 ec 0c             	sub    $0xc,%esp
80104acc:	50                   	push   %eax
80104acd:	e8 c6 cc ff ff       	call   80101798 <iunlockput>
  end_op();
80104ad2:	e8 11 de ff ff       	call   801028e8 <end_op>
  return 0;
80104ad7:	83 c4 10             	add    $0x10,%esp
80104ada:	b8 00 00 00 00       	mov    $0x0,%eax
}
80104adf:	c9                   	leave  
80104ae0:	c3                   	ret    
    end_op();
80104ae1:	e8 02 de ff ff       	call   801028e8 <end_op>
    return -1;
80104ae6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104aeb:	eb f2                	jmp    80104adf <sys_mknod+0x84>

80104aed <sys_chdir>:

int
sys_chdir(void)
{
80104aed:	f3 0f 1e fb          	endbr32 
80104af1:	55                   	push   %ebp
80104af2:	89 e5                	mov    %esp,%ebp
80104af4:	56                   	push   %esi
80104af5:	53                   	push   %ebx
80104af6:	83 ec 10             	sub    $0x10,%esp
  char *path;
  struct inode *ip;
  struct proc *curproc = myproc();
80104af9:	e8 e2 e7 ff ff       	call   801032e0 <myproc>
80104afe:	89 c6                	mov    %eax,%esi
  
  begin_op();
80104b00:	e8 65 dd ff ff       	call   8010286a <begin_op>
  if(argstr(0, &path) < 0 || (ip = namei(path)) == 0){
80104b05:	83 ec 08             	sub    $0x8,%esp
80104b08:	8d 45 f4             	lea    -0xc(%ebp),%eax
80104b0b:	50                   	push   %eax
80104b0c:	6a 00                	push   $0x0
80104b0e:	e8 42 f5 ff ff       	call   80104055 <argstr>
80104b13:	83 c4 10             	add    $0x10,%esp
80104b16:	85 c0                	test   %eax,%eax
80104b18:	78 52                	js     80104b6c <sys_chdir+0x7f>
80104b1a:	83 ec 0c             	sub    $0xc,%esp
80104b1d:	ff 75 f4             	pushl  -0xc(%ebp)
80104b20:	e8 45 d1 ff ff       	call   80101c6a <namei>
80104b25:	89 c3                	mov    %eax,%ebx
80104b27:	83 c4 10             	add    $0x10,%esp
80104b2a:	85 c0                	test   %eax,%eax
80104b2c:	74 3e                	je     80104b6c <sys_chdir+0x7f>
    end_op();
    return -1;
  }
  ilock(ip);
80104b2e:	83 ec 0c             	sub    $0xc,%esp
80104b31:	50                   	push   %eax
80104b32:	e8 ae ca ff ff       	call   801015e5 <ilock>
  if(ip->type != T_DIR){
80104b37:	83 c4 10             	add    $0x10,%esp
80104b3a:	66 83 7b 50 01       	cmpw   $0x1,0x50(%ebx)
80104b3f:	75 37                	jne    80104b78 <sys_chdir+0x8b>
    iunlockput(ip);
    end_op();
    return -1;
  }
  iunlock(ip);
80104b41:	83 ec 0c             	sub    $0xc,%esp
80104b44:	53                   	push   %ebx
80104b45:	e8 61 cb ff ff       	call   801016ab <iunlock>
  iput(curproc->cwd);
80104b4a:	83 c4 04             	add    $0x4,%esp
80104b4d:	ff 76 68             	pushl  0x68(%esi)
80104b50:	e8 9f cb ff ff       	call   801016f4 <iput>
  end_op();
80104b55:	e8 8e dd ff ff       	call   801028e8 <end_op>
  curproc->cwd = ip;
80104b5a:	89 5e 68             	mov    %ebx,0x68(%esi)
  return 0;
80104b5d:	83 c4 10             	add    $0x10,%esp
80104b60:	b8 00 00 00 00       	mov    $0x0,%eax
}
80104b65:	8d 65 f8             	lea    -0x8(%ebp),%esp
80104b68:	5b                   	pop    %ebx
80104b69:	5e                   	pop    %esi
80104b6a:	5d                   	pop    %ebp
80104b6b:	c3                   	ret    
    end_op();
80104b6c:	e8 77 dd ff ff       	call   801028e8 <end_op>
    return -1;
80104b71:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104b76:	eb ed                	jmp    80104b65 <sys_chdir+0x78>
    iunlockput(ip);
80104b78:	83 ec 0c             	sub    $0xc,%esp
80104b7b:	53                   	push   %ebx
80104b7c:	e8 17 cc ff ff       	call   80101798 <iunlockput>
    end_op();
80104b81:	e8 62 dd ff ff       	call   801028e8 <end_op>
    return -1;
80104b86:	83 c4 10             	add    $0x10,%esp
80104b89:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104b8e:	eb d5                	jmp    80104b65 <sys_chdir+0x78>

80104b90 <sys_exec>:

int
sys_exec(void)
{
80104b90:	f3 0f 1e fb          	endbr32 
80104b94:	55                   	push   %ebp
80104b95:	89 e5                	mov    %esp,%ebp
80104b97:	53                   	push   %ebx
80104b98:	81 ec 9c 00 00 00    	sub    $0x9c,%esp
  char *path, *argv[MAXARG];
  int i;
  uint uargv, uarg;

  if(argstr(0, &path) < 0 || argint(1, (int*)&uargv) < 0){
80104b9e:	8d 45 f4             	lea    -0xc(%ebp),%eax
80104ba1:	50                   	push   %eax
80104ba2:	6a 00                	push   $0x0
80104ba4:	e8 ac f4 ff ff       	call   80104055 <argstr>
80104ba9:	83 c4 10             	add    $0x10,%esp
80104bac:	85 c0                	test   %eax,%eax
80104bae:	78 38                	js     80104be8 <sys_exec+0x58>
80104bb0:	83 ec 08             	sub    $0x8,%esp
80104bb3:	8d 85 70 ff ff ff    	lea    -0x90(%ebp),%eax
80104bb9:	50                   	push   %eax
80104bba:	6a 01                	push   $0x1
80104bbc:	e8 fc f3 ff ff       	call   80103fbd <argint>
80104bc1:	83 c4 10             	add    $0x10,%esp
80104bc4:	85 c0                	test   %eax,%eax
80104bc6:	78 20                	js     80104be8 <sys_exec+0x58>
    return -1;
  }
  memset(argv, 0, sizeof(argv));
80104bc8:	83 ec 04             	sub    $0x4,%esp
80104bcb:	68 80 00 00 00       	push   $0x80
80104bd0:	6a 00                	push   $0x0
80104bd2:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
80104bd8:	50                   	push   %eax
80104bd9:	e8 85 f1 ff ff       	call   80103d63 <memset>
80104bde:	83 c4 10             	add    $0x10,%esp
  for(i=0;; i++){
80104be1:	bb 00 00 00 00       	mov    $0x0,%ebx
80104be6:	eb 2c                	jmp    80104c14 <sys_exec+0x84>
    return -1;
80104be8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104bed:	eb 78                	jmp    80104c67 <sys_exec+0xd7>
    if(i >= NELEM(argv))
      return -1;
    if(fetchint(uargv+4*i, (int*)&uarg) < 0)
      return -1;
    if(uarg == 0){
      argv[i] = 0;
80104bef:	c7 84 9d 74 ff ff ff 	movl   $0x0,-0x8c(%ebp,%ebx,4)
80104bf6:	00 00 00 00 
      break;
    }
    if(fetchstr(uarg, &argv[i]) < 0)
      return -1;
  }
  return exec(path, argv);
80104bfa:	83 ec 08             	sub    $0x8,%esp
80104bfd:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
80104c03:	50                   	push   %eax
80104c04:	ff 75 f4             	pushl  -0xc(%ebp)
80104c07:	e8 f0 bc ff ff       	call   801008fc <exec>
80104c0c:	83 c4 10             	add    $0x10,%esp
80104c0f:	eb 56                	jmp    80104c67 <sys_exec+0xd7>
  for(i=0;; i++){
80104c11:	83 c3 01             	add    $0x1,%ebx
    if(i >= NELEM(argv))
80104c14:	83 fb 1f             	cmp    $0x1f,%ebx
80104c17:	77 49                	ja     80104c62 <sys_exec+0xd2>
    if(fetchint(uargv+4*i, (int*)&uarg) < 0)
80104c19:	83 ec 08             	sub    $0x8,%esp
80104c1c:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
80104c22:	50                   	push   %eax
80104c23:	8b 85 70 ff ff ff    	mov    -0x90(%ebp),%eax
80104c29:	8d 04 98             	lea    (%eax,%ebx,4),%eax
80104c2c:	50                   	push   %eax
80104c2d:	e8 07 f3 ff ff       	call   80103f39 <fetchint>
80104c32:	83 c4 10             	add    $0x10,%esp
80104c35:	85 c0                	test   %eax,%eax
80104c37:	78 33                	js     80104c6c <sys_exec+0xdc>
    if(uarg == 0){
80104c39:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
80104c3f:	85 c0                	test   %eax,%eax
80104c41:	74 ac                	je     80104bef <sys_exec+0x5f>
    if(fetchstr(uarg, &argv[i]) < 0)
80104c43:	83 ec 08             	sub    $0x8,%esp
80104c46:	8d 94 9d 74 ff ff ff 	lea    -0x8c(%ebp,%ebx,4),%edx
80104c4d:	52                   	push   %edx
80104c4e:	50                   	push   %eax
80104c4f:	e8 25 f3 ff ff       	call   80103f79 <fetchstr>
80104c54:	83 c4 10             	add    $0x10,%esp
80104c57:	85 c0                	test   %eax,%eax
80104c59:	79 b6                	jns    80104c11 <sys_exec+0x81>
      return -1;
80104c5b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104c60:	eb 05                	jmp    80104c67 <sys_exec+0xd7>
      return -1;
80104c62:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
80104c67:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80104c6a:	c9                   	leave  
80104c6b:	c3                   	ret    
      return -1;
80104c6c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104c71:	eb f4                	jmp    80104c67 <sys_exec+0xd7>

80104c73 <sys_pipe>:

int
sys_pipe(void)
{
80104c73:	f3 0f 1e fb          	endbr32 
80104c77:	55                   	push   %ebp
80104c78:	89 e5                	mov    %esp,%ebp
80104c7a:	53                   	push   %ebx
80104c7b:	83 ec 18             	sub    $0x18,%esp
  int *fd;
  struct file *rf, *wf;
  int fd0, fd1;

  if(argptr(0, (void*)&fd, 2*sizeof(fd[0])) < 0)
80104c7e:	6a 08                	push   $0x8
80104c80:	8d 45 f4             	lea    -0xc(%ebp),%eax
80104c83:	50                   	push   %eax
80104c84:	6a 00                	push   $0x0
80104c86:	e8 5e f3 ff ff       	call   80103fe9 <argptr>
80104c8b:	83 c4 10             	add    $0x10,%esp
80104c8e:	85 c0                	test   %eax,%eax
80104c90:	78 79                	js     80104d0b <sys_pipe+0x98>
    return -1;
  if(pipealloc(&rf, &wf) < 0)
80104c92:	83 ec 08             	sub    $0x8,%esp
80104c95:	8d 45 ec             	lea    -0x14(%ebp),%eax
80104c98:	50                   	push   %eax
80104c99:	8d 45 f0             	lea    -0x10(%ebp),%eax
80104c9c:	50                   	push   %eax
80104c9d:	e8 6d e1 ff ff       	call   80102e0f <pipealloc>
80104ca2:	83 c4 10             	add    $0x10,%esp
80104ca5:	85 c0                	test   %eax,%eax
80104ca7:	78 69                	js     80104d12 <sys_pipe+0x9f>
    return -1;
  fd0 = -1;
  if((fd0 = fdalloc(rf)) < 0 || (fd1 = fdalloc(wf)) < 0){
80104ca9:	8b 45 f0             	mov    -0x10(%ebp),%eax
80104cac:	e8 96 f4 ff ff       	call   80104147 <fdalloc>
80104cb1:	89 c3                	mov    %eax,%ebx
80104cb3:	85 c0                	test   %eax,%eax
80104cb5:	78 21                	js     80104cd8 <sys_pipe+0x65>
80104cb7:	8b 45 ec             	mov    -0x14(%ebp),%eax
80104cba:	e8 88 f4 ff ff       	call   80104147 <fdalloc>
80104cbf:	85 c0                	test   %eax,%eax
80104cc1:	78 15                	js     80104cd8 <sys_pipe+0x65>
      myproc()->ofile[fd0] = 0;
    fileclose(rf);
    fileclose(wf);
    return -1;
  }
  fd[0] = fd0;
80104cc3:	8b 55 f4             	mov    -0xc(%ebp),%edx
80104cc6:	89 1a                	mov    %ebx,(%edx)
  fd[1] = fd1;
80104cc8:	8b 55 f4             	mov    -0xc(%ebp),%edx
80104ccb:	89 42 04             	mov    %eax,0x4(%edx)
  return 0;
80104cce:	b8 00 00 00 00       	mov    $0x0,%eax
}
80104cd3:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80104cd6:	c9                   	leave  
80104cd7:	c3                   	ret    
    if(fd0 >= 0)
80104cd8:	85 db                	test   %ebx,%ebx
80104cda:	79 20                	jns    80104cfc <sys_pipe+0x89>
    fileclose(rf);
80104cdc:	83 ec 0c             	sub    $0xc,%esp
80104cdf:	ff 75 f0             	pushl  -0x10(%ebp)
80104ce2:	e8 2b c0 ff ff       	call   80100d12 <fileclose>
    fileclose(wf);
80104ce7:	83 c4 04             	add    $0x4,%esp
80104cea:	ff 75 ec             	pushl  -0x14(%ebp)
80104ced:	e8 20 c0 ff ff       	call   80100d12 <fileclose>
    return -1;
80104cf2:	83 c4 10             	add    $0x10,%esp
80104cf5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104cfa:	eb d7                	jmp    80104cd3 <sys_pipe+0x60>
      myproc()->ofile[fd0] = 0;
80104cfc:	e8 df e5 ff ff       	call   801032e0 <myproc>
80104d01:	c7 44 98 28 00 00 00 	movl   $0x0,0x28(%eax,%ebx,4)
80104d08:	00 
80104d09:	eb d1                	jmp    80104cdc <sys_pipe+0x69>
    return -1;
80104d0b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104d10:	eb c1                	jmp    80104cd3 <sys_pipe+0x60>
    return -1;
80104d12:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104d17:	eb ba                	jmp    80104cd3 <sys_pipe+0x60>

80104d19 <sys_fork>:
80104d19:	55                   	push   %ebp
80104d1a:	89 e5                	mov    %esp,%ebp
80104d1c:	83 ec 08             	sub    $0x8,%esp
80104d1f:	e8 3e e7 ff ff       	call   80103462 <fork>
80104d24:	c9                   	leave  
80104d25:	c3                   	ret    

80104d26 <sys_exit>:
80104d26:	55                   	push   %ebp
80104d27:	89 e5                	mov    %esp,%ebp
80104d29:	83 ec 20             	sub    $0x20,%esp
80104d2c:	8d 45 f4             	lea    -0xc(%ebp),%eax
80104d2f:	50                   	push   %eax
80104d30:	6a 00                	push   $0x0
80104d32:	e8 86 f2 ff ff       	call   80103fbd <argint>
80104d37:	83 c4 10             	add    $0x10,%esp
80104d3a:	85 c0                	test   %eax,%eax
80104d3c:	78 15                	js     80104d53 <sys_exit+0x2d>
80104d3e:	83 ec 0c             	sub    $0xc,%esp
80104d41:	ff 75 f4             	pushl  -0xc(%ebp)
80104d44:	e8 59 e9 ff ff       	call   801036a2 <exit>
80104d49:	83 c4 10             	add    $0x10,%esp
80104d4c:	b8 00 00 00 00       	mov    $0x0,%eax
80104d51:	c9                   	leave  
80104d52:	c3                   	ret    
80104d53:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104d58:	eb f7                	jmp    80104d51 <sys_exit+0x2b>

80104d5a <sys_wait>:
80104d5a:	55                   	push   %ebp
80104d5b:	89 e5                	mov    %esp,%ebp
80104d5d:	83 ec 1c             	sub    $0x1c,%esp
80104d60:	6a 04                	push   $0x4
80104d62:	8d 45 f4             	lea    -0xc(%ebp),%eax
80104d65:	50                   	push   %eax
80104d66:	6a 00                	push   $0x0
80104d68:	e8 7c f2 ff ff       	call   80103fe9 <argptr>
80104d6d:	83 c4 04             	add    $0x4,%esp
80104d70:	ff 75 f4             	pushl  -0xc(%ebp)
80104d73:	e8 c5 ea ff ff       	call   8010383d <wait>
80104d78:	c9                   	leave  
80104d79:	c3                   	ret    

80104d7a <sys_kill>:
80104d7a:	55                   	push   %ebp
80104d7b:	89 e5                	mov    %esp,%ebp
80104d7d:	83 ec 20             	sub    $0x20,%esp
80104d80:	8d 45 f4             	lea    -0xc(%ebp),%eax
80104d83:	50                   	push   %eax
80104d84:	6a 00                	push   $0x0
80104d86:	e8 32 f2 ff ff       	call   80103fbd <argint>
80104d8b:	83 c4 10             	add    $0x10,%esp
80104d8e:	85 c0                	test   %eax,%eax
80104d90:	78 10                	js     80104da2 <sys_kill+0x28>
80104d92:	83 ec 0c             	sub    $0xc,%esp
80104d95:	ff 75 f4             	pushl  -0xc(%ebp)
80104d98:	e8 a5 eb ff ff       	call   80103942 <kill>
80104d9d:	83 c4 10             	add    $0x10,%esp
80104da0:	c9                   	leave  
80104da1:	c3                   	ret    
80104da2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104da7:	eb f7                	jmp    80104da0 <sys_kill+0x26>

80104da9 <sys_getpid>:
80104da9:	55                   	push   %ebp
80104daa:	89 e5                	mov    %esp,%ebp
80104dac:	83 ec 08             	sub    $0x8,%esp
80104daf:	e8 2c e5 ff ff       	call   801032e0 <myproc>
80104db4:	8b 40 10             	mov    0x10(%eax),%eax
80104db7:	c9                   	leave  
80104db8:	c3                   	ret    

80104db9 <sys_sbrk>:
80104db9:	55                   	push   %ebp
80104dba:	89 e5                	mov    %esp,%ebp
80104dbc:	53                   	push   %ebx
80104dbd:	83 ec 1c             	sub    $0x1c,%esp
80104dc0:	8d 45 f4             	lea    -0xc(%ebp),%eax
80104dc3:	50                   	push   %eax
80104dc4:	6a 00                	push   $0x0
80104dc6:	e8 f2 f1 ff ff       	call   80103fbd <argint>
80104dcb:	83 c4 10             	add    $0x10,%esp
80104dce:	85 c0                	test   %eax,%eax
80104dd0:	78 20                	js     80104df2 <sys_sbrk+0x39>
80104dd2:	e8 09 e5 ff ff       	call   801032e0 <myproc>
80104dd7:	8b 18                	mov    (%eax),%ebx
80104dd9:	83 ec 0c             	sub    $0xc,%esp
80104ddc:	ff 75 f4             	pushl  -0xc(%ebp)
80104ddf:	e8 10 e6 ff ff       	call   801033f4 <growproc>
80104de4:	83 c4 10             	add    $0x10,%esp
80104de7:	85 c0                	test   %eax,%eax
80104de9:	78 0e                	js     80104df9 <sys_sbrk+0x40>
80104deb:	89 d8                	mov    %ebx,%eax
80104ded:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80104df0:	c9                   	leave  
80104df1:	c3                   	ret    
80104df2:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
80104df7:	eb f2                	jmp    80104deb <sys_sbrk+0x32>
80104df9:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
80104dfe:	eb eb                	jmp    80104deb <sys_sbrk+0x32>

80104e00 <sys_sleep>:
80104e00:	55                   	push   %ebp
80104e01:	89 e5                	mov    %esp,%ebp
80104e03:	53                   	push   %ebx
80104e04:	83 ec 1c             	sub    $0x1c,%esp
80104e07:	8d 45 f4             	lea    -0xc(%ebp),%eax
80104e0a:	50                   	push   %eax
80104e0b:	6a 00                	push   $0x0
80104e0d:	e8 ab f1 ff ff       	call   80103fbd <argint>
80104e12:	83 c4 10             	add    $0x10,%esp
80104e15:	85 c0                	test   %eax,%eax
80104e17:	78 75                	js     80104e8e <sys_sleep+0x8e>
80104e19:	83 ec 0c             	sub    $0xc,%esp
80104e1c:	68 e0 a5 10 80       	push   $0x8010a5e0
80104e21:	e8 91 ee ff ff       	call   80103cb7 <acquire>
80104e26:	8b 1d c0 a5 10 80    	mov    0x8010a5c0,%ebx
80104e2c:	83 c4 10             	add    $0x10,%esp
80104e2f:	a1 c0 a5 10 80       	mov    0x8010a5c0,%eax
80104e34:	29 d8                	sub    %ebx,%eax
80104e36:	3b 45 f4             	cmp    -0xc(%ebp),%eax
80104e39:	73 39                	jae    80104e74 <sys_sleep+0x74>
80104e3b:	e8 a0 e4 ff ff       	call   801032e0 <myproc>
80104e40:	83 78 24 00          	cmpl   $0x0,0x24(%eax)
80104e44:	75 17                	jne    80104e5d <sys_sleep+0x5d>
80104e46:	83 ec 08             	sub    $0x8,%esp
80104e49:	68 e0 a5 10 80       	push   $0x8010a5e0
80104e4e:	68 c0 a5 10 80       	push   $0x8010a5c0
80104e53:	e8 50 e9 ff ff       	call   801037a8 <sleep>
80104e58:	83 c4 10             	add    $0x10,%esp
80104e5b:	eb d2                	jmp    80104e2f <sys_sleep+0x2f>
80104e5d:	83 ec 0c             	sub    $0xc,%esp
80104e60:	68 e0 a5 10 80       	push   $0x8010a5e0
80104e65:	e8 b2 ee ff ff       	call   80103d1c <release>
80104e6a:	83 c4 10             	add    $0x10,%esp
80104e6d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104e72:	eb 15                	jmp    80104e89 <sys_sleep+0x89>
80104e74:	83 ec 0c             	sub    $0xc,%esp
80104e77:	68 e0 a5 10 80       	push   $0x8010a5e0
80104e7c:	e8 9b ee ff ff       	call   80103d1c <release>
80104e81:	83 c4 10             	add    $0x10,%esp
80104e84:	b8 00 00 00 00       	mov    $0x0,%eax
80104e89:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80104e8c:	c9                   	leave  
80104e8d:	c3                   	ret    
80104e8e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104e93:	eb f4                	jmp    80104e89 <sys_sleep+0x89>

80104e95 <sys_uptime>:
80104e95:	55                   	push   %ebp
80104e96:	89 e5                	mov    %esp,%ebp
80104e98:	53                   	push   %ebx
80104e99:	83 ec 10             	sub    $0x10,%esp
80104e9c:	68 e0 a5 10 80       	push   $0x8010a5e0
80104ea1:	e8 11 ee ff ff       	call   80103cb7 <acquire>
80104ea6:	8b 1d c0 a5 10 80    	mov    0x8010a5c0,%ebx
80104eac:	c7 04 24 e0 a5 10 80 	movl   $0x8010a5e0,(%esp)
80104eb3:	e8 64 ee ff ff       	call   80103d1c <release>
80104eb8:	89 d8                	mov    %ebx,%eax
80104eba:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80104ebd:	c9                   	leave  
80104ebe:	c3                   	ret    

80104ebf <sys_date>:
80104ebf:	55                   	push   %ebp
80104ec0:	89 e5                	mov    %esp,%ebp
80104ec2:	83 ec 1c             	sub    $0x1c,%esp
80104ec5:	6a 18                	push   $0x18
80104ec7:	8d 45 f4             	lea    -0xc(%ebp),%eax
80104eca:	50                   	push   %eax
80104ecb:	6a 00                	push   $0x0
80104ecd:	e8 17 f1 ff ff       	call   80103fe9 <argptr>
80104ed2:	83 c4 10             	add    $0x10,%esp
80104ed5:	85 c0                	test   %eax,%eax
80104ed7:	78 15                	js     80104eee <sys_date+0x2f>
80104ed9:	83 ec 0c             	sub    $0xc,%esp
80104edc:	ff 75 f4             	pushl  -0xc(%ebp)
80104edf:	e8 33 d6 ff ff       	call   80102517 <cmostime>
80104ee4:	83 c4 10             	add    $0x10,%esp
80104ee7:	b8 00 00 00 00       	mov    $0x0,%eax
80104eec:	c9                   	leave  
80104eed:	c3                   	ret    
80104eee:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104ef3:	eb f7                	jmp    80104eec <sys_date+0x2d>

80104ef5 <alltraps>:
80104ef5:	1e                   	push   %ds
80104ef6:	06                   	push   %es
80104ef7:	0f a0                	push   %fs
80104ef9:	0f a8                	push   %gs
80104efb:	60                   	pusha  
80104efc:	66 b8 10 00          	mov    $0x10,%ax
80104f00:	8e d8                	mov    %eax,%ds
80104f02:	8e c0                	mov    %eax,%es
80104f04:	54                   	push   %esp
80104f05:	e8 3f 01 00 00       	call   80105049 <trap>
80104f0a:	83 c4 04             	add    $0x4,%esp

80104f0d <trapret>:
80104f0d:	61                   	popa   
80104f0e:	0f a9                	pop    %gs
80104f10:	0f a1                	pop    %fs
80104f12:	07                   	pop    %es
80104f13:	1f                   	pop    %ds
80104f14:	83 c4 08             	add    $0x8,%esp
80104f17:	cf                   	iret   

80104f18 <tvinit>:
80104f18:	f3 0f 1e fb          	endbr32 
80104f1c:	55                   	push   %ebp
80104f1d:	89 e5                	mov    %esp,%ebp
80104f1f:	53                   	push   %ebx
80104f20:	83 ec 04             	sub    $0x4,%esp
80104f23:	b8 00 00 00 00       	mov    $0x0,%eax
80104f28:	eb 76                	jmp    80104fa0 <tvinit+0x88>
80104f2a:	8b 0c 85 08 a0 10 80 	mov    -0x7fef5ff8(,%eax,4),%ecx
80104f31:	66 89 0c c5 20 a6 10 	mov    %cx,-0x7fef59e0(,%eax,8)
80104f38:	80 
80104f39:	66 c7 04 c5 22 a6 10 	movw   $0x8,-0x7fef59de(,%eax,8)
80104f40:	80 08 00 
80104f43:	0f b6 14 c5 24 a6 10 	movzbl -0x7fef59dc(,%eax,8),%edx
80104f4a:	80 
80104f4b:	83 e2 e0             	and    $0xffffffe0,%edx
80104f4e:	88 14 c5 24 a6 10 80 	mov    %dl,-0x7fef59dc(,%eax,8)
80104f55:	c6 04 c5 24 a6 10 80 	movb   $0x0,-0x7fef59dc(,%eax,8)
80104f5c:	00 
80104f5d:	0f b6 14 c5 25 a6 10 	movzbl -0x7fef59db(,%eax,8),%edx
80104f64:	80 
80104f65:	83 e2 f0             	and    $0xfffffff0,%edx
80104f68:	83 ca 0e             	or     $0xe,%edx
80104f6b:	88 14 c5 25 a6 10 80 	mov    %dl,-0x7fef59db(,%eax,8)
80104f72:	89 d3                	mov    %edx,%ebx
80104f74:	83 e3 ef             	and    $0xffffffef,%ebx
80104f77:	88 1c c5 25 a6 10 80 	mov    %bl,-0x7fef59db(,%eax,8)
80104f7e:	83 e2 8f             	and    $0xffffff8f,%edx
80104f81:	88 14 c5 25 a6 10 80 	mov    %dl,-0x7fef59db(,%eax,8)
80104f88:	83 ca 80             	or     $0xffffff80,%edx
80104f8b:	88 14 c5 25 a6 10 80 	mov    %dl,-0x7fef59db(,%eax,8)
80104f92:	c1 e9 10             	shr    $0x10,%ecx
80104f95:	66 89 0c c5 26 a6 10 	mov    %cx,-0x7fef59da(,%eax,8)
80104f9c:	80 
80104f9d:	83 c0 01             	add    $0x1,%eax
80104fa0:	3d ff 00 00 00       	cmp    $0xff,%eax
80104fa5:	7e 83                	jle    80104f2a <tvinit+0x12>
80104fa7:	8b 15 08 a1 10 80    	mov    0x8010a108,%edx
80104fad:	66 89 15 20 a8 10 80 	mov    %dx,0x8010a820
80104fb4:	66 c7 05 22 a8 10 80 	movw   $0x8,0x8010a822
80104fbb:	08 00 
80104fbd:	0f b6 05 24 a8 10 80 	movzbl 0x8010a824,%eax
80104fc4:	83 e0 e0             	and    $0xffffffe0,%eax
80104fc7:	a2 24 a8 10 80       	mov    %al,0x8010a824
80104fcc:	c6 05 24 a8 10 80 00 	movb   $0x0,0x8010a824
80104fd3:	0f b6 05 25 a8 10 80 	movzbl 0x8010a825,%eax
80104fda:	83 c8 0f             	or     $0xf,%eax
80104fdd:	a2 25 a8 10 80       	mov    %al,0x8010a825
80104fe2:	83 e0 ef             	and    $0xffffffef,%eax
80104fe5:	a2 25 a8 10 80       	mov    %al,0x8010a825
80104fea:	89 c1                	mov    %eax,%ecx
80104fec:	83 c9 60             	or     $0x60,%ecx
80104fef:	88 0d 25 a8 10 80    	mov    %cl,0x8010a825
80104ff5:	83 c8 e0             	or     $0xffffffe0,%eax
80104ff8:	a2 25 a8 10 80       	mov    %al,0x8010a825
80104ffd:	c1 ea 10             	shr    $0x10,%edx
80105000:	66 89 15 26 a8 10 80 	mov    %dx,0x8010a826
80105007:	83 ec 08             	sub    $0x8,%esp
8010500a:	68 e1 6f 10 80       	push   $0x80106fe1
8010500f:	68 e0 a5 10 80       	push   $0x8010a5e0
80105014:	e8 62 eb ff ff       	call   80103b7b <initlock>
80105019:	83 c4 10             	add    $0x10,%esp
8010501c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
8010501f:	c9                   	leave  
80105020:	c3                   	ret    

80105021 <idtinit>:
80105021:	f3 0f 1e fb          	endbr32 
80105025:	55                   	push   %ebp
80105026:	89 e5                	mov    %esp,%ebp
80105028:	83 ec 10             	sub    $0x10,%esp
8010502b:	66 c7 45 fa ff 07    	movw   $0x7ff,-0x6(%ebp)
80105031:	b8 20 a6 10 80       	mov    $0x8010a620,%eax
80105036:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
8010503a:	c1 e8 10             	shr    $0x10,%eax
8010503d:	66 89 45 fe          	mov    %ax,-0x2(%ebp)
80105041:	8d 45 fa             	lea    -0x6(%ebp),%eax
80105044:	0f 01 18             	lidtl  (%eax)
80105047:	c9                   	leave  
80105048:	c3                   	ret    

80105049 <trap>:
80105049:	f3 0f 1e fb          	endbr32 
8010504d:	55                   	push   %ebp
8010504e:	89 e5                	mov    %esp,%ebp
80105050:	57                   	push   %edi
80105051:	56                   	push   %esi
80105052:	53                   	push   %ebx
80105053:	83 ec 1c             	sub    $0x1c,%esp
80105056:	8b 5d 08             	mov    0x8(%ebp),%ebx
80105059:	8b 43 30             	mov    0x30(%ebx),%eax
8010505c:	83 f8 40             	cmp    $0x40,%eax
8010505f:	74 14                	je     80105075 <trap+0x2c>
80105061:	83 e8 20             	sub    $0x20,%eax
80105064:	83 f8 1f             	cmp    $0x1f,%eax
80105067:	0f 87 3b 01 00 00    	ja     801051a8 <trap+0x15f>
8010506d:	3e ff 24 85 88 70 10 	notrack jmp *-0x7fef8f78(,%eax,4)
80105074:	80 
80105075:	e8 66 e2 ff ff       	call   801032e0 <myproc>
8010507a:	83 78 24 00          	cmpl   $0x0,0x24(%eax)
8010507e:	75 1f                	jne    8010509f <trap+0x56>
80105080:	e8 5b e2 ff ff       	call   801032e0 <myproc>
80105085:	89 58 18             	mov    %ebx,0x18(%eax)
80105088:	e8 ff ef ff ff       	call   8010408c <syscall>
8010508d:	e8 4e e2 ff ff       	call   801032e0 <myproc>
80105092:	83 78 24 00          	cmpl   $0x0,0x24(%eax)
80105096:	74 7e                	je     80105116 <trap+0xcd>
80105098:	e8 05 e6 ff ff       	call   801036a2 <exit>
8010509d:	eb 77                	jmp    80105116 <trap+0xcd>
8010509f:	e8 fe e5 ff ff       	call   801036a2 <exit>
801050a4:	eb da                	jmp    80105080 <trap+0x37>
801050a6:	e8 16 e2 ff ff       	call   801032c1 <cpuid>
801050ab:	85 c0                	test   %eax,%eax
801050ad:	74 6f                	je     8010511e <trap+0xd5>
801050af:	e8 9a d3 ff ff       	call   8010244e <lapiceoi>
801050b4:	e8 27 e2 ff ff       	call   801032e0 <myproc>
801050b9:	85 c0                	test   %eax,%eax
801050bb:	74 1c                	je     801050d9 <trap+0x90>
801050bd:	e8 1e e2 ff ff       	call   801032e0 <myproc>
801050c2:	83 78 24 00          	cmpl   $0x0,0x24(%eax)
801050c6:	74 11                	je     801050d9 <trap+0x90>
801050c8:	0f b7 43 3c          	movzwl 0x3c(%ebx),%eax
801050cc:	83 e0 03             	and    $0x3,%eax
801050cf:	66 83 f8 03          	cmp    $0x3,%ax
801050d3:	0f 84 62 01 00 00    	je     8010523b <trap+0x1f2>
801050d9:	e8 02 e2 ff ff       	call   801032e0 <myproc>
801050de:	85 c0                	test   %eax,%eax
801050e0:	74 0f                	je     801050f1 <trap+0xa8>
801050e2:	e8 f9 e1 ff ff       	call   801032e0 <myproc>
801050e7:	83 78 0c 04          	cmpl   $0x4,0xc(%eax)
801050eb:	0f 84 54 01 00 00    	je     80105245 <trap+0x1fc>
801050f1:	e8 ea e1 ff ff       	call   801032e0 <myproc>
801050f6:	85 c0                	test   %eax,%eax
801050f8:	74 1c                	je     80105116 <trap+0xcd>
801050fa:	e8 e1 e1 ff ff       	call   801032e0 <myproc>
801050ff:	83 78 24 00          	cmpl   $0x0,0x24(%eax)
80105103:	74 11                	je     80105116 <trap+0xcd>
80105105:	0f b7 43 3c          	movzwl 0x3c(%ebx),%eax
80105109:	83 e0 03             	and    $0x3,%eax
8010510c:	66 83 f8 03          	cmp    $0x3,%ax
80105110:	0f 84 43 01 00 00    	je     80105259 <trap+0x210>
80105116:	8d 65 f4             	lea    -0xc(%ebp),%esp
80105119:	5b                   	pop    %ebx
8010511a:	5e                   	pop    %esi
8010511b:	5f                   	pop    %edi
8010511c:	5d                   	pop    %ebp
8010511d:	c3                   	ret    
8010511e:	83 ec 0c             	sub    $0xc,%esp
80105121:	68 e0 a5 10 80       	push   $0x8010a5e0
80105126:	e8 8c eb ff ff       	call   80103cb7 <acquire>
8010512b:	83 05 c0 a5 10 80 01 	addl   $0x1,0x8010a5c0
80105132:	c7 04 24 c0 a5 10 80 	movl   $0x8010a5c0,(%esp)
80105139:	e8 d7 e7 ff ff       	call   80103915 <wakeup>
8010513e:	c7 04 24 e0 a5 10 80 	movl   $0x8010a5e0,(%esp)
80105145:	e8 d2 eb ff ff       	call   80103d1c <release>
8010514a:	83 c4 10             	add    $0x10,%esp
8010514d:	e9 5d ff ff ff       	jmp    801050af <trap+0x66>
80105152:	e8 b0 cc ff ff       	call   80101e07 <ideintr>
80105157:	e8 f2 d2 ff ff       	call   8010244e <lapiceoi>
8010515c:	e9 53 ff ff ff       	jmp    801050b4 <trap+0x6b>
80105161:	e8 25 d1 ff ff       	call   8010228b <kbdintr>
80105166:	e8 e3 d2 ff ff       	call   8010244e <lapiceoi>
8010516b:	e9 44 ff ff ff       	jmp    801050b4 <trap+0x6b>
80105170:	e8 0a 02 00 00       	call   8010537f <uartintr>
80105175:	e8 d4 d2 ff ff       	call   8010244e <lapiceoi>
8010517a:	e9 35 ff ff ff       	jmp    801050b4 <trap+0x6b>
8010517f:	8b 7b 38             	mov    0x38(%ebx),%edi
80105182:	0f b7 73 3c          	movzwl 0x3c(%ebx),%esi
80105186:	e8 36 e1 ff ff       	call   801032c1 <cpuid>
8010518b:	57                   	push   %edi
8010518c:	0f b7 f6             	movzwl %si,%esi
8010518f:	56                   	push   %esi
80105190:	50                   	push   %eax
80105191:	68 ec 6f 10 80       	push   $0x80106fec
80105196:	e8 8e b4 ff ff       	call   80100629 <cprintf>
8010519b:	e8 ae d2 ff ff       	call   8010244e <lapiceoi>
801051a0:	83 c4 10             	add    $0x10,%esp
801051a3:	e9 0c ff ff ff       	jmp    801050b4 <trap+0x6b>
801051a8:	e8 33 e1 ff ff       	call   801032e0 <myproc>
801051ad:	85 c0                	test   %eax,%eax
801051af:	74 5f                	je     80105210 <trap+0x1c7>
801051b1:	f6 43 3c 03          	testb  $0x3,0x3c(%ebx)
801051b5:	74 59                	je     80105210 <trap+0x1c7>
801051b7:	0f 20 d7             	mov    %cr2,%edi
801051ba:	8b 43 38             	mov    0x38(%ebx),%eax
801051bd:	89 45 e4             	mov    %eax,-0x1c(%ebp)
801051c0:	e8 fc e0 ff ff       	call   801032c1 <cpuid>
801051c5:	89 45 e0             	mov    %eax,-0x20(%ebp)
801051c8:	8b 53 34             	mov    0x34(%ebx),%edx
801051cb:	89 55 dc             	mov    %edx,-0x24(%ebp)
801051ce:	8b 73 30             	mov    0x30(%ebx),%esi
801051d1:	e8 0a e1 ff ff       	call   801032e0 <myproc>
801051d6:	8d 48 6c             	lea    0x6c(%eax),%ecx
801051d9:	89 4d d8             	mov    %ecx,-0x28(%ebp)
801051dc:	e8 ff e0 ff ff       	call   801032e0 <myproc>
801051e1:	57                   	push   %edi
801051e2:	ff 75 e4             	pushl  -0x1c(%ebp)
801051e5:	ff 75 e0             	pushl  -0x20(%ebp)
801051e8:	ff 75 dc             	pushl  -0x24(%ebp)
801051eb:	56                   	push   %esi
801051ec:	ff 75 d8             	pushl  -0x28(%ebp)
801051ef:	ff 70 10             	pushl  0x10(%eax)
801051f2:	68 44 70 10 80       	push   $0x80107044
801051f7:	e8 2d b4 ff ff       	call   80100629 <cprintf>
801051fc:	83 c4 20             	add    $0x20,%esp
801051ff:	e8 dc e0 ff ff       	call   801032e0 <myproc>
80105204:	c7 40 24 01 00 00 00 	movl   $0x1,0x24(%eax)
8010520b:	e9 a4 fe ff ff       	jmp    801050b4 <trap+0x6b>
80105210:	0f 20 d7             	mov    %cr2,%edi
80105213:	8b 73 38             	mov    0x38(%ebx),%esi
80105216:	e8 a6 e0 ff ff       	call   801032c1 <cpuid>
8010521b:	83 ec 0c             	sub    $0xc,%esp
8010521e:	57                   	push   %edi
8010521f:	56                   	push   %esi
80105220:	50                   	push   %eax
80105221:	ff 73 30             	pushl  0x30(%ebx)
80105224:	68 10 70 10 80       	push   $0x80107010
80105229:	e8 fb b3 ff ff       	call   80100629 <cprintf>
8010522e:	83 c4 14             	add    $0x14,%esp
80105231:	68 e6 6f 10 80       	push   $0x80106fe6
80105236:	e8 21 b1 ff ff       	call   8010035c <panic>
8010523b:	e8 62 e4 ff ff       	call   801036a2 <exit>
80105240:	e9 94 fe ff ff       	jmp    801050d9 <trap+0x90>
80105245:	83 7b 30 20          	cmpl   $0x20,0x30(%ebx)
80105249:	0f 85 a2 fe ff ff    	jne    801050f1 <trap+0xa8>
8010524f:	e8 1e e5 ff ff       	call   80103772 <yield>
80105254:	e9 98 fe ff ff       	jmp    801050f1 <trap+0xa8>
80105259:	e8 44 e4 ff ff       	call   801036a2 <exit>
8010525e:	e9 b3 fe ff ff       	jmp    80105116 <trap+0xcd>

80105263 <uartgetc>:
80105263:	f3 0f 1e fb          	endbr32 
80105267:	83 3d 20 ae 10 80 00 	cmpl   $0x0,0x8010ae20
8010526e:	74 14                	je     80105284 <uartgetc+0x21>
80105270:	ba fd 03 00 00       	mov    $0x3fd,%edx
80105275:	ec                   	in     (%dx),%al
80105276:	a8 01                	test   $0x1,%al
80105278:	74 10                	je     8010528a <uartgetc+0x27>
8010527a:	ba f8 03 00 00       	mov    $0x3f8,%edx
8010527f:	ec                   	in     (%dx),%al
80105280:	0f b6 c0             	movzbl %al,%eax
80105283:	c3                   	ret    
80105284:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80105289:	c3                   	ret    
8010528a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010528f:	c3                   	ret    

80105290 <uartputc>:
80105290:	f3 0f 1e fb          	endbr32 
80105294:	83 3d 20 ae 10 80 00 	cmpl   $0x0,0x8010ae20
8010529b:	74 3b                	je     801052d8 <uartputc+0x48>
8010529d:	55                   	push   %ebp
8010529e:	89 e5                	mov    %esp,%ebp
801052a0:	53                   	push   %ebx
801052a1:	83 ec 04             	sub    $0x4,%esp
801052a4:	bb 00 00 00 00       	mov    $0x0,%ebx
801052a9:	eb 10                	jmp    801052bb <uartputc+0x2b>
801052ab:	83 ec 0c             	sub    $0xc,%esp
801052ae:	6a 0a                	push   $0xa
801052b0:	e8 be d1 ff ff       	call   80102473 <microdelay>
801052b5:	83 c3 01             	add    $0x1,%ebx
801052b8:	83 c4 10             	add    $0x10,%esp
801052bb:	83 fb 7f             	cmp    $0x7f,%ebx
801052be:	7f 0a                	jg     801052ca <uartputc+0x3a>
801052c0:	ba fd 03 00 00       	mov    $0x3fd,%edx
801052c5:	ec                   	in     (%dx),%al
801052c6:	a8 20                	test   $0x20,%al
801052c8:	74 e1                	je     801052ab <uartputc+0x1b>
801052ca:	8b 45 08             	mov    0x8(%ebp),%eax
801052cd:	ba f8 03 00 00       	mov    $0x3f8,%edx
801052d2:	ee                   	out    %al,(%dx)
801052d3:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801052d6:	c9                   	leave  
801052d7:	c3                   	ret    
801052d8:	c3                   	ret    

801052d9 <uartinit>:
801052d9:	f3 0f 1e fb          	endbr32 
801052dd:	55                   	push   %ebp
801052de:	89 e5                	mov    %esp,%ebp
801052e0:	56                   	push   %esi
801052e1:	53                   	push   %ebx
801052e2:	b9 00 00 00 00       	mov    $0x0,%ecx
801052e7:	ba fa 03 00 00       	mov    $0x3fa,%edx
801052ec:	89 c8                	mov    %ecx,%eax
801052ee:	ee                   	out    %al,(%dx)
801052ef:	be fb 03 00 00       	mov    $0x3fb,%esi
801052f4:	b8 80 ff ff ff       	mov    $0xffffff80,%eax
801052f9:	89 f2                	mov    %esi,%edx
801052fb:	ee                   	out    %al,(%dx)
801052fc:	b8 0c 00 00 00       	mov    $0xc,%eax
80105301:	ba f8 03 00 00       	mov    $0x3f8,%edx
80105306:	ee                   	out    %al,(%dx)
80105307:	bb f9 03 00 00       	mov    $0x3f9,%ebx
8010530c:	89 c8                	mov    %ecx,%eax
8010530e:	89 da                	mov    %ebx,%edx
80105310:	ee                   	out    %al,(%dx)
80105311:	b8 03 00 00 00       	mov    $0x3,%eax
80105316:	89 f2                	mov    %esi,%edx
80105318:	ee                   	out    %al,(%dx)
80105319:	ba fc 03 00 00       	mov    $0x3fc,%edx
8010531e:	89 c8                	mov    %ecx,%eax
80105320:	ee                   	out    %al,(%dx)
80105321:	b8 01 00 00 00       	mov    $0x1,%eax
80105326:	89 da                	mov    %ebx,%edx
80105328:	ee                   	out    %al,(%dx)
80105329:	ba fd 03 00 00       	mov    $0x3fd,%edx
8010532e:	ec                   	in     (%dx),%al
8010532f:	3c ff                	cmp    $0xff,%al
80105331:	74 45                	je     80105378 <uartinit+0x9f>
80105333:	c7 05 20 ae 10 80 01 	movl   $0x1,0x8010ae20
8010533a:	00 00 00 
8010533d:	ba fa 03 00 00       	mov    $0x3fa,%edx
80105342:	ec                   	in     (%dx),%al
80105343:	ba f8 03 00 00       	mov    $0x3f8,%edx
80105348:	ec                   	in     (%dx),%al
80105349:	83 ec 08             	sub    $0x8,%esp
8010534c:	6a 00                	push   $0x0
8010534e:	6a 04                	push   $0x4
80105350:	e8 c1 cc ff ff       	call   80102016 <ioapicenable>
80105355:	83 c4 10             	add    $0x10,%esp
80105358:	bb 08 71 10 80       	mov    $0x80107108,%ebx
8010535d:	eb 12                	jmp    80105371 <uartinit+0x98>
8010535f:	83 ec 0c             	sub    $0xc,%esp
80105362:	0f be c0             	movsbl %al,%eax
80105365:	50                   	push   %eax
80105366:	e8 25 ff ff ff       	call   80105290 <uartputc>
8010536b:	83 c3 01             	add    $0x1,%ebx
8010536e:	83 c4 10             	add    $0x10,%esp
80105371:	0f b6 03             	movzbl (%ebx),%eax
80105374:	84 c0                	test   %al,%al
80105376:	75 e7                	jne    8010535f <uartinit+0x86>
80105378:	8d 65 f8             	lea    -0x8(%ebp),%esp
8010537b:	5b                   	pop    %ebx
8010537c:	5e                   	pop    %esi
8010537d:	5d                   	pop    %ebp
8010537e:	c3                   	ret    

8010537f <uartintr>:
8010537f:	f3 0f 1e fb          	endbr32 
80105383:	55                   	push   %ebp
80105384:	89 e5                	mov    %esp,%ebp
80105386:	83 ec 14             	sub    $0x14,%esp
80105389:	68 63 52 10 80       	push   $0x80105263
8010538e:	e8 c6 b3 ff ff       	call   80100759 <consoleintr>
80105393:	83 c4 10             	add    $0x10,%esp
80105396:	c9                   	leave  
80105397:	c3                   	ret    

80105398 <vector0>:
80105398:	6a 00                	push   $0x0
8010539a:	6a 00                	push   $0x0
8010539c:	e9 54 fb ff ff       	jmp    80104ef5 <alltraps>

801053a1 <vector1>:
801053a1:	6a 00                	push   $0x0
801053a3:	6a 01                	push   $0x1
801053a5:	e9 4b fb ff ff       	jmp    80104ef5 <alltraps>

801053aa <vector2>:
801053aa:	6a 00                	push   $0x0
801053ac:	6a 02                	push   $0x2
801053ae:	e9 42 fb ff ff       	jmp    80104ef5 <alltraps>

801053b3 <vector3>:
801053b3:	6a 00                	push   $0x0
801053b5:	6a 03                	push   $0x3
801053b7:	e9 39 fb ff ff       	jmp    80104ef5 <alltraps>

801053bc <vector4>:
801053bc:	6a 00                	push   $0x0
801053be:	6a 04                	push   $0x4
801053c0:	e9 30 fb ff ff       	jmp    80104ef5 <alltraps>

801053c5 <vector5>:
801053c5:	6a 00                	push   $0x0
801053c7:	6a 05                	push   $0x5
801053c9:	e9 27 fb ff ff       	jmp    80104ef5 <alltraps>

801053ce <vector6>:
801053ce:	6a 00                	push   $0x0
801053d0:	6a 06                	push   $0x6
801053d2:	e9 1e fb ff ff       	jmp    80104ef5 <alltraps>

801053d7 <vector7>:
801053d7:	6a 00                	push   $0x0
801053d9:	6a 07                	push   $0x7
801053db:	e9 15 fb ff ff       	jmp    80104ef5 <alltraps>

801053e0 <vector8>:
801053e0:	6a 08                	push   $0x8
801053e2:	e9 0e fb ff ff       	jmp    80104ef5 <alltraps>

801053e7 <vector9>:
801053e7:	6a 00                	push   $0x0
801053e9:	6a 09                	push   $0x9
801053eb:	e9 05 fb ff ff       	jmp    80104ef5 <alltraps>

801053f0 <vector10>:
801053f0:	6a 0a                	push   $0xa
801053f2:	e9 fe fa ff ff       	jmp    80104ef5 <alltraps>

801053f7 <vector11>:
801053f7:	6a 0b                	push   $0xb
801053f9:	e9 f7 fa ff ff       	jmp    80104ef5 <alltraps>

801053fe <vector12>:
801053fe:	6a 0c                	push   $0xc
80105400:	e9 f0 fa ff ff       	jmp    80104ef5 <alltraps>

80105405 <vector13>:
80105405:	6a 0d                	push   $0xd
80105407:	e9 e9 fa ff ff       	jmp    80104ef5 <alltraps>

8010540c <vector14>:
8010540c:	6a 0e                	push   $0xe
8010540e:	e9 e2 fa ff ff       	jmp    80104ef5 <alltraps>

80105413 <vector15>:
80105413:	6a 00                	push   $0x0
80105415:	6a 0f                	push   $0xf
80105417:	e9 d9 fa ff ff       	jmp    80104ef5 <alltraps>

8010541c <vector16>:
8010541c:	6a 00                	push   $0x0
8010541e:	6a 10                	push   $0x10
80105420:	e9 d0 fa ff ff       	jmp    80104ef5 <alltraps>

80105425 <vector17>:
80105425:	6a 11                	push   $0x11
80105427:	e9 c9 fa ff ff       	jmp    80104ef5 <alltraps>

8010542c <vector18>:
8010542c:	6a 00                	push   $0x0
8010542e:	6a 12                	push   $0x12
80105430:	e9 c0 fa ff ff       	jmp    80104ef5 <alltraps>

80105435 <vector19>:
80105435:	6a 00                	push   $0x0
80105437:	6a 13                	push   $0x13
80105439:	e9 b7 fa ff ff       	jmp    80104ef5 <alltraps>

8010543e <vector20>:
8010543e:	6a 00                	push   $0x0
80105440:	6a 14                	push   $0x14
80105442:	e9 ae fa ff ff       	jmp    80104ef5 <alltraps>

80105447 <vector21>:
80105447:	6a 00                	push   $0x0
80105449:	6a 15                	push   $0x15
8010544b:	e9 a5 fa ff ff       	jmp    80104ef5 <alltraps>

80105450 <vector22>:
80105450:	6a 00                	push   $0x0
80105452:	6a 16                	push   $0x16
80105454:	e9 9c fa ff ff       	jmp    80104ef5 <alltraps>

80105459 <vector23>:
80105459:	6a 00                	push   $0x0
8010545b:	6a 17                	push   $0x17
8010545d:	e9 93 fa ff ff       	jmp    80104ef5 <alltraps>

80105462 <vector24>:
80105462:	6a 00                	push   $0x0
80105464:	6a 18                	push   $0x18
80105466:	e9 8a fa ff ff       	jmp    80104ef5 <alltraps>

8010546b <vector25>:
8010546b:	6a 00                	push   $0x0
8010546d:	6a 19                	push   $0x19
8010546f:	e9 81 fa ff ff       	jmp    80104ef5 <alltraps>

80105474 <vector26>:
80105474:	6a 00                	push   $0x0
80105476:	6a 1a                	push   $0x1a
80105478:	e9 78 fa ff ff       	jmp    80104ef5 <alltraps>

8010547d <vector27>:
8010547d:	6a 00                	push   $0x0
8010547f:	6a 1b                	push   $0x1b
80105481:	e9 6f fa ff ff       	jmp    80104ef5 <alltraps>

80105486 <vector28>:
80105486:	6a 00                	push   $0x0
80105488:	6a 1c                	push   $0x1c
8010548a:	e9 66 fa ff ff       	jmp    80104ef5 <alltraps>

8010548f <vector29>:
8010548f:	6a 00                	push   $0x0
80105491:	6a 1d                	push   $0x1d
80105493:	e9 5d fa ff ff       	jmp    80104ef5 <alltraps>

80105498 <vector30>:
80105498:	6a 00                	push   $0x0
8010549a:	6a 1e                	push   $0x1e
8010549c:	e9 54 fa ff ff       	jmp    80104ef5 <alltraps>

801054a1 <vector31>:
801054a1:	6a 00                	push   $0x0
801054a3:	6a 1f                	push   $0x1f
801054a5:	e9 4b fa ff ff       	jmp    80104ef5 <alltraps>

801054aa <vector32>:
801054aa:	6a 00                	push   $0x0
801054ac:	6a 20                	push   $0x20
801054ae:	e9 42 fa ff ff       	jmp    80104ef5 <alltraps>

801054b3 <vector33>:
801054b3:	6a 00                	push   $0x0
801054b5:	6a 21                	push   $0x21
801054b7:	e9 39 fa ff ff       	jmp    80104ef5 <alltraps>

801054bc <vector34>:
801054bc:	6a 00                	push   $0x0
801054be:	6a 22                	push   $0x22
801054c0:	e9 30 fa ff ff       	jmp    80104ef5 <alltraps>

801054c5 <vector35>:
801054c5:	6a 00                	push   $0x0
801054c7:	6a 23                	push   $0x23
801054c9:	e9 27 fa ff ff       	jmp    80104ef5 <alltraps>

801054ce <vector36>:
801054ce:	6a 00                	push   $0x0
801054d0:	6a 24                	push   $0x24
801054d2:	e9 1e fa ff ff       	jmp    80104ef5 <alltraps>

801054d7 <vector37>:
801054d7:	6a 00                	push   $0x0
801054d9:	6a 25                	push   $0x25
801054db:	e9 15 fa ff ff       	jmp    80104ef5 <alltraps>

801054e0 <vector38>:
801054e0:	6a 00                	push   $0x0
801054e2:	6a 26                	push   $0x26
801054e4:	e9 0c fa ff ff       	jmp    80104ef5 <alltraps>

801054e9 <vector39>:
801054e9:	6a 00                	push   $0x0
801054eb:	6a 27                	push   $0x27
801054ed:	e9 03 fa ff ff       	jmp    80104ef5 <alltraps>

801054f2 <vector40>:
801054f2:	6a 00                	push   $0x0
801054f4:	6a 28                	push   $0x28
801054f6:	e9 fa f9 ff ff       	jmp    80104ef5 <alltraps>

801054fb <vector41>:
801054fb:	6a 00                	push   $0x0
801054fd:	6a 29                	push   $0x29
801054ff:	e9 f1 f9 ff ff       	jmp    80104ef5 <alltraps>

80105504 <vector42>:
80105504:	6a 00                	push   $0x0
80105506:	6a 2a                	push   $0x2a
80105508:	e9 e8 f9 ff ff       	jmp    80104ef5 <alltraps>

8010550d <vector43>:
8010550d:	6a 00                	push   $0x0
8010550f:	6a 2b                	push   $0x2b
80105511:	e9 df f9 ff ff       	jmp    80104ef5 <alltraps>

80105516 <vector44>:
80105516:	6a 00                	push   $0x0
80105518:	6a 2c                	push   $0x2c
8010551a:	e9 d6 f9 ff ff       	jmp    80104ef5 <alltraps>

8010551f <vector45>:
8010551f:	6a 00                	push   $0x0
80105521:	6a 2d                	push   $0x2d
80105523:	e9 cd f9 ff ff       	jmp    80104ef5 <alltraps>

80105528 <vector46>:
80105528:	6a 00                	push   $0x0
8010552a:	6a 2e                	push   $0x2e
8010552c:	e9 c4 f9 ff ff       	jmp    80104ef5 <alltraps>

80105531 <vector47>:
80105531:	6a 00                	push   $0x0
80105533:	6a 2f                	push   $0x2f
80105535:	e9 bb f9 ff ff       	jmp    80104ef5 <alltraps>

8010553a <vector48>:
8010553a:	6a 00                	push   $0x0
8010553c:	6a 30                	push   $0x30
8010553e:	e9 b2 f9 ff ff       	jmp    80104ef5 <alltraps>

80105543 <vector49>:
80105543:	6a 00                	push   $0x0
80105545:	6a 31                	push   $0x31
80105547:	e9 a9 f9 ff ff       	jmp    80104ef5 <alltraps>

8010554c <vector50>:
8010554c:	6a 00                	push   $0x0
8010554e:	6a 32                	push   $0x32
80105550:	e9 a0 f9 ff ff       	jmp    80104ef5 <alltraps>

80105555 <vector51>:
80105555:	6a 00                	push   $0x0
80105557:	6a 33                	push   $0x33
80105559:	e9 97 f9 ff ff       	jmp    80104ef5 <alltraps>

8010555e <vector52>:
8010555e:	6a 00                	push   $0x0
80105560:	6a 34                	push   $0x34
80105562:	e9 8e f9 ff ff       	jmp    80104ef5 <alltraps>

80105567 <vector53>:
80105567:	6a 00                	push   $0x0
80105569:	6a 35                	push   $0x35
8010556b:	e9 85 f9 ff ff       	jmp    80104ef5 <alltraps>

80105570 <vector54>:
80105570:	6a 00                	push   $0x0
80105572:	6a 36                	push   $0x36
80105574:	e9 7c f9 ff ff       	jmp    80104ef5 <alltraps>

80105579 <vector55>:
80105579:	6a 00                	push   $0x0
8010557b:	6a 37                	push   $0x37
8010557d:	e9 73 f9 ff ff       	jmp    80104ef5 <alltraps>

80105582 <vector56>:
80105582:	6a 00                	push   $0x0
80105584:	6a 38                	push   $0x38
80105586:	e9 6a f9 ff ff       	jmp    80104ef5 <alltraps>

8010558b <vector57>:
8010558b:	6a 00                	push   $0x0
8010558d:	6a 39                	push   $0x39
8010558f:	e9 61 f9 ff ff       	jmp    80104ef5 <alltraps>

80105594 <vector58>:
80105594:	6a 00                	push   $0x0
80105596:	6a 3a                	push   $0x3a
80105598:	e9 58 f9 ff ff       	jmp    80104ef5 <alltraps>

8010559d <vector59>:
8010559d:	6a 00                	push   $0x0
8010559f:	6a 3b                	push   $0x3b
801055a1:	e9 4f f9 ff ff       	jmp    80104ef5 <alltraps>

801055a6 <vector60>:
801055a6:	6a 00                	push   $0x0
801055a8:	6a 3c                	push   $0x3c
801055aa:	e9 46 f9 ff ff       	jmp    80104ef5 <alltraps>

801055af <vector61>:
801055af:	6a 00                	push   $0x0
801055b1:	6a 3d                	push   $0x3d
801055b3:	e9 3d f9 ff ff       	jmp    80104ef5 <alltraps>

801055b8 <vector62>:
801055b8:	6a 00                	push   $0x0
801055ba:	6a 3e                	push   $0x3e
801055bc:	e9 34 f9 ff ff       	jmp    80104ef5 <alltraps>

801055c1 <vector63>:
801055c1:	6a 00                	push   $0x0
801055c3:	6a 3f                	push   $0x3f
801055c5:	e9 2b f9 ff ff       	jmp    80104ef5 <alltraps>

801055ca <vector64>:
801055ca:	6a 00                	push   $0x0
801055cc:	6a 40                	push   $0x40
801055ce:	e9 22 f9 ff ff       	jmp    80104ef5 <alltraps>

801055d3 <vector65>:
801055d3:	6a 00                	push   $0x0
801055d5:	6a 41                	push   $0x41
801055d7:	e9 19 f9 ff ff       	jmp    80104ef5 <alltraps>

801055dc <vector66>:
801055dc:	6a 00                	push   $0x0
801055de:	6a 42                	push   $0x42
801055e0:	e9 10 f9 ff ff       	jmp    80104ef5 <alltraps>

801055e5 <vector67>:
801055e5:	6a 00                	push   $0x0
801055e7:	6a 43                	push   $0x43
801055e9:	e9 07 f9 ff ff       	jmp    80104ef5 <alltraps>

801055ee <vector68>:
801055ee:	6a 00                	push   $0x0
801055f0:	6a 44                	push   $0x44
801055f2:	e9 fe f8 ff ff       	jmp    80104ef5 <alltraps>

801055f7 <vector69>:
801055f7:	6a 00                	push   $0x0
801055f9:	6a 45                	push   $0x45
801055fb:	e9 f5 f8 ff ff       	jmp    80104ef5 <alltraps>

80105600 <vector70>:
80105600:	6a 00                	push   $0x0
80105602:	6a 46                	push   $0x46
80105604:	e9 ec f8 ff ff       	jmp    80104ef5 <alltraps>

80105609 <vector71>:
80105609:	6a 00                	push   $0x0
8010560b:	6a 47                	push   $0x47
8010560d:	e9 e3 f8 ff ff       	jmp    80104ef5 <alltraps>

80105612 <vector72>:
80105612:	6a 00                	push   $0x0
80105614:	6a 48                	push   $0x48
80105616:	e9 da f8 ff ff       	jmp    80104ef5 <alltraps>

8010561b <vector73>:
8010561b:	6a 00                	push   $0x0
8010561d:	6a 49                	push   $0x49
8010561f:	e9 d1 f8 ff ff       	jmp    80104ef5 <alltraps>

80105624 <vector74>:
80105624:	6a 00                	push   $0x0
80105626:	6a 4a                	push   $0x4a
80105628:	e9 c8 f8 ff ff       	jmp    80104ef5 <alltraps>

8010562d <vector75>:
8010562d:	6a 00                	push   $0x0
8010562f:	6a 4b                	push   $0x4b
80105631:	e9 bf f8 ff ff       	jmp    80104ef5 <alltraps>

80105636 <vector76>:
80105636:	6a 00                	push   $0x0
80105638:	6a 4c                	push   $0x4c
8010563a:	e9 b6 f8 ff ff       	jmp    80104ef5 <alltraps>

8010563f <vector77>:
8010563f:	6a 00                	push   $0x0
80105641:	6a 4d                	push   $0x4d
80105643:	e9 ad f8 ff ff       	jmp    80104ef5 <alltraps>

80105648 <vector78>:
80105648:	6a 00                	push   $0x0
8010564a:	6a 4e                	push   $0x4e
8010564c:	e9 a4 f8 ff ff       	jmp    80104ef5 <alltraps>

80105651 <vector79>:
80105651:	6a 00                	push   $0x0
80105653:	6a 4f                	push   $0x4f
80105655:	e9 9b f8 ff ff       	jmp    80104ef5 <alltraps>

8010565a <vector80>:
8010565a:	6a 00                	push   $0x0
8010565c:	6a 50                	push   $0x50
8010565e:	e9 92 f8 ff ff       	jmp    80104ef5 <alltraps>

80105663 <vector81>:
80105663:	6a 00                	push   $0x0
80105665:	6a 51                	push   $0x51
80105667:	e9 89 f8 ff ff       	jmp    80104ef5 <alltraps>

8010566c <vector82>:
8010566c:	6a 00                	push   $0x0
8010566e:	6a 52                	push   $0x52
80105670:	e9 80 f8 ff ff       	jmp    80104ef5 <alltraps>

80105675 <vector83>:
80105675:	6a 00                	push   $0x0
80105677:	6a 53                	push   $0x53
80105679:	e9 77 f8 ff ff       	jmp    80104ef5 <alltraps>

8010567e <vector84>:
8010567e:	6a 00                	push   $0x0
80105680:	6a 54                	push   $0x54
80105682:	e9 6e f8 ff ff       	jmp    80104ef5 <alltraps>

80105687 <vector85>:
80105687:	6a 00                	push   $0x0
80105689:	6a 55                	push   $0x55
8010568b:	e9 65 f8 ff ff       	jmp    80104ef5 <alltraps>

80105690 <vector86>:
80105690:	6a 00                	push   $0x0
80105692:	6a 56                	push   $0x56
80105694:	e9 5c f8 ff ff       	jmp    80104ef5 <alltraps>

80105699 <vector87>:
80105699:	6a 00                	push   $0x0
8010569b:	6a 57                	push   $0x57
8010569d:	e9 53 f8 ff ff       	jmp    80104ef5 <alltraps>

801056a2 <vector88>:
801056a2:	6a 00                	push   $0x0
801056a4:	6a 58                	push   $0x58
801056a6:	e9 4a f8 ff ff       	jmp    80104ef5 <alltraps>

801056ab <vector89>:
801056ab:	6a 00                	push   $0x0
801056ad:	6a 59                	push   $0x59
801056af:	e9 41 f8 ff ff       	jmp    80104ef5 <alltraps>

801056b4 <vector90>:
801056b4:	6a 00                	push   $0x0
801056b6:	6a 5a                	push   $0x5a
801056b8:	e9 38 f8 ff ff       	jmp    80104ef5 <alltraps>

801056bd <vector91>:
801056bd:	6a 00                	push   $0x0
801056bf:	6a 5b                	push   $0x5b
801056c1:	e9 2f f8 ff ff       	jmp    80104ef5 <alltraps>

801056c6 <vector92>:
801056c6:	6a 00                	push   $0x0
801056c8:	6a 5c                	push   $0x5c
801056ca:	e9 26 f8 ff ff       	jmp    80104ef5 <alltraps>

801056cf <vector93>:
801056cf:	6a 00                	push   $0x0
801056d1:	6a 5d                	push   $0x5d
801056d3:	e9 1d f8 ff ff       	jmp    80104ef5 <alltraps>

801056d8 <vector94>:
801056d8:	6a 00                	push   $0x0
801056da:	6a 5e                	push   $0x5e
801056dc:	e9 14 f8 ff ff       	jmp    80104ef5 <alltraps>

801056e1 <vector95>:
801056e1:	6a 00                	push   $0x0
801056e3:	6a 5f                	push   $0x5f
801056e5:	e9 0b f8 ff ff       	jmp    80104ef5 <alltraps>

801056ea <vector96>:
801056ea:	6a 00                	push   $0x0
801056ec:	6a 60                	push   $0x60
801056ee:	e9 02 f8 ff ff       	jmp    80104ef5 <alltraps>

801056f3 <vector97>:
801056f3:	6a 00                	push   $0x0
801056f5:	6a 61                	push   $0x61
801056f7:	e9 f9 f7 ff ff       	jmp    80104ef5 <alltraps>

801056fc <vector98>:
801056fc:	6a 00                	push   $0x0
801056fe:	6a 62                	push   $0x62
80105700:	e9 f0 f7 ff ff       	jmp    80104ef5 <alltraps>

80105705 <vector99>:
80105705:	6a 00                	push   $0x0
80105707:	6a 63                	push   $0x63
80105709:	e9 e7 f7 ff ff       	jmp    80104ef5 <alltraps>

8010570e <vector100>:
8010570e:	6a 00                	push   $0x0
80105710:	6a 64                	push   $0x64
80105712:	e9 de f7 ff ff       	jmp    80104ef5 <alltraps>

80105717 <vector101>:
80105717:	6a 00                	push   $0x0
80105719:	6a 65                	push   $0x65
8010571b:	e9 d5 f7 ff ff       	jmp    80104ef5 <alltraps>

80105720 <vector102>:
80105720:	6a 00                	push   $0x0
80105722:	6a 66                	push   $0x66
80105724:	e9 cc f7 ff ff       	jmp    80104ef5 <alltraps>

80105729 <vector103>:
80105729:	6a 00                	push   $0x0
8010572b:	6a 67                	push   $0x67
8010572d:	e9 c3 f7 ff ff       	jmp    80104ef5 <alltraps>

80105732 <vector104>:
80105732:	6a 00                	push   $0x0
80105734:	6a 68                	push   $0x68
80105736:	e9 ba f7 ff ff       	jmp    80104ef5 <alltraps>

8010573b <vector105>:
8010573b:	6a 00                	push   $0x0
8010573d:	6a 69                	push   $0x69
8010573f:	e9 b1 f7 ff ff       	jmp    80104ef5 <alltraps>

80105744 <vector106>:
80105744:	6a 00                	push   $0x0
80105746:	6a 6a                	push   $0x6a
80105748:	e9 a8 f7 ff ff       	jmp    80104ef5 <alltraps>

8010574d <vector107>:
8010574d:	6a 00                	push   $0x0
8010574f:	6a 6b                	push   $0x6b
80105751:	e9 9f f7 ff ff       	jmp    80104ef5 <alltraps>

80105756 <vector108>:
80105756:	6a 00                	push   $0x0
80105758:	6a 6c                	push   $0x6c
8010575a:	e9 96 f7 ff ff       	jmp    80104ef5 <alltraps>

8010575f <vector109>:
8010575f:	6a 00                	push   $0x0
80105761:	6a 6d                	push   $0x6d
80105763:	e9 8d f7 ff ff       	jmp    80104ef5 <alltraps>

80105768 <vector110>:
80105768:	6a 00                	push   $0x0
8010576a:	6a 6e                	push   $0x6e
8010576c:	e9 84 f7 ff ff       	jmp    80104ef5 <alltraps>

80105771 <vector111>:
80105771:	6a 00                	push   $0x0
80105773:	6a 6f                	push   $0x6f
80105775:	e9 7b f7 ff ff       	jmp    80104ef5 <alltraps>

8010577a <vector112>:
8010577a:	6a 00                	push   $0x0
8010577c:	6a 70                	push   $0x70
8010577e:	e9 72 f7 ff ff       	jmp    80104ef5 <alltraps>

80105783 <vector113>:
80105783:	6a 00                	push   $0x0
80105785:	6a 71                	push   $0x71
80105787:	e9 69 f7 ff ff       	jmp    80104ef5 <alltraps>

8010578c <vector114>:
8010578c:	6a 00                	push   $0x0
8010578e:	6a 72                	push   $0x72
80105790:	e9 60 f7 ff ff       	jmp    80104ef5 <alltraps>

80105795 <vector115>:
80105795:	6a 00                	push   $0x0
80105797:	6a 73                	push   $0x73
80105799:	e9 57 f7 ff ff       	jmp    80104ef5 <alltraps>

8010579e <vector116>:
8010579e:	6a 00                	push   $0x0
801057a0:	6a 74                	push   $0x74
801057a2:	e9 4e f7 ff ff       	jmp    80104ef5 <alltraps>

801057a7 <vector117>:
801057a7:	6a 00                	push   $0x0
801057a9:	6a 75                	push   $0x75
801057ab:	e9 45 f7 ff ff       	jmp    80104ef5 <alltraps>

801057b0 <vector118>:
801057b0:	6a 00                	push   $0x0
801057b2:	6a 76                	push   $0x76
801057b4:	e9 3c f7 ff ff       	jmp    80104ef5 <alltraps>

801057b9 <vector119>:
801057b9:	6a 00                	push   $0x0
801057bb:	6a 77                	push   $0x77
801057bd:	e9 33 f7 ff ff       	jmp    80104ef5 <alltraps>

801057c2 <vector120>:
801057c2:	6a 00                	push   $0x0
801057c4:	6a 78                	push   $0x78
801057c6:	e9 2a f7 ff ff       	jmp    80104ef5 <alltraps>

801057cb <vector121>:
801057cb:	6a 00                	push   $0x0
801057cd:	6a 79                	push   $0x79
801057cf:	e9 21 f7 ff ff       	jmp    80104ef5 <alltraps>

801057d4 <vector122>:
801057d4:	6a 00                	push   $0x0
801057d6:	6a 7a                	push   $0x7a
801057d8:	e9 18 f7 ff ff       	jmp    80104ef5 <alltraps>

801057dd <vector123>:
801057dd:	6a 00                	push   $0x0
801057df:	6a 7b                	push   $0x7b
801057e1:	e9 0f f7 ff ff       	jmp    80104ef5 <alltraps>

801057e6 <vector124>:
801057e6:	6a 00                	push   $0x0
801057e8:	6a 7c                	push   $0x7c
801057ea:	e9 06 f7 ff ff       	jmp    80104ef5 <alltraps>

801057ef <vector125>:
801057ef:	6a 00                	push   $0x0
801057f1:	6a 7d                	push   $0x7d
801057f3:	e9 fd f6 ff ff       	jmp    80104ef5 <alltraps>

801057f8 <vector126>:
801057f8:	6a 00                	push   $0x0
801057fa:	6a 7e                	push   $0x7e
801057fc:	e9 f4 f6 ff ff       	jmp    80104ef5 <alltraps>

80105801 <vector127>:
80105801:	6a 00                	push   $0x0
80105803:	6a 7f                	push   $0x7f
80105805:	e9 eb f6 ff ff       	jmp    80104ef5 <alltraps>

8010580a <vector128>:
8010580a:	6a 00                	push   $0x0
8010580c:	68 80 00 00 00       	push   $0x80
80105811:	e9 df f6 ff ff       	jmp    80104ef5 <alltraps>

80105816 <vector129>:
80105816:	6a 00                	push   $0x0
80105818:	68 81 00 00 00       	push   $0x81
8010581d:	e9 d3 f6 ff ff       	jmp    80104ef5 <alltraps>

80105822 <vector130>:
80105822:	6a 00                	push   $0x0
80105824:	68 82 00 00 00       	push   $0x82
80105829:	e9 c7 f6 ff ff       	jmp    80104ef5 <alltraps>

8010582e <vector131>:
8010582e:	6a 00                	push   $0x0
80105830:	68 83 00 00 00       	push   $0x83
80105835:	e9 bb f6 ff ff       	jmp    80104ef5 <alltraps>

8010583a <vector132>:
8010583a:	6a 00                	push   $0x0
8010583c:	68 84 00 00 00       	push   $0x84
80105841:	e9 af f6 ff ff       	jmp    80104ef5 <alltraps>

80105846 <vector133>:
80105846:	6a 00                	push   $0x0
80105848:	68 85 00 00 00       	push   $0x85
8010584d:	e9 a3 f6 ff ff       	jmp    80104ef5 <alltraps>

80105852 <vector134>:
80105852:	6a 00                	push   $0x0
80105854:	68 86 00 00 00       	push   $0x86
80105859:	e9 97 f6 ff ff       	jmp    80104ef5 <alltraps>

8010585e <vector135>:
8010585e:	6a 00                	push   $0x0
80105860:	68 87 00 00 00       	push   $0x87
80105865:	e9 8b f6 ff ff       	jmp    80104ef5 <alltraps>

8010586a <vector136>:
8010586a:	6a 00                	push   $0x0
8010586c:	68 88 00 00 00       	push   $0x88
80105871:	e9 7f f6 ff ff       	jmp    80104ef5 <alltraps>

80105876 <vector137>:
80105876:	6a 00                	push   $0x0
80105878:	68 89 00 00 00       	push   $0x89
8010587d:	e9 73 f6 ff ff       	jmp    80104ef5 <alltraps>

80105882 <vector138>:
80105882:	6a 00                	push   $0x0
80105884:	68 8a 00 00 00       	push   $0x8a
80105889:	e9 67 f6 ff ff       	jmp    80104ef5 <alltraps>

8010588e <vector139>:
8010588e:	6a 00                	push   $0x0
80105890:	68 8b 00 00 00       	push   $0x8b
80105895:	e9 5b f6 ff ff       	jmp    80104ef5 <alltraps>

8010589a <vector140>:
8010589a:	6a 00                	push   $0x0
8010589c:	68 8c 00 00 00       	push   $0x8c
801058a1:	e9 4f f6 ff ff       	jmp    80104ef5 <alltraps>

801058a6 <vector141>:
801058a6:	6a 00                	push   $0x0
801058a8:	68 8d 00 00 00       	push   $0x8d
801058ad:	e9 43 f6 ff ff       	jmp    80104ef5 <alltraps>

801058b2 <vector142>:
801058b2:	6a 00                	push   $0x0
801058b4:	68 8e 00 00 00       	push   $0x8e
801058b9:	e9 37 f6 ff ff       	jmp    80104ef5 <alltraps>

801058be <vector143>:
801058be:	6a 00                	push   $0x0
801058c0:	68 8f 00 00 00       	push   $0x8f
801058c5:	e9 2b f6 ff ff       	jmp    80104ef5 <alltraps>

801058ca <vector144>:
801058ca:	6a 00                	push   $0x0
801058cc:	68 90 00 00 00       	push   $0x90
801058d1:	e9 1f f6 ff ff       	jmp    80104ef5 <alltraps>

801058d6 <vector145>:
801058d6:	6a 00                	push   $0x0
801058d8:	68 91 00 00 00       	push   $0x91
801058dd:	e9 13 f6 ff ff       	jmp    80104ef5 <alltraps>

801058e2 <vector146>:
801058e2:	6a 00                	push   $0x0
801058e4:	68 92 00 00 00       	push   $0x92
801058e9:	e9 07 f6 ff ff       	jmp    80104ef5 <alltraps>

801058ee <vector147>:
801058ee:	6a 00                	push   $0x0
801058f0:	68 93 00 00 00       	push   $0x93
801058f5:	e9 fb f5 ff ff       	jmp    80104ef5 <alltraps>

801058fa <vector148>:
801058fa:	6a 00                	push   $0x0
801058fc:	68 94 00 00 00       	push   $0x94
80105901:	e9 ef f5 ff ff       	jmp    80104ef5 <alltraps>

80105906 <vector149>:
80105906:	6a 00                	push   $0x0
80105908:	68 95 00 00 00       	push   $0x95
8010590d:	e9 e3 f5 ff ff       	jmp    80104ef5 <alltraps>

80105912 <vector150>:
80105912:	6a 00                	push   $0x0
80105914:	68 96 00 00 00       	push   $0x96
80105919:	e9 d7 f5 ff ff       	jmp    80104ef5 <alltraps>

8010591e <vector151>:
8010591e:	6a 00                	push   $0x0
80105920:	68 97 00 00 00       	push   $0x97
80105925:	e9 cb f5 ff ff       	jmp    80104ef5 <alltraps>

8010592a <vector152>:
8010592a:	6a 00                	push   $0x0
8010592c:	68 98 00 00 00       	push   $0x98
80105931:	e9 bf f5 ff ff       	jmp    80104ef5 <alltraps>

80105936 <vector153>:
80105936:	6a 00                	push   $0x0
80105938:	68 99 00 00 00       	push   $0x99
8010593d:	e9 b3 f5 ff ff       	jmp    80104ef5 <alltraps>

80105942 <vector154>:
80105942:	6a 00                	push   $0x0
80105944:	68 9a 00 00 00       	push   $0x9a
80105949:	e9 a7 f5 ff ff       	jmp    80104ef5 <alltraps>

8010594e <vector155>:
8010594e:	6a 00                	push   $0x0
80105950:	68 9b 00 00 00       	push   $0x9b
80105955:	e9 9b f5 ff ff       	jmp    80104ef5 <alltraps>

8010595a <vector156>:
8010595a:	6a 00                	push   $0x0
8010595c:	68 9c 00 00 00       	push   $0x9c
80105961:	e9 8f f5 ff ff       	jmp    80104ef5 <alltraps>

80105966 <vector157>:
80105966:	6a 00                	push   $0x0
80105968:	68 9d 00 00 00       	push   $0x9d
8010596d:	e9 83 f5 ff ff       	jmp    80104ef5 <alltraps>

80105972 <vector158>:
80105972:	6a 00                	push   $0x0
80105974:	68 9e 00 00 00       	push   $0x9e
80105979:	e9 77 f5 ff ff       	jmp    80104ef5 <alltraps>

8010597e <vector159>:
8010597e:	6a 00                	push   $0x0
80105980:	68 9f 00 00 00       	push   $0x9f
80105985:	e9 6b f5 ff ff       	jmp    80104ef5 <alltraps>

8010598a <vector160>:
8010598a:	6a 00                	push   $0x0
8010598c:	68 a0 00 00 00       	push   $0xa0
80105991:	e9 5f f5 ff ff       	jmp    80104ef5 <alltraps>

80105996 <vector161>:
80105996:	6a 00                	push   $0x0
80105998:	68 a1 00 00 00       	push   $0xa1
8010599d:	e9 53 f5 ff ff       	jmp    80104ef5 <alltraps>

801059a2 <vector162>:
801059a2:	6a 00                	push   $0x0
801059a4:	68 a2 00 00 00       	push   $0xa2
801059a9:	e9 47 f5 ff ff       	jmp    80104ef5 <alltraps>

801059ae <vector163>:
801059ae:	6a 00                	push   $0x0
801059b0:	68 a3 00 00 00       	push   $0xa3
801059b5:	e9 3b f5 ff ff       	jmp    80104ef5 <alltraps>

801059ba <vector164>:
801059ba:	6a 00                	push   $0x0
801059bc:	68 a4 00 00 00       	push   $0xa4
801059c1:	e9 2f f5 ff ff       	jmp    80104ef5 <alltraps>

801059c6 <vector165>:
801059c6:	6a 00                	push   $0x0
801059c8:	68 a5 00 00 00       	push   $0xa5
801059cd:	e9 23 f5 ff ff       	jmp    80104ef5 <alltraps>

801059d2 <vector166>:
801059d2:	6a 00                	push   $0x0
801059d4:	68 a6 00 00 00       	push   $0xa6
801059d9:	e9 17 f5 ff ff       	jmp    80104ef5 <alltraps>

801059de <vector167>:
801059de:	6a 00                	push   $0x0
801059e0:	68 a7 00 00 00       	push   $0xa7
801059e5:	e9 0b f5 ff ff       	jmp    80104ef5 <alltraps>

801059ea <vector168>:
801059ea:	6a 00                	push   $0x0
801059ec:	68 a8 00 00 00       	push   $0xa8
801059f1:	e9 ff f4 ff ff       	jmp    80104ef5 <alltraps>

801059f6 <vector169>:
801059f6:	6a 00                	push   $0x0
801059f8:	68 a9 00 00 00       	push   $0xa9
801059fd:	e9 f3 f4 ff ff       	jmp    80104ef5 <alltraps>

80105a02 <vector170>:
80105a02:	6a 00                	push   $0x0
80105a04:	68 aa 00 00 00       	push   $0xaa
80105a09:	e9 e7 f4 ff ff       	jmp    80104ef5 <alltraps>

80105a0e <vector171>:
80105a0e:	6a 00                	push   $0x0
80105a10:	68 ab 00 00 00       	push   $0xab
80105a15:	e9 db f4 ff ff       	jmp    80104ef5 <alltraps>

80105a1a <vector172>:
80105a1a:	6a 00                	push   $0x0
80105a1c:	68 ac 00 00 00       	push   $0xac
80105a21:	e9 cf f4 ff ff       	jmp    80104ef5 <alltraps>

80105a26 <vector173>:
80105a26:	6a 00                	push   $0x0
80105a28:	68 ad 00 00 00       	push   $0xad
80105a2d:	e9 c3 f4 ff ff       	jmp    80104ef5 <alltraps>

80105a32 <vector174>:
80105a32:	6a 00                	push   $0x0
80105a34:	68 ae 00 00 00       	push   $0xae
80105a39:	e9 b7 f4 ff ff       	jmp    80104ef5 <alltraps>

80105a3e <vector175>:
80105a3e:	6a 00                	push   $0x0
80105a40:	68 af 00 00 00       	push   $0xaf
80105a45:	e9 ab f4 ff ff       	jmp    80104ef5 <alltraps>

80105a4a <vector176>:
80105a4a:	6a 00                	push   $0x0
80105a4c:	68 b0 00 00 00       	push   $0xb0
80105a51:	e9 9f f4 ff ff       	jmp    80104ef5 <alltraps>

80105a56 <vector177>:
80105a56:	6a 00                	push   $0x0
80105a58:	68 b1 00 00 00       	push   $0xb1
80105a5d:	e9 93 f4 ff ff       	jmp    80104ef5 <alltraps>

80105a62 <vector178>:
80105a62:	6a 00                	push   $0x0
80105a64:	68 b2 00 00 00       	push   $0xb2
80105a69:	e9 87 f4 ff ff       	jmp    80104ef5 <alltraps>

80105a6e <vector179>:
80105a6e:	6a 00                	push   $0x0
80105a70:	68 b3 00 00 00       	push   $0xb3
80105a75:	e9 7b f4 ff ff       	jmp    80104ef5 <alltraps>

80105a7a <vector180>:
80105a7a:	6a 00                	push   $0x0
80105a7c:	68 b4 00 00 00       	push   $0xb4
80105a81:	e9 6f f4 ff ff       	jmp    80104ef5 <alltraps>

80105a86 <vector181>:
80105a86:	6a 00                	push   $0x0
80105a88:	68 b5 00 00 00       	push   $0xb5
80105a8d:	e9 63 f4 ff ff       	jmp    80104ef5 <alltraps>

80105a92 <vector182>:
80105a92:	6a 00                	push   $0x0
80105a94:	68 b6 00 00 00       	push   $0xb6
80105a99:	e9 57 f4 ff ff       	jmp    80104ef5 <alltraps>

80105a9e <vector183>:
80105a9e:	6a 00                	push   $0x0
80105aa0:	68 b7 00 00 00       	push   $0xb7
80105aa5:	e9 4b f4 ff ff       	jmp    80104ef5 <alltraps>

80105aaa <vector184>:
80105aaa:	6a 00                	push   $0x0
80105aac:	68 b8 00 00 00       	push   $0xb8
80105ab1:	e9 3f f4 ff ff       	jmp    80104ef5 <alltraps>

80105ab6 <vector185>:
80105ab6:	6a 00                	push   $0x0
80105ab8:	68 b9 00 00 00       	push   $0xb9
80105abd:	e9 33 f4 ff ff       	jmp    80104ef5 <alltraps>

80105ac2 <vector186>:
80105ac2:	6a 00                	push   $0x0
80105ac4:	68 ba 00 00 00       	push   $0xba
80105ac9:	e9 27 f4 ff ff       	jmp    80104ef5 <alltraps>

80105ace <vector187>:
80105ace:	6a 00                	push   $0x0
80105ad0:	68 bb 00 00 00       	push   $0xbb
80105ad5:	e9 1b f4 ff ff       	jmp    80104ef5 <alltraps>

80105ada <vector188>:
80105ada:	6a 00                	push   $0x0
80105adc:	68 bc 00 00 00       	push   $0xbc
80105ae1:	e9 0f f4 ff ff       	jmp    80104ef5 <alltraps>

80105ae6 <vector189>:
80105ae6:	6a 00                	push   $0x0
80105ae8:	68 bd 00 00 00       	push   $0xbd
80105aed:	e9 03 f4 ff ff       	jmp    80104ef5 <alltraps>

80105af2 <vector190>:
80105af2:	6a 00                	push   $0x0
80105af4:	68 be 00 00 00       	push   $0xbe
80105af9:	e9 f7 f3 ff ff       	jmp    80104ef5 <alltraps>

80105afe <vector191>:
80105afe:	6a 00                	push   $0x0
80105b00:	68 bf 00 00 00       	push   $0xbf
80105b05:	e9 eb f3 ff ff       	jmp    80104ef5 <alltraps>

80105b0a <vector192>:
80105b0a:	6a 00                	push   $0x0
80105b0c:	68 c0 00 00 00       	push   $0xc0
80105b11:	e9 df f3 ff ff       	jmp    80104ef5 <alltraps>

80105b16 <vector193>:
80105b16:	6a 00                	push   $0x0
80105b18:	68 c1 00 00 00       	push   $0xc1
80105b1d:	e9 d3 f3 ff ff       	jmp    80104ef5 <alltraps>

80105b22 <vector194>:
80105b22:	6a 00                	push   $0x0
80105b24:	68 c2 00 00 00       	push   $0xc2
80105b29:	e9 c7 f3 ff ff       	jmp    80104ef5 <alltraps>

80105b2e <vector195>:
80105b2e:	6a 00                	push   $0x0
80105b30:	68 c3 00 00 00       	push   $0xc3
80105b35:	e9 bb f3 ff ff       	jmp    80104ef5 <alltraps>

80105b3a <vector196>:
80105b3a:	6a 00                	push   $0x0
80105b3c:	68 c4 00 00 00       	push   $0xc4
80105b41:	e9 af f3 ff ff       	jmp    80104ef5 <alltraps>

80105b46 <vector197>:
80105b46:	6a 00                	push   $0x0
80105b48:	68 c5 00 00 00       	push   $0xc5
80105b4d:	e9 a3 f3 ff ff       	jmp    80104ef5 <alltraps>

80105b52 <vector198>:
80105b52:	6a 00                	push   $0x0
80105b54:	68 c6 00 00 00       	push   $0xc6
80105b59:	e9 97 f3 ff ff       	jmp    80104ef5 <alltraps>

80105b5e <vector199>:
80105b5e:	6a 00                	push   $0x0
80105b60:	68 c7 00 00 00       	push   $0xc7
80105b65:	e9 8b f3 ff ff       	jmp    80104ef5 <alltraps>

80105b6a <vector200>:
80105b6a:	6a 00                	push   $0x0
80105b6c:	68 c8 00 00 00       	push   $0xc8
80105b71:	e9 7f f3 ff ff       	jmp    80104ef5 <alltraps>

80105b76 <vector201>:
80105b76:	6a 00                	push   $0x0
80105b78:	68 c9 00 00 00       	push   $0xc9
80105b7d:	e9 73 f3 ff ff       	jmp    80104ef5 <alltraps>

80105b82 <vector202>:
80105b82:	6a 00                	push   $0x0
80105b84:	68 ca 00 00 00       	push   $0xca
80105b89:	e9 67 f3 ff ff       	jmp    80104ef5 <alltraps>

80105b8e <vector203>:
80105b8e:	6a 00                	push   $0x0
80105b90:	68 cb 00 00 00       	push   $0xcb
80105b95:	e9 5b f3 ff ff       	jmp    80104ef5 <alltraps>

80105b9a <vector204>:
80105b9a:	6a 00                	push   $0x0
80105b9c:	68 cc 00 00 00       	push   $0xcc
80105ba1:	e9 4f f3 ff ff       	jmp    80104ef5 <alltraps>

80105ba6 <vector205>:
80105ba6:	6a 00                	push   $0x0
80105ba8:	68 cd 00 00 00       	push   $0xcd
80105bad:	e9 43 f3 ff ff       	jmp    80104ef5 <alltraps>

80105bb2 <vector206>:
80105bb2:	6a 00                	push   $0x0
80105bb4:	68 ce 00 00 00       	push   $0xce
80105bb9:	e9 37 f3 ff ff       	jmp    80104ef5 <alltraps>

80105bbe <vector207>:
80105bbe:	6a 00                	push   $0x0
80105bc0:	68 cf 00 00 00       	push   $0xcf
80105bc5:	e9 2b f3 ff ff       	jmp    80104ef5 <alltraps>

80105bca <vector208>:
80105bca:	6a 00                	push   $0x0
80105bcc:	68 d0 00 00 00       	push   $0xd0
80105bd1:	e9 1f f3 ff ff       	jmp    80104ef5 <alltraps>

80105bd6 <vector209>:
80105bd6:	6a 00                	push   $0x0
80105bd8:	68 d1 00 00 00       	push   $0xd1
80105bdd:	e9 13 f3 ff ff       	jmp    80104ef5 <alltraps>

80105be2 <vector210>:
80105be2:	6a 00                	push   $0x0
80105be4:	68 d2 00 00 00       	push   $0xd2
80105be9:	e9 07 f3 ff ff       	jmp    80104ef5 <alltraps>

80105bee <vector211>:
80105bee:	6a 00                	push   $0x0
80105bf0:	68 d3 00 00 00       	push   $0xd3
80105bf5:	e9 fb f2 ff ff       	jmp    80104ef5 <alltraps>

80105bfa <vector212>:
80105bfa:	6a 00                	push   $0x0
80105bfc:	68 d4 00 00 00       	push   $0xd4
80105c01:	e9 ef f2 ff ff       	jmp    80104ef5 <alltraps>

80105c06 <vector213>:
80105c06:	6a 00                	push   $0x0
80105c08:	68 d5 00 00 00       	push   $0xd5
80105c0d:	e9 e3 f2 ff ff       	jmp    80104ef5 <alltraps>

80105c12 <vector214>:
80105c12:	6a 00                	push   $0x0
80105c14:	68 d6 00 00 00       	push   $0xd6
80105c19:	e9 d7 f2 ff ff       	jmp    80104ef5 <alltraps>

80105c1e <vector215>:
80105c1e:	6a 00                	push   $0x0
80105c20:	68 d7 00 00 00       	push   $0xd7
80105c25:	e9 cb f2 ff ff       	jmp    80104ef5 <alltraps>

80105c2a <vector216>:
80105c2a:	6a 00                	push   $0x0
80105c2c:	68 d8 00 00 00       	push   $0xd8
80105c31:	e9 bf f2 ff ff       	jmp    80104ef5 <alltraps>

80105c36 <vector217>:
80105c36:	6a 00                	push   $0x0
80105c38:	68 d9 00 00 00       	push   $0xd9
80105c3d:	e9 b3 f2 ff ff       	jmp    80104ef5 <alltraps>

80105c42 <vector218>:
80105c42:	6a 00                	push   $0x0
80105c44:	68 da 00 00 00       	push   $0xda
80105c49:	e9 a7 f2 ff ff       	jmp    80104ef5 <alltraps>

80105c4e <vector219>:
80105c4e:	6a 00                	push   $0x0
80105c50:	68 db 00 00 00       	push   $0xdb
80105c55:	e9 9b f2 ff ff       	jmp    80104ef5 <alltraps>

80105c5a <vector220>:
80105c5a:	6a 00                	push   $0x0
80105c5c:	68 dc 00 00 00       	push   $0xdc
80105c61:	e9 8f f2 ff ff       	jmp    80104ef5 <alltraps>

80105c66 <vector221>:
80105c66:	6a 00                	push   $0x0
80105c68:	68 dd 00 00 00       	push   $0xdd
80105c6d:	e9 83 f2 ff ff       	jmp    80104ef5 <alltraps>

80105c72 <vector222>:
80105c72:	6a 00                	push   $0x0
80105c74:	68 de 00 00 00       	push   $0xde
80105c79:	e9 77 f2 ff ff       	jmp    80104ef5 <alltraps>

80105c7e <vector223>:
80105c7e:	6a 00                	push   $0x0
80105c80:	68 df 00 00 00       	push   $0xdf
80105c85:	e9 6b f2 ff ff       	jmp    80104ef5 <alltraps>

80105c8a <vector224>:
80105c8a:	6a 00                	push   $0x0
80105c8c:	68 e0 00 00 00       	push   $0xe0
80105c91:	e9 5f f2 ff ff       	jmp    80104ef5 <alltraps>

80105c96 <vector225>:
80105c96:	6a 00                	push   $0x0
80105c98:	68 e1 00 00 00       	push   $0xe1
80105c9d:	e9 53 f2 ff ff       	jmp    80104ef5 <alltraps>

80105ca2 <vector226>:
80105ca2:	6a 00                	push   $0x0
80105ca4:	68 e2 00 00 00       	push   $0xe2
80105ca9:	e9 47 f2 ff ff       	jmp    80104ef5 <alltraps>

80105cae <vector227>:
80105cae:	6a 00                	push   $0x0
80105cb0:	68 e3 00 00 00       	push   $0xe3
80105cb5:	e9 3b f2 ff ff       	jmp    80104ef5 <alltraps>

80105cba <vector228>:
80105cba:	6a 00                	push   $0x0
80105cbc:	68 e4 00 00 00       	push   $0xe4
80105cc1:	e9 2f f2 ff ff       	jmp    80104ef5 <alltraps>

80105cc6 <vector229>:
80105cc6:	6a 00                	push   $0x0
80105cc8:	68 e5 00 00 00       	push   $0xe5
80105ccd:	e9 23 f2 ff ff       	jmp    80104ef5 <alltraps>

80105cd2 <vector230>:
80105cd2:	6a 00                	push   $0x0
80105cd4:	68 e6 00 00 00       	push   $0xe6
80105cd9:	e9 17 f2 ff ff       	jmp    80104ef5 <alltraps>

80105cde <vector231>:
80105cde:	6a 00                	push   $0x0
80105ce0:	68 e7 00 00 00       	push   $0xe7
80105ce5:	e9 0b f2 ff ff       	jmp    80104ef5 <alltraps>

80105cea <vector232>:
80105cea:	6a 00                	push   $0x0
80105cec:	68 e8 00 00 00       	push   $0xe8
80105cf1:	e9 ff f1 ff ff       	jmp    80104ef5 <alltraps>

80105cf6 <vector233>:
80105cf6:	6a 00                	push   $0x0
80105cf8:	68 e9 00 00 00       	push   $0xe9
80105cfd:	e9 f3 f1 ff ff       	jmp    80104ef5 <alltraps>

80105d02 <vector234>:
80105d02:	6a 00                	push   $0x0
80105d04:	68 ea 00 00 00       	push   $0xea
80105d09:	e9 e7 f1 ff ff       	jmp    80104ef5 <alltraps>

80105d0e <vector235>:
80105d0e:	6a 00                	push   $0x0
80105d10:	68 eb 00 00 00       	push   $0xeb
80105d15:	e9 db f1 ff ff       	jmp    80104ef5 <alltraps>

80105d1a <vector236>:
80105d1a:	6a 00                	push   $0x0
80105d1c:	68 ec 00 00 00       	push   $0xec
80105d21:	e9 cf f1 ff ff       	jmp    80104ef5 <alltraps>

80105d26 <vector237>:
80105d26:	6a 00                	push   $0x0
80105d28:	68 ed 00 00 00       	push   $0xed
80105d2d:	e9 c3 f1 ff ff       	jmp    80104ef5 <alltraps>

80105d32 <vector238>:
80105d32:	6a 00                	push   $0x0
80105d34:	68 ee 00 00 00       	push   $0xee
80105d39:	e9 b7 f1 ff ff       	jmp    80104ef5 <alltraps>

80105d3e <vector239>:
80105d3e:	6a 00                	push   $0x0
80105d40:	68 ef 00 00 00       	push   $0xef
80105d45:	e9 ab f1 ff ff       	jmp    80104ef5 <alltraps>

80105d4a <vector240>:
80105d4a:	6a 00                	push   $0x0
80105d4c:	68 f0 00 00 00       	push   $0xf0
80105d51:	e9 9f f1 ff ff       	jmp    80104ef5 <alltraps>

80105d56 <vector241>:
80105d56:	6a 00                	push   $0x0
80105d58:	68 f1 00 00 00       	push   $0xf1
80105d5d:	e9 93 f1 ff ff       	jmp    80104ef5 <alltraps>

80105d62 <vector242>:
80105d62:	6a 00                	push   $0x0
80105d64:	68 f2 00 00 00       	push   $0xf2
80105d69:	e9 87 f1 ff ff       	jmp    80104ef5 <alltraps>

80105d6e <vector243>:
80105d6e:	6a 00                	push   $0x0
80105d70:	68 f3 00 00 00       	push   $0xf3
80105d75:	e9 7b f1 ff ff       	jmp    80104ef5 <alltraps>

80105d7a <vector244>:
80105d7a:	6a 00                	push   $0x0
80105d7c:	68 f4 00 00 00       	push   $0xf4
80105d81:	e9 6f f1 ff ff       	jmp    80104ef5 <alltraps>

80105d86 <vector245>:
80105d86:	6a 00                	push   $0x0
80105d88:	68 f5 00 00 00       	push   $0xf5
80105d8d:	e9 63 f1 ff ff       	jmp    80104ef5 <alltraps>

80105d92 <vector246>:
80105d92:	6a 00                	push   $0x0
80105d94:	68 f6 00 00 00       	push   $0xf6
80105d99:	e9 57 f1 ff ff       	jmp    80104ef5 <alltraps>

80105d9e <vector247>:
80105d9e:	6a 00                	push   $0x0
80105da0:	68 f7 00 00 00       	push   $0xf7
80105da5:	e9 4b f1 ff ff       	jmp    80104ef5 <alltraps>

80105daa <vector248>:
80105daa:	6a 00                	push   $0x0
80105dac:	68 f8 00 00 00       	push   $0xf8
80105db1:	e9 3f f1 ff ff       	jmp    80104ef5 <alltraps>

80105db6 <vector249>:
80105db6:	6a 00                	push   $0x0
80105db8:	68 f9 00 00 00       	push   $0xf9
80105dbd:	e9 33 f1 ff ff       	jmp    80104ef5 <alltraps>

80105dc2 <vector250>:
80105dc2:	6a 00                	push   $0x0
80105dc4:	68 fa 00 00 00       	push   $0xfa
80105dc9:	e9 27 f1 ff ff       	jmp    80104ef5 <alltraps>

80105dce <vector251>:
80105dce:	6a 00                	push   $0x0
80105dd0:	68 fb 00 00 00       	push   $0xfb
80105dd5:	e9 1b f1 ff ff       	jmp    80104ef5 <alltraps>

80105dda <vector252>:
80105dda:	6a 00                	push   $0x0
80105ddc:	68 fc 00 00 00       	push   $0xfc
80105de1:	e9 0f f1 ff ff       	jmp    80104ef5 <alltraps>

80105de6 <vector253>:
80105de6:	6a 00                	push   $0x0
80105de8:	68 fd 00 00 00       	push   $0xfd
80105ded:	e9 03 f1 ff ff       	jmp    80104ef5 <alltraps>

80105df2 <vector254>:
80105df2:	6a 00                	push   $0x0
80105df4:	68 fe 00 00 00       	push   $0xfe
80105df9:	e9 f7 f0 ff ff       	jmp    80104ef5 <alltraps>

80105dfe <vector255>:
80105dfe:	6a 00                	push   $0x0
80105e00:	68 ff 00 00 00       	push   $0xff
80105e05:	e9 eb f0 ff ff       	jmp    80104ef5 <alltraps>

80105e0a <walkpgdir>:
80105e0a:	55                   	push   %ebp
80105e0b:	89 e5                	mov    %esp,%ebp
80105e0d:	57                   	push   %edi
80105e0e:	56                   	push   %esi
80105e0f:	53                   	push   %ebx
80105e10:	83 ec 0c             	sub    $0xc,%esp
80105e13:	89 d3                	mov    %edx,%ebx
80105e15:	c1 ea 16             	shr    $0x16,%edx
80105e18:	8d 3c 90             	lea    (%eax,%edx,4),%edi
80105e1b:	8b 37                	mov    (%edi),%esi
80105e1d:	f7 c6 01 00 00 00    	test   $0x1,%esi
80105e23:	74 20                	je     80105e45 <walkpgdir+0x3b>
80105e25:	81 e6 00 f0 ff ff    	and    $0xfffff000,%esi
80105e2b:	81 c6 00 00 00 80    	add    $0x80000000,%esi
80105e31:	c1 eb 0c             	shr    $0xc,%ebx
80105e34:	81 e3 ff 03 00 00    	and    $0x3ff,%ebx
80105e3a:	8d 04 9e             	lea    (%esi,%ebx,4),%eax
80105e3d:	8d 65 f4             	lea    -0xc(%ebp),%esp
80105e40:	5b                   	pop    %ebx
80105e41:	5e                   	pop    %esi
80105e42:	5f                   	pop    %edi
80105e43:	5d                   	pop    %ebp
80105e44:	c3                   	ret    
80105e45:	85 c9                	test   %ecx,%ecx
80105e47:	74 2b                	je     80105e74 <walkpgdir+0x6a>
80105e49:	e8 1f c3 ff ff       	call   8010216d <kalloc>
80105e4e:	89 c6                	mov    %eax,%esi
80105e50:	85 c0                	test   %eax,%eax
80105e52:	74 20                	je     80105e74 <walkpgdir+0x6a>
80105e54:	83 ec 04             	sub    $0x4,%esp
80105e57:	68 00 10 00 00       	push   $0x1000
80105e5c:	6a 00                	push   $0x0
80105e5e:	50                   	push   %eax
80105e5f:	e8 ff de ff ff       	call   80103d63 <memset>
80105e64:	8d 86 00 00 00 80    	lea    -0x80000000(%esi),%eax
80105e6a:	83 c8 07             	or     $0x7,%eax
80105e6d:	89 07                	mov    %eax,(%edi)
80105e6f:	83 c4 10             	add    $0x10,%esp
80105e72:	eb bd                	jmp    80105e31 <walkpgdir+0x27>
80105e74:	b8 00 00 00 00       	mov    $0x0,%eax
80105e79:	eb c2                	jmp    80105e3d <walkpgdir+0x33>

80105e7b <mappages>:
80105e7b:	55                   	push   %ebp
80105e7c:	89 e5                	mov    %esp,%ebp
80105e7e:	57                   	push   %edi
80105e7f:	56                   	push   %esi
80105e80:	53                   	push   %ebx
80105e81:	83 ec 1c             	sub    $0x1c,%esp
80105e84:	89 45 e4             	mov    %eax,-0x1c(%ebp)
80105e87:	8b 75 08             	mov    0x8(%ebp),%esi
80105e8a:	89 d3                	mov    %edx,%ebx
80105e8c:	81 e3 00 f0 ff ff    	and    $0xfffff000,%ebx
80105e92:	8d 7c 0a ff          	lea    -0x1(%edx,%ecx,1),%edi
80105e96:	81 e7 00 f0 ff ff    	and    $0xfffff000,%edi
80105e9c:	b9 01 00 00 00       	mov    $0x1,%ecx
80105ea1:	89 da                	mov    %ebx,%edx
80105ea3:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80105ea6:	e8 5f ff ff ff       	call   80105e0a <walkpgdir>
80105eab:	85 c0                	test   %eax,%eax
80105ead:	74 2e                	je     80105edd <mappages+0x62>
80105eaf:	f6 00 01             	testb  $0x1,(%eax)
80105eb2:	75 1c                	jne    80105ed0 <mappages+0x55>
80105eb4:	89 f2                	mov    %esi,%edx
80105eb6:	0b 55 0c             	or     0xc(%ebp),%edx
80105eb9:	83 ca 01             	or     $0x1,%edx
80105ebc:	89 10                	mov    %edx,(%eax)
80105ebe:	39 fb                	cmp    %edi,%ebx
80105ec0:	74 28                	je     80105eea <mappages+0x6f>
80105ec2:	81 c3 00 10 00 00    	add    $0x1000,%ebx
80105ec8:	81 c6 00 10 00 00    	add    $0x1000,%esi
80105ece:	eb cc                	jmp    80105e9c <mappages+0x21>
80105ed0:	83 ec 0c             	sub    $0xc,%esp
80105ed3:	68 10 71 10 80       	push   $0x80107110
80105ed8:	e8 7f a4 ff ff       	call   8010035c <panic>
80105edd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80105ee2:	8d 65 f4             	lea    -0xc(%ebp),%esp
80105ee5:	5b                   	pop    %ebx
80105ee6:	5e                   	pop    %esi
80105ee7:	5f                   	pop    %edi
80105ee8:	5d                   	pop    %ebp
80105ee9:	c3                   	ret    
80105eea:	b8 00 00 00 00       	mov    $0x0,%eax
80105eef:	eb f1                	jmp    80105ee2 <mappages+0x67>

80105ef1 <seginit>:
80105ef1:	f3 0f 1e fb          	endbr32 
80105ef5:	55                   	push   %ebp
80105ef6:	89 e5                	mov    %esp,%ebp
80105ef8:	57                   	push   %edi
80105ef9:	56                   	push   %esi
80105efa:	53                   	push   %ebx
80105efb:	83 ec 1c             	sub    $0x1c,%esp
80105efe:	e8 be d3 ff ff       	call   801032c1 <cpuid>
80105f03:	69 f8 b0 00 00 00    	imul   $0xb0,%eax,%edi
80105f09:	66 c7 87 78 30 11 80 	movw   $0xffff,-0x7feecf88(%edi)
80105f10:	ff ff 
80105f12:	66 c7 87 7a 30 11 80 	movw   $0x0,-0x7feecf86(%edi)
80105f19:	00 00 
80105f1b:	c6 87 7c 30 11 80 00 	movb   $0x0,-0x7feecf84(%edi)
80105f22:	0f b6 8f 7d 30 11 80 	movzbl -0x7feecf83(%edi),%ecx
80105f29:	83 e1 f0             	and    $0xfffffff0,%ecx
80105f2c:	89 ce                	mov    %ecx,%esi
80105f2e:	83 ce 0a             	or     $0xa,%esi
80105f31:	89 f2                	mov    %esi,%edx
80105f33:	88 97 7d 30 11 80    	mov    %dl,-0x7feecf83(%edi)
80105f39:	83 c9 1a             	or     $0x1a,%ecx
80105f3c:	88 8f 7d 30 11 80    	mov    %cl,-0x7feecf83(%edi)
80105f42:	83 e1 9f             	and    $0xffffff9f,%ecx
80105f45:	88 8f 7d 30 11 80    	mov    %cl,-0x7feecf83(%edi)
80105f4b:	83 c9 80             	or     $0xffffff80,%ecx
80105f4e:	88 8f 7d 30 11 80    	mov    %cl,-0x7feecf83(%edi)
80105f54:	0f b6 8f 7e 30 11 80 	movzbl -0x7feecf82(%edi),%ecx
80105f5b:	83 c9 0f             	or     $0xf,%ecx
80105f5e:	88 8f 7e 30 11 80    	mov    %cl,-0x7feecf82(%edi)
80105f64:	89 ce                	mov    %ecx,%esi
80105f66:	83 e6 ef             	and    $0xffffffef,%esi
80105f69:	89 f2                	mov    %esi,%edx
80105f6b:	88 97 7e 30 11 80    	mov    %dl,-0x7feecf82(%edi)
80105f71:	83 e1 cf             	and    $0xffffffcf,%ecx
80105f74:	88 8f 7e 30 11 80    	mov    %cl,-0x7feecf82(%edi)
80105f7a:	89 ce                	mov    %ecx,%esi
80105f7c:	83 ce 40             	or     $0x40,%esi
80105f7f:	89 f2                	mov    %esi,%edx
80105f81:	88 97 7e 30 11 80    	mov    %dl,-0x7feecf82(%edi)
80105f87:	83 c9 c0             	or     $0xffffffc0,%ecx
80105f8a:	88 8f 7e 30 11 80    	mov    %cl,-0x7feecf82(%edi)
80105f90:	c6 87 7f 30 11 80 00 	movb   $0x0,-0x7feecf81(%edi)
80105f97:	66 c7 87 80 30 11 80 	movw   $0xffff,-0x7feecf80(%edi)
80105f9e:	ff ff 
80105fa0:	66 c7 87 82 30 11 80 	movw   $0x0,-0x7feecf7e(%edi)
80105fa7:	00 00 
80105fa9:	c6 87 84 30 11 80 00 	movb   $0x0,-0x7feecf7c(%edi)
80105fb0:	0f b6 8f 85 30 11 80 	movzbl -0x7feecf7b(%edi),%ecx
80105fb7:	83 e1 f0             	and    $0xfffffff0,%ecx
80105fba:	89 ce                	mov    %ecx,%esi
80105fbc:	83 ce 02             	or     $0x2,%esi
80105fbf:	89 f2                	mov    %esi,%edx
80105fc1:	88 97 85 30 11 80    	mov    %dl,-0x7feecf7b(%edi)
80105fc7:	83 c9 12             	or     $0x12,%ecx
80105fca:	88 8f 85 30 11 80    	mov    %cl,-0x7feecf7b(%edi)
80105fd0:	83 e1 9f             	and    $0xffffff9f,%ecx
80105fd3:	88 8f 85 30 11 80    	mov    %cl,-0x7feecf7b(%edi)
80105fd9:	83 c9 80             	or     $0xffffff80,%ecx
80105fdc:	88 8f 85 30 11 80    	mov    %cl,-0x7feecf7b(%edi)
80105fe2:	0f b6 8f 86 30 11 80 	movzbl -0x7feecf7a(%edi),%ecx
80105fe9:	83 c9 0f             	or     $0xf,%ecx
80105fec:	88 8f 86 30 11 80    	mov    %cl,-0x7feecf7a(%edi)
80105ff2:	89 ce                	mov    %ecx,%esi
80105ff4:	83 e6 ef             	and    $0xffffffef,%esi
80105ff7:	89 f2                	mov    %esi,%edx
80105ff9:	88 97 86 30 11 80    	mov    %dl,-0x7feecf7a(%edi)
80105fff:	83 e1 cf             	and    $0xffffffcf,%ecx
80106002:	88 8f 86 30 11 80    	mov    %cl,-0x7feecf7a(%edi)
80106008:	89 ce                	mov    %ecx,%esi
8010600a:	83 ce 40             	or     $0x40,%esi
8010600d:	89 f2                	mov    %esi,%edx
8010600f:	88 97 86 30 11 80    	mov    %dl,-0x7feecf7a(%edi)
80106015:	83 c9 c0             	or     $0xffffffc0,%ecx
80106018:	88 8f 86 30 11 80    	mov    %cl,-0x7feecf7a(%edi)
8010601e:	c6 87 87 30 11 80 00 	movb   $0x0,-0x7feecf79(%edi)
80106025:	66 c7 87 88 30 11 80 	movw   $0xffff,-0x7feecf78(%edi)
8010602c:	ff ff 
8010602e:	66 c7 87 8a 30 11 80 	movw   $0x0,-0x7feecf76(%edi)
80106035:	00 00 
80106037:	c6 87 8c 30 11 80 00 	movb   $0x0,-0x7feecf74(%edi)
8010603e:	0f b6 9f 8d 30 11 80 	movzbl -0x7feecf73(%edi),%ebx
80106045:	83 e3 f0             	and    $0xfffffff0,%ebx
80106048:	89 de                	mov    %ebx,%esi
8010604a:	83 ce 0a             	or     $0xa,%esi
8010604d:	89 f2                	mov    %esi,%edx
8010604f:	88 97 8d 30 11 80    	mov    %dl,-0x7feecf73(%edi)
80106055:	89 de                	mov    %ebx,%esi
80106057:	83 ce 1a             	or     $0x1a,%esi
8010605a:	89 f2                	mov    %esi,%edx
8010605c:	88 97 8d 30 11 80    	mov    %dl,-0x7feecf73(%edi)
80106062:	83 cb 7a             	or     $0x7a,%ebx
80106065:	88 9f 8d 30 11 80    	mov    %bl,-0x7feecf73(%edi)
8010606b:	c6 87 8d 30 11 80 fa 	movb   $0xfa,-0x7feecf73(%edi)
80106072:	0f b6 9f 8e 30 11 80 	movzbl -0x7feecf72(%edi),%ebx
80106079:	83 cb 0f             	or     $0xf,%ebx
8010607c:	88 9f 8e 30 11 80    	mov    %bl,-0x7feecf72(%edi)
80106082:	89 de                	mov    %ebx,%esi
80106084:	83 e6 ef             	and    $0xffffffef,%esi
80106087:	89 f2                	mov    %esi,%edx
80106089:	88 97 8e 30 11 80    	mov    %dl,-0x7feecf72(%edi)
8010608f:	83 e3 cf             	and    $0xffffffcf,%ebx
80106092:	88 9f 8e 30 11 80    	mov    %bl,-0x7feecf72(%edi)
80106098:	89 de                	mov    %ebx,%esi
8010609a:	83 ce 40             	or     $0x40,%esi
8010609d:	89 f2                	mov    %esi,%edx
8010609f:	88 97 8e 30 11 80    	mov    %dl,-0x7feecf72(%edi)
801060a5:	83 cb c0             	or     $0xffffffc0,%ebx
801060a8:	88 9f 8e 30 11 80    	mov    %bl,-0x7feecf72(%edi)
801060ae:	c6 87 8f 30 11 80 00 	movb   $0x0,-0x7feecf71(%edi)
801060b5:	66 c7 87 90 30 11 80 	movw   $0xffff,-0x7feecf70(%edi)
801060bc:	ff ff 
801060be:	66 c7 87 92 30 11 80 	movw   $0x0,-0x7feecf6e(%edi)
801060c5:	00 00 
801060c7:	c6 87 94 30 11 80 00 	movb   $0x0,-0x7feecf6c(%edi)
801060ce:	0f b6 9f 95 30 11 80 	movzbl -0x7feecf6b(%edi),%ebx
801060d5:	83 e3 f0             	and    $0xfffffff0,%ebx
801060d8:	89 de                	mov    %ebx,%esi
801060da:	83 ce 02             	or     $0x2,%esi
801060dd:	89 f2                	mov    %esi,%edx
801060df:	88 97 95 30 11 80    	mov    %dl,-0x7feecf6b(%edi)
801060e5:	89 de                	mov    %ebx,%esi
801060e7:	83 ce 12             	or     $0x12,%esi
801060ea:	89 f2                	mov    %esi,%edx
801060ec:	88 97 95 30 11 80    	mov    %dl,-0x7feecf6b(%edi)
801060f2:	83 cb 72             	or     $0x72,%ebx
801060f5:	88 9f 95 30 11 80    	mov    %bl,-0x7feecf6b(%edi)
801060fb:	c6 87 95 30 11 80 f2 	movb   $0xf2,-0x7feecf6b(%edi)
80106102:	0f b6 9f 96 30 11 80 	movzbl -0x7feecf6a(%edi),%ebx
80106109:	83 cb 0f             	or     $0xf,%ebx
8010610c:	88 9f 96 30 11 80    	mov    %bl,-0x7feecf6a(%edi)
80106112:	89 de                	mov    %ebx,%esi
80106114:	83 e6 ef             	and    $0xffffffef,%esi
80106117:	89 f2                	mov    %esi,%edx
80106119:	88 97 96 30 11 80    	mov    %dl,-0x7feecf6a(%edi)
8010611f:	83 e3 cf             	and    $0xffffffcf,%ebx
80106122:	88 9f 96 30 11 80    	mov    %bl,-0x7feecf6a(%edi)
80106128:	89 de                	mov    %ebx,%esi
8010612a:	83 ce 40             	or     $0x40,%esi
8010612d:	89 f2                	mov    %esi,%edx
8010612f:	88 97 96 30 11 80    	mov    %dl,-0x7feecf6a(%edi)
80106135:	83 cb c0             	or     $0xffffffc0,%ebx
80106138:	88 9f 96 30 11 80    	mov    %bl,-0x7feecf6a(%edi)
8010613e:	c6 87 97 30 11 80 00 	movb   $0x0,-0x7feecf69(%edi)
80106145:	8d 97 70 30 11 80    	lea    -0x7feecf90(%edi),%edx
8010614b:	66 c7 45 e2 2f 00    	movw   $0x2f,-0x1e(%ebp)
80106151:	66 89 55 e4          	mov    %dx,-0x1c(%ebp)
80106155:	c1 ea 10             	shr    $0x10,%edx
80106158:	66 89 55 e6          	mov    %dx,-0x1a(%ebp)
8010615c:	8d 45 e2             	lea    -0x1e(%ebp),%eax
8010615f:	0f 01 10             	lgdtl  (%eax)
80106162:	83 c4 1c             	add    $0x1c,%esp
80106165:	5b                   	pop    %ebx
80106166:	5e                   	pop    %esi
80106167:	5f                   	pop    %edi
80106168:	5d                   	pop    %ebp
80106169:	c3                   	ret    

8010616a <switchkvm>:
8010616a:	f3 0f 1e fb          	endbr32 
8010616e:	a1 24 ae 10 80       	mov    0x8010ae24,%eax
80106173:	05 00 00 00 80       	add    $0x80000000,%eax
80106178:	0f 22 d8             	mov    %eax,%cr3
8010617b:	c3                   	ret    

8010617c <switchuvm>:
8010617c:	f3 0f 1e fb          	endbr32 
80106180:	55                   	push   %ebp
80106181:	89 e5                	mov    %esp,%ebp
80106183:	57                   	push   %edi
80106184:	56                   	push   %esi
80106185:	53                   	push   %ebx
80106186:	83 ec 1c             	sub    $0x1c,%esp
80106189:	8b 75 08             	mov    0x8(%ebp),%esi
8010618c:	85 f6                	test   %esi,%esi
8010618e:	0f 84 25 01 00 00    	je     801062b9 <switchuvm+0x13d>
80106194:	83 7e 08 00          	cmpl   $0x0,0x8(%esi)
80106198:	0f 84 28 01 00 00    	je     801062c6 <switchuvm+0x14a>
8010619e:	83 7e 04 00          	cmpl   $0x0,0x4(%esi)
801061a2:	0f 84 2b 01 00 00    	je     801062d3 <switchuvm+0x157>
801061a8:	e8 2f da ff ff       	call   80103bdc <pushcli>
801061ad:	e8 af d0 ff ff       	call   80103261 <mycpu>
801061b2:	89 c3                	mov    %eax,%ebx
801061b4:	e8 a8 d0 ff ff       	call   80103261 <mycpu>
801061b9:	8d 78 08             	lea    0x8(%eax),%edi
801061bc:	e8 a0 d0 ff ff       	call   80103261 <mycpu>
801061c1:	83 c0 08             	add    $0x8,%eax
801061c4:	c1 e8 10             	shr    $0x10,%eax
801061c7:	89 45 e4             	mov    %eax,-0x1c(%ebp)
801061ca:	e8 92 d0 ff ff       	call   80103261 <mycpu>
801061cf:	8d 50 08             	lea    0x8(%eax),%edx
801061d2:	c1 ea 18             	shr    $0x18,%edx
801061d5:	66 c7 83 98 00 00 00 	movw   $0x67,0x98(%ebx)
801061dc:	67 00 
801061de:	66 89 bb 9a 00 00 00 	mov    %di,0x9a(%ebx)
801061e5:	0f b6 45 e4          	movzbl -0x1c(%ebp),%eax
801061e9:	88 83 9c 00 00 00    	mov    %al,0x9c(%ebx)
801061ef:	0f b6 83 9d 00 00 00 	movzbl 0x9d(%ebx),%eax
801061f6:	83 e0 f0             	and    $0xfffffff0,%eax
801061f9:	89 c1                	mov    %eax,%ecx
801061fb:	83 c9 09             	or     $0x9,%ecx
801061fe:	88 8b 9d 00 00 00    	mov    %cl,0x9d(%ebx)
80106204:	83 c8 19             	or     $0x19,%eax
80106207:	88 83 9d 00 00 00    	mov    %al,0x9d(%ebx)
8010620d:	83 e0 9f             	and    $0xffffff9f,%eax
80106210:	88 83 9d 00 00 00    	mov    %al,0x9d(%ebx)
80106216:	83 c8 80             	or     $0xffffff80,%eax
80106219:	88 83 9d 00 00 00    	mov    %al,0x9d(%ebx)
8010621f:	0f b6 83 9e 00 00 00 	movzbl 0x9e(%ebx),%eax
80106226:	89 c1                	mov    %eax,%ecx
80106228:	83 e1 f0             	and    $0xfffffff0,%ecx
8010622b:	88 8b 9e 00 00 00    	mov    %cl,0x9e(%ebx)
80106231:	89 c1                	mov    %eax,%ecx
80106233:	83 e1 e0             	and    $0xffffffe0,%ecx
80106236:	88 8b 9e 00 00 00    	mov    %cl,0x9e(%ebx)
8010623c:	83 e0 c0             	and    $0xffffffc0,%eax
8010623f:	88 83 9e 00 00 00    	mov    %al,0x9e(%ebx)
80106245:	83 c8 40             	or     $0x40,%eax
80106248:	88 83 9e 00 00 00    	mov    %al,0x9e(%ebx)
8010624e:	83 e0 7f             	and    $0x7f,%eax
80106251:	88 83 9e 00 00 00    	mov    %al,0x9e(%ebx)
80106257:	88 93 9f 00 00 00    	mov    %dl,0x9f(%ebx)
8010625d:	e8 ff cf ff ff       	call   80103261 <mycpu>
80106262:	0f b6 90 9d 00 00 00 	movzbl 0x9d(%eax),%edx
80106269:	83 e2 ef             	and    $0xffffffef,%edx
8010626c:	88 90 9d 00 00 00    	mov    %dl,0x9d(%eax)
80106272:	e8 ea cf ff ff       	call   80103261 <mycpu>
80106277:	66 c7 40 10 10 00    	movw   $0x10,0x10(%eax)
8010627d:	8b 5e 08             	mov    0x8(%esi),%ebx
80106280:	e8 dc cf ff ff       	call   80103261 <mycpu>
80106285:	81 c3 00 10 00 00    	add    $0x1000,%ebx
8010628b:	89 58 0c             	mov    %ebx,0xc(%eax)
8010628e:	e8 ce cf ff ff       	call   80103261 <mycpu>
80106293:	66 c7 40 6e ff ff    	movw   $0xffff,0x6e(%eax)
80106299:	b8 28 00 00 00       	mov    $0x28,%eax
8010629e:	0f 00 d8             	ltr    %ax
801062a1:	8b 46 04             	mov    0x4(%esi),%eax
801062a4:	05 00 00 00 80       	add    $0x80000000,%eax
801062a9:	0f 22 d8             	mov    %eax,%cr3
801062ac:	e8 67 d9 ff ff       	call   80103c18 <popcli>
801062b1:	8d 65 f4             	lea    -0xc(%ebp),%esp
801062b4:	5b                   	pop    %ebx
801062b5:	5e                   	pop    %esi
801062b6:	5f                   	pop    %edi
801062b7:	5d                   	pop    %ebp
801062b8:	c3                   	ret    
801062b9:	83 ec 0c             	sub    $0xc,%esp
801062bc:	68 16 71 10 80       	push   $0x80107116
801062c1:	e8 96 a0 ff ff       	call   8010035c <panic>
801062c6:	83 ec 0c             	sub    $0xc,%esp
801062c9:	68 2c 71 10 80       	push   $0x8010712c
801062ce:	e8 89 a0 ff ff       	call   8010035c <panic>
801062d3:	83 ec 0c             	sub    $0xc,%esp
801062d6:	68 41 71 10 80       	push   $0x80107141
801062db:	e8 7c a0 ff ff       	call   8010035c <panic>

801062e0 <inituvm>:
801062e0:	f3 0f 1e fb          	endbr32 
801062e4:	55                   	push   %ebp
801062e5:	89 e5                	mov    %esp,%ebp
801062e7:	56                   	push   %esi
801062e8:	53                   	push   %ebx
801062e9:	8b 75 10             	mov    0x10(%ebp),%esi
801062ec:	81 fe ff 0f 00 00    	cmp    $0xfff,%esi
801062f2:	77 4c                	ja     80106340 <inituvm+0x60>
801062f4:	e8 74 be ff ff       	call   8010216d <kalloc>
801062f9:	89 c3                	mov    %eax,%ebx
801062fb:	83 ec 04             	sub    $0x4,%esp
801062fe:	68 00 10 00 00       	push   $0x1000
80106303:	6a 00                	push   $0x0
80106305:	50                   	push   %eax
80106306:	e8 58 da ff ff       	call   80103d63 <memset>
8010630b:	83 c4 08             	add    $0x8,%esp
8010630e:	6a 06                	push   $0x6
80106310:	8d 83 00 00 00 80    	lea    -0x80000000(%ebx),%eax
80106316:	50                   	push   %eax
80106317:	b9 00 10 00 00       	mov    $0x1000,%ecx
8010631c:	ba 00 00 00 00       	mov    $0x0,%edx
80106321:	8b 45 08             	mov    0x8(%ebp),%eax
80106324:	e8 52 fb ff ff       	call   80105e7b <mappages>
80106329:	83 c4 0c             	add    $0xc,%esp
8010632c:	56                   	push   %esi
8010632d:	ff 75 0c             	pushl  0xc(%ebp)
80106330:	53                   	push   %ebx
80106331:	e8 a5 da ff ff       	call   80103ddb <memmove>
80106336:	83 c4 10             	add    $0x10,%esp
80106339:	8d 65 f8             	lea    -0x8(%ebp),%esp
8010633c:	5b                   	pop    %ebx
8010633d:	5e                   	pop    %esi
8010633e:	5d                   	pop    %ebp
8010633f:	c3                   	ret    
80106340:	83 ec 0c             	sub    $0xc,%esp
80106343:	68 55 71 10 80       	push   $0x80107155
80106348:	e8 0f a0 ff ff       	call   8010035c <panic>

8010634d <loaduvm>:
8010634d:	f3 0f 1e fb          	endbr32 
80106351:	55                   	push   %ebp
80106352:	89 e5                	mov    %esp,%ebp
80106354:	57                   	push   %edi
80106355:	56                   	push   %esi
80106356:	53                   	push   %ebx
80106357:	83 ec 0c             	sub    $0xc,%esp
8010635a:	8b 7d 18             	mov    0x18(%ebp),%edi
8010635d:	8b 5d 0c             	mov    0xc(%ebp),%ebx
80106360:	81 e3 ff 0f 00 00    	and    $0xfff,%ebx
80106366:	74 3c                	je     801063a4 <loaduvm+0x57>
80106368:	83 ec 0c             	sub    $0xc,%esp
8010636b:	68 10 72 10 80       	push   $0x80107210
80106370:	e8 e7 9f ff ff       	call   8010035c <panic>
80106375:	83 ec 0c             	sub    $0xc,%esp
80106378:	68 6f 71 10 80       	push   $0x8010716f
8010637d:	e8 da 9f ff ff       	call   8010035c <panic>
80106382:	05 00 00 00 80       	add    $0x80000000,%eax
80106387:	56                   	push   %esi
80106388:	89 da                	mov    %ebx,%edx
8010638a:	03 55 14             	add    0x14(%ebp),%edx
8010638d:	52                   	push   %edx
8010638e:	50                   	push   %eax
8010638f:	ff 75 10             	pushl  0x10(%ebp)
80106392:	e8 54 b4 ff ff       	call   801017eb <readi>
80106397:	83 c4 10             	add    $0x10,%esp
8010639a:	39 f0                	cmp    %esi,%eax
8010639c:	75 47                	jne    801063e5 <loaduvm+0x98>
8010639e:	81 c3 00 10 00 00    	add    $0x1000,%ebx
801063a4:	39 fb                	cmp    %edi,%ebx
801063a6:	73 30                	jae    801063d8 <loaduvm+0x8b>
801063a8:	89 da                	mov    %ebx,%edx
801063aa:	03 55 0c             	add    0xc(%ebp),%edx
801063ad:	b9 00 00 00 00       	mov    $0x0,%ecx
801063b2:	8b 45 08             	mov    0x8(%ebp),%eax
801063b5:	e8 50 fa ff ff       	call   80105e0a <walkpgdir>
801063ba:	85 c0                	test   %eax,%eax
801063bc:	74 b7                	je     80106375 <loaduvm+0x28>
801063be:	8b 00                	mov    (%eax),%eax
801063c0:	25 00 f0 ff ff       	and    $0xfffff000,%eax
801063c5:	89 fe                	mov    %edi,%esi
801063c7:	29 de                	sub    %ebx,%esi
801063c9:	81 fe ff 0f 00 00    	cmp    $0xfff,%esi
801063cf:	76 b1                	jbe    80106382 <loaduvm+0x35>
801063d1:	be 00 10 00 00       	mov    $0x1000,%esi
801063d6:	eb aa                	jmp    80106382 <loaduvm+0x35>
801063d8:	b8 00 00 00 00       	mov    $0x0,%eax
801063dd:	8d 65 f4             	lea    -0xc(%ebp),%esp
801063e0:	5b                   	pop    %ebx
801063e1:	5e                   	pop    %esi
801063e2:	5f                   	pop    %edi
801063e3:	5d                   	pop    %ebp
801063e4:	c3                   	ret    
801063e5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801063ea:	eb f1                	jmp    801063dd <loaduvm+0x90>

801063ec <deallocuvm>:
801063ec:	f3 0f 1e fb          	endbr32 
801063f0:	55                   	push   %ebp
801063f1:	89 e5                	mov    %esp,%ebp
801063f3:	57                   	push   %edi
801063f4:	56                   	push   %esi
801063f5:	53                   	push   %ebx
801063f6:	83 ec 0c             	sub    $0xc,%esp
801063f9:	8b 7d 0c             	mov    0xc(%ebp),%edi
801063fc:	39 7d 10             	cmp    %edi,0x10(%ebp)
801063ff:	73 11                	jae    80106412 <deallocuvm+0x26>
80106401:	8b 45 10             	mov    0x10(%ebp),%eax
80106404:	8d 98 ff 0f 00 00    	lea    0xfff(%eax),%ebx
8010640a:	81 e3 00 f0 ff ff    	and    $0xfffff000,%ebx
80106410:	eb 19                	jmp    8010642b <deallocuvm+0x3f>
80106412:	89 f8                	mov    %edi,%eax
80106414:	eb 64                	jmp    8010647a <deallocuvm+0x8e>
80106416:	c1 eb 16             	shr    $0x16,%ebx
80106419:	83 c3 01             	add    $0x1,%ebx
8010641c:	c1 e3 16             	shl    $0x16,%ebx
8010641f:	81 eb 00 10 00 00    	sub    $0x1000,%ebx
80106425:	81 c3 00 10 00 00    	add    $0x1000,%ebx
8010642b:	39 fb                	cmp    %edi,%ebx
8010642d:	73 48                	jae    80106477 <deallocuvm+0x8b>
8010642f:	b9 00 00 00 00       	mov    $0x0,%ecx
80106434:	89 da                	mov    %ebx,%edx
80106436:	8b 45 08             	mov    0x8(%ebp),%eax
80106439:	e8 cc f9 ff ff       	call   80105e0a <walkpgdir>
8010643e:	89 c6                	mov    %eax,%esi
80106440:	85 c0                	test   %eax,%eax
80106442:	74 d2                	je     80106416 <deallocuvm+0x2a>
80106444:	8b 00                	mov    (%eax),%eax
80106446:	a8 01                	test   $0x1,%al
80106448:	74 db                	je     80106425 <deallocuvm+0x39>
8010644a:	25 00 f0 ff ff       	and    $0xfffff000,%eax
8010644f:	74 19                	je     8010646a <deallocuvm+0x7e>
80106451:	05 00 00 00 80       	add    $0x80000000,%eax
80106456:	83 ec 0c             	sub    $0xc,%esp
80106459:	50                   	push   %eax
8010645a:	e8 e7 bb ff ff       	call   80102046 <kfree>
8010645f:	c7 06 00 00 00 00    	movl   $0x0,(%esi)
80106465:	83 c4 10             	add    $0x10,%esp
80106468:	eb bb                	jmp    80106425 <deallocuvm+0x39>
8010646a:	83 ec 0c             	sub    $0xc,%esp
8010646d:	68 c6 6a 10 80       	push   $0x80106ac6
80106472:	e8 e5 9e ff ff       	call   8010035c <panic>
80106477:	8b 45 10             	mov    0x10(%ebp),%eax
8010647a:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010647d:	5b                   	pop    %ebx
8010647e:	5e                   	pop    %esi
8010647f:	5f                   	pop    %edi
80106480:	5d                   	pop    %ebp
80106481:	c3                   	ret    

80106482 <allocuvm>:
80106482:	f3 0f 1e fb          	endbr32 
80106486:	55                   	push   %ebp
80106487:	89 e5                	mov    %esp,%ebp
80106489:	57                   	push   %edi
8010648a:	56                   	push   %esi
8010648b:	53                   	push   %ebx
8010648c:	83 ec 1c             	sub    $0x1c,%esp
8010648f:	8b 7d 10             	mov    0x10(%ebp),%edi
80106492:	89 7d e4             	mov    %edi,-0x1c(%ebp)
80106495:	85 ff                	test   %edi,%edi
80106497:	0f 88 c1 00 00 00    	js     8010655e <allocuvm+0xdc>
8010649d:	3b 7d 0c             	cmp    0xc(%ebp),%edi
801064a0:	72 5c                	jb     801064fe <allocuvm+0x7c>
801064a2:	8b 45 0c             	mov    0xc(%ebp),%eax
801064a5:	8d b0 ff 0f 00 00    	lea    0xfff(%eax),%esi
801064ab:	81 e6 00 f0 ff ff    	and    $0xfffff000,%esi
801064b1:	39 fe                	cmp    %edi,%esi
801064b3:	0f 83 ac 00 00 00    	jae    80106565 <allocuvm+0xe3>
801064b9:	e8 af bc ff ff       	call   8010216d <kalloc>
801064be:	89 c3                	mov    %eax,%ebx
801064c0:	85 c0                	test   %eax,%eax
801064c2:	74 42                	je     80106506 <allocuvm+0x84>
801064c4:	83 ec 04             	sub    $0x4,%esp
801064c7:	68 00 10 00 00       	push   $0x1000
801064cc:	6a 00                	push   $0x0
801064ce:	50                   	push   %eax
801064cf:	e8 8f d8 ff ff       	call   80103d63 <memset>
801064d4:	83 c4 08             	add    $0x8,%esp
801064d7:	6a 06                	push   $0x6
801064d9:	8d 83 00 00 00 80    	lea    -0x80000000(%ebx),%eax
801064df:	50                   	push   %eax
801064e0:	b9 00 10 00 00       	mov    $0x1000,%ecx
801064e5:	89 f2                	mov    %esi,%edx
801064e7:	8b 45 08             	mov    0x8(%ebp),%eax
801064ea:	e8 8c f9 ff ff       	call   80105e7b <mappages>
801064ef:	83 c4 10             	add    $0x10,%esp
801064f2:	85 c0                	test   %eax,%eax
801064f4:	78 38                	js     8010652e <allocuvm+0xac>
801064f6:	81 c6 00 10 00 00    	add    $0x1000,%esi
801064fc:	eb b3                	jmp    801064b1 <allocuvm+0x2f>
801064fe:	8b 45 0c             	mov    0xc(%ebp),%eax
80106501:	89 45 e4             	mov    %eax,-0x1c(%ebp)
80106504:	eb 5f                	jmp    80106565 <allocuvm+0xe3>
80106506:	83 ec 0c             	sub    $0xc,%esp
80106509:	68 8d 71 10 80       	push   $0x8010718d
8010650e:	e8 16 a1 ff ff       	call   80100629 <cprintf>
80106513:	83 c4 0c             	add    $0xc,%esp
80106516:	ff 75 0c             	pushl  0xc(%ebp)
80106519:	57                   	push   %edi
8010651a:	ff 75 08             	pushl  0x8(%ebp)
8010651d:	e8 ca fe ff ff       	call   801063ec <deallocuvm>
80106522:	83 c4 10             	add    $0x10,%esp
80106525:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
8010652c:	eb 37                	jmp    80106565 <allocuvm+0xe3>
8010652e:	83 ec 0c             	sub    $0xc,%esp
80106531:	68 a5 71 10 80       	push   $0x801071a5
80106536:	e8 ee a0 ff ff       	call   80100629 <cprintf>
8010653b:	83 c4 0c             	add    $0xc,%esp
8010653e:	ff 75 0c             	pushl  0xc(%ebp)
80106541:	57                   	push   %edi
80106542:	ff 75 08             	pushl  0x8(%ebp)
80106545:	e8 a2 fe ff ff       	call   801063ec <deallocuvm>
8010654a:	89 1c 24             	mov    %ebx,(%esp)
8010654d:	e8 f4 ba ff ff       	call   80102046 <kfree>
80106552:	83 c4 10             	add    $0x10,%esp
80106555:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
8010655c:	eb 07                	jmp    80106565 <allocuvm+0xe3>
8010655e:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
80106565:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80106568:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010656b:	5b                   	pop    %ebx
8010656c:	5e                   	pop    %esi
8010656d:	5f                   	pop    %edi
8010656e:	5d                   	pop    %ebp
8010656f:	c3                   	ret    

80106570 <freevm>:
80106570:	f3 0f 1e fb          	endbr32 
80106574:	55                   	push   %ebp
80106575:	89 e5                	mov    %esp,%ebp
80106577:	56                   	push   %esi
80106578:	53                   	push   %ebx
80106579:	8b 75 08             	mov    0x8(%ebp),%esi
8010657c:	85 f6                	test   %esi,%esi
8010657e:	74 1a                	je     8010659a <freevm+0x2a>
80106580:	83 ec 04             	sub    $0x4,%esp
80106583:	6a 00                	push   $0x0
80106585:	68 00 00 00 80       	push   $0x80000000
8010658a:	56                   	push   %esi
8010658b:	e8 5c fe ff ff       	call   801063ec <deallocuvm>
80106590:	83 c4 10             	add    $0x10,%esp
80106593:	bb 00 00 00 00       	mov    $0x0,%ebx
80106598:	eb 10                	jmp    801065aa <freevm+0x3a>
8010659a:	83 ec 0c             	sub    $0xc,%esp
8010659d:	68 c1 71 10 80       	push   $0x801071c1
801065a2:	e8 b5 9d ff ff       	call   8010035c <panic>
801065a7:	83 c3 01             	add    $0x1,%ebx
801065aa:	81 fb ff 03 00 00    	cmp    $0x3ff,%ebx
801065b0:	77 1f                	ja     801065d1 <freevm+0x61>
801065b2:	8b 04 9e             	mov    (%esi,%ebx,4),%eax
801065b5:	a8 01                	test   $0x1,%al
801065b7:	74 ee                	je     801065a7 <freevm+0x37>
801065b9:	25 00 f0 ff ff       	and    $0xfffff000,%eax
801065be:	05 00 00 00 80       	add    $0x80000000,%eax
801065c3:	83 ec 0c             	sub    $0xc,%esp
801065c6:	50                   	push   %eax
801065c7:	e8 7a ba ff ff       	call   80102046 <kfree>
801065cc:	83 c4 10             	add    $0x10,%esp
801065cf:	eb d6                	jmp    801065a7 <freevm+0x37>
801065d1:	83 ec 0c             	sub    $0xc,%esp
801065d4:	56                   	push   %esi
801065d5:	e8 6c ba ff ff       	call   80102046 <kfree>
801065da:	83 c4 10             	add    $0x10,%esp
801065dd:	8d 65 f8             	lea    -0x8(%ebp),%esp
801065e0:	5b                   	pop    %ebx
801065e1:	5e                   	pop    %esi
801065e2:	5d                   	pop    %ebp
801065e3:	c3                   	ret    

801065e4 <setupkvm>:
801065e4:	f3 0f 1e fb          	endbr32 
801065e8:	55                   	push   %ebp
801065e9:	89 e5                	mov    %esp,%ebp
801065eb:	56                   	push   %esi
801065ec:	53                   	push   %ebx
801065ed:	e8 7b bb ff ff       	call   8010216d <kalloc>
801065f2:	89 c6                	mov    %eax,%esi
801065f4:	85 c0                	test   %eax,%eax
801065f6:	74 55                	je     8010664d <setupkvm+0x69>
801065f8:	83 ec 04             	sub    $0x4,%esp
801065fb:	68 00 10 00 00       	push   $0x1000
80106600:	6a 00                	push   $0x0
80106602:	50                   	push   %eax
80106603:	e8 5b d7 ff ff       	call   80103d63 <memset>
80106608:	83 c4 10             	add    $0x10,%esp
8010660b:	bb 20 a4 10 80       	mov    $0x8010a420,%ebx
80106610:	81 fb 60 a4 10 80    	cmp    $0x8010a460,%ebx
80106616:	73 35                	jae    8010664d <setupkvm+0x69>
80106618:	8b 43 04             	mov    0x4(%ebx),%eax
8010661b:	8b 4b 08             	mov    0x8(%ebx),%ecx
8010661e:	29 c1                	sub    %eax,%ecx
80106620:	83 ec 08             	sub    $0x8,%esp
80106623:	ff 73 0c             	pushl  0xc(%ebx)
80106626:	50                   	push   %eax
80106627:	8b 13                	mov    (%ebx),%edx
80106629:	89 f0                	mov    %esi,%eax
8010662b:	e8 4b f8 ff ff       	call   80105e7b <mappages>
80106630:	83 c4 10             	add    $0x10,%esp
80106633:	85 c0                	test   %eax,%eax
80106635:	78 05                	js     8010663c <setupkvm+0x58>
80106637:	83 c3 10             	add    $0x10,%ebx
8010663a:	eb d4                	jmp    80106610 <setupkvm+0x2c>
8010663c:	83 ec 0c             	sub    $0xc,%esp
8010663f:	56                   	push   %esi
80106640:	e8 2b ff ff ff       	call   80106570 <freevm>
80106645:	83 c4 10             	add    $0x10,%esp
80106648:	be 00 00 00 00       	mov    $0x0,%esi
8010664d:	89 f0                	mov    %esi,%eax
8010664f:	8d 65 f8             	lea    -0x8(%ebp),%esp
80106652:	5b                   	pop    %ebx
80106653:	5e                   	pop    %esi
80106654:	5d                   	pop    %ebp
80106655:	c3                   	ret    

80106656 <kvmalloc>:
80106656:	f3 0f 1e fb          	endbr32 
8010665a:	55                   	push   %ebp
8010665b:	89 e5                	mov    %esp,%ebp
8010665d:	83 ec 08             	sub    $0x8,%esp
80106660:	e8 7f ff ff ff       	call   801065e4 <setupkvm>
80106665:	a3 24 ae 10 80       	mov    %eax,0x8010ae24
8010666a:	e8 fb fa ff ff       	call   8010616a <switchkvm>
8010666f:	c9                   	leave  
80106670:	c3                   	ret    

80106671 <clearpteu>:
80106671:	f3 0f 1e fb          	endbr32 
80106675:	55                   	push   %ebp
80106676:	89 e5                	mov    %esp,%ebp
80106678:	83 ec 08             	sub    $0x8,%esp
8010667b:	b9 00 00 00 00       	mov    $0x0,%ecx
80106680:	8b 55 0c             	mov    0xc(%ebp),%edx
80106683:	8b 45 08             	mov    0x8(%ebp),%eax
80106686:	e8 7f f7 ff ff       	call   80105e0a <walkpgdir>
8010668b:	85 c0                	test   %eax,%eax
8010668d:	74 05                	je     80106694 <clearpteu+0x23>
8010668f:	83 20 fb             	andl   $0xfffffffb,(%eax)
80106692:	c9                   	leave  
80106693:	c3                   	ret    
80106694:	83 ec 0c             	sub    $0xc,%esp
80106697:	68 d2 71 10 80       	push   $0x801071d2
8010669c:	e8 bb 9c ff ff       	call   8010035c <panic>

801066a1 <copyuvm>:
801066a1:	f3 0f 1e fb          	endbr32 
801066a5:	55                   	push   %ebp
801066a6:	89 e5                	mov    %esp,%ebp
801066a8:	57                   	push   %edi
801066a9:	56                   	push   %esi
801066aa:	53                   	push   %ebx
801066ab:	83 ec 1c             	sub    $0x1c,%esp
801066ae:	e8 31 ff ff ff       	call   801065e4 <setupkvm>
801066b3:	89 45 dc             	mov    %eax,-0x24(%ebp)
801066b6:	85 c0                	test   %eax,%eax
801066b8:	0f 84 c4 00 00 00    	je     80106782 <copyuvm+0xe1>
801066be:	bf 00 00 00 00       	mov    $0x0,%edi
801066c3:	3b 7d 0c             	cmp    0xc(%ebp),%edi
801066c6:	0f 83 b6 00 00 00    	jae    80106782 <copyuvm+0xe1>
801066cc:	89 7d e4             	mov    %edi,-0x1c(%ebp)
801066cf:	b9 00 00 00 00       	mov    $0x0,%ecx
801066d4:	89 fa                	mov    %edi,%edx
801066d6:	8b 45 08             	mov    0x8(%ebp),%eax
801066d9:	e8 2c f7 ff ff       	call   80105e0a <walkpgdir>
801066de:	85 c0                	test   %eax,%eax
801066e0:	74 65                	je     80106747 <copyuvm+0xa6>
801066e2:	8b 00                	mov    (%eax),%eax
801066e4:	a8 01                	test   $0x1,%al
801066e6:	74 6c                	je     80106754 <copyuvm+0xb3>
801066e8:	89 c6                	mov    %eax,%esi
801066ea:	81 e6 00 f0 ff ff    	and    $0xfffff000,%esi
801066f0:	25 ff 0f 00 00       	and    $0xfff,%eax
801066f5:	89 45 e0             	mov    %eax,-0x20(%ebp)
801066f8:	e8 70 ba ff ff       	call   8010216d <kalloc>
801066fd:	89 c3                	mov    %eax,%ebx
801066ff:	85 c0                	test   %eax,%eax
80106701:	74 6a                	je     8010676d <copyuvm+0xcc>
80106703:	81 c6 00 00 00 80    	add    $0x80000000,%esi
80106709:	83 ec 04             	sub    $0x4,%esp
8010670c:	68 00 10 00 00       	push   $0x1000
80106711:	56                   	push   %esi
80106712:	50                   	push   %eax
80106713:	e8 c3 d6 ff ff       	call   80103ddb <memmove>
80106718:	83 c4 08             	add    $0x8,%esp
8010671b:	ff 75 e0             	pushl  -0x20(%ebp)
8010671e:	8d 83 00 00 00 80    	lea    -0x80000000(%ebx),%eax
80106724:	50                   	push   %eax
80106725:	b9 00 10 00 00       	mov    $0x1000,%ecx
8010672a:	8b 55 e4             	mov    -0x1c(%ebp),%edx
8010672d:	8b 45 dc             	mov    -0x24(%ebp),%eax
80106730:	e8 46 f7 ff ff       	call   80105e7b <mappages>
80106735:	83 c4 10             	add    $0x10,%esp
80106738:	85 c0                	test   %eax,%eax
8010673a:	78 25                	js     80106761 <copyuvm+0xc0>
8010673c:	81 c7 00 10 00 00    	add    $0x1000,%edi
80106742:	e9 7c ff ff ff       	jmp    801066c3 <copyuvm+0x22>
80106747:	83 ec 0c             	sub    $0xc,%esp
8010674a:	68 dc 71 10 80       	push   $0x801071dc
8010674f:	e8 08 9c ff ff       	call   8010035c <panic>
80106754:	83 ec 0c             	sub    $0xc,%esp
80106757:	68 f6 71 10 80       	push   $0x801071f6
8010675c:	e8 fb 9b ff ff       	call   8010035c <panic>
80106761:	83 ec 0c             	sub    $0xc,%esp
80106764:	53                   	push   %ebx
80106765:	e8 dc b8 ff ff       	call   80102046 <kfree>
8010676a:	83 c4 10             	add    $0x10,%esp
8010676d:	83 ec 0c             	sub    $0xc,%esp
80106770:	ff 75 dc             	pushl  -0x24(%ebp)
80106773:	e8 f8 fd ff ff       	call   80106570 <freevm>
80106778:	83 c4 10             	add    $0x10,%esp
8010677b:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
80106782:	8b 45 dc             	mov    -0x24(%ebp),%eax
80106785:	8d 65 f4             	lea    -0xc(%ebp),%esp
80106788:	5b                   	pop    %ebx
80106789:	5e                   	pop    %esi
8010678a:	5f                   	pop    %edi
8010678b:	5d                   	pop    %ebp
8010678c:	c3                   	ret    

8010678d <uva2ka>:
8010678d:	f3 0f 1e fb          	endbr32 
80106791:	55                   	push   %ebp
80106792:	89 e5                	mov    %esp,%ebp
80106794:	83 ec 08             	sub    $0x8,%esp
80106797:	b9 00 00 00 00       	mov    $0x0,%ecx
8010679c:	8b 55 0c             	mov    0xc(%ebp),%edx
8010679f:	8b 45 08             	mov    0x8(%ebp),%eax
801067a2:	e8 63 f6 ff ff       	call   80105e0a <walkpgdir>
801067a7:	8b 00                	mov    (%eax),%eax
801067a9:	a8 01                	test   $0x1,%al
801067ab:	74 10                	je     801067bd <uva2ka+0x30>
801067ad:	a8 04                	test   $0x4,%al
801067af:	74 13                	je     801067c4 <uva2ka+0x37>
801067b1:	25 00 f0 ff ff       	and    $0xfffff000,%eax
801067b6:	05 00 00 00 80       	add    $0x80000000,%eax
801067bb:	c9                   	leave  
801067bc:	c3                   	ret    
801067bd:	b8 00 00 00 00       	mov    $0x0,%eax
801067c2:	eb f7                	jmp    801067bb <uva2ka+0x2e>
801067c4:	b8 00 00 00 00       	mov    $0x0,%eax
801067c9:	eb f0                	jmp    801067bb <uva2ka+0x2e>

801067cb <copyout>:
801067cb:	f3 0f 1e fb          	endbr32 
801067cf:	55                   	push   %ebp
801067d0:	89 e5                	mov    %esp,%ebp
801067d2:	57                   	push   %edi
801067d3:	56                   	push   %esi
801067d4:	53                   	push   %ebx
801067d5:	83 ec 0c             	sub    $0xc,%esp
801067d8:	8b 7d 14             	mov    0x14(%ebp),%edi
801067db:	eb 25                	jmp    80106802 <copyout+0x37>
801067dd:	8b 55 0c             	mov    0xc(%ebp),%edx
801067e0:	29 f2                	sub    %esi,%edx
801067e2:	01 d0                	add    %edx,%eax
801067e4:	83 ec 04             	sub    $0x4,%esp
801067e7:	53                   	push   %ebx
801067e8:	ff 75 10             	pushl  0x10(%ebp)
801067eb:	50                   	push   %eax
801067ec:	e8 ea d5 ff ff       	call   80103ddb <memmove>
801067f1:	29 df                	sub    %ebx,%edi
801067f3:	01 5d 10             	add    %ebx,0x10(%ebp)
801067f6:	8d 86 00 10 00 00    	lea    0x1000(%esi),%eax
801067fc:	89 45 0c             	mov    %eax,0xc(%ebp)
801067ff:	83 c4 10             	add    $0x10,%esp
80106802:	85 ff                	test   %edi,%edi
80106804:	74 2f                	je     80106835 <copyout+0x6a>
80106806:	8b 75 0c             	mov    0xc(%ebp),%esi
80106809:	81 e6 00 f0 ff ff    	and    $0xfffff000,%esi
8010680f:	83 ec 08             	sub    $0x8,%esp
80106812:	56                   	push   %esi
80106813:	ff 75 08             	pushl  0x8(%ebp)
80106816:	e8 72 ff ff ff       	call   8010678d <uva2ka>
8010681b:	83 c4 10             	add    $0x10,%esp
8010681e:	85 c0                	test   %eax,%eax
80106820:	74 20                	je     80106842 <copyout+0x77>
80106822:	89 f3                	mov    %esi,%ebx
80106824:	2b 5d 0c             	sub    0xc(%ebp),%ebx
80106827:	81 c3 00 10 00 00    	add    $0x1000,%ebx
8010682d:	39 df                	cmp    %ebx,%edi
8010682f:	73 ac                	jae    801067dd <copyout+0x12>
80106831:	89 fb                	mov    %edi,%ebx
80106833:	eb a8                	jmp    801067dd <copyout+0x12>
80106835:	b8 00 00 00 00       	mov    $0x0,%eax
8010683a:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010683d:	5b                   	pop    %ebx
8010683e:	5e                   	pop    %esi
8010683f:	5f                   	pop    %edi
80106840:	5d                   	pop    %ebp
80106841:	c3                   	ret    
80106842:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80106847:	eb f1                	jmp    8010683a <copyout+0x6f>
