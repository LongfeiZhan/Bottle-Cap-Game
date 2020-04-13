clear;
clc;

% 题目：2元一瓶汽水，4个瓶盖(cap)换一瓶，2个空瓶(bottle)换一瓶，8元钱一共能喝多少瓶?

cap = 4;  %初始瓶盖4个
bottle = 4;  %初始空瓶4个
count = 4;   %计数，初始喝了4瓶
new_bottle = 0;  %初始新瓶0个

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

disp(['一共喝了',num2str(count),'瓶,剩余空瓶',num2str(bottle),'个，剩余瓶盖',num2str(cap),'个'])