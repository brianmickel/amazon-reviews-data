% Main
tic
load('timingWorkspace64.mat')

% createScoreBarChart( Score );
[ Text ] = splitTextBySpaces( Text );

[ helpfulWords, unhelpfulWords, neutralHelpfulWords ] = helpfulnessWordSplit( HelpfulnessNumerator, HelpfulnessDenominator, Text );

[ positiveWords, negativeWords, neutralWords ] = descriptorWordSplit( Score, Text );

checkWordTotals( positiveWords, negativeWords, neutralWords, helpfulWords, unhelpfulWords, neutralHelpfulWords );

[resultsPositiveWords, positiveTimingResults] = fasterWordCount(positiveWords);

[resultsNegativeWords, negativeTimingResults] = fasterWordCount(negativeWords);

[resultsNeutralWords, neutralTimingResults] = fasterWordCount(neutralWords);

[resultsHelpfulWords, helpfulTimingResults] = fasterWordCount(helpfulWords);

[resultsUnhelpfulWords, unhelpfulTimingResults] = fasterWordCount(unhelpfulWords);

[resultsNeutralHelpfulWords, neutralHelpfulTimingResults] = fasterWordCount(neutralHelpfulWords);
toc
