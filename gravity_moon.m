function [g_moon] = gravity_moon(vector_r)
    G = 6.67408*(10^-11) %universal gravitational constant
    Mass = 0.07345*(10^24) %mass of moon
    g_moon = (G*Mass)./(norm(vector_r)^2) %magnitude of acceleration #(mg=GMm/r^2)
    g_moon = (g_moon*vector_r)./norm(vector_r) %acceleration vector
end