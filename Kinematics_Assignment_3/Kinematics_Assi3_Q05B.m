%% Assingment 3 - Q05
%  b)
th1 = 0; th2 = 0; d3 = 1; th4 = 0;
d1 = 5; a1 = 3; a2 = 5; d4 = 1;

L1 = link([0 a1 th1 d1, 0]);
L2 = link([pi a2 th2 0, 0]);
L3 = link([0 0 0 d3, 1]);
L4 = link([0 0 th4 d4, 0]);

RRP_scara = robot({L1 L2 L3 L4});
position = transl(7.5, 2, 3.5);
IC = [pi/10 0 0 pi/10];
M = [1 1 1 1 0 0];

data = ikine(RRP_scara, position, IC, M)
PO = [0;0;0;1]
T04 = fkine(RRP_scara, [data])
Pend = T04*PO