%% Assingment 3 - Q02
% a)
th1 = 0; th2 = 0; d3 = 1;
d1 = 2; a2 = 3;
L1 = link([pi/2 0 th1 d1, 0]);
L2 = link([-pi/2 a2 th2 0, 0]);
L23 = link([pi/2 0 pi/2 0, 0]);
L3 = link([0 0 0 d3, 1]);
RRP_robot = robot ({L1 L2 L23 L3}); 
position = transl(7.75, 1.95, 1.8);
IC = [0 1 deg2rad(90) 1];
M = [1 1 1 1 0 0];
data = ikine (RRP_robot, position, IC, M)

% b)
T03 = fkine(RRP_robot, [data])
P0 = [0;0;0;1]
Pend = T03*P0