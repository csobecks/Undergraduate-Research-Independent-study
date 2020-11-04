if flipchoice==0
    for posz=1:length
        for posx=1:length
            for posy=1:length
                Psinew(posx,posy,posz)=Psi(posx,posy,posz);
            end
        end
        Psinewamp(1,posz)=Psiamp(1,posz)*((-1i*t)/hbar)*Phiamp(1,posz);
    end
else
    for posz=1:length
        for posx=1:length
            for posy=1:length
                Psinew(posx,posy,posz)=Psiprime(posx,posy,posz);
            end
        end
        Psinewamp(1,posz)=Psipamp(1,posz)*((-1i*t)/hbar)*Phipamp(1,posz);
    end
end

for posz=1:length
    for posx=1:length
        for posy=1:length
            Psi(posx,posy,posz)=Psinew(posx,posy,posz);
        end
    end
    Psiamp(1,posz)=Psinewamp(1,posz);
end
