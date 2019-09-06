edges = zeros(x,y);
check=temp;
num = 0;
Stx = java.util.Stack();
Sty = java.util.Stack();
for i = 1:x
    for j = 1:y
        if check(i,j) > 35
            num = num + 1;
            Stx.push(i);
            Sty.push(j);
            while ~Stx.empty()
             p=Stx.pop();
             q=Sty.pop();
             edges(p,q)=num;
             check(p,q)=0; 
             for k = (p-1):1:(p+1) 
                 for l = (q-1):1:(q+1)
                     if k>0 && k<=x && l>0 && l<=y
                         if check(k,l) > 15
                             Stx.push(k);
                             Sty.push(l);
                         end
                     end
                 end
             end
            end
        end
    end
end

result = edges > 0;
result = result*255;
