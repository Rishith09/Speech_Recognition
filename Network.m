clc
inputs = trainMatrix; 
targets = targetMatrix;
hiddenLayerSize = 90; 
net = patternnet(hiddenLayerSize);
net.inputs{1}.processFcns={'removeconstantrows','mapminmax'};
net.outputs{2}.processFcns={'removeconstantrows','mapminmax'};
net.divideFcn = 'dividerand';
net.divideMode = 'sample';
net.divideParam.trainRatio = 70/100;
net.divideParam.valRatio = 15/100;
net.divideParam.testRatio = 15/100;
net.trainFcn = 'traingd';
net.performFcn = 'mse';
net.plotFcns = {'plotperform','plottrainstate','ploterrhist','plotregression','plotfit'};
[net,tr] = train(net,inputs,targets);
outputs = net(inputs); 
errors = gsubtract(targets,outputs); 
performance = perform(net,targets,outputs);
trainTargets = targets .* tr.trainMask{1}; 
valTargets = targets .* tr.valMask{1}; 
testTargets = targets .* tr.testMask{1}; 
trainPerformance = perform(net,trainTargets,outputs); 
valPerformance = perform(net,valTargets,outputs); 
testPerformance = perform(net,testTargets,outputs);
view(net)
