//C program for motion sensitive LED Bar
//GPIO mapping for various input and output pins

//#include <stdio.h>
 
int  is_motion_sensor_enabled();
int  is_motion_detected();
void read_input_drive_output();


int main()
{
    while(1) {
       if(is_motion_sensor_enabled())
       {
          int motion_detected_pin;
          do {
                motion_detected_pin=is_motion_detected();
                if(motion_detected_pin) {
		  read_input_drive_output();
                }    
            }while((motion_detected_pin==0)&&(is_motion_sensor_enabled()));
       }//if(motion_sensor_enabled_pin)
       else {
             read_input_drive_output();
       }
    } //while(1) 
    return 0;
}

int is_motion_sensor_enabled(){
  int gp0;
  //X30[0]=motion sensor enabled
  asm volatile (
    "andi %0,x30,1\n\t"
    :"=r"(gp0)
    :
    : "x30" 
  );
  
  return gp0;
}

int is_motion_detected(){
  //X30[4]=motion_detected_pin
  int gp4;
  asm volatile (
    "srli x10,x30,4\n\t"
    "andi %0,x10,1\n\t"
    :"=r"(gp4)
    :
    : "x30","x10"
  );
  return gp4;
}

void read_input_drive_output(){
  //X30[1]=warm_light_sel_pin
  int gp_pin_29_30_31_mask=0xD0000000;
  asm volatile (
    "slli x10,x30,28\n\t"
    "and x30,x30, %0\n\t"
    "or  x30,x30,x10\n\t"
    :
    :"r"(gp_pin_29_30_31_mask)
    : "x30","x10"
  );
}






