program ConsultaCNPJ;

uses
  Vcl.Forms,
  uConsultaCNPJ in 'frm\uConsultaCNPJ.pas' {frmConsultaCNPJ},
  Empresa in 'class\Empresa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmConsultaCNPJ, frmConsultaCNPJ);
  Application.Run;
end.
