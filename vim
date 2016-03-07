
system:     file format elf32-i386


Disassembly of section .text.main:

00010000 <main-0x10>:
   10000:	18 66 90             	sbb    %ah,-0x70(%esi)
   10003:	66 90                	xchg   %ax,%ax
   10005:	66 90                	xchg   %ax,%ax
   10007:	66 90                	xchg   %ax,%ax
   10009:	66 90                	xchg   %ax,%ax
   1000b:	66 90                	xchg   %ax,%ax
   1000d:	66 90                	xchg   %ax,%ax
   1000f:	90                   	nop

00010010 <main>:
   10010:	55                   	push   %ebp
   10011:	89 e5                	mov    %esp,%ebp
   10013:	83 e4 f0             	and    $0xfffffff0,%esp
   10016:	83 ec 20             	sub    $0x20,%esp
   10019:	e8 52 0c 00 00       	call   10c70 <set_eflags>
   1001e:	ba 18 00 00 00       	mov    $0x18,%edx
   10023:	b8 18 00 00 00       	mov    $0x18,%eax
   10028:	fc                   	cld    
   10029:	8e d8                	mov    %eax,%ds
   1002b:	8e c0                	mov    %eax,%es
   1002d:	8e e0                	mov    %eax,%fs
   1002f:	8e e8                	mov    %eax,%gs
   10031:	8e d2                	mov    %edx,%ss
   10033:	bc ec 8f 01 00       	mov    $0x18fec,%esp
   10038:	c7 04 24 1a 16 01 00 	movl   $0x1161a,(%esp)
   1003f:	e8 3c 03 00 00       	call   10380 <printk>
   10044:	e8 17 07 00 00       	call   10760 <setGdt>
   10049:	e8 32 01 00 00       	call   10180 <setIdt>
   1004e:	66 90                	xchg   %ax,%ax
   10050:	e8 4b 07 00 00       	call   107a0 <setTSS>
   10055:	e8 66 06 00 00       	call   106c0 <init_mm>
   1005a:	e8 91 15 00 00       	call   115f0 <monoprocess_init_addr_space>
   1005f:	90                   	nop
   10060:	e8 eb 03 00 00       	call   10450 <init_sched>
   10065:	e8 c6 03 00 00       	call   10430 <init_idle>
   1006a:	e8 d1 03 00 00       	call   10440 <init_task1>
   1006f:	a1 a4 22 01 00       	mov    0x122a4,%eax
   10074:	8b 00                	mov    (%eax),%eax
   10076:	89 44 24 08          	mov    %eax,0x8(%esp)
   1007a:	a1 ac 22 01 00       	mov    0x122ac,%eax
   1007f:	89 44 24 04          	mov    %eax,0x4(%esp)
   10083:	a1 a8 22 01 00       	mov    0x122a8,%eax
   10088:	8b 00                	mov    (%eax),%eax
   1008a:	05 00 00 01 00       	add    $0x10000,%eax
   1008f:	89 04 24             	mov    %eax,(%esp)
   10092:	e8 d9 09 00 00       	call   10a70 <copy_data>
   10097:	c7 04 24 2d 16 01 00 	movl   $0x1162d,(%esp)
   1009e:	e8 dd 02 00 00       	call   10380 <printk>
   100a3:	e8 58 0c 00 00       	call   10d00 <enable_int>
   100a8:	c7 44 24 10 00 00 10 	movl   $0x100000,0x10(%esp)
   100af:	00 
   100b0:	c7 44 24 0c 23 00 00 	movl   $0x23,0xc(%esp)
   100b7:	00 
   100b8:	c7 44 24 08 f0 bf 11 	movl   $0x11bff0,0x8(%esp)
   100bf:	00 
   100c0:	c7 44 24 04 2b 00 00 	movl   $0x2b,0x4(%esp)
   100c7:	00 
   100c8:	c7 04 24 2b 00 00 00 	movl   $0x2b,(%esp)
   100cf:	e8 ec 0b 00 00       	call   10cc0 <return_gate>
   100d4:	31 c0                	xor    %eax,%eax
   100d6:	c9                   	leave  
   100d7:	c3                   	ret    

Disassembly of section .text:

000100e0 <set_seg_regs>:
   100e0:	55                   	push   %ebp
   100e1:	89 e5                	mov    %esp,%ebp
   100e3:	8b 45 10             	mov    0x10(%ebp),%eax
   100e6:	8b 55 0c             	mov    0xc(%ebp),%edx
   100e9:	8d 48 ec             	lea    -0x14(%eax),%ecx
   100ec:	8b 45 08             	mov    0x8(%ebp),%eax
   100ef:	fc                   	cld    
   100f0:	8e d8                	mov    %eax,%ds
   100f2:	8e c0                	mov    %eax,%es
   100f4:	8e e0                	mov    %eax,%fs
   100f6:	8e e8                	mov    %eax,%gs
   100f8:	8e d2                	mov    %edx,%ss
   100fa:	89 cc                	mov    %ecx,%esp
   100fc:	5d                   	pop    %ebp
   100fd:	c3                   	ret    
   100fe:	66 90                	xchg   %ax,%ax

00010100 <setInterruptHandler>:
   10100:	55                   	push   %ebp
   10101:	89 e5                	mov    %esp,%ebp
   10103:	0f b7 55 10          	movzwl 0x10(%ebp),%edx
   10107:	8b 45 08             	mov    0x8(%ebp),%eax
   1010a:	8b 4d 0c             	mov    0xc(%ebp),%ecx
   1010d:	5d                   	pop    %ebp
   1010e:	c1 e2 0d             	shl    $0xd,%edx
   10111:	66 81 ca 00 8e       	or     $0x8e00,%dx
   10116:	66 89 0c c5 80 23 01 	mov    %cx,0x12380(,%eax,8)
   1011d:	00 
   1011e:	c1 e9 10             	shr    $0x10,%ecx
   10121:	66 c7 04 c5 82 23 01 	movw   $0x10,0x12382(,%eax,8)
   10128:	00 10 00 
   1012b:	66 89 14 c5 84 23 01 	mov    %dx,0x12384(,%eax,8)
   10132:	00 
   10133:	66 89 0c c5 86 23 01 	mov    %cx,0x12386(,%eax,8)
   1013a:	00 
   1013b:	c3                   	ret    
   1013c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00010140 <setTrapHandler>:
   10140:	55                   	push   %ebp
   10141:	89 e5                	mov    %esp,%ebp
   10143:	0f b7 55 10          	movzwl 0x10(%ebp),%edx
   10147:	8b 45 08             	mov    0x8(%ebp),%eax
   1014a:	8b 4d 0c             	mov    0xc(%ebp),%ecx
   1014d:	5d                   	pop    %ebp
   1014e:	c1 e2 0d             	shl    $0xd,%edx
   10151:	66 81 ca 00 8e       	or     $0x8e00,%dx
   10156:	66 89 0c c5 80 23 01 	mov    %cx,0x12380(,%eax,8)
   1015d:	00 
   1015e:	c1 e9 10             	shr    $0x10,%ecx
   10161:	66 c7 04 c5 82 23 01 	movw   $0x10,0x12382(,%eax,8)
   10168:	00 10 00 
   1016b:	66 89 14 c5 84 23 01 	mov    %dx,0x12384(,%eax,8)
   10172:	00 
   10173:	66 89 0c c5 86 23 01 	mov    %cx,0x12386(,%eax,8)
   1017a:	00 
   1017b:	c3                   	ret    
   1017c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00010180 <setIdt>:
   10180:	55                   	push   %ebp
   10181:	b8 ff 07 00 00       	mov    $0x7ff,%eax
   10186:	89 e5                	mov    %esp,%ebp
   10188:	83 ec 18             	sub    $0x18,%esp
   1018b:	66 a3 60 23 01 00    	mov    %ax,0x12360
   10191:	c7 05 62 23 01 00 80 	movl   $0x12380,0x12362
   10198:	23 01 00 
   1019b:	e8 30 10 00 00       	call   111d0 <set_handlers>
   101a0:	b8 3e 02 01 00       	mov    $0x1023e,%eax
   101a5:	ba 10 00 00 00       	mov    $0x10,%edx
   101aa:	66 a3 88 24 01 00    	mov    %ax,0x12488
   101b0:	b9 00 8e ff ff       	mov    $0xffff8e00,%ecx
   101b5:	c1 e8 10             	shr    $0x10,%eax
   101b8:	c7 04 24 60 23 01 00 	movl   $0x12360,(%esp)
   101bf:	66 89 15 8a 24 01 00 	mov    %dx,0x1248a
   101c6:	66 89 0d 8c 24 01 00 	mov    %cx,0x1248c
   101cd:	66 a3 8e 24 01 00    	mov    %ax,0x1248e
   101d3:	e8 a8 0a 00 00       	call   10c80 <set_idt_reg>
   101d8:	c9                   	leave  
   101d9:	c3                   	ret    
   101da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000101e0 <keyboard_routine>:
   101e0:	55                   	push   %ebp
   101e1:	89 e5                	mov    %esp,%ebp
   101e3:	83 ec 18             	sub    $0x18,%esp
   101e6:	c7 04 24 60 00 00 00 	movl   $0x60,(%esp)
   101ed:	e8 7e 00 00 00       	call   10270 <inb>
   101f2:	84 c0                	test   %al,%al
   101f4:	75 23                	jne    10219 <keyboard_routine+0x39>
   101f6:	0f be 05 c0 22 01 00 	movsbl 0x122c0,%eax
   101fd:	84 c0                	test   %al,%al
   101ff:	74 1f                	je     10220 <keyboard_routine+0x40>
   10201:	89 44 24 08          	mov    %eax,0x8(%esp)
   10205:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
   1020c:	00 
   1020d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
   10214:	e8 17 01 00 00       	call   10330 <printc_xy>
   10219:	c9                   	leave  
   1021a:	c3                   	ret    
   1021b:	90                   	nop
   1021c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   10220:	c7 44 24 08 43 00 00 	movl   $0x43,0x8(%esp)
   10227:	00 
   10228:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
   1022f:	00 
   10230:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
   10237:	e8 f4 00 00 00       	call   10330 <printc_xy>
   1023c:	c9                   	leave  
   1023d:	c3                   	ret    

0001023e <keyboard_handler>:
   1023e:	0f a8                	push   %gs
   10240:	0f a0                	push   %fs
   10242:	06                   	push   %es
   10243:	1e                   	push   %ds
   10244:	50                   	push   %eax
   10245:	55                   	push   %ebp
   10246:	57                   	push   %edi
   10247:	56                   	push   %esi
   10248:	52                   	push   %edx
   10249:	51                   	push   %ecx
   1024a:	53                   	push   %ebx
   1024b:	ba 18 00 00 00       	mov    $0x18,%edx
   10250:	8e da                	mov    %edx,%ds
   10252:	8e c2                	mov    %edx,%es
   10254:	b0 20                	mov    $0x20,%al
   10256:	e6 20                	out    %al,$0x20
   10258:	e8 83 ff ff ff       	call   101e0 <keyboard_routine>
   1025d:	5b                   	pop    %ebx
   1025e:	59                   	pop    %ecx
   1025f:	5a                   	pop    %edx
   10260:	5e                   	pop    %esi
   10261:	5f                   	pop    %edi
   10262:	5d                   	pop    %ebp
   10263:	58                   	pop    %eax
   10264:	1f                   	pop    %ds
   10265:	07                   	pop    %es
   10266:	0f a1                	pop    %fs
   10268:	0f a9                	pop    %gs
   1026a:	cf                   	iret   

0001026b <sys_call_table>:
   1026b:	a0 04 01 00 90       	mov    0x90000104,%al

00010270 <inb>:
   10270:	55                   	push   %ebp
   10271:	89 e5                	mov    %esp,%ebp
   10273:	8b 55 08             	mov    0x8(%ebp),%edx
   10276:	ec                   	in     (%dx),%al
   10277:	5d                   	pop    %ebp
   10278:	c3                   	ret    
   10279:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00010280 <printc>:
   10280:	55                   	push   %ebp
   10281:	89 e5                	mov    %esp,%ebp
   10283:	56                   	push   %esi
   10284:	8b 45 08             	mov    0x8(%ebp),%eax
   10287:	53                   	push   %ebx
   10288:	88 c0                	mov    %al,%al
   1028a:	e6 e9                	out    %al,$0xe9
   1028c:	3c 0a                	cmp    $0xa,%al
   1028e:	74 68                	je     102f8 <printc+0x78>
   10290:	0f b6 c8             	movzbl %al,%ecx
   10293:	0f b6 05 22 23 01 00 	movzbl 0x12322,%eax
   1029a:	0f b6 1d 80 2b 01 00 	movzbl 0x12b80,%ebx
   102a1:	80 cd 02             	or     $0x2,%ch
   102a4:	8d 14 80             	lea    (%eax,%eax,4),%edx
   102a7:	c1 e2 04             	shl    $0x4,%edx
   102aa:	0f b6 f3             	movzbl %bl,%esi
   102ad:	8d b4 32 00 c0 05 00 	lea    0x5c000(%edx,%esi,1),%esi
   102b4:	83 c3 01             	add    $0x1,%ebx
   102b7:	01 f6                	add    %esi,%esi
   102b9:	80 fb 4f             	cmp    $0x4f,%bl
   102bc:	77 12                	ja     102d0 <printc+0x50>
   102be:	88 1d 80 2b 01 00    	mov    %bl,0x12b80
   102c4:	66 89 0e             	mov    %cx,(%esi)
   102c7:	5b                   	pop    %ebx
   102c8:	5e                   	pop    %esi
   102c9:	5d                   	pop    %ebp
   102ca:	c3                   	ret    
   102cb:	90                   	nop
   102cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   102d0:	8d 58 01             	lea    0x1(%eax),%ebx
   102d3:	ba 1f 85 eb 51       	mov    $0x51eb851f,%edx
   102d8:	89 d8                	mov    %ebx,%eax
   102da:	f7 ea                	imul   %edx
   102dc:	c6 05 80 2b 01 00 00 	movb   $0x0,0x12b80
   102e3:	c1 ea 03             	shr    $0x3,%edx
   102e6:	8d 04 92             	lea    (%edx,%edx,4),%eax
   102e9:	8d 04 80             	lea    (%eax,%eax,4),%eax
   102ec:	29 c3                	sub    %eax,%ebx
   102ee:	88 1d 22 23 01 00    	mov    %bl,0x12322
   102f4:	eb ce                	jmp    102c4 <printc+0x44>
   102f6:	66 90                	xchg   %ax,%ax
   102f8:	0f b6 0d 22 23 01 00 	movzbl 0x12322,%ecx
   102ff:	ba 1f 85 eb 51       	mov    $0x51eb851f,%edx
   10304:	5b                   	pop    %ebx
   10305:	c6 05 80 2b 01 00 00 	movb   $0x0,0x12b80
   1030c:	5e                   	pop    %esi
   1030d:	83 c1 01             	add    $0x1,%ecx
   10310:	89 c8                	mov    %ecx,%eax
   10312:	f7 ea                	imul   %edx
   10314:	5d                   	pop    %ebp
   10315:	c1 ea 03             	shr    $0x3,%edx
   10318:	8d 04 92             	lea    (%edx,%edx,4),%eax
   1031b:	8d 04 80             	lea    (%eax,%eax,4),%eax
   1031e:	29 c1                	sub    %eax,%ecx
   10320:	88 0d 22 23 01 00    	mov    %cl,0x12322
   10326:	c3                   	ret    
   10327:	89 f6                	mov    %esi,%esi
   10329:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00010330 <printc_xy>:
   10330:	55                   	push   %ebp
   10331:	89 e5                	mov    %esp,%ebp
   10333:	56                   	push   %esi
   10334:	53                   	push   %ebx
   10335:	83 ec 04             	sub    $0x4,%esp
   10338:	8b 45 08             	mov    0x8(%ebp),%eax
   1033b:	0f b6 35 80 2b 01 00 	movzbl 0x12b80,%esi
   10342:	0f b6 1d 22 23 01 00 	movzbl 0x12322,%ebx
   10349:	a2 80 2b 01 00       	mov    %al,0x12b80
   1034e:	8b 45 0c             	mov    0xc(%ebp),%eax
   10351:	a2 22 23 01 00       	mov    %al,0x12322
   10356:	0f be 45 10          	movsbl 0x10(%ebp),%eax
   1035a:	89 04 24             	mov    %eax,(%esp)
   1035d:	e8 1e ff ff ff       	call   10280 <printc>
   10362:	89 f0                	mov    %esi,%eax
   10364:	88 1d 22 23 01 00    	mov    %bl,0x12322
   1036a:	a2 80 2b 01 00       	mov    %al,0x12b80
   1036f:	83 c4 04             	add    $0x4,%esp
   10372:	5b                   	pop    %ebx
   10373:	5e                   	pop    %esi
   10374:	5d                   	pop    %ebp
   10375:	c3                   	ret    
   10376:	8d 76 00             	lea    0x0(%esi),%esi
   10379:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00010380 <printk>:
   10380:	55                   	push   %ebp
   10381:	89 e5                	mov    %esp,%ebp
   10383:	53                   	push   %ebx
   10384:	83 ec 04             	sub    $0x4,%esp
   10387:	8b 5d 08             	mov    0x8(%ebp),%ebx
   1038a:	0f be 03             	movsbl (%ebx),%eax
   1038d:	83 c3 01             	add    $0x1,%ebx
   10390:	84 c0                	test   %al,%al
   10392:	74 17                	je     103ab <printk+0x2b>
   10394:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   10398:	89 04 24             	mov    %eax,(%esp)
   1039b:	83 c3 01             	add    $0x1,%ebx
   1039e:	e8 dd fe ff ff       	call   10280 <printc>
   103a3:	0f be 43 ff          	movsbl -0x1(%ebx),%eax
   103a7:	84 c0                	test   %al,%al
   103a9:	75 ed                	jne    10398 <printk+0x18>
   103ab:	83 c4 04             	add    $0x4,%esp
   103ae:	5b                   	pop    %ebx
   103af:	5d                   	pop    %ebp
   103b0:	c3                   	ret    
   103b1:	66 90                	xchg   %ax,%ax
   103b3:	66 90                	xchg   %ax,%ax
   103b5:	66 90                	xchg   %ax,%ax
   103b7:	66 90                	xchg   %ax,%ax
   103b9:	66 90                	xchg   %ax,%ax
   103bb:	66 90                	xchg   %ax,%ax
   103bd:	66 90                	xchg   %ax,%ax
   103bf:	90                   	nop

000103c0 <get_DIR>:
   103c0:	55                   	push   %ebp
   103c1:	89 e5                	mov    %esp,%ebp
   103c3:	8b 45 08             	mov    0x8(%ebp),%eax
   103c6:	5d                   	pop    %ebp
   103c7:	8b 40 04             	mov    0x4(%eax),%eax
   103ca:	c3                   	ret    
   103cb:	90                   	nop
   103cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000103d0 <get_PT>:
   103d0:	55                   	push   %ebp
   103d1:	89 e5                	mov    %esp,%ebp
   103d3:	8b 45 08             	mov    0x8(%ebp),%eax
   103d6:	5d                   	pop    %ebp
   103d7:	8b 40 04             	mov    0x4(%eax),%eax
   103da:	8b 00                	mov    (%eax),%eax
   103dc:	25 00 f0 ff ff       	and    $0xfffff000,%eax
   103e1:	c3                   	ret    
   103e2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   103e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000103f0 <allocate_DIR>:
   103f0:	55                   	push   %ebp
   103f1:	89 e5                	mov    %esp,%ebp
   103f3:	8b 55 08             	mov    0x8(%ebp),%edx
   103f6:	89 d0                	mov    %edx,%eax
   103f8:	2b 05 24 23 01 00    	sub    0x12324,%eax
   103fe:	25 00 f0 ff ff       	and    $0xfffff000,%eax
   10403:	05 00 a0 02 00       	add    $0x2a000,%eax
   10408:	89 42 04             	mov    %eax,0x4(%edx)
   1040b:	b8 01 00 00 00       	mov    $0x1,%eax
   10410:	5d                   	pop    %ebp
   10411:	c3                   	ret    
   10412:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   10419:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00010420 <cpu_idle>:
   10420:	55                   	push   %ebp
   10421:	89 e5                	mov    %esp,%ebp
   10423:	fb                   	sti    
   10424:	eb fe                	jmp    10424 <cpu_idle+0x4>
   10426:	8d 76 00             	lea    0x0(%esi),%esi
   10429:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00010430 <init_idle>:
   10430:	55                   	push   %ebp
   10431:	89 e5                	mov    %esp,%ebp
   10433:	5d                   	pop    %ebp
   10434:	c3                   	ret    
   10435:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   10439:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00010440 <init_task1>:
   10440:	55                   	push   %ebp
   10441:	89 e5                	mov    %esp,%ebp
   10443:	5d                   	pop    %ebp
   10444:	c3                   	ret    
   10445:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   10449:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00010450 <init_sched>:
   10450:	55                   	push   %ebp
   10451:	89 e5                	mov    %esp,%ebp
   10453:	5d                   	pop    %ebp
   10454:	c3                   	ret    
   10455:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   10459:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00010460 <current>:
   10460:	55                   	push   %ebp
   10461:	89 e5                	mov    %esp,%ebp
   10463:	89 e0                	mov    %esp,%eax
   10465:	25 00 f0 ff ff       	and    $0xfffff000,%eax
   1046a:	5d                   	pop    %ebp
   1046b:	c3                   	ret    
   1046c:	66 90                	xchg   %ax,%ax
   1046e:	66 90                	xchg   %ax,%ax

00010470 <check_fd>:
   10470:	55                   	push   %ebp
   10471:	89 e5                	mov    %esp,%ebp
   10473:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
   10477:	75 17                	jne    10490 <check_fd+0x20>
   10479:	83 7d 0c 01          	cmpl   $0x1,0xc(%ebp)
   1047d:	b8 f3 ff ff ff       	mov    $0xfffffff3,%eax
   10482:	ba 00 00 00 00       	mov    $0x0,%edx
   10487:	5d                   	pop    %ebp
   10488:	0f 44 c2             	cmove  %edx,%eax
   1048b:	c3                   	ret    
   1048c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   10490:	b8 f7 ff ff ff       	mov    $0xfffffff7,%eax
   10495:	5d                   	pop    %ebp
   10496:	c3                   	ret    
   10497:	89 f6                	mov    %esi,%esi
   10499:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000104a0 <sys_ni_syscall>:
   104a0:	55                   	push   %ebp
   104a1:	b8 da ff ff ff       	mov    $0xffffffda,%eax
   104a6:	89 e5                	mov    %esp,%ebp
   104a8:	5d                   	pop    %ebp
   104a9:	c3                   	ret    
   104aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000104b0 <sys_getpid>:
   104b0:	55                   	push   %ebp
   104b1:	89 e5                	mov    %esp,%ebp
   104b3:	83 ec 08             	sub    $0x8,%esp
   104b6:	e8 a5 ff ff ff       	call   10460 <current>
   104bb:	8b 00                	mov    (%eax),%eax
   104bd:	c9                   	leave  
   104be:	c3                   	ret    
   104bf:	90                   	nop

000104c0 <sys_fork>:
   104c0:	55                   	push   %ebp
   104c1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   104c6:	89 e5                	mov    %esp,%ebp
   104c8:	5d                   	pop    %ebp
   104c9:	c3                   	ret    
   104ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000104d0 <sys_exit>:
   104d0:	55                   	push   %ebp
   104d1:	89 e5                	mov    %esp,%ebp
   104d3:	5d                   	pop    %ebp
   104d4:	c3                   	ret    
   104d5:	66 90                	xchg   %ax,%ax
   104d7:	66 90                	xchg   %ax,%ax
   104d9:	66 90                	xchg   %ax,%ax
   104db:	66 90                	xchg   %ax,%ax
   104dd:	66 90                	xchg   %ax,%ax
   104df:	90                   	nop

000104e0 <init_dir_pages>:
   104e0:	55                   	push   %ebp
   104e1:	ba 00 00 02 00       	mov    $0x20000,%edx
   104e6:	89 e5                	mov    %esp,%ebp
   104e8:	31 c0                	xor    %eax,%eax
   104ea:	53                   	push   %ebx
   104eb:	90                   	nop
   104ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   104f0:	89 c1                	mov    %eax,%ecx
   104f2:	89 d3                	mov    %edx,%ebx
   104f4:	83 c0 01             	add    $0x1,%eax
   104f7:	81 e3 00 f0 ff ff    	and    $0xfffff000,%ebx
   104fd:	c1 e1 0c             	shl    $0xc,%ecx
   10500:	81 c2 00 10 00 00    	add    $0x1000,%edx
   10506:	83 f8 0a             	cmp    $0xa,%eax
   10509:	89 99 00 a0 02 00    	mov    %ebx,0x2a000(%ecx)
   1050f:	c6 81 00 a0 02 00 07 	movb   $0x7,0x2a000(%ecx)
   10516:	75 d8                	jne    104f0 <init_dir_pages+0x10>
   10518:	5b                   	pop    %ebx
   10519:	5d                   	pop    %ebp
   1051a:	c3                   	ret    
   1051b:	90                   	nop
   1051c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00010520 <init_table_pages>:
   10520:	55                   	push   %ebp
   10521:	89 e5                	mov    %esp,%ebp
   10523:	57                   	push   %edi
   10524:	31 ff                	xor    %edi,%edi
   10526:	56                   	push   %esi
   10527:	53                   	push   %ebx
   10528:	83 ec 08             	sub    $0x8,%esp
   1052b:	c7 45 ec 00 40 01 00 	movl   $0x14000,-0x14(%ebp)
   10532:	c7 45 f0 00 f0 01 00 	movl   $0x1f000,-0x10(%ebp)
   10539:	c1 6d ec 0c          	shrl   $0xc,-0x14(%ebp)
   1053d:	c1 6d f0 0c          	shrl   $0xc,-0x10(%ebp)
   10541:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   10548:	89 fa                	mov    %edi,%edx
   1054a:	31 c0                	xor    %eax,%eax
   1054c:	c1 e2 0c             	shl    $0xc,%edx
   1054f:	90                   	nop
   10550:	c7 84 82 00 00 02 00 	movl   $0x0,0x20000(%edx,%eax,4)
   10557:	00 00 00 00 
   1055b:	83 c0 01             	add    $0x1,%eax
   1055e:	3d 00 04 00 00       	cmp    $0x400,%eax
   10563:	75 eb                	jne    10550 <init_table_pages+0x30>
   10565:	89 fe                	mov    %edi,%esi
   10567:	ba 01 00 00 00       	mov    $0x1,%edx
   1056c:	c1 e6 0a             	shl    $0xa,%esi
   1056f:	90                   	nop
   10570:	8d 0c 16             	lea    (%esi,%edx,1),%ecx
   10573:	89 d3                	mov    %edx,%ebx
   10575:	8b 04 8d 00 00 02 00 	mov    0x20000(,%ecx,4),%eax
   1057c:	c1 e3 0c             	shl    $0xc,%ebx
   1057f:	83 c2 01             	add    $0x1,%edx
   10582:	25 ff 0f 00 00       	and    $0xfff,%eax
   10587:	09 d8                	or     %ebx,%eax
   10589:	89 04 8d 00 00 02 00 	mov    %eax,0x20000(,%ecx,4)
   10590:	83 c8 03             	or     $0x3,%eax
   10593:	81 fa 00 01 00 00    	cmp    $0x100,%edx
   10599:	88 04 8d 00 00 02 00 	mov    %al,0x20000(,%ecx,4)
   105a0:	75 ce                	jne    10570 <init_table_pages+0x50>
   105a2:	8b 45 ec             	mov    -0x14(%ebp),%eax
   105a5:	83 c7 01             	add    $0x1,%edi
   105a8:	01 f0                	add    %esi,%eax
   105aa:	03 75 f0             	add    -0x10(%ebp),%esi
   105ad:	80 24 85 00 00 02 00 	andb   $0xfe,0x20000(,%eax,4)
   105b4:	fe 
   105b5:	80 24 b5 00 00 02 00 	andb   $0xfe,0x20000(,%esi,4)
   105bc:	fe 
   105bd:	83 ff 0a             	cmp    $0xa,%edi
   105c0:	75 86                	jne    10548 <init_table_pages+0x28>
   105c2:	83 c4 08             	add    $0x8,%esp
   105c5:	5b                   	pop    %ebx
   105c6:	5e                   	pop    %esi
   105c7:	5f                   	pop    %edi
   105c8:	5d                   	pop    %ebp
   105c9:	c3                   	ret    
   105ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000105d0 <set_user_pages>:
   105d0:	55                   	push   %ebp
   105d1:	89 e5                	mov    %esp,%ebp
   105d3:	53                   	push   %ebx
   105d4:	31 db                	xor    %ebx,%ebx
   105d6:	83 ec 14             	sub    $0x14,%esp
   105d9:	8b 45 08             	mov    0x8(%ebp),%eax
   105dc:	89 04 24             	mov    %eax,(%esp)
   105df:	e8 ec fd ff ff       	call   103d0 <get_PT>
   105e4:	8d 88 00 04 00 00    	lea    0x400(%eax),%ecx
   105ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   105f0:	ba 00 01 00 00       	mov    $0x100,%edx
   105f5:	eb 10                	jmp    10607 <set_user_pages+0x37>
   105f7:	90                   	nop
   105f8:	83 c2 02             	add    $0x2,%edx
   105fb:	81 fa 00 04 00 00    	cmp    $0x400,%edx
   10601:	0f 84 88 00 00 00    	je     1068f <set_user_pages+0xbf>
   10607:	80 ba 40 2c 01 00 00 	cmpb   $0x0,0x12c40(%edx)
   1060e:	75 e8                	jne    105f8 <set_user_pages+0x28>
   10610:	c6 82 40 2c 01 00 01 	movb   $0x1,0x12c40(%edx)
   10617:	81 e2 ff ff 0f 00    	and    $0xfffff,%edx
   1061d:	c1 e2 0c             	shl    $0xc,%edx
   10620:	83 c3 01             	add    $0x1,%ebx
   10623:	89 11                	mov    %edx,(%ecx)
   10625:	83 c1 04             	add    $0x4,%ecx
   10628:	c6 41 fc 05          	movb   $0x5,-0x4(%ecx)
   1062c:	83 fb 08             	cmp    $0x8,%ebx
   1062f:	75 bf                	jne    105f0 <set_user_pages+0x20>
   10631:	8d 90 20 04 00 00    	lea    0x420(%eax),%edx
   10637:	31 c9                	xor    %ecx,%ecx
   10639:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   10640:	b8 00 01 00 00       	mov    $0x100,%eax
   10645:	eb 0b                	jmp    10652 <set_user_pages+0x82>
   10647:	90                   	nop
   10648:	83 c0 02             	add    $0x2,%eax
   1064b:	3d 00 04 00 00       	cmp    $0x400,%eax
   10650:	74 36                	je     10688 <set_user_pages+0xb8>
   10652:	80 b8 40 2c 01 00 00 	cmpb   $0x0,0x12c40(%eax)
   10659:	75 ed                	jne    10648 <set_user_pages+0x78>
   1065b:	c6 80 40 2c 01 00 01 	movb   $0x1,0x12c40(%eax)
   10662:	25 ff ff 0f 00       	and    $0xfffff,%eax
   10667:	c1 e0 0c             	shl    $0xc,%eax
   1066a:	83 c1 01             	add    $0x1,%ecx
   1066d:	89 02                	mov    %eax,(%edx)
   1066f:	83 c2 04             	add    $0x4,%edx
   10672:	c6 42 fc 07          	movb   $0x7,-0x4(%edx)
   10676:	83 f9 14             	cmp    $0x14,%ecx
   10679:	75 c5                	jne    10640 <set_user_pages+0x70>
   1067b:	83 c4 14             	add    $0x14,%esp
   1067e:	5b                   	pop    %ebx
   1067f:	5d                   	pop    %ebp
   10680:	c3                   	ret    
   10681:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   10688:	b8 ff ff 0f 00       	mov    $0xfffff,%eax
   1068d:	eb d8                	jmp    10667 <set_user_pages+0x97>
   1068f:	ba ff ff 0f 00       	mov    $0xfffff,%edx
   10694:	eb 87                	jmp    1061d <set_user_pages+0x4d>
   10696:	8d 76 00             	lea    0x0(%esi),%esi
   10699:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000106a0 <set_cr3>:
   106a0:	55                   	push   %ebp
   106a1:	89 e5                	mov    %esp,%ebp
   106a3:	8b 45 08             	mov    0x8(%ebp),%eax
   106a6:	0f 22 d8             	mov    %eax,%cr3
   106a9:	5d                   	pop    %ebp
   106aa:	c3                   	ret    
   106ab:	90                   	nop
   106ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000106b0 <set_pe_flag>:
   106b0:	55                   	push   %ebp
   106b1:	0f 20 c0             	mov    %cr0,%eax
   106b4:	89 e5                	mov    %esp,%ebp
   106b6:	0d 00 00 00 80       	or     $0x80000000,%eax
   106bb:	0f 22 c0             	mov    %eax,%cr0
   106be:	5d                   	pop    %ebp
   106bf:	c3                   	ret    

000106c0 <init_mm>:
   106c0:	55                   	push   %ebp
   106c1:	89 e5                	mov    %esp,%ebp
   106c3:	53                   	push   %ebx
   106c4:	83 ec 14             	sub    $0x14,%esp
   106c7:	e8 54 fe ff ff       	call   10520 <init_table_pages>
   106cc:	31 c0                	xor    %eax,%eax
   106ce:	66 90                	xchg   %ax,%ax
   106d0:	c6 80 40 2c 01 00 00 	movb   $0x0,0x12c40(%eax)
   106d7:	83 c0 01             	add    $0x1,%eax
   106da:	3d 00 04 00 00       	cmp    $0x400,%eax
   106df:	75 ef                	jne    106d0 <init_mm+0x10>
   106e1:	66 31 c0             	xor    %ax,%ax
   106e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   106e8:	c6 80 40 2c 01 00 01 	movb   $0x1,0x12c40(%eax)
   106ef:	83 c0 01             	add    $0x1,%eax
   106f2:	3d 00 01 00 00       	cmp    $0x100,%eax
   106f7:	75 ef                	jne    106e8 <init_mm+0x28>
   106f9:	ba 00 00 02 00       	mov    $0x20000,%edx
   106fe:	66 31 c0             	xor    %ax,%ax
   10701:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   10708:	89 c1                	mov    %eax,%ecx
   1070a:	89 d3                	mov    %edx,%ebx
   1070c:	83 c0 01             	add    $0x1,%eax
   1070f:	81 e3 00 f0 ff ff    	and    $0xfffff000,%ebx
   10715:	c1 e1 0c             	shl    $0xc,%ecx
   10718:	81 c2 00 10 00 00    	add    $0x1000,%edx
   1071e:	83 f8 0a             	cmp    $0xa,%eax
   10721:	89 99 00 a0 02 00    	mov    %ebx,0x2a000(%ecx)
   10727:	c6 81 00 a0 02 00 07 	movb   $0x7,0x2a000(%ecx)
   1072e:	75 d8                	jne    10708 <init_mm+0x48>
   10730:	a1 24 23 01 00       	mov    0x12324,%eax
   10735:	89 04 24             	mov    %eax,(%esp)
   10738:	e8 b3 fc ff ff       	call   103f0 <allocate_DIR>
   1073d:	a1 24 23 01 00       	mov    0x12324,%eax
   10742:	89 04 24             	mov    %eax,(%esp)
   10745:	e8 76 fc ff ff       	call   103c0 <get_DIR>
   1074a:	0f 22 d8             	mov    %eax,%cr3
   1074d:	0f 20 c0             	mov    %cr0,%eax
   10750:	0d 00 00 00 80       	or     $0x80000000,%eax
   10755:	0f 22 c0             	mov    %eax,%cr0
   10758:	83 c4 14             	add    $0x14,%esp
   1075b:	5b                   	pop    %ebx
   1075c:	5d                   	pop    %ebp
   1075d:	c3                   	ret    
   1075e:	66 90                	xchg   %ax,%ax

00010760 <setGdt>:
   10760:	55                   	push   %ebp
   10761:	ba c0 2b 01 00       	mov    $0x12bc0,%edx
   10766:	89 e5                	mov    %esp,%ebp
   10768:	83 ec 18             	sub    $0x18,%esp
   1076b:	a1 28 23 01 00       	mov    0x12328,%eax
   10770:	89 d1                	mov    %edx,%ecx
   10772:	c1 e9 10             	shr    $0x10,%ecx
   10775:	66 89 50 32          	mov    %dx,0x32(%eax)
   10779:	c1 ea 18             	shr    $0x18,%edx
   1077c:	88 48 34             	mov    %cl,0x34(%eax)
   1077f:	88 50 37             	mov    %dl,0x37(%eax)
   10782:	a3 a2 2b 01 00       	mov    %eax,0x12ba2
   10787:	b8 00 08 00 00       	mov    $0x800,%eax
   1078c:	c7 04 24 a0 2b 01 00 	movl   $0x12ba0,(%esp)
   10793:	66 a3 a0 2b 01 00    	mov    %ax,0x12ba0
   10799:	e8 f2 04 00 00       	call   10c90 <set_gdt_reg>
   1079e:	c9                   	leave  
   1079f:	c3                   	ret    

000107a0 <setTSS>:
   107a0:	55                   	push   %ebp
   107a1:	31 c0                	xor    %eax,%eax
   107a3:	89 e5                	mov    %esp,%ebp
   107a5:	83 ec 18             	sub    $0x18,%esp
   107a8:	66 a3 c0 2b 01 00    	mov    %ax,0x12bc0
   107ae:	a1 24 23 01 00       	mov    0x12324,%eax
   107b3:	ba 18 00 00 00       	mov    $0x18,%edx
   107b8:	31 c9                	xor    %ecx,%ecx
   107ba:	66 89 15 c8 2b 01 00 	mov    %dx,0x12bc8
   107c1:	31 d2                	xor    %edx,%edx
   107c3:	66 89 0d d0 2b 01 00 	mov    %cx,0x12bd0
   107ca:	b9 30 00 00 00       	mov    $0x30,%ecx
   107cf:	05 00 20 00 00       	add    $0x2000,%eax
   107d4:	a3 c4 2b 01 00       	mov    %eax,0x12bc4
   107d9:	31 c0                	xor    %eax,%eax
   107db:	66 a3 d8 2b 01 00    	mov    %ax,0x12bd8
   107e1:	b8 2b 00 00 00       	mov    $0x2b,%eax
   107e6:	66 a3 08 2c 01 00    	mov    %ax,0x12c08
   107ec:	b8 23 00 00 00       	mov    $0x23,%eax
   107f1:	66 a3 0c 2c 01 00    	mov    %ax,0x12c0c
   107f7:	b8 2b 00 00 00       	mov    $0x2b,%eax
   107fc:	66 a3 10 2c 01 00    	mov    %ax,0x12c10
   10802:	b8 2b 00 00 00       	mov    $0x2b,%eax
   10807:	66 a3 14 2c 01 00    	mov    %ax,0x12c14
   1080d:	31 c0                	xor    %eax,%eax
   1080f:	66 a3 18 2c 01 00    	mov    %ax,0x12c18
   10815:	31 c0                	xor    %eax,%eax
   10817:	66 a3 24 2c 01 00    	mov    %ax,0x12c24
   1081d:	31 c0                	xor    %eax,%eax
   1081f:	c7 04 24 30 00 00 00 	movl   $0x30,(%esp)
   10826:	c7 05 cc 2b 01 00 00 	movl   $0x0,0x12bcc
   1082d:	00 00 00 
   10830:	c7 05 d4 2b 01 00 00 	movl   $0x0,0x12bd4
   10837:	00 00 00 
   1083a:	c7 05 dc 2b 01 00 00 	movl   $0x0,0x12bdc
   10841:	00 00 00 
   10844:	c7 05 e0 2b 01 00 00 	movl   $0x0,0x12be0
   1084b:	00 00 00 
   1084e:	c7 05 e4 2b 01 00 00 	movl   $0x200,0x12be4
   10855:	02 00 00 
   10858:	c7 05 e8 2b 01 00 00 	movl   $0x0,0x12be8
   1085f:	00 00 00 
   10862:	c7 05 ec 2b 01 00 00 	movl   $0x0,0x12bec
   10869:	00 00 00 
   1086c:	c7 05 f0 2b 01 00 00 	movl   $0x0,0x12bf0
   10873:	00 00 00 
   10876:	c7 05 f4 2b 01 00 00 	movl   $0x0,0x12bf4
   1087d:	00 00 00 
   10880:	c7 05 f8 2b 01 00 f0 	movl   $0x11bff0,0x12bf8
   10887:	bf 11 00 
   1088a:	c7 05 fc 2b 01 00 f0 	movl   $0x11bff0,0x12bfc
   10891:	bf 11 00 
   10894:	c7 05 00 2c 01 00 00 	movl   $0x0,0x12c00
   1089b:	00 00 00 
   1089e:	c7 05 04 2c 01 00 00 	movl   $0x0,0x12c04
   108a5:	00 00 00 
   108a8:	66 89 15 1c 2c 01 00 	mov    %dx,0x12c1c
   108af:	66 89 0d 20 2c 01 00 	mov    %cx,0x12c20
   108b6:	66 a3 26 2c 01 00    	mov    %ax,0x12c26
   108bc:	e8 ef 03 00 00       	call   10cb0 <set_task_reg>
   108c1:	c9                   	leave  
   108c2:	c3                   	ret    
   108c3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   108c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000108d0 <init_frames>:
   108d0:	55                   	push   %ebp
   108d1:	31 c0                	xor    %eax,%eax
   108d3:	89 e5                	mov    %esp,%ebp
   108d5:	8d 76 00             	lea    0x0(%esi),%esi
   108d8:	c6 80 40 2c 01 00 00 	movb   $0x0,0x12c40(%eax)
   108df:	83 c0 01             	add    $0x1,%eax
   108e2:	3d 00 04 00 00       	cmp    $0x400,%eax
   108e7:	75 ef                	jne    108d8 <init_frames+0x8>
   108e9:	66 31 c0             	xor    %ax,%ax
   108ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   108f0:	c6 80 40 2c 01 00 01 	movb   $0x1,0x12c40(%eax)
   108f7:	83 c0 01             	add    $0x1,%eax
   108fa:	3d 00 01 00 00       	cmp    $0x100,%eax
   108ff:	75 ef                	jne    108f0 <init_frames+0x20>
   10901:	66 31 c0             	xor    %ax,%ax
   10904:	5d                   	pop    %ebp
   10905:	c3                   	ret    
   10906:	8d 76 00             	lea    0x0(%esi),%esi
   10909:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00010910 <alloc_frame>:
   10910:	55                   	push   %ebp
   10911:	b8 00 01 00 00       	mov    $0x100,%eax
   10916:	89 e5                	mov    %esp,%ebp
   10918:	eb 10                	jmp    1092a <alloc_frame+0x1a>
   1091a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   10920:	83 c0 02             	add    $0x2,%eax
   10923:	3d 00 04 00 00       	cmp    $0x400,%eax
   10928:	74 16                	je     10940 <alloc_frame+0x30>
   1092a:	80 b8 40 2c 01 00 00 	cmpb   $0x0,0x12c40(%eax)
   10931:	75 ed                	jne    10920 <alloc_frame+0x10>
   10933:	c6 80 40 2c 01 00 01 	movb   $0x1,0x12c40(%eax)
   1093a:	5d                   	pop    %ebp
   1093b:	c3                   	ret    
   1093c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   10940:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   10945:	5d                   	pop    %ebp
   10946:	c3                   	ret    
   10947:	89 f6                	mov    %esi,%esi
   10949:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00010950 <free_user_pages>:
   10950:	55                   	push   %ebp
   10951:	89 e5                	mov    %esp,%ebp
   10953:	53                   	push   %ebx
   10954:	83 ec 14             	sub    $0x14,%esp
   10957:	8b 45 08             	mov    0x8(%ebp),%eax
   1095a:	89 04 24             	mov    %eax,(%esp)
   1095d:	e8 6e fa ff ff       	call   103d0 <get_PT>
   10962:	31 c9                	xor    %ecx,%ecx
   10964:	05 20 04 00 00       	add    $0x420,%eax
   10969:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   10970:	8b 10                	mov    (%eax),%edx
   10972:	c1 ea 0c             	shr    $0xc,%edx
   10975:	8d 9a ff fe ff ff    	lea    -0x101(%edx),%ebx
   1097b:	81 fb fe 02 00 00    	cmp    $0x2fe,%ebx
   10981:	77 07                	ja     1098a <free_user_pages+0x3a>
   10983:	c6 82 40 2c 01 00 00 	movb   $0x0,0x12c40(%edx)
   1098a:	83 c1 01             	add    $0x1,%ecx
   1098d:	83 c0 04             	add    $0x4,%eax
   10990:	c7 40 fc 00 00 00 00 	movl   $0x0,-0x4(%eax)
   10997:	83 f9 14             	cmp    $0x14,%ecx
   1099a:	75 d4                	jne    10970 <free_user_pages+0x20>
   1099c:	83 c4 14             	add    $0x14,%esp
   1099f:	5b                   	pop    %ebx
   109a0:	5d                   	pop    %ebp
   109a1:	c3                   	ret    
   109a2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   109a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000109b0 <free_frame>:
   109b0:	55                   	push   %ebp
   109b1:	89 e5                	mov    %esp,%ebp
   109b3:	8b 45 08             	mov    0x8(%ebp),%eax
   109b6:	8d 90 ff fe ff ff    	lea    -0x101(%eax),%edx
   109bc:	81 fa fe 02 00 00    	cmp    $0x2fe,%edx
   109c2:	77 07                	ja     109cb <free_frame+0x1b>
   109c4:	c6 80 40 2c 01 00 00 	movb   $0x0,0x12c40(%eax)
   109cb:	5d                   	pop    %ebp
   109cc:	c3                   	ret    
   109cd:	8d 76 00             	lea    0x0(%esi),%esi

000109d0 <set_ss_pag>:
   109d0:	55                   	push   %ebp
   109d1:	89 e5                	mov    %esp,%ebp
   109d3:	8b 55 10             	mov    0x10(%ebp),%edx
   109d6:	8b 45 0c             	mov    0xc(%ebp),%eax
   109d9:	8b 4d 08             	mov    0x8(%ebp),%ecx
   109dc:	c1 e2 0c             	shl    $0xc,%edx
   109df:	8d 04 81             	lea    (%ecx,%eax,4),%eax
   109e2:	89 10                	mov    %edx,(%eax)
   109e4:	c6 00 07             	movb   $0x7,(%eax)
   109e7:	5d                   	pop    %ebp
   109e8:	c3                   	ret    
   109e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000109f0 <del_ss_pag>:
   109f0:	55                   	push   %ebp
   109f1:	89 e5                	mov    %esp,%ebp
   109f3:	8b 55 0c             	mov    0xc(%ebp),%edx
   109f6:	8b 45 08             	mov    0x8(%ebp),%eax
   109f9:	c7 04 90 00 00 00 00 	movl   $0x0,(%eax,%edx,4)
   10a00:	5d                   	pop    %ebp
   10a01:	c3                   	ret    
   10a02:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   10a09:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00010a10 <get_frame>:
   10a10:	55                   	push   %ebp
   10a11:	89 e5                	mov    %esp,%ebp
   10a13:	8b 55 0c             	mov    0xc(%ebp),%edx
   10a16:	8b 45 08             	mov    0x8(%ebp),%eax
   10a19:	5d                   	pop    %ebp
   10a1a:	8b 04 90             	mov    (%eax,%edx,4),%eax
   10a1d:	c1 e8 0c             	shr    $0xc,%eax
   10a20:	c3                   	ret    
   10a21:	66 90                	xchg   %ax,%ax
   10a23:	66 90                	xchg   %ax,%ax
   10a25:	66 90                	xchg   %ax,%ax
   10a27:	66 90                	xchg   %ax,%ax
   10a29:	66 90                	xchg   %ax,%ax
   10a2b:	66 90                	xchg   %ax,%ax
   10a2d:	66 90                	xchg   %ax,%ax
   10a2f:	90                   	nop

00010a30 <sys_write_console>:
   10a30:	55                   	push   %ebp
   10a31:	89 e5                	mov    %esp,%ebp
   10a33:	57                   	push   %edi
   10a34:	56                   	push   %esi
   10a35:	53                   	push   %ebx
   10a36:	83 ec 1c             	sub    $0x1c,%esp
   10a39:	8b 7d 0c             	mov    0xc(%ebp),%edi
   10a3c:	8b 5d 08             	mov    0x8(%ebp),%ebx
   10a3f:	85 ff                	test   %edi,%edi
   10a41:	8d 34 3b             	lea    (%ebx,%edi,1),%esi
   10a44:	7e 14                	jle    10a5a <sys_write_console+0x2a>
   10a46:	66 90                	xchg   %ax,%ax
   10a48:	0f be 03             	movsbl (%ebx),%eax
   10a4b:	83 c3 01             	add    $0x1,%ebx
   10a4e:	89 04 24             	mov    %eax,(%esp)
   10a51:	e8 2a f8 ff ff       	call   10280 <printc>
   10a56:	39 f3                	cmp    %esi,%ebx
   10a58:	75 ee                	jne    10a48 <sys_write_console+0x18>
   10a5a:	83 c4 1c             	add    $0x1c,%esp
   10a5d:	89 f8                	mov    %edi,%eax
   10a5f:	5b                   	pop    %ebx
   10a60:	5e                   	pop    %esi
   10a61:	5f                   	pop    %edi
   10a62:	5d                   	pop    %ebp
   10a63:	c3                   	ret    
   10a64:	66 90                	xchg   %ax,%ax
   10a66:	66 90                	xchg   %ax,%ax
   10a68:	66 90                	xchg   %ax,%ax
   10a6a:	66 90                	xchg   %ax,%ax
   10a6c:	66 90                	xchg   %ax,%ax
   10a6e:	66 90                	xchg   %ax,%ax

00010a70 <copy_data>:
   10a70:	55                   	push   %ebp
   10a71:	89 e5                	mov    %esp,%ebp
   10a73:	57                   	push   %edi
   10a74:	8b 45 08             	mov    0x8(%ebp),%eax
   10a77:	56                   	push   %esi
   10a78:	8b 75 10             	mov    0x10(%ebp),%esi
   10a7b:	53                   	push   %ebx
   10a7c:	8b 4d 0c             	mov    0xc(%ebp),%ecx
   10a7f:	83 fe 04             	cmp    $0x4,%esi
   10a82:	7e 2e                	jle    10ab2 <copy_data+0x42>
   10a84:	8d 7e fb             	lea    -0x5(%esi),%edi
   10a87:	31 d2                	xor    %edx,%edx
   10a89:	c1 ef 02             	shr    $0x2,%edi
   10a8c:	8d 1c bd 04 00 00 00 	lea    0x4(,%edi,4),%ebx
   10a93:	90                   	nop
   10a94:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   10a98:	8b 34 10             	mov    (%eax,%edx,1),%esi
   10a9b:	89 34 11             	mov    %esi,(%ecx,%edx,1)
   10a9e:	83 c2 04             	add    $0x4,%edx
   10aa1:	39 da                	cmp    %ebx,%edx
   10aa3:	75 f3                	jne    10a98 <copy_data+0x28>
   10aa5:	8b 75 10             	mov    0x10(%ebp),%esi
   10aa8:	f7 df                	neg    %edi
   10aaa:	01 d1                	add    %edx,%ecx
   10aac:	01 d0                	add    %edx,%eax
   10aae:	8d 74 be fc          	lea    -0x4(%esi,%edi,4),%esi
   10ab2:	85 f6                	test   %esi,%esi
   10ab4:	8d 1c 30             	lea    (%eax,%esi,1),%ebx
   10ab7:	7e 18                	jle    10ad1 <copy_data+0x61>
   10ab9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   10ac0:	83 c0 01             	add    $0x1,%eax
   10ac3:	0f b6 50 ff          	movzbl -0x1(%eax),%edx
   10ac7:	83 c1 01             	add    $0x1,%ecx
   10aca:	39 d8                	cmp    %ebx,%eax
   10acc:	88 51 ff             	mov    %dl,-0x1(%ecx)
   10acf:	75 ef                	jne    10ac0 <copy_data+0x50>
   10ad1:	5b                   	pop    %ebx
   10ad2:	5e                   	pop    %esi
   10ad3:	5f                   	pop    %edi
   10ad4:	5d                   	pop    %ebp
   10ad5:	c3                   	ret    
   10ad6:	8d 76 00             	lea    0x0(%esi),%esi
   10ad9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00010ae0 <copy_from_user>:
   10ae0:	55                   	push   %ebp
   10ae1:	89 e5                	mov    %esp,%ebp
   10ae3:	57                   	push   %edi
   10ae4:	8b 45 08             	mov    0x8(%ebp),%eax
   10ae7:	56                   	push   %esi
   10ae8:	8b 75 10             	mov    0x10(%ebp),%esi
   10aeb:	53                   	push   %ebx
   10aec:	8b 4d 0c             	mov    0xc(%ebp),%ecx
   10aef:	83 fe 04             	cmp    $0x4,%esi
   10af2:	7e 2e                	jle    10b22 <copy_from_user+0x42>
   10af4:	8d 7e fb             	lea    -0x5(%esi),%edi
   10af7:	31 d2                	xor    %edx,%edx
   10af9:	c1 ef 02             	shr    $0x2,%edi
   10afc:	8d 1c bd 04 00 00 00 	lea    0x4(,%edi,4),%ebx
   10b03:	90                   	nop
   10b04:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   10b08:	8b 34 10             	mov    (%eax,%edx,1),%esi
   10b0b:	89 34 11             	mov    %esi,(%ecx,%edx,1)
   10b0e:	83 c2 04             	add    $0x4,%edx
   10b11:	39 da                	cmp    %ebx,%edx
   10b13:	75 f3                	jne    10b08 <copy_from_user+0x28>
   10b15:	8b 75 10             	mov    0x10(%ebp),%esi
   10b18:	f7 df                	neg    %edi
   10b1a:	01 d1                	add    %edx,%ecx
   10b1c:	01 d0                	add    %edx,%eax
   10b1e:	8d 74 be fc          	lea    -0x4(%esi,%edi,4),%esi
   10b22:	85 f6                	test   %esi,%esi
   10b24:	8d 1c 30             	lea    (%eax,%esi,1),%ebx
   10b27:	7e 18                	jle    10b41 <copy_from_user+0x61>
   10b29:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   10b30:	83 c0 01             	add    $0x1,%eax
   10b33:	0f b6 50 ff          	movzbl -0x1(%eax),%edx
   10b37:	83 c1 01             	add    $0x1,%ecx
   10b3a:	39 d8                	cmp    %ebx,%eax
   10b3c:	88 51 ff             	mov    %dl,-0x1(%ecx)
   10b3f:	75 ef                	jne    10b30 <copy_from_user+0x50>
   10b41:	5b                   	pop    %ebx
   10b42:	31 c0                	xor    %eax,%eax
   10b44:	5e                   	pop    %esi
   10b45:	5f                   	pop    %edi
   10b46:	5d                   	pop    %ebp
   10b47:	c3                   	ret    
   10b48:	90                   	nop
   10b49:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00010b50 <copy_to_user>:
   10b50:	55                   	push   %ebp
   10b51:	89 e5                	mov    %esp,%ebp
   10b53:	57                   	push   %edi
   10b54:	8b 45 08             	mov    0x8(%ebp),%eax
   10b57:	56                   	push   %esi
   10b58:	8b 75 10             	mov    0x10(%ebp),%esi
   10b5b:	53                   	push   %ebx
   10b5c:	8b 4d 0c             	mov    0xc(%ebp),%ecx
   10b5f:	83 fe 04             	cmp    $0x4,%esi
   10b62:	7e 2e                	jle    10b92 <copy_to_user+0x42>
   10b64:	8d 7e fb             	lea    -0x5(%esi),%edi
   10b67:	31 d2                	xor    %edx,%edx
   10b69:	c1 ef 02             	shr    $0x2,%edi
   10b6c:	8d 1c bd 04 00 00 00 	lea    0x4(,%edi,4),%ebx
   10b73:	90                   	nop
   10b74:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   10b78:	8b 34 10             	mov    (%eax,%edx,1),%esi
   10b7b:	89 34 11             	mov    %esi,(%ecx,%edx,1)
   10b7e:	83 c2 04             	add    $0x4,%edx
   10b81:	39 da                	cmp    %ebx,%edx
   10b83:	75 f3                	jne    10b78 <copy_to_user+0x28>
   10b85:	8b 75 10             	mov    0x10(%ebp),%esi
   10b88:	f7 df                	neg    %edi
   10b8a:	01 d1                	add    %edx,%ecx
   10b8c:	01 d0                	add    %edx,%eax
   10b8e:	8d 74 be fc          	lea    -0x4(%esi,%edi,4),%esi
   10b92:	85 f6                	test   %esi,%esi
   10b94:	8d 1c 30             	lea    (%eax,%esi,1),%ebx
   10b97:	7e 18                	jle    10bb1 <copy_to_user+0x61>
   10b99:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   10ba0:	83 c0 01             	add    $0x1,%eax
   10ba3:	0f b6 50 ff          	movzbl -0x1(%eax),%edx
   10ba7:	83 c1 01             	add    $0x1,%ecx
   10baa:	39 d8                	cmp    %ebx,%eax
   10bac:	88 51 ff             	mov    %dl,-0x1(%ecx)
   10baf:	75 ef                	jne    10ba0 <copy_to_user+0x50>
   10bb1:	5b                   	pop    %ebx
   10bb2:	31 c0                	xor    %eax,%eax
   10bb4:	5e                   	pop    %esi
   10bb5:	5f                   	pop    %edi
   10bb6:	5d                   	pop    %ebp
   10bb7:	c3                   	ret    
   10bb8:	90                   	nop
   10bb9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00010bc0 <access_ok>:
   10bc0:	55                   	push   %ebp
   10bc1:	89 e5                	mov    %esp,%ebp
   10bc3:	8b 45 0c             	mov    0xc(%ebp),%eax
   10bc6:	89 c2                	mov    %eax,%edx
   10bc8:	03 45 10             	add    0x10(%ebp),%eax
   10bcb:	c1 ea 0c             	shr    $0xc,%edx
   10bce:	c1 e8 0c             	shr    $0xc,%eax
   10bd1:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
   10bd5:	74 19                	je     10bf0 <access_ok+0x30>
   10bd7:	3d 1c 01 00 00       	cmp    $0x11c,%eax
   10bdc:	0f 96 c1             	setbe  %cl
   10bdf:	31 c0                	xor    %eax,%eax
   10be1:	81 fa ff 00 00 00    	cmp    $0xff,%edx
   10be7:	0f 97 c0             	seta   %al
   10bea:	21 c8                	and    %ecx,%eax
   10bec:	5d                   	pop    %ebp
   10bed:	c3                   	ret    
   10bee:	66 90                	xchg   %ax,%ax
   10bf0:	3d 1c 01 00 00       	cmp    $0x11c,%eax
   10bf5:	0f 96 c1             	setbe  %cl
   10bf8:	77 e5                	ja     10bdf <access_ok+0x1f>
   10bfa:	81 fa 07 01 00 00    	cmp    $0x107,%edx
   10c00:	b8 01 00 00 00       	mov    $0x1,%eax
   10c05:	76 d8                	jbe    10bdf <access_ok+0x1f>
   10c07:	5d                   	pop    %ebp
   10c08:	c3                   	ret    
   10c09:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00010c10 <get_ticks>:
   10c10:	55                   	push   %ebp
   10c11:	89 e5                	mov    %esp,%ebp
   10c13:	57                   	push   %edi
   10c14:	56                   	push   %esi
   10c15:	53                   	push   %ebx
   10c16:	0f 31                	rdtsc  
   10c18:	89 c6                	mov    %eax,%esi
   10c1a:	31 c0                	xor    %eax,%eax
   10c1c:	31 ff                	xor    %edi,%edi
   10c1e:	01 f0                	add    %esi,%eax
   10c20:	11 fa                	adc    %edi,%edx
   10c22:	31 ff                	xor    %edi,%edi
   10c24:	85 d2                	test   %edx,%edx
   10c26:	89 d6                	mov    %edx,%esi
   10c28:	89 c1                	mov    %eax,%ecx
   10c2a:	74 1b                	je     10c47 <get_ticks+0x37>
   10c2c:	bf a9 d7 7a 26       	mov    $0x267ad7a9,%edi
   10c31:	89 d0                	mov    %edx,%eax
   10c33:	f7 e7                	mul    %edi
   10c35:	89 d0                	mov    %edx,%eax
   10c37:	89 d7                	mov    %edx,%edi
   10c39:	c1 e8 0e             	shr    $0xe,%eax
   10c3c:	69 c0 c8 a9 01 00    	imul   $0x1a9c8,%eax,%eax
   10c42:	c1 ef 0e             	shr    $0xe,%edi
   10c45:	29 c6                	sub    %eax,%esi
   10c47:	89 f2                	mov    %esi,%edx
   10c49:	bb c8 a9 01 00       	mov    $0x1a9c8,%ebx
   10c4e:	89 c8                	mov    %ecx,%eax
   10c50:	f7 f3                	div    %ebx
   10c52:	5b                   	pop    %ebx
   10c53:	89 fa                	mov    %edi,%edx
   10c55:	5e                   	pop    %esi
   10c56:	5f                   	pop    %edi
   10c57:	5d                   	pop    %ebp
   10c58:	c3                   	ret    
   10c59:	66 90                	xchg   %ax,%ax
   10c5b:	66 90                	xchg   %ax,%ax
   10c5d:	66 90                	xchg   %ax,%ax
   10c5f:	90                   	nop

00010c60 <get_eflags>:
   10c60:	55                   	push   %ebp
   10c61:	89 e5                	mov    %esp,%ebp
   10c63:	9c                   	pushf  
   10c64:	58                   	pop    %eax
   10c65:	5d                   	pop    %ebp
   10c66:	c3                   	ret    
   10c67:	89 f6                	mov    %esi,%esi
   10c69:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00010c70 <set_eflags>:
   10c70:	55                   	push   %ebp
   10c71:	89 e5                	mov    %esp,%ebp
   10c73:	6a 00                	push   $0x0
   10c75:	9d                   	popf   
   10c76:	5d                   	pop    %ebp
   10c77:	c3                   	ret    
   10c78:	90                   	nop
   10c79:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00010c80 <set_idt_reg>:
   10c80:	55                   	push   %ebp
   10c81:	89 e5                	mov    %esp,%ebp
   10c83:	8b 45 08             	mov    0x8(%ebp),%eax
   10c86:	0f 01 18             	lidtl  (%eax)
   10c89:	5d                   	pop    %ebp
   10c8a:	c3                   	ret    
   10c8b:	90                   	nop
   10c8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00010c90 <set_gdt_reg>:
   10c90:	55                   	push   %ebp
   10c91:	89 e5                	mov    %esp,%ebp
   10c93:	8b 45 08             	mov    0x8(%ebp),%eax
   10c96:	0f 01 10             	lgdtl  (%eax)
   10c99:	5d                   	pop    %ebp
   10c9a:	c3                   	ret    
   10c9b:	90                   	nop
   10c9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00010ca0 <set_ldt_reg>:
   10ca0:	55                   	push   %ebp
   10ca1:	89 e5                	mov    %esp,%ebp
   10ca3:	8b 45 08             	mov    0x8(%ebp),%eax
   10ca6:	0f 00 d0             	lldt   %ax
   10ca9:	5d                   	pop    %ebp
   10caa:	c3                   	ret    
   10cab:	90                   	nop
   10cac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00010cb0 <set_task_reg>:
   10cb0:	55                   	push   %ebp
   10cb1:	89 e5                	mov    %esp,%ebp
   10cb3:	8b 45 08             	mov    0x8(%ebp),%eax
   10cb6:	0f 00 d8             	ltr    %ax
   10cb9:	5d                   	pop    %ebp
   10cba:	c3                   	ret    
   10cbb:	90                   	nop
   10cbc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00010cc0 <return_gate>:
   10cc0:	55                   	push   %ebp
   10cc1:	89 e5                	mov    %esp,%ebp
   10cc3:	83 ec 0c             	sub    $0xc,%esp
   10cc6:	8b 45 08             	mov    0x8(%ebp),%eax
   10cc9:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
   10ccd:	8b 45 0c             	mov    0xc(%ebp),%eax
   10cd0:	66 89 45 f8          	mov    %ax,-0x8(%ebp)
   10cd4:	8b 45 14             	mov    0x14(%ebp),%eax
   10cd7:	66 89 45 f4          	mov    %ax,-0xc(%ebp)
   10cdb:	a1 a0 22 01 00       	mov    0x122a0,%eax
   10ce0:	8b 10                	mov    (%eax),%edx
   10ce2:	8e 45 fc             	mov    -0x4(%ebp),%es
   10ce5:	8e 5d fc             	mov    -0x4(%ebp),%ds
   10ce8:	8b 45 10             	mov    0x10(%ebp),%eax
   10ceb:	83 c0 0c             	add    $0xc,%eax
   10cee:	89 10                	mov    %edx,(%eax)
   10cf0:	ff 75 f8             	pushl  -0x8(%ebp)
   10cf3:	ff 75 10             	pushl  0x10(%ebp)
   10cf6:	ff 75 f4             	pushl  -0xc(%ebp)
   10cf9:	ff 75 18             	pushl  0x18(%ebp)
   10cfc:	cb                   	lret   
   10cfd:	c9                   	leave  
   10cfe:	c3                   	ret    
   10cff:	90                   	nop

00010d00 <enable_int>:
   10d00:	55                   	push   %ebp
   10d01:	89 e5                	mov    %esp,%ebp
   10d03:	b0 fd                	mov    $0xfd,%al
   10d05:	e6 21                	out    %al,$0x21
   10d07:	e8 04 00 00 00       	call   10d10 <delay>
   10d0c:	fb                   	sti    
   10d0d:	5d                   	pop    %ebp
   10d0e:	c3                   	ret    
   10d0f:	90                   	nop

00010d10 <delay>:
   10d10:	55                   	push   %ebp
   10d11:	89 e5                	mov    %esp,%ebp
   10d13:	eb 00                	jmp    10d15 <a>

00010d15 <a>:
   10d15:	5d                   	pop    %ebp
   10d16:	c3                   	ret    
   10d17:	66 90                	xchg   %ax,%ax
   10d19:	66 90                	xchg   %ax,%ax
   10d1b:	66 90                	xchg   %ax,%ax
   10d1d:	66 90                	xchg   %ax,%ax
   10d1f:	90                   	nop

00010d20 <INIT_LIST_HEAD>:
   10d20:	55                   	push   %ebp
   10d21:	89 e5                	mov    %esp,%ebp
   10d23:	8b 45 08             	mov    0x8(%ebp),%eax
   10d26:	89 00                	mov    %eax,(%eax)
   10d28:	89 40 04             	mov    %eax,0x4(%eax)
   10d2b:	5d                   	pop    %ebp
   10d2c:	c3                   	ret    
   10d2d:	8d 76 00             	lea    0x0(%esi),%esi

00010d30 <list_add>:
   10d30:	55                   	push   %ebp
   10d31:	89 e5                	mov    %esp,%ebp
   10d33:	8b 55 0c             	mov    0xc(%ebp),%edx
   10d36:	8b 45 08             	mov    0x8(%ebp),%eax
   10d39:	8b 0a                	mov    (%edx),%ecx
   10d3b:	89 41 04             	mov    %eax,0x4(%ecx)
   10d3e:	89 08                	mov    %ecx,(%eax)
   10d40:	89 50 04             	mov    %edx,0x4(%eax)
   10d43:	89 02                	mov    %eax,(%edx)
   10d45:	5d                   	pop    %ebp
   10d46:	c3                   	ret    
   10d47:	89 f6                	mov    %esi,%esi
   10d49:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00010d50 <list_add_tail>:
   10d50:	55                   	push   %ebp
   10d51:	89 e5                	mov    %esp,%ebp
   10d53:	8b 55 0c             	mov    0xc(%ebp),%edx
   10d56:	8b 45 08             	mov    0x8(%ebp),%eax
   10d59:	8b 4a 04             	mov    0x4(%edx),%ecx
   10d5c:	89 42 04             	mov    %eax,0x4(%edx)
   10d5f:	89 10                	mov    %edx,(%eax)
   10d61:	89 48 04             	mov    %ecx,0x4(%eax)
   10d64:	89 01                	mov    %eax,(%ecx)
   10d66:	5d                   	pop    %ebp
   10d67:	c3                   	ret    
   10d68:	90                   	nop
   10d69:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00010d70 <list_del>:
   10d70:	55                   	push   %ebp
   10d71:	89 e5                	mov    %esp,%ebp
   10d73:	8b 45 08             	mov    0x8(%ebp),%eax
   10d76:	8b 08                	mov    (%eax),%ecx
   10d78:	8b 50 04             	mov    0x4(%eax),%edx
   10d7b:	89 51 04             	mov    %edx,0x4(%ecx)
   10d7e:	89 0a                	mov    %ecx,(%edx)
   10d80:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
   10d86:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
   10d8d:	5d                   	pop    %ebp
   10d8e:	c3                   	ret    
   10d8f:	90                   	nop

00010d90 <list_is_last>:
   10d90:	55                   	push   %ebp
   10d91:	89 e5                	mov    %esp,%ebp
   10d93:	8b 45 08             	mov    0x8(%ebp),%eax
   10d96:	8b 55 0c             	mov    0xc(%ebp),%edx
   10d99:	5d                   	pop    %ebp
   10d9a:	39 10                	cmp    %edx,(%eax)
   10d9c:	0f 94 c0             	sete   %al
   10d9f:	0f b6 c0             	movzbl %al,%eax
   10da2:	c3                   	ret    
   10da3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   10da9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00010db0 <list_empty>:
   10db0:	55                   	push   %ebp
   10db1:	89 e5                	mov    %esp,%ebp
   10db3:	8b 45 08             	mov    0x8(%ebp),%eax
   10db6:	5d                   	pop    %ebp
   10db7:	39 00                	cmp    %eax,(%eax)
   10db9:	0f 94 c0             	sete   %al
   10dbc:	0f b6 c0             	movzbl %al,%eax
   10dbf:	c3                   	ret    

00010dc0 <itoa.part.0>:
   10dc0:	55                   	push   %ebp
   10dc1:	89 c1                	mov    %eax,%ecx
   10dc3:	89 e5                	mov    %esp,%ebp
   10dc5:	57                   	push   %edi
   10dc6:	56                   	push   %esi
   10dc7:	31 f6                	xor    %esi,%esi
   10dc9:	85 c0                	test   %eax,%eax
   10dcb:	53                   	push   %ebx
   10dcc:	bf 67 66 66 66       	mov    $0x66666667,%edi
   10dd1:	89 d3                	mov    %edx,%ebx
   10dd3:	7e 51                	jle    10e26 <itoa.part.0+0x66>
   10dd5:	8d 76 00             	lea    0x0(%esi),%esi
   10dd8:	89 c8                	mov    %ecx,%eax
   10dda:	f7 ef                	imul   %edi
   10ddc:	89 c8                	mov    %ecx,%eax
   10dde:	c1 f8 1f             	sar    $0x1f,%eax
   10de1:	c1 fa 02             	sar    $0x2,%edx
   10de4:	29 c2                	sub    %eax,%edx
   10de6:	8d 04 92             	lea    (%edx,%edx,4),%eax
   10de9:	01 c0                	add    %eax,%eax
   10deb:	29 c1                	sub    %eax,%ecx
   10ded:	83 c1 30             	add    $0x30,%ecx
   10df0:	88 0c 33             	mov    %cl,(%ebx,%esi,1)
   10df3:	83 c6 01             	add    $0x1,%esi
   10df6:	85 d2                	test   %edx,%edx
   10df8:	89 d1                	mov    %edx,%ecx
   10dfa:	75 dc                	jne    10dd8 <itoa.part.0+0x18>
   10dfc:	89 f2                	mov    %esi,%edx
   10dfe:	d1 fa                	sar    %edx
   10e00:	74 24                	je     10e26 <itoa.part.0+0x66>
   10e02:	8d 44 1e ff          	lea    -0x1(%esi,%ebx,1),%eax
   10e06:	8d 34 13             	lea    (%ebx,%edx,1),%esi
   10e09:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   10e10:	0f b6 08             	movzbl (%eax),%ecx
   10e13:	0f b6 13             	movzbl (%ebx),%edx
   10e16:	83 c3 01             	add    $0x1,%ebx
   10e19:	83 e8 01             	sub    $0x1,%eax
   10e1c:	88 4b ff             	mov    %cl,-0x1(%ebx)
   10e1f:	88 50 01             	mov    %dl,0x1(%eax)
   10e22:	39 f3                	cmp    %esi,%ebx
   10e24:	75 ea                	jne    10e10 <itoa.part.0+0x50>
   10e26:	5b                   	pop    %ebx
   10e27:	5e                   	pop    %esi
   10e28:	5f                   	pop    %edi
   10e29:	5d                   	pop    %ebp
   10e2a:	c3                   	ret    
   10e2b:	90                   	nop
   10e2c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00010e30 <itoa>:
   10e30:	55                   	push   %ebp
   10e31:	89 e5                	mov    %esp,%ebp
   10e33:	8b 45 08             	mov    0x8(%ebp),%eax
   10e36:	8b 55 0c             	mov    0xc(%ebp),%edx
   10e39:	85 c0                	test   %eax,%eax
   10e3b:	74 03                	je     10e40 <itoa+0x10>
   10e3d:	5d                   	pop    %ebp
   10e3e:	eb 80                	jmp    10dc0 <itoa.part.0>
   10e40:	c6 02 30             	movb   $0x30,(%edx)
   10e43:	5d                   	pop    %ebp
   10e44:	c3                   	ret    
   10e45:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   10e49:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00010e50 <zeos_show_clock>:
   10e50:	a1 48 23 01 00       	mov    0x12348,%eax
   10e55:	83 c0 01             	add    $0x1,%eax
   10e58:	83 f8 12             	cmp    $0x12,%eax
   10e5b:	a3 48 23 01 00       	mov    %eax,0x12348
   10e60:	74 06                	je     10e68 <zeos_show_clock+0x18>
   10e62:	c3                   	ret    
   10e63:	90                   	nop
   10e64:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   10e68:	55                   	push   %ebp
   10e69:	89 e5                	mov    %esp,%ebp
   10e6b:	53                   	push   %ebx
   10e6c:	83 ec 10             	sub    $0x10,%esp
   10e6f:	a1 44 23 01 00       	mov    0x12344,%eax
   10e74:	c7 05 48 23 01 00 00 	movl   $0x0,0x12348
   10e7b:	00 00 00 
   10e7e:	83 c0 01             	add    $0x1,%eax
   10e81:	83 f8 3c             	cmp    $0x3c,%eax
   10e84:	a3 44 23 01 00       	mov    %eax,0x12344
   10e89:	0f 84 d9 00 00 00    	je     10f68 <zeos_show_clock+0x118>
   10e8f:	a1 40 23 01 00       	mov    0x12340,%eax
   10e94:	85 c0                	test   %eax,%eax
   10e96:	0f 85 bc 00 00 00    	jne    10f58 <zeos_show_clock+0x108>
   10e9c:	c6 45 f4 30          	movb   $0x30,-0xc(%ebp)
   10ea0:	a1 44 23 01 00       	mov    0x12344,%eax
   10ea5:	31 c9                	xor    %ecx,%ecx
   10ea7:	ba 30 02 00 00       	mov    $0x230,%edx
   10eac:	85 c0                	test   %eax,%eax
   10eae:	0f 85 84 00 00 00    	jne    10f38 <zeos_show_clock+0xe8>
   10eb4:	83 3d 40 23 01 00 09 	cmpl   $0x9,0x12340
   10ebb:	7f 43                	jg     10f00 <zeos_show_clock+0xb0>
   10ebd:	b8 8c 80 0b 00       	mov    $0xb808c,%eax
   10ec2:	66 c7 00 30 02       	movw   $0x230,(%eax)
   10ec7:	0f b6 45 f4          	movzbl -0xc(%ebp),%eax
   10ecb:	bb 8e 80 0b 00       	mov    $0xb808e,%ebx
   10ed0:	80 cc 02             	or     $0x2,%ah
   10ed3:	66 89 03             	mov    %ax,(%ebx)
   10ed6:	b8 90 80 0b 00       	mov    $0xb8090,%eax
   10edb:	66 c7 00 3a 02       	movw   $0x23a,(%eax)
   10ee0:	83 f9 09             	cmp    $0x9,%ecx
   10ee3:	7e 3b                	jle    10f20 <zeos_show_clock+0xd0>
   10ee5:	b0 92                	mov    $0x92,%al
   10ee7:	66 89 10             	mov    %dx,(%eax)
   10eea:	0f b6 45 f9          	movzbl -0x7(%ebp),%eax
   10eee:	ba 94 80 0b 00       	mov    $0xb8094,%edx
   10ef3:	80 cc 02             	or     $0x2,%ah
   10ef6:	66 89 02             	mov    %ax,(%edx)
   10ef9:	83 c4 10             	add    $0x10,%esp
   10efc:	5b                   	pop    %ebx
   10efd:	5d                   	pop    %ebp
   10efe:	c3                   	ret    
   10eff:	90                   	nop
   10f00:	0f b6 45 f4          	movzbl -0xc(%ebp),%eax
   10f04:	bb 8c 80 0b 00       	mov    $0xb808c,%ebx
   10f09:	80 cc 02             	or     $0x2,%ah
   10f0c:	66 89 03             	mov    %ax,(%ebx)
   10f0f:	0f b6 45 f5          	movzbl -0xb(%ebp),%eax
   10f13:	b3 8e                	mov    $0x8e,%bl
   10f15:	80 cc 02             	or     $0x2,%ah
   10f18:	66 89 03             	mov    %ax,(%ebx)
   10f1b:	eb b9                	jmp    10ed6 <zeos_show_clock+0x86>
   10f1d:	8d 76 00             	lea    0x0(%esi),%esi
   10f20:	b8 92 80 0b 00       	mov    $0xb8092,%eax
   10f25:	66 c7 00 30 02       	movw   $0x230,(%eax)
   10f2a:	b0 94                	mov    $0x94,%al
   10f2c:	66 89 10             	mov    %dx,(%eax)
   10f2f:	eb c8                	jmp    10ef9 <zeos_show_clock+0xa9>
   10f31:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   10f38:	8d 55 f8             	lea    -0x8(%ebp),%edx
   10f3b:	e8 80 fe ff ff       	call   10dc0 <itoa.part.0>
   10f40:	0f b6 55 f8          	movzbl -0x8(%ebp),%edx
   10f44:	8b 0d 44 23 01 00    	mov    0x12344,%ecx
   10f4a:	80 ce 02             	or     $0x2,%dh
   10f4d:	e9 62 ff ff ff       	jmp    10eb4 <zeos_show_clock+0x64>
   10f52:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   10f58:	8d 55 f4             	lea    -0xc(%ebp),%edx
   10f5b:	e8 60 fe ff ff       	call   10dc0 <itoa.part.0>
   10f60:	e9 3b ff ff ff       	jmp    10ea0 <zeos_show_clock+0x50>
   10f65:	8d 76 00             	lea    0x0(%esi),%esi
   10f68:	a1 40 23 01 00       	mov    0x12340,%eax
   10f6d:	c7 05 44 23 01 00 00 	movl   $0x0,0x12344
   10f74:	00 00 00 
   10f77:	83 c0 01             	add    $0x1,%eax
   10f7a:	a3 40 23 01 00       	mov    %eax,0x12340
   10f7f:	e9 10 ff ff ff       	jmp    10e94 <zeos_show_clock+0x44>
   10f84:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   10f8a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00010f90 <divide_error_routine>:
   10f90:	55                   	push   %ebp
   10f91:	89 e5                	mov    %esp,%ebp
   10f93:	83 ec 14             	sub    $0x14,%esp
   10f96:	68 43 16 01 00       	push   $0x11643
   10f9b:	e8 e0 f3 ff ff       	call   10380 <printk>
   10fa0:	83 c4 10             	add    $0x10,%esp
   10fa3:	eb fe                	jmp    10fa3 <divide_error_routine+0x13>
   10fa5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   10fa9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00010fb0 <debug_routine>:
   10fb0:	55                   	push   %ebp
   10fb1:	89 e5                	mov    %esp,%ebp
   10fb3:	83 ec 14             	sub    $0x14,%esp
   10fb6:	68 58 16 01 00       	push   $0x11658
   10fbb:	e8 c0 f3 ff ff       	call   10380 <printk>
   10fc0:	83 c4 10             	add    $0x10,%esp
   10fc3:	eb fe                	jmp    10fc3 <debug_routine+0x13>
   10fc5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   10fc9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00010fd0 <nm1_routine>:
   10fd0:	55                   	push   %ebp
   10fd1:	89 e5                	mov    %esp,%ebp
   10fd3:	83 ec 14             	sub    $0x14,%esp
   10fd6:	68 66 16 01 00       	push   $0x11666
   10fdb:	e8 a0 f3 ff ff       	call   10380 <printk>
   10fe0:	83 c4 10             	add    $0x10,%esp
   10fe3:	eb fe                	jmp    10fe3 <nm1_routine+0x13>
   10fe5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   10fe9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00010ff0 <breakpoint_routine>:
   10ff0:	55                   	push   %ebp
   10ff1:	89 e5                	mov    %esp,%ebp
   10ff3:	83 ec 14             	sub    $0x14,%esp
   10ff6:	68 72 16 01 00       	push   $0x11672
   10ffb:	e8 80 f3 ff ff       	call   10380 <printk>
   11000:	83 c4 10             	add    $0x10,%esp
   11003:	eb fe                	jmp    11003 <breakpoint_routine+0x13>
   11005:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   11009:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00011010 <overflow_routine>:
   11010:	55                   	push   %ebp
   11011:	89 e5                	mov    %esp,%ebp
   11013:	83 ec 14             	sub    $0x14,%esp
   11016:	68 85 16 01 00       	push   $0x11685
   1101b:	e8 60 f3 ff ff       	call   10380 <printk>
   11020:	83 c4 10             	add    $0x10,%esp
   11023:	eb fe                	jmp    11023 <overflow_routine+0x13>
   11025:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   11029:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00011030 <bounds_check_routine>:
   11030:	55                   	push   %ebp
   11031:	89 e5                	mov    %esp,%ebp
   11033:	83 ec 14             	sub    $0x14,%esp
   11036:	68 96 16 01 00       	push   $0x11696
   1103b:	e8 40 f3 ff ff       	call   10380 <printk>
   11040:	83 c4 10             	add    $0x10,%esp
   11043:	eb fe                	jmp    11043 <bounds_check_routine+0x13>
   11045:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   11049:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00011050 <invalid_opcode_routine>:
   11050:	55                   	push   %ebp
   11051:	89 e5                	mov    %esp,%ebp
   11053:	83 ec 14             	sub    $0x14,%esp
   11056:	68 ab 16 01 00       	push   $0x116ab
   1105b:	e8 20 f3 ff ff       	call   10380 <printk>
   11060:	83 c4 10             	add    $0x10,%esp
   11063:	eb fe                	jmp    11063 <invalid_opcode_routine+0x13>
   11065:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   11069:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00011070 <device_not_available_routine>:
   11070:	55                   	push   %ebp
   11071:	89 e5                	mov    %esp,%ebp
   11073:	83 ec 14             	sub    $0x14,%esp
   11076:	68 c2 16 01 00       	push   $0x116c2
   1107b:	e8 00 f3 ff ff       	call   10380 <printk>
   11080:	83 c4 10             	add    $0x10,%esp
   11083:	eb fe                	jmp    11083 <device_not_available_routine+0x13>
   11085:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   11089:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00011090 <double_fault_routine>:
   11090:	55                   	push   %ebp
   11091:	89 e5                	mov    %esp,%ebp
   11093:	83 ec 14             	sub    $0x14,%esp
   11096:	68 df 16 01 00       	push   $0x116df
   1109b:	e8 e0 f2 ff ff       	call   10380 <printk>
   110a0:	83 c4 10             	add    $0x10,%esp
   110a3:	eb fe                	jmp    110a3 <double_fault_routine+0x13>
   110a5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   110a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000110b0 <coprocessor_segment_overrun_routine>:
   110b0:	55                   	push   %ebp
   110b1:	89 e5                	mov    %esp,%ebp
   110b3:	83 ec 14             	sub    $0x14,%esp
   110b6:	68 7c 22 01 00       	push   $0x1227c
   110bb:	e8 c0 f2 ff ff       	call   10380 <printk>
   110c0:	83 c4 10             	add    $0x10,%esp
   110c3:	eb fe                	jmp    110c3 <coprocessor_segment_overrun_routine+0x13>
   110c5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   110c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000110d0 <invalid_tss_routine>:
   110d0:	55                   	push   %ebp
   110d1:	89 e5                	mov    %esp,%ebp
   110d3:	83 ec 14             	sub    $0x14,%esp
   110d6:	68 ee 16 01 00       	push   $0x116ee
   110db:	e8 a0 f2 ff ff       	call   10380 <printk>
   110e0:	83 c4 10             	add    $0x10,%esp
   110e3:	eb fe                	jmp    110e3 <invalid_tss_routine+0x13>
   110e5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   110e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000110f0 <segment_not_present_routine>:
   110f0:	55                   	push   %ebp
   110f1:	89 e5                	mov    %esp,%ebp
   110f3:	83 ec 14             	sub    $0x14,%esp
   110f6:	68 02 17 01 00       	push   $0x11702
   110fb:	e8 80 f2 ff ff       	call   10380 <printk>
   11100:	83 c4 10             	add    $0x10,%esp
   11103:	eb fe                	jmp    11103 <segment_not_present_routine+0x13>
   11105:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   11109:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00011110 <stack_exception_routine>:
   11110:	55                   	push   %ebp
   11111:	89 e5                	mov    %esp,%ebp
   11113:	83 ec 14             	sub    $0x14,%esp
   11116:	68 1e 17 01 00       	push   $0x1171e
   1111b:	e8 60 f2 ff ff       	call   10380 <printk>
   11120:	83 c4 10             	add    $0x10,%esp
   11123:	eb fe                	jmp    11123 <stack_exception_routine+0x13>
   11125:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   11129:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00011130 <general_protection_routine>:
   11130:	55                   	push   %ebp
   11131:	89 e5                	mov    %esp,%ebp
   11133:	83 ec 14             	sub    $0x14,%esp
   11136:	68 36 17 01 00       	push   $0x11736
   1113b:	e8 40 f2 ff ff       	call   10380 <printk>
   11140:	83 c4 10             	add    $0x10,%esp
   11143:	eb fe                	jmp    11143 <general_protection_routine+0x13>
   11145:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   11149:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00011150 <page_fault_routine>:
   11150:	55                   	push   %ebp
   11151:	89 e5                	mov    %esp,%ebp
   11153:	83 ec 14             	sub    $0x14,%esp
   11156:	68 51 17 01 00       	push   $0x11751
   1115b:	e8 20 f2 ff ff       	call   10380 <printk>
   11160:	83 c4 10             	add    $0x10,%esp
   11163:	eb fe                	jmp    11163 <page_fault_routine+0x13>
   11165:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   11169:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00011170 <intel_reserved_routine>:
   11170:	55                   	push   %ebp
   11171:	89 e5                	mov    %esp,%ebp
   11173:	83 ec 14             	sub    $0x14,%esp
   11176:	68 5e 17 01 00       	push   $0x1175e
   1117b:	e8 00 f2 ff ff       	call   10380 <printk>
   11180:	83 c4 10             	add    $0x10,%esp
   11183:	eb fe                	jmp    11183 <intel_reserved_routine+0x13>
   11185:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   11189:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00011190 <floating_point_error_routine>:
   11190:	55                   	push   %ebp
   11191:	89 e5                	mov    %esp,%ebp
   11193:	83 ec 14             	sub    $0x14,%esp
   11196:	68 75 17 01 00       	push   $0x11775
   1119b:	e8 e0 f1 ff ff       	call   10380 <printk>
   111a0:	83 c4 10             	add    $0x10,%esp
   111a3:	eb fe                	jmp    111a3 <floating_point_error_routine+0x13>
   111a5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   111a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000111b0 <alignment_check_routine>:
   111b0:	55                   	push   %ebp
   111b1:	89 e5                	mov    %esp,%ebp
   111b3:	83 ec 14             	sub    $0x14,%esp
   111b6:	68 8c 17 01 00       	push   $0x1178c
   111bb:	e8 c0 f1 ff ff       	call   10380 <printk>
   111c0:	83 c4 10             	add    $0x10,%esp
   111c3:	eb fe                	jmp    111c3 <alignment_check_routine+0x13>
   111c5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   111c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000111d0 <set_handlers>:
   111d0:	55                   	push   %ebp
   111d1:	89 e5                	mov    %esp,%ebp
   111d3:	83 ec 0c             	sub    $0xc,%esp
   111d6:	6a 00                	push   $0x0
   111d8:	68 0a 13 01 00       	push   $0x1130a
   111dd:	6a 00                	push   $0x0
   111df:	e8 1c ef ff ff       	call   10100 <setInterruptHandler>
   111e4:	83 c4 0c             	add    $0xc,%esp
   111e7:	6a 00                	push   $0x0
   111e9:	68 33 13 01 00       	push   $0x11333
   111ee:	6a 01                	push   $0x1
   111f0:	e8 0b ef ff ff       	call   10100 <setInterruptHandler>
   111f5:	83 c4 0c             	add    $0xc,%esp
   111f8:	6a 00                	push   $0x0
   111fa:	68 5c 13 01 00       	push   $0x1135c
   111ff:	6a 02                	push   $0x2
   11201:	e8 fa ee ff ff       	call   10100 <setInterruptHandler>
   11206:	83 c4 0c             	add    $0xc,%esp
   11209:	6a 00                	push   $0x0
   1120b:	68 85 13 01 00       	push   $0x11385
   11210:	6a 03                	push   $0x3
   11212:	e8 e9 ee ff ff       	call   10100 <setInterruptHandler>
   11217:	83 c4 0c             	add    $0xc,%esp
   1121a:	6a 00                	push   $0x0
   1121c:	68 ae 13 01 00       	push   $0x113ae
   11221:	6a 04                	push   $0x4
   11223:	e8 d8 ee ff ff       	call   10100 <setInterruptHandler>
   11228:	83 c4 0c             	add    $0xc,%esp
   1122b:	6a 00                	push   $0x0
   1122d:	68 d7 13 01 00       	push   $0x113d7
   11232:	6a 05                	push   $0x5
   11234:	e8 c7 ee ff ff       	call   10100 <setInterruptHandler>
   11239:	83 c4 0c             	add    $0xc,%esp
   1123c:	6a 00                	push   $0x0
   1123e:	68 00 14 01 00       	push   $0x11400
   11243:	6a 06                	push   $0x6
   11245:	e8 b6 ee ff ff       	call   10100 <setInterruptHandler>
   1124a:	83 c4 0c             	add    $0xc,%esp
   1124d:	6a 00                	push   $0x0
   1124f:	68 29 14 01 00       	push   $0x11429
   11254:	6a 07                	push   $0x7
   11256:	e8 a5 ee ff ff       	call   10100 <setInterruptHandler>
   1125b:	83 c4 0c             	add    $0xc,%esp
   1125e:	6a 00                	push   $0x0
   11260:	68 52 14 01 00       	push   $0x11452
   11265:	6a 08                	push   $0x8
   11267:	e8 94 ee ff ff       	call   10100 <setInterruptHandler>
   1126c:	83 c4 0c             	add    $0xc,%esp
   1126f:	6a 00                	push   $0x0
   11271:	68 7b 14 01 00       	push   $0x1147b
   11276:	6a 09                	push   $0x9
   11278:	e8 83 ee ff ff       	call   10100 <setInterruptHandler>
   1127d:	83 c4 0c             	add    $0xc,%esp
   11280:	6a 00                	push   $0x0
   11282:	68 a4 14 01 00       	push   $0x114a4
   11287:	6a 0a                	push   $0xa
   11289:	e8 72 ee ff ff       	call   10100 <setInterruptHandler>
   1128e:	83 c4 0c             	add    $0xc,%esp
   11291:	6a 00                	push   $0x0
   11293:	68 cd 14 01 00       	push   $0x114cd
   11298:	6a 0b                	push   $0xb
   1129a:	e8 61 ee ff ff       	call   10100 <setInterruptHandler>
   1129f:	83 c4 0c             	add    $0xc,%esp
   112a2:	6a 00                	push   $0x0
   112a4:	68 f6 14 01 00       	push   $0x114f6
   112a9:	6a 0c                	push   $0xc
   112ab:	e8 50 ee ff ff       	call   10100 <setInterruptHandler>
   112b0:	83 c4 0c             	add    $0xc,%esp
   112b3:	6a 00                	push   $0x0
   112b5:	68 1f 15 01 00       	push   $0x1151f
   112ba:	6a 0d                	push   $0xd
   112bc:	e8 3f ee ff ff       	call   10100 <setInterruptHandler>
   112c1:	83 c4 0c             	add    $0xc,%esp
   112c4:	6a 00                	push   $0x0
   112c6:	68 48 15 01 00       	push   $0x11548
   112cb:	6a 0e                	push   $0xe
   112cd:	e8 2e ee ff ff       	call   10100 <setInterruptHandler>
   112d2:	83 c4 0c             	add    $0xc,%esp
   112d5:	6a 00                	push   $0x0
   112d7:	68 71 15 01 00       	push   $0x11571
   112dc:	6a 0f                	push   $0xf
   112de:	e8 1d ee ff ff       	call   10100 <setInterruptHandler>
   112e3:	83 c4 0c             	add    $0xc,%esp
   112e6:	6a 00                	push   $0x0
   112e8:	68 9a 15 01 00       	push   $0x1159a
   112ed:	6a 10                	push   $0x10
   112ef:	e8 0c ee ff ff       	call   10100 <setInterruptHandler>
   112f4:	83 c4 0c             	add    $0xc,%esp
   112f7:	6a 00                	push   $0x0
   112f9:	68 c3 15 01 00       	push   $0x115c3
   112fe:	6a 11                	push   $0x11
   11300:	e8 fb ed ff ff       	call   10100 <setInterruptHandler>
   11305:	83 c4 10             	add    $0x10,%esp
   11308:	c9                   	leave  
   11309:	c3                   	ret    

0001130a <divide_error_handler>:
   1130a:	0f a8                	push   %gs
   1130c:	0f a0                	push   %fs
   1130e:	06                   	push   %es
   1130f:	1e                   	push   %ds
   11310:	50                   	push   %eax
   11311:	55                   	push   %ebp
   11312:	57                   	push   %edi
   11313:	56                   	push   %esi
   11314:	52                   	push   %edx
   11315:	51                   	push   %ecx
   11316:	53                   	push   %ebx
   11317:	ba 18 00 00 00       	mov    $0x18,%edx
   1131c:	8e da                	mov    %edx,%ds
   1131e:	8e c2                	mov    %edx,%es
   11320:	e8 6b fc ff ff       	call   10f90 <divide_error_routine>
   11325:	5b                   	pop    %ebx
   11326:	59                   	pop    %ecx
   11327:	5a                   	pop    %edx
   11328:	5e                   	pop    %esi
   11329:	5f                   	pop    %edi
   1132a:	5d                   	pop    %ebp
   1132b:	58                   	pop    %eax
   1132c:	1f                   	pop    %ds
   1132d:	07                   	pop    %es
   1132e:	0f a1                	pop    %fs
   11330:	0f a9                	pop    %gs
   11332:	cf                   	iret   

00011333 <debug_handler>:
   11333:	0f a8                	push   %gs
   11335:	0f a0                	push   %fs
   11337:	06                   	push   %es
   11338:	1e                   	push   %ds
   11339:	50                   	push   %eax
   1133a:	55                   	push   %ebp
   1133b:	57                   	push   %edi
   1133c:	56                   	push   %esi
   1133d:	52                   	push   %edx
   1133e:	51                   	push   %ecx
   1133f:	53                   	push   %ebx
   11340:	ba 18 00 00 00       	mov    $0x18,%edx
   11345:	8e da                	mov    %edx,%ds
   11347:	8e c2                	mov    %edx,%es
   11349:	e8 62 fc ff ff       	call   10fb0 <debug_routine>
   1134e:	5b                   	pop    %ebx
   1134f:	59                   	pop    %ecx
   11350:	5a                   	pop    %edx
   11351:	5e                   	pop    %esi
   11352:	5f                   	pop    %edi
   11353:	5d                   	pop    %ebp
   11354:	58                   	pop    %eax
   11355:	1f                   	pop    %ds
   11356:	07                   	pop    %es
   11357:	0f a1                	pop    %fs
   11359:	0f a9                	pop    %gs
   1135b:	cf                   	iret   

0001135c <nm1_handler>:
   1135c:	0f a8                	push   %gs
   1135e:	0f a0                	push   %fs
   11360:	06                   	push   %es
   11361:	1e                   	push   %ds
   11362:	50                   	push   %eax
   11363:	55                   	push   %ebp
   11364:	57                   	push   %edi
   11365:	56                   	push   %esi
   11366:	52                   	push   %edx
   11367:	51                   	push   %ecx
   11368:	53                   	push   %ebx
   11369:	ba 18 00 00 00       	mov    $0x18,%edx
   1136e:	8e da                	mov    %edx,%ds
   11370:	8e c2                	mov    %edx,%es
   11372:	e8 59 fc ff ff       	call   10fd0 <nm1_routine>
   11377:	5b                   	pop    %ebx
   11378:	59                   	pop    %ecx
   11379:	5a                   	pop    %edx
   1137a:	5e                   	pop    %esi
   1137b:	5f                   	pop    %edi
   1137c:	5d                   	pop    %ebp
   1137d:	58                   	pop    %eax
   1137e:	1f                   	pop    %ds
   1137f:	07                   	pop    %es
   11380:	0f a1                	pop    %fs
   11382:	0f a9                	pop    %gs
   11384:	cf                   	iret   

00011385 <breakpoint_handler>:
   11385:	0f a8                	push   %gs
   11387:	0f a0                	push   %fs
   11389:	06                   	push   %es
   1138a:	1e                   	push   %ds
   1138b:	50                   	push   %eax
   1138c:	55                   	push   %ebp
   1138d:	57                   	push   %edi
   1138e:	56                   	push   %esi
   1138f:	52                   	push   %edx
   11390:	51                   	push   %ecx
   11391:	53                   	push   %ebx
   11392:	ba 18 00 00 00       	mov    $0x18,%edx
   11397:	8e da                	mov    %edx,%ds
   11399:	8e c2                	mov    %edx,%es
   1139b:	e8 50 fc ff ff       	call   10ff0 <breakpoint_routine>
   113a0:	5b                   	pop    %ebx
   113a1:	59                   	pop    %ecx
   113a2:	5a                   	pop    %edx
   113a3:	5e                   	pop    %esi
   113a4:	5f                   	pop    %edi
   113a5:	5d                   	pop    %ebp
   113a6:	58                   	pop    %eax
   113a7:	1f                   	pop    %ds
   113a8:	07                   	pop    %es
   113a9:	0f a1                	pop    %fs
   113ab:	0f a9                	pop    %gs
   113ad:	cf                   	iret   

000113ae <overflow_handler>:
   113ae:	0f a8                	push   %gs
   113b0:	0f a0                	push   %fs
   113b2:	06                   	push   %es
   113b3:	1e                   	push   %ds
   113b4:	50                   	push   %eax
   113b5:	55                   	push   %ebp
   113b6:	57                   	push   %edi
   113b7:	56                   	push   %esi
   113b8:	52                   	push   %edx
   113b9:	51                   	push   %ecx
   113ba:	53                   	push   %ebx
   113bb:	ba 18 00 00 00       	mov    $0x18,%edx
   113c0:	8e da                	mov    %edx,%ds
   113c2:	8e c2                	mov    %edx,%es
   113c4:	e8 47 fc ff ff       	call   11010 <overflow_routine>
   113c9:	5b                   	pop    %ebx
   113ca:	59                   	pop    %ecx
   113cb:	5a                   	pop    %edx
   113cc:	5e                   	pop    %esi
   113cd:	5f                   	pop    %edi
   113ce:	5d                   	pop    %ebp
   113cf:	58                   	pop    %eax
   113d0:	1f                   	pop    %ds
   113d1:	07                   	pop    %es
   113d2:	0f a1                	pop    %fs
   113d4:	0f a9                	pop    %gs
   113d6:	cf                   	iret   

000113d7 <bounds_check_handler>:
   113d7:	0f a8                	push   %gs
   113d9:	0f a0                	push   %fs
   113db:	06                   	push   %es
   113dc:	1e                   	push   %ds
   113dd:	50                   	push   %eax
   113de:	55                   	push   %ebp
   113df:	57                   	push   %edi
   113e0:	56                   	push   %esi
   113e1:	52                   	push   %edx
   113e2:	51                   	push   %ecx
   113e3:	53                   	push   %ebx
   113e4:	ba 18 00 00 00       	mov    $0x18,%edx
   113e9:	8e da                	mov    %edx,%ds
   113eb:	8e c2                	mov    %edx,%es
   113ed:	e8 3e fc ff ff       	call   11030 <bounds_check_routine>
   113f2:	5b                   	pop    %ebx
   113f3:	59                   	pop    %ecx
   113f4:	5a                   	pop    %edx
   113f5:	5e                   	pop    %esi
   113f6:	5f                   	pop    %edi
   113f7:	5d                   	pop    %ebp
   113f8:	58                   	pop    %eax
   113f9:	1f                   	pop    %ds
   113fa:	07                   	pop    %es
   113fb:	0f a1                	pop    %fs
   113fd:	0f a9                	pop    %gs
   113ff:	cf                   	iret   

00011400 <invalid_opcode_handler>:
   11400:	0f a8                	push   %gs
   11402:	0f a0                	push   %fs
   11404:	06                   	push   %es
   11405:	1e                   	push   %ds
   11406:	50                   	push   %eax
   11407:	55                   	push   %ebp
   11408:	57                   	push   %edi
   11409:	56                   	push   %esi
   1140a:	52                   	push   %edx
   1140b:	51                   	push   %ecx
   1140c:	53                   	push   %ebx
   1140d:	ba 18 00 00 00       	mov    $0x18,%edx
   11412:	8e da                	mov    %edx,%ds
   11414:	8e c2                	mov    %edx,%es
   11416:	e8 35 fc ff ff       	call   11050 <invalid_opcode_routine>
   1141b:	5b                   	pop    %ebx
   1141c:	59                   	pop    %ecx
   1141d:	5a                   	pop    %edx
   1141e:	5e                   	pop    %esi
   1141f:	5f                   	pop    %edi
   11420:	5d                   	pop    %ebp
   11421:	58                   	pop    %eax
   11422:	1f                   	pop    %ds
   11423:	07                   	pop    %es
   11424:	0f a1                	pop    %fs
   11426:	0f a9                	pop    %gs
   11428:	cf                   	iret   

00011429 <device_not_available_handler>:
   11429:	0f a8                	push   %gs
   1142b:	0f a0                	push   %fs
   1142d:	06                   	push   %es
   1142e:	1e                   	push   %ds
   1142f:	50                   	push   %eax
   11430:	55                   	push   %ebp
   11431:	57                   	push   %edi
   11432:	56                   	push   %esi
   11433:	52                   	push   %edx
   11434:	51                   	push   %ecx
   11435:	53                   	push   %ebx
   11436:	ba 18 00 00 00       	mov    $0x18,%edx
   1143b:	8e da                	mov    %edx,%ds
   1143d:	8e c2                	mov    %edx,%es
   1143f:	e8 2c fc ff ff       	call   11070 <device_not_available_routine>
   11444:	5b                   	pop    %ebx
   11445:	59                   	pop    %ecx
   11446:	5a                   	pop    %edx
   11447:	5e                   	pop    %esi
   11448:	5f                   	pop    %edi
   11449:	5d                   	pop    %ebp
   1144a:	58                   	pop    %eax
   1144b:	1f                   	pop    %ds
   1144c:	07                   	pop    %es
   1144d:	0f a1                	pop    %fs
   1144f:	0f a9                	pop    %gs
   11451:	cf                   	iret   

00011452 <double_fault_handler>:
   11452:	0f a8                	push   %gs
   11454:	0f a0                	push   %fs
   11456:	06                   	push   %es
   11457:	1e                   	push   %ds
   11458:	50                   	push   %eax
   11459:	55                   	push   %ebp
   1145a:	57                   	push   %edi
   1145b:	56                   	push   %esi
   1145c:	52                   	push   %edx
   1145d:	51                   	push   %ecx
   1145e:	53                   	push   %ebx
   1145f:	ba 18 00 00 00       	mov    $0x18,%edx
   11464:	8e da                	mov    %edx,%ds
   11466:	8e c2                	mov    %edx,%es
   11468:	e8 23 fc ff ff       	call   11090 <double_fault_routine>
   1146d:	5b                   	pop    %ebx
   1146e:	59                   	pop    %ecx
   1146f:	5a                   	pop    %edx
   11470:	5e                   	pop    %esi
   11471:	5f                   	pop    %edi
   11472:	5d                   	pop    %ebp
   11473:	58                   	pop    %eax
   11474:	1f                   	pop    %ds
   11475:	07                   	pop    %es
   11476:	0f a1                	pop    %fs
   11478:	0f a9                	pop    %gs
   1147a:	cf                   	iret   

0001147b <coprocessor_segment_overrun_handler>:
   1147b:	0f a8                	push   %gs
   1147d:	0f a0                	push   %fs
   1147f:	06                   	push   %es
   11480:	1e                   	push   %ds
   11481:	50                   	push   %eax
   11482:	55                   	push   %ebp
   11483:	57                   	push   %edi
   11484:	56                   	push   %esi
   11485:	52                   	push   %edx
   11486:	51                   	push   %ecx
   11487:	53                   	push   %ebx
   11488:	ba 18 00 00 00       	mov    $0x18,%edx
   1148d:	8e da                	mov    %edx,%ds
   1148f:	8e c2                	mov    %edx,%es
   11491:	e8 1a fc ff ff       	call   110b0 <coprocessor_segment_overrun_routine>
   11496:	5b                   	pop    %ebx
   11497:	59                   	pop    %ecx
   11498:	5a                   	pop    %edx
   11499:	5e                   	pop    %esi
   1149a:	5f                   	pop    %edi
   1149b:	5d                   	pop    %ebp
   1149c:	58                   	pop    %eax
   1149d:	1f                   	pop    %ds
   1149e:	07                   	pop    %es
   1149f:	0f a1                	pop    %fs
   114a1:	0f a9                	pop    %gs
   114a3:	cf                   	iret   

000114a4 <invalid_tss_handler>:
   114a4:	0f a8                	push   %gs
   114a6:	0f a0                	push   %fs
   114a8:	06                   	push   %es
   114a9:	1e                   	push   %ds
   114aa:	50                   	push   %eax
   114ab:	55                   	push   %ebp
   114ac:	57                   	push   %edi
   114ad:	56                   	push   %esi
   114ae:	52                   	push   %edx
   114af:	51                   	push   %ecx
   114b0:	53                   	push   %ebx
   114b1:	ba 18 00 00 00       	mov    $0x18,%edx
   114b6:	8e da                	mov    %edx,%ds
   114b8:	8e c2                	mov    %edx,%es
   114ba:	e8 11 fc ff ff       	call   110d0 <invalid_tss_routine>
   114bf:	5b                   	pop    %ebx
   114c0:	59                   	pop    %ecx
   114c1:	5a                   	pop    %edx
   114c2:	5e                   	pop    %esi
   114c3:	5f                   	pop    %edi
   114c4:	5d                   	pop    %ebp
   114c5:	58                   	pop    %eax
   114c6:	1f                   	pop    %ds
   114c7:	07                   	pop    %es
   114c8:	0f a1                	pop    %fs
   114ca:	0f a9                	pop    %gs
   114cc:	cf                   	iret   

000114cd <segment_not_present_handler>:
   114cd:	0f a8                	push   %gs
   114cf:	0f a0                	push   %fs
   114d1:	06                   	push   %es
   114d2:	1e                   	push   %ds
   114d3:	50                   	push   %eax
   114d4:	55                   	push   %ebp
   114d5:	57                   	push   %edi
   114d6:	56                   	push   %esi
   114d7:	52                   	push   %edx
   114d8:	51                   	push   %ecx
   114d9:	53                   	push   %ebx
   114da:	ba 18 00 00 00       	mov    $0x18,%edx
   114df:	8e da                	mov    %edx,%ds
   114e1:	8e c2                	mov    %edx,%es
   114e3:	e8 08 fc ff ff       	call   110f0 <segment_not_present_routine>
   114e8:	5b                   	pop    %ebx
   114e9:	59                   	pop    %ecx
   114ea:	5a                   	pop    %edx
   114eb:	5e                   	pop    %esi
   114ec:	5f                   	pop    %edi
   114ed:	5d                   	pop    %ebp
   114ee:	58                   	pop    %eax
   114ef:	1f                   	pop    %ds
   114f0:	07                   	pop    %es
   114f1:	0f a1                	pop    %fs
   114f3:	0f a9                	pop    %gs
   114f5:	cf                   	iret   

000114f6 <stack_exception_handler>:
   114f6:	0f a8                	push   %gs
   114f8:	0f a0                	push   %fs
   114fa:	06                   	push   %es
   114fb:	1e                   	push   %ds
   114fc:	50                   	push   %eax
   114fd:	55                   	push   %ebp
   114fe:	57                   	push   %edi
   114ff:	56                   	push   %esi
   11500:	52                   	push   %edx
   11501:	51                   	push   %ecx
   11502:	53                   	push   %ebx
   11503:	ba 18 00 00 00       	mov    $0x18,%edx
   11508:	8e da                	mov    %edx,%ds
   1150a:	8e c2                	mov    %edx,%es
   1150c:	e8 ff fb ff ff       	call   11110 <stack_exception_routine>
   11511:	5b                   	pop    %ebx
   11512:	59                   	pop    %ecx
   11513:	5a                   	pop    %edx
   11514:	5e                   	pop    %esi
   11515:	5f                   	pop    %edi
   11516:	5d                   	pop    %ebp
   11517:	58                   	pop    %eax
   11518:	1f                   	pop    %ds
   11519:	07                   	pop    %es
   1151a:	0f a1                	pop    %fs
   1151c:	0f a9                	pop    %gs
   1151e:	cf                   	iret   

0001151f <general_protection_handler>:
   1151f:	0f a8                	push   %gs
   11521:	0f a0                	push   %fs
   11523:	06                   	push   %es
   11524:	1e                   	push   %ds
   11525:	50                   	push   %eax
   11526:	55                   	push   %ebp
   11527:	57                   	push   %edi
   11528:	56                   	push   %esi
   11529:	52                   	push   %edx
   1152a:	51                   	push   %ecx
   1152b:	53                   	push   %ebx
   1152c:	ba 18 00 00 00       	mov    $0x18,%edx
   11531:	8e da                	mov    %edx,%ds
   11533:	8e c2                	mov    %edx,%es
   11535:	e8 f6 fb ff ff       	call   11130 <general_protection_routine>
   1153a:	5b                   	pop    %ebx
   1153b:	59                   	pop    %ecx
   1153c:	5a                   	pop    %edx
   1153d:	5e                   	pop    %esi
   1153e:	5f                   	pop    %edi
   1153f:	5d                   	pop    %ebp
   11540:	58                   	pop    %eax
   11541:	1f                   	pop    %ds
   11542:	07                   	pop    %es
   11543:	0f a1                	pop    %fs
   11545:	0f a9                	pop    %gs
   11547:	cf                   	iret   

00011548 <page_fault_handler>:
   11548:	0f a8                	push   %gs
   1154a:	0f a0                	push   %fs
   1154c:	06                   	push   %es
   1154d:	1e                   	push   %ds
   1154e:	50                   	push   %eax
   1154f:	55                   	push   %ebp
   11550:	57                   	push   %edi
   11551:	56                   	push   %esi
   11552:	52                   	push   %edx
   11553:	51                   	push   %ecx
   11554:	53                   	push   %ebx
   11555:	ba 18 00 00 00       	mov    $0x18,%edx
   1155a:	8e da                	mov    %edx,%ds
   1155c:	8e c2                	mov    %edx,%es
   1155e:	e8 ed fb ff ff       	call   11150 <page_fault_routine>
   11563:	5b                   	pop    %ebx
   11564:	59                   	pop    %ecx
   11565:	5a                   	pop    %edx
   11566:	5e                   	pop    %esi
   11567:	5f                   	pop    %edi
   11568:	5d                   	pop    %ebp
   11569:	58                   	pop    %eax
   1156a:	1f                   	pop    %ds
   1156b:	07                   	pop    %es
   1156c:	0f a1                	pop    %fs
   1156e:	0f a9                	pop    %gs
   11570:	cf                   	iret   

00011571 <intel_reserved_handler>:
   11571:	0f a8                	push   %gs
   11573:	0f a0                	push   %fs
   11575:	06                   	push   %es
   11576:	1e                   	push   %ds
   11577:	50                   	push   %eax
   11578:	55                   	push   %ebp
   11579:	57                   	push   %edi
   1157a:	56                   	push   %esi
   1157b:	52                   	push   %edx
   1157c:	51                   	push   %ecx
   1157d:	53                   	push   %ebx
   1157e:	ba 18 00 00 00       	mov    $0x18,%edx
   11583:	8e da                	mov    %edx,%ds
   11585:	8e c2                	mov    %edx,%es
   11587:	e8 e4 fb ff ff       	call   11170 <intel_reserved_routine>
   1158c:	5b                   	pop    %ebx
   1158d:	59                   	pop    %ecx
   1158e:	5a                   	pop    %edx
   1158f:	5e                   	pop    %esi
   11590:	5f                   	pop    %edi
   11591:	5d                   	pop    %ebp
   11592:	58                   	pop    %eax
   11593:	1f                   	pop    %ds
   11594:	07                   	pop    %es
   11595:	0f a1                	pop    %fs
   11597:	0f a9                	pop    %gs
   11599:	cf                   	iret   

0001159a <floating_point_error_handler>:
   1159a:	0f a8                	push   %gs
   1159c:	0f a0                	push   %fs
   1159e:	06                   	push   %es
   1159f:	1e                   	push   %ds
   115a0:	50                   	push   %eax
   115a1:	55                   	push   %ebp
   115a2:	57                   	push   %edi
   115a3:	56                   	push   %esi
   115a4:	52                   	push   %edx
   115a5:	51                   	push   %ecx
   115a6:	53                   	push   %ebx
   115a7:	ba 18 00 00 00       	mov    $0x18,%edx
   115ac:	8e da                	mov    %edx,%ds
   115ae:	8e c2                	mov    %edx,%es
   115b0:	e8 db fb ff ff       	call   11190 <floating_point_error_routine>
   115b5:	5b                   	pop    %ebx
   115b6:	59                   	pop    %ecx
   115b7:	5a                   	pop    %edx
   115b8:	5e                   	pop    %esi
   115b9:	5f                   	pop    %edi
   115ba:	5d                   	pop    %ebp
   115bb:	58                   	pop    %eax
   115bc:	1f                   	pop    %ds
   115bd:	07                   	pop    %es
   115be:	0f a1                	pop    %fs
   115c0:	0f a9                	pop    %gs
   115c2:	cf                   	iret   

000115c3 <alignment_check_handler>:
   115c3:	0f a8                	push   %gs
   115c5:	0f a0                	push   %fs
   115c7:	06                   	push   %es
   115c8:	1e                   	push   %ds
   115c9:	50                   	push   %eax
   115ca:	55                   	push   %ebp
   115cb:	57                   	push   %edi
   115cc:	56                   	push   %esi
   115cd:	52                   	push   %edx
   115ce:	51                   	push   %ecx
   115cf:	53                   	push   %ebx
   115d0:	ba 18 00 00 00       	mov    $0x18,%edx
   115d5:	8e da                	mov    %edx,%ds
   115d7:	8e c2                	mov    %edx,%es
   115d9:	e8 d2 fb ff ff       	call   111b0 <alignment_check_routine>
   115de:	5b                   	pop    %ebx
   115df:	59                   	pop    %ecx
   115e0:	5a                   	pop    %edx
   115e1:	5e                   	pop    %esi
   115e2:	5f                   	pop    %edi
   115e3:	5d                   	pop    %ebp
   115e4:	58                   	pop    %eax
   115e5:	1f                   	pop    %ds
   115e6:	07                   	pop    %es
   115e7:	0f a1                	pop    %fs
   115e9:	0f a9                	pop    %gs
   115eb:	cf                   	iret   
   115ec:	66 90                	xchg   %ax,%ax
   115ee:	66 90                	xchg   %ax,%ax

000115f0 <monoprocess_init_addr_space>:
   115f0:	55                   	push   %ebp
   115f1:	89 e5                	mov    %esp,%ebp
   115f3:	83 ec 14             	sub    $0x14,%esp
   115f6:	ff 35 24 23 01 00    	pushl  0x12324
   115fc:	e8 cf ef ff ff       	call   105d0 <set_user_pages>
   11601:	58                   	pop    %eax
   11602:	ff 35 24 23 01 00    	pushl  0x12324
   11608:	e8 b3 ed ff ff       	call   103c0 <get_DIR>
   1160d:	89 04 24             	mov    %eax,(%esp)
   11610:	e8 8b f0 ff ff       	call   106a0 <set_cr3>
   11615:	83 c4 10             	add    $0x10,%esp
   11618:	c9                   	leave  
   11619:	c3                   	ret    
