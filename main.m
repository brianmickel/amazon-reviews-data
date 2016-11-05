% Main
load('testVariableWorkspace.mat')
% createScoreBarChart( Score );
[ Text ] = splitTextBySpaces( Text );
[ helpfulWords, unhelpfulWords, neutralHelpfulWords ] = helpfulnessWordSplit( HelpfulnessNumerator, HelpfulnessDenominator, Text );
[ positiveWords, negativeWords, neutralWords ] = descriptorWordSplit( Score, Text );
checkWordTotals( positiveWords, negativeWords, neutralWords, helpfulWords, unhelpfulWords, neutralHelpfulWords );
wordcount(positiveWords, 5)
wordcount(negativeWords, 5)
wordcount(neutralWords, 5)

wordcount(helpfulWords, 5)
wordcount(unhelpfulWords, 5)
wordcount(neutralHelpfulWords, 5)
