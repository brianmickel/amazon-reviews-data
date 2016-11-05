function [ ] = createScoreBarChart( Score )
%Create a simple histogram of all of the reviews

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
    
end

figure()
bar([1:5],ratings(1:5))
barTitle = 'Overall Amazon Reviews';
title(barTitle)
xlabel('Reviews 1-5 Stars');
ylabel('Count');

% remove bad characters
titleForFigureName = strrep(barTitle, ' ', '_');
titleForFigureName = strrep(titleForFigureName, '#', '-');
titleForFigureName = strrep(titleForFigureName, '/', '-');
titleForFigureName = strrep(titleForFigureName, '%', '-');
titleForFigureName = strrep(titleForFigureName, '&', '-');


figureName = strcat(titleForFigureName, '.png');
saveas(gcf,figureName)
close(gcf)

end
