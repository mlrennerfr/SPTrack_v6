function [a,b]=Regresionlin(x,y,sigma)
% regression lin�aire ponderee (sens des moindres carr�s) avec crit�re de
% qualit�
%x abscisse
%y : ordonn�e
%sigma incertitude sur les elements y
%a : pente de la regression lin�aire
%b: ordonn�ee � l'origine

S = warning('off', 'all');
N=length(x);

M=[x(:)./sigma(:) ones(length(x),1)./sigma(:)]; %matrice du probl�me (pond�re
ab=M\(y(:)./sigma(:));%resolution du probl�me

a=ab(1);
b=ab(2);

%calcul de chi^2 et du crit�re de plausibilit� de la regression
%chi2=sum((M*ab-y(:)./sigma(:)).^2);
%sqrtChi2sNm2=sqrt(chi2/(length(x)-2));

%calcul du coefficient de correlation
%xmxb=(x-mean(x));
%ymyb=(y-mean(y));
%corr=sum(xmxb.*ymyb)/sqrt(sum(xmxb.^2)*sum(ymyb.^2));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        