#create the output folder
mkdir -p merged_fastq  

#loop to merge forward & reverse reads
for fwd in *_1.fastq; do 
sample="${fwd%_1.fastq}"                       
rev="${sample}_2.fastq"                        
out="merged_fastq/${sample}_merged.fastq"      
    
echo "Merging $fwd and $rev into $out"         
    
usearch --fastq_mergepairs "$fwd" -reverse "$rev" -fastqout "$out"                     
done


#concatenate all the fastq in a single file
cat merged_fastq/*_merged.fastq > all_merged.fastq



#maximize the merging reads

for fwd in *_1.fastq; do     
sample="${fwd%_1.fastq}";     
rev="${sample}_2.fastq";     
out="merged_fastq/${sample}_merged.fastq";            

echo "Merging $fwd and $rev into $out";                  

usearch -fastq_mergepairs "$fwd" -reverse "$rev" -fastqout "$out" -fastq_maxdiffs 10 -fastq_pctid 75;     
done

