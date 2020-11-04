randx=randi(length);
randy=randi(length);

for flipcount1=1:numberofconfigs1
    for flipcount2=1:length
        for flipcount3=1:length
            Psiprime(flipcount2,flipcount3,flipcount1)=Psi(flipcount2,flipcount3,flipcount1);
        end
    end
    if Psiprime(randx,randy,flipcount1)==1
        Psiprime(randx,randy,flipcount1)=-1;
    elseif Psiprime(randx,randy,flipcount1)==-1
        Psiprime(randx,randy,flipcount1)=1;
    else
    end
end

for flipcount1=1:numberofconfigs1
    for flipcount2=1:length
        for flipcount3=1:length
            Phiprime(flipcount2,flipcount3,flipcount1)=Psiprime(flipcount2,flipcount3,flipcount1);
        end
    end
end
numberofconfigs3=numberofconfigs1;
numberofconfigs4=numberofconfigs3;