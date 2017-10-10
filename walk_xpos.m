function walkx = walk_xpos(walk,walky,delta,newposy,bias1,bias2);
for i = 1:length(walk)
    probs = randi(5);
    if probs >2
        if walk(1,i) < delta
            walk(1,i) = walk(1,i)+delta;
        else if walk(1,i)> 2
                walk(1,i) = walk(1,i);
            else if newposy(2,i)<(bias1(walk(1,i)))
                    walk(1,i) = walk(1,i) - delta;
                else if newposy(2,i)>(bias1(walk(1,i)))
                        walk(1,i) = walk(1,i) + delta;
                    end
                end
            end
        end
    end
    if probs <4
        if walk(1,i) < delta
            walk(1,i) = walk(1,i);
        else if walk(1,i)> 2
                walk(1,i) = walk(1,i)-delta;
            else if newposy(2,i)>(bias2(walk(1,i)))
                    walk(1,i) = walk(1,i) + delta;
                else if newposy(2,i)>(bias2(walk(1,i)))
                        walk(1,i) = walk(1,i) - delta;
                    end
                end
            end
        end
    end
    if walk(1,i) >2
        walk(1,i) = 2*rand(1);
    end
    if walky(2,i) == 2
        walk(1,i) = 2*rand(1);
    end
end
    walkx = walk(1,:)
    
    
    
    
