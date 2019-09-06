img = imread('demo.jpg');
LOG = fspecial('log',[7,7],1);
S = conv2(img,LOG,'same');
[x,y] = size(S);
thr=40;
result=zeros(size(S));
for i=1:x;
    for j=2:y
        if S(i,j)==0
            if(S(i,j-1)*S(i,j+1)<0)
                if abs(S(i,j-1)-S(i,j+1))>thr
                    result(i,j)=255;
                end
            end
        else if(S(i,j)*S(i,j-1)<0)
                if abs(S(i,j-1)-S(i,j))>thr
                    result(i,j)=255;
                end
            end
        end
    end
end


                    

