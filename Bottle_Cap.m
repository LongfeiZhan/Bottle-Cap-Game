clear;
clc;

% ��Ŀ��2Ԫһƿ��ˮ��4��ƿ��(cap)��һƿ��2����ƿ(bottle)��һƿ��8ԪǮһ���ܺȶ���ƿ?

cap = 4;  %��ʼƿ��4��
bottle = 4;  %��ʼ��ƿ4��
count = 4;   %��������ʼ����4ƿ
new_bottle = 0;  %��ʼ��ƿ0��

while cap >= 4 | bottle >= 2
    new_bottle = 0;
    if cap >= 4
        new_bottle = new_bottle + 1;
        cap = cap - 4;
        count = count + 1;         
    end
    if bottle >= 2
        new_bottle = new_bottle + 1;
        bottle = bottle - 2;
        count = count + 1; 
    end   
    cap = new_bottle + cap; 
    bottle = new_bottle + bottle;     
end

disp(['һ������',num2str(count),'ƿ,ʣ���ƿ',num2str(bottle),'����ʣ��ƿ��',num2str(cap),'��'])