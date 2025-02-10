function [blobNr,nB]=particleSep(L,szL)

    blobNr=zeros(szL,'uint32');
    nB=0;
    while any(any(L))
        nB=nB+1;
        [i,j]=find(L,1);
        contImg=contigSrch([i j],L,szL);
        %blobs(:,:,end+1)=contImg;
        blobNr(contImg)=nB;
        L=L &~ contImg;
    end
end