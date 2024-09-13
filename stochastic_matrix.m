function retval = stochastic_matrix(k_secv_corpus, corpus_words, words_set, k_secv_set, k)

    mat = sparse(length(k_secv_set), length(words_set));
    word_idx = word_idx(words_set);
    
    for i = 1:length(k_secv_set)
        k_secv = k_secv_set{i};
        k_secv_poz = [];
        k_secv_poz = find(strcmp(k_secv_corpus, k_secv));
        % scot indexul k_secvtelor ce se regasesc in k_secv_corpus(inital)
        if (isempty(k_secv_poz) == 0)
            words_poz_after_k = k_secv_poz + k;
            for j = 1:length(words_poz_after_k)
                word = corpus_words{words_poz_after_k(j)};
                word_id = word_idx(word);
                mat(i, word_id) = mat(i, word_id) + 1;
            endfor
        endif
    endfor
    retval = mat;
endfunction
