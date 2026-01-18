
exp_data = out.out; 

sim_time = sim_out.Time;
sim_values = squeeze(sim_out.Data);

% 3. Create the plot
figure('Color', 'w');
plot(exp_data.Time, exp_data.Data, 'r', 'LineWidth', 1.5); % Experimental
hold on;
plot(sim_time, sim_values, 'b', 'LineWidth', 1);        % Simulated

% 4. Formatting
grid on;
xlabel('Time (seconds)');
ylabel('Speed');
legend('Measured ', 'Simulated Model', 'Location', 'best');
title('DC Motor: Model vs. Reality');