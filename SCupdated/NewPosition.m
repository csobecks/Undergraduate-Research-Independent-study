if prime==0
    for runx=1:length
        for runy=1:length
            Phi(runx,runy,countz)=Psi(runx,runy,c);
        end
    end
else
    for runx=1:length
        for runy=1:length
            Phiprime(runx,runy,countz)=Psiprime(runx,runy,c);
        end
    end
end