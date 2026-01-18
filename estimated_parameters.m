u = load("input_validate.txt"); %pwm 0-255
y = load("output_validate.txt"); %rpm
y=y';
Ts = 0.001;                 % sampling time
N1 = length(u);
t1 = (0:N1-1)' * Ts;
u1_ts = timeseries(u, t1);
y1_ts = timeseries(y, t1);


J= 2.657e-5;
B= 1.4411e-4;
L = 0.18e-3;
R=4.9476;

Km= 0.0561;
Kb = 0.0062;

Kg = 21.3; %900/44