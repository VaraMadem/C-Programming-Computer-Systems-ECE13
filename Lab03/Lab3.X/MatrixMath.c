/* 
 * File:   MatrixMath.c
 * Author: varamadem
 *
 * Created on October 13, 2022, 5:28 PM
 */

#include <stdio.h>
#include <stdlib.h>

#include "MatrixMath.h"
#include "BOARD.h"

/*
 * 
 */
void MatrixPrint(float mat[3][3]) {
    printf(" ____________________  \n");
    int a;
    for (a = 0; a < DIM; a++) {
        printf("| %.2f | %.2f | %.2f |\n", mat[a][0], mat[a][1], mat[a][2]);
        printf(" --------------------  \n");
    }
}


int MatrixEquals(float mat1[3][3], float mat2[3][3]){
    int i, j;
    for (i=0; i<DIM; i++) {
        for (j=0; j<DIM; j++) {
            if(abs(mat1[i][j] - mat2[i][j]) > FP_DELTA){        
                return 0;         
            }    
        }    
    } 
    return 1;
}


void MatrixAdd(float mat1[3][3], float mat2[3][3], float answer[3][3]){
    int i, j;
    for (i=0; i<DIM; i++) {
        for (j=0; j<DIM; j++) {
            answer[i][j] = mat1[i][j] + mat2[i][j];
        }
    }
}



void MatrixMultiply(float mat1[3][3], float mat2[3][3], float result[3][3]){
    int i, j;
    for (i=0; i<DIM; i++) {
        for (j=0; j<DIM; j++) {
            result[i][j] = (mat1[i][0] * mat2[0][j]) + (mat1[i][1] * mat2[1][j]) + (mat1[i][2] * mat2[2][j]);
        }
    }
}


void MatrixScalarAdd(float x, float mat[3][3], float result[3][3]){
    int i, j;
    for (i=0; i<DIM; i++) {
        for (j=0; j<DIM; j++) {
            result[i][j] = mat[i][j] + x;
        }
    }
}


void MatrixScalarMultiply(float x, float mat[3][3], float result[3][3]){
    int i, j;
    for (i=0; i<DIM; i++) {
        for (j=0; j<DIM; j++) {
            result[i][j] = mat[i][j] * x;
        }
    }   
}


float MatrixTrace(float mat[3][3]) {
    return (mat[0][0] + mat[1][1] + mat[2][2]);
}


void MatrixTranspose(float mat[3][3], float result[3][3]){
    int i, j;
    for (i=0; i<DIM; i++) {
        for (j=0; j<DIM; j++) {
            result[i][j] = mat[j][i];
        }
    }
}


void MatrixSubmatrix(int i, int j, float mat[3][3], float result[2][2]){
    int xx = 0, yy = 0; //positions for result
    int x, y;
    for (x=0; x<DIM; x++) {
        xx = 0;
        if (x == i){
              xx++;
        } 
        for (y=0; y<DIM; y++) {
            if (y == j){
                yy++;
            }
            result[xx][yy] = mat[x][y];
            yy++;
        }
        xx++;    
    }
}



float MatrixDeterminant(float mat[3][3]) {
    

    float d1, d2, d3, d4, d5, d6 = 0; 
    float answer = 0;

    d1 = mat[0][0] * mat[1][1] * mat[2][2];
    d2 = mat[1][0] * mat[2][1] * mat[0][2];
    d3 = mat[2][0] * mat[0][1] * mat[1][2];
    d4 = mat[0][2] * mat[1][1] * mat[2][0];
    d5 = mat[1][2] * mat[2][1] * mat[0][0];
    d6 = mat[2][2] * mat[0][1] * mat[1][0];

    answer = d1 + d2 + d3 - (d4 + d5 + d6);
    return answer;
}



void MatrixInverse(float mat[3][3], float result[3][3]){
    

    
}

