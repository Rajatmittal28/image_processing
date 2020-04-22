
     onion   = rgb2gray(imread('r.jpg'));
    peppers = rgb2gray(imread('Ronaldo.jpg'));
    imshowpair(peppers,onion,'montage')
  
    c = normxcorr2(onion,peppers);
    figure, surf(c), shading flat
  
    [ypeak, xpeak] = find(c==max(c(:)));
    % Compute translation from max location in correlation matrix
    yoffSet = ypeak-size(onion,1);
    xoffSet = xpeak-size(onion,2);
    
    % Display matched area
    figure
    hAx  = axes;
    imshow(peppers,'Parent', hAx);
    imrect(hAx, [xoffSet+1, yoffSet+1, size(onion,2), size(onion,1)]);
 
  
