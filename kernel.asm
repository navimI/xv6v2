
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
80100015:	b8 00 80 10 00       	mov    $0x108000,%eax
8010001a:	0f 22 d8             	mov    %eax,%cr3
8010001d:	0f 20 c0             	mov    %cr0,%eax
80100020:	0d 00 00 01 80       	or     $0x80010000,%eax
80100025:	0f 22 c0             	mov    %eax,%cr0
80100028:	bc d0 45 11 80       	mov    $0x801145d0,%esp
8010002d:	b8 4f 2a 10 80       	mov    $0x80102a4f,%eax
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
80100041:	68 20 95 10 80       	push   $0x80109520
80100046:	e8 2f 3b 00 00       	call   80103b7a <acquire>

  // Is the block already cached?
  for(b = bcache.head.next; b != &bcache.head; b = b->next){
8010004b:	8b 1d 70 dc 10 80    	mov    0x8010dc70,%ebx
80100051:	83 c4 10             	add    $0x10,%esp
80100054:	eb 03                	jmp    80100059 <bget+0x25>
80100056:	8b 5b 54             	mov    0x54(%ebx),%ebx
80100059:	81 fb 1c dc 10 80    	cmp    $0x8010dc1c,%ebx
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
80100077:	68 20 95 10 80       	push   $0x80109520
8010007c:	e8 5e 3b 00 00       	call   80103bdf <release>
      acquiresleep(&b->lock);
80100081:	8d 43 0c             	lea    0xc(%ebx),%eax
80100084:	89 04 24             	mov    %eax,(%esp)
80100087:	e8 da 38 00 00       	call   80103966 <acquiresleep>
      return b;
8010008c:	83 c4 10             	add    $0x10,%esp
8010008f:	eb 4c                	jmp    801000dd <bget+0xa9>
  }

  // Not cached; recycle an unused buffer.
  // Even if refcnt==0, B_DIRTY indicates a buffer is in use
  // because log.c has modified it but not yet committed it.
  for(b = bcache.head.prev; b != &bcache.head; b = b->prev){
80100091:	8b 1d 6c dc 10 80    	mov    0x8010dc6c,%ebx
80100097:	eb 03                	jmp    8010009c <bget+0x68>
80100099:	8b 5b 50             	mov    0x50(%ebx),%ebx
8010009c:	81 fb 1c dc 10 80    	cmp    $0x8010dc1c,%ebx
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
801000c5:	68 20 95 10 80       	push   $0x80109520
801000ca:	e8 10 3b 00 00       	call   80103bdf <release>
      acquiresleep(&b->lock);
801000cf:	8d 43 0c             	lea    0xc(%ebx),%eax
801000d2:	89 04 24             	mov    %eax,(%esp)
801000d5:	e8 8c 38 00 00       	call   80103966 <acquiresleep>
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
801000ea:	68 e0 65 10 80       	push   $0x801065e0
801000ef:	e8 54 02 00 00       	call   80100348 <panic>

801000f4 <binit>:
{
801000f4:	55                   	push   %ebp
801000f5:	89 e5                	mov    %esp,%ebp
801000f7:	53                   	push   %ebx
801000f8:	83 ec 0c             	sub    $0xc,%esp
  initlock(&bcache.lock, "bcache");
801000fb:	68 f1 65 10 80       	push   $0x801065f1
80100100:	68 20 95 10 80       	push   $0x80109520
80100105:	e8 34 39 00 00       	call   80103a3e <initlock>
  bcache.head.prev = &bcache.head;
8010010a:	c7 05 6c dc 10 80 1c 	movl   $0x8010dc1c,0x8010dc6c
80100111:	dc 10 80 
  bcache.head.next = &bcache.head;
80100114:	c7 05 70 dc 10 80 1c 	movl   $0x8010dc1c,0x8010dc70
8010011b:	dc 10 80 
  for(b = bcache.buf; b < bcache.buf+NBUF; b++){
8010011e:	83 c4 10             	add    $0x10,%esp
80100121:	bb 54 95 10 80       	mov    $0x80109554,%ebx
80100126:	eb 37                	jmp    8010015f <binit+0x6b>
    b->next = bcache.head.next;
80100128:	a1 70 dc 10 80       	mov    0x8010dc70,%eax
8010012d:	89 43 54             	mov    %eax,0x54(%ebx)
    b->prev = &bcache.head;
80100130:	c7 43 50 1c dc 10 80 	movl   $0x8010dc1c,0x50(%ebx)
    initsleeplock(&b->lock, "buffer");
80100137:	83 ec 08             	sub    $0x8,%esp
8010013a:	68 f8 65 10 80       	push   $0x801065f8
8010013f:	8d 43 0c             	lea    0xc(%ebx),%eax
80100142:	50                   	push   %eax
80100143:	e8 eb 37 00 00       	call   80103933 <initsleeplock>
    bcache.head.next->prev = b;
80100148:	a1 70 dc 10 80       	mov    0x8010dc70,%eax
8010014d:	89 58 50             	mov    %ebx,0x50(%eax)
    bcache.head.next = b;
80100150:	89 1d 70 dc 10 80    	mov    %ebx,0x8010dc70
  for(b = bcache.buf; b < bcache.buf+NBUF; b++){
80100156:	81 c3 5c 02 00 00    	add    $0x25c,%ebx
8010015c:	83 c4 10             	add    $0x10,%esp
8010015f:	81 fb 1c dc 10 80    	cmp    $0x8010dc1c,%ebx
80100165:	72 c1                	jb     80100128 <binit+0x34>
}
80100167:	8b 5d fc             	mov    -0x4(%ebp),%ebx
8010016a:	c9                   	leave  
8010016b:	c3                   	ret    

8010016c <bread>:

// Return a locked buf with the contents of the indicated block.
struct buf*
bread(uint dev, uint blockno)
{
8010016c:	55                   	push   %ebp
8010016d:	89 e5                	mov    %esp,%ebp
8010016f:	53                   	push   %ebx
80100170:	83 ec 04             	sub    $0x4,%esp
  struct buf *b;

  b = bget(dev, blockno);
80100173:	8b 55 0c             	mov    0xc(%ebp),%edx
80100176:	8b 45 08             	mov    0x8(%ebp),%eax
80100179:	e8 b6 fe ff ff       	call   80100034 <bget>
8010017e:	89 c3                	mov    %eax,%ebx
  if((b->flags & B_VALID) == 0) {
80100180:	f6 00 02             	testb  $0x2,(%eax)
80100183:	74 07                	je     8010018c <bread+0x20>
    iderw(b);
  }
  return b;
}
80100185:	89 d8                	mov    %ebx,%eax
80100187:	8b 5d fc             	mov    -0x4(%ebp),%ebx
8010018a:	c9                   	leave  
8010018b:	c3                   	ret    
    iderw(b);
8010018c:	83 ec 0c             	sub    $0xc,%esp
8010018f:	50                   	push   %eax
80100190:	e8 7d 1c 00 00       	call   80101e12 <iderw>
80100195:	83 c4 10             	add    $0x10,%esp
  return b;
80100198:	eb eb                	jmp    80100185 <bread+0x19>

8010019a <bwrite>:

// Write b's contents to disk.  Must be locked.
void
bwrite(struct buf *b)
{
8010019a:	55                   	push   %ebp
8010019b:	89 e5                	mov    %esp,%ebp
8010019d:	53                   	push   %ebx
8010019e:	83 ec 10             	sub    $0x10,%esp
801001a1:	8b 5d 08             	mov    0x8(%ebp),%ebx
  if(!holdingsleep(&b->lock))
801001a4:	8d 43 0c             	lea    0xc(%ebx),%eax
801001a7:	50                   	push   %eax
801001a8:	e8 43 38 00 00       	call   801039f0 <holdingsleep>
801001ad:	83 c4 10             	add    $0x10,%esp
801001b0:	85 c0                	test   %eax,%eax
801001b2:	74 14                	je     801001c8 <bwrite+0x2e>
    panic("bwrite");
  b->flags |= B_DIRTY;
801001b4:	83 0b 04             	orl    $0x4,(%ebx)
  iderw(b);
801001b7:	83 ec 0c             	sub    $0xc,%esp
801001ba:	53                   	push   %ebx
801001bb:	e8 52 1c 00 00       	call   80101e12 <iderw>
}
801001c0:	83 c4 10             	add    $0x10,%esp
801001c3:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801001c6:	c9                   	leave  
801001c7:	c3                   	ret    
    panic("bwrite");
801001c8:	83 ec 0c             	sub    $0xc,%esp
801001cb:	68 ff 65 10 80       	push   $0x801065ff
801001d0:	e8 73 01 00 00       	call   80100348 <panic>

801001d5 <brelse>:

// Release a locked buffer.
// Move to the head of the MRU list.
void
brelse(struct buf *b)
{
801001d5:	55                   	push   %ebp
801001d6:	89 e5                	mov    %esp,%ebp
801001d8:	56                   	push   %esi
801001d9:	53                   	push   %ebx
801001da:	8b 5d 08             	mov    0x8(%ebp),%ebx
  if(!holdingsleep(&b->lock))
801001dd:	8d 73 0c             	lea    0xc(%ebx),%esi
801001e0:	83 ec 0c             	sub    $0xc,%esp
801001e3:	56                   	push   %esi
801001e4:	e8 07 38 00 00       	call   801039f0 <holdingsleep>
801001e9:	83 c4 10             	add    $0x10,%esp
801001ec:	85 c0                	test   %eax,%eax
801001ee:	74 6b                	je     8010025b <brelse+0x86>
    panic("brelse");

  releasesleep(&b->lock);
801001f0:	83 ec 0c             	sub    $0xc,%esp
801001f3:	56                   	push   %esi
801001f4:	e8 bc 37 00 00       	call   801039b5 <releasesleep>

  acquire(&bcache.lock);
801001f9:	c7 04 24 20 95 10 80 	movl   $0x80109520,(%esp)
80100200:	e8 75 39 00 00       	call   80103b7a <acquire>
  b->refcnt--;
80100205:	8b 43 4c             	mov    0x4c(%ebx),%eax
80100208:	83 e8 01             	sub    $0x1,%eax
8010020b:	89 43 4c             	mov    %eax,0x4c(%ebx)
  if (b->refcnt == 0) {
8010020e:	83 c4 10             	add    $0x10,%esp
80100211:	85 c0                	test   %eax,%eax
80100213:	75 2f                	jne    80100244 <brelse+0x6f>
    // no one is waiting for it.
    b->next->prev = b->prev;
80100215:	8b 43 54             	mov    0x54(%ebx),%eax
80100218:	8b 53 50             	mov    0x50(%ebx),%edx
8010021b:	89 50 50             	mov    %edx,0x50(%eax)
    b->prev->next = b->next;
8010021e:	8b 43 50             	mov    0x50(%ebx),%eax
80100221:	8b 53 54             	mov    0x54(%ebx),%edx
80100224:	89 50 54             	mov    %edx,0x54(%eax)
    b->next = bcache.head.next;
80100227:	a1 70 dc 10 80       	mov    0x8010dc70,%eax
8010022c:	89 43 54             	mov    %eax,0x54(%ebx)
    b->prev = &bcache.head;
8010022f:	c7 43 50 1c dc 10 80 	movl   $0x8010dc1c,0x50(%ebx)
    bcache.head.next->prev = b;
80100236:	a1 70 dc 10 80       	mov    0x8010dc70,%eax
8010023b:	89 58 50             	mov    %ebx,0x50(%eax)
    bcache.head.next = b;
8010023e:	89 1d 70 dc 10 80    	mov    %ebx,0x8010dc70
  }
  
  release(&bcache.lock);
80100244:	83 ec 0c             	sub    $0xc,%esp
80100247:	68 20 95 10 80       	push   $0x80109520
8010024c:	e8 8e 39 00 00       	call   80103bdf <release>
}
80100251:	83 c4 10             	add    $0x10,%esp
80100254:	8d 65 f8             	lea    -0x8(%ebp),%esp
80100257:	5b                   	pop    %ebx
80100258:	5e                   	pop    %esi
80100259:	5d                   	pop    %ebp
8010025a:	c3                   	ret    
    panic("brelse");
8010025b:	83 ec 0c             	sub    $0xc,%esp
8010025e:	68 06 66 10 80       	push   $0x80106606
80100263:	e8 e0 00 00 00       	call   80100348 <panic>

80100268 <consoleread>:
  }
}

int
consoleread(struct inode *ip, char *dst, int n)
{
80100268:	55                   	push   %ebp
80100269:	89 e5                	mov    %esp,%ebp
8010026b:	57                   	push   %edi
8010026c:	56                   	push   %esi
8010026d:	53                   	push   %ebx
8010026e:	83 ec 28             	sub    $0x28,%esp
80100271:	8b 7d 08             	mov    0x8(%ebp),%edi
80100274:	8b 75 0c             	mov    0xc(%ebp),%esi
80100277:	8b 5d 10             	mov    0x10(%ebp),%ebx
  uint target;
  int c;

  iunlock(ip);
8010027a:	57                   	push   %edi
8010027b:	e8 cc 13 00 00       	call   8010164c <iunlock>
  target = n;
80100280:	89 5d e4             	mov    %ebx,-0x1c(%ebp)
  acquire(&cons.lock);
80100283:	c7 04 24 20 df 10 80 	movl   $0x8010df20,(%esp)
8010028a:	e8 eb 38 00 00       	call   80103b7a <acquire>
  while(n > 0){
8010028f:	83 c4 10             	add    $0x10,%esp
80100292:	85 db                	test   %ebx,%ebx
80100294:	0f 8e 8f 00 00 00    	jle    80100329 <consoleread+0xc1>
    while(input.r == input.w){
8010029a:	a1 00 df 10 80       	mov    0x8010df00,%eax
8010029f:	3b 05 04 df 10 80    	cmp    0x8010df04,%eax
801002a5:	75 47                	jne    801002ee <consoleread+0x86>
      if(myproc()->killed){
801002a7:	e8 24 2f 00 00       	call   801031d0 <myproc>
801002ac:	83 78 24 00          	cmpl   $0x0,0x24(%eax)
801002b0:	75 17                	jne    801002c9 <consoleread+0x61>
        release(&cons.lock);
        ilock(ip);
        return -1;
      }
      sleep(&input.r, &cons.lock);
801002b2:	83 ec 08             	sub    $0x8,%esp
801002b5:	68 20 df 10 80       	push   $0x8010df20
801002ba:	68 00 df 10 80       	push   $0x8010df00
801002bf:	e8 b3 33 00 00       	call   80103677 <sleep>
801002c4:	83 c4 10             	add    $0x10,%esp
801002c7:	eb d1                	jmp    8010029a <consoleread+0x32>
        release(&cons.lock);
801002c9:	83 ec 0c             	sub    $0xc,%esp
801002cc:	68 20 df 10 80       	push   $0x8010df20
801002d1:	e8 09 39 00 00       	call   80103bdf <release>
        ilock(ip);
801002d6:	89 3c 24             	mov    %edi,(%esp)
801002d9:	e8 ac 12 00 00       	call   8010158a <ilock>
        return -1;
801002de:	83 c4 10             	add    $0x10,%esp
801002e1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  }
  release(&cons.lock);
  ilock(ip);

  return target - n;
}
801002e6:	8d 65 f4             	lea    -0xc(%ebp),%esp
801002e9:	5b                   	pop    %ebx
801002ea:	5e                   	pop    %esi
801002eb:	5f                   	pop    %edi
801002ec:	5d                   	pop    %ebp
801002ed:	c3                   	ret    
    c = input.buf[input.r++ % INPUT_BUF];
801002ee:	8d 50 01             	lea    0x1(%eax),%edx
801002f1:	89 15 00 df 10 80    	mov    %edx,0x8010df00
801002f7:	89 c2                	mov    %eax,%edx
801002f9:	83 e2 7f             	and    $0x7f,%edx
801002fc:	0f b6 92 80 de 10 80 	movzbl -0x7fef2180(%edx),%edx
80100303:	0f be ca             	movsbl %dl,%ecx
    if(c == C('D')){  // EOF
80100306:	80 fa 04             	cmp    $0x4,%dl
80100309:	74 14                	je     8010031f <consoleread+0xb7>
    *dst++ = c;
8010030b:	8d 46 01             	lea    0x1(%esi),%eax
8010030e:	88 16                	mov    %dl,(%esi)
    --n;
80100310:	83 eb 01             	sub    $0x1,%ebx
    if(c == '\n')
80100313:	83 f9 0a             	cmp    $0xa,%ecx
80100316:	74 11                	je     80100329 <consoleread+0xc1>
    *dst++ = c;
80100318:	89 c6                	mov    %eax,%esi
8010031a:	e9 73 ff ff ff       	jmp    80100292 <consoleread+0x2a>
      if(n < target){
8010031f:	3b 5d e4             	cmp    -0x1c(%ebp),%ebx
80100322:	73 05                	jae    80100329 <consoleread+0xc1>
        input.r--;
80100324:	a3 00 df 10 80       	mov    %eax,0x8010df00
  release(&cons.lock);
80100329:	83 ec 0c             	sub    $0xc,%esp
8010032c:	68 20 df 10 80       	push   $0x8010df20
80100331:	e8 a9 38 00 00       	call   80103bdf <release>
  ilock(ip);
80100336:	89 3c 24             	mov    %edi,(%esp)
80100339:	e8 4c 12 00 00       	call   8010158a <ilock>
  return target - n;
8010033e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80100341:	29 d8                	sub    %ebx,%eax
80100343:	83 c4 10             	add    $0x10,%esp
80100346:	eb 9e                	jmp    801002e6 <consoleread+0x7e>

80100348 <panic>:
{
80100348:	55                   	push   %ebp
80100349:	89 e5                	mov    %esp,%ebp
8010034b:	53                   	push   %ebx
8010034c:	83 ec 34             	sub    $0x34,%esp
}

static inline void
cli(void)
{
  asm volatile("cli");
8010034f:	fa                   	cli    
  cons.locking = 0;
80100350:	c7 05 54 df 10 80 00 	movl   $0x0,0x8010df54
80100357:	00 00 00 
  cprintf("lapicid %d: panic: ", lapicid());
8010035a:	e8 1c 20 00 00       	call   8010237b <lapicid>
8010035f:	83 ec 08             	sub    $0x8,%esp
80100362:	50                   	push   %eax
80100363:	68 0d 66 10 80       	push   $0x8010660d
80100368:	e8 9a 02 00 00       	call   80100607 <cprintf>
  cprintf(s);
8010036d:	83 c4 04             	add    $0x4,%esp
80100370:	ff 75 08             	push   0x8(%ebp)
80100373:	e8 8f 02 00 00       	call   80100607 <cprintf>
  cprintf("\n");
80100378:	c7 04 24 87 6f 10 80 	movl   $0x80106f87,(%esp)
8010037f:	e8 83 02 00 00       	call   80100607 <cprintf>
  getcallerpcs(&s, pcs);
80100384:	83 c4 08             	add    $0x8,%esp
80100387:	8d 45 d0             	lea    -0x30(%ebp),%eax
8010038a:	50                   	push   %eax
8010038b:	8d 45 08             	lea    0x8(%ebp),%eax
8010038e:	50                   	push   %eax
8010038f:	e8 c5 36 00 00       	call   80103a59 <getcallerpcs>
  for(i=0; i<10; i++)
80100394:	83 c4 10             	add    $0x10,%esp
80100397:	bb 00 00 00 00       	mov    $0x0,%ebx
8010039c:	eb 17                	jmp    801003b5 <panic+0x6d>
    cprintf(" %p", pcs[i]);
8010039e:	83 ec 08             	sub    $0x8,%esp
801003a1:	ff 74 9d d0          	push   -0x30(%ebp,%ebx,4)
801003a5:	68 21 66 10 80       	push   $0x80106621
801003aa:	e8 58 02 00 00       	call   80100607 <cprintf>
  for(i=0; i<10; i++)
801003af:	83 c3 01             	add    $0x1,%ebx
801003b2:	83 c4 10             	add    $0x10,%esp
801003b5:	83 fb 09             	cmp    $0x9,%ebx
801003b8:	7e e4                	jle    8010039e <panic+0x56>
  panicked = 1; // freeze other CPU
801003ba:	c7 05 58 df 10 80 01 	movl   $0x1,0x8010df58
801003c1:	00 00 00 
  for(;;)
801003c4:	eb fe                	jmp    801003c4 <panic+0x7c>

801003c6 <cgaputc>:
{
801003c6:	55                   	push   %ebp
801003c7:	89 e5                	mov    %esp,%ebp
801003c9:	57                   	push   %edi
801003ca:	56                   	push   %esi
801003cb:	53                   	push   %ebx
801003cc:	83 ec 0c             	sub    $0xc,%esp
801003cf:	89 c3                	mov    %eax,%ebx
  asm volatile("out %0,%1" : : "a" (data), "d" (port));
801003d1:	bf d4 03 00 00       	mov    $0x3d4,%edi
801003d6:	b8 0e 00 00 00       	mov    $0xe,%eax
801003db:	89 fa                	mov    %edi,%edx
801003dd:	ee                   	out    %al,(%dx)
  asm volatile("in %1,%0" : "=a" (data) : "d" (port));
801003de:	b9 d5 03 00 00       	mov    $0x3d5,%ecx
801003e3:	89 ca                	mov    %ecx,%edx
801003e5:	ec                   	in     (%dx),%al
  pos = inb(CRTPORT+1) << 8;
801003e6:	0f b6 f0             	movzbl %al,%esi
801003e9:	c1 e6 08             	shl    $0x8,%esi
  asm volatile("out %0,%1" : : "a" (data), "d" (port));
801003ec:	b8 0f 00 00 00       	mov    $0xf,%eax
801003f1:	89 fa                	mov    %edi,%edx
801003f3:	ee                   	out    %al,(%dx)
  asm volatile("in %1,%0" : "=a" (data) : "d" (port));
801003f4:	89 ca                	mov    %ecx,%edx
801003f6:	ec                   	in     (%dx),%al
  pos |= inb(CRTPORT+1);
801003f7:	0f b6 c8             	movzbl %al,%ecx
801003fa:	09 f1                	or     %esi,%ecx
  if(c == '\n')
801003fc:	83 fb 0a             	cmp    $0xa,%ebx
801003ff:	74 60                	je     80100461 <cgaputc+0x9b>
  else if(c == BACKSPACE){
80100401:	81 fb 00 01 00 00    	cmp    $0x100,%ebx
80100407:	74 79                	je     80100482 <cgaputc+0xbc>
    crt[pos++] = (c&0xff) | 0x0700;  // black on white
80100409:	0f b6 c3             	movzbl %bl,%eax
8010040c:	8d 59 01             	lea    0x1(%ecx),%ebx
8010040f:	80 cc 07             	or     $0x7,%ah
80100412:	66 89 84 09 00 80 0b 	mov    %ax,-0x7ff48000(%ecx,%ecx,1)
80100419:	80 
  if(pos < 0 || pos > 25*80)
8010041a:	81 fb d0 07 00 00    	cmp    $0x7d0,%ebx
80100420:	77 6d                	ja     8010048f <cgaputc+0xc9>
  if((pos/80) >= 24){  // Scroll up.
80100422:	81 fb 7f 07 00 00    	cmp    $0x77f,%ebx
80100428:	7f 72                	jg     8010049c <cgaputc+0xd6>
  asm volatile("out %0,%1" : : "a" (data), "d" (port));
8010042a:	be d4 03 00 00       	mov    $0x3d4,%esi
8010042f:	b8 0e 00 00 00       	mov    $0xe,%eax
80100434:	89 f2                	mov    %esi,%edx
80100436:	ee                   	out    %al,(%dx)
  outb(CRTPORT+1, pos>>8);
80100437:	0f b6 c7             	movzbl %bh,%eax
8010043a:	b9 d5 03 00 00       	mov    $0x3d5,%ecx
8010043f:	89 ca                	mov    %ecx,%edx
80100441:	ee                   	out    %al,(%dx)
80100442:	b8 0f 00 00 00       	mov    $0xf,%eax
80100447:	89 f2                	mov    %esi,%edx
80100449:	ee                   	out    %al,(%dx)
8010044a:	89 d8                	mov    %ebx,%eax
8010044c:	89 ca                	mov    %ecx,%edx
8010044e:	ee                   	out    %al,(%dx)
  crt[pos] = ' ' | 0x0700;
8010044f:	66 c7 84 1b 00 80 0b 	movw   $0x720,-0x7ff48000(%ebx,%ebx,1)
80100456:	80 20 07 
}
80100459:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010045c:	5b                   	pop    %ebx
8010045d:	5e                   	pop    %esi
8010045e:	5f                   	pop    %edi
8010045f:	5d                   	pop    %ebp
80100460:	c3                   	ret    
    pos += 80 - pos%80;
80100461:	ba 67 66 66 66       	mov    $0x66666667,%edx
80100466:	89 c8                	mov    %ecx,%eax
80100468:	f7 ea                	imul   %edx
8010046a:	c1 fa 05             	sar    $0x5,%edx
8010046d:	8d 04 92             	lea    (%edx,%edx,4),%eax
80100470:	c1 e0 04             	shl    $0x4,%eax
80100473:	89 ca                	mov    %ecx,%edx
80100475:	29 c2                	sub    %eax,%edx
80100477:	bb 50 00 00 00       	mov    $0x50,%ebx
8010047c:	29 d3                	sub    %edx,%ebx
8010047e:	01 cb                	add    %ecx,%ebx
80100480:	eb 98                	jmp    8010041a <cgaputc+0x54>
    if(pos > 0) --pos;
80100482:	85 c9                	test   %ecx,%ecx
80100484:	7e 05                	jle    8010048b <cgaputc+0xc5>
80100486:	8d 59 ff             	lea    -0x1(%ecx),%ebx
80100489:	eb 8f                	jmp    8010041a <cgaputc+0x54>
  pos |= inb(CRTPORT+1);
8010048b:	89 cb                	mov    %ecx,%ebx
8010048d:	eb 8b                	jmp    8010041a <cgaputc+0x54>
    panic("pos under/overflow");
8010048f:	83 ec 0c             	sub    $0xc,%esp
80100492:	68 25 66 10 80       	push   $0x80106625
80100497:	e8 ac fe ff ff       	call   80100348 <panic>
    memmove(crt, crt+80, sizeof(crt[0])*23*80);
8010049c:	83 ec 04             	sub    $0x4,%esp
8010049f:	68 60 0e 00 00       	push   $0xe60
801004a4:	68 a0 80 0b 80       	push   $0x800b80a0
801004a9:	68 00 80 0b 80       	push   $0x800b8000
801004ae:	e8 eb 37 00 00       	call   80103c9e <memmove>
    pos -= 80;
801004b3:	83 eb 50             	sub    $0x50,%ebx
    memset(crt+pos, 0, sizeof(crt[0])*(24*80 - pos));
801004b6:	b8 80 07 00 00       	mov    $0x780,%eax
801004bb:	29 d8                	sub    %ebx,%eax
801004bd:	8d 94 1b 00 80 0b 80 	lea    -0x7ff48000(%ebx,%ebx,1),%edx
801004c4:	83 c4 0c             	add    $0xc,%esp
801004c7:	01 c0                	add    %eax,%eax
801004c9:	50                   	push   %eax
801004ca:	6a 00                	push   $0x0
801004cc:	52                   	push   %edx
801004cd:	e8 54 37 00 00       	call   80103c26 <memset>
801004d2:	83 c4 10             	add    $0x10,%esp
801004d5:	e9 50 ff ff ff       	jmp    8010042a <cgaputc+0x64>

801004da <consputc>:
  if(panicked){
801004da:	83 3d 58 df 10 80 00 	cmpl   $0x0,0x8010df58
801004e1:	74 03                	je     801004e6 <consputc+0xc>
  asm volatile("cli");
801004e3:	fa                   	cli    
    for(;;)
801004e4:	eb fe                	jmp    801004e4 <consputc+0xa>
{
801004e6:	55                   	push   %ebp
801004e7:	89 e5                	mov    %esp,%ebp
801004e9:	53                   	push   %ebx
801004ea:	83 ec 04             	sub    $0x4,%esp
801004ed:	89 c3                	mov    %eax,%ebx
  if(c == BACKSPACE){
801004ef:	3d 00 01 00 00       	cmp    $0x100,%eax
801004f4:	74 18                	je     8010050e <consputc+0x34>
    uartputc(c);
801004f6:	83 ec 0c             	sub    $0xc,%esp
801004f9:	50                   	push   %eax
801004fa:	e8 8d 4c 00 00       	call   8010518c <uartputc>
801004ff:	83 c4 10             	add    $0x10,%esp
  cgaputc(c);
80100502:	89 d8                	mov    %ebx,%eax
80100504:	e8 bd fe ff ff       	call   801003c6 <cgaputc>
}
80100509:	8b 5d fc             	mov    -0x4(%ebp),%ebx
8010050c:	c9                   	leave  
8010050d:	c3                   	ret    
    uartputc('\b'); uartputc(' '); uartputc('\b');
8010050e:	83 ec 0c             	sub    $0xc,%esp
80100511:	6a 08                	push   $0x8
80100513:	e8 74 4c 00 00       	call   8010518c <uartputc>
80100518:	c7 04 24 20 00 00 00 	movl   $0x20,(%esp)
8010051f:	e8 68 4c 00 00       	call   8010518c <uartputc>
80100524:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
8010052b:	e8 5c 4c 00 00       	call   8010518c <uartputc>
80100530:	83 c4 10             	add    $0x10,%esp
80100533:	eb cd                	jmp    80100502 <consputc+0x28>

80100535 <printint>:
{
80100535:	55                   	push   %ebp
80100536:	89 e5                	mov    %esp,%ebp
80100538:	57                   	push   %edi
80100539:	56                   	push   %esi
8010053a:	53                   	push   %ebx
8010053b:	83 ec 2c             	sub    $0x2c,%esp
8010053e:	89 d6                	mov    %edx,%esi
80100540:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
  if(sign && (sign = xx < 0))
80100543:	85 c9                	test   %ecx,%ecx
80100545:	74 0c                	je     80100553 <printint+0x1e>
80100547:	89 c7                	mov    %eax,%edi
80100549:	c1 ef 1f             	shr    $0x1f,%edi
8010054c:	89 7d d4             	mov    %edi,-0x2c(%ebp)
8010054f:	85 c0                	test   %eax,%eax
80100551:	78 38                	js     8010058b <printint+0x56>
    x = xx;
80100553:	89 c1                	mov    %eax,%ecx
  i = 0;
80100555:	bb 00 00 00 00       	mov    $0x0,%ebx
    buf[i++] = digits[x % base];
8010055a:	89 c8                	mov    %ecx,%eax
8010055c:	ba 00 00 00 00       	mov    $0x0,%edx
80100561:	f7 f6                	div    %esi
80100563:	89 df                	mov    %ebx,%edi
80100565:	83 c3 01             	add    $0x1,%ebx
80100568:	0f b6 92 50 66 10 80 	movzbl -0x7fef99b0(%edx),%edx
8010056f:	88 54 3d d8          	mov    %dl,-0x28(%ebp,%edi,1)
  }while((x /= base) != 0);
80100573:	89 ca                	mov    %ecx,%edx
80100575:	89 c1                	mov    %eax,%ecx
80100577:	39 d6                	cmp    %edx,%esi
80100579:	76 df                	jbe    8010055a <printint+0x25>
  if(sign)
8010057b:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
8010057f:	74 1a                	je     8010059b <printint+0x66>
    buf[i++] = '-';
80100581:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
80100586:	8d 5f 02             	lea    0x2(%edi),%ebx
80100589:	eb 10                	jmp    8010059b <printint+0x66>
    x = -xx;
8010058b:	f7 d8                	neg    %eax
8010058d:	89 c1                	mov    %eax,%ecx
8010058f:	eb c4                	jmp    80100555 <printint+0x20>
    consputc(buf[i]);
80100591:	0f be 44 1d d8       	movsbl -0x28(%ebp,%ebx,1),%eax
80100596:	e8 3f ff ff ff       	call   801004da <consputc>
  while(--i >= 0)
8010059b:	83 eb 01             	sub    $0x1,%ebx
8010059e:	79 f1                	jns    80100591 <printint+0x5c>
}
801005a0:	83 c4 2c             	add    $0x2c,%esp
801005a3:	5b                   	pop    %ebx
801005a4:	5e                   	pop    %esi
801005a5:	5f                   	pop    %edi
801005a6:	5d                   	pop    %ebp
801005a7:	c3                   	ret    

801005a8 <consolewrite>:

int
consolewrite(struct inode *ip, char *buf, int n)
{
801005a8:	55                   	push   %ebp
801005a9:	89 e5                	mov    %esp,%ebp
801005ab:	57                   	push   %edi
801005ac:	56                   	push   %esi
801005ad:	53                   	push   %ebx
801005ae:	83 ec 18             	sub    $0x18,%esp
801005b1:	8b 7d 0c             	mov    0xc(%ebp),%edi
801005b4:	8b 75 10             	mov    0x10(%ebp),%esi
  int i;

  iunlock(ip);
801005b7:	ff 75 08             	push   0x8(%ebp)
801005ba:	e8 8d 10 00 00       	call   8010164c <iunlock>
  acquire(&cons.lock);
801005bf:	c7 04 24 20 df 10 80 	movl   $0x8010df20,(%esp)
801005c6:	e8 af 35 00 00       	call   80103b7a <acquire>
  for(i = 0; i < n; i++)
801005cb:	83 c4 10             	add    $0x10,%esp
801005ce:	bb 00 00 00 00       	mov    $0x0,%ebx
801005d3:	eb 0c                	jmp    801005e1 <consolewrite+0x39>
    consputc(buf[i] & 0xff);
801005d5:	0f b6 04 1f          	movzbl (%edi,%ebx,1),%eax
801005d9:	e8 fc fe ff ff       	call   801004da <consputc>
  for(i = 0; i < n; i++)
801005de:	83 c3 01             	add    $0x1,%ebx
801005e1:	39 f3                	cmp    %esi,%ebx
801005e3:	7c f0                	jl     801005d5 <consolewrite+0x2d>
  release(&cons.lock);
801005e5:	83 ec 0c             	sub    $0xc,%esp
801005e8:	68 20 df 10 80       	push   $0x8010df20
801005ed:	e8 ed 35 00 00       	call   80103bdf <release>
  ilock(ip);
801005f2:	83 c4 04             	add    $0x4,%esp
801005f5:	ff 75 08             	push   0x8(%ebp)
801005f8:	e8 8d 0f 00 00       	call   8010158a <ilock>

  return n;
}
801005fd:	89 f0                	mov    %esi,%eax
801005ff:	8d 65 f4             	lea    -0xc(%ebp),%esp
80100602:	5b                   	pop    %ebx
80100603:	5e                   	pop    %esi
80100604:	5f                   	pop    %edi
80100605:	5d                   	pop    %ebp
80100606:	c3                   	ret    

80100607 <cprintf>:
{
80100607:	55                   	push   %ebp
80100608:	89 e5                	mov    %esp,%ebp
8010060a:	57                   	push   %edi
8010060b:	56                   	push   %esi
8010060c:	53                   	push   %ebx
8010060d:	83 ec 1c             	sub    $0x1c,%esp
  locking = cons.locking;
80100610:	a1 54 df 10 80       	mov    0x8010df54,%eax
80100615:	89 45 e0             	mov    %eax,-0x20(%ebp)
  if(locking)
80100618:	85 c0                	test   %eax,%eax
8010061a:	75 10                	jne    8010062c <cprintf+0x25>
  if (fmt == 0)
8010061c:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
80100620:	74 1c                	je     8010063e <cprintf+0x37>
  argp = (uint*)(void*)(&fmt + 1);
80100622:	8d 7d 0c             	lea    0xc(%ebp),%edi
  for(i = 0; (c = fmt[i] & 0xff) != 0; i++){
80100625:	be 00 00 00 00       	mov    $0x0,%esi
8010062a:	eb 27                	jmp    80100653 <cprintf+0x4c>
    acquire(&cons.lock);
8010062c:	83 ec 0c             	sub    $0xc,%esp
8010062f:	68 20 df 10 80       	push   $0x8010df20
80100634:	e8 41 35 00 00       	call   80103b7a <acquire>
80100639:	83 c4 10             	add    $0x10,%esp
8010063c:	eb de                	jmp    8010061c <cprintf+0x15>
    panic("null fmt");
8010063e:	83 ec 0c             	sub    $0xc,%esp
80100641:	68 3f 66 10 80       	push   $0x8010663f
80100646:	e8 fd fc ff ff       	call   80100348 <panic>
      consputc(c);
8010064b:	e8 8a fe ff ff       	call   801004da <consputc>
  for(i = 0; (c = fmt[i] & 0xff) != 0; i++){
80100650:	83 c6 01             	add    $0x1,%esi
80100653:	8b 55 08             	mov    0x8(%ebp),%edx
80100656:	0f b6 04 32          	movzbl (%edx,%esi,1),%eax
8010065a:	85 c0                	test   %eax,%eax
8010065c:	0f 84 b1 00 00 00    	je     80100713 <cprintf+0x10c>
    if(c != '%'){
80100662:	83 f8 25             	cmp    $0x25,%eax
80100665:	75 e4                	jne    8010064b <cprintf+0x44>
    c = fmt[++i] & 0xff;
80100667:	83 c6 01             	add    $0x1,%esi
8010066a:	0f b6 1c 32          	movzbl (%edx,%esi,1),%ebx
    if(c == 0)
8010066e:	85 db                	test   %ebx,%ebx
80100670:	0f 84 9d 00 00 00    	je     80100713 <cprintf+0x10c>
    switch(c){
80100676:	83 fb 70             	cmp    $0x70,%ebx
80100679:	74 2e                	je     801006a9 <cprintf+0xa2>
8010067b:	7f 22                	jg     8010069f <cprintf+0x98>
8010067d:	83 fb 25             	cmp    $0x25,%ebx
80100680:	74 6c                	je     801006ee <cprintf+0xe7>
80100682:	83 fb 64             	cmp    $0x64,%ebx
80100685:	75 76                	jne    801006fd <cprintf+0xf6>
      printint(*argp++, 10, 1);
80100687:	8d 5f 04             	lea    0x4(%edi),%ebx
8010068a:	8b 07                	mov    (%edi),%eax
8010068c:	b9 01 00 00 00       	mov    $0x1,%ecx
80100691:	ba 0a 00 00 00       	mov    $0xa,%edx
80100696:	e8 9a fe ff ff       	call   80100535 <printint>
8010069b:	89 df                	mov    %ebx,%edi
      break;
8010069d:	eb b1                	jmp    80100650 <cprintf+0x49>
    switch(c){
8010069f:	83 fb 73             	cmp    $0x73,%ebx
801006a2:	74 1d                	je     801006c1 <cprintf+0xba>
801006a4:	83 fb 78             	cmp    $0x78,%ebx
801006a7:	75 54                	jne    801006fd <cprintf+0xf6>
      printint(*argp++, 16, 0);
801006a9:	8d 5f 04             	lea    0x4(%edi),%ebx
801006ac:	8b 07                	mov    (%edi),%eax
801006ae:	b9 00 00 00 00       	mov    $0x0,%ecx
801006b3:	ba 10 00 00 00       	mov    $0x10,%edx
801006b8:	e8 78 fe ff ff       	call   80100535 <printint>
801006bd:	89 df                	mov    %ebx,%edi
      break;
801006bf:	eb 8f                	jmp    80100650 <cprintf+0x49>
      if((s = (char*)*argp++) == 0)
801006c1:	8d 47 04             	lea    0x4(%edi),%eax
801006c4:	89 45 e4             	mov    %eax,-0x1c(%ebp)
801006c7:	8b 1f                	mov    (%edi),%ebx
801006c9:	85 db                	test   %ebx,%ebx
801006cb:	75 12                	jne    801006df <cprintf+0xd8>
        s = "(null)";
801006cd:	bb 38 66 10 80       	mov    $0x80106638,%ebx
801006d2:	eb 0b                	jmp    801006df <cprintf+0xd8>
        consputc(*s);
801006d4:	0f be c0             	movsbl %al,%eax
801006d7:	e8 fe fd ff ff       	call   801004da <consputc>
      for(; *s; s++)
801006dc:	83 c3 01             	add    $0x1,%ebx
801006df:	0f b6 03             	movzbl (%ebx),%eax
801006e2:	84 c0                	test   %al,%al
801006e4:	75 ee                	jne    801006d4 <cprintf+0xcd>
      if((s = (char*)*argp++) == 0)
801006e6:	8b 7d e4             	mov    -0x1c(%ebp),%edi
801006e9:	e9 62 ff ff ff       	jmp    80100650 <cprintf+0x49>
      consputc('%');
801006ee:	b8 25 00 00 00       	mov    $0x25,%eax
801006f3:	e8 e2 fd ff ff       	call   801004da <consputc>
      break;
801006f8:	e9 53 ff ff ff       	jmp    80100650 <cprintf+0x49>
      consputc('%');
801006fd:	b8 25 00 00 00       	mov    $0x25,%eax
80100702:	e8 d3 fd ff ff       	call   801004da <consputc>
      consputc(c);
80100707:	89 d8                	mov    %ebx,%eax
80100709:	e8 cc fd ff ff       	call   801004da <consputc>
      break;
8010070e:	e9 3d ff ff ff       	jmp    80100650 <cprintf+0x49>
  if(locking)
80100713:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
80100717:	75 08                	jne    80100721 <cprintf+0x11a>
}
80100719:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010071c:	5b                   	pop    %ebx
8010071d:	5e                   	pop    %esi
8010071e:	5f                   	pop    %edi
8010071f:	5d                   	pop    %ebp
80100720:	c3                   	ret    
    release(&cons.lock);
80100721:	83 ec 0c             	sub    $0xc,%esp
80100724:	68 20 df 10 80       	push   $0x8010df20
80100729:	e8 b1 34 00 00       	call   80103bdf <release>
8010072e:	83 c4 10             	add    $0x10,%esp
}
80100731:	eb e6                	jmp    80100719 <cprintf+0x112>

80100733 <consoleintr>:
{
80100733:	55                   	push   %ebp
80100734:	89 e5                	mov    %esp,%ebp
80100736:	57                   	push   %edi
80100737:	56                   	push   %esi
80100738:	53                   	push   %ebx
80100739:	83 ec 18             	sub    $0x18,%esp
8010073c:	8b 5d 08             	mov    0x8(%ebp),%ebx
  acquire(&cons.lock);
8010073f:	68 20 df 10 80       	push   $0x8010df20
80100744:	e8 31 34 00 00       	call   80103b7a <acquire>
  while((c = getc()) >= 0){
80100749:	83 c4 10             	add    $0x10,%esp
  int c, doprocdump = 0;
8010074c:	be 00 00 00 00       	mov    $0x0,%esi
  while((c = getc()) >= 0){
80100751:	eb 13                	jmp    80100766 <consoleintr+0x33>
    switch(c){
80100753:	83 ff 08             	cmp    $0x8,%edi
80100756:	0f 84 d9 00 00 00    	je     80100835 <consoleintr+0x102>
8010075c:	83 ff 10             	cmp    $0x10,%edi
8010075f:	75 25                	jne    80100786 <consoleintr+0x53>
80100761:	be 01 00 00 00       	mov    $0x1,%esi
  while((c = getc()) >= 0){
80100766:	ff d3                	call   *%ebx
80100768:	89 c7                	mov    %eax,%edi
8010076a:	85 c0                	test   %eax,%eax
8010076c:	0f 88 f5 00 00 00    	js     80100867 <consoleintr+0x134>
    switch(c){
80100772:	83 ff 15             	cmp    $0x15,%edi
80100775:	0f 84 93 00 00 00    	je     8010080e <consoleintr+0xdb>
8010077b:	7e d6                	jle    80100753 <consoleintr+0x20>
8010077d:	83 ff 7f             	cmp    $0x7f,%edi
80100780:	0f 84 af 00 00 00    	je     80100835 <consoleintr+0x102>
      if(c != 0 && input.e-input.r < INPUT_BUF){
80100786:	85 ff                	test   %edi,%edi
80100788:	74 dc                	je     80100766 <consoleintr+0x33>
8010078a:	a1 08 df 10 80       	mov    0x8010df08,%eax
8010078f:	89 c2                	mov    %eax,%edx
80100791:	2b 15 00 df 10 80    	sub    0x8010df00,%edx
80100797:	83 fa 7f             	cmp    $0x7f,%edx
8010079a:	77 ca                	ja     80100766 <consoleintr+0x33>
        c = (c == '\r') ? '\n' : c;
8010079c:	83 ff 0d             	cmp    $0xd,%edi
8010079f:	0f 84 b8 00 00 00    	je     8010085d <consoleintr+0x12a>
        input.buf[input.e++ % INPUT_BUF] = c;
801007a5:	8d 50 01             	lea    0x1(%eax),%edx
801007a8:	89 15 08 df 10 80    	mov    %edx,0x8010df08
801007ae:	83 e0 7f             	and    $0x7f,%eax
801007b1:	89 f9                	mov    %edi,%ecx
801007b3:	88 88 80 de 10 80    	mov    %cl,-0x7fef2180(%eax)
        consputc(c);
801007b9:	89 f8                	mov    %edi,%eax
801007bb:	e8 1a fd ff ff       	call   801004da <consputc>
        if(c == '\n' || c == C('D') || input.e == input.r+INPUT_BUF){
801007c0:	83 ff 0a             	cmp    $0xa,%edi
801007c3:	0f 94 c0             	sete   %al
801007c6:	83 ff 04             	cmp    $0x4,%edi
801007c9:	0f 94 c2             	sete   %dl
801007cc:	08 d0                	or     %dl,%al
801007ce:	75 10                	jne    801007e0 <consoleintr+0xad>
801007d0:	a1 00 df 10 80       	mov    0x8010df00,%eax
801007d5:	83 e8 80             	sub    $0xffffff80,%eax
801007d8:	39 05 08 df 10 80    	cmp    %eax,0x8010df08
801007de:	75 86                	jne    80100766 <consoleintr+0x33>
          input.w = input.e;
801007e0:	a1 08 df 10 80       	mov    0x8010df08,%eax
801007e5:	a3 04 df 10 80       	mov    %eax,0x8010df04
          wakeup(&input.r);
801007ea:	83 ec 0c             	sub    $0xc,%esp
801007ed:	68 00 df 10 80       	push   $0x8010df00
801007f2:	e8 ed 2f 00 00       	call   801037e4 <wakeup>
801007f7:	83 c4 10             	add    $0x10,%esp
801007fa:	e9 67 ff ff ff       	jmp    80100766 <consoleintr+0x33>
        input.e--;
801007ff:	a3 08 df 10 80       	mov    %eax,0x8010df08
        consputc(BACKSPACE);
80100804:	b8 00 01 00 00       	mov    $0x100,%eax
80100809:	e8 cc fc ff ff       	call   801004da <consputc>
      while(input.e != input.w &&
8010080e:	a1 08 df 10 80       	mov    0x8010df08,%eax
80100813:	3b 05 04 df 10 80    	cmp    0x8010df04,%eax
80100819:	0f 84 47 ff ff ff    	je     80100766 <consoleintr+0x33>
            input.buf[(input.e-1) % INPUT_BUF] != '\n'){
8010081f:	83 e8 01             	sub    $0x1,%eax
80100822:	89 c2                	mov    %eax,%edx
80100824:	83 e2 7f             	and    $0x7f,%edx
      while(input.e != input.w &&
80100827:	80 ba 80 de 10 80 0a 	cmpb   $0xa,-0x7fef2180(%edx)
8010082e:	75 cf                	jne    801007ff <consoleintr+0xcc>
80100830:	e9 31 ff ff ff       	jmp    80100766 <consoleintr+0x33>
      if(input.e != input.w){
80100835:	a1 08 df 10 80       	mov    0x8010df08,%eax
8010083a:	3b 05 04 df 10 80    	cmp    0x8010df04,%eax
80100840:	0f 84 20 ff ff ff    	je     80100766 <consoleintr+0x33>
        input.e--;
80100846:	83 e8 01             	sub    $0x1,%eax
80100849:	a3 08 df 10 80       	mov    %eax,0x8010df08
        consputc(BACKSPACE);
8010084e:	b8 00 01 00 00       	mov    $0x100,%eax
80100853:	e8 82 fc ff ff       	call   801004da <consputc>
80100858:	e9 09 ff ff ff       	jmp    80100766 <consoleintr+0x33>
        c = (c == '\r') ? '\n' : c;
8010085d:	bf 0a 00 00 00       	mov    $0xa,%edi
80100862:	e9 3e ff ff ff       	jmp    801007a5 <consoleintr+0x72>
  release(&cons.lock);
80100867:	83 ec 0c             	sub    $0xc,%esp
8010086a:	68 20 df 10 80       	push   $0x8010df20
8010086f:	e8 6b 33 00 00       	call   80103bdf <release>
  if(doprocdump) {
80100874:	83 c4 10             	add    $0x10,%esp
80100877:	85 f6                	test   %esi,%esi
80100879:	75 08                	jne    80100883 <consoleintr+0x150>
}
8010087b:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010087e:	5b                   	pop    %ebx
8010087f:	5e                   	pop    %esi
80100880:	5f                   	pop    %edi
80100881:	5d                   	pop    %ebp
80100882:	c3                   	ret    
    procdump();  // now call procdump() wo. cons.lock held
80100883:	e8 f9 2f 00 00       	call   80103881 <procdump>
}
80100888:	eb f1                	jmp    8010087b <consoleintr+0x148>

8010088a <consoleinit>:

void
consoleinit(void)
{
8010088a:	55                   	push   %ebp
8010088b:	89 e5                	mov    %esp,%ebp
8010088d:	83 ec 10             	sub    $0x10,%esp
  initlock(&cons.lock, "console");
80100890:	68 48 66 10 80       	push   $0x80106648
80100895:	68 20 df 10 80       	push   $0x8010df20
8010089a:	e8 9f 31 00 00       	call   80103a3e <initlock>

  devsw[CONSOLE].write = consolewrite;
8010089f:	c7 05 0c e9 10 80 a8 	movl   $0x801005a8,0x8010e90c
801008a6:	05 10 80 
  devsw[CONSOLE].read = consoleread;
801008a9:	c7 05 08 e9 10 80 68 	movl   $0x80100268,0x8010e908
801008b0:	02 10 80 
  cons.locking = 1;
801008b3:	c7 05 54 df 10 80 01 	movl   $0x1,0x8010df54
801008ba:	00 00 00 

  ioapicenable(IRQ_KBD, 0);
801008bd:	83 c4 08             	add    $0x8,%esp
801008c0:	6a 00                	push   $0x0
801008c2:	6a 01                	push   $0x1
801008c4:	e8 b3 16 00 00       	call   80101f7c <ioapicenable>
}
801008c9:	83 c4 10             	add    $0x10,%esp
801008cc:	c9                   	leave  
801008cd:	c3                   	ret    

801008ce <exec>:
#include "x86.h"
#include "elf.h"

int
exec(char *path, char **argv)
{
801008ce:	55                   	push   %ebp
801008cf:	89 e5                	mov    %esp,%ebp
801008d1:	57                   	push   %edi
801008d2:	56                   	push   %esi
801008d3:	53                   	push   %ebx
801008d4:	81 ec 0c 01 00 00    	sub    $0x10c,%esp
  uint argc, sz, sp, ustack[3+MAXARG+1];
  struct elfhdr elf;
  struct inode *ip;
  struct proghdr ph;
  pde_t *pgdir, *oldpgdir;
  struct proc *curproc = myproc();
801008da:	e8 f1 28 00 00       	call   801031d0 <myproc>
801008df:	89 85 ec fe ff ff    	mov    %eax,-0x114(%ebp)

  begin_op();
801008e5:	e8 af 1e 00 00       	call   80102799 <begin_op>

  if((ip = namei(path)) == 0){
801008ea:	83 ec 0c             	sub    $0xc,%esp
801008ed:	ff 75 08             	push   0x8(%ebp)
801008f0:	e8 f3 12 00 00       	call   80101be8 <namei>
801008f5:	83 c4 10             	add    $0x10,%esp
801008f8:	85 c0                	test   %eax,%eax
801008fa:	74 56                	je     80100952 <exec+0x84>
801008fc:	89 c3                	mov    %eax,%ebx
    end_op();
    cprintf("exec: fail\n");
    return -1;
  }
  ilock(ip);
801008fe:	83 ec 0c             	sub    $0xc,%esp
80100901:	50                   	push   %eax
80100902:	e8 83 0c 00 00       	call   8010158a <ilock>
  pgdir = 0;

  // Check ELF header
  if(readi(ip, (char*)&elf, 0, sizeof(elf)) != sizeof(elf))
80100907:	6a 34                	push   $0x34
80100909:	6a 00                	push   $0x0
8010090b:	8d 85 24 ff ff ff    	lea    -0xdc(%ebp),%eax
80100911:	50                   	push   %eax
80100912:	53                   	push   %ebx
80100913:	e8 64 0e 00 00       	call   8010177c <readi>
80100918:	83 c4 20             	add    $0x20,%esp
8010091b:	83 f8 34             	cmp    $0x34,%eax
8010091e:	75 0c                	jne    8010092c <exec+0x5e>
    goto bad;
  if(elf.magic != ELF_MAGIC)
80100920:	81 bd 24 ff ff ff 7f 	cmpl   $0x464c457f,-0xdc(%ebp)
80100927:	45 4c 46 
8010092a:	74 42                	je     8010096e <exec+0xa0>
  return 0;

 bad:
  if(pgdir)
    freevm(pgdir);
  if(ip){
8010092c:	85 db                	test   %ebx,%ebx
8010092e:	0f 84 d2 02 00 00    	je     80100c06 <exec+0x338>
    iunlockput(ip);
80100934:	83 ec 0c             	sub    $0xc,%esp
80100937:	53                   	push   %ebx
80100938:	e8 f4 0d 00 00       	call   80101731 <iunlockput>
    end_op();
8010093d:	e8 d1 1e 00 00       	call   80102813 <end_op>
80100942:	83 c4 10             	add    $0x10,%esp
  }
  return -1;
80100945:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
8010094a:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010094d:	5b                   	pop    %ebx
8010094e:	5e                   	pop    %esi
8010094f:	5f                   	pop    %edi
80100950:	5d                   	pop    %ebp
80100951:	c3                   	ret    
    end_op();
80100952:	e8 bc 1e 00 00       	call   80102813 <end_op>
    cprintf("exec: fail\n");
80100957:	83 ec 0c             	sub    $0xc,%esp
8010095a:	68 61 66 10 80       	push   $0x80106661
8010095f:	e8 a3 fc ff ff       	call   80100607 <cprintf>
    return -1;
80100964:	83 c4 10             	add    $0x10,%esp
80100967:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010096c:	eb dc                	jmp    8010094a <exec+0x7c>
  if((pgdir = setupkvm()) == 0)
8010096e:	e8 01 5a 00 00       	call   80106374 <setupkvm>
80100973:	89 85 f4 fe ff ff    	mov    %eax,-0x10c(%ebp)
80100979:	85 c0                	test   %eax,%eax
8010097b:	0f 84 16 01 00 00    	je     80100a97 <exec+0x1c9>
  for(i=0, off=elf.phoff; i<elf.phnum; i++, off+=sizeof(ph)){
80100981:	8b 85 40 ff ff ff    	mov    -0xc0(%ebp),%eax
  sz = 0;
80100987:	c7 85 f0 fe ff ff 00 	movl   $0x0,-0x110(%ebp)
8010098e:	00 00 00 
  for(i=0, off=elf.phoff; i<elf.phnum; i++, off+=sizeof(ph)){
80100991:	be 00 00 00 00       	mov    $0x0,%esi
80100996:	eb 06                	jmp    8010099e <exec+0xd0>
80100998:	83 c6 01             	add    $0x1,%esi
8010099b:	8d 47 20             	lea    0x20(%edi),%eax
8010099e:	0f b7 95 50 ff ff ff 	movzwl -0xb0(%ebp),%edx
801009a5:	39 f2                	cmp    %esi,%edx
801009a7:	0f 8e a1 00 00 00    	jle    80100a4e <exec+0x180>
    if(readi(ip, (char*)&ph, off, sizeof(ph)) != sizeof(ph))
801009ad:	89 c7                	mov    %eax,%edi
801009af:	6a 20                	push   $0x20
801009b1:	50                   	push   %eax
801009b2:	8d 85 04 ff ff ff    	lea    -0xfc(%ebp),%eax
801009b8:	50                   	push   %eax
801009b9:	53                   	push   %ebx
801009ba:	e8 bd 0d 00 00       	call   8010177c <readi>
801009bf:	83 c4 10             	add    $0x10,%esp
801009c2:	83 f8 20             	cmp    $0x20,%eax
801009c5:	0f 85 cc 00 00 00    	jne    80100a97 <exec+0x1c9>
    if(ph.type != ELF_PROG_LOAD || ph.memsz == 0)
801009cb:	83 bd 04 ff ff ff 01 	cmpl   $0x1,-0xfc(%ebp)
801009d2:	75 c4                	jne    80100998 <exec+0xca>
801009d4:	8b 85 18 ff ff ff    	mov    -0xe8(%ebp),%eax
801009da:	85 c0                	test   %eax,%eax
801009dc:	74 ba                	je     80100998 <exec+0xca>
    if(ph.memsz < ph.filesz)
801009de:	3b 85 14 ff ff ff    	cmp    -0xec(%ebp),%eax
801009e4:	0f 82 ad 00 00 00    	jb     80100a97 <exec+0x1c9>
    if(ph.vaddr + ph.memsz < ph.vaddr)
801009ea:	03 85 0c ff ff ff    	add    -0xf4(%ebp),%eax
801009f0:	0f 82 a1 00 00 00    	jb     80100a97 <exec+0x1c9>
    if((sz = allocuvm(pgdir, sz, ph.vaddr + ph.memsz)) == 0)
801009f6:	83 ec 04             	sub    $0x4,%esp
801009f9:	50                   	push   %eax
801009fa:	ff b5 f0 fe ff ff    	push   -0x110(%ebp)
80100a00:	ff b5 f4 fe ff ff    	push   -0x10c(%ebp)
80100a06:	e8 07 58 00 00       	call   80106212 <allocuvm>
80100a0b:	89 85 f0 fe ff ff    	mov    %eax,-0x110(%ebp)
80100a11:	83 c4 10             	add    $0x10,%esp
80100a14:	85 c0                	test   %eax,%eax
80100a16:	74 7f                	je     80100a97 <exec+0x1c9>
    if(ph.vaddr % PGSIZE != 0)
80100a18:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
80100a1e:	a9 ff 0f 00 00       	test   $0xfff,%eax
80100a23:	75 72                	jne    80100a97 <exec+0x1c9>
    if(loaduvm(pgdir, (char*)ph.vaddr, ip, ph.off, ph.filesz) < 0)
80100a25:	83 ec 0c             	sub    $0xc,%esp
80100a28:	ff b5 14 ff ff ff    	push   -0xec(%ebp)
80100a2e:	ff b5 08 ff ff ff    	push   -0xf8(%ebp)
80100a34:	53                   	push   %ebx
80100a35:	50                   	push   %eax
80100a36:	ff b5 f4 fe ff ff    	push   -0x10c(%ebp)
80100a3c:	e8 9c 56 00 00       	call   801060dd <loaduvm>
80100a41:	83 c4 20             	add    $0x20,%esp
80100a44:	85 c0                	test   %eax,%eax
80100a46:	0f 89 4c ff ff ff    	jns    80100998 <exec+0xca>
80100a4c:	eb 49                	jmp    80100a97 <exec+0x1c9>
  iunlockput(ip);
80100a4e:	83 ec 0c             	sub    $0xc,%esp
80100a51:	53                   	push   %ebx
80100a52:	e8 da 0c 00 00       	call   80101731 <iunlockput>
  end_op();
80100a57:	e8 b7 1d 00 00       	call   80102813 <end_op>
  sz = PGROUNDUP(sz);
80100a5c:	8b 85 f0 fe ff ff    	mov    -0x110(%ebp),%eax
80100a62:	05 ff 0f 00 00       	add    $0xfff,%eax
80100a67:	25 00 f0 ff ff       	and    $0xfffff000,%eax
  if((sz = allocuvm(pgdir, sz, sz + 2*PGSIZE)) == 0)
80100a6c:	83 c4 0c             	add    $0xc,%esp
80100a6f:	8d 90 00 20 00 00    	lea    0x2000(%eax),%edx
80100a75:	52                   	push   %edx
80100a76:	50                   	push   %eax
80100a77:	8b b5 f4 fe ff ff    	mov    -0x10c(%ebp),%esi
80100a7d:	56                   	push   %esi
80100a7e:	e8 8f 57 00 00       	call   80106212 <allocuvm>
80100a83:	89 c7                	mov    %eax,%edi
80100a85:	89 85 f0 fe ff ff    	mov    %eax,-0x110(%ebp)
80100a8b:	83 c4 10             	add    $0x10,%esp
80100a8e:	85 c0                	test   %eax,%eax
80100a90:	75 24                	jne    80100ab6 <exec+0x1e8>
  ip = 0;
80100a92:	bb 00 00 00 00       	mov    $0x0,%ebx
  if(pgdir)
80100a97:	8b 85 f4 fe ff ff    	mov    -0x10c(%ebp),%eax
80100a9d:	85 c0                	test   %eax,%eax
80100a9f:	0f 84 87 fe ff ff    	je     8010092c <exec+0x5e>
    freevm(pgdir);
80100aa5:	83 ec 0c             	sub    $0xc,%esp
80100aa8:	50                   	push   %eax
80100aa9:	e8 52 58 00 00       	call   80106300 <freevm>
80100aae:	83 c4 10             	add    $0x10,%esp
80100ab1:	e9 76 fe ff ff       	jmp    8010092c <exec+0x5e>
  clearpteu(pgdir, (char*)(sz - 2*PGSIZE));
80100ab6:	8d 80 00 e0 ff ff    	lea    -0x2000(%eax),%eax
80100abc:	83 ec 08             	sub    $0x8,%esp
80100abf:	50                   	push   %eax
80100ac0:	56                   	push   %esi
80100ac1:	e8 3b 59 00 00       	call   80106401 <clearpteu>
  for(argc = 0; argv[argc]; argc++) {
80100ac6:	83 c4 10             	add    $0x10,%esp
80100ac9:	be 00 00 00 00       	mov    $0x0,%esi
80100ace:	eb 0a                	jmp    80100ada <exec+0x20c>
    ustack[3+argc] = sp;
80100ad0:	89 bc b5 64 ff ff ff 	mov    %edi,-0x9c(%ebp,%esi,4)
  for(argc = 0; argv[argc]; argc++) {
80100ad7:	83 c6 01             	add    $0x1,%esi
80100ada:	8b 45 0c             	mov    0xc(%ebp),%eax
80100add:	8d 1c b0             	lea    (%eax,%esi,4),%ebx
80100ae0:	8b 03                	mov    (%ebx),%eax
80100ae2:	85 c0                	test   %eax,%eax
80100ae4:	74 47                	je     80100b2d <exec+0x25f>
    if(argc >= MAXARG)
80100ae6:	83 fe 1f             	cmp    $0x1f,%esi
80100ae9:	0f 87 0d 01 00 00    	ja     80100bfc <exec+0x32e>
    sp = (sp - (strlen(argv[argc]) + 1)) & ~3;
80100aef:	83 ec 0c             	sub    $0xc,%esp
80100af2:	50                   	push   %eax
80100af3:	e8 d7 32 00 00       	call   80103dcf <strlen>
80100af8:	29 c7                	sub    %eax,%edi
80100afa:	83 ef 01             	sub    $0x1,%edi
80100afd:	83 e7 fc             	and    $0xfffffffc,%edi
    if(copyout(pgdir, sp, argv[argc], strlen(argv[argc]) + 1) < 0)
80100b00:	83 c4 04             	add    $0x4,%esp
80100b03:	ff 33                	push   (%ebx)
80100b05:	e8 c5 32 00 00       	call   80103dcf <strlen>
80100b0a:	83 c0 01             	add    $0x1,%eax
80100b0d:	50                   	push   %eax
80100b0e:	ff 33                	push   (%ebx)
80100b10:	57                   	push   %edi
80100b11:	ff b5 f4 fe ff ff    	push   -0x10c(%ebp)
80100b17:	e8 3f 5a 00 00       	call   8010655b <copyout>
80100b1c:	83 c4 20             	add    $0x20,%esp
80100b1f:	85 c0                	test   %eax,%eax
80100b21:	79 ad                	jns    80100ad0 <exec+0x202>
  ip = 0;
80100b23:	bb 00 00 00 00       	mov    $0x0,%ebx
80100b28:	e9 6a ff ff ff       	jmp    80100a97 <exec+0x1c9>
  ustack[3+argc] = 0;
80100b2d:	89 f9                	mov    %edi,%ecx
80100b2f:	89 c3                	mov    %eax,%ebx
80100b31:	c7 84 b5 64 ff ff ff 	movl   $0x0,-0x9c(%ebp,%esi,4)
80100b38:	00 00 00 00 
  ustack[0] = 0xffffffff;  // fake return PC
80100b3c:	c7 85 58 ff ff ff ff 	movl   $0xffffffff,-0xa8(%ebp)
80100b43:	ff ff ff 
  ustack[1] = argc;
80100b46:	89 b5 5c ff ff ff    	mov    %esi,-0xa4(%ebp)
  ustack[2] = sp - (argc+1)*4;  // argv pointer
80100b4c:	8d 14 b5 04 00 00 00 	lea    0x4(,%esi,4),%edx
80100b53:	89 f8                	mov    %edi,%eax
80100b55:	29 d0                	sub    %edx,%eax
80100b57:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
  sp -= (3+argc+1) * 4;
80100b5d:	8d 04 b5 10 00 00 00 	lea    0x10(,%esi,4),%eax
80100b64:	29 c1                	sub    %eax,%ecx
80100b66:	89 ce                	mov    %ecx,%esi
  if(copyout(pgdir, sp, ustack, (3+argc+1)*4) < 0)
80100b68:	50                   	push   %eax
80100b69:	8d 85 58 ff ff ff    	lea    -0xa8(%ebp),%eax
80100b6f:	50                   	push   %eax
80100b70:	51                   	push   %ecx
80100b71:	ff b5 f4 fe ff ff    	push   -0x10c(%ebp)
80100b77:	e8 df 59 00 00       	call   8010655b <copyout>
80100b7c:	83 c4 10             	add    $0x10,%esp
80100b7f:	85 c0                	test   %eax,%eax
80100b81:	0f 88 10 ff ff ff    	js     80100a97 <exec+0x1c9>
  for(last=s=path; *s; s++)
80100b87:	8b 55 08             	mov    0x8(%ebp),%edx
80100b8a:	89 d0                	mov    %edx,%eax
80100b8c:	eb 03                	jmp    80100b91 <exec+0x2c3>
80100b8e:	83 c0 01             	add    $0x1,%eax
80100b91:	0f b6 08             	movzbl (%eax),%ecx
80100b94:	84 c9                	test   %cl,%cl
80100b96:	74 0a                	je     80100ba2 <exec+0x2d4>
    if(*s == '/')
80100b98:	80 f9 2f             	cmp    $0x2f,%cl
80100b9b:	75 f1                	jne    80100b8e <exec+0x2c0>
      last = s+1;
80100b9d:	8d 50 01             	lea    0x1(%eax),%edx
80100ba0:	eb ec                	jmp    80100b8e <exec+0x2c0>
  safestrcpy(curproc->name, last, sizeof(curproc->name));
80100ba2:	8b bd ec fe ff ff    	mov    -0x114(%ebp),%edi
80100ba8:	89 f8                	mov    %edi,%eax
80100baa:	83 c0 6c             	add    $0x6c,%eax
80100bad:	83 ec 04             	sub    $0x4,%esp
80100bb0:	6a 10                	push   $0x10
80100bb2:	52                   	push   %edx
80100bb3:	50                   	push   %eax
80100bb4:	e8 d9 31 00 00       	call   80103d92 <safestrcpy>
  oldpgdir = curproc->pgdir;
80100bb9:	8b 5f 04             	mov    0x4(%edi),%ebx
  curproc->pgdir = pgdir;
80100bbc:	8b 8d f4 fe ff ff    	mov    -0x10c(%ebp),%ecx
80100bc2:	89 4f 04             	mov    %ecx,0x4(%edi)
  curproc->sz = sz;
80100bc5:	8b 8d f0 fe ff ff    	mov    -0x110(%ebp),%ecx
80100bcb:	89 0f                	mov    %ecx,(%edi)
  curproc->tf->eip = elf.entry;  // main
80100bcd:	8b 47 18             	mov    0x18(%edi),%eax
80100bd0:	8b 95 3c ff ff ff    	mov    -0xc4(%ebp),%edx
80100bd6:	89 50 38             	mov    %edx,0x38(%eax)
  curproc->tf->esp = sp;
80100bd9:	8b 47 18             	mov    0x18(%edi),%eax
80100bdc:	89 70 44             	mov    %esi,0x44(%eax)
  switchuvm(curproc);
80100bdf:	89 3c 24             	mov    %edi,(%esp)
80100be2:	e8 6e 53 00 00       	call   80105f55 <switchuvm>
  freevm(oldpgdir);
80100be7:	89 1c 24             	mov    %ebx,(%esp)
80100bea:	e8 11 57 00 00       	call   80106300 <freevm>
  return 0;
80100bef:	83 c4 10             	add    $0x10,%esp
80100bf2:	b8 00 00 00 00       	mov    $0x0,%eax
80100bf7:	e9 4e fd ff ff       	jmp    8010094a <exec+0x7c>
  ip = 0;
80100bfc:	bb 00 00 00 00       	mov    $0x0,%ebx
80100c01:	e9 91 fe ff ff       	jmp    80100a97 <exec+0x1c9>
  return -1;
80100c06:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80100c0b:	e9 3a fd ff ff       	jmp    8010094a <exec+0x7c>

80100c10 <fileinit>:
  struct file file[NFILE];
} ftable;

void
fileinit(void)
{
80100c10:	55                   	push   %ebp
80100c11:	89 e5                	mov    %esp,%ebp
80100c13:	83 ec 10             	sub    $0x10,%esp
  initlock(&ftable.lock, "ftable");
80100c16:	68 6d 66 10 80       	push   $0x8010666d
80100c1b:	68 60 df 10 80       	push   $0x8010df60
80100c20:	e8 19 2e 00 00       	call   80103a3e <initlock>
}
80100c25:	83 c4 10             	add    $0x10,%esp
80100c28:	c9                   	leave  
80100c29:	c3                   	ret    

80100c2a <filealloc>:

// Allocate a file structure.
struct file*
filealloc(void)
{
80100c2a:	55                   	push   %ebp
80100c2b:	89 e5                	mov    %esp,%ebp
80100c2d:	53                   	push   %ebx
80100c2e:	83 ec 10             	sub    $0x10,%esp
  struct file *f;

  acquire(&ftable.lock);
80100c31:	68 60 df 10 80       	push   $0x8010df60
80100c36:	e8 3f 2f 00 00       	call   80103b7a <acquire>
  for(f = ftable.file; f < ftable.file + NFILE; f++){
80100c3b:	83 c4 10             	add    $0x10,%esp
80100c3e:	bb 94 df 10 80       	mov    $0x8010df94,%ebx
80100c43:	81 fb f4 e8 10 80    	cmp    $0x8010e8f4,%ebx
80100c49:	73 29                	jae    80100c74 <filealloc+0x4a>
    if(f->ref == 0){
80100c4b:	83 7b 04 00          	cmpl   $0x0,0x4(%ebx)
80100c4f:	74 05                	je     80100c56 <filealloc+0x2c>
  for(f = ftable.file; f < ftable.file + NFILE; f++){
80100c51:	83 c3 18             	add    $0x18,%ebx
80100c54:	eb ed                	jmp    80100c43 <filealloc+0x19>
      f->ref = 1;
80100c56:	c7 43 04 01 00 00 00 	movl   $0x1,0x4(%ebx)
      release(&ftable.lock);
80100c5d:	83 ec 0c             	sub    $0xc,%esp
80100c60:	68 60 df 10 80       	push   $0x8010df60
80100c65:	e8 75 2f 00 00       	call   80103bdf <release>
      return f;
80100c6a:	83 c4 10             	add    $0x10,%esp
    }
  }
  release(&ftable.lock);
  return 0;
}
80100c6d:	89 d8                	mov    %ebx,%eax
80100c6f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80100c72:	c9                   	leave  
80100c73:	c3                   	ret    
  release(&ftable.lock);
80100c74:	83 ec 0c             	sub    $0xc,%esp
80100c77:	68 60 df 10 80       	push   $0x8010df60
80100c7c:	e8 5e 2f 00 00       	call   80103bdf <release>
  return 0;
80100c81:	83 c4 10             	add    $0x10,%esp
80100c84:	bb 00 00 00 00       	mov    $0x0,%ebx
80100c89:	eb e2                	jmp    80100c6d <filealloc+0x43>

80100c8b <filedup>:

// Increment ref count for file f.
struct file*
filedup(struct file *f)
{
80100c8b:	55                   	push   %ebp
80100c8c:	89 e5                	mov    %esp,%ebp
80100c8e:	53                   	push   %ebx
80100c8f:	83 ec 10             	sub    $0x10,%esp
80100c92:	8b 5d 08             	mov    0x8(%ebp),%ebx
  acquire(&ftable.lock);
80100c95:	68 60 df 10 80       	push   $0x8010df60
80100c9a:	e8 db 2e 00 00       	call   80103b7a <acquire>
  if(f->ref < 1)
80100c9f:	8b 43 04             	mov    0x4(%ebx),%eax
80100ca2:	83 c4 10             	add    $0x10,%esp
80100ca5:	85 c0                	test   %eax,%eax
80100ca7:	7e 1a                	jle    80100cc3 <filedup+0x38>
    panic("filedup");
  f->ref++;
80100ca9:	83 c0 01             	add    $0x1,%eax
80100cac:	89 43 04             	mov    %eax,0x4(%ebx)
  release(&ftable.lock);
80100caf:	83 ec 0c             	sub    $0xc,%esp
80100cb2:	68 60 df 10 80       	push   $0x8010df60
80100cb7:	e8 23 2f 00 00       	call   80103bdf <release>
  return f;
}
80100cbc:	89 d8                	mov    %ebx,%eax
80100cbe:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80100cc1:	c9                   	leave  
80100cc2:	c3                   	ret    
    panic("filedup");
80100cc3:	83 ec 0c             	sub    $0xc,%esp
80100cc6:	68 74 66 10 80       	push   $0x80106674
80100ccb:	e8 78 f6 ff ff       	call   80100348 <panic>

80100cd0 <fileclose>:

// Close file f.  (Decrement ref count, close when reaches 0.)
void
fileclose(struct file *f)
{
80100cd0:	55                   	push   %ebp
80100cd1:	89 e5                	mov    %esp,%ebp
80100cd3:	53                   	push   %ebx
80100cd4:	83 ec 30             	sub    $0x30,%esp
80100cd7:	8b 5d 08             	mov    0x8(%ebp),%ebx
  struct file ff;

  acquire(&ftable.lock);
80100cda:	68 60 df 10 80       	push   $0x8010df60
80100cdf:	e8 96 2e 00 00       	call   80103b7a <acquire>
  if(f->ref < 1)
80100ce4:	8b 43 04             	mov    0x4(%ebx),%eax
80100ce7:	83 c4 10             	add    $0x10,%esp
80100cea:	85 c0                	test   %eax,%eax
80100cec:	7e 71                	jle    80100d5f <fileclose+0x8f>
    panic("fileclose");
  if(--f->ref > 0){
80100cee:	83 e8 01             	sub    $0x1,%eax
80100cf1:	89 43 04             	mov    %eax,0x4(%ebx)
80100cf4:	85 c0                	test   %eax,%eax
80100cf6:	7f 74                	jg     80100d6c <fileclose+0x9c>
    release(&ftable.lock);
    return;
  }
  ff = *f;
80100cf8:	8b 03                	mov    (%ebx),%eax
80100cfa:	89 45 e0             	mov    %eax,-0x20(%ebp)
80100cfd:	8b 43 04             	mov    0x4(%ebx),%eax
80100d00:	89 45 e4             	mov    %eax,-0x1c(%ebp)
80100d03:	8b 43 08             	mov    0x8(%ebx),%eax
80100d06:	89 45 e8             	mov    %eax,-0x18(%ebp)
80100d09:	8b 43 0c             	mov    0xc(%ebx),%eax
80100d0c:	89 45 ec             	mov    %eax,-0x14(%ebp)
80100d0f:	8b 43 10             	mov    0x10(%ebx),%eax
80100d12:	89 45 f0             	mov    %eax,-0x10(%ebp)
80100d15:	8b 43 14             	mov    0x14(%ebx),%eax
80100d18:	89 45 f4             	mov    %eax,-0xc(%ebp)
  f->ref = 0;
80100d1b:	c7 43 04 00 00 00 00 	movl   $0x0,0x4(%ebx)
  f->type = FD_NONE;
80100d22:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
  release(&ftable.lock);
80100d28:	83 ec 0c             	sub    $0xc,%esp
80100d2b:	68 60 df 10 80       	push   $0x8010df60
80100d30:	e8 aa 2e 00 00       	call   80103bdf <release>

  if(ff.type == FD_PIPE)
80100d35:	8b 45 e0             	mov    -0x20(%ebp),%eax
80100d38:	83 c4 10             	add    $0x10,%esp
80100d3b:	83 f8 01             	cmp    $0x1,%eax
80100d3e:	74 41                	je     80100d81 <fileclose+0xb1>
    pipeclose(ff.pipe, ff.writable);
  else if(ff.type == FD_INODE){
80100d40:	83 f8 02             	cmp    $0x2,%eax
80100d43:	75 37                	jne    80100d7c <fileclose+0xac>
    begin_op();
80100d45:	e8 4f 1a 00 00       	call   80102799 <begin_op>
    iput(ff.ip);
80100d4a:	83 ec 0c             	sub    $0xc,%esp
80100d4d:	ff 75 f0             	push   -0x10(%ebp)
80100d50:	e8 3c 09 00 00       	call   80101691 <iput>
    end_op();
80100d55:	e8 b9 1a 00 00       	call   80102813 <end_op>
80100d5a:	83 c4 10             	add    $0x10,%esp
80100d5d:	eb 1d                	jmp    80100d7c <fileclose+0xac>
    panic("fileclose");
80100d5f:	83 ec 0c             	sub    $0xc,%esp
80100d62:	68 7c 66 10 80       	push   $0x8010667c
80100d67:	e8 dc f5 ff ff       	call   80100348 <panic>
    release(&ftable.lock);
80100d6c:	83 ec 0c             	sub    $0xc,%esp
80100d6f:	68 60 df 10 80       	push   $0x8010df60
80100d74:	e8 66 2e 00 00       	call   80103bdf <release>
    return;
80100d79:	83 c4 10             	add    $0x10,%esp
  }
}
80100d7c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80100d7f:	c9                   	leave  
80100d80:	c3                   	ret    
    pipeclose(ff.pipe, ff.writable);
80100d81:	83 ec 08             	sub    $0x8,%esp
80100d84:	0f be 45 e9          	movsbl -0x17(%ebp),%eax
80100d88:	50                   	push   %eax
80100d89:	ff 75 ec             	push   -0x14(%ebp)
80100d8c:	e8 7b 20 00 00       	call   80102e0c <pipeclose>
80100d91:	83 c4 10             	add    $0x10,%esp
80100d94:	eb e6                	jmp    80100d7c <fileclose+0xac>

80100d96 <filestat>:

// Get metadata about file f.
int
filestat(struct file *f, struct stat *st)
{
80100d96:	55                   	push   %ebp
80100d97:	89 e5                	mov    %esp,%ebp
80100d99:	53                   	push   %ebx
80100d9a:	83 ec 04             	sub    $0x4,%esp
80100d9d:	8b 5d 08             	mov    0x8(%ebp),%ebx
  if(f->type == FD_INODE){
80100da0:	83 3b 02             	cmpl   $0x2,(%ebx)
80100da3:	75 31                	jne    80100dd6 <filestat+0x40>
    ilock(f->ip);
80100da5:	83 ec 0c             	sub    $0xc,%esp
80100da8:	ff 73 10             	push   0x10(%ebx)
80100dab:	e8 da 07 00 00       	call   8010158a <ilock>
    stati(f->ip, st);
80100db0:	83 c4 08             	add    $0x8,%esp
80100db3:	ff 75 0c             	push   0xc(%ebp)
80100db6:	ff 73 10             	push   0x10(%ebx)
80100db9:	e8 93 09 00 00       	call   80101751 <stati>
    iunlock(f->ip);
80100dbe:	83 c4 04             	add    $0x4,%esp
80100dc1:	ff 73 10             	push   0x10(%ebx)
80100dc4:	e8 83 08 00 00       	call   8010164c <iunlock>
    return 0;
80100dc9:	83 c4 10             	add    $0x10,%esp
80100dcc:	b8 00 00 00 00       	mov    $0x0,%eax
  }
  return -1;
}
80100dd1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80100dd4:	c9                   	leave  
80100dd5:	c3                   	ret    
  return -1;
80100dd6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80100ddb:	eb f4                	jmp    80100dd1 <filestat+0x3b>

80100ddd <fileread>:

// Read from file f.
int
fileread(struct file *f, char *addr, int n)
{
80100ddd:	55                   	push   %ebp
80100dde:	89 e5                	mov    %esp,%ebp
80100de0:	56                   	push   %esi
80100de1:	53                   	push   %ebx
80100de2:	8b 5d 08             	mov    0x8(%ebp),%ebx
  int r;

  if(f->readable == 0)
80100de5:	80 7b 08 00          	cmpb   $0x0,0x8(%ebx)
80100de9:	74 70                	je     80100e5b <fileread+0x7e>
    return -1;
  if(f->type == FD_PIPE)
80100deb:	8b 03                	mov    (%ebx),%eax
80100ded:	83 f8 01             	cmp    $0x1,%eax
80100df0:	74 44                	je     80100e36 <fileread+0x59>
    return piperead(f->pipe, addr, n);
  if(f->type == FD_INODE){
80100df2:	83 f8 02             	cmp    $0x2,%eax
80100df5:	75 57                	jne    80100e4e <fileread+0x71>
    ilock(f->ip);
80100df7:	83 ec 0c             	sub    $0xc,%esp
80100dfa:	ff 73 10             	push   0x10(%ebx)
80100dfd:	e8 88 07 00 00       	call   8010158a <ilock>
    if((r = readi(f->ip, addr, f->off, n)) > 0)
80100e02:	ff 75 10             	push   0x10(%ebp)
80100e05:	ff 73 14             	push   0x14(%ebx)
80100e08:	ff 75 0c             	push   0xc(%ebp)
80100e0b:	ff 73 10             	push   0x10(%ebx)
80100e0e:	e8 69 09 00 00       	call   8010177c <readi>
80100e13:	89 c6                	mov    %eax,%esi
80100e15:	83 c4 20             	add    $0x20,%esp
80100e18:	85 c0                	test   %eax,%eax
80100e1a:	7e 03                	jle    80100e1f <fileread+0x42>
      f->off += r;
80100e1c:	01 43 14             	add    %eax,0x14(%ebx)
    iunlock(f->ip);
80100e1f:	83 ec 0c             	sub    $0xc,%esp
80100e22:	ff 73 10             	push   0x10(%ebx)
80100e25:	e8 22 08 00 00       	call   8010164c <iunlock>
    return r;
80100e2a:	83 c4 10             	add    $0x10,%esp
  }
  panic("fileread");
}
80100e2d:	89 f0                	mov    %esi,%eax
80100e2f:	8d 65 f8             	lea    -0x8(%ebp),%esp
80100e32:	5b                   	pop    %ebx
80100e33:	5e                   	pop    %esi
80100e34:	5d                   	pop    %ebp
80100e35:	c3                   	ret    
    return piperead(f->pipe, addr, n);
80100e36:	83 ec 04             	sub    $0x4,%esp
80100e39:	ff 75 10             	push   0x10(%ebp)
80100e3c:	ff 75 0c             	push   0xc(%ebp)
80100e3f:	ff 73 0c             	push   0xc(%ebx)
80100e42:	e8 16 21 00 00       	call   80102f5d <piperead>
80100e47:	89 c6                	mov    %eax,%esi
80100e49:	83 c4 10             	add    $0x10,%esp
80100e4c:	eb df                	jmp    80100e2d <fileread+0x50>
  panic("fileread");
80100e4e:	83 ec 0c             	sub    $0xc,%esp
80100e51:	68 86 66 10 80       	push   $0x80106686
80100e56:	e8 ed f4 ff ff       	call   80100348 <panic>
    return -1;
80100e5b:	be ff ff ff ff       	mov    $0xffffffff,%esi
80100e60:	eb cb                	jmp    80100e2d <fileread+0x50>

80100e62 <filewrite>:

//PAGEBREAK!
// Write to file f.
int
filewrite(struct file *f, char *addr, int n)
{
80100e62:	55                   	push   %ebp
80100e63:	89 e5                	mov    %esp,%ebp
80100e65:	57                   	push   %edi
80100e66:	56                   	push   %esi
80100e67:	53                   	push   %ebx
80100e68:	83 ec 1c             	sub    $0x1c,%esp
80100e6b:	8b 75 08             	mov    0x8(%ebp),%esi
  int r;

  if(f->writable == 0)
80100e6e:	80 7e 09 00          	cmpb   $0x0,0x9(%esi)
80100e72:	0f 84 d0 00 00 00    	je     80100f48 <filewrite+0xe6>
    return -1;
  if(f->type == FD_PIPE)
80100e78:	8b 06                	mov    (%esi),%eax
80100e7a:	83 f8 01             	cmp    $0x1,%eax
80100e7d:	74 12                	je     80100e91 <filewrite+0x2f>
    return pipewrite(f->pipe, addr, n);
  if(f->type == FD_INODE){
80100e7f:	83 f8 02             	cmp    $0x2,%eax
80100e82:	0f 85 b3 00 00 00    	jne    80100f3b <filewrite+0xd9>
    // i-node, indirect block, allocation blocks,
    // and 2 blocks of slop for non-aligned writes.
    // this really belongs lower down, since writei()
    // might be writing a device like the console.
    int max = ((MAXOPBLOCKS-1-1-2) / 2) * 512;
    int i = 0;
80100e88:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
80100e8f:	eb 66                	jmp    80100ef7 <filewrite+0x95>
    return pipewrite(f->pipe, addr, n);
80100e91:	83 ec 04             	sub    $0x4,%esp
80100e94:	ff 75 10             	push   0x10(%ebp)
80100e97:	ff 75 0c             	push   0xc(%ebp)
80100e9a:	ff 76 0c             	push   0xc(%esi)
80100e9d:	e8 f6 1f 00 00       	call   80102e98 <pipewrite>
80100ea2:	83 c4 10             	add    $0x10,%esp
80100ea5:	e9 84 00 00 00       	jmp    80100f2e <filewrite+0xcc>
    while(i < n){
      int n1 = n - i;
      if(n1 > max)
        n1 = max;

      begin_op();
80100eaa:	e8 ea 18 00 00       	call   80102799 <begin_op>
      ilock(f->ip);
80100eaf:	83 ec 0c             	sub    $0xc,%esp
80100eb2:	ff 76 10             	push   0x10(%esi)
80100eb5:	e8 d0 06 00 00       	call   8010158a <ilock>
      if ((r = writei(f->ip, addr + i, f->off, n1)) > 0)
80100eba:	57                   	push   %edi
80100ebb:	ff 76 14             	push   0x14(%esi)
80100ebe:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80100ec1:	03 45 0c             	add    0xc(%ebp),%eax
80100ec4:	50                   	push   %eax
80100ec5:	ff 76 10             	push   0x10(%esi)
80100ec8:	e8 ac 09 00 00       	call   80101879 <writei>
80100ecd:	89 c3                	mov    %eax,%ebx
80100ecf:	83 c4 20             	add    $0x20,%esp
80100ed2:	85 c0                	test   %eax,%eax
80100ed4:	7e 03                	jle    80100ed9 <filewrite+0x77>
        f->off += r;
80100ed6:	01 46 14             	add    %eax,0x14(%esi)
      iunlock(f->ip);
80100ed9:	83 ec 0c             	sub    $0xc,%esp
80100edc:	ff 76 10             	push   0x10(%esi)
80100edf:	e8 68 07 00 00       	call   8010164c <iunlock>
      end_op();
80100ee4:	e8 2a 19 00 00       	call   80102813 <end_op>

      if(r < 0)
80100ee9:	83 c4 10             	add    $0x10,%esp
80100eec:	85 db                	test   %ebx,%ebx
80100eee:	78 31                	js     80100f21 <filewrite+0xbf>
        break;
      if(r != n1)
80100ef0:	39 df                	cmp    %ebx,%edi
80100ef2:	75 20                	jne    80100f14 <filewrite+0xb2>
        panic("short filewrite");
      i += r;
80100ef4:	01 5d e4             	add    %ebx,-0x1c(%ebp)
    while(i < n){
80100ef7:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80100efa:	3b 45 10             	cmp    0x10(%ebp),%eax
80100efd:	7d 22                	jge    80100f21 <filewrite+0xbf>
      int n1 = n - i;
80100eff:	8b 7d 10             	mov    0x10(%ebp),%edi
80100f02:	2b 7d e4             	sub    -0x1c(%ebp),%edi
      if(n1 > max)
80100f05:	81 ff 00 06 00 00    	cmp    $0x600,%edi
80100f0b:	7e 9d                	jle    80100eaa <filewrite+0x48>
        n1 = max;
80100f0d:	bf 00 06 00 00       	mov    $0x600,%edi
80100f12:	eb 96                	jmp    80100eaa <filewrite+0x48>
        panic("short filewrite");
80100f14:	83 ec 0c             	sub    $0xc,%esp
80100f17:	68 8f 66 10 80       	push   $0x8010668f
80100f1c:	e8 27 f4 ff ff       	call   80100348 <panic>
    }
    return i == n ? n : -1;
80100f21:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80100f24:	3b 45 10             	cmp    0x10(%ebp),%eax
80100f27:	74 0d                	je     80100f36 <filewrite+0xd4>
80100f29:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  }
  panic("filewrite");
}
80100f2e:	8d 65 f4             	lea    -0xc(%ebp),%esp
80100f31:	5b                   	pop    %ebx
80100f32:	5e                   	pop    %esi
80100f33:	5f                   	pop    %edi
80100f34:	5d                   	pop    %ebp
80100f35:	c3                   	ret    
    return i == n ? n : -1;
80100f36:	8b 45 10             	mov    0x10(%ebp),%eax
80100f39:	eb f3                	jmp    80100f2e <filewrite+0xcc>
  panic("filewrite");
80100f3b:	83 ec 0c             	sub    $0xc,%esp
80100f3e:	68 95 66 10 80       	push   $0x80106695
80100f43:	e8 00 f4 ff ff       	call   80100348 <panic>
    return -1;
80100f48:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80100f4d:	eb df                	jmp    80100f2e <filewrite+0xcc>

80100f4f <skipelem>:
//   skipelem("a", name) = "", setting name = "a"
//   skipelem("", name) = skipelem("////", name) = 0
//
static char*
skipelem(char *path, char *name)
{
80100f4f:	55                   	push   %ebp
80100f50:	89 e5                	mov    %esp,%ebp
80100f52:	57                   	push   %edi
80100f53:	56                   	push   %esi
80100f54:	53                   	push   %ebx
80100f55:	83 ec 0c             	sub    $0xc,%esp
80100f58:	89 d6                	mov    %edx,%esi
  char *s;
  int len;

  while(*path == '/')
80100f5a:	eb 03                	jmp    80100f5f <skipelem+0x10>
    path++;
80100f5c:	83 c0 01             	add    $0x1,%eax
  while(*path == '/')
80100f5f:	0f b6 10             	movzbl (%eax),%edx
80100f62:	80 fa 2f             	cmp    $0x2f,%dl
80100f65:	74 f5                	je     80100f5c <skipelem+0xd>
  if(*path == 0)
80100f67:	84 d2                	test   %dl,%dl
80100f69:	74 53                	je     80100fbe <skipelem+0x6f>
80100f6b:	89 c3                	mov    %eax,%ebx
80100f6d:	eb 03                	jmp    80100f72 <skipelem+0x23>
    return 0;
  s = path;
  while(*path != '/' && *path != 0)
    path++;
80100f6f:	83 c3 01             	add    $0x1,%ebx
  while(*path != '/' && *path != 0)
80100f72:	0f b6 13             	movzbl (%ebx),%edx
80100f75:	80 fa 2f             	cmp    $0x2f,%dl
80100f78:	74 04                	je     80100f7e <skipelem+0x2f>
80100f7a:	84 d2                	test   %dl,%dl
80100f7c:	75 f1                	jne    80100f6f <skipelem+0x20>
  len = path - s;
80100f7e:	89 df                	mov    %ebx,%edi
80100f80:	29 c7                	sub    %eax,%edi
  if(len >= DIRSIZ)
80100f82:	83 ff 0d             	cmp    $0xd,%edi
80100f85:	7e 11                	jle    80100f98 <skipelem+0x49>
    memmove(name, s, DIRSIZ);
80100f87:	83 ec 04             	sub    $0x4,%esp
80100f8a:	6a 0e                	push   $0xe
80100f8c:	50                   	push   %eax
80100f8d:	56                   	push   %esi
80100f8e:	e8 0b 2d 00 00       	call   80103c9e <memmove>
80100f93:	83 c4 10             	add    $0x10,%esp
80100f96:	eb 17                	jmp    80100faf <skipelem+0x60>
  else {
    memmove(name, s, len);
80100f98:	83 ec 04             	sub    $0x4,%esp
80100f9b:	57                   	push   %edi
80100f9c:	50                   	push   %eax
80100f9d:	56                   	push   %esi
80100f9e:	e8 fb 2c 00 00       	call   80103c9e <memmove>
    name[len] = 0;
80100fa3:	c6 04 3e 00          	movb   $0x0,(%esi,%edi,1)
80100fa7:	83 c4 10             	add    $0x10,%esp
80100faa:	eb 03                	jmp    80100faf <skipelem+0x60>
  }
  while(*path == '/')
    path++;
80100fac:	83 c3 01             	add    $0x1,%ebx
  while(*path == '/')
80100faf:	80 3b 2f             	cmpb   $0x2f,(%ebx)
80100fb2:	74 f8                	je     80100fac <skipelem+0x5d>
  return path;
}
80100fb4:	89 d8                	mov    %ebx,%eax
80100fb6:	8d 65 f4             	lea    -0xc(%ebp),%esp
80100fb9:	5b                   	pop    %ebx
80100fba:	5e                   	pop    %esi
80100fbb:	5f                   	pop    %edi
80100fbc:	5d                   	pop    %ebp
80100fbd:	c3                   	ret    
    return 0;
80100fbe:	bb 00 00 00 00       	mov    $0x0,%ebx
80100fc3:	eb ef                	jmp    80100fb4 <skipelem+0x65>

80100fc5 <bzero>:
{
80100fc5:	55                   	push   %ebp
80100fc6:	89 e5                	mov    %esp,%ebp
80100fc8:	53                   	push   %ebx
80100fc9:	83 ec 0c             	sub    $0xc,%esp
  bp = bread(dev, bno);
80100fcc:	52                   	push   %edx
80100fcd:	50                   	push   %eax
80100fce:	e8 99 f1 ff ff       	call   8010016c <bread>
80100fd3:	89 c3                	mov    %eax,%ebx
  memset(bp->data, 0, BSIZE);
80100fd5:	8d 40 5c             	lea    0x5c(%eax),%eax
80100fd8:	83 c4 0c             	add    $0xc,%esp
80100fdb:	68 00 02 00 00       	push   $0x200
80100fe0:	6a 00                	push   $0x0
80100fe2:	50                   	push   %eax
80100fe3:	e8 3e 2c 00 00       	call   80103c26 <memset>
  log_write(bp);
80100fe8:	89 1c 24             	mov    %ebx,(%esp)
80100feb:	e8 d2 18 00 00       	call   801028c2 <log_write>
  brelse(bp);
80100ff0:	89 1c 24             	mov    %ebx,(%esp)
80100ff3:	e8 dd f1 ff ff       	call   801001d5 <brelse>
}
80100ff8:	83 c4 10             	add    $0x10,%esp
80100ffb:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80100ffe:	c9                   	leave  
80100fff:	c3                   	ret    

80101000 <balloc>:
{
80101000:	55                   	push   %ebp
80101001:	89 e5                	mov    %esp,%ebp
80101003:	57                   	push   %edi
80101004:	56                   	push   %esi
80101005:	53                   	push   %ebx
80101006:	83 ec 1c             	sub    $0x1c,%esp
80101009:	89 45 d8             	mov    %eax,-0x28(%ebp)
  for(b = 0; b < sb.size; b += BPB){
8010100c:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
80101013:	eb 15                	jmp    8010102a <balloc+0x2a>
    brelse(bp);
80101015:	83 ec 0c             	sub    $0xc,%esp
80101018:	ff 75 e0             	push   -0x20(%ebp)
8010101b:	e8 b5 f1 ff ff       	call   801001d5 <brelse>
  for(b = 0; b < sb.size; b += BPB){
80101020:	81 45 e4 00 10 00 00 	addl   $0x1000,-0x1c(%ebp)
80101027:	83 c4 10             	add    $0x10,%esp
8010102a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
8010102d:	39 05 b4 05 11 80    	cmp    %eax,0x801105b4
80101033:	76 75                	jbe    801010aa <balloc+0xaa>
    bp = bread(dev, BBLOCK(b, sb));
80101035:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
80101038:	8d 83 ff 0f 00 00    	lea    0xfff(%ebx),%eax
8010103e:	85 db                	test   %ebx,%ebx
80101040:	0f 49 c3             	cmovns %ebx,%eax
80101043:	c1 f8 0c             	sar    $0xc,%eax
80101046:	83 ec 08             	sub    $0x8,%esp
80101049:	03 05 cc 05 11 80    	add    0x801105cc,%eax
8010104f:	50                   	push   %eax
80101050:	ff 75 d8             	push   -0x28(%ebp)
80101053:	e8 14 f1 ff ff       	call   8010016c <bread>
80101058:	89 45 e0             	mov    %eax,-0x20(%ebp)
    for(bi = 0; bi < BPB && b + bi < sb.size; bi++){
8010105b:	83 c4 10             	add    $0x10,%esp
8010105e:	b8 00 00 00 00       	mov    $0x0,%eax
80101063:	3d ff 0f 00 00       	cmp    $0xfff,%eax
80101068:	7f ab                	jg     80101015 <balloc+0x15>
8010106a:	8b 7d e4             	mov    -0x1c(%ebp),%edi
8010106d:	8d 1c 07             	lea    (%edi,%eax,1),%ebx
80101070:	3b 1d b4 05 11 80    	cmp    0x801105b4,%ebx
80101076:	73 9d                	jae    80101015 <balloc+0x15>
      m = 1 << (bi % 8);
80101078:	89 c1                	mov    %eax,%ecx
8010107a:	83 e1 07             	and    $0x7,%ecx
8010107d:	ba 01 00 00 00       	mov    $0x1,%edx
80101082:	d3 e2                	shl    %cl,%edx
80101084:	89 d1                	mov    %edx,%ecx
      if((bp->data[bi/8] & m) == 0){  // Is block free?
80101086:	8d 50 07             	lea    0x7(%eax),%edx
80101089:	85 c0                	test   %eax,%eax
8010108b:	0f 49 d0             	cmovns %eax,%edx
8010108e:	c1 fa 03             	sar    $0x3,%edx
80101091:	89 55 dc             	mov    %edx,-0x24(%ebp)
80101094:	8b 75 e0             	mov    -0x20(%ebp),%esi
80101097:	0f b6 74 16 5c       	movzbl 0x5c(%esi,%edx,1),%esi
8010109c:	89 f2                	mov    %esi,%edx
8010109e:	0f b6 fa             	movzbl %dl,%edi
801010a1:	85 cf                	test   %ecx,%edi
801010a3:	74 12                	je     801010b7 <balloc+0xb7>
    for(bi = 0; bi < BPB && b + bi < sb.size; bi++){
801010a5:	83 c0 01             	add    $0x1,%eax
801010a8:	eb b9                	jmp    80101063 <balloc+0x63>
  panic("balloc: out of blocks");
801010aa:	83 ec 0c             	sub    $0xc,%esp
801010ad:	68 9f 66 10 80       	push   $0x8010669f
801010b2:	e8 91 f2 ff ff       	call   80100348 <panic>
        bp->data[bi/8] |= m;  // Mark block in use.
801010b7:	8b 55 dc             	mov    -0x24(%ebp),%edx
801010ba:	09 f1                	or     %esi,%ecx
801010bc:	8b 7d e0             	mov    -0x20(%ebp),%edi
801010bf:	88 4c 17 5c          	mov    %cl,0x5c(%edi,%edx,1)
        log_write(bp);
801010c3:	83 ec 0c             	sub    $0xc,%esp
801010c6:	57                   	push   %edi
801010c7:	e8 f6 17 00 00       	call   801028c2 <log_write>
        brelse(bp);
801010cc:	89 3c 24             	mov    %edi,(%esp)
801010cf:	e8 01 f1 ff ff       	call   801001d5 <brelse>
        bzero(dev, b + bi);
801010d4:	89 da                	mov    %ebx,%edx
801010d6:	8b 45 d8             	mov    -0x28(%ebp),%eax
801010d9:	e8 e7 fe ff ff       	call   80100fc5 <bzero>
}
801010de:	89 d8                	mov    %ebx,%eax
801010e0:	8d 65 f4             	lea    -0xc(%ebp),%esp
801010e3:	5b                   	pop    %ebx
801010e4:	5e                   	pop    %esi
801010e5:	5f                   	pop    %edi
801010e6:	5d                   	pop    %ebp
801010e7:	c3                   	ret    

801010e8 <bmap>:
{
801010e8:	55                   	push   %ebp
801010e9:	89 e5                	mov    %esp,%ebp
801010eb:	57                   	push   %edi
801010ec:	56                   	push   %esi
801010ed:	53                   	push   %ebx
801010ee:	83 ec 1c             	sub    $0x1c,%esp
801010f1:	89 c3                	mov    %eax,%ebx
801010f3:	89 d7                	mov    %edx,%edi
  if(bn < NDIRECT){
801010f5:	83 fa 0b             	cmp    $0xb,%edx
801010f8:	76 45                	jbe    8010113f <bmap+0x57>
  bn -= NDIRECT;
801010fa:	8d 72 f4             	lea    -0xc(%edx),%esi
  if(bn < NINDIRECT){
801010fd:	83 fe 7f             	cmp    $0x7f,%esi
80101100:	77 7f                	ja     80101181 <bmap+0x99>
    if((addr = ip->addrs[NDIRECT]) == 0)
80101102:	8b 80 8c 00 00 00    	mov    0x8c(%eax),%eax
80101108:	85 c0                	test   %eax,%eax
8010110a:	74 4a                	je     80101156 <bmap+0x6e>
    bp = bread(ip->dev, addr);
8010110c:	83 ec 08             	sub    $0x8,%esp
8010110f:	50                   	push   %eax
80101110:	ff 33                	push   (%ebx)
80101112:	e8 55 f0 ff ff       	call   8010016c <bread>
80101117:	89 c7                	mov    %eax,%edi
    if((addr = a[bn]) == 0){
80101119:	8d 44 b0 5c          	lea    0x5c(%eax,%esi,4),%eax
8010111d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
80101120:	8b 30                	mov    (%eax),%esi
80101122:	83 c4 10             	add    $0x10,%esp
80101125:	85 f6                	test   %esi,%esi
80101127:	74 3c                	je     80101165 <bmap+0x7d>
    brelse(bp);
80101129:	83 ec 0c             	sub    $0xc,%esp
8010112c:	57                   	push   %edi
8010112d:	e8 a3 f0 ff ff       	call   801001d5 <brelse>
    return addr;
80101132:	83 c4 10             	add    $0x10,%esp
}
80101135:	89 f0                	mov    %esi,%eax
80101137:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010113a:	5b                   	pop    %ebx
8010113b:	5e                   	pop    %esi
8010113c:	5f                   	pop    %edi
8010113d:	5d                   	pop    %ebp
8010113e:	c3                   	ret    
    if((addr = ip->addrs[bn]) == 0)
8010113f:	8b 74 90 5c          	mov    0x5c(%eax,%edx,4),%esi
80101143:	85 f6                	test   %esi,%esi
80101145:	75 ee                	jne    80101135 <bmap+0x4d>
      ip->addrs[bn] = addr = balloc(ip->dev);
80101147:	8b 00                	mov    (%eax),%eax
80101149:	e8 b2 fe ff ff       	call   80101000 <balloc>
8010114e:	89 c6                	mov    %eax,%esi
80101150:	89 44 bb 5c          	mov    %eax,0x5c(%ebx,%edi,4)
    return addr;
80101154:	eb df                	jmp    80101135 <bmap+0x4d>
      ip->addrs[NDIRECT] = addr = balloc(ip->dev);
80101156:	8b 03                	mov    (%ebx),%eax
80101158:	e8 a3 fe ff ff       	call   80101000 <balloc>
8010115d:	89 83 8c 00 00 00    	mov    %eax,0x8c(%ebx)
80101163:	eb a7                	jmp    8010110c <bmap+0x24>
      a[bn] = addr = balloc(ip->dev);
80101165:	8b 03                	mov    (%ebx),%eax
80101167:	e8 94 fe ff ff       	call   80101000 <balloc>
8010116c:	89 c6                	mov    %eax,%esi
8010116e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80101171:	89 30                	mov    %esi,(%eax)
      log_write(bp);
80101173:	83 ec 0c             	sub    $0xc,%esp
80101176:	57                   	push   %edi
80101177:	e8 46 17 00 00       	call   801028c2 <log_write>
8010117c:	83 c4 10             	add    $0x10,%esp
8010117f:	eb a8                	jmp    80101129 <bmap+0x41>
  panic("bmap: out of range");
80101181:	83 ec 0c             	sub    $0xc,%esp
80101184:	68 b5 66 10 80       	push   $0x801066b5
80101189:	e8 ba f1 ff ff       	call   80100348 <panic>

8010118e <iget>:
{
8010118e:	55                   	push   %ebp
8010118f:	89 e5                	mov    %esp,%ebp
80101191:	57                   	push   %edi
80101192:	56                   	push   %esi
80101193:	53                   	push   %ebx
80101194:	83 ec 28             	sub    $0x28,%esp
80101197:	89 c7                	mov    %eax,%edi
80101199:	89 55 e4             	mov    %edx,-0x1c(%ebp)
  acquire(&icache.lock);
8010119c:	68 60 e9 10 80       	push   $0x8010e960
801011a1:	e8 d4 29 00 00       	call   80103b7a <acquire>
  for(ip = &icache.inode[0]; ip < &icache.inode[NINODE]; ip++){
801011a6:	83 c4 10             	add    $0x10,%esp
  empty = 0;
801011a9:	be 00 00 00 00       	mov    $0x0,%esi
  for(ip = &icache.inode[0]; ip < &icache.inode[NINODE]; ip++){
801011ae:	bb 94 e9 10 80       	mov    $0x8010e994,%ebx
801011b3:	eb 0a                	jmp    801011bf <iget+0x31>
    if(empty == 0 && ip->ref == 0)    // Remember empty slot.
801011b5:	85 f6                	test   %esi,%esi
801011b7:	74 3b                	je     801011f4 <iget+0x66>
  for(ip = &icache.inode[0]; ip < &icache.inode[NINODE]; ip++){
801011b9:	81 c3 90 00 00 00    	add    $0x90,%ebx
801011bf:	81 fb b4 05 11 80    	cmp    $0x801105b4,%ebx
801011c5:	73 35                	jae    801011fc <iget+0x6e>
    if(ip->ref > 0 && ip->dev == dev && ip->inum == inum){
801011c7:	8b 43 08             	mov    0x8(%ebx),%eax
801011ca:	85 c0                	test   %eax,%eax
801011cc:	7e e7                	jle    801011b5 <iget+0x27>
801011ce:	39 3b                	cmp    %edi,(%ebx)
801011d0:	75 e3                	jne    801011b5 <iget+0x27>
801011d2:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
801011d5:	39 4b 04             	cmp    %ecx,0x4(%ebx)
801011d8:	75 db                	jne    801011b5 <iget+0x27>
      ip->ref++;
801011da:	83 c0 01             	add    $0x1,%eax
801011dd:	89 43 08             	mov    %eax,0x8(%ebx)
      release(&icache.lock);
801011e0:	83 ec 0c             	sub    $0xc,%esp
801011e3:	68 60 e9 10 80       	push   $0x8010e960
801011e8:	e8 f2 29 00 00       	call   80103bdf <release>
      return ip;
801011ed:	83 c4 10             	add    $0x10,%esp
801011f0:	89 de                	mov    %ebx,%esi
801011f2:	eb 32                	jmp    80101226 <iget+0x98>
    if(empty == 0 && ip->ref == 0)    // Remember empty slot.
801011f4:	85 c0                	test   %eax,%eax
801011f6:	75 c1                	jne    801011b9 <iget+0x2b>
      empty = ip;
801011f8:	89 de                	mov    %ebx,%esi
801011fa:	eb bd                	jmp    801011b9 <iget+0x2b>
  if(empty == 0)
801011fc:	85 f6                	test   %esi,%esi
801011fe:	74 30                	je     80101230 <iget+0xa2>
  ip->dev = dev;
80101200:	89 3e                	mov    %edi,(%esi)
  ip->inum = inum;
80101202:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80101205:	89 46 04             	mov    %eax,0x4(%esi)
  ip->ref = 1;
80101208:	c7 46 08 01 00 00 00 	movl   $0x1,0x8(%esi)
  ip->valid = 0;
8010120f:	c7 46 4c 00 00 00 00 	movl   $0x0,0x4c(%esi)
  release(&icache.lock);
80101216:	83 ec 0c             	sub    $0xc,%esp
80101219:	68 60 e9 10 80       	push   $0x8010e960
8010121e:	e8 bc 29 00 00       	call   80103bdf <release>
  return ip;
80101223:	83 c4 10             	add    $0x10,%esp
}
80101226:	89 f0                	mov    %esi,%eax
80101228:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010122b:	5b                   	pop    %ebx
8010122c:	5e                   	pop    %esi
8010122d:	5f                   	pop    %edi
8010122e:	5d                   	pop    %ebp
8010122f:	c3                   	ret    
    panic("iget: no inodes");
80101230:	83 ec 0c             	sub    $0xc,%esp
80101233:	68 c8 66 10 80       	push   $0x801066c8
80101238:	e8 0b f1 ff ff       	call   80100348 <panic>

8010123d <readsb>:
{
8010123d:	55                   	push   %ebp
8010123e:	89 e5                	mov    %esp,%ebp
80101240:	53                   	push   %ebx
80101241:	83 ec 0c             	sub    $0xc,%esp
  bp = bread(dev, 1);
80101244:	6a 01                	push   $0x1
80101246:	ff 75 08             	push   0x8(%ebp)
80101249:	e8 1e ef ff ff       	call   8010016c <bread>
8010124e:	89 c3                	mov    %eax,%ebx
  memmove(sb, bp->data, sizeof(*sb));
80101250:	8d 40 5c             	lea    0x5c(%eax),%eax
80101253:	83 c4 0c             	add    $0xc,%esp
80101256:	6a 1c                	push   $0x1c
80101258:	50                   	push   %eax
80101259:	ff 75 0c             	push   0xc(%ebp)
8010125c:	e8 3d 2a 00 00       	call   80103c9e <memmove>
  brelse(bp);
80101261:	89 1c 24             	mov    %ebx,(%esp)
80101264:	e8 6c ef ff ff       	call   801001d5 <brelse>
}
80101269:	83 c4 10             	add    $0x10,%esp
8010126c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
8010126f:	c9                   	leave  
80101270:	c3                   	ret    

80101271 <bfree>:
{
80101271:	55                   	push   %ebp
80101272:	89 e5                	mov    %esp,%ebp
80101274:	56                   	push   %esi
80101275:	53                   	push   %ebx
80101276:	89 c3                	mov    %eax,%ebx
80101278:	89 d6                	mov    %edx,%esi
  readsb(dev, &sb);
8010127a:	83 ec 08             	sub    $0x8,%esp
8010127d:	68 b4 05 11 80       	push   $0x801105b4
80101282:	50                   	push   %eax
80101283:	e8 b5 ff ff ff       	call   8010123d <readsb>
  bp = bread(dev, BBLOCK(b, sb));
80101288:	89 f0                	mov    %esi,%eax
8010128a:	c1 e8 0c             	shr    $0xc,%eax
8010128d:	83 c4 08             	add    $0x8,%esp
80101290:	03 05 cc 05 11 80    	add    0x801105cc,%eax
80101296:	50                   	push   %eax
80101297:	53                   	push   %ebx
80101298:	e8 cf ee ff ff       	call   8010016c <bread>
8010129d:	89 c3                	mov    %eax,%ebx
  bi = b % BPB;
8010129f:	89 f2                	mov    %esi,%edx
801012a1:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
  m = 1 << (bi % 8);
801012a7:	89 f1                	mov    %esi,%ecx
801012a9:	83 e1 07             	and    $0x7,%ecx
801012ac:	b8 01 00 00 00       	mov    $0x1,%eax
801012b1:	d3 e0                	shl    %cl,%eax
  if((bp->data[bi/8] & m) == 0)
801012b3:	83 c4 10             	add    $0x10,%esp
801012b6:	c1 fa 03             	sar    $0x3,%edx
801012b9:	0f b6 4c 13 5c       	movzbl 0x5c(%ebx,%edx,1),%ecx
801012be:	0f b6 f1             	movzbl %cl,%esi
801012c1:	85 c6                	test   %eax,%esi
801012c3:	74 23                	je     801012e8 <bfree+0x77>
  bp->data[bi/8] &= ~m;
801012c5:	f7 d0                	not    %eax
801012c7:	21 c8                	and    %ecx,%eax
801012c9:	88 44 13 5c          	mov    %al,0x5c(%ebx,%edx,1)
  log_write(bp);
801012cd:	83 ec 0c             	sub    $0xc,%esp
801012d0:	53                   	push   %ebx
801012d1:	e8 ec 15 00 00       	call   801028c2 <log_write>
  brelse(bp);
801012d6:	89 1c 24             	mov    %ebx,(%esp)
801012d9:	e8 f7 ee ff ff       	call   801001d5 <brelse>
}
801012de:	83 c4 10             	add    $0x10,%esp
801012e1:	8d 65 f8             	lea    -0x8(%ebp),%esp
801012e4:	5b                   	pop    %ebx
801012e5:	5e                   	pop    %esi
801012e6:	5d                   	pop    %ebp
801012e7:	c3                   	ret    
    panic("freeing free block");
801012e8:	83 ec 0c             	sub    $0xc,%esp
801012eb:	68 d8 66 10 80       	push   $0x801066d8
801012f0:	e8 53 f0 ff ff       	call   80100348 <panic>

801012f5 <iinit>:
{
801012f5:	55                   	push   %ebp
801012f6:	89 e5                	mov    %esp,%ebp
801012f8:	53                   	push   %ebx
801012f9:	83 ec 0c             	sub    $0xc,%esp
  initlock(&icache.lock, "icache");
801012fc:	68 eb 66 10 80       	push   $0x801066eb
80101301:	68 60 e9 10 80       	push   $0x8010e960
80101306:	e8 33 27 00 00       	call   80103a3e <initlock>
  for(i = 0; i < NINODE; i++) {
8010130b:	83 c4 10             	add    $0x10,%esp
8010130e:	bb 00 00 00 00       	mov    $0x0,%ebx
80101313:	eb 21                	jmp    80101336 <iinit+0x41>
    initsleeplock(&icache.inode[i].lock, "inode");
80101315:	83 ec 08             	sub    $0x8,%esp
80101318:	68 f2 66 10 80       	push   $0x801066f2
8010131d:	8d 14 db             	lea    (%ebx,%ebx,8),%edx
80101320:	89 d0                	mov    %edx,%eax
80101322:	c1 e0 04             	shl    $0x4,%eax
80101325:	05 a0 e9 10 80       	add    $0x8010e9a0,%eax
8010132a:	50                   	push   %eax
8010132b:	e8 03 26 00 00       	call   80103933 <initsleeplock>
  for(i = 0; i < NINODE; i++) {
80101330:	83 c3 01             	add    $0x1,%ebx
80101333:	83 c4 10             	add    $0x10,%esp
80101336:	83 fb 31             	cmp    $0x31,%ebx
80101339:	7e da                	jle    80101315 <iinit+0x20>
  readsb(dev, &sb);
8010133b:	83 ec 08             	sub    $0x8,%esp
8010133e:	68 b4 05 11 80       	push   $0x801105b4
80101343:	ff 75 08             	push   0x8(%ebp)
80101346:	e8 f2 fe ff ff       	call   8010123d <readsb>
  cprintf("sb: size %d nblocks %d ninodes %d nlog %d logstart %d\
8010134b:	ff 35 cc 05 11 80    	push   0x801105cc
80101351:	ff 35 c8 05 11 80    	push   0x801105c8
80101357:	ff 35 c4 05 11 80    	push   0x801105c4
8010135d:	ff 35 c0 05 11 80    	push   0x801105c0
80101363:	ff 35 bc 05 11 80    	push   0x801105bc
80101369:	ff 35 b8 05 11 80    	push   0x801105b8
8010136f:	ff 35 b4 05 11 80    	push   0x801105b4
80101375:	68 58 67 10 80       	push   $0x80106758
8010137a:	e8 88 f2 ff ff       	call   80100607 <cprintf>
}
8010137f:	83 c4 30             	add    $0x30,%esp
80101382:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80101385:	c9                   	leave  
80101386:	c3                   	ret    

80101387 <ialloc>:
{
80101387:	55                   	push   %ebp
80101388:	89 e5                	mov    %esp,%ebp
8010138a:	57                   	push   %edi
8010138b:	56                   	push   %esi
8010138c:	53                   	push   %ebx
8010138d:	83 ec 1c             	sub    $0x1c,%esp
80101390:	8b 45 0c             	mov    0xc(%ebp),%eax
80101393:	89 45 e0             	mov    %eax,-0x20(%ebp)
  for(inum = 1; inum < sb.ninodes; inum++){
80101396:	bb 01 00 00 00       	mov    $0x1,%ebx
8010139b:	89 5d e4             	mov    %ebx,-0x1c(%ebp)
8010139e:	39 1d bc 05 11 80    	cmp    %ebx,0x801105bc
801013a4:	76 3f                	jbe    801013e5 <ialloc+0x5e>
    bp = bread(dev, IBLOCK(inum, sb));
801013a6:	89 d8                	mov    %ebx,%eax
801013a8:	c1 e8 03             	shr    $0x3,%eax
801013ab:	83 ec 08             	sub    $0x8,%esp
801013ae:	03 05 c8 05 11 80    	add    0x801105c8,%eax
801013b4:	50                   	push   %eax
801013b5:	ff 75 08             	push   0x8(%ebp)
801013b8:	e8 af ed ff ff       	call   8010016c <bread>
801013bd:	89 c6                	mov    %eax,%esi
    dip = (struct dinode*)bp->data + inum%IPB;
801013bf:	89 d8                	mov    %ebx,%eax
801013c1:	83 e0 07             	and    $0x7,%eax
801013c4:	c1 e0 06             	shl    $0x6,%eax
801013c7:	8d 7c 06 5c          	lea    0x5c(%esi,%eax,1),%edi
    if(dip->type == 0){  // a free inode
801013cb:	83 c4 10             	add    $0x10,%esp
801013ce:	66 83 3f 00          	cmpw   $0x0,(%edi)
801013d2:	74 1e                	je     801013f2 <ialloc+0x6b>
    brelse(bp);
801013d4:	83 ec 0c             	sub    $0xc,%esp
801013d7:	56                   	push   %esi
801013d8:	e8 f8 ed ff ff       	call   801001d5 <brelse>
  for(inum = 1; inum < sb.ninodes; inum++){
801013dd:	83 c3 01             	add    $0x1,%ebx
801013e0:	83 c4 10             	add    $0x10,%esp
801013e3:	eb b6                	jmp    8010139b <ialloc+0x14>
  panic("ialloc: no inodes");
801013e5:	83 ec 0c             	sub    $0xc,%esp
801013e8:	68 f8 66 10 80       	push   $0x801066f8
801013ed:	e8 56 ef ff ff       	call   80100348 <panic>
      memset(dip, 0, sizeof(*dip));
801013f2:	83 ec 04             	sub    $0x4,%esp
801013f5:	6a 40                	push   $0x40
801013f7:	6a 00                	push   $0x0
801013f9:	57                   	push   %edi
801013fa:	e8 27 28 00 00       	call   80103c26 <memset>
      dip->type = type;
801013ff:	0f b7 45 e0          	movzwl -0x20(%ebp),%eax
80101403:	66 89 07             	mov    %ax,(%edi)
      log_write(bp);   // mark it allocated on the disk
80101406:	89 34 24             	mov    %esi,(%esp)
80101409:	e8 b4 14 00 00       	call   801028c2 <log_write>
      brelse(bp);
8010140e:	89 34 24             	mov    %esi,(%esp)
80101411:	e8 bf ed ff ff       	call   801001d5 <brelse>
      return iget(dev, inum);
80101416:	8b 55 e4             	mov    -0x1c(%ebp),%edx
80101419:	8b 45 08             	mov    0x8(%ebp),%eax
8010141c:	e8 6d fd ff ff       	call   8010118e <iget>
}
80101421:	8d 65 f4             	lea    -0xc(%ebp),%esp
80101424:	5b                   	pop    %ebx
80101425:	5e                   	pop    %esi
80101426:	5f                   	pop    %edi
80101427:	5d                   	pop    %ebp
80101428:	c3                   	ret    

80101429 <iupdate>:
{
80101429:	55                   	push   %ebp
8010142a:	89 e5                	mov    %esp,%ebp
8010142c:	56                   	push   %esi
8010142d:	53                   	push   %ebx
8010142e:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = bread(ip->dev, IBLOCK(ip->inum, sb));
80101431:	8b 43 04             	mov    0x4(%ebx),%eax
80101434:	c1 e8 03             	shr    $0x3,%eax
80101437:	83 ec 08             	sub    $0x8,%esp
8010143a:	03 05 c8 05 11 80    	add    0x801105c8,%eax
80101440:	50                   	push   %eax
80101441:	ff 33                	push   (%ebx)
80101443:	e8 24 ed ff ff       	call   8010016c <bread>
80101448:	89 c6                	mov    %eax,%esi
  dip = (struct dinode*)bp->data + ip->inum%IPB;
8010144a:	8b 43 04             	mov    0x4(%ebx),%eax
8010144d:	83 e0 07             	and    $0x7,%eax
80101450:	c1 e0 06             	shl    $0x6,%eax
80101453:	8d 44 06 5c          	lea    0x5c(%esi,%eax,1),%eax
  dip->type = ip->type;
80101457:	0f b7 53 50          	movzwl 0x50(%ebx),%edx
8010145b:	66 89 10             	mov    %dx,(%eax)
  dip->major = ip->major;
8010145e:	0f b7 53 52          	movzwl 0x52(%ebx),%edx
80101462:	66 89 50 02          	mov    %dx,0x2(%eax)
  dip->minor = ip->minor;
80101466:	0f b7 53 54          	movzwl 0x54(%ebx),%edx
8010146a:	66 89 50 04          	mov    %dx,0x4(%eax)
  dip->nlink = ip->nlink;
8010146e:	0f b7 53 56          	movzwl 0x56(%ebx),%edx
80101472:	66 89 50 06          	mov    %dx,0x6(%eax)
  dip->size = ip->size;
80101476:	8b 53 58             	mov    0x58(%ebx),%edx
80101479:	89 50 08             	mov    %edx,0x8(%eax)
  memmove(dip->addrs, ip->addrs, sizeof(ip->addrs));
8010147c:	83 c3 5c             	add    $0x5c,%ebx
8010147f:	83 c0 0c             	add    $0xc,%eax
80101482:	83 c4 0c             	add    $0xc,%esp
80101485:	6a 34                	push   $0x34
80101487:	53                   	push   %ebx
80101488:	50                   	push   %eax
80101489:	e8 10 28 00 00       	call   80103c9e <memmove>
  log_write(bp);
8010148e:	89 34 24             	mov    %esi,(%esp)
80101491:	e8 2c 14 00 00       	call   801028c2 <log_write>
  brelse(bp);
80101496:	89 34 24             	mov    %esi,(%esp)
80101499:	e8 37 ed ff ff       	call   801001d5 <brelse>
}
8010149e:	83 c4 10             	add    $0x10,%esp
801014a1:	8d 65 f8             	lea    -0x8(%ebp),%esp
801014a4:	5b                   	pop    %ebx
801014a5:	5e                   	pop    %esi
801014a6:	5d                   	pop    %ebp
801014a7:	c3                   	ret    

801014a8 <itrunc>:
{
801014a8:	55                   	push   %ebp
801014a9:	89 e5                	mov    %esp,%ebp
801014ab:	57                   	push   %edi
801014ac:	56                   	push   %esi
801014ad:	53                   	push   %ebx
801014ae:	83 ec 1c             	sub    $0x1c,%esp
801014b1:	89 c6                	mov    %eax,%esi
  for(i = 0; i < NDIRECT; i++){
801014b3:	bb 00 00 00 00       	mov    $0x0,%ebx
801014b8:	eb 03                	jmp    801014bd <itrunc+0x15>
801014ba:	83 c3 01             	add    $0x1,%ebx
801014bd:	83 fb 0b             	cmp    $0xb,%ebx
801014c0:	7f 19                	jg     801014db <itrunc+0x33>
    if(ip->addrs[i]){
801014c2:	8b 54 9e 5c          	mov    0x5c(%esi,%ebx,4),%edx
801014c6:	85 d2                	test   %edx,%edx
801014c8:	74 f0                	je     801014ba <itrunc+0x12>
      bfree(ip->dev, ip->addrs[i]);
801014ca:	8b 06                	mov    (%esi),%eax
801014cc:	e8 a0 fd ff ff       	call   80101271 <bfree>
      ip->addrs[i] = 0;
801014d1:	c7 44 9e 5c 00 00 00 	movl   $0x0,0x5c(%esi,%ebx,4)
801014d8:	00 
801014d9:	eb df                	jmp    801014ba <itrunc+0x12>
  if(ip->addrs[NDIRECT]){
801014db:	8b 86 8c 00 00 00    	mov    0x8c(%esi),%eax
801014e1:	85 c0                	test   %eax,%eax
801014e3:	75 1b                	jne    80101500 <itrunc+0x58>
  ip->size = 0;
801014e5:	c7 46 58 00 00 00 00 	movl   $0x0,0x58(%esi)
  iupdate(ip);
801014ec:	83 ec 0c             	sub    $0xc,%esp
801014ef:	56                   	push   %esi
801014f0:	e8 34 ff ff ff       	call   80101429 <iupdate>
}
801014f5:	83 c4 10             	add    $0x10,%esp
801014f8:	8d 65 f4             	lea    -0xc(%ebp),%esp
801014fb:	5b                   	pop    %ebx
801014fc:	5e                   	pop    %esi
801014fd:	5f                   	pop    %edi
801014fe:	5d                   	pop    %ebp
801014ff:	c3                   	ret    
    bp = bread(ip->dev, ip->addrs[NDIRECT]);
80101500:	83 ec 08             	sub    $0x8,%esp
80101503:	50                   	push   %eax
80101504:	ff 36                	push   (%esi)
80101506:	e8 61 ec ff ff       	call   8010016c <bread>
8010150b:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    a = (uint*)bp->data;
8010150e:	8d 78 5c             	lea    0x5c(%eax),%edi
    for(j = 0; j < NINDIRECT; j++){
80101511:	83 c4 10             	add    $0x10,%esp
80101514:	bb 00 00 00 00       	mov    $0x0,%ebx
80101519:	eb 03                	jmp    8010151e <itrunc+0x76>
8010151b:	83 c3 01             	add    $0x1,%ebx
8010151e:	83 fb 7f             	cmp    $0x7f,%ebx
80101521:	77 10                	ja     80101533 <itrunc+0x8b>
      if(a[j])
80101523:	8b 14 9f             	mov    (%edi,%ebx,4),%edx
80101526:	85 d2                	test   %edx,%edx
80101528:	74 f1                	je     8010151b <itrunc+0x73>
        bfree(ip->dev, a[j]);
8010152a:	8b 06                	mov    (%esi),%eax
8010152c:	e8 40 fd ff ff       	call   80101271 <bfree>
80101531:	eb e8                	jmp    8010151b <itrunc+0x73>
    brelse(bp);
80101533:	83 ec 0c             	sub    $0xc,%esp
80101536:	ff 75 e4             	push   -0x1c(%ebp)
80101539:	e8 97 ec ff ff       	call   801001d5 <brelse>
    bfree(ip->dev, ip->addrs[NDIRECT]);
8010153e:	8b 06                	mov    (%esi),%eax
80101540:	8b 96 8c 00 00 00    	mov    0x8c(%esi),%edx
80101546:	e8 26 fd ff ff       	call   80101271 <bfree>
    ip->addrs[NDIRECT] = 0;
8010154b:	c7 86 8c 00 00 00 00 	movl   $0x0,0x8c(%esi)
80101552:	00 00 00 
80101555:	83 c4 10             	add    $0x10,%esp
80101558:	eb 8b                	jmp    801014e5 <itrunc+0x3d>

8010155a <idup>:
{
8010155a:	55                   	push   %ebp
8010155b:	89 e5                	mov    %esp,%ebp
8010155d:	53                   	push   %ebx
8010155e:	83 ec 10             	sub    $0x10,%esp
80101561:	8b 5d 08             	mov    0x8(%ebp),%ebx
  acquire(&icache.lock);
80101564:	68 60 e9 10 80       	push   $0x8010e960
80101569:	e8 0c 26 00 00       	call   80103b7a <acquire>
  ip->ref++;
8010156e:	8b 43 08             	mov    0x8(%ebx),%eax
80101571:	83 c0 01             	add    $0x1,%eax
80101574:	89 43 08             	mov    %eax,0x8(%ebx)
  release(&icache.lock);
80101577:	c7 04 24 60 e9 10 80 	movl   $0x8010e960,(%esp)
8010157e:	e8 5c 26 00 00       	call   80103bdf <release>
}
80101583:	89 d8                	mov    %ebx,%eax
80101585:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80101588:	c9                   	leave  
80101589:	c3                   	ret    

8010158a <ilock>:
{
8010158a:	55                   	push   %ebp
8010158b:	89 e5                	mov    %esp,%ebp
8010158d:	56                   	push   %esi
8010158e:	53                   	push   %ebx
8010158f:	8b 5d 08             	mov    0x8(%ebp),%ebx
  if(ip == 0 || ip->ref < 1)
80101592:	85 db                	test   %ebx,%ebx
80101594:	74 22                	je     801015b8 <ilock+0x2e>
80101596:	83 7b 08 00          	cmpl   $0x0,0x8(%ebx)
8010159a:	7e 1c                	jle    801015b8 <ilock+0x2e>
  acquiresleep(&ip->lock);
8010159c:	83 ec 0c             	sub    $0xc,%esp
8010159f:	8d 43 0c             	lea    0xc(%ebx),%eax
801015a2:	50                   	push   %eax
801015a3:	e8 be 23 00 00       	call   80103966 <acquiresleep>
  if(ip->valid == 0){
801015a8:	83 c4 10             	add    $0x10,%esp
801015ab:	83 7b 4c 00          	cmpl   $0x0,0x4c(%ebx)
801015af:	74 14                	je     801015c5 <ilock+0x3b>
}
801015b1:	8d 65 f8             	lea    -0x8(%ebp),%esp
801015b4:	5b                   	pop    %ebx
801015b5:	5e                   	pop    %esi
801015b6:	5d                   	pop    %ebp
801015b7:	c3                   	ret    
    panic("ilock");
801015b8:	83 ec 0c             	sub    $0xc,%esp
801015bb:	68 0a 67 10 80       	push   $0x8010670a
801015c0:	e8 83 ed ff ff       	call   80100348 <panic>
    bp = bread(ip->dev, IBLOCK(ip->inum, sb));
801015c5:	8b 43 04             	mov    0x4(%ebx),%eax
801015c8:	c1 e8 03             	shr    $0x3,%eax
801015cb:	83 ec 08             	sub    $0x8,%esp
801015ce:	03 05 c8 05 11 80    	add    0x801105c8,%eax
801015d4:	50                   	push   %eax
801015d5:	ff 33                	push   (%ebx)
801015d7:	e8 90 eb ff ff       	call   8010016c <bread>
801015dc:	89 c6                	mov    %eax,%esi
    dip = (struct dinode*)bp->data + ip->inum%IPB;
801015de:	8b 43 04             	mov    0x4(%ebx),%eax
801015e1:	83 e0 07             	and    $0x7,%eax
801015e4:	c1 e0 06             	shl    $0x6,%eax
801015e7:	8d 44 06 5c          	lea    0x5c(%esi,%eax,1),%eax
    ip->type = dip->type;
801015eb:	0f b7 10             	movzwl (%eax),%edx
801015ee:	66 89 53 50          	mov    %dx,0x50(%ebx)
    ip->major = dip->major;
801015f2:	0f b7 50 02          	movzwl 0x2(%eax),%edx
801015f6:	66 89 53 52          	mov    %dx,0x52(%ebx)
    ip->minor = dip->minor;
801015fa:	0f b7 50 04          	movzwl 0x4(%eax),%edx
801015fe:	66 89 53 54          	mov    %dx,0x54(%ebx)
    ip->nlink = dip->nlink;
80101602:	0f b7 50 06          	movzwl 0x6(%eax),%edx
80101606:	66 89 53 56          	mov    %dx,0x56(%ebx)
    ip->size = dip->size;
8010160a:	8b 50 08             	mov    0x8(%eax),%edx
8010160d:	89 53 58             	mov    %edx,0x58(%ebx)
    memmove(ip->addrs, dip->addrs, sizeof(ip->addrs));
80101610:	83 c0 0c             	add    $0xc,%eax
80101613:	8d 53 5c             	lea    0x5c(%ebx),%edx
80101616:	83 c4 0c             	add    $0xc,%esp
80101619:	6a 34                	push   $0x34
8010161b:	50                   	push   %eax
8010161c:	52                   	push   %edx
8010161d:	e8 7c 26 00 00       	call   80103c9e <memmove>
    brelse(bp);
80101622:	89 34 24             	mov    %esi,(%esp)
80101625:	e8 ab eb ff ff       	call   801001d5 <brelse>
    ip->valid = 1;
8010162a:	c7 43 4c 01 00 00 00 	movl   $0x1,0x4c(%ebx)
    if(ip->type == 0)
80101631:	83 c4 10             	add    $0x10,%esp
80101634:	66 83 7b 50 00       	cmpw   $0x0,0x50(%ebx)
80101639:	0f 85 72 ff ff ff    	jne    801015b1 <ilock+0x27>
      panic("ilock: no type");
8010163f:	83 ec 0c             	sub    $0xc,%esp
80101642:	68 10 67 10 80       	push   $0x80106710
80101647:	e8 fc ec ff ff       	call   80100348 <panic>

8010164c <iunlock>:
{
8010164c:	55                   	push   %ebp
8010164d:	89 e5                	mov    %esp,%ebp
8010164f:	56                   	push   %esi
80101650:	53                   	push   %ebx
80101651:	8b 5d 08             	mov    0x8(%ebp),%ebx
  if(ip == 0 || !holdingsleep(&ip->lock) || ip->ref < 1)
80101654:	85 db                	test   %ebx,%ebx
80101656:	74 2c                	je     80101684 <iunlock+0x38>
80101658:	8d 73 0c             	lea    0xc(%ebx),%esi
8010165b:	83 ec 0c             	sub    $0xc,%esp
8010165e:	56                   	push   %esi
8010165f:	e8 8c 23 00 00       	call   801039f0 <holdingsleep>
80101664:	83 c4 10             	add    $0x10,%esp
80101667:	85 c0                	test   %eax,%eax
80101669:	74 19                	je     80101684 <iunlock+0x38>
8010166b:	83 7b 08 00          	cmpl   $0x0,0x8(%ebx)
8010166f:	7e 13                	jle    80101684 <iunlock+0x38>
  releasesleep(&ip->lock);
80101671:	83 ec 0c             	sub    $0xc,%esp
80101674:	56                   	push   %esi
80101675:	e8 3b 23 00 00       	call   801039b5 <releasesleep>
}
8010167a:	83 c4 10             	add    $0x10,%esp
8010167d:	8d 65 f8             	lea    -0x8(%ebp),%esp
80101680:	5b                   	pop    %ebx
80101681:	5e                   	pop    %esi
80101682:	5d                   	pop    %ebp
80101683:	c3                   	ret    
    panic("iunlock");
80101684:	83 ec 0c             	sub    $0xc,%esp
80101687:	68 1f 67 10 80       	push   $0x8010671f
8010168c:	e8 b7 ec ff ff       	call   80100348 <panic>

80101691 <iput>:
{
80101691:	55                   	push   %ebp
80101692:	89 e5                	mov    %esp,%ebp
80101694:	57                   	push   %edi
80101695:	56                   	push   %esi
80101696:	53                   	push   %ebx
80101697:	83 ec 18             	sub    $0x18,%esp
8010169a:	8b 5d 08             	mov    0x8(%ebp),%ebx
  acquiresleep(&ip->lock);
8010169d:	8d 73 0c             	lea    0xc(%ebx),%esi
801016a0:	56                   	push   %esi
801016a1:	e8 c0 22 00 00       	call   80103966 <acquiresleep>
  if(ip->valid && ip->nlink == 0){
801016a6:	83 c4 10             	add    $0x10,%esp
801016a9:	83 7b 4c 00          	cmpl   $0x0,0x4c(%ebx)
801016ad:	74 07                	je     801016b6 <iput+0x25>
801016af:	66 83 7b 56 00       	cmpw   $0x0,0x56(%ebx)
801016b4:	74 35                	je     801016eb <iput+0x5a>
  releasesleep(&ip->lock);
801016b6:	83 ec 0c             	sub    $0xc,%esp
801016b9:	56                   	push   %esi
801016ba:	e8 f6 22 00 00       	call   801039b5 <releasesleep>
  acquire(&icache.lock);
801016bf:	c7 04 24 60 e9 10 80 	movl   $0x8010e960,(%esp)
801016c6:	e8 af 24 00 00       	call   80103b7a <acquire>
  ip->ref--;
801016cb:	8b 43 08             	mov    0x8(%ebx),%eax
801016ce:	83 e8 01             	sub    $0x1,%eax
801016d1:	89 43 08             	mov    %eax,0x8(%ebx)
  release(&icache.lock);
801016d4:	c7 04 24 60 e9 10 80 	movl   $0x8010e960,(%esp)
801016db:	e8 ff 24 00 00       	call   80103bdf <release>
}
801016e0:	83 c4 10             	add    $0x10,%esp
801016e3:	8d 65 f4             	lea    -0xc(%ebp),%esp
801016e6:	5b                   	pop    %ebx
801016e7:	5e                   	pop    %esi
801016e8:	5f                   	pop    %edi
801016e9:	5d                   	pop    %ebp
801016ea:	c3                   	ret    
    acquire(&icache.lock);
801016eb:	83 ec 0c             	sub    $0xc,%esp
801016ee:	68 60 e9 10 80       	push   $0x8010e960
801016f3:	e8 82 24 00 00       	call   80103b7a <acquire>
    int r = ip->ref;
801016f8:	8b 7b 08             	mov    0x8(%ebx),%edi
    release(&icache.lock);
801016fb:	c7 04 24 60 e9 10 80 	movl   $0x8010e960,(%esp)
80101702:	e8 d8 24 00 00       	call   80103bdf <release>
    if(r == 1){
80101707:	83 c4 10             	add    $0x10,%esp
8010170a:	83 ff 01             	cmp    $0x1,%edi
8010170d:	75 a7                	jne    801016b6 <iput+0x25>
      itrunc(ip);
8010170f:	89 d8                	mov    %ebx,%eax
80101711:	e8 92 fd ff ff       	call   801014a8 <itrunc>
      ip->type = 0;
80101716:	66 c7 43 50 00 00    	movw   $0x0,0x50(%ebx)
      iupdate(ip);
8010171c:	83 ec 0c             	sub    $0xc,%esp
8010171f:	53                   	push   %ebx
80101720:	e8 04 fd ff ff       	call   80101429 <iupdate>
      ip->valid = 0;
80101725:	c7 43 4c 00 00 00 00 	movl   $0x0,0x4c(%ebx)
8010172c:	83 c4 10             	add    $0x10,%esp
8010172f:	eb 85                	jmp    801016b6 <iput+0x25>

80101731 <iunlockput>:
{
80101731:	55                   	push   %ebp
80101732:	89 e5                	mov    %esp,%ebp
80101734:	53                   	push   %ebx
80101735:	83 ec 10             	sub    $0x10,%esp
80101738:	8b 5d 08             	mov    0x8(%ebp),%ebx
  iunlock(ip);
8010173b:	53                   	push   %ebx
8010173c:	e8 0b ff ff ff       	call   8010164c <iunlock>
  iput(ip);
80101741:	89 1c 24             	mov    %ebx,(%esp)
80101744:	e8 48 ff ff ff       	call   80101691 <iput>
}
80101749:	83 c4 10             	add    $0x10,%esp
8010174c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
8010174f:	c9                   	leave  
80101750:	c3                   	ret    

80101751 <stati>:
{
80101751:	55                   	push   %ebp
80101752:	89 e5                	mov    %esp,%ebp
80101754:	8b 55 08             	mov    0x8(%ebp),%edx
80101757:	8b 45 0c             	mov    0xc(%ebp),%eax
  st->dev = ip->dev;
8010175a:	8b 0a                	mov    (%edx),%ecx
8010175c:	89 48 04             	mov    %ecx,0x4(%eax)
  st->ino = ip->inum;
8010175f:	8b 4a 04             	mov    0x4(%edx),%ecx
80101762:	89 48 08             	mov    %ecx,0x8(%eax)
  st->type = ip->type;
80101765:	0f b7 4a 50          	movzwl 0x50(%edx),%ecx
80101769:	66 89 08             	mov    %cx,(%eax)
  st->nlink = ip->nlink;
8010176c:	0f b7 4a 56          	movzwl 0x56(%edx),%ecx
80101770:	66 89 48 0c          	mov    %cx,0xc(%eax)
  st->size = ip->size;
80101774:	8b 52 58             	mov    0x58(%edx),%edx
80101777:	89 50 10             	mov    %edx,0x10(%eax)
}
8010177a:	5d                   	pop    %ebp
8010177b:	c3                   	ret    

8010177c <readi>:
{
8010177c:	55                   	push   %ebp
8010177d:	89 e5                	mov    %esp,%ebp
8010177f:	57                   	push   %edi
80101780:	56                   	push   %esi
80101781:	53                   	push   %ebx
80101782:	83 ec 1c             	sub    $0x1c,%esp
80101785:	8b 7d 10             	mov    0x10(%ebp),%edi
  if(ip->type == T_DEV){
80101788:	8b 45 08             	mov    0x8(%ebp),%eax
8010178b:	66 83 78 50 03       	cmpw   $0x3,0x50(%eax)
80101790:	74 2c                	je     801017be <readi+0x42>
  if(off > ip->size || off + n < off)
80101792:	8b 45 08             	mov    0x8(%ebp),%eax
80101795:	8b 40 58             	mov    0x58(%eax),%eax
80101798:	39 f8                	cmp    %edi,%eax
8010179a:	0f 82 cb 00 00 00    	jb     8010186b <readi+0xef>
801017a0:	89 fa                	mov    %edi,%edx
801017a2:	03 55 14             	add    0x14(%ebp),%edx
801017a5:	0f 82 c7 00 00 00    	jb     80101872 <readi+0xf6>
  if(off + n > ip->size)
801017ab:	39 d0                	cmp    %edx,%eax
801017ad:	73 05                	jae    801017b4 <readi+0x38>
    n = ip->size - off;
801017af:	29 f8                	sub    %edi,%eax
801017b1:	89 45 14             	mov    %eax,0x14(%ebp)
  for(tot=0; tot<n; tot+=m, off+=m, dst+=m){
801017b4:	be 00 00 00 00       	mov    $0x0,%esi
801017b9:	e9 8f 00 00 00       	jmp    8010184d <readi+0xd1>
    if(ip->major < 0 || ip->major >= NDEV || !devsw[ip->major].read)
801017be:	0f b7 40 52          	movzwl 0x52(%eax),%eax
801017c2:	66 83 f8 09          	cmp    $0x9,%ax
801017c6:	0f 87 91 00 00 00    	ja     8010185d <readi+0xe1>
801017cc:	98                   	cwtl   
801017cd:	8b 04 c5 00 e9 10 80 	mov    -0x7fef1700(,%eax,8),%eax
801017d4:	85 c0                	test   %eax,%eax
801017d6:	0f 84 88 00 00 00    	je     80101864 <readi+0xe8>
    return devsw[ip->major].read(ip, dst, n);
801017dc:	83 ec 04             	sub    $0x4,%esp
801017df:	ff 75 14             	push   0x14(%ebp)
801017e2:	ff 75 0c             	push   0xc(%ebp)
801017e5:	ff 75 08             	push   0x8(%ebp)
801017e8:	ff d0                	call   *%eax
801017ea:	83 c4 10             	add    $0x10,%esp
801017ed:	eb 66                	jmp    80101855 <readi+0xd9>
    bp = bread(ip->dev, bmap(ip, off/BSIZE));
801017ef:	89 fa                	mov    %edi,%edx
801017f1:	c1 ea 09             	shr    $0x9,%edx
801017f4:	8b 45 08             	mov    0x8(%ebp),%eax
801017f7:	e8 ec f8 ff ff       	call   801010e8 <bmap>
801017fc:	83 ec 08             	sub    $0x8,%esp
801017ff:	50                   	push   %eax
80101800:	8b 45 08             	mov    0x8(%ebp),%eax
80101803:	ff 30                	push   (%eax)
80101805:	e8 62 e9 ff ff       	call   8010016c <bread>
8010180a:	89 c1                	mov    %eax,%ecx
    m = min(n - tot, BSIZE - off%BSIZE);
8010180c:	89 f8                	mov    %edi,%eax
8010180e:	25 ff 01 00 00       	and    $0x1ff,%eax
80101813:	bb 00 02 00 00       	mov    $0x200,%ebx
80101818:	29 c3                	sub    %eax,%ebx
8010181a:	8b 55 14             	mov    0x14(%ebp),%edx
8010181d:	29 f2                	sub    %esi,%edx
8010181f:	39 d3                	cmp    %edx,%ebx
80101821:	0f 47 da             	cmova  %edx,%ebx
    memmove(dst, bp->data + off%BSIZE, m);
80101824:	83 c4 0c             	add    $0xc,%esp
80101827:	53                   	push   %ebx
80101828:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
8010182b:	8d 44 01 5c          	lea    0x5c(%ecx,%eax,1),%eax
8010182f:	50                   	push   %eax
80101830:	ff 75 0c             	push   0xc(%ebp)
80101833:	e8 66 24 00 00       	call   80103c9e <memmove>
    brelse(bp);
80101838:	83 c4 04             	add    $0x4,%esp
8010183b:	ff 75 e4             	push   -0x1c(%ebp)
8010183e:	e8 92 e9 ff ff       	call   801001d5 <brelse>
  for(tot=0; tot<n; tot+=m, off+=m, dst+=m){
80101843:	01 de                	add    %ebx,%esi
80101845:	01 df                	add    %ebx,%edi
80101847:	01 5d 0c             	add    %ebx,0xc(%ebp)
8010184a:	83 c4 10             	add    $0x10,%esp
8010184d:	39 75 14             	cmp    %esi,0x14(%ebp)
80101850:	77 9d                	ja     801017ef <readi+0x73>
  return n;
80101852:	8b 45 14             	mov    0x14(%ebp),%eax
}
80101855:	8d 65 f4             	lea    -0xc(%ebp),%esp
80101858:	5b                   	pop    %ebx
80101859:	5e                   	pop    %esi
8010185a:	5f                   	pop    %edi
8010185b:	5d                   	pop    %ebp
8010185c:	c3                   	ret    
      return -1;
8010185d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80101862:	eb f1                	jmp    80101855 <readi+0xd9>
80101864:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80101869:	eb ea                	jmp    80101855 <readi+0xd9>
    return -1;
8010186b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80101870:	eb e3                	jmp    80101855 <readi+0xd9>
80101872:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80101877:	eb dc                	jmp    80101855 <readi+0xd9>

80101879 <writei>:
{
80101879:	55                   	push   %ebp
8010187a:	89 e5                	mov    %esp,%ebp
8010187c:	57                   	push   %edi
8010187d:	56                   	push   %esi
8010187e:	53                   	push   %ebx
8010187f:	83 ec 1c             	sub    $0x1c,%esp
80101882:	8b 7d 10             	mov    0x10(%ebp),%edi
  if(ip->type == T_DEV){
80101885:	8b 45 08             	mov    0x8(%ebp),%eax
80101888:	66 83 78 50 03       	cmpw   $0x3,0x50(%eax)
8010188d:	74 2e                	je     801018bd <writei+0x44>
  if(off > ip->size || off + n < off)
8010188f:	8b 45 08             	mov    0x8(%ebp),%eax
80101892:	39 78 58             	cmp    %edi,0x58(%eax)
80101895:	0f 82 f5 00 00 00    	jb     80101990 <writei+0x117>
8010189b:	89 f8                	mov    %edi,%eax
8010189d:	03 45 14             	add    0x14(%ebp),%eax
801018a0:	0f 82 f1 00 00 00    	jb     80101997 <writei+0x11e>
  if(off + n > MAXFILE*BSIZE)
801018a6:	3d 00 18 01 00       	cmp    $0x11800,%eax
801018ab:	0f 87 ed 00 00 00    	ja     8010199e <writei+0x125>
  for(tot=0; tot<n; tot+=m, off+=m, src+=m){
801018b1:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
801018b8:	e9 93 00 00 00       	jmp    80101950 <writei+0xd7>
    if(ip->major < 0 || ip->major >= NDEV || !devsw[ip->major].write)
801018bd:	0f b7 40 52          	movzwl 0x52(%eax),%eax
801018c1:	66 83 f8 09          	cmp    $0x9,%ax
801018c5:	0f 87 b7 00 00 00    	ja     80101982 <writei+0x109>
801018cb:	98                   	cwtl   
801018cc:	8b 04 c5 04 e9 10 80 	mov    -0x7fef16fc(,%eax,8),%eax
801018d3:	85 c0                	test   %eax,%eax
801018d5:	0f 84 ae 00 00 00    	je     80101989 <writei+0x110>
    return devsw[ip->major].write(ip, src, n);
801018db:	83 ec 04             	sub    $0x4,%esp
801018de:	ff 75 14             	push   0x14(%ebp)
801018e1:	ff 75 0c             	push   0xc(%ebp)
801018e4:	ff 75 08             	push   0x8(%ebp)
801018e7:	ff d0                	call   *%eax
801018e9:	83 c4 10             	add    $0x10,%esp
801018ec:	eb 7b                	jmp    80101969 <writei+0xf0>
    bp = bread(ip->dev, bmap(ip, off/BSIZE));
801018ee:	89 fa                	mov    %edi,%edx
801018f0:	c1 ea 09             	shr    $0x9,%edx
801018f3:	8b 45 08             	mov    0x8(%ebp),%eax
801018f6:	e8 ed f7 ff ff       	call   801010e8 <bmap>
801018fb:	83 ec 08             	sub    $0x8,%esp
801018fe:	50                   	push   %eax
801018ff:	8b 45 08             	mov    0x8(%ebp),%eax
80101902:	ff 30                	push   (%eax)
80101904:	e8 63 e8 ff ff       	call   8010016c <bread>
80101909:	89 c6                	mov    %eax,%esi
    m = min(n - tot, BSIZE - off%BSIZE);
8010190b:	89 f8                	mov    %edi,%eax
8010190d:	25 ff 01 00 00       	and    $0x1ff,%eax
80101912:	bb 00 02 00 00       	mov    $0x200,%ebx
80101917:	29 c3                	sub    %eax,%ebx
80101919:	8b 55 14             	mov    0x14(%ebp),%edx
8010191c:	2b 55 e4             	sub    -0x1c(%ebp),%edx
8010191f:	39 d3                	cmp    %edx,%ebx
80101921:	0f 47 da             	cmova  %edx,%ebx
    memmove(bp->data + off%BSIZE, src, m);
80101924:	83 c4 0c             	add    $0xc,%esp
80101927:	53                   	push   %ebx
80101928:	ff 75 0c             	push   0xc(%ebp)
8010192b:	8d 44 06 5c          	lea    0x5c(%esi,%eax,1),%eax
8010192f:	50                   	push   %eax
80101930:	e8 69 23 00 00       	call   80103c9e <memmove>
    log_write(bp);
80101935:	89 34 24             	mov    %esi,(%esp)
80101938:	e8 85 0f 00 00       	call   801028c2 <log_write>
    brelse(bp);
8010193d:	89 34 24             	mov    %esi,(%esp)
80101940:	e8 90 e8 ff ff       	call   801001d5 <brelse>
  for(tot=0; tot<n; tot+=m, off+=m, src+=m){
80101945:	01 5d e4             	add    %ebx,-0x1c(%ebp)
80101948:	01 df                	add    %ebx,%edi
8010194a:	01 5d 0c             	add    %ebx,0xc(%ebp)
8010194d:	83 c4 10             	add    $0x10,%esp
80101950:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80101953:	3b 45 14             	cmp    0x14(%ebp),%eax
80101956:	72 96                	jb     801018ee <writei+0x75>
  if(n > 0 && off > ip->size){
80101958:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
8010195c:	74 08                	je     80101966 <writei+0xed>
8010195e:	8b 45 08             	mov    0x8(%ebp),%eax
80101961:	39 78 58             	cmp    %edi,0x58(%eax)
80101964:	72 0b                	jb     80101971 <writei+0xf8>
  return n;
80101966:	8b 45 14             	mov    0x14(%ebp),%eax
}
80101969:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010196c:	5b                   	pop    %ebx
8010196d:	5e                   	pop    %esi
8010196e:	5f                   	pop    %edi
8010196f:	5d                   	pop    %ebp
80101970:	c3                   	ret    
    ip->size = off;
80101971:	89 78 58             	mov    %edi,0x58(%eax)
    iupdate(ip);
80101974:	83 ec 0c             	sub    $0xc,%esp
80101977:	50                   	push   %eax
80101978:	e8 ac fa ff ff       	call   80101429 <iupdate>
8010197d:	83 c4 10             	add    $0x10,%esp
80101980:	eb e4                	jmp    80101966 <writei+0xed>
      return -1;
80101982:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80101987:	eb e0                	jmp    80101969 <writei+0xf0>
80101989:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010198e:	eb d9                	jmp    80101969 <writei+0xf0>
    return -1;
80101990:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80101995:	eb d2                	jmp    80101969 <writei+0xf0>
80101997:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010199c:	eb cb                	jmp    80101969 <writei+0xf0>
    return -1;
8010199e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801019a3:	eb c4                	jmp    80101969 <writei+0xf0>

801019a5 <namecmp>:
{
801019a5:	55                   	push   %ebp
801019a6:	89 e5                	mov    %esp,%ebp
801019a8:	83 ec 0c             	sub    $0xc,%esp
  return strncmp(s, t, DIRSIZ);
801019ab:	6a 0e                	push   $0xe
801019ad:	ff 75 0c             	push   0xc(%ebp)
801019b0:	ff 75 08             	push   0x8(%ebp)
801019b3:	e8 52 23 00 00       	call   80103d0a <strncmp>
}
801019b8:	c9                   	leave  
801019b9:	c3                   	ret    

801019ba <dirlookup>:
{
801019ba:	55                   	push   %ebp
801019bb:	89 e5                	mov    %esp,%ebp
801019bd:	57                   	push   %edi
801019be:	56                   	push   %esi
801019bf:	53                   	push   %ebx
801019c0:	83 ec 1c             	sub    $0x1c,%esp
801019c3:	8b 75 08             	mov    0x8(%ebp),%esi
801019c6:	8b 7d 0c             	mov    0xc(%ebp),%edi
  if(dp->type != T_DIR)
801019c9:	66 83 7e 50 01       	cmpw   $0x1,0x50(%esi)
801019ce:	75 07                	jne    801019d7 <dirlookup+0x1d>
  for(off = 0; off < dp->size; off += sizeof(de)){
801019d0:	bb 00 00 00 00       	mov    $0x0,%ebx
801019d5:	eb 1d                	jmp    801019f4 <dirlookup+0x3a>
    panic("dirlookup not DIR");
801019d7:	83 ec 0c             	sub    $0xc,%esp
801019da:	68 27 67 10 80       	push   $0x80106727
801019df:	e8 64 e9 ff ff       	call   80100348 <panic>
      panic("dirlookup read");
801019e4:	83 ec 0c             	sub    $0xc,%esp
801019e7:	68 39 67 10 80       	push   $0x80106739
801019ec:	e8 57 e9 ff ff       	call   80100348 <panic>
  for(off = 0; off < dp->size; off += sizeof(de)){
801019f1:	83 c3 10             	add    $0x10,%ebx
801019f4:	39 5e 58             	cmp    %ebx,0x58(%esi)
801019f7:	76 48                	jbe    80101a41 <dirlookup+0x87>
    if(readi(dp, (char*)&de, off, sizeof(de)) != sizeof(de))
801019f9:	6a 10                	push   $0x10
801019fb:	53                   	push   %ebx
801019fc:	8d 45 d8             	lea    -0x28(%ebp),%eax
801019ff:	50                   	push   %eax
80101a00:	56                   	push   %esi
80101a01:	e8 76 fd ff ff       	call   8010177c <readi>
80101a06:	83 c4 10             	add    $0x10,%esp
80101a09:	83 f8 10             	cmp    $0x10,%eax
80101a0c:	75 d6                	jne    801019e4 <dirlookup+0x2a>
    if(de.inum == 0)
80101a0e:	66 83 7d d8 00       	cmpw   $0x0,-0x28(%ebp)
80101a13:	74 dc                	je     801019f1 <dirlookup+0x37>
    if(namecmp(name, de.name) == 0){
80101a15:	83 ec 08             	sub    $0x8,%esp
80101a18:	8d 45 da             	lea    -0x26(%ebp),%eax
80101a1b:	50                   	push   %eax
80101a1c:	57                   	push   %edi
80101a1d:	e8 83 ff ff ff       	call   801019a5 <namecmp>
80101a22:	83 c4 10             	add    $0x10,%esp
80101a25:	85 c0                	test   %eax,%eax
80101a27:	75 c8                	jne    801019f1 <dirlookup+0x37>
      if(poff)
80101a29:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
80101a2d:	74 05                	je     80101a34 <dirlookup+0x7a>
        *poff = off;
80101a2f:	8b 45 10             	mov    0x10(%ebp),%eax
80101a32:	89 18                	mov    %ebx,(%eax)
      inum = de.inum;
80101a34:	0f b7 55 d8          	movzwl -0x28(%ebp),%edx
      return iget(dp->dev, inum);
80101a38:	8b 06                	mov    (%esi),%eax
80101a3a:	e8 4f f7 ff ff       	call   8010118e <iget>
80101a3f:	eb 05                	jmp    80101a46 <dirlookup+0x8c>
  return 0;
80101a41:	b8 00 00 00 00       	mov    $0x0,%eax
}
80101a46:	8d 65 f4             	lea    -0xc(%ebp),%esp
80101a49:	5b                   	pop    %ebx
80101a4a:	5e                   	pop    %esi
80101a4b:	5f                   	pop    %edi
80101a4c:	5d                   	pop    %ebp
80101a4d:	c3                   	ret    

80101a4e <namex>:
// If parent != 0, return the inode for the parent and copy the final
// path element into name, which must have room for DIRSIZ bytes.
// Must be called inside a transaction since it calls iput().
static struct inode*
namex(char *path, int nameiparent, char *name)
{
80101a4e:	55                   	push   %ebp
80101a4f:	89 e5                	mov    %esp,%ebp
80101a51:	57                   	push   %edi
80101a52:	56                   	push   %esi
80101a53:	53                   	push   %ebx
80101a54:	83 ec 1c             	sub    $0x1c,%esp
80101a57:	89 c3                	mov    %eax,%ebx
80101a59:	89 55 e0             	mov    %edx,-0x20(%ebp)
80101a5c:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
  struct inode *ip, *next;

  if(*path == '/')
80101a5f:	80 38 2f             	cmpb   $0x2f,(%eax)
80101a62:	74 17                	je     80101a7b <namex+0x2d>
    ip = iget(ROOTDEV, ROOTINO);
  else
    ip = idup(myproc()->cwd);
80101a64:	e8 67 17 00 00       	call   801031d0 <myproc>
80101a69:	83 ec 0c             	sub    $0xc,%esp
80101a6c:	ff 70 68             	push   0x68(%eax)
80101a6f:	e8 e6 fa ff ff       	call   8010155a <idup>
80101a74:	89 c6                	mov    %eax,%esi
80101a76:	83 c4 10             	add    $0x10,%esp
80101a79:	eb 53                	jmp    80101ace <namex+0x80>
    ip = iget(ROOTDEV, ROOTINO);
80101a7b:	ba 01 00 00 00       	mov    $0x1,%edx
80101a80:	b8 01 00 00 00       	mov    $0x1,%eax
80101a85:	e8 04 f7 ff ff       	call   8010118e <iget>
80101a8a:	89 c6                	mov    %eax,%esi
80101a8c:	eb 40                	jmp    80101ace <namex+0x80>

  while((path = skipelem(path, name)) != 0){
    ilock(ip);
    if(ip->type != T_DIR){
      iunlockput(ip);
80101a8e:	83 ec 0c             	sub    $0xc,%esp
80101a91:	56                   	push   %esi
80101a92:	e8 9a fc ff ff       	call   80101731 <iunlockput>
      return 0;
80101a97:	83 c4 10             	add    $0x10,%esp
80101a9a:	be 00 00 00 00       	mov    $0x0,%esi
  if(nameiparent){
    iput(ip);
    return 0;
  }
  return ip;
}
80101a9f:	89 f0                	mov    %esi,%eax
80101aa1:	8d 65 f4             	lea    -0xc(%ebp),%esp
80101aa4:	5b                   	pop    %ebx
80101aa5:	5e                   	pop    %esi
80101aa6:	5f                   	pop    %edi
80101aa7:	5d                   	pop    %ebp
80101aa8:	c3                   	ret    
    if((next = dirlookup(ip, name, 0)) == 0){
80101aa9:	83 ec 04             	sub    $0x4,%esp
80101aac:	6a 00                	push   $0x0
80101aae:	ff 75 e4             	push   -0x1c(%ebp)
80101ab1:	56                   	push   %esi
80101ab2:	e8 03 ff ff ff       	call   801019ba <dirlookup>
80101ab7:	89 c7                	mov    %eax,%edi
80101ab9:	83 c4 10             	add    $0x10,%esp
80101abc:	85 c0                	test   %eax,%eax
80101abe:	74 4a                	je     80101b0a <namex+0xbc>
    iunlockput(ip);
80101ac0:	83 ec 0c             	sub    $0xc,%esp
80101ac3:	56                   	push   %esi
80101ac4:	e8 68 fc ff ff       	call   80101731 <iunlockput>
80101ac9:	83 c4 10             	add    $0x10,%esp
    ip = next;
80101acc:	89 fe                	mov    %edi,%esi
  while((path = skipelem(path, name)) != 0){
80101ace:	8b 55 e4             	mov    -0x1c(%ebp),%edx
80101ad1:	89 d8                	mov    %ebx,%eax
80101ad3:	e8 77 f4 ff ff       	call   80100f4f <skipelem>
80101ad8:	89 c3                	mov    %eax,%ebx
80101ada:	85 c0                	test   %eax,%eax
80101adc:	74 3c                	je     80101b1a <namex+0xcc>
    ilock(ip);
80101ade:	83 ec 0c             	sub    $0xc,%esp
80101ae1:	56                   	push   %esi
80101ae2:	e8 a3 fa ff ff       	call   8010158a <ilock>
    if(ip->type != T_DIR){
80101ae7:	83 c4 10             	add    $0x10,%esp
80101aea:	66 83 7e 50 01       	cmpw   $0x1,0x50(%esi)
80101aef:	75 9d                	jne    80101a8e <namex+0x40>
    if(nameiparent && *path == '\0'){
80101af1:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
80101af5:	74 b2                	je     80101aa9 <namex+0x5b>
80101af7:	80 3b 00             	cmpb   $0x0,(%ebx)
80101afa:	75 ad                	jne    80101aa9 <namex+0x5b>
      iunlock(ip);
80101afc:	83 ec 0c             	sub    $0xc,%esp
80101aff:	56                   	push   %esi
80101b00:	e8 47 fb ff ff       	call   8010164c <iunlock>
      return ip;
80101b05:	83 c4 10             	add    $0x10,%esp
80101b08:	eb 95                	jmp    80101a9f <namex+0x51>
      iunlockput(ip);
80101b0a:	83 ec 0c             	sub    $0xc,%esp
80101b0d:	56                   	push   %esi
80101b0e:	e8 1e fc ff ff       	call   80101731 <iunlockput>
      return 0;
80101b13:	83 c4 10             	add    $0x10,%esp
80101b16:	89 fe                	mov    %edi,%esi
80101b18:	eb 85                	jmp    80101a9f <namex+0x51>
  if(nameiparent){
80101b1a:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
80101b1e:	0f 84 7b ff ff ff    	je     80101a9f <namex+0x51>
    iput(ip);
80101b24:	83 ec 0c             	sub    $0xc,%esp
80101b27:	56                   	push   %esi
80101b28:	e8 64 fb ff ff       	call   80101691 <iput>
    return 0;
80101b2d:	83 c4 10             	add    $0x10,%esp
80101b30:	89 de                	mov    %ebx,%esi
80101b32:	e9 68 ff ff ff       	jmp    80101a9f <namex+0x51>

80101b37 <dirlink>:
{
80101b37:	55                   	push   %ebp
80101b38:	89 e5                	mov    %esp,%ebp
80101b3a:	57                   	push   %edi
80101b3b:	56                   	push   %esi
80101b3c:	53                   	push   %ebx
80101b3d:	83 ec 20             	sub    $0x20,%esp
80101b40:	8b 5d 08             	mov    0x8(%ebp),%ebx
80101b43:	8b 7d 0c             	mov    0xc(%ebp),%edi
  if((ip = dirlookup(dp, name, 0)) != 0){
80101b46:	6a 00                	push   $0x0
80101b48:	57                   	push   %edi
80101b49:	53                   	push   %ebx
80101b4a:	e8 6b fe ff ff       	call   801019ba <dirlookup>
80101b4f:	83 c4 10             	add    $0x10,%esp
80101b52:	85 c0                	test   %eax,%eax
80101b54:	75 2d                	jne    80101b83 <dirlink+0x4c>
  for(off = 0; off < dp->size; off += sizeof(de)){
80101b56:	b8 00 00 00 00       	mov    $0x0,%eax
80101b5b:	89 c6                	mov    %eax,%esi
80101b5d:	39 43 58             	cmp    %eax,0x58(%ebx)
80101b60:	76 41                	jbe    80101ba3 <dirlink+0x6c>
    if(readi(dp, (char*)&de, off, sizeof(de)) != sizeof(de))
80101b62:	6a 10                	push   $0x10
80101b64:	50                   	push   %eax
80101b65:	8d 45 d8             	lea    -0x28(%ebp),%eax
80101b68:	50                   	push   %eax
80101b69:	53                   	push   %ebx
80101b6a:	e8 0d fc ff ff       	call   8010177c <readi>
80101b6f:	83 c4 10             	add    $0x10,%esp
80101b72:	83 f8 10             	cmp    $0x10,%eax
80101b75:	75 1f                	jne    80101b96 <dirlink+0x5f>
    if(de.inum == 0)
80101b77:	66 83 7d d8 00       	cmpw   $0x0,-0x28(%ebp)
80101b7c:	74 25                	je     80101ba3 <dirlink+0x6c>
  for(off = 0; off < dp->size; off += sizeof(de)){
80101b7e:	8d 46 10             	lea    0x10(%esi),%eax
80101b81:	eb d8                	jmp    80101b5b <dirlink+0x24>
    iput(ip);
80101b83:	83 ec 0c             	sub    $0xc,%esp
80101b86:	50                   	push   %eax
80101b87:	e8 05 fb ff ff       	call   80101691 <iput>
    return -1;
80101b8c:	83 c4 10             	add    $0x10,%esp
80101b8f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80101b94:	eb 3d                	jmp    80101bd3 <dirlink+0x9c>
      panic("dirlink read");
80101b96:	83 ec 0c             	sub    $0xc,%esp
80101b99:	68 48 67 10 80       	push   $0x80106748
80101b9e:	e8 a5 e7 ff ff       	call   80100348 <panic>
  strncpy(de.name, name, DIRSIZ);
80101ba3:	83 ec 04             	sub    $0x4,%esp
80101ba6:	6a 0e                	push   $0xe
80101ba8:	57                   	push   %edi
80101ba9:	8d 7d d8             	lea    -0x28(%ebp),%edi
80101bac:	8d 45 da             	lea    -0x26(%ebp),%eax
80101baf:	50                   	push   %eax
80101bb0:	e8 94 21 00 00       	call   80103d49 <strncpy>
  de.inum = inum;
80101bb5:	8b 45 10             	mov    0x10(%ebp),%eax
80101bb8:	66 89 45 d8          	mov    %ax,-0x28(%ebp)
  if(writei(dp, (char*)&de, off, sizeof(de)) != sizeof(de))
80101bbc:	6a 10                	push   $0x10
80101bbe:	56                   	push   %esi
80101bbf:	57                   	push   %edi
80101bc0:	53                   	push   %ebx
80101bc1:	e8 b3 fc ff ff       	call   80101879 <writei>
80101bc6:	83 c4 20             	add    $0x20,%esp
80101bc9:	83 f8 10             	cmp    $0x10,%eax
80101bcc:	75 0d                	jne    80101bdb <dirlink+0xa4>
  return 0;
80101bce:	b8 00 00 00 00       	mov    $0x0,%eax
}
80101bd3:	8d 65 f4             	lea    -0xc(%ebp),%esp
80101bd6:	5b                   	pop    %ebx
80101bd7:	5e                   	pop    %esi
80101bd8:	5f                   	pop    %edi
80101bd9:	5d                   	pop    %ebp
80101bda:	c3                   	ret    
    panic("dirlink");
80101bdb:	83 ec 0c             	sub    $0xc,%esp
80101bde:	68 38 6d 10 80       	push   $0x80106d38
80101be3:	e8 60 e7 ff ff       	call   80100348 <panic>

80101be8 <namei>:

struct inode*
namei(char *path)
{
80101be8:	55                   	push   %ebp
80101be9:	89 e5                	mov    %esp,%ebp
80101beb:	83 ec 18             	sub    $0x18,%esp
  char name[DIRSIZ];
  return namex(path, 0, name);
80101bee:	8d 4d ea             	lea    -0x16(%ebp),%ecx
80101bf1:	ba 00 00 00 00       	mov    $0x0,%edx
80101bf6:	8b 45 08             	mov    0x8(%ebp),%eax
80101bf9:	e8 50 fe ff ff       	call   80101a4e <namex>
}
80101bfe:	c9                   	leave  
80101bff:	c3                   	ret    

80101c00 <nameiparent>:

struct inode*
nameiparent(char *path, char *name)
{
80101c00:	55                   	push   %ebp
80101c01:	89 e5                	mov    %esp,%ebp
80101c03:	83 ec 08             	sub    $0x8,%esp
  return namex(path, 1, name);
80101c06:	8b 4d 0c             	mov    0xc(%ebp),%ecx
80101c09:	ba 01 00 00 00       	mov    $0x1,%edx
80101c0e:	8b 45 08             	mov    0x8(%ebp),%eax
80101c11:	e8 38 fe ff ff       	call   80101a4e <namex>
}
80101c16:	c9                   	leave  
80101c17:	c3                   	ret    

80101c18 <idewait>:
static void idestart(struct buf*);

// Wait for IDE disk to become ready.
static int
idewait(int checkerr)
{
80101c18:	89 c1                	mov    %eax,%ecx
  asm volatile("in %1,%0" : "=a" (data) : "d" (port));
80101c1a:	ba f7 01 00 00       	mov    $0x1f7,%edx
80101c1f:	ec                   	in     (%dx),%al
  int r;

  while(((r = inb(0x1f7)) & (IDE_BSY|IDE_DRDY)) != IDE_DRDY)
80101c20:	89 c2                	mov    %eax,%edx
80101c22:	83 e2 c0             	and    $0xffffffc0,%edx
80101c25:	80 fa 40             	cmp    $0x40,%dl
80101c28:	75 f0                	jne    80101c1a <idewait+0x2>
    ;
  if(checkerr && (r & (IDE_DF|IDE_ERR)) != 0)
80101c2a:	85 c9                	test   %ecx,%ecx
80101c2c:	74 09                	je     80101c37 <idewait+0x1f>
80101c2e:	a8 21                	test   $0x21,%al
80101c30:	75 08                	jne    80101c3a <idewait+0x22>
    return -1;
  return 0;
80101c32:	b9 00 00 00 00       	mov    $0x0,%ecx
}
80101c37:	89 c8                	mov    %ecx,%eax
80101c39:	c3                   	ret    
    return -1;
80101c3a:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
80101c3f:	eb f6                	jmp    80101c37 <idewait+0x1f>

80101c41 <idestart>:
}

// Start the request for b.  Caller must hold idelock.
static void
idestart(struct buf *b)
{
80101c41:	55                   	push   %ebp
80101c42:	89 e5                	mov    %esp,%ebp
80101c44:	56                   	push   %esi
80101c45:	53                   	push   %ebx
  if(b == 0)
80101c46:	85 c0                	test   %eax,%eax
80101c48:	0f 84 8f 00 00 00    	je     80101cdd <idestart+0x9c>
80101c4e:	89 c6                	mov    %eax,%esi
    panic("idestart");
  if(b->blockno >= FSSIZE)
80101c50:	8b 58 08             	mov    0x8(%eax),%ebx
80101c53:	81 fb e7 03 00 00    	cmp    $0x3e7,%ebx
80101c59:	0f 87 8b 00 00 00    	ja     80101cea <idestart+0xa9>
  int read_cmd = (sector_per_block == 1) ? IDE_CMD_READ :  IDE_CMD_RDMUL;
  int write_cmd = (sector_per_block == 1) ? IDE_CMD_WRITE : IDE_CMD_WRMUL;

  if (sector_per_block > 7) panic("idestart");

  idewait(0);
80101c5f:	b8 00 00 00 00       	mov    $0x0,%eax
80101c64:	e8 af ff ff ff       	call   80101c18 <idewait>
  asm volatile("out %0,%1" : : "a" (data), "d" (port));
80101c69:	b8 00 00 00 00       	mov    $0x0,%eax
80101c6e:	ba f6 03 00 00       	mov    $0x3f6,%edx
80101c73:	ee                   	out    %al,(%dx)
80101c74:	b8 01 00 00 00       	mov    $0x1,%eax
80101c79:	ba f2 01 00 00       	mov    $0x1f2,%edx
80101c7e:	ee                   	out    %al,(%dx)
80101c7f:	ba f3 01 00 00       	mov    $0x1f3,%edx
80101c84:	89 d8                	mov    %ebx,%eax
80101c86:	ee                   	out    %al,(%dx)
  outb(0x3f6, 0);  // generate interrupt
  outb(0x1f2, sector_per_block);  // number of sectors
  outb(0x1f3, sector & 0xff);
  outb(0x1f4, (sector >> 8) & 0xff);
80101c87:	0f b6 c7             	movzbl %bh,%eax
80101c8a:	ba f4 01 00 00       	mov    $0x1f4,%edx
80101c8f:	ee                   	out    %al,(%dx)
  outb(0x1f5, (sector >> 16) & 0xff);
80101c90:	89 d8                	mov    %ebx,%eax
80101c92:	c1 f8 10             	sar    $0x10,%eax
80101c95:	ba f5 01 00 00       	mov    $0x1f5,%edx
80101c9a:	ee                   	out    %al,(%dx)
  outb(0x1f6, 0xe0 | ((b->dev&1)<<4) | ((sector>>24)&0x0f));
80101c9b:	0f b6 46 04          	movzbl 0x4(%esi),%eax
80101c9f:	c1 e0 04             	shl    $0x4,%eax
80101ca2:	83 e0 10             	and    $0x10,%eax
80101ca5:	c1 fb 18             	sar    $0x18,%ebx
80101ca8:	83 e3 0f             	and    $0xf,%ebx
80101cab:	09 d8                	or     %ebx,%eax
80101cad:	83 c8 e0             	or     $0xffffffe0,%eax
80101cb0:	ba f6 01 00 00       	mov    $0x1f6,%edx
80101cb5:	ee                   	out    %al,(%dx)
  if(b->flags & B_DIRTY){
80101cb6:	f6 06 04             	testb  $0x4,(%esi)
80101cb9:	74 3c                	je     80101cf7 <idestart+0xb6>
80101cbb:	b8 30 00 00 00       	mov    $0x30,%eax
80101cc0:	ba f7 01 00 00       	mov    $0x1f7,%edx
80101cc5:	ee                   	out    %al,(%dx)
    outb(0x1f7, write_cmd);
    outsl(0x1f0, b->data, BSIZE/4);
80101cc6:	83 c6 5c             	add    $0x5c,%esi
  asm volatile("cld; rep outsl" :
80101cc9:	b9 80 00 00 00       	mov    $0x80,%ecx
80101cce:	ba f0 01 00 00       	mov    $0x1f0,%edx
80101cd3:	fc                   	cld    
80101cd4:	f3 6f                	rep outsl %ds:(%esi),(%dx)
  } else {
    outb(0x1f7, read_cmd);
  }
}
80101cd6:	8d 65 f8             	lea    -0x8(%ebp),%esp
80101cd9:	5b                   	pop    %ebx
80101cda:	5e                   	pop    %esi
80101cdb:	5d                   	pop    %ebp
80101cdc:	c3                   	ret    
    panic("idestart");
80101cdd:	83 ec 0c             	sub    $0xc,%esp
80101ce0:	68 ab 67 10 80       	push   $0x801067ab
80101ce5:	e8 5e e6 ff ff       	call   80100348 <panic>
    panic("incorrect blockno");
80101cea:	83 ec 0c             	sub    $0xc,%esp
80101ced:	68 b4 67 10 80       	push   $0x801067b4
80101cf2:	e8 51 e6 ff ff       	call   80100348 <panic>
  asm volatile("out %0,%1" : : "a" (data), "d" (port));
80101cf7:	b8 20 00 00 00       	mov    $0x20,%eax
80101cfc:	ba f7 01 00 00       	mov    $0x1f7,%edx
80101d01:	ee                   	out    %al,(%dx)
}
80101d02:	eb d2                	jmp    80101cd6 <idestart+0x95>

80101d04 <ideinit>:
{
80101d04:	55                   	push   %ebp
80101d05:	89 e5                	mov    %esp,%ebp
80101d07:	83 ec 10             	sub    $0x10,%esp
  initlock(&idelock, "ide");
80101d0a:	68 c6 67 10 80       	push   $0x801067c6
80101d0f:	68 00 06 11 80       	push   $0x80110600
80101d14:	e8 25 1d 00 00       	call   80103a3e <initlock>
  ioapicenable(IRQ_IDE, ncpu - 1);
80101d19:	83 c4 08             	add    $0x8,%esp
80101d1c:	a1 84 07 11 80       	mov    0x80110784,%eax
80101d21:	83 e8 01             	sub    $0x1,%eax
80101d24:	50                   	push   %eax
80101d25:	6a 0e                	push   $0xe
80101d27:	e8 50 02 00 00       	call   80101f7c <ioapicenable>
  idewait(0);
80101d2c:	b8 00 00 00 00       	mov    $0x0,%eax
80101d31:	e8 e2 fe ff ff       	call   80101c18 <idewait>
80101d36:	b8 f0 ff ff ff       	mov    $0xfffffff0,%eax
80101d3b:	ba f6 01 00 00       	mov    $0x1f6,%edx
80101d40:	ee                   	out    %al,(%dx)
  for(i=0; i<1000; i++){
80101d41:	83 c4 10             	add    $0x10,%esp
80101d44:	b9 00 00 00 00       	mov    $0x0,%ecx
80101d49:	81 f9 e7 03 00 00    	cmp    $0x3e7,%ecx
80101d4f:	7f 19                	jg     80101d6a <ideinit+0x66>
  asm volatile("in %1,%0" : "=a" (data) : "d" (port));
80101d51:	ba f7 01 00 00       	mov    $0x1f7,%edx
80101d56:	ec                   	in     (%dx),%al
    if(inb(0x1f7) != 0){
80101d57:	84 c0                	test   %al,%al
80101d59:	75 05                	jne    80101d60 <ideinit+0x5c>
  for(i=0; i<1000; i++){
80101d5b:	83 c1 01             	add    $0x1,%ecx
80101d5e:	eb e9                	jmp    80101d49 <ideinit+0x45>
      havedisk1 = 1;
80101d60:	c7 05 e0 05 11 80 01 	movl   $0x1,0x801105e0
80101d67:	00 00 00 
  asm volatile("out %0,%1" : : "a" (data), "d" (port));
80101d6a:	b8 e0 ff ff ff       	mov    $0xffffffe0,%eax
80101d6f:	ba f6 01 00 00       	mov    $0x1f6,%edx
80101d74:	ee                   	out    %al,(%dx)
}
80101d75:	c9                   	leave  
80101d76:	c3                   	ret    

80101d77 <ideintr>:

// Interrupt handler.
void
ideintr(void)
{
80101d77:	55                   	push   %ebp
80101d78:	89 e5                	mov    %esp,%ebp
80101d7a:	57                   	push   %edi
80101d7b:	53                   	push   %ebx
  struct buf *b;

  // First queued buffer is the active request.
  acquire(&idelock);
80101d7c:	83 ec 0c             	sub    $0xc,%esp
80101d7f:	68 00 06 11 80       	push   $0x80110600
80101d84:	e8 f1 1d 00 00       	call   80103b7a <acquire>

  if((b = idequeue) == 0){
80101d89:	8b 1d e4 05 11 80    	mov    0x801105e4,%ebx
80101d8f:	83 c4 10             	add    $0x10,%esp
80101d92:	85 db                	test   %ebx,%ebx
80101d94:	74 4a                	je     80101de0 <ideintr+0x69>
    release(&idelock);
    return;
  }
  idequeue = b->qnext;
80101d96:	8b 43 58             	mov    0x58(%ebx),%eax
80101d99:	a3 e4 05 11 80       	mov    %eax,0x801105e4

  // Read data if needed.
  if(!(b->flags & B_DIRTY) && idewait(1) >= 0)
80101d9e:	f6 03 04             	testb  $0x4,(%ebx)
80101da1:	74 4f                	je     80101df2 <ideintr+0x7b>
    insl(0x1f0, b->data, BSIZE/4);

  // Wake process waiting for this buf.
  b->flags |= B_VALID;
80101da3:	8b 03                	mov    (%ebx),%eax
80101da5:	83 c8 02             	or     $0x2,%eax
80101da8:	89 03                	mov    %eax,(%ebx)
  b->flags &= ~B_DIRTY;
80101daa:	83 e0 fb             	and    $0xfffffffb,%eax
80101dad:	89 03                	mov    %eax,(%ebx)
  wakeup(b);
80101daf:	83 ec 0c             	sub    $0xc,%esp
80101db2:	53                   	push   %ebx
80101db3:	e8 2c 1a 00 00       	call   801037e4 <wakeup>

  // Start disk on next buf in queue.
  if(idequeue != 0)
80101db8:	a1 e4 05 11 80       	mov    0x801105e4,%eax
80101dbd:	83 c4 10             	add    $0x10,%esp
80101dc0:	85 c0                	test   %eax,%eax
80101dc2:	74 05                	je     80101dc9 <ideintr+0x52>
    idestart(idequeue);
80101dc4:	e8 78 fe ff ff       	call   80101c41 <idestart>

  release(&idelock);
80101dc9:	83 ec 0c             	sub    $0xc,%esp
80101dcc:	68 00 06 11 80       	push   $0x80110600
80101dd1:	e8 09 1e 00 00       	call   80103bdf <release>
80101dd6:	83 c4 10             	add    $0x10,%esp
}
80101dd9:	8d 65 f8             	lea    -0x8(%ebp),%esp
80101ddc:	5b                   	pop    %ebx
80101ddd:	5f                   	pop    %edi
80101dde:	5d                   	pop    %ebp
80101ddf:	c3                   	ret    
    release(&idelock);
80101de0:	83 ec 0c             	sub    $0xc,%esp
80101de3:	68 00 06 11 80       	push   $0x80110600
80101de8:	e8 f2 1d 00 00       	call   80103bdf <release>
    return;
80101ded:	83 c4 10             	add    $0x10,%esp
80101df0:	eb e7                	jmp    80101dd9 <ideintr+0x62>
  if(!(b->flags & B_DIRTY) && idewait(1) >= 0)
80101df2:	b8 01 00 00 00       	mov    $0x1,%eax
80101df7:	e8 1c fe ff ff       	call   80101c18 <idewait>
80101dfc:	85 c0                	test   %eax,%eax
80101dfe:	78 a3                	js     80101da3 <ideintr+0x2c>
    insl(0x1f0, b->data, BSIZE/4);
80101e00:	8d 7b 5c             	lea    0x5c(%ebx),%edi
  asm volatile("cld; rep insl" :
80101e03:	b9 80 00 00 00       	mov    $0x80,%ecx
80101e08:	ba f0 01 00 00       	mov    $0x1f0,%edx
80101e0d:	fc                   	cld    
80101e0e:	f3 6d                	rep insl (%dx),%es:(%edi)
}
80101e10:	eb 91                	jmp    80101da3 <ideintr+0x2c>

80101e12 <iderw>:
// Sync buf with disk.
// If B_DIRTY is set, write buf to disk, clear B_DIRTY, set B_VALID.
// Else if B_VALID is not set, read buf from disk, set B_VALID.
void
iderw(struct buf *b)
{
80101e12:	55                   	push   %ebp
80101e13:	89 e5                	mov    %esp,%ebp
80101e15:	53                   	push   %ebx
80101e16:	83 ec 10             	sub    $0x10,%esp
80101e19:	8b 5d 08             	mov    0x8(%ebp),%ebx
  struct buf **pp;

  if(!holdingsleep(&b->lock))
80101e1c:	8d 43 0c             	lea    0xc(%ebx),%eax
80101e1f:	50                   	push   %eax
80101e20:	e8 cb 1b 00 00       	call   801039f0 <holdingsleep>
80101e25:	83 c4 10             	add    $0x10,%esp
80101e28:	85 c0                	test   %eax,%eax
80101e2a:	74 37                	je     80101e63 <iderw+0x51>
    panic("iderw: buf not locked");
  if((b->flags & (B_VALID|B_DIRTY)) == B_VALID)
80101e2c:	8b 03                	mov    (%ebx),%eax
80101e2e:	83 e0 06             	and    $0x6,%eax
80101e31:	83 f8 02             	cmp    $0x2,%eax
80101e34:	74 3a                	je     80101e70 <iderw+0x5e>
    panic("iderw: nothing to do");
  if(b->dev != 0 && !havedisk1)
80101e36:	83 7b 04 00          	cmpl   $0x0,0x4(%ebx)
80101e3a:	74 09                	je     80101e45 <iderw+0x33>
80101e3c:	83 3d e0 05 11 80 00 	cmpl   $0x0,0x801105e0
80101e43:	74 38                	je     80101e7d <iderw+0x6b>
    panic("iderw: ide disk 1 not present");

  acquire(&idelock);  //DOC:acquire-lock
80101e45:	83 ec 0c             	sub    $0xc,%esp
80101e48:	68 00 06 11 80       	push   $0x80110600
80101e4d:	e8 28 1d 00 00       	call   80103b7a <acquire>

  // Append b to idequeue.
  b->qnext = 0;
80101e52:	c7 43 58 00 00 00 00 	movl   $0x0,0x58(%ebx)
  for(pp=&idequeue; *pp; pp=&(*pp)->qnext)  //DOC:insert-queue
80101e59:	83 c4 10             	add    $0x10,%esp
80101e5c:	ba e4 05 11 80       	mov    $0x801105e4,%edx
80101e61:	eb 2a                	jmp    80101e8d <iderw+0x7b>
    panic("iderw: buf not locked");
80101e63:	83 ec 0c             	sub    $0xc,%esp
80101e66:	68 ca 67 10 80       	push   $0x801067ca
80101e6b:	e8 d8 e4 ff ff       	call   80100348 <panic>
    panic("iderw: nothing to do");
80101e70:	83 ec 0c             	sub    $0xc,%esp
80101e73:	68 e0 67 10 80       	push   $0x801067e0
80101e78:	e8 cb e4 ff ff       	call   80100348 <panic>
    panic("iderw: ide disk 1 not present");
80101e7d:	83 ec 0c             	sub    $0xc,%esp
80101e80:	68 f5 67 10 80       	push   $0x801067f5
80101e85:	e8 be e4 ff ff       	call   80100348 <panic>
  for(pp=&idequeue; *pp; pp=&(*pp)->qnext)  //DOC:insert-queue
80101e8a:	8d 50 58             	lea    0x58(%eax),%edx
80101e8d:	8b 02                	mov    (%edx),%eax
80101e8f:	85 c0                	test   %eax,%eax
80101e91:	75 f7                	jne    80101e8a <iderw+0x78>
    ;
  *pp = b;
80101e93:	89 1a                	mov    %ebx,(%edx)

  // Start disk if necessary.
  if(idequeue == b)
80101e95:	39 1d e4 05 11 80    	cmp    %ebx,0x801105e4
80101e9b:	75 1a                	jne    80101eb7 <iderw+0xa5>
    idestart(b);
80101e9d:	89 d8                	mov    %ebx,%eax
80101e9f:	e8 9d fd ff ff       	call   80101c41 <idestart>
80101ea4:	eb 11                	jmp    80101eb7 <iderw+0xa5>

  // Wait for request to finish.
  while((b->flags & (B_VALID|B_DIRTY)) != B_VALID){
    sleep(b, &idelock);
80101ea6:	83 ec 08             	sub    $0x8,%esp
80101ea9:	68 00 06 11 80       	push   $0x80110600
80101eae:	53                   	push   %ebx
80101eaf:	e8 c3 17 00 00       	call   80103677 <sleep>
80101eb4:	83 c4 10             	add    $0x10,%esp
  while((b->flags & (B_VALID|B_DIRTY)) != B_VALID){
80101eb7:	8b 03                	mov    (%ebx),%eax
80101eb9:	83 e0 06             	and    $0x6,%eax
80101ebc:	83 f8 02             	cmp    $0x2,%eax
80101ebf:	75 e5                	jne    80101ea6 <iderw+0x94>
  }


  release(&idelock);
80101ec1:	83 ec 0c             	sub    $0xc,%esp
80101ec4:	68 00 06 11 80       	push   $0x80110600
80101ec9:	e8 11 1d 00 00       	call   80103bdf <release>
}
80101ece:	83 c4 10             	add    $0x10,%esp
80101ed1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80101ed4:	c9                   	leave  
80101ed5:	c3                   	ret    

80101ed6 <ioapicread>:
};

static uint
ioapicread(int reg)
{
  ioapic->reg = reg;
80101ed6:	8b 15 34 06 11 80    	mov    0x80110634,%edx
80101edc:	89 02                	mov    %eax,(%edx)
  return ioapic->data;
80101ede:	a1 34 06 11 80       	mov    0x80110634,%eax
80101ee3:	8b 40 10             	mov    0x10(%eax),%eax
}
80101ee6:	c3                   	ret    

80101ee7 <ioapicwrite>:

static void
ioapicwrite(int reg, uint data)
{
  ioapic->reg = reg;
80101ee7:	8b 0d 34 06 11 80    	mov    0x80110634,%ecx
80101eed:	89 01                	mov    %eax,(%ecx)
  ioapic->data = data;
80101eef:	a1 34 06 11 80       	mov    0x80110634,%eax
80101ef4:	89 50 10             	mov    %edx,0x10(%eax)
}
80101ef7:	c3                   	ret    

80101ef8 <ioapicinit>:

void
ioapicinit(void)
{
80101ef8:	55                   	push   %ebp
80101ef9:	89 e5                	mov    %esp,%ebp
80101efb:	57                   	push   %edi
80101efc:	56                   	push   %esi
80101efd:	53                   	push   %ebx
80101efe:	83 ec 0c             	sub    $0xc,%esp
  int i, id, maxintr;

  ioapic = (volatile struct ioapic*)IOAPIC;
80101f01:	c7 05 34 06 11 80 00 	movl   $0xfec00000,0x80110634
80101f08:	00 c0 fe 
  maxintr = (ioapicread(REG_VER) >> 16) & 0xFF;
80101f0b:	b8 01 00 00 00       	mov    $0x1,%eax
80101f10:	e8 c1 ff ff ff       	call   80101ed6 <ioapicread>
80101f15:	c1 e8 10             	shr    $0x10,%eax
80101f18:	0f b6 f8             	movzbl %al,%edi
  id = ioapicread(REG_ID) >> 24;
80101f1b:	b8 00 00 00 00       	mov    $0x0,%eax
80101f20:	e8 b1 ff ff ff       	call   80101ed6 <ioapicread>
80101f25:	c1 e8 18             	shr    $0x18,%eax
  if(id != ioapicid)
80101f28:	0f b6 15 80 07 11 80 	movzbl 0x80110780,%edx
80101f2f:	39 c2                	cmp    %eax,%edx
80101f31:	75 07                	jne    80101f3a <ioapicinit+0x42>
{
80101f33:	bb 00 00 00 00       	mov    $0x0,%ebx
80101f38:	eb 36                	jmp    80101f70 <ioapicinit+0x78>
    cprintf("ioapicinit: id isn't equal to ioapicid; not a MP\n");
80101f3a:	83 ec 0c             	sub    $0xc,%esp
80101f3d:	68 14 68 10 80       	push   $0x80106814
80101f42:	e8 c0 e6 ff ff       	call   80100607 <cprintf>
80101f47:	83 c4 10             	add    $0x10,%esp
80101f4a:	eb e7                	jmp    80101f33 <ioapicinit+0x3b>

  // Mark all interrupts edge-triggered, active high, disabled,
  // and not routed to any CPUs.
  for(i = 0; i <= maxintr; i++){
    ioapicwrite(REG_TABLE+2*i, INT_DISABLED | (T_IRQ0 + i));
80101f4c:	8d 53 20             	lea    0x20(%ebx),%edx
80101f4f:	81 ca 00 00 01 00    	or     $0x10000,%edx
80101f55:	8d 74 1b 10          	lea    0x10(%ebx,%ebx,1),%esi
80101f59:	89 f0                	mov    %esi,%eax
80101f5b:	e8 87 ff ff ff       	call   80101ee7 <ioapicwrite>
    ioapicwrite(REG_TABLE+2*i+1, 0);
80101f60:	8d 46 01             	lea    0x1(%esi),%eax
80101f63:	ba 00 00 00 00       	mov    $0x0,%edx
80101f68:	e8 7a ff ff ff       	call   80101ee7 <ioapicwrite>
  for(i = 0; i <= maxintr; i++){
80101f6d:	83 c3 01             	add    $0x1,%ebx
80101f70:	39 fb                	cmp    %edi,%ebx
80101f72:	7e d8                	jle    80101f4c <ioapicinit+0x54>
  }
}
80101f74:	8d 65 f4             	lea    -0xc(%ebp),%esp
80101f77:	5b                   	pop    %ebx
80101f78:	5e                   	pop    %esi
80101f79:	5f                   	pop    %edi
80101f7a:	5d                   	pop    %ebp
80101f7b:	c3                   	ret    

80101f7c <ioapicenable>:

void
ioapicenable(int irq, int cpunum)
{
80101f7c:	55                   	push   %ebp
80101f7d:	89 e5                	mov    %esp,%ebp
80101f7f:	53                   	push   %ebx
80101f80:	83 ec 04             	sub    $0x4,%esp
80101f83:	8b 45 08             	mov    0x8(%ebp),%eax
  // Mark interrupt edge-triggered, active high,
  // enabled, and routed to the given cpunum,
  // which happens to be that cpu's APIC ID.
  ioapicwrite(REG_TABLE+2*irq, T_IRQ0 + irq);
80101f86:	8d 50 20             	lea    0x20(%eax),%edx
80101f89:	8d 5c 00 10          	lea    0x10(%eax,%eax,1),%ebx
80101f8d:	89 d8                	mov    %ebx,%eax
80101f8f:	e8 53 ff ff ff       	call   80101ee7 <ioapicwrite>
  ioapicwrite(REG_TABLE+2*irq+1, cpunum << 24);
80101f94:	8b 55 0c             	mov    0xc(%ebp),%edx
80101f97:	c1 e2 18             	shl    $0x18,%edx
80101f9a:	8d 43 01             	lea    0x1(%ebx),%eax
80101f9d:	e8 45 ff ff ff       	call   80101ee7 <ioapicwrite>
}
80101fa2:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80101fa5:	c9                   	leave  
80101fa6:	c3                   	ret    

80101fa7 <kfree>:
// which normally should have been returned by a
// call to kalloc().  (The exception is when
// initializing the allocator; see kinit above.)
void
kfree(char *v)
{
80101fa7:	55                   	push   %ebp
80101fa8:	89 e5                	mov    %esp,%ebp
80101faa:	53                   	push   %ebx
80101fab:	83 ec 04             	sub    $0x4,%esp
80101fae:	8b 5d 08             	mov    0x8(%ebp),%ebx
  struct run *r;

  if((uint)v % PGSIZE || v < end || V2P(v) >= PHYSTOP)
80101fb1:	f7 c3 ff 0f 00 00    	test   $0xfff,%ebx
80101fb7:	75 4c                	jne    80102005 <kfree+0x5e>
80101fb9:	81 fb d4 45 11 80    	cmp    $0x801145d4,%ebx
80101fbf:	72 44                	jb     80102005 <kfree+0x5e>
80101fc1:	8d 83 00 00 00 80    	lea    -0x80000000(%ebx),%eax
80101fc7:	3d ff ff ff 0d       	cmp    $0xdffffff,%eax
80101fcc:	77 37                	ja     80102005 <kfree+0x5e>
    panic("kfree");

  // Fill with junk to catch dangling refs.
  memset(v, 1, PGSIZE);
80101fce:	83 ec 04             	sub    $0x4,%esp
80101fd1:	68 00 10 00 00       	push   $0x1000
80101fd6:	6a 01                	push   $0x1
80101fd8:	53                   	push   %ebx
80101fd9:	e8 48 1c 00 00       	call   80103c26 <memset>

  if(kmem.use_lock)
80101fde:	83 c4 10             	add    $0x10,%esp
80101fe1:	83 3d 74 06 11 80 00 	cmpl   $0x0,0x80110674
80101fe8:	75 28                	jne    80102012 <kfree+0x6b>
    acquire(&kmem.lock);
  r = (struct run*)v;
  r->next = kmem.freelist;
80101fea:	a1 78 06 11 80       	mov    0x80110678,%eax
80101fef:	89 03                	mov    %eax,(%ebx)
  kmem.freelist = r;
80101ff1:	89 1d 78 06 11 80    	mov    %ebx,0x80110678
  if(kmem.use_lock)
80101ff7:	83 3d 74 06 11 80 00 	cmpl   $0x0,0x80110674
80101ffe:	75 24                	jne    80102024 <kfree+0x7d>
    release(&kmem.lock);
}
80102000:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80102003:	c9                   	leave  
80102004:	c3                   	ret    
    panic("kfree");
80102005:	83 ec 0c             	sub    $0xc,%esp
80102008:	68 46 68 10 80       	push   $0x80106846
8010200d:	e8 36 e3 ff ff       	call   80100348 <panic>
    acquire(&kmem.lock);
80102012:	83 ec 0c             	sub    $0xc,%esp
80102015:	68 40 06 11 80       	push   $0x80110640
8010201a:	e8 5b 1b 00 00       	call   80103b7a <acquire>
8010201f:	83 c4 10             	add    $0x10,%esp
80102022:	eb c6                	jmp    80101fea <kfree+0x43>
    release(&kmem.lock);
80102024:	83 ec 0c             	sub    $0xc,%esp
80102027:	68 40 06 11 80       	push   $0x80110640
8010202c:	e8 ae 1b 00 00       	call   80103bdf <release>
80102031:	83 c4 10             	add    $0x10,%esp
}
80102034:	eb ca                	jmp    80102000 <kfree+0x59>

80102036 <freerange>:
{
80102036:	55                   	push   %ebp
80102037:	89 e5                	mov    %esp,%ebp
80102039:	56                   	push   %esi
8010203a:	53                   	push   %ebx
8010203b:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  p = (char*)PGROUNDUP((uint)vstart);
8010203e:	8b 45 08             	mov    0x8(%ebp),%eax
80102041:	05 ff 0f 00 00       	add    $0xfff,%eax
80102046:	25 00 f0 ff ff       	and    $0xfffff000,%eax
  for(; p + PGSIZE <= (char*)vend; p += PGSIZE)
8010204b:	eb 0e                	jmp    8010205b <freerange+0x25>
    kfree(p);
8010204d:	83 ec 0c             	sub    $0xc,%esp
80102050:	50                   	push   %eax
80102051:	e8 51 ff ff ff       	call   80101fa7 <kfree>
80102056:	83 c4 10             	add    $0x10,%esp
  for(; p + PGSIZE <= (char*)vend; p += PGSIZE)
80102059:	89 f0                	mov    %esi,%eax
8010205b:	8d b0 00 10 00 00    	lea    0x1000(%eax),%esi
80102061:	39 de                	cmp    %ebx,%esi
80102063:	76 e8                	jbe    8010204d <freerange+0x17>
}
80102065:	8d 65 f8             	lea    -0x8(%ebp),%esp
80102068:	5b                   	pop    %ebx
80102069:	5e                   	pop    %esi
8010206a:	5d                   	pop    %ebp
8010206b:	c3                   	ret    

8010206c <kinit1>:
{
8010206c:	55                   	push   %ebp
8010206d:	89 e5                	mov    %esp,%ebp
8010206f:	83 ec 10             	sub    $0x10,%esp
  initlock(&kmem.lock, "kmem");
80102072:	68 4c 68 10 80       	push   $0x8010684c
80102077:	68 40 06 11 80       	push   $0x80110640
8010207c:	e8 bd 19 00 00       	call   80103a3e <initlock>
  kmem.use_lock = 0;
80102081:	c7 05 74 06 11 80 00 	movl   $0x0,0x80110674
80102088:	00 00 00 
  freerange(vstart, vend);
8010208b:	83 c4 08             	add    $0x8,%esp
8010208e:	ff 75 0c             	push   0xc(%ebp)
80102091:	ff 75 08             	push   0x8(%ebp)
80102094:	e8 9d ff ff ff       	call   80102036 <freerange>
}
80102099:	83 c4 10             	add    $0x10,%esp
8010209c:	c9                   	leave  
8010209d:	c3                   	ret    

8010209e <kinit2>:
{
8010209e:	55                   	push   %ebp
8010209f:	89 e5                	mov    %esp,%ebp
801020a1:	83 ec 10             	sub    $0x10,%esp
  freerange(vstart, vend);
801020a4:	ff 75 0c             	push   0xc(%ebp)
801020a7:	ff 75 08             	push   0x8(%ebp)
801020aa:	e8 87 ff ff ff       	call   80102036 <freerange>
  kmem.use_lock = 1;
801020af:	c7 05 74 06 11 80 01 	movl   $0x1,0x80110674
801020b6:	00 00 00 
}
801020b9:	83 c4 10             	add    $0x10,%esp
801020bc:	c9                   	leave  
801020bd:	c3                   	ret    

801020be <kalloc>:
// Allocate one 4096-byte page of physical memory.
// Returns a pointer that the kernel can use.
// Returns 0 if the memory cannot be allocated.
char*
kalloc(void)
{
801020be:	55                   	push   %ebp
801020bf:	89 e5                	mov    %esp,%ebp
801020c1:	53                   	push   %ebx
801020c2:	83 ec 04             	sub    $0x4,%esp
  struct run *r;

  if(kmem.use_lock)
801020c5:	83 3d 74 06 11 80 00 	cmpl   $0x0,0x80110674
801020cc:	75 21                	jne    801020ef <kalloc+0x31>
    acquire(&kmem.lock);
  r = kmem.freelist;
801020ce:	8b 1d 78 06 11 80    	mov    0x80110678,%ebx
  if(r)
801020d4:	85 db                	test   %ebx,%ebx
801020d6:	74 07                	je     801020df <kalloc+0x21>
    kmem.freelist = r->next;
801020d8:	8b 03                	mov    (%ebx),%eax
801020da:	a3 78 06 11 80       	mov    %eax,0x80110678
  if(kmem.use_lock)
801020df:	83 3d 74 06 11 80 00 	cmpl   $0x0,0x80110674
801020e6:	75 19                	jne    80102101 <kalloc+0x43>
    release(&kmem.lock);
  return (char*)r;
}
801020e8:	89 d8                	mov    %ebx,%eax
801020ea:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801020ed:	c9                   	leave  
801020ee:	c3                   	ret    
    acquire(&kmem.lock);
801020ef:	83 ec 0c             	sub    $0xc,%esp
801020f2:	68 40 06 11 80       	push   $0x80110640
801020f7:	e8 7e 1a 00 00       	call   80103b7a <acquire>
801020fc:	83 c4 10             	add    $0x10,%esp
801020ff:	eb cd                	jmp    801020ce <kalloc+0x10>
    release(&kmem.lock);
80102101:	83 ec 0c             	sub    $0xc,%esp
80102104:	68 40 06 11 80       	push   $0x80110640
80102109:	e8 d1 1a 00 00       	call   80103bdf <release>
8010210e:	83 c4 10             	add    $0x10,%esp
  return (char*)r;
80102111:	eb d5                	jmp    801020e8 <kalloc+0x2a>

80102113 <kbdgetc>:
  asm volatile("in %1,%0" : "=a" (data) : "d" (port));
80102113:	ba 64 00 00 00       	mov    $0x64,%edx
80102118:	ec                   	in     (%dx),%al
    normalmap, shiftmap, ctlmap, ctlmap
  };
  uint st, data, c;

  st = inb(KBSTATP);
  if((st & KBS_DIB) == 0)
80102119:	a8 01                	test   $0x1,%al
8010211b:	0f 84 b4 00 00 00    	je     801021d5 <kbdgetc+0xc2>
80102121:	ba 60 00 00 00       	mov    $0x60,%edx
80102126:	ec                   	in     (%dx),%al
    return -1;
  data = inb(KBDATAP);
80102127:	0f b6 c8             	movzbl %al,%ecx

  if(data == 0xE0){
8010212a:	3c e0                	cmp    $0xe0,%al
8010212c:	74 61                	je     8010218f <kbdgetc+0x7c>
    shift |= E0ESC;
    return 0;
  } else if(data & 0x80){
8010212e:	84 c0                	test   %al,%al
80102130:	78 6a                	js     8010219c <kbdgetc+0x89>
    // Key released
    data = (shift & E0ESC ? data : data & 0x7F);
    shift &= ~(shiftcode[data] | E0ESC);
    return 0;
  } else if(shift & E0ESC){
80102132:	8b 15 7c 06 11 80    	mov    0x8011067c,%edx
80102138:	f6 c2 40             	test   $0x40,%dl
8010213b:	74 0f                	je     8010214c <kbdgetc+0x39>
    // Last character was an E0 escape; or with 0x80
    data |= 0x80;
8010213d:	83 c8 80             	or     $0xffffff80,%eax
80102140:	0f b6 c8             	movzbl %al,%ecx
    shift &= ~E0ESC;
80102143:	83 e2 bf             	and    $0xffffffbf,%edx
80102146:	89 15 7c 06 11 80    	mov    %edx,0x8011067c
  }

  shift |= shiftcode[data];
8010214c:	0f b6 91 80 69 10 80 	movzbl -0x7fef9680(%ecx),%edx
80102153:	0b 15 7c 06 11 80    	or     0x8011067c,%edx
80102159:	89 15 7c 06 11 80    	mov    %edx,0x8011067c
  shift ^= togglecode[data];
8010215f:	0f b6 81 80 68 10 80 	movzbl -0x7fef9780(%ecx),%eax
80102166:	31 c2                	xor    %eax,%edx
80102168:	89 15 7c 06 11 80    	mov    %edx,0x8011067c
  c = charcode[shift & (CTL | SHIFT)][data];
8010216e:	89 d0                	mov    %edx,%eax
80102170:	83 e0 03             	and    $0x3,%eax
80102173:	8b 04 85 60 68 10 80 	mov    -0x7fef97a0(,%eax,4),%eax
8010217a:	0f b6 04 08          	movzbl (%eax,%ecx,1),%eax
  if(shift & CAPSLOCK){
8010217e:	f6 c2 08             	test   $0x8,%dl
80102181:	74 57                	je     801021da <kbdgetc+0xc7>
    if('a' <= c && c <= 'z')
80102183:	8d 50 9f             	lea    -0x61(%eax),%edx
80102186:	83 fa 19             	cmp    $0x19,%edx
80102189:	77 3e                	ja     801021c9 <kbdgetc+0xb6>
      c += 'A' - 'a';
8010218b:	83 e8 20             	sub    $0x20,%eax
8010218e:	c3                   	ret    
    shift |= E0ESC;
8010218f:	83 0d 7c 06 11 80 40 	orl    $0x40,0x8011067c
    return 0;
80102196:	b8 00 00 00 00       	mov    $0x0,%eax
8010219b:	c3                   	ret    
    data = (shift & E0ESC ? data : data & 0x7F);
8010219c:	8b 15 7c 06 11 80    	mov    0x8011067c,%edx
801021a2:	f6 c2 40             	test   $0x40,%dl
801021a5:	75 05                	jne    801021ac <kbdgetc+0x99>
801021a7:	89 c1                	mov    %eax,%ecx
801021a9:	83 e1 7f             	and    $0x7f,%ecx
    shift &= ~(shiftcode[data] | E0ESC);
801021ac:	0f b6 81 80 69 10 80 	movzbl -0x7fef9680(%ecx),%eax
801021b3:	83 c8 40             	or     $0x40,%eax
801021b6:	0f b6 c0             	movzbl %al,%eax
801021b9:	f7 d0                	not    %eax
801021bb:	21 c2                	and    %eax,%edx
801021bd:	89 15 7c 06 11 80    	mov    %edx,0x8011067c
    return 0;
801021c3:	b8 00 00 00 00       	mov    $0x0,%eax
801021c8:	c3                   	ret    
    else if('A' <= c && c <= 'Z')
801021c9:	8d 50 bf             	lea    -0x41(%eax),%edx
801021cc:	83 fa 19             	cmp    $0x19,%edx
801021cf:	77 09                	ja     801021da <kbdgetc+0xc7>
      c += 'a' - 'A';
801021d1:	83 c0 20             	add    $0x20,%eax
  }
  return c;
801021d4:	c3                   	ret    
    return -1;
801021d5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
801021da:	c3                   	ret    

801021db <kbdintr>:

void
kbdintr(void)
{
801021db:	55                   	push   %ebp
801021dc:	89 e5                	mov    %esp,%ebp
801021de:	83 ec 14             	sub    $0x14,%esp
  consoleintr(kbdgetc);
801021e1:	68 13 21 10 80       	push   $0x80102113
801021e6:	e8 48 e5 ff ff       	call   80100733 <consoleintr>
}
801021eb:	83 c4 10             	add    $0x10,%esp
801021ee:	c9                   	leave  
801021ef:	c3                   	ret    

801021f0 <lapicw>:

//PAGEBREAK!
static void
lapicw(int index, int value)
{
  lapic[index] = value;
801021f0:	8b 0d 80 06 11 80    	mov    0x80110680,%ecx
801021f6:	8d 04 81             	lea    (%ecx,%eax,4),%eax
801021f9:	89 10                	mov    %edx,(%eax)
  lapic[ID];  // wait for write to finish, by reading
801021fb:	a1 80 06 11 80       	mov    0x80110680,%eax
80102200:	8b 40 20             	mov    0x20(%eax),%eax
}
80102203:	c3                   	ret    

80102204 <cmos_read>:
  asm volatile("out %0,%1" : : "a" (data), "d" (port));
80102204:	ba 70 00 00 00       	mov    $0x70,%edx
80102209:	ee                   	out    %al,(%dx)
  asm volatile("in %1,%0" : "=a" (data) : "d" (port));
8010220a:	ba 71 00 00 00       	mov    $0x71,%edx
8010220f:	ec                   	in     (%dx),%al
cmos_read(uint reg)
{
  outb(CMOS_PORT,  reg);
  microdelay(200);

  return inb(CMOS_RETURN);
80102210:	0f b6 c0             	movzbl %al,%eax
}
80102213:	c3                   	ret    

80102214 <fill_rtcdate>:

static void
fill_rtcdate(struct rtcdate *r)
{
80102214:	55                   	push   %ebp
80102215:	89 e5                	mov    %esp,%ebp
80102217:	53                   	push   %ebx
80102218:	83 ec 04             	sub    $0x4,%esp
8010221b:	89 c3                	mov    %eax,%ebx
  r->second = cmos_read(SECS);
8010221d:	b8 00 00 00 00       	mov    $0x0,%eax
80102222:	e8 dd ff ff ff       	call   80102204 <cmos_read>
80102227:	89 03                	mov    %eax,(%ebx)
  r->minute = cmos_read(MINS);
80102229:	b8 02 00 00 00       	mov    $0x2,%eax
8010222e:	e8 d1 ff ff ff       	call   80102204 <cmos_read>
80102233:	89 43 04             	mov    %eax,0x4(%ebx)
  r->hour   = cmos_read(HOURS);
80102236:	b8 04 00 00 00       	mov    $0x4,%eax
8010223b:	e8 c4 ff ff ff       	call   80102204 <cmos_read>
80102240:	89 43 08             	mov    %eax,0x8(%ebx)
  r->day    = cmos_read(DAY);
80102243:	b8 07 00 00 00       	mov    $0x7,%eax
80102248:	e8 b7 ff ff ff       	call   80102204 <cmos_read>
8010224d:	89 43 0c             	mov    %eax,0xc(%ebx)
  r->month  = cmos_read(MONTH);
80102250:	b8 08 00 00 00       	mov    $0x8,%eax
80102255:	e8 aa ff ff ff       	call   80102204 <cmos_read>
8010225a:	89 43 10             	mov    %eax,0x10(%ebx)
  r->year   = cmos_read(YEAR);
8010225d:	b8 09 00 00 00       	mov    $0x9,%eax
80102262:	e8 9d ff ff ff       	call   80102204 <cmos_read>
80102267:	89 43 14             	mov    %eax,0x14(%ebx)
}
8010226a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
8010226d:	c9                   	leave  
8010226e:	c3                   	ret    

8010226f <lapicinit>:
  if(!lapic)
8010226f:	83 3d 80 06 11 80 00 	cmpl   $0x0,0x80110680
80102276:	0f 84 fe 00 00 00    	je     8010237a <lapicinit+0x10b>
{
8010227c:	55                   	push   %ebp
8010227d:	89 e5                	mov    %esp,%ebp
8010227f:	83 ec 08             	sub    $0x8,%esp
  lapicw(SVR, ENABLE | (T_IRQ0 + IRQ_SPURIOUS));
80102282:	ba 3f 01 00 00       	mov    $0x13f,%edx
80102287:	b8 3c 00 00 00       	mov    $0x3c,%eax
8010228c:	e8 5f ff ff ff       	call   801021f0 <lapicw>
  lapicw(TDCR, X1);
80102291:	ba 0b 00 00 00       	mov    $0xb,%edx
80102296:	b8 f8 00 00 00       	mov    $0xf8,%eax
8010229b:	e8 50 ff ff ff       	call   801021f0 <lapicw>
  lapicw(TIMER, PERIODIC | (T_IRQ0 + IRQ_TIMER));
801022a0:	ba 20 00 02 00       	mov    $0x20020,%edx
801022a5:	b8 c8 00 00 00       	mov    $0xc8,%eax
801022aa:	e8 41 ff ff ff       	call   801021f0 <lapicw>
  lapicw(TICR, 10000000);
801022af:	ba 80 96 98 00       	mov    $0x989680,%edx
801022b4:	b8 e0 00 00 00       	mov    $0xe0,%eax
801022b9:	e8 32 ff ff ff       	call   801021f0 <lapicw>
  lapicw(LINT0, MASKED);
801022be:	ba 00 00 01 00       	mov    $0x10000,%edx
801022c3:	b8 d4 00 00 00       	mov    $0xd4,%eax
801022c8:	e8 23 ff ff ff       	call   801021f0 <lapicw>
  lapicw(LINT1, MASKED);
801022cd:	ba 00 00 01 00       	mov    $0x10000,%edx
801022d2:	b8 d8 00 00 00       	mov    $0xd8,%eax
801022d7:	e8 14 ff ff ff       	call   801021f0 <lapicw>
  if(((lapic[VER]>>16) & 0xFF) >= 4)
801022dc:	a1 80 06 11 80       	mov    0x80110680,%eax
801022e1:	8b 40 30             	mov    0x30(%eax),%eax
801022e4:	c1 e8 10             	shr    $0x10,%eax
801022e7:	a8 fc                	test   $0xfc,%al
801022e9:	75 7b                	jne    80102366 <lapicinit+0xf7>
  lapicw(ERROR, T_IRQ0 + IRQ_ERROR);
801022eb:	ba 33 00 00 00       	mov    $0x33,%edx
801022f0:	b8 dc 00 00 00       	mov    $0xdc,%eax
801022f5:	e8 f6 fe ff ff       	call   801021f0 <lapicw>
  lapicw(ESR, 0);
801022fa:	ba 00 00 00 00       	mov    $0x0,%edx
801022ff:	b8 a0 00 00 00       	mov    $0xa0,%eax
80102304:	e8 e7 fe ff ff       	call   801021f0 <lapicw>
  lapicw(ESR, 0);
80102309:	ba 00 00 00 00       	mov    $0x0,%edx
8010230e:	b8 a0 00 00 00       	mov    $0xa0,%eax
80102313:	e8 d8 fe ff ff       	call   801021f0 <lapicw>
  lapicw(EOI, 0);
80102318:	ba 00 00 00 00       	mov    $0x0,%edx
8010231d:	b8 2c 00 00 00       	mov    $0x2c,%eax
80102322:	e8 c9 fe ff ff       	call   801021f0 <lapicw>
  lapicw(ICRHI, 0);
80102327:	ba 00 00 00 00       	mov    $0x0,%edx
8010232c:	b8 c4 00 00 00       	mov    $0xc4,%eax
80102331:	e8 ba fe ff ff       	call   801021f0 <lapicw>
  lapicw(ICRLO, BCAST | INIT | LEVEL);
80102336:	ba 00 85 08 00       	mov    $0x88500,%edx
8010233b:	b8 c0 00 00 00       	mov    $0xc0,%eax
80102340:	e8 ab fe ff ff       	call   801021f0 <lapicw>
  while(lapic[ICRLO] & DELIVS)
80102345:	a1 80 06 11 80       	mov    0x80110680,%eax
8010234a:	8b 80 00 03 00 00    	mov    0x300(%eax),%eax
80102350:	f6 c4 10             	test   $0x10,%ah
80102353:	75 f0                	jne    80102345 <lapicinit+0xd6>
  lapicw(TPR, 0);
80102355:	ba 00 00 00 00       	mov    $0x0,%edx
8010235a:	b8 20 00 00 00       	mov    $0x20,%eax
8010235f:	e8 8c fe ff ff       	call   801021f0 <lapicw>
}
80102364:	c9                   	leave  
80102365:	c3                   	ret    
    lapicw(PCINT, MASKED);
80102366:	ba 00 00 01 00       	mov    $0x10000,%edx
8010236b:	b8 d0 00 00 00       	mov    $0xd0,%eax
80102370:	e8 7b fe ff ff       	call   801021f0 <lapicw>
80102375:	e9 71 ff ff ff       	jmp    801022eb <lapicinit+0x7c>
8010237a:	c3                   	ret    

8010237b <lapicid>:
  if (!lapic)
8010237b:	a1 80 06 11 80       	mov    0x80110680,%eax
80102380:	85 c0                	test   %eax,%eax
80102382:	74 07                	je     8010238b <lapicid+0x10>
  return lapic[ID] >> 24;
80102384:	8b 40 20             	mov    0x20(%eax),%eax
80102387:	c1 e8 18             	shr    $0x18,%eax
8010238a:	c3                   	ret    
    return 0;
8010238b:	b8 00 00 00 00       	mov    $0x0,%eax
}
80102390:	c3                   	ret    

80102391 <lapiceoi>:
  if(lapic)
80102391:	83 3d 80 06 11 80 00 	cmpl   $0x0,0x80110680
80102398:	74 17                	je     801023b1 <lapiceoi+0x20>
{
8010239a:	55                   	push   %ebp
8010239b:	89 e5                	mov    %esp,%ebp
8010239d:	83 ec 08             	sub    $0x8,%esp
    lapicw(EOI, 0);
801023a0:	ba 00 00 00 00       	mov    $0x0,%edx
801023a5:	b8 2c 00 00 00       	mov    $0x2c,%eax
801023aa:	e8 41 fe ff ff       	call   801021f0 <lapicw>
}
801023af:	c9                   	leave  
801023b0:	c3                   	ret    
801023b1:	c3                   	ret    

801023b2 <microdelay>:
}
801023b2:	c3                   	ret    

801023b3 <lapicstartap>:
{
801023b3:	55                   	push   %ebp
801023b4:	89 e5                	mov    %esp,%ebp
801023b6:	57                   	push   %edi
801023b7:	56                   	push   %esi
801023b8:	53                   	push   %ebx
801023b9:	83 ec 0c             	sub    $0xc,%esp
801023bc:	8b 75 08             	mov    0x8(%ebp),%esi
801023bf:	8b 7d 0c             	mov    0xc(%ebp),%edi
  asm volatile("out %0,%1" : : "a" (data), "d" (port));
801023c2:	b8 0f 00 00 00       	mov    $0xf,%eax
801023c7:	ba 70 00 00 00       	mov    $0x70,%edx
801023cc:	ee                   	out    %al,(%dx)
801023cd:	b8 0a 00 00 00       	mov    $0xa,%eax
801023d2:	ba 71 00 00 00       	mov    $0x71,%edx
801023d7:	ee                   	out    %al,(%dx)
  wrv[0] = 0;
801023d8:	66 c7 05 67 04 00 80 	movw   $0x0,0x80000467
801023df:	00 00 
  wrv[1] = addr >> 4;
801023e1:	89 f8                	mov    %edi,%eax
801023e3:	c1 e8 04             	shr    $0x4,%eax
801023e6:	66 a3 69 04 00 80    	mov    %ax,0x80000469
  lapicw(ICRHI, apicid<<24);
801023ec:	c1 e6 18             	shl    $0x18,%esi
801023ef:	89 f2                	mov    %esi,%edx
801023f1:	b8 c4 00 00 00       	mov    $0xc4,%eax
801023f6:	e8 f5 fd ff ff       	call   801021f0 <lapicw>
  lapicw(ICRLO, INIT | LEVEL | ASSERT);
801023fb:	ba 00 c5 00 00       	mov    $0xc500,%edx
80102400:	b8 c0 00 00 00       	mov    $0xc0,%eax
80102405:	e8 e6 fd ff ff       	call   801021f0 <lapicw>
  lapicw(ICRLO, INIT | LEVEL);
8010240a:	ba 00 85 00 00       	mov    $0x8500,%edx
8010240f:	b8 c0 00 00 00       	mov    $0xc0,%eax
80102414:	e8 d7 fd ff ff       	call   801021f0 <lapicw>
  for(i = 0; i < 2; i++){
80102419:	bb 00 00 00 00       	mov    $0x0,%ebx
8010241e:	eb 21                	jmp    80102441 <lapicstartap+0x8e>
    lapicw(ICRHI, apicid<<24);
80102420:	89 f2                	mov    %esi,%edx
80102422:	b8 c4 00 00 00       	mov    $0xc4,%eax
80102427:	e8 c4 fd ff ff       	call   801021f0 <lapicw>
    lapicw(ICRLO, STARTUP | (addr>>12));
8010242c:	89 fa                	mov    %edi,%edx
8010242e:	c1 ea 0c             	shr    $0xc,%edx
80102431:	80 ce 06             	or     $0x6,%dh
80102434:	b8 c0 00 00 00       	mov    $0xc0,%eax
80102439:	e8 b2 fd ff ff       	call   801021f0 <lapicw>
  for(i = 0; i < 2; i++){
8010243e:	83 c3 01             	add    $0x1,%ebx
80102441:	83 fb 01             	cmp    $0x1,%ebx
80102444:	7e da                	jle    80102420 <lapicstartap+0x6d>
}
80102446:	83 c4 0c             	add    $0xc,%esp
80102449:	5b                   	pop    %ebx
8010244a:	5e                   	pop    %esi
8010244b:	5f                   	pop    %edi
8010244c:	5d                   	pop    %ebp
8010244d:	c3                   	ret    

8010244e <cmostime>:

// qemu seems to use 24-hour GWT and the values are BCD encoded
void
cmostime(struct rtcdate *r)
{
8010244e:	55                   	push   %ebp
8010244f:	89 e5                	mov    %esp,%ebp
80102451:	57                   	push   %edi
80102452:	56                   	push   %esi
80102453:	53                   	push   %ebx
80102454:	83 ec 3c             	sub    $0x3c,%esp
80102457:	8b 75 08             	mov    0x8(%ebp),%esi
  struct rtcdate t1, t2;
  int sb, bcd;

  sb = cmos_read(CMOS_STATB);
8010245a:	b8 0b 00 00 00       	mov    $0xb,%eax
8010245f:	e8 a0 fd ff ff       	call   80102204 <cmos_read>

  bcd = (sb & (1 << 2)) == 0;
80102464:	83 e0 04             	and    $0x4,%eax
80102467:	89 c7                	mov    %eax,%edi

  // make sure CMOS doesn't modify time while we read it
  for(;;) {
    fill_rtcdate(&t1);
80102469:	8d 45 d0             	lea    -0x30(%ebp),%eax
8010246c:	e8 a3 fd ff ff       	call   80102214 <fill_rtcdate>
    if(cmos_read(CMOS_STATA) & CMOS_UIP)
80102471:	b8 0a 00 00 00       	mov    $0xa,%eax
80102476:	e8 89 fd ff ff       	call   80102204 <cmos_read>
8010247b:	a8 80                	test   $0x80,%al
8010247d:	75 ea                	jne    80102469 <cmostime+0x1b>
        continue;
    fill_rtcdate(&t2);
8010247f:	8d 5d b8             	lea    -0x48(%ebp),%ebx
80102482:	89 d8                	mov    %ebx,%eax
80102484:	e8 8b fd ff ff       	call   80102214 <fill_rtcdate>
    if(memcmp(&t1, &t2, sizeof(t1)) == 0)
80102489:	83 ec 04             	sub    $0x4,%esp
8010248c:	6a 18                	push   $0x18
8010248e:	53                   	push   %ebx
8010248f:	8d 45 d0             	lea    -0x30(%ebp),%eax
80102492:	50                   	push   %eax
80102493:	e8 d1 17 00 00       	call   80103c69 <memcmp>
80102498:	83 c4 10             	add    $0x10,%esp
8010249b:	85 c0                	test   %eax,%eax
8010249d:	75 ca                	jne    80102469 <cmostime+0x1b>
      break;
  }

  // convert
  if(bcd) {
8010249f:	85 ff                	test   %edi,%edi
801024a1:	75 78                	jne    8010251b <cmostime+0xcd>
#define    CONV(x)     (t1.x = ((t1.x >> 4) * 10) + (t1.x & 0xf))
    CONV(second);
801024a3:	8b 45 d0             	mov    -0x30(%ebp),%eax
801024a6:	89 c2                	mov    %eax,%edx
801024a8:	c1 ea 04             	shr    $0x4,%edx
801024ab:	8d 14 92             	lea    (%edx,%edx,4),%edx
801024ae:	83 e0 0f             	and    $0xf,%eax
801024b1:	8d 04 50             	lea    (%eax,%edx,2),%eax
801024b4:	89 45 d0             	mov    %eax,-0x30(%ebp)
    CONV(minute);
801024b7:	8b 45 d4             	mov    -0x2c(%ebp),%eax
801024ba:	89 c2                	mov    %eax,%edx
801024bc:	c1 ea 04             	shr    $0x4,%edx
801024bf:	8d 14 92             	lea    (%edx,%edx,4),%edx
801024c2:	83 e0 0f             	and    $0xf,%eax
801024c5:	8d 04 50             	lea    (%eax,%edx,2),%eax
801024c8:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    CONV(hour  );
801024cb:	8b 45 d8             	mov    -0x28(%ebp),%eax
801024ce:	89 c2                	mov    %eax,%edx
801024d0:	c1 ea 04             	shr    $0x4,%edx
801024d3:	8d 14 92             	lea    (%edx,%edx,4),%edx
801024d6:	83 e0 0f             	and    $0xf,%eax
801024d9:	8d 04 50             	lea    (%eax,%edx,2),%eax
801024dc:	89 45 d8             	mov    %eax,-0x28(%ebp)
    CONV(day   );
801024df:	8b 45 dc             	mov    -0x24(%ebp),%eax
801024e2:	89 c2                	mov    %eax,%edx
801024e4:	c1 ea 04             	shr    $0x4,%edx
801024e7:	8d 14 92             	lea    (%edx,%edx,4),%edx
801024ea:	83 e0 0f             	and    $0xf,%eax
801024ed:	8d 04 50             	lea    (%eax,%edx,2),%eax
801024f0:	89 45 dc             	mov    %eax,-0x24(%ebp)
    CONV(month );
801024f3:	8b 45 e0             	mov    -0x20(%ebp),%eax
801024f6:	89 c2                	mov    %eax,%edx
801024f8:	c1 ea 04             	shr    $0x4,%edx
801024fb:	8d 14 92             	lea    (%edx,%edx,4),%edx
801024fe:	83 e0 0f             	and    $0xf,%eax
80102501:	8d 04 50             	lea    (%eax,%edx,2),%eax
80102504:	89 45 e0             	mov    %eax,-0x20(%ebp)
    CONV(year  );
80102507:	8b 45 e4             	mov    -0x1c(%ebp),%eax
8010250a:	89 c2                	mov    %eax,%edx
8010250c:	c1 ea 04             	shr    $0x4,%edx
8010250f:	8d 14 92             	lea    (%edx,%edx,4),%edx
80102512:	83 e0 0f             	and    $0xf,%eax
80102515:	8d 04 50             	lea    (%eax,%edx,2),%eax
80102518:	89 45 e4             	mov    %eax,-0x1c(%ebp)
#undef     CONV
  }

  *r = t1;
8010251b:	8b 45 d0             	mov    -0x30(%ebp),%eax
8010251e:	89 06                	mov    %eax,(%esi)
80102520:	8b 45 d4             	mov    -0x2c(%ebp),%eax
80102523:	89 46 04             	mov    %eax,0x4(%esi)
80102526:	8b 45 d8             	mov    -0x28(%ebp),%eax
80102529:	89 46 08             	mov    %eax,0x8(%esi)
8010252c:	8b 45 dc             	mov    -0x24(%ebp),%eax
8010252f:	89 46 0c             	mov    %eax,0xc(%esi)
80102532:	8b 45 e0             	mov    -0x20(%ebp),%eax
80102535:	89 46 10             	mov    %eax,0x10(%esi)
80102538:	8b 45 e4             	mov    -0x1c(%ebp),%eax
8010253b:	89 46 14             	mov    %eax,0x14(%esi)
  r->year += 2000;
8010253e:	81 46 14 d0 07 00 00 	addl   $0x7d0,0x14(%esi)
}
80102545:	8d 65 f4             	lea    -0xc(%ebp),%esp
80102548:	5b                   	pop    %ebx
80102549:	5e                   	pop    %esi
8010254a:	5f                   	pop    %edi
8010254b:	5d                   	pop    %ebp
8010254c:	c3                   	ret    

8010254d <read_head>:
}

// Read the log header from disk into the in-memory log header
static void
read_head(void)
{
8010254d:	55                   	push   %ebp
8010254e:	89 e5                	mov    %esp,%ebp
80102550:	53                   	push   %ebx
80102551:	83 ec 0c             	sub    $0xc,%esp
  struct buf *buf = bread(log.dev, log.start);
80102554:	ff 35 d4 06 11 80    	push   0x801106d4
8010255a:	ff 35 e4 06 11 80    	push   0x801106e4
80102560:	e8 07 dc ff ff       	call   8010016c <bread>
  struct logheader *lh = (struct logheader *) (buf->data);
  int i;
  log.lh.n = lh->n;
80102565:	8b 58 5c             	mov    0x5c(%eax),%ebx
80102568:	89 1d e8 06 11 80    	mov    %ebx,0x801106e8
  for (i = 0; i < log.lh.n; i++) {
8010256e:	83 c4 10             	add    $0x10,%esp
80102571:	ba 00 00 00 00       	mov    $0x0,%edx
80102576:	eb 0e                	jmp    80102586 <read_head+0x39>
    log.lh.block[i] = lh->block[i];
80102578:	8b 4c 90 60          	mov    0x60(%eax,%edx,4),%ecx
8010257c:	89 0c 95 ec 06 11 80 	mov    %ecx,-0x7feef914(,%edx,4)
  for (i = 0; i < log.lh.n; i++) {
80102583:	83 c2 01             	add    $0x1,%edx
80102586:	39 d3                	cmp    %edx,%ebx
80102588:	7f ee                	jg     80102578 <read_head+0x2b>
  }
  brelse(buf);
8010258a:	83 ec 0c             	sub    $0xc,%esp
8010258d:	50                   	push   %eax
8010258e:	e8 42 dc ff ff       	call   801001d5 <brelse>
}
80102593:	83 c4 10             	add    $0x10,%esp
80102596:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80102599:	c9                   	leave  
8010259a:	c3                   	ret    

8010259b <install_trans>:
{
8010259b:	55                   	push   %ebp
8010259c:	89 e5                	mov    %esp,%ebp
8010259e:	57                   	push   %edi
8010259f:	56                   	push   %esi
801025a0:	53                   	push   %ebx
801025a1:	83 ec 0c             	sub    $0xc,%esp
  for (tail = 0; tail < log.lh.n; tail++) {
801025a4:	be 00 00 00 00       	mov    $0x0,%esi
801025a9:	eb 66                	jmp    80102611 <install_trans+0x76>
    struct buf *lbuf = bread(log.dev, log.start+tail+1); // read log block
801025ab:	89 f0                	mov    %esi,%eax
801025ad:	03 05 d4 06 11 80    	add    0x801106d4,%eax
801025b3:	83 c0 01             	add    $0x1,%eax
801025b6:	83 ec 08             	sub    $0x8,%esp
801025b9:	50                   	push   %eax
801025ba:	ff 35 e4 06 11 80    	push   0x801106e4
801025c0:	e8 a7 db ff ff       	call   8010016c <bread>
801025c5:	89 c7                	mov    %eax,%edi
    struct buf *dbuf = bread(log.dev, log.lh.block[tail]); // read dst
801025c7:	83 c4 08             	add    $0x8,%esp
801025ca:	ff 34 b5 ec 06 11 80 	push   -0x7feef914(,%esi,4)
801025d1:	ff 35 e4 06 11 80    	push   0x801106e4
801025d7:	e8 90 db ff ff       	call   8010016c <bread>
801025dc:	89 c3                	mov    %eax,%ebx
    memmove(dbuf->data, lbuf->data, BSIZE);  // copy block to dst
801025de:	8d 57 5c             	lea    0x5c(%edi),%edx
801025e1:	8d 40 5c             	lea    0x5c(%eax),%eax
801025e4:	83 c4 0c             	add    $0xc,%esp
801025e7:	68 00 02 00 00       	push   $0x200
801025ec:	52                   	push   %edx
801025ed:	50                   	push   %eax
801025ee:	e8 ab 16 00 00       	call   80103c9e <memmove>
    bwrite(dbuf);  // write dst to disk
801025f3:	89 1c 24             	mov    %ebx,(%esp)
801025f6:	e8 9f db ff ff       	call   8010019a <bwrite>
    brelse(lbuf);
801025fb:	89 3c 24             	mov    %edi,(%esp)
801025fe:	e8 d2 db ff ff       	call   801001d5 <brelse>
    brelse(dbuf);
80102603:	89 1c 24             	mov    %ebx,(%esp)
80102606:	e8 ca db ff ff       	call   801001d5 <brelse>
  for (tail = 0; tail < log.lh.n; tail++) {
8010260b:	83 c6 01             	add    $0x1,%esi
8010260e:	83 c4 10             	add    $0x10,%esp
80102611:	39 35 e8 06 11 80    	cmp    %esi,0x801106e8
80102617:	7f 92                	jg     801025ab <install_trans+0x10>
}
80102619:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010261c:	5b                   	pop    %ebx
8010261d:	5e                   	pop    %esi
8010261e:	5f                   	pop    %edi
8010261f:	5d                   	pop    %ebp
80102620:	c3                   	ret    

80102621 <write_head>:
// Write in-memory log header to disk.
// This is the true point at which the
// current transaction commits.
static void
write_head(void)
{
80102621:	55                   	push   %ebp
80102622:	89 e5                	mov    %esp,%ebp
80102624:	53                   	push   %ebx
80102625:	83 ec 0c             	sub    $0xc,%esp
  struct buf *buf = bread(log.dev, log.start);
80102628:	ff 35 d4 06 11 80    	push   0x801106d4
8010262e:	ff 35 e4 06 11 80    	push   0x801106e4
80102634:	e8 33 db ff ff       	call   8010016c <bread>
80102639:	89 c3                	mov    %eax,%ebx
  struct logheader *hb = (struct logheader *) (buf->data);
  int i;
  hb->n = log.lh.n;
8010263b:	8b 0d e8 06 11 80    	mov    0x801106e8,%ecx
80102641:	89 48 5c             	mov    %ecx,0x5c(%eax)
  for (i = 0; i < log.lh.n; i++) {
80102644:	83 c4 10             	add    $0x10,%esp
80102647:	b8 00 00 00 00       	mov    $0x0,%eax
8010264c:	eb 0e                	jmp    8010265c <write_head+0x3b>
    hb->block[i] = log.lh.block[i];
8010264e:	8b 14 85 ec 06 11 80 	mov    -0x7feef914(,%eax,4),%edx
80102655:	89 54 83 60          	mov    %edx,0x60(%ebx,%eax,4)
  for (i = 0; i < log.lh.n; i++) {
80102659:	83 c0 01             	add    $0x1,%eax
8010265c:	39 c1                	cmp    %eax,%ecx
8010265e:	7f ee                	jg     8010264e <write_head+0x2d>
  }
  bwrite(buf);
80102660:	83 ec 0c             	sub    $0xc,%esp
80102663:	53                   	push   %ebx
80102664:	e8 31 db ff ff       	call   8010019a <bwrite>
  brelse(buf);
80102669:	89 1c 24             	mov    %ebx,(%esp)
8010266c:	e8 64 db ff ff       	call   801001d5 <brelse>
}
80102671:	83 c4 10             	add    $0x10,%esp
80102674:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80102677:	c9                   	leave  
80102678:	c3                   	ret    

80102679 <recover_from_log>:

static void
recover_from_log(void)
{
80102679:	55                   	push   %ebp
8010267a:	89 e5                	mov    %esp,%ebp
8010267c:	83 ec 08             	sub    $0x8,%esp
  read_head();
8010267f:	e8 c9 fe ff ff       	call   8010254d <read_head>
  install_trans(); // if committed, copy from log to disk
80102684:	e8 12 ff ff ff       	call   8010259b <install_trans>
  log.lh.n = 0;
80102689:	c7 05 e8 06 11 80 00 	movl   $0x0,0x801106e8
80102690:	00 00 00 
  write_head(); // clear the log
80102693:	e8 89 ff ff ff       	call   80102621 <write_head>
}
80102698:	c9                   	leave  
80102699:	c3                   	ret    

8010269a <write_log>:
}

// Copy modified blocks from cache to log.
static void
write_log(void)
{
8010269a:	55                   	push   %ebp
8010269b:	89 e5                	mov    %esp,%ebp
8010269d:	57                   	push   %edi
8010269e:	56                   	push   %esi
8010269f:	53                   	push   %ebx
801026a0:	83 ec 0c             	sub    $0xc,%esp
  int tail;

  for (tail = 0; tail < log.lh.n; tail++) {
801026a3:	be 00 00 00 00       	mov    $0x0,%esi
801026a8:	eb 66                	jmp    80102710 <write_log+0x76>
    struct buf *to = bread(log.dev, log.start+tail+1); // log block
801026aa:	89 f0                	mov    %esi,%eax
801026ac:	03 05 d4 06 11 80    	add    0x801106d4,%eax
801026b2:	83 c0 01             	add    $0x1,%eax
801026b5:	83 ec 08             	sub    $0x8,%esp
801026b8:	50                   	push   %eax
801026b9:	ff 35 e4 06 11 80    	push   0x801106e4
801026bf:	e8 a8 da ff ff       	call   8010016c <bread>
801026c4:	89 c3                	mov    %eax,%ebx
    struct buf *from = bread(log.dev, log.lh.block[tail]); // cache block
801026c6:	83 c4 08             	add    $0x8,%esp
801026c9:	ff 34 b5 ec 06 11 80 	push   -0x7feef914(,%esi,4)
801026d0:	ff 35 e4 06 11 80    	push   0x801106e4
801026d6:	e8 91 da ff ff       	call   8010016c <bread>
801026db:	89 c7                	mov    %eax,%edi
    memmove(to->data, from->data, BSIZE);
801026dd:	8d 50 5c             	lea    0x5c(%eax),%edx
801026e0:	8d 43 5c             	lea    0x5c(%ebx),%eax
801026e3:	83 c4 0c             	add    $0xc,%esp
801026e6:	68 00 02 00 00       	push   $0x200
801026eb:	52                   	push   %edx
801026ec:	50                   	push   %eax
801026ed:	e8 ac 15 00 00       	call   80103c9e <memmove>
    bwrite(to);  // write the log
801026f2:	89 1c 24             	mov    %ebx,(%esp)
801026f5:	e8 a0 da ff ff       	call   8010019a <bwrite>
    brelse(from);
801026fa:	89 3c 24             	mov    %edi,(%esp)
801026fd:	e8 d3 da ff ff       	call   801001d5 <brelse>
    brelse(to);
80102702:	89 1c 24             	mov    %ebx,(%esp)
80102705:	e8 cb da ff ff       	call   801001d5 <brelse>
  for (tail = 0; tail < log.lh.n; tail++) {
8010270a:	83 c6 01             	add    $0x1,%esi
8010270d:	83 c4 10             	add    $0x10,%esp
80102710:	39 35 e8 06 11 80    	cmp    %esi,0x801106e8
80102716:	7f 92                	jg     801026aa <write_log+0x10>
  }
}
80102718:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010271b:	5b                   	pop    %ebx
8010271c:	5e                   	pop    %esi
8010271d:	5f                   	pop    %edi
8010271e:	5d                   	pop    %ebp
8010271f:	c3                   	ret    

80102720 <commit>:

static void
commit()
{
  if (log.lh.n > 0) {
80102720:	83 3d e8 06 11 80 00 	cmpl   $0x0,0x801106e8
80102727:	7f 01                	jg     8010272a <commit+0xa>
80102729:	c3                   	ret    
{
8010272a:	55                   	push   %ebp
8010272b:	89 e5                	mov    %esp,%ebp
8010272d:	83 ec 08             	sub    $0x8,%esp
    write_log();     // Write modified blocks from cache to log
80102730:	e8 65 ff ff ff       	call   8010269a <write_log>
    write_head();    // Write header to disk -- the real commit
80102735:	e8 e7 fe ff ff       	call   80102621 <write_head>
    install_trans(); // Now install writes to home locations
8010273a:	e8 5c fe ff ff       	call   8010259b <install_trans>
    log.lh.n = 0;
8010273f:	c7 05 e8 06 11 80 00 	movl   $0x0,0x801106e8
80102746:	00 00 00 
    write_head();    // Erase the transaction from the log
80102749:	e8 d3 fe ff ff       	call   80102621 <write_head>
  }
}
8010274e:	c9                   	leave  
8010274f:	c3                   	ret    

80102750 <initlog>:
{
80102750:	55                   	push   %ebp
80102751:	89 e5                	mov    %esp,%ebp
80102753:	53                   	push   %ebx
80102754:	83 ec 2c             	sub    $0x2c,%esp
80102757:	8b 5d 08             	mov    0x8(%ebp),%ebx
  initlock(&log.lock, "log");
8010275a:	68 80 6a 10 80       	push   $0x80106a80
8010275f:	68 a0 06 11 80       	push   $0x801106a0
80102764:	e8 d5 12 00 00       	call   80103a3e <initlock>
  readsb(dev, &sb);
80102769:	83 c4 08             	add    $0x8,%esp
8010276c:	8d 45 dc             	lea    -0x24(%ebp),%eax
8010276f:	50                   	push   %eax
80102770:	53                   	push   %ebx
80102771:	e8 c7 ea ff ff       	call   8010123d <readsb>
  log.start = sb.logstart;
80102776:	8b 45 ec             	mov    -0x14(%ebp),%eax
80102779:	a3 d4 06 11 80       	mov    %eax,0x801106d4
  log.size = sb.nlog;
8010277e:	8b 45 e8             	mov    -0x18(%ebp),%eax
80102781:	a3 d8 06 11 80       	mov    %eax,0x801106d8
  log.dev = dev;
80102786:	89 1d e4 06 11 80    	mov    %ebx,0x801106e4
  recover_from_log();
8010278c:	e8 e8 fe ff ff       	call   80102679 <recover_from_log>
}
80102791:	83 c4 10             	add    $0x10,%esp
80102794:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80102797:	c9                   	leave  
80102798:	c3                   	ret    

80102799 <begin_op>:
{
80102799:	55                   	push   %ebp
8010279a:	89 e5                	mov    %esp,%ebp
8010279c:	83 ec 14             	sub    $0x14,%esp
  acquire(&log.lock);
8010279f:	68 a0 06 11 80       	push   $0x801106a0
801027a4:	e8 d1 13 00 00       	call   80103b7a <acquire>
801027a9:	83 c4 10             	add    $0x10,%esp
801027ac:	eb 15                	jmp    801027c3 <begin_op+0x2a>
      sleep(&log, &log.lock);
801027ae:	83 ec 08             	sub    $0x8,%esp
801027b1:	68 a0 06 11 80       	push   $0x801106a0
801027b6:	68 a0 06 11 80       	push   $0x801106a0
801027bb:	e8 b7 0e 00 00       	call   80103677 <sleep>
801027c0:	83 c4 10             	add    $0x10,%esp
    if(log.committing){
801027c3:	83 3d e0 06 11 80 00 	cmpl   $0x0,0x801106e0
801027ca:	75 e2                	jne    801027ae <begin_op+0x15>
    } else if(log.lh.n + (log.outstanding+1)*MAXOPBLOCKS > LOGSIZE){
801027cc:	a1 dc 06 11 80       	mov    0x801106dc,%eax
801027d1:	83 c0 01             	add    $0x1,%eax
801027d4:	8d 0c 80             	lea    (%eax,%eax,4),%ecx
801027d7:	8d 14 09             	lea    (%ecx,%ecx,1),%edx
801027da:	03 15 e8 06 11 80    	add    0x801106e8,%edx
801027e0:	83 fa 1e             	cmp    $0x1e,%edx
801027e3:	7e 17                	jle    801027fc <begin_op+0x63>
      sleep(&log, &log.lock);
801027e5:	83 ec 08             	sub    $0x8,%esp
801027e8:	68 a0 06 11 80       	push   $0x801106a0
801027ed:	68 a0 06 11 80       	push   $0x801106a0
801027f2:	e8 80 0e 00 00       	call   80103677 <sleep>
801027f7:	83 c4 10             	add    $0x10,%esp
801027fa:	eb c7                	jmp    801027c3 <begin_op+0x2a>
      log.outstanding += 1;
801027fc:	a3 dc 06 11 80       	mov    %eax,0x801106dc
      release(&log.lock);
80102801:	83 ec 0c             	sub    $0xc,%esp
80102804:	68 a0 06 11 80       	push   $0x801106a0
80102809:	e8 d1 13 00 00       	call   80103bdf <release>
}
8010280e:	83 c4 10             	add    $0x10,%esp
80102811:	c9                   	leave  
80102812:	c3                   	ret    

80102813 <end_op>:
{
80102813:	55                   	push   %ebp
80102814:	89 e5                	mov    %esp,%ebp
80102816:	53                   	push   %ebx
80102817:	83 ec 10             	sub    $0x10,%esp
  acquire(&log.lock);
8010281a:	68 a0 06 11 80       	push   $0x801106a0
8010281f:	e8 56 13 00 00       	call   80103b7a <acquire>
  log.outstanding -= 1;
80102824:	a1 dc 06 11 80       	mov    0x801106dc,%eax
80102829:	83 e8 01             	sub    $0x1,%eax
8010282c:	a3 dc 06 11 80       	mov    %eax,0x801106dc
  if(log.committing)
80102831:	8b 1d e0 06 11 80    	mov    0x801106e0,%ebx
80102837:	83 c4 10             	add    $0x10,%esp
8010283a:	85 db                	test   %ebx,%ebx
8010283c:	75 2c                	jne    8010286a <end_op+0x57>
  if(log.outstanding == 0){
8010283e:	85 c0                	test   %eax,%eax
80102840:	75 35                	jne    80102877 <end_op+0x64>
    log.committing = 1;
80102842:	c7 05 e0 06 11 80 01 	movl   $0x1,0x801106e0
80102849:	00 00 00 
    do_commit = 1;
8010284c:	bb 01 00 00 00       	mov    $0x1,%ebx
  release(&log.lock);
80102851:	83 ec 0c             	sub    $0xc,%esp
80102854:	68 a0 06 11 80       	push   $0x801106a0
80102859:	e8 81 13 00 00       	call   80103bdf <release>
  if(do_commit){
8010285e:	83 c4 10             	add    $0x10,%esp
80102861:	85 db                	test   %ebx,%ebx
80102863:	75 24                	jne    80102889 <end_op+0x76>
}
80102865:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80102868:	c9                   	leave  
80102869:	c3                   	ret    
    panic("log.committing");
8010286a:	83 ec 0c             	sub    $0xc,%esp
8010286d:	68 84 6a 10 80       	push   $0x80106a84
80102872:	e8 d1 da ff ff       	call   80100348 <panic>
    wakeup(&log);
80102877:	83 ec 0c             	sub    $0xc,%esp
8010287a:	68 a0 06 11 80       	push   $0x801106a0
8010287f:	e8 60 0f 00 00       	call   801037e4 <wakeup>
80102884:	83 c4 10             	add    $0x10,%esp
80102887:	eb c8                	jmp    80102851 <end_op+0x3e>
    commit();
80102889:	e8 92 fe ff ff       	call   80102720 <commit>
    acquire(&log.lock);
8010288e:	83 ec 0c             	sub    $0xc,%esp
80102891:	68 a0 06 11 80       	push   $0x801106a0
80102896:	e8 df 12 00 00       	call   80103b7a <acquire>
    log.committing = 0;
8010289b:	c7 05 e0 06 11 80 00 	movl   $0x0,0x801106e0
801028a2:	00 00 00 
    wakeup(&log);
801028a5:	c7 04 24 a0 06 11 80 	movl   $0x801106a0,(%esp)
801028ac:	e8 33 0f 00 00       	call   801037e4 <wakeup>
    release(&log.lock);
801028b1:	c7 04 24 a0 06 11 80 	movl   $0x801106a0,(%esp)
801028b8:	e8 22 13 00 00       	call   80103bdf <release>
801028bd:	83 c4 10             	add    $0x10,%esp
}
801028c0:	eb a3                	jmp    80102865 <end_op+0x52>

801028c2 <log_write>:
//   modify bp->data[]
//   log_write(bp)
//   brelse(bp)
void
log_write(struct buf *b)
{
801028c2:	55                   	push   %ebp
801028c3:	89 e5                	mov    %esp,%ebp
801028c5:	53                   	push   %ebx
801028c6:	83 ec 04             	sub    $0x4,%esp
801028c9:	8b 5d 08             	mov    0x8(%ebp),%ebx
  int i;

  if (log.lh.n >= LOGSIZE || log.lh.n >= log.size - 1)
801028cc:	8b 15 e8 06 11 80    	mov    0x801106e8,%edx
801028d2:	83 fa 1d             	cmp    $0x1d,%edx
801028d5:	7f 2c                	jg     80102903 <log_write+0x41>
801028d7:	a1 d8 06 11 80       	mov    0x801106d8,%eax
801028dc:	83 e8 01             	sub    $0x1,%eax
801028df:	39 c2                	cmp    %eax,%edx
801028e1:	7d 20                	jge    80102903 <log_write+0x41>
    panic("too big a transaction");
  if (log.outstanding < 1)
801028e3:	83 3d dc 06 11 80 00 	cmpl   $0x0,0x801106dc
801028ea:	7e 24                	jle    80102910 <log_write+0x4e>
    panic("log_write outside of trans");

  acquire(&log.lock);
801028ec:	83 ec 0c             	sub    $0xc,%esp
801028ef:	68 a0 06 11 80       	push   $0x801106a0
801028f4:	e8 81 12 00 00       	call   80103b7a <acquire>
  for (i = 0; i < log.lh.n; i++) {
801028f9:	83 c4 10             	add    $0x10,%esp
801028fc:	b8 00 00 00 00       	mov    $0x0,%eax
80102901:	eb 1d                	jmp    80102920 <log_write+0x5e>
    panic("too big a transaction");
80102903:	83 ec 0c             	sub    $0xc,%esp
80102906:	68 93 6a 10 80       	push   $0x80106a93
8010290b:	e8 38 da ff ff       	call   80100348 <panic>
    panic("log_write outside of trans");
80102910:	83 ec 0c             	sub    $0xc,%esp
80102913:	68 a9 6a 10 80       	push   $0x80106aa9
80102918:	e8 2b da ff ff       	call   80100348 <panic>
  for (i = 0; i < log.lh.n; i++) {
8010291d:	83 c0 01             	add    $0x1,%eax
80102920:	8b 15 e8 06 11 80    	mov    0x801106e8,%edx
80102926:	39 c2                	cmp    %eax,%edx
80102928:	7e 0c                	jle    80102936 <log_write+0x74>
    if (log.lh.block[i] == b->blockno)   // log absorbtion
8010292a:	8b 4b 08             	mov    0x8(%ebx),%ecx
8010292d:	39 0c 85 ec 06 11 80 	cmp    %ecx,-0x7feef914(,%eax,4)
80102934:	75 e7                	jne    8010291d <log_write+0x5b>
      break;
  }
  log.lh.block[i] = b->blockno;
80102936:	8b 4b 08             	mov    0x8(%ebx),%ecx
80102939:	89 0c 85 ec 06 11 80 	mov    %ecx,-0x7feef914(,%eax,4)
  if (i == log.lh.n)
80102940:	39 c2                	cmp    %eax,%edx
80102942:	74 18                	je     8010295c <log_write+0x9a>
    log.lh.n++;
  b->flags |= B_DIRTY; // prevent eviction
80102944:	83 0b 04             	orl    $0x4,(%ebx)
  release(&log.lock);
80102947:	83 ec 0c             	sub    $0xc,%esp
8010294a:	68 a0 06 11 80       	push   $0x801106a0
8010294f:	e8 8b 12 00 00       	call   80103bdf <release>
}
80102954:	83 c4 10             	add    $0x10,%esp
80102957:	8b 5d fc             	mov    -0x4(%ebp),%ebx
8010295a:	c9                   	leave  
8010295b:	c3                   	ret    
    log.lh.n++;
8010295c:	83 c2 01             	add    $0x1,%edx
8010295f:	89 15 e8 06 11 80    	mov    %edx,0x801106e8
80102965:	eb dd                	jmp    80102944 <log_write+0x82>

80102967 <startothers>:
pde_t entrypgdir[];  // For entry.S

// Start the non-boot (AP) processors.
static void
startothers(void)
{
80102967:	55                   	push   %ebp
80102968:	89 e5                	mov    %esp,%ebp
8010296a:	53                   	push   %ebx
8010296b:	83 ec 08             	sub    $0x8,%esp

  // Write entry code to unused memory at 0x7000.
  // The linker has placed the image of entryother.S in
  // _binary_entryother_start.
  code = P2V(0x7000);
  memmove(code, _binary_entryother_start, (uint)_binary_entryother_size);
8010296e:	68 8e 00 00 00       	push   $0x8e
80102973:	68 8c 94 10 80       	push   $0x8010948c
80102978:	68 00 70 00 80       	push   $0x80007000
8010297d:	e8 1c 13 00 00       	call   80103c9e <memmove>

  for(c = cpus; c < cpus+ncpu; c++){
80102982:	83 c4 10             	add    $0x10,%esp
80102985:	bb a0 07 11 80       	mov    $0x801107a0,%ebx
8010298a:	eb 06                	jmp    80102992 <startothers+0x2b>
8010298c:	81 c3 b0 00 00 00    	add    $0xb0,%ebx
80102992:	69 05 84 07 11 80 b0 	imul   $0xb0,0x80110784,%eax
80102999:	00 00 00 
8010299c:	05 a0 07 11 80       	add    $0x801107a0,%eax
801029a1:	39 d8                	cmp    %ebx,%eax
801029a3:	76 4c                	jbe    801029f1 <startothers+0x8a>
    if(c == mycpu())  // We've started already.
801029a5:	e8 af 07 00 00       	call   80103159 <mycpu>
801029aa:	39 c3                	cmp    %eax,%ebx
801029ac:	74 de                	je     8010298c <startothers+0x25>
      continue;

    // Tell entryother.S what stack to use, where to enter, and what
    // pgdir to use. We cannot use kpgdir yet, because the AP processor
    // is running in low  memory, so we use entrypgdir for the APs too.
    stack = kalloc();
801029ae:	e8 0b f7 ff ff       	call   801020be <kalloc>
    *(void**)(code-4) = stack + KSTACKSIZE;
801029b3:	05 00 10 00 00       	add    $0x1000,%eax
801029b8:	a3 fc 6f 00 80       	mov    %eax,0x80006ffc
    *(void(**)(void))(code-8) = mpenter;
801029bd:	c7 05 f8 6f 00 80 35 	movl   $0x80102a35,0x80006ff8
801029c4:	2a 10 80 
    *(int**)(code-12) = (void *) V2P(entrypgdir);
801029c7:	c7 05 f4 6f 00 80 00 	movl   $0x108000,0x80006ff4
801029ce:	80 10 00 

    lapicstartap(c->apicid, V2P(code));
801029d1:	83 ec 08             	sub    $0x8,%esp
801029d4:	68 00 70 00 00       	push   $0x7000
801029d9:	0f b6 03             	movzbl (%ebx),%eax
801029dc:	50                   	push   %eax
801029dd:	e8 d1 f9 ff ff       	call   801023b3 <lapicstartap>

    // wait for cpu to finish mpmain()
    while(c->started == 0)
801029e2:	83 c4 10             	add    $0x10,%esp
801029e5:	8b 83 a0 00 00 00    	mov    0xa0(%ebx),%eax
801029eb:	85 c0                	test   %eax,%eax
801029ed:	74 f6                	je     801029e5 <startothers+0x7e>
801029ef:	eb 9b                	jmp    8010298c <startothers+0x25>
      ;
  }
}
801029f1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801029f4:	c9                   	leave  
801029f5:	c3                   	ret    

801029f6 <mpmain>:
{
801029f6:	55                   	push   %ebp
801029f7:	89 e5                	mov    %esp,%ebp
801029f9:	53                   	push   %ebx
801029fa:	83 ec 04             	sub    $0x4,%esp
  cprintf("cpu%d: starting %d\n", cpuid(), cpuid());
801029fd:	e8 b3 07 00 00       	call   801031b5 <cpuid>
80102a02:	89 c3                	mov    %eax,%ebx
80102a04:	e8 ac 07 00 00       	call   801031b5 <cpuid>
80102a09:	83 ec 04             	sub    $0x4,%esp
80102a0c:	53                   	push   %ebx
80102a0d:	50                   	push   %eax
80102a0e:	68 c4 6a 10 80       	push   $0x80106ac4
80102a13:	e8 ef db ff ff       	call   80100607 <cprintf>
  idtinit();       // load idt register
80102a18:	e8 a4 24 00 00       	call   80104ec1 <idtinit>
  xchg(&(mycpu()->started), 1); // tell startothers() we're up
80102a1d:	e8 37 07 00 00       	call   80103159 <mycpu>
80102a22:	89 c2                	mov    %eax,%edx
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
80102a24:	b8 01 00 00 00       	mov    $0x1,%eax
80102a29:	f0 87 82 a0 00 00 00 	lock xchg %eax,0xa0(%edx)
  scheduler();     // start running processes
80102a30:	e8 17 0a 00 00       	call   8010344c <scheduler>

80102a35 <mpenter>:
{
80102a35:	55                   	push   %ebp
80102a36:	89 e5                	mov    %esp,%ebp
80102a38:	83 ec 08             	sub    $0x8,%esp
  switchkvm();
80102a3b:	e8 03 35 00 00       	call   80105f43 <switchkvm>
  seginit();
80102a40:	e8 32 33 00 00       	call   80105d77 <seginit>
  lapicinit();
80102a45:	e8 25 f8 ff ff       	call   8010226f <lapicinit>
  mpmain();
80102a4a:	e8 a7 ff ff ff       	call   801029f6 <mpmain>

80102a4f <main>:
{
80102a4f:	8d 4c 24 04          	lea    0x4(%esp),%ecx
80102a53:	83 e4 f0             	and    $0xfffffff0,%esp
80102a56:	ff 71 fc             	push   -0x4(%ecx)
80102a59:	55                   	push   %ebp
80102a5a:	89 e5                	mov    %esp,%ebp
80102a5c:	51                   	push   %ecx
80102a5d:	83 ec 0c             	sub    $0xc,%esp
  kinit1(end, P2V(4*1024*1024)); // phys page allocator
80102a60:	68 00 00 40 80       	push   $0x80400000
80102a65:	68 d4 45 11 80       	push   $0x801145d4
80102a6a:	e8 fd f5 ff ff       	call   8010206c <kinit1>
  kvmalloc();      // kernel page table
80102a6f:	e8 72 39 00 00       	call   801063e6 <kvmalloc>
  mpinit();        // detect other processors
80102a74:	e8 c1 01 00 00       	call   80102c3a <mpinit>
  lapicinit();     // interrupt controller
80102a79:	e8 f1 f7 ff ff       	call   8010226f <lapicinit>
  seginit();       // segment descriptors
80102a7e:	e8 f4 32 00 00       	call   80105d77 <seginit>
  picinit();       // disable pic
80102a83:	e8 88 02 00 00       	call   80102d10 <picinit>
  ioapicinit();    // another interrupt controller
80102a88:	e8 6b f4 ff ff       	call   80101ef8 <ioapicinit>
  consoleinit();   // console hardware
80102a8d:	e8 f8 dd ff ff       	call   8010088a <consoleinit>
  uartinit();      // serial port
80102a92:	e8 3e 27 00 00       	call   801051d5 <uartinit>
  pinit();         // process table
80102a97:	e8 a3 06 00 00       	call   8010313f <pinit>
  tvinit();        // trap vectors
80102a9c:	e8 1b 23 00 00       	call   80104dbc <tvinit>
  binit();         // buffer cache
80102aa1:	e8 4e d6 ff ff       	call   801000f4 <binit>
  fileinit();      // file table
80102aa6:	e8 65 e1 ff ff       	call   80100c10 <fileinit>
  ideinit();       // disk 
80102aab:	e8 54 f2 ff ff       	call   80101d04 <ideinit>
  startothers();   // start other processors
80102ab0:	e8 b2 fe ff ff       	call   80102967 <startothers>
  kinit2(P2V(4*1024*1024), P2V(PHYSTOP)); // must come after startothers()
80102ab5:	83 c4 08             	add    $0x8,%esp
80102ab8:	68 00 00 00 8e       	push   $0x8e000000
80102abd:	68 00 00 40 80       	push   $0x80400000
80102ac2:	e8 d7 f5 ff ff       	call   8010209e <kinit2>
  userinit();      // first user process
80102ac7:	e8 27 07 00 00       	call   801031f3 <userinit>
  mpmain();        // finish this processor's setup
80102acc:	e8 25 ff ff ff       	call   801029f6 <mpmain>

80102ad1 <sum>:
int ncpu;
uchar ioapicid;

static uchar
sum(uchar *addr, int len)
{
80102ad1:	55                   	push   %ebp
80102ad2:	89 e5                	mov    %esp,%ebp
80102ad4:	56                   	push   %esi
80102ad5:	53                   	push   %ebx
80102ad6:	89 c6                	mov    %eax,%esi
  int i, sum;

  sum = 0;
80102ad8:	b8 00 00 00 00       	mov    $0x0,%eax
  for(i=0; i<len; i++)
80102add:	b9 00 00 00 00       	mov    $0x0,%ecx
80102ae2:	eb 09                	jmp    80102aed <sum+0x1c>
    sum += addr[i];
80102ae4:	0f b6 1c 0e          	movzbl (%esi,%ecx,1),%ebx
80102ae8:	01 d8                	add    %ebx,%eax
  for(i=0; i<len; i++)
80102aea:	83 c1 01             	add    $0x1,%ecx
80102aed:	39 d1                	cmp    %edx,%ecx
80102aef:	7c f3                	jl     80102ae4 <sum+0x13>
  return sum;
}
80102af1:	5b                   	pop    %ebx
80102af2:	5e                   	pop    %esi
80102af3:	5d                   	pop    %ebp
80102af4:	c3                   	ret    

80102af5 <mpsearch1>:

// Look for an MP structure in the len bytes at addr.
static struct mp*
mpsearch1(uint a, int len)
{
80102af5:	55                   	push   %ebp
80102af6:	89 e5                	mov    %esp,%ebp
80102af8:	56                   	push   %esi
80102af9:	53                   	push   %ebx
  uchar *e, *p, *addr;

  addr = P2V(a);
80102afa:	8d b0 00 00 00 80    	lea    -0x80000000(%eax),%esi
80102b00:	89 f3                	mov    %esi,%ebx
  e = addr+len;
80102b02:	01 d6                	add    %edx,%esi
  for(p = addr; p < e; p += sizeof(struct mp))
80102b04:	eb 03                	jmp    80102b09 <mpsearch1+0x14>
80102b06:	83 c3 10             	add    $0x10,%ebx
80102b09:	39 f3                	cmp    %esi,%ebx
80102b0b:	73 29                	jae    80102b36 <mpsearch1+0x41>
    if(memcmp(p, "_MP_", 4) == 0 && sum(p, sizeof(struct mp)) == 0)
80102b0d:	83 ec 04             	sub    $0x4,%esp
80102b10:	6a 04                	push   $0x4
80102b12:	68 d8 6a 10 80       	push   $0x80106ad8
80102b17:	53                   	push   %ebx
80102b18:	e8 4c 11 00 00       	call   80103c69 <memcmp>
80102b1d:	83 c4 10             	add    $0x10,%esp
80102b20:	85 c0                	test   %eax,%eax
80102b22:	75 e2                	jne    80102b06 <mpsearch1+0x11>
80102b24:	ba 10 00 00 00       	mov    $0x10,%edx
80102b29:	89 d8                	mov    %ebx,%eax
80102b2b:	e8 a1 ff ff ff       	call   80102ad1 <sum>
80102b30:	84 c0                	test   %al,%al
80102b32:	75 d2                	jne    80102b06 <mpsearch1+0x11>
80102b34:	eb 05                	jmp    80102b3b <mpsearch1+0x46>
      return (struct mp*)p;
  return 0;
80102b36:	bb 00 00 00 00       	mov    $0x0,%ebx
}
80102b3b:	89 d8                	mov    %ebx,%eax
80102b3d:	8d 65 f8             	lea    -0x8(%ebp),%esp
80102b40:	5b                   	pop    %ebx
80102b41:	5e                   	pop    %esi
80102b42:	5d                   	pop    %ebp
80102b43:	c3                   	ret    

80102b44 <mpsearch>:
// 1) in the first KB of the EBDA;
// 2) in the last KB of system base memory;
// 3) in the BIOS ROM between 0xE0000 and 0xFFFFF.
static struct mp*
mpsearch(void)
{
80102b44:	55                   	push   %ebp
80102b45:	89 e5                	mov    %esp,%ebp
80102b47:	83 ec 08             	sub    $0x8,%esp
  uchar *bda;
  uint p;
  struct mp *mp;

  bda = (uchar *) P2V(0x400);
  if((p = ((bda[0x0F]<<8)| bda[0x0E]) << 4)){
80102b4a:	0f b6 05 0f 04 00 80 	movzbl 0x8000040f,%eax
80102b51:	c1 e0 08             	shl    $0x8,%eax
80102b54:	0f b6 15 0e 04 00 80 	movzbl 0x8000040e,%edx
80102b5b:	09 d0                	or     %edx,%eax
80102b5d:	c1 e0 04             	shl    $0x4,%eax
80102b60:	74 1f                	je     80102b81 <mpsearch+0x3d>
    if((mp = mpsearch1(p, 1024)))
80102b62:	ba 00 04 00 00       	mov    $0x400,%edx
80102b67:	e8 89 ff ff ff       	call   80102af5 <mpsearch1>
80102b6c:	85 c0                	test   %eax,%eax
80102b6e:	75 0f                	jne    80102b7f <mpsearch+0x3b>
  } else {
    p = ((bda[0x14]<<8)|bda[0x13])*1024;
    if((mp = mpsearch1(p-1024, 1024)))
      return mp;
  }
  return mpsearch1(0xF0000, 0x10000);
80102b70:	ba 00 00 01 00       	mov    $0x10000,%edx
80102b75:	b8 00 00 0f 00       	mov    $0xf0000,%eax
80102b7a:	e8 76 ff ff ff       	call   80102af5 <mpsearch1>
}
80102b7f:	c9                   	leave  
80102b80:	c3                   	ret    
    p = ((bda[0x14]<<8)|bda[0x13])*1024;
80102b81:	0f b6 05 14 04 00 80 	movzbl 0x80000414,%eax
80102b88:	c1 e0 08             	shl    $0x8,%eax
80102b8b:	0f b6 15 13 04 00 80 	movzbl 0x80000413,%edx
80102b92:	09 d0                	or     %edx,%eax
80102b94:	c1 e0 0a             	shl    $0xa,%eax
    if((mp = mpsearch1(p-1024, 1024)))
80102b97:	2d 00 04 00 00       	sub    $0x400,%eax
80102b9c:	ba 00 04 00 00       	mov    $0x400,%edx
80102ba1:	e8 4f ff ff ff       	call   80102af5 <mpsearch1>
80102ba6:	85 c0                	test   %eax,%eax
80102ba8:	75 d5                	jne    80102b7f <mpsearch+0x3b>
80102baa:	eb c4                	jmp    80102b70 <mpsearch+0x2c>

80102bac <mpconfig>:
// Check for correct signature, calculate the checksum and,
// if correct, check the version.
// To do: check extended table checksum.
static struct mpconf*
mpconfig(struct mp **pmp)
{
80102bac:	55                   	push   %ebp
80102bad:	89 e5                	mov    %esp,%ebp
80102baf:	57                   	push   %edi
80102bb0:	56                   	push   %esi
80102bb1:	53                   	push   %ebx
80102bb2:	83 ec 1c             	sub    $0x1c,%esp
80102bb5:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  struct mpconf *conf;
  struct mp *mp;

  if((mp = mpsearch()) == 0 || mp->physaddr == 0)
80102bb8:	e8 87 ff ff ff       	call   80102b44 <mpsearch>
80102bbd:	89 c3                	mov    %eax,%ebx
80102bbf:	85 c0                	test   %eax,%eax
80102bc1:	74 5a                	je     80102c1d <mpconfig+0x71>
80102bc3:	8b 70 04             	mov    0x4(%eax),%esi
80102bc6:	85 f6                	test   %esi,%esi
80102bc8:	74 57                	je     80102c21 <mpconfig+0x75>
    return 0;
  conf = (struct mpconf*) P2V((uint) mp->physaddr);
80102bca:	8d be 00 00 00 80    	lea    -0x80000000(%esi),%edi
  if(memcmp(conf, "PCMP", 4) != 0)
80102bd0:	83 ec 04             	sub    $0x4,%esp
80102bd3:	6a 04                	push   $0x4
80102bd5:	68 dd 6a 10 80       	push   $0x80106add
80102bda:	57                   	push   %edi
80102bdb:	e8 89 10 00 00       	call   80103c69 <memcmp>
80102be0:	83 c4 10             	add    $0x10,%esp
80102be3:	85 c0                	test   %eax,%eax
80102be5:	75 3e                	jne    80102c25 <mpconfig+0x79>
    return 0;
  if(conf->version != 1 && conf->version != 4)
80102be7:	0f b6 86 06 00 00 80 	movzbl -0x7ffffffa(%esi),%eax
80102bee:	3c 01                	cmp    $0x1,%al
80102bf0:	0f 95 c2             	setne  %dl
80102bf3:	3c 04                	cmp    $0x4,%al
80102bf5:	0f 95 c0             	setne  %al
80102bf8:	84 c2                	test   %al,%dl
80102bfa:	75 30                	jne    80102c2c <mpconfig+0x80>
    return 0;
  if(sum((uchar*)conf, conf->length) != 0)
80102bfc:	0f b7 96 04 00 00 80 	movzwl -0x7ffffffc(%esi),%edx
80102c03:	89 f8                	mov    %edi,%eax
80102c05:	e8 c7 fe ff ff       	call   80102ad1 <sum>
80102c0a:	84 c0                	test   %al,%al
80102c0c:	75 25                	jne    80102c33 <mpconfig+0x87>
    return 0;
  *pmp = mp;
80102c0e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80102c11:	89 18                	mov    %ebx,(%eax)
  return conf;
}
80102c13:	89 f8                	mov    %edi,%eax
80102c15:	8d 65 f4             	lea    -0xc(%ebp),%esp
80102c18:	5b                   	pop    %ebx
80102c19:	5e                   	pop    %esi
80102c1a:	5f                   	pop    %edi
80102c1b:	5d                   	pop    %ebp
80102c1c:	c3                   	ret    
    return 0;
80102c1d:	89 c7                	mov    %eax,%edi
80102c1f:	eb f2                	jmp    80102c13 <mpconfig+0x67>
80102c21:	89 f7                	mov    %esi,%edi
80102c23:	eb ee                	jmp    80102c13 <mpconfig+0x67>
    return 0;
80102c25:	bf 00 00 00 00       	mov    $0x0,%edi
80102c2a:	eb e7                	jmp    80102c13 <mpconfig+0x67>
    return 0;
80102c2c:	bf 00 00 00 00       	mov    $0x0,%edi
80102c31:	eb e0                	jmp    80102c13 <mpconfig+0x67>
    return 0;
80102c33:	bf 00 00 00 00       	mov    $0x0,%edi
80102c38:	eb d9                	jmp    80102c13 <mpconfig+0x67>

80102c3a <mpinit>:

void
mpinit(void)
{
80102c3a:	55                   	push   %ebp
80102c3b:	89 e5                	mov    %esp,%ebp
80102c3d:	57                   	push   %edi
80102c3e:	56                   	push   %esi
80102c3f:	53                   	push   %ebx
80102c40:	83 ec 1c             	sub    $0x1c,%esp
  struct mp *mp;
  struct mpconf *conf;
  struct mpproc *proc;
  struct mpioapic *ioapic;

  if((conf = mpconfig(&mp)) == 0)
80102c43:	8d 45 e4             	lea    -0x1c(%ebp),%eax
80102c46:	e8 61 ff ff ff       	call   80102bac <mpconfig>
80102c4b:	85 c0                	test   %eax,%eax
80102c4d:	74 19                	je     80102c68 <mpinit+0x2e>
    panic("Expect to run on an SMP");
  ismp = 1;
  lapic = (uint*)conf->lapicaddr;
80102c4f:	8b 50 24             	mov    0x24(%eax),%edx
80102c52:	89 15 80 06 11 80    	mov    %edx,0x80110680
  for(p=(uchar*)(conf+1), e=(uchar*)conf+conf->length; p<e; ){
80102c58:	8d 50 2c             	lea    0x2c(%eax),%edx
80102c5b:	0f b7 48 04          	movzwl 0x4(%eax),%ecx
80102c5f:	01 c1                	add    %eax,%ecx
  ismp = 1;
80102c61:	bb 01 00 00 00       	mov    $0x1,%ebx
  for(p=(uchar*)(conf+1), e=(uchar*)conf+conf->length; p<e; ){
80102c66:	eb 20                	jmp    80102c88 <mpinit+0x4e>
    panic("Expect to run on an SMP");
80102c68:	83 ec 0c             	sub    $0xc,%esp
80102c6b:	68 e2 6a 10 80       	push   $0x80106ae2
80102c70:	e8 d3 d6 ff ff       	call   80100348 <panic>
    switch(*p){
80102c75:	bb 00 00 00 00       	mov    $0x0,%ebx
80102c7a:	eb 0c                	jmp    80102c88 <mpinit+0x4e>
80102c7c:	83 e8 03             	sub    $0x3,%eax
80102c7f:	3c 01                	cmp    $0x1,%al
80102c81:	76 1a                	jbe    80102c9d <mpinit+0x63>
80102c83:	bb 00 00 00 00       	mov    $0x0,%ebx
  for(p=(uchar*)(conf+1), e=(uchar*)conf+conf->length; p<e; ){
80102c88:	39 ca                	cmp    %ecx,%edx
80102c8a:	73 4d                	jae    80102cd9 <mpinit+0x9f>
    switch(*p){
80102c8c:	0f b6 02             	movzbl (%edx),%eax
80102c8f:	3c 02                	cmp    $0x2,%al
80102c91:	74 38                	je     80102ccb <mpinit+0x91>
80102c93:	77 e7                	ja     80102c7c <mpinit+0x42>
80102c95:	84 c0                	test   %al,%al
80102c97:	74 09                	je     80102ca2 <mpinit+0x68>
80102c99:	3c 01                	cmp    $0x1,%al
80102c9b:	75 d8                	jne    80102c75 <mpinit+0x3b>
      p += sizeof(struct mpioapic);
      continue;
    case MPBUS:
    case MPIOINTR:
    case MPLINTR:
      p += 8;
80102c9d:	83 c2 08             	add    $0x8,%edx
      continue;
80102ca0:	eb e6                	jmp    80102c88 <mpinit+0x4e>
      if(ncpu < NCPU) {
80102ca2:	8b 35 84 07 11 80    	mov    0x80110784,%esi
80102ca8:	83 fe 07             	cmp    $0x7,%esi
80102cab:	7f 19                	jg     80102cc6 <mpinit+0x8c>
        cpus[ncpu].apicid = proc->apicid;  // apicid may differ from ncpu
80102cad:	0f b6 42 01          	movzbl 0x1(%edx),%eax
80102cb1:	69 fe b0 00 00 00    	imul   $0xb0,%esi,%edi
80102cb7:	88 87 a0 07 11 80    	mov    %al,-0x7feef860(%edi)
        ncpu++;
80102cbd:	83 c6 01             	add    $0x1,%esi
80102cc0:	89 35 84 07 11 80    	mov    %esi,0x80110784
      p += sizeof(struct mpproc);
80102cc6:	83 c2 14             	add    $0x14,%edx
      continue;
80102cc9:	eb bd                	jmp    80102c88 <mpinit+0x4e>
      ioapicid = ioapic->apicno;
80102ccb:	0f b6 42 01          	movzbl 0x1(%edx),%eax
80102ccf:	a2 80 07 11 80       	mov    %al,0x80110780
      p += sizeof(struct mpioapic);
80102cd4:	83 c2 08             	add    $0x8,%edx
      continue;
80102cd7:	eb af                	jmp    80102c88 <mpinit+0x4e>
    default:
      ismp = 0;
      break;
    }
  }
  if(!ismp)
80102cd9:	85 db                	test   %ebx,%ebx
80102cdb:	74 26                	je     80102d03 <mpinit+0xc9>
    panic("Didn't find a suitable machine");

  if(mp->imcrp){
80102cdd:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80102ce0:	80 78 0c 00          	cmpb   $0x0,0xc(%eax)
80102ce4:	74 15                	je     80102cfb <mpinit+0xc1>
  asm volatile("out %0,%1" : : "a" (data), "d" (port));
80102ce6:	b8 70 00 00 00       	mov    $0x70,%eax
80102ceb:	ba 22 00 00 00       	mov    $0x22,%edx
80102cf0:	ee                   	out    %al,(%dx)
  asm volatile("in %1,%0" : "=a" (data) : "d" (port));
80102cf1:	ba 23 00 00 00       	mov    $0x23,%edx
80102cf6:	ec                   	in     (%dx),%al
    // Bochs doesn't support IMCR, so this doesn't run on Bochs.
    // But it would on real hardware.
    outb(0x22, 0x70);   // Select IMCR
    outb(0x23, inb(0x23) | 1);  // Mask external interrupts.
80102cf7:	83 c8 01             	or     $0x1,%eax
  asm volatile("out %0,%1" : : "a" (data), "d" (port));
80102cfa:	ee                   	out    %al,(%dx)
  }
}
80102cfb:	8d 65 f4             	lea    -0xc(%ebp),%esp
80102cfe:	5b                   	pop    %ebx
80102cff:	5e                   	pop    %esi
80102d00:	5f                   	pop    %edi
80102d01:	5d                   	pop    %ebp
80102d02:	c3                   	ret    
    panic("Didn't find a suitable machine");
80102d03:	83 ec 0c             	sub    $0xc,%esp
80102d06:	68 fc 6a 10 80       	push   $0x80106afc
80102d0b:	e8 38 d6 ff ff       	call   80100348 <panic>

80102d10 <picinit>:
80102d10:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80102d15:	ba 21 00 00 00       	mov    $0x21,%edx
80102d1a:	ee                   	out    %al,(%dx)
80102d1b:	ba a1 00 00 00       	mov    $0xa1,%edx
80102d20:	ee                   	out    %al,(%dx)
picinit(void)
{
  // mask all interrupts
  outb(IO_PIC1+1, 0xFF);
  outb(IO_PIC2+1, 0xFF);
}
80102d21:	c3                   	ret    

80102d22 <pipealloc>:
  int writeopen;  // write fd is still open
};

int
pipealloc(struct file **f0, struct file **f1)
{
80102d22:	55                   	push   %ebp
80102d23:	89 e5                	mov    %esp,%ebp
80102d25:	57                   	push   %edi
80102d26:	56                   	push   %esi
80102d27:	53                   	push   %ebx
80102d28:	83 ec 0c             	sub    $0xc,%esp
80102d2b:	8b 5d 08             	mov    0x8(%ebp),%ebx
80102d2e:	8b 75 0c             	mov    0xc(%ebp),%esi
  struct pipe *p;

  p = 0;
  *f0 = *f1 = 0;
80102d31:	c7 06 00 00 00 00    	movl   $0x0,(%esi)
80102d37:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
  if((*f0 = filealloc()) == 0 || (*f1 = filealloc()) == 0)
80102d3d:	e8 e8 de ff ff       	call   80100c2a <filealloc>
80102d42:	89 03                	mov    %eax,(%ebx)
80102d44:	85 c0                	test   %eax,%eax
80102d46:	0f 84 88 00 00 00    	je     80102dd4 <pipealloc+0xb2>
80102d4c:	e8 d9 de ff ff       	call   80100c2a <filealloc>
80102d51:	89 06                	mov    %eax,(%esi)
80102d53:	85 c0                	test   %eax,%eax
80102d55:	74 7d                	je     80102dd4 <pipealloc+0xb2>
    goto bad;
  if((p = (struct pipe*)kalloc()) == 0)
80102d57:	e8 62 f3 ff ff       	call   801020be <kalloc>
80102d5c:	89 c7                	mov    %eax,%edi
80102d5e:	85 c0                	test   %eax,%eax
80102d60:	74 72                	je     80102dd4 <pipealloc+0xb2>
    goto bad;
  p->readopen = 1;
80102d62:	c7 80 3c 02 00 00 01 	movl   $0x1,0x23c(%eax)
80102d69:	00 00 00 
  p->writeopen = 1;
80102d6c:	c7 80 40 02 00 00 01 	movl   $0x1,0x240(%eax)
80102d73:	00 00 00 
  p->nwrite = 0;
80102d76:	c7 80 38 02 00 00 00 	movl   $0x0,0x238(%eax)
80102d7d:	00 00 00 
  p->nread = 0;
80102d80:	c7 80 34 02 00 00 00 	movl   $0x0,0x234(%eax)
80102d87:	00 00 00 
  initlock(&p->lock, "pipe");
80102d8a:	83 ec 08             	sub    $0x8,%esp
80102d8d:	68 1b 6b 10 80       	push   $0x80106b1b
80102d92:	50                   	push   %eax
80102d93:	e8 a6 0c 00 00       	call   80103a3e <initlock>
  (*f0)->type = FD_PIPE;
80102d98:	8b 03                	mov    (%ebx),%eax
80102d9a:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
  (*f0)->readable = 1;
80102da0:	8b 03                	mov    (%ebx),%eax
80102da2:	c6 40 08 01          	movb   $0x1,0x8(%eax)
  (*f0)->writable = 0;
80102da6:	8b 03                	mov    (%ebx),%eax
80102da8:	c6 40 09 00          	movb   $0x0,0x9(%eax)
  (*f0)->pipe = p;
80102dac:	8b 03                	mov    (%ebx),%eax
80102dae:	89 78 0c             	mov    %edi,0xc(%eax)
  (*f1)->type = FD_PIPE;
80102db1:	8b 06                	mov    (%esi),%eax
80102db3:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
  (*f1)->readable = 0;
80102db9:	8b 06                	mov    (%esi),%eax
80102dbb:	c6 40 08 00          	movb   $0x0,0x8(%eax)
  (*f1)->writable = 1;
80102dbf:	8b 06                	mov    (%esi),%eax
80102dc1:	c6 40 09 01          	movb   $0x1,0x9(%eax)
  (*f1)->pipe = p;
80102dc5:	8b 06                	mov    (%esi),%eax
80102dc7:	89 78 0c             	mov    %edi,0xc(%eax)
  return 0;
80102dca:	83 c4 10             	add    $0x10,%esp
80102dcd:	b8 00 00 00 00       	mov    $0x0,%eax
80102dd2:	eb 29                	jmp    80102dfd <pipealloc+0xdb>

//PAGEBREAK: 20
 bad:
  if(p)
    kfree((char*)p);
  if(*f0)
80102dd4:	8b 03                	mov    (%ebx),%eax
80102dd6:	85 c0                	test   %eax,%eax
80102dd8:	74 0c                	je     80102de6 <pipealloc+0xc4>
    fileclose(*f0);
80102dda:	83 ec 0c             	sub    $0xc,%esp
80102ddd:	50                   	push   %eax
80102dde:	e8 ed de ff ff       	call   80100cd0 <fileclose>
80102de3:	83 c4 10             	add    $0x10,%esp
  if(*f1)
80102de6:	8b 06                	mov    (%esi),%eax
80102de8:	85 c0                	test   %eax,%eax
80102dea:	74 19                	je     80102e05 <pipealloc+0xe3>
    fileclose(*f1);
80102dec:	83 ec 0c             	sub    $0xc,%esp
80102def:	50                   	push   %eax
80102df0:	e8 db de ff ff       	call   80100cd0 <fileclose>
80102df5:	83 c4 10             	add    $0x10,%esp
  return -1;
80102df8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
80102dfd:	8d 65 f4             	lea    -0xc(%ebp),%esp
80102e00:	5b                   	pop    %ebx
80102e01:	5e                   	pop    %esi
80102e02:	5f                   	pop    %edi
80102e03:	5d                   	pop    %ebp
80102e04:	c3                   	ret    
  return -1;
80102e05:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80102e0a:	eb f1                	jmp    80102dfd <pipealloc+0xdb>

80102e0c <pipeclose>:

void
pipeclose(struct pipe *p, int writable)
{
80102e0c:	55                   	push   %ebp
80102e0d:	89 e5                	mov    %esp,%ebp
80102e0f:	53                   	push   %ebx
80102e10:	83 ec 10             	sub    $0x10,%esp
80102e13:	8b 5d 08             	mov    0x8(%ebp),%ebx
  acquire(&p->lock);
80102e16:	53                   	push   %ebx
80102e17:	e8 5e 0d 00 00       	call   80103b7a <acquire>
  if(writable){
80102e1c:	83 c4 10             	add    $0x10,%esp
80102e1f:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
80102e23:	74 3f                	je     80102e64 <pipeclose+0x58>
    p->writeopen = 0;
80102e25:	c7 83 40 02 00 00 00 	movl   $0x0,0x240(%ebx)
80102e2c:	00 00 00 
    wakeup(&p->nread);
80102e2f:	8d 83 34 02 00 00    	lea    0x234(%ebx),%eax
80102e35:	83 ec 0c             	sub    $0xc,%esp
80102e38:	50                   	push   %eax
80102e39:	e8 a6 09 00 00       	call   801037e4 <wakeup>
80102e3e:	83 c4 10             	add    $0x10,%esp
  } else {
    p->readopen = 0;
    wakeup(&p->nwrite);
  }
  if(p->readopen == 0 && p->writeopen == 0){
80102e41:	83 bb 3c 02 00 00 00 	cmpl   $0x0,0x23c(%ebx)
80102e48:	75 09                	jne    80102e53 <pipeclose+0x47>
80102e4a:	83 bb 40 02 00 00 00 	cmpl   $0x0,0x240(%ebx)
80102e51:	74 2f                	je     80102e82 <pipeclose+0x76>
    release(&p->lock);
    kfree((char*)p);
  } else
    release(&p->lock);
80102e53:	83 ec 0c             	sub    $0xc,%esp
80102e56:	53                   	push   %ebx
80102e57:	e8 83 0d 00 00       	call   80103bdf <release>
80102e5c:	83 c4 10             	add    $0x10,%esp
}
80102e5f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80102e62:	c9                   	leave  
80102e63:	c3                   	ret    
    p->readopen = 0;
80102e64:	c7 83 3c 02 00 00 00 	movl   $0x0,0x23c(%ebx)
80102e6b:	00 00 00 
    wakeup(&p->nwrite);
80102e6e:	8d 83 38 02 00 00    	lea    0x238(%ebx),%eax
80102e74:	83 ec 0c             	sub    $0xc,%esp
80102e77:	50                   	push   %eax
80102e78:	e8 67 09 00 00       	call   801037e4 <wakeup>
80102e7d:	83 c4 10             	add    $0x10,%esp
80102e80:	eb bf                	jmp    80102e41 <pipeclose+0x35>
    release(&p->lock);
80102e82:	83 ec 0c             	sub    $0xc,%esp
80102e85:	53                   	push   %ebx
80102e86:	e8 54 0d 00 00       	call   80103bdf <release>
    kfree((char*)p);
80102e8b:	89 1c 24             	mov    %ebx,(%esp)
80102e8e:	e8 14 f1 ff ff       	call   80101fa7 <kfree>
80102e93:	83 c4 10             	add    $0x10,%esp
80102e96:	eb c7                	jmp    80102e5f <pipeclose+0x53>

80102e98 <pipewrite>:

//PAGEBREAK: 40
int
pipewrite(struct pipe *p, char *addr, int n)
{
80102e98:	55                   	push   %ebp
80102e99:	89 e5                	mov    %esp,%ebp
80102e9b:	57                   	push   %edi
80102e9c:	56                   	push   %esi
80102e9d:	53                   	push   %ebx
80102e9e:	83 ec 18             	sub    $0x18,%esp
80102ea1:	8b 5d 08             	mov    0x8(%ebp),%ebx
80102ea4:	8b 75 10             	mov    0x10(%ebp),%esi
  int i;

  acquire(&p->lock);
80102ea7:	53                   	push   %ebx
80102ea8:	e8 cd 0c 00 00       	call   80103b7a <acquire>
  for(i = 0; i < n; i++){
80102ead:	83 c4 10             	add    $0x10,%esp
80102eb0:	bf 00 00 00 00       	mov    $0x0,%edi
80102eb5:	39 f7                	cmp    %esi,%edi
80102eb7:	7c 40                	jl     80102ef9 <pipewrite+0x61>
      wakeup(&p->nread);
      sleep(&p->nwrite, &p->lock);  //DOC: pipewrite-sleep
    }
    p->data[p->nwrite++ % PIPESIZE] = addr[i];
  }
  wakeup(&p->nread);  //DOC: pipewrite-wakeup1
80102eb9:	8d 83 34 02 00 00    	lea    0x234(%ebx),%eax
80102ebf:	83 ec 0c             	sub    $0xc,%esp
80102ec2:	50                   	push   %eax
80102ec3:	e8 1c 09 00 00       	call   801037e4 <wakeup>
  release(&p->lock);
80102ec8:	89 1c 24             	mov    %ebx,(%esp)
80102ecb:	e8 0f 0d 00 00       	call   80103bdf <release>
  return n;
80102ed0:	83 c4 10             	add    $0x10,%esp
80102ed3:	89 f0                	mov    %esi,%eax
80102ed5:	eb 5c                	jmp    80102f33 <pipewrite+0x9b>
      wakeup(&p->nread);
80102ed7:	8d 83 34 02 00 00    	lea    0x234(%ebx),%eax
80102edd:	83 ec 0c             	sub    $0xc,%esp
80102ee0:	50                   	push   %eax
80102ee1:	e8 fe 08 00 00       	call   801037e4 <wakeup>
      sleep(&p->nwrite, &p->lock);  //DOC: pipewrite-sleep
80102ee6:	8d 83 38 02 00 00    	lea    0x238(%ebx),%eax
80102eec:	83 c4 08             	add    $0x8,%esp
80102eef:	53                   	push   %ebx
80102ef0:	50                   	push   %eax
80102ef1:	e8 81 07 00 00       	call   80103677 <sleep>
80102ef6:	83 c4 10             	add    $0x10,%esp
    while(p->nwrite == p->nread + PIPESIZE){  //DOC: pipewrite-full
80102ef9:	8b 93 38 02 00 00    	mov    0x238(%ebx),%edx
80102eff:	8b 83 34 02 00 00    	mov    0x234(%ebx),%eax
80102f05:	05 00 02 00 00       	add    $0x200,%eax
80102f0a:	39 c2                	cmp    %eax,%edx
80102f0c:	75 2d                	jne    80102f3b <pipewrite+0xa3>
      if(p->readopen == 0 || myproc()->killed){
80102f0e:	83 bb 3c 02 00 00 00 	cmpl   $0x0,0x23c(%ebx)
80102f15:	74 0b                	je     80102f22 <pipewrite+0x8a>
80102f17:	e8 b4 02 00 00       	call   801031d0 <myproc>
80102f1c:	83 78 24 00          	cmpl   $0x0,0x24(%eax)
80102f20:	74 b5                	je     80102ed7 <pipewrite+0x3f>
        release(&p->lock);
80102f22:	83 ec 0c             	sub    $0xc,%esp
80102f25:	53                   	push   %ebx
80102f26:	e8 b4 0c 00 00       	call   80103bdf <release>
        return -1;
80102f2b:	83 c4 10             	add    $0x10,%esp
80102f2e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
80102f33:	8d 65 f4             	lea    -0xc(%ebp),%esp
80102f36:	5b                   	pop    %ebx
80102f37:	5e                   	pop    %esi
80102f38:	5f                   	pop    %edi
80102f39:	5d                   	pop    %ebp
80102f3a:	c3                   	ret    
    p->data[p->nwrite++ % PIPESIZE] = addr[i];
80102f3b:	8d 42 01             	lea    0x1(%edx),%eax
80102f3e:	89 83 38 02 00 00    	mov    %eax,0x238(%ebx)
80102f44:	81 e2 ff 01 00 00    	and    $0x1ff,%edx
80102f4a:	8b 45 0c             	mov    0xc(%ebp),%eax
80102f4d:	0f b6 04 38          	movzbl (%eax,%edi,1),%eax
80102f51:	88 44 13 34          	mov    %al,0x34(%ebx,%edx,1)
  for(i = 0; i < n; i++){
80102f55:	83 c7 01             	add    $0x1,%edi
80102f58:	e9 58 ff ff ff       	jmp    80102eb5 <pipewrite+0x1d>

80102f5d <piperead>:

int
piperead(struct pipe *p, char *addr, int n)
{
80102f5d:	55                   	push   %ebp
80102f5e:	89 e5                	mov    %esp,%ebp
80102f60:	57                   	push   %edi
80102f61:	56                   	push   %esi
80102f62:	53                   	push   %ebx
80102f63:	83 ec 18             	sub    $0x18,%esp
80102f66:	8b 5d 08             	mov    0x8(%ebp),%ebx
80102f69:	8b 7d 0c             	mov    0xc(%ebp),%edi
  int i;

  acquire(&p->lock);
80102f6c:	53                   	push   %ebx
80102f6d:	e8 08 0c 00 00       	call   80103b7a <acquire>
  while(p->nread == p->nwrite && p->writeopen){  //DOC: pipe-empty
80102f72:	83 c4 10             	add    $0x10,%esp
80102f75:	eb 13                	jmp    80102f8a <piperead+0x2d>
    if(myproc()->killed){
      release(&p->lock);
      return -1;
    }
    sleep(&p->nread, &p->lock); //DOC: piperead-sleep
80102f77:	8d 83 34 02 00 00    	lea    0x234(%ebx),%eax
80102f7d:	83 ec 08             	sub    $0x8,%esp
80102f80:	53                   	push   %ebx
80102f81:	50                   	push   %eax
80102f82:	e8 f0 06 00 00       	call   80103677 <sleep>
80102f87:	83 c4 10             	add    $0x10,%esp
  while(p->nread == p->nwrite && p->writeopen){  //DOC: pipe-empty
80102f8a:	8b 83 38 02 00 00    	mov    0x238(%ebx),%eax
80102f90:	39 83 34 02 00 00    	cmp    %eax,0x234(%ebx)
80102f96:	75 78                	jne    80103010 <piperead+0xb3>
80102f98:	8b b3 40 02 00 00    	mov    0x240(%ebx),%esi
80102f9e:	85 f6                	test   %esi,%esi
80102fa0:	74 37                	je     80102fd9 <piperead+0x7c>
    if(myproc()->killed){
80102fa2:	e8 29 02 00 00       	call   801031d0 <myproc>
80102fa7:	83 78 24 00          	cmpl   $0x0,0x24(%eax)
80102fab:	74 ca                	je     80102f77 <piperead+0x1a>
      release(&p->lock);
80102fad:	83 ec 0c             	sub    $0xc,%esp
80102fb0:	53                   	push   %ebx
80102fb1:	e8 29 0c 00 00       	call   80103bdf <release>
      return -1;
80102fb6:	83 c4 10             	add    $0x10,%esp
80102fb9:	be ff ff ff ff       	mov    $0xffffffff,%esi
80102fbe:	eb 46                	jmp    80103006 <piperead+0xa9>
  }
  for(i = 0; i < n; i++){  //DOC: piperead-copy
    if(p->nread == p->nwrite)
      break;
    addr[i] = p->data[p->nread++ % PIPESIZE];
80102fc0:	8d 50 01             	lea    0x1(%eax),%edx
80102fc3:	89 93 34 02 00 00    	mov    %edx,0x234(%ebx)
80102fc9:	25 ff 01 00 00       	and    $0x1ff,%eax
80102fce:	0f b6 44 03 34       	movzbl 0x34(%ebx,%eax,1),%eax
80102fd3:	88 04 37             	mov    %al,(%edi,%esi,1)
  for(i = 0; i < n; i++){  //DOC: piperead-copy
80102fd6:	83 c6 01             	add    $0x1,%esi
80102fd9:	3b 75 10             	cmp    0x10(%ebp),%esi
80102fdc:	7d 0e                	jge    80102fec <piperead+0x8f>
    if(p->nread == p->nwrite)
80102fde:	8b 83 34 02 00 00    	mov    0x234(%ebx),%eax
80102fe4:	3b 83 38 02 00 00    	cmp    0x238(%ebx),%eax
80102fea:	75 d4                	jne    80102fc0 <piperead+0x63>
  }
  wakeup(&p->nwrite);  //DOC: piperead-wakeup
80102fec:	8d 83 38 02 00 00    	lea    0x238(%ebx),%eax
80102ff2:	83 ec 0c             	sub    $0xc,%esp
80102ff5:	50                   	push   %eax
80102ff6:	e8 e9 07 00 00       	call   801037e4 <wakeup>
  release(&p->lock);
80102ffb:	89 1c 24             	mov    %ebx,(%esp)
80102ffe:	e8 dc 0b 00 00       	call   80103bdf <release>
  return i;
80103003:	83 c4 10             	add    $0x10,%esp
}
80103006:	89 f0                	mov    %esi,%eax
80103008:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010300b:	5b                   	pop    %ebx
8010300c:	5e                   	pop    %esi
8010300d:	5f                   	pop    %edi
8010300e:	5d                   	pop    %ebp
8010300f:	c3                   	ret    
80103010:	be 00 00 00 00       	mov    $0x0,%esi
80103015:	eb c2                	jmp    80102fd9 <piperead+0x7c>

80103017 <wakeup1>:
static void
wakeup1(void *chan)
{
  struct proc *p;

  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++)
80103017:	ba 54 0d 11 80       	mov    $0x80110d54,%edx
8010301c:	eb 03                	jmp    80103021 <wakeup1+0xa>
8010301e:	83 ea 80             	sub    $0xffffff80,%edx
80103021:	81 fa 54 2d 11 80    	cmp    $0x80112d54,%edx
80103027:	73 14                	jae    8010303d <wakeup1+0x26>
    if(p->state == SLEEPING && p->chan == chan)
80103029:	83 7a 0c 02          	cmpl   $0x2,0xc(%edx)
8010302d:	75 ef                	jne    8010301e <wakeup1+0x7>
8010302f:	39 42 20             	cmp    %eax,0x20(%edx)
80103032:	75 ea                	jne    8010301e <wakeup1+0x7>
      p->state = RUNNABLE;
80103034:	c7 42 0c 03 00 00 00 	movl   $0x3,0xc(%edx)
8010303b:	eb e1                	jmp    8010301e <wakeup1+0x7>
}
8010303d:	c3                   	ret    

8010303e <allocproc>:
{
8010303e:	55                   	push   %ebp
8010303f:	89 e5                	mov    %esp,%ebp
80103041:	53                   	push   %ebx
80103042:	83 ec 10             	sub    $0x10,%esp
  acquire(&ptable.lock);
80103045:	68 20 0d 11 80       	push   $0x80110d20
8010304a:	e8 2b 0b 00 00       	call   80103b7a <acquire>
  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++)
8010304f:	83 c4 10             	add    $0x10,%esp
80103052:	bb 54 0d 11 80       	mov    $0x80110d54,%ebx
80103057:	eb 03                	jmp    8010305c <allocproc+0x1e>
80103059:	83 eb 80             	sub    $0xffffff80,%ebx
8010305c:	81 fb 54 2d 11 80    	cmp    $0x80112d54,%ebx
80103062:	73 76                	jae    801030da <allocproc+0x9c>
    if(p->state == UNUSED)
80103064:	83 7b 0c 00          	cmpl   $0x0,0xc(%ebx)
80103068:	75 ef                	jne    80103059 <allocproc+0x1b>
  p->state = EMBRYO;
8010306a:	c7 43 0c 01 00 00 00 	movl   $0x1,0xc(%ebx)
  p->pid = nextpid++;
80103071:	a1 04 90 10 80       	mov    0x80109004,%eax
80103076:	8d 50 01             	lea    0x1(%eax),%edx
80103079:	89 15 04 90 10 80    	mov    %edx,0x80109004
8010307f:	89 43 10             	mov    %eax,0x10(%ebx)
  release(&ptable.lock);
80103082:	83 ec 0c             	sub    $0xc,%esp
80103085:	68 20 0d 11 80       	push   $0x80110d20
8010308a:	e8 50 0b 00 00       	call   80103bdf <release>
  if((p->kstack = kalloc()) == 0){
8010308f:	e8 2a f0 ff ff       	call   801020be <kalloc>
80103094:	89 43 08             	mov    %eax,0x8(%ebx)
80103097:	83 c4 10             	add    $0x10,%esp
8010309a:	85 c0                	test   %eax,%eax
8010309c:	74 53                	je     801030f1 <allocproc+0xb3>
  sp -= sizeof *p->tf;
8010309e:	8d 90 b4 0f 00 00    	lea    0xfb4(%eax),%edx
  p->tf = (struct trapframe*)sp;
801030a4:	89 53 18             	mov    %edx,0x18(%ebx)
  *(uint*)sp = (uint)trapret;
801030a7:	c7 80 b0 0f 00 00 b1 	movl   $0x80104db1,0xfb0(%eax)
801030ae:	4d 10 80 
  sp -= sizeof *p->context;
801030b1:	05 9c 0f 00 00       	add    $0xf9c,%eax
  p->context = (struct context*)sp;
801030b6:	89 43 1c             	mov    %eax,0x1c(%ebx)
  memset(p->context, 0, sizeof *p->context);
801030b9:	83 ec 04             	sub    $0x4,%esp
801030bc:	6a 14                	push   $0x14
801030be:	6a 00                	push   $0x0
801030c0:	50                   	push   %eax
801030c1:	e8 60 0b 00 00       	call   80103c26 <memset>
  p->context->eip = (uint)forkret;
801030c6:	8b 43 1c             	mov    0x1c(%ebx),%eax
801030c9:	c7 40 10 fc 30 10 80 	movl   $0x801030fc,0x10(%eax)
  return p;
801030d0:	83 c4 10             	add    $0x10,%esp
}
801030d3:	89 d8                	mov    %ebx,%eax
801030d5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801030d8:	c9                   	leave  
801030d9:	c3                   	ret    
  release(&ptable.lock);
801030da:	83 ec 0c             	sub    $0xc,%esp
801030dd:	68 20 0d 11 80       	push   $0x80110d20
801030e2:	e8 f8 0a 00 00       	call   80103bdf <release>
  return 0;
801030e7:	83 c4 10             	add    $0x10,%esp
801030ea:	bb 00 00 00 00       	mov    $0x0,%ebx
801030ef:	eb e2                	jmp    801030d3 <allocproc+0x95>
    p->state = UNUSED;
801030f1:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
    return 0;
801030f8:	89 c3                	mov    %eax,%ebx
801030fa:	eb d7                	jmp    801030d3 <allocproc+0x95>

801030fc <forkret>:
{
801030fc:	55                   	push   %ebp
801030fd:	89 e5                	mov    %esp,%ebp
801030ff:	83 ec 14             	sub    $0x14,%esp
  release(&ptable.lock);
80103102:	68 20 0d 11 80       	push   $0x80110d20
80103107:	e8 d3 0a 00 00       	call   80103bdf <release>
  if (first) {
8010310c:	83 c4 10             	add    $0x10,%esp
8010310f:	83 3d 00 90 10 80 00 	cmpl   $0x0,0x80109000
80103116:	75 02                	jne    8010311a <forkret+0x1e>
}
80103118:	c9                   	leave  
80103119:	c3                   	ret    
    first = 0;
8010311a:	c7 05 00 90 10 80 00 	movl   $0x0,0x80109000
80103121:	00 00 00 
    iinit(ROOTDEV);
80103124:	83 ec 0c             	sub    $0xc,%esp
80103127:	6a 01                	push   $0x1
80103129:	e8 c7 e1 ff ff       	call   801012f5 <iinit>
    initlog(ROOTDEV);
8010312e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
80103135:	e8 16 f6 ff ff       	call   80102750 <initlog>
8010313a:	83 c4 10             	add    $0x10,%esp
}
8010313d:	eb d9                	jmp    80103118 <forkret+0x1c>

8010313f <pinit>:
{
8010313f:	55                   	push   %ebp
80103140:	89 e5                	mov    %esp,%ebp
80103142:	83 ec 10             	sub    $0x10,%esp
  initlock(&ptable.lock, "ptable");
80103145:	68 20 6b 10 80       	push   $0x80106b20
8010314a:	68 20 0d 11 80       	push   $0x80110d20
8010314f:	e8 ea 08 00 00       	call   80103a3e <initlock>
}
80103154:	83 c4 10             	add    $0x10,%esp
80103157:	c9                   	leave  
80103158:	c3                   	ret    

80103159 <mycpu>:
{
80103159:	55                   	push   %ebp
8010315a:	89 e5                	mov    %esp,%ebp
8010315c:	83 ec 08             	sub    $0x8,%esp
  asm volatile("pushfl; popl %0" : "=r" (eflags));
8010315f:	9c                   	pushf  
80103160:	58                   	pop    %eax
  if(readeflags()&FL_IF)
80103161:	f6 c4 02             	test   $0x2,%ah
80103164:	75 28                	jne    8010318e <mycpu+0x35>
  apicid = lapicid();
80103166:	e8 10 f2 ff ff       	call   8010237b <lapicid>
  for (i = 0; i < ncpu; ++i) {
8010316b:	ba 00 00 00 00       	mov    $0x0,%edx
80103170:	39 15 84 07 11 80    	cmp    %edx,0x80110784
80103176:	7e 23                	jle    8010319b <mycpu+0x42>
    if (cpus[i].apicid == apicid)
80103178:	69 ca b0 00 00 00    	imul   $0xb0,%edx,%ecx
8010317e:	0f b6 89 a0 07 11 80 	movzbl -0x7feef860(%ecx),%ecx
80103185:	39 c1                	cmp    %eax,%ecx
80103187:	74 1f                	je     801031a8 <mycpu+0x4f>
  for (i = 0; i < ncpu; ++i) {
80103189:	83 c2 01             	add    $0x1,%edx
8010318c:	eb e2                	jmp    80103170 <mycpu+0x17>
    panic("mycpu called with interrupts enabled\n");
8010318e:	83 ec 0c             	sub    $0xc,%esp
80103191:	68 04 6c 10 80       	push   $0x80106c04
80103196:	e8 ad d1 ff ff       	call   80100348 <panic>
  panic("unknown apicid\n");
8010319b:	83 ec 0c             	sub    $0xc,%esp
8010319e:	68 27 6b 10 80       	push   $0x80106b27
801031a3:	e8 a0 d1 ff ff       	call   80100348 <panic>
      return &cpus[i];
801031a8:	69 c2 b0 00 00 00    	imul   $0xb0,%edx,%eax
801031ae:	05 a0 07 11 80       	add    $0x801107a0,%eax
}
801031b3:	c9                   	leave  
801031b4:	c3                   	ret    

801031b5 <cpuid>:
cpuid() {
801031b5:	55                   	push   %ebp
801031b6:	89 e5                	mov    %esp,%ebp
801031b8:	83 ec 08             	sub    $0x8,%esp
  return mycpu()-cpus;
801031bb:	e8 99 ff ff ff       	call   80103159 <mycpu>
801031c0:	2d a0 07 11 80       	sub    $0x801107a0,%eax
801031c5:	c1 f8 04             	sar    $0x4,%eax
801031c8:	69 c0 a3 8b 2e ba    	imul   $0xba2e8ba3,%eax,%eax
}
801031ce:	c9                   	leave  
801031cf:	c3                   	ret    

801031d0 <myproc>:
myproc(void) {
801031d0:	55                   	push   %ebp
801031d1:	89 e5                	mov    %esp,%ebp
801031d3:	53                   	push   %ebx
801031d4:	83 ec 04             	sub    $0x4,%esp
  pushcli();
801031d7:	e8 c3 08 00 00       	call   80103a9f <pushcli>
  c = mycpu();
801031dc:	e8 78 ff ff ff       	call   80103159 <mycpu>
  p = c->proc;
801031e1:	8b 98 ac 00 00 00    	mov    0xac(%eax),%ebx
  popcli();
801031e7:	e8 ef 08 00 00       	call   80103adb <popcli>
}
801031ec:	89 d8                	mov    %ebx,%eax
801031ee:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801031f1:	c9                   	leave  
801031f2:	c3                   	ret    

801031f3 <userinit>:
{
801031f3:	55                   	push   %ebp
801031f4:	89 e5                	mov    %esp,%ebp
801031f6:	53                   	push   %ebx
801031f7:	83 ec 04             	sub    $0x4,%esp
  p = allocproc();
801031fa:	e8 3f fe ff ff       	call   8010303e <allocproc>
801031ff:	89 c3                	mov    %eax,%ebx
  initproc = p;
80103201:	a3 54 2d 11 80       	mov    %eax,0x80112d54
  if((p->pgdir = setupkvm()) == 0)
80103206:	e8 69 31 00 00       	call   80106374 <setupkvm>
8010320b:	89 43 04             	mov    %eax,0x4(%ebx)
8010320e:	85 c0                	test   %eax,%eax
80103210:	0f 84 b8 00 00 00    	je     801032ce <userinit+0xdb>
  inituvm(p->pgdir, _binary_initcode_start, (int)_binary_initcode_size);
80103216:	83 ec 04             	sub    $0x4,%esp
80103219:	68 2c 00 00 00       	push   $0x2c
8010321e:	68 60 94 10 80       	push   $0x80109460
80103223:	50                   	push   %eax
80103224:	e8 48 2e 00 00       	call   80106071 <inituvm>
  p->sz = PGSIZE;
80103229:	c7 03 00 10 00 00    	movl   $0x1000,(%ebx)
  memset(p->tf, 0, sizeof(*p->tf));
8010322f:	8b 43 18             	mov    0x18(%ebx),%eax
80103232:	83 c4 0c             	add    $0xc,%esp
80103235:	6a 4c                	push   $0x4c
80103237:	6a 00                	push   $0x0
80103239:	50                   	push   %eax
8010323a:	e8 e7 09 00 00       	call   80103c26 <memset>
  p->tf->cs = (SEG_UCODE << 3) | DPL_USER;
8010323f:	8b 43 18             	mov    0x18(%ebx),%eax
80103242:	66 c7 40 3c 1b 00    	movw   $0x1b,0x3c(%eax)
  p->tf->ds = (SEG_UDATA << 3) | DPL_USER;
80103248:	8b 43 18             	mov    0x18(%ebx),%eax
8010324b:	66 c7 40 2c 23 00    	movw   $0x23,0x2c(%eax)
  p->tf->es = p->tf->ds;
80103251:	8b 43 18             	mov    0x18(%ebx),%eax
80103254:	0f b7 50 2c          	movzwl 0x2c(%eax),%edx
80103258:	66 89 50 28          	mov    %dx,0x28(%eax)
  p->tf->ss = p->tf->ds;
8010325c:	8b 43 18             	mov    0x18(%ebx),%eax
8010325f:	0f b7 50 2c          	movzwl 0x2c(%eax),%edx
80103263:	66 89 50 48          	mov    %dx,0x48(%eax)
  p->tf->eflags = FL_IF;
80103267:	8b 43 18             	mov    0x18(%ebx),%eax
8010326a:	c7 40 40 00 02 00 00 	movl   $0x200,0x40(%eax)
  p->tf->esp = PGSIZE;
80103271:	8b 43 18             	mov    0x18(%ebx),%eax
80103274:	c7 40 44 00 10 00 00 	movl   $0x1000,0x44(%eax)
  p->tf->eip = 0;  // beginning of initcode.S
8010327b:	8b 43 18             	mov    0x18(%ebx),%eax
8010327e:	c7 40 38 00 00 00 00 	movl   $0x0,0x38(%eax)
  safestrcpy(p->name, "initcode", sizeof(p->name));
80103285:	8d 43 6c             	lea    0x6c(%ebx),%eax
80103288:	83 c4 0c             	add    $0xc,%esp
8010328b:	6a 10                	push   $0x10
8010328d:	68 50 6b 10 80       	push   $0x80106b50
80103292:	50                   	push   %eax
80103293:	e8 fa 0a 00 00       	call   80103d92 <safestrcpy>
  p->cwd = namei("/");
80103298:	c7 04 24 59 6b 10 80 	movl   $0x80106b59,(%esp)
8010329f:	e8 44 e9 ff ff       	call   80101be8 <namei>
801032a4:	89 43 68             	mov    %eax,0x68(%ebx)
  acquire(&ptable.lock);
801032a7:	c7 04 24 20 0d 11 80 	movl   $0x80110d20,(%esp)
801032ae:	e8 c7 08 00 00       	call   80103b7a <acquire>
  p->state = RUNNABLE;
801032b3:	c7 43 0c 03 00 00 00 	movl   $0x3,0xc(%ebx)
  release(&ptable.lock);
801032ba:	c7 04 24 20 0d 11 80 	movl   $0x80110d20,(%esp)
801032c1:	e8 19 09 00 00       	call   80103bdf <release>
}
801032c6:	83 c4 10             	add    $0x10,%esp
801032c9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801032cc:	c9                   	leave  
801032cd:	c3                   	ret    
    panic("userinit: out of memory?");
801032ce:	83 ec 0c             	sub    $0xc,%esp
801032d1:	68 37 6b 10 80       	push   $0x80106b37
801032d6:	e8 6d d0 ff ff       	call   80100348 <panic>

801032db <growproc>:
{
801032db:	55                   	push   %ebp
801032dc:	89 e5                	mov    %esp,%ebp
801032de:	56                   	push   %esi
801032df:	53                   	push   %ebx
801032e0:	8b 75 08             	mov    0x8(%ebp),%esi
  struct proc *curproc = myproc();
801032e3:	e8 e8 fe ff ff       	call   801031d0 <myproc>
801032e8:	89 c3                	mov    %eax,%ebx
  sz = curproc->sz;
801032ea:	8b 00                	mov    (%eax),%eax
  if(n > 0){
801032ec:	85 f6                	test   %esi,%esi
801032ee:	7f 1b                	jg     8010330b <growproc+0x30>
  } else if(n < 0){
801032f0:	78 36                	js     80103328 <growproc+0x4d>
  curproc->sz = sz;
801032f2:	89 03                	mov    %eax,(%ebx)
  lcr3(V2P(curproc->pgdir));  // Invalidate TLB.
801032f4:	8b 43 04             	mov    0x4(%ebx),%eax
801032f7:	05 00 00 00 80       	add    $0x80000000,%eax
}

static inline void
lcr3(uint val)
{
  asm volatile("movl %0,%%cr3" : : "r" (val));
801032fc:	0f 22 d8             	mov    %eax,%cr3
  return 0;
801032ff:	b8 00 00 00 00       	mov    $0x0,%eax
}
80103304:	8d 65 f8             	lea    -0x8(%ebp),%esp
80103307:	5b                   	pop    %ebx
80103308:	5e                   	pop    %esi
80103309:	5d                   	pop    %ebp
8010330a:	c3                   	ret    
    if((sz = allocuvm(curproc->pgdir, sz, sz + n)) == 0)
8010330b:	83 ec 04             	sub    $0x4,%esp
8010330e:	01 c6                	add    %eax,%esi
80103310:	56                   	push   %esi
80103311:	50                   	push   %eax
80103312:	ff 73 04             	push   0x4(%ebx)
80103315:	e8 f8 2e 00 00       	call   80106212 <allocuvm>
8010331a:	83 c4 10             	add    $0x10,%esp
8010331d:	85 c0                	test   %eax,%eax
8010331f:	75 d1                	jne    801032f2 <growproc+0x17>
      return -1;
80103321:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80103326:	eb dc                	jmp    80103304 <growproc+0x29>
    if((sz = deallocuvm(curproc->pgdir, sz, sz + n)) == 0)
80103328:	83 ec 04             	sub    $0x4,%esp
8010332b:	01 c6                	add    %eax,%esi
8010332d:	56                   	push   %esi
8010332e:	50                   	push   %eax
8010332f:	ff 73 04             	push   0x4(%ebx)
80103332:	e8 45 2e 00 00       	call   8010617c <deallocuvm>
80103337:	83 c4 10             	add    $0x10,%esp
8010333a:	85 c0                	test   %eax,%eax
8010333c:	75 b4                	jne    801032f2 <growproc+0x17>
      return -1;
8010333e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80103343:	eb bf                	jmp    80103304 <growproc+0x29>

80103345 <fork>:
{
80103345:	55                   	push   %ebp
80103346:	89 e5                	mov    %esp,%ebp
80103348:	57                   	push   %edi
80103349:	56                   	push   %esi
8010334a:	53                   	push   %ebx
8010334b:	83 ec 1c             	sub    $0x1c,%esp
  struct proc *curproc = myproc();
8010334e:	e8 7d fe ff ff       	call   801031d0 <myproc>
80103353:	89 c3                	mov    %eax,%ebx
  if((np = allocproc()) == 0){
80103355:	e8 e4 fc ff ff       	call   8010303e <allocproc>
8010335a:	89 45 e4             	mov    %eax,-0x1c(%ebp)
8010335d:	85 c0                	test   %eax,%eax
8010335f:	0f 84 e0 00 00 00    	je     80103445 <fork+0x100>
80103365:	89 c7                	mov    %eax,%edi
  if((np->pgdir = copyuvm(curproc->pgdir, curproc->sz)) == 0){
80103367:	83 ec 08             	sub    $0x8,%esp
8010336a:	ff 33                	push   (%ebx)
8010336c:	ff 73 04             	push   0x4(%ebx)
8010336f:	e8 bd 30 00 00       	call   80106431 <copyuvm>
80103374:	89 47 04             	mov    %eax,0x4(%edi)
80103377:	83 c4 10             	add    $0x10,%esp
8010337a:	85 c0                	test   %eax,%eax
8010337c:	74 2a                	je     801033a8 <fork+0x63>
  np->sz = curproc->sz;
8010337e:	8b 03                	mov    (%ebx),%eax
80103380:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
80103383:	89 01                	mov    %eax,(%ecx)
  np->parent = curproc;
80103385:	89 c8                	mov    %ecx,%eax
80103387:	89 59 14             	mov    %ebx,0x14(%ecx)
  *np->tf = *curproc->tf;
8010338a:	8b 73 18             	mov    0x18(%ebx),%esi
8010338d:	8b 79 18             	mov    0x18(%ecx),%edi
80103390:	b9 13 00 00 00       	mov    $0x13,%ecx
80103395:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
  np->tf->eax = 0;
80103397:	8b 40 18             	mov    0x18(%eax),%eax
8010339a:	c7 40 1c 00 00 00 00 	movl   $0x0,0x1c(%eax)
  for(i = 0; i < NOFILE; i++)
801033a1:	be 00 00 00 00       	mov    $0x0,%esi
801033a6:	eb 29                	jmp    801033d1 <fork+0x8c>
    kfree(np->kstack);
801033a8:	83 ec 0c             	sub    $0xc,%esp
801033ab:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
801033ae:	ff 73 08             	push   0x8(%ebx)
801033b1:	e8 f1 eb ff ff       	call   80101fa7 <kfree>
    np->kstack = 0;
801033b6:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
    np->state = UNUSED;
801033bd:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
    return -1;
801033c4:	83 c4 10             	add    $0x10,%esp
801033c7:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
801033cc:	eb 6d                	jmp    8010343b <fork+0xf6>
  for(i = 0; i < NOFILE; i++)
801033ce:	83 c6 01             	add    $0x1,%esi
801033d1:	83 fe 0f             	cmp    $0xf,%esi
801033d4:	7f 1d                	jg     801033f3 <fork+0xae>
    if(curproc->ofile[i])
801033d6:	8b 44 b3 28          	mov    0x28(%ebx,%esi,4),%eax
801033da:	85 c0                	test   %eax,%eax
801033dc:	74 f0                	je     801033ce <fork+0x89>
      np->ofile[i] = filedup(curproc->ofile[i]);
801033de:	83 ec 0c             	sub    $0xc,%esp
801033e1:	50                   	push   %eax
801033e2:	e8 a4 d8 ff ff       	call   80100c8b <filedup>
801033e7:	8b 55 e4             	mov    -0x1c(%ebp),%edx
801033ea:	89 44 b2 28          	mov    %eax,0x28(%edx,%esi,4)
801033ee:	83 c4 10             	add    $0x10,%esp
801033f1:	eb db                	jmp    801033ce <fork+0x89>
  np->cwd = idup(curproc->cwd);
801033f3:	83 ec 0c             	sub    $0xc,%esp
801033f6:	ff 73 68             	push   0x68(%ebx)
801033f9:	e8 5c e1 ff ff       	call   8010155a <idup>
801033fe:	8b 7d e4             	mov    -0x1c(%ebp),%edi
80103401:	89 47 68             	mov    %eax,0x68(%edi)
  safestrcpy(np->name, curproc->name, sizeof(curproc->name));
80103404:	83 c3 6c             	add    $0x6c,%ebx
80103407:	8d 47 6c             	lea    0x6c(%edi),%eax
8010340a:	83 c4 0c             	add    $0xc,%esp
8010340d:	6a 10                	push   $0x10
8010340f:	53                   	push   %ebx
80103410:	50                   	push   %eax
80103411:	e8 7c 09 00 00       	call   80103d92 <safestrcpy>
  pid = np->pid;
80103416:	8b 5f 10             	mov    0x10(%edi),%ebx
  acquire(&ptable.lock);
80103419:	c7 04 24 20 0d 11 80 	movl   $0x80110d20,(%esp)
80103420:	e8 55 07 00 00       	call   80103b7a <acquire>
  np->state = RUNNABLE;
80103425:	c7 47 0c 03 00 00 00 	movl   $0x3,0xc(%edi)
  release(&ptable.lock);
8010342c:	c7 04 24 20 0d 11 80 	movl   $0x80110d20,(%esp)
80103433:	e8 a7 07 00 00       	call   80103bdf <release>
  return pid;
80103438:	83 c4 10             	add    $0x10,%esp
}
8010343b:	89 d8                	mov    %ebx,%eax
8010343d:	8d 65 f4             	lea    -0xc(%ebp),%esp
80103440:	5b                   	pop    %ebx
80103441:	5e                   	pop    %esi
80103442:	5f                   	pop    %edi
80103443:	5d                   	pop    %ebp
80103444:	c3                   	ret    
    return -1;
80103445:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
8010344a:	eb ef                	jmp    8010343b <fork+0xf6>

8010344c <scheduler>:
{
8010344c:	55                   	push   %ebp
8010344d:	89 e5                	mov    %esp,%ebp
8010344f:	56                   	push   %esi
80103450:	53                   	push   %ebx
  struct cpu *c = mycpu();
80103451:	e8 03 fd ff ff       	call   80103159 <mycpu>
80103456:	89 c6                	mov    %eax,%esi
  c->proc = 0;
80103458:	c7 80 ac 00 00 00 00 	movl   $0x0,0xac(%eax)
8010345f:	00 00 00 
80103462:	eb 5a                	jmp    801034be <scheduler+0x72>
    for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
80103464:	83 eb 80             	sub    $0xffffff80,%ebx
80103467:	81 fb 54 2d 11 80    	cmp    $0x80112d54,%ebx
8010346d:	73 3f                	jae    801034ae <scheduler+0x62>
      if(p->state != RUNNABLE)
8010346f:	83 7b 0c 03          	cmpl   $0x3,0xc(%ebx)
80103473:	75 ef                	jne    80103464 <scheduler+0x18>
      c->proc = p;
80103475:	89 9e ac 00 00 00    	mov    %ebx,0xac(%esi)
      switchuvm(p);
8010347b:	83 ec 0c             	sub    $0xc,%esp
8010347e:	53                   	push   %ebx
8010347f:	e8 d1 2a 00 00       	call   80105f55 <switchuvm>
      p->state = RUNNING;
80103484:	c7 43 0c 04 00 00 00 	movl   $0x4,0xc(%ebx)
      swtch(&(c->scheduler), p->context);
8010348b:	83 c4 08             	add    $0x8,%esp
8010348e:	ff 73 1c             	push   0x1c(%ebx)
80103491:	8d 46 04             	lea    0x4(%esi),%eax
80103494:	50                   	push   %eax
80103495:	e8 4d 09 00 00       	call   80103de7 <swtch>
      switchkvm();
8010349a:	e8 a4 2a 00 00       	call   80105f43 <switchkvm>
      c->proc = 0;
8010349f:	c7 86 ac 00 00 00 00 	movl   $0x0,0xac(%esi)
801034a6:	00 00 00 
801034a9:	83 c4 10             	add    $0x10,%esp
801034ac:	eb b6                	jmp    80103464 <scheduler+0x18>
    release(&ptable.lock);
801034ae:	83 ec 0c             	sub    $0xc,%esp
801034b1:	68 20 0d 11 80       	push   $0x80110d20
801034b6:	e8 24 07 00 00       	call   80103bdf <release>
    sti();
801034bb:	83 c4 10             	add    $0x10,%esp
  asm volatile("sti");
801034be:	fb                   	sti    
    acquire(&ptable.lock);
801034bf:	83 ec 0c             	sub    $0xc,%esp
801034c2:	68 20 0d 11 80       	push   $0x80110d20
801034c7:	e8 ae 06 00 00       	call   80103b7a <acquire>
    for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
801034cc:	83 c4 10             	add    $0x10,%esp
801034cf:	bb 54 0d 11 80       	mov    $0x80110d54,%ebx
801034d4:	eb 91                	jmp    80103467 <scheduler+0x1b>

801034d6 <sched>:
{
801034d6:	55                   	push   %ebp
801034d7:	89 e5                	mov    %esp,%ebp
801034d9:	56                   	push   %esi
801034da:	53                   	push   %ebx
  struct proc *p = myproc();
801034db:	e8 f0 fc ff ff       	call   801031d0 <myproc>
801034e0:	89 c3                	mov    %eax,%ebx
  if(!holding(&ptable.lock))
801034e2:	83 ec 0c             	sub    $0xc,%esp
801034e5:	68 20 0d 11 80       	push   $0x80110d20
801034ea:	e8 4c 06 00 00       	call   80103b3b <holding>
801034ef:	83 c4 10             	add    $0x10,%esp
801034f2:	85 c0                	test   %eax,%eax
801034f4:	74 4f                	je     80103545 <sched+0x6f>
  if(mycpu()->ncli != 1)
801034f6:	e8 5e fc ff ff       	call   80103159 <mycpu>
801034fb:	83 b8 a4 00 00 00 01 	cmpl   $0x1,0xa4(%eax)
80103502:	75 4e                	jne    80103552 <sched+0x7c>
  if(p->state == RUNNING)
80103504:	83 7b 0c 04          	cmpl   $0x4,0xc(%ebx)
80103508:	74 55                	je     8010355f <sched+0x89>
  asm volatile("pushfl; popl %0" : "=r" (eflags));
8010350a:	9c                   	pushf  
8010350b:	58                   	pop    %eax
  if(readeflags()&FL_IF)
8010350c:	f6 c4 02             	test   $0x2,%ah
8010350f:	75 5b                	jne    8010356c <sched+0x96>
  intena = mycpu()->intena;
80103511:	e8 43 fc ff ff       	call   80103159 <mycpu>
80103516:	8b b0 a8 00 00 00    	mov    0xa8(%eax),%esi
  swtch(&p->context, mycpu()->scheduler);
8010351c:	e8 38 fc ff ff       	call   80103159 <mycpu>
80103521:	83 ec 08             	sub    $0x8,%esp
80103524:	ff 70 04             	push   0x4(%eax)
80103527:	83 c3 1c             	add    $0x1c,%ebx
8010352a:	53                   	push   %ebx
8010352b:	e8 b7 08 00 00       	call   80103de7 <swtch>
  mycpu()->intena = intena;
80103530:	e8 24 fc ff ff       	call   80103159 <mycpu>
80103535:	89 b0 a8 00 00 00    	mov    %esi,0xa8(%eax)
}
8010353b:	83 c4 10             	add    $0x10,%esp
8010353e:	8d 65 f8             	lea    -0x8(%ebp),%esp
80103541:	5b                   	pop    %ebx
80103542:	5e                   	pop    %esi
80103543:	5d                   	pop    %ebp
80103544:	c3                   	ret    
    panic("sched ptable.lock");
80103545:	83 ec 0c             	sub    $0xc,%esp
80103548:	68 5b 6b 10 80       	push   $0x80106b5b
8010354d:	e8 f6 cd ff ff       	call   80100348 <panic>
    panic("sched locks");
80103552:	83 ec 0c             	sub    $0xc,%esp
80103555:	68 6d 6b 10 80       	push   $0x80106b6d
8010355a:	e8 e9 cd ff ff       	call   80100348 <panic>
    panic("sched running");
8010355f:	83 ec 0c             	sub    $0xc,%esp
80103562:	68 79 6b 10 80       	push   $0x80106b79
80103567:	e8 dc cd ff ff       	call   80100348 <panic>
    panic("sched interruptible");
8010356c:	83 ec 0c             	sub    $0xc,%esp
8010356f:	68 87 6b 10 80       	push   $0x80106b87
80103574:	e8 cf cd ff ff       	call   80100348 <panic>

80103579 <exit>:
{
80103579:	55                   	push   %ebp
8010357a:	89 e5                	mov    %esp,%ebp
8010357c:	56                   	push   %esi
8010357d:	53                   	push   %ebx
  struct proc *curproc = myproc();
8010357e:	e8 4d fc ff ff       	call   801031d0 <myproc>
  if(curproc == initproc)
80103583:	39 05 54 2d 11 80    	cmp    %eax,0x80112d54
80103589:	74 09                	je     80103594 <exit+0x1b>
8010358b:	89 c6                	mov    %eax,%esi
  for(fd = 0; fd < NOFILE; fd++){
8010358d:	bb 00 00 00 00       	mov    $0x0,%ebx
80103592:	eb 24                	jmp    801035b8 <exit+0x3f>
    panic("init exiting");
80103594:	83 ec 0c             	sub    $0xc,%esp
80103597:	68 9b 6b 10 80       	push   $0x80106b9b
8010359c:	e8 a7 cd ff ff       	call   80100348 <panic>
      fileclose(curproc->ofile[fd]);
801035a1:	83 ec 0c             	sub    $0xc,%esp
801035a4:	50                   	push   %eax
801035a5:	e8 26 d7 ff ff       	call   80100cd0 <fileclose>
      curproc->ofile[fd] = 0;
801035aa:	c7 44 9e 28 00 00 00 	movl   $0x0,0x28(%esi,%ebx,4)
801035b1:	00 
801035b2:	83 c4 10             	add    $0x10,%esp
  for(fd = 0; fd < NOFILE; fd++){
801035b5:	83 c3 01             	add    $0x1,%ebx
801035b8:	83 fb 0f             	cmp    $0xf,%ebx
801035bb:	7f 0a                	jg     801035c7 <exit+0x4e>
    if(curproc->ofile[fd]){
801035bd:	8b 44 9e 28          	mov    0x28(%esi,%ebx,4),%eax
801035c1:	85 c0                	test   %eax,%eax
801035c3:	75 dc                	jne    801035a1 <exit+0x28>
801035c5:	eb ee                	jmp    801035b5 <exit+0x3c>
  begin_op();
801035c7:	e8 cd f1 ff ff       	call   80102799 <begin_op>
  iput(curproc->cwd);
801035cc:	83 ec 0c             	sub    $0xc,%esp
801035cf:	ff 76 68             	push   0x68(%esi)
801035d2:	e8 ba e0 ff ff       	call   80101691 <iput>
  end_op();
801035d7:	e8 37 f2 ff ff       	call   80102813 <end_op>
  curproc->cwd = 0;
801035dc:	c7 46 68 00 00 00 00 	movl   $0x0,0x68(%esi)
  acquire(&ptable.lock);
801035e3:	c7 04 24 20 0d 11 80 	movl   $0x80110d20,(%esp)
801035ea:	e8 8b 05 00 00       	call   80103b7a <acquire>
  wakeup1(curproc->parent);
801035ef:	8b 46 14             	mov    0x14(%esi),%eax
801035f2:	e8 20 fa ff ff       	call   80103017 <wakeup1>
  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
801035f7:	83 c4 10             	add    $0x10,%esp
801035fa:	bb 54 0d 11 80       	mov    $0x80110d54,%ebx
801035ff:	eb 03                	jmp    80103604 <exit+0x8b>
80103601:	83 eb 80             	sub    $0xffffff80,%ebx
80103604:	81 fb 54 2d 11 80    	cmp    $0x80112d54,%ebx
8010360a:	73 1a                	jae    80103626 <exit+0xad>
    if(p->parent == curproc){
8010360c:	39 73 14             	cmp    %esi,0x14(%ebx)
8010360f:	75 f0                	jne    80103601 <exit+0x88>
      p->parent = initproc;
80103611:	a1 54 2d 11 80       	mov    0x80112d54,%eax
80103616:	89 43 14             	mov    %eax,0x14(%ebx)
      if(p->state == ZOMBIE)
80103619:	83 7b 0c 05          	cmpl   $0x5,0xc(%ebx)
8010361d:	75 e2                	jne    80103601 <exit+0x88>
        wakeup1(initproc);
8010361f:	e8 f3 f9 ff ff       	call   80103017 <wakeup1>
80103624:	eb db                	jmp    80103601 <exit+0x88>
  curproc->status = status;
80103626:	8b 45 08             	mov    0x8(%ebp),%eax
80103629:	89 46 7c             	mov    %eax,0x7c(%esi)
  curproc->state = ZOMBIE;
8010362c:	c7 46 0c 05 00 00 00 	movl   $0x5,0xc(%esi)
  sched();
80103633:	e8 9e fe ff ff       	call   801034d6 <sched>
  panic("zombie exit");
80103638:	83 ec 0c             	sub    $0xc,%esp
8010363b:	68 a8 6b 10 80       	push   $0x80106ba8
80103640:	e8 03 cd ff ff       	call   80100348 <panic>

80103645 <yield>:
{
80103645:	55                   	push   %ebp
80103646:	89 e5                	mov    %esp,%ebp
80103648:	83 ec 14             	sub    $0x14,%esp
  acquire(&ptable.lock);  //DOC: yieldlock
8010364b:	68 20 0d 11 80       	push   $0x80110d20
80103650:	e8 25 05 00 00       	call   80103b7a <acquire>
  myproc()->state = RUNNABLE;
80103655:	e8 76 fb ff ff       	call   801031d0 <myproc>
8010365a:	c7 40 0c 03 00 00 00 	movl   $0x3,0xc(%eax)
  sched();
80103661:	e8 70 fe ff ff       	call   801034d6 <sched>
  release(&ptable.lock);
80103666:	c7 04 24 20 0d 11 80 	movl   $0x80110d20,(%esp)
8010366d:	e8 6d 05 00 00       	call   80103bdf <release>
}
80103672:	83 c4 10             	add    $0x10,%esp
80103675:	c9                   	leave  
80103676:	c3                   	ret    

80103677 <sleep>:
{
80103677:	55                   	push   %ebp
80103678:	89 e5                	mov    %esp,%ebp
8010367a:	56                   	push   %esi
8010367b:	53                   	push   %ebx
8010367c:	8b 75 0c             	mov    0xc(%ebp),%esi
  struct proc *p = myproc();
8010367f:	e8 4c fb ff ff       	call   801031d0 <myproc>
  if(p == 0)
80103684:	85 c0                	test   %eax,%eax
80103686:	74 66                	je     801036ee <sleep+0x77>
80103688:	89 c3                	mov    %eax,%ebx
  if(lk == 0)
8010368a:	85 f6                	test   %esi,%esi
8010368c:	74 6d                	je     801036fb <sleep+0x84>
  if(lk != &ptable.lock){  //DOC: sleeplock0
8010368e:	81 fe 20 0d 11 80    	cmp    $0x80110d20,%esi
80103694:	74 18                	je     801036ae <sleep+0x37>
    acquire(&ptable.lock);  //DOC: sleeplock1
80103696:	83 ec 0c             	sub    $0xc,%esp
80103699:	68 20 0d 11 80       	push   $0x80110d20
8010369e:	e8 d7 04 00 00       	call   80103b7a <acquire>
    release(lk);
801036a3:	89 34 24             	mov    %esi,(%esp)
801036a6:	e8 34 05 00 00       	call   80103bdf <release>
801036ab:	83 c4 10             	add    $0x10,%esp
  p->chan = chan;
801036ae:	8b 45 08             	mov    0x8(%ebp),%eax
801036b1:	89 43 20             	mov    %eax,0x20(%ebx)
  p->state = SLEEPING;
801036b4:	c7 43 0c 02 00 00 00 	movl   $0x2,0xc(%ebx)
  sched();
801036bb:	e8 16 fe ff ff       	call   801034d6 <sched>
  p->chan = 0;
801036c0:	c7 43 20 00 00 00 00 	movl   $0x0,0x20(%ebx)
  if(lk != &ptable.lock){  //DOC: sleeplock2
801036c7:	81 fe 20 0d 11 80    	cmp    $0x80110d20,%esi
801036cd:	74 18                	je     801036e7 <sleep+0x70>
    release(&ptable.lock);
801036cf:	83 ec 0c             	sub    $0xc,%esp
801036d2:	68 20 0d 11 80       	push   $0x80110d20
801036d7:	e8 03 05 00 00       	call   80103bdf <release>
    acquire(lk);
801036dc:	89 34 24             	mov    %esi,(%esp)
801036df:	e8 96 04 00 00       	call   80103b7a <acquire>
801036e4:	83 c4 10             	add    $0x10,%esp
}
801036e7:	8d 65 f8             	lea    -0x8(%ebp),%esp
801036ea:	5b                   	pop    %ebx
801036eb:	5e                   	pop    %esi
801036ec:	5d                   	pop    %ebp
801036ed:	c3                   	ret    
    panic("sleep");
801036ee:	83 ec 0c             	sub    $0xc,%esp
801036f1:	68 b4 6b 10 80       	push   $0x80106bb4
801036f6:	e8 4d cc ff ff       	call   80100348 <panic>
    panic("sleep without lk");
801036fb:	83 ec 0c             	sub    $0xc,%esp
801036fe:	68 ba 6b 10 80       	push   $0x80106bba
80103703:	e8 40 cc ff ff       	call   80100348 <panic>

80103708 <wait>:
{
80103708:	55                   	push   %ebp
80103709:	89 e5                	mov    %esp,%ebp
8010370b:	56                   	push   %esi
8010370c:	53                   	push   %ebx
  struct proc *curproc = myproc();
8010370d:	e8 be fa ff ff       	call   801031d0 <myproc>
80103712:	89 c6                	mov    %eax,%esi
  acquire(&ptable.lock);
80103714:	83 ec 0c             	sub    $0xc,%esp
80103717:	68 20 0d 11 80       	push   $0x80110d20
8010371c:	e8 59 04 00 00       	call   80103b7a <acquire>
80103721:	83 c4 10             	add    $0x10,%esp
    havekids = 0;
80103724:	b8 00 00 00 00       	mov    $0x0,%eax
    for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
80103729:	bb 54 0d 11 80       	mov    $0x80110d54,%ebx
8010372e:	eb 63                	jmp    80103793 <wait+0x8b>
        pid = p->pid;
80103730:	8b 73 10             	mov    0x10(%ebx),%esi
        kfree(p->kstack);
80103733:	83 ec 0c             	sub    $0xc,%esp
80103736:	ff 73 08             	push   0x8(%ebx)
80103739:	e8 69 e8 ff ff       	call   80101fa7 <kfree>
        p->kstack = 0;
8010373e:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
        freevm(p->pgdir);
80103745:	83 c4 04             	add    $0x4,%esp
80103748:	ff 73 04             	push   0x4(%ebx)
8010374b:	e8 b0 2b 00 00       	call   80106300 <freevm>
        p->pid = 0;
80103750:	c7 43 10 00 00 00 00 	movl   $0x0,0x10(%ebx)
        p->parent = 0;
80103757:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)
        p->name[0] = 0;
8010375e:	c6 43 6c 00          	movb   $0x0,0x6c(%ebx)
        p->killed = 0;
80103762:	c7 43 24 00 00 00 00 	movl   $0x0,0x24(%ebx)
        p->state = UNUSED;
80103769:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
        *status = p->status;
80103770:	8b 53 7c             	mov    0x7c(%ebx),%edx
80103773:	8b 45 08             	mov    0x8(%ebp),%eax
80103776:	89 10                	mov    %edx,(%eax)
        release(&ptable.lock);
80103778:	c7 04 24 20 0d 11 80 	movl   $0x80110d20,(%esp)
8010377f:	e8 5b 04 00 00       	call   80103bdf <release>
        return pid;
80103784:	83 c4 10             	add    $0x10,%esp
}
80103787:	89 f0                	mov    %esi,%eax
80103789:	8d 65 f8             	lea    -0x8(%ebp),%esp
8010378c:	5b                   	pop    %ebx
8010378d:	5e                   	pop    %esi
8010378e:	5d                   	pop    %ebp
8010378f:	c3                   	ret    
    for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
80103790:	83 eb 80             	sub    $0xffffff80,%ebx
80103793:	81 fb 54 2d 11 80    	cmp    $0x80112d54,%ebx
80103799:	73 12                	jae    801037ad <wait+0xa5>
      if(p->parent != curproc)
8010379b:	39 73 14             	cmp    %esi,0x14(%ebx)
8010379e:	75 f0                	jne    80103790 <wait+0x88>
      if(p->state == ZOMBIE){
801037a0:	83 7b 0c 05          	cmpl   $0x5,0xc(%ebx)
801037a4:	74 8a                	je     80103730 <wait+0x28>
      havekids = 1;
801037a6:	b8 01 00 00 00       	mov    $0x1,%eax
801037ab:	eb e3                	jmp    80103790 <wait+0x88>
    if(!havekids || curproc->killed){
801037ad:	85 c0                	test   %eax,%eax
801037af:	74 06                	je     801037b7 <wait+0xaf>
801037b1:	83 7e 24 00          	cmpl   $0x0,0x24(%esi)
801037b5:	74 17                	je     801037ce <wait+0xc6>
      release(&ptable.lock);
801037b7:	83 ec 0c             	sub    $0xc,%esp
801037ba:	68 20 0d 11 80       	push   $0x80110d20
801037bf:	e8 1b 04 00 00       	call   80103bdf <release>
      return -1;
801037c4:	83 c4 10             	add    $0x10,%esp
801037c7:	be ff ff ff ff       	mov    $0xffffffff,%esi
801037cc:	eb b9                	jmp    80103787 <wait+0x7f>
    sleep(curproc, &ptable.lock);  //DOC: wait-sleep
801037ce:	83 ec 08             	sub    $0x8,%esp
801037d1:	68 20 0d 11 80       	push   $0x80110d20
801037d6:	56                   	push   %esi
801037d7:	e8 9b fe ff ff       	call   80103677 <sleep>
    havekids = 0;
801037dc:	83 c4 10             	add    $0x10,%esp
801037df:	e9 40 ff ff ff       	jmp    80103724 <wait+0x1c>

801037e4 <wakeup>:

// Wake up all processes sleeping on chan.
void
wakeup(void *chan)
{
801037e4:	55                   	push   %ebp
801037e5:	89 e5                	mov    %esp,%ebp
801037e7:	83 ec 14             	sub    $0x14,%esp
  acquire(&ptable.lock);
801037ea:	68 20 0d 11 80       	push   $0x80110d20
801037ef:	e8 86 03 00 00       	call   80103b7a <acquire>
  wakeup1(chan);
801037f4:	8b 45 08             	mov    0x8(%ebp),%eax
801037f7:	e8 1b f8 ff ff       	call   80103017 <wakeup1>
  release(&ptable.lock);
801037fc:	c7 04 24 20 0d 11 80 	movl   $0x80110d20,(%esp)
80103803:	e8 d7 03 00 00       	call   80103bdf <release>
}
80103808:	83 c4 10             	add    $0x10,%esp
8010380b:	c9                   	leave  
8010380c:	c3                   	ret    

8010380d <kill>:
// Kill the process with the given pid.
// Process won't exit until it returns
// to user space (see trap in trap.c).
int
kill(int pid)
{
8010380d:	55                   	push   %ebp
8010380e:	89 e5                	mov    %esp,%ebp
80103810:	53                   	push   %ebx
80103811:	83 ec 10             	sub    $0x10,%esp
80103814:	8b 5d 08             	mov    0x8(%ebp),%ebx
  struct proc *p;

  acquire(&ptable.lock);
80103817:	68 20 0d 11 80       	push   $0x80110d20
8010381c:	e8 59 03 00 00       	call   80103b7a <acquire>
  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
80103821:	83 c4 10             	add    $0x10,%esp
80103824:	b8 54 0d 11 80       	mov    $0x80110d54,%eax
80103829:	eb 0c                	jmp    80103837 <kill+0x2a>
    if(p->pid == pid){
      p->killed = 1;
      // Wake process from sleep if necessary.
      if(p->state == SLEEPING)
        p->state = RUNNABLE;
8010382b:	c7 40 0c 03 00 00 00 	movl   $0x3,0xc(%eax)
80103832:	eb 1c                	jmp    80103850 <kill+0x43>
  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
80103834:	83 e8 80             	sub    $0xffffff80,%eax
80103837:	3d 54 2d 11 80       	cmp    $0x80112d54,%eax
8010383c:	73 2c                	jae    8010386a <kill+0x5d>
    if(p->pid == pid){
8010383e:	39 58 10             	cmp    %ebx,0x10(%eax)
80103841:	75 f1                	jne    80103834 <kill+0x27>
      p->killed = 1;
80103843:	c7 40 24 01 00 00 00 	movl   $0x1,0x24(%eax)
      if(p->state == SLEEPING)
8010384a:	83 78 0c 02          	cmpl   $0x2,0xc(%eax)
8010384e:	74 db                	je     8010382b <kill+0x1e>
      release(&ptable.lock);
80103850:	83 ec 0c             	sub    $0xc,%esp
80103853:	68 20 0d 11 80       	push   $0x80110d20
80103858:	e8 82 03 00 00       	call   80103bdf <release>
      return 0;
8010385d:	83 c4 10             	add    $0x10,%esp
80103860:	b8 00 00 00 00       	mov    $0x0,%eax
    }
  }
  release(&ptable.lock);
  return -1;
}
80103865:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80103868:	c9                   	leave  
80103869:	c3                   	ret    
  release(&ptable.lock);
8010386a:	83 ec 0c             	sub    $0xc,%esp
8010386d:	68 20 0d 11 80       	push   $0x80110d20
80103872:	e8 68 03 00 00       	call   80103bdf <release>
  return -1;
80103877:	83 c4 10             	add    $0x10,%esp
8010387a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010387f:	eb e4                	jmp    80103865 <kill+0x58>

80103881 <procdump>:
// Print a process listing to console.  For debugging.
// Runs when user types ^P on console.
// No lock to avoid wedging a stuck machine further.
void
procdump(void)
{
80103881:	55                   	push   %ebp
80103882:	89 e5                	mov    %esp,%ebp
80103884:	56                   	push   %esi
80103885:	53                   	push   %ebx
80103886:	83 ec 30             	sub    $0x30,%esp
  int i;
  struct proc *p;
  char *state;
  uint pc[10];

  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
80103889:	bb 54 0d 11 80       	mov    $0x80110d54,%ebx
8010388e:	eb 33                	jmp    801038c3 <procdump+0x42>
    if(p->state == UNUSED)
      continue;
    if(p->state >= 0 && p->state < NELEM(states) && states[p->state])
      state = states[p->state];
    else
      state = "???";
80103890:	b8 cb 6b 10 80       	mov    $0x80106bcb,%eax
    cprintf("%d %s %s", p->pid, state, p->name);
80103895:	8d 53 6c             	lea    0x6c(%ebx),%edx
80103898:	52                   	push   %edx
80103899:	50                   	push   %eax
8010389a:	ff 73 10             	push   0x10(%ebx)
8010389d:	68 cf 6b 10 80       	push   $0x80106bcf
801038a2:	e8 60 cd ff ff       	call   80100607 <cprintf>
    if(p->state == SLEEPING){
801038a7:	83 c4 10             	add    $0x10,%esp
801038aa:	83 7b 0c 02          	cmpl   $0x2,0xc(%ebx)
801038ae:	74 39                	je     801038e9 <procdump+0x68>
      getcallerpcs((uint*)p->context->ebp+2, pc);
      for(i=0; i<10 && pc[i] != 0; i++)
        cprintf(" %p", pc[i]);
    }
    cprintf("\n");
801038b0:	83 ec 0c             	sub    $0xc,%esp
801038b3:	68 87 6f 10 80       	push   $0x80106f87
801038b8:	e8 4a cd ff ff       	call   80100607 <cprintf>
801038bd:	83 c4 10             	add    $0x10,%esp
  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
801038c0:	83 eb 80             	sub    $0xffffff80,%ebx
801038c3:	81 fb 54 2d 11 80    	cmp    $0x80112d54,%ebx
801038c9:	73 61                	jae    8010392c <procdump+0xab>
    if(p->state == UNUSED)
801038cb:	8b 43 0c             	mov    0xc(%ebx),%eax
801038ce:	85 c0                	test   %eax,%eax
801038d0:	74 ee                	je     801038c0 <procdump+0x3f>
    if(p->state >= 0 && p->state < NELEM(states) && states[p->state])
801038d2:	83 f8 05             	cmp    $0x5,%eax
801038d5:	77 b9                	ja     80103890 <procdump+0xf>
801038d7:	8b 04 85 2c 6c 10 80 	mov    -0x7fef93d4(,%eax,4),%eax
801038de:	85 c0                	test   %eax,%eax
801038e0:	75 b3                	jne    80103895 <procdump+0x14>
      state = "???";
801038e2:	b8 cb 6b 10 80       	mov    $0x80106bcb,%eax
801038e7:	eb ac                	jmp    80103895 <procdump+0x14>
      getcallerpcs((uint*)p->context->ebp+2, pc);
801038e9:	8b 43 1c             	mov    0x1c(%ebx),%eax
801038ec:	8b 40 0c             	mov    0xc(%eax),%eax
801038ef:	83 c0 08             	add    $0x8,%eax
801038f2:	83 ec 08             	sub    $0x8,%esp
801038f5:	8d 55 d0             	lea    -0x30(%ebp),%edx
801038f8:	52                   	push   %edx
801038f9:	50                   	push   %eax
801038fa:	e8 5a 01 00 00       	call   80103a59 <getcallerpcs>
      for(i=0; i<10 && pc[i] != 0; i++)
801038ff:	83 c4 10             	add    $0x10,%esp
80103902:	be 00 00 00 00       	mov    $0x0,%esi
80103907:	eb 14                	jmp    8010391d <procdump+0x9c>
        cprintf(" %p", pc[i]);
80103909:	83 ec 08             	sub    $0x8,%esp
8010390c:	50                   	push   %eax
8010390d:	68 21 66 10 80       	push   $0x80106621
80103912:	e8 f0 cc ff ff       	call   80100607 <cprintf>
      for(i=0; i<10 && pc[i] != 0; i++)
80103917:	83 c6 01             	add    $0x1,%esi
8010391a:	83 c4 10             	add    $0x10,%esp
8010391d:	83 fe 09             	cmp    $0x9,%esi
80103920:	7f 8e                	jg     801038b0 <procdump+0x2f>
80103922:	8b 44 b5 d0          	mov    -0x30(%ebp,%esi,4),%eax
80103926:	85 c0                	test   %eax,%eax
80103928:	75 df                	jne    80103909 <procdump+0x88>
8010392a:	eb 84                	jmp    801038b0 <procdump+0x2f>
  }
}
8010392c:	8d 65 f8             	lea    -0x8(%ebp),%esp
8010392f:	5b                   	pop    %ebx
80103930:	5e                   	pop    %esi
80103931:	5d                   	pop    %ebp
80103932:	c3                   	ret    

80103933 <initsleeplock>:
#include "spinlock.h"
#include "sleeplock.h"

void
initsleeplock(struct sleeplock *lk, char *name)
{
80103933:	55                   	push   %ebp
80103934:	89 e5                	mov    %esp,%ebp
80103936:	53                   	push   %ebx
80103937:	83 ec 0c             	sub    $0xc,%esp
8010393a:	8b 5d 08             	mov    0x8(%ebp),%ebx
  initlock(&lk->lk, "sleep lock");
8010393d:	68 44 6c 10 80       	push   $0x80106c44
80103942:	8d 43 04             	lea    0x4(%ebx),%eax
80103945:	50                   	push   %eax
80103946:	e8 f3 00 00 00       	call   80103a3e <initlock>
  lk->name = name;
8010394b:	8b 45 0c             	mov    0xc(%ebp),%eax
8010394e:	89 43 38             	mov    %eax,0x38(%ebx)
  lk->locked = 0;
80103951:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
  lk->pid = 0;
80103957:	c7 43 3c 00 00 00 00 	movl   $0x0,0x3c(%ebx)
}
8010395e:	83 c4 10             	add    $0x10,%esp
80103961:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80103964:	c9                   	leave  
80103965:	c3                   	ret    

80103966 <acquiresleep>:

void
acquiresleep(struct sleeplock *lk)
{
80103966:	55                   	push   %ebp
80103967:	89 e5                	mov    %esp,%ebp
80103969:	56                   	push   %esi
8010396a:	53                   	push   %ebx
8010396b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  acquire(&lk->lk);
8010396e:	8d 73 04             	lea    0x4(%ebx),%esi
80103971:	83 ec 0c             	sub    $0xc,%esp
80103974:	56                   	push   %esi
80103975:	e8 00 02 00 00       	call   80103b7a <acquire>
  while (lk->locked) {
8010397a:	83 c4 10             	add    $0x10,%esp
8010397d:	eb 0d                	jmp    8010398c <acquiresleep+0x26>
    sleep(lk, &lk->lk);
8010397f:	83 ec 08             	sub    $0x8,%esp
80103982:	56                   	push   %esi
80103983:	53                   	push   %ebx
80103984:	e8 ee fc ff ff       	call   80103677 <sleep>
80103989:	83 c4 10             	add    $0x10,%esp
  while (lk->locked) {
8010398c:	83 3b 00             	cmpl   $0x0,(%ebx)
8010398f:	75 ee                	jne    8010397f <acquiresleep+0x19>
  }
  lk->locked = 1;
80103991:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
  lk->pid = myproc()->pid;
80103997:	e8 34 f8 ff ff       	call   801031d0 <myproc>
8010399c:	8b 40 10             	mov    0x10(%eax),%eax
8010399f:	89 43 3c             	mov    %eax,0x3c(%ebx)
  release(&lk->lk);
801039a2:	83 ec 0c             	sub    $0xc,%esp
801039a5:	56                   	push   %esi
801039a6:	e8 34 02 00 00       	call   80103bdf <release>
}
801039ab:	83 c4 10             	add    $0x10,%esp
801039ae:	8d 65 f8             	lea    -0x8(%ebp),%esp
801039b1:	5b                   	pop    %ebx
801039b2:	5e                   	pop    %esi
801039b3:	5d                   	pop    %ebp
801039b4:	c3                   	ret    

801039b5 <releasesleep>:

void
releasesleep(struct sleeplock *lk)
{
801039b5:	55                   	push   %ebp
801039b6:	89 e5                	mov    %esp,%ebp
801039b8:	56                   	push   %esi
801039b9:	53                   	push   %ebx
801039ba:	8b 5d 08             	mov    0x8(%ebp),%ebx
  acquire(&lk->lk);
801039bd:	8d 73 04             	lea    0x4(%ebx),%esi
801039c0:	83 ec 0c             	sub    $0xc,%esp
801039c3:	56                   	push   %esi
801039c4:	e8 b1 01 00 00       	call   80103b7a <acquire>
  lk->locked = 0;
801039c9:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
  lk->pid = 0;
801039cf:	c7 43 3c 00 00 00 00 	movl   $0x0,0x3c(%ebx)
  wakeup(lk);
801039d6:	89 1c 24             	mov    %ebx,(%esp)
801039d9:	e8 06 fe ff ff       	call   801037e4 <wakeup>
  release(&lk->lk);
801039de:	89 34 24             	mov    %esi,(%esp)
801039e1:	e8 f9 01 00 00       	call   80103bdf <release>
}
801039e6:	83 c4 10             	add    $0x10,%esp
801039e9:	8d 65 f8             	lea    -0x8(%ebp),%esp
801039ec:	5b                   	pop    %ebx
801039ed:	5e                   	pop    %esi
801039ee:	5d                   	pop    %ebp
801039ef:	c3                   	ret    

801039f0 <holdingsleep>:

int
holdingsleep(struct sleeplock *lk)
{
801039f0:	55                   	push   %ebp
801039f1:	89 e5                	mov    %esp,%ebp
801039f3:	56                   	push   %esi
801039f4:	53                   	push   %ebx
801039f5:	8b 5d 08             	mov    0x8(%ebp),%ebx
  int r;
  
  acquire(&lk->lk);
801039f8:	8d 73 04             	lea    0x4(%ebx),%esi
801039fb:	83 ec 0c             	sub    $0xc,%esp
801039fe:	56                   	push   %esi
801039ff:	e8 76 01 00 00       	call   80103b7a <acquire>
  r = lk->locked && (lk->pid == myproc()->pid);
80103a04:	83 c4 10             	add    $0x10,%esp
80103a07:	83 3b 00             	cmpl   $0x0,(%ebx)
80103a0a:	75 17                	jne    80103a23 <holdingsleep+0x33>
80103a0c:	bb 00 00 00 00       	mov    $0x0,%ebx
  release(&lk->lk);
80103a11:	83 ec 0c             	sub    $0xc,%esp
80103a14:	56                   	push   %esi
80103a15:	e8 c5 01 00 00       	call   80103bdf <release>
  return r;
}
80103a1a:	89 d8                	mov    %ebx,%eax
80103a1c:	8d 65 f8             	lea    -0x8(%ebp),%esp
80103a1f:	5b                   	pop    %ebx
80103a20:	5e                   	pop    %esi
80103a21:	5d                   	pop    %ebp
80103a22:	c3                   	ret    
  r = lk->locked && (lk->pid == myproc()->pid);
80103a23:	8b 5b 3c             	mov    0x3c(%ebx),%ebx
80103a26:	e8 a5 f7 ff ff       	call   801031d0 <myproc>
80103a2b:	3b 58 10             	cmp    0x10(%eax),%ebx
80103a2e:	74 07                	je     80103a37 <holdingsleep+0x47>
80103a30:	bb 00 00 00 00       	mov    $0x0,%ebx
80103a35:	eb da                	jmp    80103a11 <holdingsleep+0x21>
80103a37:	bb 01 00 00 00       	mov    $0x1,%ebx
80103a3c:	eb d3                	jmp    80103a11 <holdingsleep+0x21>

80103a3e <initlock>:
#include "proc.h"
#include "spinlock.h"

void
initlock(struct spinlock *lk, char *name)
{
80103a3e:	55                   	push   %ebp
80103a3f:	89 e5                	mov    %esp,%ebp
80103a41:	8b 45 08             	mov    0x8(%ebp),%eax
  lk->name = name;
80103a44:	8b 55 0c             	mov    0xc(%ebp),%edx
80103a47:	89 50 04             	mov    %edx,0x4(%eax)
  lk->locked = 0;
80103a4a:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  lk->cpu = 0;
80103a50:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
}
80103a57:	5d                   	pop    %ebp
80103a58:	c3                   	ret    

80103a59 <getcallerpcs>:
}

// Record the current call stack in pcs[] by following the %ebp chain.
void
getcallerpcs(void *v, uint pcs[])
{
80103a59:	55                   	push   %ebp
80103a5a:	89 e5                	mov    %esp,%ebp
80103a5c:	53                   	push   %ebx
80103a5d:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  uint *ebp;
  int i;

  ebp = (uint*)v - 2;
80103a60:	8b 45 08             	mov    0x8(%ebp),%eax
80103a63:	8d 50 f8             	lea    -0x8(%eax),%edx
  for(i = 0; i < 10; i++){
80103a66:	b8 00 00 00 00       	mov    $0x0,%eax
80103a6b:	83 f8 09             	cmp    $0x9,%eax
80103a6e:	7f 25                	jg     80103a95 <getcallerpcs+0x3c>
    if(ebp == 0 || ebp < (uint*)KERNBASE || ebp == (uint*)0xffffffff)
80103a70:	8d 9a 00 00 00 80    	lea    -0x80000000(%edx),%ebx
80103a76:	81 fb fe ff ff 7f    	cmp    $0x7ffffffe,%ebx
80103a7c:	77 17                	ja     80103a95 <getcallerpcs+0x3c>
      break;
    pcs[i] = ebp[1];     // saved %eip
80103a7e:	8b 5a 04             	mov    0x4(%edx),%ebx
80103a81:	89 1c 81             	mov    %ebx,(%ecx,%eax,4)
    ebp = (uint*)ebp[0]; // saved %ebp
80103a84:	8b 12                	mov    (%edx),%edx
  for(i = 0; i < 10; i++){
80103a86:	83 c0 01             	add    $0x1,%eax
80103a89:	eb e0                	jmp    80103a6b <getcallerpcs+0x12>
  }
  for(; i < 10; i++)
    pcs[i] = 0;
80103a8b:	c7 04 81 00 00 00 00 	movl   $0x0,(%ecx,%eax,4)
  for(; i < 10; i++)
80103a92:	83 c0 01             	add    $0x1,%eax
80103a95:	83 f8 09             	cmp    $0x9,%eax
80103a98:	7e f1                	jle    80103a8b <getcallerpcs+0x32>
}
80103a9a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80103a9d:	c9                   	leave  
80103a9e:	c3                   	ret    

80103a9f <pushcli>:
// it takes two popcli to undo two pushcli.  Also, if interrupts
// are off, then pushcli, popcli leaves them off.

void
pushcli(void)
{
80103a9f:	55                   	push   %ebp
80103aa0:	89 e5                	mov    %esp,%ebp
80103aa2:	53                   	push   %ebx
80103aa3:	83 ec 04             	sub    $0x4,%esp
80103aa6:	9c                   	pushf  
80103aa7:	5b                   	pop    %ebx
  asm volatile("cli");
80103aa8:	fa                   	cli    
  int eflags;

  eflags = readeflags();
  cli();
  if(mycpu()->ncli == 0)
80103aa9:	e8 ab f6 ff ff       	call   80103159 <mycpu>
80103aae:	83 b8 a4 00 00 00 00 	cmpl   $0x0,0xa4(%eax)
80103ab5:	74 11                	je     80103ac8 <pushcli+0x29>
    mycpu()->intena = eflags & FL_IF;
  mycpu()->ncli += 1;
80103ab7:	e8 9d f6 ff ff       	call   80103159 <mycpu>
80103abc:	83 80 a4 00 00 00 01 	addl   $0x1,0xa4(%eax)
}
80103ac3:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80103ac6:	c9                   	leave  
80103ac7:	c3                   	ret    
    mycpu()->intena = eflags & FL_IF;
80103ac8:	e8 8c f6 ff ff       	call   80103159 <mycpu>
80103acd:	81 e3 00 02 00 00    	and    $0x200,%ebx
80103ad3:	89 98 a8 00 00 00    	mov    %ebx,0xa8(%eax)
80103ad9:	eb dc                	jmp    80103ab7 <pushcli+0x18>

80103adb <popcli>:

void
popcli(void)
{
80103adb:	55                   	push   %ebp
80103adc:	89 e5                	mov    %esp,%ebp
80103ade:	83 ec 08             	sub    $0x8,%esp
  asm volatile("pushfl; popl %0" : "=r" (eflags));
80103ae1:	9c                   	pushf  
80103ae2:	58                   	pop    %eax
  if(readeflags()&FL_IF)
80103ae3:	f6 c4 02             	test   $0x2,%ah
80103ae6:	75 28                	jne    80103b10 <popcli+0x35>
    panic("popcli - interruptible");
  if(--mycpu()->ncli < 0)
80103ae8:	e8 6c f6 ff ff       	call   80103159 <mycpu>
80103aed:	8b 88 a4 00 00 00    	mov    0xa4(%eax),%ecx
80103af3:	8d 51 ff             	lea    -0x1(%ecx),%edx
80103af6:	89 90 a4 00 00 00    	mov    %edx,0xa4(%eax)
80103afc:	85 d2                	test   %edx,%edx
80103afe:	78 1d                	js     80103b1d <popcli+0x42>
    panic("popcli");
  if(mycpu()->ncli == 0 && mycpu()->intena)
80103b00:	e8 54 f6 ff ff       	call   80103159 <mycpu>
80103b05:	83 b8 a4 00 00 00 00 	cmpl   $0x0,0xa4(%eax)
80103b0c:	74 1c                	je     80103b2a <popcli+0x4f>
    sti();
}
80103b0e:	c9                   	leave  
80103b0f:	c3                   	ret    
    panic("popcli - interruptible");
80103b10:	83 ec 0c             	sub    $0xc,%esp
80103b13:	68 4f 6c 10 80       	push   $0x80106c4f
80103b18:	e8 2b c8 ff ff       	call   80100348 <panic>
    panic("popcli");
80103b1d:	83 ec 0c             	sub    $0xc,%esp
80103b20:	68 66 6c 10 80       	push   $0x80106c66
80103b25:	e8 1e c8 ff ff       	call   80100348 <panic>
  if(mycpu()->ncli == 0 && mycpu()->intena)
80103b2a:	e8 2a f6 ff ff       	call   80103159 <mycpu>
80103b2f:	83 b8 a8 00 00 00 00 	cmpl   $0x0,0xa8(%eax)
80103b36:	74 d6                	je     80103b0e <popcli+0x33>
  asm volatile("sti");
80103b38:	fb                   	sti    
}
80103b39:	eb d3                	jmp    80103b0e <popcli+0x33>

80103b3b <holding>:
{
80103b3b:	55                   	push   %ebp
80103b3c:	89 e5                	mov    %esp,%ebp
80103b3e:	53                   	push   %ebx
80103b3f:	83 ec 04             	sub    $0x4,%esp
80103b42:	8b 5d 08             	mov    0x8(%ebp),%ebx
  pushcli();
80103b45:	e8 55 ff ff ff       	call   80103a9f <pushcli>
  r = lock->locked && lock->cpu == mycpu();
80103b4a:	83 3b 00             	cmpl   $0x0,(%ebx)
80103b4d:	75 11                	jne    80103b60 <holding+0x25>
80103b4f:	bb 00 00 00 00       	mov    $0x0,%ebx
  popcli();
80103b54:	e8 82 ff ff ff       	call   80103adb <popcli>
}
80103b59:	89 d8                	mov    %ebx,%eax
80103b5b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80103b5e:	c9                   	leave  
80103b5f:	c3                   	ret    
  r = lock->locked && lock->cpu == mycpu();
80103b60:	8b 5b 08             	mov    0x8(%ebx),%ebx
80103b63:	e8 f1 f5 ff ff       	call   80103159 <mycpu>
80103b68:	39 c3                	cmp    %eax,%ebx
80103b6a:	74 07                	je     80103b73 <holding+0x38>
80103b6c:	bb 00 00 00 00       	mov    $0x0,%ebx
80103b71:	eb e1                	jmp    80103b54 <holding+0x19>
80103b73:	bb 01 00 00 00       	mov    $0x1,%ebx
80103b78:	eb da                	jmp    80103b54 <holding+0x19>

80103b7a <acquire>:
{
80103b7a:	55                   	push   %ebp
80103b7b:	89 e5                	mov    %esp,%ebp
80103b7d:	53                   	push   %ebx
80103b7e:	83 ec 04             	sub    $0x4,%esp
  pushcli(); // disable interrupts to avoid deadlock.
80103b81:	e8 19 ff ff ff       	call   80103a9f <pushcli>
  if(holding(lk))
80103b86:	83 ec 0c             	sub    $0xc,%esp
80103b89:	ff 75 08             	push   0x8(%ebp)
80103b8c:	e8 aa ff ff ff       	call   80103b3b <holding>
80103b91:	83 c4 10             	add    $0x10,%esp
80103b94:	85 c0                	test   %eax,%eax
80103b96:	75 3a                	jne    80103bd2 <acquire+0x58>
  while(xchg(&lk->locked, 1) != 0)
80103b98:	8b 55 08             	mov    0x8(%ebp),%edx
  asm volatile("lock; xchgl %0, %1" :
80103b9b:	b8 01 00 00 00       	mov    $0x1,%eax
80103ba0:	f0 87 02             	lock xchg %eax,(%edx)
80103ba3:	85 c0                	test   %eax,%eax
80103ba5:	75 f1                	jne    80103b98 <acquire+0x1e>
  __sync_synchronize();
80103ba7:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
  lk->cpu = mycpu();
80103bac:	8b 5d 08             	mov    0x8(%ebp),%ebx
80103baf:	e8 a5 f5 ff ff       	call   80103159 <mycpu>
80103bb4:	89 43 08             	mov    %eax,0x8(%ebx)
  getcallerpcs(&lk, lk->pcs);
80103bb7:	8b 45 08             	mov    0x8(%ebp),%eax
80103bba:	83 c0 0c             	add    $0xc,%eax
80103bbd:	83 ec 08             	sub    $0x8,%esp
80103bc0:	50                   	push   %eax
80103bc1:	8d 45 08             	lea    0x8(%ebp),%eax
80103bc4:	50                   	push   %eax
80103bc5:	e8 8f fe ff ff       	call   80103a59 <getcallerpcs>
}
80103bca:	83 c4 10             	add    $0x10,%esp
80103bcd:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80103bd0:	c9                   	leave  
80103bd1:	c3                   	ret    
    panic("acquire");
80103bd2:	83 ec 0c             	sub    $0xc,%esp
80103bd5:	68 6d 6c 10 80       	push   $0x80106c6d
80103bda:	e8 69 c7 ff ff       	call   80100348 <panic>

80103bdf <release>:
{
80103bdf:	55                   	push   %ebp
80103be0:	89 e5                	mov    %esp,%ebp
80103be2:	53                   	push   %ebx
80103be3:	83 ec 10             	sub    $0x10,%esp
80103be6:	8b 5d 08             	mov    0x8(%ebp),%ebx
  if(!holding(lk))
80103be9:	53                   	push   %ebx
80103bea:	e8 4c ff ff ff       	call   80103b3b <holding>
80103bef:	83 c4 10             	add    $0x10,%esp
80103bf2:	85 c0                	test   %eax,%eax
80103bf4:	74 23                	je     80103c19 <release+0x3a>
  lk->pcs[0] = 0;
80103bf6:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
  lk->cpu = 0;
80103bfd:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
  __sync_synchronize();
80103c04:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
  asm volatile("movl $0, %0" : "+m" (lk->locked) : );
80103c09:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
  popcli();
80103c0f:	e8 c7 fe ff ff       	call   80103adb <popcli>
}
80103c14:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80103c17:	c9                   	leave  
80103c18:	c3                   	ret    
    panic("release");
80103c19:	83 ec 0c             	sub    $0xc,%esp
80103c1c:	68 75 6c 10 80       	push   $0x80106c75
80103c21:	e8 22 c7 ff ff       	call   80100348 <panic>

80103c26 <memset>:
#include "types.h"
#include "x86.h"

void*
memset(void *dst, int c, uint n)
{
80103c26:	55                   	push   %ebp
80103c27:	89 e5                	mov    %esp,%ebp
80103c29:	57                   	push   %edi
80103c2a:	53                   	push   %ebx
80103c2b:	8b 55 08             	mov    0x8(%ebp),%edx
80103c2e:	8b 45 0c             	mov    0xc(%ebp),%eax
80103c31:	8b 4d 10             	mov    0x10(%ebp),%ecx
  if ((int)dst%4 == 0 && n%4 == 0){
80103c34:	f6 c2 03             	test   $0x3,%dl
80103c37:	75 25                	jne    80103c5e <memset+0x38>
80103c39:	f6 c1 03             	test   $0x3,%cl
80103c3c:	75 20                	jne    80103c5e <memset+0x38>
    c &= 0xFF;
80103c3e:	0f b6 f8             	movzbl %al,%edi
    stosl(dst, (c<<24)|(c<<16)|(c<<8)|c, n/4);
80103c41:	c1 e9 02             	shr    $0x2,%ecx
80103c44:	c1 e0 18             	shl    $0x18,%eax
80103c47:	89 fb                	mov    %edi,%ebx
80103c49:	c1 e3 10             	shl    $0x10,%ebx
80103c4c:	09 d8                	or     %ebx,%eax
80103c4e:	89 fb                	mov    %edi,%ebx
80103c50:	c1 e3 08             	shl    $0x8,%ebx
80103c53:	09 d8                	or     %ebx,%eax
80103c55:	09 f8                	or     %edi,%eax
  asm volatile("cld; rep stosl" :
80103c57:	89 d7                	mov    %edx,%edi
80103c59:	fc                   	cld    
80103c5a:	f3 ab                	rep stos %eax,%es:(%edi)
}
80103c5c:	eb 05                	jmp    80103c63 <memset+0x3d>
  asm volatile("cld; rep stosb" :
80103c5e:	89 d7                	mov    %edx,%edi
80103c60:	fc                   	cld    
80103c61:	f3 aa                	rep stos %al,%es:(%edi)
  } else
    stosb(dst, c, n);
  return dst;
}
80103c63:	89 d0                	mov    %edx,%eax
80103c65:	5b                   	pop    %ebx
80103c66:	5f                   	pop    %edi
80103c67:	5d                   	pop    %ebp
80103c68:	c3                   	ret    

80103c69 <memcmp>:

int
memcmp(const void *v1, const void *v2, uint n)
{
80103c69:	55                   	push   %ebp
80103c6a:	89 e5                	mov    %esp,%ebp
80103c6c:	56                   	push   %esi
80103c6d:	53                   	push   %ebx
80103c6e:	8b 4d 08             	mov    0x8(%ebp),%ecx
80103c71:	8b 55 0c             	mov    0xc(%ebp),%edx
80103c74:	8b 45 10             	mov    0x10(%ebp),%eax
  const uchar *s1, *s2;

  s1 = v1;
  s2 = v2;
  while(n-- > 0){
80103c77:	eb 08                	jmp    80103c81 <memcmp+0x18>
    if(*s1 != *s2)
      return *s1 - *s2;
    s1++, s2++;
80103c79:	83 c1 01             	add    $0x1,%ecx
80103c7c:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0){
80103c7f:	89 f0                	mov    %esi,%eax
80103c81:	8d 70 ff             	lea    -0x1(%eax),%esi
80103c84:	85 c0                	test   %eax,%eax
80103c86:	74 12                	je     80103c9a <memcmp+0x31>
    if(*s1 != *s2)
80103c88:	0f b6 01             	movzbl (%ecx),%eax
80103c8b:	0f b6 1a             	movzbl (%edx),%ebx
80103c8e:	38 d8                	cmp    %bl,%al
80103c90:	74 e7                	je     80103c79 <memcmp+0x10>
      return *s1 - *s2;
80103c92:	0f b6 c0             	movzbl %al,%eax
80103c95:	0f b6 db             	movzbl %bl,%ebx
80103c98:	29 d8                	sub    %ebx,%eax
  }

  return 0;
}
80103c9a:	5b                   	pop    %ebx
80103c9b:	5e                   	pop    %esi
80103c9c:	5d                   	pop    %ebp
80103c9d:	c3                   	ret    

80103c9e <memmove>:

void*
memmove(void *dst, const void *src, uint n)
{
80103c9e:	55                   	push   %ebp
80103c9f:	89 e5                	mov    %esp,%ebp
80103ca1:	56                   	push   %esi
80103ca2:	53                   	push   %ebx
80103ca3:	8b 75 08             	mov    0x8(%ebp),%esi
80103ca6:	8b 55 0c             	mov    0xc(%ebp),%edx
80103ca9:	8b 45 10             	mov    0x10(%ebp),%eax
  const char *s;
  char *d;

  s = src;
  d = dst;
  if(s < d && s + n > d){
80103cac:	39 f2                	cmp    %esi,%edx
80103cae:	73 3c                	jae    80103cec <memmove+0x4e>
80103cb0:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
80103cb3:	39 f1                	cmp    %esi,%ecx
80103cb5:	76 39                	jbe    80103cf0 <memmove+0x52>
    s += n;
    d += n;
80103cb7:	8d 14 06             	lea    (%esi,%eax,1),%edx
    while(n-- > 0)
80103cba:	eb 0d                	jmp    80103cc9 <memmove+0x2b>
      *--d = *--s;
80103cbc:	83 e9 01             	sub    $0x1,%ecx
80103cbf:	83 ea 01             	sub    $0x1,%edx
80103cc2:	0f b6 01             	movzbl (%ecx),%eax
80103cc5:	88 02                	mov    %al,(%edx)
    while(n-- > 0)
80103cc7:	89 d8                	mov    %ebx,%eax
80103cc9:	8d 58 ff             	lea    -0x1(%eax),%ebx
80103ccc:	85 c0                	test   %eax,%eax
80103cce:	75 ec                	jne    80103cbc <memmove+0x1e>
80103cd0:	eb 14                	jmp    80103ce6 <memmove+0x48>
  } else
    while(n-- > 0)
      *d++ = *s++;
80103cd2:	0f b6 02             	movzbl (%edx),%eax
80103cd5:	88 01                	mov    %al,(%ecx)
80103cd7:	8d 49 01             	lea    0x1(%ecx),%ecx
80103cda:	8d 52 01             	lea    0x1(%edx),%edx
    while(n-- > 0)
80103cdd:	89 d8                	mov    %ebx,%eax
80103cdf:	8d 58 ff             	lea    -0x1(%eax),%ebx
80103ce2:	85 c0                	test   %eax,%eax
80103ce4:	75 ec                	jne    80103cd2 <memmove+0x34>

  return dst;
}
80103ce6:	89 f0                	mov    %esi,%eax
80103ce8:	5b                   	pop    %ebx
80103ce9:	5e                   	pop    %esi
80103cea:	5d                   	pop    %ebp
80103ceb:	c3                   	ret    
80103cec:	89 f1                	mov    %esi,%ecx
80103cee:	eb ef                	jmp    80103cdf <memmove+0x41>
80103cf0:	89 f1                	mov    %esi,%ecx
80103cf2:	eb eb                	jmp    80103cdf <memmove+0x41>

80103cf4 <memcpy>:

// memcpy exists to placate GCC.  Use memmove.
void*
memcpy(void *dst, const void *src, uint n)
{
80103cf4:	55                   	push   %ebp
80103cf5:	89 e5                	mov    %esp,%ebp
80103cf7:	83 ec 0c             	sub    $0xc,%esp
  return memmove(dst, src, n);
80103cfa:	ff 75 10             	push   0x10(%ebp)
80103cfd:	ff 75 0c             	push   0xc(%ebp)
80103d00:	ff 75 08             	push   0x8(%ebp)
80103d03:	e8 96 ff ff ff       	call   80103c9e <memmove>
}
80103d08:	c9                   	leave  
80103d09:	c3                   	ret    

80103d0a <strncmp>:

int
strncmp(const char *p, const char *q, uint n)
{
80103d0a:	55                   	push   %ebp
80103d0b:	89 e5                	mov    %esp,%ebp
80103d0d:	53                   	push   %ebx
80103d0e:	8b 55 08             	mov    0x8(%ebp),%edx
80103d11:	8b 4d 0c             	mov    0xc(%ebp),%ecx
80103d14:	8b 45 10             	mov    0x10(%ebp),%eax
  while(n > 0 && *p && *p == *q)
80103d17:	eb 09                	jmp    80103d22 <strncmp+0x18>
    n--, p++, q++;
80103d19:	83 e8 01             	sub    $0x1,%eax
80103d1c:	83 c2 01             	add    $0x1,%edx
80103d1f:	83 c1 01             	add    $0x1,%ecx
  while(n > 0 && *p && *p == *q)
80103d22:	85 c0                	test   %eax,%eax
80103d24:	74 0b                	je     80103d31 <strncmp+0x27>
80103d26:	0f b6 1a             	movzbl (%edx),%ebx
80103d29:	84 db                	test   %bl,%bl
80103d2b:	74 04                	je     80103d31 <strncmp+0x27>
80103d2d:	3a 19                	cmp    (%ecx),%bl
80103d2f:	74 e8                	je     80103d19 <strncmp+0xf>
  if(n == 0)
80103d31:	85 c0                	test   %eax,%eax
80103d33:	74 0d                	je     80103d42 <strncmp+0x38>
    return 0;
  return (uchar)*p - (uchar)*q;
80103d35:	0f b6 02             	movzbl (%edx),%eax
80103d38:	0f b6 11             	movzbl (%ecx),%edx
80103d3b:	29 d0                	sub    %edx,%eax
}
80103d3d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80103d40:	c9                   	leave  
80103d41:	c3                   	ret    
    return 0;
80103d42:	b8 00 00 00 00       	mov    $0x0,%eax
80103d47:	eb f4                	jmp    80103d3d <strncmp+0x33>

80103d49 <strncpy>:

char*
strncpy(char *s, const char *t, int n)
{
80103d49:	55                   	push   %ebp
80103d4a:	89 e5                	mov    %esp,%ebp
80103d4c:	57                   	push   %edi
80103d4d:	56                   	push   %esi
80103d4e:	53                   	push   %ebx
80103d4f:	8b 7d 08             	mov    0x8(%ebp),%edi
80103d52:	8b 4d 0c             	mov    0xc(%ebp),%ecx
80103d55:	8b 45 10             	mov    0x10(%ebp),%eax
  char *os;

  os = s;
  while(n-- > 0 && (*s++ = *t++) != 0)
80103d58:	89 fa                	mov    %edi,%edx
80103d5a:	eb 04                	jmp    80103d60 <strncpy+0x17>
80103d5c:	89 f1                	mov    %esi,%ecx
80103d5e:	89 da                	mov    %ebx,%edx
80103d60:	89 c3                	mov    %eax,%ebx
80103d62:	83 e8 01             	sub    $0x1,%eax
80103d65:	85 db                	test   %ebx,%ebx
80103d67:	7e 11                	jle    80103d7a <strncpy+0x31>
80103d69:	8d 71 01             	lea    0x1(%ecx),%esi
80103d6c:	8d 5a 01             	lea    0x1(%edx),%ebx
80103d6f:	0f b6 09             	movzbl (%ecx),%ecx
80103d72:	88 0a                	mov    %cl,(%edx)
80103d74:	84 c9                	test   %cl,%cl
80103d76:	75 e4                	jne    80103d5c <strncpy+0x13>
80103d78:	89 da                	mov    %ebx,%edx
    ;
  while(n-- > 0)
80103d7a:	8d 48 ff             	lea    -0x1(%eax),%ecx
80103d7d:	85 c0                	test   %eax,%eax
80103d7f:	7e 0a                	jle    80103d8b <strncpy+0x42>
    *s++ = 0;
80103d81:	c6 02 00             	movb   $0x0,(%edx)
  while(n-- > 0)
80103d84:	89 c8                	mov    %ecx,%eax
    *s++ = 0;
80103d86:	8d 52 01             	lea    0x1(%edx),%edx
80103d89:	eb ef                	jmp    80103d7a <strncpy+0x31>
  return os;
}
80103d8b:	89 f8                	mov    %edi,%eax
80103d8d:	5b                   	pop    %ebx
80103d8e:	5e                   	pop    %esi
80103d8f:	5f                   	pop    %edi
80103d90:	5d                   	pop    %ebp
80103d91:	c3                   	ret    

80103d92 <safestrcpy>:

// Like strncpy but guaranteed to NUL-terminate.
char*
safestrcpy(char *s, const char *t, int n)
{
80103d92:	55                   	push   %ebp
80103d93:	89 e5                	mov    %esp,%ebp
80103d95:	57                   	push   %edi
80103d96:	56                   	push   %esi
80103d97:	53                   	push   %ebx
80103d98:	8b 7d 08             	mov    0x8(%ebp),%edi
80103d9b:	8b 4d 0c             	mov    0xc(%ebp),%ecx
80103d9e:	8b 45 10             	mov    0x10(%ebp),%eax
  char *os;

  os = s;
  if(n <= 0)
80103da1:	85 c0                	test   %eax,%eax
80103da3:	7e 23                	jle    80103dc8 <safestrcpy+0x36>
80103da5:	89 fa                	mov    %edi,%edx
80103da7:	eb 04                	jmp    80103dad <safestrcpy+0x1b>
    return os;
  while(--n > 0 && (*s++ = *t++) != 0)
80103da9:	89 f1                	mov    %esi,%ecx
80103dab:	89 da                	mov    %ebx,%edx
80103dad:	83 e8 01             	sub    $0x1,%eax
80103db0:	85 c0                	test   %eax,%eax
80103db2:	7e 11                	jle    80103dc5 <safestrcpy+0x33>
80103db4:	8d 71 01             	lea    0x1(%ecx),%esi
80103db7:	8d 5a 01             	lea    0x1(%edx),%ebx
80103dba:	0f b6 09             	movzbl (%ecx),%ecx
80103dbd:	88 0a                	mov    %cl,(%edx)
80103dbf:	84 c9                	test   %cl,%cl
80103dc1:	75 e6                	jne    80103da9 <safestrcpy+0x17>
80103dc3:	89 da                	mov    %ebx,%edx
    ;
  *s = 0;
80103dc5:	c6 02 00             	movb   $0x0,(%edx)
  return os;
}
80103dc8:	89 f8                	mov    %edi,%eax
80103dca:	5b                   	pop    %ebx
80103dcb:	5e                   	pop    %esi
80103dcc:	5f                   	pop    %edi
80103dcd:	5d                   	pop    %ebp
80103dce:	c3                   	ret    

80103dcf <strlen>:

int
strlen(const char *s)
{
80103dcf:	55                   	push   %ebp
80103dd0:	89 e5                	mov    %esp,%ebp
80103dd2:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
80103dd5:	b8 00 00 00 00       	mov    $0x0,%eax
80103dda:	eb 03                	jmp    80103ddf <strlen+0x10>
80103ddc:	83 c0 01             	add    $0x1,%eax
80103ddf:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
80103de3:	75 f7                	jne    80103ddc <strlen+0xd>
    ;
  return n;
}
80103de5:	5d                   	pop    %ebp
80103de6:	c3                   	ret    

80103de7 <swtch>:
80103de7:	8b 44 24 04          	mov    0x4(%esp),%eax
80103deb:	8b 54 24 08          	mov    0x8(%esp),%edx
80103def:	55                   	push   %ebp
80103df0:	53                   	push   %ebx
80103df1:	56                   	push   %esi
80103df2:	57                   	push   %edi
80103df3:	89 20                	mov    %esp,(%eax)
80103df5:	89 d4                	mov    %edx,%esp
80103df7:	5f                   	pop    %edi
80103df8:	5e                   	pop    %esi
80103df9:	5b                   	pop    %ebx
80103dfa:	5d                   	pop    %ebp
80103dfb:	c3                   	ret    

80103dfc <fetchint>:
// to a saved program counter, and then the first argument.

// Fetch the int at addr from the current process.
int
fetchint(uint addr, int *ip)
{
80103dfc:	55                   	push   %ebp
80103dfd:	89 e5                	mov    %esp,%ebp
80103dff:	53                   	push   %ebx
80103e00:	83 ec 04             	sub    $0x4,%esp
80103e03:	8b 5d 08             	mov    0x8(%ebp),%ebx
  struct proc *curproc = myproc();
80103e06:	e8 c5 f3 ff ff       	call   801031d0 <myproc>

  if(addr >= curproc->sz || addr+4 > curproc->sz)
80103e0b:	8b 00                	mov    (%eax),%eax
80103e0d:	39 d8                	cmp    %ebx,%eax
80103e0f:	76 18                	jbe    80103e29 <fetchint+0x2d>
80103e11:	8d 53 04             	lea    0x4(%ebx),%edx
80103e14:	39 d0                	cmp    %edx,%eax
80103e16:	72 18                	jb     80103e30 <fetchint+0x34>
    return -1;
  *ip = *(int*)(addr);
80103e18:	8b 13                	mov    (%ebx),%edx
80103e1a:	8b 45 0c             	mov    0xc(%ebp),%eax
80103e1d:	89 10                	mov    %edx,(%eax)
  return 0;
80103e1f:	b8 00 00 00 00       	mov    $0x0,%eax
}
80103e24:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80103e27:	c9                   	leave  
80103e28:	c3                   	ret    
    return -1;
80103e29:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80103e2e:	eb f4                	jmp    80103e24 <fetchint+0x28>
80103e30:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80103e35:	eb ed                	jmp    80103e24 <fetchint+0x28>

80103e37 <fetchstr>:
// Fetch the nul-terminated string at addr from the current process.
// Doesn't actually copy the string - just sets *pp to point at it.
// Returns length of string, not including nul.
int
fetchstr(uint addr, char **pp)
{
80103e37:	55                   	push   %ebp
80103e38:	89 e5                	mov    %esp,%ebp
80103e3a:	53                   	push   %ebx
80103e3b:	83 ec 04             	sub    $0x4,%esp
80103e3e:	8b 5d 08             	mov    0x8(%ebp),%ebx
  char *s, *ep;
  struct proc *curproc = myproc();
80103e41:	e8 8a f3 ff ff       	call   801031d0 <myproc>

  if(addr >= curproc->sz)
80103e46:	39 18                	cmp    %ebx,(%eax)
80103e48:	76 25                	jbe    80103e6f <fetchstr+0x38>
    return -1;
  *pp = (char*)addr;
80103e4a:	8b 55 0c             	mov    0xc(%ebp),%edx
80103e4d:	89 1a                	mov    %ebx,(%edx)
  ep = (char*)curproc->sz;
80103e4f:	8b 10                	mov    (%eax),%edx
  for(s = *pp; s < ep; s++){
80103e51:	89 d8                	mov    %ebx,%eax
80103e53:	eb 03                	jmp    80103e58 <fetchstr+0x21>
80103e55:	83 c0 01             	add    $0x1,%eax
80103e58:	39 d0                	cmp    %edx,%eax
80103e5a:	73 09                	jae    80103e65 <fetchstr+0x2e>
    if(*s == 0)
80103e5c:	80 38 00             	cmpb   $0x0,(%eax)
80103e5f:	75 f4                	jne    80103e55 <fetchstr+0x1e>
      return s - *pp;
80103e61:	29 d8                	sub    %ebx,%eax
80103e63:	eb 05                	jmp    80103e6a <fetchstr+0x33>
  }
  return -1;
80103e65:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
80103e6a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80103e6d:	c9                   	leave  
80103e6e:	c3                   	ret    
    return -1;
80103e6f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80103e74:	eb f4                	jmp    80103e6a <fetchstr+0x33>

80103e76 <argint>:

// Fetch the nth 32-bit system call argument.
int
argint(int n, int *ip)
{
80103e76:	55                   	push   %ebp
80103e77:	89 e5                	mov    %esp,%ebp
80103e79:	83 ec 08             	sub    $0x8,%esp
  return fetchint((myproc()->tf->esp) + 4 + 4*n, ip);
80103e7c:	e8 4f f3 ff ff       	call   801031d0 <myproc>
80103e81:	8b 50 18             	mov    0x18(%eax),%edx
80103e84:	8b 45 08             	mov    0x8(%ebp),%eax
80103e87:	c1 e0 02             	shl    $0x2,%eax
80103e8a:	03 42 44             	add    0x44(%edx),%eax
80103e8d:	83 ec 08             	sub    $0x8,%esp
80103e90:	ff 75 0c             	push   0xc(%ebp)
80103e93:	83 c0 04             	add    $0x4,%eax
80103e96:	50                   	push   %eax
80103e97:	e8 60 ff ff ff       	call   80103dfc <fetchint>
}
80103e9c:	c9                   	leave  
80103e9d:	c3                   	ret    

80103e9e <argptr>:
// Fetch the nth word-sized system call argument as a pointer
// to a block of memory of size bytes.  Check that the pointer
// lies within the process address space.
int
argptr(int n, void **pp, int size)
{
80103e9e:	55                   	push   %ebp
80103e9f:	89 e5                	mov    %esp,%ebp
80103ea1:	56                   	push   %esi
80103ea2:	53                   	push   %ebx
80103ea3:	83 ec 10             	sub    $0x10,%esp
80103ea6:	8b 5d 10             	mov    0x10(%ebp),%ebx
  int i;
  struct proc *curproc = myproc();
80103ea9:	e8 22 f3 ff ff       	call   801031d0 <myproc>
80103eae:	89 c6                	mov    %eax,%esi
 
  if(argint(n, &i) < 0)
80103eb0:	83 ec 08             	sub    $0x8,%esp
80103eb3:	8d 45 f4             	lea    -0xc(%ebp),%eax
80103eb6:	50                   	push   %eax
80103eb7:	ff 75 08             	push   0x8(%ebp)
80103eba:	e8 b7 ff ff ff       	call   80103e76 <argint>
80103ebf:	83 c4 10             	add    $0x10,%esp
80103ec2:	85 c0                	test   %eax,%eax
80103ec4:	78 24                	js     80103eea <argptr+0x4c>
    return -1;
  if(size < 0 || (uint)i >= curproc->sz || (uint)i+size > curproc->sz)
80103ec6:	85 db                	test   %ebx,%ebx
80103ec8:	78 27                	js     80103ef1 <argptr+0x53>
80103eca:	8b 16                	mov    (%esi),%edx
80103ecc:	8b 45 f4             	mov    -0xc(%ebp),%eax
80103ecf:	39 c2                	cmp    %eax,%edx
80103ed1:	76 25                	jbe    80103ef8 <argptr+0x5a>
80103ed3:	01 c3                	add    %eax,%ebx
80103ed5:	39 da                	cmp    %ebx,%edx
80103ed7:	72 26                	jb     80103eff <argptr+0x61>
    return -1;
  *pp = (void*)i;
80103ed9:	8b 55 0c             	mov    0xc(%ebp),%edx
80103edc:	89 02                	mov    %eax,(%edx)
  return 0;
80103ede:	b8 00 00 00 00       	mov    $0x0,%eax
}
80103ee3:	8d 65 f8             	lea    -0x8(%ebp),%esp
80103ee6:	5b                   	pop    %ebx
80103ee7:	5e                   	pop    %esi
80103ee8:	5d                   	pop    %ebp
80103ee9:	c3                   	ret    
    return -1;
80103eea:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80103eef:	eb f2                	jmp    80103ee3 <argptr+0x45>
    return -1;
80103ef1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80103ef6:	eb eb                	jmp    80103ee3 <argptr+0x45>
80103ef8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80103efd:	eb e4                	jmp    80103ee3 <argptr+0x45>
80103eff:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80103f04:	eb dd                	jmp    80103ee3 <argptr+0x45>

80103f06 <argstr>:
// Check that the pointer is valid and the string is nul-terminated.
// (There is no shared writable memory, so the string can't change
// between this check and being used by the kernel.)
int
argstr(int n, char **pp)
{
80103f06:	55                   	push   %ebp
80103f07:	89 e5                	mov    %esp,%ebp
80103f09:	83 ec 20             	sub    $0x20,%esp
  int addr;
  if(argint(n, &addr) < 0)
80103f0c:	8d 45 f4             	lea    -0xc(%ebp),%eax
80103f0f:	50                   	push   %eax
80103f10:	ff 75 08             	push   0x8(%ebp)
80103f13:	e8 5e ff ff ff       	call   80103e76 <argint>
80103f18:	83 c4 10             	add    $0x10,%esp
80103f1b:	85 c0                	test   %eax,%eax
80103f1d:	78 13                	js     80103f32 <argstr+0x2c>
    return -1;
  return fetchstr(addr, pp);
80103f1f:	83 ec 08             	sub    $0x8,%esp
80103f22:	ff 75 0c             	push   0xc(%ebp)
80103f25:	ff 75 f4             	push   -0xc(%ebp)
80103f28:	e8 0a ff ff ff       	call   80103e37 <fetchstr>
80103f2d:	83 c4 10             	add    $0x10,%esp
}
80103f30:	c9                   	leave  
80103f31:	c3                   	ret    
    return -1;
80103f32:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80103f37:	eb f7                	jmp    80103f30 <argstr+0x2a>

80103f39 <syscall>:
[SYS_date]   sys_date,
};

void
syscall(void)
{
80103f39:	55                   	push   %ebp
80103f3a:	89 e5                	mov    %esp,%ebp
80103f3c:	53                   	push   %ebx
80103f3d:	83 ec 04             	sub    $0x4,%esp
  int num;
  struct proc *curproc = myproc();
80103f40:	e8 8b f2 ff ff       	call   801031d0 <myproc>
80103f45:	89 c3                	mov    %eax,%ebx

  num = curproc->tf->eax;
80103f47:	8b 40 18             	mov    0x18(%eax),%eax
80103f4a:	8b 40 1c             	mov    0x1c(%eax),%eax
  if(num > 0 && num < NELEM(syscalls) && syscalls[num]) {
80103f4d:	8d 50 ff             	lea    -0x1(%eax),%edx
80103f50:	83 fa 16             	cmp    $0x16,%edx
80103f53:	77 17                	ja     80103f6c <syscall+0x33>
80103f55:	8b 14 85 a0 6c 10 80 	mov    -0x7fef9360(,%eax,4),%edx
80103f5c:	85 d2                	test   %edx,%edx
80103f5e:	74 0c                	je     80103f6c <syscall+0x33>
    curproc->tf->eax = syscalls[num]();
80103f60:	ff d2                	call   *%edx
80103f62:	89 c2                	mov    %eax,%edx
80103f64:	8b 43 18             	mov    0x18(%ebx),%eax
80103f67:	89 50 1c             	mov    %edx,0x1c(%eax)
80103f6a:	eb 1f                	jmp    80103f8b <syscall+0x52>
  } else {
    cprintf("%d %s: unknown sys call %d\n",
            curproc->pid, curproc->name, num);
80103f6c:	8d 53 6c             	lea    0x6c(%ebx),%edx
    cprintf("%d %s: unknown sys call %d\n",
80103f6f:	50                   	push   %eax
80103f70:	52                   	push   %edx
80103f71:	ff 73 10             	push   0x10(%ebx)
80103f74:	68 7d 6c 10 80       	push   $0x80106c7d
80103f79:	e8 89 c6 ff ff       	call   80100607 <cprintf>
    curproc->tf->eax = -1;
80103f7e:	8b 43 18             	mov    0x18(%ebx),%eax
80103f81:	c7 40 1c ff ff ff ff 	movl   $0xffffffff,0x1c(%eax)
80103f88:	83 c4 10             	add    $0x10,%esp
  }
}
80103f8b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80103f8e:	c9                   	leave  
80103f8f:	c3                   	ret    

80103f90 <argfd>:

// Fetch the nth word-sized system call argument as a file descriptor
// and return both the descriptor and the corresponding struct file.
static int
argfd(int n, int *pfd, struct file **pf)
{
80103f90:	55                   	push   %ebp
80103f91:	89 e5                	mov    %esp,%ebp
80103f93:	56                   	push   %esi
80103f94:	53                   	push   %ebx
80103f95:	83 ec 18             	sub    $0x18,%esp
80103f98:	89 d6                	mov    %edx,%esi
80103f9a:	89 cb                	mov    %ecx,%ebx
  int fd;
  struct file *f;

  if(argint(n, &fd) < 0)
80103f9c:	8d 55 f4             	lea    -0xc(%ebp),%edx
80103f9f:	52                   	push   %edx
80103fa0:	50                   	push   %eax
80103fa1:	e8 d0 fe ff ff       	call   80103e76 <argint>
80103fa6:	83 c4 10             	add    $0x10,%esp
80103fa9:	85 c0                	test   %eax,%eax
80103fab:	78 35                	js     80103fe2 <argfd+0x52>
    return -1;
  if(fd < 0 || fd >= NOFILE || (f=myproc()->ofile[fd]) == 0)
80103fad:	83 7d f4 0f          	cmpl   $0xf,-0xc(%ebp)
80103fb1:	77 28                	ja     80103fdb <argfd+0x4b>
80103fb3:	e8 18 f2 ff ff       	call   801031d0 <myproc>
80103fb8:	8b 55 f4             	mov    -0xc(%ebp),%edx
80103fbb:	8b 44 90 28          	mov    0x28(%eax,%edx,4),%eax
80103fbf:	85 c0                	test   %eax,%eax
80103fc1:	74 18                	je     80103fdb <argfd+0x4b>
    return -1;
  if(pfd)
80103fc3:	85 f6                	test   %esi,%esi
80103fc5:	74 02                	je     80103fc9 <argfd+0x39>
    *pfd = fd;
80103fc7:	89 16                	mov    %edx,(%esi)
  if(pf)
80103fc9:	85 db                	test   %ebx,%ebx
80103fcb:	74 1c                	je     80103fe9 <argfd+0x59>
    *pf = f;
80103fcd:	89 03                	mov    %eax,(%ebx)
  return 0;
80103fcf:	b8 00 00 00 00       	mov    $0x0,%eax
}
80103fd4:	8d 65 f8             	lea    -0x8(%ebp),%esp
80103fd7:	5b                   	pop    %ebx
80103fd8:	5e                   	pop    %esi
80103fd9:	5d                   	pop    %ebp
80103fda:	c3                   	ret    
    return -1;
80103fdb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80103fe0:	eb f2                	jmp    80103fd4 <argfd+0x44>
    return -1;
80103fe2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80103fe7:	eb eb                	jmp    80103fd4 <argfd+0x44>
  return 0;
80103fe9:	b8 00 00 00 00       	mov    $0x0,%eax
80103fee:	eb e4                	jmp    80103fd4 <argfd+0x44>

80103ff0 <fdalloc>:

// Allocate a file descriptor for the given file.
// Takes over file reference from caller on success.
static int
fdalloc(struct file *f)
{
80103ff0:	55                   	push   %ebp
80103ff1:	89 e5                	mov    %esp,%ebp
80103ff3:	53                   	push   %ebx
80103ff4:	83 ec 04             	sub    $0x4,%esp
80103ff7:	89 c3                	mov    %eax,%ebx
  int fd;
  struct proc *curproc = myproc();
80103ff9:	e8 d2 f1 ff ff       	call   801031d0 <myproc>
80103ffe:	89 c2                	mov    %eax,%edx

  for(fd = 0; fd < NOFILE; fd++){
80104000:	b8 00 00 00 00       	mov    $0x0,%eax
80104005:	83 f8 0f             	cmp    $0xf,%eax
80104008:	7f 12                	jg     8010401c <fdalloc+0x2c>
    if(curproc->ofile[fd] == 0){
8010400a:	83 7c 82 28 00       	cmpl   $0x0,0x28(%edx,%eax,4)
8010400f:	74 05                	je     80104016 <fdalloc+0x26>
  for(fd = 0; fd < NOFILE; fd++){
80104011:	83 c0 01             	add    $0x1,%eax
80104014:	eb ef                	jmp    80104005 <fdalloc+0x15>
      curproc->ofile[fd] = f;
80104016:	89 5c 82 28          	mov    %ebx,0x28(%edx,%eax,4)
      return fd;
8010401a:	eb 05                	jmp    80104021 <fdalloc+0x31>
    }
  }
  return -1;
8010401c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
80104021:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80104024:	c9                   	leave  
80104025:	c3                   	ret    

80104026 <isdirempty>:
}

// Is the directory dp empty except for "." and ".." ?
static int
isdirempty(struct inode *dp)
{
80104026:	55                   	push   %ebp
80104027:	89 e5                	mov    %esp,%ebp
80104029:	56                   	push   %esi
8010402a:	53                   	push   %ebx
8010402b:	83 ec 10             	sub    $0x10,%esp
8010402e:	89 c3                	mov    %eax,%ebx
  int off;
  struct dirent de;

  for(off=2*sizeof(de); off<dp->size; off+=sizeof(de)){
80104030:	b8 20 00 00 00       	mov    $0x20,%eax
80104035:	89 c6                	mov    %eax,%esi
80104037:	39 43 58             	cmp    %eax,0x58(%ebx)
8010403a:	76 2e                	jbe    8010406a <isdirempty+0x44>
    if(readi(dp, (char*)&de, off, sizeof(de)) != sizeof(de))
8010403c:	6a 10                	push   $0x10
8010403e:	50                   	push   %eax
8010403f:	8d 45 e8             	lea    -0x18(%ebp),%eax
80104042:	50                   	push   %eax
80104043:	53                   	push   %ebx
80104044:	e8 33 d7 ff ff       	call   8010177c <readi>
80104049:	83 c4 10             	add    $0x10,%esp
8010404c:	83 f8 10             	cmp    $0x10,%eax
8010404f:	75 0c                	jne    8010405d <isdirempty+0x37>
      panic("isdirempty: readi");
    if(de.inum != 0)
80104051:	66 83 7d e8 00       	cmpw   $0x0,-0x18(%ebp)
80104056:	75 1e                	jne    80104076 <isdirempty+0x50>
  for(off=2*sizeof(de); off<dp->size; off+=sizeof(de)){
80104058:	8d 46 10             	lea    0x10(%esi),%eax
8010405b:	eb d8                	jmp    80104035 <isdirempty+0xf>
      panic("isdirempty: readi");
8010405d:	83 ec 0c             	sub    $0xc,%esp
80104060:	68 00 6d 10 80       	push   $0x80106d00
80104065:	e8 de c2 ff ff       	call   80100348 <panic>
      return 0;
  }
  return 1;
8010406a:	b8 01 00 00 00       	mov    $0x1,%eax
}
8010406f:	8d 65 f8             	lea    -0x8(%ebp),%esp
80104072:	5b                   	pop    %ebx
80104073:	5e                   	pop    %esi
80104074:	5d                   	pop    %ebp
80104075:	c3                   	ret    
      return 0;
80104076:	b8 00 00 00 00       	mov    $0x0,%eax
8010407b:	eb f2                	jmp    8010406f <isdirempty+0x49>

8010407d <create>:
  return -1;
}

static struct inode*
create(char *path, short type, short major, short minor)
{
8010407d:	55                   	push   %ebp
8010407e:	89 e5                	mov    %esp,%ebp
80104080:	57                   	push   %edi
80104081:	56                   	push   %esi
80104082:	53                   	push   %ebx
80104083:	83 ec 44             	sub    $0x44,%esp
80104086:	89 55 c4             	mov    %edx,-0x3c(%ebp)
80104089:	89 4d c0             	mov    %ecx,-0x40(%ebp)
8010408c:	8b 7d 08             	mov    0x8(%ebp),%edi
  uint off;
  struct inode *ip, *dp;
  char name[DIRSIZ];

  if((dp = nameiparent(path, name)) == 0)
8010408f:	8d 55 d6             	lea    -0x2a(%ebp),%edx
80104092:	52                   	push   %edx
80104093:	50                   	push   %eax
80104094:	e8 67 db ff ff       	call   80101c00 <nameiparent>
80104099:	89 c6                	mov    %eax,%esi
8010409b:	83 c4 10             	add    $0x10,%esp
8010409e:	85 c0                	test   %eax,%eax
801040a0:	0f 84 35 01 00 00    	je     801041db <create+0x15e>
    return 0;
  ilock(dp);
801040a6:	83 ec 0c             	sub    $0xc,%esp
801040a9:	50                   	push   %eax
801040aa:	e8 db d4 ff ff       	call   8010158a <ilock>

  if((ip = dirlookup(dp, name, &off)) != 0){
801040af:	83 c4 0c             	add    $0xc,%esp
801040b2:	8d 45 e4             	lea    -0x1c(%ebp),%eax
801040b5:	50                   	push   %eax
801040b6:	8d 45 d6             	lea    -0x2a(%ebp),%eax
801040b9:	50                   	push   %eax
801040ba:	56                   	push   %esi
801040bb:	e8 fa d8 ff ff       	call   801019ba <dirlookup>
801040c0:	89 c3                	mov    %eax,%ebx
801040c2:	83 c4 10             	add    $0x10,%esp
801040c5:	85 c0                	test   %eax,%eax
801040c7:	74 3d                	je     80104106 <create+0x89>
    iunlockput(dp);
801040c9:	83 ec 0c             	sub    $0xc,%esp
801040cc:	56                   	push   %esi
801040cd:	e8 5f d6 ff ff       	call   80101731 <iunlockput>
    ilock(ip);
801040d2:	89 1c 24             	mov    %ebx,(%esp)
801040d5:	e8 b0 d4 ff ff       	call   8010158a <ilock>
    if(type == T_FILE && ip->type == T_FILE)
801040da:	83 c4 10             	add    $0x10,%esp
801040dd:	66 83 7d c4 02       	cmpw   $0x2,-0x3c(%ebp)
801040e2:	75 07                	jne    801040eb <create+0x6e>
801040e4:	66 83 7b 50 02       	cmpw   $0x2,0x50(%ebx)
801040e9:	74 11                	je     801040fc <create+0x7f>
      return ip;
    iunlockput(ip);
801040eb:	83 ec 0c             	sub    $0xc,%esp
801040ee:	53                   	push   %ebx
801040ef:	e8 3d d6 ff ff       	call   80101731 <iunlockput>
    return 0;
801040f4:	83 c4 10             	add    $0x10,%esp
801040f7:	bb 00 00 00 00       	mov    $0x0,%ebx
    panic("create: dirlink");

  iunlockput(dp);

  return ip;
}
801040fc:	89 d8                	mov    %ebx,%eax
801040fe:	8d 65 f4             	lea    -0xc(%ebp),%esp
80104101:	5b                   	pop    %ebx
80104102:	5e                   	pop    %esi
80104103:	5f                   	pop    %edi
80104104:	5d                   	pop    %ebp
80104105:	c3                   	ret    
  if((ip = ialloc(dp->dev, type)) == 0)
80104106:	83 ec 08             	sub    $0x8,%esp
80104109:	0f bf 45 c4          	movswl -0x3c(%ebp),%eax
8010410d:	50                   	push   %eax
8010410e:	ff 36                	push   (%esi)
80104110:	e8 72 d2 ff ff       	call   80101387 <ialloc>
80104115:	89 c3                	mov    %eax,%ebx
80104117:	83 c4 10             	add    $0x10,%esp
8010411a:	85 c0                	test   %eax,%eax
8010411c:	74 52                	je     80104170 <create+0xf3>
  ilock(ip);
8010411e:	83 ec 0c             	sub    $0xc,%esp
80104121:	50                   	push   %eax
80104122:	e8 63 d4 ff ff       	call   8010158a <ilock>
  ip->major = major;
80104127:	0f b7 45 c0          	movzwl -0x40(%ebp),%eax
8010412b:	66 89 43 52          	mov    %ax,0x52(%ebx)
  ip->minor = minor;
8010412f:	66 89 7b 54          	mov    %di,0x54(%ebx)
  ip->nlink = 1;
80104133:	66 c7 43 56 01 00    	movw   $0x1,0x56(%ebx)
  iupdate(ip);
80104139:	89 1c 24             	mov    %ebx,(%esp)
8010413c:	e8 e8 d2 ff ff       	call   80101429 <iupdate>
  if(type == T_DIR){  // Create . and .. entries.
80104141:	83 c4 10             	add    $0x10,%esp
80104144:	66 83 7d c4 01       	cmpw   $0x1,-0x3c(%ebp)
80104149:	74 32                	je     8010417d <create+0x100>
  if(dirlink(dp, name, ip->inum) < 0)
8010414b:	83 ec 04             	sub    $0x4,%esp
8010414e:	ff 73 04             	push   0x4(%ebx)
80104151:	8d 45 d6             	lea    -0x2a(%ebp),%eax
80104154:	50                   	push   %eax
80104155:	56                   	push   %esi
80104156:	e8 dc d9 ff ff       	call   80101b37 <dirlink>
8010415b:	83 c4 10             	add    $0x10,%esp
8010415e:	85 c0                	test   %eax,%eax
80104160:	78 6c                	js     801041ce <create+0x151>
  iunlockput(dp);
80104162:	83 ec 0c             	sub    $0xc,%esp
80104165:	56                   	push   %esi
80104166:	e8 c6 d5 ff ff       	call   80101731 <iunlockput>
  return ip;
8010416b:	83 c4 10             	add    $0x10,%esp
8010416e:	eb 8c                	jmp    801040fc <create+0x7f>
    panic("create: ialloc");
80104170:	83 ec 0c             	sub    $0xc,%esp
80104173:	68 12 6d 10 80       	push   $0x80106d12
80104178:	e8 cb c1 ff ff       	call   80100348 <panic>
    dp->nlink++;  // for ".."
8010417d:	0f b7 46 56          	movzwl 0x56(%esi),%eax
80104181:	83 c0 01             	add    $0x1,%eax
80104184:	66 89 46 56          	mov    %ax,0x56(%esi)
    iupdate(dp);
80104188:	83 ec 0c             	sub    $0xc,%esp
8010418b:	56                   	push   %esi
8010418c:	e8 98 d2 ff ff       	call   80101429 <iupdate>
    if(dirlink(ip, ".", ip->inum) < 0 || dirlink(ip, "..", dp->inum) < 0)
80104191:	83 c4 0c             	add    $0xc,%esp
80104194:	ff 73 04             	push   0x4(%ebx)
80104197:	68 22 6d 10 80       	push   $0x80106d22
8010419c:	53                   	push   %ebx
8010419d:	e8 95 d9 ff ff       	call   80101b37 <dirlink>
801041a2:	83 c4 10             	add    $0x10,%esp
801041a5:	85 c0                	test   %eax,%eax
801041a7:	78 18                	js     801041c1 <create+0x144>
801041a9:	83 ec 04             	sub    $0x4,%esp
801041ac:	ff 76 04             	push   0x4(%esi)
801041af:	68 21 6d 10 80       	push   $0x80106d21
801041b4:	53                   	push   %ebx
801041b5:	e8 7d d9 ff ff       	call   80101b37 <dirlink>
801041ba:	83 c4 10             	add    $0x10,%esp
801041bd:	85 c0                	test   %eax,%eax
801041bf:	79 8a                	jns    8010414b <create+0xce>
      panic("create dots");
801041c1:	83 ec 0c             	sub    $0xc,%esp
801041c4:	68 24 6d 10 80       	push   $0x80106d24
801041c9:	e8 7a c1 ff ff       	call   80100348 <panic>
    panic("create: dirlink");
801041ce:	83 ec 0c             	sub    $0xc,%esp
801041d1:	68 30 6d 10 80       	push   $0x80106d30
801041d6:	e8 6d c1 ff ff       	call   80100348 <panic>
    return 0;
801041db:	89 c3                	mov    %eax,%ebx
801041dd:	e9 1a ff ff ff       	jmp    801040fc <create+0x7f>

801041e2 <sys_dup>:
{
801041e2:	55                   	push   %ebp
801041e3:	89 e5                	mov    %esp,%ebp
801041e5:	53                   	push   %ebx
801041e6:	83 ec 14             	sub    $0x14,%esp
  if(argfd(0, 0, &f) < 0)
801041e9:	8d 4d f4             	lea    -0xc(%ebp),%ecx
801041ec:	ba 00 00 00 00       	mov    $0x0,%edx
801041f1:	b8 00 00 00 00       	mov    $0x0,%eax
801041f6:	e8 95 fd ff ff       	call   80103f90 <argfd>
801041fb:	85 c0                	test   %eax,%eax
801041fd:	78 23                	js     80104222 <sys_dup+0x40>
  if((fd=fdalloc(f)) < 0)
801041ff:	8b 45 f4             	mov    -0xc(%ebp),%eax
80104202:	e8 e9 fd ff ff       	call   80103ff0 <fdalloc>
80104207:	89 c3                	mov    %eax,%ebx
80104209:	85 c0                	test   %eax,%eax
8010420b:	78 1c                	js     80104229 <sys_dup+0x47>
  filedup(f);
8010420d:	83 ec 0c             	sub    $0xc,%esp
80104210:	ff 75 f4             	push   -0xc(%ebp)
80104213:	e8 73 ca ff ff       	call   80100c8b <filedup>
  return fd;
80104218:	83 c4 10             	add    $0x10,%esp
}
8010421b:	89 d8                	mov    %ebx,%eax
8010421d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80104220:	c9                   	leave  
80104221:	c3                   	ret    
    return -1;
80104222:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
80104227:	eb f2                	jmp    8010421b <sys_dup+0x39>
    return -1;
80104229:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
8010422e:	eb eb                	jmp    8010421b <sys_dup+0x39>

80104230 <sys_dup2>:
{
80104230:	55                   	push   %ebp
80104231:	89 e5                	mov    %esp,%ebp
80104233:	53                   	push   %ebx
80104234:	83 ec 14             	sub    $0x14,%esp
  struct proc *curproc = myproc();
80104237:	e8 94 ef ff ff       	call   801031d0 <myproc>
8010423c:	89 c3                	mov    %eax,%ebx
  if(argfd(0, &oldfd, &oldf) < 0)//si el fichero no esta abierto da error
8010423e:	8d 4d f4             	lea    -0xc(%ebp),%ecx
80104241:	8d 55 f0             	lea    -0x10(%ebp),%edx
80104244:	b8 00 00 00 00       	mov    $0x0,%eax
80104249:	e8 42 fd ff ff       	call   80103f90 <argfd>
8010424e:	85 c0                	test   %eax,%eax
80104250:	78 56                	js     801042a8 <sys_dup2+0x78>
  if(argint(1, &newfd) < 0)
80104252:	83 ec 08             	sub    $0x8,%esp
80104255:	8d 45 ec             	lea    -0x14(%ebp),%eax
80104258:	50                   	push   %eax
80104259:	6a 01                	push   $0x1
8010425b:	e8 16 fc ff ff       	call   80103e76 <argint>
80104260:	83 c4 10             	add    $0x10,%esp
80104263:	85 c0                	test   %eax,%eax
80104265:	78 48                	js     801042af <sys_dup2+0x7f>
  if(newfd < 0 || newfd >= NOFILE)
80104267:	8b 55 ec             	mov    -0x14(%ebp),%edx
8010426a:	83 fa 0f             	cmp    $0xf,%edx
8010426d:	77 47                	ja     801042b6 <sys_dup2+0x86>
  if(oldfd == newfd)
8010426f:	8b 45 f0             	mov    -0x10(%ebp),%eax
80104272:	39 c2                	cmp    %eax,%edx
80104274:	74 2d                	je     801042a3 <sys_dup2+0x73>
  if((newf = curproc->ofile[newfd])!= 0)
80104276:	8b 44 93 28          	mov    0x28(%ebx,%edx,4),%eax
8010427a:	85 c0                	test   %eax,%eax
8010427c:	74 0c                	je     8010428a <sys_dup2+0x5a>
    fileclose(newf);
8010427e:	83 ec 0c             	sub    $0xc,%esp
80104281:	50                   	push   %eax
80104282:	e8 49 ca ff ff       	call   80100cd0 <fileclose>
80104287:	83 c4 10             	add    $0x10,%esp
  curproc->ofile[newfd] = oldf;
8010428a:	8b 45 f4             	mov    -0xc(%ebp),%eax
8010428d:	8b 55 ec             	mov    -0x14(%ebp),%edx
80104290:	89 44 93 28          	mov    %eax,0x28(%ebx,%edx,4)
  filedup(oldf);
80104294:	83 ec 0c             	sub    $0xc,%esp
80104297:	50                   	push   %eax
80104298:	e8 ee c9 ff ff       	call   80100c8b <filedup>
  return newfd;
8010429d:	8b 45 ec             	mov    -0x14(%ebp),%eax
801042a0:	83 c4 10             	add    $0x10,%esp
}
801042a3:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801042a6:	c9                   	leave  
801042a7:	c3                   	ret    
    return -1;
801042a8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801042ad:	eb f4                	jmp    801042a3 <sys_dup2+0x73>
    return -1;
801042af:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801042b4:	eb ed                	jmp    801042a3 <sys_dup2+0x73>
    return -1;
801042b6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801042bb:	eb e6                	jmp    801042a3 <sys_dup2+0x73>

801042bd <sys_read>:
{
801042bd:	55                   	push   %ebp
801042be:	89 e5                	mov    %esp,%ebp
801042c0:	83 ec 18             	sub    $0x18,%esp
  if(argfd(0, 0, &f) < 0 || argint(2, &n) < 0 || argptr(1, (void**)&p, n) < 0)
801042c3:	8d 4d f4             	lea    -0xc(%ebp),%ecx
801042c6:	ba 00 00 00 00       	mov    $0x0,%edx
801042cb:	b8 00 00 00 00       	mov    $0x0,%eax
801042d0:	e8 bb fc ff ff       	call   80103f90 <argfd>
801042d5:	85 c0                	test   %eax,%eax
801042d7:	78 43                	js     8010431c <sys_read+0x5f>
801042d9:	83 ec 08             	sub    $0x8,%esp
801042dc:	8d 45 f0             	lea    -0x10(%ebp),%eax
801042df:	50                   	push   %eax
801042e0:	6a 02                	push   $0x2
801042e2:	e8 8f fb ff ff       	call   80103e76 <argint>
801042e7:	83 c4 10             	add    $0x10,%esp
801042ea:	85 c0                	test   %eax,%eax
801042ec:	78 2e                	js     8010431c <sys_read+0x5f>
801042ee:	83 ec 04             	sub    $0x4,%esp
801042f1:	ff 75 f0             	push   -0x10(%ebp)
801042f4:	8d 45 ec             	lea    -0x14(%ebp),%eax
801042f7:	50                   	push   %eax
801042f8:	6a 01                	push   $0x1
801042fa:	e8 9f fb ff ff       	call   80103e9e <argptr>
801042ff:	83 c4 10             	add    $0x10,%esp
80104302:	85 c0                	test   %eax,%eax
80104304:	78 16                	js     8010431c <sys_read+0x5f>
  return fileread(f, p, n);
80104306:	83 ec 04             	sub    $0x4,%esp
80104309:	ff 75 f0             	push   -0x10(%ebp)
8010430c:	ff 75 ec             	push   -0x14(%ebp)
8010430f:	ff 75 f4             	push   -0xc(%ebp)
80104312:	e8 c6 ca ff ff       	call   80100ddd <fileread>
80104317:	83 c4 10             	add    $0x10,%esp
}
8010431a:	c9                   	leave  
8010431b:	c3                   	ret    
    return -1;
8010431c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104321:	eb f7                	jmp    8010431a <sys_read+0x5d>

80104323 <sys_write>:
{
80104323:	55                   	push   %ebp
80104324:	89 e5                	mov    %esp,%ebp
80104326:	83 ec 18             	sub    $0x18,%esp
  if(argfd(0, 0, &f) < 0 || argint(2, &n) < 0 || argptr(1, (void**)&p, n) < 0)
80104329:	8d 4d f4             	lea    -0xc(%ebp),%ecx
8010432c:	ba 00 00 00 00       	mov    $0x0,%edx
80104331:	b8 00 00 00 00       	mov    $0x0,%eax
80104336:	e8 55 fc ff ff       	call   80103f90 <argfd>
8010433b:	85 c0                	test   %eax,%eax
8010433d:	78 43                	js     80104382 <sys_write+0x5f>
8010433f:	83 ec 08             	sub    $0x8,%esp
80104342:	8d 45 f0             	lea    -0x10(%ebp),%eax
80104345:	50                   	push   %eax
80104346:	6a 02                	push   $0x2
80104348:	e8 29 fb ff ff       	call   80103e76 <argint>
8010434d:	83 c4 10             	add    $0x10,%esp
80104350:	85 c0                	test   %eax,%eax
80104352:	78 2e                	js     80104382 <sys_write+0x5f>
80104354:	83 ec 04             	sub    $0x4,%esp
80104357:	ff 75 f0             	push   -0x10(%ebp)
8010435a:	8d 45 ec             	lea    -0x14(%ebp),%eax
8010435d:	50                   	push   %eax
8010435e:	6a 01                	push   $0x1
80104360:	e8 39 fb ff ff       	call   80103e9e <argptr>
80104365:	83 c4 10             	add    $0x10,%esp
80104368:	85 c0                	test   %eax,%eax
8010436a:	78 16                	js     80104382 <sys_write+0x5f>
  return filewrite(f, p, n);
8010436c:	83 ec 04             	sub    $0x4,%esp
8010436f:	ff 75 f0             	push   -0x10(%ebp)
80104372:	ff 75 ec             	push   -0x14(%ebp)
80104375:	ff 75 f4             	push   -0xc(%ebp)
80104378:	e8 e5 ca ff ff       	call   80100e62 <filewrite>
8010437d:	83 c4 10             	add    $0x10,%esp
}
80104380:	c9                   	leave  
80104381:	c3                   	ret    
    return -1;
80104382:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104387:	eb f7                	jmp    80104380 <sys_write+0x5d>

80104389 <sys_close>:
{
80104389:	55                   	push   %ebp
8010438a:	89 e5                	mov    %esp,%ebp
8010438c:	83 ec 18             	sub    $0x18,%esp
  if(argfd(0, &fd, &f) < 0)
8010438f:	8d 4d f0             	lea    -0x10(%ebp),%ecx
80104392:	8d 55 f4             	lea    -0xc(%ebp),%edx
80104395:	b8 00 00 00 00       	mov    $0x0,%eax
8010439a:	e8 f1 fb ff ff       	call   80103f90 <argfd>
8010439f:	85 c0                	test   %eax,%eax
801043a1:	78 25                	js     801043c8 <sys_close+0x3f>
  myproc()->ofile[fd] = 0;
801043a3:	e8 28 ee ff ff       	call   801031d0 <myproc>
801043a8:	8b 55 f4             	mov    -0xc(%ebp),%edx
801043ab:	c7 44 90 28 00 00 00 	movl   $0x0,0x28(%eax,%edx,4)
801043b2:	00 
  fileclose(f);
801043b3:	83 ec 0c             	sub    $0xc,%esp
801043b6:	ff 75 f0             	push   -0x10(%ebp)
801043b9:	e8 12 c9 ff ff       	call   80100cd0 <fileclose>
  return 0;
801043be:	83 c4 10             	add    $0x10,%esp
801043c1:	b8 00 00 00 00       	mov    $0x0,%eax
}
801043c6:	c9                   	leave  
801043c7:	c3                   	ret    
    return -1;
801043c8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801043cd:	eb f7                	jmp    801043c6 <sys_close+0x3d>

801043cf <sys_fstat>:
{
801043cf:	55                   	push   %ebp
801043d0:	89 e5                	mov    %esp,%ebp
801043d2:	83 ec 18             	sub    $0x18,%esp
  if(argfd(0, 0, &f) < 0 || argptr(1, (void*)&st, sizeof(*st)) < 0)
801043d5:	8d 4d f4             	lea    -0xc(%ebp),%ecx
801043d8:	ba 00 00 00 00       	mov    $0x0,%edx
801043dd:	b8 00 00 00 00       	mov    $0x0,%eax
801043e2:	e8 a9 fb ff ff       	call   80103f90 <argfd>
801043e7:	85 c0                	test   %eax,%eax
801043e9:	78 2a                	js     80104415 <sys_fstat+0x46>
801043eb:	83 ec 04             	sub    $0x4,%esp
801043ee:	6a 14                	push   $0x14
801043f0:	8d 45 f0             	lea    -0x10(%ebp),%eax
801043f3:	50                   	push   %eax
801043f4:	6a 01                	push   $0x1
801043f6:	e8 a3 fa ff ff       	call   80103e9e <argptr>
801043fb:	83 c4 10             	add    $0x10,%esp
801043fe:	85 c0                	test   %eax,%eax
80104400:	78 13                	js     80104415 <sys_fstat+0x46>
  return filestat(f, st);
80104402:	83 ec 08             	sub    $0x8,%esp
80104405:	ff 75 f0             	push   -0x10(%ebp)
80104408:	ff 75 f4             	push   -0xc(%ebp)
8010440b:	e8 86 c9 ff ff       	call   80100d96 <filestat>
80104410:	83 c4 10             	add    $0x10,%esp
}
80104413:	c9                   	leave  
80104414:	c3                   	ret    
    return -1;
80104415:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010441a:	eb f7                	jmp    80104413 <sys_fstat+0x44>

8010441c <sys_link>:
{
8010441c:	55                   	push   %ebp
8010441d:	89 e5                	mov    %esp,%ebp
8010441f:	56                   	push   %esi
80104420:	53                   	push   %ebx
80104421:	83 ec 28             	sub    $0x28,%esp
  if(argstr(0, &old) < 0 || argstr(1, &new) < 0)
80104424:	8d 45 e0             	lea    -0x20(%ebp),%eax
80104427:	50                   	push   %eax
80104428:	6a 00                	push   $0x0
8010442a:	e8 d7 fa ff ff       	call   80103f06 <argstr>
8010442f:	83 c4 10             	add    $0x10,%esp
80104432:	85 c0                	test   %eax,%eax
80104434:	0f 88 d3 00 00 00    	js     8010450d <sys_link+0xf1>
8010443a:	83 ec 08             	sub    $0x8,%esp
8010443d:	8d 45 e4             	lea    -0x1c(%ebp),%eax
80104440:	50                   	push   %eax
80104441:	6a 01                	push   $0x1
80104443:	e8 be fa ff ff       	call   80103f06 <argstr>
80104448:	83 c4 10             	add    $0x10,%esp
8010444b:	85 c0                	test   %eax,%eax
8010444d:	0f 88 ba 00 00 00    	js     8010450d <sys_link+0xf1>
  begin_op();
80104453:	e8 41 e3 ff ff       	call   80102799 <begin_op>
  if((ip = namei(old)) == 0){
80104458:	83 ec 0c             	sub    $0xc,%esp
8010445b:	ff 75 e0             	push   -0x20(%ebp)
8010445e:	e8 85 d7 ff ff       	call   80101be8 <namei>
80104463:	89 c3                	mov    %eax,%ebx
80104465:	83 c4 10             	add    $0x10,%esp
80104468:	85 c0                	test   %eax,%eax
8010446a:	0f 84 a4 00 00 00    	je     80104514 <sys_link+0xf8>
  ilock(ip);
80104470:	83 ec 0c             	sub    $0xc,%esp
80104473:	50                   	push   %eax
80104474:	e8 11 d1 ff ff       	call   8010158a <ilock>
  if(ip->type == T_DIR){
80104479:	83 c4 10             	add    $0x10,%esp
8010447c:	66 83 7b 50 01       	cmpw   $0x1,0x50(%ebx)
80104481:	0f 84 99 00 00 00    	je     80104520 <sys_link+0x104>
  ip->nlink++;
80104487:	0f b7 43 56          	movzwl 0x56(%ebx),%eax
8010448b:	83 c0 01             	add    $0x1,%eax
8010448e:	66 89 43 56          	mov    %ax,0x56(%ebx)
  iupdate(ip);
80104492:	83 ec 0c             	sub    $0xc,%esp
80104495:	53                   	push   %ebx
80104496:	e8 8e cf ff ff       	call   80101429 <iupdate>
  iunlock(ip);
8010449b:	89 1c 24             	mov    %ebx,(%esp)
8010449e:	e8 a9 d1 ff ff       	call   8010164c <iunlock>
  if((dp = nameiparent(new, name)) == 0)
801044a3:	83 c4 08             	add    $0x8,%esp
801044a6:	8d 45 ea             	lea    -0x16(%ebp),%eax
801044a9:	50                   	push   %eax
801044aa:	ff 75 e4             	push   -0x1c(%ebp)
801044ad:	e8 4e d7 ff ff       	call   80101c00 <nameiparent>
801044b2:	89 c6                	mov    %eax,%esi
801044b4:	83 c4 10             	add    $0x10,%esp
801044b7:	85 c0                	test   %eax,%eax
801044b9:	0f 84 85 00 00 00    	je     80104544 <sys_link+0x128>
  ilock(dp);
801044bf:	83 ec 0c             	sub    $0xc,%esp
801044c2:	50                   	push   %eax
801044c3:	e8 c2 d0 ff ff       	call   8010158a <ilock>
  if(dp->dev != ip->dev || dirlink(dp, name, ip->inum) < 0){
801044c8:	83 c4 10             	add    $0x10,%esp
801044cb:	8b 03                	mov    (%ebx),%eax
801044cd:	39 06                	cmp    %eax,(%esi)
801044cf:	75 67                	jne    80104538 <sys_link+0x11c>
801044d1:	83 ec 04             	sub    $0x4,%esp
801044d4:	ff 73 04             	push   0x4(%ebx)
801044d7:	8d 45 ea             	lea    -0x16(%ebp),%eax
801044da:	50                   	push   %eax
801044db:	56                   	push   %esi
801044dc:	e8 56 d6 ff ff       	call   80101b37 <dirlink>
801044e1:	83 c4 10             	add    $0x10,%esp
801044e4:	85 c0                	test   %eax,%eax
801044e6:	78 50                	js     80104538 <sys_link+0x11c>
  iunlockput(dp);
801044e8:	83 ec 0c             	sub    $0xc,%esp
801044eb:	56                   	push   %esi
801044ec:	e8 40 d2 ff ff       	call   80101731 <iunlockput>
  iput(ip);
801044f1:	89 1c 24             	mov    %ebx,(%esp)
801044f4:	e8 98 d1 ff ff       	call   80101691 <iput>
  end_op();
801044f9:	e8 15 e3 ff ff       	call   80102813 <end_op>
  return 0;
801044fe:	83 c4 10             	add    $0x10,%esp
80104501:	b8 00 00 00 00       	mov    $0x0,%eax
}
80104506:	8d 65 f8             	lea    -0x8(%ebp),%esp
80104509:	5b                   	pop    %ebx
8010450a:	5e                   	pop    %esi
8010450b:	5d                   	pop    %ebp
8010450c:	c3                   	ret    
    return -1;
8010450d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104512:	eb f2                	jmp    80104506 <sys_link+0xea>
    end_op();
80104514:	e8 fa e2 ff ff       	call   80102813 <end_op>
    return -1;
80104519:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010451e:	eb e6                	jmp    80104506 <sys_link+0xea>
    iunlockput(ip);
80104520:	83 ec 0c             	sub    $0xc,%esp
80104523:	53                   	push   %ebx
80104524:	e8 08 d2 ff ff       	call   80101731 <iunlockput>
    end_op();
80104529:	e8 e5 e2 ff ff       	call   80102813 <end_op>
    return -1;
8010452e:	83 c4 10             	add    $0x10,%esp
80104531:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104536:	eb ce                	jmp    80104506 <sys_link+0xea>
    iunlockput(dp);
80104538:	83 ec 0c             	sub    $0xc,%esp
8010453b:	56                   	push   %esi
8010453c:	e8 f0 d1 ff ff       	call   80101731 <iunlockput>
    goto bad;
80104541:	83 c4 10             	add    $0x10,%esp
  ilock(ip);
80104544:	83 ec 0c             	sub    $0xc,%esp
80104547:	53                   	push   %ebx
80104548:	e8 3d d0 ff ff       	call   8010158a <ilock>
  ip->nlink--;
8010454d:	0f b7 43 56          	movzwl 0x56(%ebx),%eax
80104551:	83 e8 01             	sub    $0x1,%eax
80104554:	66 89 43 56          	mov    %ax,0x56(%ebx)
  iupdate(ip);
80104558:	89 1c 24             	mov    %ebx,(%esp)
8010455b:	e8 c9 ce ff ff       	call   80101429 <iupdate>
  iunlockput(ip);
80104560:	89 1c 24             	mov    %ebx,(%esp)
80104563:	e8 c9 d1 ff ff       	call   80101731 <iunlockput>
  end_op();
80104568:	e8 a6 e2 ff ff       	call   80102813 <end_op>
  return -1;
8010456d:	83 c4 10             	add    $0x10,%esp
80104570:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104575:	eb 8f                	jmp    80104506 <sys_link+0xea>

80104577 <sys_unlink>:
{
80104577:	55                   	push   %ebp
80104578:	89 e5                	mov    %esp,%ebp
8010457a:	57                   	push   %edi
8010457b:	56                   	push   %esi
8010457c:	53                   	push   %ebx
8010457d:	83 ec 44             	sub    $0x44,%esp
  if(argstr(0, &path) < 0)
80104580:	8d 45 c4             	lea    -0x3c(%ebp),%eax
80104583:	50                   	push   %eax
80104584:	6a 00                	push   $0x0
80104586:	e8 7b f9 ff ff       	call   80103f06 <argstr>
8010458b:	83 c4 10             	add    $0x10,%esp
8010458e:	85 c0                	test   %eax,%eax
80104590:	0f 88 83 01 00 00    	js     80104719 <sys_unlink+0x1a2>
  begin_op();
80104596:	e8 fe e1 ff ff       	call   80102799 <begin_op>
  if((dp = nameiparent(path, name)) == 0){
8010459b:	83 ec 08             	sub    $0x8,%esp
8010459e:	8d 45 ca             	lea    -0x36(%ebp),%eax
801045a1:	50                   	push   %eax
801045a2:	ff 75 c4             	push   -0x3c(%ebp)
801045a5:	e8 56 d6 ff ff       	call   80101c00 <nameiparent>
801045aa:	89 c6                	mov    %eax,%esi
801045ac:	83 c4 10             	add    $0x10,%esp
801045af:	85 c0                	test   %eax,%eax
801045b1:	0f 84 ed 00 00 00    	je     801046a4 <sys_unlink+0x12d>
  ilock(dp);
801045b7:	83 ec 0c             	sub    $0xc,%esp
801045ba:	50                   	push   %eax
801045bb:	e8 ca cf ff ff       	call   8010158a <ilock>
  if(namecmp(name, ".") == 0 || namecmp(name, "..") == 0)
801045c0:	83 c4 08             	add    $0x8,%esp
801045c3:	68 22 6d 10 80       	push   $0x80106d22
801045c8:	8d 45 ca             	lea    -0x36(%ebp),%eax
801045cb:	50                   	push   %eax
801045cc:	e8 d4 d3 ff ff       	call   801019a5 <namecmp>
801045d1:	83 c4 10             	add    $0x10,%esp
801045d4:	85 c0                	test   %eax,%eax
801045d6:	0f 84 fc 00 00 00    	je     801046d8 <sys_unlink+0x161>
801045dc:	83 ec 08             	sub    $0x8,%esp
801045df:	68 21 6d 10 80       	push   $0x80106d21
801045e4:	8d 45 ca             	lea    -0x36(%ebp),%eax
801045e7:	50                   	push   %eax
801045e8:	e8 b8 d3 ff ff       	call   801019a5 <namecmp>
801045ed:	83 c4 10             	add    $0x10,%esp
801045f0:	85 c0                	test   %eax,%eax
801045f2:	0f 84 e0 00 00 00    	je     801046d8 <sys_unlink+0x161>
  if((ip = dirlookup(dp, name, &off)) == 0)
801045f8:	83 ec 04             	sub    $0x4,%esp
801045fb:	8d 45 c0             	lea    -0x40(%ebp),%eax
801045fe:	50                   	push   %eax
801045ff:	8d 45 ca             	lea    -0x36(%ebp),%eax
80104602:	50                   	push   %eax
80104603:	56                   	push   %esi
80104604:	e8 b1 d3 ff ff       	call   801019ba <dirlookup>
80104609:	89 c3                	mov    %eax,%ebx
8010460b:	83 c4 10             	add    $0x10,%esp
8010460e:	85 c0                	test   %eax,%eax
80104610:	0f 84 c2 00 00 00    	je     801046d8 <sys_unlink+0x161>
  ilock(ip);
80104616:	83 ec 0c             	sub    $0xc,%esp
80104619:	50                   	push   %eax
8010461a:	e8 6b cf ff ff       	call   8010158a <ilock>
  if(ip->nlink < 1)
8010461f:	83 c4 10             	add    $0x10,%esp
80104622:	66 83 7b 56 00       	cmpw   $0x0,0x56(%ebx)
80104627:	0f 8e 83 00 00 00    	jle    801046b0 <sys_unlink+0x139>
  if(ip->type == T_DIR && !isdirempty(ip)){
8010462d:	66 83 7b 50 01       	cmpw   $0x1,0x50(%ebx)
80104632:	0f 84 85 00 00 00    	je     801046bd <sys_unlink+0x146>
  memset(&de, 0, sizeof(de));
80104638:	83 ec 04             	sub    $0x4,%esp
8010463b:	6a 10                	push   $0x10
8010463d:	6a 00                	push   $0x0
8010463f:	8d 7d d8             	lea    -0x28(%ebp),%edi
80104642:	57                   	push   %edi
80104643:	e8 de f5 ff ff       	call   80103c26 <memset>
  if(writei(dp, (char*)&de, off, sizeof(de)) != sizeof(de))
80104648:	6a 10                	push   $0x10
8010464a:	ff 75 c0             	push   -0x40(%ebp)
8010464d:	57                   	push   %edi
8010464e:	56                   	push   %esi
8010464f:	e8 25 d2 ff ff       	call   80101879 <writei>
80104654:	83 c4 20             	add    $0x20,%esp
80104657:	83 f8 10             	cmp    $0x10,%eax
8010465a:	0f 85 90 00 00 00    	jne    801046f0 <sys_unlink+0x179>
  if(ip->type == T_DIR){
80104660:	66 83 7b 50 01       	cmpw   $0x1,0x50(%ebx)
80104665:	0f 84 92 00 00 00    	je     801046fd <sys_unlink+0x186>
  iunlockput(dp);
8010466b:	83 ec 0c             	sub    $0xc,%esp
8010466e:	56                   	push   %esi
8010466f:	e8 bd d0 ff ff       	call   80101731 <iunlockput>
  ip->nlink--;
80104674:	0f b7 43 56          	movzwl 0x56(%ebx),%eax
80104678:	83 e8 01             	sub    $0x1,%eax
8010467b:	66 89 43 56          	mov    %ax,0x56(%ebx)
  iupdate(ip);
8010467f:	89 1c 24             	mov    %ebx,(%esp)
80104682:	e8 a2 cd ff ff       	call   80101429 <iupdate>
  iunlockput(ip);
80104687:	89 1c 24             	mov    %ebx,(%esp)
8010468a:	e8 a2 d0 ff ff       	call   80101731 <iunlockput>
  end_op();
8010468f:	e8 7f e1 ff ff       	call   80102813 <end_op>
  return 0;
80104694:	83 c4 10             	add    $0x10,%esp
80104697:	b8 00 00 00 00       	mov    $0x0,%eax
}
8010469c:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010469f:	5b                   	pop    %ebx
801046a0:	5e                   	pop    %esi
801046a1:	5f                   	pop    %edi
801046a2:	5d                   	pop    %ebp
801046a3:	c3                   	ret    
    end_op();
801046a4:	e8 6a e1 ff ff       	call   80102813 <end_op>
    return -1;
801046a9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801046ae:	eb ec                	jmp    8010469c <sys_unlink+0x125>
    panic("unlink: nlink < 1");
801046b0:	83 ec 0c             	sub    $0xc,%esp
801046b3:	68 40 6d 10 80       	push   $0x80106d40
801046b8:	e8 8b bc ff ff       	call   80100348 <panic>
  if(ip->type == T_DIR && !isdirempty(ip)){
801046bd:	89 d8                	mov    %ebx,%eax
801046bf:	e8 62 f9 ff ff       	call   80104026 <isdirempty>
801046c4:	85 c0                	test   %eax,%eax
801046c6:	0f 85 6c ff ff ff    	jne    80104638 <sys_unlink+0xc1>
    iunlockput(ip);
801046cc:	83 ec 0c             	sub    $0xc,%esp
801046cf:	53                   	push   %ebx
801046d0:	e8 5c d0 ff ff       	call   80101731 <iunlockput>
    goto bad;
801046d5:	83 c4 10             	add    $0x10,%esp
  iunlockput(dp);
801046d8:	83 ec 0c             	sub    $0xc,%esp
801046db:	56                   	push   %esi
801046dc:	e8 50 d0 ff ff       	call   80101731 <iunlockput>
  end_op();
801046e1:	e8 2d e1 ff ff       	call   80102813 <end_op>
  return -1;
801046e6:	83 c4 10             	add    $0x10,%esp
801046e9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801046ee:	eb ac                	jmp    8010469c <sys_unlink+0x125>
    panic("unlink: writei");
801046f0:	83 ec 0c             	sub    $0xc,%esp
801046f3:	68 52 6d 10 80       	push   $0x80106d52
801046f8:	e8 4b bc ff ff       	call   80100348 <panic>
    dp->nlink--;
801046fd:	0f b7 46 56          	movzwl 0x56(%esi),%eax
80104701:	83 e8 01             	sub    $0x1,%eax
80104704:	66 89 46 56          	mov    %ax,0x56(%esi)
    iupdate(dp);
80104708:	83 ec 0c             	sub    $0xc,%esp
8010470b:	56                   	push   %esi
8010470c:	e8 18 cd ff ff       	call   80101429 <iupdate>
80104711:	83 c4 10             	add    $0x10,%esp
80104714:	e9 52 ff ff ff       	jmp    8010466b <sys_unlink+0xf4>
    return -1;
80104719:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010471e:	e9 79 ff ff ff       	jmp    8010469c <sys_unlink+0x125>

80104723 <sys_open>:

int
sys_open(void)
{
80104723:	55                   	push   %ebp
80104724:	89 e5                	mov    %esp,%ebp
80104726:	57                   	push   %edi
80104727:	56                   	push   %esi
80104728:	53                   	push   %ebx
80104729:	83 ec 24             	sub    $0x24,%esp
  char *path;
  int fd, omode;
  struct file *f;
  struct inode *ip;

  if(argstr(0, &path) < 0 || argint(1, &omode) < 0)
8010472c:	8d 45 e4             	lea    -0x1c(%ebp),%eax
8010472f:	50                   	push   %eax
80104730:	6a 00                	push   $0x0
80104732:	e8 cf f7 ff ff       	call   80103f06 <argstr>
80104737:	83 c4 10             	add    $0x10,%esp
8010473a:	85 c0                	test   %eax,%eax
8010473c:	0f 88 a0 00 00 00    	js     801047e2 <sys_open+0xbf>
80104742:	83 ec 08             	sub    $0x8,%esp
80104745:	8d 45 e0             	lea    -0x20(%ebp),%eax
80104748:	50                   	push   %eax
80104749:	6a 01                	push   $0x1
8010474b:	e8 26 f7 ff ff       	call   80103e76 <argint>
80104750:	83 c4 10             	add    $0x10,%esp
80104753:	85 c0                	test   %eax,%eax
80104755:	0f 88 87 00 00 00    	js     801047e2 <sys_open+0xbf>
    return -1;

  begin_op();
8010475b:	e8 39 e0 ff ff       	call   80102799 <begin_op>

  if(omode & O_CREATE){
80104760:	f6 45 e1 02          	testb  $0x2,-0x1f(%ebp)
80104764:	0f 84 8b 00 00 00    	je     801047f5 <sys_open+0xd2>
    ip = create(path, T_FILE, 0, 0);
8010476a:	83 ec 0c             	sub    $0xc,%esp
8010476d:	6a 00                	push   $0x0
8010476f:	b9 00 00 00 00       	mov    $0x0,%ecx
80104774:	ba 02 00 00 00       	mov    $0x2,%edx
80104779:	8b 45 e4             	mov    -0x1c(%ebp),%eax
8010477c:	e8 fc f8 ff ff       	call   8010407d <create>
80104781:	89 c6                	mov    %eax,%esi
    if(ip == 0){
80104783:	83 c4 10             	add    $0x10,%esp
80104786:	85 c0                	test   %eax,%eax
80104788:	74 5f                	je     801047e9 <sys_open+0xc6>
      end_op();
      return -1;
    }
  }

  if((f = filealloc()) == 0 || (fd = fdalloc(f)) < 0){
8010478a:	e8 9b c4 ff ff       	call   80100c2a <filealloc>
8010478f:	89 c3                	mov    %eax,%ebx
80104791:	85 c0                	test   %eax,%eax
80104793:	0f 84 b5 00 00 00    	je     8010484e <sys_open+0x12b>
80104799:	e8 52 f8 ff ff       	call   80103ff0 <fdalloc>
8010479e:	89 c7                	mov    %eax,%edi
801047a0:	85 c0                	test   %eax,%eax
801047a2:	0f 88 a6 00 00 00    	js     8010484e <sys_open+0x12b>
      fileclose(f);
    iunlockput(ip);
    end_op();
    return -1;
  }
  iunlock(ip);
801047a8:	83 ec 0c             	sub    $0xc,%esp
801047ab:	56                   	push   %esi
801047ac:	e8 9b ce ff ff       	call   8010164c <iunlock>
  end_op();
801047b1:	e8 5d e0 ff ff       	call   80102813 <end_op>

  f->type = FD_INODE;
801047b6:	c7 03 02 00 00 00    	movl   $0x2,(%ebx)
  f->ip = ip;
801047bc:	89 73 10             	mov    %esi,0x10(%ebx)
  f->off = 0;
801047bf:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)
  f->readable = !(omode & O_WRONLY);
801047c6:	8b 45 e0             	mov    -0x20(%ebp),%eax
801047c9:	83 c4 10             	add    $0x10,%esp
801047cc:	a8 01                	test   $0x1,%al
801047ce:	0f 94 43 08          	sete   0x8(%ebx)
  f->writable = (omode & O_WRONLY) || (omode & O_RDWR);
801047d2:	a8 03                	test   $0x3,%al
801047d4:	0f 95 43 09          	setne  0x9(%ebx)
  return fd;
}
801047d8:	89 f8                	mov    %edi,%eax
801047da:	8d 65 f4             	lea    -0xc(%ebp),%esp
801047dd:	5b                   	pop    %ebx
801047de:	5e                   	pop    %esi
801047df:	5f                   	pop    %edi
801047e0:	5d                   	pop    %ebp
801047e1:	c3                   	ret    
    return -1;
801047e2:	bf ff ff ff ff       	mov    $0xffffffff,%edi
801047e7:	eb ef                	jmp    801047d8 <sys_open+0xb5>
      end_op();
801047e9:	e8 25 e0 ff ff       	call   80102813 <end_op>
      return -1;
801047ee:	bf ff ff ff ff       	mov    $0xffffffff,%edi
801047f3:	eb e3                	jmp    801047d8 <sys_open+0xb5>
    if((ip = namei(path)) == 0){
801047f5:	83 ec 0c             	sub    $0xc,%esp
801047f8:	ff 75 e4             	push   -0x1c(%ebp)
801047fb:	e8 e8 d3 ff ff       	call   80101be8 <namei>
80104800:	89 c6                	mov    %eax,%esi
80104802:	83 c4 10             	add    $0x10,%esp
80104805:	85 c0                	test   %eax,%eax
80104807:	74 39                	je     80104842 <sys_open+0x11f>
    ilock(ip);
80104809:	83 ec 0c             	sub    $0xc,%esp
8010480c:	50                   	push   %eax
8010480d:	e8 78 cd ff ff       	call   8010158a <ilock>
    if(ip->type == T_DIR && omode != O_RDONLY){
80104812:	83 c4 10             	add    $0x10,%esp
80104815:	66 83 7e 50 01       	cmpw   $0x1,0x50(%esi)
8010481a:	0f 85 6a ff ff ff    	jne    8010478a <sys_open+0x67>
80104820:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
80104824:	0f 84 60 ff ff ff    	je     8010478a <sys_open+0x67>
      iunlockput(ip);
8010482a:	83 ec 0c             	sub    $0xc,%esp
8010482d:	56                   	push   %esi
8010482e:	e8 fe ce ff ff       	call   80101731 <iunlockput>
      end_op();
80104833:	e8 db df ff ff       	call   80102813 <end_op>
      return -1;
80104838:	83 c4 10             	add    $0x10,%esp
8010483b:	bf ff ff ff ff       	mov    $0xffffffff,%edi
80104840:	eb 96                	jmp    801047d8 <sys_open+0xb5>
      end_op();
80104842:	e8 cc df ff ff       	call   80102813 <end_op>
      return -1;
80104847:	bf ff ff ff ff       	mov    $0xffffffff,%edi
8010484c:	eb 8a                	jmp    801047d8 <sys_open+0xb5>
    if(f)
8010484e:	85 db                	test   %ebx,%ebx
80104850:	74 0c                	je     8010485e <sys_open+0x13b>
      fileclose(f);
80104852:	83 ec 0c             	sub    $0xc,%esp
80104855:	53                   	push   %ebx
80104856:	e8 75 c4 ff ff       	call   80100cd0 <fileclose>
8010485b:	83 c4 10             	add    $0x10,%esp
    iunlockput(ip);
8010485e:	83 ec 0c             	sub    $0xc,%esp
80104861:	56                   	push   %esi
80104862:	e8 ca ce ff ff       	call   80101731 <iunlockput>
    end_op();
80104867:	e8 a7 df ff ff       	call   80102813 <end_op>
    return -1;
8010486c:	83 c4 10             	add    $0x10,%esp
8010486f:	bf ff ff ff ff       	mov    $0xffffffff,%edi
80104874:	e9 5f ff ff ff       	jmp    801047d8 <sys_open+0xb5>

80104879 <sys_mkdir>:

int
sys_mkdir(void)
{
80104879:	55                   	push   %ebp
8010487a:	89 e5                	mov    %esp,%ebp
8010487c:	83 ec 18             	sub    $0x18,%esp
  char *path;
  struct inode *ip;

  begin_op();
8010487f:	e8 15 df ff ff       	call   80102799 <begin_op>
  if(argstr(0, &path) < 0 || (ip = create(path, T_DIR, 0, 0)) == 0){
80104884:	83 ec 08             	sub    $0x8,%esp
80104887:	8d 45 f4             	lea    -0xc(%ebp),%eax
8010488a:	50                   	push   %eax
8010488b:	6a 00                	push   $0x0
8010488d:	e8 74 f6 ff ff       	call   80103f06 <argstr>
80104892:	83 c4 10             	add    $0x10,%esp
80104895:	85 c0                	test   %eax,%eax
80104897:	78 36                	js     801048cf <sys_mkdir+0x56>
80104899:	83 ec 0c             	sub    $0xc,%esp
8010489c:	6a 00                	push   $0x0
8010489e:	b9 00 00 00 00       	mov    $0x0,%ecx
801048a3:	ba 01 00 00 00       	mov    $0x1,%edx
801048a8:	8b 45 f4             	mov    -0xc(%ebp),%eax
801048ab:	e8 cd f7 ff ff       	call   8010407d <create>
801048b0:	83 c4 10             	add    $0x10,%esp
801048b3:	85 c0                	test   %eax,%eax
801048b5:	74 18                	je     801048cf <sys_mkdir+0x56>
    end_op();
    return -1;
  }
  iunlockput(ip);
801048b7:	83 ec 0c             	sub    $0xc,%esp
801048ba:	50                   	push   %eax
801048bb:	e8 71 ce ff ff       	call   80101731 <iunlockput>
  end_op();
801048c0:	e8 4e df ff ff       	call   80102813 <end_op>
  return 0;
801048c5:	83 c4 10             	add    $0x10,%esp
801048c8:	b8 00 00 00 00       	mov    $0x0,%eax
}
801048cd:	c9                   	leave  
801048ce:	c3                   	ret    
    end_op();
801048cf:	e8 3f df ff ff       	call   80102813 <end_op>
    return -1;
801048d4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801048d9:	eb f2                	jmp    801048cd <sys_mkdir+0x54>

801048db <sys_mknod>:

int
sys_mknod(void)
{
801048db:	55                   	push   %ebp
801048dc:	89 e5                	mov    %esp,%ebp
801048de:	83 ec 18             	sub    $0x18,%esp
  struct inode *ip;
  char *path;
  int major, minor;

  begin_op();
801048e1:	e8 b3 de ff ff       	call   80102799 <begin_op>
  if((argstr(0, &path)) < 0 ||
801048e6:	83 ec 08             	sub    $0x8,%esp
801048e9:	8d 45 f4             	lea    -0xc(%ebp),%eax
801048ec:	50                   	push   %eax
801048ed:	6a 00                	push   $0x0
801048ef:	e8 12 f6 ff ff       	call   80103f06 <argstr>
801048f4:	83 c4 10             	add    $0x10,%esp
801048f7:	85 c0                	test   %eax,%eax
801048f9:	78 62                	js     8010495d <sys_mknod+0x82>
     argint(1, &major) < 0 ||
801048fb:	83 ec 08             	sub    $0x8,%esp
801048fe:	8d 45 f0             	lea    -0x10(%ebp),%eax
80104901:	50                   	push   %eax
80104902:	6a 01                	push   $0x1
80104904:	e8 6d f5 ff ff       	call   80103e76 <argint>
  if((argstr(0, &path)) < 0 ||
80104909:	83 c4 10             	add    $0x10,%esp
8010490c:	85 c0                	test   %eax,%eax
8010490e:	78 4d                	js     8010495d <sys_mknod+0x82>
     argint(2, &minor) < 0 ||
80104910:	83 ec 08             	sub    $0x8,%esp
80104913:	8d 45 ec             	lea    -0x14(%ebp),%eax
80104916:	50                   	push   %eax
80104917:	6a 02                	push   $0x2
80104919:	e8 58 f5 ff ff       	call   80103e76 <argint>
     argint(1, &major) < 0 ||
8010491e:	83 c4 10             	add    $0x10,%esp
80104921:	85 c0                	test   %eax,%eax
80104923:	78 38                	js     8010495d <sys_mknod+0x82>
     (ip = create(path, T_DEV, major, minor)) == 0){
80104925:	0f bf 4d f0          	movswl -0x10(%ebp),%ecx
80104929:	83 ec 0c             	sub    $0xc,%esp
8010492c:	0f bf 45 ec          	movswl -0x14(%ebp),%eax
80104930:	50                   	push   %eax
80104931:	ba 03 00 00 00       	mov    $0x3,%edx
80104936:	8b 45 f4             	mov    -0xc(%ebp),%eax
80104939:	e8 3f f7 ff ff       	call   8010407d <create>
     argint(2, &minor) < 0 ||
8010493e:	83 c4 10             	add    $0x10,%esp
80104941:	85 c0                	test   %eax,%eax
80104943:	74 18                	je     8010495d <sys_mknod+0x82>
    end_op();
    return -1;
  }
  iunlockput(ip);
80104945:	83 ec 0c             	sub    $0xc,%esp
80104948:	50                   	push   %eax
80104949:	e8 e3 cd ff ff       	call   80101731 <iunlockput>
  end_op();
8010494e:	e8 c0 de ff ff       	call   80102813 <end_op>
  return 0;
80104953:	83 c4 10             	add    $0x10,%esp
80104956:	b8 00 00 00 00       	mov    $0x0,%eax
}
8010495b:	c9                   	leave  
8010495c:	c3                   	ret    
    end_op();
8010495d:	e8 b1 de ff ff       	call   80102813 <end_op>
    return -1;
80104962:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104967:	eb f2                	jmp    8010495b <sys_mknod+0x80>

80104969 <sys_chdir>:

int
sys_chdir(void)
{
80104969:	55                   	push   %ebp
8010496a:	89 e5                	mov    %esp,%ebp
8010496c:	56                   	push   %esi
8010496d:	53                   	push   %ebx
8010496e:	83 ec 10             	sub    $0x10,%esp
  char *path;
  struct inode *ip;
  struct proc *curproc = myproc();
80104971:	e8 5a e8 ff ff       	call   801031d0 <myproc>
80104976:	89 c6                	mov    %eax,%esi

  begin_op();
80104978:	e8 1c de ff ff       	call   80102799 <begin_op>
  if(argstr(0, &path) < 0 || (ip = namei(path)) == 0){
8010497d:	83 ec 08             	sub    $0x8,%esp
80104980:	8d 45 f4             	lea    -0xc(%ebp),%eax
80104983:	50                   	push   %eax
80104984:	6a 00                	push   $0x0
80104986:	e8 7b f5 ff ff       	call   80103f06 <argstr>
8010498b:	83 c4 10             	add    $0x10,%esp
8010498e:	85 c0                	test   %eax,%eax
80104990:	78 52                	js     801049e4 <sys_chdir+0x7b>
80104992:	83 ec 0c             	sub    $0xc,%esp
80104995:	ff 75 f4             	push   -0xc(%ebp)
80104998:	e8 4b d2 ff ff       	call   80101be8 <namei>
8010499d:	89 c3                	mov    %eax,%ebx
8010499f:	83 c4 10             	add    $0x10,%esp
801049a2:	85 c0                	test   %eax,%eax
801049a4:	74 3e                	je     801049e4 <sys_chdir+0x7b>
    end_op();
    return -1;
  }
  ilock(ip);
801049a6:	83 ec 0c             	sub    $0xc,%esp
801049a9:	50                   	push   %eax
801049aa:	e8 db cb ff ff       	call   8010158a <ilock>
  if(ip->type != T_DIR){
801049af:	83 c4 10             	add    $0x10,%esp
801049b2:	66 83 7b 50 01       	cmpw   $0x1,0x50(%ebx)
801049b7:	75 37                	jne    801049f0 <sys_chdir+0x87>
    iunlockput(ip);
    end_op();
    return -1;
  }
  iunlock(ip);
801049b9:	83 ec 0c             	sub    $0xc,%esp
801049bc:	53                   	push   %ebx
801049bd:	e8 8a cc ff ff       	call   8010164c <iunlock>
  iput(curproc->cwd);
801049c2:	83 c4 04             	add    $0x4,%esp
801049c5:	ff 76 68             	push   0x68(%esi)
801049c8:	e8 c4 cc ff ff       	call   80101691 <iput>
  end_op();
801049cd:	e8 41 de ff ff       	call   80102813 <end_op>
  curproc->cwd = ip;
801049d2:	89 5e 68             	mov    %ebx,0x68(%esi)
  return 0;
801049d5:	83 c4 10             	add    $0x10,%esp
801049d8:	b8 00 00 00 00       	mov    $0x0,%eax
}
801049dd:	8d 65 f8             	lea    -0x8(%ebp),%esp
801049e0:	5b                   	pop    %ebx
801049e1:	5e                   	pop    %esi
801049e2:	5d                   	pop    %ebp
801049e3:	c3                   	ret    
    end_op();
801049e4:	e8 2a de ff ff       	call   80102813 <end_op>
    return -1;
801049e9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801049ee:	eb ed                	jmp    801049dd <sys_chdir+0x74>
    iunlockput(ip);
801049f0:	83 ec 0c             	sub    $0xc,%esp
801049f3:	53                   	push   %ebx
801049f4:	e8 38 cd ff ff       	call   80101731 <iunlockput>
    end_op();
801049f9:	e8 15 de ff ff       	call   80102813 <end_op>
    return -1;
801049fe:	83 c4 10             	add    $0x10,%esp
80104a01:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104a06:	eb d5                	jmp    801049dd <sys_chdir+0x74>

80104a08 <sys_exec>:

int
sys_exec(void)
{
80104a08:	55                   	push   %ebp
80104a09:	89 e5                	mov    %esp,%ebp
80104a0b:	53                   	push   %ebx
80104a0c:	81 ec 9c 00 00 00    	sub    $0x9c,%esp
  char *path, *argv[MAXARG];
  int i;
  uint uargv, uarg;

  if(argstr(0, &path) < 0 || argint(1, (int*)&uargv) < 0){
80104a12:	8d 45 f4             	lea    -0xc(%ebp),%eax
80104a15:	50                   	push   %eax
80104a16:	6a 00                	push   $0x0
80104a18:	e8 e9 f4 ff ff       	call   80103f06 <argstr>
80104a1d:	83 c4 10             	add    $0x10,%esp
80104a20:	85 c0                	test   %eax,%eax
80104a22:	78 38                	js     80104a5c <sys_exec+0x54>
80104a24:	83 ec 08             	sub    $0x8,%esp
80104a27:	8d 85 70 ff ff ff    	lea    -0x90(%ebp),%eax
80104a2d:	50                   	push   %eax
80104a2e:	6a 01                	push   $0x1
80104a30:	e8 41 f4 ff ff       	call   80103e76 <argint>
80104a35:	83 c4 10             	add    $0x10,%esp
80104a38:	85 c0                	test   %eax,%eax
80104a3a:	78 20                	js     80104a5c <sys_exec+0x54>
    return -1;
  }
  memset(argv, 0, sizeof(argv));
80104a3c:	83 ec 04             	sub    $0x4,%esp
80104a3f:	68 80 00 00 00       	push   $0x80
80104a44:	6a 00                	push   $0x0
80104a46:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
80104a4c:	50                   	push   %eax
80104a4d:	e8 d4 f1 ff ff       	call   80103c26 <memset>
80104a52:	83 c4 10             	add    $0x10,%esp
  for(i=0;; i++){
80104a55:	bb 00 00 00 00       	mov    $0x0,%ebx
80104a5a:	eb 2c                	jmp    80104a88 <sys_exec+0x80>
    return -1;
80104a5c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104a61:	eb 78                	jmp    80104adb <sys_exec+0xd3>
    if(i >= NELEM(argv))
      return -1;
    if(fetchint(uargv+4*i, (int*)&uarg) < 0)
      return -1;
    if(uarg == 0){
      argv[i] = 0;
80104a63:	c7 84 9d 74 ff ff ff 	movl   $0x0,-0x8c(%ebp,%ebx,4)
80104a6a:	00 00 00 00 
      break;
    }
    if(fetchstr(uarg, &argv[i]) < 0)
      return -1;
  }
  return exec(path, argv);
80104a6e:	83 ec 08             	sub    $0x8,%esp
80104a71:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
80104a77:	50                   	push   %eax
80104a78:	ff 75 f4             	push   -0xc(%ebp)
80104a7b:	e8 4e be ff ff       	call   801008ce <exec>
80104a80:	83 c4 10             	add    $0x10,%esp
80104a83:	eb 56                	jmp    80104adb <sys_exec+0xd3>
  for(i=0;; i++){
80104a85:	83 c3 01             	add    $0x1,%ebx
    if(i >= NELEM(argv))
80104a88:	83 fb 1f             	cmp    $0x1f,%ebx
80104a8b:	77 49                	ja     80104ad6 <sys_exec+0xce>
    if(fetchint(uargv+4*i, (int*)&uarg) < 0)
80104a8d:	83 ec 08             	sub    $0x8,%esp
80104a90:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
80104a96:	50                   	push   %eax
80104a97:	8b 85 70 ff ff ff    	mov    -0x90(%ebp),%eax
80104a9d:	8d 04 98             	lea    (%eax,%ebx,4),%eax
80104aa0:	50                   	push   %eax
80104aa1:	e8 56 f3 ff ff       	call   80103dfc <fetchint>
80104aa6:	83 c4 10             	add    $0x10,%esp
80104aa9:	85 c0                	test   %eax,%eax
80104aab:	78 33                	js     80104ae0 <sys_exec+0xd8>
    if(uarg == 0){
80104aad:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
80104ab3:	85 c0                	test   %eax,%eax
80104ab5:	74 ac                	je     80104a63 <sys_exec+0x5b>
    if(fetchstr(uarg, &argv[i]) < 0)
80104ab7:	83 ec 08             	sub    $0x8,%esp
80104aba:	8d 94 9d 74 ff ff ff 	lea    -0x8c(%ebp,%ebx,4),%edx
80104ac1:	52                   	push   %edx
80104ac2:	50                   	push   %eax
80104ac3:	e8 6f f3 ff ff       	call   80103e37 <fetchstr>
80104ac8:	83 c4 10             	add    $0x10,%esp
80104acb:	85 c0                	test   %eax,%eax
80104acd:	79 b6                	jns    80104a85 <sys_exec+0x7d>
      return -1;
80104acf:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104ad4:	eb 05                	jmp    80104adb <sys_exec+0xd3>
      return -1;
80104ad6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
80104adb:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80104ade:	c9                   	leave  
80104adf:	c3                   	ret    
      return -1;
80104ae0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104ae5:	eb f4                	jmp    80104adb <sys_exec+0xd3>

80104ae7 <sys_pipe>:

int
sys_pipe(void)
{
80104ae7:	55                   	push   %ebp
80104ae8:	89 e5                	mov    %esp,%ebp
80104aea:	53                   	push   %ebx
80104aeb:	83 ec 18             	sub    $0x18,%esp
  int *fd;
  struct file *rf, *wf;
  int fd0, fd1;

  if(argptr(0, (void*)&fd, 2*sizeof(fd[0])) < 0)
80104aee:	6a 08                	push   $0x8
80104af0:	8d 45 f4             	lea    -0xc(%ebp),%eax
80104af3:	50                   	push   %eax
80104af4:	6a 00                	push   $0x0
80104af6:	e8 a3 f3 ff ff       	call   80103e9e <argptr>
80104afb:	83 c4 10             	add    $0x10,%esp
80104afe:	85 c0                	test   %eax,%eax
80104b00:	78 79                	js     80104b7b <sys_pipe+0x94>
    return -1;
  if(pipealloc(&rf, &wf) < 0)
80104b02:	83 ec 08             	sub    $0x8,%esp
80104b05:	8d 45 ec             	lea    -0x14(%ebp),%eax
80104b08:	50                   	push   %eax
80104b09:	8d 45 f0             	lea    -0x10(%ebp),%eax
80104b0c:	50                   	push   %eax
80104b0d:	e8 10 e2 ff ff       	call   80102d22 <pipealloc>
80104b12:	83 c4 10             	add    $0x10,%esp
80104b15:	85 c0                	test   %eax,%eax
80104b17:	78 69                	js     80104b82 <sys_pipe+0x9b>
    return -1;
  fd0 = -1;
  if((fd0 = fdalloc(rf)) < 0 || (fd1 = fdalloc(wf)) < 0){
80104b19:	8b 45 f0             	mov    -0x10(%ebp),%eax
80104b1c:	e8 cf f4 ff ff       	call   80103ff0 <fdalloc>
80104b21:	89 c3                	mov    %eax,%ebx
80104b23:	85 c0                	test   %eax,%eax
80104b25:	78 21                	js     80104b48 <sys_pipe+0x61>
80104b27:	8b 45 ec             	mov    -0x14(%ebp),%eax
80104b2a:	e8 c1 f4 ff ff       	call   80103ff0 <fdalloc>
80104b2f:	85 c0                	test   %eax,%eax
80104b31:	78 15                	js     80104b48 <sys_pipe+0x61>
      myproc()->ofile[fd0] = 0;
    fileclose(rf);
    fileclose(wf);
    return -1;
  }
  fd[0] = fd0;
80104b33:	8b 55 f4             	mov    -0xc(%ebp),%edx
80104b36:	89 1a                	mov    %ebx,(%edx)
  fd[1] = fd1;
80104b38:	8b 55 f4             	mov    -0xc(%ebp),%edx
80104b3b:	89 42 04             	mov    %eax,0x4(%edx)
  return 0;
80104b3e:	b8 00 00 00 00       	mov    $0x0,%eax
}
80104b43:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80104b46:	c9                   	leave  
80104b47:	c3                   	ret    
    if(fd0 >= 0)
80104b48:	85 db                	test   %ebx,%ebx
80104b4a:	79 20                	jns    80104b6c <sys_pipe+0x85>
    fileclose(rf);
80104b4c:	83 ec 0c             	sub    $0xc,%esp
80104b4f:	ff 75 f0             	push   -0x10(%ebp)
80104b52:	e8 79 c1 ff ff       	call   80100cd0 <fileclose>
    fileclose(wf);
80104b57:	83 c4 04             	add    $0x4,%esp
80104b5a:	ff 75 ec             	push   -0x14(%ebp)
80104b5d:	e8 6e c1 ff ff       	call   80100cd0 <fileclose>
    return -1;
80104b62:	83 c4 10             	add    $0x10,%esp
80104b65:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104b6a:	eb d7                	jmp    80104b43 <sys_pipe+0x5c>
      myproc()->ofile[fd0] = 0;
80104b6c:	e8 5f e6 ff ff       	call   801031d0 <myproc>
80104b71:	c7 44 98 28 00 00 00 	movl   $0x0,0x28(%eax,%ebx,4)
80104b78:	00 
80104b79:	eb d1                	jmp    80104b4c <sys_pipe+0x65>
    return -1;
80104b7b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104b80:	eb c1                	jmp    80104b43 <sys_pipe+0x5c>
    return -1;
80104b82:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104b87:	eb ba                	jmp    80104b43 <sys_pipe+0x5c>

80104b89 <sys_fork>:
#include "memlayout.h"
#include "mmu.h"
#include "proc.h"

int sys_fork(void)
{
80104b89:	55                   	push   %ebp
80104b8a:	89 e5                	mov    %esp,%ebp
80104b8c:	83 ec 08             	sub    $0x8,%esp
  return fork();
80104b8f:	e8 b1 e7 ff ff       	call   80103345 <fork>
}
80104b94:	c9                   	leave  
80104b95:	c3                   	ret    

80104b96 <sys_exit>:

int sys_exit(void)
{
80104b96:	55                   	push   %ebp
80104b97:	89 e5                	mov    %esp,%ebp
80104b99:	83 ec 20             	sub    $0x20,%esp
  int status;
  if (argint(0, &status)<0)
80104b9c:	8d 45 f4             	lea    -0xc(%ebp),%eax
80104b9f:	50                   	push   %eax
80104ba0:	6a 00                	push   $0x0
80104ba2:	e8 cf f2 ff ff       	call   80103e76 <argint>
80104ba7:	83 c4 10             	add    $0x10,%esp
80104baa:	85 c0                	test   %eax,%eax
80104bac:	78 1c                	js     80104bca <sys_exit+0x34>
    return -1;
  status <<= 8;
80104bae:	8b 45 f4             	mov    -0xc(%ebp),%eax
80104bb1:	c1 e0 08             	shl    $0x8,%eax
80104bb4:	89 45 f4             	mov    %eax,-0xc(%ebp)
  exit(status);
80104bb7:	83 ec 0c             	sub    $0xc,%esp
80104bba:	50                   	push   %eax
80104bbb:	e8 b9 e9 ff ff       	call   80103579 <exit>
  return 0; // not reached
80104bc0:	83 c4 10             	add    $0x10,%esp
80104bc3:	b8 00 00 00 00       	mov    $0x0,%eax
}
80104bc8:	c9                   	leave  
80104bc9:	c3                   	ret    
    return -1;
80104bca:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104bcf:	eb f7                	jmp    80104bc8 <sys_exit+0x32>

80104bd1 <sys_wait>:

int sys_wait(void)
{
80104bd1:	55                   	push   %ebp
80104bd2:	89 e5                	mov    %esp,%ebp
80104bd4:	83 ec 1c             	sub    $0x1c,%esp
  int *status;
  if(argptr(0, (void**)&status, sizeof(int))<0)
80104bd7:	6a 04                	push   $0x4
80104bd9:	8d 45 f4             	lea    -0xc(%ebp),%eax
80104bdc:	50                   	push   %eax
80104bdd:	6a 00                	push   $0x0
80104bdf:	e8 ba f2 ff ff       	call   80103e9e <argptr>
80104be4:	83 c4 10             	add    $0x10,%esp
80104be7:	85 c0                	test   %eax,%eax
80104be9:	78 10                	js     80104bfb <sys_wait+0x2a>
    return -1;//comprobar errores
  return wait(status);
80104beb:	83 ec 0c             	sub    $0xc,%esp
80104bee:	ff 75 f4             	push   -0xc(%ebp)
80104bf1:	e8 12 eb ff ff       	call   80103708 <wait>
80104bf6:	83 c4 10             	add    $0x10,%esp
}
80104bf9:	c9                   	leave  
80104bfa:	c3                   	ret    
    return -1;//comprobar errores
80104bfb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104c00:	eb f7                	jmp    80104bf9 <sys_wait+0x28>

80104c02 <sys_kill>:

int sys_kill(void)
{
80104c02:	55                   	push   %ebp
80104c03:	89 e5                	mov    %esp,%ebp
80104c05:	83 ec 20             	sub    $0x20,%esp
  int pid;

  if (argint(0, &pid) < 0)
80104c08:	8d 45 f4             	lea    -0xc(%ebp),%eax
80104c0b:	50                   	push   %eax
80104c0c:	6a 00                	push   $0x0
80104c0e:	e8 63 f2 ff ff       	call   80103e76 <argint>
80104c13:	83 c4 10             	add    $0x10,%esp
80104c16:	85 c0                	test   %eax,%eax
80104c18:	78 10                	js     80104c2a <sys_kill+0x28>
    return -1;
  return kill(pid);
80104c1a:	83 ec 0c             	sub    $0xc,%esp
80104c1d:	ff 75 f4             	push   -0xc(%ebp)
80104c20:	e8 e8 eb ff ff       	call   8010380d <kill>
80104c25:	83 c4 10             	add    $0x10,%esp
}
80104c28:	c9                   	leave  
80104c29:	c3                   	ret    
    return -1;
80104c2a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104c2f:	eb f7                	jmp    80104c28 <sys_kill+0x26>

80104c31 <sys_getpid>:

int sys_getpid(void)
{
80104c31:	55                   	push   %ebp
80104c32:	89 e5                	mov    %esp,%ebp
80104c34:	83 ec 08             	sub    $0x8,%esp
  return myproc()->pid;
80104c37:	e8 94 e5 ff ff       	call   801031d0 <myproc>
80104c3c:	8b 40 10             	mov    0x10(%eax),%eax
}
80104c3f:	c9                   	leave  
80104c40:	c3                   	ret    

80104c41 <sys_sbrk>:

int sys_sbrk(void)
{
80104c41:	55                   	push   %ebp
80104c42:	89 e5                	mov    %esp,%ebp
80104c44:	56                   	push   %esi
80104c45:	53                   	push   %ebx
80104c46:	83 ec 18             	sub    $0x18,%esp
  int newAddr;
  int oldAddr;
  int n;

  if (argint(0, &n) < 0)
80104c49:	8d 45 f4             	lea    -0xc(%ebp),%eax
80104c4c:	50                   	push   %eax
80104c4d:	6a 00                	push   $0x0
80104c4f:	e8 22 f2 ff ff       	call   80103e76 <argint>
80104c54:	83 c4 10             	add    $0x10,%esp
80104c57:	85 c0                	test   %eax,%eax
80104c59:	78 42                	js     80104c9d <sys_sbrk+0x5c>
    return -1;

  oldAddr = myproc()->sz;
80104c5b:	e8 70 e5 ff ff       	call   801031d0 <myproc>
80104c60:	8b 18                	mov    (%eax),%ebx
  newAddr = myproc()->sz+n;
80104c62:	e8 69 e5 ff ff       	call   801031d0 <myproc>
80104c67:	89 c2                	mov    %eax,%edx
80104c69:	8b 45 f4             	mov    -0xc(%ebp),%eax

  if (newAddr < KERNBASE)
80104c6c:	89 c6                	mov    %eax,%esi
80104c6e:	03 32                	add    (%edx),%esi
80104c70:	78 0b                	js     80104c7d <sys_sbrk+0x3c>
  {
    if (n>=0){
80104c72:	85 c0                	test   %eax,%eax
80104c74:	78 10                	js     80104c86 <sys_sbrk+0x45>
      myproc()->sz = newAddr;
80104c76:	e8 55 e5 ff ff       	call   801031d0 <myproc>
80104c7b:	89 30                	mov    %esi,(%eax)
    }else if (growproc(n) < 0) return -1;
  }
  return oldAddr;
}
80104c7d:	89 d8                	mov    %ebx,%eax
80104c7f:	8d 65 f8             	lea    -0x8(%ebp),%esp
80104c82:	5b                   	pop    %ebx
80104c83:	5e                   	pop    %esi
80104c84:	5d                   	pop    %ebp
80104c85:	c3                   	ret    
    }else if (growproc(n) < 0) return -1;
80104c86:	83 ec 0c             	sub    $0xc,%esp
80104c89:	50                   	push   %eax
80104c8a:	e8 4c e6 ff ff       	call   801032db <growproc>
80104c8f:	83 c4 10             	add    $0x10,%esp
80104c92:	85 c0                	test   %eax,%eax
80104c94:	79 e7                	jns    80104c7d <sys_sbrk+0x3c>
80104c96:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
80104c9b:	eb e0                	jmp    80104c7d <sys_sbrk+0x3c>
    return -1;
80104c9d:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
80104ca2:	eb d9                	jmp    80104c7d <sys_sbrk+0x3c>

80104ca4 <sys_sleep>:

int sys_sleep(void)
{
80104ca4:	55                   	push   %ebp
80104ca5:	89 e5                	mov    %esp,%ebp
80104ca7:	53                   	push   %ebx
80104ca8:	83 ec 1c             	sub    $0x1c,%esp
  int n;
  uint ticks0;

  if (argint(0, &n) < 0)
80104cab:	8d 45 f4             	lea    -0xc(%ebp),%eax
80104cae:	50                   	push   %eax
80104caf:	6a 00                	push   $0x0
80104cb1:	e8 c0 f1 ff ff       	call   80103e76 <argint>
80104cb6:	83 c4 10             	add    $0x10,%esp
80104cb9:	85 c0                	test   %eax,%eax
80104cbb:	78 75                	js     80104d32 <sys_sleep+0x8e>
    return -1;
  acquire(&tickslock);
80104cbd:	83 ec 0c             	sub    $0xc,%esp
80104cc0:	68 80 2d 11 80       	push   $0x80112d80
80104cc5:	e8 b0 ee ff ff       	call   80103b7a <acquire>
  ticks0 = ticks;
80104cca:	8b 1d 60 2d 11 80    	mov    0x80112d60,%ebx
  while (ticks - ticks0 < n)
80104cd0:	83 c4 10             	add    $0x10,%esp
80104cd3:	a1 60 2d 11 80       	mov    0x80112d60,%eax
80104cd8:	29 d8                	sub    %ebx,%eax
80104cda:	3b 45 f4             	cmp    -0xc(%ebp),%eax
80104cdd:	73 39                	jae    80104d18 <sys_sleep+0x74>
  {
    if (myproc()->killed)
80104cdf:	e8 ec e4 ff ff       	call   801031d0 <myproc>
80104ce4:	83 78 24 00          	cmpl   $0x0,0x24(%eax)
80104ce8:	75 17                	jne    80104d01 <sys_sleep+0x5d>
    {
      release(&tickslock);
      return -1;
    }
    sleep(&ticks, &tickslock);
80104cea:	83 ec 08             	sub    $0x8,%esp
80104ced:	68 80 2d 11 80       	push   $0x80112d80
80104cf2:	68 60 2d 11 80       	push   $0x80112d60
80104cf7:	e8 7b e9 ff ff       	call   80103677 <sleep>
80104cfc:	83 c4 10             	add    $0x10,%esp
80104cff:	eb d2                	jmp    80104cd3 <sys_sleep+0x2f>
      release(&tickslock);
80104d01:	83 ec 0c             	sub    $0xc,%esp
80104d04:	68 80 2d 11 80       	push   $0x80112d80
80104d09:	e8 d1 ee ff ff       	call   80103bdf <release>
      return -1;
80104d0e:	83 c4 10             	add    $0x10,%esp
80104d11:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104d16:	eb 15                	jmp    80104d2d <sys_sleep+0x89>
  }
  release(&tickslock);
80104d18:	83 ec 0c             	sub    $0xc,%esp
80104d1b:	68 80 2d 11 80       	push   $0x80112d80
80104d20:	e8 ba ee ff ff       	call   80103bdf <release>
  return 0;
80104d25:	83 c4 10             	add    $0x10,%esp
80104d28:	b8 00 00 00 00       	mov    $0x0,%eax
}
80104d2d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80104d30:	c9                   	leave  
80104d31:	c3                   	ret    
    return -1;
80104d32:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104d37:	eb f4                	jmp    80104d2d <sys_sleep+0x89>

80104d39 <sys_uptime>:

// return how many clock tick interrupts have occurred
// since start.
int sys_uptime(void)
{
80104d39:	55                   	push   %ebp
80104d3a:	89 e5                	mov    %esp,%ebp
80104d3c:	53                   	push   %ebx
80104d3d:	83 ec 10             	sub    $0x10,%esp
  uint xticks;

  acquire(&tickslock);
80104d40:	68 80 2d 11 80       	push   $0x80112d80
80104d45:	e8 30 ee ff ff       	call   80103b7a <acquire>
  xticks = ticks;
80104d4a:	8b 1d 60 2d 11 80    	mov    0x80112d60,%ebx
  release(&tickslock);
80104d50:	c7 04 24 80 2d 11 80 	movl   $0x80112d80,(%esp)
80104d57:	e8 83 ee ff ff       	call   80103bdf <release>
  return xticks;
}
80104d5c:	89 d8                	mov    %ebx,%eax
80104d5e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80104d61:	c9                   	leave  
80104d62:	c3                   	ret    

80104d63 <sys_date>:

int sys_date(void)
{
80104d63:	55                   	push   %ebp
80104d64:	89 e5                	mov    %esp,%ebp
80104d66:	83 ec 1c             	sub    $0x1c,%esp
  struct rtcdate* r;
  if(argptr(0, (void**)&r, sizeof(struct rtcdate))<0)
80104d69:	6a 18                	push   $0x18
80104d6b:	8d 45 f4             	lea    -0xc(%ebp),%eax
80104d6e:	50                   	push   %eax
80104d6f:	6a 00                	push   $0x0
80104d71:	e8 28 f1 ff ff       	call   80103e9e <argptr>
80104d76:	83 c4 10             	add    $0x10,%esp
80104d79:	85 c0                	test   %eax,%eax
80104d7b:	78 15                	js     80104d92 <sys_date+0x2f>
    return -1;


  cmostime(r);
80104d7d:	83 ec 0c             	sub    $0xc,%esp
80104d80:	ff 75 f4             	push   -0xc(%ebp)
80104d83:	e8 c6 d6 ff ff       	call   8010244e <cmostime>
  
  return 0;
80104d88:	83 c4 10             	add    $0x10,%esp
80104d8b:	b8 00 00 00 00       	mov    $0x0,%eax
80104d90:	c9                   	leave  
80104d91:	c3                   	ret    
    return -1;
80104d92:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104d97:	eb f7                	jmp    80104d90 <sys_date+0x2d>

80104d99 <alltraps>:
80104d99:	1e                   	push   %ds
80104d9a:	06                   	push   %es
80104d9b:	0f a0                	push   %fs
80104d9d:	0f a8                	push   %gs
80104d9f:	60                   	pusha  
80104da0:	66 b8 10 00          	mov    $0x10,%ax
80104da4:	8e d8                	mov    %eax,%ds
80104da6:	8e c0                	mov    %eax,%es
80104da8:	54                   	push   %esp
80104da9:	e8 37 01 00 00       	call   80104ee5 <trap>
80104dae:	83 c4 04             	add    $0x4,%esp

80104db1 <trapret>:
80104db1:	61                   	popa   
80104db2:	0f a9                	pop    %gs
80104db4:	0f a1                	pop    %fs
80104db6:	07                   	pop    %es
80104db7:	1f                   	pop    %ds
80104db8:	83 c4 08             	add    $0x8,%esp
80104dbb:	cf                   	iret   

80104dbc <tvinit>:

extern int mappages(pde_t *pgdir, void *va, uint size, uint pa, int perm);

void
tvinit(void)
{
80104dbc:	55                   	push   %ebp
80104dbd:	89 e5                	mov    %esp,%ebp
80104dbf:	53                   	push   %ebx
80104dc0:	83 ec 04             	sub    $0x4,%esp
  int i;

  for(i = 0; i < 256; i++)
80104dc3:	b8 00 00 00 00       	mov    $0x0,%eax
80104dc8:	eb 76                	jmp    80104e40 <tvinit+0x84>
    SETGATE(idt[i], 0, SEG_KCODE<<3, vectors[i], 0);
80104dca:	8b 0c 85 08 90 10 80 	mov    -0x7fef6ff8(,%eax,4),%ecx
80104dd1:	66 89 0c c5 c0 2d 11 	mov    %cx,-0x7feed240(,%eax,8)
80104dd8:	80 
80104dd9:	66 c7 04 c5 c2 2d 11 	movw   $0x8,-0x7feed23e(,%eax,8)
80104de0:	80 08 00 
80104de3:	0f b6 14 c5 c4 2d 11 	movzbl -0x7feed23c(,%eax,8),%edx
80104dea:	80 
80104deb:	83 e2 e0             	and    $0xffffffe0,%edx
80104dee:	88 14 c5 c4 2d 11 80 	mov    %dl,-0x7feed23c(,%eax,8)
80104df5:	c6 04 c5 c4 2d 11 80 	movb   $0x0,-0x7feed23c(,%eax,8)
80104dfc:	00 
80104dfd:	0f b6 14 c5 c5 2d 11 	movzbl -0x7feed23b(,%eax,8),%edx
80104e04:	80 
80104e05:	83 e2 f0             	and    $0xfffffff0,%edx
80104e08:	83 ca 0e             	or     $0xe,%edx
80104e0b:	88 14 c5 c5 2d 11 80 	mov    %dl,-0x7feed23b(,%eax,8)
80104e12:	89 d3                	mov    %edx,%ebx
80104e14:	83 e3 ef             	and    $0xffffffef,%ebx
80104e17:	88 1c c5 c5 2d 11 80 	mov    %bl,-0x7feed23b(,%eax,8)
80104e1e:	83 e2 8f             	and    $0xffffff8f,%edx
80104e21:	88 14 c5 c5 2d 11 80 	mov    %dl,-0x7feed23b(,%eax,8)
80104e28:	83 ca 80             	or     $0xffffff80,%edx
80104e2b:	88 14 c5 c5 2d 11 80 	mov    %dl,-0x7feed23b(,%eax,8)
80104e32:	c1 e9 10             	shr    $0x10,%ecx
80104e35:	66 89 0c c5 c6 2d 11 	mov    %cx,-0x7feed23a(,%eax,8)
80104e3c:	80 
  for(i = 0; i < 256; i++)
80104e3d:	83 c0 01             	add    $0x1,%eax
80104e40:	3d ff 00 00 00       	cmp    $0xff,%eax
80104e45:	7e 83                	jle    80104dca <tvinit+0xe>
  SETGATE(idt[T_SYSCALL], 1, SEG_KCODE<<3, vectors[T_SYSCALL], DPL_USER);
80104e47:	8b 15 08 91 10 80    	mov    0x80109108,%edx
80104e4d:	66 89 15 c0 2f 11 80 	mov    %dx,0x80112fc0
80104e54:	66 c7 05 c2 2f 11 80 	movw   $0x8,0x80112fc2
80104e5b:	08 00 
80104e5d:	0f b6 05 c4 2f 11 80 	movzbl 0x80112fc4,%eax
80104e64:	83 e0 e0             	and    $0xffffffe0,%eax
80104e67:	a2 c4 2f 11 80       	mov    %al,0x80112fc4
80104e6c:	c6 05 c4 2f 11 80 00 	movb   $0x0,0x80112fc4
80104e73:	0f b6 05 c5 2f 11 80 	movzbl 0x80112fc5,%eax
80104e7a:	83 c8 0f             	or     $0xf,%eax
80104e7d:	a2 c5 2f 11 80       	mov    %al,0x80112fc5
80104e82:	83 e0 ef             	and    $0xffffffef,%eax
80104e85:	a2 c5 2f 11 80       	mov    %al,0x80112fc5
80104e8a:	89 c1                	mov    %eax,%ecx
80104e8c:	83 c9 60             	or     $0x60,%ecx
80104e8f:	88 0d c5 2f 11 80    	mov    %cl,0x80112fc5
80104e95:	83 c8 e0             	or     $0xffffffe0,%eax
80104e98:	a2 c5 2f 11 80       	mov    %al,0x80112fc5
80104e9d:	c1 ea 10             	shr    $0x10,%edx
80104ea0:	66 89 15 c6 2f 11 80 	mov    %dx,0x80112fc6

  initlock(&tickslock, "time");
80104ea7:	83 ec 08             	sub    $0x8,%esp
80104eaa:	68 61 6d 10 80       	push   $0x80106d61
80104eaf:	68 80 2d 11 80       	push   $0x80112d80
80104eb4:	e8 85 eb ff ff       	call   80103a3e <initlock>
}
80104eb9:	83 c4 10             	add    $0x10,%esp
80104ebc:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80104ebf:	c9                   	leave  
80104ec0:	c3                   	ret    

80104ec1 <idtinit>:

void
idtinit(void)
{
80104ec1:	55                   	push   %ebp
80104ec2:	89 e5                	mov    %esp,%ebp
80104ec4:	83 ec 10             	sub    $0x10,%esp
  pd[0] = size-1;
80104ec7:	66 c7 45 fa ff 07    	movw   $0x7ff,-0x6(%ebp)
  pd[1] = (uint)p;
80104ecd:	b8 c0 2d 11 80       	mov    $0x80112dc0,%eax
80104ed2:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  pd[2] = (uint)p >> 16;
80104ed6:	c1 e8 10             	shr    $0x10,%eax
80104ed9:	66 89 45 fe          	mov    %ax,-0x2(%ebp)
  asm volatile("lidt (%0)" : : "r" (pd));
80104edd:	8d 45 fa             	lea    -0x6(%ebp),%eax
80104ee0:	0f 01 18             	lidtl  (%eax)
  lidt(idt, sizeof(idt));
}
80104ee3:	c9                   	leave  
80104ee4:	c3                   	ret    

80104ee5 <trap>:

//PAGEBREAK: 41
void
trap(struct trapframe *tf)
{
80104ee5:	55                   	push   %ebp
80104ee6:	89 e5                	mov    %esp,%ebp
80104ee8:	57                   	push   %edi
80104ee9:	56                   	push   %esi
80104eea:	53                   	push   %ebx
80104eeb:	83 ec 1c             	sub    $0x1c,%esp
80104eee:	8b 5d 08             	mov    0x8(%ebp),%ebx
  if(tf->trapno == T_SYSCALL){
80104ef1:	8b 43 30             	mov    0x30(%ebx),%eax
80104ef4:	83 f8 40             	cmp    $0x40,%eax
80104ef7:	74 13                	je     80104f0c <trap+0x27>
    if(myproc()->killed)
      exit(T_SYSCALL+1);//hay que poner el numero de la excepcion +1
    return;
  }

  switch(tf->trapno){
80104ef9:	83 e8 0e             	sub    $0xe,%eax
80104efc:	83 f8 31             	cmp    $0x31,%eax
80104eff:	0f 87 85 01 00 00    	ja     8010508a <trap+0x1a5>
80104f05:	ff 24 85 08 6e 10 80 	jmp    *-0x7fef91f8(,%eax,4)
    if(myproc()->killed)
80104f0c:	e8 bf e2 ff ff       	call   801031d0 <myproc>
80104f11:	83 78 24 00          	cmpl   $0x0,0x24(%eax)
80104f15:	75 2b                	jne    80104f42 <trap+0x5d>
    myproc()->tf = tf;
80104f17:	e8 b4 e2 ff ff       	call   801031d0 <myproc>
80104f1c:	89 58 18             	mov    %ebx,0x18(%eax)
    syscall();
80104f1f:	e8 15 f0 ff ff       	call   80103f39 <syscall>
    if(myproc()->killed)
80104f24:	e8 a7 e2 ff ff       	call   801031d0 <myproc>
80104f29:	83 78 24 00          	cmpl   $0x0,0x24(%eax)
80104f2d:	0f 84 8e 00 00 00    	je     80104fc1 <trap+0xdc>
      exit(T_SYSCALL+1);//hay que poner el numero de la excepcion +1
80104f33:	83 ec 0c             	sub    $0xc,%esp
80104f36:	6a 41                	push   $0x41
80104f38:	e8 3c e6 ff ff       	call   80103579 <exit>
80104f3d:	83 c4 10             	add    $0x10,%esp
    return;
80104f40:	eb 7f                	jmp    80104fc1 <trap+0xdc>
      exit(T_SYSCALL+1);//hay que poner el numero de la excepcio +1
80104f42:	83 ec 0c             	sub    $0xc,%esp
80104f45:	6a 41                	push   $0x41
80104f47:	e8 2d e6 ff ff       	call   80103579 <exit>
80104f4c:	83 c4 10             	add    $0x10,%esp
80104f4f:	eb c6                	jmp    80104f17 <trap+0x32>
  case T_IRQ0 + IRQ_TIMER:
    if(cpuid() == 0){
80104f51:	e8 5f e2 ff ff       	call   801031b5 <cpuid>
80104f56:	85 c0                	test   %eax,%eax
80104f58:	74 6f                	je     80104fc9 <trap+0xe4>
      acquire(&tickslock);
      ticks++;
      wakeup(&ticks);
      release(&tickslock);
    }
    lapiceoi();
80104f5a:	e8 32 d4 ff ff       	call   80102391 <lapiceoi>
  }

  // Force process exit if it has been killed and is in user space.
  // (If it is still executing in the kernel, let it keep running
  // until it gets to the regular system call return.)
  if(myproc() && myproc()->killed && (tf->cs&3) == DPL_USER)
80104f5f:	e8 6c e2 ff ff       	call   801031d0 <myproc>
80104f64:	85 c0                	test   %eax,%eax
80104f66:	74 1c                	je     80104f84 <trap+0x9f>
80104f68:	e8 63 e2 ff ff       	call   801031d0 <myproc>
80104f6d:	83 78 24 00          	cmpl   $0x0,0x24(%eax)
80104f71:	74 11                	je     80104f84 <trap+0x9f>
80104f73:	0f b7 43 3c          	movzwl 0x3c(%ebx),%eax
80104f77:	83 e0 03             	and    $0x3,%eax
80104f7a:	66 83 f8 03          	cmp    $0x3,%ax
80104f7e:	0f 84 99 01 00 00    	je     8010511d <trap+0x238>
    exit(tf->trapno+1);//hay que poner el numero de la excepcion +1

  // Force process to give up CPU on clock tick.
  // If interrupts were on while locks held, would need to check nlock.
  if(myproc() && myproc()->state == RUNNING &&
80104f84:	e8 47 e2 ff ff       	call   801031d0 <myproc>
80104f89:	85 c0                	test   %eax,%eax
80104f8b:	74 0f                	je     80104f9c <trap+0xb7>
80104f8d:	e8 3e e2 ff ff       	call   801031d0 <myproc>
80104f92:	83 78 0c 04          	cmpl   $0x4,0xc(%eax)
80104f96:	0f 84 98 01 00 00    	je     80105134 <trap+0x24f>
     tf->trapno == T_IRQ0+IRQ_TIMER)
    yield();

  // Check if the process has been killed since we yielded
  if(myproc() && myproc()->killed && (tf->cs&3) == DPL_USER)
80104f9c:	e8 2f e2 ff ff       	call   801031d0 <myproc>
80104fa1:	85 c0                	test   %eax,%eax
80104fa3:	74 1c                	je     80104fc1 <trap+0xdc>
80104fa5:	e8 26 e2 ff ff       	call   801031d0 <myproc>
80104faa:	83 78 24 00          	cmpl   $0x0,0x24(%eax)
80104fae:	74 11                	je     80104fc1 <trap+0xdc>
80104fb0:	0f b7 43 3c          	movzwl 0x3c(%ebx),%eax
80104fb4:	83 e0 03             	and    $0x3,%eax
80104fb7:	66 83 f8 03          	cmp    $0x3,%ax
80104fbb:	0f 84 87 01 00 00    	je     80105148 <trap+0x263>
    exit(tf->trapno+1);//hay que poner el numero de la excepcion +1
}
80104fc1:	8d 65 f4             	lea    -0xc(%ebp),%esp
80104fc4:	5b                   	pop    %ebx
80104fc5:	5e                   	pop    %esi
80104fc6:	5f                   	pop    %edi
80104fc7:	5d                   	pop    %ebp
80104fc8:	c3                   	ret    
      acquire(&tickslock);
80104fc9:	83 ec 0c             	sub    $0xc,%esp
80104fcc:	68 80 2d 11 80       	push   $0x80112d80
80104fd1:	e8 a4 eb ff ff       	call   80103b7a <acquire>
      ticks++;
80104fd6:	83 05 60 2d 11 80 01 	addl   $0x1,0x80112d60
      wakeup(&ticks);
80104fdd:	c7 04 24 60 2d 11 80 	movl   $0x80112d60,(%esp)
80104fe4:	e8 fb e7 ff ff       	call   801037e4 <wakeup>
      release(&tickslock);
80104fe9:	c7 04 24 80 2d 11 80 	movl   $0x80112d80,(%esp)
80104ff0:	e8 ea eb ff ff       	call   80103bdf <release>
80104ff5:	83 c4 10             	add    $0x10,%esp
80104ff8:	e9 5d ff ff ff       	jmp    80104f5a <trap+0x75>
    ideintr();
80104ffd:	e8 75 cd ff ff       	call   80101d77 <ideintr>
    lapiceoi();
80105002:	e8 8a d3 ff ff       	call   80102391 <lapiceoi>
    break;
80105007:	e9 53 ff ff ff       	jmp    80104f5f <trap+0x7a>
    kbdintr();
8010500c:	e8 ca d1 ff ff       	call   801021db <kbdintr>
    lapiceoi();
80105011:	e8 7b d3 ff ff       	call   80102391 <lapiceoi>
    break;
80105016:	e9 44 ff ff ff       	jmp    80104f5f <trap+0x7a>
    uartintr();
8010501b:	e8 5b 02 00 00       	call   8010527b <uartintr>
    lapiceoi();
80105020:	e8 6c d3 ff ff       	call   80102391 <lapiceoi>
    break;
80105025:	e9 35 ff ff ff       	jmp    80104f5f <trap+0x7a>
    cprintf("cpu%d: spurious interrupt at %x:%x\n",
8010502a:	8b 7b 38             	mov    0x38(%ebx),%edi
            cpuid(), tf->cs, tf->eip);
8010502d:	0f b7 73 3c          	movzwl 0x3c(%ebx),%esi
    cprintf("cpu%d: spurious interrupt at %x:%x\n",
80105031:	e8 7f e1 ff ff       	call   801031b5 <cpuid>
80105036:	57                   	push   %edi
80105037:	0f b7 f6             	movzwl %si,%esi
8010503a:	56                   	push   %esi
8010503b:	50                   	push   %eax
8010503c:	68 6c 6d 10 80       	push   $0x80106d6c
80105041:	e8 c1 b5 ff ff       	call   80100607 <cprintf>
    lapiceoi();
80105046:	e8 46 d3 ff ff       	call   80102391 <lapiceoi>
    break;
8010504b:	83 c4 10             	add    $0x10,%esp
8010504e:	e9 0c ff ff ff       	jmp    80104f5f <trap+0x7a>
      char* mem = kalloc();
80105053:	e8 66 d0 ff ff       	call   801020be <kalloc>
80105058:	89 c6                	mov    %eax,%esi
  asm volatile("movl %%cr2,%0" : "=r" (val));
8010505a:	0f 20 d7             	mov    %cr2,%edi
      mappages(myproc()->pgdir, (char*)PGROUNDDOWN(rcr2()),
8010505d:	81 e7 00 f0 ff ff    	and    $0xfffff000,%edi
80105063:	e8 68 e1 ff ff       	call   801031d0 <myproc>
80105068:	83 ec 0c             	sub    $0xc,%esp
8010506b:	6a 06                	push   $0x6
8010506d:	81 c6 00 00 00 80    	add    $0x80000000,%esi
80105073:	56                   	push   %esi
80105074:	68 00 10 00 00       	push   $0x1000
80105079:	57                   	push   %edi
8010507a:	ff 70 04             	push   0x4(%eax)
8010507d:	e8 45 0e 00 00       	call   80105ec7 <mappages>
    break;
80105082:	83 c4 20             	add    $0x20,%esp
80105085:	e9 d5 fe ff ff       	jmp    80104f5f <trap+0x7a>
    if(myproc() == 0 || (tf->cs&3) == 0){
8010508a:	e8 41 e1 ff ff       	call   801031d0 <myproc>
8010508f:	85 c0                	test   %eax,%eax
80105091:	74 5f                	je     801050f2 <trap+0x20d>
80105093:	f6 43 3c 03          	testb  $0x3,0x3c(%ebx)
80105097:	74 59                	je     801050f2 <trap+0x20d>
80105099:	0f 20 d7             	mov    %cr2,%edi
    cprintf("pid %d %s: trap %d err %d on cpu %d "
8010509c:	8b 43 38             	mov    0x38(%ebx),%eax
8010509f:	89 45 e4             	mov    %eax,-0x1c(%ebp)
801050a2:	e8 0e e1 ff ff       	call   801031b5 <cpuid>
801050a7:	89 45 e0             	mov    %eax,-0x20(%ebp)
801050aa:	8b 53 34             	mov    0x34(%ebx),%edx
801050ad:	89 55 dc             	mov    %edx,-0x24(%ebp)
801050b0:	8b 73 30             	mov    0x30(%ebx),%esi
            myproc()->pid, myproc()->name, tf->trapno,
801050b3:	e8 18 e1 ff ff       	call   801031d0 <myproc>
801050b8:	8d 48 6c             	lea    0x6c(%eax),%ecx
801050bb:	89 4d d8             	mov    %ecx,-0x28(%ebp)
801050be:	e8 0d e1 ff ff       	call   801031d0 <myproc>
    cprintf("pid %d %s: trap %d err %d on cpu %d "
801050c3:	57                   	push   %edi
801050c4:	ff 75 e4             	push   -0x1c(%ebp)
801050c7:	ff 75 e0             	push   -0x20(%ebp)
801050ca:	ff 75 dc             	push   -0x24(%ebp)
801050cd:	56                   	push   %esi
801050ce:	ff 75 d8             	push   -0x28(%ebp)
801050d1:	ff 70 10             	push   0x10(%eax)
801050d4:	68 c4 6d 10 80       	push   $0x80106dc4
801050d9:	e8 29 b5 ff ff       	call   80100607 <cprintf>
    myproc()->killed = 1;
801050de:	83 c4 20             	add    $0x20,%esp
801050e1:	e8 ea e0 ff ff       	call   801031d0 <myproc>
801050e6:	c7 40 24 01 00 00 00 	movl   $0x1,0x24(%eax)
801050ed:	e9 6d fe ff ff       	jmp    80104f5f <trap+0x7a>
801050f2:	0f 20 d7             	mov    %cr2,%edi
      cprintf("unexpected trap %d from cpu %d eip %x (cr2=0x%x)\n",
801050f5:	8b 73 38             	mov    0x38(%ebx),%esi
801050f8:	e8 b8 e0 ff ff       	call   801031b5 <cpuid>
801050fd:	83 ec 0c             	sub    $0xc,%esp
80105100:	57                   	push   %edi
80105101:	56                   	push   %esi
80105102:	50                   	push   %eax
80105103:	ff 73 30             	push   0x30(%ebx)
80105106:	68 90 6d 10 80       	push   $0x80106d90
8010510b:	e8 f7 b4 ff ff       	call   80100607 <cprintf>
      panic("trap");
80105110:	83 c4 14             	add    $0x14,%esp
80105113:	68 66 6d 10 80       	push   $0x80106d66
80105118:	e8 2b b2 ff ff       	call   80100348 <panic>
    exit(tf->trapno+1);//hay que poner el numero de la excepcion +1
8010511d:	8b 43 30             	mov    0x30(%ebx),%eax
80105120:	83 c0 01             	add    $0x1,%eax
80105123:	83 ec 0c             	sub    $0xc,%esp
80105126:	50                   	push   %eax
80105127:	e8 4d e4 ff ff       	call   80103579 <exit>
8010512c:	83 c4 10             	add    $0x10,%esp
8010512f:	e9 50 fe ff ff       	jmp    80104f84 <trap+0x9f>
  if(myproc() && myproc()->state == RUNNING &&
80105134:	83 7b 30 20          	cmpl   $0x20,0x30(%ebx)
80105138:	0f 85 5e fe ff ff    	jne    80104f9c <trap+0xb7>
    yield();
8010513e:	e8 02 e5 ff ff       	call   80103645 <yield>
80105143:	e9 54 fe ff ff       	jmp    80104f9c <trap+0xb7>
    exit(tf->trapno+1);//hay que poner el numero de la excepcion +1
80105148:	8b 43 30             	mov    0x30(%ebx),%eax
8010514b:	83 c0 01             	add    $0x1,%eax
8010514e:	83 ec 0c             	sub    $0xc,%esp
80105151:	50                   	push   %eax
80105152:	e8 22 e4 ff ff       	call   80103579 <exit>
80105157:	83 c4 10             	add    $0x10,%esp
8010515a:	e9 62 fe ff ff       	jmp    80104fc1 <trap+0xdc>

8010515f <uartgetc>:
8010515f:	f3 0f 1e fb          	endbr32 
80105163:	83 3d c0 35 11 80 00 	cmpl   $0x0,0x801135c0
8010516a:	74 14                	je     80105180 <uartgetc+0x21>
8010516c:	ba fd 03 00 00       	mov    $0x3fd,%edx
80105171:	ec                   	in     (%dx),%al
80105172:	a8 01                	test   $0x1,%al
80105174:	74 10                	je     80105186 <uartgetc+0x27>
80105176:	ba f8 03 00 00       	mov    $0x3f8,%edx
8010517b:	ec                   	in     (%dx),%al
8010517c:	0f b6 c0             	movzbl %al,%eax
8010517f:	c3                   	ret    
80105180:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80105185:	c3                   	ret    
80105186:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010518b:	c3                   	ret    

8010518c <uartputc>:
8010518c:	f3 0f 1e fb          	endbr32 
80105190:	83 3d c0 35 11 80 00 	cmpl   $0x0,0x801135c0
80105197:	74 3b                	je     801051d4 <uartputc+0x48>
80105199:	55                   	push   %ebp
8010519a:	89 e5                	mov    %esp,%ebp
8010519c:	53                   	push   %ebx
8010519d:	83 ec 04             	sub    $0x4,%esp
801051a0:	bb 00 00 00 00       	mov    $0x0,%ebx
801051a5:	83 fb 7f             	cmp    $0x7f,%ebx
801051a8:	7f 1c                	jg     801051c6 <uartputc+0x3a>
801051aa:	ba fd 03 00 00       	mov    $0x3fd,%edx
801051af:	ec                   	in     (%dx),%al
801051b0:	a8 20                	test   $0x20,%al
801051b2:	75 12                	jne    801051c6 <uartputc+0x3a>
801051b4:	83 ec 0c             	sub    $0xc,%esp
801051b7:	6a 0a                	push   $0xa
801051b9:	e8 f4 d1 ff ff       	call   801023b2 <microdelay>
801051be:	83 c3 01             	add    $0x1,%ebx
801051c1:	83 c4 10             	add    $0x10,%esp
801051c4:	eb df                	jmp    801051a5 <uartputc+0x19>
801051c6:	8b 45 08             	mov    0x8(%ebp),%eax
801051c9:	ba f8 03 00 00       	mov    $0x3f8,%edx
801051ce:	ee                   	out    %al,(%dx)
801051cf:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801051d2:	c9                   	leave  
801051d3:	c3                   	ret    
801051d4:	c3                   	ret    

801051d5 <uartinit>:
801051d5:	f3 0f 1e fb          	endbr32 
801051d9:	55                   	push   %ebp
801051da:	89 e5                	mov    %esp,%ebp
801051dc:	56                   	push   %esi
801051dd:	53                   	push   %ebx
801051de:	b9 00 00 00 00       	mov    $0x0,%ecx
801051e3:	ba fa 03 00 00       	mov    $0x3fa,%edx
801051e8:	89 c8                	mov    %ecx,%eax
801051ea:	ee                   	out    %al,(%dx)
801051eb:	be fb 03 00 00       	mov    $0x3fb,%esi
801051f0:	b8 80 ff ff ff       	mov    $0xffffff80,%eax
801051f5:	89 f2                	mov    %esi,%edx
801051f7:	ee                   	out    %al,(%dx)
801051f8:	b8 0c 00 00 00       	mov    $0xc,%eax
801051fd:	ba f8 03 00 00       	mov    $0x3f8,%edx
80105202:	ee                   	out    %al,(%dx)
80105203:	bb f9 03 00 00       	mov    $0x3f9,%ebx
80105208:	89 c8                	mov    %ecx,%eax
8010520a:	89 da                	mov    %ebx,%edx
8010520c:	ee                   	out    %al,(%dx)
8010520d:	b8 03 00 00 00       	mov    $0x3,%eax
80105212:	89 f2                	mov    %esi,%edx
80105214:	ee                   	out    %al,(%dx)
80105215:	ba fc 03 00 00       	mov    $0x3fc,%edx
8010521a:	89 c8                	mov    %ecx,%eax
8010521c:	ee                   	out    %al,(%dx)
8010521d:	b8 01 00 00 00       	mov    $0x1,%eax
80105222:	89 da                	mov    %ebx,%edx
80105224:	ee                   	out    %al,(%dx)
80105225:	ba fd 03 00 00       	mov    $0x3fd,%edx
8010522a:	ec                   	in     (%dx),%al
8010522b:	3c ff                	cmp    $0xff,%al
8010522d:	74 45                	je     80105274 <uartinit+0x9f>
8010522f:	c7 05 c0 35 11 80 01 	movl   $0x1,0x801135c0
80105236:	00 00 00 
80105239:	ba fa 03 00 00       	mov    $0x3fa,%edx
8010523e:	ec                   	in     (%dx),%al
8010523f:	ba f8 03 00 00       	mov    $0x3f8,%edx
80105244:	ec                   	in     (%dx),%al
80105245:	83 ec 08             	sub    $0x8,%esp
80105248:	6a 00                	push   $0x0
8010524a:	6a 04                	push   $0x4
8010524c:	e8 2b cd ff ff       	call   80101f7c <ioapicenable>
80105251:	83 c4 10             	add    $0x10,%esp
80105254:	bb d0 6e 10 80       	mov    $0x80106ed0,%ebx
80105259:	eb 12                	jmp    8010526d <uartinit+0x98>
8010525b:	83 ec 0c             	sub    $0xc,%esp
8010525e:	0f be c0             	movsbl %al,%eax
80105261:	50                   	push   %eax
80105262:	e8 25 ff ff ff       	call   8010518c <uartputc>
80105267:	83 c3 01             	add    $0x1,%ebx
8010526a:	83 c4 10             	add    $0x10,%esp
8010526d:	0f b6 03             	movzbl (%ebx),%eax
80105270:	84 c0                	test   %al,%al
80105272:	75 e7                	jne    8010525b <uartinit+0x86>
80105274:	8d 65 f8             	lea    -0x8(%ebp),%esp
80105277:	5b                   	pop    %ebx
80105278:	5e                   	pop    %esi
80105279:	5d                   	pop    %ebp
8010527a:	c3                   	ret    

8010527b <uartintr>:
8010527b:	f3 0f 1e fb          	endbr32 
8010527f:	55                   	push   %ebp
80105280:	89 e5                	mov    %esp,%ebp
80105282:	83 ec 14             	sub    $0x14,%esp
80105285:	68 5f 51 10 80       	push   $0x8010515f
8010528a:	e8 a4 b4 ff ff       	call   80100733 <consoleintr>
8010528f:	83 c4 10             	add    $0x10,%esp
80105292:	c9                   	leave  
80105293:	c3                   	ret    

80105294 <vector0>:
80105294:	6a 00                	push   $0x0
80105296:	6a 00                	push   $0x0
80105298:	e9 fc fa ff ff       	jmp    80104d99 <alltraps>

8010529d <vector1>:
8010529d:	6a 00                	push   $0x0
8010529f:	6a 01                	push   $0x1
801052a1:	e9 f3 fa ff ff       	jmp    80104d99 <alltraps>

801052a6 <vector2>:
801052a6:	6a 00                	push   $0x0
801052a8:	6a 02                	push   $0x2
801052aa:	e9 ea fa ff ff       	jmp    80104d99 <alltraps>

801052af <vector3>:
801052af:	6a 00                	push   $0x0
801052b1:	6a 03                	push   $0x3
801052b3:	e9 e1 fa ff ff       	jmp    80104d99 <alltraps>

801052b8 <vector4>:
801052b8:	6a 00                	push   $0x0
801052ba:	6a 04                	push   $0x4
801052bc:	e9 d8 fa ff ff       	jmp    80104d99 <alltraps>

801052c1 <vector5>:
801052c1:	6a 00                	push   $0x0
801052c3:	6a 05                	push   $0x5
801052c5:	e9 cf fa ff ff       	jmp    80104d99 <alltraps>

801052ca <vector6>:
801052ca:	6a 00                	push   $0x0
801052cc:	6a 06                	push   $0x6
801052ce:	e9 c6 fa ff ff       	jmp    80104d99 <alltraps>

801052d3 <vector7>:
801052d3:	6a 00                	push   $0x0
801052d5:	6a 07                	push   $0x7
801052d7:	e9 bd fa ff ff       	jmp    80104d99 <alltraps>

801052dc <vector8>:
801052dc:	6a 08                	push   $0x8
801052de:	e9 b6 fa ff ff       	jmp    80104d99 <alltraps>

801052e3 <vector9>:
801052e3:	6a 00                	push   $0x0
801052e5:	6a 09                	push   $0x9
801052e7:	e9 ad fa ff ff       	jmp    80104d99 <alltraps>

801052ec <vector10>:
801052ec:	6a 0a                	push   $0xa
801052ee:	e9 a6 fa ff ff       	jmp    80104d99 <alltraps>

801052f3 <vector11>:
801052f3:	6a 0b                	push   $0xb
801052f5:	e9 9f fa ff ff       	jmp    80104d99 <alltraps>

801052fa <vector12>:
801052fa:	6a 0c                	push   $0xc
801052fc:	e9 98 fa ff ff       	jmp    80104d99 <alltraps>

80105301 <vector13>:
80105301:	6a 0d                	push   $0xd
80105303:	e9 91 fa ff ff       	jmp    80104d99 <alltraps>

80105308 <vector14>:
80105308:	6a 0e                	push   $0xe
8010530a:	e9 8a fa ff ff       	jmp    80104d99 <alltraps>

8010530f <vector15>:
8010530f:	6a 00                	push   $0x0
80105311:	6a 0f                	push   $0xf
80105313:	e9 81 fa ff ff       	jmp    80104d99 <alltraps>

80105318 <vector16>:
80105318:	6a 00                	push   $0x0
8010531a:	6a 10                	push   $0x10
8010531c:	e9 78 fa ff ff       	jmp    80104d99 <alltraps>

80105321 <vector17>:
80105321:	6a 11                	push   $0x11
80105323:	e9 71 fa ff ff       	jmp    80104d99 <alltraps>

80105328 <vector18>:
80105328:	6a 00                	push   $0x0
8010532a:	6a 12                	push   $0x12
8010532c:	e9 68 fa ff ff       	jmp    80104d99 <alltraps>

80105331 <vector19>:
80105331:	6a 00                	push   $0x0
80105333:	6a 13                	push   $0x13
80105335:	e9 5f fa ff ff       	jmp    80104d99 <alltraps>

8010533a <vector20>:
8010533a:	6a 00                	push   $0x0
8010533c:	6a 14                	push   $0x14
8010533e:	e9 56 fa ff ff       	jmp    80104d99 <alltraps>

80105343 <vector21>:
80105343:	6a 00                	push   $0x0
80105345:	6a 15                	push   $0x15
80105347:	e9 4d fa ff ff       	jmp    80104d99 <alltraps>

8010534c <vector22>:
8010534c:	6a 00                	push   $0x0
8010534e:	6a 16                	push   $0x16
80105350:	e9 44 fa ff ff       	jmp    80104d99 <alltraps>

80105355 <vector23>:
80105355:	6a 00                	push   $0x0
80105357:	6a 17                	push   $0x17
80105359:	e9 3b fa ff ff       	jmp    80104d99 <alltraps>

8010535e <vector24>:
8010535e:	6a 00                	push   $0x0
80105360:	6a 18                	push   $0x18
80105362:	e9 32 fa ff ff       	jmp    80104d99 <alltraps>

80105367 <vector25>:
80105367:	6a 00                	push   $0x0
80105369:	6a 19                	push   $0x19
8010536b:	e9 29 fa ff ff       	jmp    80104d99 <alltraps>

80105370 <vector26>:
80105370:	6a 00                	push   $0x0
80105372:	6a 1a                	push   $0x1a
80105374:	e9 20 fa ff ff       	jmp    80104d99 <alltraps>

80105379 <vector27>:
80105379:	6a 00                	push   $0x0
8010537b:	6a 1b                	push   $0x1b
8010537d:	e9 17 fa ff ff       	jmp    80104d99 <alltraps>

80105382 <vector28>:
80105382:	6a 00                	push   $0x0
80105384:	6a 1c                	push   $0x1c
80105386:	e9 0e fa ff ff       	jmp    80104d99 <alltraps>

8010538b <vector29>:
8010538b:	6a 00                	push   $0x0
8010538d:	6a 1d                	push   $0x1d
8010538f:	e9 05 fa ff ff       	jmp    80104d99 <alltraps>

80105394 <vector30>:
80105394:	6a 00                	push   $0x0
80105396:	6a 1e                	push   $0x1e
80105398:	e9 fc f9 ff ff       	jmp    80104d99 <alltraps>

8010539d <vector31>:
8010539d:	6a 00                	push   $0x0
8010539f:	6a 1f                	push   $0x1f
801053a1:	e9 f3 f9 ff ff       	jmp    80104d99 <alltraps>

801053a6 <vector32>:
801053a6:	6a 00                	push   $0x0
801053a8:	6a 20                	push   $0x20
801053aa:	e9 ea f9 ff ff       	jmp    80104d99 <alltraps>

801053af <vector33>:
801053af:	6a 00                	push   $0x0
801053b1:	6a 21                	push   $0x21
801053b3:	e9 e1 f9 ff ff       	jmp    80104d99 <alltraps>

801053b8 <vector34>:
801053b8:	6a 00                	push   $0x0
801053ba:	6a 22                	push   $0x22
801053bc:	e9 d8 f9 ff ff       	jmp    80104d99 <alltraps>

801053c1 <vector35>:
801053c1:	6a 00                	push   $0x0
801053c3:	6a 23                	push   $0x23
801053c5:	e9 cf f9 ff ff       	jmp    80104d99 <alltraps>

801053ca <vector36>:
801053ca:	6a 00                	push   $0x0
801053cc:	6a 24                	push   $0x24
801053ce:	e9 c6 f9 ff ff       	jmp    80104d99 <alltraps>

801053d3 <vector37>:
801053d3:	6a 00                	push   $0x0
801053d5:	6a 25                	push   $0x25
801053d7:	e9 bd f9 ff ff       	jmp    80104d99 <alltraps>

801053dc <vector38>:
801053dc:	6a 00                	push   $0x0
801053de:	6a 26                	push   $0x26
801053e0:	e9 b4 f9 ff ff       	jmp    80104d99 <alltraps>

801053e5 <vector39>:
801053e5:	6a 00                	push   $0x0
801053e7:	6a 27                	push   $0x27
801053e9:	e9 ab f9 ff ff       	jmp    80104d99 <alltraps>

801053ee <vector40>:
801053ee:	6a 00                	push   $0x0
801053f0:	6a 28                	push   $0x28
801053f2:	e9 a2 f9 ff ff       	jmp    80104d99 <alltraps>

801053f7 <vector41>:
801053f7:	6a 00                	push   $0x0
801053f9:	6a 29                	push   $0x29
801053fb:	e9 99 f9 ff ff       	jmp    80104d99 <alltraps>

80105400 <vector42>:
80105400:	6a 00                	push   $0x0
80105402:	6a 2a                	push   $0x2a
80105404:	e9 90 f9 ff ff       	jmp    80104d99 <alltraps>

80105409 <vector43>:
80105409:	6a 00                	push   $0x0
8010540b:	6a 2b                	push   $0x2b
8010540d:	e9 87 f9 ff ff       	jmp    80104d99 <alltraps>

80105412 <vector44>:
80105412:	6a 00                	push   $0x0
80105414:	6a 2c                	push   $0x2c
80105416:	e9 7e f9 ff ff       	jmp    80104d99 <alltraps>

8010541b <vector45>:
8010541b:	6a 00                	push   $0x0
8010541d:	6a 2d                	push   $0x2d
8010541f:	e9 75 f9 ff ff       	jmp    80104d99 <alltraps>

80105424 <vector46>:
80105424:	6a 00                	push   $0x0
80105426:	6a 2e                	push   $0x2e
80105428:	e9 6c f9 ff ff       	jmp    80104d99 <alltraps>

8010542d <vector47>:
8010542d:	6a 00                	push   $0x0
8010542f:	6a 2f                	push   $0x2f
80105431:	e9 63 f9 ff ff       	jmp    80104d99 <alltraps>

80105436 <vector48>:
80105436:	6a 00                	push   $0x0
80105438:	6a 30                	push   $0x30
8010543a:	e9 5a f9 ff ff       	jmp    80104d99 <alltraps>

8010543f <vector49>:
8010543f:	6a 00                	push   $0x0
80105441:	6a 31                	push   $0x31
80105443:	e9 51 f9 ff ff       	jmp    80104d99 <alltraps>

80105448 <vector50>:
80105448:	6a 00                	push   $0x0
8010544a:	6a 32                	push   $0x32
8010544c:	e9 48 f9 ff ff       	jmp    80104d99 <alltraps>

80105451 <vector51>:
80105451:	6a 00                	push   $0x0
80105453:	6a 33                	push   $0x33
80105455:	e9 3f f9 ff ff       	jmp    80104d99 <alltraps>

8010545a <vector52>:
8010545a:	6a 00                	push   $0x0
8010545c:	6a 34                	push   $0x34
8010545e:	e9 36 f9 ff ff       	jmp    80104d99 <alltraps>

80105463 <vector53>:
80105463:	6a 00                	push   $0x0
80105465:	6a 35                	push   $0x35
80105467:	e9 2d f9 ff ff       	jmp    80104d99 <alltraps>

8010546c <vector54>:
8010546c:	6a 00                	push   $0x0
8010546e:	6a 36                	push   $0x36
80105470:	e9 24 f9 ff ff       	jmp    80104d99 <alltraps>

80105475 <vector55>:
80105475:	6a 00                	push   $0x0
80105477:	6a 37                	push   $0x37
80105479:	e9 1b f9 ff ff       	jmp    80104d99 <alltraps>

8010547e <vector56>:
8010547e:	6a 00                	push   $0x0
80105480:	6a 38                	push   $0x38
80105482:	e9 12 f9 ff ff       	jmp    80104d99 <alltraps>

80105487 <vector57>:
80105487:	6a 00                	push   $0x0
80105489:	6a 39                	push   $0x39
8010548b:	e9 09 f9 ff ff       	jmp    80104d99 <alltraps>

80105490 <vector58>:
80105490:	6a 00                	push   $0x0
80105492:	6a 3a                	push   $0x3a
80105494:	e9 00 f9 ff ff       	jmp    80104d99 <alltraps>

80105499 <vector59>:
80105499:	6a 00                	push   $0x0
8010549b:	6a 3b                	push   $0x3b
8010549d:	e9 f7 f8 ff ff       	jmp    80104d99 <alltraps>

801054a2 <vector60>:
801054a2:	6a 00                	push   $0x0
801054a4:	6a 3c                	push   $0x3c
801054a6:	e9 ee f8 ff ff       	jmp    80104d99 <alltraps>

801054ab <vector61>:
801054ab:	6a 00                	push   $0x0
801054ad:	6a 3d                	push   $0x3d
801054af:	e9 e5 f8 ff ff       	jmp    80104d99 <alltraps>

801054b4 <vector62>:
801054b4:	6a 00                	push   $0x0
801054b6:	6a 3e                	push   $0x3e
801054b8:	e9 dc f8 ff ff       	jmp    80104d99 <alltraps>

801054bd <vector63>:
801054bd:	6a 00                	push   $0x0
801054bf:	6a 3f                	push   $0x3f
801054c1:	e9 d3 f8 ff ff       	jmp    80104d99 <alltraps>

801054c6 <vector64>:
801054c6:	6a 00                	push   $0x0
801054c8:	6a 40                	push   $0x40
801054ca:	e9 ca f8 ff ff       	jmp    80104d99 <alltraps>

801054cf <vector65>:
801054cf:	6a 00                	push   $0x0
801054d1:	6a 41                	push   $0x41
801054d3:	e9 c1 f8 ff ff       	jmp    80104d99 <alltraps>

801054d8 <vector66>:
801054d8:	6a 00                	push   $0x0
801054da:	6a 42                	push   $0x42
801054dc:	e9 b8 f8 ff ff       	jmp    80104d99 <alltraps>

801054e1 <vector67>:
801054e1:	6a 00                	push   $0x0
801054e3:	6a 43                	push   $0x43
801054e5:	e9 af f8 ff ff       	jmp    80104d99 <alltraps>

801054ea <vector68>:
801054ea:	6a 00                	push   $0x0
801054ec:	6a 44                	push   $0x44
801054ee:	e9 a6 f8 ff ff       	jmp    80104d99 <alltraps>

801054f3 <vector69>:
801054f3:	6a 00                	push   $0x0
801054f5:	6a 45                	push   $0x45
801054f7:	e9 9d f8 ff ff       	jmp    80104d99 <alltraps>

801054fc <vector70>:
801054fc:	6a 00                	push   $0x0
801054fe:	6a 46                	push   $0x46
80105500:	e9 94 f8 ff ff       	jmp    80104d99 <alltraps>

80105505 <vector71>:
80105505:	6a 00                	push   $0x0
80105507:	6a 47                	push   $0x47
80105509:	e9 8b f8 ff ff       	jmp    80104d99 <alltraps>

8010550e <vector72>:
8010550e:	6a 00                	push   $0x0
80105510:	6a 48                	push   $0x48
80105512:	e9 82 f8 ff ff       	jmp    80104d99 <alltraps>

80105517 <vector73>:
80105517:	6a 00                	push   $0x0
80105519:	6a 49                	push   $0x49
8010551b:	e9 79 f8 ff ff       	jmp    80104d99 <alltraps>

80105520 <vector74>:
80105520:	6a 00                	push   $0x0
80105522:	6a 4a                	push   $0x4a
80105524:	e9 70 f8 ff ff       	jmp    80104d99 <alltraps>

80105529 <vector75>:
80105529:	6a 00                	push   $0x0
8010552b:	6a 4b                	push   $0x4b
8010552d:	e9 67 f8 ff ff       	jmp    80104d99 <alltraps>

80105532 <vector76>:
80105532:	6a 00                	push   $0x0
80105534:	6a 4c                	push   $0x4c
80105536:	e9 5e f8 ff ff       	jmp    80104d99 <alltraps>

8010553b <vector77>:
8010553b:	6a 00                	push   $0x0
8010553d:	6a 4d                	push   $0x4d
8010553f:	e9 55 f8 ff ff       	jmp    80104d99 <alltraps>

80105544 <vector78>:
80105544:	6a 00                	push   $0x0
80105546:	6a 4e                	push   $0x4e
80105548:	e9 4c f8 ff ff       	jmp    80104d99 <alltraps>

8010554d <vector79>:
8010554d:	6a 00                	push   $0x0
8010554f:	6a 4f                	push   $0x4f
80105551:	e9 43 f8 ff ff       	jmp    80104d99 <alltraps>

80105556 <vector80>:
80105556:	6a 00                	push   $0x0
80105558:	6a 50                	push   $0x50
8010555a:	e9 3a f8 ff ff       	jmp    80104d99 <alltraps>

8010555f <vector81>:
8010555f:	6a 00                	push   $0x0
80105561:	6a 51                	push   $0x51
80105563:	e9 31 f8 ff ff       	jmp    80104d99 <alltraps>

80105568 <vector82>:
80105568:	6a 00                	push   $0x0
8010556a:	6a 52                	push   $0x52
8010556c:	e9 28 f8 ff ff       	jmp    80104d99 <alltraps>

80105571 <vector83>:
80105571:	6a 00                	push   $0x0
80105573:	6a 53                	push   $0x53
80105575:	e9 1f f8 ff ff       	jmp    80104d99 <alltraps>

8010557a <vector84>:
8010557a:	6a 00                	push   $0x0
8010557c:	6a 54                	push   $0x54
8010557e:	e9 16 f8 ff ff       	jmp    80104d99 <alltraps>

80105583 <vector85>:
80105583:	6a 00                	push   $0x0
80105585:	6a 55                	push   $0x55
80105587:	e9 0d f8 ff ff       	jmp    80104d99 <alltraps>

8010558c <vector86>:
8010558c:	6a 00                	push   $0x0
8010558e:	6a 56                	push   $0x56
80105590:	e9 04 f8 ff ff       	jmp    80104d99 <alltraps>

80105595 <vector87>:
80105595:	6a 00                	push   $0x0
80105597:	6a 57                	push   $0x57
80105599:	e9 fb f7 ff ff       	jmp    80104d99 <alltraps>

8010559e <vector88>:
8010559e:	6a 00                	push   $0x0
801055a0:	6a 58                	push   $0x58
801055a2:	e9 f2 f7 ff ff       	jmp    80104d99 <alltraps>

801055a7 <vector89>:
801055a7:	6a 00                	push   $0x0
801055a9:	6a 59                	push   $0x59
801055ab:	e9 e9 f7 ff ff       	jmp    80104d99 <alltraps>

801055b0 <vector90>:
801055b0:	6a 00                	push   $0x0
801055b2:	6a 5a                	push   $0x5a
801055b4:	e9 e0 f7 ff ff       	jmp    80104d99 <alltraps>

801055b9 <vector91>:
801055b9:	6a 00                	push   $0x0
801055bb:	6a 5b                	push   $0x5b
801055bd:	e9 d7 f7 ff ff       	jmp    80104d99 <alltraps>

801055c2 <vector92>:
801055c2:	6a 00                	push   $0x0
801055c4:	6a 5c                	push   $0x5c
801055c6:	e9 ce f7 ff ff       	jmp    80104d99 <alltraps>

801055cb <vector93>:
801055cb:	6a 00                	push   $0x0
801055cd:	6a 5d                	push   $0x5d
801055cf:	e9 c5 f7 ff ff       	jmp    80104d99 <alltraps>

801055d4 <vector94>:
801055d4:	6a 00                	push   $0x0
801055d6:	6a 5e                	push   $0x5e
801055d8:	e9 bc f7 ff ff       	jmp    80104d99 <alltraps>

801055dd <vector95>:
801055dd:	6a 00                	push   $0x0
801055df:	6a 5f                	push   $0x5f
801055e1:	e9 b3 f7 ff ff       	jmp    80104d99 <alltraps>

801055e6 <vector96>:
801055e6:	6a 00                	push   $0x0
801055e8:	6a 60                	push   $0x60
801055ea:	e9 aa f7 ff ff       	jmp    80104d99 <alltraps>

801055ef <vector97>:
801055ef:	6a 00                	push   $0x0
801055f1:	6a 61                	push   $0x61
801055f3:	e9 a1 f7 ff ff       	jmp    80104d99 <alltraps>

801055f8 <vector98>:
801055f8:	6a 00                	push   $0x0
801055fa:	6a 62                	push   $0x62
801055fc:	e9 98 f7 ff ff       	jmp    80104d99 <alltraps>

80105601 <vector99>:
80105601:	6a 00                	push   $0x0
80105603:	6a 63                	push   $0x63
80105605:	e9 8f f7 ff ff       	jmp    80104d99 <alltraps>

8010560a <vector100>:
8010560a:	6a 00                	push   $0x0
8010560c:	6a 64                	push   $0x64
8010560e:	e9 86 f7 ff ff       	jmp    80104d99 <alltraps>

80105613 <vector101>:
80105613:	6a 00                	push   $0x0
80105615:	6a 65                	push   $0x65
80105617:	e9 7d f7 ff ff       	jmp    80104d99 <alltraps>

8010561c <vector102>:
8010561c:	6a 00                	push   $0x0
8010561e:	6a 66                	push   $0x66
80105620:	e9 74 f7 ff ff       	jmp    80104d99 <alltraps>

80105625 <vector103>:
80105625:	6a 00                	push   $0x0
80105627:	6a 67                	push   $0x67
80105629:	e9 6b f7 ff ff       	jmp    80104d99 <alltraps>

8010562e <vector104>:
8010562e:	6a 00                	push   $0x0
80105630:	6a 68                	push   $0x68
80105632:	e9 62 f7 ff ff       	jmp    80104d99 <alltraps>

80105637 <vector105>:
80105637:	6a 00                	push   $0x0
80105639:	6a 69                	push   $0x69
8010563b:	e9 59 f7 ff ff       	jmp    80104d99 <alltraps>

80105640 <vector106>:
80105640:	6a 00                	push   $0x0
80105642:	6a 6a                	push   $0x6a
80105644:	e9 50 f7 ff ff       	jmp    80104d99 <alltraps>

80105649 <vector107>:
80105649:	6a 00                	push   $0x0
8010564b:	6a 6b                	push   $0x6b
8010564d:	e9 47 f7 ff ff       	jmp    80104d99 <alltraps>

80105652 <vector108>:
80105652:	6a 00                	push   $0x0
80105654:	6a 6c                	push   $0x6c
80105656:	e9 3e f7 ff ff       	jmp    80104d99 <alltraps>

8010565b <vector109>:
8010565b:	6a 00                	push   $0x0
8010565d:	6a 6d                	push   $0x6d
8010565f:	e9 35 f7 ff ff       	jmp    80104d99 <alltraps>

80105664 <vector110>:
80105664:	6a 00                	push   $0x0
80105666:	6a 6e                	push   $0x6e
80105668:	e9 2c f7 ff ff       	jmp    80104d99 <alltraps>

8010566d <vector111>:
8010566d:	6a 00                	push   $0x0
8010566f:	6a 6f                	push   $0x6f
80105671:	e9 23 f7 ff ff       	jmp    80104d99 <alltraps>

80105676 <vector112>:
80105676:	6a 00                	push   $0x0
80105678:	6a 70                	push   $0x70
8010567a:	e9 1a f7 ff ff       	jmp    80104d99 <alltraps>

8010567f <vector113>:
8010567f:	6a 00                	push   $0x0
80105681:	6a 71                	push   $0x71
80105683:	e9 11 f7 ff ff       	jmp    80104d99 <alltraps>

80105688 <vector114>:
80105688:	6a 00                	push   $0x0
8010568a:	6a 72                	push   $0x72
8010568c:	e9 08 f7 ff ff       	jmp    80104d99 <alltraps>

80105691 <vector115>:
80105691:	6a 00                	push   $0x0
80105693:	6a 73                	push   $0x73
80105695:	e9 ff f6 ff ff       	jmp    80104d99 <alltraps>

8010569a <vector116>:
8010569a:	6a 00                	push   $0x0
8010569c:	6a 74                	push   $0x74
8010569e:	e9 f6 f6 ff ff       	jmp    80104d99 <alltraps>

801056a3 <vector117>:
801056a3:	6a 00                	push   $0x0
801056a5:	6a 75                	push   $0x75
801056a7:	e9 ed f6 ff ff       	jmp    80104d99 <alltraps>

801056ac <vector118>:
801056ac:	6a 00                	push   $0x0
801056ae:	6a 76                	push   $0x76
801056b0:	e9 e4 f6 ff ff       	jmp    80104d99 <alltraps>

801056b5 <vector119>:
801056b5:	6a 00                	push   $0x0
801056b7:	6a 77                	push   $0x77
801056b9:	e9 db f6 ff ff       	jmp    80104d99 <alltraps>

801056be <vector120>:
801056be:	6a 00                	push   $0x0
801056c0:	6a 78                	push   $0x78
801056c2:	e9 d2 f6 ff ff       	jmp    80104d99 <alltraps>

801056c7 <vector121>:
801056c7:	6a 00                	push   $0x0
801056c9:	6a 79                	push   $0x79
801056cb:	e9 c9 f6 ff ff       	jmp    80104d99 <alltraps>

801056d0 <vector122>:
801056d0:	6a 00                	push   $0x0
801056d2:	6a 7a                	push   $0x7a
801056d4:	e9 c0 f6 ff ff       	jmp    80104d99 <alltraps>

801056d9 <vector123>:
801056d9:	6a 00                	push   $0x0
801056db:	6a 7b                	push   $0x7b
801056dd:	e9 b7 f6 ff ff       	jmp    80104d99 <alltraps>

801056e2 <vector124>:
801056e2:	6a 00                	push   $0x0
801056e4:	6a 7c                	push   $0x7c
801056e6:	e9 ae f6 ff ff       	jmp    80104d99 <alltraps>

801056eb <vector125>:
801056eb:	6a 00                	push   $0x0
801056ed:	6a 7d                	push   $0x7d
801056ef:	e9 a5 f6 ff ff       	jmp    80104d99 <alltraps>

801056f4 <vector126>:
801056f4:	6a 00                	push   $0x0
801056f6:	6a 7e                	push   $0x7e
801056f8:	e9 9c f6 ff ff       	jmp    80104d99 <alltraps>

801056fd <vector127>:
801056fd:	6a 00                	push   $0x0
801056ff:	6a 7f                	push   $0x7f
80105701:	e9 93 f6 ff ff       	jmp    80104d99 <alltraps>

80105706 <vector128>:
80105706:	6a 00                	push   $0x0
80105708:	68 80 00 00 00       	push   $0x80
8010570d:	e9 87 f6 ff ff       	jmp    80104d99 <alltraps>

80105712 <vector129>:
80105712:	6a 00                	push   $0x0
80105714:	68 81 00 00 00       	push   $0x81
80105719:	e9 7b f6 ff ff       	jmp    80104d99 <alltraps>

8010571e <vector130>:
8010571e:	6a 00                	push   $0x0
80105720:	68 82 00 00 00       	push   $0x82
80105725:	e9 6f f6 ff ff       	jmp    80104d99 <alltraps>

8010572a <vector131>:
8010572a:	6a 00                	push   $0x0
8010572c:	68 83 00 00 00       	push   $0x83
80105731:	e9 63 f6 ff ff       	jmp    80104d99 <alltraps>

80105736 <vector132>:
80105736:	6a 00                	push   $0x0
80105738:	68 84 00 00 00       	push   $0x84
8010573d:	e9 57 f6 ff ff       	jmp    80104d99 <alltraps>

80105742 <vector133>:
80105742:	6a 00                	push   $0x0
80105744:	68 85 00 00 00       	push   $0x85
80105749:	e9 4b f6 ff ff       	jmp    80104d99 <alltraps>

8010574e <vector134>:
8010574e:	6a 00                	push   $0x0
80105750:	68 86 00 00 00       	push   $0x86
80105755:	e9 3f f6 ff ff       	jmp    80104d99 <alltraps>

8010575a <vector135>:
8010575a:	6a 00                	push   $0x0
8010575c:	68 87 00 00 00       	push   $0x87
80105761:	e9 33 f6 ff ff       	jmp    80104d99 <alltraps>

80105766 <vector136>:
80105766:	6a 00                	push   $0x0
80105768:	68 88 00 00 00       	push   $0x88
8010576d:	e9 27 f6 ff ff       	jmp    80104d99 <alltraps>

80105772 <vector137>:
80105772:	6a 00                	push   $0x0
80105774:	68 89 00 00 00       	push   $0x89
80105779:	e9 1b f6 ff ff       	jmp    80104d99 <alltraps>

8010577e <vector138>:
8010577e:	6a 00                	push   $0x0
80105780:	68 8a 00 00 00       	push   $0x8a
80105785:	e9 0f f6 ff ff       	jmp    80104d99 <alltraps>

8010578a <vector139>:
8010578a:	6a 00                	push   $0x0
8010578c:	68 8b 00 00 00       	push   $0x8b
80105791:	e9 03 f6 ff ff       	jmp    80104d99 <alltraps>

80105796 <vector140>:
80105796:	6a 00                	push   $0x0
80105798:	68 8c 00 00 00       	push   $0x8c
8010579d:	e9 f7 f5 ff ff       	jmp    80104d99 <alltraps>

801057a2 <vector141>:
801057a2:	6a 00                	push   $0x0
801057a4:	68 8d 00 00 00       	push   $0x8d
801057a9:	e9 eb f5 ff ff       	jmp    80104d99 <alltraps>

801057ae <vector142>:
801057ae:	6a 00                	push   $0x0
801057b0:	68 8e 00 00 00       	push   $0x8e
801057b5:	e9 df f5 ff ff       	jmp    80104d99 <alltraps>

801057ba <vector143>:
801057ba:	6a 00                	push   $0x0
801057bc:	68 8f 00 00 00       	push   $0x8f
801057c1:	e9 d3 f5 ff ff       	jmp    80104d99 <alltraps>

801057c6 <vector144>:
801057c6:	6a 00                	push   $0x0
801057c8:	68 90 00 00 00       	push   $0x90
801057cd:	e9 c7 f5 ff ff       	jmp    80104d99 <alltraps>

801057d2 <vector145>:
801057d2:	6a 00                	push   $0x0
801057d4:	68 91 00 00 00       	push   $0x91
801057d9:	e9 bb f5 ff ff       	jmp    80104d99 <alltraps>

801057de <vector146>:
801057de:	6a 00                	push   $0x0
801057e0:	68 92 00 00 00       	push   $0x92
801057e5:	e9 af f5 ff ff       	jmp    80104d99 <alltraps>

801057ea <vector147>:
801057ea:	6a 00                	push   $0x0
801057ec:	68 93 00 00 00       	push   $0x93
801057f1:	e9 a3 f5 ff ff       	jmp    80104d99 <alltraps>

801057f6 <vector148>:
801057f6:	6a 00                	push   $0x0
801057f8:	68 94 00 00 00       	push   $0x94
801057fd:	e9 97 f5 ff ff       	jmp    80104d99 <alltraps>

80105802 <vector149>:
80105802:	6a 00                	push   $0x0
80105804:	68 95 00 00 00       	push   $0x95
80105809:	e9 8b f5 ff ff       	jmp    80104d99 <alltraps>

8010580e <vector150>:
8010580e:	6a 00                	push   $0x0
80105810:	68 96 00 00 00       	push   $0x96
80105815:	e9 7f f5 ff ff       	jmp    80104d99 <alltraps>

8010581a <vector151>:
8010581a:	6a 00                	push   $0x0
8010581c:	68 97 00 00 00       	push   $0x97
80105821:	e9 73 f5 ff ff       	jmp    80104d99 <alltraps>

80105826 <vector152>:
80105826:	6a 00                	push   $0x0
80105828:	68 98 00 00 00       	push   $0x98
8010582d:	e9 67 f5 ff ff       	jmp    80104d99 <alltraps>

80105832 <vector153>:
80105832:	6a 00                	push   $0x0
80105834:	68 99 00 00 00       	push   $0x99
80105839:	e9 5b f5 ff ff       	jmp    80104d99 <alltraps>

8010583e <vector154>:
8010583e:	6a 00                	push   $0x0
80105840:	68 9a 00 00 00       	push   $0x9a
80105845:	e9 4f f5 ff ff       	jmp    80104d99 <alltraps>

8010584a <vector155>:
8010584a:	6a 00                	push   $0x0
8010584c:	68 9b 00 00 00       	push   $0x9b
80105851:	e9 43 f5 ff ff       	jmp    80104d99 <alltraps>

80105856 <vector156>:
80105856:	6a 00                	push   $0x0
80105858:	68 9c 00 00 00       	push   $0x9c
8010585d:	e9 37 f5 ff ff       	jmp    80104d99 <alltraps>

80105862 <vector157>:
80105862:	6a 00                	push   $0x0
80105864:	68 9d 00 00 00       	push   $0x9d
80105869:	e9 2b f5 ff ff       	jmp    80104d99 <alltraps>

8010586e <vector158>:
8010586e:	6a 00                	push   $0x0
80105870:	68 9e 00 00 00       	push   $0x9e
80105875:	e9 1f f5 ff ff       	jmp    80104d99 <alltraps>

8010587a <vector159>:
8010587a:	6a 00                	push   $0x0
8010587c:	68 9f 00 00 00       	push   $0x9f
80105881:	e9 13 f5 ff ff       	jmp    80104d99 <alltraps>

80105886 <vector160>:
80105886:	6a 00                	push   $0x0
80105888:	68 a0 00 00 00       	push   $0xa0
8010588d:	e9 07 f5 ff ff       	jmp    80104d99 <alltraps>

80105892 <vector161>:
80105892:	6a 00                	push   $0x0
80105894:	68 a1 00 00 00       	push   $0xa1
80105899:	e9 fb f4 ff ff       	jmp    80104d99 <alltraps>

8010589e <vector162>:
8010589e:	6a 00                	push   $0x0
801058a0:	68 a2 00 00 00       	push   $0xa2
801058a5:	e9 ef f4 ff ff       	jmp    80104d99 <alltraps>

801058aa <vector163>:
801058aa:	6a 00                	push   $0x0
801058ac:	68 a3 00 00 00       	push   $0xa3
801058b1:	e9 e3 f4 ff ff       	jmp    80104d99 <alltraps>

801058b6 <vector164>:
801058b6:	6a 00                	push   $0x0
801058b8:	68 a4 00 00 00       	push   $0xa4
801058bd:	e9 d7 f4 ff ff       	jmp    80104d99 <alltraps>

801058c2 <vector165>:
801058c2:	6a 00                	push   $0x0
801058c4:	68 a5 00 00 00       	push   $0xa5
801058c9:	e9 cb f4 ff ff       	jmp    80104d99 <alltraps>

801058ce <vector166>:
801058ce:	6a 00                	push   $0x0
801058d0:	68 a6 00 00 00       	push   $0xa6
801058d5:	e9 bf f4 ff ff       	jmp    80104d99 <alltraps>

801058da <vector167>:
801058da:	6a 00                	push   $0x0
801058dc:	68 a7 00 00 00       	push   $0xa7
801058e1:	e9 b3 f4 ff ff       	jmp    80104d99 <alltraps>

801058e6 <vector168>:
801058e6:	6a 00                	push   $0x0
801058e8:	68 a8 00 00 00       	push   $0xa8
801058ed:	e9 a7 f4 ff ff       	jmp    80104d99 <alltraps>

801058f2 <vector169>:
801058f2:	6a 00                	push   $0x0
801058f4:	68 a9 00 00 00       	push   $0xa9
801058f9:	e9 9b f4 ff ff       	jmp    80104d99 <alltraps>

801058fe <vector170>:
801058fe:	6a 00                	push   $0x0
80105900:	68 aa 00 00 00       	push   $0xaa
80105905:	e9 8f f4 ff ff       	jmp    80104d99 <alltraps>

8010590a <vector171>:
8010590a:	6a 00                	push   $0x0
8010590c:	68 ab 00 00 00       	push   $0xab
80105911:	e9 83 f4 ff ff       	jmp    80104d99 <alltraps>

80105916 <vector172>:
80105916:	6a 00                	push   $0x0
80105918:	68 ac 00 00 00       	push   $0xac
8010591d:	e9 77 f4 ff ff       	jmp    80104d99 <alltraps>

80105922 <vector173>:
80105922:	6a 00                	push   $0x0
80105924:	68 ad 00 00 00       	push   $0xad
80105929:	e9 6b f4 ff ff       	jmp    80104d99 <alltraps>

8010592e <vector174>:
8010592e:	6a 00                	push   $0x0
80105930:	68 ae 00 00 00       	push   $0xae
80105935:	e9 5f f4 ff ff       	jmp    80104d99 <alltraps>

8010593a <vector175>:
8010593a:	6a 00                	push   $0x0
8010593c:	68 af 00 00 00       	push   $0xaf
80105941:	e9 53 f4 ff ff       	jmp    80104d99 <alltraps>

80105946 <vector176>:
80105946:	6a 00                	push   $0x0
80105948:	68 b0 00 00 00       	push   $0xb0
8010594d:	e9 47 f4 ff ff       	jmp    80104d99 <alltraps>

80105952 <vector177>:
80105952:	6a 00                	push   $0x0
80105954:	68 b1 00 00 00       	push   $0xb1
80105959:	e9 3b f4 ff ff       	jmp    80104d99 <alltraps>

8010595e <vector178>:
8010595e:	6a 00                	push   $0x0
80105960:	68 b2 00 00 00       	push   $0xb2
80105965:	e9 2f f4 ff ff       	jmp    80104d99 <alltraps>

8010596a <vector179>:
8010596a:	6a 00                	push   $0x0
8010596c:	68 b3 00 00 00       	push   $0xb3
80105971:	e9 23 f4 ff ff       	jmp    80104d99 <alltraps>

80105976 <vector180>:
80105976:	6a 00                	push   $0x0
80105978:	68 b4 00 00 00       	push   $0xb4
8010597d:	e9 17 f4 ff ff       	jmp    80104d99 <alltraps>

80105982 <vector181>:
80105982:	6a 00                	push   $0x0
80105984:	68 b5 00 00 00       	push   $0xb5
80105989:	e9 0b f4 ff ff       	jmp    80104d99 <alltraps>

8010598e <vector182>:
8010598e:	6a 00                	push   $0x0
80105990:	68 b6 00 00 00       	push   $0xb6
80105995:	e9 ff f3 ff ff       	jmp    80104d99 <alltraps>

8010599a <vector183>:
8010599a:	6a 00                	push   $0x0
8010599c:	68 b7 00 00 00       	push   $0xb7
801059a1:	e9 f3 f3 ff ff       	jmp    80104d99 <alltraps>

801059a6 <vector184>:
801059a6:	6a 00                	push   $0x0
801059a8:	68 b8 00 00 00       	push   $0xb8
801059ad:	e9 e7 f3 ff ff       	jmp    80104d99 <alltraps>

801059b2 <vector185>:
801059b2:	6a 00                	push   $0x0
801059b4:	68 b9 00 00 00       	push   $0xb9
801059b9:	e9 db f3 ff ff       	jmp    80104d99 <alltraps>

801059be <vector186>:
801059be:	6a 00                	push   $0x0
801059c0:	68 ba 00 00 00       	push   $0xba
801059c5:	e9 cf f3 ff ff       	jmp    80104d99 <alltraps>

801059ca <vector187>:
801059ca:	6a 00                	push   $0x0
801059cc:	68 bb 00 00 00       	push   $0xbb
801059d1:	e9 c3 f3 ff ff       	jmp    80104d99 <alltraps>

801059d6 <vector188>:
801059d6:	6a 00                	push   $0x0
801059d8:	68 bc 00 00 00       	push   $0xbc
801059dd:	e9 b7 f3 ff ff       	jmp    80104d99 <alltraps>

801059e2 <vector189>:
801059e2:	6a 00                	push   $0x0
801059e4:	68 bd 00 00 00       	push   $0xbd
801059e9:	e9 ab f3 ff ff       	jmp    80104d99 <alltraps>

801059ee <vector190>:
801059ee:	6a 00                	push   $0x0
801059f0:	68 be 00 00 00       	push   $0xbe
801059f5:	e9 9f f3 ff ff       	jmp    80104d99 <alltraps>

801059fa <vector191>:
801059fa:	6a 00                	push   $0x0
801059fc:	68 bf 00 00 00       	push   $0xbf
80105a01:	e9 93 f3 ff ff       	jmp    80104d99 <alltraps>

80105a06 <vector192>:
80105a06:	6a 00                	push   $0x0
80105a08:	68 c0 00 00 00       	push   $0xc0
80105a0d:	e9 87 f3 ff ff       	jmp    80104d99 <alltraps>

80105a12 <vector193>:
80105a12:	6a 00                	push   $0x0
80105a14:	68 c1 00 00 00       	push   $0xc1
80105a19:	e9 7b f3 ff ff       	jmp    80104d99 <alltraps>

80105a1e <vector194>:
80105a1e:	6a 00                	push   $0x0
80105a20:	68 c2 00 00 00       	push   $0xc2
80105a25:	e9 6f f3 ff ff       	jmp    80104d99 <alltraps>

80105a2a <vector195>:
80105a2a:	6a 00                	push   $0x0
80105a2c:	68 c3 00 00 00       	push   $0xc3
80105a31:	e9 63 f3 ff ff       	jmp    80104d99 <alltraps>

80105a36 <vector196>:
80105a36:	6a 00                	push   $0x0
80105a38:	68 c4 00 00 00       	push   $0xc4
80105a3d:	e9 57 f3 ff ff       	jmp    80104d99 <alltraps>

80105a42 <vector197>:
80105a42:	6a 00                	push   $0x0
80105a44:	68 c5 00 00 00       	push   $0xc5
80105a49:	e9 4b f3 ff ff       	jmp    80104d99 <alltraps>

80105a4e <vector198>:
80105a4e:	6a 00                	push   $0x0
80105a50:	68 c6 00 00 00       	push   $0xc6
80105a55:	e9 3f f3 ff ff       	jmp    80104d99 <alltraps>

80105a5a <vector199>:
80105a5a:	6a 00                	push   $0x0
80105a5c:	68 c7 00 00 00       	push   $0xc7
80105a61:	e9 33 f3 ff ff       	jmp    80104d99 <alltraps>

80105a66 <vector200>:
80105a66:	6a 00                	push   $0x0
80105a68:	68 c8 00 00 00       	push   $0xc8
80105a6d:	e9 27 f3 ff ff       	jmp    80104d99 <alltraps>

80105a72 <vector201>:
80105a72:	6a 00                	push   $0x0
80105a74:	68 c9 00 00 00       	push   $0xc9
80105a79:	e9 1b f3 ff ff       	jmp    80104d99 <alltraps>

80105a7e <vector202>:
80105a7e:	6a 00                	push   $0x0
80105a80:	68 ca 00 00 00       	push   $0xca
80105a85:	e9 0f f3 ff ff       	jmp    80104d99 <alltraps>

80105a8a <vector203>:
80105a8a:	6a 00                	push   $0x0
80105a8c:	68 cb 00 00 00       	push   $0xcb
80105a91:	e9 03 f3 ff ff       	jmp    80104d99 <alltraps>

80105a96 <vector204>:
80105a96:	6a 00                	push   $0x0
80105a98:	68 cc 00 00 00       	push   $0xcc
80105a9d:	e9 f7 f2 ff ff       	jmp    80104d99 <alltraps>

80105aa2 <vector205>:
80105aa2:	6a 00                	push   $0x0
80105aa4:	68 cd 00 00 00       	push   $0xcd
80105aa9:	e9 eb f2 ff ff       	jmp    80104d99 <alltraps>

80105aae <vector206>:
80105aae:	6a 00                	push   $0x0
80105ab0:	68 ce 00 00 00       	push   $0xce
80105ab5:	e9 df f2 ff ff       	jmp    80104d99 <alltraps>

80105aba <vector207>:
80105aba:	6a 00                	push   $0x0
80105abc:	68 cf 00 00 00       	push   $0xcf
80105ac1:	e9 d3 f2 ff ff       	jmp    80104d99 <alltraps>

80105ac6 <vector208>:
80105ac6:	6a 00                	push   $0x0
80105ac8:	68 d0 00 00 00       	push   $0xd0
80105acd:	e9 c7 f2 ff ff       	jmp    80104d99 <alltraps>

80105ad2 <vector209>:
80105ad2:	6a 00                	push   $0x0
80105ad4:	68 d1 00 00 00       	push   $0xd1
80105ad9:	e9 bb f2 ff ff       	jmp    80104d99 <alltraps>

80105ade <vector210>:
80105ade:	6a 00                	push   $0x0
80105ae0:	68 d2 00 00 00       	push   $0xd2
80105ae5:	e9 af f2 ff ff       	jmp    80104d99 <alltraps>

80105aea <vector211>:
80105aea:	6a 00                	push   $0x0
80105aec:	68 d3 00 00 00       	push   $0xd3
80105af1:	e9 a3 f2 ff ff       	jmp    80104d99 <alltraps>

80105af6 <vector212>:
80105af6:	6a 00                	push   $0x0
80105af8:	68 d4 00 00 00       	push   $0xd4
80105afd:	e9 97 f2 ff ff       	jmp    80104d99 <alltraps>

80105b02 <vector213>:
80105b02:	6a 00                	push   $0x0
80105b04:	68 d5 00 00 00       	push   $0xd5
80105b09:	e9 8b f2 ff ff       	jmp    80104d99 <alltraps>

80105b0e <vector214>:
80105b0e:	6a 00                	push   $0x0
80105b10:	68 d6 00 00 00       	push   $0xd6
80105b15:	e9 7f f2 ff ff       	jmp    80104d99 <alltraps>

80105b1a <vector215>:
80105b1a:	6a 00                	push   $0x0
80105b1c:	68 d7 00 00 00       	push   $0xd7
80105b21:	e9 73 f2 ff ff       	jmp    80104d99 <alltraps>

80105b26 <vector216>:
80105b26:	6a 00                	push   $0x0
80105b28:	68 d8 00 00 00       	push   $0xd8
80105b2d:	e9 67 f2 ff ff       	jmp    80104d99 <alltraps>

80105b32 <vector217>:
80105b32:	6a 00                	push   $0x0
80105b34:	68 d9 00 00 00       	push   $0xd9
80105b39:	e9 5b f2 ff ff       	jmp    80104d99 <alltraps>

80105b3e <vector218>:
80105b3e:	6a 00                	push   $0x0
80105b40:	68 da 00 00 00       	push   $0xda
80105b45:	e9 4f f2 ff ff       	jmp    80104d99 <alltraps>

80105b4a <vector219>:
80105b4a:	6a 00                	push   $0x0
80105b4c:	68 db 00 00 00       	push   $0xdb
80105b51:	e9 43 f2 ff ff       	jmp    80104d99 <alltraps>

80105b56 <vector220>:
80105b56:	6a 00                	push   $0x0
80105b58:	68 dc 00 00 00       	push   $0xdc
80105b5d:	e9 37 f2 ff ff       	jmp    80104d99 <alltraps>

80105b62 <vector221>:
80105b62:	6a 00                	push   $0x0
80105b64:	68 dd 00 00 00       	push   $0xdd
80105b69:	e9 2b f2 ff ff       	jmp    80104d99 <alltraps>

80105b6e <vector222>:
80105b6e:	6a 00                	push   $0x0
80105b70:	68 de 00 00 00       	push   $0xde
80105b75:	e9 1f f2 ff ff       	jmp    80104d99 <alltraps>

80105b7a <vector223>:
80105b7a:	6a 00                	push   $0x0
80105b7c:	68 df 00 00 00       	push   $0xdf
80105b81:	e9 13 f2 ff ff       	jmp    80104d99 <alltraps>

80105b86 <vector224>:
80105b86:	6a 00                	push   $0x0
80105b88:	68 e0 00 00 00       	push   $0xe0
80105b8d:	e9 07 f2 ff ff       	jmp    80104d99 <alltraps>

80105b92 <vector225>:
80105b92:	6a 00                	push   $0x0
80105b94:	68 e1 00 00 00       	push   $0xe1
80105b99:	e9 fb f1 ff ff       	jmp    80104d99 <alltraps>

80105b9e <vector226>:
80105b9e:	6a 00                	push   $0x0
80105ba0:	68 e2 00 00 00       	push   $0xe2
80105ba5:	e9 ef f1 ff ff       	jmp    80104d99 <alltraps>

80105baa <vector227>:
80105baa:	6a 00                	push   $0x0
80105bac:	68 e3 00 00 00       	push   $0xe3
80105bb1:	e9 e3 f1 ff ff       	jmp    80104d99 <alltraps>

80105bb6 <vector228>:
80105bb6:	6a 00                	push   $0x0
80105bb8:	68 e4 00 00 00       	push   $0xe4
80105bbd:	e9 d7 f1 ff ff       	jmp    80104d99 <alltraps>

80105bc2 <vector229>:
80105bc2:	6a 00                	push   $0x0
80105bc4:	68 e5 00 00 00       	push   $0xe5
80105bc9:	e9 cb f1 ff ff       	jmp    80104d99 <alltraps>

80105bce <vector230>:
80105bce:	6a 00                	push   $0x0
80105bd0:	68 e6 00 00 00       	push   $0xe6
80105bd5:	e9 bf f1 ff ff       	jmp    80104d99 <alltraps>

80105bda <vector231>:
80105bda:	6a 00                	push   $0x0
80105bdc:	68 e7 00 00 00       	push   $0xe7
80105be1:	e9 b3 f1 ff ff       	jmp    80104d99 <alltraps>

80105be6 <vector232>:
80105be6:	6a 00                	push   $0x0
80105be8:	68 e8 00 00 00       	push   $0xe8
80105bed:	e9 a7 f1 ff ff       	jmp    80104d99 <alltraps>

80105bf2 <vector233>:
80105bf2:	6a 00                	push   $0x0
80105bf4:	68 e9 00 00 00       	push   $0xe9
80105bf9:	e9 9b f1 ff ff       	jmp    80104d99 <alltraps>

80105bfe <vector234>:
80105bfe:	6a 00                	push   $0x0
80105c00:	68 ea 00 00 00       	push   $0xea
80105c05:	e9 8f f1 ff ff       	jmp    80104d99 <alltraps>

80105c0a <vector235>:
80105c0a:	6a 00                	push   $0x0
80105c0c:	68 eb 00 00 00       	push   $0xeb
80105c11:	e9 83 f1 ff ff       	jmp    80104d99 <alltraps>

80105c16 <vector236>:
80105c16:	6a 00                	push   $0x0
80105c18:	68 ec 00 00 00       	push   $0xec
80105c1d:	e9 77 f1 ff ff       	jmp    80104d99 <alltraps>

80105c22 <vector237>:
80105c22:	6a 00                	push   $0x0
80105c24:	68 ed 00 00 00       	push   $0xed
80105c29:	e9 6b f1 ff ff       	jmp    80104d99 <alltraps>

80105c2e <vector238>:
80105c2e:	6a 00                	push   $0x0
80105c30:	68 ee 00 00 00       	push   $0xee
80105c35:	e9 5f f1 ff ff       	jmp    80104d99 <alltraps>

80105c3a <vector239>:
80105c3a:	6a 00                	push   $0x0
80105c3c:	68 ef 00 00 00       	push   $0xef
80105c41:	e9 53 f1 ff ff       	jmp    80104d99 <alltraps>

80105c46 <vector240>:
80105c46:	6a 00                	push   $0x0
80105c48:	68 f0 00 00 00       	push   $0xf0
80105c4d:	e9 47 f1 ff ff       	jmp    80104d99 <alltraps>

80105c52 <vector241>:
80105c52:	6a 00                	push   $0x0
80105c54:	68 f1 00 00 00       	push   $0xf1
80105c59:	e9 3b f1 ff ff       	jmp    80104d99 <alltraps>

80105c5e <vector242>:
80105c5e:	6a 00                	push   $0x0
80105c60:	68 f2 00 00 00       	push   $0xf2
80105c65:	e9 2f f1 ff ff       	jmp    80104d99 <alltraps>

80105c6a <vector243>:
80105c6a:	6a 00                	push   $0x0
80105c6c:	68 f3 00 00 00       	push   $0xf3
80105c71:	e9 23 f1 ff ff       	jmp    80104d99 <alltraps>

80105c76 <vector244>:
80105c76:	6a 00                	push   $0x0
80105c78:	68 f4 00 00 00       	push   $0xf4
80105c7d:	e9 17 f1 ff ff       	jmp    80104d99 <alltraps>

80105c82 <vector245>:
80105c82:	6a 00                	push   $0x0
80105c84:	68 f5 00 00 00       	push   $0xf5
80105c89:	e9 0b f1 ff ff       	jmp    80104d99 <alltraps>

80105c8e <vector246>:
80105c8e:	6a 00                	push   $0x0
80105c90:	68 f6 00 00 00       	push   $0xf6
80105c95:	e9 ff f0 ff ff       	jmp    80104d99 <alltraps>

80105c9a <vector247>:
80105c9a:	6a 00                	push   $0x0
80105c9c:	68 f7 00 00 00       	push   $0xf7
80105ca1:	e9 f3 f0 ff ff       	jmp    80104d99 <alltraps>

80105ca6 <vector248>:
80105ca6:	6a 00                	push   $0x0
80105ca8:	68 f8 00 00 00       	push   $0xf8
80105cad:	e9 e7 f0 ff ff       	jmp    80104d99 <alltraps>

80105cb2 <vector249>:
80105cb2:	6a 00                	push   $0x0
80105cb4:	68 f9 00 00 00       	push   $0xf9
80105cb9:	e9 db f0 ff ff       	jmp    80104d99 <alltraps>

80105cbe <vector250>:
80105cbe:	6a 00                	push   $0x0
80105cc0:	68 fa 00 00 00       	push   $0xfa
80105cc5:	e9 cf f0 ff ff       	jmp    80104d99 <alltraps>

80105cca <vector251>:
80105cca:	6a 00                	push   $0x0
80105ccc:	68 fb 00 00 00       	push   $0xfb
80105cd1:	e9 c3 f0 ff ff       	jmp    80104d99 <alltraps>

80105cd6 <vector252>:
80105cd6:	6a 00                	push   $0x0
80105cd8:	68 fc 00 00 00       	push   $0xfc
80105cdd:	e9 b7 f0 ff ff       	jmp    80104d99 <alltraps>

80105ce2 <vector253>:
80105ce2:	6a 00                	push   $0x0
80105ce4:	68 fd 00 00 00       	push   $0xfd
80105ce9:	e9 ab f0 ff ff       	jmp    80104d99 <alltraps>

80105cee <vector254>:
80105cee:	6a 00                	push   $0x0
80105cf0:	68 fe 00 00 00       	push   $0xfe
80105cf5:	e9 9f f0 ff ff       	jmp    80104d99 <alltraps>

80105cfa <vector255>:
80105cfa:	6a 00                	push   $0x0
80105cfc:	68 ff 00 00 00       	push   $0xff
80105d01:	e9 93 f0 ff ff       	jmp    80104d99 <alltraps>

80105d06 <walkpgdir>:
80105d06:	55                   	push   %ebp
80105d07:	89 e5                	mov    %esp,%ebp
80105d09:	57                   	push   %edi
80105d0a:	56                   	push   %esi
80105d0b:	53                   	push   %ebx
80105d0c:	83 ec 0c             	sub    $0xc,%esp
80105d0f:	89 d3                	mov    %edx,%ebx
80105d11:	c1 ea 16             	shr    $0x16,%edx
80105d14:	8d 3c 90             	lea    (%eax,%edx,4),%edi
80105d17:	8b 37                	mov    (%edi),%esi
80105d19:	f7 c6 01 00 00 00    	test   $0x1,%esi
80105d1f:	74 20                	je     80105d41 <walkpgdir+0x3b>
80105d21:	81 e6 00 f0 ff ff    	and    $0xfffff000,%esi
80105d27:	81 c6 00 00 00 80    	add    $0x80000000,%esi
80105d2d:	c1 eb 0c             	shr    $0xc,%ebx
80105d30:	81 e3 ff 03 00 00    	and    $0x3ff,%ebx
80105d36:	8d 04 9e             	lea    (%esi,%ebx,4),%eax
80105d39:	8d 65 f4             	lea    -0xc(%ebp),%esp
80105d3c:	5b                   	pop    %ebx
80105d3d:	5e                   	pop    %esi
80105d3e:	5f                   	pop    %edi
80105d3f:	5d                   	pop    %ebp
80105d40:	c3                   	ret    
80105d41:	85 c9                	test   %ecx,%ecx
80105d43:	74 2b                	je     80105d70 <walkpgdir+0x6a>
80105d45:	e8 74 c3 ff ff       	call   801020be <kalloc>
80105d4a:	89 c6                	mov    %eax,%esi
80105d4c:	85 c0                	test   %eax,%eax
80105d4e:	74 20                	je     80105d70 <walkpgdir+0x6a>
80105d50:	83 ec 04             	sub    $0x4,%esp
80105d53:	68 00 10 00 00       	push   $0x1000
80105d58:	6a 00                	push   $0x0
80105d5a:	50                   	push   %eax
80105d5b:	e8 c6 de ff ff       	call   80103c26 <memset>
80105d60:	8d 86 00 00 00 80    	lea    -0x80000000(%esi),%eax
80105d66:	83 c8 07             	or     $0x7,%eax
80105d69:	89 07                	mov    %eax,(%edi)
80105d6b:	83 c4 10             	add    $0x10,%esp
80105d6e:	eb bd                	jmp    80105d2d <walkpgdir+0x27>
80105d70:	b8 00 00 00 00       	mov    $0x0,%eax
80105d75:	eb c2                	jmp    80105d39 <walkpgdir+0x33>

80105d77 <seginit>:
80105d77:	f3 0f 1e fb          	endbr32 
80105d7b:	55                   	push   %ebp
80105d7c:	89 e5                	mov    %esp,%ebp
80105d7e:	53                   	push   %ebx
80105d7f:	83 ec 14             	sub    $0x14,%esp
80105d82:	e8 2e d4 ff ff       	call   801031b5 <cpuid>
80105d87:	69 c0 b0 00 00 00    	imul   $0xb0,%eax,%eax
80105d8d:	66 c7 80 18 08 11 80 	movw   $0xffff,-0x7feef7e8(%eax)
80105d94:	ff ff 
80105d96:	66 c7 80 1a 08 11 80 	movw   $0x0,-0x7feef7e6(%eax)
80105d9d:	00 00 
80105d9f:	c6 80 1c 08 11 80 00 	movb   $0x0,-0x7feef7e4(%eax)
80105da6:	0f b6 88 1d 08 11 80 	movzbl -0x7feef7e3(%eax),%ecx
80105dad:	83 e1 f0             	and    $0xfffffff0,%ecx
80105db0:	83 c9 1a             	or     $0x1a,%ecx
80105db3:	83 e1 9f             	and    $0xffffff9f,%ecx
80105db6:	83 c9 80             	or     $0xffffff80,%ecx
80105db9:	88 88 1d 08 11 80    	mov    %cl,-0x7feef7e3(%eax)
80105dbf:	0f b6 88 1e 08 11 80 	movzbl -0x7feef7e2(%eax),%ecx
80105dc6:	83 c9 0f             	or     $0xf,%ecx
80105dc9:	83 e1 cf             	and    $0xffffffcf,%ecx
80105dcc:	83 c9 c0             	or     $0xffffffc0,%ecx
80105dcf:	88 88 1e 08 11 80    	mov    %cl,-0x7feef7e2(%eax)
80105dd5:	c6 80 1f 08 11 80 00 	movb   $0x0,-0x7feef7e1(%eax)
80105ddc:	66 c7 80 20 08 11 80 	movw   $0xffff,-0x7feef7e0(%eax)
80105de3:	ff ff 
80105de5:	66 c7 80 22 08 11 80 	movw   $0x0,-0x7feef7de(%eax)
80105dec:	00 00 
80105dee:	c6 80 24 08 11 80 00 	movb   $0x0,-0x7feef7dc(%eax)
80105df5:	0f b6 88 25 08 11 80 	movzbl -0x7feef7db(%eax),%ecx
80105dfc:	83 e1 f0             	and    $0xfffffff0,%ecx
80105dff:	83 c9 12             	or     $0x12,%ecx
80105e02:	83 e1 9f             	and    $0xffffff9f,%ecx
80105e05:	83 c9 80             	or     $0xffffff80,%ecx
80105e08:	88 88 25 08 11 80    	mov    %cl,-0x7feef7db(%eax)
80105e0e:	0f b6 88 26 08 11 80 	movzbl -0x7feef7da(%eax),%ecx
80105e15:	83 c9 0f             	or     $0xf,%ecx
80105e18:	83 e1 cf             	and    $0xffffffcf,%ecx
80105e1b:	83 c9 c0             	or     $0xffffffc0,%ecx
80105e1e:	88 88 26 08 11 80    	mov    %cl,-0x7feef7da(%eax)
80105e24:	c6 80 27 08 11 80 00 	movb   $0x0,-0x7feef7d9(%eax)
80105e2b:	66 c7 80 28 08 11 80 	movw   $0xffff,-0x7feef7d8(%eax)
80105e32:	ff ff 
80105e34:	66 c7 80 2a 08 11 80 	movw   $0x0,-0x7feef7d6(%eax)
80105e3b:	00 00 
80105e3d:	c6 80 2c 08 11 80 00 	movb   $0x0,-0x7feef7d4(%eax)
80105e44:	c6 80 2d 08 11 80 fa 	movb   $0xfa,-0x7feef7d3(%eax)
80105e4b:	0f b6 88 2e 08 11 80 	movzbl -0x7feef7d2(%eax),%ecx
80105e52:	83 c9 0f             	or     $0xf,%ecx
80105e55:	83 e1 cf             	and    $0xffffffcf,%ecx
80105e58:	83 c9 c0             	or     $0xffffffc0,%ecx
80105e5b:	88 88 2e 08 11 80    	mov    %cl,-0x7feef7d2(%eax)
80105e61:	c6 80 2f 08 11 80 00 	movb   $0x0,-0x7feef7d1(%eax)
80105e68:	66 c7 80 30 08 11 80 	movw   $0xffff,-0x7feef7d0(%eax)
80105e6f:	ff ff 
80105e71:	66 c7 80 32 08 11 80 	movw   $0x0,-0x7feef7ce(%eax)
80105e78:	00 00 
80105e7a:	c6 80 34 08 11 80 00 	movb   $0x0,-0x7feef7cc(%eax)
80105e81:	c6 80 35 08 11 80 f2 	movb   $0xf2,-0x7feef7cb(%eax)
80105e88:	0f b6 88 36 08 11 80 	movzbl -0x7feef7ca(%eax),%ecx
80105e8f:	83 c9 0f             	or     $0xf,%ecx
80105e92:	83 e1 cf             	and    $0xffffffcf,%ecx
80105e95:	83 c9 c0             	or     $0xffffffc0,%ecx
80105e98:	88 88 36 08 11 80    	mov    %cl,-0x7feef7ca(%eax)
80105e9e:	c6 80 37 08 11 80 00 	movb   $0x0,-0x7feef7c9(%eax)
80105ea5:	05 10 08 11 80       	add    $0x80110810,%eax
80105eaa:	66 c7 45 f2 2f 00    	movw   $0x2f,-0xe(%ebp)
80105eb0:	66 89 45 f4          	mov    %ax,-0xc(%ebp)
80105eb4:	c1 e8 10             	shr    $0x10,%eax
80105eb7:	66 89 45 f6          	mov    %ax,-0xa(%ebp)
80105ebb:	8d 45 f2             	lea    -0xe(%ebp),%eax
80105ebe:	0f 01 10             	lgdtl  (%eax)
80105ec1:	83 c4 14             	add    $0x14,%esp
80105ec4:	5b                   	pop    %ebx
80105ec5:	5d                   	pop    %ebp
80105ec6:	c3                   	ret    

80105ec7 <mappages>:
80105ec7:	f3 0f 1e fb          	endbr32 
80105ecb:	55                   	push   %ebp
80105ecc:	89 e5                	mov    %esp,%ebp
80105ece:	57                   	push   %edi
80105ecf:	56                   	push   %esi
80105ed0:	53                   	push   %ebx
80105ed1:	83 ec 0c             	sub    $0xc,%esp
80105ed4:	8b 7d 0c             	mov    0xc(%ebp),%edi
80105ed7:	8b 75 14             	mov    0x14(%ebp),%esi
80105eda:	89 fb                	mov    %edi,%ebx
80105edc:	81 e3 00 f0 ff ff    	and    $0xfffff000,%ebx
80105ee2:	03 7d 10             	add    0x10(%ebp),%edi
80105ee5:	83 ef 01             	sub    $0x1,%edi
80105ee8:	81 e7 00 f0 ff ff    	and    $0xfffff000,%edi
80105eee:	b9 01 00 00 00       	mov    $0x1,%ecx
80105ef3:	89 da                	mov    %ebx,%edx
80105ef5:	8b 45 08             	mov    0x8(%ebp),%eax
80105ef8:	e8 09 fe ff ff       	call   80105d06 <walkpgdir>
80105efd:	85 c0                	test   %eax,%eax
80105eff:	74 2e                	je     80105f2f <mappages+0x68>
80105f01:	f6 00 01             	testb  $0x1,(%eax)
80105f04:	75 1c                	jne    80105f22 <mappages+0x5b>
80105f06:	89 f2                	mov    %esi,%edx
80105f08:	0b 55 18             	or     0x18(%ebp),%edx
80105f0b:	83 ca 01             	or     $0x1,%edx
80105f0e:	89 10                	mov    %edx,(%eax)
80105f10:	39 fb                	cmp    %edi,%ebx
80105f12:	74 28                	je     80105f3c <mappages+0x75>
80105f14:	81 c3 00 10 00 00    	add    $0x1000,%ebx
80105f1a:	81 c6 00 10 00 00    	add    $0x1000,%esi
80105f20:	eb cc                	jmp    80105eee <mappages+0x27>
80105f22:	83 ec 0c             	sub    $0xc,%esp
80105f25:	68 d8 6e 10 80       	push   $0x80106ed8
80105f2a:	e8 19 a4 ff ff       	call   80100348 <panic>
80105f2f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80105f34:	8d 65 f4             	lea    -0xc(%ebp),%esp
80105f37:	5b                   	pop    %ebx
80105f38:	5e                   	pop    %esi
80105f39:	5f                   	pop    %edi
80105f3a:	5d                   	pop    %ebp
80105f3b:	c3                   	ret    
80105f3c:	b8 00 00 00 00       	mov    $0x0,%eax
80105f41:	eb f1                	jmp    80105f34 <mappages+0x6d>

80105f43 <switchkvm>:
80105f43:	f3 0f 1e fb          	endbr32 
80105f47:	a1 d0 45 11 80       	mov    0x801145d0,%eax
80105f4c:	05 00 00 00 80       	add    $0x80000000,%eax
80105f51:	0f 22 d8             	mov    %eax,%cr3
80105f54:	c3                   	ret    

80105f55 <switchuvm>:
80105f55:	f3 0f 1e fb          	endbr32 
80105f59:	55                   	push   %ebp
80105f5a:	89 e5                	mov    %esp,%ebp
80105f5c:	57                   	push   %edi
80105f5d:	56                   	push   %esi
80105f5e:	53                   	push   %ebx
80105f5f:	83 ec 1c             	sub    $0x1c,%esp
80105f62:	8b 75 08             	mov    0x8(%ebp),%esi
80105f65:	85 f6                	test   %esi,%esi
80105f67:	0f 84 dd 00 00 00    	je     8010604a <switchuvm+0xf5>
80105f6d:	83 7e 08 00          	cmpl   $0x0,0x8(%esi)
80105f71:	0f 84 e0 00 00 00    	je     80106057 <switchuvm+0x102>
80105f77:	83 7e 04 00          	cmpl   $0x0,0x4(%esi)
80105f7b:	0f 84 e3 00 00 00    	je     80106064 <switchuvm+0x10f>
80105f81:	e8 19 db ff ff       	call   80103a9f <pushcli>
80105f86:	e8 ce d1 ff ff       	call   80103159 <mycpu>
80105f8b:	89 c3                	mov    %eax,%ebx
80105f8d:	e8 c7 d1 ff ff       	call   80103159 <mycpu>
80105f92:	8d 78 08             	lea    0x8(%eax),%edi
80105f95:	e8 bf d1 ff ff       	call   80103159 <mycpu>
80105f9a:	83 c0 08             	add    $0x8,%eax
80105f9d:	c1 e8 10             	shr    $0x10,%eax
80105fa0:	89 45 e4             	mov    %eax,-0x1c(%ebp)
80105fa3:	e8 b1 d1 ff ff       	call   80103159 <mycpu>
80105fa8:	83 c0 08             	add    $0x8,%eax
80105fab:	c1 e8 18             	shr    $0x18,%eax
80105fae:	66 c7 83 98 00 00 00 	movw   $0x67,0x98(%ebx)
80105fb5:	67 00 
80105fb7:	66 89 bb 9a 00 00 00 	mov    %di,0x9a(%ebx)
80105fbe:	0f b6 4d e4          	movzbl -0x1c(%ebp),%ecx
80105fc2:	88 8b 9c 00 00 00    	mov    %cl,0x9c(%ebx)
80105fc8:	0f b6 93 9d 00 00 00 	movzbl 0x9d(%ebx),%edx
80105fcf:	83 e2 f0             	and    $0xfffffff0,%edx
80105fd2:	83 ca 19             	or     $0x19,%edx
80105fd5:	83 e2 9f             	and    $0xffffff9f,%edx
80105fd8:	83 ca 80             	or     $0xffffff80,%edx
80105fdb:	88 93 9d 00 00 00    	mov    %dl,0x9d(%ebx)
80105fe1:	c6 83 9e 00 00 00 40 	movb   $0x40,0x9e(%ebx)
80105fe8:	88 83 9f 00 00 00    	mov    %al,0x9f(%ebx)
80105fee:	e8 66 d1 ff ff       	call   80103159 <mycpu>
80105ff3:	0f b6 90 9d 00 00 00 	movzbl 0x9d(%eax),%edx
80105ffa:	83 e2 ef             	and    $0xffffffef,%edx
80105ffd:	88 90 9d 00 00 00    	mov    %dl,0x9d(%eax)
80106003:	e8 51 d1 ff ff       	call   80103159 <mycpu>
80106008:	66 c7 40 10 10 00    	movw   $0x10,0x10(%eax)
8010600e:	8b 5e 08             	mov    0x8(%esi),%ebx
80106011:	e8 43 d1 ff ff       	call   80103159 <mycpu>
80106016:	81 c3 00 10 00 00    	add    $0x1000,%ebx
8010601c:	89 58 0c             	mov    %ebx,0xc(%eax)
8010601f:	e8 35 d1 ff ff       	call   80103159 <mycpu>
80106024:	66 c7 40 6e ff ff    	movw   $0xffff,0x6e(%eax)
8010602a:	b8 28 00 00 00       	mov    $0x28,%eax
8010602f:	0f 00 d8             	ltr    %ax
80106032:	8b 46 04             	mov    0x4(%esi),%eax
80106035:	05 00 00 00 80       	add    $0x80000000,%eax
8010603a:	0f 22 d8             	mov    %eax,%cr3
8010603d:	e8 99 da ff ff       	call   80103adb <popcli>
80106042:	8d 65 f4             	lea    -0xc(%ebp),%esp
80106045:	5b                   	pop    %ebx
80106046:	5e                   	pop    %esi
80106047:	5f                   	pop    %edi
80106048:	5d                   	pop    %ebp
80106049:	c3                   	ret    
8010604a:	83 ec 0c             	sub    $0xc,%esp
8010604d:	68 de 6e 10 80       	push   $0x80106ede
80106052:	e8 f1 a2 ff ff       	call   80100348 <panic>
80106057:	83 ec 0c             	sub    $0xc,%esp
8010605a:	68 f4 6e 10 80       	push   $0x80106ef4
8010605f:	e8 e4 a2 ff ff       	call   80100348 <panic>
80106064:	83 ec 0c             	sub    $0xc,%esp
80106067:	68 09 6f 10 80       	push   $0x80106f09
8010606c:	e8 d7 a2 ff ff       	call   80100348 <panic>

80106071 <inituvm>:
80106071:	f3 0f 1e fb          	endbr32 
80106075:	55                   	push   %ebp
80106076:	89 e5                	mov    %esp,%ebp
80106078:	56                   	push   %esi
80106079:	53                   	push   %ebx
8010607a:	8b 75 10             	mov    0x10(%ebp),%esi
8010607d:	81 fe ff 0f 00 00    	cmp    $0xfff,%esi
80106083:	77 4b                	ja     801060d0 <inituvm+0x5f>
80106085:	e8 34 c0 ff ff       	call   801020be <kalloc>
8010608a:	89 c3                	mov    %eax,%ebx
8010608c:	83 ec 04             	sub    $0x4,%esp
8010608f:	68 00 10 00 00       	push   $0x1000
80106094:	6a 00                	push   $0x0
80106096:	50                   	push   %eax
80106097:	e8 8a db ff ff       	call   80103c26 <memset>
8010609c:	c7 04 24 06 00 00 00 	movl   $0x6,(%esp)
801060a3:	8d 83 00 00 00 80    	lea    -0x80000000(%ebx),%eax
801060a9:	50                   	push   %eax
801060aa:	68 00 10 00 00       	push   $0x1000
801060af:	6a 00                	push   $0x0
801060b1:	ff 75 08             	push   0x8(%ebp)
801060b4:	e8 0e fe ff ff       	call   80105ec7 <mappages>
801060b9:	83 c4 1c             	add    $0x1c,%esp
801060bc:	56                   	push   %esi
801060bd:	ff 75 0c             	push   0xc(%ebp)
801060c0:	53                   	push   %ebx
801060c1:	e8 d8 db ff ff       	call   80103c9e <memmove>
801060c6:	83 c4 10             	add    $0x10,%esp
801060c9:	8d 65 f8             	lea    -0x8(%ebp),%esp
801060cc:	5b                   	pop    %ebx
801060cd:	5e                   	pop    %esi
801060ce:	5d                   	pop    %ebp
801060cf:	c3                   	ret    
801060d0:	83 ec 0c             	sub    $0xc,%esp
801060d3:	68 1d 6f 10 80       	push   $0x80106f1d
801060d8:	e8 6b a2 ff ff       	call   80100348 <panic>

801060dd <loaduvm>:
801060dd:	f3 0f 1e fb          	endbr32 
801060e1:	55                   	push   %ebp
801060e2:	89 e5                	mov    %esp,%ebp
801060e4:	57                   	push   %edi
801060e5:	56                   	push   %esi
801060e6:	53                   	push   %ebx
801060e7:	83 ec 0c             	sub    $0xc,%esp
801060ea:	8b 7d 18             	mov    0x18(%ebp),%edi
801060ed:	8b 5d 0c             	mov    0xc(%ebp),%ebx
801060f0:	81 e3 ff 0f 00 00    	and    $0xfff,%ebx
801060f6:	74 3c                	je     80106134 <loaduvm+0x57>
801060f8:	83 ec 0c             	sub    $0xc,%esp
801060fb:	68 d8 6f 10 80       	push   $0x80106fd8
80106100:	e8 43 a2 ff ff       	call   80100348 <panic>
80106105:	83 ec 0c             	sub    $0xc,%esp
80106108:	68 37 6f 10 80       	push   $0x80106f37
8010610d:	e8 36 a2 ff ff       	call   80100348 <panic>
80106112:	05 00 00 00 80       	add    $0x80000000,%eax
80106117:	56                   	push   %esi
80106118:	89 da                	mov    %ebx,%edx
8010611a:	03 55 14             	add    0x14(%ebp),%edx
8010611d:	52                   	push   %edx
8010611e:	50                   	push   %eax
8010611f:	ff 75 10             	push   0x10(%ebp)
80106122:	e8 55 b6 ff ff       	call   8010177c <readi>
80106127:	83 c4 10             	add    $0x10,%esp
8010612a:	39 f0                	cmp    %esi,%eax
8010612c:	75 47                	jne    80106175 <loaduvm+0x98>
8010612e:	81 c3 00 10 00 00    	add    $0x1000,%ebx
80106134:	39 fb                	cmp    %edi,%ebx
80106136:	73 30                	jae    80106168 <loaduvm+0x8b>
80106138:	89 da                	mov    %ebx,%edx
8010613a:	03 55 0c             	add    0xc(%ebp),%edx
8010613d:	b9 00 00 00 00       	mov    $0x0,%ecx
80106142:	8b 45 08             	mov    0x8(%ebp),%eax
80106145:	e8 bc fb ff ff       	call   80105d06 <walkpgdir>
8010614a:	85 c0                	test   %eax,%eax
8010614c:	74 b7                	je     80106105 <loaduvm+0x28>
8010614e:	8b 00                	mov    (%eax),%eax
80106150:	25 00 f0 ff ff       	and    $0xfffff000,%eax
80106155:	89 fe                	mov    %edi,%esi
80106157:	29 de                	sub    %ebx,%esi
80106159:	81 fe ff 0f 00 00    	cmp    $0xfff,%esi
8010615f:	76 b1                	jbe    80106112 <loaduvm+0x35>
80106161:	be 00 10 00 00       	mov    $0x1000,%esi
80106166:	eb aa                	jmp    80106112 <loaduvm+0x35>
80106168:	b8 00 00 00 00       	mov    $0x0,%eax
8010616d:	8d 65 f4             	lea    -0xc(%ebp),%esp
80106170:	5b                   	pop    %ebx
80106171:	5e                   	pop    %esi
80106172:	5f                   	pop    %edi
80106173:	5d                   	pop    %ebp
80106174:	c3                   	ret    
80106175:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010617a:	eb f1                	jmp    8010616d <loaduvm+0x90>

8010617c <deallocuvm>:
8010617c:	f3 0f 1e fb          	endbr32 
80106180:	55                   	push   %ebp
80106181:	89 e5                	mov    %esp,%ebp
80106183:	57                   	push   %edi
80106184:	56                   	push   %esi
80106185:	53                   	push   %ebx
80106186:	83 ec 0c             	sub    $0xc,%esp
80106189:	8b 7d 0c             	mov    0xc(%ebp),%edi
8010618c:	39 7d 10             	cmp    %edi,0x10(%ebp)
8010618f:	73 11                	jae    801061a2 <deallocuvm+0x26>
80106191:	8b 45 10             	mov    0x10(%ebp),%eax
80106194:	8d 98 ff 0f 00 00    	lea    0xfff(%eax),%ebx
8010619a:	81 e3 00 f0 ff ff    	and    $0xfffff000,%ebx
801061a0:	eb 19                	jmp    801061bb <deallocuvm+0x3f>
801061a2:	89 f8                	mov    %edi,%eax
801061a4:	eb 64                	jmp    8010620a <deallocuvm+0x8e>
801061a6:	c1 eb 16             	shr    $0x16,%ebx
801061a9:	83 c3 01             	add    $0x1,%ebx
801061ac:	c1 e3 16             	shl    $0x16,%ebx
801061af:	81 eb 00 10 00 00    	sub    $0x1000,%ebx
801061b5:	81 c3 00 10 00 00    	add    $0x1000,%ebx
801061bb:	39 fb                	cmp    %edi,%ebx
801061bd:	73 48                	jae    80106207 <deallocuvm+0x8b>
801061bf:	b9 00 00 00 00       	mov    $0x0,%ecx
801061c4:	89 da                	mov    %ebx,%edx
801061c6:	8b 45 08             	mov    0x8(%ebp),%eax
801061c9:	e8 38 fb ff ff       	call   80105d06 <walkpgdir>
801061ce:	89 c6                	mov    %eax,%esi
801061d0:	85 c0                	test   %eax,%eax
801061d2:	74 d2                	je     801061a6 <deallocuvm+0x2a>
801061d4:	8b 00                	mov    (%eax),%eax
801061d6:	a8 01                	test   $0x1,%al
801061d8:	74 db                	je     801061b5 <deallocuvm+0x39>
801061da:	25 00 f0 ff ff       	and    $0xfffff000,%eax
801061df:	74 19                	je     801061fa <deallocuvm+0x7e>
801061e1:	05 00 00 00 80       	add    $0x80000000,%eax
801061e6:	83 ec 0c             	sub    $0xc,%esp
801061e9:	50                   	push   %eax
801061ea:	e8 b8 bd ff ff       	call   80101fa7 <kfree>
801061ef:	c7 06 00 00 00 00    	movl   $0x0,(%esi)
801061f5:	83 c4 10             	add    $0x10,%esp
801061f8:	eb bb                	jmp    801061b5 <deallocuvm+0x39>
801061fa:	83 ec 0c             	sub    $0xc,%esp
801061fd:	68 46 68 10 80       	push   $0x80106846
80106202:	e8 41 a1 ff ff       	call   80100348 <panic>
80106207:	8b 45 10             	mov    0x10(%ebp),%eax
8010620a:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010620d:	5b                   	pop    %ebx
8010620e:	5e                   	pop    %esi
8010620f:	5f                   	pop    %edi
80106210:	5d                   	pop    %ebp
80106211:	c3                   	ret    

80106212 <allocuvm>:
80106212:	f3 0f 1e fb          	endbr32 
80106216:	55                   	push   %ebp
80106217:	89 e5                	mov    %esp,%ebp
80106219:	57                   	push   %edi
8010621a:	56                   	push   %esi
8010621b:	53                   	push   %ebx
8010621c:	83 ec 1c             	sub    $0x1c,%esp
8010621f:	8b 7d 10             	mov    0x10(%ebp),%edi
80106222:	89 7d e4             	mov    %edi,-0x1c(%ebp)
80106225:	85 ff                	test   %edi,%edi
80106227:	0f 88 c1 00 00 00    	js     801062ee <allocuvm+0xdc>
8010622d:	3b 7d 0c             	cmp    0xc(%ebp),%edi
80106230:	72 11                	jb     80106243 <allocuvm+0x31>
80106232:	8b 45 0c             	mov    0xc(%ebp),%eax
80106235:	8d b0 ff 0f 00 00    	lea    0xfff(%eax),%esi
8010623b:	81 e6 00 f0 ff ff    	and    $0xfffff000,%esi
80106241:	eb 39                	jmp    8010627c <allocuvm+0x6a>
80106243:	8b 45 0c             	mov    0xc(%ebp),%eax
80106246:	89 45 e4             	mov    %eax,-0x1c(%ebp)
80106249:	e9 a7 00 00 00       	jmp    801062f5 <allocuvm+0xe3>
8010624e:	83 ec 0c             	sub    $0xc,%esp
80106251:	68 55 6f 10 80       	push   $0x80106f55
80106256:	e8 ac a3 ff ff       	call   80100607 <cprintf>
8010625b:	83 c4 0c             	add    $0xc,%esp
8010625e:	ff 75 0c             	push   0xc(%ebp)
80106261:	57                   	push   %edi
80106262:	ff 75 08             	push   0x8(%ebp)
80106265:	e8 12 ff ff ff       	call   8010617c <deallocuvm>
8010626a:	83 c4 10             	add    $0x10,%esp
8010626d:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
80106274:	eb 7f                	jmp    801062f5 <allocuvm+0xe3>
80106276:	81 c6 00 10 00 00    	add    $0x1000,%esi
8010627c:	39 fe                	cmp    %edi,%esi
8010627e:	73 75                	jae    801062f5 <allocuvm+0xe3>
80106280:	e8 39 be ff ff       	call   801020be <kalloc>
80106285:	89 c3                	mov    %eax,%ebx
80106287:	85 c0                	test   %eax,%eax
80106289:	74 c3                	je     8010624e <allocuvm+0x3c>
8010628b:	83 ec 04             	sub    $0x4,%esp
8010628e:	68 00 10 00 00       	push   $0x1000
80106293:	6a 00                	push   $0x0
80106295:	50                   	push   %eax
80106296:	e8 8b d9 ff ff       	call   80103c26 <memset>
8010629b:	c7 04 24 06 00 00 00 	movl   $0x6,(%esp)
801062a2:	8d 83 00 00 00 80    	lea    -0x80000000(%ebx),%eax
801062a8:	50                   	push   %eax
801062a9:	68 00 10 00 00       	push   $0x1000
801062ae:	56                   	push   %esi
801062af:	ff 75 08             	push   0x8(%ebp)
801062b2:	e8 10 fc ff ff       	call   80105ec7 <mappages>
801062b7:	83 c4 20             	add    $0x20,%esp
801062ba:	85 c0                	test   %eax,%eax
801062bc:	79 b8                	jns    80106276 <allocuvm+0x64>
801062be:	83 ec 0c             	sub    $0xc,%esp
801062c1:	68 6d 6f 10 80       	push   $0x80106f6d
801062c6:	e8 3c a3 ff ff       	call   80100607 <cprintf>
801062cb:	83 c4 0c             	add    $0xc,%esp
801062ce:	ff 75 0c             	push   0xc(%ebp)
801062d1:	57                   	push   %edi
801062d2:	ff 75 08             	push   0x8(%ebp)
801062d5:	e8 a2 fe ff ff       	call   8010617c <deallocuvm>
801062da:	89 1c 24             	mov    %ebx,(%esp)
801062dd:	e8 c5 bc ff ff       	call   80101fa7 <kfree>
801062e2:	83 c4 10             	add    $0x10,%esp
801062e5:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
801062ec:	eb 07                	jmp    801062f5 <allocuvm+0xe3>
801062ee:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
801062f5:	8b 45 e4             	mov    -0x1c(%ebp),%eax
801062f8:	8d 65 f4             	lea    -0xc(%ebp),%esp
801062fb:	5b                   	pop    %ebx
801062fc:	5e                   	pop    %esi
801062fd:	5f                   	pop    %edi
801062fe:	5d                   	pop    %ebp
801062ff:	c3                   	ret    

80106300 <freevm>:
80106300:	f3 0f 1e fb          	endbr32 
80106304:	55                   	push   %ebp
80106305:	89 e5                	mov    %esp,%ebp
80106307:	56                   	push   %esi
80106308:	53                   	push   %ebx
80106309:	8b 75 08             	mov    0x8(%ebp),%esi
8010630c:	85 f6                	test   %esi,%esi
8010630e:	74 1a                	je     8010632a <freevm+0x2a>
80106310:	83 ec 04             	sub    $0x4,%esp
80106313:	6a 00                	push   $0x0
80106315:	68 00 00 00 80       	push   $0x80000000
8010631a:	56                   	push   %esi
8010631b:	e8 5c fe ff ff       	call   8010617c <deallocuvm>
80106320:	83 c4 10             	add    $0x10,%esp
80106323:	bb 00 00 00 00       	mov    $0x0,%ebx
80106328:	eb 26                	jmp    80106350 <freevm+0x50>
8010632a:	83 ec 0c             	sub    $0xc,%esp
8010632d:	68 89 6f 10 80       	push   $0x80106f89
80106332:	e8 11 a0 ff ff       	call   80100348 <panic>
80106337:	25 00 f0 ff ff       	and    $0xfffff000,%eax
8010633c:	05 00 00 00 80       	add    $0x80000000,%eax
80106341:	83 ec 0c             	sub    $0xc,%esp
80106344:	50                   	push   %eax
80106345:	e8 5d bc ff ff       	call   80101fa7 <kfree>
8010634a:	83 c4 10             	add    $0x10,%esp
8010634d:	83 c3 01             	add    $0x1,%ebx
80106350:	81 fb ff 03 00 00    	cmp    $0x3ff,%ebx
80106356:	77 09                	ja     80106361 <freevm+0x61>
80106358:	8b 04 9e             	mov    (%esi,%ebx,4),%eax
8010635b:	a8 01                	test   $0x1,%al
8010635d:	74 ee                	je     8010634d <freevm+0x4d>
8010635f:	eb d6                	jmp    80106337 <freevm+0x37>
80106361:	83 ec 0c             	sub    $0xc,%esp
80106364:	56                   	push   %esi
80106365:	e8 3d bc ff ff       	call   80101fa7 <kfree>
8010636a:	83 c4 10             	add    $0x10,%esp
8010636d:	8d 65 f8             	lea    -0x8(%ebp),%esp
80106370:	5b                   	pop    %ebx
80106371:	5e                   	pop    %esi
80106372:	5d                   	pop    %ebp
80106373:	c3                   	ret    

80106374 <setupkvm>:
80106374:	f3 0f 1e fb          	endbr32 
80106378:	55                   	push   %ebp
80106379:	89 e5                	mov    %esp,%ebp
8010637b:	56                   	push   %esi
8010637c:	53                   	push   %ebx
8010637d:	e8 3c bd ff ff       	call   801020be <kalloc>
80106382:	89 c6                	mov    %eax,%esi
80106384:	85 c0                	test   %eax,%eax
80106386:	74 55                	je     801063dd <setupkvm+0x69>
80106388:	83 ec 04             	sub    $0x4,%esp
8010638b:	68 00 10 00 00       	push   $0x1000
80106390:	6a 00                	push   $0x0
80106392:	50                   	push   %eax
80106393:	e8 8e d8 ff ff       	call   80103c26 <memset>
80106398:	83 c4 10             	add    $0x10,%esp
8010639b:	bb 20 94 10 80       	mov    $0x80109420,%ebx
801063a0:	81 fb 60 94 10 80    	cmp    $0x80109460,%ebx
801063a6:	73 35                	jae    801063dd <setupkvm+0x69>
801063a8:	8b 43 04             	mov    0x4(%ebx),%eax
801063ab:	83 ec 0c             	sub    $0xc,%esp
801063ae:	ff 73 0c             	push   0xc(%ebx)
801063b1:	50                   	push   %eax
801063b2:	8b 53 08             	mov    0x8(%ebx),%edx
801063b5:	29 c2                	sub    %eax,%edx
801063b7:	52                   	push   %edx
801063b8:	ff 33                	push   (%ebx)
801063ba:	56                   	push   %esi
801063bb:	e8 07 fb ff ff       	call   80105ec7 <mappages>
801063c0:	83 c4 20             	add    $0x20,%esp
801063c3:	85 c0                	test   %eax,%eax
801063c5:	78 05                	js     801063cc <setupkvm+0x58>
801063c7:	83 c3 10             	add    $0x10,%ebx
801063ca:	eb d4                	jmp    801063a0 <setupkvm+0x2c>
801063cc:	83 ec 0c             	sub    $0xc,%esp
801063cf:	56                   	push   %esi
801063d0:	e8 2b ff ff ff       	call   80106300 <freevm>
801063d5:	83 c4 10             	add    $0x10,%esp
801063d8:	be 00 00 00 00       	mov    $0x0,%esi
801063dd:	89 f0                	mov    %esi,%eax
801063df:	8d 65 f8             	lea    -0x8(%ebp),%esp
801063e2:	5b                   	pop    %ebx
801063e3:	5e                   	pop    %esi
801063e4:	5d                   	pop    %ebp
801063e5:	c3                   	ret    

801063e6 <kvmalloc>:
801063e6:	f3 0f 1e fb          	endbr32 
801063ea:	55                   	push   %ebp
801063eb:	89 e5                	mov    %esp,%ebp
801063ed:	83 ec 08             	sub    $0x8,%esp
801063f0:	e8 7f ff ff ff       	call   80106374 <setupkvm>
801063f5:	a3 d0 45 11 80       	mov    %eax,0x801145d0
801063fa:	e8 44 fb ff ff       	call   80105f43 <switchkvm>
801063ff:	c9                   	leave  
80106400:	c3                   	ret    

80106401 <clearpteu>:
80106401:	f3 0f 1e fb          	endbr32 
80106405:	55                   	push   %ebp
80106406:	89 e5                	mov    %esp,%ebp
80106408:	83 ec 08             	sub    $0x8,%esp
8010640b:	b9 00 00 00 00       	mov    $0x0,%ecx
80106410:	8b 55 0c             	mov    0xc(%ebp),%edx
80106413:	8b 45 08             	mov    0x8(%ebp),%eax
80106416:	e8 eb f8 ff ff       	call   80105d06 <walkpgdir>
8010641b:	85 c0                	test   %eax,%eax
8010641d:	74 05                	je     80106424 <clearpteu+0x23>
8010641f:	83 20 fb             	andl   $0xfffffffb,(%eax)
80106422:	c9                   	leave  
80106423:	c3                   	ret    
80106424:	83 ec 0c             	sub    $0xc,%esp
80106427:	68 9a 6f 10 80       	push   $0x80106f9a
8010642c:	e8 17 9f ff ff       	call   80100348 <panic>

80106431 <copyuvm>:
80106431:	f3 0f 1e fb          	endbr32 
80106435:	55                   	push   %ebp
80106436:	89 e5                	mov    %esp,%ebp
80106438:	57                   	push   %edi
80106439:	56                   	push   %esi
8010643a:	53                   	push   %ebx
8010643b:	83 ec 1c             	sub    $0x1c,%esp
8010643e:	e8 31 ff ff ff       	call   80106374 <setupkvm>
80106443:	89 45 dc             	mov    %eax,-0x24(%ebp)
80106446:	85 c0                	test   %eax,%eax
80106448:	0f 84 c4 00 00 00    	je     80106512 <copyuvm+0xe1>
8010644e:	bf 00 00 00 00       	mov    $0x0,%edi
80106453:	3b 7d 0c             	cmp    0xc(%ebp),%edi
80106456:	0f 83 b6 00 00 00    	jae    80106512 <copyuvm+0xe1>
8010645c:	89 7d e4             	mov    %edi,-0x1c(%ebp)
8010645f:	b9 00 00 00 00       	mov    $0x0,%ecx
80106464:	89 fa                	mov    %edi,%edx
80106466:	8b 45 08             	mov    0x8(%ebp),%eax
80106469:	e8 98 f8 ff ff       	call   80105d06 <walkpgdir>
8010646e:	85 c0                	test   %eax,%eax
80106470:	74 65                	je     801064d7 <copyuvm+0xa6>
80106472:	8b 00                	mov    (%eax),%eax
80106474:	a8 01                	test   $0x1,%al
80106476:	74 6c                	je     801064e4 <copyuvm+0xb3>
80106478:	89 c6                	mov    %eax,%esi
8010647a:	81 e6 00 f0 ff ff    	and    $0xfffff000,%esi
80106480:	25 ff 0f 00 00       	and    $0xfff,%eax
80106485:	89 45 e0             	mov    %eax,-0x20(%ebp)
80106488:	e8 31 bc ff ff       	call   801020be <kalloc>
8010648d:	89 c3                	mov    %eax,%ebx
8010648f:	85 c0                	test   %eax,%eax
80106491:	74 6a                	je     801064fd <copyuvm+0xcc>
80106493:	81 c6 00 00 00 80    	add    $0x80000000,%esi
80106499:	83 ec 04             	sub    $0x4,%esp
8010649c:	68 00 10 00 00       	push   $0x1000
801064a1:	56                   	push   %esi
801064a2:	50                   	push   %eax
801064a3:	e8 f6 d7 ff ff       	call   80103c9e <memmove>
801064a8:	83 c4 04             	add    $0x4,%esp
801064ab:	ff 75 e0             	push   -0x20(%ebp)
801064ae:	8d 83 00 00 00 80    	lea    -0x80000000(%ebx),%eax
801064b4:	50                   	push   %eax
801064b5:	68 00 10 00 00       	push   $0x1000
801064ba:	ff 75 e4             	push   -0x1c(%ebp)
801064bd:	ff 75 dc             	push   -0x24(%ebp)
801064c0:	e8 02 fa ff ff       	call   80105ec7 <mappages>
801064c5:	83 c4 20             	add    $0x20,%esp
801064c8:	85 c0                	test   %eax,%eax
801064ca:	78 25                	js     801064f1 <copyuvm+0xc0>
801064cc:	81 c7 00 10 00 00    	add    $0x1000,%edi
801064d2:	e9 7c ff ff ff       	jmp    80106453 <copyuvm+0x22>
801064d7:	83 ec 0c             	sub    $0xc,%esp
801064da:	68 a4 6f 10 80       	push   $0x80106fa4
801064df:	e8 64 9e ff ff       	call   80100348 <panic>
801064e4:	83 ec 0c             	sub    $0xc,%esp
801064e7:	68 be 6f 10 80       	push   $0x80106fbe
801064ec:	e8 57 9e ff ff       	call   80100348 <panic>
801064f1:	83 ec 0c             	sub    $0xc,%esp
801064f4:	53                   	push   %ebx
801064f5:	e8 ad ba ff ff       	call   80101fa7 <kfree>
801064fa:	83 c4 10             	add    $0x10,%esp
801064fd:	83 ec 0c             	sub    $0xc,%esp
80106500:	ff 75 dc             	push   -0x24(%ebp)
80106503:	e8 f8 fd ff ff       	call   80106300 <freevm>
80106508:	83 c4 10             	add    $0x10,%esp
8010650b:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
80106512:	8b 45 dc             	mov    -0x24(%ebp),%eax
80106515:	8d 65 f4             	lea    -0xc(%ebp),%esp
80106518:	5b                   	pop    %ebx
80106519:	5e                   	pop    %esi
8010651a:	5f                   	pop    %edi
8010651b:	5d                   	pop    %ebp
8010651c:	c3                   	ret    

8010651d <uva2ka>:
8010651d:	f3 0f 1e fb          	endbr32 
80106521:	55                   	push   %ebp
80106522:	89 e5                	mov    %esp,%ebp
80106524:	83 ec 08             	sub    $0x8,%esp
80106527:	b9 00 00 00 00       	mov    $0x0,%ecx
8010652c:	8b 55 0c             	mov    0xc(%ebp),%edx
8010652f:	8b 45 08             	mov    0x8(%ebp),%eax
80106532:	e8 cf f7 ff ff       	call   80105d06 <walkpgdir>
80106537:	8b 00                	mov    (%eax),%eax
80106539:	a8 01                	test   $0x1,%al
8010653b:	74 10                	je     8010654d <uva2ka+0x30>
8010653d:	a8 04                	test   $0x4,%al
8010653f:	74 13                	je     80106554 <uva2ka+0x37>
80106541:	25 00 f0 ff ff       	and    $0xfffff000,%eax
80106546:	05 00 00 00 80       	add    $0x80000000,%eax
8010654b:	c9                   	leave  
8010654c:	c3                   	ret    
8010654d:	b8 00 00 00 00       	mov    $0x0,%eax
80106552:	eb f7                	jmp    8010654b <uva2ka+0x2e>
80106554:	b8 00 00 00 00       	mov    $0x0,%eax
80106559:	eb f0                	jmp    8010654b <uva2ka+0x2e>

8010655b <copyout>:
8010655b:	f3 0f 1e fb          	endbr32 
8010655f:	55                   	push   %ebp
80106560:	89 e5                	mov    %esp,%ebp
80106562:	57                   	push   %edi
80106563:	56                   	push   %esi
80106564:	53                   	push   %ebx
80106565:	83 ec 0c             	sub    $0xc,%esp
80106568:	8b 7d 14             	mov    0x14(%ebp),%edi
8010656b:	eb 25                	jmp    80106592 <copyout+0x37>
8010656d:	8b 55 0c             	mov    0xc(%ebp),%edx
80106570:	29 f2                	sub    %esi,%edx
80106572:	01 d0                	add    %edx,%eax
80106574:	83 ec 04             	sub    $0x4,%esp
80106577:	53                   	push   %ebx
80106578:	ff 75 10             	push   0x10(%ebp)
8010657b:	50                   	push   %eax
8010657c:	e8 1d d7 ff ff       	call   80103c9e <memmove>
80106581:	29 df                	sub    %ebx,%edi
80106583:	01 5d 10             	add    %ebx,0x10(%ebp)
80106586:	8d 86 00 10 00 00    	lea    0x1000(%esi),%eax
8010658c:	89 45 0c             	mov    %eax,0xc(%ebp)
8010658f:	83 c4 10             	add    $0x10,%esp
80106592:	85 ff                	test   %edi,%edi
80106594:	74 2f                	je     801065c5 <copyout+0x6a>
80106596:	8b 75 0c             	mov    0xc(%ebp),%esi
80106599:	81 e6 00 f0 ff ff    	and    $0xfffff000,%esi
8010659f:	83 ec 08             	sub    $0x8,%esp
801065a2:	56                   	push   %esi
801065a3:	ff 75 08             	push   0x8(%ebp)
801065a6:	e8 72 ff ff ff       	call   8010651d <uva2ka>
801065ab:	83 c4 10             	add    $0x10,%esp
801065ae:	85 c0                	test   %eax,%eax
801065b0:	74 20                	je     801065d2 <copyout+0x77>
801065b2:	89 f3                	mov    %esi,%ebx
801065b4:	2b 5d 0c             	sub    0xc(%ebp),%ebx
801065b7:	81 c3 00 10 00 00    	add    $0x1000,%ebx
801065bd:	39 df                	cmp    %ebx,%edi
801065bf:	73 ac                	jae    8010656d <copyout+0x12>
801065c1:	89 fb                	mov    %edi,%ebx
801065c3:	eb a8                	jmp    8010656d <copyout+0x12>
801065c5:	b8 00 00 00 00       	mov    $0x0,%eax
801065ca:	8d 65 f4             	lea    -0xc(%ebp),%esp
801065cd:	5b                   	pop    %ebx
801065ce:	5e                   	pop    %esi
801065cf:	5f                   	pop    %edi
801065d0:	5d                   	pop    %ebp
801065d1:	c3                   	ret    
801065d2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801065d7:	eb f1                	jmp    801065ca <copyout+0x6f>
