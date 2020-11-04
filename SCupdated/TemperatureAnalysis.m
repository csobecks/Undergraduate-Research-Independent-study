if DeltaE<0
    Energyhold=Energyhold1;
else
    Energyhold=Energyhold2;
end

randtemp=rand;
Beta=1/(bconst*temp);
bfactor=e^(-Beta*Energyhold);
if randtemp<bfactor
   flipchoice=1;
else
    flipchoice=0;
end