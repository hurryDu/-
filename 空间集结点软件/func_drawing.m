function func_drawing(A, cordinate)
%UNTITLED4 此处显示有关此函数的摘要
%   此处显示详细说明
[m n] = size(A);
figure(1)
if n == 2;
    scatter(A(:,1),A(:,2));
    hold on
    scatter(cordinate(:,1), cordinate(:,2), 'filled');
    for i = 1:m;
        B = [A(i,:);cordinate];
        plot(B(:,1),B(:,2),'--k');
    end
else if n == 3;
        scatter3(A(:,1),A(:,2), A(:, 3));
        hold on
        scatter3(cordinate(:,1), cordinate(:,2), cordinate(:,3), 'filled');
        for i = 1:m;
            B = [A(i,:);cordinate];
            plot3(B(:,1),B(:,2), B(:, 3),'--k');
        end
        xlabel('一产');
        ylabel('二产');
        zlabel('三产');
    end
end


end

