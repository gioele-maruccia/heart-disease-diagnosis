% AUC_cn2 = [0.758, 0.875, 0.654, 0.917, 0.817, 0.832, 0.873, 0.833, 0.990, 0.753]
% auc_mean_cn2 = mean(AUC_cn2);
%AUC_rf = [0.852, 0.908, 0.750, 0.975, 0.758, 0.891, 0.973, 0.879, 0.990, 0.889];
% auc_mean_rf = mean(AUC_rf);
% AUC_tree = [0.871, 0.942, 0.754, 0.896, 0.821, 0.827, 0.909, 0.798, 0.995, 0.803]
% auc_mean_tree = mean(AUC_tree);
% AUC_maj = [0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5]
% auc_mean_maj = mean(AUC_maj);
% AUC_logit = [0.867, 0.883, 0.617, 0.900, 0.683, 0.936, 0.900, 0.788, 1, 0.929]
% auc_mean_logit = mean(AUC_logit);
% AUC_svm = [0.858, 0.825, 0.617, 0.775, 0.817, 0.755, 0.905, 0.707,  0.889, 0.707]
% auc_mean_svm = mean(AUC_svm);
AUC_naive = [0.887, 0.908, 0.783, 0.983, 0.750, 0.905, 0.982,0.899, 1, 0.869];
% auc_mean_naive = mean(AUC_naive);
% AUC_knn = [0.917, 0.742, 0.546, 0.692, 0.642, 0.782, 0.700, 0.788, 0.919, 0.848]
% auc_mean_knn = mean(AUC_knn)

% ca_knn = [0.917, 0.742, 0.546, 0.692, 0.642, 0.782, 0.700, 0.788, 0.919, 0.848];
% ca_mean_knn = mean(ca_knn)

% ca_cn2 = [0.773, 0.818, 0.545, 0.955, 0.727, 0.762, 0.810,0.750, 0.950, 0.750]
% ca_mean_cn2 = mean(ca_cn2);
%ca_rf = [0.864, 0.909, 0.773, 0.818, 0.727, 0.810, 0.952, 0.750, 0.950, 0.800]
% ca_mean_rf = mean(ca_rf);
% ca_tree = [0.818, 0.773, 0.682, 0.818, 0.727, 0.714, 0.810, 0.700, 0.950, 0.750]
% ca_mean_tree = mean(ca_tree);
% ca_maj = [0.545, 0.545, 0.545, 0.545, 0.545, 0.524, 0.524, 0.550, 0.550, 0.550]
% ca_mean_maj = mean(ca_maj);
% ca_logit = [0.818, 0.864, 0.636, 0.773, 0.500, 0.857, 0.810, 0.700, 0.9, 0.8]
% ca_mean_logit = mean(ca_logit);
% ca_svm = [0.864, 0.818, 0.636, 0.773, 0.818, 0.762, 0.905, 0.700, 0.9, 0.7]
% ca_mean_svm = mean(ca_svm);
ca_naive = [0.818, 0.864, 0.727, 0.864, 0.727, 0.857, 0.857, 0.800, 0.950, 0.8]
% ca_mean_naive = mean(ca_naive);

% CN2
% sens = mean([7/10, 8/10, 4/10, 9/10, 7/10, 6/10, 8/10, 6/9, 9/9, 7/9])
% spec = mean([10/12, 10/12, 8/12, 12/12,9/12,10/11,9/11,9/11,10/11,8/11])
% BA = mean([sens,spec])

%random-forest
 %sens = mean([7/10,9/10,6/10,9/10,7/10,7/10,8/10,7/9,8/9,7/9])
 %spec = mean([11/12,11/12,10/12,9/12,11/12,10/11,9/11,9/11,10/11,9/11])
% BA = mean([sens, spec])

%tree
% sens = mean([7/10,7/10,6/10,9/10,7/10,6/10,7/10,5/9,8/9,8/9])
% spec = mean([11/12,10/12,9/12,9/12,9/12,10/11,9/11,11/11,7/11])
% BA = mean([sens, spec])

%majority
% sens = 0
% spec = 1
% BA = mean([sens, spec])

%regressione logistica
% sens = mean([7/10,8/10,5/10,9/10,3/10,8/10,7/10,7/9,7/9,8/9])
% spec = mean([11/12,11/12,9/12,8/12,8/12,10/11,10/11,7/11,11/11,8/11])
% BA = mean([sens, spec])

%svm
% sens = mean([8/10,9/10,4/10,8/10,8/10,6/10,9/10,7/9,7/9,7/9])
% spec = mean([11/12,9/12,10/12,9/12,10/12,10/11,10/11,7/11,11/11,7/11])
% BA = mean([sens, spec])

%naive bayes

%sens = mean([7/10,8/10,6/10,10/10,6/10,9/10,9/10,6/9,8/9,7/9])
%spec = mean([11/12,11/12,10/12,9/12,10/12,9/11,9/11,10/11,11/11,9/11])
% BA = mean([sens, spec])

%knn
%sens = mean([8/10,6/10,5/10,5/10,5/10,7/10,5/9,6/9,7/9,7/9])
%spec = mean([10/12,9/12,5/12,7/12,9/11,9/11,8/11,11/11,9/11,9/11])
%BA = mean([sens, spec])


%%t-test per valutare se vi è differenza tra naive bayes e random forest
%[h,p] = ttest(AUC_rf, AUC_naive) %non rifiuto l'ipotesi nulla che le medie siano uguali
%[h,p] = ttest(ca_rf, ca_naive) %non rifiuto l'ipotesi nulla
% 
 sens_naive =[7/10,8/10,6/10,10/10,6/10,9/10,9/10,6/9,8/9,7/9];
 spec_naive = [11/12,11/12,10/12,9/12,10/12,9/11,9/11,10/11,11/11,9/11];
% sens_rf = [7/10,9/10,6/10,9/10,7/10,7/10,8/10,7/9,8/9,7/9];
% spec_rf = [11/12,11/12,10/12,9/12,11/12,10/11,9/11,9/11,10/11,9/11];
% [h,p] = ttest(sens_rf, sens_naive)
% [h,p] = ttest(spec_rf, spec_naive)


%intervallo di confidenza AUC per l'algoritmo scelto -> naive bayes
s = std(AUC_naive);
radN = sqrt(length(AUC_naive));
%t-student a 9 gdl, alfa = 0.025 simmetrico
ts = tinv([0.025  0.975],length(AUC_naive)-1);
SEM = s/radN;
CI = mean(AUC_naive)+ts*SEM;

%intervallo confidenca accuratezza
s = std(ca_naive);
radN = sqrt(length(ca_naive));
ts = tinv([0.025  0.975],length(ca_naive)-1);
SEM = s/radN;
CI = mean(ca_naive)+ts*SEM;

%intervallo confidenza sensibilità
s = std(sens_naive);
radN = sqrt(length(sens_naive));
ts = tinv([0.025  0.975],length(sens_naive)-1);
SEM = s/radN;
CI = mean(sens_naive)+ts*SEM;

%intervallo confidenza specificità
s = std(spec_naive);
radN = sqrt(length(spec_naive));
ts = tinv([0.025  0.975],length(spec_naive)-1);
SEM = s/radN;
CI = mean(spec_naive)+ts*SEM;

