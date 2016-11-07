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
    Text{i,2} = lower(strsplit(Text{i,1})');
end

% make pretty below

%% Get rid of all the characters that are not letters or numbers
for i=1:size(Text,1)
    for j = 1:size(Text{i,2},1)
        ind = find(isstrprop(Text{i,2}{j}, 'alphanum') == 0);
        Text{i,2}{j}(ind)=[];
    end
end

%% Remove entries in words that have zero characters
% for i = 1:size(Text,1)
%     if size(Text{i,2}, 2) == 0
%         Text{i,2} = ' ';
%     end
% end

end

