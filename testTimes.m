%% test the times of the main function

%%
allTimes = [];

j = [1:10];
numberOfDataPoints = 2.^j;

for i = 1:10
    filename = ['timingWorkspace' num2str(numberOfDataPoints(i)) '.mat']
    times = mainTimes( filename )
    allTimes(i,:) = times;
end

save('allTimes.mat','allTimes')

figure()
for q = 1:12
    subplot(12,1,q)
    plot(numberOfDataPoints', allTimes(:,q))
end

