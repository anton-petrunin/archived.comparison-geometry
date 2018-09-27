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

%outputformat := "svg";


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

label.bot(btex $p$ etex, z.p);
label.bot(btex $q$ etex, z.q);
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

label.bot(btex $p$ etex, z.p);
label.bot(btex $q$ etex, z.q);
label.urt(btex $p'$ etex, z.pp);
label.ulft(btex $q'$ etex, z.qq);
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

label.bot(btex $p$ etex, z.p);
label.bot(btex $q$ etex, z.q);
label.urt(btex $p'$ etex, z.pp);
label.ulft(btex $q'$ etex, z.qq);
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

dOt point 1.5 of p0, point 3.5 of p0;
endfig;

beginfig(27) 
save u;
u:=1cm;
endfig;


end
