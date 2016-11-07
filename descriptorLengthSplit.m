function [ positiveLengths, negativeLengths, neutralLengths ] = descriptorLengthSplit( Score, Text )
%decide if review is helpful or unhelpful then append review words to
% helpful list and unhelpful list
% INPUT: 
% score 1-5
% OUTPUT:
positiveLengths = [];
negativeLengths = [];
neutralLengths = [];

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
        % add length of review to positive cell array
        positiveLengths(end+1) = size(Text{i,1},2);
    elseif strcmpi(descriptorType, 'negative')
        % add length of review to negative cell array
        negativeLengths(end+1) = size(Text{i,1},2);
    elseif strcmpi(descriptorType, 'neutral')
        % add length of review to neutral cell array
        neutralLengths(end+1) = size(Text{i,1},2);
    else
        display('error')
    end
end

