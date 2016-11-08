%% test the times of the main function

%%
allTimes = [];

j = [1:16];
numberOfDataPoints = 2.^j;

for i = 1:16
    filename = ['timingWorkspace' num2str(numberOfDataPoints(i)) '.mat']
    [ results, times ] = mainTimesLength( filename )
    allTimes(i,:) = times;
end

save('allTimes.mat','allTimes')

figure()
% for q = 1:3
%     subplot(3,1,q)
%     plot(numberOfDataPoints', allTimes(:,q))
% end
plot(numberOfDataPoints', sum(allTimes,2))
