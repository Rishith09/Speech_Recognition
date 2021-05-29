clc
clear all
close all
Hello=xlsread('Hello.xlsx');
Hello1= Hello(:,1);
Hello2= Hello(:,2);
Hello3= Hello(:,3);
Hello4= Hello(:,4);
Hello5= Hello(:,5);
No=xlsread('No.xlsx');
No1= No(:,1);
No2= No(:,2);
No3= No(:,3);
No4= No(:,4);
No5= No(:,5);
Yes=xlsread('Yes.xlsx');
Yes1= Yes(:,1);
Yes2= Yes(:,2);
Yes3= Yes(:,3); 
Yes4= Yes(:,4); 
Yes5= Yes(:,5);
Good=xlsread('Good.xlsx');
Good1= Good(:,1);
Good2= Good(:,2);
Good3= Good(:,3);
Good4= Good(:,4);
Good5= Good(:,5);
Bad=xlsread('Bad.xlsx');
Bad1= Bad(:,1);
Bad2= Bad(:,2);
Bad3= Bad(:,3);
Bad4= Bad(:,4);
Bad5= Bad(:,5);
trainMatrix(:, 1) = Hello1; 
trainMatrix(:, 2) = Hello2; 
trainMatrix(:, 3) = Hello3; 
trainMatrix(:, 4) = Hello4;
trainMatrix(:, 5) = Hello5;
trainMatrix(:, 6) = No1; 
trainMatrix(:, 7) = No2; 
trainMatrix(:, 8) = No3;
trainMatrix(:, 9) = No4; 
trainMatrix(:, 10) = No5; 
trainMatrix(:, 11) = Yes1; 
trainMatrix(:, 12) = Yes2; 
trainMatrix(:, 13) = Yes3; 
trainMatrix(:, 14) = Yes4;
trainMatrix(:, 15) = Yes5;
trainMatrix(:, 16) = Good1;
trainMatrix(:, 17) = Good2;
trainMatrix(:, 18) = Good3;
trainMatrix(:, 19) = Good4;
trainMatrix(:, 20) = Good5;
trainMatrix(:, 21) = Bad1;
trainMatrix(:, 22) = Bad2;
trainMatrix(:, 23) = Bad3;
trainMatrix(:, 24) = Bad4;
trainMatrix(:, 25) = Bad5;
targetMatrix= [1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
               0 0 0 0 0 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
               0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0;
               0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 0 0 0 0 0;
               0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1];
     
           

