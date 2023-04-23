% f: funcion
% df: derivada
% x0: punto semilla
% Ep: error pretendido (error absoluto)
% e: error

function [R, i] = newtonraphson(f, df, x0, Ep)
    e = Ep + 1; % un error grande, podría ser e = 100 también
    i = 0; % en i guardamos las iteraciones (cuantas veces hacemos el proceso)
    while e > Ep % mientras el error sea mayor que el pretendido,
        i = i+1; 
        temp = x0; % guardo el valor de x0 en variable temporal
        x0 = x0- (f(x0)/df(x0));
        e = abs(temp - x0); % nuevo error: comparo x0 "vieja" (temp) con x0 "nueva" (x0)
    end
    R = x0;
end