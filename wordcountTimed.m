function [results, timingResults] = wordcountTimed(words)

% NAME: Wordcount (Written on Apr 8, 2008)
%
% AUTHOR: Suri Like ( surilike@gmail.com )
% Modified to work for Amazon Review Project 
% Brian Mickel


%% Now count the number of times each word appears
uniqueTic = tic;
unique_words = unique(words);
uniqueToc = toc(uniqueTic);

%preallocate
freq = zeros(numel(unique_words), 1);

frequencyTic =tic;
for i = 1:numel(unique_words)
    for j = 1:numel(words)
        if strcmp(words(j), unique_words{i})
            freq(i) = freq(i) + 1;
        end
    end
end
frequencyToc = toc(frequencyTic);

%% Finally, print out the results
%results={ 'WORD' 'FREQ' 'REL. FREQ' };

num2cellTic = tic;
resultsToSort = num2cell(freq);
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
