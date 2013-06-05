def LinearLeastSquaresFit(x,y):
    """takes two arraysand fits linear fit:: x@ y = mx + b"""
    import numpy as np
    xav,yav = np.mean(x),np.mean(y)  
    xy = [x[i]*y[i] for i in range(len(x))]
    xyav = np.mean(xy)
    
    xsqav = np.sum([x[i]**2 for i in range(len(x))] )/(len(x))
    slope = m = (xyav - xav*yav)/(xsqav - xav**2)
    intercept = b = (xsqav*yav - xav*xyav)/(xsqav - xav**2)
    
    delta = [y[i] - m*x[i] - b for i in range(len(x))]
    deltasq = [i**2 for i in delta]
    coef = (-2+len(delta))**-1 
    sigmay = (np.sum(deltasq)* coef)**.5
    
    slerr = ((coef * np.mean(deltasq) )/(xsqav - xav**2))**0.5
    interr = (coef * np.mean(deltasq)*xsqav)/(xsqav - xav**2)
    
    return slope, intercept, slerr, interr
	
