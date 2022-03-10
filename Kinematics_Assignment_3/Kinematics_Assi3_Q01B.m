th1 = 0; th2 = 0; d3 = 1;
d1 = 2; a2 = 3;

L1 = link([pi/2 0 th1 d1, 0]);
L2 = link([-pi/2 a2 th2 0, 0]);
L23 = link([pi/2 0 pi/2 0, 0]);
L3 = link([0 0 0 d3, 1]);
RRP_robot = robot({L1 L2 L23 L3});
T03 = fkine (RRP_robot, [deg2rad(14.12) deg2rad(-1.43) pi/2 5])
PO = [0;0;0;1]
Pend = T03*PO