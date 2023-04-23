function [R] = biseccion(a,b,f,N)
    if f(a) * f(b) < 0 % Checkeo Bolzano
        for n=0:N
            c = (a+b)/2;
            if (f(a)*f(c))<=0
                b=c;
            else
                a=c;
            end
        end

        R = c;
    else
        R = 'Bolzano no se cumple';
    end
end