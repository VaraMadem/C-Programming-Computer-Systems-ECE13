// Standard libraries
#include <stdio.h>
#include <math.h>


//User libraries:
#include "BOARD.h"

#ifdef PIC32
// Microchip libraries
#include <xc.h>
#endif


// **** Declare function prototypes ****
double Add(double operand1, double operand2);
double Subtract(double operand1, double operand2);
double Multiply(double operand1, double operand2);
double Divide(double operand1, double operand2);
double Average(double operand1, double operand2);
double AbsoluteValue(double operand);
double FahrenheitToCelsius(double operand);
double CelsiusToFahrenheit(double operand);
double Tangent(double operand);
double Round(double operand);
//add more prototypes here


void CalculatorRun(void)
{
    printf("\n\nWelcome to Vara's calculator program! Compiled at %s %s\n",__DATE__, __TIME__);

    // Your code here
     while(1) 
{
        char g;
        double operand1, operand2, operand, answer;
        
        printf("Enter a mathematical operation to perform (*,/,+,-,m,a,c,f,t,r): ");
        scanf(" %c", &g);   

        if(g == '+')
        {
                printf("Enter the first operand: ");
                scanf("%lf", &operand1);
                printf("Enter the second operand: ");
                scanf("%lf", &operand2);
                answer = Add(operand1, operand2);
                printf("Result of (%lf + %lf): %lf\n\n", operand1, operand2, answer);
         }



          else if(g == '-')
	{
                printf("Enter the first operand: ");
                scanf("%lf", &operand1);
                printf("Enter the second operand: ");
                scanf("%lf", &operand2);
                answer = Subtract(operand1, operand2);
                printf("Result of (%lf - %lf): %lf\n\n", operand1, operand2, answer);
         }


          else if(g == '*')
	{
                printf("Enter the first operand: ");
                scanf("%lf", &operand1);
                printf("Enter the second operand: ");
                scanf("%lf", &operand2);
                answer = Multiply(operand1, operand2);
                printf("Result of (%lf * %lf): %lf\n\n", operand1, operand2, answer);
         }


          else if(g == '/')
	{
                printf("Enter the first operand: ");
                scanf("%lf", &operand1);
                printf("Enter the second operand: ");
                scanf("%lf", &operand2);
                answer = Divide(operand1, operand2);
                if (answer == HUGE_VAL)
		{
                    printf("Divide by zero error!\n");                
                } 
                else
                {
                    printf("Result of (%lf / %lf): %lf\n\n", operand1, operand2, answer);     
                }
           }


            else if(g == 'm')
	{
                printf("Enter the first operand: ");
                scanf("%lf", &operand1);
                printf("Enter the second operand: ");
                scanf("%lf", &operand2);
                answer = Average(operand1, operand2);
                printf("Result of average(%lf and %lf): %lf\n\n", operand1, operand2, answer);
            }



            else if(g == 'a')
		{
                printf("Enter the first operand: ");
                scanf("%lf", &operand);
                answer = AbsoluteValue(operand);
                printf("Result of |%lf|: %lf\n\n", operand, answer);
         	}


            else if(g == 'c')
		{
                printf("Enter the first operand: ");
                scanf("%lf", &operand);
                answer = FahrenheitToCelsius(operand);
                printf("%lf degrees Fahrenheit is: %lf degrees Celsius\n\n", operand, answer);
                }


            else if(g == 'f')
		{
                printf("Enter the first operand: ");
                scanf("%lf", &operand);
                answer = CelsiusToFahrenheit(operand);
                printf("%lf degrees Celsius is: %lf degrees Fahrenheit\n\n", operand, answer);
               }


            else if(g == 't')
		{
                printf("Enter the first operand: ");
                scanf("%lf",&operand);
                answer = Tangent(operand);
                printf("Result of tan(%lf): %lf\n\n", operand, answer);
              }
    
            else if(g == 'r')
        {
                printf("Enter the first operand: ");
                scanf("%lf",&operand);
                answer = Round(operand);
                printf("Result of round(%lf): %lf\n\n", operand, answer);
              }


            else if(g == 'q')
		{
                exit(0);
                break;
		}

	else
	 {
      
                printf("Error, not a valid operator.\n\n");
                  
	}
        
        
    }
    BOARD_End();
}



/********************************************************************************
 * Define the Add function here.
 ********************************************************************************/
double Add(double operand1, double operand2)
{
return operand1 + operand2;
}



/********************************************************************************
 * Define the Subtract function here.
 ********************************************************************************/
double Subtract(double operand1, double operand2)
{
return operand1 - operand2;	
}



/********************************************************************************
 * Define the Multiply function here.
 ********************************************************************************/
double Multiply(double operand1, double operand2)
{
return operand1 * operand2;
}



/********************************************************************************
 * Define the Divide function here.
 ********************************************************************************/
double Divide(double operand1, double operand2)
{
if(operand2 ==0){
return HUGE_VAL;
}
else{
return operand1 / operand2;
}	
}



/********************************************************************************
 * Define the Absolute Value function here.
 ********************************************************************************/
double AbsoluteValue(double operand)
{
if (operand<0)
{
return operand*(-1);
}
else{
return operand;
}
}



/*********************************************************************************
 * Define the Fahrenheit to Celsius function here.
 ********************************************************************************/
double FahrenheitToCelsius(double operand)
{
return (((operand - 32)*5)/9);
}



/*********************************************************************************
 * Define the Celsius to Fahrenheit function here.
 ********************************************************************************/
double CelsiusToFahrenheit(double operand)
{
return (((operand * 9 )/ 5) +32);
}



/********************************************************************************
 * Define the Average function here.
 *******************************************************************************/
double Average(double operand1, double operand2)
{
return ((operand1+operand2)/2);
}



/*********************************************************************************
 * Define the Tangent function that takes input in degrees.
 ********************************************************************************/
double Tangent(double operand)
{
return (tan(operand * (M_PI/180)));
}




/*********************************************************************************
 * Define the Round function here.
 * In order to receive the extra credit your calculator MUST ALSO CORRECTLY utilize
 * this function.
 ********************************************************************************/
double Round(double operand)
{
    return round(operand);
}


