function [ helpfulWords, unhelpfulWords, neutralHelpfulWords, timingResults ] = fasterHelpfulnessWordSplit( HelpfulnessNumerator, HelpfulnessDenominator, Text )
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
neutralhelpfulLogicalArray = helpfulDifference == 0;

allIndexes = [1:size(Text,1)];
helpfulIndexes = allIndexes(helpfulLogicalArray);
unhelpfulIndexes = allIndexes(unhelpfulLogicalArray);
neutralhelpfulIndexes = allIndexes(neutralhelpfulLogicalArray);

% add words from review to helpful cell array
for i = 1:size(helpfulIndexes,2)
    j = helpfulIndexes(i);
    helpfulWords = vertcat(helpfulWords,Text{j,2});
end

% add words from review to unhelpful cell array
for i = 1:size(unhelpfulIndexes,2)
    j = unhelpfulIndexes(i);
    unhelpfulWords = vertcat(unhelpfulWords,Text{j,2});
end

% add words from review to neutralHelpful cell array
for i = 1:size(neutralhelpfulIndexes,2)
    j = neutralhelpfulIndexes(i);
    neutralHelpfulWords = vertcat(neutralHelpfulWords,Text{j,2});
end

end


