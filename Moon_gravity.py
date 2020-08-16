import numpy as np
def moon_gravity(r_vector): #displacement of orbitor and moon
    G=6.67408*(10**-11) #universal gravitational constant
    Mass=0.07345*(10**24) #mass of moon
    g_moon = G*Mass/(np.linalg.norm(r_vector))**2 #magnitude of acceleration #(mg=GMm/r^2)
    return np.dot(g_moon,r_vector/np.linalg.norm(r_vector)) #acceleration with direction, in the direction of liine joining moon and orbitor

