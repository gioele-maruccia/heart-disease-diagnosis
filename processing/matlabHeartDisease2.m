%calcolo mutua informazione dopo aver accorpato i dati

load datasetACCORPATI;
%discretizzo in egual frequenza, frequenze rilevate da orange
%soglie age: 47.50 - 55.50 - 60.50
disAge = (age<47.50)*1+ (age>=47.50 & age<55.50)*2+ (age>=55.50 & age<60.50)*3 + (age>=60.50)*4;
%soglie trestbps: 119.00 - 129.50 - 139.00
disTrestbps = (trestbps<119)*1+ (trestbps>=119 & trestbps<129.50)*2+ (trestbps>=129.50 & trestbps<139)*3 + (trestbps>=139)*4;
%soglie chol: 211.50 - 241.50 - 275.50
disChol = (chol<211.50)*1+ (chol>=211.50 & chol<241.50)*2+ (chol>=241.50 & chol<275.50)*3 + (chol>=275.50)*4;
%soglie thalach 133.50 - 152.50 - 165.50
disThalach = (thalach<133.50)*1+ (thalach>=133.50 & thalach<152.50)*2+ (thalach>=152.50 & thalach<165.50)*3 + (thalach>=165.50)*4;
%soglie oldpeak 0.05 - 0.95 - 1.85
disOldpeak = (oldpeak<0.05)*1+ (oldpeak>=0.05 & oldpeak<0.95)*2+ (oldpeak>=0.95 & oldpeak<1.85)*3 + (oldpeak>=1.85)*4;
%soglie ca 0.50 - 1.50 - 2.50

ca(find(ca==NaN)) = mode(ca);
thal(find(thal==NaN)) = mode(thal);

vettoreVarDiscrete = [disAge, sex, cp, disTrestbps, disChol, fbs, restecg, disThalach, exang, disOldpeak, slope, ca, thal]; 
%calcolo mutua informazine
MImatrix = zeros(13,13);
unique(vettoreVarDiscrete(:,13));
MI_age_restecg = mutuaInf(disAge,unique(disAge),restecg,unique(restecg));
 for(i=1:1:13)
     for(j=i:1:13)
         MImatrix(i,j) = mutuaInf(vettoreVarDiscrete(:,i), unique(vettoreVarDiscrete(:,i)), vettoreVarDiscrete(:,j), unique(vettoreVarDiscrete(:,j)));
     end
 end
%  
