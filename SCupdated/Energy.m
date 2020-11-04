Ehold1=0;
Ehold2=0;
sizehold=0; 

if prime==0
    if size(Phiamp,2)<size(Psiamp,2)
        sizehold=size(Phiamp,2);
    else
        sizehold=size(Psiamp,2);
    end
    for ecount=1:sizehold
        Ehold1=Ehold1+(Psiamp(1,ecount)*Phiamp(1,ecount));
        Ehold2=Ehold2+(Psiamp(1,ecount)*Psiamp(1,ecount));
    end
    Energyhold1=Ehold1/Ehold2;
else
    if size(Phipamp,2)<size(Psipamp,2)
        sizehold=size(Phipamp,2);
    else
        sizehold=size(Psipamp,2);
    end
    for ecount=1:sizehold
        Ehold1=Ehold1+(conj(Psipamp(1,ecount))*Phipamp(1,ecount));
        Ehold2=Ehold2+(conj(Psipamp(1,ecount))*Psipamp(1,ecount));
    end
    Energyhold2=Ehold1/Ehold2;
end