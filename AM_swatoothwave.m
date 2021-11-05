t = linspace(0, 0.2, 100000);
%% Message Signal :
h=5;
Am = 10;
fm = 200;
ym = Am*sawtooth(2*pi*fm*t);
figure;
subplot(4, 1, 1);
plot(t(1:10000), ym(1:10000));
title('Task-4 Message Signal');
xlabel('time(t)');
ylabel('Amplitude');
%% Carrier Signal :
Ac = Am/h;
fc = 2000;
yc = Ac*sawtooth(2*pi*fc*t);
subplot(4, 1, 2);
plot(t(1:10000), yc(1:10000));
title('Carrier Signal');
xlabel('time(t)');
ylabel('Amplitude');
%% Modulated Signal :
y = ammod(ym, fc, 100000, 0, Ac);
subplot(4, 1, 3);
plot(t(1:10000), y(1:10000));
title('Modulated Signal');
xlabel('time(t)');
ylabel('Amplitude');
%% Demodulated Signal :
z = amdemod(y, fc, 100000, 0, Ac);
subplot(4, 1, 4);
plot(t(1:10000), z(1:10000));
title('Demodulated Signal');
xlabel('time(t)');
ylabel('Amplitude');
ylim([-10, 10]);
