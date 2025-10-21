function [d] = f_dist_max(w,Dmax,a,Te,DeltaZ)
%function [d] = f_dist_max(w,Dmax,a,Te,DeltaZ)
% (fonction) Retourne la distance maximale parcourue par un spot entre
% diff�rentes images de la s�quence, en fonction d'un coefficient de diffusion
% maximal.
% - Dmax : coefficient de diffusion maximal, en micro_m^2 / s,
% - a : largeur d'un pixel, en nm,
% - Te : p�riode d'�chantillonnage de la s�quence, en milli_s,
% - DeltaZ : �l�vation s�parant deux images du stack.
%
% Modified from MTT by Marianne Renner, to use in SPTrack programs
%=======================================================================

d = w*((2*sqrt((10^8)*Dmax)/a)*sqrt((10^(-3))*Te*DeltaZ));
