//等距螺旋线(离散)
v = 1; % line velocity
w = 1; % Angular velocity
t = 1:.1:100; % time
t = -t; % control direction
x = v.*t.*cos(w*t); % x coordinates
y = v.*t.*sin(w*t); % y coordinates
plot(x,y,'k*'); % plot figure
axis equal % make figure squre

90度-10度间变化(离散点在对应半径),第一圈为90
v = 1; % line velocity
w = 1; % Angular velocity
t = 1:1:100; % time
% t = -t; % control direction
d = (((10-90).*t/200)+90).*t
x = v.*t.*cosd(d); % x coordinates
y = v.*t.*sind(d); % y coordinates
plot(x,y,'k*'); % plot figure
axis equal % make figure squre

(((pi/2-pi/12)*t/100)+pi/2)*t

.mod

-3786.66666666667

-3781.46666666667

-3790.80000000000

-3793.86666666667

(1-(防御*0.06)/(1+防御*0.06))


		local real degree = ModuloReal((((-80)*times/200)+90)*times,360.)+i*51.42
		local real x = 30 * times * CosBJ(degree) + LoadReal(spellTable,GetHandleId(t),4)
		local real y = 30 * times * SinBJ(degree) + LoadReal(spellTable,GetHandleId(t),5)