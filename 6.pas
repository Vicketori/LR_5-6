{6.	Составьте программу, проверяющую упорядочены ли элементы массива по возрастанию.}
const
  N = 10;

var
  A, B: array [1..N] of integer;
  i, j, k: integer;

begin
  writeln('Введите массив: ');
  for i := 1 to N do
    read(A[i]);
  B := A;
  
  for i := 1 to N - 1 do
    for j := 1 to N - i do
      if B[j] > B[j + 1]
      then 
         begin
        k := B[j]; B[j] := B[j + 1]; B[j + 1] := k; end;
  if A = B
    then writeln('Элементы массива упорядочены по возрастанию.')
  else writeln('Элементы массива не упорядочены по возрастанию.');
end.