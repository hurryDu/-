function [updated_array] = func_updated_array(array3, pos3, step3, A3, weight3)
point = array3(pos3, :);
[m3, n3] = size(array3);
points = repmat(point, (2 * n3), 1);
points = [points; point];
for k = 1: n3;
    points(k,k) = points(k,k) + step3;
end
for k = (n3 + 1): (2 * n3);
    points(k,k - n3) = points(k,k - n3) - step3;
end
distances = func_distance(points, A3, weight3);
[a b] = min(distances);
array3(pos3, :) = points(b, :);
updated_array = array3;
end