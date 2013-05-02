import numpy as np

def pointPotential(x,y,q,Xc,Yc):
	"""Return electric potential for a point"""
	k = 8.9875511787e9
	Vxy = k*q/(((x-Xc)**2 + (y-Yc)**2))**.5
	return Vxy

def dipolePotential(x,y,q1,q2,d):
        """Return electric potential for a dipole on yaxis d units
 	 from the origin"""
        k = 8.9875511787e9
        Vxy = k*q1* ((x)**2 + (y-d)**2) + k*q2 *((x)**2 + (y+d)**2) ** -.5
        return Vxy
