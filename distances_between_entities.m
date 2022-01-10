clc;close all; clear all;
%  load('UTM_forNWEindexFRANk1_3000');
% save('nogps_NEWindex_Frank1-3000', 'NEWindex','-V7.3');
load('/home/gryphonlab/Desktop/VASIA/07_06_19/omoioNOgps_NEWindex_Frank3001-6000');
% load('/home/gryphonlab/Desktop/VASIA/07_06_19/nogps_NEWindex_Frank1-3000')
for e=1:3000
    counter=1;
    kLA(e).m=zeros(length(NEWindex(e).m),38);
    kLO(e).m=zeros(length(NEWindex(e).m),38);
    
       for i2=1:length(NEWindex(e).m)
           
           if NEWindex(e).m(i2,6)==1
              kLA(e).m(i2,1)=NEWindex(e).m(i2,8);
              kLO(e).m(i2,1)=NEWindex(e).m(i2,9);
              
           elseif NEWindex(e).m(i2,6)==2
               kLA(e).m(i2,2)=NEWindex(e).m(i2,8);
               kLO(e).m(i2,2)=NEWindex(e).m(i2,9);
              
           elseif NEWindex(e).m(i2,6)==3
               kLA(e).m(i2,3)=NEWindex(e).m(i2,8);
               kLO(e).m(i2,3)=NEWindex(e).m(i2,9);
           
           elseif NEWindex(e).m(i2,6)==4
               kLA(e).m(i2,4)=NEWindex(e).m(i2,8);
               kLO(e).m(i2,4)=NEWindex(e).m(i2,9);
           
            elseif NEWindex(e).m(i2,6)==5
               kLA(e).m(i2,5)=NEWindex(e).m(i2,8);
              kLO(e).m(i2,5)=NEWindex(e).m(i2,9);
           elseif NEWindex(e).m(i2,6)==6
               kLA(e).m(i2,6)=NEWindex(e).m(i2,8);
              kLO(e).m(i2,6)=NEWindex(e).m(i2,9);
           
           elseif NEWindex(e).m(i2,6)==7
               kLA(e).m(i2,7)=NEWindex(e).m(i2,8);
              kLO(e).m(i2,7)=NEWindex(e).m(i2,9);
           
             elseif NEWindex(e).m(i2,6)==8
               kLA(e).m(i2,8)=NEWindex(e).m(i2,8);
              kLO(e).m(i2,8)=NEWindex(e).m(i2,9);
              
           elseif NEWindex(e).m(i2,6)==9
               kLA(e).m(i2,9)=NEWindex(e).m(i2,8);
              kLO(e).m(i2,9)=NEWindex(e).m(i2,9);
           
           elseif NEWindex(e).m(i2,6)==10
               kLA(e).m(i2,10)=NEWindex(e).m(i2,8);
              kLO(e).m(i2,10)=NEWindex(e).m(i2,9);
           
            elseif NEWindex(e).m(i2,6)==11
               kLA(e).m(i2,11)=NEWindex(e).m(i2,8);
              kLO(e).m(i2,11)=NEWindex(e).m(i2,9);
              
           elseif NEWindex(e).m(i2,6)==12
               kLA(e).m(i2,12)=NEWindex(e).m(i2,8);
              kLO(e).m(i2,12)=NEWindex(e).m(i2,9);
           
           elseif NEWindex(e).m(i2,6)==13
               kLA(e).m(i2,13)=NEWindex(e).m(i2,8);
              kLO(e).m(i2,13)=NEWindex(e).m(i2,9);
         
           elseif NEWindex(e).m(i2,6)==14
               kLA(e).m(i2,14)=NEWindex(e).m(i2,8);
              kLO(e).m(i2,14)=NEWindex(e).m(i2,9);
           
           elseif NEWindex(e).m(i2,6)==15
               kLA(e).m(i2,15)=NEWindex(e).m(i2,8);
              kLO(e).m(i2,15)=NEWindex(e).m(i2,9);
              
           elseif NEWindex(e).m(i2,6)==16
               kLA(e).m(i2,16)=NEWindex(e).m(i2,8);
              kLO(e).m(i2,16)=NEWindex(e).m(i2,9);
           
           elseif NEWindex(e).m(i2,6)==17
               kLA(e).m(i2,17)=NEWindex(e).m(i2,8);
              kLO(e).m(i2,17)=NEWindex(e).m(i2,9);
           
            elseif NEWindex(e).m(i2,6)==18
               kLA(e).m(i2,18)=NEWindex(e).m(i2,8);
              kLO(e).m(i2,18)=NEWindex(e).m(i2,9);
              
           elseif NEWindex(e).m(i2,6)==19
               kLA(e).m(i2,19)=NEWindex(e).m(i2,8);
              kLO(e).m(i2,19)=NEWindex(e).m(i2,9);
           
          elseif NEWindex(e).m(i2,6)==20
               kLA(e).m(i2,20)=NEWindex(e).m(i2,8);
              kLO(e).m(i2,20)=NEWindex(e).m(i2,9);
           
          elseif NEWindex(e).m(i2,6)==21
               kLA(e).m(i2,21)=NEWindex(e).m(i2,8);
              kLO(e).m(i2,21)=NEWindex(e).m(i2,9);
              
           elseif NEWindex(e).m(i2,6)==22
               kLA(e).m(i2,22)=NEWindex(e).m(i2,8);
              kLO(e).m(i2,22)=NEWindex(e).m(i2,9);
           
           elseif NEWindex(e).m(i2,6)==23
               kLA(e).m(i2,23)=NEWindex(e).m(i2,8);
              kLO(e).m(i2,23)=NEWindex(e).m(i2,9);
           
            elseif NEWindex(e).m(i2,6)==24
               kLA(e).m(i2,24)=NEWindex(e).m(i2,8);
              kLO(e).m(i2,24)=NEWindex(e).m(i2,9);
              
           elseif NEWindex(e).m(i2,6)==25
               kLA(e).m(i2,25)=NEWindex(e).m(i2,8);
              kLO(e).m(i2,25)=NEWindex(e).m(i2,9);
           
           elseif NEWindex(e).m(i2,6)==26
               kLA(e).m(i2,26)=NEWindex(e).m(i2,8);
              kLO(e).m(i2,26)=NEWindex(e).m(i2,9);
           
             elseif NEWindex(e).m(i2,6)==27
               kLA(e).m(i2,27)=NEWindex(e).m(i2,8);
              kLO(e).m(i2,27)=NEWindex(e).m(i2,9);
              
           elseif NEWindex(e).m(i2,6)==28
               kLA(e).m(i2,28)=NEWindex(e).m(i2,8);
               kLO(e).m(i2,28)=NEWindex(e).m(i2,9);
                      
           elseif NEWindex(e).m(i2,6)==29
               kLA(e).m(i2,29)=NEWindex(e).m(i2,8);
               kLO(e).m(i2,29)=NEWindex(e).m(i2,9);
           
            elseif NEWindex(e).m(i2,6)==30
               kLA(e).m(i2,30)=NEWindex(e).m(i2,8);
               kLO(e).m(i2,30)=NEWindex(e).m(i2,9);
              
           elseif NEWindex(e).m(i2,6)==31
               kLA(e).m(i2,31)=NEWindex(e).m(i2,8);
               kLO(e).m(i2,31)=NEWindex(e).m(i2,9);
           
           elseif NEWindex(e).m(i2,6)==32
               kLA(e).m(i2,32)=NEWindex(e).m(i2,8);
               kLO(e).m(i2,32)=NEWindex(e).m(i2,9);
                     
           elseif NEWindex(e).m(i2,6)==33
               kLA(e).m(i2,33)=NEWindex(e).m(i2,8);
               kLO(e).m(i2,33)=NEWindex(e).m(i2,9);
           
             elseif NEWindex(e).m(i2,6)==34
               kLA(e).m(i2,34)=NEWindex(e).m(i2,8);
               kLO(e).m(i2,34)=NEWindex(e).m(i2,9);
           
           elseif NEWindex(e).m(i2,6)==35
               kLA(e).m(i2,35)=NEWindex(e).m(i2,8);
               kLO(e).m(i2,35)=NEWindex(e).m(i2,9);
           
           elseif NEWindex(e).m(i2,6)==36
               kLA(e).m(i2,36)=NEWindex(e).m(i2,8);
               kLO(e).m(i2,36)=NEWindex(e).m(i2,9);
           
           elseif NEWindex(e).m(i2,6)==37
               kLA(e).m(i2,37)=NEWindex(e).m(i2,8);
               kLO(e).m(i2,37)=NEWindex(e).m(i2,9);
           
           elseif NEWindex(e).m(i2,6)==38
               kLA(e).m(i2,38)=NEWindex(e).m(i2,8);
               kLO(e).m(i2,38)=NEWindex(e).m(i2,9);
                   
           end
           
       end
      
       for i1=1:38
           temp1=[];
           temp2=[];
%             counter1=1;
           for i2=1:length(kLA(e).m)
               if kLA(e).m(i2,i1)==0 
                   continue;
               elseif kLA(e).m(i2,i1)~=0 
                   temp1=[temp1;  kLA(e).m(i2,i1)];
                   temp2=[temp2;kLO(e).m(i2,i1)];
%                    counter1=counter1+1;
               end
           end
%             metr=counter1;
%             mesoLAT=(sum(kLA(e).m(:,i1)))/counter1;
%             mesoLON=(sum(kLO(e).m(:,i1)))/counter1;
            mesoLAT=median(temp1);
            mesoLON=median(temp2);
%             
            final(i1,1)=mesoLAT;
            final(i1,2)=mesoLON;
%             metr=counter1;
%            mesoLAT=(sum(kLO(e).m(:,i1)))/counter1;
%            mesoLON=(sum(kLA(e).m(:,i1)))/counter1;
%            
%             
%            Mdl_1 = ExhaustiveSearcher(kLO(e).m(:,i1));
%            IdxNN_1 = knnsearch(Mdl_1, mesoLAT, 'K',1);
%            mesoLATnew=kLO(e).m(IdxNN_1 ,i1);
%         %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%            Mdl_2 = ExhaustiveSearcher(kLA(e).m(:,i1));
%            IdxNN_2 = knnsearch(Mdl_2, mesoLON, 'K',1);
%            mesoLONnew=kLA(e).m(IdxNN_2,i1);
% 
%            final(i1,1)=mesoLATnew;
%            final(i1,2)=mesoLONnew;

       end
            FINALmean(e).f=final;
 
       
       
%        for i1=1:38
%            temp1=[];
%            temp2=[];
%            for i2=1:length(kLA(e).m)
%                if kLA(e).m(i2,i1)==0 
%                    continue;
%                elseif kLA(e).m(i2,i1)~=0 
%                    temp1=[temp1;kLA(e).m(i2,i1)];
%                    temp2=[temp2;kLO(e).m(i2,i1)];
%                    
%                end
%            end
%             mesoLAT=mean(temp1);
%             mesoLON=mean(temp2);
%             
%             final(i1,1)=mesoLAT;
%             final(i1,2)=mesoLON;
%        end
%             FINALmean(e).f=final;
end
%  save('noGPSmedianENTITIESfr1_3000','FINALmean');
save('nogpsmeanENTITIESfr3001_6000','FINALmean');
% load('meanENTITIESfr3001_6000');
load('nogpsmeanENTITIESfr3001_6000');

