function [ Text ] = splitTextBySpaces( Text )
%Split each review by spaces and add second column with cell array of split
% Input: Text = {
% 'the text of review1';
% 'the text of review2'
% }
% Output: Text = {
% 'the text of review1',  {'the'; 'text'; 'of'; 'review1'};
% 'the text of review2',  {'the'; 'text'; 'of'; 'review2'}
% }

for i = 1:size(Text,1)
    Text{i,2} = strsplit(Text{i,1})';
end

end

