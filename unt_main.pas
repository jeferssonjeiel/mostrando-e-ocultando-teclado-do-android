unit unt_main;

interface

uses
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Classes,
  System.Variants,
  FMX.Types,
  FMX.Controls,
  FMX.Forms,
  FMX.Graphics,
  FMX.Dialogs,
  FMX.Controls.Presentation,
  FMX.StdCtrls,
  FMX.Layouts,
  FMX.VirtualKeyboard,
  FMX.Platform,
  FMX.Edit;

type
  Tfrm_main = class(TForm)
    Layout1: TLayout;
    btn_showkeyboard: TButton;
    btn_hidekeyboard: TButton;
    Edit1: TEdit;
    procedure btn_hidekeyboardClick(Sender: TObject);
    procedure btn_showkeyboardClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_main: Tfrm_main;

implementation

{$R *.fmx}

procedure Tfrm_main.btn_hidekeyboardClick(Sender: TObject);
var
  KeyboardService: IFMXVirtualKeyboardService;
begin
  if TPlatformServices.Current.SupportsPlatformService
    (IFMXVirtualKeyboardService, IInterface(KeyboardService)) then
  begin
    KeyboardService.HideVirtualKeyboard;
  end;
end;

procedure Tfrm_main.btn_showkeyboardClick(Sender: TObject);
var
  KeyboardService: IFMXVirtualKeyboardService;
begin
  if TPlatformServices.Current.SupportsPlatformService
    (IFMXVirtualKeyboardService, IInterface(KeyboardService)) then
  begin
    KeyboardService.ShowVirtualKeyboard(Edit1);
  end;
end;

end.
