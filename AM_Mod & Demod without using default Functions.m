t=1:0.06:60;
SNR=1; 
k=1;
wm=0.5*k;		%massage frequency 
wc=5*k;		% carrier frequency
Am=0.6;		%massage amplitude
Ac=10;		%carrier amplitude 
massage=Am*cos(wm*t);
carrier=Ac*cos(wc*t);
AM_signal=[1+massage].*carrier;
tX_signal=awgn(AM_signal,SNR);
RX_signal =  tX_signal.*carrier;
wn = .02;                             %PSD lowpass filter cut – off frequency
[b,a] = butter(2,wn);                   % Design lowpass filter
demod_signal = filter(b,a,RX_signal);   % Apply lowpass filter

 subplot(4,1,1)
 plot(t,massage,'.')
 grid on
 title('Task-1 Message signal')
 xlabel('time')
 ylabel('amplitude ') 
 
 subplot(4,1,2)
 plot(t,carrier,'.')
 grid on
 title('carrier signal')
 xlabel('time')
 ylabel('amplitude ')
 
 subplot(4,1,3)
  plot(t,AM_signal,'.')
 grid on
 title('Modulating signal')
 xlabel('time')
 ylabel('amplitude ')
 
 subplot(4,1,4)
  plot(t,demod_signal,'.')
 grid on
 title('Demod signal')
 xlabel('time')
 ylabel('amplitude ')
%Task-1 by 18CS114 
t=1:0.06:60;
SNR=1; 
k=1;
wm=0.5*k;		%massage frequency 
wc=5*k;		% carrier frequency
Am=0.6;		%massage amplitude
Ac=10;		%carrier amplitude 
massage=Am*cos(wm*t);
carrier=Ac*cos(wc*t);
AM_signal=[1+massage].*carrier;
tX_signal=awgn(AM_signal,SNR);
RX_signal =  tX_signal.*carrier;
wn = .02;                             %PSD lowpass filter cut – off frequency
[b,a] = butter(2,wn);                   % Design lowpass filter
demod_signal = filter(b,a,RX_signal);   % Apply lowpass filter

 subplot(4,1,1)
 plot(t,massage,'.')
 grid on
 title('Task-1 Message signal')
 xlabel('time')
 ylabel('amplitude ') 
 
 subplot(4,1,2)
 plot(t,carrier,'.')
 grid on
 title('carrier signal')
 xlabel('time')
 ylabel('amplitude ')
 
 subplot(4,1,3)
  plot(t,AM_signal,'.')
 grid on
 title('Modulating signal')
 xlabel('time')
 ylabel('amplitude ')
 
 subplot(4,1,4)
  plot(t,demod_signal,'.')
 grid on
 title('Demod signal')
 xlabel('time')
 ylabel('amplitude ')
