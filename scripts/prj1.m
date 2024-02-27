% Function : x^3-10x+2
% Déclarer une fonction lambda
f=@(x)(x^3-10*x+2);
max1=fdex(-(1/3)*sqrt(30)); % Le max 1 pour f'=0
min1=fdex((1/3)*sqrt(30)); % Le min 1 pour f'=0

###################################################
% Exemple 3.1.2 question 2
###################################################

### Pour Tracer
%inter=-3.5:0.001:3.5;
%tracefdex(inter);

clc

### Algorithme de dichotomie Méthode boucle for
printf(" Dichotomie version boucle for !!!! \n")
racines = [];
bornes = [-3.5 -2 -1 1 2 3.5];
c_n = []; % Pour la convergence de la suite cn
for j = 1:2:5
  %printf("\n première racine")
  a=bornes(j);
  b=bornes(j+1);
  for i=1:35
    %printf("\nIteration:%d\n", i)
    %a
    c=(a+b)/2;
    c_n = [c_n c];
    %b
    z=f(a)*f(c);
    if (z==0)
      r1=c;
      %printf("Une racine en r1")
    elseif (z<0)
      b=c;
      %printf("z est négatif donc b=c. b= %f\n", b)
    else
      a=c;
      %printf("z est positif donc a=c. a= %f\n", a)
    endif
  endfor
  racines = [racines c];
endfor

printf("Les racines sont: \n")
racines

### Algorithme de dichotomie Méthode boucle while
printf(" Dichotomie version boucle while !!!! \n")
racines = [];
bornes = [-3.5 -2 -1 1 2 3.5];
c_n = []; % Pour la convergence de la suite cn
for j = 1:2:5
  a=bornes(j);
  b=bornes(j+1);
  c=(a+b)/2;
  c_n = [c_n c];
  while (abs(f(c))>10^(-8))
    z=f(a)*f(c);
    if (z==0)
      r1=c;
      %printf("Une racine en r1")
    elseif (z<0)
      b=c;
      %printf("z est négatif donc b=c. b= %f\n", b)
    else
      a=c;
      %printf("z est positif donc a=c. a= %f\n", a)
    endif
    c=(a+b)/2;
    c_n = [c_n c];
  endwhile
  racines = [racines c];
endfor

printf("Les racines sont: \n")
racines