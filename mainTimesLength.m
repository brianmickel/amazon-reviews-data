function [ results, timedResults ] = mainTimesLength( filename )

% Main
loadingTic  = tic;
load(filename)
loadingToc = toc(loadingTic);

helpfulTextTic = tic;
[ helpfulLengths, unhelpfulLengths, neutralHelpfulLengths ] = helpfulnessLengthSplit( HelpfulnessNumerator, HelpfulnessDenominator, Text );
helpfulTextToc = toc(helpfulTextTic);

positiveTextTic = tic;
[ positiveLengths, negativeLengths, neutralLengths ] = descriptorLengthSplit( Score, Text );
positiveTextToc = toc(positiveTextTic);

timedResults = [loadingToc helpfulTextToc positiveTextToc];
results = {};
results{1,1} = helpfulLengths;
results{1,2} = unhelpfulLengths;
results{1,3} = neutralHelpfulLengths;
results{1,4} = positiveLengths;
results{1,5} = negativeLengths;
results{1,6} = neutralLengths;

names = {'helpfulLengths';
    'unhelpfulLengths';
    'neutralHelpfulLengths';
    'positiveLengths';
    'negativeLengths';
    'neutralLengths'};
for i = 1:6
    figure(i)
    histogram(results{1,i});
    titleForFigureName = names(i);
    figureName = strcat(char(titleForFigureName), '.png');
    saveas(gcf,figureName);
    close(gcf);
end


end

