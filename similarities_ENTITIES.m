clc; clear all; close all;
load('gpsmeanENTITIESfr1_3000');
numOfLevels = 5;
numOfBranches = 10;
for e=1:3000
Compare.difference=ones(length(FINALmean(e).f),length(FINALmean(e).f))*0.2929; 
for i=1:size(FINALmean(e).f,1)
   for j=i:size(FINALmean(e).f,1)
      unit1 = FINALmean(i).f(i,:);%/norm(FINALmean(i).f(i,:));
      unit2 = FINALmean(j).f(j,:);%/norm(FINALmean(j).f(j,:));
      Compare.difference(i, j) = 1 - 0.5*norm(unit1 - unit2);      
    end
end
    
  for i = 1:size(Compare.difference,1)
     Compare.difference(i,i) = 0;
 end

 figure(1);
 clf;
 imagesc(Compare.difference);
  loops = zeros(size(Compare.difference));
 loopsIds = Compare.difference > 0.35; 
 loops(loopsIds) = 1;
 figure(2);
 clf;
 spy(loops);
 sum = 0;
for i=1:(size(loops,2))
    for j=i:(size(loops,2))
        if loops(i,j) == 1
            sum = sum + 1;
        end
    end
end
disp(sum);
simMatrix=Compare.difference;
similarityEN(e).s=simMatrix;
end
save('similarENTfr1-3000','similarityEN','-v7.3');