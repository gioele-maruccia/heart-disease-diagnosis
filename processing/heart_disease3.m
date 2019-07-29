%grafici relazioni variabili-classe
load datasetCLASSEBIN;

ca(find(ca==NaN)) = mode(ca);
thal(find(thal==NaN)) = mode(thal);

%  %Verifica relazione monotona classe-attributo, caratteristica necessaria
%  %per l'utilizzo della regressione logistica
figure(1)
subplot(3,2,1)
stairs(sort(age),cumulativaCondizionale(age,num,0),'o')
hold on
plot(sort(age),cumulativaCondizionale(age,num,0))
xlabel('age'); ylabel('p(num=0|age)');
subplot(3,2,2)
stairs(sort(age),cumulativaCondizionale(age,num,1),'o')
hold on
plot(sort(age),cumulativaCondizionale(age,num,1))
xlabel('age'); ylabel('p(num=1|age)');

figure(2)
subplot(3,2,1)
stairs(sort(cp),cumulativaCondizionale(cp,num,0),'o')
hold on
plot(sort(cp),cumulativaCondizionale(cp,num,0))
xlabel('cp'); ylabel('p(num=0|cp)');
subplot(3,2,2)
stairs(sort(cp),cumulativaCondizionale(cp,num,1),'o')
hold on
plot(sort(cp),cumulativaCondizionale(cp,num,1))
xlabel('cp'); ylabel('p(num=1|cp)');

figure(3)
subplot(3,2,1)
stairs(sort(restecg),cumulativaCondizionale(restecg,num,0),'o')
hold on
plot(sort(restecg),cumulativaCondizionale(restecg,num,0))
xlabel('restecg'); ylabel('p(num=0|restecg)');
subplot(3,2,2)
stairs(sort(restecg),cumulativaCondizionale(restecg,num,1),'o')
hold on
plot(sort(restecg),cumulativaCondizionale(restecg,num,1))
xlabel('restecg'); ylabel('p(num=1|restecg)');

figure(4)
subplot(3,2,1)
stairs(sort(thalach),cumulativaCondizionale(thalach,num,0),'o')
hold on
plot(sort(thalach),cumulativaCondizionale(thalach,num,0))
xlabel('thalach'); ylabel('p(num=0|thalach)');
subplot(3,2,2)
stairs(sort(thalach),cumulativaCondizionale(thalach,num,1),'o')
hold on
plot(sort(thalach),cumulativaCondizionale(thalach,num,1))
xlabel('thalach'); ylabel('p(num=1|thalach)');

figure(5)
subplot(3,2,1)
stairs(sort(exang),cumulativaCondizionale(exang,num,0),'o')
hold on
plot(sort(exang),cumulativaCondizionale(exang,num,0))
xlabel('exang'); ylabel('p(num=0|exang)');
subplot(3,2,2)
stairs(sort(exang),cumulativaCondizionale(exang,num,1),'o')
hold on
plot(sort(exang),cumulativaCondizionale(exang,num,1))
xlabel('exang'); ylabel('p(num=1|exang)');

figure(6)
subplot(3,2,1)
stairs(sort(oldpeak),cumulativaCondizionale(oldpeak,num,0),'o')
hold on
plot(sort(oldpeak),cumulativaCondizionale(oldpeak,num,0))
xlabel('oldpeak'); ylabel('p(num=0|oldpeak)');
subplot(3,2,2)
stairs(sort(oldpeak),cumulativaCondizionale(oldpeak,num,1),'o')
hold on
plot(sort(oldpeak),cumulativaCondizionale(oldpeak,num,1))
xlabel('oldpeak'); ylabel('p(num=1|oldpeak)');

figure(7)
subplot(3,2,1)
stairs(sort(slope),cumulativaCondizionale(slope,num,0),'o')
hold on
plot(sort(slope),cumulativaCondizionale(slope,num,0))
xlabel('slope'); ylabel('p(num=0|slope)');
subplot(3,2,2)
stairs(sort(slope),cumulativaCondizionale(slope,num,1),'o')
hold on
plot(sort(slope),cumulativaCondizionale(slope,num,1))
xlabel('slope'); ylabel('p(num=1|slope)');

figure(8)
subplot(3,2,1)
stairs(sort(ca),cumulativaCondizionale(ca,num,0),'o')
hold on
plot(sort(ca),cumulativaCondizionale(ca,num,0))
xlabel('ca'); ylabel('p(num=0|ca)');
subplot(3,2,2)
stairs(sort(ca),cumulativaCondizionale(ca,num,1),'o')
hold on
plot(sort(ca),cumulativaCondizionale(ca,num,1))
xlabel('ca'); ylabel('p(num=1|ca)');

figure(9)
subplot(3,2,1)
stairs(sort(thal),cumulativaCondizionale(thal,num,0),'o')
hold on
plot(sort(thal),cumulativaCondizionale(thal,num,0))
xlabel('thal'); ylabel('p(num=0|thal)');
subplot(3,2,2)
stairs(sort(thal),cumulativaCondizionale(thal,num,1),'o')
hold on
plot(sort(thal),cumulativaCondizionale(thal,num,1))
xlabel('thal'); ylabel('p(num=1|thal)');