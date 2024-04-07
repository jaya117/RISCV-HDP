//C program for motion sensitive LED Bar
//GPIO mapping for various input and output pins

#include <stdio.h>
 
 int motion_sensor_enabled_pin;
 int warm_light_sel_pin, soft_light_sel_pin;
 int dimmer_pin , motion_detected_pin;
 
int is_motion_sensor_enabled(){
  int gp0;
  int clear_gp0_mask=0xFFFFFFFE;
  //X30[0]=motion sensor enabled
  asm volatile (
    "and x30,x30,%0\n\t"
    "andi %0,x30,1\n\t"
    :"=r"(gp0)
    :"r"(clear_gp0_mask)
    : "x30" 
  );
  return gp0;
}

int is_motion_detected(){
  //X30[4]=motion_detected_pin
  int gp4;
  int clear_gp4_mask=0xFFFFFFEF;
  asm volatile (
    "and x30,x30,%0\n\t"
    "and x10,x10,x0\n\t"
    "srli x10,x30,4\n\t"
    "andi %0,x10,1\n\t"
    :"=r"(gp4)
    :"r"(clear_gp4_mask)
    : "x30","x10"
  );
  return gp4;
}

int is_warm_light_sel(){
  //X30[1]=warm_light_sel_pin
  int gp1;
  int clear_gp1_mask=0xFFFFFFFD;
  asm volatile (
    "and x30,x30,%0\n\t"
    "and x10, x10,x0\n\t"
    "srli x10,x30, 1\n\t"
    "andi %0,x10, 1\n\t"
    :"=r"(gp1)
    :"r"(clear_gp1_mask)
    : "x30", "x10"
  );
 return gp1;
}

int is_soft_light_sel(){
  //X30[2]=soft_light_sel_pin
  int gp2;
  int clear_gp2_mask=0xFFFFFFFB;
  asm volatile (
    "and x30,x30,%0\n\t"
    "and x10, x10,x0\n\t"
    "srli x10,x30, 2\n\t"
    "andi %0,x10, 1\n\t"
    :"=r"(gp2)
    :"r"(clear_gp2_mask)
    : "x30", "x10"
  );
  return gp2;
}

int get_dimmer_level(){
  //X30[3]=dimmer_pin
  int gp3;
  int clear_gp3_mask=0xFFFFFFF7;
  asm volatile (
    "and x30,x30,%0\n\t"
    "and x10, x10,x0\n\t"
    "srli x10,x30, 3\n\t"
    "andi %0,x10, 1\n\t"
    :"=r"(gp3)
    :"r"(clear_gp3_mask)
    : "x30", "x10"
  );
  return gp3;
}

void drive_warm_light_led_on_out(int gp1){
  //X[29] =warm_light_led_on_out
 int mask=0xdfffffff;
 asm volatile (
    "and x10, x10,x0\n\t"
    "add x10, %0,x0\n\t"
    "slli x10, x10, 29\n\t"
    "and x30, x30,%1\n\t"
    "or x30, x30,x10\n\t"
    :
    :"r"(gp1), "r"(mask)
    : "x30", "x10"
  );
  return;
  
}
void drive_soft_light_led_on_out(int gp2){
 //X[30] =soft_light_led_on_out
 int mask=0xbfffffff;
 asm volatile (
    "and x10, x10,x0\n\t"
    "add x10, %0,x0\n\t"
    "slli x10, x10, 30\n\t"
    "and x30, x30,%1\n\t"
    "or x30, x30,x10\n\t"
    :
    :"r"(gp2), "r"(mask)
    : "x30", "x10"
  );
  return;
}
void drive_pulse_wave_modulator_out(int gp3){
  //X[31] =pulse_wave_modulator_out
  int mask=0x7fffffff;
  asm volatile (
    "and x10, x10,x0\n\t"
    "add x10, %0,x0\n\t"
    "slli x10, x10, 31\n\t"
    "and x30, x30,%1\n\t"
    "or x30, x30,x10\n\t"
    :
    :"r"(gp3), "r"(mask)
    : "x30", "x10"
  );
  return;
}

void read_input_pins(){
  warm_light_sel_pin=is_warm_light_sel();
  soft_light_sel_pin=is_soft_light_sel();
  dimmer_pin=get_dimmer_level();
}



void drive_output_pins(){
   drive_warm_light_led_on_out(warm_light_sel_pin);
   drive_soft_light_led_on_out(soft_light_sel_pin);
   drive_pulse_wave_modulator_out(dimmer_pin);
}

int main()
{
  //int loop=0;
   //while(loop<10) {
    while(1) {
       motion_sensor_enabled_pin=is_motion_sensor_enabled();
       if(motion_sensor_enabled_pin){
          do {
                motion_detected_pin=is_motion_detected();
                if(motion_detected_pin) {
                  read_input_pins();
                  drive_output_pins();
                }    
            }while((motion_detected_pin==0)&&(is_motion_sensor_enabled()));
       }//if(motion_sensor_enabled_pin)
       else {
          read_input_pins();
          drive_output_pins();        
       }
      //loop++;
    } //while(1) 
    return 0;
}


