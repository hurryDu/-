%version 1.0, compiled by sy.z in nov 27, 2018.
clear
%%%%%%%%%%%%%%%%%%�����趨��%%%%%%%%%%%%%%%%%%%%%%%%
times = 100000; %��������
step = 0.0001; %����
weight = [1 1 1 1 1 1 1 1 1 1 1 1 1 1 ]; %Ȩ��

A=[
0.51	0.59	0.96
0.49	0.56	0.95
0.46	0.71	0.92
0.42	0.67	0.87
0.35	0.66	0.28
0.31	0.63	0.25
0.27	0.98	0.57
0.93	0.95	0.53
0.91	0.47	0.51
0.88	0.37	0.49
0.83	0.34	0.53
0.81	0.47	0.51
0.88	0.37	0.49
0.80 	0.34	0.57

];
 %����������㼯 
array = A; %��ʼ������Ϊ����������㼯
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
l = 0;
while l < times;
    l = l + 1;
    [distance] = func_distance(array, A, weight);
    [fitness postion] = func_fitness(distance);
    array = func_updated_array(array, postion, step, A, weight);
end
%������
[minimal_value d] = min(distance);
cordinate = array(d,:);
minimal_value,cordinate %ǰ��Ϊ��С����ֵ�� ����Ϊ����

%��ͼ����֧�ֶ�ά����άɢ��ͼ
func_drawing(A, cordinate)