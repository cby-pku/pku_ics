
starget:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	f3 0f 1e fa          	endbr64 
  401004:	48 83 ec 08          	sub    $0x8,%rsp
  401008:	48 8b 05 e9 5f 00 00 	mov    0x5fe9(%rip),%rax        # 406ff8 <__gmon_start__>
  40100f:	48 85 c0             	test   %rax,%rax
  401012:	74 02                	je     401016 <_init+0x16>
  401014:	ff d0                	call   *%rax
  401016:	48 83 c4 08          	add    $0x8,%rsp
  40101a:	c3                   	ret    

Disassembly of section .plt:

0000000000401020 <.plt>:
  401020:	ff 35 e2 5f 00 00    	push   0x5fe2(%rip)        # 407008 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	f2 ff 25 e3 5f 00 00 	bnd jmp *0x5fe3(%rip)        # 407010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102d:	0f 1f 00             	nopl   (%rax)
  401030:	f3 0f 1e fa          	endbr64 
  401034:	68 00 00 00 00       	push   $0x0
  401039:	f2 e9 e1 ff ff ff    	bnd jmp 401020 <.plt>
  40103f:	90                   	nop
  401040:	f3 0f 1e fa          	endbr64 
  401044:	68 01 00 00 00       	push   $0x1
  401049:	f2 e9 d1 ff ff ff    	bnd jmp 401020 <.plt>
  40104f:	90                   	nop
  401050:	f3 0f 1e fa          	endbr64 
  401054:	68 02 00 00 00       	push   $0x2
  401059:	f2 e9 c1 ff ff ff    	bnd jmp 401020 <.plt>
  40105f:	90                   	nop
  401060:	f3 0f 1e fa          	endbr64 
  401064:	68 03 00 00 00       	push   $0x3
  401069:	f2 e9 b1 ff ff ff    	bnd jmp 401020 <.plt>
  40106f:	90                   	nop
  401070:	f3 0f 1e fa          	endbr64 
  401074:	68 04 00 00 00       	push   $0x4
  401079:	f2 e9 a1 ff ff ff    	bnd jmp 401020 <.plt>
  40107f:	90                   	nop
  401080:	f3 0f 1e fa          	endbr64 
  401084:	68 05 00 00 00       	push   $0x5
  401089:	f2 e9 91 ff ff ff    	bnd jmp 401020 <.plt>
  40108f:	90                   	nop
  401090:	f3 0f 1e fa          	endbr64 
  401094:	68 06 00 00 00       	push   $0x6
  401099:	f2 e9 81 ff ff ff    	bnd jmp 401020 <.plt>
  40109f:	90                   	nop
  4010a0:	f3 0f 1e fa          	endbr64 
  4010a4:	68 07 00 00 00       	push   $0x7
  4010a9:	f2 e9 71 ff ff ff    	bnd jmp 401020 <.plt>
  4010af:	90                   	nop
  4010b0:	f3 0f 1e fa          	endbr64 
  4010b4:	68 08 00 00 00       	push   $0x8
  4010b9:	f2 e9 61 ff ff ff    	bnd jmp 401020 <.plt>
  4010bf:	90                   	nop
  4010c0:	f3 0f 1e fa          	endbr64 
  4010c4:	68 09 00 00 00       	push   $0x9
  4010c9:	f2 e9 51 ff ff ff    	bnd jmp 401020 <.plt>
  4010cf:	90                   	nop
  4010d0:	f3 0f 1e fa          	endbr64 
  4010d4:	68 0a 00 00 00       	push   $0xa
  4010d9:	f2 e9 41 ff ff ff    	bnd jmp 401020 <.plt>
  4010df:	90                   	nop
  4010e0:	f3 0f 1e fa          	endbr64 
  4010e4:	68 0b 00 00 00       	push   $0xb
  4010e9:	f2 e9 31 ff ff ff    	bnd jmp 401020 <.plt>
  4010ef:	90                   	nop
  4010f0:	f3 0f 1e fa          	endbr64 
  4010f4:	68 0c 00 00 00       	push   $0xc
  4010f9:	f2 e9 21 ff ff ff    	bnd jmp 401020 <.plt>
  4010ff:	90                   	nop
  401100:	f3 0f 1e fa          	endbr64 
  401104:	68 0d 00 00 00       	push   $0xd
  401109:	f2 e9 11 ff ff ff    	bnd jmp 401020 <.plt>
  40110f:	90                   	nop
  401110:	f3 0f 1e fa          	endbr64 
  401114:	68 0e 00 00 00       	push   $0xe
  401119:	f2 e9 01 ff ff ff    	bnd jmp 401020 <.plt>
  40111f:	90                   	nop
  401120:	f3 0f 1e fa          	endbr64 
  401124:	68 0f 00 00 00       	push   $0xf
  401129:	f2 e9 f1 fe ff ff    	bnd jmp 401020 <.plt>
  40112f:	90                   	nop
  401130:	f3 0f 1e fa          	endbr64 
  401134:	68 10 00 00 00       	push   $0x10
  401139:	f2 e9 e1 fe ff ff    	bnd jmp 401020 <.plt>
  40113f:	90                   	nop
  401140:	f3 0f 1e fa          	endbr64 
  401144:	68 11 00 00 00       	push   $0x11
  401149:	f2 e9 d1 fe ff ff    	bnd jmp 401020 <.plt>
  40114f:	90                   	nop
  401150:	f3 0f 1e fa          	endbr64 
  401154:	68 12 00 00 00       	push   $0x12
  401159:	f2 e9 c1 fe ff ff    	bnd jmp 401020 <.plt>
  40115f:	90                   	nop
  401160:	f3 0f 1e fa          	endbr64 
  401164:	68 13 00 00 00       	push   $0x13
  401169:	f2 e9 b1 fe ff ff    	bnd jmp 401020 <.plt>
  40116f:	90                   	nop
  401170:	f3 0f 1e fa          	endbr64 
  401174:	68 14 00 00 00       	push   $0x14
  401179:	f2 e9 a1 fe ff ff    	bnd jmp 401020 <.plt>
  40117f:	90                   	nop
  401180:	f3 0f 1e fa          	endbr64 
  401184:	68 15 00 00 00       	push   $0x15
  401189:	f2 e9 91 fe ff ff    	bnd jmp 401020 <.plt>
  40118f:	90                   	nop
  401190:	f3 0f 1e fa          	endbr64 
  401194:	68 16 00 00 00       	push   $0x16
  401199:	f2 e9 81 fe ff ff    	bnd jmp 401020 <.plt>
  40119f:	90                   	nop
  4011a0:	f3 0f 1e fa          	endbr64 
  4011a4:	68 17 00 00 00       	push   $0x17
  4011a9:	f2 e9 71 fe ff ff    	bnd jmp 401020 <.plt>
  4011af:	90                   	nop
  4011b0:	f3 0f 1e fa          	endbr64 
  4011b4:	68 18 00 00 00       	push   $0x18
  4011b9:	f2 e9 61 fe ff ff    	bnd jmp 401020 <.plt>
  4011bf:	90                   	nop
  4011c0:	f3 0f 1e fa          	endbr64 
  4011c4:	68 19 00 00 00       	push   $0x19
  4011c9:	f2 e9 51 fe ff ff    	bnd jmp 401020 <.plt>
  4011cf:	90                   	nop
  4011d0:	f3 0f 1e fa          	endbr64 
  4011d4:	68 1a 00 00 00       	push   $0x1a
  4011d9:	f2 e9 41 fe ff ff    	bnd jmp 401020 <.plt>
  4011df:	90                   	nop
  4011e0:	f3 0f 1e fa          	endbr64 
  4011e4:	68 1b 00 00 00       	push   $0x1b
  4011e9:	f2 e9 31 fe ff ff    	bnd jmp 401020 <.plt>
  4011ef:	90                   	nop
  4011f0:	f3 0f 1e fa          	endbr64 
  4011f4:	68 1c 00 00 00       	push   $0x1c
  4011f9:	f2 e9 21 fe ff ff    	bnd jmp 401020 <.plt>
  4011ff:	90                   	nop
  401200:	f3 0f 1e fa          	endbr64 
  401204:	68 1d 00 00 00       	push   $0x1d
  401209:	f2 e9 11 fe ff ff    	bnd jmp 401020 <.plt>
  40120f:	90                   	nop
  401210:	f3 0f 1e fa          	endbr64 
  401214:	68 1e 00 00 00       	push   $0x1e
  401219:	f2 e9 01 fe ff ff    	bnd jmp 401020 <.plt>
  40121f:	90                   	nop
  401220:	f3 0f 1e fa          	endbr64 
  401224:	68 1f 00 00 00       	push   $0x1f
  401229:	f2 e9 f1 fd ff ff    	bnd jmp 401020 <.plt>
  40122f:	90                   	nop
  401230:	f3 0f 1e fa          	endbr64 
  401234:	68 20 00 00 00       	push   $0x20
  401239:	f2 e9 e1 fd ff ff    	bnd jmp 401020 <.plt>
  40123f:	90                   	nop
  401240:	f3 0f 1e fa          	endbr64 
  401244:	68 21 00 00 00       	push   $0x21
  401249:	f2 e9 d1 fd ff ff    	bnd jmp 401020 <.plt>
  40124f:	90                   	nop

Disassembly of section .plt.sec:

0000000000401250 <strcasecmp@plt>:
  401250:	f3 0f 1e fa          	endbr64 
  401254:	f2 ff 25 bd 5d 00 00 	bnd jmp *0x5dbd(%rip)        # 407018 <strcasecmp@GLIBC_2.2.5>
  40125b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401260 <__errno_location@plt>:
  401260:	f3 0f 1e fa          	endbr64 
  401264:	f2 ff 25 b5 5d 00 00 	bnd jmp *0x5db5(%rip)        # 407020 <__errno_location@GLIBC_2.2.5>
  40126b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401270 <srandom@plt>:
  401270:	f3 0f 1e fa          	endbr64 
  401274:	f2 ff 25 ad 5d 00 00 	bnd jmp *0x5dad(%rip)        # 407028 <srandom@GLIBC_2.2.5>
  40127b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401280 <strncpy@plt>:
  401280:	f3 0f 1e fa          	endbr64 
  401284:	f2 ff 25 a5 5d 00 00 	bnd jmp *0x5da5(%rip)        # 407030 <strncpy@GLIBC_2.2.5>
  40128b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401290 <strncmp@plt>:
  401290:	f3 0f 1e fa          	endbr64 
  401294:	f2 ff 25 9d 5d 00 00 	bnd jmp *0x5d9d(%rip)        # 407038 <strncmp@GLIBC_2.2.5>
  40129b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004012a0 <strcpy@plt>:
  4012a0:	f3 0f 1e fa          	endbr64 
  4012a4:	f2 ff 25 95 5d 00 00 	bnd jmp *0x5d95(%rip)        # 407040 <strcpy@GLIBC_2.2.5>
  4012ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004012b0 <puts@plt>:
  4012b0:	f3 0f 1e fa          	endbr64 
  4012b4:	f2 ff 25 8d 5d 00 00 	bnd jmp *0x5d8d(%rip)        # 407048 <puts@GLIBC_2.2.5>
  4012bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004012c0 <write@plt>:
  4012c0:	f3 0f 1e fa          	endbr64 
  4012c4:	f2 ff 25 85 5d 00 00 	bnd jmp *0x5d85(%rip)        # 407050 <write@GLIBC_2.2.5>
  4012cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004012d0 <mmap@plt>:
  4012d0:	f3 0f 1e fa          	endbr64 
  4012d4:	f2 ff 25 7d 5d 00 00 	bnd jmp *0x5d7d(%rip)        # 407058 <mmap@GLIBC_2.2.5>
  4012db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004012e0 <memset@plt>:
  4012e0:	f3 0f 1e fa          	endbr64 
  4012e4:	f2 ff 25 75 5d 00 00 	bnd jmp *0x5d75(%rip)        # 407060 <memset@GLIBC_2.2.5>
  4012eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004012f0 <alarm@plt>:
  4012f0:	f3 0f 1e fa          	endbr64 
  4012f4:	f2 ff 25 6d 5d 00 00 	bnd jmp *0x5d6d(%rip)        # 407068 <alarm@GLIBC_2.2.5>
  4012fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401300 <close@plt>:
  401300:	f3 0f 1e fa          	endbr64 
  401304:	f2 ff 25 65 5d 00 00 	bnd jmp *0x5d65(%rip)        # 407070 <close@GLIBC_2.2.5>
  40130b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401310 <read@plt>:
  401310:	f3 0f 1e fa          	endbr64 
  401314:	f2 ff 25 5d 5d 00 00 	bnd jmp *0x5d5d(%rip)        # 407078 <read@GLIBC_2.2.5>
  40131b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401320 <strcmp@plt>:
  401320:	f3 0f 1e fa          	endbr64 
  401324:	f2 ff 25 55 5d 00 00 	bnd jmp *0x5d55(%rip)        # 407080 <strcmp@GLIBC_2.2.5>
  40132b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401330 <signal@plt>:
  401330:	f3 0f 1e fa          	endbr64 
  401334:	f2 ff 25 4d 5d 00 00 	bnd jmp *0x5d4d(%rip)        # 407088 <signal@GLIBC_2.2.5>
  40133b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401340 <gethostbyname@plt>:
  401340:	f3 0f 1e fa          	endbr64 
  401344:	f2 ff 25 45 5d 00 00 	bnd jmp *0x5d45(%rip)        # 407090 <gethostbyname@GLIBC_2.2.5>
  40134b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401350 <__memmove_chk@plt>:
  401350:	f3 0f 1e fa          	endbr64 
  401354:	f2 ff 25 3d 5d 00 00 	bnd jmp *0x5d3d(%rip)        # 407098 <__memmove_chk@GLIBC_2.3.4>
  40135b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401360 <strtol@plt>:
  401360:	f3 0f 1e fa          	endbr64 
  401364:	f2 ff 25 35 5d 00 00 	bnd jmp *0x5d35(%rip)        # 4070a0 <strtol@GLIBC_2.2.5>
  40136b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401370 <memcpy@plt>:
  401370:	f3 0f 1e fa          	endbr64 
  401374:	f2 ff 25 2d 5d 00 00 	bnd jmp *0x5d2d(%rip)        # 4070a8 <memcpy@GLIBC_2.14>
  40137b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401380 <time@plt>:
  401380:	f3 0f 1e fa          	endbr64 
  401384:	f2 ff 25 25 5d 00 00 	bnd jmp *0x5d25(%rip)        # 4070b0 <time@GLIBC_2.2.5>
  40138b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401390 <random@plt>:
  401390:	f3 0f 1e fa          	endbr64 
  401394:	f2 ff 25 1d 5d 00 00 	bnd jmp *0x5d1d(%rip)        # 4070b8 <random@GLIBC_2.2.5>
  40139b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004013a0 <__isoc99_sscanf@plt>:
  4013a0:	f3 0f 1e fa          	endbr64 
  4013a4:	f2 ff 25 15 5d 00 00 	bnd jmp *0x5d15(%rip)        # 4070c0 <__isoc99_sscanf@GLIBC_2.7>
  4013ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004013b0 <munmap@plt>:
  4013b0:	f3 0f 1e fa          	endbr64 
  4013b4:	f2 ff 25 0d 5d 00 00 	bnd jmp *0x5d0d(%rip)        # 4070c8 <munmap@GLIBC_2.2.5>
  4013bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004013c0 <__printf_chk@plt>:
  4013c0:	f3 0f 1e fa          	endbr64 
  4013c4:	f2 ff 25 05 5d 00 00 	bnd jmp *0x5d05(%rip)        # 4070d0 <__printf_chk@GLIBC_2.3.4>
  4013cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004013d0 <fopen@plt>:
  4013d0:	f3 0f 1e fa          	endbr64 
  4013d4:	f2 ff 25 fd 5c 00 00 	bnd jmp *0x5cfd(%rip)        # 4070d8 <fopen@GLIBC_2.2.5>
  4013db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004013e0 <getopt@plt>:
  4013e0:	f3 0f 1e fa          	endbr64 
  4013e4:	f2 ff 25 f5 5c 00 00 	bnd jmp *0x5cf5(%rip)        # 4070e0 <getopt@GLIBC_2.2.5>
  4013eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004013f0 <strtoul@plt>:
  4013f0:	f3 0f 1e fa          	endbr64 
  4013f4:	f2 ff 25 ed 5c 00 00 	bnd jmp *0x5ced(%rip)        # 4070e8 <strtoul@GLIBC_2.2.5>
  4013fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401400 <gethostname@plt>:
  401400:	f3 0f 1e fa          	endbr64 
  401404:	f2 ff 25 e5 5c 00 00 	bnd jmp *0x5ce5(%rip)        # 4070f0 <gethostname@GLIBC_2.2.5>
  40140b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401410 <exit@plt>:
  401410:	f3 0f 1e fa          	endbr64 
  401414:	f2 ff 25 dd 5c 00 00 	bnd jmp *0x5cdd(%rip)        # 4070f8 <exit@GLIBC_2.2.5>
  40141b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401420 <connect@plt>:
  401420:	f3 0f 1e fa          	endbr64 
  401424:	f2 ff 25 d5 5c 00 00 	bnd jmp *0x5cd5(%rip)        # 407100 <connect@GLIBC_2.2.5>
  40142b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401430 <__fprintf_chk@plt>:
  401430:	f3 0f 1e fa          	endbr64 
  401434:	f2 ff 25 cd 5c 00 00 	bnd jmp *0x5ccd(%rip)        # 407108 <__fprintf_chk@GLIBC_2.3.4>
  40143b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401440 <getc@plt>:
  401440:	f3 0f 1e fa          	endbr64 
  401444:	f2 ff 25 c5 5c 00 00 	bnd jmp *0x5cc5(%rip)        # 407110 <getc@GLIBC_2.2.5>
  40144b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401450 <__sprintf_chk@plt>:
  401450:	f3 0f 1e fa          	endbr64 
  401454:	f2 ff 25 bd 5c 00 00 	bnd jmp *0x5cbd(%rip)        # 407118 <__sprintf_chk@GLIBC_2.3.4>
  40145b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401460 <socket@plt>:
  401460:	f3 0f 1e fa          	endbr64 
  401464:	f2 ff 25 b5 5c 00 00 	bnd jmp *0x5cb5(%rip)        # 407120 <socket@GLIBC_2.2.5>
  40146b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000401470 <_start>:
  401470:	f3 0f 1e fa          	endbr64 
  401474:	31 ed                	xor    %ebp,%ebp
  401476:	49 89 d1             	mov    %rdx,%r9
  401479:	5e                   	pop    %rsi
  40147a:	48 89 e2             	mov    %rsp,%rdx
  40147d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  401481:	50                   	push   %rax
  401482:	54                   	push   %rsp
  401483:	49 c7 c0 f0 39 40 00 	mov    $0x4039f0,%r8
  40148a:	48 c7 c1 80 39 40 00 	mov    $0x403980,%rcx
  401491:	48 c7 c7 99 17 40 00 	mov    $0x401799,%rdi
  401498:	ff 15 52 5b 00 00    	call   *0x5b52(%rip)        # 406ff0 <__libc_start_main@GLIBC_2.2.5>
  40149e:	f4                   	hlt    
  40149f:	90                   	nop

00000000004014a0 <_dl_relocate_static_pie>:
  4014a0:	f3 0f 1e fa          	endbr64 
  4014a4:	c3                   	ret    
  4014a5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4014ac:	00 00 00 
  4014af:	90                   	nop

00000000004014b0 <deregister_tm_clones>:
  4014b0:	b8 b0 74 40 00       	mov    $0x4074b0,%eax
  4014b5:	48 3d b0 74 40 00    	cmp    $0x4074b0,%rax
  4014bb:	74 13                	je     4014d0 <deregister_tm_clones+0x20>
  4014bd:	b8 00 00 00 00       	mov    $0x0,%eax
  4014c2:	48 85 c0             	test   %rax,%rax
  4014c5:	74 09                	je     4014d0 <deregister_tm_clones+0x20>
  4014c7:	bf b0 74 40 00       	mov    $0x4074b0,%edi
  4014cc:	ff e0                	jmp    *%rax
  4014ce:	66 90                	xchg   %ax,%ax
  4014d0:	c3                   	ret    
  4014d1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4014d8:	00 00 00 00 
  4014dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004014e0 <register_tm_clones>:
  4014e0:	be b0 74 40 00       	mov    $0x4074b0,%esi
  4014e5:	48 81 ee b0 74 40 00 	sub    $0x4074b0,%rsi
  4014ec:	48 89 f0             	mov    %rsi,%rax
  4014ef:	48 c1 ee 3f          	shr    $0x3f,%rsi
  4014f3:	48 c1 f8 03          	sar    $0x3,%rax
  4014f7:	48 01 c6             	add    %rax,%rsi
  4014fa:	48 d1 fe             	sar    %rsi
  4014fd:	74 11                	je     401510 <register_tm_clones+0x30>
  4014ff:	b8 00 00 00 00       	mov    $0x0,%eax
  401504:	48 85 c0             	test   %rax,%rax
  401507:	74 07                	je     401510 <register_tm_clones+0x30>
  401509:	bf b0 74 40 00       	mov    $0x4074b0,%edi
  40150e:	ff e0                	jmp    *%rax
  401510:	c3                   	ret    
  401511:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  401518:	00 00 00 00 
  40151c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401520 <__do_global_dtors_aux>:
  401520:	f3 0f 1e fa          	endbr64 
  401524:	80 3d bd 5f 00 00 00 	cmpb   $0x0,0x5fbd(%rip)        # 4074e8 <completed.8060>
  40152b:	75 13                	jne    401540 <__do_global_dtors_aux+0x20>
  40152d:	55                   	push   %rbp
  40152e:	48 89 e5             	mov    %rsp,%rbp
  401531:	e8 7a ff ff ff       	call   4014b0 <deregister_tm_clones>
  401536:	c6 05 ab 5f 00 00 01 	movb   $0x1,0x5fab(%rip)        # 4074e8 <completed.8060>
  40153d:	5d                   	pop    %rbp
  40153e:	c3                   	ret    
  40153f:	90                   	nop
  401540:	c3                   	ret    
  401541:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  401548:	00 00 00 00 
  40154c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401550 <frame_dummy>:
  401550:	f3 0f 1e fa          	endbr64 
  401554:	eb 8a                	jmp    4014e0 <register_tm_clones>

0000000000401556 <usage>:
  401556:	50                   	push   %rax
  401557:	58                   	pop    %rax
  401558:	48 83 ec 08          	sub    $0x8,%rsp
  40155c:	48 89 fa             	mov    %rdi,%rdx
  40155f:	83 3d c2 5f 00 00 00 	cmpl   $0x0,0x5fc2(%rip)        # 407528 <is_checker>
  401566:	74 50                	je     4015b8 <usage+0x62>
  401568:	48 8d 35 99 2a 00 00 	lea    0x2a99(%rip),%rsi        # 404008 <_IO_stdin_used+0x8>
  40156f:	bf 01 00 00 00       	mov    $0x1,%edi
  401574:	b8 00 00 00 00       	mov    $0x0,%eax
  401579:	e8 42 fe ff ff       	call   4013c0 <__printf_chk@plt>
  40157e:	48 8d 3d bb 2a 00 00 	lea    0x2abb(%rip),%rdi        # 404040 <_IO_stdin_used+0x40>
  401585:	e8 26 fd ff ff       	call   4012b0 <puts@plt>
  40158a:	48 8d 3d 3f 2c 00 00 	lea    0x2c3f(%rip),%rdi        # 4041d0 <_IO_stdin_used+0x1d0>
  401591:	e8 1a fd ff ff       	call   4012b0 <puts@plt>
  401596:	48 8d 3d cb 2a 00 00 	lea    0x2acb(%rip),%rdi        # 404068 <_IO_stdin_used+0x68>
  40159d:	e8 0e fd ff ff       	call   4012b0 <puts@plt>
  4015a2:	48 8d 3d 41 2c 00 00 	lea    0x2c41(%rip),%rdi        # 4041ea <_IO_stdin_used+0x1ea>
  4015a9:	e8 02 fd ff ff       	call   4012b0 <puts@plt>
  4015ae:	bf 00 00 00 00       	mov    $0x0,%edi
  4015b3:	e8 58 fe ff ff       	call   401410 <exit@plt>
  4015b8:	48 8d 35 47 2c 00 00 	lea    0x2c47(%rip),%rsi        # 404206 <_IO_stdin_used+0x206>
  4015bf:	bf 01 00 00 00       	mov    $0x1,%edi
  4015c4:	b8 00 00 00 00       	mov    $0x0,%eax
  4015c9:	e8 f2 fd ff ff       	call   4013c0 <__printf_chk@plt>
  4015ce:	48 8d 3d bb 2a 00 00 	lea    0x2abb(%rip),%rdi        # 404090 <_IO_stdin_used+0x90>
  4015d5:	e8 d6 fc ff ff       	call   4012b0 <puts@plt>
  4015da:	48 8d 3d d7 2a 00 00 	lea    0x2ad7(%rip),%rdi        # 4040b8 <_IO_stdin_used+0xb8>
  4015e1:	e8 ca fc ff ff       	call   4012b0 <puts@plt>
  4015e6:	48 8d 3d 37 2c 00 00 	lea    0x2c37(%rip),%rdi        # 404224 <_IO_stdin_used+0x224>
  4015ed:	e8 be fc ff ff       	call   4012b0 <puts@plt>
  4015f2:	eb ba                	jmp    4015ae <usage+0x58>

00000000004015f4 <initialize_target>:
  4015f4:	55                   	push   %rbp
  4015f5:	53                   	push   %rbx
  4015f6:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  4015fd:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  401602:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  401609:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  40160e:	48 81 ec 18 01 00 00 	sub    $0x118,%rsp
  401615:	89 f5                	mov    %esi,%ebp
  401617:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40161e:	00 00 
  401620:	48 89 84 24 08 21 00 	mov    %rax,0x2108(%rsp)
  401627:	00 
  401628:	31 c0                	xor    %eax,%eax
  40162a:	89 3d e8 5e 00 00    	mov    %edi,0x5ee8(%rip)        # 407518 <check_level>
  401630:	8b 3d 1a 5b 00 00    	mov    0x5b1a(%rip),%edi        # 407150 <target_id>
  401636:	e8 19 23 00 00       	call   403954 <gencookie>
  40163b:	89 c7                	mov    %eax,%edi
  40163d:	89 05 e1 5e 00 00    	mov    %eax,0x5ee1(%rip)        # 407524 <cookie>
  401643:	e8 0c 23 00 00       	call   403954 <gencookie>
  401648:	89 05 d2 5e 00 00    	mov    %eax,0x5ed2(%rip)        # 407520 <authkey>
  40164e:	8b 05 fc 5a 00 00    	mov    0x5afc(%rip),%eax        # 407150 <target_id>
  401654:	8d 78 01             	lea    0x1(%rax),%edi
  401657:	e8 14 fc ff ff       	call   401270 <srandom@plt>
  40165c:	e8 2f fd ff ff       	call   401390 <random@plt>
  401661:	48 89 c7             	mov    %rax,%rdi
  401664:	e8 9b 03 00 00       	call   401a04 <scramble>
  401669:	89 c3                	mov    %eax,%ebx
  40166b:	85 ed                	test   %ebp,%ebp
  40166d:	75 54                	jne    4016c3 <initialize_target+0xcf>
  40166f:	b8 00 00 00 00       	mov    $0x0,%eax
  401674:	01 d8                	add    %ebx,%eax
  401676:	0f b7 c0             	movzwl %ax,%eax
  401679:	8d 04 c5 00 01 00 00 	lea    0x100(,%rax,8),%eax
  401680:	89 c0                	mov    %eax,%eax
  401682:	48 89 05 1f 5e 00 00 	mov    %rax,0x5e1f(%rip)        # 4074a8 <buf_offset>
  401689:	c6 05 b8 6a 00 00 73 	movb   $0x73,0x6ab8(%rip)        # 408148 <target_prefix>
  401690:	83 3d 09 5e 00 00 00 	cmpl   $0x0,0x5e09(%rip)        # 4074a0 <notify>
  401697:	74 09                	je     4016a2 <initialize_target+0xae>
  401699:	83 3d 88 5e 00 00 00 	cmpl   $0x0,0x5e88(%rip)        # 407528 <is_checker>
  4016a0:	74 3a                	je     4016dc <initialize_target+0xe8>
  4016a2:	48 8b 84 24 08 21 00 	mov    0x2108(%rsp),%rax
  4016a9:	00 
  4016aa:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4016b1:	00 00 
  4016b3:	0f 85 db 00 00 00    	jne    401794 <initialize_target+0x1a0>
  4016b9:	48 81 c4 18 21 00 00 	add    $0x2118,%rsp
  4016c0:	5b                   	pop    %rbx
  4016c1:	5d                   	pop    %rbp
  4016c2:	c3                   	ret    
  4016c3:	bf 00 00 00 00       	mov    $0x0,%edi
  4016c8:	e8 b3 fc ff ff       	call   401380 <time@plt>
  4016cd:	48 89 c7             	mov    %rax,%rdi
  4016d0:	e8 9b fb ff ff       	call   401270 <srandom@plt>
  4016d5:	e8 b6 fc ff ff       	call   401390 <random@plt>
  4016da:	eb 98                	jmp    401674 <initialize_target+0x80>
  4016dc:	48 89 e7             	mov    %rsp,%rdi
  4016df:	be 00 01 00 00       	mov    $0x100,%esi
  4016e4:	e8 17 fd ff ff       	call   401400 <gethostname@plt>
  4016e9:	89 c5                	mov    %eax,%ebp
  4016eb:	85 c0                	test   %eax,%eax
  4016ed:	75 26                	jne    401715 <initialize_target+0x121>
  4016ef:	89 c3                	mov    %eax,%ebx
  4016f1:	48 63 c3             	movslq %ebx,%rax
  4016f4:	48 8d 15 85 5a 00 00 	lea    0x5a85(%rip),%rdx        # 407180 <host_table>
  4016fb:	48 8b 3c c2          	mov    (%rdx,%rax,8),%rdi
  4016ff:	48 85 ff             	test   %rdi,%rdi
  401702:	74 2c                	je     401730 <initialize_target+0x13c>
  401704:	48 89 e6             	mov    %rsp,%rsi
  401707:	e8 44 fb ff ff       	call   401250 <strcasecmp@plt>
  40170c:	85 c0                	test   %eax,%eax
  40170e:	74 1b                	je     40172b <initialize_target+0x137>
  401710:	83 c3 01             	add    $0x1,%ebx
  401713:	eb dc                	jmp    4016f1 <initialize_target+0xfd>
  401715:	48 8d 3d cc 29 00 00 	lea    0x29cc(%rip),%rdi        # 4040e8 <_IO_stdin_used+0xe8>
  40171c:	e8 8f fb ff ff       	call   4012b0 <puts@plt>
  401721:	bf 08 00 00 00       	mov    $0x8,%edi
  401726:	e8 e5 fc ff ff       	call   401410 <exit@plt>
  40172b:	bd 01 00 00 00       	mov    $0x1,%ebp
  401730:	85 ed                	test   %ebp,%ebp
  401732:	74 3d                	je     401771 <initialize_target+0x17d>
  401734:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  40173b:	00 
  40173c:	e8 58 1f 00 00       	call   403699 <init_driver>
  401741:	85 c0                	test   %eax,%eax
  401743:	0f 89 59 ff ff ff    	jns    4016a2 <initialize_target+0xae>
  401749:	48 8d 94 24 00 01 00 	lea    0x100(%rsp),%rdx
  401750:	00 
  401751:	48 8d 35 08 2a 00 00 	lea    0x2a08(%rip),%rsi        # 404160 <_IO_stdin_used+0x160>
  401758:	bf 01 00 00 00       	mov    $0x1,%edi
  40175d:	b8 00 00 00 00       	mov    $0x0,%eax
  401762:	e8 59 fc ff ff       	call   4013c0 <__printf_chk@plt>
  401767:	bf 08 00 00 00       	mov    $0x8,%edi
  40176c:	e8 9f fc ff ff       	call   401410 <exit@plt>
  401771:	48 89 e2             	mov    %rsp,%rdx
  401774:	48 8d 35 a5 29 00 00 	lea    0x29a5(%rip),%rsi        # 404120 <_IO_stdin_used+0x120>
  40177b:	bf 01 00 00 00       	mov    $0x1,%edi
  401780:	b8 00 00 00 00       	mov    $0x0,%eax
  401785:	e8 36 fc ff ff       	call   4013c0 <__printf_chk@plt>
  40178a:	bf 08 00 00 00       	mov    $0x8,%edi
  40178f:	e8 7c fc ff ff       	call   401410 <exit@plt>
  401794:	e8 22 12 00 00       	call   4029bb <__stack_chk_fail>

0000000000401799 <main>:
  401799:	f3 0f 1e fa          	endbr64 
  40179d:	41 56                	push   %r14
  40179f:	41 55                	push   %r13
  4017a1:	41 54                	push   %r12
  4017a3:	55                   	push   %rbp
  4017a4:	53                   	push   %rbx
  4017a5:	48 83 ec 60          	sub    $0x60,%rsp
  4017a9:	89 fd                	mov    %edi,%ebp
  4017ab:	48 89 f3             	mov    %rsi,%rbx
  4017ae:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4017b5:	00 00 
  4017b7:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
  4017bc:	31 c0                	xor    %eax,%eax
  4017be:	48 b8 53 70 69 72 69 	movabs $0x6465746972697053,%rax
  4017c5:	74 65 64 
  4017c8:	48 89 04 24          	mov    %rax,(%rsp)
  4017cc:	c7 44 24 08 41 77 61 	movl   $0x79617741,0x8(%rsp)
  4017d3:	79 
  4017d4:	66 c7 44 24 0c 43 4e 	movw   $0x4e43,0xc(%rsp)
  4017db:	c6 44 24 0e 00       	movb   $0x0,0xe(%rsp)
  4017e0:	48 c7 c6 aa 28 40 00 	mov    $0x4028aa,%rsi
  4017e7:	bf 0b 00 00 00       	mov    $0xb,%edi
  4017ec:	e8 3f fb ff ff       	call   401330 <signal@plt>
  4017f1:	48 c7 c6 50 28 40 00 	mov    $0x402850,%rsi
  4017f8:	bf 07 00 00 00       	mov    $0x7,%edi
  4017fd:	e8 2e fb ff ff       	call   401330 <signal@plt>
  401802:	48 c7 c6 04 29 40 00 	mov    $0x402904,%rsi
  401809:	bf 04 00 00 00       	mov    $0x4,%edi
  40180e:	e8 1d fb ff ff       	call   401330 <signal@plt>
  401813:	83 3d 0e 5d 00 00 00 	cmpl   $0x0,0x5d0e(%rip)        # 407528 <is_checker>
  40181a:	75 26                	jne    401842 <main+0xa9>
  40181c:	4c 8d 25 24 2a 00 00 	lea    0x2a24(%rip),%r12        # 404247 <_IO_stdin_used+0x247>
  401823:	48 8b 05 96 5c 00 00 	mov    0x5c96(%rip),%rax        # 4074c0 <stdin@GLIBC_2.2.5>
  40182a:	48 89 05 df 5c 00 00 	mov    %rax,0x5cdf(%rip)        # 407510 <infile>
  401831:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  401837:	41 be 00 00 00 00    	mov    $0x0,%r14d
  40183d:	e9 8d 00 00 00       	jmp    4018cf <main+0x136>
  401842:	48 c7 c6 5e 29 40 00 	mov    $0x40295e,%rsi
  401849:	bf 0e 00 00 00       	mov    $0xe,%edi
  40184e:	e8 dd fa ff ff       	call   401330 <signal@plt>
  401853:	bf 02 00 00 00       	mov    $0x2,%edi
  401858:	e8 93 fa ff ff       	call   4012f0 <alarm@plt>
  40185d:	4c 8d 25 d9 29 00 00 	lea    0x29d9(%rip),%r12        # 40423d <_IO_stdin_used+0x23d>
  401864:	eb bd                	jmp    401823 <main+0x8a>
  401866:	48 8b 3b             	mov    (%rbx),%rdi
  401869:	e8 e8 fc ff ff       	call   401556 <usage>
  40186e:	48 8d 35 9f 2a 00 00 	lea    0x2a9f(%rip),%rsi        # 404314 <_IO_stdin_used+0x314>
  401875:	48 8b 3d 4c 5c 00 00 	mov    0x5c4c(%rip),%rdi        # 4074c8 <optarg@GLIBC_2.2.5>
  40187c:	e8 4f fb ff ff       	call   4013d0 <fopen@plt>
  401881:	48 89 05 88 5c 00 00 	mov    %rax,0x5c88(%rip)        # 407510 <infile>
  401888:	48 85 c0             	test   %rax,%rax
  40188b:	75 42                	jne    4018cf <main+0x136>
  40188d:	48 8b 0d 34 5c 00 00 	mov    0x5c34(%rip),%rcx        # 4074c8 <optarg@GLIBC_2.2.5>
  401894:	48 8d 15 b1 29 00 00 	lea    0x29b1(%rip),%rdx        # 40424c <_IO_stdin_used+0x24c>
  40189b:	be 01 00 00 00       	mov    $0x1,%esi
  4018a0:	48 8b 3d 39 5c 00 00 	mov    0x5c39(%rip),%rdi        # 4074e0 <stderr@GLIBC_2.2.5>
  4018a7:	e8 84 fb ff ff       	call   401430 <__fprintf_chk@plt>
  4018ac:	b8 01 00 00 00       	mov    $0x1,%eax
  4018b1:	e9 2c 01 00 00       	jmp    4019e2 <main+0x249>
  4018b6:	ba 10 00 00 00       	mov    $0x10,%edx
  4018bb:	be 00 00 00 00       	mov    $0x0,%esi
  4018c0:	48 8b 3d 01 5c 00 00 	mov    0x5c01(%rip),%rdi        # 4074c8 <optarg@GLIBC_2.2.5>
  4018c7:	e8 24 fb ff ff       	call   4013f0 <strtoul@plt>
  4018cc:	41 89 c6             	mov    %eax,%r14d
  4018cf:	4c 89 e2             	mov    %r12,%rdx
  4018d2:	48 89 de             	mov    %rbx,%rsi
  4018d5:	89 ef                	mov    %ebp,%edi
  4018d7:	e8 04 fb ff ff       	call   4013e0 <getopt@plt>
  4018dc:	3c ff                	cmp    $0xff,%al
  4018de:	74 7b                	je     40195b <main+0x1c2>
  4018e0:	0f be c8             	movsbl %al,%ecx
  4018e3:	83 e8 61             	sub    $0x61,%eax
  4018e6:	3c 14                	cmp    $0x14,%al
  4018e8:	77 51                	ja     40193b <main+0x1a2>
  4018ea:	0f b6 c0             	movzbl %al,%eax
  4018ed:	48 8d 15 98 29 00 00 	lea    0x2998(%rip),%rdx        # 40428c <_IO_stdin_used+0x28c>
  4018f4:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
  4018f8:	48 01 d0             	add    %rdx,%rax
  4018fb:	3e ff e0             	notrack jmp *%rax
  4018fe:	ba 0a 00 00 00       	mov    $0xa,%edx
  401903:	be 00 00 00 00       	mov    $0x0,%esi
  401908:	48 8b 3d b9 5b 00 00 	mov    0x5bb9(%rip),%rdi        # 4074c8 <optarg@GLIBC_2.2.5>
  40190f:	e8 4c fa ff ff       	call   401360 <strtol@plt>
  401914:	41 89 c5             	mov    %eax,%r13d
  401917:	eb b6                	jmp    4018cf <main+0x136>
  401919:	c7 05 7d 5b 00 00 00 	movl   $0x0,0x5b7d(%rip)        # 4074a0 <notify>
  401920:	00 00 00 
  401923:	eb aa                	jmp    4018cf <main+0x136>
  401925:	48 89 e7             	mov    %rsp,%rdi
  401928:	ba 50 00 00 00       	mov    $0x50,%edx
  40192d:	48 8b 35 94 5b 00 00 	mov    0x5b94(%rip),%rsi        # 4074c8 <optarg@GLIBC_2.2.5>
  401934:	e8 47 f9 ff ff       	call   401280 <strncpy@plt>
  401939:	eb 94                	jmp    4018cf <main+0x136>
  40193b:	89 ca                	mov    %ecx,%edx
  40193d:	48 8d 35 25 29 00 00 	lea    0x2925(%rip),%rsi        # 404269 <_IO_stdin_used+0x269>
  401944:	bf 01 00 00 00       	mov    $0x1,%edi
  401949:	b8 00 00 00 00       	mov    $0x0,%eax
  40194e:	e8 6d fa ff ff       	call   4013c0 <__printf_chk@plt>
  401953:	48 8b 3b             	mov    (%rbx),%rdi
  401956:	e8 fb fb ff ff       	call   401556 <usage>
  40195b:	be 01 00 00 00       	mov    $0x1,%esi
  401960:	44 89 ef             	mov    %r13d,%edi
  401963:	e8 8c fc ff ff       	call   4015f4 <initialize_target>
  401968:	83 3d b9 5b 00 00 00 	cmpl   $0x0,0x5bb9(%rip)        # 407528 <is_checker>
  40196f:	74 3f                	je     4019b0 <main+0x217>
  401971:	44 39 35 a8 5b 00 00 	cmp    %r14d,0x5ba8(%rip)        # 407520 <authkey>
  401978:	75 13                	jne    40198d <main+0x1f4>
  40197a:	48 89 e7             	mov    %rsp,%rdi
  40197d:	48 8b 35 dc 57 00 00 	mov    0x57dc(%rip),%rsi        # 407160 <user_id>
  401984:	e8 97 f9 ff ff       	call   401320 <strcmp@plt>
  401989:	85 c0                	test   %eax,%eax
  40198b:	74 23                	je     4019b0 <main+0x217>
  40198d:	44 89 f2             	mov    %r14d,%edx
  401990:	48 8d 35 f1 27 00 00 	lea    0x27f1(%rip),%rsi        # 404188 <_IO_stdin_used+0x188>
  401997:	bf 01 00 00 00       	mov    $0x1,%edi
  40199c:	b8 00 00 00 00       	mov    $0x0,%eax
  4019a1:	e8 1a fa ff ff       	call   4013c0 <__printf_chk@plt>
  4019a6:	b8 00 00 00 00       	mov    $0x0,%eax
  4019ab:	e8 e9 0a 00 00       	call   402499 <check_fail>
  4019b0:	8b 15 6e 5b 00 00    	mov    0x5b6e(%rip),%edx        # 407524 <cookie>
  4019b6:	48 8d 35 bf 28 00 00 	lea    0x28bf(%rip),%rsi        # 40427c <_IO_stdin_used+0x27c>
  4019bd:	bf 01 00 00 00       	mov    $0x1,%edi
  4019c2:	b8 00 00 00 00       	mov    $0x0,%eax
  4019c7:	e8 f4 f9 ff ff       	call   4013c0 <__printf_chk@plt>
  4019cc:	be 01 00 00 00       	mov    $0x1,%esi
  4019d1:	48 8b 3d d0 5a 00 00 	mov    0x5ad0(%rip),%rdi        # 4074a8 <buf_offset>
  4019d8:	e8 38 10 00 00       	call   402a15 <launch>
  4019dd:	b8 00 00 00 00       	mov    $0x0,%eax
  4019e2:	48 8b 4c 24 58       	mov    0x58(%rsp),%rcx
  4019e7:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  4019ee:	00 00 
  4019f0:	75 0d                	jne    4019ff <main+0x266>
  4019f2:	48 83 c4 60          	add    $0x60,%rsp
  4019f6:	5b                   	pop    %rbx
  4019f7:	5d                   	pop    %rbp
  4019f8:	41 5c                	pop    %r12
  4019fa:	41 5d                	pop    %r13
  4019fc:	41 5e                	pop    %r14
  4019fe:	c3                   	ret    
  4019ff:	e8 b7 0f 00 00       	call   4029bb <__stack_chk_fail>

0000000000401a04 <scramble>:
  401a04:	f3 0f 1e fa          	endbr64 
  401a08:	48 83 ec 38          	sub    $0x38,%rsp
  401a0c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401a13:	00 00 
  401a15:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  401a1a:	31 c0                	xor    %eax,%eax
  401a1c:	83 f8 09             	cmp    $0x9,%eax
  401a1f:	77 12                	ja     401a33 <scramble+0x2f>
  401a21:	69 d0 36 96 00 00    	imul   $0x9636,%eax,%edx
  401a27:	01 fa                	add    %edi,%edx
  401a29:	89 c1                	mov    %eax,%ecx
  401a2b:	89 14 8c             	mov    %edx,(%rsp,%rcx,4)
  401a2e:	83 c0 01             	add    $0x1,%eax
  401a31:	eb e9                	jmp    401a1c <scramble+0x18>
  401a33:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401a37:	69 c0 3d 52 00 00    	imul   $0x523d,%eax,%eax
  401a3d:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401a41:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401a45:	69 c0 ee 72 00 00    	imul   $0x72ee,%eax,%eax
  401a4b:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401a4f:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401a53:	69 c0 92 18 00 00    	imul   $0x1892,%eax,%eax
  401a59:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401a5d:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401a61:	69 c0 fd 62 00 00    	imul   $0x62fd,%eax,%eax
  401a67:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401a6b:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401a6f:	69 c0 bb 71 00 00    	imul   $0x71bb,%eax,%eax
  401a75:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401a79:	8b 04 24             	mov    (%rsp),%eax
  401a7c:	69 c0 90 68 00 00    	imul   $0x6890,%eax,%eax
  401a82:	89 04 24             	mov    %eax,(%rsp)
  401a85:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401a89:	69 c0 e2 15 00 00    	imul   $0x15e2,%eax,%eax
  401a8f:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401a93:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401a97:	69 c0 93 eb 00 00    	imul   $0xeb93,%eax,%eax
  401a9d:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401aa1:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401aa5:	69 c0 f1 af 00 00    	imul   $0xaff1,%eax,%eax
  401aab:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401aaf:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401ab3:	69 c0 63 85 00 00    	imul   $0x8563,%eax,%eax
  401ab9:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401abd:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401ac1:	69 c0 d9 d9 00 00    	imul   $0xd9d9,%eax,%eax
  401ac7:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401acb:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401acf:	69 c0 9e 91 00 00    	imul   $0x919e,%eax,%eax
  401ad5:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401ad9:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401add:	69 c0 d9 1d 00 00    	imul   $0x1dd9,%eax,%eax
  401ae3:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401ae7:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401aeb:	69 c0 96 ce 00 00    	imul   $0xce96,%eax,%eax
  401af1:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401af5:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401af9:	69 c0 5e 6f 00 00    	imul   $0x6f5e,%eax,%eax
  401aff:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401b03:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401b07:	69 c0 26 4d 00 00    	imul   $0x4d26,%eax,%eax
  401b0d:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401b11:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401b15:	69 c0 ca e1 00 00    	imul   $0xe1ca,%eax,%eax
  401b1b:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401b1f:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401b23:	69 c0 4e 43 00 00    	imul   $0x434e,%eax,%eax
  401b29:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401b2d:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401b31:	69 c0 a6 d2 00 00    	imul   $0xd2a6,%eax,%eax
  401b37:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401b3b:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401b3f:	69 c0 be 67 00 00    	imul   $0x67be,%eax,%eax
  401b45:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401b49:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401b4d:	69 c0 36 0a 00 00    	imul   $0xa36,%eax,%eax
  401b53:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401b57:	8b 04 24             	mov    (%rsp),%eax
  401b5a:	69 c0 0b af 00 00    	imul   $0xaf0b,%eax,%eax
  401b60:	89 04 24             	mov    %eax,(%rsp)
  401b63:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401b67:	69 c0 25 66 00 00    	imul   $0x6625,%eax,%eax
  401b6d:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401b71:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401b75:	69 c0 bf d4 00 00    	imul   $0xd4bf,%eax,%eax
  401b7b:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401b7f:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401b83:	69 c0 bb 40 00 00    	imul   $0x40bb,%eax,%eax
  401b89:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401b8d:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401b91:	69 c0 9a 60 00 00    	imul   $0x609a,%eax,%eax
  401b97:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401b9b:	8b 04 24             	mov    (%rsp),%eax
  401b9e:	69 c0 1d 32 00 00    	imul   $0x321d,%eax,%eax
  401ba4:	89 04 24             	mov    %eax,(%rsp)
  401ba7:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401bab:	69 c0 e1 1d 00 00    	imul   $0x1de1,%eax,%eax
  401bb1:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401bb5:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401bb9:	69 c0 44 82 00 00    	imul   $0x8244,%eax,%eax
  401bbf:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401bc3:	8b 04 24             	mov    (%rsp),%eax
  401bc6:	69 c0 e7 06 00 00    	imul   $0x6e7,%eax,%eax
  401bcc:	89 04 24             	mov    %eax,(%rsp)
  401bcf:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401bd3:	69 c0 10 71 00 00    	imul   $0x7110,%eax,%eax
  401bd9:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401bdd:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401be1:	69 c0 3d b3 00 00    	imul   $0xb33d,%eax,%eax
  401be7:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401beb:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401bef:	69 c0 22 14 00 00    	imul   $0x1422,%eax,%eax
  401bf5:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401bf9:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401bfd:	69 c0 38 4d 00 00    	imul   $0x4d38,%eax,%eax
  401c03:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401c07:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401c0b:	69 c0 d6 9c 00 00    	imul   $0x9cd6,%eax,%eax
  401c11:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401c15:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401c19:	69 c0 29 2b 00 00    	imul   $0x2b29,%eax,%eax
  401c1f:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401c23:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401c27:	69 c0 44 85 00 00    	imul   $0x8544,%eax,%eax
  401c2d:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401c31:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401c35:	69 c0 25 c7 00 00    	imul   $0xc725,%eax,%eax
  401c3b:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401c3f:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401c43:	69 c0 d3 74 00 00    	imul   $0x74d3,%eax,%eax
  401c49:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401c4d:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401c51:	8d 04 40             	lea    (%rax,%rax,2),%eax
  401c54:	c1 e0 07             	shl    $0x7,%eax
  401c57:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401c5b:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401c5f:	69 c0 06 f6 00 00    	imul   $0xf606,%eax,%eax
  401c65:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401c69:	8b 04 24             	mov    (%rsp),%eax
  401c6c:	69 c0 23 d0 00 00    	imul   $0xd023,%eax,%eax
  401c72:	89 04 24             	mov    %eax,(%rsp)
  401c75:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401c79:	69 c0 53 54 00 00    	imul   $0x5453,%eax,%eax
  401c7f:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401c83:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401c87:	69 c0 1b 78 00 00    	imul   $0x781b,%eax,%eax
  401c8d:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401c91:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401c95:	69 c0 7c da 00 00    	imul   $0xda7c,%eax,%eax
  401c9b:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401c9f:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401ca3:	69 c0 39 c8 00 00    	imul   $0xc839,%eax,%eax
  401ca9:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401cad:	8b 04 24             	mov    (%rsp),%eax
  401cb0:	69 c0 0f d3 00 00    	imul   $0xd30f,%eax,%eax
  401cb6:	89 04 24             	mov    %eax,(%rsp)
  401cb9:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401cbd:	69 c0 68 9e 00 00    	imul   $0x9e68,%eax,%eax
  401cc3:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401cc7:	8b 04 24             	mov    (%rsp),%eax
  401cca:	69 c0 01 72 00 00    	imul   $0x7201,%eax,%eax
  401cd0:	89 04 24             	mov    %eax,(%rsp)
  401cd3:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401cd7:	69 c0 fa cd 00 00    	imul   $0xcdfa,%eax,%eax
  401cdd:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401ce1:	8b 04 24             	mov    (%rsp),%eax
  401ce4:	69 c0 96 a0 00 00    	imul   $0xa096,%eax,%eax
  401cea:	89 04 24             	mov    %eax,(%rsp)
  401ced:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401cf1:	69 c0 e4 b5 00 00    	imul   $0xb5e4,%eax,%eax
  401cf7:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401cfb:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401cff:	69 c0 58 d3 00 00    	imul   $0xd358,%eax,%eax
  401d05:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401d09:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401d0d:	69 c0 43 11 00 00    	imul   $0x1143,%eax,%eax
  401d13:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401d17:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401d1b:	69 c0 ed 18 00 00    	imul   $0x18ed,%eax,%eax
  401d21:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401d25:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401d29:	69 c0 ba fd 00 00    	imul   $0xfdba,%eax,%eax
  401d2f:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401d33:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401d37:	69 c0 de 74 00 00    	imul   $0x74de,%eax,%eax
  401d3d:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401d41:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401d45:	69 c0 17 37 00 00    	imul   $0x3717,%eax,%eax
  401d4b:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401d4f:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401d53:	69 c0 e2 bb 00 00    	imul   $0xbbe2,%eax,%eax
  401d59:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401d5d:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401d61:	69 c0 c8 9f 00 00    	imul   $0x9fc8,%eax,%eax
  401d67:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401d6b:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401d6f:	69 c0 34 2e 00 00    	imul   $0x2e34,%eax,%eax
  401d75:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401d79:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401d7d:	69 c0 ec e1 00 00    	imul   $0xe1ec,%eax,%eax
  401d83:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401d87:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401d8b:	69 c0 77 e3 00 00    	imul   $0xe377,%eax,%eax
  401d91:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401d95:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401d99:	69 c0 76 e8 00 00    	imul   $0xe876,%eax,%eax
  401d9f:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401da3:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401da7:	69 c0 f4 6b 00 00    	imul   $0x6bf4,%eax,%eax
  401dad:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401db1:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401db5:	69 c0 4f 64 00 00    	imul   $0x644f,%eax,%eax
  401dbb:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401dbf:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401dc3:	69 c0 94 af 00 00    	imul   $0xaf94,%eax,%eax
  401dc9:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401dcd:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401dd1:	69 c0 64 32 00 00    	imul   $0x3264,%eax,%eax
  401dd7:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401ddb:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401ddf:	69 c0 3c 97 00 00    	imul   $0x973c,%eax,%eax
  401de5:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401de9:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401ded:	69 c0 18 cb 00 00    	imul   $0xcb18,%eax,%eax
  401df3:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401df7:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401dfb:	69 c0 6b 56 00 00    	imul   $0x566b,%eax,%eax
  401e01:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401e05:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401e09:	69 c0 1d bf 00 00    	imul   $0xbf1d,%eax,%eax
  401e0f:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401e13:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401e17:	69 c0 b0 96 00 00    	imul   $0x96b0,%eax,%eax
  401e1d:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401e21:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401e25:	69 c0 7a 94 00 00    	imul   $0x947a,%eax,%eax
  401e2b:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401e2f:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401e33:	69 c0 67 a5 00 00    	imul   $0xa567,%eax,%eax
  401e39:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401e3d:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401e41:	69 c0 f1 e8 00 00    	imul   $0xe8f1,%eax,%eax
  401e47:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401e4b:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401e4f:	69 c0 43 9c 00 00    	imul   $0x9c43,%eax,%eax
  401e55:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401e59:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401e5d:	69 c0 df d4 00 00    	imul   $0xd4df,%eax,%eax
  401e63:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401e67:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401e6b:	69 c0 31 4b 00 00    	imul   $0x4b31,%eax,%eax
  401e71:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401e75:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401e79:	69 c0 32 d5 00 00    	imul   $0xd532,%eax,%eax
  401e7f:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401e83:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401e87:	69 c0 c6 73 00 00    	imul   $0x73c6,%eax,%eax
  401e8d:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401e91:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401e95:	69 c0 af c3 00 00    	imul   $0xc3af,%eax,%eax
  401e9b:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401e9f:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401ea3:	69 c0 b5 53 00 00    	imul   $0x53b5,%eax,%eax
  401ea9:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401ead:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401eb1:	69 c0 47 a6 00 00    	imul   $0xa647,%eax,%eax
  401eb7:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401ebb:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401ebf:	69 c0 bb 39 00 00    	imul   $0x39bb,%eax,%eax
  401ec5:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401ec9:	8b 04 24             	mov    (%rsp),%eax
  401ecc:	69 c0 1b 9b 00 00    	imul   $0x9b1b,%eax,%eax
  401ed2:	89 04 24             	mov    %eax,(%rsp)
  401ed5:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401ed9:	69 c0 32 3a 00 00    	imul   $0x3a32,%eax,%eax
  401edf:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401ee3:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401ee7:	69 c0 6f 5b 00 00    	imul   $0x5b6f,%eax,%eax
  401eed:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401ef1:	b8 00 00 00 00       	mov    $0x0,%eax
  401ef6:	ba 00 00 00 00       	mov    $0x0,%edx
  401efb:	83 f8 09             	cmp    $0x9,%eax
  401efe:	77 0c                	ja     401f0c <scramble+0x508>
  401f00:	89 c1                	mov    %eax,%ecx
  401f02:	8b 0c 8c             	mov    (%rsp,%rcx,4),%ecx
  401f05:	01 ca                	add    %ecx,%edx
  401f07:	83 c0 01             	add    $0x1,%eax
  401f0a:	eb ef                	jmp    401efb <scramble+0x4f7>
  401f0c:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
  401f11:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401f18:	00 00 
  401f1a:	75 07                	jne    401f23 <scramble+0x51f>
  401f1c:	89 d0                	mov    %edx,%eax
  401f1e:	48 83 c4 38          	add    $0x38,%rsp
  401f22:	c3                   	ret    
  401f23:	e8 93 0a 00 00       	call   4029bb <__stack_chk_fail>

0000000000401f28 <getbuf>:
  401f28:	f3 0f 1e fa          	endbr64 
  401f2c:	48 83 ec 38          	sub    $0x38,%rsp
  401f30:	48 89 e7             	mov    %rsp,%rdi
  401f33:	e8 9f 05 00 00       	call   4024d7 <Gets>
  401f38:	b8 01 00 00 00       	mov    $0x1,%eax
  401f3d:	48 83 c4 38          	add    $0x38,%rsp
  401f41:	c3                   	ret    

0000000000401f42 <touch1>:
  401f42:	f3 0f 1e fa          	endbr64 
  401f46:	50                   	push   %rax
  401f47:	58                   	pop    %rax
  401f48:	48 83 ec 08          	sub    $0x8,%rsp
  401f4c:	c7 05 c6 55 00 00 01 	movl   $0x1,0x55c6(%rip)        # 40751c <vlevel>
  401f53:	00 00 00 
  401f56:	48 8d 3d b9 23 00 00 	lea    0x23b9(%rip),%rdi        # 404316 <_IO_stdin_used+0x316>
  401f5d:	e8 4e f3 ff ff       	call   4012b0 <puts@plt>
  401f62:	bf 01 00 00 00       	mov    $0x1,%edi
  401f67:	e8 dd 07 00 00       	call   402749 <validate>
  401f6c:	bf 00 00 00 00       	mov    $0x0,%edi
  401f71:	e8 9a f4 ff ff       	call   401410 <exit@plt>

0000000000401f76 <touch2>:
  401f76:	f3 0f 1e fa          	endbr64 
  401f7a:	50                   	push   %rax
  401f7b:	58                   	pop    %rax
  401f7c:	48 83 ec 08          	sub    $0x8,%rsp
  401f80:	89 fa                	mov    %edi,%edx
  401f82:	c7 05 90 55 00 00 02 	movl   $0x2,0x5590(%rip)        # 40751c <vlevel>
  401f89:	00 00 00 
  401f8c:	39 3d 92 55 00 00    	cmp    %edi,0x5592(%rip)        # 407524 <cookie>
  401f92:	74 2a                	je     401fbe <touch2+0x48>
  401f94:	48 8d 35 c5 23 00 00 	lea    0x23c5(%rip),%rsi        # 404360 <_IO_stdin_used+0x360>
  401f9b:	bf 01 00 00 00       	mov    $0x1,%edi
  401fa0:	b8 00 00 00 00       	mov    $0x0,%eax
  401fa5:	e8 16 f4 ff ff       	call   4013c0 <__printf_chk@plt>
  401faa:	bf 02 00 00 00       	mov    $0x2,%edi
  401faf:	e8 70 08 00 00       	call   402824 <fail>
  401fb4:	bf 00 00 00 00       	mov    $0x0,%edi
  401fb9:	e8 52 f4 ff ff       	call   401410 <exit@plt>
  401fbe:	48 8d 35 73 23 00 00 	lea    0x2373(%rip),%rsi        # 404338 <_IO_stdin_used+0x338>
  401fc5:	bf 01 00 00 00       	mov    $0x1,%edi
  401fca:	b8 00 00 00 00       	mov    $0x0,%eax
  401fcf:	e8 ec f3 ff ff       	call   4013c0 <__printf_chk@plt>
  401fd4:	bf 02 00 00 00       	mov    $0x2,%edi
  401fd9:	e8 6b 07 00 00       	call   402749 <validate>
  401fde:	eb d4                	jmp    401fb4 <touch2+0x3e>

0000000000401fe0 <hexmatch>:
  401fe0:	f3 0f 1e fa          	endbr64 
  401fe4:	41 55                	push   %r13
  401fe6:	41 54                	push   %r12
  401fe8:	55                   	push   %rbp
  401fe9:	53                   	push   %rbx
  401fea:	48 81 ec 88 00 00 00 	sub    $0x88,%rsp
  401ff1:	89 fd                	mov    %edi,%ebp
  401ff3:	48 89 f3             	mov    %rsi,%rbx
  401ff6:	41 bc 28 00 00 00    	mov    $0x28,%r12d
  401ffc:	64 49 8b 04 24       	mov    %fs:(%r12),%rax
  402001:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  402006:	31 c0                	xor    %eax,%eax
  402008:	e8 83 f3 ff ff       	call   401390 <random@plt>
  40200d:	48 89 c1             	mov    %rax,%rcx
  402010:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  402017:	0a d7 a3 
  40201a:	48 f7 ea             	imul   %rdx
  40201d:	48 01 ca             	add    %rcx,%rdx
  402020:	48 c1 fa 06          	sar    $0x6,%rdx
  402024:	48 89 c8             	mov    %rcx,%rax
  402027:	48 c1 f8 3f          	sar    $0x3f,%rax
  40202b:	48 29 c2             	sub    %rax,%rdx
  40202e:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
  402032:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  402036:	48 c1 e0 02          	shl    $0x2,%rax
  40203a:	48 29 c1             	sub    %rax,%rcx
  40203d:	4c 8d 2c 0c          	lea    (%rsp,%rcx,1),%r13
  402041:	41 89 e8             	mov    %ebp,%r8d
  402044:	48 8d 0d e8 22 00 00 	lea    0x22e8(%rip),%rcx        # 404333 <_IO_stdin_used+0x333>
  40204b:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  402052:	be 01 00 00 00       	mov    $0x1,%esi
  402057:	4c 89 ef             	mov    %r13,%rdi
  40205a:	b8 00 00 00 00       	mov    $0x0,%eax
  40205f:	e8 ec f3 ff ff       	call   401450 <__sprintf_chk@plt>
  402064:	ba 09 00 00 00       	mov    $0x9,%edx
  402069:	4c 89 ee             	mov    %r13,%rsi
  40206c:	48 89 df             	mov    %rbx,%rdi
  40206f:	e8 1c f2 ff ff       	call   401290 <strncmp@plt>
  402074:	85 c0                	test   %eax,%eax
  402076:	0f 94 c0             	sete   %al
  402079:	48 8b 5c 24 78       	mov    0x78(%rsp),%rbx
  40207e:	64 49 33 1c 24       	xor    %fs:(%r12),%rbx
  402083:	75 11                	jne    402096 <hexmatch+0xb6>
  402085:	0f b6 c0             	movzbl %al,%eax
  402088:	48 81 c4 88 00 00 00 	add    $0x88,%rsp
  40208f:	5b                   	pop    %rbx
  402090:	5d                   	pop    %rbp
  402091:	41 5c                	pop    %r12
  402093:	41 5d                	pop    %r13
  402095:	c3                   	ret    
  402096:	e8 20 09 00 00       	call   4029bb <__stack_chk_fail>

000000000040209b <touch3>:
  40209b:	f3 0f 1e fa          	endbr64 
  40209f:	53                   	push   %rbx
  4020a0:	48 89 fb             	mov    %rdi,%rbx
  4020a3:	c7 05 6f 54 00 00 03 	movl   $0x3,0x546f(%rip)        # 40751c <vlevel>
  4020aa:	00 00 00 
  4020ad:	48 89 fe             	mov    %rdi,%rsi
  4020b0:	8b 3d 6e 54 00 00    	mov    0x546e(%rip),%edi        # 407524 <cookie>
  4020b6:	e8 25 ff ff ff       	call   401fe0 <hexmatch>
  4020bb:	85 c0                	test   %eax,%eax
  4020bd:	74 2d                	je     4020ec <touch3+0x51>
  4020bf:	48 89 da             	mov    %rbx,%rdx
  4020c2:	48 8d 35 bf 22 00 00 	lea    0x22bf(%rip),%rsi        # 404388 <_IO_stdin_used+0x388>
  4020c9:	bf 01 00 00 00       	mov    $0x1,%edi
  4020ce:	b8 00 00 00 00       	mov    $0x0,%eax
  4020d3:	e8 e8 f2 ff ff       	call   4013c0 <__printf_chk@plt>
  4020d8:	bf 03 00 00 00       	mov    $0x3,%edi
  4020dd:	e8 67 06 00 00       	call   402749 <validate>
  4020e2:	bf 00 00 00 00       	mov    $0x0,%edi
  4020e7:	e8 24 f3 ff ff       	call   401410 <exit@plt>
  4020ec:	48 89 da             	mov    %rbx,%rdx
  4020ef:	48 8d 35 ba 22 00 00 	lea    0x22ba(%rip),%rsi        # 4043b0 <_IO_stdin_used+0x3b0>
  4020f6:	bf 01 00 00 00       	mov    $0x1,%edi
  4020fb:	b8 00 00 00 00       	mov    $0x0,%eax
  402100:	e8 bb f2 ff ff       	call   4013c0 <__printf_chk@plt>
  402105:	bf 03 00 00 00       	mov    $0x3,%edi
  40210a:	e8 15 07 00 00       	call   402824 <fail>
  40210f:	eb d1                	jmp    4020e2 <touch3+0x47>

0000000000402111 <test>:
  402111:	f3 0f 1e fa          	endbr64 
  402115:	48 83 ec 08          	sub    $0x8,%rsp
  402119:	b8 00 00 00 00       	mov    $0x0,%eax
  40211e:	e8 05 fe ff ff       	call   401f28 <getbuf>
  402123:	89 c2                	mov    %eax,%edx
  402125:	48 89 e0             	mov    %rsp,%rax
  402128:	48 83 e0 0f          	and    $0xf,%rax
  40212c:	74 07                	je     402135 <aligned4>
  40212e:	b9 00 00 00 00       	mov    $0x0,%ecx
  402133:	eb 05                	jmp    40213a <done4>

0000000000402135 <aligned4>:
  402135:	b9 01 00 00 00       	mov    $0x1,%ecx

000000000040213a <done4>:
  40213a:	85 c9                	test   %ecx,%ecx
  40213c:	75 23                	jne    402161 <done4+0x27>
  40213e:	48 83 ec 08          	sub    $0x8,%rsp
  402142:	48 8d 35 8f 22 00 00 	lea    0x228f(%rip),%rsi        # 4043d8 <_IO_stdin_used+0x3d8>
  402149:	bf 01 00 00 00       	mov    $0x1,%edi
  40214e:	b8 00 00 00 00       	mov    $0x0,%eax
  402153:	e8 68 f2 ff ff       	call   4013c0 <__printf_chk@plt>
  402158:	48 83 c4 08          	add    $0x8,%rsp
  40215c:	48 83 c4 08          	add    $0x8,%rsp
  402160:	c3                   	ret    
  402161:	48 8d 35 70 22 00 00 	lea    0x2270(%rip),%rsi        # 4043d8 <_IO_stdin_used+0x3d8>
  402168:	bf 01 00 00 00       	mov    $0x1,%edi
  40216d:	b8 00 00 00 00       	mov    $0x0,%eax
  402172:	e8 49 f2 ff ff       	call   4013c0 <__printf_chk@plt>
  402177:	eb e3                	jmp    40215c <done4+0x22>

0000000000402179 <test2>:
  402179:	f3 0f 1e fa          	endbr64 
  40217d:	48 83 ec 08          	sub    $0x8,%rsp
  402181:	b8 00 00 00 00       	mov    $0x0,%eax
  402186:	e8 1d 00 00 00       	call   4021a8 <getbuf_withcanary>
  40218b:	89 c2                	mov    %eax,%edx
  40218d:	48 8d 35 6c 22 00 00 	lea    0x226c(%rip),%rsi        # 404400 <_IO_stdin_used+0x400>
  402194:	bf 01 00 00 00       	mov    $0x1,%edi
  402199:	b8 00 00 00 00       	mov    $0x0,%eax
  40219e:	e8 1d f2 ff ff       	call   4013c0 <__printf_chk@plt>
  4021a3:	48 83 c4 08          	add    $0x8,%rsp
  4021a7:	c3                   	ret    

00000000004021a8 <getbuf_withcanary>:
  4021a8:	f3 0f 1e fa          	endbr64 
  4021ac:	55                   	push   %rbp
  4021ad:	48 89 e5             	mov    %rsp,%rbp
  4021b0:	48 81 ec 90 01 00 00 	sub    $0x190,%rsp
  4021b7:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4021be:	00 00 
  4021c0:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4021c4:	31 c0                	xor    %eax,%eax
  4021c6:	c7 85 74 ff ff ff 00 	movl   $0x0,-0x8c(%rbp)
  4021cd:	00 00 00 
  4021d0:	8b 85 74 ff ff ff    	mov    -0x8c(%rbp),%eax
  4021d6:	89 85 70 ff ff ff    	mov    %eax,-0x90(%rbp)
  4021dc:	48 8d 85 70 fe ff ff 	lea    -0x190(%rbp),%rax
  4021e3:	48 89 c7             	mov    %rax,%rdi
  4021e6:	e8 ec 02 00 00       	call   4024d7 <Gets>
  4021eb:	8b 85 70 ff ff ff    	mov    -0x90(%rbp),%eax
  4021f1:	48 63 d0             	movslq %eax,%rdx
  4021f4:	48 8d 85 70 fe ff ff 	lea    -0x190(%rbp),%rax
  4021fb:	48 8d 88 08 01 00 00 	lea    0x108(%rax),%rcx
  402202:	48 8d 85 70 fe ff ff 	lea    -0x190(%rbp),%rax
  402209:	48 89 ce             	mov    %rcx,%rsi
  40220c:	48 89 c7             	mov    %rax,%rdi
  40220f:	e8 5c f1 ff ff       	call   401370 <memcpy@plt>
  402214:	8b 85 74 ff ff ff    	mov    -0x8c(%rbp),%eax
  40221a:	48 63 d0             	movslq %eax,%rdx
  40221d:	48 8d 85 70 fe ff ff 	lea    -0x190(%rbp),%rax
  402224:	48 8d 8d 70 fe ff ff 	lea    -0x190(%rbp),%rcx
  40222b:	48 81 c1 08 01 00 00 	add    $0x108,%rcx
  402232:	48 89 c6             	mov    %rax,%rsi
  402235:	48 89 cf             	mov    %rcx,%rdi
  402238:	e8 33 f1 ff ff       	call   401370 <memcpy@plt>
  40223d:	b8 01 00 00 00       	mov    $0x1,%eax
  402242:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  402246:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  40224d:	00 00 
  40224f:	74 05                	je     402256 <getbuf_withcanary+0xae>
  402251:	e8 65 07 00 00       	call   4029bb <__stack_chk_fail>
  402256:	c9                   	leave  
  402257:	c3                   	ret    

0000000000402258 <start_farm>:
  402258:	f3 0f 1e fa          	endbr64 
  40225c:	b8 01 00 00 00       	mov    $0x1,%eax
  402261:	c3                   	ret    

0000000000402262 <addval_153>:
  402262:	f3 0f 1e fa          	endbr64 
  402266:	8d 87 72 82 58 c3    	lea    -0x3ca77d8e(%rdi),%eax
  40226c:	c3                   	ret    

000000000040226d <addval_126>:
  40226d:	f3 0f 1e fa          	endbr64 
  402271:	8d 87 48 88 c7 90    	lea    -0x6f3877b8(%rdi),%eax
  402277:	c3                   	ret    

0000000000402278 <setval_287>:
  402278:	f3 0f 1e fa          	endbr64 
  40227c:	c7 07 e1 58 90 c3    	movl   $0xc39058e1,(%rdi)
  402282:	c3                   	ret    

0000000000402283 <setval_183>:
  402283:	f3 0f 1e fa          	endbr64 
  402287:	c7 07 f4 48 89 c7    	movl   $0xc78948f4,(%rdi)
  40228d:	c3                   	ret    

000000000040228e <getval_121>:
  40228e:	f3 0f 1e fa          	endbr64 
  402292:	b8 09 4c 89 c7       	mov    $0xc7894c09,%eax
  402297:	c3                   	ret    

0000000000402298 <setval_452>:
  402298:	f3 0f 1e fa          	endbr64 
  40229c:	c7 07 48 b3 8c 50    	movl   $0x508cb348,(%rdi)
  4022a2:	c3                   	ret    

00000000004022a3 <addval_375>:
  4022a3:	f3 0f 1e fa          	endbr64 
  4022a7:	8d 87 43 48 89 c7    	lea    -0x3876b7bd(%rdi),%eax
  4022ad:	c3                   	ret    

00000000004022ae <getval_342>:
  4022ae:	f3 0f 1e fa          	endbr64 
  4022b2:	b8 50 90 90 c3       	mov    $0xc3909050,%eax
  4022b7:	c3                   	ret    

00000000004022b8 <mid_farm>:
  4022b8:	f3 0f 1e fa          	endbr64 
  4022bc:	b8 01 00 00 00       	mov    $0x1,%eax
  4022c1:	c3                   	ret    

00000000004022c2 <add_xy>:
  4022c2:	f3 0f 1e fa          	endbr64 
  4022c6:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
  4022ca:	c3                   	ret    

00000000004022cb <setval_270>:
  4022cb:	f3 0f 1e fa          	endbr64 
  4022cf:	c7 07 89 c1 90 90    	movl   $0x9090c189,(%rdi)
  4022d5:	c3                   	ret    

00000000004022d6 <getval_175>:
  4022d6:	f3 0f 1e fa          	endbr64 
  4022da:	b8 48 89 e0 c3       	mov    $0xc3e08948,%eax
  4022df:	c3                   	ret    

00000000004022e0 <getval_439>:
  4022e0:	f3 0f 1e fa          	endbr64 
  4022e4:	b8 48 89 e0 92       	mov    $0x92e08948,%eax
  4022e9:	c3                   	ret    

00000000004022ea <getval_423>:
  4022ea:	f3 0f 1e fa          	endbr64 
  4022ee:	b8 88 c1 08 c9       	mov    $0xc908c188,%eax
  4022f3:	c3                   	ret    

00000000004022f4 <addval_488>:
  4022f4:	f3 0f 1e fa          	endbr64 
  4022f8:	8d 87 89 c1 c4 db    	lea    -0x243b3e77(%rdi),%eax
  4022fe:	c3                   	ret    

00000000004022ff <addval_434>:
  4022ff:	f3 0f 1e fa          	endbr64 
  402303:	8d 87 87 48 89 e0    	lea    -0x1f76b779(%rdi),%eax
  402309:	c3                   	ret    

000000000040230a <setval_133>:
  40230a:	f3 0f 1e fa          	endbr64 
  40230e:	c7 07 08 89 d6 94    	movl   $0x94d68908,(%rdi)
  402314:	c3                   	ret    

0000000000402315 <addval_326>:
  402315:	f3 0f 1e fa          	endbr64 
  402319:	8d 87 48 a9 e0 c3    	lea    -0x3c1f56b8(%rdi),%eax
  40231f:	c3                   	ret    

0000000000402320 <getval_400>:
  402320:	f3 0f 1e fa          	endbr64 
  402324:	b8 89 d6 91 c3       	mov    $0xc391d689,%eax
  402329:	c3                   	ret    

000000000040232a <setval_394>:
  40232a:	f3 0f 1e fa          	endbr64 
  40232e:	c7 07 89 ca 94 90    	movl   $0x9094ca89,(%rdi)
  402334:	c3                   	ret    

0000000000402335 <getval_256>:
  402335:	f3 0f 1e fa          	endbr64 
  402339:	b8 89 c1 38 c9       	mov    $0xc938c189,%eax
  40233e:	c3                   	ret    

000000000040233f <getval_413>:
  40233f:	f3 0f 1e fa          	endbr64 
  402343:	b8 89 c1 48 c9       	mov    $0xc948c189,%eax
  402348:	c3                   	ret    

0000000000402349 <addval_425>:
  402349:	f3 0f 1e fa          	endbr64 
  40234d:	8d 87 8d c1 20 db    	lea    -0x24df3e73(%rdi),%eax
  402353:	c3                   	ret    

0000000000402354 <getval_147>:
  402354:	f3 0f 1e fa          	endbr64 
  402358:	b8 48 81 e0 90       	mov    $0x90e08148,%eax
  40235d:	c3                   	ret    

000000000040235e <setval_354>:
  40235e:	f3 0f 1e fa          	endbr64 
  402362:	c7 07 85 c9 d6 90    	movl   $0x90d6c985,(%rdi)
  402368:	c3                   	ret    

0000000000402369 <addval_187>:
  402369:	f3 0f 1e fa          	endbr64 
  40236d:	8d 87 88 ca 84 d2    	lea    -0x2d7b3578(%rdi),%eax
  402373:	c3                   	ret    

0000000000402374 <addval_330>:
  402374:	f3 0f 1e fa          	endbr64 
  402378:	8d 87 81 d6 84 c0    	lea    -0x3f7b297f(%rdi),%eax
  40237e:	c3                   	ret    

000000000040237f <setval_156>:
  40237f:	f3 0f 1e fa          	endbr64 
  402383:	c7 07 89 d6 84 c0    	movl   $0xc084d689,(%rdi)
  402389:	c3                   	ret    

000000000040238a <addval_152>:
  40238a:	f3 0f 1e fa          	endbr64 
  40238e:	8d 87 89 c1 48 c9    	lea    -0x36b73e77(%rdi),%eax
  402394:	c3                   	ret    

0000000000402395 <getval_261>:
  402395:	f3 0f 1e fa          	endbr64 
  402399:	b8 89 ca 91 90       	mov    $0x9091ca89,%eax
  40239e:	c3                   	ret    

000000000040239f <setval_134>:
  40239f:	f3 0f 1e fa          	endbr64 
  4023a3:	c7 07 48 89 e0 92    	movl   $0x92e08948,(%rdi)
  4023a9:	c3                   	ret    

00000000004023aa <getval_471>:
  4023aa:	f3 0f 1e fa          	endbr64 
  4023ae:	b8 a9 ca 84 db       	mov    $0xdb84caa9,%eax
  4023b3:	c3                   	ret    

00000000004023b4 <addval_472>:
  4023b4:	f3 0f 1e fa          	endbr64 
  4023b8:	8d 87 c9 c1 84 c9    	lea    -0x367b3e37(%rdi),%eax
  4023be:	c3                   	ret    

00000000004023bf <setval_469>:
  4023bf:	f3 0f 1e fa          	endbr64 
  4023c3:	c7 07 48 89 e0 c7    	movl   $0xc7e08948,(%rdi)
  4023c9:	c3                   	ret    

00000000004023ca <getval_491>:
  4023ca:	f3 0f 1e fa          	endbr64 
  4023ce:	b8 99 ca 08 c9       	mov    $0xc908ca99,%eax
  4023d3:	c3                   	ret    

00000000004023d4 <getval_402>:
  4023d4:	f3 0f 1e fa          	endbr64 
  4023d8:	b8 c9 d6 38 d2       	mov    $0xd238d6c9,%eax
  4023dd:	c3                   	ret    

00000000004023de <setval_267>:
  4023de:	f3 0f 1e fa          	endbr64 
  4023e2:	c7 07 af 08 89 e0    	movl   $0xe08908af,(%rdi)
  4023e8:	c3                   	ret    

00000000004023e9 <addval_327>:
  4023e9:	f3 0f 1e fa          	endbr64 
  4023ed:	8d 87 89 ca 90 c3    	lea    -0x3c6f3577(%rdi),%eax
  4023f3:	c3                   	ret    

00000000004023f4 <addval_392>:
  4023f4:	f3 0f 1e fa          	endbr64 
  4023f8:	8d 87 89 ca c3 36    	lea    0x36c3ca89(%rdi),%eax
  4023fe:	c3                   	ret    

00000000004023ff <setval_157>:
  4023ff:	f3 0f 1e fa          	endbr64 
  402403:	c7 07 8d ca 84 c0    	movl   $0xc084ca8d,(%rdi)
  402409:	c3                   	ret    

000000000040240a <addval_378>:
  40240a:	f3 0f 1e fa          	endbr64 
  40240e:	8d 87 89 d6 c4 db    	lea    -0x243b2977(%rdi),%eax
  402414:	c3                   	ret    

0000000000402415 <setval_466>:
  402415:	f3 0f 1e fa          	endbr64 
  402419:	c7 07 0f 89 d6 c3    	movl   $0xc3d6890f,(%rdi)
  40241f:	c3                   	ret    

0000000000402420 <end_farm>:
  402420:	f3 0f 1e fa          	endbr64 
  402424:	b8 01 00 00 00       	mov    $0x1,%eax
  402429:	c3                   	ret    

000000000040242a <save_char>:
  40242a:	8b 05 14 5d 00 00    	mov    0x5d14(%rip),%eax        # 408144 <gets_cnt>
  402430:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  402435:	7f 4a                	jg     402481 <save_char+0x57>
  402437:	89 f9                	mov    %edi,%ecx
  402439:	c0 e9 04             	shr    $0x4,%cl
  40243c:	8d 14 40             	lea    (%rax,%rax,2),%edx
  40243f:	4c 8d 05 2a 23 00 00 	lea    0x232a(%rip),%r8        # 404770 <trans_char>
  402446:	83 e1 0f             	and    $0xf,%ecx
  402449:	45 0f b6 0c 08       	movzbl (%r8,%rcx,1),%r9d
  40244e:	48 8d 0d eb 50 00 00 	lea    0x50eb(%rip),%rcx        # 407540 <gets_buf>
  402455:	48 63 f2             	movslq %edx,%rsi
  402458:	44 88 0c 31          	mov    %r9b,(%rcx,%rsi,1)
  40245c:	8d 72 01             	lea    0x1(%rdx),%esi
  40245f:	83 e7 0f             	and    $0xf,%edi
  402462:	41 0f b6 3c 38       	movzbl (%r8,%rdi,1),%edi
  402467:	48 63 f6             	movslq %esi,%rsi
  40246a:	40 88 3c 31          	mov    %dil,(%rcx,%rsi,1)
  40246e:	83 c2 02             	add    $0x2,%edx
  402471:	48 63 d2             	movslq %edx,%rdx
  402474:	c6 04 11 20          	movb   $0x20,(%rcx,%rdx,1)
  402478:	83 c0 01             	add    $0x1,%eax
  40247b:	89 05 c3 5c 00 00    	mov    %eax,0x5cc3(%rip)        # 408144 <gets_cnt>
  402481:	c3                   	ret    

0000000000402482 <save_term>:
  402482:	8b 05 bc 5c 00 00    	mov    0x5cbc(%rip),%eax        # 408144 <gets_cnt>
  402488:	8d 04 40             	lea    (%rax,%rax,2),%eax
  40248b:	48 98                	cltq   
  40248d:	48 8d 15 ac 50 00 00 	lea    0x50ac(%rip),%rdx        # 407540 <gets_buf>
  402494:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  402498:	c3                   	ret    

0000000000402499 <check_fail>:
  402499:	f3 0f 1e fa          	endbr64 
  40249d:	50                   	push   %rax
  40249e:	58                   	pop    %rax
  40249f:	48 83 ec 08          	sub    $0x8,%rsp
  4024a3:	0f be 15 9e 5c 00 00 	movsbl 0x5c9e(%rip),%edx        # 408148 <target_prefix>
  4024aa:	4c 8d 05 8f 50 00 00 	lea    0x508f(%rip),%r8        # 407540 <gets_buf>
  4024b1:	8b 0d 61 50 00 00    	mov    0x5061(%rip),%ecx        # 407518 <check_level>
  4024b7:	48 8d 35 70 1f 00 00 	lea    0x1f70(%rip),%rsi        # 40442e <_IO_stdin_used+0x42e>
  4024be:	bf 01 00 00 00       	mov    $0x1,%edi
  4024c3:	b8 00 00 00 00       	mov    $0x0,%eax
  4024c8:	e8 f3 ee ff ff       	call   4013c0 <__printf_chk@plt>
  4024cd:	bf 01 00 00 00       	mov    $0x1,%edi
  4024d2:	e8 39 ef ff ff       	call   401410 <exit@plt>

00000000004024d7 <Gets>:
  4024d7:	f3 0f 1e fa          	endbr64 
  4024db:	41 54                	push   %r12
  4024dd:	55                   	push   %rbp
  4024de:	53                   	push   %rbx
  4024df:	49 89 fc             	mov    %rdi,%r12
  4024e2:	c7 05 58 5c 00 00 00 	movl   $0x0,0x5c58(%rip)        # 408144 <gets_cnt>
  4024e9:	00 00 00 
  4024ec:	48 89 fb             	mov    %rdi,%rbx
  4024ef:	48 8b 3d 1a 50 00 00 	mov    0x501a(%rip),%rdi        # 407510 <infile>
  4024f6:	e8 45 ef ff ff       	call   401440 <getc@plt>
  4024fb:	83 f8 ff             	cmp    $0xffffffff,%eax
  4024fe:	74 18                	je     402518 <Gets+0x41>
  402500:	83 f8 0a             	cmp    $0xa,%eax
  402503:	74 13                	je     402518 <Gets+0x41>
  402505:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  402509:	88 03                	mov    %al,(%rbx)
  40250b:	0f b6 f8             	movzbl %al,%edi
  40250e:	e8 17 ff ff ff       	call   40242a <save_char>
  402513:	48 89 eb             	mov    %rbp,%rbx
  402516:	eb d7                	jmp    4024ef <Gets+0x18>
  402518:	c6 03 00             	movb   $0x0,(%rbx)
  40251b:	b8 00 00 00 00       	mov    $0x0,%eax
  402520:	e8 5d ff ff ff       	call   402482 <save_term>
  402525:	4c 89 e0             	mov    %r12,%rax
  402528:	5b                   	pop    %rbx
  402529:	5d                   	pop    %rbp
  40252a:	41 5c                	pop    %r12
  40252c:	c3                   	ret    

000000000040252d <notify_server>:
  40252d:	f3 0f 1e fa          	endbr64 
  402531:	55                   	push   %rbp
  402532:	53                   	push   %rbx
  402533:	4c 8d 9c 24 00 c0 ff 	lea    -0x4000(%rsp),%r11
  40253a:	ff 
  40253b:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  402542:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  402547:	4c 39 dc             	cmp    %r11,%rsp
  40254a:	75 ef                	jne    40253b <notify_server+0xe>
  40254c:	48 83 ec 18          	sub    $0x18,%rsp
  402550:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402557:	00 00 
  402559:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  402560:	00 
  402561:	31 c0                	xor    %eax,%eax
  402563:	83 3d be 4f 00 00 00 	cmpl   $0x0,0x4fbe(%rip)        # 407528 <is_checker>
  40256a:	0f 85 b7 01 00 00    	jne    402727 <notify_server+0x1fa>
  402570:	89 fb                	mov    %edi,%ebx
  402572:	81 3d c8 5b 00 00 9c 	cmpl   $0x1f9c,0x5bc8(%rip)        # 408144 <gets_cnt>
  402579:	1f 00 00 
  40257c:	7f 18                	jg     402596 <notify_server+0x69>
  40257e:	0f be 05 c3 5b 00 00 	movsbl 0x5bc3(%rip),%eax        # 408148 <target_prefix>
  402585:	83 3d 14 4f 00 00 00 	cmpl   $0x0,0x4f14(%rip)        # 4074a0 <notify>
  40258c:	74 23                	je     4025b1 <notify_server+0x84>
  40258e:	8b 15 8c 4f 00 00    	mov    0x4f8c(%rip),%edx        # 407520 <authkey>
  402594:	eb 20                	jmp    4025b6 <notify_server+0x89>
  402596:	48 8d 35 bb 1f 00 00 	lea    0x1fbb(%rip),%rsi        # 404558 <_IO_stdin_used+0x558>
  40259d:	bf 01 00 00 00       	mov    $0x1,%edi
  4025a2:	e8 19 ee ff ff       	call   4013c0 <__printf_chk@plt>
  4025a7:	bf 01 00 00 00       	mov    $0x1,%edi
  4025ac:	e8 5f ee ff ff       	call   401410 <exit@plt>
  4025b1:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  4025b6:	85 db                	test   %ebx,%ebx
  4025b8:	0f 84 9b 00 00 00    	je     402659 <notify_server+0x12c>
  4025be:	48 8d 2d 84 1e 00 00 	lea    0x1e84(%rip),%rbp        # 404449 <_IO_stdin_used+0x449>
  4025c5:	48 89 e7             	mov    %rsp,%rdi
  4025c8:	48 8d 0d 71 4f 00 00 	lea    0x4f71(%rip),%rcx        # 407540 <gets_buf>
  4025cf:	51                   	push   %rcx
  4025d0:	56                   	push   %rsi
  4025d1:	50                   	push   %rax
  4025d2:	52                   	push   %rdx
  4025d3:	49 89 e9             	mov    %rbp,%r9
  4025d6:	44 8b 05 73 4b 00 00 	mov    0x4b73(%rip),%r8d        # 407150 <target_id>
  4025dd:	48 8d 0d 6a 1e 00 00 	lea    0x1e6a(%rip),%rcx        # 40444e <_IO_stdin_used+0x44e>
  4025e4:	ba 00 20 00 00       	mov    $0x2000,%edx
  4025e9:	be 01 00 00 00       	mov    $0x1,%esi
  4025ee:	b8 00 00 00 00       	mov    $0x0,%eax
  4025f3:	e8 58 ee ff ff       	call   401450 <__sprintf_chk@plt>
  4025f8:	48 83 c4 20          	add    $0x20,%rsp
  4025fc:	83 3d 9d 4e 00 00 00 	cmpl   $0x0,0x4e9d(%rip)        # 4074a0 <notify>
  402603:	0f 84 95 00 00 00    	je     40269e <notify_server+0x171>
  402609:	48 89 e1             	mov    %rsp,%rcx
  40260c:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
  402613:	00 
  402614:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  40261a:	48 8b 15 47 4b 00 00 	mov    0x4b47(%rip),%rdx        # 407168 <lab>
  402621:	48 8b 35 48 4b 00 00 	mov    0x4b48(%rip),%rsi        # 407170 <course>
  402628:	48 8b 3d 31 4b 00 00 	mov    0x4b31(%rip),%rdi        # 407160 <user_id>
  40262f:	e8 75 12 00 00       	call   4038a9 <driver_post>
  402634:	85 c0                	test   %eax,%eax
  402636:	78 2d                	js     402665 <notify_server+0x138>
  402638:	85 db                	test   %ebx,%ebx
  40263a:	74 51                	je     40268d <notify_server+0x160>
  40263c:	48 8d 3d 45 1f 00 00 	lea    0x1f45(%rip),%rdi        # 404588 <_IO_stdin_used+0x588>
  402643:	e8 68 ec ff ff       	call   4012b0 <puts@plt>
  402648:	48 8d 3d 27 1e 00 00 	lea    0x1e27(%rip),%rdi        # 404476 <_IO_stdin_used+0x476>
  40264f:	e8 5c ec ff ff       	call   4012b0 <puts@plt>
  402654:	e9 ce 00 00 00       	jmp    402727 <notify_server+0x1fa>
  402659:	48 8d 2d e4 1d 00 00 	lea    0x1de4(%rip),%rbp        # 404444 <_IO_stdin_used+0x444>
  402660:	e9 60 ff ff ff       	jmp    4025c5 <notify_server+0x98>
  402665:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
  40266c:	00 
  40266d:	48 8d 35 f6 1d 00 00 	lea    0x1df6(%rip),%rsi        # 40446a <_IO_stdin_used+0x46a>
  402674:	bf 01 00 00 00       	mov    $0x1,%edi
  402679:	b8 00 00 00 00       	mov    $0x0,%eax
  40267e:	e8 3d ed ff ff       	call   4013c0 <__printf_chk@plt>
  402683:	bf 01 00 00 00       	mov    $0x1,%edi
  402688:	e8 83 ed ff ff       	call   401410 <exit@plt>
  40268d:	48 8d 3d ec 1d 00 00 	lea    0x1dec(%rip),%rdi        # 404480 <_IO_stdin_used+0x480>
  402694:	e8 17 ec ff ff       	call   4012b0 <puts@plt>
  402699:	e9 89 00 00 00       	jmp    402727 <notify_server+0x1fa>
  40269e:	48 89 ea             	mov    %rbp,%rdx
  4026a1:	48 8d 35 18 1f 00 00 	lea    0x1f18(%rip),%rsi        # 4045c0 <_IO_stdin_used+0x5c0>
  4026a8:	bf 01 00 00 00       	mov    $0x1,%edi
  4026ad:	b8 00 00 00 00       	mov    $0x0,%eax
  4026b2:	e8 09 ed ff ff       	call   4013c0 <__printf_chk@plt>
  4026b7:	48 8b 15 a2 4a 00 00 	mov    0x4aa2(%rip),%rdx        # 407160 <user_id>
  4026be:	48 8d 35 c2 1d 00 00 	lea    0x1dc2(%rip),%rsi        # 404487 <_IO_stdin_used+0x487>
  4026c5:	bf 01 00 00 00       	mov    $0x1,%edi
  4026ca:	b8 00 00 00 00       	mov    $0x0,%eax
  4026cf:	e8 ec ec ff ff       	call   4013c0 <__printf_chk@plt>
  4026d4:	48 8b 15 95 4a 00 00 	mov    0x4a95(%rip),%rdx        # 407170 <course>
  4026db:	48 8d 35 b2 1d 00 00 	lea    0x1db2(%rip),%rsi        # 404494 <_IO_stdin_used+0x494>
  4026e2:	bf 01 00 00 00       	mov    $0x1,%edi
  4026e7:	b8 00 00 00 00       	mov    $0x0,%eax
  4026ec:	e8 cf ec ff ff       	call   4013c0 <__printf_chk@plt>
  4026f1:	48 8b 15 70 4a 00 00 	mov    0x4a70(%rip),%rdx        # 407168 <lab>
  4026f8:	48 8d 35 a1 1d 00 00 	lea    0x1da1(%rip),%rsi        # 4044a0 <_IO_stdin_used+0x4a0>
  4026ff:	bf 01 00 00 00       	mov    $0x1,%edi
  402704:	b8 00 00 00 00       	mov    $0x0,%eax
  402709:	e8 b2 ec ff ff       	call   4013c0 <__printf_chk@plt>
  40270e:	48 89 e2             	mov    %rsp,%rdx
  402711:	48 8d 35 91 1d 00 00 	lea    0x1d91(%rip),%rsi        # 4044a9 <_IO_stdin_used+0x4a9>
  402718:	bf 01 00 00 00       	mov    $0x1,%edi
  40271d:	b8 00 00 00 00       	mov    $0x0,%eax
  402722:	e8 99 ec ff ff       	call   4013c0 <__printf_chk@plt>
  402727:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  40272e:	00 
  40272f:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  402736:	00 00 
  402738:	75 0a                	jne    402744 <notify_server+0x217>
  40273a:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
  402741:	5b                   	pop    %rbx
  402742:	5d                   	pop    %rbp
  402743:	c3                   	ret    
  402744:	e8 72 02 00 00       	call   4029bb <__stack_chk_fail>

0000000000402749 <validate>:
  402749:	f3 0f 1e fa          	endbr64 
  40274d:	53                   	push   %rbx
  40274e:	89 fb                	mov    %edi,%ebx
  402750:	83 3d d1 4d 00 00 00 	cmpl   $0x0,0x4dd1(%rip)        # 407528 <is_checker>
  402757:	74 79                	je     4027d2 <validate+0x89>
  402759:	39 3d bd 4d 00 00    	cmp    %edi,0x4dbd(%rip)        # 40751c <vlevel>
  40275f:	75 39                	jne    40279a <validate+0x51>
  402761:	8b 15 b1 4d 00 00    	mov    0x4db1(%rip),%edx        # 407518 <check_level>
  402767:	39 fa                	cmp    %edi,%edx
  402769:	75 45                	jne    4027b0 <validate+0x67>
  40276b:	0f be 0d d6 59 00 00 	movsbl 0x59d6(%rip),%ecx        # 408148 <target_prefix>
  402772:	4c 8d 0d c7 4d 00 00 	lea    0x4dc7(%rip),%r9        # 407540 <gets_buf>
  402779:	41 89 f8             	mov    %edi,%r8d
  40277c:	8b 15 9e 4d 00 00    	mov    0x4d9e(%rip),%edx        # 407520 <authkey>
  402782:	48 8d 35 87 1e 00 00 	lea    0x1e87(%rip),%rsi        # 404610 <_IO_stdin_used+0x610>
  402789:	bf 01 00 00 00       	mov    $0x1,%edi
  40278e:	b8 00 00 00 00       	mov    $0x0,%eax
  402793:	e8 28 ec ff ff       	call   4013c0 <__printf_chk@plt>
  402798:	5b                   	pop    %rbx
  402799:	c3                   	ret    
  40279a:	48 8d 3d 14 1d 00 00 	lea    0x1d14(%rip),%rdi        # 4044b5 <_IO_stdin_used+0x4b5>
  4027a1:	e8 0a eb ff ff       	call   4012b0 <puts@plt>
  4027a6:	b8 00 00 00 00       	mov    $0x0,%eax
  4027ab:	e8 e9 fc ff ff       	call   402499 <check_fail>
  4027b0:	89 f9                	mov    %edi,%ecx
  4027b2:	48 8d 35 2f 1e 00 00 	lea    0x1e2f(%rip),%rsi        # 4045e8 <_IO_stdin_used+0x5e8>
  4027b9:	bf 01 00 00 00       	mov    $0x1,%edi
  4027be:	b8 00 00 00 00       	mov    $0x0,%eax
  4027c3:	e8 f8 eb ff ff       	call   4013c0 <__printf_chk@plt>
  4027c8:	b8 00 00 00 00       	mov    $0x0,%eax
  4027cd:	e8 c7 fc ff ff       	call   402499 <check_fail>
  4027d2:	39 3d 44 4d 00 00    	cmp    %edi,0x4d44(%rip)        # 40751c <vlevel>
  4027d8:	74 1a                	je     4027f4 <validate+0xab>
  4027da:	48 8d 3d d4 1c 00 00 	lea    0x1cd4(%rip),%rdi        # 4044b5 <_IO_stdin_used+0x4b5>
  4027e1:	e8 ca ea ff ff       	call   4012b0 <puts@plt>
  4027e6:	89 de                	mov    %ebx,%esi
  4027e8:	bf 00 00 00 00       	mov    $0x0,%edi
  4027ed:	e8 3b fd ff ff       	call   40252d <notify_server>
  4027f2:	eb a4                	jmp    402798 <validate+0x4f>
  4027f4:	0f be 0d 4d 59 00 00 	movsbl 0x594d(%rip),%ecx        # 408148 <target_prefix>
  4027fb:	89 fa                	mov    %edi,%edx
  4027fd:	48 8d 35 34 1e 00 00 	lea    0x1e34(%rip),%rsi        # 404638 <_IO_stdin_used+0x638>
  402804:	bf 01 00 00 00       	mov    $0x1,%edi
  402809:	b8 00 00 00 00       	mov    $0x0,%eax
  40280e:	e8 ad eb ff ff       	call   4013c0 <__printf_chk@plt>
  402813:	89 de                	mov    %ebx,%esi
  402815:	bf 01 00 00 00       	mov    $0x1,%edi
  40281a:	e8 0e fd ff ff       	call   40252d <notify_server>
  40281f:	e9 74 ff ff ff       	jmp    402798 <validate+0x4f>

0000000000402824 <fail>:
  402824:	f3 0f 1e fa          	endbr64 
  402828:	48 83 ec 08          	sub    $0x8,%rsp
  40282c:	83 3d f5 4c 00 00 00 	cmpl   $0x0,0x4cf5(%rip)        # 407528 <is_checker>
  402833:	75 11                	jne    402846 <fail+0x22>
  402835:	89 fe                	mov    %edi,%esi
  402837:	bf 00 00 00 00       	mov    $0x0,%edi
  40283c:	e8 ec fc ff ff       	call   40252d <notify_server>
  402841:	48 83 c4 08          	add    $0x8,%rsp
  402845:	c3                   	ret    
  402846:	b8 00 00 00 00       	mov    $0x0,%eax
  40284b:	e8 49 fc ff ff       	call   402499 <check_fail>

0000000000402850 <bushandler>:
  402850:	f3 0f 1e fa          	endbr64 
  402854:	50                   	push   %rax
  402855:	58                   	pop    %rax
  402856:	48 83 ec 08          	sub    $0x8,%rsp
  40285a:	83 3d c7 4c 00 00 00 	cmpl   $0x0,0x4cc7(%rip)        # 407528 <is_checker>
  402861:	74 16                	je     402879 <bushandler+0x29>
  402863:	48 8d 3d 69 1c 00 00 	lea    0x1c69(%rip),%rdi        # 4044d3 <_IO_stdin_used+0x4d3>
  40286a:	e8 41 ea ff ff       	call   4012b0 <puts@plt>
  40286f:	b8 00 00 00 00       	mov    $0x0,%eax
  402874:	e8 20 fc ff ff       	call   402499 <check_fail>
  402879:	48 8d 3d f0 1d 00 00 	lea    0x1df0(%rip),%rdi        # 404670 <_IO_stdin_used+0x670>
  402880:	e8 2b ea ff ff       	call   4012b0 <puts@plt>
  402885:	48 8d 3d 51 1c 00 00 	lea    0x1c51(%rip),%rdi        # 4044dd <_IO_stdin_used+0x4dd>
  40288c:	e8 1f ea ff ff       	call   4012b0 <puts@plt>
  402891:	be 00 00 00 00       	mov    $0x0,%esi
  402896:	bf 00 00 00 00       	mov    $0x0,%edi
  40289b:	e8 8d fc ff ff       	call   40252d <notify_server>
  4028a0:	bf 01 00 00 00       	mov    $0x1,%edi
  4028a5:	e8 66 eb ff ff       	call   401410 <exit@plt>

00000000004028aa <seghandler>:
  4028aa:	f3 0f 1e fa          	endbr64 
  4028ae:	50                   	push   %rax
  4028af:	58                   	pop    %rax
  4028b0:	48 83 ec 08          	sub    $0x8,%rsp
  4028b4:	83 3d 6d 4c 00 00 00 	cmpl   $0x0,0x4c6d(%rip)        # 407528 <is_checker>
  4028bb:	74 16                	je     4028d3 <seghandler+0x29>
  4028bd:	48 8d 3d 2f 1c 00 00 	lea    0x1c2f(%rip),%rdi        # 4044f3 <_IO_stdin_used+0x4f3>
  4028c4:	e8 e7 e9 ff ff       	call   4012b0 <puts@plt>
  4028c9:	b8 00 00 00 00       	mov    $0x0,%eax
  4028ce:	e8 c6 fb ff ff       	call   402499 <check_fail>
  4028d3:	48 8d 3d b6 1d 00 00 	lea    0x1db6(%rip),%rdi        # 404690 <_IO_stdin_used+0x690>
  4028da:	e8 d1 e9 ff ff       	call   4012b0 <puts@plt>
  4028df:	48 8d 3d f7 1b 00 00 	lea    0x1bf7(%rip),%rdi        # 4044dd <_IO_stdin_used+0x4dd>
  4028e6:	e8 c5 e9 ff ff       	call   4012b0 <puts@plt>
  4028eb:	be 00 00 00 00       	mov    $0x0,%esi
  4028f0:	bf 00 00 00 00       	mov    $0x0,%edi
  4028f5:	e8 33 fc ff ff       	call   40252d <notify_server>
  4028fa:	bf 01 00 00 00       	mov    $0x1,%edi
  4028ff:	e8 0c eb ff ff       	call   401410 <exit@plt>

0000000000402904 <illegalhandler>:
  402904:	f3 0f 1e fa          	endbr64 
  402908:	50                   	push   %rax
  402909:	58                   	pop    %rax
  40290a:	48 83 ec 08          	sub    $0x8,%rsp
  40290e:	83 3d 13 4c 00 00 00 	cmpl   $0x0,0x4c13(%rip)        # 407528 <is_checker>
  402915:	74 16                	je     40292d <illegalhandler+0x29>
  402917:	48 8d 3d e8 1b 00 00 	lea    0x1be8(%rip),%rdi        # 404506 <_IO_stdin_used+0x506>
  40291e:	e8 8d e9 ff ff       	call   4012b0 <puts@plt>
  402923:	b8 00 00 00 00       	mov    $0x0,%eax
  402928:	e8 6c fb ff ff       	call   402499 <check_fail>
  40292d:	48 8d 3d 84 1d 00 00 	lea    0x1d84(%rip),%rdi        # 4046b8 <_IO_stdin_used+0x6b8>
  402934:	e8 77 e9 ff ff       	call   4012b0 <puts@plt>
  402939:	48 8d 3d 9d 1b 00 00 	lea    0x1b9d(%rip),%rdi        # 4044dd <_IO_stdin_used+0x4dd>
  402940:	e8 6b e9 ff ff       	call   4012b0 <puts@plt>
  402945:	be 00 00 00 00       	mov    $0x0,%esi
  40294a:	bf 00 00 00 00       	mov    $0x0,%edi
  40294f:	e8 d9 fb ff ff       	call   40252d <notify_server>
  402954:	bf 01 00 00 00       	mov    $0x1,%edi
  402959:	e8 b2 ea ff ff       	call   401410 <exit@plt>

000000000040295e <sigalrmhandler>:
  40295e:	f3 0f 1e fa          	endbr64 
  402962:	50                   	push   %rax
  402963:	58                   	pop    %rax
  402964:	48 83 ec 08          	sub    $0x8,%rsp
  402968:	83 3d b9 4b 00 00 00 	cmpl   $0x0,0x4bb9(%rip)        # 407528 <is_checker>
  40296f:	74 16                	je     402987 <sigalrmhandler+0x29>
  402971:	48 8d 3d a2 1b 00 00 	lea    0x1ba2(%rip),%rdi        # 40451a <_IO_stdin_used+0x51a>
  402978:	e8 33 e9 ff ff       	call   4012b0 <puts@plt>
  40297d:	b8 00 00 00 00       	mov    $0x0,%eax
  402982:	e8 12 fb ff ff       	call   402499 <check_fail>
  402987:	ba 02 00 00 00       	mov    $0x2,%edx
  40298c:	48 8d 35 55 1d 00 00 	lea    0x1d55(%rip),%rsi        # 4046e8 <_IO_stdin_used+0x6e8>
  402993:	bf 01 00 00 00       	mov    $0x1,%edi
  402998:	b8 00 00 00 00       	mov    $0x0,%eax
  40299d:	e8 1e ea ff ff       	call   4013c0 <__printf_chk@plt>
  4029a2:	be 00 00 00 00       	mov    $0x0,%esi
  4029a7:	bf 00 00 00 00       	mov    $0x0,%edi
  4029ac:	e8 7c fb ff ff       	call   40252d <notify_server>
  4029b1:	bf 01 00 00 00       	mov    $0x1,%edi
  4029b6:	e8 55 ea ff ff       	call   401410 <exit@plt>

00000000004029bb <__stack_chk_fail>:
  4029bb:	f3 0f 1e fa          	endbr64 
  4029bf:	50                   	push   %rax
  4029c0:	58                   	pop    %rax
  4029c1:	48 83 ec 08          	sub    $0x8,%rsp
  4029c5:	83 3d 5c 4b 00 00 00 	cmpl   $0x0,0x4b5c(%rip)        # 407528 <is_checker>
  4029cc:	74 16                	je     4029e4 <__stack_chk_fail+0x29>
  4029ce:	48 8d 3d 4d 1b 00 00 	lea    0x1b4d(%rip),%rdi        # 404522 <_IO_stdin_used+0x522>
  4029d5:	e8 d6 e8 ff ff       	call   4012b0 <puts@plt>
  4029da:	b8 00 00 00 00       	mov    $0x0,%eax
  4029df:	e8 b5 fa ff ff       	call   402499 <check_fail>
  4029e4:	48 8d 3d 35 1d 00 00 	lea    0x1d35(%rip),%rdi        # 404720 <_IO_stdin_used+0x720>
  4029eb:	e8 c0 e8 ff ff       	call   4012b0 <puts@plt>
  4029f0:	48 8d 3d e6 1a 00 00 	lea    0x1ae6(%rip),%rdi        # 4044dd <_IO_stdin_used+0x4dd>
  4029f7:	e8 b4 e8 ff ff       	call   4012b0 <puts@plt>
  4029fc:	be 00 00 00 00       	mov    $0x0,%esi
  402a01:	bf 00 00 00 00       	mov    $0x0,%edi
  402a06:	e8 22 fb ff ff       	call   40252d <notify_server>
  402a0b:	bf 01 00 00 00       	mov    $0x1,%edi
  402a10:	e8 fb e9 ff ff       	call   401410 <exit@plt>

0000000000402a15 <launch>:
  402a15:	f3 0f 1e fa          	endbr64 
  402a19:	55                   	push   %rbp
  402a1a:	48 89 e5             	mov    %rsp,%rbp
  402a1d:	53                   	push   %rbx
  402a1e:	48 83 ec 18          	sub    $0x18,%rsp
  402a22:	48 89 fa             	mov    %rdi,%rdx
  402a25:	89 f3                	mov    %esi,%ebx
  402a27:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402a2e:	00 00 
  402a30:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  402a34:	31 c0                	xor    %eax,%eax
  402a36:	48 8d 47 17          	lea    0x17(%rdi),%rax
  402a3a:	48 89 c1             	mov    %rax,%rcx
  402a3d:	48 83 e1 f0          	and    $0xfffffffffffffff0,%rcx
  402a41:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
  402a47:	48 89 e6             	mov    %rsp,%rsi
  402a4a:	48 29 c6             	sub    %rax,%rsi
  402a4d:	48 89 f0             	mov    %rsi,%rax
  402a50:	48 39 c4             	cmp    %rax,%rsp
  402a53:	74 12                	je     402a67 <launch+0x52>
  402a55:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  402a5c:	48 83 8c 24 f8 0f 00 	orq    $0x0,0xff8(%rsp)
  402a63:	00 00 
  402a65:	eb e9                	jmp    402a50 <launch+0x3b>
  402a67:	48 89 c8             	mov    %rcx,%rax
  402a6a:	25 ff 0f 00 00       	and    $0xfff,%eax
  402a6f:	48 29 c4             	sub    %rax,%rsp
  402a72:	48 85 c0             	test   %rax,%rax
  402a75:	74 06                	je     402a7d <launch+0x68>
  402a77:	48 83 4c 04 f8 00    	orq    $0x0,-0x8(%rsp,%rax,1)
  402a7d:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  402a82:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  402a86:	be f4 00 00 00       	mov    $0xf4,%esi
  402a8b:	e8 50 e8 ff ff       	call   4012e0 <memset@plt>
  402a90:	48 8b 05 29 4a 00 00 	mov    0x4a29(%rip),%rax        # 4074c0 <stdin@GLIBC_2.2.5>
  402a97:	48 39 05 72 4a 00 00 	cmp    %rax,0x4a72(%rip)        # 407510 <infile>
  402a9e:	74 42                	je     402ae2 <launch+0xcd>
  402aa0:	c7 05 72 4a 00 00 00 	movl   $0x0,0x4a72(%rip)        # 40751c <vlevel>
  402aa7:	00 00 00 
  402aaa:	85 db                	test   %ebx,%ebx
  402aac:	75 42                	jne    402af0 <launch+0xdb>
  402aae:	b8 00 00 00 00       	mov    $0x0,%eax
  402ab3:	e8 59 f6 ff ff       	call   402111 <test>
  402ab8:	83 3d 69 4a 00 00 00 	cmpl   $0x0,0x4a69(%rip)        # 407528 <is_checker>
  402abf:	75 3b                	jne    402afc <launch+0xe7>
  402ac1:	48 8d 3d 81 1a 00 00 	lea    0x1a81(%rip),%rdi        # 404549 <_IO_stdin_used+0x549>
  402ac8:	e8 e3 e7 ff ff       	call   4012b0 <puts@plt>
  402acd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402ad1:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  402ad8:	00 00 
  402ada:	75 36                	jne    402b12 <launch+0xfd>
  402adc:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  402ae0:	c9                   	leave  
  402ae1:	c3                   	ret    
  402ae2:	48 8d 3d 48 1a 00 00 	lea    0x1a48(%rip),%rdi        # 404531 <_IO_stdin_used+0x531>
  402ae9:	e8 c2 e7 ff ff       	call   4012b0 <puts@plt>
  402aee:	eb b0                	jmp    402aa0 <launch+0x8b>
  402af0:	b8 00 00 00 00       	mov    $0x0,%eax
  402af5:	e8 7f f6 ff ff       	call   402179 <test2>
  402afa:	eb bc                	jmp    402ab8 <launch+0xa3>
  402afc:	48 8d 3d 3b 1a 00 00 	lea    0x1a3b(%rip),%rdi        # 40453e <_IO_stdin_used+0x53e>
  402b03:	e8 a8 e7 ff ff       	call   4012b0 <puts@plt>
  402b08:	b8 00 00 00 00       	mov    $0x0,%eax
  402b0d:	e8 87 f9 ff ff       	call   402499 <check_fail>
  402b12:	e8 a4 fe ff ff       	call   4029bb <__stack_chk_fail>

0000000000402b17 <stable_launch>:
  402b17:	f3 0f 1e fa          	endbr64 
  402b1b:	55                   	push   %rbp
  402b1c:	53                   	push   %rbx
  402b1d:	48 83 ec 08          	sub    $0x8,%rsp
  402b21:	89 f5                	mov    %esi,%ebp
  402b23:	48 89 3d de 49 00 00 	mov    %rdi,0x49de(%rip)        # 407508 <global_offset>
  402b2a:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  402b30:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  402b36:	b9 32 01 00 00       	mov    $0x132,%ecx
  402b3b:	ba 07 00 00 00       	mov    $0x7,%edx
  402b40:	be 00 00 10 00       	mov    $0x100000,%esi
  402b45:	bf 00 60 58 55       	mov    $0x55586000,%edi
  402b4a:	e8 81 e7 ff ff       	call   4012d0 <mmap@plt>
  402b4f:	48 89 c3             	mov    %rax,%rbx
  402b52:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  402b58:	75 4a                	jne    402ba4 <stable_launch+0x8d>
  402b5a:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  402b61:	48 89 15 e8 55 00 00 	mov    %rdx,0x55e8(%rip)        # 408150 <stack_top>
  402b68:	48 89 e0             	mov    %rsp,%rax
  402b6b:	48 89 d4             	mov    %rdx,%rsp
  402b6e:	48 89 c2             	mov    %rax,%rdx
  402b71:	48 89 15 88 49 00 00 	mov    %rdx,0x4988(%rip)        # 407500 <global_save_stack>
  402b78:	89 ee                	mov    %ebp,%esi
  402b7a:	48 8b 3d 87 49 00 00 	mov    0x4987(%rip),%rdi        # 407508 <global_offset>
  402b81:	e8 8f fe ff ff       	call   402a15 <launch>
  402b86:	48 8b 05 73 49 00 00 	mov    0x4973(%rip),%rax        # 407500 <global_save_stack>
  402b8d:	48 89 c4             	mov    %rax,%rsp
  402b90:	be 00 00 10 00       	mov    $0x100000,%esi
  402b95:	48 89 df             	mov    %rbx,%rdi
  402b98:	e8 13 e8 ff ff       	call   4013b0 <munmap@plt>
  402b9d:	48 83 c4 08          	add    $0x8,%rsp
  402ba1:	5b                   	pop    %rbx
  402ba2:	5d                   	pop    %rbp
  402ba3:	c3                   	ret    
  402ba4:	be 00 00 10 00       	mov    $0x100000,%esi
  402ba9:	48 89 c7             	mov    %rax,%rdi
  402bac:	e8 ff e7 ff ff       	call   4013b0 <munmap@plt>
  402bb1:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  402bb6:	48 8d 15 8b 1b 00 00 	lea    0x1b8b(%rip),%rdx        # 404748 <_IO_stdin_used+0x748>
  402bbd:	be 01 00 00 00       	mov    $0x1,%esi
  402bc2:	48 8b 3d 17 49 00 00 	mov    0x4917(%rip),%rdi        # 4074e0 <stderr@GLIBC_2.2.5>
  402bc9:	b8 00 00 00 00       	mov    $0x0,%eax
  402bce:	e8 5d e8 ff ff       	call   401430 <__fprintf_chk@plt>
  402bd3:	bf 01 00 00 00       	mov    $0x1,%edi
  402bd8:	e8 33 e8 ff ff       	call   401410 <exit@plt>

0000000000402bdd <rio_readinitb>:
  402bdd:	89 37                	mov    %esi,(%rdi)
  402bdf:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  402be6:	48 8d 47 10          	lea    0x10(%rdi),%rax
  402bea:	48 89 47 08          	mov    %rax,0x8(%rdi)
  402bee:	c3                   	ret    

0000000000402bef <sigalrm_handler>:
  402bef:	f3 0f 1e fa          	endbr64 
  402bf3:	50                   	push   %rax
  402bf4:	58                   	pop    %rax
  402bf5:	48 83 ec 08          	sub    $0x8,%rsp
  402bf9:	b9 00 00 00 00       	mov    $0x0,%ecx
  402bfe:	48 8d 15 7b 1b 00 00 	lea    0x1b7b(%rip),%rdx        # 404780 <trans_char+0x10>
  402c05:	be 01 00 00 00       	mov    $0x1,%esi
  402c0a:	48 8b 3d cf 48 00 00 	mov    0x48cf(%rip),%rdi        # 4074e0 <stderr@GLIBC_2.2.5>
  402c11:	b8 00 00 00 00       	mov    $0x0,%eax
  402c16:	e8 15 e8 ff ff       	call   401430 <__fprintf_chk@plt>
  402c1b:	bf 01 00 00 00       	mov    $0x1,%edi
  402c20:	e8 eb e7 ff ff       	call   401410 <exit@plt>

0000000000402c25 <rio_writen>:
  402c25:	41 55                	push   %r13
  402c27:	41 54                	push   %r12
  402c29:	55                   	push   %rbp
  402c2a:	53                   	push   %rbx
  402c2b:	48 83 ec 08          	sub    $0x8,%rsp
  402c2f:	41 89 fc             	mov    %edi,%r12d
  402c32:	48 89 f5             	mov    %rsi,%rbp
  402c35:	49 89 d5             	mov    %rdx,%r13
  402c38:	48 89 d3             	mov    %rdx,%rbx
  402c3b:	eb 06                	jmp    402c43 <rio_writen+0x1e>
  402c3d:	48 29 c3             	sub    %rax,%rbx
  402c40:	48 01 c5             	add    %rax,%rbp
  402c43:	48 85 db             	test   %rbx,%rbx
  402c46:	74 24                	je     402c6c <rio_writen+0x47>
  402c48:	48 89 da             	mov    %rbx,%rdx
  402c4b:	48 89 ee             	mov    %rbp,%rsi
  402c4e:	44 89 e7             	mov    %r12d,%edi
  402c51:	e8 6a e6 ff ff       	call   4012c0 <write@plt>
  402c56:	48 85 c0             	test   %rax,%rax
  402c59:	7f e2                	jg     402c3d <rio_writen+0x18>
  402c5b:	e8 00 e6 ff ff       	call   401260 <__errno_location@plt>
  402c60:	83 38 04             	cmpl   $0x4,(%rax)
  402c63:	75 15                	jne    402c7a <rio_writen+0x55>
  402c65:	b8 00 00 00 00       	mov    $0x0,%eax
  402c6a:	eb d1                	jmp    402c3d <rio_writen+0x18>
  402c6c:	4c 89 e8             	mov    %r13,%rax
  402c6f:	48 83 c4 08          	add    $0x8,%rsp
  402c73:	5b                   	pop    %rbx
  402c74:	5d                   	pop    %rbp
  402c75:	41 5c                	pop    %r12
  402c77:	41 5d                	pop    %r13
  402c79:	c3                   	ret    
  402c7a:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402c81:	eb ec                	jmp    402c6f <rio_writen+0x4a>

0000000000402c83 <rio_read>:
  402c83:	41 55                	push   %r13
  402c85:	41 54                	push   %r12
  402c87:	55                   	push   %rbp
  402c88:	53                   	push   %rbx
  402c89:	48 83 ec 08          	sub    $0x8,%rsp
  402c8d:	48 89 fb             	mov    %rdi,%rbx
  402c90:	49 89 f5             	mov    %rsi,%r13
  402c93:	49 89 d4             	mov    %rdx,%r12
  402c96:	eb 17                	jmp    402caf <rio_read+0x2c>
  402c98:	e8 c3 e5 ff ff       	call   401260 <__errno_location@plt>
  402c9d:	83 38 04             	cmpl   $0x4,(%rax)
  402ca0:	74 0d                	je     402caf <rio_read+0x2c>
  402ca2:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402ca9:	eb 54                	jmp    402cff <rio_read+0x7c>
  402cab:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  402caf:	8b 6b 04             	mov    0x4(%rbx),%ebp
  402cb2:	85 ed                	test   %ebp,%ebp
  402cb4:	7f 23                	jg     402cd9 <rio_read+0x56>
  402cb6:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  402cba:	8b 3b                	mov    (%rbx),%edi
  402cbc:	ba 00 20 00 00       	mov    $0x2000,%edx
  402cc1:	48 89 ee             	mov    %rbp,%rsi
  402cc4:	e8 47 e6 ff ff       	call   401310 <read@plt>
  402cc9:	89 43 04             	mov    %eax,0x4(%rbx)
  402ccc:	85 c0                	test   %eax,%eax
  402cce:	78 c8                	js     402c98 <rio_read+0x15>
  402cd0:	75 d9                	jne    402cab <rio_read+0x28>
  402cd2:	b8 00 00 00 00       	mov    $0x0,%eax
  402cd7:	eb 26                	jmp    402cff <rio_read+0x7c>
  402cd9:	89 e8                	mov    %ebp,%eax
  402cdb:	4c 39 e0             	cmp    %r12,%rax
  402cde:	72 03                	jb     402ce3 <rio_read+0x60>
  402ce0:	44 89 e5             	mov    %r12d,%ebp
  402ce3:	4c 63 e5             	movslq %ebp,%r12
  402ce6:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  402cea:	4c 89 e2             	mov    %r12,%rdx
  402ced:	4c 89 ef             	mov    %r13,%rdi
  402cf0:	e8 7b e6 ff ff       	call   401370 <memcpy@plt>
  402cf5:	4c 01 63 08          	add    %r12,0x8(%rbx)
  402cf9:	29 6b 04             	sub    %ebp,0x4(%rbx)
  402cfc:	4c 89 e0             	mov    %r12,%rax
  402cff:	48 83 c4 08          	add    $0x8,%rsp
  402d03:	5b                   	pop    %rbx
  402d04:	5d                   	pop    %rbp
  402d05:	41 5c                	pop    %r12
  402d07:	41 5d                	pop    %r13
  402d09:	c3                   	ret    

0000000000402d0a <rio_readlineb>:
  402d0a:	41 55                	push   %r13
  402d0c:	41 54                	push   %r12
  402d0e:	55                   	push   %rbp
  402d0f:	53                   	push   %rbx
  402d10:	48 83 ec 18          	sub    $0x18,%rsp
  402d14:	49 89 fd             	mov    %rdi,%r13
  402d17:	48 89 f5             	mov    %rsi,%rbp
  402d1a:	49 89 d4             	mov    %rdx,%r12
  402d1d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402d24:	00 00 
  402d26:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402d2b:	31 c0                	xor    %eax,%eax
  402d2d:	bb 01 00 00 00       	mov    $0x1,%ebx
  402d32:	eb 18                	jmp    402d4c <rio_readlineb+0x42>
  402d34:	85 c0                	test   %eax,%eax
  402d36:	75 65                	jne    402d9d <rio_readlineb+0x93>
  402d38:	48 83 fb 01          	cmp    $0x1,%rbx
  402d3c:	75 3d                	jne    402d7b <rio_readlineb+0x71>
  402d3e:	b8 00 00 00 00       	mov    $0x0,%eax
  402d43:	eb 3d                	jmp    402d82 <rio_readlineb+0x78>
  402d45:	48 83 c3 01          	add    $0x1,%rbx
  402d49:	48 89 d5             	mov    %rdx,%rbp
  402d4c:	4c 39 e3             	cmp    %r12,%rbx
  402d4f:	73 2a                	jae    402d7b <rio_readlineb+0x71>
  402d51:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  402d56:	ba 01 00 00 00       	mov    $0x1,%edx
  402d5b:	4c 89 ef             	mov    %r13,%rdi
  402d5e:	e8 20 ff ff ff       	call   402c83 <rio_read>
  402d63:	83 f8 01             	cmp    $0x1,%eax
  402d66:	75 cc                	jne    402d34 <rio_readlineb+0x2a>
  402d68:	48 8d 55 01          	lea    0x1(%rbp),%rdx
  402d6c:	0f b6 44 24 07       	movzbl 0x7(%rsp),%eax
  402d71:	88 45 00             	mov    %al,0x0(%rbp)
  402d74:	3c 0a                	cmp    $0xa,%al
  402d76:	75 cd                	jne    402d45 <rio_readlineb+0x3b>
  402d78:	48 89 d5             	mov    %rdx,%rbp
  402d7b:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  402d7f:	48 89 d8             	mov    %rbx,%rax
  402d82:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  402d87:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  402d8e:	00 00 
  402d90:	75 14                	jne    402da6 <rio_readlineb+0x9c>
  402d92:	48 83 c4 18          	add    $0x18,%rsp
  402d96:	5b                   	pop    %rbx
  402d97:	5d                   	pop    %rbp
  402d98:	41 5c                	pop    %r12
  402d9a:	41 5d                	pop    %r13
  402d9c:	c3                   	ret    
  402d9d:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402da4:	eb dc                	jmp    402d82 <rio_readlineb+0x78>
  402da6:	e8 10 fc ff ff       	call   4029bb <__stack_chk_fail>

0000000000402dab <urlencode>:
  402dab:	41 54                	push   %r12
  402dad:	55                   	push   %rbp
  402dae:	53                   	push   %rbx
  402daf:	48 83 ec 10          	sub    $0x10,%rsp
  402db3:	48 89 fb             	mov    %rdi,%rbx
  402db6:	48 89 f5             	mov    %rsi,%rbp
  402db9:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402dc0:	00 00 
  402dc2:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402dc7:	31 c0                	xor    %eax,%eax
  402dc9:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402dd0:	f2 ae                	repnz scas %es:(%rdi),%al
  402dd2:	48 f7 d1             	not    %rcx
  402dd5:	8d 41 ff             	lea    -0x1(%rcx),%eax
  402dd8:	eb 0f                	jmp    402de9 <urlencode+0x3e>
  402dda:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  402dde:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402de2:	48 83 c3 01          	add    $0x1,%rbx
  402de6:	44 89 e0             	mov    %r12d,%eax
  402de9:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  402ded:	85 c0                	test   %eax,%eax
  402def:	0f 84 a8 00 00 00    	je     402e9d <urlencode+0xf2>
  402df5:	44 0f b6 03          	movzbl (%rbx),%r8d
  402df9:	41 80 f8 2a          	cmp    $0x2a,%r8b
  402dfd:	0f 94 c2             	sete   %dl
  402e00:	41 80 f8 2d          	cmp    $0x2d,%r8b
  402e04:	0f 94 c0             	sete   %al
  402e07:	08 c2                	or     %al,%dl
  402e09:	75 cf                	jne    402dda <urlencode+0x2f>
  402e0b:	41 80 f8 2e          	cmp    $0x2e,%r8b
  402e0f:	74 c9                	je     402dda <urlencode+0x2f>
  402e11:	41 80 f8 5f          	cmp    $0x5f,%r8b
  402e15:	74 c3                	je     402dda <urlencode+0x2f>
  402e17:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  402e1b:	3c 09                	cmp    $0x9,%al
  402e1d:	76 bb                	jbe    402dda <urlencode+0x2f>
  402e1f:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  402e23:	3c 19                	cmp    $0x19,%al
  402e25:	76 b3                	jbe    402dda <urlencode+0x2f>
  402e27:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  402e2b:	3c 19                	cmp    $0x19,%al
  402e2d:	76 ab                	jbe    402dda <urlencode+0x2f>
  402e2f:	41 80 f8 20          	cmp    $0x20,%r8b
  402e33:	74 56                	je     402e8b <urlencode+0xe0>
  402e35:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  402e39:	3c 5f                	cmp    $0x5f,%al
  402e3b:	0f 96 c2             	setbe  %dl
  402e3e:	41 80 f8 09          	cmp    $0x9,%r8b
  402e42:	0f 94 c0             	sete   %al
  402e45:	08 c2                	or     %al,%dl
  402e47:	74 4f                	je     402e98 <urlencode+0xed>
  402e49:	48 89 e7             	mov    %rsp,%rdi
  402e4c:	45 0f b6 c0          	movzbl %r8b,%r8d
  402e50:	48 8d 0d de 19 00 00 	lea    0x19de(%rip),%rcx        # 404835 <trans_char+0xc5>
  402e57:	ba 08 00 00 00       	mov    $0x8,%edx
  402e5c:	be 01 00 00 00       	mov    $0x1,%esi
  402e61:	b8 00 00 00 00       	mov    $0x0,%eax
  402e66:	e8 e5 e5 ff ff       	call   401450 <__sprintf_chk@plt>
  402e6b:	0f b6 04 24          	movzbl (%rsp),%eax
  402e6f:	88 45 00             	mov    %al,0x0(%rbp)
  402e72:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  402e77:	88 45 01             	mov    %al,0x1(%rbp)
  402e7a:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  402e7f:	88 45 02             	mov    %al,0x2(%rbp)
  402e82:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  402e86:	e9 57 ff ff ff       	jmp    402de2 <urlencode+0x37>
  402e8b:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  402e8f:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402e93:	e9 4a ff ff ff       	jmp    402de2 <urlencode+0x37>
  402e98:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402e9d:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  402ea2:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  402ea9:	00 00 
  402eab:	75 09                	jne    402eb6 <urlencode+0x10b>
  402ead:	48 83 c4 10          	add    $0x10,%rsp
  402eb1:	5b                   	pop    %rbx
  402eb2:	5d                   	pop    %rbp
  402eb3:	41 5c                	pop    %r12
  402eb5:	c3                   	ret    
  402eb6:	e8 00 fb ff ff       	call   4029bb <__stack_chk_fail>

0000000000402ebb <submitr>:
  402ebb:	f3 0f 1e fa          	endbr64 
  402ebf:	41 57                	push   %r15
  402ec1:	41 56                	push   %r14
  402ec3:	41 55                	push   %r13
  402ec5:	41 54                	push   %r12
  402ec7:	55                   	push   %rbp
  402ec8:	53                   	push   %rbx
  402ec9:	4c 8d 9c 24 00 60 ff 	lea    -0xa000(%rsp),%r11
  402ed0:	ff 
  402ed1:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  402ed8:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  402edd:	4c 39 dc             	cmp    %r11,%rsp
  402ee0:	75 ef                	jne    402ed1 <submitr+0x16>
  402ee2:	48 83 ec 68          	sub    $0x68,%rsp
  402ee6:	49 89 fc             	mov    %rdi,%r12
  402ee9:	89 74 24 1c          	mov    %esi,0x1c(%rsp)
  402eed:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
  402ef2:	49 89 cd             	mov    %rcx,%r13
  402ef5:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
  402efa:	4d 89 ce             	mov    %r9,%r14
  402efd:	48 8b ac 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbp
  402f04:	00 
  402f05:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402f0c:	00 00 
  402f0e:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
  402f15:	00 
  402f16:	31 c0                	xor    %eax,%eax
  402f18:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
  402f1f:	00 
  402f20:	ba 00 00 00 00       	mov    $0x0,%edx
  402f25:	be 01 00 00 00       	mov    $0x1,%esi
  402f2a:	bf 02 00 00 00       	mov    $0x2,%edi
  402f2f:	e8 2c e5 ff ff       	call   401460 <socket@plt>
  402f34:	85 c0                	test   %eax,%eax
  402f36:	0f 88 a5 02 00 00    	js     4031e1 <submitr+0x326>
  402f3c:	89 c3                	mov    %eax,%ebx
  402f3e:	4c 89 e7             	mov    %r12,%rdi
  402f41:	e8 fa e3 ff ff       	call   401340 <gethostbyname@plt>
  402f46:	48 85 c0             	test   %rax,%rax
  402f49:	0f 84 de 02 00 00    	je     40322d <submitr+0x372>
  402f4f:	4c 8d 7c 24 30       	lea    0x30(%rsp),%r15
  402f54:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
  402f5b:	00 00 
  402f5d:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
  402f64:	00 00 
  402f66:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
  402f6d:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402f71:	48 8b 40 18          	mov    0x18(%rax),%rax
  402f75:	48 8b 30             	mov    (%rax),%rsi
  402f78:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
  402f7d:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402f82:	e8 c9 e3 ff ff       	call   401350 <__memmove_chk@plt>
  402f87:	0f b7 74 24 1c       	movzwl 0x1c(%rsp),%esi
  402f8c:	66 c1 c6 08          	rol    $0x8,%si
  402f90:	66 89 74 24 32       	mov    %si,0x32(%rsp)
  402f95:	ba 10 00 00 00       	mov    $0x10,%edx
  402f9a:	4c 89 fe             	mov    %r15,%rsi
  402f9d:	89 df                	mov    %ebx,%edi
  402f9f:	e8 7c e4 ff ff       	call   401420 <connect@plt>
  402fa4:	85 c0                	test   %eax,%eax
  402fa6:	0f 88 f7 02 00 00    	js     4032a3 <submitr+0x3e8>
  402fac:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  402fb3:	b8 00 00 00 00       	mov    $0x0,%eax
  402fb8:	48 89 f1             	mov    %rsi,%rcx
  402fbb:	4c 89 f7             	mov    %r14,%rdi
  402fbe:	f2 ae                	repnz scas %es:(%rdi),%al
  402fc0:	48 89 ca             	mov    %rcx,%rdx
  402fc3:	48 f7 d2             	not    %rdx
  402fc6:	48 89 f1             	mov    %rsi,%rcx
  402fc9:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402fce:	f2 ae                	repnz scas %es:(%rdi),%al
  402fd0:	48 f7 d1             	not    %rcx
  402fd3:	49 89 c8             	mov    %rcx,%r8
  402fd6:	48 89 f1             	mov    %rsi,%rcx
  402fd9:	4c 89 ef             	mov    %r13,%rdi
  402fdc:	f2 ae                	repnz scas %es:(%rdi),%al
  402fde:	48 f7 d1             	not    %rcx
  402fe1:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  402fe6:	48 89 f1             	mov    %rsi,%rcx
  402fe9:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  402fee:	f2 ae                	repnz scas %es:(%rdi),%al
  402ff0:	48 89 c8             	mov    %rcx,%rax
  402ff3:	48 f7 d0             	not    %rax
  402ff6:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  402ffb:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  403000:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  403007:	00 
  403008:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  40300e:	0f 87 f7 02 00 00    	ja     40330b <submitr+0x450>
  403014:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
  40301b:	00 
  40301c:	b9 00 04 00 00       	mov    $0x400,%ecx
  403021:	b8 00 00 00 00       	mov    $0x0,%eax
  403026:	48 89 f7             	mov    %rsi,%rdi
  403029:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  40302c:	4c 89 f7             	mov    %r14,%rdi
  40302f:	e8 77 fd ff ff       	call   402dab <urlencode>
  403034:	85 c0                	test   %eax,%eax
  403036:	0f 88 42 03 00 00    	js     40337e <submitr+0x4c3>
  40303c:	4c 8d bc 24 50 20 00 	lea    0x2050(%rsp),%r15
  403043:	00 
  403044:	48 83 ec 08          	sub    $0x8,%rsp
  403048:	41 54                	push   %r12
  40304a:	48 8d 84 24 60 40 00 	lea    0x4060(%rsp),%rax
  403051:	00 
  403052:	50                   	push   %rax
  403053:	41 55                	push   %r13
  403055:	4c 8b 4c 24 30       	mov    0x30(%rsp),%r9
  40305a:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
  40305f:	48 8d 0d 42 17 00 00 	lea    0x1742(%rip),%rcx        # 4047a8 <trans_char+0x38>
  403066:	ba 00 20 00 00       	mov    $0x2000,%edx
  40306b:	be 01 00 00 00       	mov    $0x1,%esi
  403070:	4c 89 ff             	mov    %r15,%rdi
  403073:	b8 00 00 00 00       	mov    $0x0,%eax
  403078:	e8 d3 e3 ff ff       	call   401450 <__sprintf_chk@plt>
  40307d:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  403084:	b8 00 00 00 00       	mov    $0x0,%eax
  403089:	4c 89 ff             	mov    %r15,%rdi
  40308c:	f2 ae                	repnz scas %es:(%rdi),%al
  40308e:	48 f7 d1             	not    %rcx
  403091:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
  403095:	48 83 c4 20          	add    $0x20,%rsp
  403099:	4c 89 fe             	mov    %r15,%rsi
  40309c:	89 df                	mov    %ebx,%edi
  40309e:	e8 82 fb ff ff       	call   402c25 <rio_writen>
  4030a3:	48 85 c0             	test   %rax,%rax
  4030a6:	0f 88 5d 03 00 00    	js     403409 <submitr+0x54e>
  4030ac:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
  4030b1:	89 de                	mov    %ebx,%esi
  4030b3:	4c 89 e7             	mov    %r12,%rdi
  4030b6:	e8 22 fb ff ff       	call   402bdd <rio_readinitb>
  4030bb:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  4030c2:	00 
  4030c3:	ba 00 20 00 00       	mov    $0x2000,%edx
  4030c8:	4c 89 e7             	mov    %r12,%rdi
  4030cb:	e8 3a fc ff ff       	call   402d0a <rio_readlineb>
  4030d0:	48 85 c0             	test   %rax,%rax
  4030d3:	0f 8e 9c 03 00 00    	jle    403475 <submitr+0x5ba>
  4030d9:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
  4030de:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
  4030e5:	00 
  4030e6:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  4030ed:	00 
  4030ee:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
  4030f5:	00 
  4030f6:	48 8d 35 3f 17 00 00 	lea    0x173f(%rip),%rsi        # 40483c <trans_char+0xcc>
  4030fd:	b8 00 00 00 00       	mov    $0x0,%eax
  403102:	e8 99 e2 ff ff       	call   4013a0 <__isoc99_sscanf@plt>
  403107:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  40310e:	00 
  40310f:	b9 03 00 00 00       	mov    $0x3,%ecx
  403114:	48 8d 3d 38 17 00 00 	lea    0x1738(%rip),%rdi        # 404853 <trans_char+0xe3>
  40311b:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  40311d:	0f 97 c0             	seta   %al
  403120:	1c 00                	sbb    $0x0,%al
  403122:	84 c0                	test   %al,%al
  403124:	0f 84 cb 03 00 00    	je     4034f5 <submitr+0x63a>
  40312a:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  403131:	00 
  403132:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  403137:	ba 00 20 00 00       	mov    $0x2000,%edx
  40313c:	e8 c9 fb ff ff       	call   402d0a <rio_readlineb>
  403141:	48 85 c0             	test   %rax,%rax
  403144:	7f c1                	jg     403107 <submitr+0x24c>
  403146:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40314d:	3a 20 43 
  403150:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  403157:	20 75 6e 
  40315a:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40315e:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403162:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403169:	74 6f 20 
  40316c:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
  403173:	68 65 61 
  403176:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40317a:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40317e:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  403185:	66 72 6f 
  403188:	48 ba 6d 20 41 75 74 	movabs $0x616c6f747541206d,%rdx
  40318f:	6f 6c 61 
  403192:	48 89 45 20          	mov    %rax,0x20(%rbp)
  403196:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  40319a:	48 b8 62 20 73 65 72 	movabs $0x7265767265732062,%rax
  4031a1:	76 65 72 
  4031a4:	48 89 45 30          	mov    %rax,0x30(%rbp)
  4031a8:	c6 45 38 00          	movb   $0x0,0x38(%rbp)
  4031ac:	89 df                	mov    %ebx,%edi
  4031ae:	e8 4d e1 ff ff       	call   401300 <close@plt>
  4031b3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4031b8:	48 8b 9c 24 58 a0 00 	mov    0xa058(%rsp),%rbx
  4031bf:	00 
  4031c0:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  4031c7:	00 00 
  4031c9:	0f 85 96 04 00 00    	jne    403665 <submitr+0x7aa>
  4031cf:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
  4031d6:	5b                   	pop    %rbx
  4031d7:	5d                   	pop    %rbp
  4031d8:	41 5c                	pop    %r12
  4031da:	41 5d                	pop    %r13
  4031dc:	41 5e                	pop    %r14
  4031de:	41 5f                	pop    %r15
  4031e0:	c3                   	ret    
  4031e1:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4031e8:	3a 20 43 
  4031eb:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4031f2:	20 75 6e 
  4031f5:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4031f9:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4031fd:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403204:	74 6f 20 
  403207:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  40320e:	65 20 73 
  403211:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403215:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403219:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  403220:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  403226:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40322b:	eb 8b                	jmp    4031b8 <submitr+0x2fd>
  40322d:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  403234:	3a 20 44 
  403237:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  40323e:	20 75 6e 
  403241:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403245:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403249:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403250:	74 6f 20 
  403253:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  40325a:	76 65 20 
  40325d:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403261:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403265:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  40326c:	61 62 20 
  40326f:	48 ba 73 65 72 76 65 	movabs $0x6120726576726573,%rdx
  403276:	72 20 61 
  403279:	48 89 45 20          	mov    %rax,0x20(%rbp)
  40327d:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  403281:	c7 45 30 64 64 72 65 	movl   $0x65726464,0x30(%rbp)
  403288:	66 c7 45 34 73 73    	movw   $0x7373,0x34(%rbp)
  40328e:	c6 45 36 00          	movb   $0x0,0x36(%rbp)
  403292:	89 df                	mov    %ebx,%edi
  403294:	e8 67 e0 ff ff       	call   401300 <close@plt>
  403299:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40329e:	e9 15 ff ff ff       	jmp    4031b8 <submitr+0x2fd>
  4032a3:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  4032aa:	3a 20 55 
  4032ad:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  4032b4:	20 74 6f 
  4032b7:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4032bb:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4032bf:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  4032c6:	65 63 74 
  4032c9:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
  4032d0:	68 65 20 
  4032d3:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4032d7:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4032db:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  4032e2:	61 62 20 
  4032e5:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4032e9:	c7 45 28 73 65 72 76 	movl   $0x76726573,0x28(%rbp)
  4032f0:	66 c7 45 2c 65 72    	movw   $0x7265,0x2c(%rbp)
  4032f6:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  4032fa:	89 df                	mov    %ebx,%edi
  4032fc:	e8 ff df ff ff       	call   401300 <close@plt>
  403301:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403306:	e9 ad fe ff ff       	jmp    4031b8 <submitr+0x2fd>
  40330b:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  403312:	3a 20 52 
  403315:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  40331c:	20 73 74 
  40331f:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403323:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403327:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  40332e:	74 6f 6f 
  403331:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
  403338:	65 2e 20 
  40333b:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40333f:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403343:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  40334a:	61 73 65 
  40334d:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
  403354:	49 54 52 
  403357:	48 89 45 20          	mov    %rax,0x20(%rbp)
  40335b:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  40335f:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  403366:	55 46 00 
  403369:	48 89 45 30          	mov    %rax,0x30(%rbp)
  40336d:	89 df                	mov    %ebx,%edi
  40336f:	e8 8c df ff ff       	call   401300 <close@plt>
  403374:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403379:	e9 3a fe ff ff       	jmp    4031b8 <submitr+0x2fd>
  40337e:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  403385:	3a 20 52 
  403388:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  40338f:	20 73 74 
  403392:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403396:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  40339a:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  4033a1:	63 6f 6e 
  4033a4:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
  4033ab:	20 61 6e 
  4033ae:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4033b2:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4033b6:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  4033bd:	67 61 6c 
  4033c0:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
  4033c7:	6e 70 72 
  4033ca:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4033ce:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  4033d2:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  4033d9:	6c 65 20 
  4033dc:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
  4033e3:	63 74 65 
  4033e6:	48 89 45 30          	mov    %rax,0x30(%rbp)
  4033ea:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  4033ee:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
  4033f4:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
  4033f8:	89 df                	mov    %ebx,%edi
  4033fa:	e8 01 df ff ff       	call   401300 <close@plt>
  4033ff:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403404:	e9 af fd ff ff       	jmp    4031b8 <submitr+0x2fd>
  403409:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  403410:	3a 20 43 
  403413:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  40341a:	20 75 6e 
  40341d:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403421:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403425:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40342c:	74 6f 20 
  40342f:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
  403436:	20 74 6f 
  403439:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40343d:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403441:	48 b8 20 74 68 65 20 	movabs $0x7475412065687420,%rax
  403448:	41 75 74 
  40344b:	48 ba 6f 6c 61 62 20 	movabs $0x7265732062616c6f,%rdx
  403452:	73 65 72 
  403455:	48 89 45 20          	mov    %rax,0x20(%rbp)
  403459:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  40345d:	c7 45 30 76 65 72 00 	movl   $0x726576,0x30(%rbp)
  403464:	89 df                	mov    %ebx,%edi
  403466:	e8 95 de ff ff       	call   401300 <close@plt>
  40346b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403470:	e9 43 fd ff ff       	jmp    4031b8 <submitr+0x2fd>
  403475:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40347c:	3a 20 43 
  40347f:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  403486:	20 75 6e 
  403489:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40348d:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403491:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403498:	74 6f 20 
  40349b:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
  4034a2:	66 69 72 
  4034a5:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4034a9:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4034ad:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  4034b4:	61 64 65 
  4034b7:	48 ba 72 20 66 72 6f 	movabs $0x41206d6f72662072,%rdx
  4034be:	6d 20 41 
  4034c1:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4034c5:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  4034c9:	48 b8 75 74 6f 6c 61 	movabs $0x732062616c6f7475,%rax
  4034d0:	62 20 73 
  4034d3:	48 89 45 30          	mov    %rax,0x30(%rbp)
  4034d7:	c7 45 38 65 72 76 65 	movl   $0x65767265,0x38(%rbp)
  4034de:	66 c7 45 3c 72 00    	movw   $0x72,0x3c(%rbp)
  4034e4:	89 df                	mov    %ebx,%edi
  4034e6:	e8 15 de ff ff       	call   401300 <close@plt>
  4034eb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4034f0:	e9 c3 fc ff ff       	jmp    4031b8 <submitr+0x2fd>
  4034f5:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  4034fc:	00 
  4034fd:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  403502:	ba 00 20 00 00       	mov    $0x2000,%edx
  403507:	e8 fe f7 ff ff       	call   402d0a <rio_readlineb>
  40350c:	48 85 c0             	test   %rax,%rax
  40350f:	0f 8e 96 00 00 00    	jle    4035ab <submitr+0x6f0>
  403515:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
  40351a:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  403521:	0f 85 05 01 00 00    	jne    40362c <submitr+0x771>
  403527:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  40352e:	00 
  40352f:	48 89 ef             	mov    %rbp,%rdi
  403532:	e8 69 dd ff ff       	call   4012a0 <strcpy@plt>
  403537:	89 df                	mov    %ebx,%edi
  403539:	e8 c2 dd ff ff       	call   401300 <close@plt>
  40353e:	b9 04 00 00 00       	mov    $0x4,%ecx
  403543:	48 8d 3d 03 13 00 00 	lea    0x1303(%rip),%rdi        # 40484d <trans_char+0xdd>
  40354a:	48 89 ee             	mov    %rbp,%rsi
  40354d:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  40354f:	0f 97 c0             	seta   %al
  403552:	1c 00                	sbb    $0x0,%al
  403554:	0f be c0             	movsbl %al,%eax
  403557:	85 c0                	test   %eax,%eax
  403559:	0f 84 59 fc ff ff    	je     4031b8 <submitr+0x2fd>
  40355f:	b9 05 00 00 00       	mov    $0x5,%ecx
  403564:	48 8d 3d e6 12 00 00 	lea    0x12e6(%rip),%rdi        # 404851 <trans_char+0xe1>
  40356b:	48 89 ee             	mov    %rbp,%rsi
  40356e:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  403570:	0f 97 c0             	seta   %al
  403573:	1c 00                	sbb    $0x0,%al
  403575:	0f be c0             	movsbl %al,%eax
  403578:	85 c0                	test   %eax,%eax
  40357a:	0f 84 38 fc ff ff    	je     4031b8 <submitr+0x2fd>
  403580:	b9 03 00 00 00       	mov    $0x3,%ecx
  403585:	48 8d 3d ca 12 00 00 	lea    0x12ca(%rip),%rdi        # 404856 <trans_char+0xe6>
  40358c:	48 89 ee             	mov    %rbp,%rsi
  40358f:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  403591:	0f 97 c0             	seta   %al
  403594:	1c 00                	sbb    $0x0,%al
  403596:	0f be c0             	movsbl %al,%eax
  403599:	85 c0                	test   %eax,%eax
  40359b:	0f 84 17 fc ff ff    	je     4031b8 <submitr+0x2fd>
  4035a1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4035a6:	e9 0d fc ff ff       	jmp    4031b8 <submitr+0x2fd>
  4035ab:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4035b2:	3a 20 43 
  4035b5:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4035bc:	20 75 6e 
  4035bf:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4035c3:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4035c7:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4035ce:	74 6f 20 
  4035d1:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
  4035d8:	73 74 61 
  4035db:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4035df:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4035e3:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  4035ea:	65 73 73 
  4035ed:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
  4035f4:	72 6f 6d 
  4035f7:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4035fb:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  4035ff:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  403606:	6c 61 62 
  403609:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  403610:	65 72 00 
  403613:	48 89 45 30          	mov    %rax,0x30(%rbp)
  403617:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  40361b:	89 df                	mov    %ebx,%edi
  40361d:	e8 de dc ff ff       	call   401300 <close@plt>
  403622:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403627:	e9 8c fb ff ff       	jmp    4031b8 <submitr+0x2fd>
  40362c:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
  403633:	00 
  403634:	48 8d 0d cd 11 00 00 	lea    0x11cd(%rip),%rcx        # 404808 <trans_char+0x98>
  40363b:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  403642:	be 01 00 00 00       	mov    $0x1,%esi
  403647:	48 89 ef             	mov    %rbp,%rdi
  40364a:	b8 00 00 00 00       	mov    $0x0,%eax
  40364f:	e8 fc dd ff ff       	call   401450 <__sprintf_chk@plt>
  403654:	89 df                	mov    %ebx,%edi
  403656:	e8 a5 dc ff ff       	call   401300 <close@plt>
  40365b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403660:	e9 53 fb ff ff       	jmp    4031b8 <submitr+0x2fd>
  403665:	e8 51 f3 ff ff       	call   4029bb <__stack_chk_fail>

000000000040366a <init_timeout>:
  40366a:	f3 0f 1e fa          	endbr64 
  40366e:	85 ff                	test   %edi,%edi
  403670:	74 26                	je     403698 <init_timeout+0x2e>
  403672:	53                   	push   %rbx
  403673:	89 fb                	mov    %edi,%ebx
  403675:	78 1a                	js     403691 <init_timeout+0x27>
  403677:	48 8d 35 71 f5 ff ff 	lea    -0xa8f(%rip),%rsi        # 402bef <sigalrm_handler>
  40367e:	bf 0e 00 00 00       	mov    $0xe,%edi
  403683:	e8 a8 dc ff ff       	call   401330 <signal@plt>
  403688:	89 df                	mov    %ebx,%edi
  40368a:	e8 61 dc ff ff       	call   4012f0 <alarm@plt>
  40368f:	5b                   	pop    %rbx
  403690:	c3                   	ret    
  403691:	bb 00 00 00 00       	mov    $0x0,%ebx
  403696:	eb df                	jmp    403677 <init_timeout+0xd>
  403698:	c3                   	ret    

0000000000403699 <init_driver>:
  403699:	f3 0f 1e fa          	endbr64 
  40369d:	41 54                	push   %r12
  40369f:	55                   	push   %rbp
  4036a0:	53                   	push   %rbx
  4036a1:	48 83 ec 20          	sub    $0x20,%rsp
  4036a5:	48 89 fd             	mov    %rdi,%rbp
  4036a8:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4036af:	00 00 
  4036b1:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  4036b6:	31 c0                	xor    %eax,%eax
  4036b8:	be 01 00 00 00       	mov    $0x1,%esi
  4036bd:	bf 0d 00 00 00       	mov    $0xd,%edi
  4036c2:	e8 69 dc ff ff       	call   401330 <signal@plt>
  4036c7:	be 01 00 00 00       	mov    $0x1,%esi
  4036cc:	bf 1d 00 00 00       	mov    $0x1d,%edi
  4036d1:	e8 5a dc ff ff       	call   401330 <signal@plt>
  4036d6:	be 01 00 00 00       	mov    $0x1,%esi
  4036db:	bf 1d 00 00 00       	mov    $0x1d,%edi
  4036e0:	e8 4b dc ff ff       	call   401330 <signal@plt>
  4036e5:	ba 00 00 00 00       	mov    $0x0,%edx
  4036ea:	be 01 00 00 00       	mov    $0x1,%esi
  4036ef:	bf 02 00 00 00       	mov    $0x2,%edi
  4036f4:	e8 67 dd ff ff       	call   401460 <socket@plt>
  4036f9:	85 c0                	test   %eax,%eax
  4036fb:	0f 88 9c 00 00 00    	js     40379d <init_driver+0x104>
  403701:	89 c3                	mov    %eax,%ebx
  403703:	48 8d 3d 4f 11 00 00 	lea    0x114f(%rip),%rdi        # 404859 <trans_char+0xe9>
  40370a:	e8 31 dc ff ff       	call   401340 <gethostbyname@plt>
  40370f:	48 85 c0             	test   %rax,%rax
  403712:	0f 84 d1 00 00 00    	je     4037e9 <init_driver+0x150>
  403718:	49 89 e4             	mov    %rsp,%r12
  40371b:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  403722:	00 
  403723:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  40372a:	00 00 
  40372c:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  403732:	48 63 50 14          	movslq 0x14(%rax),%rdx
  403736:	48 8b 40 18          	mov    0x18(%rax),%rax
  40373a:	48 8b 30             	mov    (%rax),%rsi
  40373d:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
  403742:	b9 0c 00 00 00       	mov    $0xc,%ecx
  403747:	e8 04 dc ff ff       	call   401350 <__memmove_chk@plt>
  40374c:	66 c7 44 24 02 30 39 	movw   $0x3930,0x2(%rsp)
  403753:	ba 10 00 00 00       	mov    $0x10,%edx
  403758:	4c 89 e6             	mov    %r12,%rsi
  40375b:	89 df                	mov    %ebx,%edi
  40375d:	e8 be dc ff ff       	call   401420 <connect@plt>
  403762:	85 c0                	test   %eax,%eax
  403764:	0f 88 e7 00 00 00    	js     403851 <init_driver+0x1b8>
  40376a:	89 df                	mov    %ebx,%edi
  40376c:	e8 8f db ff ff       	call   401300 <close@plt>
  403771:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  403777:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  40377b:	b8 00 00 00 00       	mov    $0x0,%eax
  403780:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  403785:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  40378c:	00 00 
  40378e:	0f 85 10 01 00 00    	jne    4038a4 <init_driver+0x20b>
  403794:	48 83 c4 20          	add    $0x20,%rsp
  403798:	5b                   	pop    %rbx
  403799:	5d                   	pop    %rbp
  40379a:	41 5c                	pop    %r12
  40379c:	c3                   	ret    
  40379d:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4037a4:	3a 20 43 
  4037a7:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4037ae:	20 75 6e 
  4037b1:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4037b5:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4037b9:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4037c0:	74 6f 20 
  4037c3:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  4037ca:	65 20 73 
  4037cd:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4037d1:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4037d5:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  4037dc:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  4037e2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4037e7:	eb 97                	jmp    403780 <init_driver+0xe7>
  4037e9:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  4037f0:	3a 20 44 
  4037f3:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  4037fa:	20 75 6e 
  4037fd:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403801:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403805:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40380c:	74 6f 20 
  40380f:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  403816:	76 65 20 
  403819:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40381d:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403821:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  403828:	72 20 61 
  40382b:	48 89 45 20          	mov    %rax,0x20(%rbp)
  40382f:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  403836:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  40383c:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  403840:	89 df                	mov    %ebx,%edi
  403842:	e8 b9 da ff ff       	call   401300 <close@plt>
  403847:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40384c:	e9 2f ff ff ff       	jmp    403780 <init_driver+0xe7>
  403851:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  403858:	3a 20 55 
  40385b:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  403862:	20 74 6f 
  403865:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403869:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  40386d:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  403874:	65 63 74 
  403877:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
  40387e:	65 72 76 
  403881:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403885:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403889:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
  40388f:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
  403893:	89 df                	mov    %ebx,%edi
  403895:	e8 66 da ff ff       	call   401300 <close@plt>
  40389a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40389f:	e9 dc fe ff ff       	jmp    403780 <init_driver+0xe7>
  4038a4:	e8 12 f1 ff ff       	call   4029bb <__stack_chk_fail>

00000000004038a9 <driver_post>:
  4038a9:	f3 0f 1e fa          	endbr64 
  4038ad:	53                   	push   %rbx
  4038ae:	4c 89 cb             	mov    %r9,%rbx
  4038b1:	45 85 c0             	test   %r8d,%r8d
  4038b4:	75 18                	jne    4038ce <driver_post+0x25>
  4038b6:	48 85 ff             	test   %rdi,%rdi
  4038b9:	74 05                	je     4038c0 <driver_post+0x17>
  4038bb:	80 3f 00             	cmpb   $0x0,(%rdi)
  4038be:	75 37                	jne    4038f7 <driver_post+0x4e>
  4038c0:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  4038c5:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  4038c9:	44 89 c0             	mov    %r8d,%eax
  4038cc:	5b                   	pop    %rbx
  4038cd:	c3                   	ret    
  4038ce:	48 89 ca             	mov    %rcx,%rdx
  4038d1:	48 8d 35 91 0f 00 00 	lea    0xf91(%rip),%rsi        # 404869 <trans_char+0xf9>
  4038d8:	bf 01 00 00 00       	mov    $0x1,%edi
  4038dd:	b8 00 00 00 00       	mov    $0x0,%eax
  4038e2:	e8 d9 da ff ff       	call   4013c0 <__printf_chk@plt>
  4038e7:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  4038ec:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  4038f0:	b8 00 00 00 00       	mov    $0x0,%eax
  4038f5:	eb d5                	jmp    4038cc <driver_post+0x23>
  4038f7:	48 83 ec 08          	sub    $0x8,%rsp
  4038fb:	41 51                	push   %r9
  4038fd:	49 89 c9             	mov    %rcx,%r9
  403900:	49 89 d0             	mov    %rdx,%r8
  403903:	48 89 f9             	mov    %rdi,%rcx
  403906:	48 89 f2             	mov    %rsi,%rdx
  403909:	be 39 30 00 00       	mov    $0x3039,%esi
  40390e:	48 8d 3d 44 0f 00 00 	lea    0xf44(%rip),%rdi        # 404859 <trans_char+0xe9>
  403915:	e8 a1 f5 ff ff       	call   402ebb <submitr>
  40391a:	48 83 c4 10          	add    $0x10,%rsp
  40391e:	eb ac                	jmp    4038cc <driver_post+0x23>

0000000000403920 <check>:
  403920:	f3 0f 1e fa          	endbr64 
  403924:	89 f8                	mov    %edi,%eax
  403926:	c1 e8 1c             	shr    $0x1c,%eax
  403929:	74 1d                	je     403948 <check+0x28>
  40392b:	b9 00 00 00 00       	mov    $0x0,%ecx
  403930:	83 f9 1f             	cmp    $0x1f,%ecx
  403933:	7f 0d                	jg     403942 <check+0x22>
  403935:	89 f8                	mov    %edi,%eax
  403937:	d3 e8                	shr    %cl,%eax
  403939:	3c 0a                	cmp    $0xa,%al
  40393b:	74 11                	je     40394e <check+0x2e>
  40393d:	83 c1 08             	add    $0x8,%ecx
  403940:	eb ee                	jmp    403930 <check+0x10>
  403942:	b8 01 00 00 00       	mov    $0x1,%eax
  403947:	c3                   	ret    
  403948:	b8 00 00 00 00       	mov    $0x0,%eax
  40394d:	c3                   	ret    
  40394e:	b8 00 00 00 00       	mov    $0x0,%eax
  403953:	c3                   	ret    

0000000000403954 <gencookie>:
  403954:	f3 0f 1e fa          	endbr64 
  403958:	53                   	push   %rbx
  403959:	83 c7 01             	add    $0x1,%edi
  40395c:	e8 0f d9 ff ff       	call   401270 <srandom@plt>
  403961:	e8 2a da ff ff       	call   401390 <random@plt>
  403966:	48 89 c7             	mov    %rax,%rdi
  403969:	89 c3                	mov    %eax,%ebx
  40396b:	e8 b0 ff ff ff       	call   403920 <check>
  403970:	85 c0                	test   %eax,%eax
  403972:	74 ed                	je     403961 <gencookie+0xd>
  403974:	89 d8                	mov    %ebx,%eax
  403976:	5b                   	pop    %rbx
  403977:	c3                   	ret    
  403978:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40397f:	00 

0000000000403980 <__libc_csu_init>:
  403980:	f3 0f 1e fa          	endbr64 
  403984:	41 57                	push   %r15
  403986:	4c 8d 3d 83 34 00 00 	lea    0x3483(%rip),%r15        # 406e10 <__frame_dummy_init_array_entry>
  40398d:	41 56                	push   %r14
  40398f:	49 89 d6             	mov    %rdx,%r14
  403992:	41 55                	push   %r13
  403994:	49 89 f5             	mov    %rsi,%r13
  403997:	41 54                	push   %r12
  403999:	41 89 fc             	mov    %edi,%r12d
  40399c:	55                   	push   %rbp
  40399d:	48 8d 2d 74 34 00 00 	lea    0x3474(%rip),%rbp        # 406e18 <__do_global_dtors_aux_fini_array_entry>
  4039a4:	53                   	push   %rbx
  4039a5:	4c 29 fd             	sub    %r15,%rbp
  4039a8:	48 83 ec 08          	sub    $0x8,%rsp
  4039ac:	e8 4f d6 ff ff       	call   401000 <_init>
  4039b1:	48 c1 fd 03          	sar    $0x3,%rbp
  4039b5:	74 1f                	je     4039d6 <__libc_csu_init+0x56>
  4039b7:	31 db                	xor    %ebx,%ebx
  4039b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4039c0:	4c 89 f2             	mov    %r14,%rdx
  4039c3:	4c 89 ee             	mov    %r13,%rsi
  4039c6:	44 89 e7             	mov    %r12d,%edi
  4039c9:	41 ff 14 df          	call   *(%r15,%rbx,8)
  4039cd:	48 83 c3 01          	add    $0x1,%rbx
  4039d1:	48 39 dd             	cmp    %rbx,%rbp
  4039d4:	75 ea                	jne    4039c0 <__libc_csu_init+0x40>
  4039d6:	48 83 c4 08          	add    $0x8,%rsp
  4039da:	5b                   	pop    %rbx
  4039db:	5d                   	pop    %rbp
  4039dc:	41 5c                	pop    %r12
  4039de:	41 5d                	pop    %r13
  4039e0:	41 5e                	pop    %r14
  4039e2:	41 5f                	pop    %r15
  4039e4:	c3                   	ret    
  4039e5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4039ec:	00 00 00 00 

00000000004039f0 <__libc_csu_fini>:
  4039f0:	f3 0f 1e fa          	endbr64 
  4039f4:	c3                   	ret    

Disassembly of section .fini:

00000000004039f8 <_fini>:
  4039f8:	f3 0f 1e fa          	endbr64 
  4039fc:	48 83 ec 08          	sub    $0x8,%rsp
  403a00:	48 83 c4 08          	add    $0x8,%rsp
  403a04:	c3                   	ret    
