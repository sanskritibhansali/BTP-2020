acc=zeros(500,1)
position=zeros(500,1)
velocity=zeros(500,1)
time=zeros(500,1)
t=zeros(376,1)
position(1,1)=2000
velocity(1,1)=100
for i=1:376
    time(i,1)=37.5-(i-1)*0.1
    t(377-i,1)=time(i,1)
end
for i=1:376
    acc(i,1)=6*(-position(i,1))/time(i,1)^2-4*(velocity(i,1))/time(i,1)-9.81
    velocity(i+1,1)=(acc(i,1)+9.81)*0.1+velocity(i,1)
    position(i+1,1)=velocity(i+1,1)*0.1+position(i,1)
end
plot(t(1:376,1),velocity(1:376,1))








