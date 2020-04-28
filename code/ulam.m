%{
    The Ulam spiral or prime spiral is a graphical depiction of the set of 
 prime numbers. It is constructed by writing the positive integers in a 
 square spiral and specially marking the prime numbers.
%}

N = 200;


M = flipud(spiral(N));

M_prime = zeros(N);
M_prime(isprime(M)) = 1;

map = [0.2 0.1 0.5; 0.9 1 0]; % [incompleted; completed] RGB triplet
colormap(map)
imagesc(M_prime)
title('Ulam Spiral')
axis off