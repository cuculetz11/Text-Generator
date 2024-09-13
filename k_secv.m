function B = k_secv (A, k)
  % given an array [a b a b c] and k=2
  % should return [ab ba ab bc]
  % HINT: use strjoin 
  
  [nr_tokens n] = size(A);
  B = cell(nr_tokens - k, 1);
  
  for i = 1:nr_tokens-k
    B{i} = strjoin(A(i:i+k-1));
  endfor
endfunction
