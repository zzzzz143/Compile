//包含头文件
#include<iostream>
using namespace std;
//包含宏定义
#define  str "StringTest"
int i=1;
//包含普通函数函数
int GetN(){

	int n;
	cin>>n;
	return n;
}
//包含内联函数
inline int Fib(int a,int b,int n){

	int t;
	while(i<n){
		t=b;
		b=a+b;
		cout<<b<<endl;
		a=t;
		i=i+1;
	}

}
int main()
{
	int a,b,t;

	a=0;
	b=1;
	int n=GetN();
	cout<<a<<endl;
	cout<<b<<endl;
	Fib(a,b,n);

	cout<<str;

}
