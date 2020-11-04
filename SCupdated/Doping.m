dopcnt=0;
while dopcnt==0 || dopcnt<ceil(length*length*dopingval/100)
    dopcnt=0;
    initmat=10*rand(length,length);
    for i=1:1:length
        for j=1:1:length
            if initmat(i,j)<=dopingval
                initmat(i,j)=0;
                dopcnt=dopcnt+1;
                dopx(dopcnt,1)=i;
                dopy(dopcnt,1)=j;
            end
        end
    end
end
