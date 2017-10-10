# LetItRain
Modeling of "biased" random walk of snowflakes as they float to the ground.

The project is written MATLAB with the ability to include bias functions to allow for mdoeling of wind turbulence in snowflake's natural fall to the surface. 

Start with having all three files in the same directory.

Run the driver file to make it rain!

Parameters:
Line 3 - Change the second number for number of random walkers
Lines 9 to 12 - Control the bins (left and right movement) of random walker movement
Line 19 and 20 - First bias function control
Line 28 -  Second bias function control
Line 33 - Change for loop iterations for duration of snow flake falls. 

The motion of the snowflakes is captured randomly from a random number generated from MATLAB. Snowflakes have the ability to fall down, left, and right. They have the independence to also travel fall down and either left or right as well as varying distances to the left, right, and downwards. 

The goal of the project was to apply random walkers to model the random behavior of a system. Snowflake fall is random and depends on varying conditions within the environment. This led to the conception of attempting to capture the random motion of snowflakes falling with some bias functions. 
