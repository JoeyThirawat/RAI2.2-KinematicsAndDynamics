%% FK for RRP with 3 DOF Wrist
% DH alpha, a, theta, d
syms th1 th2 th4 th5 th6 d3 d6 a1 a2

% RPP
L1 = link([0, a1, th1 0]);
L2 = link([pi, a2, th2, 0]);
L3 = link([0, 0, 0, d3, 1]);

% 3 DOF Wrist
L4 = link([-pi/2, 0, th4, 0]);
L5 = link([pi/2, 0, th5, 0]);
L6 = link([0, 0, th6, d6]);

RPP = robot({L1 L2 L3 L4 L5 L6});
qzRPP = [th1 th2 0 th4 th5 th6];
TRPP = fkine(RPP, qzRPP)