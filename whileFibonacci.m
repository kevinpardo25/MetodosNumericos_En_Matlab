%ciclo while
clear all
clc

m_k2=0;
m_k1=1;
termino=input('Ingrese el término de la serie de fibonacci');
contador=0;

while contador<termino
   m_k=m_k1+m_k2
   
   %actualizar variable
   m_k2=m_k1;
   m_k1=m_k;
   contador= contador+1;
end