{3.	Сформировать одномерный массив из 20 целых чисел из диапазона [-52,65] случайным образом.
Найти наибольший элемент массива и его номер (при условии, что все элементы массива различны).
Найти наименьший положительный элемент массива и его номер.
Найти номер последнего элемента массива, кратного 5.}
const
  N = 20;

var
  A: array [1..N] of integer;
  i, max_el, max_ind, min_p_el, min_p_ind, k: integer;

begin
  max_el := A[1];
  min_p_el := 66;
  
  for i := 1 to N do
    A[i] := random(118) - 52;
  writeln('Массив: ', A);
  
  for i := 1 to N do
  begin
    if A[i] > max_el 
    then begin max_el := A[i]; max_ind := i; end;
    if (A[i] > 0) and (A[i] < min_p_el) 
    then begin min_p_el := A[i]; min_p_ind := i; end;
  end;
  writeln('Наибольший элемент массива: ', max_el, ', его номер: ', max_ind, '.');
  writeln('Наименьший положительный элемент массива: ', min_p_el, ', его номер: ', min_p_ind, '.');
  
  i := N;
  while A[i] mod 5 <> 0 do
    if i = 1
    then begin
      writeln('В данном массиве нет последнего элемента, кратного 5.');
      A[1] := 5;
      k := 1;
    end
    else i -= 1;
  if k = 0
    then writeln('Номер последнего элемента массива, кратного 5: ', i, '.');
end.