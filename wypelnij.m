function [ out1, out2 ] = wypelnij( seq1, seq2 )
roznica = abs(length(seq1)-length(seq2));

if length(seq1)>length(seq2)
    for i=1:roznica
    seq2 = [seq2 seq2(i)]; 
    end
elseif length(seq1)<length(seq2)
    for i=1:roznica
    seq1 = [seq1 seq1(i)]; 
    end
end

if length(seq1)==length(seq2)
   out1 = seq1;
   out2 = seq2;
end
end

