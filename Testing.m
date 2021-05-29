clc
TestSound1 = xlsread('Test.xlsx'); 
TestSound = TestSound1(:,4); 
myNetwork1 = net;
ResultMatrix = sim(myNetwork1, TestSound); 
[Max,Index]=max(ResultMatrix(:)); 
if Index == 1 
    disp('The word is Hello'); 
elseif Index == 2 
    disp('The word is No'); 
elseif Index == 3 
    disp('The word is Yes'); 
elseif Index == 4 
    disp('The word is Good'); 
elseif Index == 5 
    disp('The word is Bad'); 
end