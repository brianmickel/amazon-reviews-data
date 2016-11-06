function [numberOfWords ] = checkWordTotals( positiveWords, negativeWords, neutralWords, helpfulWords, unhelpfulWords, neutralHelpfulWords )
%check if descriptorWordSplit and helpfulnessWordSplit both work
%   
wordTotalDescriptor = size(positiveWords,1) + size(negativeWords,1) + size(neutralWords,1);
wordTotalHelpfulnes = size(helpfulWords,1) + size(unhelpfulWords,1) + size(neutralHelpfulWords,1);

if wordTotalDescriptor == wordTotalHelpfulnes
    display('success');
else
    display('go find the bug!')
end

numberOfWords = wordTotalDescriptor
end

