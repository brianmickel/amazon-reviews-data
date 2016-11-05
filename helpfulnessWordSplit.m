function [ helpfulWords, unhelpfulWords, neutralHelpfulWords ] = helpfulnessWordSplit( HelpfulnessNumerator, HelpfulnessDenominator, Text )
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
    helpfulDifference = HelpfulnessNumerator(i) - (HelpfulnessDenominator(i) - HelpfulnessNumerator(i))
    if helpfulDifference > 0
        % add words from review to helpful cell array
%         nWords = size(Text{i,2},1);
%         currentHWSize = size(helpfulWords,1);
%         helfulWords{currentHWSize+1:currentHWSize+1+nWords,1} = Text{i,2}(:,1);
        helpfulWords = vertcat(helpfulWords,Text{i,2});
        display('h')
        display(helpfulDifference)
    elseif helpfulDifference < 0
        % add words from review to unhelpful cell array
%         nWords = size(Text{i,2},1);
%         currentUHWSize = size(unhelpfulWords,1);
%         unhelfulWords{currentUHWSize+1:currentUHWSize+1+nWords,1} = Text{i,2}(:,1);
        unhelpfulWords = vertcat(unhelpfulWords,Text{i,2});
        display('u')
        display(helpfulDifference)
    elseif helpfulDifference == 0
        % add words from review to neutralHelpful cell array
%         nWords = size(Text{i,2},1);
%         currentNHWSize = size(neutralHelpfulWords,1);
%         neutralhelfulWords{currentNHWSize+1:currentNHWSize+1+nWords,1} = Text{i,2}(:,1);
        neutralHelpfulWords = vertcat(neutralHelpfulWords,Text{i,2});
        display('n')
        display(helpfulDifference)
    else
        display('error')
    end
end

