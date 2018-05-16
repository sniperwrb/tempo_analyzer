% main

[x,fs]=audioread('woniu.mp3');
x=mean(x,2);

z1=zeros(300,1);
figure
for i=1:10
    WP=round(512*(rand+1));
    v=novel(x,WP);
    z=tempo(v,WP,fs);
    z1=z1+z(1:300);
    plot(z1);
    drawnow;
end
[~,beat]=max(z1);