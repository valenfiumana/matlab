clc
clear all
f = @(x)exp(-x)-x;
df =@(x)-exp(-x)-1;
x0 = 0;
E = 10^-4;

res = newtonraphson(f, df, x0, E)