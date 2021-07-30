function n_1 = one_step_update_n_h_m(n_inf,n,t_interval,tau_n)
n_1 = n_inf - (n_inf - n)*exp(-t_interval/tau_n);
end
