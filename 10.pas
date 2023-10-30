{10.	Сформировать массив из 20 чисел.
Удалить все отрицательные элементы массива.}
const
  N = 20;

var
  A: array [1..N] of integer;
  i,j,k: integer;

begin
  writeln('Введите массив: ');
  for i := 1 to N do
    read(A[i]);

if A[N]<0
then begin
  k+=1;
  A[N]:=1
  end;

    for i:=1 to N-1 do
      if A[i]<0
        then begin 
          while A[i]<0 do
            begin
            for j:=i to N-1 do
              A[j]:=A[j+1];
            k+=1
            end;
        end;

if k=N
then writeln('Все элементы удалены.')
else 
if k=0 
then writeln('Отрицательных элементов нет.')
else begin
writeln('Получившийся массив без отрицательных элементов:');
for i := 1 to N-k do
write(' ', A[i])
end;
end.