input macros
input hatching
input mparrows

verbatimtex
%&latex
\documentclass[oneside]{book}
\usepackage{../lectures}
\begin{document}
etex

filenametemplate "%j-%1c.mps";
prologues:=3;
setarrows(barbedsharp);
linecap:=butt;
%linejoin:=mitered;
%filenametemplate "%j-%1c.svg";
outputformat := "eps";


beginfig(1) 
save u;
u:=1cm;

save p; path p[];
p1=(0,0)*u..(0,1)*u..(2,1)*u..(2,0)*u..(1,-.3)*u..cycle;
p2=(3,-.2)*u..(3,1)*u..(5,1)*u..(5,-.2)*u..(4,.3)*u..cycle;

draw p1 penbold;
draw p2 penbold;

hatchfill p1  withcolor (87, 1mm, -.5bp);
hatchfill p2  withcolor (87, 1mm, -.5bp);

label.bot(btex convex etex, (1,-.3)*u);
label.bot(btex not convex etex, (4,-.3)*u);

endfig;

beginfig(2) 
save u;
u:=1cm;

save p; path p[];
p1=(0,0)*u..(0,1)*u..(2,1)*u..(2,0)*u..(1,-.5)*u..cycle;

draw p1 penbold;

for i = 1 upto 20:
draw (point (directiontime ((1,0) rotated (18*i)) of p1) of p1)--(point (directiontime ((1,0) rotated (18*i)) of p1) of p1)+(1,0)*u rotated (18*i) penhair;
endfor 

draw
for i = 1 upto 19:
(point (directiontime ((1,0) rotated (18*i)) of p1) of p1)+(1,0)*u rotated (18*i)..
endfor
cycle penbold;

endfig;

beginfig(3) 
save u;
u:=1cm;

z.0=(0,0)*u;
z.4=(2,0)*u;
x.r=u;

save p; path p[];
p1=z.0..(-.7,1)*u..(2,1)*u..z.4;

draw p1 penbold;
draw ddline(z.0, z.4)(0.3, 0.2) pensemibold;


pair u[];

u0=(1.4,0)*u;

for i = 1 upto 20:
z[i]=point (arctime (i*(arclength p1)/20) of p1) of p1;
u[i]=u[i-1] rotated (angle(z[i]-z[i-1]-u[i-1])-angle(-u[i-1]));
draw z[i]--z[i]+u[i] penhair;
endfor
endfig;


beginfig(4) 
save u;
u:=1cm;

z.0=(0,0)*u;
z.4=(2,0)*u;
x.r=u;

save p; path p[];
p1=z.0..(-.7,1)*u..(2,1)*u..z.4;

draw p1 penbold;
draw ddline(z.0, z.4)(0.3, 0.2) pensemibold;


pair u[];

u0=(1.9,0)*u;

for i = 1 upto 20:
z[i]=point (arctime (i*(arclength p1)/20) of p1) of p1;
u[i]=u[i-1] rotated (angle(z[i]-z[i-1]-u[i-1])-angle(-u[i-1]));
draw z[i]--z[i]+u[i] penhair;
endfor
endfig;

beginfig(5) 
save u;
u:=1cm;

z.0=(0,0)*u;
z.4=(2,0)*u;
x.r=u;

save p; path p[];
p1=z.0..(-.7,1)*u..(2,1)*u..z.4;

draw p1 penbold;
draw ddline(z.0, z.4)(0.3, 0.2) pensemibold;


pair u[];

u0=(1.745,0)*u;

for i = 1 upto 20:
z[i]=point (arctime (i*(arclength p1)/20) of p1) of p1;
u[i]=u[i-1] rotated (angle(z[i]-z[i-1]-u[i-1])-angle(-u[i-1]));
draw z[i]--z[i]+u[i] penhair;
endfor
endfig;

beginfig(6) 
save u;
u:=.3cm;

draw (0,0)*u--(6,0)*u--(6,6)*u--(0,6)*u--cycle penhair;
draw (0,0)*u--(6,6)*u penbold;
draw (0,0)*u--(1,0)*u--(1,1)*u--(2,1)*u--(2,2)*u--(3,2)*u--(3,3)*u--(4,3)*u--(4,4)*u--(5,4)*u--(5,5)*u--(6,5)*u--(6,6)*u penbold;

endfig;

beginfig(7) 
save u;
u:=1cm;

z.a=(0,0)*u;
z.b=(2,0)*u;
z.c=(2,2)*u;
z.d=(0,2)*u;

draw z.a--z.b--z.c--z.d--cycle penbold;

z.u=.3[z.a,z.b];
z.v=.4[z.b,z.c];
draw z.u--z.v;

z.w=.7[z.u,z.v];
z.x=.6[z.c,z.d];
draw z.w--z.x;

z.y=.5[z.w,z.x];
z.z=.3[z.d,z.a];
draw z.y--z.z;

z.p=.5[z.y,z.z];
z.q=.9[z.d,z.a];
draw z.p--z.q;

z.r=.5[z.p,z.q];
z.s=.5[z.u,z.v];
draw z.r--z.s;

hatchfill z.r--z.s--z.w--z.y--z.p--cycle  withcolor (87, 1mm, -.5bp);
draw z.r--z.s--z.w--z.y--z.p--cycle penbold;

endfig;

beginfig(8) 
save u;
u:=1cm;

z.a=origin;
z.b=(1,0)*u;
z.c=(1,1)*u;
z.d=(0,1.5)*u;

save p; path p[];

p0=z.a..z.b..z.c..z.d;
p1=p0 rotatedabout (z.b, -angle(z.c-z.b));
p2=p1 rotatedabout (point 2 of p1, -angle( (point 3 of p1) - (point 2 of p1)));

draw p0 penbold;
draw z.b--z.c--z.d dashed evenly;
draw z.a--point 3 of p2 dashed evenly;
draw subpath (1,2) of p1 penbold;
draw subpath (2,3) of p2 penbold;

endfig;

beginfig(9) 
save u;
u:=1cm;

z.a=origin;
z.b=(1,0)*u;
z.c=z.b rotated 60;
z.bc=z.b rotated 30;
z.ab=z.a rotatedabout (z.c, 30);
z.ca=z.c rotatedabout (z.b, 30);

draw z.a..z.ab..z.b--z.b..z.bc..z.c--z.c..z.ca..z.a--cycle penbold;
hatchfill z.a..z.ab..z.b--z.b..z.bc..z.c--z.c..z.ca..z.a--cycle  withcolor (77, 1mm, -.5bp);
draw circle (z.a,z.b-z.a)  dashed evenly;
draw circle (z.b,z.c-z.b)  dashed evenly;
draw circle (z.c,z.a-z.c)  dashed evenly;

endfig;

beginfig(10) 
save u;
u:=1cm;

z.a=(1,2)*u;
z.a1=(2,1)*u;
z.a2=(2,.2)*u;
z.b=(1.5,0)*u;
z.b1=(1.6,-.3)*u;
z.b2=(2,-1)*u;
z.c=(1,-1)*u;

draw z.a..z.a1..z.a2..z.b penbold;
draw z.b..z.b1..z.b2..z.c penbold;
dOt z.a;
dOt z.b;
dOt z.c;

label.lft(btex $\alpha(a)$ etex, z.a);
label.lft(btex $\alpha(b)=\beta(b)$ etex, z.b);
label.lft(btex $\beta(c)$ etex, z.c);

endfig;

beginfig(11) 
save u;
u:=1cm;

z.o=origin;
z.a1=(1.2,.5)*u;
z.a2=(1.1,0)*u;
z.a3=(1.1,-.5)*u;
z.a4=(1.3,0)*u;

draw z.a1..z.a2..z.a3--z.a3..z.a4..z.a1--cycle;
hatchfill z.a1..z.a2..z.a3--z.a3..z.a4..z.a1--cycle  withcolor (57, 1mm, -.5bp);

z.b1=(-.5,1.2)*u;
z.b2=(0,1.1)*u;
z.b3=(.5,1.2)*u;
z.b4=(0,1.4)*u;

draw z.b1..z.b2..z.b3--z.b3..z.b4..z.b1--cycle;
hatchfill z.b1..z.b2..z.b3--z.b3..z.b4..z.b1--cycle  withcolor (57, 1mm, -.5bp);

draw z.a1+z.b3..z.a4+z.b3..z.a3+z.b3--z.a3+z.b3..z.a3+z.b2..z.a3+z.b1--z.a3+z.b1..z.a2+z.b1..z.a1+z.b1--z.a1+z.b1..z.a1+z.b4..z.a1+z.b3--cycle;
hatchfill z.a1+z.b3..z.a4+z.b3..z.a3+z.b3--z.a3+z.b3..z.a3+z.b2..z.a3+z.b1--z.a3+z.b1..z.a2+z.b1..z.a1+z.b1--z.a1+z.b1..z.a1+z.b4..z.a1+z.b3--cycle  withcolor (57, 1mm, -.5bp);

z.a=(1.2,.2)*u;
z.b=(.1,1.2)*u;

drawarrow z.o--z.a;
drawarrow z.o--z.b;
drawarrow z.a--(z.a+z.b);
drawarrow z.b--(z.a+z.b);

dOt z.o;


endfig;

beginfig(12) 
save u;
u:=1cm;

z.a0=(0,0)*u;
z.a1=(.8,1)*u;
z.a2=(2.8,.7)*u;
z.a3=(3,0)*u;

save p; path p[];
p0=z.a0..z.a1..z.a2..z.a3;

draw p0;
z.b0=z.a0+2*direction 0 of p0;
drawarrow z.a0--z.b0;
z.b3=z.a3+3*direction 3 of p0;
drawarrow z.a3--z.b3;
drawarrow z.a0--z.a3;

dOt z.a0,z.a3;

label.lft(btex $\alpha'(a)$ etex, z.b0);
label.rt(btex $\alpha'(b)$ etex, z.b3);
label.top(btex $\alpha(b)-\alpha(a)$ etex, .5[z.a0,z.a3]);
endfig;

beginfig(13) 
save u;
u:=1cm;

z.a1=(0,0)*u;
z.a2=(1,0)*u;
z.a3=(0,1)*u;
z.a4=(2,1)*u;
z.a5=(1,2)*u;
z.a6=(.5,3)*u;
z.a7=(.2,2)*u;
z.a8=(3,2)*u;
z.a9=(3,3)*u;


save p; path p[];
p0=z.a1--z.a2--z.a3--z.a4--z.a6--z.a7--z.a8--z.a9--cycle;

draw p0;
hatchfill p0 withcolor black;

label(btex $U$ etex, ((2.5,.5)*u));

endfig;

beginfig(14) 
save u;
u:=.5cm;

z.a1=(-2,0)*u;
z.a2=(2,0)*u;
z.a3=(-1,3)*u;
z.a4=(-3,1)*u;
z.a5=(3,1)*u;
z.a6=(1,3)*u;

save p; path p[];
p0=z.a1--z.a2--z.a3--z.a4--z.a5--z.a6--cycle;


hatchfill p0 withcolor black;

z.x=whatever[z.a2,z.a3]=whatever[z.a4,z.a5];
z.y=whatever[z.a6,z.a1]=whatever[z.a4,z.a5];
z.z=whatever[z.a2,z.a3]=whatever[z.a6,z.a1];

hatchfill z.x--z.y--z.z--cycle withcolor white;

draw p0;

label(btex $D$ etex, .6[z.z,.5[z.x,z.y]]);
label(btex $U$ etex, .5[z.a3,z.a6]);
endfig;

beginfig(15) 
save u;
u:=1cm;

z.o=origin;
z.p1=(-1,1)*u;
z.p2=(0,2)*u;
z.p3=(1,2.1)*u;

z.sh=(4,0)*u;

z.oo=z.o+z.sh;
z.q1=z.p1+z.sh;
z.q2=z.p2+z.sh;
z.q3=(z.p3+z.sh) reflectedabout (z.oo,z.q2);

draw z.o--z.p1--z.p2--z.p3--z.o--z.p2;
draw z.oo--z.q1--z.q2--z.q3--z.oo--z.q2;

fill_angle(z.p3, z.p2, (2[z.p1,z.p2]), 10);
fill_angle(z.q3, z.q2, (2[z.q1,z.q2]), 10);

dOt z.o,z.oo,z.p1,z.p2,z.p3,z.q1,z.q2,z.q3;

label.bot(btex $o$ etex, z.o);
label.bot(btex $o$ etex, z.oo);

label.rt(btex $p_{i-1}$ etex, z.p1+(2,0));
label.top(btex $p_i$ etex, (z.p2+(-2,0)));
label.top(btex $p_{i+1}$ etex, z.p3);

whitelabel.rt(btex $p_{i-1}$ etex, z.q1+(2,0));
label.top(btex $p_i$ etex, (z.q2+(-2,0)));
label.top(btex $p_{i+1}$ etex, z.q3);

endfig;

beginfig(16) 
save u;
u:=1cm;

z.o=origin;
z.p1=(.7,.1)*u;
z.p2=(-.5,.5)*u;
z.p3=(.3,-.7)*u;
z.p4=(.5,.7)*u;
z.p5=(.7,.4)*u;

draw circle(z.o,1*u);

save p; path p[];
p0=z.p1--z.p2--z.p3--z.p4--z.p5--cycle;

draw p0 penbold;

z.q0=(2,-.3)*u;
z.q1=z.q0+(abs(z.p1-z.p5),0);
z.q2=z.q1+(abs(z.p2-z.p1),0);
z.q3=z.q2+(abs(z.p3-z.p2),0);
z.q4=z.q3+(abs(z.p4-z.p3),0);
z.q5=z.q4+(abs(z.p5-z.p4),0);
z.q6=z.q5+(abs(z.p1-z.p5),0);

z.s0=(z.q0+(z.o-z.p5 rotated -angle(z.p1-z.p5))) reflectedabout (z.q0,z.q1);
z.s1=z.q1+(z.o-z.p1 rotated -angle(z.p2-z.p1));
z.s2=z.q2+(z.o-z.p2 rotated -angle(z.p3-z.p2));
z.s3=z.q3+(z.o-z.p3 rotated -angle(z.p4-z.p3));
z.s4=(z.q4+(z.o-z.p4 rotated -angle(z.p5-z.p4))) reflectedabout (z.q0,z.q1);
z.s5=(z.q5+(z.o-z.p5 rotated -angle(z.p1-z.p5))) reflectedabout (z.q0,z.q1);

draw z.q6--z.s5--z.q5--z.s4--z.q4--z.s3--z.q3--z.s2--z.q2--z.s1--z.q1--z.s0--z.q0 penhair;
draw z.s5--z.s4--z.s3--z.s2--z.s1--z.s0 dashed evenly;
draw z.q0--z.q6 penbold;

draw z.o--z.p1 penhair;
draw z.o--z.p2 penhair;
draw z.o--z.p3 penhair;
draw z.o--z.p4 penhair;
draw z.o--z.p5 penhair;

dOt z.o,z.p1,z.p2,z.p3,z.p4,z.p5,z.q0,z.q1,z.q2,z.q3,z.q4,z.q5,z.q6, z.s0, z.s1, z.s2, z.s3, z.s4, z.s5;

whitelabel.lft(btex $o$ etex, z.o);
whitelabel.rt(btex $p_0$ etex, z.p5);
whitelabel.rt(btex $p_1$ etex, z.p1);
whitelabel.lft(btex $p_2$ etex, z.p2);
label.bot(btex $q_0$ etex, z.q0);
label.bot(btex $q_1$ etex, z.q1+(3,0));
label.bot(btex $q_2$ etex, z.q2+(3,0));
label.bot(btex $\dots$ etex, .5[z.q2,z.q5]+(0,-3));
label.bot(btex $q_n$ etex, z.q5+(3,0));
label.top(btex $s_0$ etex, z.s0);
label.top(btex $s_1$ etex, z.s1);
label.top(btex $s_n$ etex, z.s5);

endfig;

beginfig(17) 
save u;
u:=1cm;

z.p0=(0,0)*u;
z.p1=(1,1)*u;
z.p2=(2,0)*u;
z.ww=.7[z.p1,z.p2];
z.w=.7[z.p1,z.ww];
z.x=.6[z.p0,z.ww];
z.y=altitude(z.p0, z.x, z.w);

draw z.w--z.p0--z.p1--z.p2;
draw z.p0--z.ww dashed evenly;
dOt z.p0,z.p1,z.p2,z.x,z.y,z.w,z.ww;


label.bot(btex $p_0$ etex, z.p0);
label.top(btex $p_1$ etex, z.p1);
label.bot(btex $p_2$ etex, z.p2);
label.urt(btex $w_1$ etex, z.w);
label.rt(btex $w_1'$ etex, z.ww);
label.bot(btex $y_1$ etex, z.x);
label.top(btex $x_1$ etex, z.y);
endfig;

beginfig(18) 
save u,a;
u:=1cm;
a:=45;

z.i=(0,1)*u;
z.a1= z.i rotated -a;
z.a2= z.i rotated a;
z.a3=z.a1 rotated -120;
z.a4=z.a2 rotated -120;
z.a5= z.a1 rotated 120;
z.a6=z.a2 rotated 120;

z.a23=.5[z.a2,z.a3];
z.a45=.5[z.a4,z.a5];
z.a61=.5[z.a6,z.a1];

z.a223=whatever[z.a2,z.a3]=whatever[z.a4,z.a5];
z.a661=whatever[z.a6,z.a1]=whatever[z.a2,z.a3];
z.a445=whatever[z.a4,z.a5]=whatever[z.a6,z.a1];

draw z.a2--z.a23 penbold;
fill circle(z.a223,2.5) withcolor white;

draw z.a45--z.a5--z.a6--z.a61 penbold;
fill circle(z.a661,2.5) withcolor white;


draw z.a23--z.a3--z.a4--z.a45 penbold;
fill circle(z.a445,2.5) withcolor white;
draw z.a61--z.a1--z.a2 penbold;

endfig;

beginfig(19) 
save u;
u:=1cm;

z.a0=(0,0)*u;
z.a1=(-.4,-1.3)*u;
z.a2=(.4,-2)*u;
z.a3=(.1,-3)*u;
z.b1=(.7,-.9)*u;
z.b2=(-.7,-2.3)*u;
z.x=whatever[z.a1,z.a2]=whatever[z.b1,z.b2];

hatchfill z.a0--z.a1--z.b1--cycle  withcolor (87, 1mm, -.5bp);
%hatchfill z.a1--z.b1--z.a2--cycle  withcolor (27, 1mm, -.5bp);
%hatchfill z.b1--z.b2--z.a2--cycle  withcolor (-24, 1mm, -.5bp);

draw z.a1--z.a0--z.b1--z.b2--z.a3--z.a2 penbold;
fill circle(z.x,2) withcolor white;
draw z.a1--z.a2 penbold;
%draw z.x--z.a2 dashed evenly penbold;
draw z.a1--z.b1;
draw z.b1--z.a2--z.b2 dashed evenly;

dOt z.a0,z.a1,z.a2,z.a3,z.b1,z.b2;

label.lft(btex $p_{n-1}$ etex, z.a1);
label.top(btex $p_n$ etex, z.a0);
label.rt(btex $p_1$ etex, z.b1);
endfig;

beginfig(20) 
save u;
u:=.7cm;

z.a=origin;
z.b=(1,0)*u;
z.c=2*z.b;
z.d=3*z.b;

draw z.a..z.c..z.b..z.d..cycle;
draw -.2[z.a,z.d]--1.2[z.a,z.d];
dOt z.a,z.b,z.c,z.d;

label.urt(btex $a$ etex, z.a);
label.ulft(btex $b$ etex, z.b);
label.urt(btex $c$ etex, z.c);
label.ulft(btex $d$ etex, z.d);
label.top(btex $\alpha$ etex, point 3.5 of (z.a..z.c..z.b..z.d..cycle));
endfig;

beginfig(21) 
save u;
u:=1cm;

z.a0=(.5,0)*u;
z.a1=(1,0)*u;
z.a2=(1,1)*u;
z.a3=(2,0)*u;
z.a4=(0,0)*u;

save p; path p[];
p0=z.a0..z.a1..z.a2..z.a3..z.a4;

draw p0 penbold;

z.z=(point 1.3 of p0) + whatever*( (direction 1.3 of p0) rotated 90)=(point 1.4 of p0) + whatever*( (direction 1.4 of p0) rotated 90);

p1=circle(z.z,(point 1.3 of p0)-z.z);

draw p1;

dOt (point 1.3 of p0);

label.lrt(btex $\alpha$ etex, point 3 of p0);
label.urt(btex $\gamma$ etex, point 1 of p1);

endfig;

beginfig(22) 
save u;
u:=1cm;

z.p=(1,0)*u;
z.s=(0,2)*u;
z.q=(-1,0)*u;

save p; path p[];
p0=z.p{dir 150}..z.s{right}..{dir -150}z.q;

draw p0;
drawarrow subpath (0,1.05) of p0;
drawarrow subpath (0,.2) of p0;
drawarrow subpath (0,1.85) of p0;
draw ddline(z.p,z.q)(0.3, 0.3);
drawarrow z.p--.5[z.p,z.q];

dOt z.p, z.q;

label.bot(btex $x$ etex, z.p);
label.bot(btex $y$ etex, z.q);
label.bot(btex $\alpha$ etex, z.s);
endfig;

beginfig(23) 
save u;
u:=1cm;

z.pp=(2,0)*u;
z.qq=(-2,0)*u;
z.s=(.5,1.5)*u;

save p; path p[];
p0=z.pp..z.s..z.qq;
draw p0;

z.p=.2[z.pp,z.qq];
z.q=.8[z.pp,z.qq];
z.sq=(0,.7)*u;

p1=z.p{dir 170}..z.s{dir angle direction 1 of p0}..z.sq..{dir -120}z.q;
draw p1;

draw ddline(z.pp,z.qq)(0.1, 0.1);

drawarrow subpath (0,1.4) of p0;
drawarrow subpath (0,2) of p1;

dOt z.p, z.q, z.pp, z.qq, z.s;

label.bot(btex $x$ etex, z.p);
label.bot(btex $y$ etex, z.q);
label.urt(btex $p$ etex, z.pp);
label.ulft(btex $q$ etex, z.qq);
label.top(btex $s$ etex, z.s);
label.lrt(btex $\alpha$ etex, z.sq);
label.lrt(btex $\gamma$ etex, (point 1.4 of p0));
endfig;

beginfig(24) 
save u;
u:=1cm;

z.pp=(2,0)*u;
z.qq=(-2,0)*u;
z.s=(.5,1.5)*u;

save p; path p[];
p0=z.pp..z.s..z.qq;
draw p0;

z.p=.2[z.pp,z.qq];
z.q=.8[z.pp,z.qq];
z.sq=(.5,.7)*u;

p1=z.p{dir 170}..z.s{dir ((angle direction 1 of p0)-180)}..z.sq;
draw p1;

draw ddline(z.pp,z.qq)(0.1, 0.1);

drawarrow subpath (0,1.4) of p0;
drawarrow subpath (0,2) of p1;

dOt z.p, z.q, z.pp, z.qq, z.s;

label.bot(btex $x$ etex, z.p);
label.bot(btex $y$ etex, z.q);
label.urt(btex $p$ etex, z.pp);
label.ulft(btex $q$ etex, z.qq);
label.top(btex $s$ etex, z.s);
label.lrt(btex $\alpha$ etex, z.sq);
label.lrt(btex $\gamma$ etex, (point 1.4 of p0));
endfig;

beginfig(25) 
save u;
u:=1cm;

z.p=(0,1)*u;
z.q=(2,1)*u;

draw (0,.25)*u{left}..(0,.5)*u{right}..(0,0)*u{left}..z.p{right}..(2,0)*u{right}..z.q{left}..(2,.5)*u{right}..(2,.75)*u{left};

draw ddline(z.p,z.q)(.2,.2);

dOt z.p, z.q;
endfig;

beginfig(26);
save u;
u:=.5cm;

save p; path p[];
p0=(0,0)*u..(2,0)*u..(1,0)*u..(3,0)*u..cycle;
draw p0;

p1=(0,-3)*u..(1.5,-2)*u..(3,-3)*u..(1.5,-4)*u..cycle;
draw p1;

dOt point 1.5 of p0, point 3.5 of p0, (0,-3)*u,(1.5,-2)*u,(3,-3)*u,(1.5,-4)*u;
endfig;

beginfig(271) 
save u;
u:=1.4cm;

z.o=origin;
z.p1=(1,0)*u;

save p; path p[];
p0=circle(z.o,z.p1-z.o);

draw p0;

z.p2= point 1.5 of p0;
z.p3= point 2.8 of p0;
z.s=.5[z.o,.5[z.p1,z.p3]];

p1=z.p1{direction 0 of p0}..tension 1.5..z.p2{direction 1.5 of p0}..tension 1.5..z.p3{direction 2.8 of p0}..tension 1.5..z.s{z.o-z.s zscaled (0,-1)}..tension 1.5..cycle;
draw p1 penbold;

z.oo=z.s-unitvector(z.s)*abs(z.p1);
p3=circle(z.oo,z.p1-z.o);

dOt z.p1, z.p2,z.p3;

label.lft(btex $\alpha$ etex, point 2.6 of p1);
label.lrt(btex $\gamma$ etex, point 3.6 of p0);
endfig;

beginfig(27) 
save u;
u:=.7cm;

z.o=origin;

z.dir1=(2,1);
z.dir2=(-x.dir1,y.dir1);
x.r=2*u;

save p; path p[];

p0=circle(z.o,x.r);
draw p0;

z.oo=(-1,0)*u;

p1=circle(z.oo,x.r);
draw p1;

z.a1=directionpoint z.dir1 of p0;
z.a2=directionpoint z.dir2 of p0;

z.a12=point 3.9 of p1;
z.dir12=direction 3.9 of p1;
p3=z.a1{z.dir1}..z.a12{z.dir12}..z.a2{z.dir2};
draw p3 penbold;

dOt z.a1,z.a12,z.a2;

label.rt(btex $\bar\alpha$ etex, point 1.4 of p3);
label.rt(btex $\gamma$ etex, point 3.7 of p0);
label.lft(btex $\gamma'$ etex, point 3.7 of p1);
label.bot(btex $p_1$ etex, z.a1);
label.top(btex $p_2$ etex, z.a2);
label.rt(btex $s_1$ etex, z.a12);

endfig;

beginfig(28);
save u;
u:=1cm;

z.a1=(-1.5,0)*u;
z.a2=(0,0)*u;
z.a3=(1,1)*u;
z.a4=(2,1)*u;
z.a5=(0,-.5)*u;

save p; path p[];
p0=z.a1..z.a2..z.a3..z.a4..z.a5;

z.o=z.a2+((direction 1 of p0) zscaled (0,-1));
p1=circle(z.o,point 1 of p0 -z.o);

p2=circle(point 1 of p0,0.7*(point 1 of p0 -z.o));

draw p0;
drawarrow (((p0 cutbefore p2) cutafter p2) cutafter p2) penbold;
draw p1;
draw p2 dashed evenly;

dOt point 1 of p0;

label.top(btex $p$ etex, z.a2);
label.top(btex $\alpha$ etex, z.a3);
label.top(btex $\gamma$ etex, point .4 of p1);
label(btex $R$ etex, (.4,-.2)*u);
label(btex $L$ etex, (-.4,.2)*u);
endfig;

beginfig(29);
save u;
u:=.5cm;

z.a0=(3,.5)*u;
z.a1=(3,0)*u;
z.a2=(4,0)*u;
z.a3=(2,0)*u;
z.a4=(5,0)*u;
z.a5=(1,0)*u;
z.a6=(11,0)*u;
z.a7=(6,0)*u;
z.a8=(10,0)*u;
z.a9=(7,0)*u;
z.a10=(9,0)*u;
z.a11=(8,0)*u;
z.a12=(8,-.3)*u;
z.b=(6,-3)*u;

save p; path p[];
p0=z.a0..z.a1..z.a2..z.a3..z.a4..z.a5..z.b..z.a6..z.a7..z.a8..z.a9..z.a10..z.a11..z.a12;

draw p0;
draw ddline(z.a5, z.a6)(0.2, 0.2) pensemibold;

dOt z.a1,z.a2,z.a3,z.a4,z.a5,z.a6,z.a7,z.a8,z.a9,z.a10,z.a11;

whitelabel.bot(btex $p_1$ etex, z.a1);
whitelabel.top(btex $p_2$ etex, z.a2);
whitelabel.bot(btex $p_3$ etex, z.a3);
whitelabel.top(btex $p_4$ etex, z.a4);
whitelabel.bot(btex $p_5$ etex, z.a5);
whitelabel.top(btex $p_6$ etex, z.a6);
whitelabel.bot(btex $p_7$ etex, z.a7);
whitelabel.top(btex $p_8$ etex, z.a8);
whitelabel.bot(btex $p_9$ etex, z.a9);
whitelabel.top(btex $p_{10}$ etex, z.a10);
whitelabel.bot(btex $p_{11}$ etex, z.a11);
endfig;

beginfig(30);
save u;
u:=1cm;

z.a0=(0,0)*u;
z.a1=(1.3,.5)*u;
z.a2=(1,.5)*u;
z.a3=(.7,.5)*u;
z.a34=(1.3,.8)*u;
z.a4=(2,0)*u;

save p; path p[];
p0=z.a0-z.a4+z.a0{right}..z.a1-z.a4+z.a0{up}..z.a2-z.a4+z.a0{down}..z.a3-z.a4+z.a0{up}..z.a34-z.a4+z.a0..
z.a0{right}..z.a1{up}..z.a2{down}..z.a3{up}..z.a34..
z.a0+z.a4-z.a0{right}..z.a1+z.a4-z.a0{up}..z.a2+z.a4-z.a0{down}..z.a3+z.a4-z.a0{up}..z.a34+z.a4-z.a0..{right}z.a4+z.a4-z.a0;
draw p0;

drawarrow subpath (0,8) of p0;
%draw ddline(z.a0,z.a4)(.2,.2) dashed evenly;

dOt point 4 of p0,point 9 of p0,point 14 of p0;

label.top(btex $\alpha(-T)$ etex, point 4 of p0);
label.top(btex $\alpha(0)$ etex, point 9 of p0);
label.top(btex $\alpha(T)$ etex, point 14 of p0);
label.lft(btex $\dots$ etex,z.a0-z.a4+z.a0);
label.rt(btex $\dots$ etex,z.a4+z.a4-z.a0);
endfig;

beginfig(31);
save u;
u:=.5cm;

z.a0=(0,0)*u;
z.a1=(0,1)*u;
z.a2=(3,-3)*u;
z.a3=(6,1)*u;
z.a4=(6,0)*u;
z.a5=(6,-1)*u;
z.a6=(6,2)*u;
z.a7=(3,-4)*u;
z.a8=(0,2)*u;
z.a9=(0,-1)*u;

save p; path p[];
p0=z.a0{right}..z.a1{left}..z.a2..z.a3{left}..z.a4{right}..z.a5{left}..z.a6{right}..z.a7..z.a8{right}..z.a9{left}..cycle;
draw p0;

p1=ddline(z.a1, z.a3)(.5,.5);

draw p1 dashed evenly;

z.b1=p1 intersectionpoint subpath (8,9) of p0;
z.b2=p1 intersectionpoint subpath (7,8) of p0;
z.b3=p1 intersectionpoint subpath (6,7) of p0;
z.b4=p1 intersectionpoint subpath (5,6) of p0;

hatchfill subpath (1,3) of p0 --cycle withcolor (67, 2mm, -.5bp);

dOt z.a0,z.a4, z.a1, z.a3, z.b1,z.b2, z.b3, z.b4;

whitelabel.bot(btex $v$ etex, z.a0);
whitelabel.bot(btex $w$ etex, z.a4);
whitelabel.bot(btex $F$ etex, .5[z.a0,z.a4]);
label.top(btex $x$ etex, z.a1);
label.top(btex $y$ etex, z.a3);
label.urt(btex $p_1$ etex, z.b1);
label.ulft(btex $p_2$ etex, z.b2);
label.urt(btex $p_3$ etex, z.b3);
label.ulft(btex $p_4$ etex, z.b4);
whitelabel.top(btex $\alpha_1$ etex, z.a2);
label.bot(btex $\alpha_2$ etex, z.a7);
endfig;

beginfig(32);
save u;
u:=.7cm;

save p; path p[];

z.o1=(0,0)*u;
x.r1=.6*u;
p1=circle(z.o1,x.r1);
draw p1;

z.o2=(4,0)*u;
x.r2=.7*u;
p2=circle(z.o2,x.r2);
draw p2;

z.o3=(8,0)*u;
x.r3=1.1*u;
p3=circle(z.o3,x.r3);
draw p3;

z.d1=(1,1);
z.d2=(1,-1);
z.d3=(1,0);
z.d4=(-1,0);
z.d5=(-.8,-.3);
z.d6=(-1,.5);

p0=
(directionpoint z.d1 of p1){z.d1}..
(2,-1)*u..
(1.5,-3)*u..
(3,-3)*u..
(2.2,-1)*u..
(directionpoint z.d2 of p2){z.d2}..
(4,-3)*u..
(directionpoint z.d3 of p3){z.d3}..
(10,.2)*u..
(directionpoint z.d4 of p3){z.d4}..
(directionpoint z.d5 of p2){z.d5}..
(directionpoint z.d6 of p1){z.d6}..
(-2,0)*u..
cycle;
draw p0;

z.p1=directionpoint z.d1 of p1;
z.p2=directionpoint z.d2 of p2;
z.p3=directionpoint z.d3 of p3;

dOt z.p1, z.p2, z.p3;

label(btex $D_1$ etex, z.o1);
label(btex $D_2$ etex, z.o2);
label(btex $D_3$ etex, z.o3);
label.lrt(btex $p_1$ etex, z.p1);
label.llft(btex $p_2$ etex, z.p2);
label.bot(btex $p_3$ etex, z.p3);

endfig;

beginfig(33);
save u;
u:=.35cm;

x.shift=9*u;
x.width=.2*u;
x.size=2*u;
x.gap=4*u;
x.right=10*u;

z.r=(x.size,x.shift);


z.a0=(x.width,x.shift);
z.a1=z.a0 rotatedabout (z.r,-60);
z.a2=z.a0 rotatedabout (z.r,-120);
z.a3=z.a0 rotatedabout (z.r,-180);
z.a4=z.a3 reflectedabout((0,0),(1,0));
z.a5=z.a2 reflectedabout((0,0),(1,0));
z.a6=z.a1 reflectedabout((0,0),(1,0));
z.a7=z.a0 reflectedabout((0,0),(1,0));

z.aa4=z.a2 reflectedabout((0,x.shift),(1,x.shift));
z.aa5=z.a1 reflectedabout((0,x.shift),(1,x.shift));

z.aaa8=z.a7 reflectedabout((0,-x.gap),(1,-x.gap));
z.aaa9=z.a6 reflectedabout((0,-x.gap),(1,-x.gap));
z.aaa10=z.a5 reflectedabout((0,-x.gap),(1,-x.gap));
z.aaa11=z.a4 reflectedabout((0,-x.gap),(1,-x.gap));



save p; path p[];

p1=z.a0{up}..z.a1..z.a2..z.a3{down}..z.a4{down}..z.a5..z.a6..z.a7{up}..cycle;
draw p1;

p2=p1 reflectedabout((0,0),(0,1));
draw p2;

z.b0=z.a0 reflectedabout((0,0),(0,1));
z.b1=z.a1 reflectedabout((0,0),(0,1));
z.b2=z.a2 reflectedabout((0,0),(0,1));
z.b3=z.a3 reflectedabout((0,0),(0,1));
z.b4=z.a4 reflectedabout((0,0),(0,1));
z.b5=z.a5 reflectedabout((0,0),(0,1));
z.b6=z.a6 reflectedabout((0,0),(0,1));
z.b7=z.a7 reflectedabout((0,0),(0,1));

z.c1= z.b0 rotatedabout (z.r,-60);
z.c2= z.b0 rotatedabout (z.r,-120);
z.c3= z.b0 rotatedabout (z.r,-180);
z.c4=z.c3 reflectedabout((0,0),(1,0));
z.c5=z.c2 reflectedabout((0,0),(1,0));
z.c6=z.c1 reflectedabout((0,0),(1,0));
z.c7=z.c6 reflectedabout((0,0),(0,1));
z.c8=z.c5 reflectedabout((0,0),(0,1));
z.c9=z.c4 reflectedabout((0,0),(0,1));
z.c10=z.c3 reflectedabout((0,0),(0,1));
z.c11=z.c2 reflectedabout((0,0),(0,1));
z.c12=z.c1 reflectedabout((0,0),(0,1));

p3=
z.c3{down}..
z.c4{down}..
z.c5..
z.c6{dir 150}..
z.c7{dir -150}..
z.c8..
z.c9{up}..
z.c10{up}..
z.c11..
z.c12{dir-30}..
z.c1{dir 30}..
z.c2..
cycle;
draw p3;

z.d5=z.c2 reflectedabout((0,x.shift),(1,x.shift));
z.d4=z.c1 reflectedabout((0,x.shift),(1,x.shift));

z.d8=z.b7 reflectedabout((0,-x.gap),(1,-x.gap));
z.d9=z.c6 reflectedabout((0,-x.gap),(1,-x.gap));
z.d10=z.c5 reflectedabout((0,-x.gap),(1,-x.gap));
z.d11=z.c4 reflectedabout((0,-x.gap),(1,-x.gap));

p4=z.a0{up}..z.a1..z.a2..z.a3..z.aa4..z.aa5..cycle;
draw p4 shifted (x.right,0);
draw p4 shifted (2*x.right,0);
draw p4 rotated 180 shifted (2*x.right,0);

p5=
z.c1{dir 30}..
z.c2..
z.c3{down}..
z.d5..
z.d4..
z.b0{up}..
z.b1..
z.b2..
z.b3{down}..
z.b4{down}..
z.b5..
z.b6..
z.b7{up}..
z.d8{up}..
z.d9..
z.d10..
z.d11{down}..
z.c4{down}..
z.c5..
z.c6{dir 150}..
z.c7{dir -150}..
z.c8..
z.c9{up}..
z.c10{up}..
z.c11..
z.c12{dir-30}..
cycle;

draw p5 shifted (x.right,0);

p6=
z.aaa8{up}..
z.aaa9..
z.aaa10..
z.aaa11{down}..
z.a4{down}..
z.a5..
z.a6..
z.a7{up}..
cycle
;

draw p6 shifted (x.right,0);

p7=z.c10{up}..
z.c11..
z.c12{dir-30}..
z.c1{dir 30}..
z.c2..
z.c3{down}..
z.d5..
z.d4..
z.b0{up}..
z.b1..
z.b2..
z.b3{down}..
-z.aaa11{down}..
-z.aaa10..
-z.aaa9..
-z.aaa8{up}..
z.d8{up}..
z.d9..
z.d10..
z.d11{down}..
z.c4{down}..
z.c5..
z.c6{dir 150}..
z.c7{dir -150}..
z.c8..
z.c9{up}..
-z.d5..
-z.d4..
-z.b0{down}..

z.a7{down}..
z.a6..
z.a5..
z.a4{up}..

z.aaa11{up}..
z.aaa10..
z.aaa9..
z.aaa8{down}..

-z.d8{down}..
-z.d9..
-z.d10..
-z.d11{up}..
cycle;
draw p7 shifted (2*x.right,0);

hatchfill (reverse p1)--p3--p2--cycle  withcolor (57, .7mm, -.5bp);

hatchfill ((reverse p4 shifted (x.right,0))--p5 shifted (x.right,0)--cycle)--(reverse p6 shifted (x.right,0))--cycle  withcolor (57, .7mm, -.5bp);

hatchfill ((reverse p4 shifted (2*x.right,0))--p7 shifted (2*x.right,0)--cycle)--(reverse p4 rotated 180 shifted (2*x.right,0))--cycle  withcolor (57, .7mm, -.5bp);

draw (z.a3--z.aaa11 cutbefore p5 cutafter subpath (5,15) of p5) shifted (x.right,0) dashed evenly penhair;
draw (z.a0--z.aaa8 cutbefore p5 cutafter subpath (5,15) of p5) shifted (x.right,0) dashed evenly penhair;
draw (z.b0--z.d8) shifted (x.right,0) penhair;
draw (z.c3--z.d11) shifted (x.right,0) penhair;

draw (z.a3--z.aaa11 cutbefore p5 cutafter subpath (5,15) of p5) shifted (2*x.right,0) dashed evenly penhair;
draw (z.a0--z.aaa8 cutbefore p5 cutafter subpath (5,15) of p5) shifted (2*x.right,0) dashed evenly penhair;

draw (z.a3--z.aaa11 cutbefore p5 cutafter subpath (5,15) of p5) rotated 180 shifted (2*x.right,0) dashed evenly penhair;
draw (z.a0--z.aaa8 cutbefore p5 cutafter subpath (5,15) of p5) rotated 180 shifted (2*x.right,0) dashed evenly penhair;

draw (z.b0--z.d8) shifted (2*x.right,0) penhair;
draw (z.c3--z.d11) shifted (2*x.right,0) penhair;
draw (z.b0--z.d8) rotated 180 shifted (2*x.right,0) penhair;
draw (z.c3--z.d11) rotated 180 shifted (2*x.right,0) penhair;

draw (-2.3*x.size,0)--(2.3*x.size,0)  dashed linedot penhair;
draw ((-.3*x.size,-(-x.shift+x.gap))--(2.3*x.size,-(-x.shift+x.gap))) shifted (x.right,0)  dashed linedot penhair;

label.bot(btex $V_1$ etex, (0,-x.shift-2*u));
label.bot(btex $V_2$ etex, (x.right,-x.shift-2*u));
label.bot(btex $V_3$ etex, (2*x.right,-x.shift-2*u));

endfig;

beginfig(34);
save u;
u:=1cm;

save p; path p[];

p1=circle(origin,u);
p2=circle(origin,1.2*u);
draw p1;
draw p2;

hatchfill reverse p1--p2--cycle  withcolor (57, 1mm, -.5bp);
endfig;


beginfig(35);
save u;
u:=.5cm;

save p; path p[];
p0=(0,0)*u..(2,0)*u..(1,0)*u..(3,0)*u..cycle;
draw p0;

endfig;

beginfig(36);
save u;
u:=1cm;
save p; path p[];

z.x=(2,0)*u;
z.y=(.5,1)*u;
z.z=(0,3)*u;

p1=origin--z.x--z.x+z.y--z.y--cycle;
p2=p1 shifted z.z;

draw p2 penhair;

z.p=.5*(z.x+z.y);

z.a0=z.z+.2*z.x+.3*z.y;
z.a1=z.z+.4*z.x+.2*z.y;
z.a2=z.z+.5*z.x+.3*z.y;
z.a3=z.z+.4*z.x+.4*z.y;

p3=z.a0..z.a1..z.a2..z.a3..cycle;
draw p3 penbold;

z.b1=z.p-.1*z.x;
z.b2=z.p-.05*z.y;
z.b3=z.p+.1*z.x;

p4=directionpoint (-1,-1) of p3{(-1,-1)}..z.b1..z.b2..z.b3..directionpoint (-1,1) of p3{(-1,1)};
draw p4 pensemibold;

draw (subpath (0,3) of p1) cutafter p4 penhair;
draw (subpath (3,4) of p1) cutbefore p4 penhair;

label(btex $\Pi_h$ etex, z.z+.8*z.x+.3*z.y);
label(btex $\Pi_0$ etex, .8*z.x+.3*z.y);
label.top(btex $\alpha_h$ etex, z.a3);
label(btex $\Sigma_h$ etex, .5*z.z+.4*z.x+.5*z.y);


endfig;

beginfig(37) 
save u;
u:=1.4cm;

save p; path p[];

z.x0=(3.2,0)*u;
z.x1=(3,.5)*u;
z.x2=(4,1)*u;
z.x3=(5,.4)*u;
z.y=(4.8,0)*u;
z.y0=.6[z.x2,z.x3];
z.z0=.4[z.x0,z.y0];

p2=(3,-.2)*u..(3,1.2)*u..(5,1.3)*u..(5,-.2)*u..z.z0{z.x0-z.y0}..cycle;
draw p2 penbold;


draw z.x0--z.x1--z.x2--z.x3--z.y--cycle;
draw z.x0--z.y0;

dOt z.x0,z.y,z.y0,z.z0;

label.lft(btex $x$ etex, z.x0);
label.rt(btex $y$ etex, z.y);
label.urt(btex $y_0$ etex, z.y0);
label.top(btex $z$ etex, z.z0);
label.top(btex $R$ etex, (4,1.2)*u);

endfig;

beginfig(38) 
save u;
u:=.6cm;

z.a0=(-2,1)*u;
z.a1=(-1,.25)*u;
z.a2=(0,0)*u;
z.a3=(1,.25)*u;
z.a4=(2,1)*u;

save p; path p[];

p1=z.a0..z.a1..z.a2..z.a3..z.a4;
draw p1;

z.b0=(-1.4,5)*u;
%z.b1=(-1.9,2)*u;
%z.b3=(1.9,2)*u;
z.b4=(1.4,5)*u;

p2=z.b0{down}...subpath (1,3) of p1...z.b4{up};
draw p2;
hatchfill p2--cycle  withcolor (57, 1mm, -.5bp);

draw (-2,0)*u--(2,0)*u dashed evenly;

dOt z.a2;

label.bot(btex $p$ etex, z.a2);
label.rt(btex $\Sigma$ etex, z.a4);
label.lrt(btex $\Sigma'$ etex, z.b4);
label.bot(btex $\T_p$ etex, (2,0)*u);
whitelabel(btex $K$ etex, (0,3)*u);
endfig;

beginfig(39) 
save u;
u:=.7cm;

z.a0=(-1,0)*u;
z.a1=(0,.5)*u;
z.a2=(1,0)*u;
z.a3=(0,-.5)*u;

save p; path p[];

p1=z.a0..z.a1..z.a2..z.a3..cycle;
draw p1 penbold;

z.b0=(-3,0)*u;
z.b1=(0,2.5)*u;
z.b2=(3,0)*u;
z.b3=(0,-2.5)*u;

p2=z.b0..z.b1..z.b2..z.b3..cycle;
draw p2 penbold;

draw circle (z.a1,z.b1-z.a1);

dOt z.a1, z.b1;

label.top(btex $p$ etex, z.b1);
label.top(btex $p'$ etex, z.a1);
label.rt(btex $\Sigma_R$ etex, z.b2);
label.rt(btex $\Sigma$ etex, z.a2);

endfig;

beginfig(40) 
save u;
u:=1.3cm;

z.p=(0,2)*u;
z.p0=(.5,0)*u;
z.p1=-z.p0;
z.m=origin;

rimmark(z.p--z.p0, z.p--z.p1);
rimmark2(z.m--z.p0, z.m--z.p1);
mark_rt_angle(z.p, z.m, z.p0);

draw z.m--z.p--z.p0--z.p1--z.p;
dOt z.m,z.p,z.p0,z.p1;

 

label.top(btex $p$ etex, z.p);
label.rt(btex $\bar p$ etex, z.p0);
label.lft(btex $\bar p'$ etex, z.p1);
label.bot(btex $m$ etex, z.m);
endfig;

beginfig(41) 
save u;
u:=1.3cm;

z.p=(-1,1)*u;
z.pp=(-.7,0)*u;
z.q=(1,.9)*u;
z.qq=(.7,0)*u;

z.p1=altitude(z.qq,z.p,z.pp);
z.q1=altitude(z.qq,z.q,z.pp);

mark_rt_angle(z.p, z.p1, z.pp);
mark_rt_angle(z.q, z.q1, z.qq);

save p; path p[];

z.s=(0,-1)*u;
p1=z.pp{(z.p-z.pp) zscaled (0,-1)}..
z.qq{(z.q-z.qq) zscaled (0,-1)}..
z.s..cycle;

draw p1;
draw ddline(z.qq,z.pp)(.4,.4) penhair;
draw z.p--z.pp--z.qq--z.q penbold;
draw z.p--z.p1 dashed evenly;
draw z.q--z.q1 dashed evenly;

hatchfill p1  withcolor (57, 1mm, -.5bp);

dOt z.p,z.pp,z.q,z.qq,z.p1,z.q1;

label.top(btex $p$ etex, z.p);
label.top(btex $q$ etex, z.q);
whitelabel.bot(btex $\bar p$ etex, z.pp);
whitelabel.bot(btex $\bar q$ etex, z.qq);
whitelabel.(btex $K$ etex, (z.pp+z.qq+z.s)/3);


endfig;

beginfig(42) 
save u;
u:=1cm;

z.p=origin;
z.g0=(-1,-1)*u;
z.g1=(1,0)*u;
z.g2=(0,1)*u;
z.g3=(-.5,0)*u;

save p; path p[];
p0=z.g0{right}..z.g1..z.g2..z.g3;

draw p0;
z.x=point 1.3 of p0;
z.y=point 1.7 of p0;


hatchfill subpath (1.3,1.7) of p0--z.p--cycle withcolor (57, 1mm, -.5bp);
draw z.x--z.p--z.y;
dOt z.p,z.x,z.y;

label.bot(btex $\tilde p$ etex, z.p);
label.urt(btex $\tilde x$ etex, z.x);
label.urt(btex $\tilde y$ etex, z.y);
label.ulft(btex $\tilde \gamma$ etex, point 2.5 of p0);
endfig;

beginfig(43) 
save u;
u:=1cm;

z.a=(1,0)*u;

save p; path p[];

p0=circle(origin, z.a);
draw p0;

z.x1=(.3,.4)*u;
z.y1=z.a rotated (90+angle z.x1);

p1=(-z.y1)..(z.x1-z.y1)/sqrt(2)..z.x1..(z.x1+z.y1)/sqrt(2)..z.y1..(-z.x1+z.y1)/sqrt(2)..(-z.x1)..(-z.x1-z.y1)/sqrt(2)..cycle;
draw subpath (0,4) of p1;
draw subpath (4,8) of p1 dashed evenly;

z.x2=(-.3,.3)*u;
z.y2=z.a rotated (90+angle z.x2);

p2=(-z.y2)..(z.x2-z.y2)/sqrt(2)..z.x2..(z.x2+z.y2)/sqrt(2)..z.y2..(-z.x2+z.y2)/sqrt(2)..(-z.x2)..(-z.x2-z.y2)/sqrt(2)..cycle;
draw subpath (0,4) of p2;
draw subpath (4,8) of p2 dashed evenly;

z.x3=(.05,-.3)*u;
z.y3=z.a rotated (90+angle z.x3);

p3=(-z.y3)..(z.x3-z.y3)/sqrt(2)..z.x3..(z.x3+z.y3)/sqrt(2)..z.y3..(-z.x3+z.y3)/sqrt(2)..(-z.x3)..(-z.x3-z.y3)/sqrt(2)..cycle;
draw subpath (0,4) of p3;
draw subpath (4,8) of p3 dashed evenly;

hatchfill 
((subpath (0,4) of p1) cutbefore (subpath (0,4) of p3) cutafter (subpath (0,4) of p2))
--
((subpath (0,4) of p2) cutbefore (subpath (0,4) of p1) cutafter (subpath (0,4) of p3))
--
((subpath (0,4) of p3) cutbefore (subpath (0,4) of p2) cutafter (subpath (0,4) of p1))
--cycle
 withcolor (57, 1mm, -.5bp);
 
whitelabel(btex $\Delta$ etex, origin);
endfig;

beginfig(44) 
save u;
u:=.7cm;

drawarrow (2,-2)*u--(2,0)*u;
drawarrow (2,0)*u--(-2,0)*u;
drawarrow (-2,0)*u--(-2,1)*u;
drawarrow (-2,1)*u--(-1,1)*u;
drawarrow (-1,1)*u--(-1,-1)*u;
drawarrow (-1,-1)*u--(1,-1)*u;
drawarrow (1,-1)*u--(1,2)*u;
drawarrow (1,2)*u--(0,2)*u;
drawarrow (0,2)*u--(0,-2)*u;
drawarrow (0,-2)*u--(2,-2)*u;

label(btex $-1$ etex, (-1.5,.5)*u);
label(btex $1$ etex, (-.5,-.5)*u);
label(btex $2$ etex, (.5,-.5)*u);
label(btex $0$ etex, (1.8,1)*u);
label(btex $1$ etex, (.5,1)*u);
label(btex $1$ etex, (1.5,-1.5)*u);
endfig;

beginfig(45) 
save u;
u:=1cm;

z.v=(.8,1)*u;
z.w=(2,3)*u;

labelarcs(z.v,z.w, (3,1)*u, 9, btex $\beta$ etex);
labelarcs(z.v,z.w, (-1,2)*u, 10, btex $\alpha$ etex);

draw (0,0)*u--(-1,2)*u--z.w--(3,1)*u--(2.8,.2)*u--(1.2,-.1)*u--z.v--cycle;
draw z.v--z.w;

dOt z.v,z.w;

label.rt(btex $w$ etex, z.v);
label.top(btex $v$ etex, z.w);
label(btex $Q$ etex, (0.2,1.8)*u);
label(btex $R$ etex, (2,1)*u);

endfig;

beginfig(46) 
save u;
u:=1cm;
x.s=.5*u;

draw (0,0)*u..(-x.s,-x.s)..(0,0)*u..(0,1)*u..(-x.s,u+x.s)..(0,1)*u..(1,1)*u..(u+x.s,u+x.s)..(1,1)*u..(1,0)*u..(u+x.s,-x.s)..(1,0)*u..cycle;
dOt (0,0)*u,(0,0)*u,(0,1)*u,(0,1)*u,(1,1)*u,(1,1)*u,(1,0)*u,(1,0)*u;

label.urt(btex $a$ etex, (0,0)*u);
label.lrt(btex $b$ etex, (0,1)*u);
label.llft(btex $c$ etex, (1,1)*u);
label.ulft(btex $d$ etex, (1,0)*u);
endfig;

beginfig(47) 
save u;
u:=1cm;

z.a=(0,1)*u;
z.b=z.a rotated 120;
z.c=z.a rotated -120;
z.s=(4,0)*u;

draw z.a..2*z.a{right}..z.a..z.b..2*z.b{dir 120}..z.b..z.c..2*z.c{dir -120}..z.c..cycle;

draw z.a+z.s{dir -120}..origin+z.s{right}..z.a+z.s{dir 120}..z.b+z.s..2*z.b+z.s{dir 120}..z.b+z.s..z.c+z.s..2*z.c+z.s{dir -120}..z.c+z.s..cycle;

dOt z.a,z.b,z.c,z.a+z.s,z.b+z.s,z.c+z.s;

z.e=(0,.5)*u;

z.d0=(0,-1)*u+1.7*z.s;
z.d1=z.d0+z.e;
z.d2=z.d0+2*z.e;
z.d3=z.d0+3*z.e;
z.d4=z.d0+4*z.e;
z.d5=z.d0+5*z.e;
z.d6=z.d0+6*z.e;

draw z.d1..
z.d2..
z.d3..
z.d4..
z.d5{right}..z.d4{left}..z.d6{right}..z.d3{left}..z.d0{right}..z.d2{left}..cycle;

dOt z.a,z.b,z.c,z.a+z.s,z.b+z.s,z.c+z.s,z.d2,z.d3,z.d4;

endfig;

beginfig(48) 
save u;
u:=1cm;

z.a0=(0,0)*u;
z.a1=(.5,1)*u;
z.a2=(0,2.5)*u;

z.b1=.2[z.a0,z.a1];
z.b2=.5[z.a1,z.a2];

z.v=(-1,.2)*u;

labelarcs(2*z.a1-z.a0,z.a1, z.a2, 10, btex $\theta_i$ etex);
labelarcs(z.b1+z.v,z.b1, z.a1, 10, btex $\phi_i$ etex);
labelarcs(z.b2+z.v,z.b2, z.a2, 10, btex $\phi_{i+1}\,\,$ etex);

save p; path p[];

p0=z.a0--z.a1--z.a2;
draw p0 penbold;
draw z.a1--z.a1+14*unitvector(z.a1-z.a0) penhair;

drawarrow z.b1--z.b1+z.v;
drawarrow z.a1--z.a1+z.v;
drawarrow z.b2--z.b2+z.v;

endfig;

beginfig(49) 
save u,r;
u:=1cm;
r:=1cm;


z.s=(2.5,0)*u;
z.o1=origin;
z.o2=z.o1+z.s;
z.o3=z.o1+2*z.s;
z.o4=z.o1+3*z.s;

draw circle(z.o1,r);
dOt z.o1+(0,-1)*r;

draw circle(z.o2,r);
dOt z.o2+(0,-1)*r, z.o2-(0,-1)*r;

draw circle(z.o3,r);
draw z.o3+(0,-1)*r--z.o3-(0,-1)*r;
dOt z.o3+(0,-1)*r, z.o3-(0,-1)*r;

draw circle(z.o4,r);
draw z.o4+(0,-1)*r--z.o4-(0,-1)*r;
draw z.o4+(-1,0)*r--z.o4-(-1,0)*r;
dOt z.o4,z.o4+(0,-1)*r, z.o4-(0,-1)*r,z.o4+(-1,0)*r, z.o4-(-1,0)*r;

label.bot(btex $1-1+1=1;$ etex, z.o1+(0,-1)*r);
label.bot(btex $2-2+1=1;$ etex, z.o2+(0,-1)*r);
label.bot(btex $2-3+2=1;$ etex, z.o3+(0,-1)*r);
label.bot(btex $5-8+4=1.$ etex, z.o4+(0,-1)*r);

endfig;

beginfig(50) 
save u;
u:=1cm;

z.p=(0,0)*u;
z.x=(-1,2)*u;
z.z=(2,2)*u;
z.y=.4[z.x,z.z];

z.s=(4,0)*u;

z.p1=z.p+z.s;
z.x1=z.x+z.s;
z.z1=z.z+z.s;
z.y1=z.y+z.s;

z.xx=z.x rotated -3;
z.zz=z.z rotated 3;

z.zzz=(-abs(z.y-z.z)/abs(z.y-z.x))[z.yy,z.xx];



save p; path p[];

p1=circle(z.xx,z.y-z.x);
p2=circle(z.zz,z.y-z.z);
z.yy=cross.top(p1,p2);

draw z.p1--z.x1--z.z1--cycle;
draw z.p--z.xx--z.yy--z.zz--cycle;

draw z.p--z.yy dashed evenly;
draw z.p1--z.y1 dashed evenly;

rimmark(z.p1--z.x1,z.p--z.xx);
rimmark2(z.x1--z.y1,z.xx--z.yy);
rimmark3(z.y1--z.z1,z.yy--z.zz,z.zzz--z.yy);
rimmark4(z.z1--z.p1,z.zz--z.p);

draw z.zzz--z.yy;
draw z.zzz--z.p dashed evenly;

dOt z.p,z.p1,z.x1,z.y1,z.z1,z.xx,z.yy,z.zz,z.zzz;

label.bot(btex $p$ etex, z.p);
label.bot(btex $p'$ etex, z.p1);
label.lft(btex $x'$ etex, z.x1);
label.lft(btex $x$ etex, z.xx);
label.top(btex $y'$ etex, z.y1);
label.top(btex $y$ etex, z.yy);
label.rt(btex $z'$ etex, z.z1);
label.rt(btex $z$ etex, z.zz);
label.rt(btex $\bar z$ etex, z.zzz);
endfig;

beginfig(51) 
save u;
u:=1cm;

z.s=(3,0)*u;

draw origin{(1,1)}..(1,1)*u{up}..{down}origin;
dOt origin;

%draw z.s{right}..z.s+(1,1)*u..cycle;

endfig;

beginfig(52) 
save u;
u:=1cm;

z.z=origin;
z.r=(1,1)*u;
draw circle(z.z,z.r);

z.p=(.3,-.2)*u;
z.q=-z.p;

draw z.p--z.q;

z.s=(.5,-.5)*u;
save p; path p[];
p1= z.p{up}..z.r..z.q{-1,-1}..z.s..cycle;

draw p1;

p2=(subpath (0,2) of p1) rotated 180;

draw p2 dashed evenly;


dOt z.p,z.q,z.r,-z.r,z.z;

label.rt(btex $p$ etex, z.p);
label.ulft(btex $q$ etex, z.q);
label.urt(btex $z$ etex, z.z);
label.urt(btex $r$ etex, z.r);
label.llft(btex $r^{*}$ etex, -z.r);

label.ulft(btex $\alpha_1$ etex, point 1.6 of p1+(1,0));
label.ulft(btex $\alpha_1^{*}$ etex, point .6 of p2+(1,0));
endfig;
end
