Unit Unit1;

interface

uses System, System.Drawing, System.Windows.Forms, System.Threading;

type
  Form1 = class(Form)
    procedure button1_Click(sender: Object; e: EventArgs);
    procedure button2_Click(sender: Object; e: EventArgs);
    procedure button3_Click(sender: Object; e: EventArgs);
    procedure label5_MouseClick(sender: Object; e: MouseEventArgs);
    procedure label6_MouseClick(sender: Object; e: MouseEventArgs);
    procedure checkBox6_CheckedChanged(sender: Object; e: EventArgs);
    procedure checkBox7_CheckedChanged(sender: Object; e: EventArgs);
    procedure checkBox8_CheckedChanged(sender: Object; e: EventArgs);
  {$region FormDesigner}
  private
    {$resource Unit1.Form1.resources}
    label1: &Label;
    label2: &Label;
    textBox2: TextBox;
    label3: &Label;
    textBox3: TextBox;
    button1: Button;
    label4: &Label;
    textBox4: TextBox;
    textBox1: TextBox;
    openFileDialog1: OpenFileDialog;
    button2: Button;
    label5: &Label;
    saveFileDialog1: SaveFileDialog;
    button3: Button;
    label6: &Label;
    groupBox1: GroupBox;
    textBox5: TextBox;
    textBox6: TextBox;
    label7: &Label;
    label8: &Label;
    textBox7: TextBox;
    checkBox1: CheckBox;
    label9: &Label;
    checkBox5: CheckBox;
    checkBox4: CheckBox;
    checkBox3: CheckBox;
    checkBox2: CheckBox;
    label11: &Label;
    label10: &Label;
    label12: &Label;
    label13: &Label;
    checkBox6: CheckBox;
    checkBox7: CheckBox;
    checkBox8: CheckBox;
    label14: &Label;
    label15: &Label;
    label16: &Label;
    checkBox9: CheckBox;
    label17: &Label;
    progressBar1: ProgressBar;
    {$include Unit1.Form1.inc}
  {$endregion FormDesigner}
  public
    constructor;
    begin
      InitializeComponent;
    end;
  end;

implementation

function Ecran(text: string; ss: string := '\'): (array of string, string); // экранирование (возврат - массив разделителей, выходная строка)
begin
  var tarr: array of string;
  setLength(tarr, text.length);
  var i := 1;
  var cx := 0;
  while i < text.length do
  begin
  if text[i] = ss then
  begin
  tarr[cx] := Copy(text, i + 1, 1);
  Delete(text, i, 2);
  cx += 1;
  continue;
  end;
  i += 1;
  end;
  setLength(tarr, cx);
  Result := (tarr, text.Replace(ss, ''));
end;

const brackets = '{}[]<>';

function EditBrackets(text: string; bracket: string := brackets): string; // приведение всех скобок к одному виду
begin
  for var i := 1 to bracket.length do
  begin
   if i mod 2 = 0 then text := text.Replace(bracket[i], ')')
   else text := text.Replace(bracket[i], '(');
  end;
  Result := text;
end;

function CountBrackets(text, bracket: string): integer; // подсчет скобок
begin
  Result := text.ToCharArray.Where(x -> x = bracket).Count;
end;

function AverageBrackets(text: string; brackets: string := '()'): (real, real); // среднее арифметическое позиций скобок
begin
  var o := 0;
  var e := 0;
  var po := 0;
  var pe := 0;
  for var i := 1 to text.length do
  begin
   if text[i] = brackets[1] then begin o += 1; po += i; end;
   if text[i] = brackets[2] then begin e += 1; pe += i; end;
  end;
  Result := (po / o, pe / e);
end;

function DeleteBracket(index: integer; text: string; str: string := ' '): string;
begin
  Delete(text, index, 1);
  Insert(str, text, index);
  Result := text;
end;

function RepairBrackets(text: string; brackets: string := '()'): string;
begin
  var tarr: array [,] of integer;
  var cx := 0;
  setLength(tarr, text.length, 2);
  var str := text;
  while (CountBrackets(EditBrackets(str), brackets[1]) + CountBrackets(EditBrackets(str), brackets[2])  > 2)
  and (not((CountBrackets(EditBrackets(str), brackets[1]) = 0) and (CountBrackets(EditBrackets(str), brackets[2]) > 2)))
  and (not((CountBrackets(EditBrackets(str), brackets[2]) = 0) and (CountBrackets(EditBrackets(str), brackets[1]) > 2))) do
  begin
   var f := str.IndexOf(brackets[1]) + 1; // first bracket
   var l := str.IndexOf(brackets[2]) + 1; // last bracket
   if f < l then begin str := DeleteBracket(f, str); str := DeleteBracket(l, str); end
   else
   begin
     tarr[cx, 0] := l;
     tarr[cx, 1] := f;
     str := DeleteBracket(f, str);
     str := DeleteBracket(l, str);
     cx += 1;
   end;
  end;
  setLength(tarr, cx, 2);
  for var i := 0 to cx - 1 do
  begin
   text := DeleteBracket(tarr[i, 0], text, brackets[1]);
   text := DeleteBracket(tarr[i, 1], text, brackets[2]);
  end;
  if CountBrackets(EditBrackets(str), brackets[1]) > 2 then while CountBrackets(EditBrackets(text), brackets[1]) - CountBrackets(EditBrackets(text), brackets[2]) <> 0 do
  Insert(brackets[2], text, text.length + 1);
  if CountBrackets(EditBrackets(str), brackets[2]) > 2 then while CountBrackets(EditBrackets(text), brackets[2]) - CountBrackets(EditBrackets(text), brackets[1]) <> 0 do
  Insert(brackets[1], text, 0);
  if (CountBrackets(EditBrackets(str), brackets[1]) = 1) and (CountBrackets(EditBrackets(str), brackets[2]) = 1) then
  begin var f := str.LastIndexOf(brackets[1]) + 1; var l := str.IndexOf(brackets[2]); if f > l then begin
  text := DeleteBracket(str.LastIndexOf(brackets[1]) + 1, text, brackets[2]); text := DeleteBracket(str.IndexOf(brackets[2]) + 1, text, brackets[1]); end;
  str := DeleteBracket(str.LastIndexOf(brackets[1]) + 1, str, ' '); str := DeleteBracket(str.IndexOf(brackets[2]) + 1, str, ' '); end;
  if CountBrackets(EditBrackets(str), brackets[1]) = 2 then text := DeleteBracket(str.LastIndexOf(brackets[1]) + 1, text, brackets[2])
  else if CountBrackets(EditBrackets(str), brackets[1]) = 1 then text := DeleteBracket(str.LastIndexOf(brackets[1]) + 1, text, '');
  if CountBrackets(EditBrackets(str), brackets[2]) = 2 then text := DeleteBracket(str.IndexOf(brackets[2]) + 1, text, brackets[1])
  else if CountBrackets(EditBrackets(str), brackets[2]) = 1 then text := DeleteBracket(str.IndexOf(brackets[2]) + 1, text, '');
  Result := text;
end;

function TakeDelims(text: string; mode: integer := 1; brackets: string := '()'): array of string; // извлекаем разделители из строки
begin
  var str := text;
  var cx := 0;
  var delims: array of string;
  setLength(delims, text.length);
  while str.LastIndexOf(brackets[1]) <> str.IndexOf(brackets[1]) do
  begin
   var f := str.LastIndexOf(brackets[1]) + 1;
   var e := str.IndexOf(brackets[2], f - 1) + 1;
   for var i := 1 to str.length - 1 do
   if (str[i] = brackets[2]) and (str[i + 1] = brackets[1]) then
   begin
   e := i;
   e := str.IndexOf(brackets[2], e) + 1;
   end;
   delims[cx] := Copy(str, f + 1, e - (f + 1));
   cx += 1;
   if mode = 1 then Delete(str, f, e - f + 1);
   if mode = 2 then
   begin
     Delete(str, f, 1);
     Delete(str, e - 1, 1);
     if str.LastIndexOf(brackets[2]) < f then Delete(str, f, e - f - 1);
   end;
  end;
  var f := str.LastIndexOf(brackets[1]) + 1;
  var e := str.IndexOf(brackets[2]) + 1;
  delims[cx] := Copy(str, f + 1, e - (f + 1));
  Delete(str, f, e - f + 1);
  if str.length = delims.length then cx := -1;
  foreach var d in str do
  begin
   cx += 1;
   delims[cx] += d;
  end;
  setLength(delims, cx + 1);
  Result := delims;
end;

function delims(text: string; mode: integer := 1): array of string;
begin
  Result := (Ecran(text).Item1 + TakeDelims(RepairBrackets(EditBrackets(Ecran(text).Item2)), mode));
end;

// 26px разница в height полей

function EditString(str: string; num: integer := 1): array of integer;
begin
  //var t := 1;
  //var res := 0;
  var ta: array of integer;
  Try
  ta := str.toIntegers;
  except
  Result := Arr(0);
  exit;
  end;
  Result := ta;
  foreach var t in ta do
  if t < num then
  begin
  Result := Arr(0);
  exit;
  end;
  //if (TryReadIntegerFromString(str, t, res) and (res > 0)) then Result := res
  //else Result := 0;
end;

function CheckTextBox(text: string; allowChars: string; digits: boolean): boolean;
//var symbolsLow := 'qwertyuiopasdfghjklzxcvbnmйцукенгшщзхъфывапролджэячсмитьбюё';
//var tsym := symbolsLow + symbolLow.ToUpper;
var digitsStr := '1234567890';
begin
  var allowSet, textSet: set of char;
  if digits then
  foreach var ch in allowChars + digitsStr do
  allowSet += [ch];
  foreach var ch in text do
  textSet += [ch];
  Result := (allowSet >= textSet);
end;

var openfilename := '';
var savefilename := '';

function GetFileName(fullname: string): string := Copy(fullname, fullname.LastIndexOf('\') + 2, length(fullname) - fullname.LastIndexOf('\') + 1);

function GettingArrayFromFile(fname: string): array of string := ReadAllLines(fname);

function MatchesMask(sText : string; sMask : string): boolean;
begin
  var m := new Regex(('^' + sMask + '$').Replace('.', '[.]').Replace('*', '.*').Replace('?', '.'));
  result := m.IsMatch(sText);
end;

function MaskPick(wordsArray: array of string; masks: string): array of string;
begin
  var tstr := '';
  var masksArray := masks.toWords(Arr(' ', '|'));
  if masks = '*' then begin Result := wordsArray; exit; end;
  foreach var word in wordsArray do
   foreach var mask in masksArray do
   if MatchesMask(word, mask) then tstr += word + ' ';
   Result := tstr.toWords;
end;

function LengthsPick(wordsArray: array of string; lengths: string): array of string;
begin
  var lengthSet: set of integer;
  var lengthsArray: set of integer;
  var tstr := '';
  if lengths <> '' then
  begin
  lengths.Replace('|', ' ');
  if pos('-', lengths) <> 0 then
  begin
  var t := 0;
  lengths := lengths.Replace('-', ' - ');
  //write(lengths);
  var tlenArr := lengths.ToWords;
  var indexSet: set of integer;
  foreach var i in tlenArr do
  if TryStrToInt(i, t) then lengthSet += [t];
  for var i := 0 to tlenArr.length - 1 do
  if tlenArr[i] = '-' then indexSet += [i];
  foreach var i in indexSet do
  foreach var k in Range(min(StrToInt(tlenArr[i - 1]), StrToInt(tlenArr[i + 1])), max(StrToInt(tlenArr[i - 1]), StrToInt(tlenArr[i + 1]))).ToArray do
  lengthSet += [k]; 
  //write(lengthSet);
  lengthsArray := lengthSet;
  end
  else foreach var s in lengths.toIntegers() do
         lengthsArray += [s];
  //write(lengthsArray);
  foreach var word in wordsArray do
   foreach var length in lengthsArray do
   if word.length = length then tstr += word + ' ';
   Result := tstr.toWords;
  end
  else Result := wordsArray;
end;

function ChangeWordCase(word: string; checks: array of boolean): string;
begin
  var str := '';
  if checks[4] then
  begin
  for var i := 1 to word.length do
  if PABCSystem.random < 0.5 then str += word[i].ToUpper else str += word[i];
  if checks[3] then
   begin
  if checks[0] then str := str[1].ToLower + Copy(str, 2, str.length - 1);
  if checks[2] then str := Copy(str, 1, str.length - 1) + str[str.length].ToLower;
  if checks[1] then begin var rd := PABCSystem.random(2, str.length - 1); str := Copy(str, 1, rd - 1) + str[rd].ToLower + Copy(str, rd + 1, str.length - rd); end;
   end
   else
   begin
  if checks[0] then str := str[1].ToUpper + Copy(str, 2, str.length - 1);
  if checks[2] then str := Copy(str, 1, str.length - 1) + str[str.length].ToUpper;
  if checks[1] then begin var rd := PABCSystem.random(2, str.length - 1); str := Copy(str, 1, rd - 1) + str[rd].ToUpper + Copy(str, rd + 1, str.length - rd); end;
   end;
  end
  else if checks[3] then
   begin
  str := word;
  str := str.ToUpper;
  if checks[0] then str := str[1].ToLower + Copy(str, 2, str.length - 1);
  if checks[2] then str := Copy(str, 1, str.length - 1) + str[str.length].ToLower;
  if checks[1] then begin var rd := PABCSystem.random(2, str.length - 1); str := Copy(str, 1, rd - 1) + str[rd].ToLower + Copy(str, rd + 1, str.length - rd); end;
   end
   else
   begin
  str := word;
  if checks[0] then str := str[1].ToUpper + Copy(str, 2, str.length - 1);
  if checks[2] then str := Copy(str, 1, str.length - 1) + str[str.length].ToUpper;
  if checks[1] then begin var rd := PABCSystem.random(2, str.length - 1); str := Copy(str, 1, rd - 1) + str[rd].ToUpper + Copy(str, rd + 1, str.length - rd); end;
   end;
  Result := str;
  if (not(checks[0]) and not(checks[1]) and not(checks[2]) and not(checks[3]) and not(checks[4])) then Result := word;
  //write(Result + ' ' + word);
  {end
  else
  Result := word;}
end;

function ChangeWordsCase(words: array of string; checks: array of boolean): array of string;
begin
  //var str := '';
  var res: array of string;
  setLength(res, words.length);
  //if checks[4] then
  //begin
  for var j := 0 to words.length - 1 do
  begin
  //var word := words[j];
  res[j] := ChangeWordCase(words[j], checks);
  {for var i := 1 to word.length do
  if PABCSystem.random < 0.5 then str += word[i].ToUpper else str += word[i];}
  //res[j] := str;
  //str := '';
  end;
  Result := res;
  //end
  //else Result := words;
end;

function TakeSeq(wordsArray: array of string; lengths: string; checks: array of boolean; delimtext: array of string; endsym: string): string;
begin
  lengths.Replace('|', ' ');
  var rdelim := delimtext[PABCSystem.random(delimtext.length)];
  if pos('n', lengths) <> 0 then
  begin
  lengths := lengths.Replace('n', ' ');
  var length := round(lengths.ToIntegers().Sum / lengths.ToIntegers().Count);
  var rstr := '';
  for var i := 1 to length do
  begin
  if not(checks[5]) then rdelim := delimtext[PABCSystem.random(delimtext.length)];
  rstr += ChangeWordCase(wordsArray[PABCSystem.random(wordsArray.length)], checks) + ((checks[5]) ? rdelim : delimtext[PABCSystem.random(delimtext.length)]);
  end;
  Result := Copy(rstr, 1, rstr.length - rdelim.length) + (endsym.length > 0 ? endsym[PABCSystem.random(1, endsym.length)] + '' : '');
  //else Result := Copy(rstr, 1, rstr.length - rdelim.length);
  exit;
  end
  else
  begin
  var length := lengths.ToIntegers().Sum / lengths.ToIntegers().Count;
  var rstr := '';
  var r := 0;
  var preddelim: string;
  while rstr.length < length do
  begin
  r := PABCSystem.random(wordsArray.length);
  preddelim := rdelim;
  if not(checks[5]) then rdelim := delimtext[PABCSystem.random(delimtext.length)];
  rstr += ChangeWordCase(wordsArray[r], checks) + rdelim; // добавить специальный знак
  end;
  //writeln('d = ', rdelim, ' rd = ', preddelim, ' rstr = ', rstr, ' ', rstr.length, ' - ', length, ' > ', length, ' - (', rstr.length, ' - ', wordsArray[r].length, ' - ', rdelim.length, ')');
  if endsym.length > 0 then
  if preddelim = '' then
  if rstr.length - length - rdelim.length + 1 > length - (rstr.length - wordsArray[r].length - rdelim.length) - 1 then rstr := Copy(rstr, 1, rstr.toLower.LastIndexOf(wordsArray[r]))
  else rstr := (rstr.length - length - rdelim.length + 1 = length - (rstr.length - wordsArray[r].length - rdelim.length) - 1) and (PABCSystem.random < 0.5) ? Copy(rstr, 1, rstr.toLower.LastIndexOf(wordsArray[r])) : rstr
  else
  if rstr.length - length - preddelim.length + 1 > length - (rstr.length - wordsArray[r].length - rdelim.length) + preddelim.length - 1 then rstr := Copy(rstr, 1, rstr.toLower.LastIndexOf(wordsArray[r]))
  else rstr := (rstr.length - length - preddelim.length + 1 = length - (rstr.length - wordsArray[r].length - rdelim.length) + preddelim.length - 1) and (PABCSystem.random < 0.5) ? Copy(rstr, 1, rstr.toLower.LastIndexOf(wordsArray[r])) : rstr
  else
  if preddelim = '' then
  if rstr.length - length - rdelim.length > length - (rstr.length - wordsArray[r].length - rdelim.length) then rstr := Copy(rstr, 1, rstr.toLower.LastIndexOf(wordsArray[r]))
  else rstr := (rstr.length - length - rdelim.length = length - (rstr.length - wordsArray[r].length - rdelim.length)) and (PABCSystem.random < 0.5) ? Copy(rstr, 1, rstr.toLower.LastIndexOf(wordsArray[r])) : rstr
  else
  if rstr.length - length - rdelim.length > length - (rstr.length - wordsArray[r].length - rdelim.length) + preddelim.length then rstr := Copy(rstr, 1, rstr.toLower.LastIndexOf(wordsArray[r]))
  else rstr := (rstr.length - length - rdelim.length = length - (rstr.length - wordsArray[r].length - rdelim.length) + preddelim.length) and (PABCSystem.random < 0.5) ? Copy(rstr, 1, rstr.toLower.LastIndexOf(wordsArray[r])) : rstr;
  //if endsym.length > 0 then
  Result := Copy(rstr, 1, rstr.length - preddelim.length) + (endsym.length > 0 ? endsym[PABCSystem.random(1, endsym.length)] + '' : ''); // добавить отмену точки
  //else Result := Copy(rstr, 1, rstr.length - rdelim.length);
  //writeln(result, 'rstr.length = ', rstr.length, ' prddelim.length = ', preddelim.length);
  end;
end;

procedure SaveFile(str: string; f: PABCSystem.text; newline: boolean);
begin
  writeln(f, str);
  if newline then
  writeln(f);
end;

procedure writeArrayInFile(openfilename, savefilename, masks, lengths: string; checks: array of boolean);
begin
  //writeln(LengthsPick(MaskPick(ReadAllLines(openfilename), masks), lengths));
  //write(ChangeWordsCase(LengthsPick(MaskPick(ReadAllLines(openfilename), masks), lengths), checks));
  WriteAllLines(savefilename, ChangeWordsCase(LengthsPick(MaskPick(ReadAllLines(openfilename), masks), lengths), checks));
end;

function writeSeqInFile(readyArray: array of string; textBox3Text: string; checks: array of boolean; delim: array of string; endsym, savefilename, textBox4Text: string; var progressBar1: progressBar): System.Delegate;
begin
  var f: PABCSystem.text;
  assign(f, savefilename);
  rewrite(f);
  for var i := 1 to textBox4Text.ToInteger do
  begin
  SaveFile(TakeSeq(readyArray, textBox3Text, checks, delim, endsym), f, checks[8]);
  progressBar1.Value := round(100 * i / textBox4Text.ToInteger);
  end;
  f.close;
  thread.sleep(0);
end;

type UnfilledFieldsException = class (System.Exception) end;
type FileNotChosenAndArrayIsNotEmpty = class (System.Exception) end;
type NullSearch = class (System.Exception) end;

procedure Form1.button1_Click(sender: Object; e: EventArgs);
var readyArray: array of string;
var checks: array of boolean;
begin
  //if EditString(textBox3.Text).JoinIntoString(' ') = '0' then textBox2.Text := 'error'
  //else textBox2.Text := EditString(textBox3.Text).JoinIntoString(' ') + '';
  // test - //textBox2.Text := MaskPick(GettingArrayFromFile(openfilename), textBox1.Text)[0];
  //if (openfilename <> '') and (textBox1.Text <> '') then
  //textBox2.Text := MaskPick(GettingArrayFromFile(openfilename), textBox1.Text)[0];
  progressBar1.Value := 0;
  try
  checks := Arr(checkBox1.Checked, checkBox2.Checked, checkBox3.Checked, checkBox4.Checked, checkBox5.Checked, checkBox6.Checked, checkBox7.Checked, checkBox8.Checked, checkBox9.Checked);
  if ((textBox3.Text = '') and (textBox4.Text = '') and (savefilename <> '') and (openfilename <> '')) and (textBox1.Text <> '') then
  begin
  Milliseconds;
  writeArrayInFile(openfilename, savefilename, textBox1.Text, textBox2.Text, checks);
  progressBar1.Value := 100;
  textBox7.Text := 'Выборка успешно сохранена' + NewLine + '('+ MillisecondsDelta / 1000 + ' сек на поиск и запись)';
  exit;
  end;
  if (not(CheckTextBox(textBox2.Text, ' -|', true))) or (not(CheckTextBox(textBox3.Text, ' n', true))) or (EditString(textBox4.Text).JoinIntoString(' ') = '0') or (textBox1.Text = '') then raise new UnfilledFieldsException();
  Milliseconds;
  readyArray := LengthsPick(MaskPick(ReadAllLines(openfilename), textBox1.Text), textBox2.Text);
  var ms1 := MillisecondsDelta;
  if readyArray.Length = 0 then raise new NullSearch();
  if (savefilename = '') and (readyArray.Length >= 3) then raise new FileNotChosenAndArrayIsNotEmpty();
  var delim := textBox5.Text = '' ? Arr('') : delims(textBox5.Text, checks[7] ? 2 : 1);
  var endsym := textBox6.Text;
  if not(checks[6]) then
  for var i := 0 to delim.length - 1 do
  delim[i] += ' ';
  //var t := thread(writeSeqInFile(readyArray, textBox3.Text, checks, delim, endsym, savefilename, textBox4.Text, progressBar1));
  //t.IsBackground := true;
  //t.Start;
  BeginInvoke(writeSeqInFile(readyArray, textBox3.Text, checks, delim, endsym, savefilename, textBox4.Text, progressBar1));
  var ms2 := MillisecondsDelta;
  textBox7.Text := 'Успешная запись: ' + textBox4.Text.ToInteger + '/' + textBox4.Text.ToInteger + ' строк записаны' + NewLine + '(' + ms1 / 1000 + ' сек на поиск; ' + ms2 / 1000 + ' сек на запись)';
  progressBar1.Value := 100;
  except
  on UnfilledFieldsException do textBox7.Text := 'Ошибка: возмножно, вы не заполнили необходимые поля или заполнили их неверно';
  on FileNotChosenAndArrayIsNotEmpty do textBox7.Text := 'Поиск дал результаты, но конечный файл не выбран: ' + readyArray[0] + ' ' + readyArray[1] + ' ' + readyArray[2];
  on NullSearch do textBox7.Text := 'Поиск не дал результатов';
  else
  textBox7.Text := 'Ошибка: незаполненные поля или поиск по маске не дал результатов';
  exit;
  end;
end;

procedure Form1.button2_Click(sender: Object; e: EventArgs);
begin
  openFileDialog1.Filter := 'Text files| *.txt; *.doc; *.docx; *.rtf;|All files|*.*'; //Text files(*.txt)|*.txt|All files(*.*)|*.*
  openFileDialog1.FileName := '';
  openFileDialog1.ShowDialog; //= openFileDialog1.FileOk then
  openfilename := openFileDialog1.FileName;
  if openfilename <> '' then
  label5.Text := 'Файл: ' + GetFileName(openfilename);
end;

procedure Form1.button3_Click(sender: Object; e: EventArgs);
begin
  saveFileDialog1.Filter := 'Text files| *.txt; *.doc; *.docx; *.rtf;|All files|*.*';
  saveFileDialog1.FileName := openfilename = '' ? 'GeneratedFile.txt' : LeftStr(ExtractFileName(openfilename), ExtractFileName(openfilename).Length - ExtractFileExt(openfilename).Length) + '_updated.txt';
  saveFileDialog1.ShowDialog;
  savefilename := saveFileDialog1.FileName;
  if savefilename <> '' then
  label6.Text := 'Сохр: ' + GetFileName(savefilename);
end;

procedure Form1.label5_MouseClick(sender: Object; e: MouseEventArgs);
begin
  if e.Button.toString = 'Right' then
  begin
  label5.Text := '';
  openfilename := '';
  end
  else if e.Button.toString = 'Left' then
  try
  Execute(openfilename);
  textBox7.Text := 'Открытие файла'
  except
  textBox7.Text := 'Файл не найден или не открывается';
  end;
end;

procedure Form1.label6_MouseClick(sender: Object; e: MouseEventArgs);
begin
  if e.Button.toString = 'Right' then
  begin
  label6.Text := '';
  savefilename := '';
  end
  else if e.Button.toString = 'Left' then
  try
  Execute(savefilename);
  textBox7.Text := 'Открытие файла'
  except
  textBox7.Text := 'Файл не найден или не открывается';
  end;
end;

procedure Form1.checkBox6_CheckedChanged(sender: Object; e: EventArgs);
begin
  if checkBox6.Checked then
  label14.Text := 'Ген: строка'
  else label14.Text := 'Ген: слово';
end;

procedure Form1.checkBox7_CheckedChanged(sender: Object; e: EventArgs);
begin
  if checkBox7.Checked then
  label15.Text := 'Без пробела'
  else label15.Text := 'C пробелом';
end;

procedure Form1.checkBox8_CheckedChanged(sender: Object; e: EventArgs);
begin
  if checkBox8.Checked then
  label16.Text := 'Режим: 2'
  else label16.Text := 'Режим: 1';
end;

end.