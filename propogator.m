pos = [1837100, 0, 0] %initial position
vel = [0, 1633.52, 0] %initial velocity
x=1000               %no of iteration 
g_moon = gravity_moon(pos) %initial gravity calculation using 2 body approach
t_step = 0.5               %time step
velocity = zeros(x, 3)
c= zeros(x, 1)
gravity = zeros(x, 3)
gravity(1,:) = g_moon
velocity(1,:) = vel
r = zeros(x, 3)
r(1,:) = pos
for i=1:x-1                                %propogation of vel and pos at every time step and calculation of gravity using the model at every time step
    velocity(i+1, :)= velocity(i,:) + gravity(i,:)*t_step                 %propogation of velocity
    %velocity(i+1, :)= cumtrapz(0.1,gravity(i,:))+velocity(i,:)
    r(i+1,:)= r(i,:)+ velocity(i, :)*t_step + gravity(i,:)*0.5*t_step^2    %propogation of position
    %r(i+1,:)=cumtrapz(0.1,velocity(i,:)) + r(i,:)
    gravity(i+1,:) = gravity_moon(r(i+1,:))
end

plot(r-r_m)


