clear all; close all; clc;
%Data preparation
posNum = 1000;
ratioPosNeg = 0.5;
[pairFeat pairLabel] = dataPreparation(posNum, ratioPosNeg);
%SVM, train, cross-volidation, test;  
[modelSVM] = svmMetricLearning(pairFeat, pairLabel);
%Save
save(modelSVM);