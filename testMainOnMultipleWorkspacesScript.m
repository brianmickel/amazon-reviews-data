% testMainOnMultipleWorkspacesScript

maximumSize = 15;
j = [1:maximumSize];
numberOfDataPoints = 2.^j;

allTimes = zeros(maximumSize,9);
allTimes(:,1) = numberOfDataPoints';
for i = 1:maximumSize
    workspaceName = ['timingWorkspace' num2str(numberOfDataPoints(i)) '.mat'];
    time = testMainOnMultipleWorkspaces(workspaceName);
    allTimes(i,2:9) = time(:)
end