
<details> 
  <summary>  Motion sensitive under the cabinet LED light bar  </summary> 

  Equipped with 20 energy saving LEDs(10 LEDs each for warm light and soft light), under cabinet lights provide 2 color temperatures ( soft light, warm light), to 
  illuminate your home. You can adjust the intensity of the light arbitrarily through the stepless dimming function.
  Two operating modes - motion sensitive mode and always on mode. 
  Multiple application such as Under cabinet LED lights are suitable for various occasions, such as under cabinet LED 
  lighting, under counter lighting, pantry lighting, corridor lighting, wardrobe lighting, staircase lighting, basement 
  lighting, loft lighting, etc.
  
  Approximate representation 
  
  <img width="108" alt="image" src="https://github.com/jaya117/RISCV-HDP/assets/139655462/98dcca02-a0e2-434b-83ac-5d7af4913593">

</details>

<details> <summary> Block Diagram </summary></details>

<img width="516" alt="image" src="https://github.com/jaya117/RISCV-HDP/assets/139655462/65e09229-1ce5-471d-9adc-8c1359bca891">


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

<details> <summary> C Program execution on RISCV64 compiler </summary>

<img width="256" alt="image" src="https://github.com/jaya117/RISCV-HDP/assets/139655462/de217d13-142b-475d-884c-c3b27f48f71e">



<img width="214" alt="image" src="https://github.com/jaya117/RISCV-HDP/assets/139655462/355315fe-1933-4499-9394-384a91ffa393">


</details>

<details><summary> Assembly code for the C program without stdio </summary>

[motion_sensitive_led_bar.asm](./motion_sensitive_led_bar.asm)
</details>



 
