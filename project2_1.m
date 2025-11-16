%Tony Ortiz Rangel
%Project 2.1
%GPA Calculator for students report card
%Ask user for class information
numofClass = input("Enter the number of classes you are taking:\n");
while numofClass <= 0||~isnumeric(numofClass)
    numofClass = input("Enter a valid number of the classes you are taking:\n");
end
totalUnits = 0;
totalPoints = 0;
for i = 1:numofClass
%%%%%%%%%%%%%%%%
end
switch upper(grade)
    case "A"
        pts=4;
    case "B"
        pts=3;
    case "C"
        pts=2;
    case "D"
        pts=1;
    case "F"
        pts=0;
end

totalUnits=totalUnits+units;
totalPoints=totalPoints+pts*units;
GPA=totalPoints/totalUnits;
fprintf("Overall GPA: %.2f\n",GPA);