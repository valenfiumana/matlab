clc
clear all

a = 0;
b = 2;
f = @(x) x^2 -2;
N = 100

biseccion = biseccion(a, b, f, N)