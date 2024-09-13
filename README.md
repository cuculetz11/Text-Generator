# Text-Generator
 Cucu Viorel-Cosmin 314CA

 TEMA #1#
## stochastic_matrx(k_secv_corpus, corpus_words, words_set, k_secv_set, k)

Aceasta functie creeaza o **matrice stochastica sparse** de dimensiune `k_secv_set * words_set`, unde:
- `k_secv_set` reprezinta setul unic de secvente de dimensiune `k` gasite in corpus.
- `words_set` reprezinta toate cuvintele unice din corpus.

### Pasi principali:

1. **Initializare matrice sparse**: Creez o matrice sparse de dimensiune `k_secv_set * words_set`, in care fiecare linie reprezinta o secventa de `k` cuvinte, iar fiecare coloana reprezinta un cuvant care poate urma acelei secvente.

2. **Crearea unui dictionar pentru indexarea cuvintelor**: 
    - Construiesc un dictionar pentru fiecare cuvant din `words_set`, unde fiecare cuvant primeste un index unic. 
    - Acest dictionar este util pentru a gasi rapid coloana din matrice care corespunde unui anumit cuvant atunci cand analizez corpusul.

3. **Iterare prin setul de secvente unice `k_secv_set`**:
    - Pentru fiecare secventa `k` din `k_secv_set`, caut aceasta secventa in `k_secv_corpus` (corpusul de secvente).
    - Folosesc o functie de cautare (de exemplu, `find`) pentru a obtine un vector `k_secv_poz` care stocheaza toate pozitiile in care secventa `k` apare in corpus.

4. **Cautare a cuvintelor care urmeaza secventele `k`**:
    - Daca vectorul `k_secv_poz` nu este gol, creez un alt vector, `word_poz_after_k`, care stocheaza pozitiile cuvintelor care urmeaza imediat dupa fiecare aparitie a secventei `k` in textul original (`corpus_words`).

5. **Actualizarea matricei sparse**:
    - Pentru fiecare pozitie din `word_poz_after_k`, identific cuvantul corespunzator din `corpus_words`.
    - Folosind dictionarul creat anterior, gasesc indexul acelui cuvant (coloana din matrice).
    - In final, incrementez elementul din matricea sparse corespunzator liniei `i` (care reprezinta secventa `k`) si coloanei `j` (care reprezinta cuvantul ce urmeaza secventa `k`).

### Scop:
Acest proces creeaza o matrice sparse care reprezinta relatia dintre secventele de `k` cuvinte si cuvintele care le urmeaza in corpus, oferind o reprezentare stochastica a acestora.
