%% sfs
u = load("input_estimate.txt"); %pwm 0-255
y = load("output_estimate.txt"); %rpm
Ts = 0.001;                 % sampling time
N = length(u);
t = (0:N-1)' * Ts;
u_ts = timeseries(u, t);
y_ts = timeseries(y, t);
%%

% initial parameters
J= 9.76e-5;
B= 1.5e-4;
L = 0.18e-3;
R=10;

Km= 7.68e-3;
Kb = Km;

Kg = 21.3;