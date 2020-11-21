settings.render=8;

import graph3;
import contour;
import gsl;

defaultpen(fontsize(10pt));


size(5,2cm);

currentprojection=orthographic(1,-1.5,1);

triple  f1(pair z)
{return (
z.y,
z.x,
0
);}

draw(surface(f1,(0,1),(0,1), nu=12,nv=12,Spline),
     white,meshpen=black+thick(),nolight);
     
