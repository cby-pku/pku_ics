
ctarget:     file format elf64-x86-64


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
  401483:	49 c7 c0 20 38 40 00 	mov    $0x403820,%r8
  40148a:	48 c7 c1 b0 37 40 00 	mov    $0x4037b0,%rcx
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
  401636:	e8 47 21 00 00       	call   403782 <gencookie>
  40163b:	89 c7                	mov    %eax,%edi
  40163d:	89 05 e1 5e 00 00    	mov    %eax,0x5ee1(%rip)        # 407524 <cookie>
  401643:	e8 3a 21 00 00       	call   403782 <gencookie>
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
  401689:	c6 05 b8 6a 00 00 63 	movb   $0x63,0x6ab8(%rip)        # 408148 <target_prefix>
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
  40173c:	e8 86 1d 00 00       	call   4034c7 <init_driver>
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
  401794:	e8 50 10 00 00       	call   4027e9 <__stack_chk_fail>

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
  4017e0:	48 c7 c6 d8 26 40 00 	mov    $0x4026d8,%rsi
  4017e7:	bf 0b 00 00 00       	mov    $0xb,%edi
  4017ec:	e8 3f fb ff ff       	call   401330 <signal@plt>
  4017f1:	48 c7 c6 7e 26 40 00 	mov    $0x40267e,%rsi
  4017f8:	bf 07 00 00 00       	mov    $0x7,%edi
  4017fd:	e8 2e fb ff ff       	call   401330 <signal@plt>
  401802:	48 c7 c6 32 27 40 00 	mov    $0x402732,%rsi
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
  401842:	48 c7 c6 8c 27 40 00 	mov    $0x40278c,%rsi
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
  40195b:	be 00 00 00 00       	mov    $0x0,%esi
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
  4019ab:	e8 17 09 00 00       	call   4022c7 <check_fail>
  4019b0:	8b 15 6e 5b 00 00    	mov    0x5b6e(%rip),%edx        # 407524 <cookie>
  4019b6:	48 8d 35 bf 28 00 00 	lea    0x28bf(%rip),%rsi        # 40427c <_IO_stdin_used+0x27c>
  4019bd:	bf 01 00 00 00       	mov    $0x1,%edi
  4019c2:	b8 00 00 00 00       	mov    $0x0,%eax
  4019c7:	e8 f4 f9 ff ff       	call   4013c0 <__printf_chk@plt>
  4019cc:	be 00 00 00 00       	mov    $0x0,%esi
  4019d1:	48 8b 3d d0 5a 00 00 	mov    0x5ad0(%rip),%rdi        # 4074a8 <buf_offset>
  4019d8:	e8 68 0f 00 00       	call   402945 <stable_launch>
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
  4019ff:	e8 e5 0d 00 00       	call   4027e9 <__stack_chk_fail>

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
  401f23:	e8 c1 08 00 00       	call   4027e9 <__stack_chk_fail>

0000000000401f28 <getbuf>:
  401f28:	f3 0f 1e fa          	endbr64 
  401f2c:	48 83 ec 38          	sub    $0x38,%rsp
  401f30:	48 89 e7             	mov    %rsp,%rdi
  401f33:	e8 cd 03 00 00       	call   402305 <Gets>
  401f38:	b8 01 00 00 00       	mov    $0x1,%eax
  401f3d:	48 83 c4 38          	add    $0x38,%rsp
  401f41:	c3                   	ret    

0000000000401f42 <getbuf_withcanary>:
  401f42:	f3 0f 1e fa          	endbr64 
  401f46:	55                   	push   %rbp
  401f47:	48 89 e5             	mov    %rsp,%rbp
  401f4a:	48 81 ec 90 01 00 00 	sub    $0x190,%rsp
  401f51:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401f58:	00 00 
  401f5a:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401f5e:	31 c0                	xor    %eax,%eax
  401f60:	c7 85 74 ff ff ff 00 	movl   $0x0,-0x8c(%rbp)
  401f67:	00 00 00 
  401f6a:	8b 85 74 ff ff ff    	mov    -0x8c(%rbp),%eax
  401f70:	89 85 70 ff ff ff    	mov    %eax,-0x90(%rbp)
  401f76:	48 8d 85 70 fe ff ff 	lea    -0x190(%rbp),%rax
  401f7d:	48 89 c7             	mov    %rax,%rdi
  401f80:	e8 80 03 00 00       	call   402305 <Gets>
  401f85:	8b 85 70 ff ff ff    	mov    -0x90(%rbp),%eax
  401f8b:	48 63 d0             	movslq %eax,%rdx
  401f8e:	48 8d 85 70 fe ff ff 	lea    -0x190(%rbp),%rax
  401f95:	48 8d 88 08 01 00 00 	lea    0x108(%rax),%rcx
  401f9c:	48 8d 85 70 fe ff ff 	lea    -0x190(%rbp),%rax
  401fa3:	48 89 ce             	mov    %rcx,%rsi
  401fa6:	48 89 c7             	mov    %rax,%rdi
  401fa9:	e8 c2 f3 ff ff       	call   401370 <memcpy@plt>
  401fae:	8b 85 74 ff ff ff    	mov    -0x8c(%rbp),%eax
  401fb4:	48 63 d0             	movslq %eax,%rdx
  401fb7:	48 8d 85 70 fe ff ff 	lea    -0x190(%rbp),%rax
  401fbe:	48 8d 8d 70 fe ff ff 	lea    -0x190(%rbp),%rcx
  401fc5:	48 81 c1 08 01 00 00 	add    $0x108,%rcx
  401fcc:	48 89 c6             	mov    %rax,%rsi
  401fcf:	48 89 cf             	mov    %rcx,%rdi
  401fd2:	e8 99 f3 ff ff       	call   401370 <memcpy@plt>
  401fd7:	b8 01 00 00 00       	mov    $0x1,%eax
  401fdc:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  401fe0:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  401fe7:	00 00 
  401fe9:	74 05                	je     401ff0 <getbuf_withcanary+0xae>
  401feb:	e8 f9 07 00 00       	call   4027e9 <__stack_chk_fail>
  401ff0:	c9                   	leave  
  401ff1:	c3                   	ret    

0000000000401ff2 <touch1>:
  401ff2:	f3 0f 1e fa          	endbr64 
  401ff6:	50                   	push   %rax
  401ff7:	58                   	pop    %rax
  401ff8:	48 83 ec 08          	sub    $0x8,%rsp
  401ffc:	c7 05 16 55 00 00 01 	movl   $0x1,0x5516(%rip)        # 40751c <vlevel>
  402003:	00 00 00 
  402006:	48 8d 3d 09 23 00 00 	lea    0x2309(%rip),%rdi        # 404316 <_IO_stdin_used+0x316>
  40200d:	e8 9e f2 ff ff       	call   4012b0 <puts@plt>
  402012:	bf 01 00 00 00       	mov    $0x1,%edi
  402017:	e8 5b 05 00 00       	call   402577 <validate>
  40201c:	bf 00 00 00 00       	mov    $0x0,%edi
  402021:	e8 ea f3 ff ff       	call   401410 <exit@plt>

0000000000402026 <touch2>:
  402026:	f3 0f 1e fa          	endbr64 
  40202a:	50                   	push   %rax
  40202b:	58                   	pop    %rax
  40202c:	48 83 ec 08          	sub    $0x8,%rsp
  402030:	89 fa                	mov    %edi,%edx
  402032:	c7 05 e0 54 00 00 02 	movl   $0x2,0x54e0(%rip)        # 40751c <vlevel>
  402039:	00 00 00 
  40203c:	39 3d e2 54 00 00    	cmp    %edi,0x54e2(%rip)        # 407524 <cookie>
  402042:	74 2a                	je     40206e <touch2+0x48>
  402044:	48 8d 35 15 23 00 00 	lea    0x2315(%rip),%rsi        # 404360 <_IO_stdin_used+0x360>
  40204b:	bf 01 00 00 00       	mov    $0x1,%edi
  402050:	b8 00 00 00 00       	mov    $0x0,%eax
  402055:	e8 66 f3 ff ff       	call   4013c0 <__printf_chk@plt>
  40205a:	bf 02 00 00 00       	mov    $0x2,%edi
  40205f:	e8 ee 05 00 00       	call   402652 <fail>
  402064:	bf 00 00 00 00       	mov    $0x0,%edi
  402069:	e8 a2 f3 ff ff       	call   401410 <exit@plt>
  40206e:	48 8d 35 c3 22 00 00 	lea    0x22c3(%rip),%rsi        # 404338 <_IO_stdin_used+0x338>
  402075:	bf 01 00 00 00       	mov    $0x1,%edi
  40207a:	b8 00 00 00 00       	mov    $0x0,%eax
  40207f:	e8 3c f3 ff ff       	call   4013c0 <__printf_chk@plt>
  402084:	bf 02 00 00 00       	mov    $0x2,%edi
  402089:	e8 e9 04 00 00       	call   402577 <validate>
  40208e:	eb d4                	jmp    402064 <touch2+0x3e>

0000000000402090 <hexmatch>:
  402090:	f3 0f 1e fa          	endbr64 
  402094:	41 55                	push   %r13
  402096:	41 54                	push   %r12
  402098:	55                   	push   %rbp
  402099:	53                   	push   %rbx
  40209a:	48 81 ec 88 00 00 00 	sub    $0x88,%rsp
  4020a1:	89 fd                	mov    %edi,%ebp
  4020a3:	48 89 f3             	mov    %rsi,%rbx
  4020a6:	41 bc 28 00 00 00    	mov    $0x28,%r12d
  4020ac:	64 49 8b 04 24       	mov    %fs:(%r12),%rax
  4020b1:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  4020b6:	31 c0                	xor    %eax,%eax
  4020b8:	e8 d3 f2 ff ff       	call   401390 <random@plt>
  4020bd:	48 89 c1             	mov    %rax,%rcx
  4020c0:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  4020c7:	0a d7 a3 
  4020ca:	48 f7 ea             	imul   %rdx
  4020cd:	48 01 ca             	add    %rcx,%rdx
  4020d0:	48 c1 fa 06          	sar    $0x6,%rdx
  4020d4:	48 89 c8             	mov    %rcx,%rax
  4020d7:	48 c1 f8 3f          	sar    $0x3f,%rax
  4020db:	48 29 c2             	sub    %rax,%rdx
  4020de:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
  4020e2:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  4020e6:	48 c1 e0 02          	shl    $0x2,%rax
  4020ea:	48 29 c1             	sub    %rax,%rcx
  4020ed:	4c 8d 2c 0c          	lea    (%rsp,%rcx,1),%r13
  4020f1:	41 89 e8             	mov    %ebp,%r8d
  4020f4:	48 8d 0d 38 22 00 00 	lea    0x2238(%rip),%rcx        # 404333 <_IO_stdin_used+0x333>
  4020fb:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  402102:	be 01 00 00 00       	mov    $0x1,%esi
  402107:	4c 89 ef             	mov    %r13,%rdi
  40210a:	b8 00 00 00 00       	mov    $0x0,%eax
  40210f:	e8 3c f3 ff ff       	call   401450 <__sprintf_chk@plt>
  402114:	ba 09 00 00 00       	mov    $0x9,%edx
  402119:	4c 89 ee             	mov    %r13,%rsi
  40211c:	48 89 df             	mov    %rbx,%rdi
  40211f:	e8 6c f1 ff ff       	call   401290 <strncmp@plt>
  402124:	85 c0                	test   %eax,%eax
  402126:	0f 94 c0             	sete   %al
  402129:	48 8b 5c 24 78       	mov    0x78(%rsp),%rbx
  40212e:	64 49 33 1c 24       	xor    %fs:(%r12),%rbx
  402133:	75 11                	jne    402146 <hexmatch+0xb6>
  402135:	0f b6 c0             	movzbl %al,%eax
  402138:	48 81 c4 88 00 00 00 	add    $0x88,%rsp
  40213f:	5b                   	pop    %rbx
  402140:	5d                   	pop    %rbp
  402141:	41 5c                	pop    %r12
  402143:	41 5d                	pop    %r13
  402145:	c3                   	ret    
  402146:	e8 9e 06 00 00       	call   4027e9 <__stack_chk_fail>

000000000040214b <touch3>:
  40214b:	f3 0f 1e fa          	endbr64 
  40214f:	53                   	push   %rbx
  402150:	48 89 fb             	mov    %rdi,%rbx
  402153:	c7 05 bf 53 00 00 03 	movl   $0x3,0x53bf(%rip)        # 40751c <vlevel>
  40215a:	00 00 00 
  40215d:	48 89 fe             	mov    %rdi,%rsi
  402160:	8b 3d be 53 00 00    	mov    0x53be(%rip),%edi        # 407524 <cookie>
  402166:	e8 25 ff ff ff       	call   402090 <hexmatch>
  40216b:	85 c0                	test   %eax,%eax
  40216d:	74 2d                	je     40219c <touch3+0x51>
  40216f:	48 89 da             	mov    %rbx,%rdx
  402172:	48 8d 35 0f 22 00 00 	lea    0x220f(%rip),%rsi        # 404388 <_IO_stdin_used+0x388>
  402179:	bf 01 00 00 00       	mov    $0x1,%edi
  40217e:	b8 00 00 00 00       	mov    $0x0,%eax
  402183:	e8 38 f2 ff ff       	call   4013c0 <__printf_chk@plt>
  402188:	bf 03 00 00 00       	mov    $0x3,%edi
  40218d:	e8 e5 03 00 00       	call   402577 <validate>
  402192:	bf 00 00 00 00       	mov    $0x0,%edi
  402197:	e8 74 f2 ff ff       	call   401410 <exit@plt>
  40219c:	48 89 da             	mov    %rbx,%rdx
  40219f:	48 8d 35 0a 22 00 00 	lea    0x220a(%rip),%rsi        # 4043b0 <_IO_stdin_used+0x3b0>
  4021a6:	bf 01 00 00 00       	mov    $0x1,%edi
  4021ab:	b8 00 00 00 00       	mov    $0x0,%eax
  4021b0:	e8 0b f2 ff ff       	call   4013c0 <__printf_chk@plt>
  4021b5:	bf 03 00 00 00       	mov    $0x3,%edi
  4021ba:	e8 93 04 00 00       	call   402652 <fail>
  4021bf:	eb d1                	jmp    402192 <touch3+0x47>

00000000004021c1 <test>:
  4021c1:	f3 0f 1e fa          	endbr64 
  4021c5:	48 83 ec 08          	sub    $0x8,%rsp
  4021c9:	b8 00 00 00 00       	mov    $0x0,%eax
  4021ce:	e8 55 fd ff ff       	call   401f28 <getbuf>
  4021d3:	89 c2                	mov    %eax,%edx
  4021d5:	48 89 e0             	mov    %rsp,%rax
  4021d8:	48 83 e0 0f          	and    $0xf,%rax
  4021dc:	74 07                	je     4021e5 <aligned4>
  4021de:	b9 00 00 00 00       	mov    $0x0,%ecx
  4021e3:	eb 05                	jmp    4021ea <done4>

00000000004021e5 <aligned4>:
  4021e5:	b9 01 00 00 00       	mov    $0x1,%ecx

00000000004021ea <done4>:
  4021ea:	85 c9                	test   %ecx,%ecx
  4021ec:	75 23                	jne    402211 <done4+0x27>
  4021ee:	48 83 ec 08          	sub    $0x8,%rsp
  4021f2:	48 8d 35 df 21 00 00 	lea    0x21df(%rip),%rsi        # 4043d8 <_IO_stdin_used+0x3d8>
  4021f9:	bf 01 00 00 00       	mov    $0x1,%edi
  4021fe:	b8 00 00 00 00       	mov    $0x0,%eax
  402203:	e8 b8 f1 ff ff       	call   4013c0 <__printf_chk@plt>
  402208:	48 83 c4 08          	add    $0x8,%rsp
  40220c:	48 83 c4 08          	add    $0x8,%rsp
  402210:	c3                   	ret    
  402211:	48 8d 35 c0 21 00 00 	lea    0x21c0(%rip),%rsi        # 4043d8 <_IO_stdin_used+0x3d8>
  402218:	bf 01 00 00 00       	mov    $0x1,%edi
  40221d:	b8 00 00 00 00       	mov    $0x0,%eax
  402222:	e8 99 f1 ff ff       	call   4013c0 <__printf_chk@plt>
  402227:	eb e3                	jmp    40220c <done4+0x22>

0000000000402229 <test2>:
  402229:	f3 0f 1e fa          	endbr64 
  40222d:	48 83 ec 08          	sub    $0x8,%rsp
  402231:	b8 00 00 00 00       	mov    $0x0,%eax
  402236:	e8 07 fd ff ff       	call   401f42 <getbuf_withcanary>
  40223b:	89 c2                	mov    %eax,%edx
  40223d:	48 8d 35 bc 21 00 00 	lea    0x21bc(%rip),%rsi        # 404400 <_IO_stdin_used+0x400>
  402244:	bf 01 00 00 00       	mov    $0x1,%edi
  402249:	b8 00 00 00 00       	mov    $0x0,%eax
  40224e:	e8 6d f1 ff ff       	call   4013c0 <__printf_chk@plt>
  402253:	48 83 c4 08          	add    $0x8,%rsp
  402257:	c3                   	ret    

0000000000402258 <save_char>:
  402258:	8b 05 e6 5e 00 00    	mov    0x5ee6(%rip),%eax        # 408144 <gets_cnt>
  40225e:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  402263:	7f 4a                	jg     4022af <save_char+0x57>
  402265:	89 f9                	mov    %edi,%ecx
  402267:	c0 e9 04             	shr    $0x4,%cl
  40226a:	8d 14 40             	lea    (%rax,%rax,2),%edx
  40226d:	4c 8d 05 fc 24 00 00 	lea    0x24fc(%rip),%r8        # 404770 <trans_char>
  402274:	83 e1 0f             	and    $0xf,%ecx
  402277:	45 0f b6 0c 08       	movzbl (%r8,%rcx,1),%r9d
  40227c:	48 8d 0d bd 52 00 00 	lea    0x52bd(%rip),%rcx        # 407540 <gets_buf>
  402283:	48 63 f2             	movslq %edx,%rsi
  402286:	44 88 0c 31          	mov    %r9b,(%rcx,%rsi,1)
  40228a:	8d 72 01             	lea    0x1(%rdx),%esi
  40228d:	83 e7 0f             	and    $0xf,%edi
  402290:	41 0f b6 3c 38       	movzbl (%r8,%rdi,1),%edi
  402295:	48 63 f6             	movslq %esi,%rsi
  402298:	40 88 3c 31          	mov    %dil,(%rcx,%rsi,1)
  40229c:	83 c2 02             	add    $0x2,%edx
  40229f:	48 63 d2             	movslq %edx,%rdx
  4022a2:	c6 04 11 20          	movb   $0x20,(%rcx,%rdx,1)
  4022a6:	83 c0 01             	add    $0x1,%eax
  4022a9:	89 05 95 5e 00 00    	mov    %eax,0x5e95(%rip)        # 408144 <gets_cnt>
  4022af:	c3                   	ret    

00000000004022b0 <save_term>:
  4022b0:	8b 05 8e 5e 00 00    	mov    0x5e8e(%rip),%eax        # 408144 <gets_cnt>
  4022b6:	8d 04 40             	lea    (%rax,%rax,2),%eax
  4022b9:	48 98                	cltq   
  4022bb:	48 8d 15 7e 52 00 00 	lea    0x527e(%rip),%rdx        # 407540 <gets_buf>
  4022c2:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  4022c6:	c3                   	ret    

00000000004022c7 <check_fail>:
  4022c7:	f3 0f 1e fa          	endbr64 
  4022cb:	50                   	push   %rax
  4022cc:	58                   	pop    %rax
  4022cd:	48 83 ec 08          	sub    $0x8,%rsp
  4022d1:	0f be 15 70 5e 00 00 	movsbl 0x5e70(%rip),%edx        # 408148 <target_prefix>
  4022d8:	4c 8d 05 61 52 00 00 	lea    0x5261(%rip),%r8        # 407540 <gets_buf>
  4022df:	8b 0d 33 52 00 00    	mov    0x5233(%rip),%ecx        # 407518 <check_level>
  4022e5:	48 8d 35 42 21 00 00 	lea    0x2142(%rip),%rsi        # 40442e <_IO_stdin_used+0x42e>
  4022ec:	bf 01 00 00 00       	mov    $0x1,%edi
  4022f1:	b8 00 00 00 00       	mov    $0x0,%eax
  4022f6:	e8 c5 f0 ff ff       	call   4013c0 <__printf_chk@plt>
  4022fb:	bf 01 00 00 00       	mov    $0x1,%edi
  402300:	e8 0b f1 ff ff       	call   401410 <exit@plt>

0000000000402305 <Gets>:
  402305:	f3 0f 1e fa          	endbr64 
  402309:	41 54                	push   %r12
  40230b:	55                   	push   %rbp
  40230c:	53                   	push   %rbx
  40230d:	49 89 fc             	mov    %rdi,%r12
  402310:	c7 05 2a 5e 00 00 00 	movl   $0x0,0x5e2a(%rip)        # 408144 <gets_cnt>
  402317:	00 00 00 
  40231a:	48 89 fb             	mov    %rdi,%rbx
  40231d:	48 8b 3d ec 51 00 00 	mov    0x51ec(%rip),%rdi        # 407510 <infile>
  402324:	e8 17 f1 ff ff       	call   401440 <getc@plt>
  402329:	83 f8 ff             	cmp    $0xffffffff,%eax
  40232c:	74 18                	je     402346 <Gets+0x41>
  40232e:	83 f8 0a             	cmp    $0xa,%eax
  402331:	74 13                	je     402346 <Gets+0x41>
  402333:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  402337:	88 03                	mov    %al,(%rbx)
  402339:	0f b6 f8             	movzbl %al,%edi
  40233c:	e8 17 ff ff ff       	call   402258 <save_char>
  402341:	48 89 eb             	mov    %rbp,%rbx
  402344:	eb d7                	jmp    40231d <Gets+0x18>
  402346:	c6 03 00             	movb   $0x0,(%rbx)
  402349:	b8 00 00 00 00       	mov    $0x0,%eax
  40234e:	e8 5d ff ff ff       	call   4022b0 <save_term>
  402353:	4c 89 e0             	mov    %r12,%rax
  402356:	5b                   	pop    %rbx
  402357:	5d                   	pop    %rbp
  402358:	41 5c                	pop    %r12
  40235a:	c3                   	ret    

000000000040235b <notify_server>:
  40235b:	f3 0f 1e fa          	endbr64 
  40235f:	55                   	push   %rbp
  402360:	53                   	push   %rbx
  402361:	4c 8d 9c 24 00 c0 ff 	lea    -0x4000(%rsp),%r11
  402368:	ff 
  402369:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  402370:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  402375:	4c 39 dc             	cmp    %r11,%rsp
  402378:	75 ef                	jne    402369 <notify_server+0xe>
  40237a:	48 83 ec 18          	sub    $0x18,%rsp
  40237e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402385:	00 00 
  402387:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  40238e:	00 
  40238f:	31 c0                	xor    %eax,%eax
  402391:	83 3d 90 51 00 00 00 	cmpl   $0x0,0x5190(%rip)        # 407528 <is_checker>
  402398:	0f 85 b7 01 00 00    	jne    402555 <notify_server+0x1fa>
  40239e:	89 fb                	mov    %edi,%ebx
  4023a0:	81 3d 9a 5d 00 00 9c 	cmpl   $0x1f9c,0x5d9a(%rip)        # 408144 <gets_cnt>
  4023a7:	1f 00 00 
  4023aa:	7f 18                	jg     4023c4 <notify_server+0x69>
  4023ac:	0f be 05 95 5d 00 00 	movsbl 0x5d95(%rip),%eax        # 408148 <target_prefix>
  4023b3:	83 3d e6 50 00 00 00 	cmpl   $0x0,0x50e6(%rip)        # 4074a0 <notify>
  4023ba:	74 23                	je     4023df <notify_server+0x84>
  4023bc:	8b 15 5e 51 00 00    	mov    0x515e(%rip),%edx        # 407520 <authkey>
  4023c2:	eb 20                	jmp    4023e4 <notify_server+0x89>
  4023c4:	48 8d 35 8d 21 00 00 	lea    0x218d(%rip),%rsi        # 404558 <_IO_stdin_used+0x558>
  4023cb:	bf 01 00 00 00       	mov    $0x1,%edi
  4023d0:	e8 eb ef ff ff       	call   4013c0 <__printf_chk@plt>
  4023d5:	bf 01 00 00 00       	mov    $0x1,%edi
  4023da:	e8 31 f0 ff ff       	call   401410 <exit@plt>
  4023df:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  4023e4:	85 db                	test   %ebx,%ebx
  4023e6:	0f 84 9b 00 00 00    	je     402487 <notify_server+0x12c>
  4023ec:	48 8d 2d 56 20 00 00 	lea    0x2056(%rip),%rbp        # 404449 <_IO_stdin_used+0x449>
  4023f3:	48 89 e7             	mov    %rsp,%rdi
  4023f6:	48 8d 0d 43 51 00 00 	lea    0x5143(%rip),%rcx        # 407540 <gets_buf>
  4023fd:	51                   	push   %rcx
  4023fe:	56                   	push   %rsi
  4023ff:	50                   	push   %rax
  402400:	52                   	push   %rdx
  402401:	49 89 e9             	mov    %rbp,%r9
  402404:	44 8b 05 45 4d 00 00 	mov    0x4d45(%rip),%r8d        # 407150 <target_id>
  40240b:	48 8d 0d 3c 20 00 00 	lea    0x203c(%rip),%rcx        # 40444e <_IO_stdin_used+0x44e>
  402412:	ba 00 20 00 00       	mov    $0x2000,%edx
  402417:	be 01 00 00 00       	mov    $0x1,%esi
  40241c:	b8 00 00 00 00       	mov    $0x0,%eax
  402421:	e8 2a f0 ff ff       	call   401450 <__sprintf_chk@plt>
  402426:	48 83 c4 20          	add    $0x20,%rsp
  40242a:	83 3d 6f 50 00 00 00 	cmpl   $0x0,0x506f(%rip)        # 4074a0 <notify>
  402431:	0f 84 95 00 00 00    	je     4024cc <notify_server+0x171>
  402437:	48 89 e1             	mov    %rsp,%rcx
  40243a:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
  402441:	00 
  402442:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  402448:	48 8b 15 19 4d 00 00 	mov    0x4d19(%rip),%rdx        # 407168 <lab>
  40244f:	48 8b 35 1a 4d 00 00 	mov    0x4d1a(%rip),%rsi        # 407170 <course>
  402456:	48 8b 3d 03 4d 00 00 	mov    0x4d03(%rip),%rdi        # 407160 <user_id>
  40245d:	e8 75 12 00 00       	call   4036d7 <driver_post>
  402462:	85 c0                	test   %eax,%eax
  402464:	78 2d                	js     402493 <notify_server+0x138>
  402466:	85 db                	test   %ebx,%ebx
  402468:	74 51                	je     4024bb <notify_server+0x160>
  40246a:	48 8d 3d 17 21 00 00 	lea    0x2117(%rip),%rdi        # 404588 <_IO_stdin_used+0x588>
  402471:	e8 3a ee ff ff       	call   4012b0 <puts@plt>
  402476:	48 8d 3d f9 1f 00 00 	lea    0x1ff9(%rip),%rdi        # 404476 <_IO_stdin_used+0x476>
  40247d:	e8 2e ee ff ff       	call   4012b0 <puts@plt>
  402482:	e9 ce 00 00 00       	jmp    402555 <notify_server+0x1fa>
  402487:	48 8d 2d b6 1f 00 00 	lea    0x1fb6(%rip),%rbp        # 404444 <_IO_stdin_used+0x444>
  40248e:	e9 60 ff ff ff       	jmp    4023f3 <notify_server+0x98>
  402493:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
  40249a:	00 
  40249b:	48 8d 35 c8 1f 00 00 	lea    0x1fc8(%rip),%rsi        # 40446a <_IO_stdin_used+0x46a>
  4024a2:	bf 01 00 00 00       	mov    $0x1,%edi
  4024a7:	b8 00 00 00 00       	mov    $0x0,%eax
  4024ac:	e8 0f ef ff ff       	call   4013c0 <__printf_chk@plt>
  4024b1:	bf 01 00 00 00       	mov    $0x1,%edi
  4024b6:	e8 55 ef ff ff       	call   401410 <exit@plt>
  4024bb:	48 8d 3d be 1f 00 00 	lea    0x1fbe(%rip),%rdi        # 404480 <_IO_stdin_used+0x480>
  4024c2:	e8 e9 ed ff ff       	call   4012b0 <puts@plt>
  4024c7:	e9 89 00 00 00       	jmp    402555 <notify_server+0x1fa>
  4024cc:	48 89 ea             	mov    %rbp,%rdx
  4024cf:	48 8d 35 ea 20 00 00 	lea    0x20ea(%rip),%rsi        # 4045c0 <_IO_stdin_used+0x5c0>
  4024d6:	bf 01 00 00 00       	mov    $0x1,%edi
  4024db:	b8 00 00 00 00       	mov    $0x0,%eax
  4024e0:	e8 db ee ff ff       	call   4013c0 <__printf_chk@plt>
  4024e5:	48 8b 15 74 4c 00 00 	mov    0x4c74(%rip),%rdx        # 407160 <user_id>
  4024ec:	48 8d 35 94 1f 00 00 	lea    0x1f94(%rip),%rsi        # 404487 <_IO_stdin_used+0x487>
  4024f3:	bf 01 00 00 00       	mov    $0x1,%edi
  4024f8:	b8 00 00 00 00       	mov    $0x0,%eax
  4024fd:	e8 be ee ff ff       	call   4013c0 <__printf_chk@plt>
  402502:	48 8b 15 67 4c 00 00 	mov    0x4c67(%rip),%rdx        # 407170 <course>
  402509:	48 8d 35 84 1f 00 00 	lea    0x1f84(%rip),%rsi        # 404494 <_IO_stdin_used+0x494>
  402510:	bf 01 00 00 00       	mov    $0x1,%edi
  402515:	b8 00 00 00 00       	mov    $0x0,%eax
  40251a:	e8 a1 ee ff ff       	call   4013c0 <__printf_chk@plt>
  40251f:	48 8b 15 42 4c 00 00 	mov    0x4c42(%rip),%rdx        # 407168 <lab>
  402526:	48 8d 35 73 1f 00 00 	lea    0x1f73(%rip),%rsi        # 4044a0 <_IO_stdin_used+0x4a0>
  40252d:	bf 01 00 00 00       	mov    $0x1,%edi
  402532:	b8 00 00 00 00       	mov    $0x0,%eax
  402537:	e8 84 ee ff ff       	call   4013c0 <__printf_chk@plt>
  40253c:	48 89 e2             	mov    %rsp,%rdx
  40253f:	48 8d 35 63 1f 00 00 	lea    0x1f63(%rip),%rsi        # 4044a9 <_IO_stdin_used+0x4a9>
  402546:	bf 01 00 00 00       	mov    $0x1,%edi
  40254b:	b8 00 00 00 00       	mov    $0x0,%eax
  402550:	e8 6b ee ff ff       	call   4013c0 <__printf_chk@plt>
  402555:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  40255c:	00 
  40255d:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  402564:	00 00 
  402566:	75 0a                	jne    402572 <notify_server+0x217>
  402568:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
  40256f:	5b                   	pop    %rbx
  402570:	5d                   	pop    %rbp
  402571:	c3                   	ret    
  402572:	e8 72 02 00 00       	call   4027e9 <__stack_chk_fail>

0000000000402577 <validate>:
  402577:	f3 0f 1e fa          	endbr64 
  40257b:	53                   	push   %rbx
  40257c:	89 fb                	mov    %edi,%ebx
  40257e:	83 3d a3 4f 00 00 00 	cmpl   $0x0,0x4fa3(%rip)        # 407528 <is_checker>
  402585:	74 79                	je     402600 <validate+0x89>
  402587:	39 3d 8f 4f 00 00    	cmp    %edi,0x4f8f(%rip)        # 40751c <vlevel>
  40258d:	75 39                	jne    4025c8 <validate+0x51>
  40258f:	8b 15 83 4f 00 00    	mov    0x4f83(%rip),%edx        # 407518 <check_level>
  402595:	39 fa                	cmp    %edi,%edx
  402597:	75 45                	jne    4025de <validate+0x67>
  402599:	0f be 0d a8 5b 00 00 	movsbl 0x5ba8(%rip),%ecx        # 408148 <target_prefix>
  4025a0:	4c 8d 0d 99 4f 00 00 	lea    0x4f99(%rip),%r9        # 407540 <gets_buf>
  4025a7:	41 89 f8             	mov    %edi,%r8d
  4025aa:	8b 15 70 4f 00 00    	mov    0x4f70(%rip),%edx        # 407520 <authkey>
  4025b0:	48 8d 35 59 20 00 00 	lea    0x2059(%rip),%rsi        # 404610 <_IO_stdin_used+0x610>
  4025b7:	bf 01 00 00 00       	mov    $0x1,%edi
  4025bc:	b8 00 00 00 00       	mov    $0x0,%eax
  4025c1:	e8 fa ed ff ff       	call   4013c0 <__printf_chk@plt>
  4025c6:	5b                   	pop    %rbx
  4025c7:	c3                   	ret    
  4025c8:	48 8d 3d e6 1e 00 00 	lea    0x1ee6(%rip),%rdi        # 4044b5 <_IO_stdin_used+0x4b5>
  4025cf:	e8 dc ec ff ff       	call   4012b0 <puts@plt>
  4025d4:	b8 00 00 00 00       	mov    $0x0,%eax
  4025d9:	e8 e9 fc ff ff       	call   4022c7 <check_fail>
  4025de:	89 f9                	mov    %edi,%ecx
  4025e0:	48 8d 35 01 20 00 00 	lea    0x2001(%rip),%rsi        # 4045e8 <_IO_stdin_used+0x5e8>
  4025e7:	bf 01 00 00 00       	mov    $0x1,%edi
  4025ec:	b8 00 00 00 00       	mov    $0x0,%eax
  4025f1:	e8 ca ed ff ff       	call   4013c0 <__printf_chk@plt>
  4025f6:	b8 00 00 00 00       	mov    $0x0,%eax
  4025fb:	e8 c7 fc ff ff       	call   4022c7 <check_fail>
  402600:	39 3d 16 4f 00 00    	cmp    %edi,0x4f16(%rip)        # 40751c <vlevel>
  402606:	74 1a                	je     402622 <validate+0xab>
  402608:	48 8d 3d a6 1e 00 00 	lea    0x1ea6(%rip),%rdi        # 4044b5 <_IO_stdin_used+0x4b5>
  40260f:	e8 9c ec ff ff       	call   4012b0 <puts@plt>
  402614:	89 de                	mov    %ebx,%esi
  402616:	bf 00 00 00 00       	mov    $0x0,%edi
  40261b:	e8 3b fd ff ff       	call   40235b <notify_server>
  402620:	eb a4                	jmp    4025c6 <validate+0x4f>
  402622:	0f be 0d 1f 5b 00 00 	movsbl 0x5b1f(%rip),%ecx        # 408148 <target_prefix>
  402629:	89 fa                	mov    %edi,%edx
  40262b:	48 8d 35 06 20 00 00 	lea    0x2006(%rip),%rsi        # 404638 <_IO_stdin_used+0x638>
  402632:	bf 01 00 00 00       	mov    $0x1,%edi
  402637:	b8 00 00 00 00       	mov    $0x0,%eax
  40263c:	e8 7f ed ff ff       	call   4013c0 <__printf_chk@plt>
  402641:	89 de                	mov    %ebx,%esi
  402643:	bf 01 00 00 00       	mov    $0x1,%edi
  402648:	e8 0e fd ff ff       	call   40235b <notify_server>
  40264d:	e9 74 ff ff ff       	jmp    4025c6 <validate+0x4f>

0000000000402652 <fail>:
  402652:	f3 0f 1e fa          	endbr64 
  402656:	48 83 ec 08          	sub    $0x8,%rsp
  40265a:	83 3d c7 4e 00 00 00 	cmpl   $0x0,0x4ec7(%rip)        # 407528 <is_checker>
  402661:	75 11                	jne    402674 <fail+0x22>
  402663:	89 fe                	mov    %edi,%esi
  402665:	bf 00 00 00 00       	mov    $0x0,%edi
  40266a:	e8 ec fc ff ff       	call   40235b <notify_server>
  40266f:	48 83 c4 08          	add    $0x8,%rsp
  402673:	c3                   	ret    
  402674:	b8 00 00 00 00       	mov    $0x0,%eax
  402679:	e8 49 fc ff ff       	call   4022c7 <check_fail>

000000000040267e <bushandler>:
  40267e:	f3 0f 1e fa          	endbr64 
  402682:	50                   	push   %rax
  402683:	58                   	pop    %rax
  402684:	48 83 ec 08          	sub    $0x8,%rsp
  402688:	83 3d 99 4e 00 00 00 	cmpl   $0x0,0x4e99(%rip)        # 407528 <is_checker>
  40268f:	74 16                	je     4026a7 <bushandler+0x29>
  402691:	48 8d 3d 3b 1e 00 00 	lea    0x1e3b(%rip),%rdi        # 4044d3 <_IO_stdin_used+0x4d3>
  402698:	e8 13 ec ff ff       	call   4012b0 <puts@plt>
  40269d:	b8 00 00 00 00       	mov    $0x0,%eax
  4026a2:	e8 20 fc ff ff       	call   4022c7 <check_fail>
  4026a7:	48 8d 3d c2 1f 00 00 	lea    0x1fc2(%rip),%rdi        # 404670 <_IO_stdin_used+0x670>
  4026ae:	e8 fd eb ff ff       	call   4012b0 <puts@plt>
  4026b3:	48 8d 3d 23 1e 00 00 	lea    0x1e23(%rip),%rdi        # 4044dd <_IO_stdin_used+0x4dd>
  4026ba:	e8 f1 eb ff ff       	call   4012b0 <puts@plt>
  4026bf:	be 00 00 00 00       	mov    $0x0,%esi
  4026c4:	bf 00 00 00 00       	mov    $0x0,%edi
  4026c9:	e8 8d fc ff ff       	call   40235b <notify_server>
  4026ce:	bf 01 00 00 00       	mov    $0x1,%edi
  4026d3:	e8 38 ed ff ff       	call   401410 <exit@plt>

00000000004026d8 <seghandler>:
  4026d8:	f3 0f 1e fa          	endbr64 
  4026dc:	50                   	push   %rax
  4026dd:	58                   	pop    %rax
  4026de:	48 83 ec 08          	sub    $0x8,%rsp
  4026e2:	83 3d 3f 4e 00 00 00 	cmpl   $0x0,0x4e3f(%rip)        # 407528 <is_checker>
  4026e9:	74 16                	je     402701 <seghandler+0x29>
  4026eb:	48 8d 3d 01 1e 00 00 	lea    0x1e01(%rip),%rdi        # 4044f3 <_IO_stdin_used+0x4f3>
  4026f2:	e8 b9 eb ff ff       	call   4012b0 <puts@plt>
  4026f7:	b8 00 00 00 00       	mov    $0x0,%eax
  4026fc:	e8 c6 fb ff ff       	call   4022c7 <check_fail>
  402701:	48 8d 3d 88 1f 00 00 	lea    0x1f88(%rip),%rdi        # 404690 <_IO_stdin_used+0x690>
  402708:	e8 a3 eb ff ff       	call   4012b0 <puts@plt>
  40270d:	48 8d 3d c9 1d 00 00 	lea    0x1dc9(%rip),%rdi        # 4044dd <_IO_stdin_used+0x4dd>
  402714:	e8 97 eb ff ff       	call   4012b0 <puts@plt>
  402719:	be 00 00 00 00       	mov    $0x0,%esi
  40271e:	bf 00 00 00 00       	mov    $0x0,%edi
  402723:	e8 33 fc ff ff       	call   40235b <notify_server>
  402728:	bf 01 00 00 00       	mov    $0x1,%edi
  40272d:	e8 de ec ff ff       	call   401410 <exit@plt>

0000000000402732 <illegalhandler>:
  402732:	f3 0f 1e fa          	endbr64 
  402736:	50                   	push   %rax
  402737:	58                   	pop    %rax
  402738:	48 83 ec 08          	sub    $0x8,%rsp
  40273c:	83 3d e5 4d 00 00 00 	cmpl   $0x0,0x4de5(%rip)        # 407528 <is_checker>
  402743:	74 16                	je     40275b <illegalhandler+0x29>
  402745:	48 8d 3d ba 1d 00 00 	lea    0x1dba(%rip),%rdi        # 404506 <_IO_stdin_used+0x506>
  40274c:	e8 5f eb ff ff       	call   4012b0 <puts@plt>
  402751:	b8 00 00 00 00       	mov    $0x0,%eax
  402756:	e8 6c fb ff ff       	call   4022c7 <check_fail>
  40275b:	48 8d 3d 56 1f 00 00 	lea    0x1f56(%rip),%rdi        # 4046b8 <_IO_stdin_used+0x6b8>
  402762:	e8 49 eb ff ff       	call   4012b0 <puts@plt>
  402767:	48 8d 3d 6f 1d 00 00 	lea    0x1d6f(%rip),%rdi        # 4044dd <_IO_stdin_used+0x4dd>
  40276e:	e8 3d eb ff ff       	call   4012b0 <puts@plt>
  402773:	be 00 00 00 00       	mov    $0x0,%esi
  402778:	bf 00 00 00 00       	mov    $0x0,%edi
  40277d:	e8 d9 fb ff ff       	call   40235b <notify_server>
  402782:	bf 01 00 00 00       	mov    $0x1,%edi
  402787:	e8 84 ec ff ff       	call   401410 <exit@plt>

000000000040278c <sigalrmhandler>:
  40278c:	f3 0f 1e fa          	endbr64 
  402790:	50                   	push   %rax
  402791:	58                   	pop    %rax
  402792:	48 83 ec 08          	sub    $0x8,%rsp
  402796:	83 3d 8b 4d 00 00 00 	cmpl   $0x0,0x4d8b(%rip)        # 407528 <is_checker>
  40279d:	74 16                	je     4027b5 <sigalrmhandler+0x29>
  40279f:	48 8d 3d 74 1d 00 00 	lea    0x1d74(%rip),%rdi        # 40451a <_IO_stdin_used+0x51a>
  4027a6:	e8 05 eb ff ff       	call   4012b0 <puts@plt>
  4027ab:	b8 00 00 00 00       	mov    $0x0,%eax
  4027b0:	e8 12 fb ff ff       	call   4022c7 <check_fail>
  4027b5:	ba 02 00 00 00       	mov    $0x2,%edx
  4027ba:	48 8d 35 27 1f 00 00 	lea    0x1f27(%rip),%rsi        # 4046e8 <_IO_stdin_used+0x6e8>
  4027c1:	bf 01 00 00 00       	mov    $0x1,%edi
  4027c6:	b8 00 00 00 00       	mov    $0x0,%eax
  4027cb:	e8 f0 eb ff ff       	call   4013c0 <__printf_chk@plt>
  4027d0:	be 00 00 00 00       	mov    $0x0,%esi
  4027d5:	bf 00 00 00 00       	mov    $0x0,%edi
  4027da:	e8 7c fb ff ff       	call   40235b <notify_server>
  4027df:	bf 01 00 00 00       	mov    $0x1,%edi
  4027e4:	e8 27 ec ff ff       	call   401410 <exit@plt>

00000000004027e9 <__stack_chk_fail>:
  4027e9:	f3 0f 1e fa          	endbr64 
  4027ed:	50                   	push   %rax
  4027ee:	58                   	pop    %rax
  4027ef:	48 83 ec 08          	sub    $0x8,%rsp
  4027f3:	83 3d 2e 4d 00 00 00 	cmpl   $0x0,0x4d2e(%rip)        # 407528 <is_checker>
  4027fa:	74 16                	je     402812 <__stack_chk_fail+0x29>
  4027fc:	48 8d 3d 1f 1d 00 00 	lea    0x1d1f(%rip),%rdi        # 404522 <_IO_stdin_used+0x522>
  402803:	e8 a8 ea ff ff       	call   4012b0 <puts@plt>
  402808:	b8 00 00 00 00       	mov    $0x0,%eax
  40280d:	e8 b5 fa ff ff       	call   4022c7 <check_fail>
  402812:	48 8d 3d 07 1f 00 00 	lea    0x1f07(%rip),%rdi        # 404720 <_IO_stdin_used+0x720>
  402819:	e8 92 ea ff ff       	call   4012b0 <puts@plt>
  40281e:	48 8d 3d b8 1c 00 00 	lea    0x1cb8(%rip),%rdi        # 4044dd <_IO_stdin_used+0x4dd>
  402825:	e8 86 ea ff ff       	call   4012b0 <puts@plt>
  40282a:	be 00 00 00 00       	mov    $0x0,%esi
  40282f:	bf 00 00 00 00       	mov    $0x0,%edi
  402834:	e8 22 fb ff ff       	call   40235b <notify_server>
  402839:	bf 01 00 00 00       	mov    $0x1,%edi
  40283e:	e8 cd eb ff ff       	call   401410 <exit@plt>

0000000000402843 <launch>:
  402843:	f3 0f 1e fa          	endbr64 
  402847:	55                   	push   %rbp
  402848:	48 89 e5             	mov    %rsp,%rbp
  40284b:	53                   	push   %rbx
  40284c:	48 83 ec 18          	sub    $0x18,%rsp
  402850:	48 89 fa             	mov    %rdi,%rdx
  402853:	89 f3                	mov    %esi,%ebx
  402855:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40285c:	00 00 
  40285e:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  402862:	31 c0                	xor    %eax,%eax
  402864:	48 8d 47 17          	lea    0x17(%rdi),%rax
  402868:	48 89 c1             	mov    %rax,%rcx
  40286b:	48 83 e1 f0          	and    $0xfffffffffffffff0,%rcx
  40286f:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
  402875:	48 89 e6             	mov    %rsp,%rsi
  402878:	48 29 c6             	sub    %rax,%rsi
  40287b:	48 89 f0             	mov    %rsi,%rax
  40287e:	48 39 c4             	cmp    %rax,%rsp
  402881:	74 12                	je     402895 <launch+0x52>
  402883:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  40288a:	48 83 8c 24 f8 0f 00 	orq    $0x0,0xff8(%rsp)
  402891:	00 00 
  402893:	eb e9                	jmp    40287e <launch+0x3b>
  402895:	48 89 c8             	mov    %rcx,%rax
  402898:	25 ff 0f 00 00       	and    $0xfff,%eax
  40289d:	48 29 c4             	sub    %rax,%rsp
  4028a0:	48 85 c0             	test   %rax,%rax
  4028a3:	74 06                	je     4028ab <launch+0x68>
  4028a5:	48 83 4c 04 f8 00    	orq    $0x0,-0x8(%rsp,%rax,1)
  4028ab:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  4028b0:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  4028b4:	be f4 00 00 00       	mov    $0xf4,%esi
  4028b9:	e8 22 ea ff ff       	call   4012e0 <memset@plt>
  4028be:	48 8b 05 fb 4b 00 00 	mov    0x4bfb(%rip),%rax        # 4074c0 <stdin@GLIBC_2.2.5>
  4028c5:	48 39 05 44 4c 00 00 	cmp    %rax,0x4c44(%rip)        # 407510 <infile>
  4028cc:	74 42                	je     402910 <launch+0xcd>
  4028ce:	c7 05 44 4c 00 00 00 	movl   $0x0,0x4c44(%rip)        # 40751c <vlevel>
  4028d5:	00 00 00 
  4028d8:	85 db                	test   %ebx,%ebx
  4028da:	75 42                	jne    40291e <launch+0xdb>
  4028dc:	b8 00 00 00 00       	mov    $0x0,%eax
  4028e1:	e8 db f8 ff ff       	call   4021c1 <test>
  4028e6:	83 3d 3b 4c 00 00 00 	cmpl   $0x0,0x4c3b(%rip)        # 407528 <is_checker>
  4028ed:	75 3b                	jne    40292a <launch+0xe7>
  4028ef:	48 8d 3d 53 1c 00 00 	lea    0x1c53(%rip),%rdi        # 404549 <_IO_stdin_used+0x549>
  4028f6:	e8 b5 e9 ff ff       	call   4012b0 <puts@plt>
  4028fb:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4028ff:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  402906:	00 00 
  402908:	75 36                	jne    402940 <launch+0xfd>
  40290a:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  40290e:	c9                   	leave  
  40290f:	c3                   	ret    
  402910:	48 8d 3d 1a 1c 00 00 	lea    0x1c1a(%rip),%rdi        # 404531 <_IO_stdin_used+0x531>
  402917:	e8 94 e9 ff ff       	call   4012b0 <puts@plt>
  40291c:	eb b0                	jmp    4028ce <launch+0x8b>
  40291e:	b8 00 00 00 00       	mov    $0x0,%eax
  402923:	e8 01 f9 ff ff       	call   402229 <test2>
  402928:	eb bc                	jmp    4028e6 <launch+0xa3>
  40292a:	48 8d 3d 0d 1c 00 00 	lea    0x1c0d(%rip),%rdi        # 40453e <_IO_stdin_used+0x53e>
  402931:	e8 7a e9 ff ff       	call   4012b0 <puts@plt>
  402936:	b8 00 00 00 00       	mov    $0x0,%eax
  40293b:	e8 87 f9 ff ff       	call   4022c7 <check_fail>
  402940:	e8 a4 fe ff ff       	call   4027e9 <__stack_chk_fail>

0000000000402945 <stable_launch>:
  402945:	f3 0f 1e fa          	endbr64 
  402949:	55                   	push   %rbp
  40294a:	53                   	push   %rbx
  40294b:	48 83 ec 08          	sub    $0x8,%rsp
  40294f:	89 f5                	mov    %esi,%ebp
  402951:	48 89 3d b0 4b 00 00 	mov    %rdi,0x4bb0(%rip)        # 407508 <global_offset>
  402958:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  40295e:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  402964:	b9 32 01 00 00       	mov    $0x132,%ecx
  402969:	ba 07 00 00 00       	mov    $0x7,%edx
  40296e:	be 00 00 10 00       	mov    $0x100000,%esi
  402973:	bf 00 60 58 55       	mov    $0x55586000,%edi
  402978:	e8 53 e9 ff ff       	call   4012d0 <mmap@plt>
  40297d:	48 89 c3             	mov    %rax,%rbx
  402980:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  402986:	75 4a                	jne    4029d2 <stable_launch+0x8d>
  402988:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  40298f:	48 89 15 ba 57 00 00 	mov    %rdx,0x57ba(%rip)        # 408150 <stack_top>
  402996:	48 89 e0             	mov    %rsp,%rax
  402999:	48 89 d4             	mov    %rdx,%rsp
  40299c:	48 89 c2             	mov    %rax,%rdx
  40299f:	48 89 15 5a 4b 00 00 	mov    %rdx,0x4b5a(%rip)        # 407500 <global_save_stack>
  4029a6:	89 ee                	mov    %ebp,%esi
  4029a8:	48 8b 3d 59 4b 00 00 	mov    0x4b59(%rip),%rdi        # 407508 <global_offset>
  4029af:	e8 8f fe ff ff       	call   402843 <launch>
  4029b4:	48 8b 05 45 4b 00 00 	mov    0x4b45(%rip),%rax        # 407500 <global_save_stack>
  4029bb:	48 89 c4             	mov    %rax,%rsp
  4029be:	be 00 00 10 00       	mov    $0x100000,%esi
  4029c3:	48 89 df             	mov    %rbx,%rdi
  4029c6:	e8 e5 e9 ff ff       	call   4013b0 <munmap@plt>
  4029cb:	48 83 c4 08          	add    $0x8,%rsp
  4029cf:	5b                   	pop    %rbx
  4029d0:	5d                   	pop    %rbp
  4029d1:	c3                   	ret    
  4029d2:	be 00 00 10 00       	mov    $0x100000,%esi
  4029d7:	48 89 c7             	mov    %rax,%rdi
  4029da:	e8 d1 e9 ff ff       	call   4013b0 <munmap@plt>
  4029df:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  4029e4:	48 8d 15 5d 1d 00 00 	lea    0x1d5d(%rip),%rdx        # 404748 <_IO_stdin_used+0x748>
  4029eb:	be 01 00 00 00       	mov    $0x1,%esi
  4029f0:	48 8b 3d e9 4a 00 00 	mov    0x4ae9(%rip),%rdi        # 4074e0 <stderr@GLIBC_2.2.5>
  4029f7:	b8 00 00 00 00       	mov    $0x0,%eax
  4029fc:	e8 2f ea ff ff       	call   401430 <__fprintf_chk@plt>
  402a01:	bf 01 00 00 00       	mov    $0x1,%edi
  402a06:	e8 05 ea ff ff       	call   401410 <exit@plt>

0000000000402a0b <rio_readinitb>:
  402a0b:	89 37                	mov    %esi,(%rdi)
  402a0d:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  402a14:	48 8d 47 10          	lea    0x10(%rdi),%rax
  402a18:	48 89 47 08          	mov    %rax,0x8(%rdi)
  402a1c:	c3                   	ret    

0000000000402a1d <sigalrm_handler>:
  402a1d:	f3 0f 1e fa          	endbr64 
  402a21:	50                   	push   %rax
  402a22:	58                   	pop    %rax
  402a23:	48 83 ec 08          	sub    $0x8,%rsp
  402a27:	b9 00 00 00 00       	mov    $0x0,%ecx
  402a2c:	48 8d 15 4d 1d 00 00 	lea    0x1d4d(%rip),%rdx        # 404780 <trans_char+0x10>
  402a33:	be 01 00 00 00       	mov    $0x1,%esi
  402a38:	48 8b 3d a1 4a 00 00 	mov    0x4aa1(%rip),%rdi        # 4074e0 <stderr@GLIBC_2.2.5>
  402a3f:	b8 00 00 00 00       	mov    $0x0,%eax
  402a44:	e8 e7 e9 ff ff       	call   401430 <__fprintf_chk@plt>
  402a49:	bf 01 00 00 00       	mov    $0x1,%edi
  402a4e:	e8 bd e9 ff ff       	call   401410 <exit@plt>

0000000000402a53 <rio_writen>:
  402a53:	41 55                	push   %r13
  402a55:	41 54                	push   %r12
  402a57:	55                   	push   %rbp
  402a58:	53                   	push   %rbx
  402a59:	48 83 ec 08          	sub    $0x8,%rsp
  402a5d:	41 89 fc             	mov    %edi,%r12d
  402a60:	48 89 f5             	mov    %rsi,%rbp
  402a63:	49 89 d5             	mov    %rdx,%r13
  402a66:	48 89 d3             	mov    %rdx,%rbx
  402a69:	eb 06                	jmp    402a71 <rio_writen+0x1e>
  402a6b:	48 29 c3             	sub    %rax,%rbx
  402a6e:	48 01 c5             	add    %rax,%rbp
  402a71:	48 85 db             	test   %rbx,%rbx
  402a74:	74 24                	je     402a9a <rio_writen+0x47>
  402a76:	48 89 da             	mov    %rbx,%rdx
  402a79:	48 89 ee             	mov    %rbp,%rsi
  402a7c:	44 89 e7             	mov    %r12d,%edi
  402a7f:	e8 3c e8 ff ff       	call   4012c0 <write@plt>
  402a84:	48 85 c0             	test   %rax,%rax
  402a87:	7f e2                	jg     402a6b <rio_writen+0x18>
  402a89:	e8 d2 e7 ff ff       	call   401260 <__errno_location@plt>
  402a8e:	83 38 04             	cmpl   $0x4,(%rax)
  402a91:	75 15                	jne    402aa8 <rio_writen+0x55>
  402a93:	b8 00 00 00 00       	mov    $0x0,%eax
  402a98:	eb d1                	jmp    402a6b <rio_writen+0x18>
  402a9a:	4c 89 e8             	mov    %r13,%rax
  402a9d:	48 83 c4 08          	add    $0x8,%rsp
  402aa1:	5b                   	pop    %rbx
  402aa2:	5d                   	pop    %rbp
  402aa3:	41 5c                	pop    %r12
  402aa5:	41 5d                	pop    %r13
  402aa7:	c3                   	ret    
  402aa8:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402aaf:	eb ec                	jmp    402a9d <rio_writen+0x4a>

0000000000402ab1 <rio_read>:
  402ab1:	41 55                	push   %r13
  402ab3:	41 54                	push   %r12
  402ab5:	55                   	push   %rbp
  402ab6:	53                   	push   %rbx
  402ab7:	48 83 ec 08          	sub    $0x8,%rsp
  402abb:	48 89 fb             	mov    %rdi,%rbx
  402abe:	49 89 f5             	mov    %rsi,%r13
  402ac1:	49 89 d4             	mov    %rdx,%r12
  402ac4:	eb 17                	jmp    402add <rio_read+0x2c>
  402ac6:	e8 95 e7 ff ff       	call   401260 <__errno_location@plt>
  402acb:	83 38 04             	cmpl   $0x4,(%rax)
  402ace:	74 0d                	je     402add <rio_read+0x2c>
  402ad0:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402ad7:	eb 54                	jmp    402b2d <rio_read+0x7c>
  402ad9:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  402add:	8b 6b 04             	mov    0x4(%rbx),%ebp
  402ae0:	85 ed                	test   %ebp,%ebp
  402ae2:	7f 23                	jg     402b07 <rio_read+0x56>
  402ae4:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  402ae8:	8b 3b                	mov    (%rbx),%edi
  402aea:	ba 00 20 00 00       	mov    $0x2000,%edx
  402aef:	48 89 ee             	mov    %rbp,%rsi
  402af2:	e8 19 e8 ff ff       	call   401310 <read@plt>
  402af7:	89 43 04             	mov    %eax,0x4(%rbx)
  402afa:	85 c0                	test   %eax,%eax
  402afc:	78 c8                	js     402ac6 <rio_read+0x15>
  402afe:	75 d9                	jne    402ad9 <rio_read+0x28>
  402b00:	b8 00 00 00 00       	mov    $0x0,%eax
  402b05:	eb 26                	jmp    402b2d <rio_read+0x7c>
  402b07:	89 e8                	mov    %ebp,%eax
  402b09:	4c 39 e0             	cmp    %r12,%rax
  402b0c:	72 03                	jb     402b11 <rio_read+0x60>
  402b0e:	44 89 e5             	mov    %r12d,%ebp
  402b11:	4c 63 e5             	movslq %ebp,%r12
  402b14:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  402b18:	4c 89 e2             	mov    %r12,%rdx
  402b1b:	4c 89 ef             	mov    %r13,%rdi
  402b1e:	e8 4d e8 ff ff       	call   401370 <memcpy@plt>
  402b23:	4c 01 63 08          	add    %r12,0x8(%rbx)
  402b27:	29 6b 04             	sub    %ebp,0x4(%rbx)
  402b2a:	4c 89 e0             	mov    %r12,%rax
  402b2d:	48 83 c4 08          	add    $0x8,%rsp
  402b31:	5b                   	pop    %rbx
  402b32:	5d                   	pop    %rbp
  402b33:	41 5c                	pop    %r12
  402b35:	41 5d                	pop    %r13
  402b37:	c3                   	ret    

0000000000402b38 <rio_readlineb>:
  402b38:	41 55                	push   %r13
  402b3a:	41 54                	push   %r12
  402b3c:	55                   	push   %rbp
  402b3d:	53                   	push   %rbx
  402b3e:	48 83 ec 18          	sub    $0x18,%rsp
  402b42:	49 89 fd             	mov    %rdi,%r13
  402b45:	48 89 f5             	mov    %rsi,%rbp
  402b48:	49 89 d4             	mov    %rdx,%r12
  402b4b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402b52:	00 00 
  402b54:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402b59:	31 c0                	xor    %eax,%eax
  402b5b:	bb 01 00 00 00       	mov    $0x1,%ebx
  402b60:	eb 18                	jmp    402b7a <rio_readlineb+0x42>
  402b62:	85 c0                	test   %eax,%eax
  402b64:	75 65                	jne    402bcb <rio_readlineb+0x93>
  402b66:	48 83 fb 01          	cmp    $0x1,%rbx
  402b6a:	75 3d                	jne    402ba9 <rio_readlineb+0x71>
  402b6c:	b8 00 00 00 00       	mov    $0x0,%eax
  402b71:	eb 3d                	jmp    402bb0 <rio_readlineb+0x78>
  402b73:	48 83 c3 01          	add    $0x1,%rbx
  402b77:	48 89 d5             	mov    %rdx,%rbp
  402b7a:	4c 39 e3             	cmp    %r12,%rbx
  402b7d:	73 2a                	jae    402ba9 <rio_readlineb+0x71>
  402b7f:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  402b84:	ba 01 00 00 00       	mov    $0x1,%edx
  402b89:	4c 89 ef             	mov    %r13,%rdi
  402b8c:	e8 20 ff ff ff       	call   402ab1 <rio_read>
  402b91:	83 f8 01             	cmp    $0x1,%eax
  402b94:	75 cc                	jne    402b62 <rio_readlineb+0x2a>
  402b96:	48 8d 55 01          	lea    0x1(%rbp),%rdx
  402b9a:	0f b6 44 24 07       	movzbl 0x7(%rsp),%eax
  402b9f:	88 45 00             	mov    %al,0x0(%rbp)
  402ba2:	3c 0a                	cmp    $0xa,%al
  402ba4:	75 cd                	jne    402b73 <rio_readlineb+0x3b>
  402ba6:	48 89 d5             	mov    %rdx,%rbp
  402ba9:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  402bad:	48 89 d8             	mov    %rbx,%rax
  402bb0:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  402bb5:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  402bbc:	00 00 
  402bbe:	75 14                	jne    402bd4 <rio_readlineb+0x9c>
  402bc0:	48 83 c4 18          	add    $0x18,%rsp
  402bc4:	5b                   	pop    %rbx
  402bc5:	5d                   	pop    %rbp
  402bc6:	41 5c                	pop    %r12
  402bc8:	41 5d                	pop    %r13
  402bca:	c3                   	ret    
  402bcb:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402bd2:	eb dc                	jmp    402bb0 <rio_readlineb+0x78>
  402bd4:	e8 10 fc ff ff       	call   4027e9 <__stack_chk_fail>

0000000000402bd9 <urlencode>:
  402bd9:	41 54                	push   %r12
  402bdb:	55                   	push   %rbp
  402bdc:	53                   	push   %rbx
  402bdd:	48 83 ec 10          	sub    $0x10,%rsp
  402be1:	48 89 fb             	mov    %rdi,%rbx
  402be4:	48 89 f5             	mov    %rsi,%rbp
  402be7:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402bee:	00 00 
  402bf0:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402bf5:	31 c0                	xor    %eax,%eax
  402bf7:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402bfe:	f2 ae                	repnz scas %es:(%rdi),%al
  402c00:	48 f7 d1             	not    %rcx
  402c03:	8d 41 ff             	lea    -0x1(%rcx),%eax
  402c06:	eb 0f                	jmp    402c17 <urlencode+0x3e>
  402c08:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  402c0c:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402c10:	48 83 c3 01          	add    $0x1,%rbx
  402c14:	44 89 e0             	mov    %r12d,%eax
  402c17:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  402c1b:	85 c0                	test   %eax,%eax
  402c1d:	0f 84 a8 00 00 00    	je     402ccb <urlencode+0xf2>
  402c23:	44 0f b6 03          	movzbl (%rbx),%r8d
  402c27:	41 80 f8 2a          	cmp    $0x2a,%r8b
  402c2b:	0f 94 c2             	sete   %dl
  402c2e:	41 80 f8 2d          	cmp    $0x2d,%r8b
  402c32:	0f 94 c0             	sete   %al
  402c35:	08 c2                	or     %al,%dl
  402c37:	75 cf                	jne    402c08 <urlencode+0x2f>
  402c39:	41 80 f8 2e          	cmp    $0x2e,%r8b
  402c3d:	74 c9                	je     402c08 <urlencode+0x2f>
  402c3f:	41 80 f8 5f          	cmp    $0x5f,%r8b
  402c43:	74 c3                	je     402c08 <urlencode+0x2f>
  402c45:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  402c49:	3c 09                	cmp    $0x9,%al
  402c4b:	76 bb                	jbe    402c08 <urlencode+0x2f>
  402c4d:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  402c51:	3c 19                	cmp    $0x19,%al
  402c53:	76 b3                	jbe    402c08 <urlencode+0x2f>
  402c55:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  402c59:	3c 19                	cmp    $0x19,%al
  402c5b:	76 ab                	jbe    402c08 <urlencode+0x2f>
  402c5d:	41 80 f8 20          	cmp    $0x20,%r8b
  402c61:	74 56                	je     402cb9 <urlencode+0xe0>
  402c63:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  402c67:	3c 5f                	cmp    $0x5f,%al
  402c69:	0f 96 c2             	setbe  %dl
  402c6c:	41 80 f8 09          	cmp    $0x9,%r8b
  402c70:	0f 94 c0             	sete   %al
  402c73:	08 c2                	or     %al,%dl
  402c75:	74 4f                	je     402cc6 <urlencode+0xed>
  402c77:	48 89 e7             	mov    %rsp,%rdi
  402c7a:	45 0f b6 c0          	movzbl %r8b,%r8d
  402c7e:	48 8d 0d b0 1b 00 00 	lea    0x1bb0(%rip),%rcx        # 404835 <trans_char+0xc5>
  402c85:	ba 08 00 00 00       	mov    $0x8,%edx
  402c8a:	be 01 00 00 00       	mov    $0x1,%esi
  402c8f:	b8 00 00 00 00       	mov    $0x0,%eax
  402c94:	e8 b7 e7 ff ff       	call   401450 <__sprintf_chk@plt>
  402c99:	0f b6 04 24          	movzbl (%rsp),%eax
  402c9d:	88 45 00             	mov    %al,0x0(%rbp)
  402ca0:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  402ca5:	88 45 01             	mov    %al,0x1(%rbp)
  402ca8:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  402cad:	88 45 02             	mov    %al,0x2(%rbp)
  402cb0:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  402cb4:	e9 57 ff ff ff       	jmp    402c10 <urlencode+0x37>
  402cb9:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  402cbd:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402cc1:	e9 4a ff ff ff       	jmp    402c10 <urlencode+0x37>
  402cc6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402ccb:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  402cd0:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  402cd7:	00 00 
  402cd9:	75 09                	jne    402ce4 <urlencode+0x10b>
  402cdb:	48 83 c4 10          	add    $0x10,%rsp
  402cdf:	5b                   	pop    %rbx
  402ce0:	5d                   	pop    %rbp
  402ce1:	41 5c                	pop    %r12
  402ce3:	c3                   	ret    
  402ce4:	e8 00 fb ff ff       	call   4027e9 <__stack_chk_fail>

0000000000402ce9 <submitr>:
  402ce9:	f3 0f 1e fa          	endbr64 
  402ced:	41 57                	push   %r15
  402cef:	41 56                	push   %r14
  402cf1:	41 55                	push   %r13
  402cf3:	41 54                	push   %r12
  402cf5:	55                   	push   %rbp
  402cf6:	53                   	push   %rbx
  402cf7:	4c 8d 9c 24 00 60 ff 	lea    -0xa000(%rsp),%r11
  402cfe:	ff 
  402cff:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  402d06:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  402d0b:	4c 39 dc             	cmp    %r11,%rsp
  402d0e:	75 ef                	jne    402cff <submitr+0x16>
  402d10:	48 83 ec 68          	sub    $0x68,%rsp
  402d14:	49 89 fc             	mov    %rdi,%r12
  402d17:	89 74 24 1c          	mov    %esi,0x1c(%rsp)
  402d1b:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
  402d20:	49 89 cd             	mov    %rcx,%r13
  402d23:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
  402d28:	4d 89 ce             	mov    %r9,%r14
  402d2b:	48 8b ac 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbp
  402d32:	00 
  402d33:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402d3a:	00 00 
  402d3c:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
  402d43:	00 
  402d44:	31 c0                	xor    %eax,%eax
  402d46:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
  402d4d:	00 
  402d4e:	ba 00 00 00 00       	mov    $0x0,%edx
  402d53:	be 01 00 00 00       	mov    $0x1,%esi
  402d58:	bf 02 00 00 00       	mov    $0x2,%edi
  402d5d:	e8 fe e6 ff ff       	call   401460 <socket@plt>
  402d62:	85 c0                	test   %eax,%eax
  402d64:	0f 88 a5 02 00 00    	js     40300f <submitr+0x326>
  402d6a:	89 c3                	mov    %eax,%ebx
  402d6c:	4c 89 e7             	mov    %r12,%rdi
  402d6f:	e8 cc e5 ff ff       	call   401340 <gethostbyname@plt>
  402d74:	48 85 c0             	test   %rax,%rax
  402d77:	0f 84 de 02 00 00    	je     40305b <submitr+0x372>
  402d7d:	4c 8d 7c 24 30       	lea    0x30(%rsp),%r15
  402d82:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
  402d89:	00 00 
  402d8b:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
  402d92:	00 00 
  402d94:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
  402d9b:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402d9f:	48 8b 40 18          	mov    0x18(%rax),%rax
  402da3:	48 8b 30             	mov    (%rax),%rsi
  402da6:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
  402dab:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402db0:	e8 9b e5 ff ff       	call   401350 <__memmove_chk@plt>
  402db5:	0f b7 74 24 1c       	movzwl 0x1c(%rsp),%esi
  402dba:	66 c1 c6 08          	rol    $0x8,%si
  402dbe:	66 89 74 24 32       	mov    %si,0x32(%rsp)
  402dc3:	ba 10 00 00 00       	mov    $0x10,%edx
  402dc8:	4c 89 fe             	mov    %r15,%rsi
  402dcb:	89 df                	mov    %ebx,%edi
  402dcd:	e8 4e e6 ff ff       	call   401420 <connect@plt>
  402dd2:	85 c0                	test   %eax,%eax
  402dd4:	0f 88 f7 02 00 00    	js     4030d1 <submitr+0x3e8>
  402dda:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  402de1:	b8 00 00 00 00       	mov    $0x0,%eax
  402de6:	48 89 f1             	mov    %rsi,%rcx
  402de9:	4c 89 f7             	mov    %r14,%rdi
  402dec:	f2 ae                	repnz scas %es:(%rdi),%al
  402dee:	48 89 ca             	mov    %rcx,%rdx
  402df1:	48 f7 d2             	not    %rdx
  402df4:	48 89 f1             	mov    %rsi,%rcx
  402df7:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402dfc:	f2 ae                	repnz scas %es:(%rdi),%al
  402dfe:	48 f7 d1             	not    %rcx
  402e01:	49 89 c8             	mov    %rcx,%r8
  402e04:	48 89 f1             	mov    %rsi,%rcx
  402e07:	4c 89 ef             	mov    %r13,%rdi
  402e0a:	f2 ae                	repnz scas %es:(%rdi),%al
  402e0c:	48 f7 d1             	not    %rcx
  402e0f:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  402e14:	48 89 f1             	mov    %rsi,%rcx
  402e17:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  402e1c:	f2 ae                	repnz scas %es:(%rdi),%al
  402e1e:	48 89 c8             	mov    %rcx,%rax
  402e21:	48 f7 d0             	not    %rax
  402e24:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  402e29:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  402e2e:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  402e35:	00 
  402e36:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  402e3c:	0f 87 f7 02 00 00    	ja     403139 <submitr+0x450>
  402e42:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
  402e49:	00 
  402e4a:	b9 00 04 00 00       	mov    $0x400,%ecx
  402e4f:	b8 00 00 00 00       	mov    $0x0,%eax
  402e54:	48 89 f7             	mov    %rsi,%rdi
  402e57:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402e5a:	4c 89 f7             	mov    %r14,%rdi
  402e5d:	e8 77 fd ff ff       	call   402bd9 <urlencode>
  402e62:	85 c0                	test   %eax,%eax
  402e64:	0f 88 42 03 00 00    	js     4031ac <submitr+0x4c3>
  402e6a:	4c 8d bc 24 50 20 00 	lea    0x2050(%rsp),%r15
  402e71:	00 
  402e72:	48 83 ec 08          	sub    $0x8,%rsp
  402e76:	41 54                	push   %r12
  402e78:	48 8d 84 24 60 40 00 	lea    0x4060(%rsp),%rax
  402e7f:	00 
  402e80:	50                   	push   %rax
  402e81:	41 55                	push   %r13
  402e83:	4c 8b 4c 24 30       	mov    0x30(%rsp),%r9
  402e88:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
  402e8d:	48 8d 0d 14 19 00 00 	lea    0x1914(%rip),%rcx        # 4047a8 <trans_char+0x38>
  402e94:	ba 00 20 00 00       	mov    $0x2000,%edx
  402e99:	be 01 00 00 00       	mov    $0x1,%esi
  402e9e:	4c 89 ff             	mov    %r15,%rdi
  402ea1:	b8 00 00 00 00       	mov    $0x0,%eax
  402ea6:	e8 a5 e5 ff ff       	call   401450 <__sprintf_chk@plt>
  402eab:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402eb2:	b8 00 00 00 00       	mov    $0x0,%eax
  402eb7:	4c 89 ff             	mov    %r15,%rdi
  402eba:	f2 ae                	repnz scas %es:(%rdi),%al
  402ebc:	48 f7 d1             	not    %rcx
  402ebf:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
  402ec3:	48 83 c4 20          	add    $0x20,%rsp
  402ec7:	4c 89 fe             	mov    %r15,%rsi
  402eca:	89 df                	mov    %ebx,%edi
  402ecc:	e8 82 fb ff ff       	call   402a53 <rio_writen>
  402ed1:	48 85 c0             	test   %rax,%rax
  402ed4:	0f 88 5d 03 00 00    	js     403237 <submitr+0x54e>
  402eda:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
  402edf:	89 de                	mov    %ebx,%esi
  402ee1:	4c 89 e7             	mov    %r12,%rdi
  402ee4:	e8 22 fb ff ff       	call   402a0b <rio_readinitb>
  402ee9:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402ef0:	00 
  402ef1:	ba 00 20 00 00       	mov    $0x2000,%edx
  402ef6:	4c 89 e7             	mov    %r12,%rdi
  402ef9:	e8 3a fc ff ff       	call   402b38 <rio_readlineb>
  402efe:	48 85 c0             	test   %rax,%rax
  402f01:	0f 8e 9c 03 00 00    	jle    4032a3 <submitr+0x5ba>
  402f07:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
  402f0c:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
  402f13:	00 
  402f14:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  402f1b:	00 
  402f1c:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
  402f23:	00 
  402f24:	48 8d 35 11 19 00 00 	lea    0x1911(%rip),%rsi        # 40483c <trans_char+0xcc>
  402f2b:	b8 00 00 00 00       	mov    $0x0,%eax
  402f30:	e8 6b e4 ff ff       	call   4013a0 <__isoc99_sscanf@plt>
  402f35:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402f3c:	00 
  402f3d:	b9 03 00 00 00       	mov    $0x3,%ecx
  402f42:	48 8d 3d 0a 19 00 00 	lea    0x190a(%rip),%rdi        # 404853 <trans_char+0xe3>
  402f49:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402f4b:	0f 97 c0             	seta   %al
  402f4e:	1c 00                	sbb    $0x0,%al
  402f50:	84 c0                	test   %al,%al
  402f52:	0f 84 cb 03 00 00    	je     403323 <submitr+0x63a>
  402f58:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402f5f:	00 
  402f60:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  402f65:	ba 00 20 00 00       	mov    $0x2000,%edx
  402f6a:	e8 c9 fb ff ff       	call   402b38 <rio_readlineb>
  402f6f:	48 85 c0             	test   %rax,%rax
  402f72:	7f c1                	jg     402f35 <submitr+0x24c>
  402f74:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402f7b:	3a 20 43 
  402f7e:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402f85:	20 75 6e 
  402f88:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402f8c:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402f90:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402f97:	74 6f 20 
  402f9a:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
  402fa1:	68 65 61 
  402fa4:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402fa8:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402fac:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  402fb3:	66 72 6f 
  402fb6:	48 ba 6d 20 41 75 74 	movabs $0x616c6f747541206d,%rdx
  402fbd:	6f 6c 61 
  402fc0:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402fc4:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402fc8:	48 b8 62 20 73 65 72 	movabs $0x7265767265732062,%rax
  402fcf:	76 65 72 
  402fd2:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402fd6:	c6 45 38 00          	movb   $0x0,0x38(%rbp)
  402fda:	89 df                	mov    %ebx,%edi
  402fdc:	e8 1f e3 ff ff       	call   401300 <close@plt>
  402fe1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402fe6:	48 8b 9c 24 58 a0 00 	mov    0xa058(%rsp),%rbx
  402fed:	00 
  402fee:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  402ff5:	00 00 
  402ff7:	0f 85 96 04 00 00    	jne    403493 <submitr+0x7aa>
  402ffd:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
  403004:	5b                   	pop    %rbx
  403005:	5d                   	pop    %rbp
  403006:	41 5c                	pop    %r12
  403008:	41 5d                	pop    %r13
  40300a:	41 5e                	pop    %r14
  40300c:	41 5f                	pop    %r15
  40300e:	c3                   	ret    
  40300f:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  403016:	3a 20 43 
  403019:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  403020:	20 75 6e 
  403023:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403027:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  40302b:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403032:	74 6f 20 
  403035:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  40303c:	65 20 73 
  40303f:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403043:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403047:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  40304e:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  403054:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403059:	eb 8b                	jmp    402fe6 <submitr+0x2fd>
  40305b:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  403062:	3a 20 44 
  403065:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  40306c:	20 75 6e 
  40306f:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403073:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403077:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40307e:	74 6f 20 
  403081:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  403088:	76 65 20 
  40308b:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40308f:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403093:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  40309a:	61 62 20 
  40309d:	48 ba 73 65 72 76 65 	movabs $0x6120726576726573,%rdx
  4030a4:	72 20 61 
  4030a7:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4030ab:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  4030af:	c7 45 30 64 64 72 65 	movl   $0x65726464,0x30(%rbp)
  4030b6:	66 c7 45 34 73 73    	movw   $0x7373,0x34(%rbp)
  4030bc:	c6 45 36 00          	movb   $0x0,0x36(%rbp)
  4030c0:	89 df                	mov    %ebx,%edi
  4030c2:	e8 39 e2 ff ff       	call   401300 <close@plt>
  4030c7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4030cc:	e9 15 ff ff ff       	jmp    402fe6 <submitr+0x2fd>
  4030d1:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  4030d8:	3a 20 55 
  4030db:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  4030e2:	20 74 6f 
  4030e5:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4030e9:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4030ed:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  4030f4:	65 63 74 
  4030f7:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
  4030fe:	68 65 20 
  403101:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403105:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403109:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  403110:	61 62 20 
  403113:	48 89 45 20          	mov    %rax,0x20(%rbp)
  403117:	c7 45 28 73 65 72 76 	movl   $0x76726573,0x28(%rbp)
  40311e:	66 c7 45 2c 65 72    	movw   $0x7265,0x2c(%rbp)
  403124:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  403128:	89 df                	mov    %ebx,%edi
  40312a:	e8 d1 e1 ff ff       	call   401300 <close@plt>
  40312f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403134:	e9 ad fe ff ff       	jmp    402fe6 <submitr+0x2fd>
  403139:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  403140:	3a 20 52 
  403143:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  40314a:	20 73 74 
  40314d:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403151:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403155:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  40315c:	74 6f 6f 
  40315f:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
  403166:	65 2e 20 
  403169:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40316d:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403171:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  403178:	61 73 65 
  40317b:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
  403182:	49 54 52 
  403185:	48 89 45 20          	mov    %rax,0x20(%rbp)
  403189:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  40318d:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  403194:	55 46 00 
  403197:	48 89 45 30          	mov    %rax,0x30(%rbp)
  40319b:	89 df                	mov    %ebx,%edi
  40319d:	e8 5e e1 ff ff       	call   401300 <close@plt>
  4031a2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4031a7:	e9 3a fe ff ff       	jmp    402fe6 <submitr+0x2fd>
  4031ac:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  4031b3:	3a 20 52 
  4031b6:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  4031bd:	20 73 74 
  4031c0:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4031c4:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4031c8:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  4031cf:	63 6f 6e 
  4031d2:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
  4031d9:	20 61 6e 
  4031dc:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4031e0:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4031e4:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  4031eb:	67 61 6c 
  4031ee:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
  4031f5:	6e 70 72 
  4031f8:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4031fc:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  403200:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  403207:	6c 65 20 
  40320a:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
  403211:	63 74 65 
  403214:	48 89 45 30          	mov    %rax,0x30(%rbp)
  403218:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  40321c:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
  403222:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
  403226:	89 df                	mov    %ebx,%edi
  403228:	e8 d3 e0 ff ff       	call   401300 <close@plt>
  40322d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403232:	e9 af fd ff ff       	jmp    402fe6 <submitr+0x2fd>
  403237:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40323e:	3a 20 43 
  403241:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  403248:	20 75 6e 
  40324b:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40324f:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403253:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40325a:	74 6f 20 
  40325d:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
  403264:	20 74 6f 
  403267:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40326b:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40326f:	48 b8 20 74 68 65 20 	movabs $0x7475412065687420,%rax
  403276:	41 75 74 
  403279:	48 ba 6f 6c 61 62 20 	movabs $0x7265732062616c6f,%rdx
  403280:	73 65 72 
  403283:	48 89 45 20          	mov    %rax,0x20(%rbp)
  403287:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  40328b:	c7 45 30 76 65 72 00 	movl   $0x726576,0x30(%rbp)
  403292:	89 df                	mov    %ebx,%edi
  403294:	e8 67 e0 ff ff       	call   401300 <close@plt>
  403299:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40329e:	e9 43 fd ff ff       	jmp    402fe6 <submitr+0x2fd>
  4032a3:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4032aa:	3a 20 43 
  4032ad:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4032b4:	20 75 6e 
  4032b7:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4032bb:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4032bf:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4032c6:	74 6f 20 
  4032c9:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
  4032d0:	66 69 72 
  4032d3:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4032d7:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4032db:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  4032e2:	61 64 65 
  4032e5:	48 ba 72 20 66 72 6f 	movabs $0x41206d6f72662072,%rdx
  4032ec:	6d 20 41 
  4032ef:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4032f3:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  4032f7:	48 b8 75 74 6f 6c 61 	movabs $0x732062616c6f7475,%rax
  4032fe:	62 20 73 
  403301:	48 89 45 30          	mov    %rax,0x30(%rbp)
  403305:	c7 45 38 65 72 76 65 	movl   $0x65767265,0x38(%rbp)
  40330c:	66 c7 45 3c 72 00    	movw   $0x72,0x3c(%rbp)
  403312:	89 df                	mov    %ebx,%edi
  403314:	e8 e7 df ff ff       	call   401300 <close@plt>
  403319:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40331e:	e9 c3 fc ff ff       	jmp    402fe6 <submitr+0x2fd>
  403323:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  40332a:	00 
  40332b:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  403330:	ba 00 20 00 00       	mov    $0x2000,%edx
  403335:	e8 fe f7 ff ff       	call   402b38 <rio_readlineb>
  40333a:	48 85 c0             	test   %rax,%rax
  40333d:	0f 8e 96 00 00 00    	jle    4033d9 <submitr+0x6f0>
  403343:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
  403348:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  40334f:	0f 85 05 01 00 00    	jne    40345a <submitr+0x771>
  403355:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  40335c:	00 
  40335d:	48 89 ef             	mov    %rbp,%rdi
  403360:	e8 3b df ff ff       	call   4012a0 <strcpy@plt>
  403365:	89 df                	mov    %ebx,%edi
  403367:	e8 94 df ff ff       	call   401300 <close@plt>
  40336c:	b9 04 00 00 00       	mov    $0x4,%ecx
  403371:	48 8d 3d d5 14 00 00 	lea    0x14d5(%rip),%rdi        # 40484d <trans_char+0xdd>
  403378:	48 89 ee             	mov    %rbp,%rsi
  40337b:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  40337d:	0f 97 c0             	seta   %al
  403380:	1c 00                	sbb    $0x0,%al
  403382:	0f be c0             	movsbl %al,%eax
  403385:	85 c0                	test   %eax,%eax
  403387:	0f 84 59 fc ff ff    	je     402fe6 <submitr+0x2fd>
  40338d:	b9 05 00 00 00       	mov    $0x5,%ecx
  403392:	48 8d 3d b8 14 00 00 	lea    0x14b8(%rip),%rdi        # 404851 <trans_char+0xe1>
  403399:	48 89 ee             	mov    %rbp,%rsi
  40339c:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  40339e:	0f 97 c0             	seta   %al
  4033a1:	1c 00                	sbb    $0x0,%al
  4033a3:	0f be c0             	movsbl %al,%eax
  4033a6:	85 c0                	test   %eax,%eax
  4033a8:	0f 84 38 fc ff ff    	je     402fe6 <submitr+0x2fd>
  4033ae:	b9 03 00 00 00       	mov    $0x3,%ecx
  4033b3:	48 8d 3d 9c 14 00 00 	lea    0x149c(%rip),%rdi        # 404856 <trans_char+0xe6>
  4033ba:	48 89 ee             	mov    %rbp,%rsi
  4033bd:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  4033bf:	0f 97 c0             	seta   %al
  4033c2:	1c 00                	sbb    $0x0,%al
  4033c4:	0f be c0             	movsbl %al,%eax
  4033c7:	85 c0                	test   %eax,%eax
  4033c9:	0f 84 17 fc ff ff    	je     402fe6 <submitr+0x2fd>
  4033cf:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4033d4:	e9 0d fc ff ff       	jmp    402fe6 <submitr+0x2fd>
  4033d9:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4033e0:	3a 20 43 
  4033e3:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4033ea:	20 75 6e 
  4033ed:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4033f1:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4033f5:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4033fc:	74 6f 20 
  4033ff:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
  403406:	73 74 61 
  403409:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40340d:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403411:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  403418:	65 73 73 
  40341b:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
  403422:	72 6f 6d 
  403425:	48 89 45 20          	mov    %rax,0x20(%rbp)
  403429:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  40342d:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  403434:	6c 61 62 
  403437:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  40343e:	65 72 00 
  403441:	48 89 45 30          	mov    %rax,0x30(%rbp)
  403445:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  403449:	89 df                	mov    %ebx,%edi
  40344b:	e8 b0 de ff ff       	call   401300 <close@plt>
  403450:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403455:	e9 8c fb ff ff       	jmp    402fe6 <submitr+0x2fd>
  40345a:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
  403461:	00 
  403462:	48 8d 0d 9f 13 00 00 	lea    0x139f(%rip),%rcx        # 404808 <trans_char+0x98>
  403469:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  403470:	be 01 00 00 00       	mov    $0x1,%esi
  403475:	48 89 ef             	mov    %rbp,%rdi
  403478:	b8 00 00 00 00       	mov    $0x0,%eax
  40347d:	e8 ce df ff ff       	call   401450 <__sprintf_chk@plt>
  403482:	89 df                	mov    %ebx,%edi
  403484:	e8 77 de ff ff       	call   401300 <close@plt>
  403489:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40348e:	e9 53 fb ff ff       	jmp    402fe6 <submitr+0x2fd>
  403493:	e8 51 f3 ff ff       	call   4027e9 <__stack_chk_fail>

0000000000403498 <init_timeout>:
  403498:	f3 0f 1e fa          	endbr64 
  40349c:	85 ff                	test   %edi,%edi
  40349e:	74 26                	je     4034c6 <init_timeout+0x2e>
  4034a0:	53                   	push   %rbx
  4034a1:	89 fb                	mov    %edi,%ebx
  4034a3:	78 1a                	js     4034bf <init_timeout+0x27>
  4034a5:	48 8d 35 71 f5 ff ff 	lea    -0xa8f(%rip),%rsi        # 402a1d <sigalrm_handler>
  4034ac:	bf 0e 00 00 00       	mov    $0xe,%edi
  4034b1:	e8 7a de ff ff       	call   401330 <signal@plt>
  4034b6:	89 df                	mov    %ebx,%edi
  4034b8:	e8 33 de ff ff       	call   4012f0 <alarm@plt>
  4034bd:	5b                   	pop    %rbx
  4034be:	c3                   	ret    
  4034bf:	bb 00 00 00 00       	mov    $0x0,%ebx
  4034c4:	eb df                	jmp    4034a5 <init_timeout+0xd>
  4034c6:	c3                   	ret    

00000000004034c7 <init_driver>:
  4034c7:	f3 0f 1e fa          	endbr64 
  4034cb:	41 54                	push   %r12
  4034cd:	55                   	push   %rbp
  4034ce:	53                   	push   %rbx
  4034cf:	48 83 ec 20          	sub    $0x20,%rsp
  4034d3:	48 89 fd             	mov    %rdi,%rbp
  4034d6:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4034dd:	00 00 
  4034df:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  4034e4:	31 c0                	xor    %eax,%eax
  4034e6:	be 01 00 00 00       	mov    $0x1,%esi
  4034eb:	bf 0d 00 00 00       	mov    $0xd,%edi
  4034f0:	e8 3b de ff ff       	call   401330 <signal@plt>
  4034f5:	be 01 00 00 00       	mov    $0x1,%esi
  4034fa:	bf 1d 00 00 00       	mov    $0x1d,%edi
  4034ff:	e8 2c de ff ff       	call   401330 <signal@plt>
  403504:	be 01 00 00 00       	mov    $0x1,%esi
  403509:	bf 1d 00 00 00       	mov    $0x1d,%edi
  40350e:	e8 1d de ff ff       	call   401330 <signal@plt>
  403513:	ba 00 00 00 00       	mov    $0x0,%edx
  403518:	be 01 00 00 00       	mov    $0x1,%esi
  40351d:	bf 02 00 00 00       	mov    $0x2,%edi
  403522:	e8 39 df ff ff       	call   401460 <socket@plt>
  403527:	85 c0                	test   %eax,%eax
  403529:	0f 88 9c 00 00 00    	js     4035cb <init_driver+0x104>
  40352f:	89 c3                	mov    %eax,%ebx
  403531:	48 8d 3d 21 13 00 00 	lea    0x1321(%rip),%rdi        # 404859 <trans_char+0xe9>
  403538:	e8 03 de ff ff       	call   401340 <gethostbyname@plt>
  40353d:	48 85 c0             	test   %rax,%rax
  403540:	0f 84 d1 00 00 00    	je     403617 <init_driver+0x150>
  403546:	49 89 e4             	mov    %rsp,%r12
  403549:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  403550:	00 
  403551:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  403558:	00 00 
  40355a:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  403560:	48 63 50 14          	movslq 0x14(%rax),%rdx
  403564:	48 8b 40 18          	mov    0x18(%rax),%rax
  403568:	48 8b 30             	mov    (%rax),%rsi
  40356b:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
  403570:	b9 0c 00 00 00       	mov    $0xc,%ecx
  403575:	e8 d6 dd ff ff       	call   401350 <__memmove_chk@plt>
  40357a:	66 c7 44 24 02 30 39 	movw   $0x3930,0x2(%rsp)
  403581:	ba 10 00 00 00       	mov    $0x10,%edx
  403586:	4c 89 e6             	mov    %r12,%rsi
  403589:	89 df                	mov    %ebx,%edi
  40358b:	e8 90 de ff ff       	call   401420 <connect@plt>
  403590:	85 c0                	test   %eax,%eax
  403592:	0f 88 e7 00 00 00    	js     40367f <init_driver+0x1b8>
  403598:	89 df                	mov    %ebx,%edi
  40359a:	e8 61 dd ff ff       	call   401300 <close@plt>
  40359f:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  4035a5:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  4035a9:	b8 00 00 00 00       	mov    $0x0,%eax
  4035ae:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  4035b3:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  4035ba:	00 00 
  4035bc:	0f 85 10 01 00 00    	jne    4036d2 <init_driver+0x20b>
  4035c2:	48 83 c4 20          	add    $0x20,%rsp
  4035c6:	5b                   	pop    %rbx
  4035c7:	5d                   	pop    %rbp
  4035c8:	41 5c                	pop    %r12
  4035ca:	c3                   	ret    
  4035cb:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4035d2:	3a 20 43 
  4035d5:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4035dc:	20 75 6e 
  4035df:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4035e3:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4035e7:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4035ee:	74 6f 20 
  4035f1:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  4035f8:	65 20 73 
  4035fb:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4035ff:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403603:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  40360a:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  403610:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403615:	eb 97                	jmp    4035ae <init_driver+0xe7>
  403617:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  40361e:	3a 20 44 
  403621:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  403628:	20 75 6e 
  40362b:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40362f:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403633:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40363a:	74 6f 20 
  40363d:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  403644:	76 65 20 
  403647:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40364b:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40364f:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  403656:	72 20 61 
  403659:	48 89 45 20          	mov    %rax,0x20(%rbp)
  40365d:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  403664:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  40366a:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  40366e:	89 df                	mov    %ebx,%edi
  403670:	e8 8b dc ff ff       	call   401300 <close@plt>
  403675:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40367a:	e9 2f ff ff ff       	jmp    4035ae <init_driver+0xe7>
  40367f:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  403686:	3a 20 55 
  403689:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  403690:	20 74 6f 
  403693:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403697:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  40369b:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  4036a2:	65 63 74 
  4036a5:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
  4036ac:	65 72 76 
  4036af:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4036b3:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4036b7:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
  4036bd:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
  4036c1:	89 df                	mov    %ebx,%edi
  4036c3:	e8 38 dc ff ff       	call   401300 <close@plt>
  4036c8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4036cd:	e9 dc fe ff ff       	jmp    4035ae <init_driver+0xe7>
  4036d2:	e8 12 f1 ff ff       	call   4027e9 <__stack_chk_fail>

00000000004036d7 <driver_post>:
  4036d7:	f3 0f 1e fa          	endbr64 
  4036db:	53                   	push   %rbx
  4036dc:	4c 89 cb             	mov    %r9,%rbx
  4036df:	45 85 c0             	test   %r8d,%r8d
  4036e2:	75 18                	jne    4036fc <driver_post+0x25>
  4036e4:	48 85 ff             	test   %rdi,%rdi
  4036e7:	74 05                	je     4036ee <driver_post+0x17>
  4036e9:	80 3f 00             	cmpb   $0x0,(%rdi)
  4036ec:	75 37                	jne    403725 <driver_post+0x4e>
  4036ee:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  4036f3:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  4036f7:	44 89 c0             	mov    %r8d,%eax
  4036fa:	5b                   	pop    %rbx
  4036fb:	c3                   	ret    
  4036fc:	48 89 ca             	mov    %rcx,%rdx
  4036ff:	48 8d 35 63 11 00 00 	lea    0x1163(%rip),%rsi        # 404869 <trans_char+0xf9>
  403706:	bf 01 00 00 00       	mov    $0x1,%edi
  40370b:	b8 00 00 00 00       	mov    $0x0,%eax
  403710:	e8 ab dc ff ff       	call   4013c0 <__printf_chk@plt>
  403715:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  40371a:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  40371e:	b8 00 00 00 00       	mov    $0x0,%eax
  403723:	eb d5                	jmp    4036fa <driver_post+0x23>
  403725:	48 83 ec 08          	sub    $0x8,%rsp
  403729:	41 51                	push   %r9
  40372b:	49 89 c9             	mov    %rcx,%r9
  40372e:	49 89 d0             	mov    %rdx,%r8
  403731:	48 89 f9             	mov    %rdi,%rcx
  403734:	48 89 f2             	mov    %rsi,%rdx
  403737:	be 39 30 00 00       	mov    $0x3039,%esi
  40373c:	48 8d 3d 16 11 00 00 	lea    0x1116(%rip),%rdi        # 404859 <trans_char+0xe9>
  403743:	e8 a1 f5 ff ff       	call   402ce9 <submitr>
  403748:	48 83 c4 10          	add    $0x10,%rsp
  40374c:	eb ac                	jmp    4036fa <driver_post+0x23>

000000000040374e <check>:
  40374e:	f3 0f 1e fa          	endbr64 
  403752:	89 f8                	mov    %edi,%eax
  403754:	c1 e8 1c             	shr    $0x1c,%eax
  403757:	74 1d                	je     403776 <check+0x28>
  403759:	b9 00 00 00 00       	mov    $0x0,%ecx
  40375e:	83 f9 1f             	cmp    $0x1f,%ecx
  403761:	7f 0d                	jg     403770 <check+0x22>
  403763:	89 f8                	mov    %edi,%eax
  403765:	d3 e8                	shr    %cl,%eax
  403767:	3c 0a                	cmp    $0xa,%al
  403769:	74 11                	je     40377c <check+0x2e>
  40376b:	83 c1 08             	add    $0x8,%ecx
  40376e:	eb ee                	jmp    40375e <check+0x10>
  403770:	b8 01 00 00 00       	mov    $0x1,%eax
  403775:	c3                   	ret    
  403776:	b8 00 00 00 00       	mov    $0x0,%eax
  40377b:	c3                   	ret    
  40377c:	b8 00 00 00 00       	mov    $0x0,%eax
  403781:	c3                   	ret    

0000000000403782 <gencookie>:
  403782:	f3 0f 1e fa          	endbr64 
  403786:	53                   	push   %rbx
  403787:	83 c7 01             	add    $0x1,%edi
  40378a:	e8 e1 da ff ff       	call   401270 <srandom@plt>
  40378f:	e8 fc db ff ff       	call   401390 <random@plt>
  403794:	48 89 c7             	mov    %rax,%rdi
  403797:	89 c3                	mov    %eax,%ebx
  403799:	e8 b0 ff ff ff       	call   40374e <check>
  40379e:	85 c0                	test   %eax,%eax
  4037a0:	74 ed                	je     40378f <gencookie+0xd>
  4037a2:	89 d8                	mov    %ebx,%eax
  4037a4:	5b                   	pop    %rbx
  4037a5:	c3                   	ret    
  4037a6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4037ad:	00 00 00 

00000000004037b0 <__libc_csu_init>:
  4037b0:	f3 0f 1e fa          	endbr64 
  4037b4:	41 57                	push   %r15
  4037b6:	4c 8d 3d 53 36 00 00 	lea    0x3653(%rip),%r15        # 406e10 <__frame_dummy_init_array_entry>
  4037bd:	41 56                	push   %r14
  4037bf:	49 89 d6             	mov    %rdx,%r14
  4037c2:	41 55                	push   %r13
  4037c4:	49 89 f5             	mov    %rsi,%r13
  4037c7:	41 54                	push   %r12
  4037c9:	41 89 fc             	mov    %edi,%r12d
  4037cc:	55                   	push   %rbp
  4037cd:	48 8d 2d 44 36 00 00 	lea    0x3644(%rip),%rbp        # 406e18 <__do_global_dtors_aux_fini_array_entry>
  4037d4:	53                   	push   %rbx
  4037d5:	4c 29 fd             	sub    %r15,%rbp
  4037d8:	48 83 ec 08          	sub    $0x8,%rsp
  4037dc:	e8 1f d8 ff ff       	call   401000 <_init>
  4037e1:	48 c1 fd 03          	sar    $0x3,%rbp
  4037e5:	74 1f                	je     403806 <__libc_csu_init+0x56>
  4037e7:	31 db                	xor    %ebx,%ebx
  4037e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4037f0:	4c 89 f2             	mov    %r14,%rdx
  4037f3:	4c 89 ee             	mov    %r13,%rsi
  4037f6:	44 89 e7             	mov    %r12d,%edi
  4037f9:	41 ff 14 df          	call   *(%r15,%rbx,8)
  4037fd:	48 83 c3 01          	add    $0x1,%rbx
  403801:	48 39 dd             	cmp    %rbx,%rbp
  403804:	75 ea                	jne    4037f0 <__libc_csu_init+0x40>
  403806:	48 83 c4 08          	add    $0x8,%rsp
  40380a:	5b                   	pop    %rbx
  40380b:	5d                   	pop    %rbp
  40380c:	41 5c                	pop    %r12
  40380e:	41 5d                	pop    %r13
  403810:	41 5e                	pop    %r14
  403812:	41 5f                	pop    %r15
  403814:	c3                   	ret    
  403815:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40381c:	00 00 00 00 

0000000000403820 <__libc_csu_fini>:
  403820:	f3 0f 1e fa          	endbr64 
  403824:	c3                   	ret    

Disassembly of section .fini:

0000000000403828 <_fini>:
  403828:	f3 0f 1e fa          	endbr64 
  40382c:	48 83 ec 08          	sub    $0x8,%rsp
  403830:	48 83 c4 08          	add    $0x8,%rsp
  403834:	c3                   	ret    
