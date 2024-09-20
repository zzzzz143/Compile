#include<iostream>
using namespace std;
int main(){

    float sum=0.0;

    for(int i=0;i<10;i++){
        printf("Please input 第 %d 个:",i);
        float t;
        scanf("%f",&t);
        sum+=t;
    }
    printf("The result is %f",sum);
}
