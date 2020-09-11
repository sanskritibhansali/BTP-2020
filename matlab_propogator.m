pos = [1837100, 0, 0]     %initial position
vel = [0, 1633.52, 0]     %initial velocity
x=1000   
g_moon =  gravitysphericalharmonic( pos , 'LP100K')    %initial gravity calculation using matlab function
t_step = 0.5
velocity_m = zeros(x, 3)
c= zeros(x, 1)
gravity_m = zeros(x, 3)
gravity_m(1,:) = g_moon
velocity_m(1,:) = vel
r_m = zeros(x, 3)
r_m(1,:) = pos
for i=1:x-1
    velocity_m(i+1, :)= velocity_m(i,:) + gravity_m(i,:)*t_step
    %velocity(i+1, :)= cumtrapz(0.1,gravity(i,:))+velocity(i,:)
    r_m(i+1,:)= r_m(i,:)+ velocity_m(i, :)*t_step + gravity_m(i,:)*0.5*t_step^2
    %r(i+1,:)=cumtrapz(0.1,velocity(i,:)) + r(i,:)
    [gx_m gy_m gz_m] = gravitysphericalharmonic( r_m(i+1,:) , 'LP100K')
    gravity_m(i+1,:) = [gx_m gy_m gz_m]
end

plot(r_m(:,1), r_m(:,2))