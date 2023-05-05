program JogoVelha;

uses
  System.StartUpCopy,
  FMX.Forms,
  UnitJVelha in 'UnitJVelha.pas' {FrmJVelha};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmJVelha, FrmJVelha);
  Application.Run;
end.
