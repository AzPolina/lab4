model lab4

/*Для первого случая:
parameter Real w = sqrt(1.7); //w - частота для первого случая
parameter Real g = 0.0; //g - затухание для первого случая*/

/*Для второго случая:
parameter Real w = sqrt(1.7); //w - частота для первого случая
parameter Real g = 1.7; //g - затухание для первого случая*/

/*Для третьего случая:*/
parameter Real w = sqrt(1.7); //w - частота для первого случая
parameter Real g = 2; //g - затухание для первого случая

parameter Real x0 = 1.7;
parameter Real y0 = -0.2;

Real x(start=x0);
Real y(start=y0);

function f
  input Real t;
  output Real result;
algorithm
  //result := 0; //для первого и второго случаев
  result := 0.7*cos(2.7*t); //для третьего случая
end f;

equation

der(x) = y;
der(y) = -w*w*x - g*y - f(time);

end lab4;
