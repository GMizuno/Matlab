% Este programa preenche uma matriz de 4a. ordem.
clear
tic
cont1=1;
M1=zeros(3,4,2,5);
for ii=1:3
    for jj=1:4
        for kk=1:2
            for ll=1:5
                M1(ii,jj,kk,ll)=cont1;
                cont1=cont1+1;
            end
        end
    end
end
toc