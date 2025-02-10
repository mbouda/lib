function UA = sparseUnique(A)

    szA=max(A);
    L=false(szA,1);
    L(A)=true;
    UA=find(L);
    
end