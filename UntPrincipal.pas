unit UntPrincipal;

interface

uses
  FGX.LinkedLabel,

  FMX.Controls,
  FMX.Controls.Presentation,
  FMX.Dialogs,
  FMX.Edit,
  FMX.Forms,
  FMX.Graphics,
  FMX.Layouts,
  FMX.Objects,
  FMX.StdCtrls,
  FMX.Types,

  System.Classes,
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Variants;

type
  TFrmPrincipal = class(TForm)
    lytMain: TLayout;
    lytToolbar: TLayout;
    rctMain: TRectangle;
    lytBotton: TLayout;
    rctTop: TRectangle;
    fgLinkedLabel1: TfgLinkedLabel;
    rctBotton: TRectangle;
    Rectangle1: TRectangle;
    Label1: TLabel;
    Layout1: TLayout;
    edtFluxo: TEdit;
    Label2: TLabel;
    edtCrescimento: TEdit;
    edtTaxa: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    lblValuation: TLabel;
    Button1: TButton;
    fgLinkedLabel2: TfgLinkedLabel;
    procedure edtFluxoExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure edtFluxoKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.fmx}

procedure TFrmPrincipal.edtFluxoExit(Sender: TObject);
Var Fluxo,Crescimento,Taxa, Valuation : double;
begin
  Fluxo :=0.0;
  Crescimento :=0.0;
  Taxa :=0.0;
  Valuation  :=0.0;
  if edtFluxo.Text<>''       then Fluxo       := StrToFloat(edtFluxo.Text);
  if edtCrescimento.Text<>'' then Crescimento := StrToFloat(edtCrescimento.Text);
  if edtTaxa.Text<>''        then Taxa        := StrToFloat(edtTaxa.Text);
  if (Fluxo>0)and(Crescimento>0)and(Taxa>0) then
    Valuation := Fluxo/((Taxa-Crescimento)/100);
  LblValuation.Text := FormatFloat('#,##0.00',Valuation);

end;

procedure TFrmPrincipal.edtFluxoKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
Var Fluxo,Crescimento,Taxa, Valuation : double;
begin
  Fluxo :=0.0;
  Crescimento :=0.0;
  Taxa :=0.0;
  Valuation  :=0.0;
  if edtFluxo.Text<>''       then Fluxo       := StrToFloat(edtFluxo.Text);
  if edtCrescimento.Text<>'' then Crescimento := StrToFloat(edtCrescimento.Text);
  if edtTaxa.Text<>''        then Taxa        := StrToFloat(edtTaxa.Text);
  if (Fluxo>0)and(Crescimento>0)and(Taxa>0) then
    Valuation := Fluxo/((Taxa-Crescimento)/100);
  LblValuation.Text := FormatFloat('#,##0.00',Valuation);


end;

procedure TFrmPrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
    if (Key = vkReturn) then
    begin
      Key := vkTab;
      KeyDown(Key, KeyChar, Shift);
    end;

end;

end.
