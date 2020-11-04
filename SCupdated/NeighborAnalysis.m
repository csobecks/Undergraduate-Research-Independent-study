downright=0; %0=right 1=down
if prime==0
    for c=1:numberofconfigs1
        for i=1:length
            for j=1:length
                if Psi(i,j)==0 %hole in location
                    continue
                else
                    if i==length %bottom of matrix
                        if j==length %right of matrix
                        else
                            if Psi(i,j+1,c)==0
                                continue
                            elseif Psi(i,j,c)==Psi(i,j+1,c)
                                AmpS;
                            else
                                downright=0;
                                AmpD;
                            end
                        end
                    else %top of matrix
                        if j==length %right of list
                            if Psi(i+1,j,c)==0
                                continue
                            elseif Psi(i,j,c)==Psi(i+1,j,c)
                                AmpS;
                            else
                                downright=1;
                                AmpD;
                            end
                        else %anywhere else in matrix
                            if Psi(i+1,j,c)==0
                                continue
                            elseif Psi(i,j,c)==Psi(i+1,j,c)
                                AmpS;
                            else
                                downright=1;
                                AmpD;
                            end

                            if Psi(i,j+1,c)==0
                                continue
                            elseif Psi(i,j,c)==Psi(i,j+1,c)
                                AmpS;
                            else
                                downright=0;
                                AmpD;
                            end
                        end
                    end
                end
            end
        end
    end
else
    for c=1:numberofconfigs3
        for i=1:length
            for j=1:length
                if Psiprime(i,j)==0 %hole in location
                    continue
                else
                    if i==length %bottom of matrix
                        if j==length %right of matrix
                        else
                            if Psiprime(i,j+1,c)==0
                                continue
                            elseif Psiprime(i,j,c)==Psiprime(i,j+1,c)
                                AmpS;
                            else
                                downright=0;
                                AmpD;
                            end
                        end
                    else %bottom of list
                        if j==length %right of list
                            if Psiprime(i+1,j,c)==0
                                continue
                            elseif Psiprime(i,j,c)==Psiprime(i+1,j,c)
                                AmpS;
                            else
                                downright=1;
                                AmpD;
                            end
                        else %anywhere else in list
                            if Psiprime(i+1,j,c)==0
                                continue
                            elseif Psiprime(i,j,c)==Psiprime(i+1,j,c)
                                AmpS;
                            else
                                AmpD;
                            end

                            if Psi(i,j+1,c)==0
                                continue
                            elseif Psiprime(i,j,c)==Psiprime(i,j+1,c)
                                AmpS;
                            else
                                downright=0;
                                AmpD;
                            end
                        end
                    end
                end
            end
        end
    end
end