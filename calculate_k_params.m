function [a_n,b_n,n_inf,tau_n] = calculate_k_params(vm)
a_n = (0.1-0.01*vm)/(exp(1-0.1*vm)-1);
b_n = 0.125*exp(-vm/80);
n_inf = a_n/(a_n+b_n);
tau_n = n_inf/a_n;
end
