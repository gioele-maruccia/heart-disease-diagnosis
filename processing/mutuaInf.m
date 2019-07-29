%funzione che calcola la mutua informazione
function MI = mutuaInf(x1, x1Values, x2, x2Values)
MI = 0;
for i=1:1:length(x1Values)
     px1 = length(find(x1==x1Values(i)))/length(x1);
    for j=1:1:length(x2Values)
         px2 = length(find(x2==x2Values(j)))/length(x2);
         px1x2 = length(find(x1==x1Values(i) & x2==x2Values(j)))/length(x2);
         if(~isnan(px1x2*log2((px1x2)/(px1*px2))))
            MI = MI + px1x2*log2((px1x2)/(px1*px2))
         end
    end
end
end