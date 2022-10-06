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
double Multiply(double operand1, double operand2);
double AbsoluteValue(double operand);
double FahrenheitToCelsius(double operand);
double Tangent(double operand);
//add more prototypes here


void CalculatorRun(void)
{
    printf("\n\nWelcome to NAME's calculator program! Compiled at %s %s\n",__DATE__, __TIME__);

    // Your code here
    BOARD_End();
    while (1);
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
return operand1 / operand2;	
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
else
return operand;
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

}


