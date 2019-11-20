%Lianne Gill
%HW 11
%Section 004
[V, D] = eig(A, 'nobalance');
if det(A) == 0
    disp('linearly dependent');
end
if det(A) ~= 0
    disp('linearly indpenent');
    disp(D);
    disp(V)
    disp(inv(V))
    disp(V .* inv(V))
end