#include<iostream>
///冒泡排序程序,十个数
int main(){

    int arr[10];
    for(int i=0;i<10;i++){
        printf("Please input %dth:",i);
        scanf("%d",&arr[i]);
        //arr[i]=getint();
    }

    for(int i=0;i<9;i++)
        for(int j=0;j<9-i;j++)
        {
            int temp=arr[j];
            if(arr[j]>arr[j+1]){

                arr[j]=arr[j+1];
                arr[j+1]=temp;
            }
        }

    for(int i=0;i<10;i++){
        printf("arr[%d]: %d.\n",i,arr[i]);
    }

}