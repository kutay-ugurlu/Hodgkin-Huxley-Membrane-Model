wipe
simulation_time = 20;
stim1mag = 20;
stim1start = 1e-2;
stim1dur = 0.2;
stim1location = 70;
stim2mag = -100;
stim2start = 3;
stim2dur = 0.3;
stim2location = 30;
axon_length = 100;
if_plot = 0;


[time, V_membrane, I_total, I_s, I_C, I_Na, I_K, I_L, g_Na, g_K, g_L] = HHPropagate(simulation_time, stim1mag, ...
    stim1start, stim1dur, stim1location, stim2mag, ...
    stim2start, stim2dur, stim2location, axon_length, if_plot);

% plot_propagation(V_membrane)
% V_membrane = V_membrane';
% [t,x] = size(V_membrane);
% for i = 1:t
%     cla
%     yyaxis left
%     plot(V_membrane(i,:),'LineWidth',3)
%     ylim([-120,20])
%     ylabel('Membrane Voltage(mV)')
%     yyaxis right
%     stem(I_s(i,:),'red')
%     ylim([0,100])
%     ylabel('Stimulation Current($\frac{\mu A}{cm^2}$)','Interpreter','latex')
%     title([num2str(i/t*100,3),'% completed.'])
%     pause(1e-2)
%     drawnow
% end
figure
h1 = subplot(1,2,1);
h2 = subplot(1,2,2);
plot_propagation({V_membrane,I_s},{h1,h2},{"Title1","Title2"})