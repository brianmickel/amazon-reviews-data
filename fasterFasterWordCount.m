function [ results, timingResults ] = fasterFasterWordCount( words )
% assign frequency of occurence to each word in list


uniqueTic = tic;
[unique_words, ~, J]=unique(words);
uniqueToc = toc(uniqueTic);

frequencyTic = tic;
frequency = histc(J, 1:numel(unique_words));
frequencyToc = toc(frequencyTic);



%% Finally, print out the results
%results={ 'WORD' 'FREQ' 'REL. FREQ' };

num2cellTic = tic;
resultsToSort = num2cell(frequency);
num2cellToc = toc(num2cellTic);

horzcatTic = tic;
resultsToSort = horzcat(resultsToSort,unique_words);
horzcatToc = toc(horzcatTic);

sortRowTic = tic;
results = sortrows(resultsToSort,-1);
sortRowToc = toc(sortRowTic);

% important times
timingResults = [uniqueToc, frequencyToc, num2cellToc, horzcatToc, sortRowToc];

end

