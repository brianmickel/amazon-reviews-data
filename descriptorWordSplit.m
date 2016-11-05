function [ positiveWords, negativeWords, neutralWords ] = descriptorWordSplit( Score, Text )
%decide if review is helpful or unhelpful then append review words to
% helpful list and unhelpful list
% INPUT: 
% score 1-5
% OUTPUT:
positiveWords = {};
negativeWords = {};
neutralWords = {};

for i = 1:size(Text,1)
    %positive/negative/neutral
    switch Score(i)
        case {1, 2}
            descriptorType = 'negative';
        case {3}
            descriptorType = 'neutral';
        case {4, 5}
            descriptorType = 'positive';
    end
    
    if strcmpi(descriptorType, 'positive')
        % add words from review to positive cell array
        positiveWords = vertcat(positiveWords,Text{i,2});
        %display('positive')
    elseif strcmpi(descriptorType, 'negative')
        % add words from review to negative cell array
        negativeWords = vertcat(negativeWords,Text{i,2});
        %display('negative')
    elseif strcmpi(descriptorType, 'neutral')
        % add words from review to neutral cell array
        neutralWords = vertcat(neutralWords,Text{i,2});
        %display('neutral')
    else
        display('error')
    end
end

