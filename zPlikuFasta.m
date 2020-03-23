function Fasta = zPlikuFasta(path)
Fasta=struct('name',{},'seq',{});
dane=importdata(path);
nS=0;
nL=1;
while nL<=length(dane)
   wiersz=char(dane(nL));
   if wiersz(1)=='>'
        nL=nL+1;
        nS=nS+1;
   Fasta(nS).name=wiersz(2:end);
   end
   wiersz=char(dane(nL));
   if isempty(Fasta(nS).seq)
   Fasta(nS).seq=wiersz;
   else
   Fasta(nS).seq=append(Fasta(nS).seq,wiersz);
   end
   nL=nL+1;
end

end



