## Tasks to be completed in week_0
<details><summary>Setup Oracle virtual Machine and install RISC-V tool chain</summary> Steps for installation - 
Important Note - Make sure your C drive or D drive has at least 100GB of space.
 
 1. Download the below-ZIPPED file on your laptop [https://forgefunder.com/~kunal/riscv_workshop.vdi]
 2. Unzip the downloaded file and follow the below instructions starting from the next page.

 <bold>Installation steps for Windows</bold>
 
  To open a VDI file in Windows, you can use Oracle VirtualBox, which is a free and open-source 
  virtualization software. Here are the steps to open a VDI file in Windows using VirtualBox:
    
      a. Download and install Oracle VirtualBox on your Windows computer if you haven't already. You can 
         download it from the official website: [https://www.virtualbox.org/wiki/Downloads]
    
      b. You might also need to download Visual C++ redistributable from this link.
    
      c. Launch VirtualBox and click on the "New" button to create a new virtual machine.
    
      d. Fill up the details as shown in the image below.

      e. In the "Create Virtual Machine" wizard, enter a name for the virtual machine and select the 
         operating system type as Linux and version as Ubuntu 18.04 that matches the one installed in 
         the VDI file you want to open.
      f. On the next screen, allocate memory.Create a virtual hard disk. Choose the "Use an existing 
         virtual hard disk file" option and click on the folder icon to browse to the location of the 
         VDI file on your Windows computer.
      g. Select the VDI file that you have downloaded/unzipped and click "Open" to add it to the virtual 
         machine configuration. Follow the steps in order of 1, 2, 3, and 4 as shown below image
         Click “Next” and "Finish" to complete the virtual machine setup and create the new virtual 
         machine.
         Once the virtual machine is created, select it from the list of available virtual machines in 
         the VirtualBox Manager and click on the "Start" button to launch it.
      h. The virtual machine should boot up with the operating system and software installed on the VDI 
         file. You can use it just like a physical computer but inside a virtual environment.

         That's it! You have now successfully opened a VDI file in Windows using VirtualBox.

<bold> Installation steps for Ubuntu </bold>

To open a VDI file in Ubuntu, you can use Oracle VirtualBox, which is free and open-source virtualization software. Here are the steps to open a VDI file in Ubuntu using VirtualBox:

a. Open a terminal window on your Ubuntu computer.

b. Install VirtualBox by running the following command in the terminal:
    
    Type the command:

     sudo apt install virtualBox
     
c. Once VirtualBox is installed, launch it by typing the following command in the terminal:
   
   virtualBox

d. Click on the "New" button to create a new virtual machine.

e. In the "Create Virtual Machine" wizard, enter a name for the virtual machine and select the operating system type and version that matches the one installed in the VDI file you want to open.

f. On the next screen, allocate memory and create a virtual hard disk. Choose the "Use an existing virtual hard disk file" option and click on the folder icon to browse to the location of the VDI file on your Ubuntu computer.

g. Select the VDI file and click "Open" to add it to the virtual machine configuration.

h. Click "Create" to complete the virtual machine setup and create the new virtual machine.

i. Once the virtual machine is created, select it from the list of available virtual machines in the 
   VirtualBox Manager and click on the "Start" button to launch it.
   
j. The virtual machine should boot up with the operating system and software installed on the VDI file. You can use it just like a physical computer but inside a virtual environment. 

That's it! You have now successfully opened a VDI file in Ubuntu.

Note:

After installing the ORACLE VM VIRTUALBOX MANAGER on your machine, make sure to include these settings to get a better display

</details>

<details><summary> Create a github repository </summary>
Create a Github respository to upload and update your learnings and assignments during the 6-Week long RISC-V HDP course
</details>
