% Question 5

th1 = 0; th2 = 0; d3 = 1; th4 = 0;
d1 = 5; a1 = 3; a2 = 5; d4 = 1;

L1 = link([0 a1 th1 d1, 0]);
L2 = link([pi a2 th2 0, 0]);
L3 = link([0 0 0 d3, 1]);
L4 = link([0 0 th4 d4, 0]);

RRP_scara = robot ({L1 L2 L3 L4});
PO = [0;0;0;1]
T04 = fkine(RRP_scara, [deg2rad(-3.24) deg2rad(28.95) 0.5 deg2rad(0)])
Pend = T04*PO