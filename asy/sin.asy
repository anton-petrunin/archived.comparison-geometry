settings.render=0;

import graph3;
import contour;
defaultpen(fontsize(10pt));


size(4cm,0);

currentprojection=perspective(4,1,-.5);


triple  f(pair z) {return (z.x,.2*sin(z.x)*cos(z.y),.2*sin(z.x)*sin(z.y));}

draw(surface(f,(0.1,0),(pi,2*pi), nu=20,nv=10,Spline),
     white,meshpen=black+thick(),nolight);
     
