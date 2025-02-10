function contImg=contigSrch(oldList,logImg,szLI)

    %logImg=frame;
    %szLI=frameSize;
    %oldList=outerFrame;
    contImg=false(szLI);
    
    while numel(oldList)>0
        contImg(szLI(1)*(oldList(:,2)-1)+oldList(:,1))=true;
        
        nLR=oldList(oldList(:,1)~=szLI(1),:);
        nFR=oldList(oldList(:,1)~=1,:);
        nLC=oldList(oldList(:,2)~=szLI(2),:);
        nFC=oldList(oldList(:,2)~=1,:); 
        
        nLR(:,1)=nLR(:,1)+1;
        nFR(:,1)=nFR(:,1)-1;
        nLC(:,2)=nLC(:,2)+1;
        nFC(:,2)=nFC(:,2)-1;

        newList=cat(1,nLR,nFR,nLC,nFC);
        %newInd=sparseUnique(szLI(1)*(newList(:,2)-1)+newList(:,1));
        newInd=unique(szLI(1)*(newList(:,2)-1)+newList(:,1));
        newInd=newInd(logImg(newInd) & ~contImg(newInd),:);
        
        k=newInd/szLI(1);
        fk=floor(k);
        oldList=[round((k-fk)*szLI(1)) fk+1];
    end

end