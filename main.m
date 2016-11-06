% Main
loadingTic  = tic
load('timingWorkspace256.mat')
loadingToc = toc(loadingTic)

% createScoreBarChart( Score );
splitTextTic = tic;
[ Text ] = splitTextBySpaces( Text );
splitTextToc = toc(splitTextTic);

helpfulTextTic = tic;
[ helpfulWords, unhelpfulWords, neutralHelpfulWords ] = helpfulnessWordSplit( HelpfulnessNumerator, HelpfulnessDenominator, Text );
helpfulTextToc = toc(helpfulTextTic);

positiveTextTic = tic;
[ positiveWords, negativeWords, neutralWords ] = descriptorWordSplit( Score, Text );
positiveTextToc = toc(positiveTextTic);

checkTotalsTic = tic;
checkWordTotals( positiveWords, negativeWords, neutralWords, helpfulWords, unhelpfulWords, neutralHelpfulWords );
checkTotalsToc = toc(checkTotalsTic);

positiveCountTic = tic;
[resultsPositiveWords, positiveTimingResults] = wordcountTimed(positiveWords);
%[ resultsPositiveWords ] = wordcount(positiveWords);
positiveCountToc = toc(positiveCountTic);

negativeCountTic = tic;
[resultsNegativeWords, negativeTimingResults] = wordcountTimed(negativeWords);
%[ resultsNegativeWords ] = wordcount(negativeWords);
negativeCountToc = toc(negativeCountTic);

neutralCountTic = tic;
[resultsNeutralWords, neutralTimingResults] = wordcountTimed(neutralWords);
% [ resultsNeutralWords ] = wordcount(neutralWords);
neutralCountToc = toc(neutralCountTic);

helpfulCountTic = tic;
[resultsHelpfulWords, helpfulTimingResults] = wordcountTimed(helpfulWords);
%[ resultsHelpfulWords ] = wordcount(helpfulWords);
helpfulCountToc = toc(helpfulCountTic);

unhelpfulCountTic = tic;
[resultsUnhelpfulWords, unhelpfulTimingResults] = wordcountTimed(unhelpfulWords);
%[ resultsUnhelpfulWords ] = wordcount(unhelpfulWords);
unhelpfulCountToc = toc(unhelpfulCountTic);

neutralHelpfulCountTic = tic;
[resultsNeutralHelpfulWords, neutralHelpfulTimingResults] = wordcountTimed(neutralHelpfulWords);
% [ resultsNeutralHelpfulWords ] = wordcount(neutralHelpfulWords);
neutralHelpfulCountToc = toc(neutralHelpfulCountTic);

[positiveTimingResults; negativeTimingResults; neutralTimingResults; helpfulTimingResults; unhelpfulTimingResults; neutralHelpfulTimingResults]
[loadingToc splitTextToc helpfulTextToc positiveTextToc checkTotalsToc positiveCountToc negativeCountToc neutralCountToc helpfulCountToc unhelpfulCountToc neutralHelpfulCountToc]