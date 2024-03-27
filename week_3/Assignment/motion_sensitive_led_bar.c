//C program for motion sensitive LED Bar

#include <stdio.h>
 
 int motion_sensor_enabled_pin;
 int warm_light_sel_pin, soft_light_sel_pin;
 int dimmer_pin , motion_detected_pin;
 int warm_light_led_on_out=0, soft_light_led_on_out=0;
 int pulse_wave_modulator_out=0;  //1-bright , 0-dim
 


void is_motion_sensor_enabled(){
  int tmp;
  printf("\nIs motion Sensor enabled? Enter 1=yes or 0=no \n");
  scanf("%d", &motion_sensor_enabled_pin);
}

void is_motion_detected(){
  printf("\n Is motion detected , type 1= yes , 0=no \n");
  scanf("%d", &motion_detected_pin);
}

void read_input_pins(){
  printf("\n Select light temperature \n");
  printf("\n Warm light , press 1=yes , 0=no\n");
  scanf("%d",&warm_light_sel_pin);
  printf("\n Soft light , press 1=yes , 0=no\n");
  scanf("%d",&soft_light_sel_pin);
  printf("\n Choose dimmer level , press 1= bright, 0= dim\n");
  scanf("%d",&dimmer_pin);
}

void print_input_pins(){
    if(warm_light_sel_pin && soft_light_sel_pin) {
       printf("\n Both warm and soft light temperatures selected \n");
    }
    else if(warm_light_sel_pin){
       printf("\n  Warm light temperatures selected \n");
    }
    else if(soft_light_sel_pin){
       printf("\n Soft light temperatures selected \n");
    }
    else {
        printf("\n No light temperatures selected \n");
    }
    if(dimmer_pin){
       printf("\n Dimmer level is bright\n");
    }
    else {
       printf("\n Dimmer level is dim \n");
    }
}

void drive_output_pins(){
   warm_light_led_on_out = warm_light_sel_pin;
   soft_light_led_on_out = soft_light_sel_pin;
   pulse_wave_modulator_out= dimmer_pin;
}

int main()
{
  int loop=0;
   while(loop<10) {
      printf("\n Loop%0d begins\n", loop);
      is_motion_sensor_enabled();
      if(motion_sensor_enabled_pin){
         printf("\n Motion sensor is enabled \n");
         do {
              is_motion_detected();
              if(motion_detected_pin) {
                 printf("\n Motion Detected \n");
                 read_input_pins();
                 print_input_pins();
                 drive_output_pins();
               }    
          }while(motion_detected_pin==0);
      }
      else {
         printf("\n Motion sensor is disabled \n");
         read_input_pins();
         print_input_pins();
         drive_output_pins();        
      }
      loop++;
    } //while(loop<10) 
    return 0;
}


