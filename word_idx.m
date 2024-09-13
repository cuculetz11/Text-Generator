function retval = word_idx (distinct_wds)
    % return the word_idx dictionary HINT: containers.Map
   keys = distinct_wds;
    values = 1:length(distinct_wds);
    retval = containers.Map(keys, values);
endfunction
