unit FrameTurb_Och5KA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, OPCEdit, StdCtrls;

type
  TfraKA5och = class(TFrame)
    Label1: TLabel;
    Label2: TLabel;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit33: TEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    OPCEdit137: TOPCEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    OPCEdit1: TOPCEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    OPCEdit2: TOPCEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    OPCEdit3: TOPCEdit;
    Edit19: TEdit;
    Edit20: TEdit;
    Edit21: TEdit;
    OPCEdit4: TOPCEdit;
    Edit22: TEdit;
    Edit23: TEdit;
    Edit24: TEdit;
    OPCEdit5: TOPCEdit;
    Edit25: TEdit;
    Edit26: TEdit;
    Edit27: TEdit;
    OPCEdit6: TOPCEdit;
    Edit28: TEdit;
    Edit29: TEdit;
    Edit30: TEdit;
    OPCEdit7: TOPCEdit;
    Edit31: TEdit;
    Edit32: TEdit;
    Edit34: TEdit;
    OPCEdit8: TOPCEdit;
    Edit35: TEdit;
    Edit36: TEdit;
    Edit37: TEdit;
    OPCEdit9: TOPCEdit;
    Edit38: TEdit;
    Edit39: TEdit;
    Edit40: TEdit;
    OPCEdit10: TOPCEdit;
    Edit41: TEdit;
    Edit42: TEdit;
    Edit43: TEdit;
    OPCEdit11: TOPCEdit;
    Edit44: TEdit;
    Edit45: TEdit;
    Edit46: TEdit;
    OPCEdit12: TOPCEdit;
    Edit47: TEdit;
    Edit48: TEdit;
    Edit49: TEdit;
    OPCEdit13: TOPCEdit;
    Edit50: TEdit;
    Edit51: TEdit;
    Edit52: TEdit;
    OPCEdit14: TOPCEdit;
    Edit53: TEdit;
    Edit54: TEdit;
    Edit55: TEdit;
    OPCEdit15: TOPCEdit;
    Edit56: TEdit;
    Edit57: TEdit;
    Edit58: TEdit;
    OPCEdit16: TOPCEdit;
    Edit59: TEdit;
    Edit60: TEdit;
    Edit61: TEdit;
    OPCEdit17: TOPCEdit;
    Edit62: TEdit;
    Edit63: TEdit;
    Edit64: TEdit;
    OPCEdit18: TOPCEdit;
    Edit65: TEdit;
    Edit66: TEdit;
    Edit67: TEdit;
    OPCEdit19: TOPCEdit;
    Edit68: TEdit;
    Edit69: TEdit;
    Edit70: TEdit;
    OPCEdit20: TOPCEdit;
    Edit71: TEdit;
    Edit72: TEdit;
    Edit73: TEdit;
    OPCEdit21: TOPCEdit;
    Edit74: TEdit;
    Edit75: TEdit;
    Edit76: TEdit;
    OPCEdit22: TOPCEdit;
    Edit77: TEdit;
    Edit78: TEdit;
    Edit79: TEdit;
    OPCEdit23: TOPCEdit;
    Edit80: TEdit;
    Edit81: TEdit;
    Edit82: TEdit;
    OPCEdit24: TOPCEdit;
    Edit83: TEdit;
    Edit84: TEdit;
    Edit85: TEdit;
    OPCEdit25: TOPCEdit;
    Edit86: TEdit;
    Edit87: TEdit;
    Edit88: TEdit;
    OPCEdit26: TOPCEdit;
    Edit89: TEdit;
    Edit90: TEdit;
    Edit91: TEdit;
    OPCEdit27: TOPCEdit;
    Edit92: TEdit;
    Edit93: TEdit;
    Edit94: TEdit;
    OPCEdit28: TOPCEdit;
    Edit95: TEdit;
    Edit96: TEdit;
    Edit97: TEdit;
    OPCEdit29: TOPCEdit;
    Edit98: TEdit;
    Edit99: TEdit;
    Edit100: TEdit;
    OPCEdit30: TOPCEdit;
    Edit101: TEdit;
    Edit102: TEdit;
    Edit103: TEdit;
    OPCEdit31: TOPCEdit;
    Edit104: TEdit;
    Edit105: TEdit;
    Edit106: TEdit;
    OPCEdit32: TOPCEdit;
    Edit107: TEdit;
    Edit108: TEdit;
    Edit109: TEdit;
    OPCEdit33: TOPCEdit;
    Edit110: TEdit;
    Edit111: TEdit;
    Edit112: TEdit;
    OPCEdit34: TOPCEdit;
    Edit113: TEdit;
    Edit114: TEdit;
    Edit115: TEdit;
    OPCEdit35: TOPCEdit;
    Edit116: TEdit;
    Edit117: TEdit;
    Edit118: TEdit;
    OPCEdit36: TOPCEdit;
    Edit119: TEdit;
    Edit120: TEdit;
    Edit121: TEdit;
    OPCEdit37: TOPCEdit;
    Edit122: TEdit;
    Edit123: TEdit;
    Edit124: TEdit;
    OPCEdit38: TOPCEdit;
    Edit125: TEdit;
    Edit126: TEdit;
    Edit127: TEdit;
    OPCEdit39: TOPCEdit;
    Edit128: TEdit;
    Edit129: TEdit;
    Edit130: TEdit;
    OPCEdit40: TOPCEdit;
    Edit131: TEdit;
    Edit132: TEdit;
    Edit133: TEdit;
    OPCEdit41: TOPCEdit;
    Edit134: TEdit;
    Edit135: TEdit;
    Edit136: TEdit;
    OPCEdit42: TOPCEdit;
    Edit137: TEdit;
    Edit138: TEdit;
    Edit139: TEdit;
    OPCEdit43: TOPCEdit;
    Edit140: TEdit;
    Edit141: TEdit;
    Edit142: TEdit;
    OPCEdit44: TOPCEdit;
    Edit143: TEdit;
    Edit144: TEdit;
    Edit145: TEdit;
    OPCEdit45: TOPCEdit;
    Edit146: TEdit;
    Edit147: TEdit;
    Edit148: TEdit;
    OPCEdit46: TOPCEdit;
    Edit149: TEdit;
    Edit150: TEdit;
    Edit151: TEdit;
    OPCEdit47: TOPCEdit;
    Edit152: TEdit;
    Edit153: TEdit;
    Edit154: TEdit;
    OPCEdit48: TOPCEdit;
    Edit155: TEdit;
    Edit156: TEdit;
    Edit157: TEdit;
    OPCEdit49: TOPCEdit;
    Edit158: TEdit;
    Edit159: TEdit;
    Edit160: TEdit;
    OPCEdit50: TOPCEdit;
    Edit161: TEdit;
    Edit162: TEdit;
    Edit163: TEdit;
    OPCEdit51: TOPCEdit;
    Edit164: TEdit;
    Edit165: TEdit;
    Edit166: TEdit;
    OPCEdit52: TOPCEdit;
    Edit167: TEdit;
    Edit168: TEdit;
    Edit169: TEdit;
    OPCEdit53: TOPCEdit;
    Edit170: TEdit;
    Edit171: TEdit;
    Edit172: TEdit;
    OPCEdit54: TOPCEdit;
    Edit173: TEdit;
    Edit174: TEdit;
    Edit175: TEdit;
    OPCEdit55: TOPCEdit;
    Edit176: TEdit;
    Edit177: TEdit;
    Edit178: TEdit;
    OPCEdit56: TOPCEdit;
    Edit179: TEdit;
    Edit180: TEdit;
    Edit181: TEdit;
    OPCEdit57: TOPCEdit;
    Edit182: TEdit;
    Edit183: TEdit;
    Edit184: TEdit;
    OPCEdit58: TOPCEdit;
    Edit185: TEdit;
    Edit186: TEdit;
    Edit187: TEdit;
    OPCEdit59: TOPCEdit;
    Edit188: TEdit;
    Edit189: TEdit;
    Edit190: TEdit;
    OPCEdit60: TOPCEdit;
    Edit191: TEdit;
    Edit192: TEdit;
    Edit193: TEdit;
    OPCEdit61: TOPCEdit;
    Edit194: TEdit;
    Edit195: TEdit;
    Edit196: TEdit;
    OPCEdit62: TOPCEdit;
    Edit197: TEdit;
    Edit198: TEdit;
    Edit199: TEdit;
    OPCEdit63: TOPCEdit;
    Edit200: TEdit;
    Edit201: TEdit;
    Edit202: TEdit;
    OPCEdit64: TOPCEdit;
    Edit203: TEdit;
    Edit204: TEdit;
    Edit205: TEdit;
    OPCEdit65: TOPCEdit;
    Edit206: TEdit;
    Edit207: TEdit;
    Edit208: TEdit;
    OPCEdit66: TOPCEdit;
    Edit209: TEdit;
    Edit210: TEdit;
    Edit211: TEdit;
    OPCEdit67: TOPCEdit;
    Edit212: TEdit;
    Edit213: TEdit;
    Edit214: TEdit;
    OPCEdit68: TOPCEdit;
    Edit215: TEdit;
    Edit216: TEdit;
    Edit217: TEdit;
    OPCEdit69: TOPCEdit;
    Edit218: TEdit;
    Edit219: TEdit;
    Edit220: TEdit;
    OPCEdit70: TOPCEdit;
    Edit221: TEdit;
    Edit222: TEdit;
    Edit223: TEdit;
    OPCEdit71: TOPCEdit;
    Edit224: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
