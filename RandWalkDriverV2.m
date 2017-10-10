clear all; clc; close all;
%Change second number of rand to change # of walkers!
x = (2.2).*rand(1,1000);
walk = zeros(2,length(x));
walk(1,:) = x;
walk(2,:) = 2;

%Change # of bins and experiment!
bins = linspace(0,2,100);
delta = bins(2) - bins(1);
y_pos = zeros(1,length(bins));
y_pos(1,:) = 2;

newposy = zeros(2,length(walk(2,:)));
%our Bias function
%If greater than function move right
%if less than move left
%Will this give us cool results?
xvec = 0:.0001:2;
bias1 = @(x).2*(x.^2) + 1;
%You bet your sweet ass this gives cool results


%Add more bias because we can!!!!!
% Turns out you can set this to any number not in [0 2] and it will remove
% second bias! try entering 10 for example or:
% 2./x
bias2 = @(x)sqrt(x-1);
% I actually never use the bias variables as a function so there's no real
% point in making them functions lol
figure('DefaultAxesFontSize', 15);  box on;
poscount = zeros(1,length(bins))
for z  = 1:50
    if z ==1;
        newposx = walk(1,:); 
        newposy(2,:) = walk(2,:);
    else
        disp('~~~~~~~~~~~~~~~~~~~')
        newposy(2,:) = walk_ypos(newposy);
        newposx = walk_xpos(newposx,newposy,delta,newposy,bias1,bias2);

        disp('~~~~~~~~~~~~~~~~~~~~~')
    end
    for i = 1:length(newposx)
        for j = 1:(length(bins) - 1)
            if newposy(2,i) < .05 %CHANGE ME FOR CHOOL SHIT
                if newposx(i) > bins(j) && newposx(i) < bins(j+1)
                    poscount(j) = poscount(j) + 1;
                end
            end
        end
    end
    
        
    xlim([0 2])
    ylim([0 2])
    drawnow
    pause(.05)
    scatter(newposx,newposy(2,:),'*')
    title('Let it snow!!!')
end
figure
figure
bar(poscount)
xlim([0 length(bins)])
r = [1:length(bins)]';
poscount1 = poscount'
text(r,poscount1,num2str(poscount1,'%0.0f'),...
    'HorizontalAlignment','center',...
    'VerticalAlignment','bottom') 
title('Number of Snowflakes in Each Bin')






