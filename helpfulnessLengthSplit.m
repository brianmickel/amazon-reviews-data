function [ helpfulLengths, unhelpfulLengths, neutralHelpfulLengths ] = helpfulnessLengthSplit( HelpfulnessNumerator, HelpfulnessDenominator, Text )
%decide if review is helpful or unhelpful then append review words to
% helpful list and unhelpful list
% INPUT: 
% Helpfulness Numerator
% Helpfulness Denominator
% OUTPUT:
helpfulLengths = [];
unhelpfulLengths = [];
neutralHelpfulLengths = [];

for i = 1:size(Text,1)
    %helpful - unhelpful
    helpfulDifference = HelpfulnessNumerator(i) - (HelpfulnessDenominator(i) - HelpfulnessNumerator(i));
    if helpfulDifference > 0
        % add length of review to helpful array
        helpfulLengths(end+1) = size(Text{i,1},2);
    elseif helpfulDifference < 0
        % add length of review to unhelpful array
        unhelpfulLengths(end+1) = size(Text{i,1},2);
    elseif helpfulDifference == 0
        % add length of review to neutralHelpful array
        neutralHelpfulLengths(end+1) = size(Text{i,1},2);
    else
        display('error')
    end
end

