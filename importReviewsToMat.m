%% Import data 
% -- turn a csv into a .mat

% This dataset consists of a single CSV file, Reviews.csv. The columns in the table are:
% Id
% ProductId - unique identifier for the product
% UserId - unique identifier for the user
% ProfileName
% HelpfulnessNumerator - number of users who found the review helpful
% HelpfulnessDenominator - number of users who indicated whether they found the review helpful
% Score - rating between 1 and 5
% Time - timestamp for the review
% Summary - brief summary of the review
% Text - text of the review


filename = 'Reviews.csv';
startRow = 2;
j = [1:16];
numberOfDataPoints = 2.^j;

for i = 9:16
endRow = numberOfDataPoints(i)+1;
[Id,ProductId,UserId,ProfileName,HelpfulnessNumerator,HelpfulnessDenominator,Score,Time,Summary,Text] = importfile(filename, startRow, endRow);

workspaceName = ['timingWorkspace' num2str(numberOfDataPoints(i)) '.mat'];
save(workspaceName)
end
