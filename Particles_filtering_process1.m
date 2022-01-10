clc;close all;clear all;
load('/home/gryphonlab/Desktop/VASIA/GLOBAL_COOR_070619/UTM_forNWEindexFRANk1_3000');
% load('/home/gryphonlab/Desktop/VASIA/07_06_19/omoioNOgps_NEWindex_Frank1-3000');
% for j=1:50
%     MEDIAN_gps(j,1)=median(cr(j).utm(:,7));
% end 
% for e=1:1:3000
% temp=[];
%       counter1=1;
% for i=1:1:length(cr(e).utm)
% counter=1;
%    if cr(e).utm(i,3)==128 && cr(e).utm(i,4)==64 && cr(e).utm(i,5)==128
%     DROMOS(e).dr(counter1,1:2)=cr(e).utm(i,7:8);
%     DROMOS(e).dr(counter1,3)=e;
% %      k(counter,1)=cr(e).utm(i,7);
% %      k(counter,2)=cr(e).utm(i,8);
% %      k(counter,3)=e;
% %      frank=[frank; k];
%      counter1=counter1+1;
% %      
% %      temp=[temp;counter1];
% %      
%    else 
%        continue;
% %      counter1=counter1+1;
%     end
% end
% % metr(e).cn=temp;   
% end
%   save('DROMOS_FR','DROMOS','-v7.3');
% frank=[];
% for M=1:3000
%     frank=[frank; DROMOS(M).dr];
%     
% %     M=M+1;
% % end
% load('FRANKFURTmetr')
% load('FRANKFURT');
load('NEWnewTranFORMATION1-3000');
load('DROMOS_FR');
load('similarity_weightsNEW6000');
figure(1);
  clf;
  imagesc(Compare.difference);
% load('D_ROBOT');
% load('D_PARTICLES');
counterp=1;
tic;
for l1=1:3:3000
    PARTICLES(counterp,1:3)=DROMOS(l1).dr(1,:);
%     PARTICLES(counterp+1,1:3)=DROMOS(l1).dr(1,:);
    counterp=counterp+1;
end
counterp1=1;

for kl=2:2:1000
    PARTICLES1(kl,1:3)=PARTICLES(counterp1,1:3);
%     PARTICLES(counterp+1,1:3)=DROMOS(l1).dr(1,:);
    counterp1=counterp1+1;
end
for kl1=1:2:1000
    PARTICLES1(kl1,1:3)=PARTICLES1(kl1+1,1:3);
%     PARTICLES(counterp+1,1:3)=DROMOS(l1).dr(1,:);
%     counterp1=counterp1+1;
end
p= PARTICLES1;
for a=1:2:1000
    p(a,4)=100;
end
for a1=4:2:1000
    p(a1,4)=-100;
end
p(2,4)=100;
   
for th1=1:3000
    for th2=1:3000
       if Compare.difference(th1,th2)==0
          Compare.difference(th1,th2)=1;
       end
        if Compare.difference(th1,th2)<0.6
            Compare.difference(th1,th2)=0;
        end
    end
end

for e=1:2:1000
    transac1(e).tr(1:4,1:3)=[1 0 0;0 1 0; 0 0 -1; 0 0 0];
    %transac1(e).tr(1:4,1:3)=transac(e).tr(1:4,1:3);
    transac1(e).tr(1,4)=p(e,2);
    transac1(e).tr(2,4)=0;
    transac1(e).tr(3,4)=p(e,1);
    transac1(e).tr(4,4)=1;
end
for e=4:2:1000
    transac1(e).tr(1:4,1:3)=[1 0 0;0 1 0; 0 0 1; 0 0 0];
    %transac1(e).tr(1:4,1:3)=transac(e).tr(1:4,1:3);
    transac1(e).tr(1,4)=p(e,2);
    transac1(e).tr(2,4)=0;
    transac1(e).tr(3,4)=p(e,1);
    transac1(e).tr(4,4)=1;
end
transac1(2).tr(1:4,1:3)=[1 0 0;0 1 0; 0 0 -1; 0 0 0];
    %transac1(e).tr(1:4,1:3)=transac(e).tr(1:4,1:3);
    transac1(2).tr(1,4)=p(2,2);
    transac1(2).tr(2,4)=0;
    transac1(2).tr(3,4)=p(2,1);
    transac1(2).tr(4,4)=1;
for e=1:3000
     newM1(e).m(1:3,1:3)=newM(e).m(1:3,1:3);
     %newM1(e).m(2,1:3)=newM(e).m(3,1:3);
     %newM1(e).m(3,1:3)=newM(e).m(2,1:3);
     %newM1(e).m(1,1:3)=newM(e).m(1,1:3);  
    newM1(e).m(1,4)=newM(e).m(1,4);
    newM1(e).m(2,4)=newM(e).m(2,4);
    newM1(e).m(3,4)=newM(e).m(3,4);
    newM1(e).m(4,:)=newM(e).m(4,:);
end
C{1000,3000} = [];
% PART=zeros(5,50);
for e=2:3000
    PART=[];
    tempN=[];
    tempN1=[];
    eikona1=[];
    eikona2=[];
meria=[];
for t=1:1000
    angle=p(t,4);
    index1=p(t,3);
    K(1).k=transac1(t).tr;
    C{t,1}=K(1).k;
    K(e).k=(C{t,e-1})*newM1(e).m;
    C{t,e}=K(e).k;
    temp=C{t,e};
    tempP=temp(:,4);
    tempPa(1,2)=tempP(1,1);
    tempPa(1,1)=tempP(3,1);
    if angle==-100%t==4 || t==6 || t==10
    index1=index1-(e-1);
    else
            index1=index1+(e-1);
      
    end
       if index1<=0
           index1=1;
       end
       if index1>=3000
           index1=3000;
       end
eikona1=[eikona1;index1];
%y=tempPa(1,1);
%y2=tempPa(1,2);
%IdxNN=knnsearch(Mdlm, y, 'K', 1);
%IdxNN2=knnsearch(Mdlm2, y2, 'K', 1);
%tempN=[tempN;IdxNN];
%tempN1=[tempN1;y];
%index1=frank(IdxNN,3);
%index2=frank(IdxNN2,3);
%if index1~=index2
%tempPa(1,1)=frank(index1,1);
%tempPa(1,2)=frank(index1,2);
%end
    d=Compare.difference(e,index1);
   %PART(t1,e)=tempN1;
    PART=[PART;tempPa];
    final(t,e)=d';
  meria=[meria;angle];
%     eikona2=[eikona2;index2];
    end
   IND1(e).ind(:,1)=eikona1;
   %IND2(e).ind(:,1)=eikona2;
   %PART(t1,e)=tempN1;
   %[weights,X_update]=Standardised_Resample(final(t,e),t);
   %newP(:,1)=
   N = size(PART, 1);
   maximumW = max(final(:,e));
   % Startindex zuf?llig ziehen
   index = randi(N,1);
   % Laufvariable im Verteilungskreis
   beta = 0;
   ArPart=zeros(1,1);
   resampled = zeros(1,3);
    for y=1:N
        beta = beta + rand() * 2*maximumW; % (gleichverteilt)
        while beta > final(index,e)
            beta = beta - final(index,e);
            index = mod(index+1, N)+1;
        end
        resampled(y,1) = PART(index,1);
        resampled(y,2) = PART(index,2);
        
         resampled(y,3)= index;
         resampled(y,4)=meria(index,1);
        ArPart(y,1) =index;
        %transacNew(e).tr(1:4,1:3)=transac1(e-1).tr(1:4,1:3);
        
%         resampled(y,3)= index;
    end
    [tax  I]=sort(resampled(:,3));
    for g=1:1000
          resampled1(g,1)=resampled(I(g,1),1);
          resampled1(g,2)=resampled(I(g,1),2);
          resampled1(g,3)=resampled(I(g,1),4);
    end
% resampled1(g,1)=resampled(tax(g,1),1);
% resampled1(g,2)=resampled(tax(g,1),2);
 %   ki=sort(ArPart);
    fPAR1(e).particles=resampled1(:,1);
    fPAR2(e).particles(:,:)=resampled1(:,2);
    fPAR3(e).particles(:,:)=resampled1(:,3);
  
    %estim(t,e)=resampled(t,e);
    
for kf=1:1000
t1=C{tax(kf,1),e};
p(kf,3)=tax(kf,1);
p(kf,4)=resampled1(kf,3);
%t1(1,4)=fPAR2(e).particles(kf,1);
%t1(3,4)=fPAR1(e).particles(kf,1);

C1(kf).h=t1; 
% t1=C{k,e};
% t1(1,4)=fPAR2(e).particles(k,1);
% t1(3,4)=fPAR1(e).particles(k,1);
% C{k,e}=t1;
end
for te=1:1000
    
C{te,e}=C1(te).h;
end
end
toc;
for w1=1:1000
for w2=1:3000
    %C={k,1:3000};
    M(w2).p=C{w1,w2};
    XYZ=[M(w2).p(1:3,4)];
    XYZ1=XYZ';
    sys(w2,:)=XYZ1; 
  end
FINALparticles(w1).ur=sys;
colors=jet(3500000);
colors=colors(randperm(size(colors,1)),:);
h=figure;
plot (FINALparticles(w1).ur(:,3), FINALparticles(w1).ur(:,1), '.', 'color', colors(2,:));
 xlabel('x');
 ylabel('y');
 zlabel('z');
 

% saveas(h,sprintf('/home/gryphonlab/Desktop/images_particles/FIG%d.png',w1));
 hold off; 

end
save('PARTICLES_C','FINALparticles','-v7.3');

% n=5;
% s=zeros(2,n);
% mean_s = zeros(1, n);
% % for k = 1 : 1000
% 
% % indexes = randperm(length(frank), 5);
% % s(1,:) = frank(indexes,1);
% % s(2,:) = frank(indexes,2);
% 
% % % % mean_s(k) = mean(s);
% % % % if rem(k, 500) == 0
% % % % fprintf('Done with %d of %d experiments\n', k, n);
% % % % end
% % % % end
% Mdlm=ExhaustiveSearcher(frank(:,:));
% % Mdlm2=ExhaustiveSearcher(frank(:,2));
% % part=s';
% acc=0;
% for p1=1:50
% acc=acc+size(metr(p1).cn,1);
% k(1,p1)=acc;
% end
% TEMfinal=k';
% Mdl=ExhaustiveSearcher(TEMfinal);

% tempNn=[];
% tempN1n=[];

% for t1=1:5
% yT=part(t1,1);
% IdxNNr=knnsearch(Mdlm, yT, 'K', 1);
% tempNn=[tempNn;IdxNNr];
% tempN1n=[tempN1n;yT];
% end
% tempNn(:,2)=tempN1n;

% k=k';
% s=s';
% p_test=s;

% p(1,1)=frank(5000,1);
% p(1,2)=frank(5000,2);
% p(1,3)=frank(5000,3);
% p(1,4)=100;
% 
% p(2,1)=frank(5000,1);
% p(2,2)=frank(5000,2);
% p(2,3)=frank(5000,3);
% p(2,4)=100;
% 
% p(3,1)=frank(240000,1);
% p(3,2)=frank(240000,2);
% p(3,3)=frank(240000,3);
% p(3,4)=100;
% 
% p(4,1)=frank(240000,1);
% p(4,2)=frank(240000,2);
% p(4,3)=frank(240000,3);
% p(4,4)=-100;
% 
% p(5,1)=frank(500000,1);
% p(5,2)=frank(500000,2);
% p(5,3)=frank(500000,3);
% p(5,4)=100;
% 
% p(6,1)=frank(500000,1);
% p(6,2)=frank(500000,2);
% p(6,3)=frank(500000,3);
% p(6,4)=-100;
% 
% p(7,1)=frank(696520,1);
% p(7,2)=frank(696520,2);
% p(7,3)=frank(696520,3);
% p(7,4)=100;
% 
% p(8,1)=frank(696520,1);
% p(8,2)=frank(696520,2);
% p(8,3)=frank(696520,3);
% p(8,4)=-100;
% 
% p(9,1)=frank(1023639,1);
% p(9,2)=frank(1023639,2);
% p(9,3)=frank(1023639,3);
% p(9,4)=100;
% 
% p(10,1)=frank(1023639,1);
% p(10,2)=frank(1023639,2);
% p(10,3)=frank(1023639,3);
% p(10,4)=-100;





































%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% p(1,2)=frank(1,2);
% p(2,1)=frank(1000,1);
% p(2,2)=frank(1000,2);
% p(3,1)=frank(28379,1);
% p(3,2)=frank(28379,2);
% p(4,1)=frank(40208,1);
% p(4,2)=frank(40208,2);
% p(5,1)=frank(60000,1);
% p(5,2)=frank(60000,2);
% weightsP=rand(3000,5);
% weightsP(1,1:5)=1/5;
% weightsRobot=rand(3000,1);
% % % p(1,1)=1;
% % % p(1,2)=1;
% % % p(2,1)=100;
% % % p(2,2)=300;
% % % p(3,1)=1000;
% % % p(3,2)=2000;
% % % p(4,1)=500;
% % % p(4,2)=500;
% % % p(5,1)=980;
% % % p(5,2)=800;
% for y1=1:3000
%     for y2=1:5
%     end
% end
%%%%%%%%%%w = measurementProbabilities(p, Z, landmarks, measurementNoiseVariance);
%%%%%%%%%%Messungen resamplen (ziehen mit Zurücklegen mit Wahrscheinlichkeit w):
%%%%%%%%%%Partikel mit geringerer Wahrscheinlichkeit werden seltener gezogen, wodurch sie gegenüber
%%%%%%%%%%Partikeln mit hoher Wahrscheinlichkeit auf Dauer aussterben.
%%%%%%%%%%p = resampleParticles(p, w);
%%%%%%%%%%Schutzung beziehen
%%%%%%%%%%estimated = mean(p);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
