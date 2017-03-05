/*
Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. Output one of the following statements for each record in the table:

Not A Triangle: The given values of A, B, and C don't form a triangle.
Equilateral: It's a triangle with  sides of equal length.
Isosceles: It's a triangle with  sides of equal length.
Scalene: It's a triangle with  sides of differing lengths.
Input Format

The TRIANGLES table is described as follows:



Each row in the table denotes the lengths of each of a triangle's three sides.

Sample Input



Sample Output

Isosceles
Equilateral
Scalene
Not A Triangle
Explanation

Values in the tuple  form an Isosceles triangle, because . 
Values in the tuple  form an Equilateral triangle, because . Values in the tuple form a Scalene triangle, because . 
Values in the tuple  cannot form a triangle because the combined value of sides  and  is not larger than that of side .
*/

Select
 Case
   When (A+B<=C) OR (A+C<=B) OR (B+C<=A) Then 'Not A Triangle'
   When A=B AND B=C Then 'Equilateral'
   When (A=B AND A<>C) OR (B=C AND A<>B) OR (A=C AND A<>B) Then 'Isosceles'
   Else 'Scalene'
 End
From Triangles;