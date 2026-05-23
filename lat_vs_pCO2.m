clear all;
close all; clc;
format short g
path (path,'C:\Users\hexe_\Desktop\Databases\Mat');


load SCC.txt;
load CC.txt;
load GT.txt;



SCC=SCC;
CC=CC;
GT=GT;

hold on
%axis([Lat03(1) Lat01(end) 200 900])
xlabel('Latitud (°N)','Fontname','times','Color','k','Fontsize',20)
ylabel('FCO_2 (mmoles C m^-^2 d^-^1)','Fontname','times','Color','k','Fontsize',20)


%SST01=SCC(:,6);
%pCO201=SCC(:,8); 
DpCO201=SCC(:,10);
%FCO21=SCC(:,12);
Lat01=SCC(:,5);
plot(Lat01, DpCO201,'.r')

%SST02=CC(:,6);
%pCO202=CC(:,8);
DpCO202=CC(:,10);
%FCO22=CC(:,12);
Lat02=CC(:,5);
plot(Lat02,DpCO202,'.b') 

%SST03=GT(:,6);
%pCO203=GT(:,8);
DpCO203=GT(:,10);
%FCO23=GT(:,12);
Lat03=GT(:,5);
plot(Lat03,DpCO203,'.g')




plot(30,30.5,'.r')
h=text(30,30.5,'SCC'); set('Fontname','times','Color','k','Fontsize',20);
plot(30,30.3,'.b')
h=text(30,30.3,'CC'); set('Fontname','times','Color','k','Fontsize',20);
plot(30,30.1,'.g')
h=text(30,30.1,'GT'); set('Fontname','times','Color','k','Fontsize',20);
