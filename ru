14 Segment Display
Problem Description
A 14-segment display is a creative innovation in the field of electronics. A 14-segment display circuit can display all alphabets from A to Z (all in caps). Each alphabet is represented as a grid of 9 X 5. 0 (Zero) on the grid denotes that the LED at that place in the grid is turned OFF, whereas 1 denotes that the LED at that place in the grid is turned ON. The alphabets given as input may be padded with spaces between them i.e., the input grid is always of size 9 X Z where 9 is the number of rows and Z is the number of columns. Here Z is the total number of columns used to represent alphabets and the padding between the alphabets.

Padding between alphabets is done using zeros (0). The padding between two alphabets on the grid can have random width.

All the alphabets on 14-segment display are represented as follows:

com.tcs.cv.automata.ei.middleware.DocxToHtmlConverter@33617539:image1.png

Given the grid, determine what alphabets are displayed by the grid.

Constraints
Each alphabet is displayed by a 9 X 5 grid

1 <= Number of alphabets <= 10000

Input
Input consists of 9 lines where each line contains a binary string (consisting of 0 and 1) of equal breadth.

Output
Print alphabets displayed on the 14-segment display.

Time Limit (secs)
1

Examples
Example 1

Input

111110000011111011111

001000000010000010000

001000000010000010000

001000000010000010000

001000000010000011111

001000000010000000001

001000000010000000001

001000000010000000001

001000000011111011111

Output

TCS

Explanation

Here, the first 9 X 5 grid represents the alphabet 'T' and then we have a padding of width 5 (00000). Then the next 9 X 5 grid represents the alphabet 'C' and then we have padding of width 1 (0) and the next 9 X 5 grid represents the alphabet 'S'.

Example 2

Input

1111100000111110001111100111110000010001

1000000000100010001000100000000000000000

1000000000100010001000100000100000001010

1000000000100010001000100000000000000000

1111100000111110001111100001000000000100

0000100000100010001100000000000000000000

0000100000100010001010000010000000001010

0000100000100010001001000000000000000000

1111100000100010001000100111110000010001

Output

SARZX

Explanation

Here, the first 9 X 5 grid represents the alphabet S and there is a padding of width 5 (00000) and the next 9 X 5 grid represents the alphabet 'A' and then we have a padding of width 3 (000) and so on.

There are 5 alphabets in this grid which are SARZX.