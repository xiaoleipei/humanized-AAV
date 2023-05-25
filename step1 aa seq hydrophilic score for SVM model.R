aa<- read.table(file = "AA_hydrophilicity.txt", sep = "\t",header = T)

psa<- read.table(file = "20p_psa_bacteria less1.fasta", sep = "\t",header = F)

psa2=as.data.frame(psa[sample(nrow(psa), 1000), ])

psa2=psa2[,-c(2:7)]


psa2$site1=NA
psa2$site2=NA
psa2$site3=NA
psa2$site4=NA
psa2$site5=NA
psa2$site6=NA
psa2$site7=NA
psa2$site8=NA
psa2$site9=NA
psa2$site10=NA
psa2$site11=NA
psa2$site12=NA
psa2$site13=NA
psa2$site14=NA
psa2$site15=NA
psa2$site16=NA
psa2$site17=NA
psa2$site18=NA
psa2$site19=NA
psa2$site20=NA
names(psa2)[1]="aa_seq"
psa2$group="bacteria"
psa=psa2

i=1;
for(i in 1:1000){
  list=strsplit(psa[i,1],'')
  n=length(list[[1]])
  j=1;
  for(j in 1:n){
        if(list[[1]][j]=="F"){
             psa[i,j+1]=100
              }
         if(list[[1]][j]=="I"){
              psa[i,j+1]=99
             }
         if(list[[1]][j]=="W"){
              psa[i,j+1]=97
             }
         if(list[[1]][j]=="L"){
              psa[i,j+1]=97
             }
         if(list[[1]][j]=="V"){
              psa[i,j+1]=76
             }
         if(list[[1]][j]=="M"){
              psa[i,j+1]=74
             }
         if(list[[1]][j]=="Y"){
              psa[i,j+1]=63
             }
         if(list[[1]][j]=="C"){
              psa[i,j+1]=49
             }
         if(list[[1]][j]=="A"){
              psa[i,j+1]=41
             }
         if(list[[1]][j]=="T"){
             psa[i,j+1]=13
             }
         if(list[[1]][j]=="H"){
             psa[i,j+1]=8
             }
         if(list[[1]][j]=="G"){
             psa[i,j+1]=0
             }
         if(list[[1]][j]=="S"){
             psa[i,j+1]=-5
             }
         if(list[[1]][j]=="Q"){
             psa[i,j+1]=-10
             }
         if(list[[1]][j]=="R"){
             psa[i,j+1]=-14
             }
         if(list[[1]][j]=="K"){
             psa[i,j+1]=-23
             }
          if(list[[1]][j]=="N"){
             psa[i,j+1]=-28
             }
          if(list[[1]][j]=="E"){
             psa[i,j+1]=-31
             }
          if(list[[1]][j]=="P"){
             psa[i,j+1]=-46
             }
          if(list[[1]][j]=="D"){
             psa[i,j+1]=-55
             }
        }
}

bacteria_psa=psa

virus=psa


write.table(psa,"20p_virus_less1_mtx.txt",sep="\t",row.names=F)

#####

virus_psa<- read.table(file = "virus_peptide_mtx.txt", sep = "\t",header = T)

virus_psa2=virus_psa[sample(nrow(virus_psa), 5000), ]

psa=virus_psa2

i=1;
for(i in 1:5000){
  list=strsplit(psa[i,1],'')
  n=length(list[[1]])
  j=1;
  for(j in 1:n){
    if(list[[1]][j]=="F"){
      psa[i,j+1]=100
    }
    if(list[[1]][j]=="I"){
      psa[i,j+1]=99
    }
    if(list[[1]][j]=="W"){
      psa[i,j+1]=97
    }
    if(list[[1]][j]=="L"){
      psa[i,j+1]=97
    }
    if(list[[1]][j]=="V"){
      psa[i,j+1]=76
    }
    if(list[[1]][j]=="M"){
      psa[i,j+1]=74
    }
    if(list[[1]][j]=="Y"){
      psa[i,j+1]=63
    }
    if(list[[1]][j]=="C"){
      psa[i,j+1]=49
    }
    if(list[[1]][j]=="A"){
      psa[i,j+1]=41
    }
    if(list[[1]][j]=="T"){
      psa[i,j+1]=13
    }
    if(list[[1]][j]=="H"){
      psa[i,j+1]=8
    }
    if(list[[1]][j]=="G"){
      psa[i,j+1]=0
    }
    if(list[[1]][j]=="S"){
      psa[i,j+1]=-5
    }
    if(list[[1]][j]=="Q"){
      psa[i,j+1]=-10
    }
    if(list[[1]][j]=="R"){
      psa[i,j+1]=-14
    }
    if(list[[1]][j]=="K"){
      psa[i,j+1]=-23
    }
    if(list[[1]][j]=="N"){
      psa[i,j+1]=-28
    }
    if(list[[1]][j]=="E"){
      psa[i,j+1]=-31
    }
    if(list[[1]][j]=="P"){
      psa[i,j+1]=-46
    }
    if(list[[1]][j]=="D"){
      psa[i,j+1]=-55
    }
  }
}

virus_psa2=psa

human_psa2$group="human";
virus_psa2$group="virus"
