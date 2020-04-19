program IsValuation;

uses
  System.StartUpCopy,
  FMX.Forms,
  UntPrincipal in 'UntPrincipal.pas' {FrmPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
