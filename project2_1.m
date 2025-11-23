%Tony Ortiz Rangel
%Project 2.1
%GPA Calculator for students report card
%Ask user for class information
numCourses=input("Enter number of courses taken: ");
while numCourses<=0
    numCourses=input("Enter a valid positive whole number of courses: ");
end
%Store each array with zeros, depending on # of classes 
units=zeros(1,numCourses);
gradePts=zeros(1,numCourses);
%Loop through each course for units and grade
for i=1:numCourses
    units(i)=input("Enter units for course "+i+": ");
    while units(i)<=0
        units(i)=input("Enter valid positive units: ");
    end
    grade=input("Enter letter grade (A,B,C,D,F) for course "+i+": ",'s');
    grade=upper(strtrim(grade));
    while length(grade)~=1||~ismember(grade,'ABCDF')
    grade=input("Enter VALID grade (A,B,C,D,F) for course "+i+": ",'s');
    grade=upper(strtrim(grade));
    end
    %Convert grade to points
    switch grade
        case 'A'
        gradePts(i)=4;
        case 'B'
        gradePts(i)=3;
        case 'C'
        gradePts(i)=2;
        case 'D'
        gradePts(i)=1;
        case 'F'
        gradePts(i)=0;
    end
end
%Calculate and Print overall GPA
totalUnits=sum(units);
totalPoints=sum(gradePts.*units);
GPA=totalPoints/totalUnits;
fprintf("Overall GPA: %.2f\n",GPA);