% funzione che calcola la probabilità cumulativa di un dato valore della
% classe rispetto ad un attributo. 
function cumuCond = cumulativaCondizionale(attributo, classe, valoreClasse)
    attributoOrdinato = sort(attributo);
    for(i=1:1:length(attributoOrdinato))
       prova = classe(find(attributo==attributoOrdinato(i)));
       provaFreq=prova(find(prova==valoreClasse));
       probCu(i) = (length(provaFreq))/length(prova);
    end
    probCu
    cumuCond = probCu;
end
