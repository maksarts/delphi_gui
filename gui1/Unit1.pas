unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, About, Unit2;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Exit1: TMenuItem;
    Processing1: TMenuItem;
    Dialog1: TMenuItem;
    Input1: TMenuItem;
    Output1: TMenuItem;
    Help1: TMenuItem;
    About1: TMenuItem;
    procedure Exit1Click(Sender: TObject);
    procedure About1Click(Sender: TObject);
    procedure Dialog1Click(Sender: TObject);
    procedure Input1Click(Sender: TObject);
    procedure Output1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit3, Unit4;

procedure TForm1.About1Click(Sender: TObject);
begin
  AboutBox := About.TAboutBox.Create(self);
  AboutBox.Show;
  Form1.About1.Enabled := false;
end;

procedure TForm1.Dialog1Click(Sender: TObject);
begin
  Unit2.Form2.Show;
end;

procedure TForm1.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.Input1Click(Sender: TObject);
begin
  Unit3.Form3.Show;
end;

procedure TForm1.Output1Click(Sender: TObject);
begin
  Form4 := Unit4.TForm4.Create(self);
  Form4.Show;
  form1.Output1.Enabled := false;
end;

end.
