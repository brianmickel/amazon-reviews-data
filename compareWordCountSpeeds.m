function [ timedResults ] = compareWordCountSpeeds( wordsCellArray )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

timedResults = zeros(3, numel(wordsCellArray));
for i = 1:numel(wordsCellArray)
    
    countTic = tic;
    [ ~ ] = wordcountTimed(wordsCellArray{i});
    countToc = toc(countTic);
    
    fasterCountTic = tic;
    [ ~ ] = fasterWordCount(wordsCellArray{i});
    fasterCountToc = toc(fasterCountTic);
    
    fasterFasterCountTic = tic;
    [ ~ ] = fasterFasterWordCount(wordsCellArray{i});
    fasterFasterCountToc = toc(fasterFasterCountTic);

    timedResults(1,i) = countToc;
    timedResults(2,i) = fasterCountToc;
    timedResults(3,i) = fasterFasterCountToc;
    i
end

