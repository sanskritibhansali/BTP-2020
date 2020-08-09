acc=zeros(500,1)
a=0
m_dot=1
position=zeros(500,1)
velocity=zeros(500,1)
time=zeros(500,1)
mass=zeros(500,1)
t=zeros(376,1)
mass(1,1)=2000
position(1,1)=2000
velocity(1,1)=100
for i=1:376
    time(i,1)=37.5-(i-1)*0.1
    t(377-i,1)=time(i,1)
end
for i=1:376
    a=6*(-position(i,1))/time(i,1)^2-4*(velocity(i,1))/time(i,1)-9.81
    if (abs(a)>(5000/mass(i,1)))
        mass(i+1,1)=mass(i,1)-0.1
        acc(i,1)=5000/mass(i,1)
    end
    velocity(i+1,1)=(acc(i,1)+9.81)*0.1+velocity(i,1)
    position(i+1,1)=velocity(i+1,1)*0.1+position(i,1)
end
plot(t(1:376,1),position(1:376,1))