%this is a comment 

% data types in matlab
A= int8(5);
A= int16(5);
A= int32(5);
A= uint8(5);
A= uint16(5);
A= uint32(5);
A= uint64(5);
A= single(5);
A= double(5);
A= char(5);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%constants
y = pi; %3.14

clear all % clear every thing even storrd values 
clc %clear every thing but not storred val's
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%complex numbers & absolute value  & imag & real
a = 2 - 5i;

c = abs(a);

d = angle(a); %tan^-1(imag/real)

real(a) %2
imag(a) %-5
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%basics
x=10;
y = log10(x); %لوج للاساس 10
y = log(x); %للاساس 2

y = sqrt(x); %square root of x
y = sin(x); %the result will be in redian 
y = cos(x); %the result will be in redian 

y = sind(x); %the result will be in degree
y = cosd(x); %the result will be in degree

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Victor
y = [1 5 9 8 7]; %y = 1 5 9 8 7

y = 1 : 10 ; %the increment will be auto by (1) y = 1 2 3 4 5 6 7 8 9 10
y = 1 : 2 : 10 ; %%the increment will be auto by (1) y = 1 3 5 7 9

x = y.^2 %here x is also victor each value of it has squrae of y's element

can we find the max or mini valueof these victors?
yes !
max(x)
min(x)
mean(x) %المتوسط لكل الارقام
length(x) %how meny values are in the victor 
sum(x) %summation of all of them
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%series
x(2 : 2 :7) %from 2 to 7 by step of 2
x(9 :-1 :1) %from 9 to 1 by step of -1

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Victor has values of Start to end by indicated step

x =linespace(1 , 3, 15); %each step has value of ((3-1)/15) - as we need 15 steps between 1 to 3
x is a victor has 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Matrix
G =[1 2 3 ; 4 5 6 ; 7 8 9];
first  row 1 2 3
second row 4 5 6
third row  7 8 9

F =[1 1 1 ; 2 2 2 ; 3 3 3];
first  row 1 2 3
second row 4 5 6
third row  7 8 9

    %summation of two maticese
L = G + F;
	%submission of two maticese
N = G - F;
	%multiplication of two maticese
N = G * F; %all mat * all mat
	%multiplication of two maticese
N = G .* F; %multiplication element by element
	%division of two maticese
N = G .* F; %division element by element

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%If condition
A = 200;
if (A >= 180)
	output = 60
	disp('Very tall')
else
	output = 40
	disp('Very small') %desplay this action when this condition done 
end
%else if
if (A >= 180)
	output = 60
	disp('Very tall')
elseif
	output = 40
	disp('Very small')
elseif
	output = 50
	disp('med')
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Switch Case 
N = 4;
switch(N)
	case (1)
		%any code
	case (2)
		%any code
	case (3)
		%any code
	case (4)
		%any code
	case (5)
		%any code
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%for loop
x = 0;
y = 0;
for (v=0 : 1 :10)
	x = x + v
	v = v + 1
	pause(2) %delay for 2 seconds after each itrate
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%while 
while(x < y) %as long as this condition true , do this action
	x = x + 1;
	disp(x)
	pause(1.5)
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Function
%this function takes 2 inputs (b , x) 
% 4 outputs(sum ,mean ,max , min)
function [sum_x , mean_x , max_x , min_x] = math_func(b,x)

v = b*x;

sum_x = sum(v);
mean_x = mean(v);
max_x = max(v);
min_x = min(v);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%2D plotting 
x =linspace(0 , 2*pi , 101); %101 points willbe plotted

y = sin(x);
z = cos(x);

plot(x,y,'ro-.','linewidth',3)
hold on 	%hold the last shape and draw the net one on it
plot(x,z,'ro-.','linewidth',3)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%plot like bars 
y = [5 2 1 ; 2 2 2 ; 4 4 4 ; .. ; 9 8 7]; % ex1 ; x=5 , y=2 , z=1 and so on 
 bar3(y) % 3 is no of bars on x axis that depend on no of vals invictor step
 
 xlable('x axis') 
 ylable('y axis')
 zlable('z axis')
  %%%%%%%%%%%%%%% shape 1 %%%%%%%%%%%%%%%%
  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Polynomials

f1 = [1 2 3 4]  %f1 = x^3 + 2x^2 +3x +4
f2 = [1 4 9 16] %f1 = x^3 + 4x^2 +9x +16

y = f1 + f2 %sum
z = f2 - f1 %sub

c = conv(f1 , f2)  %multiply

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Control
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%% given 2 transfer functions for series blocks%%%%%Find total transfer func

%Trasfer function G1
n_G1 = [3 6];  %البسط
d_G1 = [1 7 10]; %المقام
%Trasfer function G2
n_G2 = [5];  %البسط
d_G2 = [1 2 10]; %المقام
%Total transfer function GT = G1 * G2 ---- Series reduction
[n_GT , d_GT] = series[n_G1 , d_G1 , n_G2 , d_G2];

printsys(n_GT , d_GT)

 %%%%%%%%%%%%%%% shape 2 %%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%% given 2 transfer functions for parallel blocks%%%%%Find total transfer func

%Trasfer function G1
n_G1 = [3 6];  %البسط
d_G1 = [1 7 10]; %المقام
%Trasfer function G2
n_G2 = [5];  %البسط
d_G2 = [1 2 10]; %المقام
%Total transfer function GT = G1 / G2  ----- parallel reduction
[n_GT , d_GT] = parallel[n_G1 , d_G1 , n_G2 , d_G2];

printsys(n_GT , d_GT)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%% given 2 transfer functions for parallel blocks (system reduction)%%%%%Find feedback func


%Trasfer function G
n_G = [3 6];  %البسط
d_G = [1 7 10]; %المقام
%Trasfer function H
n_H = [1 2];  %البسط
d_H = [1 10]; %المقام
%Feedcack loop F= G/(1+G*H)
[n_F , d_F] = parallel[n_G , d_G , n_H , d_H , -1]; %-1 as it gone to -ve part of summing point 

printsys(n_F , d_F)
 %%%%%%%%%%%%%%% shape 3 %%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%% given 2 transfer functions for series blocks in closed loop sys %%%%%Find total transfer func

%Trasfer function Gp
n_Gp = [0 5 0];  %البسط
d_Gp = [1 4 3]; %المقام
%Trasfer function Gc
n_Gc = [1 2];  %البسط
d_Gc = [1 6]; %المقام

%Step 1: Series reduction Gs = Gp * Gc
[n_Gs , d_Gs] = series[n_Gp , d_Gp , n_Gc , d_Gc];

%Step 2: Feedback reduction G
[n_G , d_G] = series[n_Gs , d_Gs , -1];

printsys(n_G , d_G)  

 %%%%%%%%%%%%%%% shape 4 %%%%%%%%%%%%%%%%





