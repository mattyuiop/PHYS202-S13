function [slope, intercept, slerr, interr ] = WeightedLSQFit( x,y,err )
%takes x, y and delta y, returns weighted least sq fit
    %takes two arraysand fits linear fit:: x@ y = mx + b"  xyw are a 1xN or Nx1 arrays 
    %n = size(x);
    w = err.^-2;
    %{
    slope = (sum(w)*sum(w.*x.*y) - sum(w.*x)*sum(w.*y))./(sum(w)*(w'*x.^2) - (w'*x).^2);
    intercept= (sum(sum(w'*(x.*x)).*sum(w'*y)) - sum((w'*x).*(w'*(x.*y))) )/(sum(w)*sum(w'*x.^2) - (w'*x)^2);
    %}
    GlSize = size(x);
    if GlSize(1) > Glsize(2)
        x =  reshape(x,1,GlSize(1));
        y =  reshape(y,1,GlSize(1));
        w =  reshape(w,1,GlSize(1));
    else
        x =  reshape(x,1,GlSize(2));
        y =  reshape(y,1,GlSize(2));
        w =  reshape(w,1,GlSize(2));
    end;
    
    slope = (sum(w) * w'*(x.*y))/(sum(w) * (w'*x.^2) - (w'*x)^2);
    intercept = (w'*(x.*x) * w'*y) - (w'*x)*(w'*(x.*y)) / (sum(w) * (w'*x.^2) - (w'*x)^2);                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
    
    slerr = (sum(w)/(sum(w)*sum(w.*x.^2) - sum(w.*x)^2)).^0.5;
 
    interr = (sum(w.*x.*x)/(sum(w)*sum(w.*x.^2) - sum(w.*x)^2)).^0.5;
end

