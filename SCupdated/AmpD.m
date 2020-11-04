if prime==0 %regular values
Phiamp(1,c)=Phiamp(1,c)*(Psiamp(1,c)*(-1/4));
    if downright==1
        temp=Psi(i,j);
        Psi(i,j)=Psi(i+1,j);
        Psi(i+1,j)=temp;
    for countz=1:numberofconfigs1
        for countx=1:length
            for county=1:length
                if Psi(countx,county,c)==Phi(countx,county,countz)
                    if countx==length && county==length
                        Phiamp(1,countz)= Psiamp(1,c)*(1/2);
                        temp=Psi(i,j);
                        Psi(i,j)=Psi(i+1,j);
                        Psi(i+1,j)=temp;
                        return
                    else
                    end
                else
                    if countz==numberofconfigs2
                        numberofconfigs2=numberofconfigs2+1;
                        countz=numberofconfigs2;
                        Phiamp(1,countz)= Psiamp(1,c)*(1/2);
                        NewPosition;
                        temp=Psi(i,j);
                        Psi(i,j)=Psi(i+1,j);
                        Psi(i+1,j)=temp;
                        return
                    else
                        countz=countz+1;
                        countx=1;
                        county=0;
                    end
                end
            end
        end
    end
    else
        temp=Psi(i,j);
        Psi(i,j)=Psi(i,j+1);
        Psi(i,j+1)=temp;
    for countz=1:numberofconfigs1
        for countx=1:length
            for county=1:length
                if Psi(countx,county,c)==Phi(countx,county,countz)
                    if countx==length && county==length
                        Phiamp(1,countz)= Psiamp(1,c)*(1/2);
                        temp=Psi(i,j);
                        Psi(i,j)=Psi(i,j+1);
                        Psi(i,j+1)=temp;
                        return
                    else
                    end
                else
                    if countz==numberofconfigs3
                        numberofconfigs2=numberofconfigs2+1;
                        countz=numberofconfigs2;
                        Phiamp(1,countz)= Psiamp(1,c)*(1/2);
                        NewPosition;
                        temp=Psi(i,j);
                        Psi(i,j)=Psi(i,j+1);
                        Psi(i,j+1)=temp;
                        return
                    else
                        countz=countz+1;
                        countx=1;
                        county=0;
                    end
                end
            end
        end
    end
    end
    
else %prime values
Phipamp(1,c)=Phipamp(1,c)*(Psipamp(1,c)*(1/4));

    if downright==1
        temp=Psiprime(i,j);
        Psiprime(i,j)=Psiprime(i+1,j);
        Psiprime(i+1,j)=temp;
    for countz=1:numberofconfigs3
        for countx=1:length
            for county=1:length
                if Psiprime(countx,county,c)==Phiprime(countx,county,countz)
                    if countx==length && county==length
                        Phipamp(1,countz)= Psipamp(1,c)*(1/2);
                        temp=Psiprime(i,j);
                        Psiprime(i,j)=Psiprime(i+1,j);
                        Psiprime(i+1,j)=temp;
                        return
                    else
                    end
                else
                    if countz==numberofconfigs4
                        numberofconfigs4=numberofconfigs4+1;
                        countz=numberofconfigs4;
                        Phipamp(1,countz)= Psipamp(1,c)*(1/2);
                        NewPosition;
                        temp=Psiprime(i,j);
                        Psiprime(i,j)=Psiprime(i+1,j);
                        Psiprime(i+1,j)=temp;
                        return
                    else
                        countz=countz+1;
                        countx=1;
                        county=0;
                    end
                end
            end
        end
    end
    else
        temp=Psiprime(i,j);
        Psiprime(i,j)=Psiprime(i,j+1);
        Psiprime(i,j+1)=temp;
    for countz=1:numberofconfigs3
        for countx=1:length
            for county=1:length
                if Psiprime(countx,county,c)==Phiprime(countx,county,countz)
                    if countx==length && county==length
                        Phipamp(1,countz)= Psipamp(1,c)*(1/2);
                        temp=Psiprime(i,j);
                        Psiprime(i,j)=Psiprime(i,j+1);
                        Psiprime(i,j+1)=temp;
                        return
                    else
                    end
                else
                    if countz==numberofconfigs4
                        numberofconfigs4=numberofconfigs4+1;
                        countz=numberofconfigs4;
                        Phipamp(1,countz)= Psiamp(1,c)*(1/2);
                        NewPosition;
                        temp=Psiprime(i,j);
                        Psiprime(i,j)=Psiprime(i,j+1);
                        Psiprime(i,j+1)=temp;
                        return
                    else
                        countz=countz+1;
                        countx=1;
                        county=0;
                    end
                end
            end
        end
    end
    end
end