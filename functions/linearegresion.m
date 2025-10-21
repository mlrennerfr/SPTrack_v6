function [a,b,sqrtChi2sNm2,corr]=linearegresion(x,y)
% regression lin�aire ponderee (sens des moindres carr�s) avec crit�re de
% qualit�
%x abscisse
%y : ordonn�e
%a : pente de la regression lin�aire
%b: ordonn�ee � l'origine
%sqrtChi2sNm2 : crit�re de plausibilit� de la regression, sqrt(chi^2/(N-2))
% corr : coef de correlation des donn�es

%N=length(x);

M=[x(:) ones(length(x),1)]; %matrice du probl�me (pond�re
ab=M\y(:);%resolution du probl�me

a=ab(1);
b=ab(2);

%calcul de chi^2 et du crit�re de plausibilit� de la regression
chi2=sum((M*ab-y(:)).^2);
sqrtChi2sNm2=sqrt(chi2/(length(x)-2));

%calcul du coefficient de correlation
xmxb=(x-mean(x));
ymyb=(y-mean(y));
corr=sum(xmxb.*ymyb)/sqrt(sum(xmxb.^2)*sum(ymyb.^2));
