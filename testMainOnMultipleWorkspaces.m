function [ elapsedTime ] = testMainOnMultipleWorkspaces( filename )
% Main
%% load
% Main
startTic = tic;
loadTic = tic;
load(filename)
loadToc = toc(loadTic)
% createScoreBarChart( Score );
%% split
wordSplitTic = tic;
splitBySpacesTic = tic;
[ Text ] = fasterSplitTextBySpaces( Text );
splitBySpacesToc = toc(splitBySpacesTic)

helpSplitTic = tic;
[ helpfulWords, unhelpfulWords, neutralHelpfulWords ] = fasterFasterHelpfulnessWordSplit( HelpfulnessNumerator, HelpfulnessDenominator, Text );
helpSplitToc = toc(helpSplitTic)

posSplitTic = tic;
[ positiveWords, negativeWords, neutralWords ] = fasterFasterDescriptorWordSplit( Score, Text );
posSplitToc = toc(posSplitTic)

checkTic = tic;
checkWordTotals( positiveWords, negativeWords, neutralWords, helpfulWords, unhelpfulWords, neutralHelpfulWords );
checkToc = toc(checkTic)

wordSplitToc = toc(wordSplitTic)

%% word count
wordCountTic = tic;

[resultsPositiveWords, positiveTimingResults] = fasterFasterWordCount(positiveWords);

[resultsNegativeWords, negativeTimingResults] = fasterFasterWordCount(negativeWords);

[resultsNeutralWords, neutralTimingResults] = fasterFasterWordCount(neutralWords);

[resultsHelpfulWords, helpfulTimingResults] = fasterFasterWordCount(helpfulWords);

[resultsUnhelpfulWords, unhelpfulTimingResults] = fasterFasterWordCount(unhelpfulWords);

[resultsNeutralHelpfulWords, neutralHelpfulTimingResults] = fasterFasterWordCount(neutralHelpfulWords);

wordCountToc = toc(wordCountTic)
%%
overallTimeToc = toc(startTic)

elapsedTime = [loadToc splitBySpacesToc helpSplitToc posSplitToc checkToc wordSplitToc wordCountToc overallTimeToc];

%save('resultsAll.mat')

end

