function [ helpfulWords, unhelpfulWords, neutralHelpfulWords, timingResults ] = helpfulnessWordSplit( HelpfulnessNumerator, HelpfulnessDenominator, Text )
%decide if review is helpful or unhelpful then append review words to
% helpful list and unhelpful list
% INPUT: 
% Helpfulness Numerator
% Helpfulness Denominator
% OUTPUT:
helpfulWords = {};
unhelpfulWords = {};
neutralHelpfulWords = {};

for i = 1:size(Text,1)
    %helpful - unhelpful
    helpfulDifference = HelpfulnessNumerator(i) - (HelpfulnessDenominator(i) - HelpfulnessNumerator(i));
    if helpfulDifference > 0
        % add words from review to helpful cell array
        helpfulWords = vertcat(helpfulWords,Text{i,2});
    elseif helpfulDifference < 0
        % add words from review to unhelpful cell array
        unhelpfulWords = vertcat(unhelpfulWords,Text{i,2});
    elseif helpfulDifference == 0
        % add words from review to neutralHelpful cell array
        neutralHelpfulWords = vertcat(neutralHelpfulWords,Text{i,2});
    else
        display('error')
    end
end

