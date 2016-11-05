% Main
load('testVariableWorkspace.mat')
createScoreBarChart( Score );
[ Text ] = splitTextBySpaces( Text );
[ helpfulWords, unhelpfulWords, neutralHelpfulWords ] = helpfulnessWordSplit( HelpfulnessNumerator, HelpfulnessDenominator, Text );
