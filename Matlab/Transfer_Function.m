clc
s = tf('s');

Soorat = 9.74e5*(1-s/(124e9))*(1-s/(1.65e9))*(1-s/(82.76e9))*(1-s/(82.6e9))*(1+s/(60.6e6))*(1+s/(315e6));

Makhraj = (1+s/(27.65e6))*(1+s/(30.3e6))*(1+s/(157.5e6))*(1+s/(436.08e3))*(1+s/(2.4e6))*(1+s/77.63);

f = Soorat/Makhraj;

figure;
margin(f);
grid on;

[GM,PM, f180, fu] = margin(f);

GM = 20*log10(GM);

[~, phase] = bode(f, fu);
ph_fu = phase(1);

[m180,~] = bode(f, f180);
m180dB = 20*log10(m180(1));

GM
PM
fu
ph_fu
m180dB
