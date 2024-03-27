asmout:     file format elf32-littleriscv


Disassembly of section .text:

00010054 <main>:
   10054:	fc010113          	addi	sp,sp,-64
   10058:	02812e23          	sw	s0,60(sp)
   1005c:	04010413          	addi	s0,sp,64
   10060:	fe042623          	sw	zero,-20(s0)
   10064:	fe042423          	sw	zero,-24(s0)
   10068:	fe042223          	sw	zero,-28(s0)
   1006c:	fe042023          	sw	zero,-32(s0)
   10070:	05c0006f          	j	100cc <main+0x78>
   10074:	fdc42783          	lw	a5,-36(s0)
   10078:	02078863          	beqz	a5,100a8 <main+0x54>
   1007c:	fd842783          	lw	a5,-40(s0)
   10080:	00078e63          	beqz	a5,1009c <main+0x48>
   10084:	fd442783          	lw	a5,-44(s0)
   10088:	fef42423          	sw	a5,-24(s0)
   1008c:	fd042783          	lw	a5,-48(s0)
   10090:	fef42223          	sw	a5,-28(s0)
   10094:	fcc42783          	lw	a5,-52(s0)
   10098:	fef42023          	sw	a5,-32(s0)
   1009c:	fd842783          	lw	a5,-40(s0)
   100a0:	fc078ee3          	beqz	a5,1007c <main+0x28>
   100a4:	01c0006f          	j	100c0 <main+0x6c>
   100a8:	fd442783          	lw	a5,-44(s0)
   100ac:	fef42423          	sw	a5,-24(s0)
   100b0:	fd042783          	lw	a5,-48(s0)
   100b4:	fef42223          	sw	a5,-28(s0)
   100b8:	fcc42783          	lw	a5,-52(s0)
   100bc:	fef42023          	sw	a5,-32(s0)
   100c0:	fec42783          	lw	a5,-20(s0)
   100c4:	00178793          	addi	a5,a5,1
   100c8:	fef42623          	sw	a5,-20(s0)
   100cc:	fec42703          	lw	a4,-20(s0)
   100d0:	00900793          	li	a5,9
   100d4:	fae7d0e3          	bge	a5,a4,10074 <main+0x20>
   100d8:	00000793          	li	a5,0
   100dc:	00078513          	mv	a0,a5
   100e0:	03c12403          	lw	s0,60(sp)
   100e4:	04010113          	addi	sp,sp,64
   100e8:	00008067          	ret

