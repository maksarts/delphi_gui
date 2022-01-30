unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Unit1;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Out1: TLabel;
    OK: TButton;
    Out3: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure OKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form1.Output1.Enabled := true;
  Action := CaFree;
end;

procedure TForm4.OKClick(Sender: TObject);
begin
  Close;
end;

end.
