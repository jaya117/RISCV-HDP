

inlineasmoutrv32iOfast:     file format elf32-littleriscv


Disassembly of section .text:

00010074 <main>:
   10074:	e0000337          	lui	t1,0xe0000
   10078:	c00008b7          	lui	a7,0xc0000
   1007c:	80000837          	lui	a6,0x80000
   10080:	ffe00713          	li	a4,-2
   10084:	fef00693          	li	a3,-17
   10088:	ffd00f93          	li	t6,-3
   1008c:	ffb00e93          	li	t4,-5
   10090:	ff700e13          	li	t3,-9
   10094:	fff30313          	addi	t1,t1,-1 # dfffffff <__global_pointer$+0xdffee50b>
   10098:	fff88893          	addi	a7,a7,-1 # bfffffff <__global_pointer$+0xbffee50b>
   1009c:	fff84813          	not	a6,a6
   100a0:	00ff7f33          	and	t5,t5,a5
   100a4:	001f7793          	andi	a5,t5,1
   100a8:	02078c63          	beqz	a5,100e0 <main+0x6c>
   100ac:	00ff7f33          	and	t5,t5,a5
   100b0:	00057533          	and	a0,a0,zero
   100b4:	004f5513          	srli	a0,t5,0x4
   100b8:	00157793          	andi	a5,a0,1
   100bc:	02079263          	bnez	a5,100e0 <main+0x6c>
   100c0:	00ff7f33          	and	t5,t5,a5
   100c4:	001f7793          	andi	a5,t5,1
   100c8:	fc078ce3          	beqz	a5,100a0 <main+0x2c>
   100cc:	00ff7f33          	and	t5,t5,a5
   100d0:	00057533          	and	a0,a0,zero
   100d4:	004f5513          	srli	a0,t5,0x4
   100d8:	00157793          	andi	a5,a0,1
   100dc:	fe0782e3          	beqz	a5,100c0 <main+0x4c>
   100e0:	00bf7f33          	and	t5,t5,a1
   100e4:	00057533          	and	a0,a0,zero
   100e8:	001f5513          	srli	a0,t5,0x1
   100ec:	00157593          	andi	a1,a0,1
   100f0:	00cf7f33          	and	t5,t5,a2
   100f4:	00057533          	and	a0,a0,zero
   100f8:	002f5513          	srli	a0,t5,0x2
   100fc:	00157613          	andi	a2,a0,1
   10100:	00ff7f33          	and	t5,t5,a5
   10104:	00057533          	and	a0,a0,zero
   10108:	003f5513          	srli	a0,t5,0x3
   1010c:	00157793          	andi	a5,a0,1
   10110:	00057533          	and	a0,a0,zero
   10114:	00058533          	add	a0,a1,zero
   10118:	01d51513          	slli	a0,a0,0x1d
   1011c:	006f7f33          	and	t5,t5,t1
   10120:	00af6f33          	or	t5,t5,a0
   10124:	00057533          	and	a0,a0,zero
   10128:	00060533          	add	a0,a2,zero
   1012c:	01e51513          	slli	a0,a0,0x1e
   10130:	011f7f33          	and	t5,t5,a7
   10134:	00af6f33          	or	t5,t5,a0
   10138:	00057533          	and	a0,a0,zero
   1013c:	00078533          	add	a0,a5,zero
   10140:	01f51513          	slli	a0,a0,0x1f
   10144:	010f7f33          	and	t5,t5,a6
   10148:	00af6f33          	or	t5,t5,a0
   1014c:	f55ff06f          	j	100a0 <main+0x2c>

00010150 <is_motion_sensor_enabled>:
   10150:	ffe00513          	li	a0,-2
   10154:	00af7f33          	and	t5,t5,a0
   10158:	001f7513          	andi	a0,t5,1
   1015c:	00008067          	ret

00010160 <is_motion_detected>:
   10160:	fef00793          	li	a5,-17
   10164:	00ff7f33          	and	t5,t5,a5
   10168:	00057533          	and	a0,a0,zero
   1016c:	004f5513          	srli	a0,t5,0x4
   10170:	00157793          	andi	a5,a0,1
   10174:	00078513          	mv	a0,a5
   10178:	00008067          	ret

0001017c <is_warm_light_sel>:
   1017c:	ffd00793          	li	a5,-3
   10180:	00ff7f33          	and	t5,t5,a5
   10184:	00057533          	and	a0,a0,zero
   10188:	001f5513          	srli	a0,t5,0x1
   1018c:	00157793          	andi	a5,a0,1
   10190:	00078513          	mv	a0,a5
   10194:	00008067          	ret

00010198 <is_soft_light_sel>:
   10198:	ffb00793          	li	a5,-5
   1019c:	00ff7f33          	and	t5,t5,a5
   101a0:	00057533          	and	a0,a0,zero
   101a4:	002f5513          	srli	a0,t5,0x2
   101a8:	00157793          	andi	a5,a0,1
   101ac:	00078513          	mv	a0,a5
   101b0:	00008067          	ret

000101b4 <get_dimmer_level>:
   101b4:	ff700793          	li	a5,-9
   101b8:	00ff7f33          	and	t5,t5,a5
   101bc:	00057533          	and	a0,a0,zero
   101c0:	003f5513          	srli	a0,t5,0x3
   101c4:	00157793          	andi	a5,a0,1
   101c8:	00078513          	mv	a0,a5
   101cc:	00008067          	ret

000101d0 <drive_warm_light_led_on_out>:
   101d0:	e00007b7          	lui	a5,0xe0000
   101d4:	00050713          	mv	a4,a0
   101d8:	fff78793          	addi	a5,a5,-1 # dfffffff <__global_pointer$+0xdffee50b>
   101dc:	00057533          	and	a0,a0,zero
   101e0:	00070533          	add	a0,a4,zero
   101e4:	01d51513          	slli	a0,a0,0x1d
   101e8:	00ff7f33          	and	t5,t5,a5
   101ec:	00af6f33          	or	t5,t5,a0
   101f0:	00008067          	ret

000101f4 <drive_soft_light_led_on_out>:
   101f4:	c00007b7          	lui	a5,0xc0000
   101f8:	00050713          	mv	a4,a0
   101fc:	fff78793          	addi	a5,a5,-1 # bfffffff <__global_pointer$+0xbffee50b>
   10200:	00057533          	and	a0,a0,zero
   10204:	00070533          	add	a0,a4,zero
   10208:	01e51513          	slli	a0,a0,0x1e
   1020c:	00ff7f33          	and	t5,t5,a5
   10210:	00af6f33          	or	t5,t5,a0
   10214:	00008067          	ret

00010218 <drive_pulse_wave_modulator_out>:
   10218:	800007b7          	lui	a5,0x80000
   1021c:	00050713          	mv	a4,a0
   10220:	fff7c793          	not	a5,a5
   10224:	00057533          	and	a0,a0,zero
   10228:	00070533          	add	a0,a4,zero
   1022c:	01f51513          	slli	a0,a0,0x1f
   10230:	00ff7f33          	and	t5,t5,a5
   10234:	00af6f33          	or	t5,t5,a0
   10238:	00008067          	ret

0001023c <read_input_pins>:
   1023c:	ffd00793          	li	a5,-3
   10240:	00ff7f33          	and	t5,t5,a5
   10244:	00057533          	and	a0,a0,zero
   10248:	001f5513          	srli	a0,t5,0x1
   1024c:	00157793          	andi	a5,a0,1
   10250:	00011737          	lui	a4,0x11
   10254:	2ef72c23          	sw	a5,760(a4) # 112f8 <warm_light_sel_pin>
   10258:	ffb00793          	li	a5,-5
   1025c:	00ff7f33          	and	t5,t5,a5
   10260:	00057533          	and	a0,a0,zero
   10264:	002f5513          	srli	a0,t5,0x2
   10268:	00157793          	andi	a5,a0,1
   1026c:	80f1a823          	sw	a5,-2032(gp) # 11304 <soft_light_sel_pin>
   10270:	ff700793          	li	a5,-9
   10274:	00ff7f33          	and	t5,t5,a5
   10278:	00057533          	and	a0,a0,zero
   1027c:	003f5513          	srli	a0,t5,0x3
   10280:	00157793          	andi	a5,a0,1
   10284:	80f1a423          	sw	a5,-2040(gp) # 112fc <dimmer_pin>
   10288:	00008067          	ret

0001028c <drive_output_pins>:
   1028c:	000117b7          	lui	a5,0x11
   10290:	2f87a703          	lw	a4,760(a5) # 112f8 <warm_light_sel_pin>
   10294:	e00007b7          	lui	a5,0xe0000
   10298:	fff78793          	addi	a5,a5,-1 # dfffffff <__global_pointer$+0xdffee50b>
   1029c:	00057533          	and	a0,a0,zero
   102a0:	00070533          	add	a0,a4,zero
   102a4:	01d51513          	slli	a0,a0,0x1d
   102a8:	00ff7f33          	and	t5,t5,a5
   102ac:	00af6f33          	or	t5,t5,a0
   102b0:	8101a703          	lw	a4,-2032(gp) # 11304 <soft_light_sel_pin>
   102b4:	c00007b7          	lui	a5,0xc0000
   102b8:	fff78793          	addi	a5,a5,-1 # bfffffff <__global_pointer$+0xbffee50b>
   102bc:	00057533          	and	a0,a0,zero
   102c0:	00070533          	add	a0,a4,zero
   102c4:	01e51513          	slli	a0,a0,0x1e
   102c8:	00ff7f33          	and	t5,t5,a5
   102cc:	00af6f33          	or	t5,t5,a0
   102d0:	8081a703          	lw	a4,-2040(gp) # 112fc <dimmer_pin>
   102d4:	800007b7          	lui	a5,0x80000
   102d8:	fff7c793          	not	a5,a5
   102dc:	00057533          	and	a0,a0,zero
   102e0:	00070533          	add	a0,a4,zero
   102e4:	01f51513          	slli	a0,a0,0x1f
   102e8:	00ff7f33          	and	t5,t5,a5
   102ec:	00af6f33          	or	t5,t5,a0
   102f0:	00008067          	ret
