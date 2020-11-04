if prime==0
    for x=1:length
        for y=1:length
            Phi(x,y,c)=Psi(x,y,c);
        end
    end
    Phiamp(1,c)=(1/4)*Psiamp(1,c);
else
    for x=1:length
        for y=1:length
            Phi(x,y,c)=Psi(x,y,c);
        end
    end
    Phipamp(1,c)=(1/4)*Psipamp(1,c);
end