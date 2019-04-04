settings.render=32;

import graph3;
import contour;
defaultpen(fontsize(10pt));


size(4cm,0);

currentprojection=orthographic(3,1,1);
currentlight=(1,1,1);

real f(pair z) {return (z.y^2/2+z.x^2/3+z.y*z.x/6+z.y^3/5);}

real l(pair z) {return 0;}

draw(surface(f,(-1,-1),(1,1),nx=10,Spline),
     white,meshpen=black+thick(),nolight);
     
real[] lignesniveaux={0};  
draw(lift(f,contour(f,(-1,-1),(1,1),lignesniveaux)),2bp+black);
                                    
                   
                    

draw((-1,0,0)--(1.3,0,0),black,Arrow3);
draw((0,-1,0)--(0,1.3,0),black,Arrow3);
draw((0,0,0)--(0,0,1.3),black,Arrow3);
