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
def pointField(x,y,q,Xq,Yq):
	"""with array (x,y) and charge q at (Xq,Yq) returns tuple of electric field (Ex,Ey)"""
	k = 8.9875511787e9
	Ex = k*q*(x - Xq) * (((x-Xq)**2 + (y-Yq)**2))**-.5
	Ey = k*q*(y-Yq) * ((x-Xq)**2 + (y-Yq)**2)**-.5
#	print Ex
#	print Ey
	return Ex,Ey
