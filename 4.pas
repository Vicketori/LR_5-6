{4.	Заполнить массив А из 30 элементов случайными числами из диапазона [-99, 67].
Сформировать массив В, в который записать только четные элементы массива А.}
const
  N = 30;

var
  A, B: array [1..N] of integer;
  i, k: integer;

begin
  writeln('Массив A:');
  for i := 1 to N do
  begin
    A[i] := random(167) - 99;
    write(' ', A[i]);
  end;
  
  k := 1;
  writeln();
  writeln('Массив B(чётные элементы массива A):');
  for i := 1 to N do
  begin
    if A[i] mod 2 = 0 then begin B[k] := A[i]; k += 1; end;
  end;
  for i := 2 to k - 1 do
    write(' ', B[i]);
end.