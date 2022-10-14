// **** Include libraries here ****
// Standard libraries
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

//CMPE13 Support Library
#include "BOARD.h"




// User libraries:
#include "MatrixMath.h"






// Module-level variables:
float zero_matrix[3][3] = {{},{},{}};

float m1[3][3] = {
    {1, 1, 1},
    {1, 1, 1},
    {1, 1, 1}
};
float m2[3][3] = {
    {1, 1, 1},
    {1, 1, 1},
    {1, 1, 1}
};
float m3[3][3] = {
    {1, 2, 3},
    {4, 5, 6},
    {7, 8, 9}
};
float m4[3][3] = {
    {-1, 2, -3},
    {4, -5, 6},
    {-7, 8, -9}
};
float m5[3][3] = {
    {1.2, 2.3, 3.4},
    {4.5, 5.6, 6.7},
    {7.8, 8.9, 9.0}
};

int passed;







int main()
{
    BOARD_Init();

    printf("Beginning 1872442 mml test harness, compiled on %s %s\n", __DATE__, __TIME__);
    
  //  printf("Demonstrating MatrixPrint():\n");
   // MatrixPrint(zero_matrix);
    // Add more tests here!
    
   
    
    
    //  MatrixEquals
    int testcounter = 0;                                  
    
  
    if (MatrixEquals(m1, m2) == 1){
        testcounter++;
    }
    
    if (MatrixEquals(zero_matrix, m1) == 0){
        testcounter++;
    }
    
    if (testcounter == 2){                                
        passed++;
    printf("PASSED (%d/2): MatrixEquals()\n", testcounter);            
    }
    
    
    
    
       
    //  MatrixAdd
    float answer1[3][3];
    float answer2[3][3];
    
    int testcounter1 = 0;
    
    MatrixAdd(zero_matrix, m1, answer1);       
    
    
     float key1[3][3] = {
        {1, 1, 1},
        {1, 1, 1},
        {1, 1, 1}
    };
    
    
     if (MatrixEquals(answer1, key1) == 1){
        testcounter1++;
    }
     
    
    MatrixAdd(m1, m4, answer2);
    
    float key2[3][3] = {
        {0, 3, -2},
        {5, -4, 7},
        {-6, 9, -8}
    };
    
  
     if (MatrixEquals(answer2, key2) == 1){
        testcounter1++;
    }
   
        
    if (testcounter1 == 2){
        passed++;
    }
    printf("PASSED (%d/2): MatrixAdd()\n", testcounter1); 
   
    
    
    
    
    // MatrixMultiply
  
    float mulans1[3][3];
    float mulans2[3][3];
    
    int testcounter2 = 0;
    
    MatrixMultiply(zero_matrix, m1, mulans1);
    
    float key3[3][3] = {
        {0, 0, 0},
        {0, 0, 0},
        {0, 0, 0}
    };
    
    if (MatrixEquals(mulans1, key3) == 1){
        testcounter2++;
    }
    
    MatrixMultiply(m2, m1, mulans2);
    
    float key4[3][3] = {
        {3, 3, 3},
        {3, 3, 3},
        {3, 3, 3}
    };
    
    if (MatrixEquals(mulans2, key4) == 1){
        testcounter2++;
    }
    
    if (testcounter2 == 2){
        passed++;
    }
    
    
    printf("PASSED (%d/2): MatrixMultiply()\n", testcounter2);
    
    
    
    
    
    
    
    
     // MatrixScalarAdd
    float scaddansw1[3][3];
    float scaddansw2[3][3];
    int testcounter3 = 0;
    

    MatrixScalarAdd(1, zero_matrix, scaddansw1);
    
    float key5[3][3] = {
        {1, 1, 1},
        {1, 1, 1},
        {1, 1, 1}
    };
    
    if (MatrixEquals(scaddansw1, key5) == 1){
        testcounter3++;
    }
    
    
    MatrixScalarAdd(-1, m3, scaddansw2);
    
    float key6[3][3] = {
        {0, 1, 2},
        {3, 4, 5},
        {6, 7, 8}
    };
    
    if (MatrixEquals(scaddansw2, key6) == 1){
        testcounter3++;
    }
  
    
    if (testcounter3 == 2){
        passed++;
    }
    
   
    printf("PASSED (%d/2): MatrixScalarAdd()\n", testcounter3);
    
    
    
    
    
    
    
    
    
    
    
    
    // ScalarMultiply
   
    
    float scmulansw1[3][3];
    //float MatrixMul2[3][3];
    float scmulansw2[3][3];
    int testcounter4 = 0;
    

    MatrixScalarMultiply(1, zero_matrix, scmulansw1);
    
    float key7[3][3] = {{},{},{}};
    
    if (MatrixEquals(scmulansw1, key7) == 1){
        testcounter4++;
    }
    
    
    
    MatrixScalarMultiply(-1, m3, scmulansw2);
    
    float key8[3][3] = {
        {-1, -2, -3},
        {-4, -5, -6},
        {-7, -8, -9}
    };
    
    if (MatrixEquals(scmulansw2, key8) == 1){
        testcounter4++;
    }
    
  
    
    if (testcounter4 == 2){
        passed++;
    }
    
   
    printf("PASSED (%d/2): MatrixScalarMultiply()\n", testcounter4);
    
    
    
    
    
    
    
    
    
 
    // MatrixTrace
    int testcounter5 = 0;
    
    
    float key9 = MatrixTrace(m3);
    float key10 = MatrixTrace(m4);
    
    
    
    if (key9 == 15) {
        testcounter5++;
    }
    if (key10 == -15) {
        testcounter5++;
    }
    if (testcounter5 == 2) {
        passed++;
    }
    printf("PASSED (%d/2): MatrixTrace()\n", testcounter5);
   
    
    
    
    
    
    
    
    
     //  MatrixTranspose

    float tranansw1[3][3];
    float tranansw2[3][3];
    int testcounter6 = 0;
    
    

    MatrixTranspose(m1, tranansw1);
    float key11[3][3] = {
        {1, 1, 1},
        {1, 1, 1},
        {1, 1, 1}
    };
    
    if (MatrixEquals(tranansw1, key11) == 1){
        testcounter6++;
    }
    
    
    
    
    MatrixTranspose(m4, tranansw2);
    float key12[3][3] = {
        {-1, 4, -7},
        {2, -5, 8},
        {-3, 6, -9}
    };
    
    
    if (MatrixEquals(tranansw2, key12) == 1){
        testcounter6++;
    }
    
    
    
    if (testcounter6 == 2) {
        passed++;
    }
    
 
    printf("PASSED (%d/2): MatrixTranspose()\n", testcounter6);
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    // Determinant
    int testcounter7 = 0;

    float key13 = MatrixDeterminant(m3);
    float key14 = MatrixDeterminant(m2);

    
    if (key13 == 0.0) {
        testcounter7++;
    }
    if (key14 == 0.0) {
        testcounter7++;
    }
    if (testcounter7 == 2) {
        passed++;
    }
    printf("PASSED (%d/2): MatrixDeterminant()\n", testcounter7);
    
    
    
    
    
    //  MatrixInverse
    int testcounter8 = 0;
    printf("PASSED (%d/2): MatrixInverse()\n", testcounter8);
    
    
    
    
    
    
    
    printf("-------------------------------------\n");
    double percent = (passed/9.0) * 100;
    printf("%d out of 9 functions passed (%f%%).\n", passed, percent);
    
    

    // Function test for MatrixPrint using Matrix3
    printf("\nOutput of MatrixPrint(): \n");
    MatrixPrint(m5);
    
    // Hard Code Test of MatrixPrint() using Matrix3
    printf("\nExpected Output of MatrixPrint(): \n");
    printf(" ____________________ \n");
    printf("| 1.20 | 2.30 | 3.40 |\n");
    printf(" -------------------- \n");
    printf("| 4.50 | 5.60 | 6.70 |\n");
    printf(" -------------------- \n");
    printf("| 7.80 | 8.90 | 9.00 |\n");
    printf(" -------------------- \n");
    
    
    
    
    BOARD_End();
    while (1);
}

