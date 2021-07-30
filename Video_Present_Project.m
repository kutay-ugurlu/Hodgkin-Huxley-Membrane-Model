%% Video Script 

%% Action Potential Threshold
figure('Position', [300, 250, 800, 600]); % To adjust figsizeclose allclose allsubplot(2,1,1)
subplot(2,1,2)
HHSimulate(1,3,0.5,3,1);
subplot(2,1,1)
HHSimulate(1,2,0.5,3,1);
title('Action Potential Threshold')

%% Action Potential Latency
HHSimulate(1,0.2,5,60,1);
xlim(gca,[0,25])
title('Action Potential Latency')

%% Relative Refractory
figure('Position', [300, 250, 800, 350]); % To adjust figsizeclose allclose allsubplot(2,1,1)
subplot(2,1,1)
HHSimulate(2,[10 60],1,[3 5],1);
title('Relative Refractory Period with Low Stimulus Current')
subplot(2,1,2)
HHSimulate(2,[10 60],1,[3 15],1);
title('Relative Refractory Period with High Stimulus Current')

%% Absolute Refractory
HHSimulate(2,[4 3],1,[3 15],1);
title('Absolute Refractory Period with High Stimulus Current')

%% Anode Breakdown Excitation
HHSimulate(1,50,5,-35,1);
title('Anode Break Down Excitation Behavior')

%% Habituation Behavior 
[t,V] = HHSimulate(1,75,3,6.2,1);
title('An example Habituation behavior')

%% Pulse Frequency Modulation
HHSimulate(2,[40 40],20,[25 100],1);
title('Pulse Frequency Modulation with different excitations')

%% Temporal Summation
HHSimulate(2,[5 5],2,[2,5],1);
title('Temporal Summation causing action potential')


