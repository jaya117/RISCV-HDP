//Problem statement - 
//Design a simple ALU in C and verify it using gcc on your computer

//simple c program to implement a simple 
//Program takes following inputs 
//1. An integer value to indicate the  mathematical operation to be performed  add=1, sub=2, mul=3 and div=4 , 
//2. Two integer operand operand1 and operand2
//provides the result
#include <stdio.h>
int  main(){
	int operation;
	int operand1;
	int operand2;

	int result;
        
        printf("Simple ALU operation\n");	
        printf("Enter a number to perform desired operation Sum=1 , Sub=2, Mul=3, div=4\n");
        scanf("%d",&operation);
        printf("Enter the first operand \n");	
        scanf("%d",&operand1);
        printf("Enter the second operand \n");	
        scanf("%d",&operand2);

        if(operation==1){
		result = operand1+operand2;
		printf("Operation=Sum, Operand1=%0d, Operand2=%0d, Result=%0d", operand1, operand2, result);
        }
	else if(operation==2){
		result = operand1-operand2;
		printf("Operation=Sub, Operand1=%0d, Operand2=%0d, Result=%0d", operand1, operand2, result);
        }
	else if (operation==3){
		result = operand1*operand2;
		printf("Operation=Mul, Operand1=%0d, Operand2=%0d, Result=%0d", operand1, operand2, result);
	}
	else if (operation==4){
		result = operand1/operand2;
		printf("Operation=Div, Operand1=%0d, Operand2=%0d, Result=%0d", operand1, operand2, result);
        }
return 0;
}

