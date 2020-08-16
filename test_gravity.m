th = 0:pi/50:2*pi %taking 100 points on circular orbit of total radius (radius of moon + 100KM)
x = 1837100*cos(th) %x coordinate of the position
y = 1837100*sin(th) %y coordinate of the position
v =zeros(2,101)
v(1,:) = x
v(2,:) = y

for i = 1:101
    g(i,:) = gravity_moon(v(:,i))   %function defined in gravity_moon.m    
    
end  
g_x = g(:,1)
g_y = g(:,2)
plot (g_x,g_y) %plotting acceleration in 2d plane

%print g_moon



