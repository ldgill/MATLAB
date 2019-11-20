%% Finding roots of the Characteristic Polynomial
x1 = fzero(@(x) char_eq(x), 4)
x2 = fzero(@(x) char_eq(x), 2.5)
x3 = fzero(@(x) char_eq(x), 0.5)

%% Now let's find some eigenvectors
A = [1, 2, -1 ; 1, 0, 1 ; 4, -4, 5];
B = A - x2*eye(3);
rref(B)

%% Okay but this method is clunky
eigenvalues = eig(A);

%% Even smoother
%[V D] = eig(A);
[V D] = eig(A, 'nobalance');