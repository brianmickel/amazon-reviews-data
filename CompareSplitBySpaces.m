% CompareSplitBySpaces

maximumSize = 15;
j = [1:maximumSize];
numberOfDataPoints = 2.^j;

splitSpacesTimes = zeros(maximumSize,3);
splitSpacesTimes(:,1) = numberOfDataPoints';
for i = 1:maximumSize
    workspaceName = ['timingWorkspace' num2str(numberOfDataPoints(i)) '.mat'];
    load(workspaceName);
    
    
    splitTic = tic;
    [ a ] = splitTextBySpaces(Text);
    splitToc = toc(splitTic);

    fasterSplitTic = tic;
    [ b ] = fasterSplitTextBySpaces(Text);
    fasterSplitToc = toc(fasterSplitTic);
    times = [splitToc, fasterSplitToc]
    
    splitSpacesTimes(i,2) = splitToc;
    splitSpacesTimes(i,3) = fasterSplitToc
end