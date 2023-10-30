{9.	Сформировать массив из 20 чисел.
Удалить первый положительный элемент.
Удалить наименьший элемент массива.}
const
  N = 20;

var
  A: array [1..N] of integer;
  i, q, z, first_pol, first_pol_ind, min, min_ind: integer;

begin
  writeln('Введите массив: ');
  for i := 1 to N do
    read(A[i]);
  
  i := 1;
  while A[i] <= 0 do
    if i = N
    then begin
      q += 1;
      writeln('В данном массиве нет положительного элемента.');
      
      z := A[N];
      A[N] := 1
      
    end
    else begin
      i += 1;
      first_pol_ind := i;
      z := A[N];
    end;
  
  A[N] := z;
  
  if q = 0 
    then first_pol := A[i];
  if first_pol > 0 
    then writeln('Первый положительный элемент: ', first_pol, ', его индекс: ', first_pol_ind, '.');
  
  if first_pol_ind = 0 then first_pol_ind := 1;
  
  if first_pol <> 0 
  then begin
    for i := first_pol_ind to N - 1 do
      A[i] := A[i + 1];
    writeln('Получившийся массив без первого положительного элемента:');
    for i := 1 to N - 1 do
      write(' ', A[i]);
    writeln();
  end;
  
  min := A[1];
  min_ind := 1;
  
  for i := 1 to N - 1 do
    if min > A[i + 1]
    then begin
      min := A[i + 1];
      min_ind := i + 1;
    end;
  writeln('Минимальный элемент: ', min, ', его индекс: ', min_ind, '.');
  for i := min_ind to N - 1 do
    A[i] := A[i + 1];
  writeln('Получившийся массив без первого положительного элемента и минимального элемента:');
  if first_pol = 0
    then 
  for i := 1 to N - 1 do
      write(' ', A[i])
  else
    for i := 1 to N - 2 do
      write(' ', A[i]);
end.