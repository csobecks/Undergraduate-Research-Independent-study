% Superconductivity Study 
% Dr. Ordononez, Casey Sobecks
% source: (2019) B.Edegger, .N. Muthukumar, C. Gros
clear;
clc;

%variables
length=3;
temperature=2.5;
iterations=1;

dopingval=2.5;
dopx=zeros(2,1);
dopy=zeros(2,1);

Psi=100*rand(length,length,1);
Phi=zeros(length,length,1);
Psiprime=zeros(length,length,1);
Phiprime=zeros(length,length,1);
Psiamp=zeros([1 3]);
Phiamp=zeros([1 3]);
Psipamp=zeros([1 3]);
Phipamp=zeros([1 3]);
Psinew=zeros(length,length,1);
Psiampnew=zeros([1 3]);

prime=0;

deltat=0.001;
hbar=1;

dopcnt=0;
Doping; %dope the material

InitialMatrix; %starting matrix of antiferromagnetic state
 
numberofconfigs1=1;
numberofconfigs2=1;
numberofconfigs3=1;
numberofconfigs4=1;

for i=1:length
    for j=1:length
        Psi(i,j,1)=initmat(i,j);
        Phi(i,j,1)=initmat(i,j);
    end
end

Psiamp(1,1)=1;
Phiamp(1,1)=1;
Psipamp(1,1)=1;
Phipamp(1,1)=1;

for iter=1:iteration
prime=0;
NeighborAnalysis;
Energy;
Flips;
prime=1;
NeighborAnalysis;
Energy;
DeltaE=Energyhold2-Energyhold1;
TemperatureAnalysis;
NewPsi;
end