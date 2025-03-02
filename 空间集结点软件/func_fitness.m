function [fitness2, postion2] = func_fitness(dis2)
%UNTITLED2 此处显示有关此函数的摘要
%   此处显示详细说明
fitness2 = 1 ./ dis2;
concentration = fitness2 ./ sum(fitness2);
[m2, n2] = size(dis2);
sum_con = 0;
standard = rand();
for j = 1:m2;
    sum_con = sum_con + concentration(j, :);
    if sum_con > standard;
        postion2 = j;
        break
    end
end
end

