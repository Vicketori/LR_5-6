{11.	Сформировать массив из 20 чисел.
После первого четного элемента вставить
количество четных элементов массива.}
const
  N = 21;

var
  A: array [1..N] of integer;
  i,j,k: integer;

begin
  writeln('Введите массив: ');
  for i := 1 to N-1 do
    read(A[i]);

for i:=1 to N-1 do
if A[i] mod 2 = 0
then k+=1;

A[N]:=2;
i:=1;
while A[i] mod 2 <> 0 do
i+=1;

if i=N
then writeln('В массиве нет чётных элементов.')

else begin
for j:=N downto i+1 do
A[j]:=A[j-1];

A[i+1]:=k;

writeln('Получившийся массив :');
for i := 1 to N do
write(' ', A[i])
end;
end.