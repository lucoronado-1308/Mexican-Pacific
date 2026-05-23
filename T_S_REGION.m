
%clear all;
close all; clc;
format short g

load flujo_scc.txt;
load flujo_cc.txt;
load flujo_gt.txt;



SCC=flujo_scc;
CC=flujo_cc;
GT=flujo_gt;

%Creamos la malla para el diagrama TS GENERAL
let=10;let2=8;Flet='bold';
h1=axes('Position',[.1 .1 .8 .8]);
[s,t]=meshgrid(33.0:.5:36.0,16:31); %Salinidad, Temperatura
sigmat=[sw_dens0(s,t)-1000];
e=[15:1:33];
c=contour(s,t,sigmat,e);
z=clabel(c); 
hold on
xlabel('Salinity','Fontname','arial','Color','k','Fontsize',16)
ylabel('Temperature (ºC)','Fontname','arial','Color','k','Fontsize',16)


%Datos para el diagrama TS general
t01=SCC(:,6); 
s01=SCC(:,7);
plot(s01,t01,'.r')

t02=CC(:,6);
s02=CC(:,7);
plot(s02,t02,'.b') 

t03=GT(:,6); 
s03=GT(:,7);
plot(s03,t03,'.g')


%MASAS DE AGUA DE ACUERDO CON PORTELA ET AL (2016) 
%(MODIFICADAS DE TORRES OROZCO, 1993)

%TrW=Atr Aguas de Transicion
h100=text(34,23,'TW'); set(h100,'Fontname','arial','Color','k','Fontsize',16);

%WGC=AGC Agua del Golfo de California
h100=text(35.2,28,'GCW'); set(h100,'Fontname','arial','Color','k','Fontsize',16);
[hs11]=line([35.11 35.11],[ 16  16]); 
[hs1]=line([35.11 35.11],[ 16 31]);
HS=[hs11 hs1]; set(HS,'Color','k','Linewidth',1,'LineStyle','-');

%StSsW=AStS, AguaSubtropicalSubsuperficial 
h=text(34.65,17,'StSsW'); set(h,'Fontname','arial','Color','k','Fontsize',16);
[hs1]=line([34.6 34.6],[ 16 18]);
[hs2]=line([35.11 35.11],[ 16 16]);
[hs22]=line([34.6 35.11],[18 18]);
HS=[hs11 hs1 hs2 hs22]; set(HS,'Color','k','Linewidth',1,'LineStyle','-');

%TSW=ATS Agua Tropical Superficial
h=text(33.3,30,'TSW'); set(h,'Fontname','arial','Color','k','Fontsize',16);
[hs11]=line([33 34.6],[ 25.2  25.2]);
[hs1]=line([34.6 34.6],[ 25.2 31]);
HS=[hs11 hs1]; set(HS,'Color','k','Linewidth',1,'LineStyle','-');

%CCW=ACC Agua de la Corriente de California
h=text(33.3,20,'CCW'); set(h,'Fontname','arial','Color','k','Fontsize',16);
[hs1]=line([34.6 34.6],[ 18  21]);
[hs2]=line([33 34.6],[ 21 21]);
HS=[hs1 hs11 hs2]; set(HS,'Color','k','Linewidth',1,'LineStyle','-');


%Leyenda
plot(33.65,18.5,'.r')
h=text(33.7,18.5,'SCC'); set(h100,'Fontname','arial','Color','k','Fontsize',16);
plot(33.65,18,'.g')
h=text(33.7,18,'CC'); set(h100,'Fontname','arial','Color','k','Fontsize',16);
plot(33.65,17.5,'.b')
h=text(33.7,17.5,'GT'); set(h100,'Fontname','arial','Color','k','Fontsize',16);


