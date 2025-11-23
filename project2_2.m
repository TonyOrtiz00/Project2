%Tony Ortiz Rangel
%Project 2.2
%Fitting data to a function
%Read data from excel
table = xlsread("PopulationData.xlsx");
%Force both columns to numeric in case Excel stored them as text
year=table(:,1);
pop=table(:,2);
%Linear
subplot(3,1,1)
plot(year,pop,'ro')
grid on
xlabel('Year')
ylabel('Billions')
title('Linear scale')
%Loglog
subplot(3,1,2)
loglog(year,pop,'ro')
grid on
xlabel('Year')
ylabel('Billions')
title('Log-log scale')
%Semilogy
subplot(3,1,3)
semilogy(year,pop,'ro')
grid on
xlabel('Year')
ylabel('Billions')
title('Semilogy scale')
%Best fit for the data
p=polyfit(year,pop,1);
m=p(1);
b=p(2);
%Overlay linear function over approp. plot
subplot(3,1,1)
hold on
xFine=linspace(min(year),max(year),500);
yFine=polyval(p,xFine);
plot(xFine,yFine,'b-')
hold off
legend('Data','Linear fit','Location','NorthWest')
%Predict the population by 2050
predYear=2050;
pred2050=polyval(p,predYear);
%Print output statements
fprintf("This data fits best to a linear function, described by\ny = %.6f*x%+ .6f (y in billions, x = year)\n",m,b);
fprintf("The predicted world population in %d is %.3g billion.\n",predYear,pred2050);