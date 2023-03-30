# Basics

## Comments
```Matlab
% I'm a comment
```

## Operations
### Math operations
```matlab
a = 5 * 3
b = a / 2
```

### Built-in variables
```Matlab
pi
```
![img](built-in-variables.PNG)

### Supress and hide the output
Add a semicolon ( ; ) after the expression.
```Matlab
a = 5 * 3; 
```

### Delete variables from workspace
```Matlab
clear
```

### Clear command window
```Matlab
clc
```

## Files
### Saving variables
**save filename** saves all variables from the current workspace in a binary MAT-file named filename. If filename exists, save overwrites the file.
```Matlab
save variables %creates a file named variables.mat
```

### Loading variables
```Matlab
load variables
```

### Functions
```Matlab
a = sin(90)
b = sqrt(4)
c = abs(-9)
```

## Vectors
### Row
Separate numbers with spaces or comas:
```Matlab
x = [7 9]
y = [3, 10, 5]
z = [sqrt(10) pi^2]
```

Other ways of declaring vectors:
```Matlab
x = 1:4 % [1 2 3 4] --> [start : end]
x = [3: 2: 9] % [3 5 7 9] --> [start : increment : end]
x = linspace(1, 2, 3) % [1.0  1.5  2.0] --> linspace(start, end, number_of_elements)
```

### Column
Separate with semi colon
```Matlab
u = [7; 9]
v = [8; 2; -4]
w = (1:3)' %transpose row vector
```

### Matrix
```Matlab
x = [5 6 7; 8 9 10]

size(x) % 2 3
```
```Matlab
y = rand(2) %2x2
y = 
    0.8147    0.1270
    0.9058    0.9134


z = rand(2,3) %2x3
z = 
    0.6324    0.2785    0.9575
    0.0975    0.5469    0.9649

rand(size(x)) % creates random matrix with its size
```

```Matlab
t = zeros(2, 3)
t =
    0   0   0
    0   0   0
```

### Indexing

!! IN MATLAB THE FIRST VECTOR ELEMENT IS 1 NOT ZERO

```Matlab
mat = 
      8    5    1
      9    4    2
      3    6    0

a = mat(2, 1)      % a = 5
b = mat(end, 2)    % b = 6
c = mat(end-1, 3)  % c = 2

d = mat(:, 2) % : means "all elements"
d = 
    5
    4
    6

e = mat(1, :) %1st row, all columns
e = 
    8   5   1

f = mat(1:2, :)
f =
    8    5    1
    9    4    2
```

### Replacing elements

```Matlab
f(1) = 11
f =
    11    5    1
    9     4    2
```

```Matlab
x = zeros(6, 3)
```