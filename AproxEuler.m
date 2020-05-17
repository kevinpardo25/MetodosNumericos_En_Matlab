%
clear all
clc

valorTrue=1.648721;
resultado=0;
resultado_ant=0;
x=0.5;
n=input('Ingrese le número de terminos de la aproximación');
histErrorTrue=zeros(1,n);
histErrorAprox=zeros(1,n);

for i=0:n
   resultado=x^i/factorial(i)+resultado
   errorTrue=((valorTrue-resultado)/valorTrue)*100;
   errorAprox=((resultado-resultado_ant)/resultado)*100;
   
   histErrorTrue(i+1)=errorTrue;
   histErrorAprox(i+1)=errorAprox;
   resultado_ant=resultado;
end

plot(histErrorTrue,'b')
hold on
plot(histErrorAprox,'r')
legend('Error verdadero','Error Aproximado')