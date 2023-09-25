program count_common_misspelled_words;
uses SysUtils;

type
  WrongWords = (swiming, runing, stoping, hiting, begining)
  count_WrongWords = array of [WrongWords] of integer
var
  count: integer;
  inputStr, word: string;
  upper_limit : integer;
  lower_limit : integer;
begin
  writeln('Input your upper limit: ');
  readln(upper_limit);
  writeln('Input your lower limit: ');
  readln(lower_limit);
  writeln('Input a sentence: ');
  readln(inputStr);
  count_WrongWords := inputStr.Split(' ');

  for word in count_WrongWords do
  begin
    if word = count_WrongWords then
      count := count+1;

  end;
  Writeln('Number of common misspelled words', count);
  if count > upper_limit then
    Writeln ('Readability:High')
  else if count < lower_limit then
    Writeln ('Readability:Low')
  else
    Writeln ('Readability:Medium');

end.
