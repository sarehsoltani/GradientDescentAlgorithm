function Grad = GradFunc (W,X,Y)    % (1)
    m = size(X,1) ;
    H_w = X * W ;
    Grad = ( X' * ( H_w - Y ) )/(m) ;

end