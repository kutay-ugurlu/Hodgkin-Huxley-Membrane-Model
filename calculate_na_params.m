function [a_m,b_m,a_h,b_h,m_inf,tau_m,h_inf,tau_h] = calculate_na_params(vm)
a_m = (2.5-0.1*vm)/(exp(2.5-0.1*vm)-1);
b_m = 4*exp(-vm/18);
m_inf = a_m/(a_m+b_m);
tau_m = m_inf/a_m;
a_h = 0.07*exp(-vm/20);
b_h = 1 / (exp(3-0.1*(vm))+1);
h_inf = a_h/(a_h+b_h);
tau_h = h_inf/a_h;
end
