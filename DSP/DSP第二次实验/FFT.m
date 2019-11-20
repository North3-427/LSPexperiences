global SNR;
SNR=str2double(get(handles.edit3,'String'));
fs=8000;
x=0:1/fs:1;
d1=sin(fl*2*pi*x)+sin(fh*2*pi*x);
if SNR==0
    d=d1;
else
d=awgn(d1,SNR);
end

axes(handles.axes1);
plot(x,d1);
axis([0,1,-5,5]);
title('混入噪声前时域波形');
grid on;

axes(handles.axes2);
plot(x,d);
axis([0,1,-5,5]);grid on;
title('混入噪声后时域波形');

axes(handles.axes3);
f=fft(d,1024);
f1=fftshift(f);
w1=513:1024;
w=4000*(w1-512)/512;
F=abs(f1(513:1024));
plot(w,F);
title('滤波解码前信号频谱');
axis([0,2000,-50,600]);
grid on;
box on;

axes(handles.axes4);
[b,a]=cheby1(9,1,0.25,'low');
low=filter(b,a,d);
f=fft(low,1024);
G1=abs(f((513:1024)-512)/512);
w1=513:1024;w=4000*(w1-512)/512;
Fh=abs(f(513:1024));
plot(w,G1);grid;
title('低通滤波后信号频谱');
axis([0,1000,0,1]);

axes(handles.axes5);
[b,a]=cheby1(9,1,0.28,'high');
high=filter(b,a,d);
f=fft(high,1024);
G2=abs(f((513:1024)-512)/512);
plot(w,G2);grid;
axis([0,2000,0,1]);
title('高通滤波后的信号频谱');

m=max(abs(G1));n=max(abs(G2));
o=find(m==G1);p=find(n==G2);
j=((o-1)*8000)/2048*2;
k=((p-1)*8000)/2048*2;
if j<=732.59 & k<=1270.91;
      c=1;
   elseif j<=732.59 & k<=1404.73;
      c=2;
   elseif j<=732.59 & k<=1553.04;
      c=3;
   elseif j<=732.59 & k>1553.05;
      c='A';
   elseif j<=809.96 & k<=1270.91;  
      c=4;
   elseif j<=809.96 & k<=1404.73;
      c=5;
   elseif j<=809.96 & k<=1553.04;
      c=6; 
   elseif j<=809.96 & k>1553.05;
      c='B';
   elseif j<=895.39 & k<=1270.91;
      c=7;
   elseif j<=895.39 & k<=1404.73;
      c=8;
   elseif j<=895.39 & k<=1553.04;
      c=9;global SNR;
   elseif j<=895.39 & k>1553.05;     
      c='C';  
   elseif j>895.40 & k<=1270.91;  
      c='*';
   elseif j>895.40 & k<=1404.73; 
      c=0;
   elseif j>895.40 & k<=1553.04; 
      c='#';
   elseif j>895.40 & k>1553.05; 
      c='D';
end
set(handles.edit2,'String',c);
guidata(hObject, handles);