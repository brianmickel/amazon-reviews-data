function [ positiveWords, negativeWords, neutralWords ] = fasterFasterDescriptorWordSplit( Score, Text )
%decide if review is helpful or unhelpful then append review words to
% helpful list and unhelpful list
% INPUT: 
% score 1-5
% OUTPUT:
positiveWords = {};
negativeWords = {};
neutralWords = {};

positiveLogicalArray = Score > 3;
negativeLogicalArray = Score < 3;
neutralLogicalArray = Score == 3;

allIndexes = [1:size(Text,1)];
positiveIndexes = allIndexes(positiveLogicalArray);
negativeIndexes = allIndexes(negativeLogicalArray);
neutralIndexes = allIndexes(neutralLogicalArray);
%% POSITIVE

if sum(positiveLogicalArray) > 0
    positiveEvalString = [];
    % add words from review to positive cell array
    for i = 1:size(positiveIndexes,2)
        j = positiveIndexes(i);
        positiveEvalString = [positiveEvalString,',Text{',num2str(j),',2}'];
    end
    positiveEvalString = ['vertcat(',positiveEvalString(2:end) ,')'];
    positiveWords = eval(positiveEvalString);
end

%% NEGATIVE

if sum(negativeLogicalArray) > 0
    negativeEvalString = [];
    % add words from review to negative cell array
    for i = 1:size(negativeIndexes,2)
        j = negativeIndexes(i);
        negativeEvalString = [negativeEvalString,',Text{',num2str(j),',2}'];
    end
    negativeEvalString = ['vertcat(',negativeEvalString(2:end) ,')'];
    negativeWords = eval(negativeEvalString);
end
%% NEUTRAL

if sum(neutralLogicalArray) > 0
    neutralEvalString = [];
    % add words from review to neutral cell array
    for i = 1:size(neutralIndexes,2)
        j = neutralIndexes(i);
        neutralEvalString = [neutralEvalString,',Text{',num2str(j),',2}'];
    end
    neutralEvalString = ['vertcat(',neutralEvalString(2:end) ,')'];
    neutralWords = eval(neutralEvalString);
end

end

