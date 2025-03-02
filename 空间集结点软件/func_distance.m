function [distance1] = func_distance (array1, A1, weight1)
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
distance1 = [];
[m, n] = size(A1);
[m1, n1] = size(array1);
for i = 1:m1;
    C1 = (A1 - repmat(array1(i, :), m, 1)) .^ 2; %计算点到点坐标差值的平方
    C2 = abs(C1);                                %计算差值的绝对值
    C3 = weight1 * (sum(C2, 2) .^ 0.5);            %计算加权距离之和
    distance1 = [distance1; C3];                   %返回点集距离列向量
end
end

