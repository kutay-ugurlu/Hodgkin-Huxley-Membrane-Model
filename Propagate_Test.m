wipe
simulation_time = 10;
stim1mag = 100;
stim2mag = 300;
stim1location = 25;
stim2location = 75;
axon_length = 100;
stim1start = 0.1;
stim2start = 0.5;
if_plot = 0;
stim1dur = 3;
stim2dur = 3;

[time, V_membrane, I_total, I_s, I_C, I_Na, I_K, I_L, g_Na, g_K, g_L] = HHPropagate(simulation_time, stim1mag, ...
    stim1start, stim1dur, stim1location, stim2mag, ...
    stim2start, stim2dur, stim2location, axon_length, if_plot);

t1 = 3;
t2 = 5;
t3 = 9;
figure
subplot(1,3,1)
plot(V_membrane(100*t1,:),'LineWidth',2)
title(['Membrane Voltage at time: ',num2str(t1),'ms'])
ylabel({"Membrane Voltage","(mV)"})
xlabel('Axon Position')
ylim([-105,20])
subplot(1,3,2)
plot(V_membrane(100*t2,:),'LineWidth',2)
ylabel({"Membrane Voltage","(mV)"})
xlabel('Axon Position')
ylim([-105,20])
title(['Membrane Voltage at time: ',num2str(t2),'ms'])
subplot(1,3,3)
plot(V_membrane(100*t3,:),'LineWidth',2)
ylabel({"Membrane Voltage","(mV)"})
xlabel('Axon Position')
ylim([-105,20])
title(['Membrane Voltage at time: ',num2str(t3),'ms'])