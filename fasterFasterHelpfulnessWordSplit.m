function [ helpfulWords, unhelpfulWords, neutralHelpfulWords, timingResults ] = fasterFasterHelpfulnessWordSplit( HelpfulnessNumerator, HelpfulnessDenominator, Text )
%decide if review is helpful or unhelpful then append review words to
% helpful list and unhelpful list
% INPUT: 
% Helpfulness Numerator
% Helpfulness Denominator
% OUTPUT:
helpfulWords = {};
unhelpfulWords = {};
neutralHelpfulWords = {};

helpfulDifference(:) = HelpfulnessNumerator(:) - (HelpfulnessDenominator(:) - HelpfulnessNumerator(:));
helpfulLogicalArray = helpfulDifference > 0;
unhelpfulLogicalArray = helpfulDifference < 0;
neutralHelpfulLogicalArray = helpfulDifference == 0;

allIndexes = [1:size(Text,1)];
helpfulIndexes = allIndexes(helpfulLogicalArray);
unhelpfulIndexes = allIndexes(unhelpfulLogicalArray);
neutralhelpfulIndexes = allIndexes(neutralHelpfulLogicalArray);

if sum(helpfulLogicalArray) > 0
    helpfulEvalString = [];
    % add words from review to helpful cell array
    for i = 1:size(helpfulIndexes,2)
        j = helpfulIndexes(i);
        helpfulEvalString = [helpfulEvalString,',Text{',num2str(j),',2}'];
    end
    helpfulEvalString = ['vertcat(',helpfulEvalString(2:end) ,')'];
    helpfulWords = eval(helpfulEvalString);
end

if sum(unhelpfulLogicalArray) > 0
    unhelpfulEvalString = [];
    % add words from review to unhelpful cell array
    for i = 1:size(unhelpfulIndexes,2)
        j = unhelpfulIndexes(i);
        unhelpfulEvalString = [unhelpfulEvalString,',Text{',num2str(j),',2}'];
    end
    unhelpfulEvalString = ['vertcat(',unhelpfulEvalString(2:end) ,')'];
    unhelpfulWords = eval(unhelpfulEvalString);
end

if sum(neutralHelpfulLogicalArray) > 0
    neutralHelpfulEvalString = [];
    % add words from review to neutralHelpful cell array
    for i = 1:size(neutralhelpfulIndexes,2)
        j = neutralhelpfulIndexes(i);
        neutralHelpfulEvalString = [neutralHelpfulEvalString,',Text{',num2str(j),',2}'];
    end
    neutralHelpfulEvalString = ['vertcat(',neutralHelpfulEvalString(2:end) ,')'];
    neutralHelpfulWords = eval(neutralHelpfulEvalString);
end

end


