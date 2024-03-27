
<details> 
  <summary>  Motion sensitive under the cabinet LED light bar  </summary> 
    
</details>

<details> <summary> Block Diagram </summary></details>

<details><summary> Functionality </summary>

 Functionality of the application is as follows 
    
     1. Power button - controls power on off
     2. Warm light mode button - When pressed , warm light LEDs on the light bar are powered up
     2. Soft light mode button - when pressed , soft light LEDs on the light bar are powered up
     3. Brightness button - it's a toggle button when pressed it changes the current state of brightness to the opposit state (bright-> dim or dim->bright) 
     4. Motion sensor - detect the presence of a human/object and switches on the LED lights in default mode
     5. Motion sensor activate button - It's also a toggle button when pressed it changes the current state of operation to the 
     other state (permanent ->motiona sensitive
     or motion sensitive -> permanent) 
</details>

<details> <summary> FlowChart</summary></details>

<details><summary> GPIO Mapping </summary>

<img width="847" alt="image" src="https://github.com/jaya117/RISCV-HDP/assets/139655462/034f227e-ccbe-499d-8d47-aba14b8efbfe">


</details>

<details> <summary> C Program </summary>
  
[motion_sensitive_led_bar.c](./motion_sensitive_led_bar.c)
  


</details>

<details> <summary> C Program execution on RISCV64 compiler </summary></details>

<details><summary> Assembly code for the C program without stdio </summary></details>



 
