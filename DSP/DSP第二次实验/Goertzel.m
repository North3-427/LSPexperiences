f = [697 770 852 941 1209 1336 1477,1633];
Fs = 8000;
N = 207;
for i=1:8
    Q(i,1)=0;
    Q(i,2)=0;
end
tones1 = sum(sin(2*pi*[fl;fh]*(0:N-1)/Fs));
if SNR==0
    tones=tones1;
else
tones=awgn(tones1,SNR);
end
k = round(f/Fs*N);
for i=1:8
    for n=3:N
        Q(i,n)=2*Q(i,n-1)*cos(2*pi*k(i)/N)-Q(i,n-2)+tones(n-2);
    end
end
for i=1:8
    tonesr(i)=Q(i,N-1)-exp(-j*2*pi*k(i)/N)*Q(i,N-2);
end
estim_f = round(k*Fs/N); 
axes(handles.axes6);
stem(estim_f,abs(tonesr))
grid on;
box on;
title('用戈泽尔算法还原的频谱');
axis([0,2000,-5,120]);
tone=abs(tonesr);
[A,t1]=sort(tone(1:4));
[B,t2]=sort(tone(5:8));
switch t1(4)
    case 1
        switch t2(4)
            case 1
                a='1';
            case 2
                a='2';
            case 3
                a='3';
            case 4
                a='A';
            otherwise
                a='unknow number';
        end
    case 2
        switch t2(4)
            case 1
                a='4';
            case 2
                a='5';
            case 3
                a='6';
            case 4
                a='B';
            otherwise
                a='unknow number';
        end
    case 3
        switch t2(4)
            case 1
                a='7';
            case 2
               a='8';
            case 3
                a='9';
            case 4
                a='C';
            otherwise
                a='unknow number';
        end
    case 4
        switch t2(4)
            case 1
                a='*';
            case 2
                a='0';
            case 3
                a='#';
            case 4
                a='D';
            otherwise
                a='unknow number';
        end
    otherwise
        disp('unknow number')
end
set(handles.edit4,'String',a);
