th = 0:pi/50:2*pi %taking 100 points on circular orbit of total radius (radius of moon + 100KM)
x = 1837100*cos(th) %x coordinate of the position
y = 1837100*sin(th) %y coordinate of the position
v =rand(101, 3)
v(:,1)= x
v(:,2) = y


for i = 1:101
    
    [gx gy gz] = gravitysphericalharmonic( v , 'LP100K')   %matlab function to calculate gravity of moon   
    
end  
plot (gx,gy) %plotting acceleration in 2d plane

%print g_moon


