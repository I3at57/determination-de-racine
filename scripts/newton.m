### Méthode Newton
# Dans cette méthode on aproxime f par ses tangeantes
# successives.
# On sait que la racine r_{0} se trouve au voisinage de
# x_{0} un point identifié.
# On va calculer les x_{n} à partir de la tengeante
# en x_{n-1}
# Le schéma de Newton est:
# x_{0} = donné
# x_{n+1} = x_{n}-\frac{f(x_{n}}{f'(x_{n}}

# On a toujours f(x) = x^3-10x+2
##f=@(x)(x^3-10*x+2);
##fprime=@(x)(3*x^2-10);
##
##### Vérification avec x_0 proche des racines
### Dans cet exemple on prend un x_0 proche des racines
### et on observe une convergence très rapide pour N=2
### On prend les valeurs différentes de x_0
##N = 2 # précision de la recherche
##valeurs_x0 = [-3, 0.2, 3];
##racines = [];
##for j = 1:3
##  x = valeurs_x0(j);
##  for k=1:N
##    x = x-(f(x)/fprime(x));
##    x
##  endfor
##  racines = [racines, x];
##endfor
##
##printf("Les racines sont: ")
##racines
##
##printf("\n\n")

### Maillage
f=@(x)(x^3-10*x+2);
fprime=@(x)(3*x^2-10);
subdiv = -5:0.1:5; # La subdivision de l'intervale
# Pour chaque valeur de subdiv on va observer la
# convergence
##racines = [];
##N = 50 # précision de recherche
##for j = 1:100
##  x = subdiv(j); # x_0
##  for k=1:N
##    x = x-(f(x)/fprime(x));
##  endfor
##  racines = [racines, x];
##endfor
##
##printf("Les racines pour chaque point du maillage sont: ")
##%racines
##figure
##  plot(-5:0.1:4.9, racines)
##
### L'algorithme ne devrait pas converger pour les racines
### de la dérivé +-sqrt(10/3)
##
##### Exercice 2
### On passe en complexe
##interval = -1:0.1:1;
##racines = [];
##N =50;
##for k = 1:20
##  x = k;
##  for j = 1:N
##    if x >= 0
##      x = 1/(2*sqrt(x));
##    else
##      x = -1/(2*sqrt(-1*x))
##    endif
##  endfor
##  racines = [racines, x];
##endfor
##printf("Les racines pour chaque point du maillage sont: ")
##%racines
##
#### Exercice 3
f=@(z)(z^3-10*z+2);
fprime=@(z)(3*z^2-10);

### On va prendre un quadrillage de C
##N= 20; # précision
##racines = [];
##for X = -5:0.1:4.9
##    for Y = -5:0.1:4.9
##      z = X+1i*Y;
##      for i=1:N
##        z = z - (f(z)/fprime(z));
##      endfor
##      racines = [racines, z];
##    endfor
##endfor
##
##printf("Les racines pour chaque point du maillage sont: ")


P=@(z)(z^7-2*z^3+5)
Pprime=@(z)(7*z^6-6*z^2)

N=100; # précision
racines = [];
for X = -2:0.1:1.9
  for Y = -2:0.1:1.9
    z = X+1i*Y;
    for i=1:N
      z = z - (P(z)/Pprime(z));
    endfor
    z = round(real(z)*1000)/1000+1i*(round(imag(z)*1000)/1000);
    if ! (any(racines == z))
      racines = [racines, z];
    endif
  endfor
endfor
racines;
racines_traitee = racines(1:7);
figure
  hold on
      stem(real(racines_traitee), imag(racines_traitee))
      
      