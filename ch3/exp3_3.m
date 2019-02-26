clc
clear
echo off
more off
a1=[1 4 4;2 2 1;3 6 2];
b1=[0 1 0;1 0 0;0 0 1];
c1=[0 0 1;0 1 1];d1=[0 1 0;1 0 1];
a2=[1 -1 0;3 -2 1;1 6 -1];
b2=[1 0 0;0 1 0;0 0 1];
c2=[0 1 0;1 0 1];d2=[1 1 0;1 0 1];
% 部分并联后的状态空间，要求u11与u22连接，u13与u23连接，
% y11与y21连接
disp('部分并联连接后的状态方程')
[a,b,c,d]=parallel(a1,b1,c1,d1,a2,b2,c2,d2,[1 3],[2 3],1,1)
%input1=[1 3]  
%input2=[2 3]
%output1=1
%output2=1

