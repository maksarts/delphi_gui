unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls, Unit2, Unit4;

type
  TForm3 = class(TForm)
    SG1: TStringGrid;
    Button1: TButton;
    Label1: TLabel;
    Cols: TEdit;
    Label2: TLabel;
    Rows: TEdit;
    Computing: TButton;
    procedure SG1Click(Sender: TObject);
    procedure ColsChange(Sender: TObject);
    procedure RowsChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ComputingClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  a, b: extended;

implementation

{$R *.dfm}

uses Unit1;

procedure TForm3.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm3.ColsChange(Sender: TObject);
  var k, i: integer;
begin
  k := 0;
  if (Cols.Text <> '') then
  begin
    k := StrToInt(Cols.Text);
    if k < 2 then
      k := 2;
    SG1.ColCount := k;
  end;

  for i := 1 to SG1.ColCount - 1 do
    SG1.Cells[i, 0] := IntToStr(i);
end;

procedure TForm3.ComputingClick(Sender: TObject);
var k, x, s, i, j, p: integer; count : extended; res : boolean;
begin
  Form4 := Unit4.TForm4.Create(self);
  Form4.Show;
  Unit1.Form1.Output1.Enabled := false;
  if Unit2.Form2.RG1.ItemIndex = 0 then
  begin
    res := false;
    for i := 1 to SG1.ColCount-1 do begin
      for j := 1 to SG1.RowCount-1 do begin
      k := 0;
        x := StrToInt(SG1.Cells[i, j]);
        for p := 2 to x-1 do begin
          if x mod p = 0 then begin
            k := k+1;
            break;
          end;
        end;

          if k = 0 then begin
            res := true;
            break;
          end;

      end;

      if res = true then break;

    end;
    if res = true then
      Unit4.Form4.Out3.Caption := 'В массиве есть простые числа';
    if res = false then
      Unit4.Form4.Out3.Caption := 'В массиве нет простых чисел';
  end

  else if Unit2.Form2.RG1.ItemIndex = 1 then
  begin
    //Unit4.Form4.Out1.Visible := False;
    //Unit4.Form4.SG2.Visible := True;
    //it4.Form4.SG2.ColCount := SG1.RowCount - 1;

    s := 0; count := 0;
    for i := 1 to SG1.ColCount - 1 do begin
      for j := 1 to SG1.RowCount - 1 do begin
        if j < i then begin
          s := s + StrToInt(SG1.Cells[i, j]);
          count := count + 1;
        end;
      end;
    end;
    Unit4.Form4.Out3.Caption := 'Среднее арифметическое = ' + FloatToStr(s/count);

  end;
end;

procedure TForm3.RowsChange(Sender: TObject);
var k, i: integer;
begin
  k := 0;
  if (Rows.Text <> '') then
  begin
    k := StrToInt(Rows.Text);
    if k < 2 then
      k := 2;
    SG1.RowCount := k;
  end;

  for i := 1 to SG1.RowCount - 1 do
    SG1.Cells[0, i] := IntToStr(i);
end;

procedure TForm3.SG1Click(Sender: TObject);
  var i: integer;
begin

  for i := 1 to SG1.RowCount - 1 do
    SG1.Cells[i, 0] := IntToStr(i);

  for i := 1 to SG1.ColCount - 1 do
    SG1.Cells[0, i] := IntToStr(i);

end;

end.
