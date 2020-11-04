n=0;
m=0;
for i=1:1:length
    for j=1:1:length
        if n==0
            initmat(i,j)=1;
            n=1;
        else
            initmat(i,j)=-1;
            n=0;
        end
    end
    if m==1
        n=0;
        m=0;
    else
        n=1;
        m=1;
    end
end

for x=1:dopcnt
    initmat(dopx(x,1),dopy(x,1))=0;
end

