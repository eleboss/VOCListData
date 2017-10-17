VOCinit;
cls='car'
imgset = 'train1'
[ids,gt] = textread(sprintf(VOCopts.clsimgsetpath,cls,imgset),'%s %d');
v=0;
for i=1:length(ids)
    if(gt(i)~=1)
        v=v+1;
        new_ids(v)=ids(i);
    end   
end
tnew_ids=new_ids';
dlmwrite('car_train_new.txt',tnew_ids,'delimiter','','newline','pc')