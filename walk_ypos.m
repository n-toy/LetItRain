function [walky walk]  = walk_ypos(walk);
for i = 1:length(walk)
    probs = randi(4);
      if probs == 0
        walk(2,i) = walk(2,i);
    else if probs == 1
            walk(2,i) = walk(2,i) - .05;
        else if probs == 2
                walk(2,i) = walk(2,i) - .1;
            else if probs == 3;
                   walk(2,i) = walk(2,i) - .15;
                end
            end
        end
      end
      if walk(2,i) < 0
          walk(2,i) = 2;
          walk(1,i) = 2*rand(1);
      end
end
walky = walk(2,:)

