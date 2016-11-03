function [ ] = createScoreBarChart( Score )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
ratings = [0; 0; 0; 0; 0; 0];
for i = 1:size(Score,1)
    switch Score(i)
        case 1
            ratings(1) = ratings(1) + 1;
        case 2
            ratings(2) = ratings(2) + 1;
        case 3
            ratings(3) = ratings(3) + 1;
        case 4
            ratings(4) = ratings(4) + 1;
        case 5
            ratings(5) = ratings(5) + 1;
        otherwise
            ratings(6) = ratings(6) + 1;
    end
    
figure()
scatter([1:6],ratings)
    
end

