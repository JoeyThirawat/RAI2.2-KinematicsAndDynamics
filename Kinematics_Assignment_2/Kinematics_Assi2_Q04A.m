%% FK for RPP with 1 DOF Wrist
% DH alpha, a, theta, d
syms th1 th4 d1 d2 d3 d4

% RPP
L1 = link([0, 0, th1, d1]);
L2 = link([0, -pi/2, 0, 0, d2, 1]);
L3 = link([0, 0, 0, d3, 1]);

% 1 DOF Wrist
L4 = link([0, 0, th4, d4]);

RPP = robot({L1 L2 L3 L4});
qzRPP = [th1 0 0 th4];
TRPP = fkine(RPP, qzRPP)