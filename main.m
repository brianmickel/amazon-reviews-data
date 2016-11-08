% Main
tic
load('timingWorkspace64.mat')

% createScoreBarChart( Score );
[ Text ] = splitTextBySpaces( Text );

[ helpfulWords, unhelpfulWords, neutralHelpfulWords ] = helpfulnessWordSplit( HelpfulnessNumerator, HelpfulnessDenominator, Text );

[ positiveWords, negativeWords, neutralWords ] = descriptorWordSplit( Score, Text );

checkWordTotals( positiveWords, negativeWords, neutralWords, helpfulWords, unhelpfulWords, neutralHelpfulWords );

[resultsPositiveWords, positiveTimingResults] = fasterFasterWordCount(positiveWords);

[resultsNegativeWords, negativeTimingResults] = fasterFasterWordCount(negativeWords);

[resultsNeutralWords, neutralTimingResults] = fasterFasterWordCount(neutralWords);

[resultsHelpfulWords, helpfulTimingResults] = fasterFasterWordCount(helpfulWords);

[resultsUnhelpfulWords, unhelpfulTimingResults] = fasterFasterWordCount(unhelpfulWords);

[resultsNeutralHelpfulWords, neutralHelpfulTimingResults] = fasterFasterWordCount(neutralHelpfulWords);
toc
