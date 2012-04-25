% Expressions in the shell

20 + 30.

2 + 3 * 4.

(2 + 3) * 4.

123456789 * 987654321 * 112233445566778899 * 998877665544332211.

16#cafe * 32#sugar.

%% Variables

X = 123456789.

X.

X * X * X * X.

f(). % unbind all variables for continuing with examples

% single assignment/pattern matching
X = 1234.

X = (2 + 4).

Y = 10.

X = 6.

X = Y.

Y = 10.

Y = 4.

Y = X.

f().

X = 23.

Y = 4 * X + 3.

X = 19.

%% Floating-point numbers

% / always returns a float
5 / 3.

4 / 2.

5 div 3.

5 rem 3.

4 div 2.

Pi = 3.14159.

R = 5.

Pi * R * R.

%% Atoms

% atoms are global
% valid atoms: lowercase letter followed by alphanumeric chars, _, and @
% can also be quoted with a single quotation mark

hello.

f().

%% Tuples

% similar to struct in C, but anonymous

P = {10, 45}

% prefixing with an atom gives context
Person = {person,
                {name, joe},
                {height, 1.82},
                {footsize, 42},
                {eyecolour, brown}}.

F = {firstName, joe}.
L = {lastName, armstrong}.
P = {person, F, L}.
% => {person,{firstName,joe},{lastName,armstrong}}

% can't use undefined variables
{true, Q, 23, Costs}.

% ectracting values using pattern matching
Point = {point, 10, 45}.
{point, X, Y} = Point.
X.
Y.

f().

% use anonymous variable for items we want to ignore
Person={person,{name,{first,joe},{last,armstrong}},{footsize,42}}.
{_,{_,{_,Who},_},_} = Person.
Who.

%% Lists

ThingsToBuy = [{apples,10}, {pears,6}, {milk,3}].

[1+7, hello, 2-2, {cost, apple, 30-20}, 3].

% the first element of the list is the _head_
% everything else is known as the _tail_

% prepending items to the list
ThingsToBuy1 = [{oranges,4},{newspaper,1}|ThingsToBuy].

% extracting items from the list
[Buy1|ThingsToBuy2] = ThingsToBuy1.
Buy1.
ThingsToBuy2.
[Buy2,Buy3|ThingsToBuy3] = ThingsToBuy2.
Buy2.
Buy3.
ThingsToBuy3.

%% Strings

% strings are really just a list of integers
% must be used with double quotes

Name = "Hello".

% non-printable characters
[1,2,3].

% all are printable characters
[83,117,114,112,114,105,115,101].

% mix
[1,83,117,114,112,114,105,115,101].

% can even be evaluated
% dollar syntax is used in place of integer
I = $s.
[I-32,$u,$r,$p,$r,$i,$s,$e].

%% More Pattern Matching

% Some examples to learn from
{X,abc} = {123,abc}
f().
{X,Y,Z} = {222,def,"cat"}
f().
{X,Y} = {333,ghi,"cat"}
f().
X = true
f().
{X,Y,X} = {{abc,12},42,{abc,12}}
f().
{X,Y,X} = {{abc,12},42,true}
f().
[H|T] = [1,2,3,4,5]
f().
[H|T] = "cat"
f().
[A,B,C|T] = [a,b,c,d,e,f]
