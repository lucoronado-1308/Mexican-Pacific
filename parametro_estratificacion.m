clear all;
close all; clc;
format short g
path (path,'C:\Users\Usuario\Desktop\Databases\Mat');


load est_scc.txt;
load est_cc.txt;
load est_gt.txt;



SCC=est_scc;
CC=est_cc;
GT=est_gt;


hold on
%axis([Lat03(1) Lat01(end) 200 900])
xlabel('Latitud (°N)','Fontname','times','Color','k','Fontsize',20)
%ylabel('?pCO_2 (µatm)','Fontname','times','Color','k','Fontsize',20)
ylabel('phi (J m^-^3)','Fontname','times','Color','k','Fontsize',20)


est01=SCC(:,3);
Lat01=SCC(:,2);
plot(Lat01,est01,'.r')

est02=CC(:,3);
Lat02=CC(:,2);
plot(Lat02,est02,'.b') 

est03=GT(:,3);
Lat03=GT(:,2);
plot(Lat03,est03,'.g')



