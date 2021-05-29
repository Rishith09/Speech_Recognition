clc
clear all
close all
[g1,f]=audioread('Hello_4.wav');
G1=mfcc(g1,f,"LogEnergy","Ignore");
G1=G1(:,1,1);
