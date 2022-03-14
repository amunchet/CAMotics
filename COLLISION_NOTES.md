# Summary



# Plan
0.  Create some tests 
    1.  Valid G-code and tool definitions

1.  Turn different tool cuts different colours
    1.  I would also like a flag to say that a cut has occurred - this likely involves the AABB tree (I think?)

2.  Enable a way to cut with two tools simultaneously
3.  Enable some way to define shank/tool holder via JSON


## Brute Force approach
If computational power was unlimited.

I would generate a STL for each step of the cutting tool (tolerance).  From there, I would subtract the shank and the tool holder at exactly that spot.  If the resulting STL was the same as the original, no collision occurred.
