# Create a new project

Step 1: click on `File` -> `New Project Wizard ..`

![image](https://user-images.githubusercontent.com/64896000/226452446-1dfa5195-f354-4bef-a52f-d2050d0bc12d.png)

Step 2: mark `Don't show this instruction again` and click `Next`

![image](https://user-images.githubusercontent.com/64896000/226452783-7c7d32b2-afc2-48b6-9828-8dfd3cfdcd8a.png)

Step 3: choose suitable directory for your projects, in this repository I chose the directory `F:/FPGA_2023B/weekly projects/` for my projects

Step 4: create new folder in your directory and give it suitable name

Step 5: Select the folder

![image](https://user-images.githubusercontent.com/64896000/226453500-bb11a54c-2713-49ea-9c56-5fec890cb937.png)

the idea of having a seperate folder for your projects is to keep your work organized

Step 6: choose a name for your project, and name for top level design entity

![image](https://user-images.githubusercontent.com/64896000/226453806-c815e935-8026-4ffd-a1a3-eec53e0e91d8.png)

Step 7: if you have previously designed components, you can add the files here to use them, else you can skip this
![image](https://user-images.githubusercontent.com/64896000/226453935-30951803-82b1-4293-a178-cacb59667a0c.png)

Step 8: configure the family & design settings, for me I chose `Family III` and the device is `EP3C8OU484C6`
![image](https://user-images.githubusercontent.com/64896000/226454338-d9147c35-a3e1-4a8a-8b42-21b0c8e4c803.png)

Step 9: if you're happy with the configuration click `Finish`

Step 10: create new design file. `File` -> `New`

![image](https://user-images.githubusercontent.com/64896000/226454543-d784dba2-83e3-4834-8f20-83d74decc8ba.png)

Step 11: choose the design file you want to use, for this repository I use `Verilog HDL File`

![image](https://user-images.githubusercontent.com/64896000/226454961-afe396c6-2266-42b7-93b6-b6212c713d2e.png)

Step 12: Start designing!

# Design Example
```
module project8bitscomputer (input input1, input input2,output out1);
	assign out1 = input1 & input2;
endmodule
```
