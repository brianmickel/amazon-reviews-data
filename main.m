% Main
loadingTic  = tic
load('testLargerVariableWorkspace.mat')
loadingToc = toc(loadingTic)

% createScoreBarChart( Score );
splitTextTic = tic
[ Text ] = splitTextBySpaces( Text );
splitTextToc = toc(splitTextTic)

helpfulTextTic = tic
[ helpfulWords, unhelpfulWords, neutralHelpfulWords ] = helpfulnessWordSplit( HelpfulnessNumerator, HelpfulnessDenominator, Text );
helpfulTextToc = toc(helpfulTextTic)

positiveTextTic = tic
[ positiveWords, negativeWords, neutralWords ] = descriptorWordSplit( Score, Text );
positiveTextToc = toc(positiveTextTic)

checkTotalsTic = tic
checkWordTotals( positiveWords, negativeWords, neutralWords, helpfulWords, unhelpfulWords, neutralHelpfulWords );
checkTotalsToc = toc(checkTotalsTic)

positiveCountTic = tic
[ resultsPositiveWords ] = wordcount(positiveWords);
positiveCountToc = toc(positiveCountTic)

negativeCountTic = tic
[ resultsNegativeWords ] = wordcount(negativeWords);
negativeCountToc = toc(negativeCountTic)

neutralCountTic = tic
[ resultsNeutralWords ] = wordcount(neutralWords);
neutralCountToc = toc(neutralCountTic)

helpfulCountTic = tic
[ resultsHelpfulWords ] = wordcount(helpfulWords);
helpfulCountToc = toc(helpfulCountTic)

unhelpfulCountTic = tic
[ resultsUnhelpfulWords ] = wordcount(unhelpfulWords);
unhelpfulCountToc = toc(unhelpfulCountTic)

neutralHelpfulCountTic = tic
[ resultsNeutralHelpfulWords ] = wordcount(neutralHelpfulWords);
neutralHelpfulCountToc = toc(neutralHelpfulCountTic)

[loadingToc splitTextToc helpfulTextToc positiveTextToc checkTotalsToc positiveCountToc negativeCountToc neutralCountToc helpfulCountToc unhelpfulCountToc neutralHelpfulCountToc]