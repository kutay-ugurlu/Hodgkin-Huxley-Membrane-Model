%% Video Script 
wipe
pos_vec = [300, 250, 1000, 500];
%% Action Potential Threshold
figure('Position', pos_vec); % To adjust figsizeclose allclose allsubplot(2,1,1)
subplot(2,1,2)
HHSimulate(1,3,0.5,3,1);
subplot(2,1,1)
HHSimulate(1,2,0.5,3,1);
title('Action Potential Threshold')

%% Action Potential Latency
figure('Position', pos_vec); % To adjust figsizeclose allclose allsubplot(2,1,1)
HHSimulate(1,0.2,5,60,1);
xlim(gca,[0,25])
title('Action Potential Latency')
% figures(end+1) = gcf;

%% Relative Refractory
figure('Position', pos_vec); % To adjust figsizeclose allclose allsubplot(2,1,1)
subplot(2,1,1)
HHSimulate(2,[10 60],1,[3 5],1);
title('Relative Refractory Period with Low Stimulus Current')
subplot(2,1,2)
HHSimulate(2,[10 60],1,[3 15],1);
% figures(end+1) = gcf;
title('Relative Refractory Period with High Stimulus Current')

%% Absolute Refractory
figure('Position', pos_vec); % To adjust figsizeclose allclose allsubplot(2,1,1)
HHSimulate(2,[4 3],1,[3 15],1);
% figures(end+1) = gcf;
title('Absolute Refractory Period with High Stimulus Current')

%% Anode Breakdown Excitation
figure('Position', pos_vec); % To adjust figsizeclose allclose allsubplot(2,1,1)
HHSimulate(2,[5 40],20,[-2 -35],1);
title('Anode Break Down Excitation Behavior')

%% Habituation Behavior 
figure('Position', pos_vec); % To adjust figsizeclose allclose allsubplot(2,1,1)
[t,V] = HHSimulate(1,75,3,6.2,1);
% figures(end+1) = gcf;
title('An example Habituation behavior')

%% Pulse Frequency Modulation
figure('Position', pos_vec); % To adjust figsizeclose allclose allsubplot(2,1,1)
HHSimulate(2,[40 40],20,[25 100],1);
% figures(end+1) = gcf;
title('Pulse Frequency Modulation with different excitations')

%% Temporal Summation
figure('Position', pos_vec); % To adjust figsizeclose allclose allsubplot(2,1,1)
HHSimulate(2,[5 5],2,[2,5],1);
% figures(end+1) = gcf;
title('Temporal Summation causing action potential')

%%
figHandles = findall(0,'Type','figure'); 
for i = 1:length(figHandles)
    h = figHandles(i);
    saveas(h,['report',filesep,'Fig',num2str(i),'.png'])
end
