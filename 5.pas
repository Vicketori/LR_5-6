{5.	Сформировать и напечатать два одномерных массива.
Умножить на 10 элементы того из них, в котором сумма положительных элементов меньше.}
const
  N = 10;

var
  A, B: array [1..N] of integer;
  i, sumA, sumB: integer;

begin
  writeln('Введите массив A');
  for i := 1 to N do
    read(A[i]);
  
  writeln('Введите массив B');
  for i := 1 to N do
    read(B[i]);

  for i := 1 to N do
  begin
    if A[i] > 0 then sumA += A[i];
    if B[i] > 0 then sumB += B[i];
  end;

  if sumA = sumB
    then writeln('Суммы положительных элементов массивов A и B равны.')

  else 
  begin
    if sumA < sumB 
    then
  begin
      writeln('Cумма положительных элементов меньше у A.');
      writeln('Новый массив A элементы которого умножены на 10: ');
      for i := 1 to N do
        write(' ', A[i] * 10)
    end
    
    else
  begin
      writeln('Cумма положительных элементов меньше у B.');
      writeln('Новый массив B элементы которого умножены на 10: ');
      for i := 1 to N do
        write(' ', B[i] * 10);
    end;
  end;
end.