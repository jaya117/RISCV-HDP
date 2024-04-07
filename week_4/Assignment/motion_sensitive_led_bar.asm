
inlineasmoutrv32i:     file format elf32-littleriscv


Disassembly of section .text:

00010074 <is_motion_sensor_enabled>:
   10074:	fe010113          	addi	sp,sp,-32
   10078:	00812e23          	sw	s0,28(sp)
   1007c:	02010413          	addi	s0,sp,32
   10080:	ffe00793          	li	a5,-2
   10084:	fef42623          	sw	a5,-20(s0)
   10088:	fec42783          	lw	a5,-20(s0)
   1008c:	00ff7f33          	and	t5,t5,a5
   10090:	001f7793          	andi	a5,t5,1
   10094:	fef42423          	sw	a5,-24(s0)
   10098:	fe842783          	lw	a5,-24(s0)
   1009c:	00078513          	mv	a0,a5
   100a0:	01c12403          	lw	s0,28(sp)
   100a4:	02010113          	addi	sp,sp,32
   100a8:	00008067          	ret

000100ac <is_motion_detected>:
   100ac:	fe010113          	addi	sp,sp,-32
   100b0:	00812e23          	sw	s0,28(sp)
   100b4:	02010413          	addi	s0,sp,32
   100b8:	fef00793          	li	a5,-17
   100bc:	fef42623          	sw	a5,-20(s0)
   100c0:	fec42783          	lw	a5,-20(s0)
   100c4:	00ff7f33          	and	t5,t5,a5
   100c8:	00057533          	and	a0,a0,zero
   100cc:	004f5513          	srli	a0,t5,0x4
   100d0:	00157793          	andi	a5,a0,1
   100d4:	fef42423          	sw	a5,-24(s0)
   100d8:	fe842783          	lw	a5,-24(s0)
   100dc:	00078513          	mv	a0,a5
   100e0:	01c12403          	lw	s0,28(sp)
   100e4:	02010113          	addi	sp,sp,32
   100e8:	00008067          	ret

000100ec <is_warm_light_sel>:
   100ec:	fe010113          	addi	sp,sp,-32
   100f0:	00812e23          	sw	s0,28(sp)
   100f4:	02010413          	addi	s0,sp,32
   100f8:	ffd00793          	li	a5,-3
   100fc:	fef42623          	sw	a5,-20(s0)
   10100:	fec42783          	lw	a5,-20(s0)
   10104:	00ff7f33          	and	t5,t5,a5
   10108:	00057533          	and	a0,a0,zero
   1010c:	001f5513          	srli	a0,t5,0x1
   10110:	00157793          	andi	a5,a0,1
   10114:	fef42423          	sw	a5,-24(s0)
   10118:	fe842783          	lw	a5,-24(s0)
   1011c:	00078513          	mv	a0,a5
   10120:	01c12403          	lw	s0,28(sp)
   10124:	02010113          	addi	sp,sp,32
   10128:	00008067          	ret

0001012c <is_soft_light_sel>:
   1012c:	fe010113          	addi	sp,sp,-32
   10130:	00812e23          	sw	s0,28(sp)
   10134:	02010413          	addi	s0,sp,32
   10138:	ffb00793          	li	a5,-5
   1013c:	fef42623          	sw	a5,-20(s0)
   10140:	fec42783          	lw	a5,-20(s0)
   10144:	00ff7f33          	and	t5,t5,a5
   10148:	00057533          	and	a0,a0,zero
   1014c:	002f5513          	srli	a0,t5,0x2
   10150:	00157793          	andi	a5,a0,1
   10154:	fef42423          	sw	a5,-24(s0)
   10158:	fe842783          	lw	a5,-24(s0)
   1015c:	00078513          	mv	a0,a5
   10160:	01c12403          	lw	s0,28(sp)
   10164:	02010113          	addi	sp,sp,32
   10168:	00008067          	ret

0001016c <get_dimmer_level>:
   1016c:	fe010113          	addi	sp,sp,-32
   10170:	00812e23          	sw	s0,28(sp)
   10174:	02010413          	addi	s0,sp,32
   10178:	ff700793          	li	a5,-9
   1017c:	fef42623          	sw	a5,-20(s0)
   10180:	fec42783          	lw	a5,-20(s0)
   10184:	00ff7f33          	and	t5,t5,a5
   10188:	00057533          	and	a0,a0,zero
   1018c:	003f5513          	srli	a0,t5,0x3
   10190:	00157793          	andi	a5,a0,1
   10194:	fef42423          	sw	a5,-24(s0)
   10198:	fe842783          	lw	a5,-24(s0)
   1019c:	00078513          	mv	a0,a5
   101a0:	01c12403          	lw	s0,28(sp)
   101a4:	02010113          	addi	sp,sp,32
   101a8:	00008067          	ret

000101ac <drive_warm_light_led_on_out>:
   101ac:	fd010113          	addi	sp,sp,-48
   101b0:	02812623          	sw	s0,44(sp)
   101b4:	03010413          	addi	s0,sp,48
   101b8:	fca42e23          	sw	a0,-36(s0)
   101bc:	e00007b7          	lui	a5,0xe0000
   101c0:	fff78793          	addi	a5,a5,-1 # dfffffff <__global_pointer$+0xdffee477>
   101c4:	fef42623          	sw	a5,-20(s0)
   101c8:	fdc42783          	lw	a5,-36(s0)
   101cc:	fec42703          	lw	a4,-20(s0)
   101d0:	00057533          	and	a0,a0,zero
   101d4:	00078533          	add	a0,a5,zero
   101d8:	01d51513          	slli	a0,a0,0x1d
   101dc:	00ef7f33          	and	t5,t5,a4
   101e0:	00af6f33          	or	t5,t5,a0
   101e4:	00000013          	nop
   101e8:	02c12403          	lw	s0,44(sp)
   101ec:	03010113          	addi	sp,sp,48
   101f0:	00008067          	ret

000101f4 <drive_soft_light_led_on_out>:
   101f4:	fd010113          	addi	sp,sp,-48
   101f8:	02812623          	sw	s0,44(sp)
   101fc:	03010413          	addi	s0,sp,48
   10200:	fca42e23          	sw	a0,-36(s0)
   10204:	c00007b7          	lui	a5,0xc0000
   10208:	fff78793          	addi	a5,a5,-1 # bfffffff <__global_pointer$+0xbffee477>
   1020c:	fef42623          	sw	a5,-20(s0)
   10210:	fdc42783          	lw	a5,-36(s0)
   10214:	fec42703          	lw	a4,-20(s0)
   10218:	00057533          	and	a0,a0,zero
   1021c:	00078533          	add	a0,a5,zero
   10220:	01e51513          	slli	a0,a0,0x1e
   10224:	00ef7f33          	and	t5,t5,a4
   10228:	00af6f33          	or	t5,t5,a0
   1022c:	00000013          	nop
   10230:	02c12403          	lw	s0,44(sp)
   10234:	03010113          	addi	sp,sp,48
   10238:	00008067          	ret

0001023c <drive_pulse_wave_modulator_out>:
   1023c:	fd010113          	addi	sp,sp,-48
   10240:	02812623          	sw	s0,44(sp)
   10244:	03010413          	addi	s0,sp,48
   10248:	fca42e23          	sw	a0,-36(s0)
   1024c:	800007b7          	lui	a5,0x80000
   10250:	fff7c793          	not	a5,a5
   10254:	fef42623          	sw	a5,-20(s0)
   10258:	fdc42783          	lw	a5,-36(s0)
   1025c:	fec42703          	lw	a4,-20(s0)
   10260:	00057533          	and	a0,a0,zero
   10264:	00078533          	add	a0,a5,zero
   10268:	01f51513          	slli	a0,a0,0x1f
   1026c:	00ef7f33          	and	t5,t5,a4
   10270:	00af6f33          	or	t5,t5,a0
   10274:	00000013          	nop
   10278:	02c12403          	lw	s0,44(sp)
   1027c:	03010113          	addi	sp,sp,48
   10280:	00008067          	ret

00010284 <read_input_pins>:
   10284:	ff010113          	addi	sp,sp,-16
   10288:	00112623          	sw	ra,12(sp)
   1028c:	00812423          	sw	s0,8(sp)
   10290:	01010413          	addi	s0,sp,16
   10294:	e59ff0ef          	jal	ra,100ec <is_warm_light_sel>
   10298:	00050713          	mv	a4,a0
   1029c:	000117b7          	lui	a5,0x11
   102a0:	38e7a623          	sw	a4,908(a5) # 1138c <warm_light_sel_pin>
   102a4:	e89ff0ef          	jal	ra,1012c <is_soft_light_sel>
   102a8:	00050713          	mv	a4,a0
   102ac:	80e1a823          	sw	a4,-2032(gp) # 11398 <soft_light_sel_pin>
   102b0:	ebdff0ef          	jal	ra,1016c <get_dimmer_level>
   102b4:	00050713          	mv	a4,a0
   102b8:	80e1a423          	sw	a4,-2040(gp) # 11390 <dimmer_pin>
   102bc:	00000013          	nop
   102c0:	00c12083          	lw	ra,12(sp)
   102c4:	00812403          	lw	s0,8(sp)
   102c8:	01010113          	addi	sp,sp,16
   102cc:	00008067          	ret

000102d0 <drive_output_pins>:
   102d0:	ff010113          	addi	sp,sp,-16
   102d4:	00112623          	sw	ra,12(sp)
   102d8:	00812423          	sw	s0,8(sp)
   102dc:	01010413          	addi	s0,sp,16
   102e0:	000117b7          	lui	a5,0x11
   102e4:	38c7a783          	lw	a5,908(a5) # 1138c <warm_light_sel_pin>
   102e8:	00078513          	mv	a0,a5
   102ec:	ec1ff0ef          	jal	ra,101ac <drive_warm_light_led_on_out>
   102f0:	8101a783          	lw	a5,-2032(gp) # 11398 <soft_light_sel_pin>
   102f4:	00078513          	mv	a0,a5
   102f8:	efdff0ef          	jal	ra,101f4 <drive_soft_light_led_on_out>
   102fc:	8081a783          	lw	a5,-2040(gp) # 11390 <dimmer_pin>
   10300:	00078513          	mv	a0,a5
   10304:	f39ff0ef          	jal	ra,1023c <drive_pulse_wave_modulator_out>
   10308:	00000013          	nop
   1030c:	00c12083          	lw	ra,12(sp)
   10310:	00812403          	lw	s0,8(sp)
   10314:	01010113          	addi	sp,sp,16
   10318:	00008067          	ret

0001031c <main>:
   1031c:	ff010113          	addi	sp,sp,-16
   10320:	00112623          	sw	ra,12(sp)
   10324:	00812423          	sw	s0,8(sp)
   10328:	01010413          	addi	s0,sp,16
   1032c:	d49ff0ef          	jal	ra,10074 <is_motion_sensor_enabled>
   10330:	00050713          	mv	a4,a0
   10334:	000117b7          	lui	a5,0x11
   10338:	38e7a423          	sw	a4,904(a5) # 11388 <__DATA_BEGIN__>
   1033c:	000117b7          	lui	a5,0x11
   10340:	3887a783          	lw	a5,904(a5) # 11388 <__DATA_BEGIN__>
   10344:	02078c63          	beqz	a5,1037c <main+0x60>
   10348:	d65ff0ef          	jal	ra,100ac <is_motion_detected>
   1034c:	00050713          	mv	a4,a0
   10350:	80e1a623          	sw	a4,-2036(gp) # 11394 <motion_detected_pin>
   10354:	80c1a783          	lw	a5,-2036(gp) # 11394 <motion_detected_pin>
   10358:	00078663          	beqz	a5,10364 <main+0x48>
   1035c:	f29ff0ef          	jal	ra,10284 <read_input_pins>
   10360:	f71ff0ef          	jal	ra,102d0 <drive_output_pins>
   10364:	80c1a783          	lw	a5,-2036(gp) # 11394 <motion_detected_pin>
   10368:	fc0792e3          	bnez	a5,1032c <main+0x10>
   1036c:	d09ff0ef          	jal	ra,10074 <is_motion_sensor_enabled>
   10370:	00050793          	mv	a5,a0
   10374:	fc079ae3          	bnez	a5,10348 <main+0x2c>
   10378:	fb5ff06f          	j	1032c <main+0x10>
   1037c:	f09ff0ef          	jal	ra,10284 <read_input_pins>
   10380:	f51ff0ef          	jal	ra,102d0 <drive_output_pins>
   10384:	fa9ff06f          	j	1032c <main+0x10>

