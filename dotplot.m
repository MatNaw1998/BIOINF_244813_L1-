function [ m ] = dotplot( seq1, seq2)
[seq1,seq2]=wypelnij(seq1,seq2);
for i=1:length(seq1)
   for j=1:length(seq2)
      if(seq1(i) == seq2(j))
          m(j,i) = 1;
      end
   end
end
 spy(sparse(m));
end

