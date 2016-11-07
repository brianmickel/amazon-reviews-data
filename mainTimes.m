function [ timedResults ] = mainTimes( filename )

% Main
loadingTic  = tic;
load(filename)
loadingToc = toc(loadingTic);

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
numberOfWords = checkWordTotals( positiveWords, negativeWords, neutralWords, helpfulWords, unhelpfulWords, neutralHelpfulWords );
checkTotalsToc = toc(checkTotalsTic);

wordsCellArray = {positiveWords, negativeWords, neutralWords, helpfulWords, unhelpfulWords, neutralHelpfulWords}
[ timedResults ] = compareWordCountSpeeds( wordsCellArray );

%times = [numberOfWords loadingToc splitTextToc helpfulTextToc positiveTextToc checkTotalsToc];


end

