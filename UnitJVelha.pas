unit UnitJVelha;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation;

type
  TFrmJVelha = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    BtA1: TButton;
    BtB1: TButton;
    BtC1: TButton;
    BtA2: TButton;
    BtB2: TButton;
    BtC2: TButton;
    BtA3: TButton;
    BtB3: TButton;
    BtC3: TButton;
    Label1: TLabel;
    procedure BtA1Click(Sender: TObject);
    procedure Verificajogada;
    procedure BtB1Click(Sender: TObject);
    procedure BtC1Click(Sender: TObject);
    procedure BtA2Click(Sender: TObject);
    procedure BtA3Click(Sender: TObject);
    procedure BtB2Click(Sender: TObject);
    procedure BtB3Click(Sender: TObject);
    procedure BtC2Click(Sender: TObject);
    procedure BtC3Click(Sender: TObject);
    procedure VerificaJogo;
    procedure recomeca;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmJVelha: TFrmJVelha;
  jogou: string;
  botao: string;
  a1,a2,a3,b1,b2,b3,c1,c2,c3: string;


implementation

{$R *.fmx}

procedure TFrmJVelha.BtA1Click(Sender: TObject);
begin
   Verificajogada;
   Self.BtA1.Text := jogou;
   Self.BtA1.Enabled := false;
   a1 := Self.BtA1.Text;
   VerificaJogo;

end;


procedure TFrmJVelha.BtA2Click(Sender: TObject);
begin
   Verificajogada;
   Self.BtA2.Text := jogou;
   Self.BtA2.Enabled := false;
   a2 :=  Self.BtA2.Text;
   VerificaJogo;
end;

procedure TFrmJVelha.BtA3Click(Sender: TObject);
begin
   Verificajogada;
   Self.BtA3.Text := jogou;
   Self.BtA3.Enabled := false;
   a3 := Self.BtA3.Text;
   VerificaJogo;
end;

procedure TFrmJVelha.BtB1Click(Sender: TObject);
begin
  Verificajogada;
   Self.BtB1.Text := jogou;
   Self.BtB1.Enabled := false;
   b1 := Self.BtB1.Text;
   VerificaJogo;
end;

procedure TFrmJVelha.BtB2Click(Sender: TObject);
begin
  Verificajogada;
   Self.BtB2.Text := jogou;
   Self.BtB2.Enabled := false;
   b2 := Self.BtB2.Text;
   VerificaJogo;
end;

procedure TFrmJVelha.BtB3Click(Sender: TObject);
begin
   Verificajogada;
   Self.BtB3.Text := jogou;
   Self.BtB3.Enabled := false;
   b3 := Self.BtB3.Text;
   VerificaJogo;
end;

procedure TFrmJVelha.BtC1Click(Sender: TObject);
begin
   Verificajogada;
   Self.BtC1.Text := jogou;
   Self.BtC1.Enabled := false;
   c1 :=  Self.BtC1.Text;
   VerificaJogo;
end;

procedure TFrmJVelha.BtC2Click(Sender: TObject);
begin
   Verificajogada;
   Self.BtC2.Text := jogou;
   Self.BtC2.Enabled := false;
   c2 := Self.BtC2.Text;
   VerificaJogo;
end;

procedure TFrmJVelha.BtC3Click(Sender: TObject);
begin
   Verificajogada;
   Self.BtC3.Text := jogou;
   Self.BtC3.Enabled := false;
   c3 := Self.BtC3.Text;
   VerificaJogo;
end;

procedure TFrmJVelha.Verificajogada;
begin

  if jogou = '' then
   begin
    jogou := 'X';
   end;

  if jogou = 'X' then
    jogou := 'O'
     else
     jogou := 'X';




end;

procedure TFrmJVelha.VerificaJogo;
begin


  {$Region 'vertical'}
   if (a1 = 'X') and (a2 = 'X') and (a3 ='X') then
      begin
       ShowMessage('X ganhou');
       recomeca;
      end else
     if (a1 = 'O') and (a2 = 'O') and (a3 ='O') then
        begin
         ShowMessage('O ganhou');
         recomeca;
        end;

    if (b1 = 'X') and (b2 = 'X') and (b3 ='X') then
      begin
       ShowMessage('X ganhou');
       recomeca;
      end else
     if (b1 = 'O') and (b2 = 'O') and (b3 ='O') then
        begin
         ShowMessage('O ganhou');
         recomeca;
        end;

   if (c1 = 'X') and (c2 = 'X') and (c3 ='X') then
      begin
       ShowMessage('X ganhou');
       recomeca;
      end else
     if (c1 = 'O') and (c2 = 'O') and (c3 ='O') then
        begin
         ShowMessage('O ganhou');
         recomeca;
        end;

   {$endregion}


   {$Region'Vertical'}
    if (a1 = 'X') and (b1 = 'X') and (c1 ='X') then
      begin
       ShowMessage('X ganhou');
       recomeca;
      end else
     if (a1 = 'O') and (b1 = 'O') and (c1 ='O') then
        begin
         ShowMessage('O ganhou');
         recomeca;
        end;

    if (a2 = 'X') and (b2 = 'X') and (c2 ='X') then
      begin
       ShowMessage('X ganhou');
       recomeca;
      end else
     if (a2 = 'O') and (b2 = 'O') and (c2 ='O') then
        begin
         ShowMessage('O ganhou');
         recomeca;
        end;

   if (a3 = 'X') and (b3 = 'X') and (c3 ='X') then
      begin
       ShowMessage('X ganhou');
       recomeca;
      end else
     if (a3 = 'O') and (b3 = 'O') and (c3 ='O') then
        begin
         ShowMessage('O ganhou');
         recomeca;
        end;

   {$endRegion}




   {$Region 'X'}
    if (a1 = 'X') and (b2 = 'X') and (c3 ='X') then
      begin
       ShowMessage('X ganhou');
      recomeca;
      end else
     if (a1 = 'O') and (b2 = 'O') and (c3 ='O') then
        begin
         ShowMessage('O ganhou');
         recomeca;
        end;


     if (a3 = 'X') and (b2 = 'X') and (c1 ='X') then
      begin
       ShowMessage('X ganhou');
       recomeca;
      end else
     if (a3 = 'O') and (b2 = 'O') and (c1 ='O') then
        begin
         ShowMessage('O ganhou');
         recomeca;
        end;
  {$EndRegion}

   end;


procedure TFrmJVelha.recomeca;
begin


 {$Region'limpa modo antigo'}
  BtA1.Enabled:= True;
  BtA2.Enabled:= True;
  BtA3.Enabled:= True;
  BtB1.Enabled:= True;
  BtB2.Enabled:= True;
  BtB3.Enabled:= True;
  BtC1.Enabled:= True;
  BtC2.Enabled:= True;
  BtC3.Enabled:= True;
  BtA1.Text:= '';
  BtA2.Text:= '';
  BtA3.Text:= '';
  BtB1.Text:= '';
  BtB2.Text:= '';
  BtB3.Text:= '';
  BtC1.Text:= '';
  BtC2.Text:= '';
  BtC3.Text:= '';
  a1:= '';
  a2:= '';
  a3:= '';
  b1:= '';
  b2:= '';
  b3:= '';
  c1:= '';
  c2:= '';
  c3:= '';


  {$EndRegion}

end;

end.
