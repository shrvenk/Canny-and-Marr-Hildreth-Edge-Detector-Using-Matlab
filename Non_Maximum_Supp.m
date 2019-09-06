temp=mag;
for i=2:x-1
    for j=2:y-1
        if (Sx(i,j)==0 && Sy(i,j)==0)
            temp(i,j)=0;
        else if (rad(i,j)<0.5236) && (rad(i,j)>-0.5236)
                if mag(i,j)<mag(i,j+1) || mag(i,j)<mag(i,j-1)
                    temp(i,j)=0;
                end
        else if (rad(i,j)>=1.0472 && rad(i,j)<2.0944)|| (rad(i,j)<=-1.0472 && rad(i,j)>-2.0944)
                if mag(i,j)<mag(i+1,j) || mag(i,j)<mag(i-1,j)
                    temp(i,j)=0;
                end
            else if (rad(i,j)>0.5236 && rad(i,j)<1.0472)|| (rad(i,j)<-2.0944 && rad(i,j)>-4.7124)
                    if mag(i,j)<mag(i-1,j+1) || mag(i,j)<mag(i+1,j-1)
                       temp(i,j)=0;
                    end
                else
                    if mag(i,j)<mag(i+1,j+1) || mag(i,j)<mag(i-1,j-1)
                        temp(i,j)=0;
                    end
                end
            end
            end
        end
    end
end


                            
                