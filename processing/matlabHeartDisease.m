%tendenza centrale, variabilità, mutua informazio
load datasetWORKSPACE; %carico le variabili del dataset

%attributi continui, MEDIA e deviazione standard
meanAge = mean(age);
stdAge = std(age); %deviazione standard
meanTrestbps = mean(trestbps);
stdTrestbps =std(trestbps);
meanChol = mean(chol);
stdChol = std(chol);
meanThalach = mean(thalach);
stdThalach=std(thalach);
meanOldpeak = mean(oldpeak);
stdOldpeak = std(oldpeak);

%attributi discreti, MODA
modeSex = mode(sex);
modeCp = mode(cp);
modefbs =mode(fbs);
modeRestecg=mode(restecg);
modeExang=mode(exang);
modeSlope=mode(slope);
modeCa=mode(ca);
modeThal=mode(thal);

%mutua informazione

%dati mancanti, solo in CA e THAL
length(find(isnan(ca))); %4
length(find(isnan(thal))); %2

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
disCa = (ca<0.5)*1+ (ca>=0.5 & ca<1.50)*2+ (ca>=1.50 & ca<2.50)*3 + (ca>=2.50)*4;

%degli attributi ca e thal elimino i valori NAN dall'attributo thal e li sostituisco con 0 
thal(isnan(thal)) = 0;
vettoreVarDiscrete = [disAge, sex, cp, disTrestbps, disChol, fbs, restecg, disThalach, exang, disOldpeak, slope, disCa, thal]; 
%calcolo mutua informazine
MImatrix = zeros(13,13);
unique(vettoreVarDiscrete(:,13));
MI_age_restecg = mutuaInf(disAge,unique(disAge),restecg,unique(restecg));
 for(i=1:1:13)
     for(j=i:1:13)
         MImatrix(i,j) = mutuaInf(vettoreVarDiscrete(:,i), unique(vettoreVarDiscrete(:,i)), vettoreVarDiscrete(:,j), unique(vettoreVarDiscrete(:,j)));
     end
 end
%  %adesso calcolo la mutua informazione evitando di prendere i dati
%  %mancanti, dopodichè confronto i risultati ottenuti sostituendo al dato
%  %mancante un altro valore e i risultati ottenuti senza considerare i dati
%  %mancanti. essendo solo gli attributi thal e ca attributi aventi dati
%  %mancanti, ciò che verrà modificato all'interno della matrice saranno
%  %solamente le ultime due righe e le ultime due colonne
disCa(find(disCa==0)) = mode(disCa);
thal(find(thal==NaN)) = mode(thal);
MImatrixNan = MImatrix;
MI_sex_ca = mutuaInf(sex,[0 1], disCa, [1 2 3 4]);
MImatrixNan(2,12) = MI_sex_ca;
MI_cp_ca = mutuaInf(cp,[1 2 3 4], disCa, [1 2 3 4]);
MImatrixNan(3,12) = MI_cp_ca;
MI_trestbps_ca = mutuaInf(trestbps,[1 2 3 4], disCa, [1 2 3 4]);
MImatrixNan(4,12) = MI_trestbps_ca;
MI_chol_ca = mutuaInf(disChol,[1 2 3 4], disCa, [1 2 3 4]);
MImatrixNan(5,12) = MI_chol_ca;
MI_fbs_ca = mutuaInf(disChol,[0 1], disCa, [1 2 3 4]);
MImatrixNan(6,12) = MI_fbs_ca;
MI_restecg_ca = mutuaInf(restecg,[0 1 2], disCa, [1 2 3 4]);
MImatrixNan(7,12) = MI_restecg_ca;
MI_disThalach_ca = mutuaInf(disThalach,[1 2 3 4], disCa, [1 2 3 4]);
MImatrixNan(8,12) = MI_disThalach_ca;
MI_exang_ca = mutuaInf(exang,[0 1], disCa, [1 2 3 4]);
MImatrixNan(9,12) = MI_exang_ca;
MI_oldpeak_ca = mutuaInf(disOldpeak,[1 2 3 4], disCa, [1 2 3 4]);
MImatrixNan(10,12) = MI_oldpeak_ca;
MI_slope_ca = mutuaInf(slope,[1 2 3], disCa, [1 2 3 4]);
MImatrixNan(11,12) = MI_slope_ca;
MI_thal_ca = mutuaInf(thal, [3 6 7], disCa,[1 2 3 4]);
MImatrixNan(13,12) = MI_slope_ca;

%salvo la colonna 12 delle matrici, cioè quella corrispondente alle
%mutue informazioni con il ca.
MI_ca_NanModificati = MImatrix(:,12);
MI_ca_NanInputing = MImatrixNan(:,12);
MI_thal_NanModificati = MImatrix(:,13);
MI_thal_NanInputing = MImatrixNan(:,13);
