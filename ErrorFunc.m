function Error = ErrorFunc(W,X,Y)
    m = size(X,1) ;    
    H_w = X * W ;
    Error = sum( ( H_w - Y ).^2 ) / (2 * m) ;

end