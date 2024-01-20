unit kkm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ZipForge, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdFTP, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZConnection, StdCtrls,
  IdHTTP, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL,

  ExtCtrls,
  IdMultipartFormData, IdCookieManager, ZAbstractConnection,

  Vcl.OleCtrls,
  SHDocVw,HTTPSend,SSL_OPENSSl, IPPeerClient, REST.Client, Data.Bind.Components,
  Data.Bind.ObjectScope, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, Vcl.ComCtrls,

  ComObj, ActiveX , DrvFRLib_TLB,
  shellapi, System.JSON, Vcl.Grids,

  Mask,
  Gauges, wininet, IdRawBase,
  IdRawClient, IdIcmpClient, Registry, WinSock, FileCtrl, jpeg,
  Buttons,SHFolder,
  blcksock,
  System.NetEncoding,  // ��������� � Base64
  DBXJSON
  ;

type
  TfmKKM = class(TForm)
    panSaveKKM: TPanel;
    bbZakKKM: TButton;
    pcKKM: TPageControl;
    ts01: TTabSheet;
    tsNastroi: TTabSheet;
    tsAtol: TTabSheet;
    panKKTnastroiTop02: TPanel;
    panKKTnastroiTop01: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    Panel20: TPanel;
    Panel21: TPanel;
    edFIOKassir: TEdit;
    edINNkassir: TEdit;
    edStr1: TEdit;
    edStr2: TEdit;
    edStr3: TEdit;
    edStr4: TEdit;
    Panel22: TPanel;
    panKKTnastroiTop03: TPanel;
    rgKKMpusk: TRadioGroup;
    rgTipKKM: TRadioGroup;
    panKKTnastroiTop03top: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    cbKKMemulaytor: TCheckBox;
    Label7: TLabel;
    Label8: TLabel;
    rgKKMNalog: TRadioGroup;
    Label9: TLabel;
    rgKKMffd: TRadioGroup;
    lbInfo3: TLabel;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    panEvator: TPanel;
    Panel27: TPanel;
    Panel26: TPanel;
    edEvatorKod: TEdit;
    Label10: TLabel;
    Panel28: TPanel;
    lbKKTnastroiInfo01: TLabel;
    edKolSimbolov: TEdit;
    lbKKTnastroiInfo02: TLabel;
    Label14: TLabel;
    cbKKMprintFilial: TCheckBox;
    panMerkuriy: TPanel;
    Panel35: TPanel;
    Label22: TLabel;
    Panel33: TPanel;
    Panel34: TPanel;
    Edit5: TEdit;
    edMerc_ComPort: TEdit;
    Panel36: TPanel;
    Panel32: TPanel;
    cbMerc_model: TComboBox;
    bbSaveKKM: TButton;
    pcTestDraivKKM: TPageControl;
    tsAtolParam: TTabSheet;
    Panel9: TPanel;
    Panel10: TPanel;
    lbKol: TLabel;
    Panel29: TPanel;
    Label15: TLabel;
    Edit1: TEdit;
    Panel11: TPanel;
    Label1: TLabel;
    Panel30: TPanel;
    Label16: TLabel;
    Edit2: TEdit;
    Panel12: TPanel;
    Label18: TLabel;
    Label17: TLabel;
    Edit3: TEdit;
    Panel2: TPanel;
    Panel3: TPanel;
    bbTestShtrihPrint: TButton;
    Panel24: TPanel;
    Label11: TLabel;
    Button10: TButton;
    tsMercParam: TTabSheet;
    Panel38: TPanel;
    Label23: TLabel;
    Edit6: TEdit;
    Panel39: TPanel;
    Label25: TLabel;
    Panel40: TPanel;
    bbGetDriver: TButton;
    edIP: TEdit;
    Panel41: TPanel;
    Panel42: TPanel;
    Label26: TLabel;
    Panel45: TPanel;
    bbGetStatus: TButton;
    bbGetCommonInfo: TButton;
    Panel46: TPanel;
    Label24: TLabel;
    tsMercuri: TTabSheet;
    panTipMerc: TPanel;
    Panel49: TPanel;
    bbOpenSmena: TButton;
    bbCloseSmena: TButton;
    Panel50: TPanel;
    bbXotchet: TButton;
    bbZotchet: TButton;
    Panel52: TPanel;
    Button21: TButton;
    bbDobriyDen: TButton;
    Label27: TLabel;
    bbTestShtrih: TButton;
    Label28: TLabel;
    Label29: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    rgKKM_NDS: TRadioGroup;
    bbTestMerc: TButton;
    Panel43: TPanel;
    Label33: TLabel;
    Label34: TLabel;
    Panel44: TPanel;
    Label35: TLabel;
    Label36: TLabel;
    Panel47: TPanel;
    Label38: TLabel;
    Panel48: TPanel;
    Label37: TLabel;
    Panel53: TPanel;
    Label39: TLabel;
    Label40: TLabel;
    Panel31: TPanel;
    lbInfo2: TLabel;
    Label20: TLabel;
    Label41: TLabel;
    mmInfoAtolShtrih: TMemo;
    mmInfo: TMemo;
    Label19: TLabel;
    tsAtolShtrih: TTabSheet;
    Label21: TLabel;
    mmInfoShtrih: TMemo;
    Panel55: TPanel;
    Panel56: TPanel;
    Label42: TLabel;
    Label43: TLabel;
    Label30: TLabel;
    bbTestShtrihM: TButton;
    Panel37: TPanel;
    bbXotchetStrihM: TButton;
    bbZotchetStrihM: TButton;
    Label44: TLabel;
    Panel51: TPanel;
    bbCloseSessionRab: TButton;
    bbOpenSessionRab: TButton;
    bbOpenChek: TButton;
    Panel54: TPanel;
    Label45: TLabel;
    Edit4: TEdit;
    tsAgent: TTabSheet;
    Panel57: TPanel;
    Label47: TLabel;
    cbKKM_Agent_Blok: TCheckBox;
    Panel58: TPanel;
    Panel59: TPanel;
    edPostaw_name: TEdit;
    edPostaw_inn: TEdit;
    edPostaw_tel: TEdit;
    Panel60: TPanel;
    Panel61: TPanel;
    Panel62: TPanel;
    Panel63: TPanel;
    Panel64: TPanel;
    Panel65: TPanel;
    cbPostaw_nalog: TComboBox;
    cbAgent_Kod: TComboBox;
    edSimbol: TEdit;
    bbPrintText: TButton;
    tsChZnak: TTabSheet;
    mmInfoMercChZnak: TMemo;
    panKKTatolTop05: TPanel;
    Button4: TButton;
    Button1: TButton;
    Button3: TButton;
    Button7: TButton;
    Button6: TButton;
    Button5: TButton;
    Button8: TButton;
    panAtolTop03: TPanel;
    bbAtolDraiverOpen: TButton;
    bbAtolChekTowar: TButton;
    panAtolTop02: TPanel;
    lbAtol: TLabel;
    panAtolTop04: TPanel;
    panAtolTop01: TPanel;
    pcAtolDop: TPageControl;
    tsAtolLog: TTabSheet;
    tsAtolTowar: TTabSheet;
    mmAtolLog: TMemo;
    mmAtolTowar: TMemo;
    pcMerc: TPageControl;
    tsMercLog: TTabSheet;
    tsMercTowar: TTabSheet;
    mmInfoMerc: TMemo;
    mmMerkTowar: TMemo;
    bbAtolDobriyDen: TButton;
    bbAtolDraiverClose: TButton;
    bbAtolInformation: TButton;
    bbAtolSmenaClose: TButton;
    bbAtolChekTowarTest: TButton;
    Button2: TButton;
    bbAtolXotchet: TButton;
    pcChZnak: TPageControl;
    tsChZnakMerc: TTabSheet;
    Panel67: TPanel;
    bbClearMarkingCodeMerc: TButton;
    panChZnakProm: TPanel;
    bbCheckMarkingCodeMerc: TButton;
    edKodMarkMerc: TEdit;
    Panel70: TPanel;
    Label46: TLabel;
    bbGetMarkingCodeCheckResultMerc: TButton;
    Panel69: TPanel;
    Label49: TLabel;
    bbAcceptMarkingMerc: TButton;
    bbZakSesiyMerc: TButton;
    Panel68: TPanel;
    Label48: TLabel;
    bbOformMerc: TButton;
    tsChZnakAtol: TTabSheet;
    Panel1: TPanel;
    bbClearMarkingCodeAtol: TButton;
    Panel4: TPanel;
    bbCheckMarkingCodeAtol: TButton;
    edKodMarkAtol: TEdit;
    Panel5: TPanel;
    Label12: TLabel;
    bbGetMarkingCodeCheckResultAtol: TButton;
    Panel6: TPanel;
    Label13: TLabel;
    bbAcceptMarkingAtol: TButton;
    bbZakSesiyAtol: TButton;
    Panel7: TPanel;
    Label50: TLabel;
    bbOformAtol: TButton;
    mmAtolInfo: TMemo;
    procedure bbZakKKMClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbAtolDraiverOpenClick(Sender: TObject);
    procedure bbDraiverClozeClick(Sender: TObject);
    procedure bbTestShtrihClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);

    function GetDriver: OleVariant;
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure bbTestShtrihPrintClick(Sender: TObject);
    procedure bbSaveKKMClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure rgTipKKMClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure edKolSimbolovKeyPress(Sender: TObject; var Key: Char);
    procedure bbGetDriverClick(Sender: TObject);
    procedure bbGetStatusClick(Sender: TObject);
    procedure bbGetCommonInfoClick(Sender: TObject);
    procedure bbOpenSmenaClick(Sender: TObject);
    procedure bbOpenSessionRabClick(Sender: TObject);
    procedure bbCloseSessionRabClick(Sender: TObject);
    procedure bbCloseSmenaClick(Sender: TObject);
    procedure bbXotchetClick(Sender: TObject);
    procedure bbZotchetClick(Sender: TObject);
    procedure bbOpenChekClick(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure bbDobriyDenClick(Sender: TObject);
    procedure bbTestMercClick(Sender: TObject);
    procedure bbTestShtrihMClick(Sender: TObject);
    procedure bbXotchetStrihMClick(Sender: TObject);
    procedure bbZotchetStrihMClick(Sender: TObject);
    procedure edPostaw_innKeyPress(Sender: TObject; var Key: Char);
    procedure edPostaw_telKeyPress(Sender: TObject; var Key: Char);
    procedure bbPrintTextClick(Sender: TObject);
    procedure bbClearMarkingCodeMercClick(Sender: TObject);
    procedure bbCheckMarkingCodeMercClick(Sender: TObject);
    procedure bbGetMarkingCodeCheckResultMercClick(Sender: TObject);
    procedure bbAcceptMarkingMercClick(Sender: TObject);
    procedure bbOformMercClick(Sender: TObject);
    procedure bbZakSesiyMercClick(Sender: TObject);
    procedure bbAtolInformationClick(Sender: TObject);
    procedure bbAtolSmenaCloseClick(Sender: TObject);
    procedure bbAtolDobriyDenClick(Sender: TObject);
    procedure bbAtolChekTowarClick(Sender: TObject);
    procedure bbAtolChekTowarTestClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure bbAtolXotchetClick(Sender: TObject);
    procedure bbClearMarkingCodeAtolClick(Sender: TObject);
  private
    { Private declarations }
    FDriver:Olevariant;
  public
    { Public declarations }
  end;

var
  fmKKM:TfmKKM;
  fptr:OleVariant;
  DrvFR:OLEVariant;
  podklKKM:Byte;
  Drv:TDrvFR;

  JSonValue:TJSonValue;
  ssJSONrezult,ssJSONkey,ssJSONdescription,ssUIDmarkCodeBaza64:string;

  Time2,Time1:Ttime;

  Atol_glDrvFR,shrih_glDrvFR,v:OLEVariant;
  glKasKassirPassFK,glKasAdmPassFK,sZapNew:string;
  ssJSONmcCheckResult,ssMcInfo:String;
  sTire70,sTire99:ShortString;

  sSmenaAtol:String[7];

  Http2:TIdHTTP;
  PostDataJSON:TStringStream;

implementation

uses timurik, Polzovatel, Prise;

{$R *.dfm}

Function Parsing_JSON(ssJSON,ssParametr:String):ShortString;
Var
  ssRez,ssSrav:ShortString;
  sim:String[1];
  ik,kDlin,il,im:Longint;
  kdlinPar:Byte;
Label Fin;
begin
  ssRez:='';
  kDlin:=Length(ssJSON);
  kDlinPar:=Length(ssParametr);
  for ik:=1 to kDlin do
  begin
    ssSrav:=copy(ssJSON,ik,kDlinPar);
    if ssSrav=ssParametr then
    begin
      im:=ik+kDlinPar+2;
      for il:=im to im+20 do
      begin
        sim:=copy(ssJSON,il,1);
        if sim=',' then goto Fin;
        ssRez:=ssRez+sim;
      end;
      goto Fin;
    end;
  end;
  Fin:
  Parsing_JSON:=ssRez;
end;

function GetIP: string;
var
  WSAData:TWSAData;
  P:PHostEnt;
  Buf:array [0..127] of Char;
begin
  Result := '';

  if (WSAStartup($101, wsaData) = 0) and (GetHostName(@Buf, 128) = 0) then
  try
  P:=GetHostByName(@Buf);

  if P <> nil then
  Result := inet_ntoa(PInAddr(p^.h_addr_list^)^);
  finally
  WSACleanup;
  end;
end;

procedure TfmKKM.bbCloseSmenaClick(Sender: TObject);
Var
  TextJSON,ssOtwet:String;
  newSS:TStringStream;
begin
  IF MessageDlg('������������� ���������� �������� �����?',
  mtConfirmation,[mbYes, mbNo],0) = mrYes then
  begin
    Screen.Cursor:=crHourGlass;

    mmInfoMerc.Lines.Clear;

    bbOpenSessionRabClick(Sender);   // ������� ������

    if (sessionKey<>'')and(ssResultKKM='0') then
    begin
      TextJSON:='{"sessionKey": "'+sessionKey+'", "command": "CloseShift", "printDoc": true, "cashierInfo": {"cashierName": "'+UTF8Encode(newS5(ssKKM_kassir))+'", "cashierINN": "'+ssKKM_kassir_INN+'"} }';
      mmInfo.Lines.Add('�������� ����� ������: '+UTF8Decode(TextJSON));
      try
        Http2:=TIdHTTP.Create(nil);
        HTTP2.Request.ContentType:='application/json; charset=utf-8';
        HTTP2.ReadTimeout:=10000;

        PostDataJSON:=TStringStream.Create;
        PostDataJSON.WriteString(TextJSON);

        //ssOtwet:=HTTP2.Post(ssWebRestKKM,PostDataJSON);
        newSS:=TStringStream.Create;
        HTTP2.Post(ssWebRestKKM,PostDataJSON,newSS);
        ssOtwet:=UTF8Decode(newSS.DataString);

        mmInfo.Lines.Add('�������� ����� �����: '+ssOtwet);
        mmInfo.Lines.Add('-----------------------------------------------------------------------------------');
        Http2.Free;

        bbCloseSessionRabClick(Sender);  // ������� ������

        Screen.Cursor:=crDefault;

        mmInfoMerc.Lines.Add('�������� ����� ����������� �������!');
        ShowMessage('�������� ����� ����������� �������!');
      except
        on E:Exception do
        begin
          Screen.Cursor:=crDefault;
          mmInfo.Lines.Add('������: '+E.Message);
          mmInfoMerc.Lines.Add('�������� ����� ��������� ������: '+E.Message);
          ShowMessage('������: '+E.Message);
          Exit;
        end;
      end;
    end
    else
    begin
      Screen.Cursor:=crDefault;
      ShowMessage('�� ������� ���� ������ �� ��� "'+ssNameKKM+'"!'+#13+'��� ����������� ����� � ��� "'+ssNameKKM+'"!');
    end;
  end;
end;

procedure TfmKKM.bbDraiverClozeClick(Sender: TObject);
begin
  if podklKKM=1 then
  begin
    try
      fptr:=Unassigned;

      podklKKM:=0;
      mmAtolLog.Lines.Add('���������� �������� ����������� �������!');

    except
      on E: Exception do
      begin
        podklKKM:=4;
        mmAtolLog.Lines.Add('������ ��� ���������� ��������:');
        mmAtolLog.Lines.Add(E.Message);

        ShowMessage('������ ��� ���������� ��������: '+E.Message);
      end;
    end;
  end
  else
  begin
     mmAtolLog.Lines.Add('���������� �������� �������� ������ ����� ��� ��������� �����������!');
     ShowMessage('���������� �������� �������� ������ ����� ��� ��������� �����������!');
  end;
end;

procedure TfmKKM.bbAtolChekTowarClick(Sender: TObject);
var
  sDate,sTime,sTipNDS,sNameTowar:ShortString;
  summaOplatAtol:Longint;
  i:Word;
begin
  CoInitialize(nil);

  sDate:=formatDateTime('yyyy/mm/dd',date);
  sTime:=TimetoSTR(Time);

  mmAtolLog.Clear;

  mmAtolLog.Lines.Add(sTire99);
  mmAtolLog.Lines.Add('����: '+sDate+'  '+sTime+'    �������� ���� �� ��� ����.');
  mmAtolLog.Lines.Add(sTire99);

  mmAtolLog.Lines.Add('���������� ������� ����....');
  fptr := CreateOleObject('AddIn.Fptr10');
  fptr.setSingleSetting(fptr.LIBFPTR_SETTING_PORT, IntToStr(fptr.LIBFPTR_PORT_USB));
  fptr.applySingleSettings;

  mmAtolLog.Lines.Add('������� ���� ��������� �������.');
  mmAtolLog.Lines.Add('������������� ���������� � ��� ����...');

  fptr.open;                                                                    // ���������� � ���

  mmAtolLog.Lines.Add('���������� ������ �������!');
  mmAtolLog.Lines.Add('����������� �������...');

  // ����������� �������
  fptr.setParam(1021, '������ '+UTF8Encode(newS5(ssKKM_kassir)));
  fptr.setParam(1203, ssKKM_kassir_INN);
  fptr.operatorLogin;                                                           // ����������� �������

  mmAtolLog.Lines.Add('����������� ������� ������ �������.');
  mmAtolLog.Lines.Add('����������� �������� ����...');
  // �������� ����
  // fptr.LIBFPTR_RT_SELL - ��� �������
  // fptr.LIBFPTR_RT_SELL_RETURN - ��� �������� ������� (�������);
  // fptr.LIBFPTR_PARAM_RECEIPT_ELECTRONICALLY �������� true - ����� ��� �� ���������

  // �������� ssTipKKMdel �������� � ����� fmZak(���������� ������)
  // ssTipKKMdel:='0'; // ��� �������
  // ssTipKKMdel:='1'; // ��� ��������

  // ��������� ��� 2108
  // FR.setParam(1212, 32);
  //������������ �������� ��� ��� 1.2!!! 32 - ����� �� ������� ��� ����������, 33 - ����� ������� ��� ����������

  //ssTipKKMdel:='1';  // ��� ������������ ��������

  if ssTipKKMdel='0' then fptr.setParam(fptr.LIBFPTR_PARAM_RECEIPT_TYPE, fptr.LIBFPTR_RT_SELL)
                     else fptr.setParam(fptr.LIBFPTR_PARAM_RECEIPT_TYPE, fptr.LIBFPTR_RT_SELL_RETURN);

  fptr.openReceipt;                                                             // �������� ����

  mmAtolLog.Lines.Add('�������� ���� ������ �������.');
  mmAtolLog.Lines.Add('����������� ����������� �������...');

  // ����������� �������
  // fptr.LIBFPTR_TAX_VAT20 - ��� 20 %
  // LIBFPTR_PARAM_POSITION_SUM - ������ ����� �������. ����� ���������� �� ������������ ���� �� ����������.
  // � ���� ������ ��� �������� ������� �� ���, ����������� ������������ ������� (������ ��� ��������) ����� ���������.

  for i:=1 to Kol_ed_KKM_atolNew do
  begin
    //��� ������ (LIBFPTR_PARAM_TAX_TYPE) ����� ��������� ��������� ��������:
    //LIBFPTR_TAX_VAT10 - ��� 10%;
    //LIBFPTR_TAX_VAT110 - ��� ������������ 10/110;
    //LIBFPTR_TAX_VAT0 - ��� 0%;
    //LIBFPTR_TAX_NO - �� ����������;
    //LIBFPTR_TAX_VAT20 - ��� 20%;
    //LIBFPTR_TAX_VAT120 - ��� ������������ 20/120.

    IF ssKKM_NDS='nds_no' then fptr.setParam(fptr.LIBFPTR_PARAM_TAX_TYPE, fptr.LIBFPTR_TAX_NO);
    IF ssKKM_NDS='nds_0'  then fptr.setParam(fptr.LIBFPTR_PARAM_TAX_TYPE, fptr.LIBFPTR_TAX_VAT0);
    IF ssKKM_NDS='nds_10' then fptr.setParam(fptr.LIBFPTR_PARAM_TAX_TYPE, fptr.LIBFPTR_TAX_VAT10);
    IF ssKKM_NDS='nds_20' then fptr.setParam(fptr.LIBFPTR_PARAM_TAX_TYPE, fptr.LIBFPTR_TAX_VAT20);

    sNameTowar:=newS5(del_probel_sc(Copy(del_probel2(PrNaim[i]),1,KolSimvolowKKM)));

    fptr.setParam(fptr.LIBFPTR_PARAM_COMMODITY_NAME, sNameTowar);       // ������������ ������
    fptr.setParam(fptr.LIBFPTR_PARAM_PRICE, CenNew[i]);                    // ����
    fptr.setParam(fptr.LIBFPTR_PARAM_QUANTITY, kol[i]);                 // ���-��

    fptr.setParam(1212, 1);      // ������� �������� �������   - 1-�����;2-�������� �����;3-������;4-������;
    fptr.setParam(1214, 4);      // ������ �������             - 1-������ ����������; 4(fullPayment) - ������ ������ �� ���������
    fptr.setParam(2108, 0);      // ���� ���������� �������� ������� - 0-�����;10-�����;12-�����;20-��;71-���
    fptr.setParam(1212, 32);     // ������������ �������� ��� ��� 1.2! 32-����� �� ������� ��� ����������, 33-����� ������� ��� ����������
    fptr.registration;                                                            // ����������� �������

  end;

  mmAtolLog.Lines.Add('����������� ������� ������ �������.');
  mmAtolLog.Lines.Add('����������� ����������� ������...');

  // ����������� ����� (����������� �������)   // ����� �� �������� ������������. ���� ��� �� ������������, ����� ���� ����� ��������� �������������, ��� ���������� ������.
  // fptr.setParam(fptr.LIBFPTR_PARAM_SUM, 1.0);
  // fptr.receiptTotal;

  // ������
  //LIBFPTR_PT_CASH - ���������;
  //LIBFPTR_PT_ELECTRONICALLY - ������������;

  summaOplatAtol:=strToInt(ssSummaKKM);

  fptr.setParam(fptr.LIBFPTR_PARAM_PAYMENT_TYPE, fptr.LIBFPTR_PT_CASH);
  fptr.setParam(fptr.LIBFPTR_PARAM_PAYMENT_SUM, summaOplatAtol);
  fptr.payment;                                                                 // ������

  mmAtolLog.Lines.Add('����������� ������ ������ �������.');
  mmAtolLog.Lines.Add('����������� �������� ����...');

  fptr.closeReceipt;                                                            // �������� ����

  mmAtolLog.Lines.Add('����������� �������� �� ������ ��� �������� ����...');

  mmAtolLog.Lines.Add('fptr.errorDescription: '+fptr.errorDescription);
  //showmessage(fptr.errorDescription);
  While fptr.checkDocumentClosed < 0 do
  begin
      // �� ������� ��������� ��������� ���������. ������� ������������ ����� ������, ��������� ��������� ��������� � ��������� ������
      showmessage(fptr.errorDescription);
      Continue;
  end;

  if not fptr.getParamBool(fptr.LIBFPTR_PARAM_DOCUMENT_CLOSED) then
  begin
      // �������� �� ��������. ��������� ��� �������� (���� ��� ���) � ������������ ������
      fptr.cancelReceipt;
      Exit;
  end;

  if not fptr.getParamBool(fptr.LIBFPTR_PARAM_DOCUMENT_PRINTED) then
  begin
      // ����� ����� ������� ����� ������������� ���������, �� ���������� � �������, ���� ��� ����������
      While fptr.continuePrint < 0 do
      begin
          // ���� �� ������� ���������� �������� - �������� ������������ ������ � ����������� ��� ���.
          showmessage('�� ������� ���������� �������� (������ "' + fptr.errorDescription + '"). ��������� ��������� � ���������.');
          Continue;
      end;
  end;

  mmAtolLog.Lines.Add('�������� ���� ������ �������.');
  mmAtolLog.Lines.Add('����������� �������� ���������� � �������� ����...');

  // ������ ���������� � �������� ����
  fptr.setParam(fptr.LIBFPTR_PARAM_FN_DATA_TYPE, fptr.LIBFPTR_FNDT_LAST_DOCUMENT);
  fptr.fnQueryData;

  mmAtolLog.Lines.Add('Fiscal Sign = ' + fptr.getParamString(fptr.LIBFPTR_PARAM_FISCAL_SIGN));
  mmAtolLog.Lines.Add('Fiscal Document Number = ' + IntToStr(fptr.getParamInt(fptr.LIBFPTR_PARAM_DOCUMENT_NUMBER)));

  //mmAtolLog.Lines.Add('����������� ������� ����.');
  //fptr.endNonfiscalDocument;       // ������� ����

  // ����� � �������� �����
  //fptr.setParam(fptr.LIBFPTR_PARAM_REPORT_TYPE, fptr.LIBFPTR_RT_CLOSE_SHIFT);
  //fptr.report;

  // ��������� ���������� � �������������� ����������
  mmAtolLog.Lines.Add('����������� �������� � �������������� ����������...');
  fptr.setParam(fptr.LIBFPTR_PARAM_FN_DATA_TYPE, fptr.LIBFPTR_FNDT_OFD_EXCHANGE_STATUS);
  fptr.fnQueryData;

  mmAtolLog.Lines.Add('Unsent documents count = ' + IntToStr(fptr.getParamInt(fptr.LIBFPTR_PARAM_DOCUMENTS_COUNT)));
  mmAtolLog.Lines.Add('First unsent document number = ' + IntToStr(fptr.getParamInt(fptr.LIBFPTR_PARAM_DOCUMENT_NUMBER)));
  mmAtolLog.Lines.Add('First unsent document date = ' + DateTimeToStr(fptr.getParamDateTime(fptr.LIBFPTR_PARAM_DATE_TIME)));

  // ���������� ������
  mmAtolLog.Lines.Add(sTire70);
  mmAtolLog.Lines.Add('������ ���������� ���������� � ���...');
  fptr.close;

  mmAtolLog.Lines.Add('���������� ���������� � ��� �����������!');

  if FileExists(si1+'kkm_atol_log_new.api') then
  begin
    AssignFile(F,si1+'kkm_atol_log_new.api');
      append(F);
      for i:=0 to mmAtolLog.Lines.Count-1 do
      begin
        Writeln(F,mmAtolLog.Lines.Strings[i]);
      end;
    CloseFile(F);
  end
  else
  begin
     mmAtolLog.Lines.SaveToFile(si1+'kkm_atol_log_new.api');
  end;

  CoUninitialize();
end;

procedure TfmKKM.bbAtolChekTowarTestClick(Sender: TObject);
var
  sDate,stime:ShortString;
  i:Word;
begin
  CoInitialize(nil);

  sDate:=formatDateTime('yyyy/mm/dd',date);
  sTime:=TimetoSTR(Time);

  mmAtolLog.Clear;

  mmAtolLog.Lines.Add(sTire99);
  mmAtolLog.Lines.Add('����: '+sDate+'  '+sTime+'    �������� ���� �� ��� ����.');
  mmAtolLog.Lines.Add(sTire99);

  mmAtolLog.Lines.Add('���������� ������� ����....');
  fptr := CreateOleObject('AddIn.Fptr10');
  fptr.setSingleSetting(fptr.LIBFPTR_SETTING_PORT, IntToStr(fptr.LIBFPTR_PORT_USB));
  fptr.applySingleSettings;

  mmAtolLog.Lines.Add('������� ���� ��������� �������.');
  mmAtolLog.Lines.Add('������������� ���������� � ��� ����...');

  fptr.open;                                                                    // ���������� � ���

  mmAtolLog.Lines.Add('���������� ������ �������!');
  mmAtolLog.Lines.Add('����������� �������...');

  // ����������� �������
  fptr.setParam(1021, '������ '+UTF8Encode(newS5(ssKKM_kassir)));
  fptr.setParam(1203, ssKKM_kassir_INN);
  fptr.operatorLogin;                                                           // ����������� �������

  mmAtolLog.Lines.Add('����������� ������� ������ �������.');
  mmAtolLog.Lines.Add('����������� �������� ����...');
  // �������� ����
  // fptr.LIBFPTR_RT_SELL - ��� �������
  // fptr.LIBFPTR_RT_SELL_RETURN - ��� �������� ������� (�������);
  // fptr.LIBFPTR_PARAM_RECEIPT_ELECTRONICALLY �������� true - ����� ��� �� ���������

  ssTipKKMdel:='0'; // ��� �������
  //ssTipKKMdel:='1'; // ��� ��������

  // ��������� ��� 2108
  // FR.setParam(1212, 32);
  //������������ �������� ��� ��� 1.2!!! 32 - ����� �� ������� ��� ����������, 33 - ����� ������� ��� ����������

  if ssTipKKMdel='0' then fptr.setParam(fptr.LIBFPTR_PARAM_RECEIPT_TYPE, fptr.LIBFPTR_RT_SELL)
                     else fptr.setParam(fptr.LIBFPTR_PARAM_RECEIPT_TYPE, fptr.LIBFPTR_RT_SELL_RETURN);

  fptr.openReceipt;                                                             // �������� ����

  mmAtolLog.Lines.Add('�������� ���� ������ �������.');
  mmAtolLog.Lines.Add('����������� ����������� �������...');

  // ����������� �������
  // fptr.LIBFPTR_TAX_VAT20 - ��� 20 %
  // LIBFPTR_PARAM_POSITION_SUM - ������ ����� �������. ����� ���������� �� ������������ ���� �� ����������.
  // � ���� ������ ��� �������� ������� �� ���, ����������� ������������ ������� (������ ��� ��������) ����� ���������.

  fptr.setParam(fptr.LIBFPTR_PARAM_COMMODITY_NAME, '�������� �����');
  fptr.setParam(fptr.LIBFPTR_PARAM_PRICE, 1.00);                       // ����
  fptr.setParam(fptr.LIBFPTR_PARAM_QUANTITY, 1);                       // ���-��
  fptr.setParam(fptr.LIBFPTR_PARAM_TAX_TYPE, fptr.LIBFPTR_TAX_VAT20);  // ���-20%
  fptr.setParam(1212, 1);      // ������� �������� �������   - 1-�����;2-�������� �����;3-������;4-������;
  fptr.setParam(1214, 4);      // ������ �������             - 1-������ ����������; 4(fullPayment) - ������ ������ �� ���������
  fptr.setParam(2108, 0);      // ���� ���������� �������� ������� - 0-�����;10-�����;12-�����;20-��;71-���
  fptr.setParam(1212, 32);     // ������������ �������� ��� ��� 1.2! 32-����� �� ������� ��� ����������, 33-����� ������� ��� ����������
  fptr.registration;                                                            // ����������� �������

  fptr.setParam(fptr.LIBFPTR_PARAM_COMMODITY_NAME, '�������� �������');
  fptr.setParam(fptr.LIBFPTR_PARAM_PRICE, 2.00);                       // ����
  fptr.setParam(fptr.LIBFPTR_PARAM_QUANTITY, 1);                       // ���-��
  fptr.setParam(fptr.LIBFPTR_PARAM_TAX_TYPE, fptr.LIBFPTR_TAX_VAT20);  // ���-20%
  fptr.setParam(1212, 1);      // ������� �������� �������   - 1-�����;2-�������� �����;3-������;4-������;
  fptr.setParam(1214, 4);      // ������ �������             - 1-������ ����������; 4(fullPayment) - ������ ������ �� ���������
  fptr.setParam(2108, 0);      // ���� ���������� �������� ������� - 0-�����;10-�����;12-�����;20-��;71-���
  fptr.setParam(1212, 32);     // ������������ �������� ��� ��� 1.2! 32-����� �� ������� ��� ����������, 33-����� ������� ��� ����������
  fptr.registration;                                                            // ����������� �������

  mmAtolLog.Lines.Add('����������� ������� ������ �������.');
  mmAtolLog.Lines.Add('����������� ����������� ������...');

  // ����������� ����� (����������� �������)   // ����� �� �������� ������������. ���� ��� �� ������������, ����� ���� ����� ��������� �������������, ��� ���������� ������.
  // fptr.setParam(fptr.LIBFPTR_PARAM_SUM, 1.0);
  // fptr.receiptTotal;

  // ������ ���������

  //LIBFPTR_PT_CASH - ���������;
  //LIBFPTR_PT_ELECTRONICALLY - ������������;

  fptr.setParam(fptr.LIBFPTR_PARAM_PAYMENT_TYPE, fptr.LIBFPTR_PT_CASH);
  fptr.setParam(fptr.LIBFPTR_PARAM_PAYMENT_SUM, 3);
  fptr.payment;                                                                 // ������

  mmAtolLog.Lines.Add('����������� ������ ������ �������.');
  mmAtolLog.Lines.Add('����������� �������� ����...');

  fptr.closeReceipt;                                                            // �������� ����

  mmAtolLog.Lines.Add('����������� �������� �� ������ ��� �������� ����...');

  mmAtolLog.Lines.Add('fptr.errorDescription: '+fptr.errorDescription);
  //showmessage(fptr.errorDescription);
  While fptr.checkDocumentClosed < 0 do
  begin
      // �� ������� ��������� ��������� ���������. ������� ������������ ����� ������, ��������� ��������� ��������� � ��������� ������
      showmessage(fptr.errorDescription);
      Continue;
  end;

  if not fptr.getParamBool(fptr.LIBFPTR_PARAM_DOCUMENT_CLOSED) then
  begin
      // �������� �� ��������. ��������� ��� �������� (���� ��� ���) � ������������ ������
      fptr.cancelReceipt;
      Exit;
  end;

  if not fptr.getParamBool(fptr.LIBFPTR_PARAM_DOCUMENT_PRINTED) then
  begin
      // ����� ����� ������� ����� ������������� ���������, �� ���������� � �������, ���� ��� ����������
      While fptr.continuePrint < 0 do
      begin
          // ���� �� ������� ���������� �������� - �������� ������������ ������ � ����������� ��� ���.
          showmessage('�� ������� ���������� �������� (������ "' + fptr.errorDescription + '"). ��������� ��������� � ���������.');
          Continue;
      end;
  end;

  mmAtolLog.Lines.Add('�������� ���� ������ �������.');
  mmAtolLog.Lines.Add('����������� �������� ���������� � �������� ����...');

  // ������ ���������� � �������� ����
  fptr.setParam(fptr.LIBFPTR_PARAM_FN_DATA_TYPE, fptr.LIBFPTR_FNDT_LAST_DOCUMENT);
  fptr.fnQueryData;

  mmAtolLog.Lines.Add('Fiscal Sign = ' + fptr.getParamString(fptr.LIBFPTR_PARAM_FISCAL_SIGN));
  mmAtolLog.Lines.Add('Fiscal Document Number = ' + IntToStr(fptr.getParamInt(fptr.LIBFPTR_PARAM_DOCUMENT_NUMBER)));

  //fptr.beginNonfiscalDocument;

  {
  // ������������ ����� �����
  mmAtolLog.Lines.Add('����������� ������������ ����� �����...');
  fptr.setParam(fptr.LIBFPTR_PARAM_TEXT, '���: 111111111111 ���: 222222222');
  fptr.setParam(fptr.LIBFPTR_PARAM_ALIGNMENT, fptr.LIBFPTR_ALIGNMENT_CENTER);
  fptr.printText;

  fptr.setParam(fptr.LIBFPTR_PARAM_TEXT, '�����: 1               �����: 11');
  fptr.setParam(fptr.LIBFPTR_PARAM_ALIGNMENT, fptr.LIBFPTR_ALIGNMENT_CENTER);
  fptr.printText;

  fptr.setParam(fptr.LIBFPTR_PARAM_TEXT, '���: 314  ����: 20.11.2017 15:39');
  fptr.setParam(fptr.LIBFPTR_PARAM_ALIGNMENT, fptr.LIBFPTR_ALIGNMENT_CENTER);
  fptr.printText;

  fptr.setParam(fptr.LIBFPTR_PARAM_BARCODE, 'https://check.egais.ru?id=cf1b1096-3cbc-11e7-b3c1-9b018b2ba3f7');
  fptr.setParam(fptr.LIBFPTR_PARAM_BARCODE_TYPE, fptr.LIBFPTR_BT_QR);
  fptr.setParam(fptr.LIBFPTR_PARAM_ALIGNMENT, fptr.LIBFPTR_ALIGNMENT_CENTER);
  fptr.setParam(fptr.LIBFPTR_PARAM_SCALE, 5);
  fptr.printBarcode;

  fptr.printText;

  mmAtolLog.Lines.Add('������������ ����� ����� ��������� �������.');

  fptr.setParam(fptr.LIBFPTR_PARAM_TEXT, 'https://check.egais.ru?id=cf1b1096-3cbc-11e7-b3c1-9b018b2ba3f7');
  fptr.setParam(fptr.LIBFPTR_PARAM_ALIGNMENT, fptr.LIBFPTR_ALIGNMENT_CENTER);
  fptr.setParam(fptr.LIBFPTR_PARAM_TEXT_WRAP, fptr.LIBFPTR_TW_CHARS);
  fptr.printText;

  fptr.printText;

  fptr.setParam(fptr.LIBFPTR_PARAM_TEXT,
            '10 58 1c 85 bb 80 99 84 40 b1 4f 35 8a 35 3f 7c ' +
            '78 b0 0a ff cd 37 c1 8e ca 04 1c 7e e7 5d b4 85 ' +
            'ff d2 d6 b2 8d 7f df 48 d2 5d 81 10 de 6a 05 c9 ' +
            '81 74');
  fptr.setParam(fptr.LIBFPTR_PARAM_ALIGNMENT, fptr.LIBFPTR_ALIGNMENT_CENTER);
  fptr.setParam(fptr.LIBFPTR_PARAM_TEXT_WRAP, fptr.LIBFPTR_TW_WORDS);
  fptr.printText;
  }

  //mmAtolLog.Lines.Add('����������� ������� ����.');
  //fptr.endNonfiscalDocument;       // ������� ����

  // ����� � �������� �����
  //fptr.setParam(fptr.LIBFPTR_PARAM_REPORT_TYPE, fptr.LIBFPTR_RT_CLOSE_SHIFT);
  //fptr.report;

  // ��������� ���������� � �������������� ����������
  mmAtolLog.Lines.Add('����������� �������� � �������������� ����������...');
  fptr.setParam(fptr.LIBFPTR_PARAM_FN_DATA_TYPE, fptr.LIBFPTR_FNDT_OFD_EXCHANGE_STATUS);
  fptr.fnQueryData;

  mmAtolLog.Lines.Add('Unsent documents count = ' + IntToStr(fptr.getParamInt(fptr.LIBFPTR_PARAM_DOCUMENTS_COUNT)));
  mmAtolLog.Lines.Add('First unsent document number = ' + IntToStr(fptr.getParamInt(fptr.LIBFPTR_PARAM_DOCUMENT_NUMBER)));
  mmAtolLog.Lines.Add('First unsent document date = ' + DateTimeToStr(fptr.getParamDateTime(fptr.LIBFPTR_PARAM_DATE_TIME)));

  // ���������� ������
  mmAtolLog.Lines.Add(sTire70);
  mmAtolLog.Lines.Add('������ ���������� ���������� � ���...');
  fptr.close;
  mmAtolLog.Lines.Add('���������� ���������� � ��� �����������!');

  if FileExists(si1+'kkm_atol_log_new.api') then
  begin
    AssignFile(F,si1+'kkm_atol_log_new.api');
      append(F);
      for i:=0 to mmAtolLog.Lines.Count-1 do
      begin
        Writeln(F,mmAtolLog.Lines.Strings[i]);
      end;
    CloseFile(F);
  end
  else
  begin
     mmAtolLog.Lines.SaveToFile(si1+'kkm_atol_log_new.api');
  end;

  CoUninitialize();
end;

procedure TfmKKM.bbAtolDobriyDenClick(Sender: TObject);
Var
  DateTime:tDateTime;
  sDateTime:ShortString;
  sDate,stime:ShortString;
  number,state:Longint;
  i:Word;
begin
  CoInitialize(nil);
//  fptr := CreateOleObject('AddIn.Fptr10');
//  fptr.setSingleSetting(fptr.LIBFPTR_SETTING_PORT, IntToStr(fptr.LIBFPTR_PORT_USB));
//  fptr.applySingleSettings;

  sDate:=formatDateTime('yyyy/mm/dd',date);
  sTime:=TimetoSTR(Time);
  sSmenaAtol:='-------';

  mmAtolLog.Clear;

  mmAtolLog.Lines.Add(sTire99);
  mmAtolLog.Lines.Add('����: '+sDate+'  '+sTime+'    ������ "������ ����!".');
  mmAtolLog.Lines.Add(sTire99);

  mmAtolLog.Lines.Add('���������� ������� ����....');

  fptr:=CreateOleObject('AddIn.Fptr10');  // ���������� �������

  mmAtolLog.Lines.Add('������� ���� ��������� �������.');
  mmAtolLog.Lines.Add('������������� ���������� � ��� ����...');
  fptr.open;                              // ��������� ���������� � ���
  mmAtolLog.Lines.Add('���������� ������ �������!');

  mmAtolLog.Lines.Add('���������� ������ �� ��������� ������� ��� ����"...');

  fptr.setParam(fptr.LIBFPTR_PARAM_DATA_TYPE, fptr.LIBFPTR_DT_SHIFT_STATE);  // ������� ��������� ����� ���
  fptr.queryData;

  state       := fptr.getParamInt(fptr.LIBFPTR_PARAM_SHIFT_STATE);
  number      := fptr.getParamInt(fptr.LIBFPTR_PARAM_SHIFT_NUMBER);
  DateTime    := fptr.getParamDateTime(fptr.LIBFPTR_PARAM_DATE_TIME);
  sDateTime:=formatDateTime('c',dateTime);
  if state=1 then sSmenaAtol:='�������';
  if state=0 then sSmenaAtol:='�������';

  mmAtolLog.Lines.Add('������ ��� ����" ������� �������:');
  mmAtolLog.Lines.Add('������: ����� '+sSmenaAtol);
  mmAtolLog.Lines.Add('����� �����: '+intToStr(number));
  mmAtolLog.Lines.Add('���� � ����� ��������� ������� �����: '+sDateTime);

  mmAtolLog.Lines.Add('���������� �� ������ "������ ����!"...');

  fptr.setParam(fptr.LIBFPTR_PARAM_TEXT, '****************************************');fptr.printText;

  fptr.setParam(fptr.LIBFPTR_PARAM_ALIGNMENT,fptr.LIBFPTR_ALIGNMENT_CENTER);
  fptr.setParam(fptr.LIBFPTR_PARAM_TEXT, '������ ����!   ����� '+sSmenaAtol);fptr.printText;

  fptr.setParam(fptr.LIBFPTR_PARAM_TEXT, '****************************************');fptr.printText;
  fptr.setParam(fptr.LIBFPTR_PARAM_TEXT, '');fptr.printText;
  fptr.setParam(fptr.LIBFPTR_PARAM_TEXT, '');fptr.printText;
  fptr.setParam(fptr.LIBFPTR_PARAM_TEXT, '');fptr.printText;

  mmAtolLog.Lines.Add('������ "������ ����!" ������ �������.');
  mmAtolLog.Lines.Add('��������� ���������� � ��� ����...');
  fptr.close;                            // ���������� ���������� � ���
  mmAtolLog.Lines.Add('���������� ��������� �������!');

  if FileExists(si1+'kkm_atol_log_new.api') then
  begin
    AssignFile(F,si1+'kkm_atol_log_new.api');
      append(F);
      for i:=0 to mmAtolLog.Lines.Count-1 do
      begin
        Writeln(F,mmAtolLog.Lines.Strings[i]);
      end;
    CloseFile(F);
  end
  else
  begin
     mmAtolLog.Lines.SaveToFile(si1+'kkm_atol_log_new.api');
  end;

  CoUninitialize();
end;

procedure TfmKKM.bbAtolDraiverOpenClick(Sender: TObject);
var
  ssVersion:String;
  settings:String;
begin
  podklKKM:=0;
  mmInfoAtolShtrih.Lines.Clear;

  try
    fptr:=CreateOleObject('AddIn.Fptr10');
    ssVersion:=fptr.version;

    mmAtolLog.Lines.Add('������� ���� ��������� �������!');
    mmAtolLog.Lines.Add('������ ��������: '+ssVersion);
    podklKKM:=1;

    mmAtolLog.Lines.Add('�������� �������� �������� ����:');
    settings:= fptr.getSettings;
    mmAtolLog.Lines.Add(settings);

  except
    on E: Exception do
    begin
      podklKKM:=2;
      mmAtolLog.Lines.Add('������ ��� ����������� � �������� ����:');
      mmAtolLog.Lines.Add(E.Message);
      mmAtolLog.Lines.Add('���������� ��������� ����������� �������� ���!');

      ShowMessage('������ ��� ����������� � �������� ����: '+E.Message+#13+#13+'���������� ��������� ����������� �������� ���!');
    end;
  end;
end;

procedure TfmKKM.Button10Click(Sender: TObject);
Var
  sZapNew:String;
begin
  Screen.Cursor:=crHourGlass;

  sZapNew:=si2+'kkm/FR_Atol_Shtrih.exe';

  AssignFile(F,si2+'kkm/PARAM.ini');
  rewrite(F);
  Writeln(F,'NumCheck=������� ������');
  Writeln(F,'AuthorName=������');
  Writeln(F,'AuthorINN='+ssKKM_kassir_inn);
  Writeln(F,'AuthorCaption='+ssKKM_kassir);
  Writeln(F,'VERSION_FFD=1.05');
  Writeln(F,'Oplata=');
  Writeln(F,'Name=0');
  Writeln(F,'CHECKSHAPKA1=        �������� ���������');
  Writeln(F,'CHECKSHAPKA2=          ��������� �����');
  Writeln(F,'CHECKSHAPKA3=        ������� �� �������!');
  Writeln(F,'CHECKSHAPKA4=           ���� ��� ���!');
  Writeln(F,'PRINTQRCODE=�������� ���������!');

  if ssKKM_nalog='DOH' then Writeln(F,'SNO=DOH       ');
  if ssKKM_nalog='DOHRASH' then Writeln(F,'SNO=DOHRASH   ');
  if ssKKM_nalog='PATENT' then Writeln(F,'SNO=PATENT    ');
  if ssKKM_nalog='OSN' then Writeln(F,'SNO=OSN       ');
  if ssKKM_nalog='ENVD' then Writeln(F,'SNO=ENVD      ');

  if ssKKM_Agent_Blok='agent_yes' then
  begin
    Writeln(F,'suplierInfoINN1226='+ssKKM_Postaw_INN);
    Writeln(F,'suplierInfoName1225='+ssKKM_Postaw_Name);
    Writeln(F,'suplierInfoTel1171='+ssKKM_Postaw_Tel);
  end;

  Writeln(F,'Fiscal=-');
  CloseFile(F);

  AssignFile(F,si2+'kkm/tovar.ini');
  rewrite(F);
  Writeln(F,'������� ������ ����� 1');
  Writeln(F,'1');
  Writeln(F,'50');
  Writeln(F,'-1');
  Writeln(F,'������� ������ ����� 2');
  Writeln(F,'2');
  Writeln(F,'75');
  Writeln(F,'-1');
  CloseFile(F);

  Sleep(100);

  if FileExists(sZapNew) then
  begin
    Sleep(50);

    if (ssKKM_tip='shtrih')or(ssKKM_tip='atol') then
    begin
      AssignFile(F,si2+'kkm/cmd.ini');
        rewrite(F);
        Writeln(F,'print');
      CloseFile(F);

      if ssKKM_tip='shtrih' then
      begin
        ShellExecute(Application.handle, 'open', PChar(sZapNew), PChar( '/shtrih' ), nil, sw_Show);
      end;

      if ssKKM_tip='atol' then
      begin
        ShellExecute(Application.handle, 'open', PChar(sZapNew), PChar( '/atol' ), nil, sw_Show);
      end;
    end
    else
    begin
      ShowMessage('���������� ����������� ������� "��� ���" �� ���������� ��������� "����" ��� "�����-�"!');
    end;

    Screen.Cursor:=crDefault;
  end
  else
  begin
    Screen.Cursor:=crDefault;
    ShowMessage('����������� ��������� ��� ������ � ��� !'+#13+sZapNew);
  end;
end;

procedure TfmKKM.bbAtolInformationClick(Sender: TObject);
Var
  isOpened: LongBool;         //�������� ��������� ����������� ����������
  sIsOpened:ShortString;

  shiftState:Longint;     // ��������� �����
  serialNumber:String;    // �������� �����:
  modelName:String;       // �������� ���
  firmwareVersion:String; // ������ �� ���
  sVersion:String;        // ������ ��������

  firmwareVersionKKT:String; // ������ ��������

  state:Longint;          // ��������� �����
  number:Longint;         // ����� �����
  dateTime:TDateTime;     // ���� � ����� ��������� ������� �����
  sDateTime,sDate,sTime,stateStr:ShortString;
  i:Word;
begin
  Screen.Cursor:=crHourGlass;

  CoInitialize(nil);

  sDate:=formatDateTime('yyyy/mm/dd',date);
  sTime:=TimetoSTR(Time);

  mmAtolLog.Clear;

  mmAtolLog.Lines.Add(sTire99);
  mmAtolLog.Lines.Add('����: '+sDate+'  '+sTime+'    ����� ���������� � ��� ����".');
  mmAtolLog.Lines.Add(sTire99);

  mmAtolLog.Lines.Add('���������� ������� ����....');
  fptr:=CreateOleObject('AddIn.Fptr10');  // ���������� �������
  mmAtolLog.Lines.Add('������� ���� ��������� �������.');
  mmAtolLog.Lines.Add('������������� ���������� � ��� ����...');
  fptr.open;                              // ��������� ���������� � ���
  //mmAtolLog.Lines.Add('���������� ������ �������!');

  isOpened:=fptr.isOpened;    //�������� ��������� ����������� ����������
  if isOpened=true then sIsOpened:='���������� ����������� (true)';
  if isOpened=false then sIsOpened:='���������� ������������� (false)';
  mmAtolLog.Lines.Add(sIsOpened);

  if isOpened=true then
  begin
    // �������� ������ ��������
    sVersion:= fptr.version;
    mmAtolLog.Lines.Add(sTire70);
    mmAtolLog.Lines.Add('������ �������� ����: '+sVersion);

    // �������� ����� ���������� � ������
    //----------------------------------------------------------
    fptr.setParam(fptr.LIBFPTR_PARAM_DATA_TYPE, fptr.LIBFPTR_DT_STATUS);
    fptr.queryData;

    shiftState      := fptr.getParamInt(fptr.LIBFPTR_PARAM_SHIFT_STATE);
    serialNumber    := fptr.getParamString(fptr.LIBFPTR_PARAM_SERIAL_NUMBER);
    modelName       := fptr.getParamString(fptr.LIBFPTR_PARAM_MODEL_NAME);
    firmwareVersion := fptr.getParamString(fptr.LIBFPTR_PARAM_UNIT_VERSION);

    mmAtolLog.Lines.Add(sTire70);
    //mmAtolLog.Lines.Add('������ :'+intToStr(shiftState));
    mmAtolLog.Lines.Add('������ �� ���: '+firmwareVersion);
    mmAtolLog.Lines.Add('�������� ���: '+modelName);
    mmAtolLog.Lines.Add('�������� �����: '+serialNumber);

    // �������� ������ ��������
    //----------------------------------------------------------
    fptr.setParam(fptr.LIBFPTR_PARAM_DATA_TYPE, fptr.LIBFPTR_DT_UNIT_VERSION);
    fptr.setParam(fptr.LIBFPTR_PARAM_UNIT_TYPE, fptr.LIBFPTR_UT_FIRMWARE);
    fptr.queryData;
    firmwareVersionKKT:= fptr.getParamString(fptr.LIBFPTR_PARAM_UNIT_VERSION);
    mmAtolLog.Lines.Add(sTire70);
    mmAtolLog.Lines.Add('������ ��������: '+firmwareVersionKKT);
    // �������� ���������� � ��������� �����
    //----------------------------------------------------------
    fptr.setParam(fptr.LIBFPTR_PARAM_DATA_TYPE, fptr.LIBFPTR_DT_SHIFT_STATE);
    fptr.queryData;

    state       := fptr.getParamInt(fptr.LIBFPTR_PARAM_SHIFT_STATE);
    stateStr    := fptr.getParamInt(fptr.LIBFPTR_PARAM_SHIFT_STATE);
    number      := fptr.getParamInt(fptr.LIBFPTR_PARAM_SHIFT_NUMBER);
    dateTime    := fptr.getParamDateTime(fptr.LIBFPTR_PARAM_DATE_TIME);
    sDateTime:=formatDateTime('c',dateTime);

    if state=1 then sSmenaAtol:='�������';
    if state=0 then sSmenaAtol:='�������';

    mmAtolLog.Lines.Add(sTire70);
    mmAtolLog.Lines.Add('��������� �����: '+sSmenaAtol+' (�������� state='+intToStr(state)+') ');
    mmAtolLog.Lines.Add('����� �����: '+intToStr(number));
    mmAtolLog.Lines.Add('���� � ����� ��������� ������� �����: '+sDateTime);

    // ��������� ���������� � �������������� ����������
    fptr.setParam(fptr.LIBFPTR_PARAM_FN_DATA_TYPE, fptr.LIBFPTR_FNDT_OFD_EXCHANGE_STATUS);
    fptr.fnQueryData;

    mmAtolLog.Lines.Add(sTire70);
    mmAtolLog.Lines.Add('���������� �������������� ����������: ' + IntToStr(fptr.getParamInt(fptr.LIBFPTR_PARAM_DOCUMENTS_COUNT)));
    mmAtolLog.Lines.Add('����� ������� ��������������� ���������: ' + IntToStr(fptr.getParamInt(fptr.LIBFPTR_PARAM_DOCUMENT_NUMBER)));
    mmAtolLog.Lines.Add('���� � ����� ������� ��������������� ���������: ' + DateTimeToStr(fptr.getParamDateTime(fptr.LIBFPTR_PARAM_DATE_TIME)));
    mmAtolLog.Lines.Add(sTire70);

    mmAtolLog.Lines.Add('���������� ���������� � ���...');

    fptr.close;                 // ���������� ���������� � ���

    isOpened:=fptr.isOpened;    //�������� ��������� ����������� ����������
    if isOpened=true then sIsOpened:='���������� ����������� (�������� isOpened=true)';
    if isOpened=false then sIsOpened:='���������� ��������� (�������� isOpened=false)';

    mmAtolLog.Lines.Add(sIsOpened);
  end
  else
  begin
    mmAtolLog.Lines.Add(' - �������� ������� ���� ������ ���� ������� � ��������� � ���������� ����� USB-����.');
    mmAtolLog.Lines.Add(' - �������� ������� ���� ������ ������ �������� � ������ �� (���������� �����������).');
  end;


  if FileExists(si1+'kkm_atol_log_new.api') then
  begin
    AssignFile(F,si1+'kkm_atol_log_new.api');
      append(F);
      for i:=0 to mmAtolLog.Lines.Count-1 do
      begin
        Writeln(F,mmAtolLog.Lines.Strings[i]);
      end;
    CloseFile(F);
  end
  else
  begin
     mmAtolLog.Lines.SaveToFile(si1+'kkm_atol_log_new.api');
  end;

  CoUninitialize();

  Screen.Cursor:=crDefault;
end;

procedure TfmKKM.bbAtolSmenaCloseClick(Sender: TObject);
Var
  isOpened: LongBool;         //�������� ��������� ����������� ����������
  sIsOpened:ShortString;
  sDate,sTime:ShortString;
  i:Word;

begin
  CoInitialize(nil);

  sDate:=formatDateTime('yyyy/mm/dd',date);
  sTime:=TimetoSTR(Time);

  mmAtolLog.Clear;

  mmAtolLog.Lines.Add(sTire99);
  mmAtolLog.Lines.Add('����: '+sDate+'  '+sTime+'    ��������� �����:"');
  mmAtolLog.Lines.Add(sTire99);

  mmAtolLog.Lines.Add('���������� ������� ����....');
  fptr:=CreateOleObject('AddIn.Fptr10');  // ���������� �������
  mmAtolLog.Lines.Add('������� ���� ��������� �������.');
  mmAtolLog.Lines.Add('������������� ���������� � ��� ����...');
  fptr.open;                              // ��������� ���������� � ���
  mmAtolLog.Lines.Add('���������� ������ �������!');

  isOpened:=fptr.isOpened;    //�������� ��������� ����������� ����������
  if isOpened=true then sIsOpened:='���������� ����������� (true)';
  if isOpened=false then sIsOpened:='���������� ������������� (false)';
  mmAtolLog.Lines.Add(sIsOpened);

  fptr.setParam(1021, '������ '+UTF8Encode(newS5(ssKKM_kassir)));
  fptr.setParam(1203, ssKKM_kassir_INN);
  fptr.operatorLogin;

  fptr.setParam(fptr.LIBFPTR_PARAM_REPORT_TYPE, fptr.LIBFPTR_RT_CLOSE_SHIFT);
  fptr.setParam(Fptr.LIBFPTR_PARAM_REPORT_ELECTRONICALLY, 1);  // ��� ����� �� �������� ����� � �������� �����
  fptr.report;    // �������� �����

  fptr.checkDocumentClosed;

  if fptr.checkDocumentClosed=0 then mmAtolLog.Lines.Add('����� ������� �������.');
  mmAtolLog.Lines.Add(fptr.errorDescription);

  While fptr.checkDocumentClosed <> 0 do
  begin
    // �� ������� ��������� ��������� ���������. ������� ������������ ����� ������, ��������� ��������� ��������� � ��������� ������
    showmessage(fptr.errorDescription);
    Continue;
  end;

  mmAtolLog.Lines.Add(sTire70);
  mmAtolLog.Lines.Add('������ ���������� ���������� � ���...');
  fptr.close;                 // ���������� ���������� � ���
  mmAtolLog.Lines.Add('���������� ���������� � ��� �����������!');

  if FileExists(si1+'kkm_atol_log_new.api') then
  begin
    AssignFile(F,si1+'kkm_atol_log_new.api');
      append(F);
      for i:=0 to mmAtolLog.Lines.Count-1 do
      begin
        Writeln(F,mmAtolLog.Lines.Strings[i]);
      end;
    CloseFile(F);
  end
  else
  begin
     mmAtolLog.Lines.SaveToFile(si1+'kkm_atol_log_new.api');
  end;

  CoUninitialize();
end;

procedure TfmKKM.bbAtolXotchetClick(Sender: TObject);
Var
  isOpened: LongBool;         //�������� ��������� ����������� ����������
  sIsOpened:ShortString;
  sDate,sTime:ShortString;
  i:Word;

begin
  CoInitialize(nil);

  sDate:=formatDateTime('yyyy/mm/dd',date);
  sTime:=TimetoSTR(Time);

  mmAtolLog.Clear;

  mmAtolLog.Lines.Add(sTire99);
  mmAtolLog.Lines.Add('����: '+sDate+'  '+sTime+'    X-�����:"');
  mmAtolLog.Lines.Add(sTire99);

  mmAtolLog.Lines.Add('���������� ������� ����....');
  fptr:=CreateOleObject('AddIn.Fptr10');  // ���������� �������
  mmAtolLog.Lines.Add('������� ���� ��������� �������.');
  mmAtolLog.Lines.Add('������������� ���������� � ��� ����...');
  fptr.open;                              // ��������� ���������� � ���
  mmAtolLog.Lines.Add('���������� ������ �������!');

  isOpened:=fptr.isOpened;    //�������� ��������� ����������� ����������
  if isOpened=true then sIsOpened:='���������� ����������� (true)';
  if isOpened=false then sIsOpened:='���������� ������������� (false)';
  mmAtolLog.Lines.Add(sIsOpened);

  mmAtolLog.Lines.Add('������ X-������...');
  fptr.setParam(fptr.LIBFPTR_PARAM_REPORT_TYPE, fptr.LIBFPTR_RT_X);
  fptr.report;
  mmAtolLog.Lines.Add('X-����� �������� �������!');

  mmAtolLog.Lines.Add(sTire70);
  mmAtolLog.Lines.Add('������ ���������� ���������� � ���...');
  fptr.close;                 // ���������� ���������� � ���
  mmAtolLog.Lines.Add('���������� ���������� � ��� �����������!');

  if FileExists(si1+'kkm_atol_log_new.api') then
  begin
    AssignFile(F,si1+'kkm_atol_log_new.api');
      append(F);
      for i:=0 to mmAtolLog.Lines.Count-1 do
      begin
        Writeln(F,mmAtolLog.Lines.Strings[i]);
      end;
    CloseFile(F);
  end
  else
  begin
     mmAtolLog.Lines.SaveToFile(si1+'kkm_atol_log_new.api');
  end;

  CoUninitialize();
end;

procedure TfmKKM.bbOpenSmenaClick(Sender: TObject);
Var
  TextJSON,ssOtwet:String;
  newSS:TStringStream;
begin
  IF MessageDlg('������������� ���������� �������� �����?',
  mtConfirmation,[mbYes, mbNo],0) = mrYes then
  begin
    mmInfoMerc.Lines.Clear;
    Screen.Cursor:=crHourGlass;

    bbOpenSessionRabClick(Sender);   // ������� ������

    if (sessionKey<>'')and(ssResultKKM='0') then
    begin
      TextJSON:='{"sessionKey": "'+sessionKey+'", "command": "OpenShift", "printDoc": true, "cashierInfo": {"cashierName": "'+UTF8Encode(newS5(ssKKM_kassir))+'", "cashierINN": "'+ssKKM_kassir_INN+'"} }';
      mmInfo.Lines.Add('�������� ����� ������: '+UTF8Decode(TextJSON));
      try
        Http2:=TIdHTTP.Create(nil);
        HTTP2.Request.ContentType:='application/json; charset=utf-8';
        HTTP2.ReadTimeout:=10000;

        PostDataJSON:=TStringStream.Create;
        PostDataJSON.WriteString(TextJSON);

        //ssOtwet:=HTTP2.Post(ssWebRestKKM,PostDataJSON);
        newSS:=TStringStream.Create;
        HTTP2.Post(ssWebRestKKM,PostDataJSON,newSS);
        ssOtwet:=UTF8Decode(newSS.DataString);

        Http2.Free;

        mmInfo.Lines.Add('�������� ����� �����: '+ssOtwet);
        mmInfo.Lines.Add('-----------------------------------------------------------------------------------');

        bbCloseSessionRabClick(Sender);  // ������� ������

        Screen.Cursor:=crDefault;
        mmInfoMerc.Lines.Add('�������� ����� ����������� �������!');
        ShowMessage('�������� ����� ����������� �������!');
      except
        on E:Exception do
        begin
          Screen.Cursor:=crDefault;
          mmInfo.Lines.Add('������: '+E.Message);
          mmInfoMerc.Lines.Add('�������� ����� ��������� ������: '+E.Message);
          ShowMessage('������: '+E.Message);
          Exit;
        end;
      end;
    end
    else
    begin
      Screen.Cursor:=crDefault;
      ShowMessage('�� ������� ���� ������ �� ��� "'+ssNameKKM+'"!'+#13+'��� ����������� ����� � ��� "'+ssNameKKM+'"!');
    end;
  end;
end;

procedure TfmKKM.bbPrintTextClick(Sender: TObject);
Var
  TextJSON1,TextJSON2,TextJSON3,ssOtwet:String;
  newSS:TStringStream;
begin
  Screen.Cursor:=crHourGlass;
  mmInfo.Clear;

  bbOpenSessionRabClick(Sender);   // ������� ������
  try
    TextJSON1:='{"sessionKey": "'+sessionKey+'", "command": "PrintText", "text": "����������Ee��������������������" }';
    TextJSON2:='{"sessionKey": "'+sessionKey+'", "command": "PrintText", "text": "�������������������������������" }';
    TextJSON3:='{"sessionKey": "'+sessionKey+'", "command": "PrintText", "text": "��_��_��_��_��_Ee_��_��_��_��_��_��_��_��_��_��_��_��_��_��_��_��_��_��_��_��_��_��_��_����_��_��" }';
    TextJSON3:='{"sessionKey":"'+sessionKey+'","command":"PrintText","text":"'+UTF8Encode(newS5(edSimbol.Text))+'"}';

    Http2:=TIdHTTP.Create(nil);
    HTTP2.Request.ContentType:='application/json; charset=utf-8';
    HTTP2.ReadTimeout:=10000;

    PostDataJSON:=TStringStream.Create;
    PostDataJSON.WriteString(TextJSON3);
    //ssOtwet:=HTTP2.Post(ssWebRestKKM,PostDataJSON);
    newSS:=TStringStream.Create;
    HTTP2.Post(ssWebRestKKM,PostDataJSON,newSS);
    ssOtwet:=UTF8Decode(newSS.DataString);

    mmInfo.Lines.Add(ssOtwet );

    mmInfo.Lines.Add('*****************************************************************************************');
    mmInfo.Lines.Add('�� ������ ��������� ����� "'+edSimbol.Text+'"');
    mmInfo.Lines.Add('*****************************************************************************************');

    Http2.Free;

  except
    on E:Exception do
    begin
      Screen.Cursor:=crDefault;
      mmInfo.Lines.Add('������: '+E.Message);
      ShowMessage('������: '+E.Message);
      Exit;
    end;
  end;

  bbCloseSessionRabClick(Sender);  // ������� ������
  Screen.Cursor:=crDefault;
end;

procedure TfmKKM.bbOpenChekClick(Sender: TObject);
Var
  TextJSON,ssOtwet:String;
  ssCash:ShortString;
  Stream:TStringStream;
  newssInfoPrix:TStringStream;
  newSS:TStringStream;

  kDlin,i,iK,iM:Word;
  Fin:Byte;
begin
  //mmInfo.Clear;
  Screen.Cursor:=crHourGlass;

  bbOpenSessionRabClick(Sender);   // ������� ������

  if (sessionKey<>'')and(ssResultKKM='0') then
  begin
    TextJSON:='{"sessionKey": "'+sessionKey+'", "command": "OpenCheck", "checkType": '+ssTipKKMdel+', "taxSystem": '+ssMerkNalog+ssPrintKKT+', "cashierInfo": {"cashierName": "'+UTF8Encode(newS5(ssKKM_kassir))+'", "cashierINN": "'+ssKKM_kassir_INN+'"}}';
    newssInfoPrix:=TStringStream.Create(TextJSON);
    ssMcInfo:='';

    try
      mmInfo.Lines.Add('�������� ���� ������: '+UTF8Decode(TextJSON));

      Http2:=TIdHTTP.Create(nil);
      HTTP2.Request.ContentType:='application/json; charset=utf-8';
      HTTP2.ReadTimeout:=10000;

      PostDataJSON:=TStringStream.Create;
      PostDataJSON.WriteString(TextJSON);

      //ssOtwet:=HTTP2.Post(ssWebRestKKM,PostDataJSON);
      newSS:=TStringStream.Create;
      HTTP2.Post(ssWebRestKKM,PostDataJSON,newSS);
      ssOtwet:=UTF8Decode(newSS.DataString);

      Http2.Free;
      mmInfo.Lines.Add('�������� ���� �����: '+ssOtwet);

      iK:=0;Fin:=0;
      kdlin:=Length(ssOtwet);
      for i:=1 to kDlin do
      begin
        if Copy(ssOtwet,i,6)='result' then
        begin
          iK:=i+8;
          Fin:=1;
          break;
        end;
        if Fin=1 then break;
      end;

      ssResultKKM:=Copy(ssOtwet,iK,1);
      mmInfo.Lines.Add('Result Openchek:'+ssResultKKM);
      mmInfo.Lines.Add('-----------------------------------------------------------------------------------');

      // ��������� �������� �������
      mmInfo.Lines.Add('��������� �����:');

      ssResultKKM:='0';

      if (ssResultKKM='0') then
      begin
        Http2:=TIdHTTP.Create(nil);
        HTTP2.Request.ContentType:='application/json; charset=utf-8';
        HTTP2.ReadTimeout:=10000;

        //ssTaxCode:='6';  // ��� ���
        //ssTaxCode:='1';  // 20% ���

        for i:=1 to Kol_ed_KKM_merc do
        begin
          //TextJSON:='{"sessionKey": "'+sessionKey+'", "command": "AddGoods", '+mmAtol.Lines.Strings[i];
          TextJSON:='{"sessionKey": "'+sessionKey+'", "command": "AddGoods", '+UTF8Encode(ssJSONmerk[i]+ssMcInfo);

          PostDataJSON:=TStringStream.Create;
          PostDataJSON.WriteString(TextJSON);

          //ssOtwet:=HTTP2.Post(ssWebRestKKM,PostDataJSON);
          newSS:=TStringStream.Create;
          HTTP2.Post(ssWebRestKKM,PostDataJSON,newSS);
          ssOtwet:=UTF8Decode(newSS.DataString);

          mmInfo.Lines.Add(ssOtwet);
          mmInfo.Lines.Add('*****************************************************');
          //mmInfo.Lines.Add(UTF8Encode(ssOtwet));
        end;

        Http2.Free;
      end;

      // ���������� ���

      if ssTipNalKKM='nal' then
      begin
        ssCash:='cash';     // ��������
      end;

      if ssTipNalKKM='beznal' then
      begin
        ssCash:='ecash';   // �����������
      end;

      TextJSON:='{"sessionKey": "'+sessionKey+'", "command": "CloseCheck"'+ssEmailKKT+', "payment": { "'+ssCash+'": '+ssSummaKKM+' } }';


      mmInfo.Lines.Add('�������� ���� ������: '+TextJSON);

      Http2:=TIdHTTP.Create(nil);
      HTTP2.Request.ContentType:='application/json; charset=utf-8';
      HTTP2.ReadTimeout:=10000;

      PostDataJSON:=TStringStream.Create;
      PostDataJSON.WriteString(TextJSON);

      //ssOtwet:=HTTP2.Post(ssWebRestKKM,PostDataJSON);
      newSS:=TStringStream.Create;
      HTTP2.Post(ssWebRestKKM,PostDataJSON,newSS);
      ssOtwet:=UTF8Decode(newSS.DataString);

      Http2.Free;
      mmInfo.Lines.Add('�������� ���� �����: '+ssOtwet);

      bbCloseSessionRabClick(Sender);  // ������� ������

      mmInfo.Lines.Add('������������ ������ ����������� �������!');

      ssEmailKKT:='';
      ssPrintKKT:=', "printDoc": true';

      Screen.Cursor:=crDefault;
    except
      on E:Exception do
      begin
        Screen.Cursor:=crDefault;
        mmInfo.Lines.Add('������:'+E.Message);
        Screen.Cursor:=crDefault;
        ShowMessage('������:'+E.Message);
        Exit;
      end;
    end;
  end
  else
  begin
    mmInfo.Lines.SaveToFile(si1+'kkm_merc_log_json.api');
    mmMerkTowar.Lines.SaveToFile(si1+'kkm_merc_log_json_towar.api');

    if FileExists(si1+'kkm_merc_log_json_tot.api') then
    begin
      AssignFile(F,si1+'kkm_merc_log_json_tot.api');
        append(F);
        for i:=0 to mmInfo.Lines.Count-1 do
        begin
          Writeln(F,mmInfo.Lines.Strings[i]);
        end;
      CloseFile(F);
    end
    else
    begin
      mmInfo.Lines.SaveToFile(si1+'kkm_merc_log_json_tot.api');
    end;

    Screen.Cursor:=crDefault;
    ShowMessage('�� ������� ���� ������ �� ��� "'+ssNameKKM+'"!'+#13+'��� ����������� ����� � ��� "'+ssNameKKM+'"!');
  end;
end;

procedure TfmKKM.Button1Click(Sender: TObject);
begin
   //v:=CreateOleObject('AddIn.DrvFR');

  glKasAdmPassFK:='30';
  glKasKassirPassFK:='1';
  try
    v:=CreateOleObject('AddIn.DrvFR');
  except
    mmInfo.Lines.Add('������ ������������� AddIn.DrvFR')
  end;

  v.Password:=30;

  v.ConnectionType:=0;

  //v.ConnectionType:=5;  ��������

  v.CheckType:=0;

  v.Quantity:=1000;
  v.Price:=1.56;
  v.Department:=1;

  v.Tax1:=1;
  v.Tax2:=2;
  v.Tax3:=0;
  v.Tax4:=0;
  v.StringForPrinting:= '��������� �������';
  v.PrintString;
  v.Sale;  ShowMessage(intTostr(v.ResultCode));  v.Password:=30;
  v.Summ1:=1500;
  v.Summ2:=100;
  v.Summ3:=200;
  v.Summ4:=300;
  v.DiscountOnCheck:=5;

  v.Tax1:=1;
  v.Tax2:=2;
  v.Tax3:=0;
  v.Tax4:=0;
  v.StringForPrinting:= '====================================';
  v.CloseCheck;
  v.Disconnect;
  ShowMessage('�������!');
end;

procedure TfmKKM.bbZakKKMClick(Sender: TObject);
begin
  close;
end;

procedure TfmKKM.bbZakSesiyMercClick(Sender: TObject);
begin
  mmInfoMercChZnak.Lines.Add('��������� ������, ������ ���� �������� ��� ��������� ������ ��� ���������� ���������� ������� � ��');
  fmKKM.bbCloseSessionRabClick(Sender);
  mmInfoMercChZnak.Lines.Add('������ �������');
  mmInfoMercChZnak.Lines.Add('-----------------------------------------------------------------------------------------');
end;

procedure TfmKKM.bbZotchetClick(Sender: TObject);
Var
  TextJSON,ssOtwet:String;
  newSS:TStringStream;
begin
  IF MessageDlg('������������� ���������� �������� ������ � ������� ���������?',
  mtConfirmation,[mbYes, mbNo],0) = mrYes then
  begin
    Screen.Cursor:=crHourGlass;
    mmInfoMerc.Lines.Clear;
    bbOpenSessionRabClick(Sender);   // ������� ������

    if (sessionKey<>'')and(ssResultKKM='0') then
    begin
      TextJSON:='{"sessionKey": "'+sessionKey+'", "command": "ReportStatusOfSettlements", "cashierInfo": {"cashierName": "'+UTF8Encode(newS5(ssKKM_kassir))+'", "cashierINN": "'+ssKKM_kassir_INN+'"} }';
      mmInfo.Lines.Add('����� � ������� ��������� ������: '+UTF8Decode(TextJSON));
      try
        Http2:=TIdHTTP.Create(nil);
        HTTP2.Request.ContentType:='application/json; charset=utf-8';
        HTTP2.ReadTimeout:=10000;

        PostDataJSON:=TStringStream.Create;
        PostDataJSON.WriteString(TextJSON);
        //ssOtwet:=HTTP2.Post(ssWebRestKKM,PostDataJSON);
        newSS:=TStringStream.Create;
        HTTP2.Post(ssWebRestKKM,PostDataJSON,newSS);
        ssOtwet:=UTF8Decode(newSS.DataString);

        Http2.Free;

        mmInfo.Lines.Add('����� � ������� ��������� �����: '+TextJSON);
        mmInfo.Lines.Add('-----------------------------------------------------------------------------------');

        bbCloseSessionRabClick(Sender);  // ������� ������

        mmInfoMerc.Lines.Add('����� � ������� C�������� ����������� �������!');
        Screen.Cursor:=crDefault;
        ShowMessage('����� � ������� ��������� ����������� �������!');
      except
        on E:Exception do
        begin
          Screen.Cursor:=crDefault;
          mmInfo.Lines.Add('������: '+E.Message);
          mmInfoMerc.Lines.Add('����� � ������� ��������� ��������� ������: '+E.Message);
          ShowMessage('������: '+E.Message);
          Exit;
        end;
      end;
    end
    else
    begin
      Screen.Cursor:=crDefault;
      ShowMessage('�� ������� ���� ������ �� ��� "'+ssNameKKM+'"!'+#13+'��� ����������� ����� � ��� "'+ssNameKKM+'"!');
    end;
  end;
end;

procedure TfmKKM.bbZotchetStrihMClick(Sender: TObject);
begin
  if (FileExists(sZapNew)=True) then
  begin
  IF MessageDlg('������������� ���������� �������� Z-������?',
  mtConfirmation,[mbYes, mbNo],0) = mrYes then
  begin
    Screen.Cursor:=crHourGlass;

    AssignFile(F,si2+'kkm\cmd.ini');
    rewrite(F);
    Writeln(F,'ZOTCHET');
    CloseFile(F);

    sleep(100);

    mmInfoShtrih.Lines.Clear;
    mmInfoShtrih.Lines.Add('*****************************************************************************************');
    mmInfoShtrih.Lines.Add('������� ��������� Z-����� ���������� �� ���');
    mmInfoShtrih.Lines.Add('*****************************************************************************************');

    if ssKKM_tip='shtrih' then
    begin
      ShellExecute(Application.handle, 'open', PChar(sZapNew), PChar( '/shtrih' ), nil, sw_Show);
    end;

    if ssKKM_tip='atol' then
    begin
      ShellExecute(Application.handle, 'open', PChar(sZapNew), PChar( '/atol' ), nil, sw_Show);
    end;

    Screen.Cursor:=crDefault;
    ShowMessage('������� ��������� Z-����� ���������� �� ��� �������!');
  end;
  end
  else
  begin
    ShowMessage(' �� ������ ����: '+sZapNew);
  end;

end;

procedure TfmKKM.bbOpenSessionRabClick(Sender: TObject);
Var
  TextJSON,ssOtwet:String;
  ssDate,ssTime:ShortString;
  newSS:TStringStream;
  kDlin,i,iK,iM:Word;
  Fin:Byte;
begin
  sessionKey:='';ssResultKKM:='';
  Time1:=Time;
  ssDate:=formatDateTime('yyyy/mm/dd',date);
  ssTime:=TimetoSTR(Time);
  mmInfo.Clear;
  try
    mmInfo.Lines.Add(ssDate+' / '+ssTime);

    TextJSON:='{"sessionKey": null, "command": "OpenSession", "portName": "'+ssKKM_Merc_ComPort+'", "model": "'+ssKKM_Merc_Model+'"}';
    mmInfo.Lines.Add('�������� C����� ������: '+TextJSON);

    Http2:=TIdHTTP.Create(nil);
    HTTP2.Request.ContentType:='application/json; charset=utf-8';
    HTTP2.ReadTimeout:=10000;

    PostDataJSON:=TStringStream.Create;
    PostDataJSON.WriteString(TextJSON);

    //ssOtwet:=HTTP2.Post(ssWebRestKKM,PostDataJSON);
    newSS:=TStringStream.Create;
    HTTP2.Post(ssWebRestKKM,PostDataJSON,newSS);
    ssOtwet:=UTF8Decode(newSS.DataString);

    JsonValue:=TJSonObject.ParseJSONValue(ssOtwet);
    ssJSONrezult:=JsonValue.GetValue<string>('result');
    ssJSONkey:=JsonValue.GetValue<string>('sessionKey');
    ssJSONdescription:=JsonValue.GetValue<string>('description');

    Http2.Free;

    mmInfo.Lines.Add('�������� C����� ����� �� INECRMAN: '+ssOtwet);

    iK:=0;Fin:=0;
    kdlin:=Length(ssOtwet);
    for i:=1 to kDlin do
    begin
      if Copy(ssOtwet,i,10)='sessionKey' then
      begin
        iK:=i+10+3;
        Fin:=1;
        break;
      end;
      if Fin=1 then break;
    end;

    iM:=0;Fin:=0;
    for i:=iK to kDlin do
    begin
      if Copy(ssOtwet,i,1)='"' then
      begin
        iM:=i;
        Fin:=1;
        break;
      end;
      if Fin=1 then break;
    end;
    //mmInfo.Lines.Add('iM-iK='+IntTostr(iM-iK));

    sessionKey:=Copy(ssOtwet,iK,iM-iK);
    mmInfo.Lines.Add('sessionKey:'+ssJSONkey);
    mmInfo.Lines.Add('-----------------------------------------------------------------------------------');

    iK:=0;Fin:=0;
    kdlin:=Length(ssOtwet);
    for i:=1 to kDlin do
    begin
      if Copy(ssOtwet,i,6)='result' then
      begin
        iK:=i+8;
        Fin:=1;
        break;
      end;
      if Fin=1 then break;
    end;

    ssResultKKM:=Copy(ssOtwet,iK,1);
    //mmInfo.Lines.Add('Result OpenSession:'+ssResultKKM);
    mmInfo.Lines.Add('Result OpenSession:'+ssJSONrezult);
    mmInfo.Lines.Add('-----------------------------------------------------------------------------------');

  except
    on E:Exception do
    begin
      Screen.Cursor:=crDefault;
      mmInfo.Lines.Add('������:'+E.Message);
      ShowMessage('������:'+E.Message);
      Exit;
    end;
  end;
end;

procedure TfmKKM.Button21Click(Sender: TObject);
Var
  TextJSON,ssOtwet:String;
begin
  IF MessageDlg('������������� ���������� ������ ��������� ���� ��� ��������� ���������?',
  mtConfirmation,[mbYes, mbNo],0) = mrYes then
  begin
    mmInfo.Clear;
    Screen.Cursor:=crHourGlass;

    bbOpenSessionRabClick(Sender);   // ������� ������

    if (sessionKey<>'')and(ssResultKKM='0') then
    begin
      TextJSON:='{"sessionKey": "'+sessionKey+'","command": "ResetCheck"}';
      mmInfo.Lines.Add('������ ���� ������: '+TextJSON);
      try
        Http2:=TIdHTTP.Create(nil);
        HTTP2.Request.ContentType:='application/json; charset=utf-8';
        HTTP2.ReadTimeout:=10000;

        PostDataJSON:=TStringStream.Create;
        PostDataJSON.WriteString(TextJSON);
        ssOtwet:=HTTP2.Post(ssWebRestKKM,PostDataJSON);

        Http2.Free;

        bbCloseSessionRabClick(Sender);  // ������� ������

        mmInfo.Lines.Add('������ ���� �����: '+ssOtwet);
        Screen.Cursor:=crDefault;
        ShowMessage('������ ���� ����������� �������!');
      except
        on E:Exception do
        begin
          Screen.Cursor:=crDefault;
          mmInfo.Lines.Add('������: '+E.Message);
          ShowMessage('������: '+E.Message);
          Exit;
        end;
      end;
    end
    else
    begin
      Screen.Cursor:=crDefault;
      ShowMessage('�� ������� ���� ������!'+#13+'��� �� ��������� ���� � ���!');
    end;
  end;
end;


procedure TfmKKM.Button2Click(Sender: TObject);
var
  fptr: OleVariant;
begin
  CoInitialize(nil);

  fptr := CreateOleObject('AddIn.Fptr10');
  fptr.setSingleSetting(fptr.LIBFPTR_SETTING_PORT, IntToStr(fptr.LIBFPTR_PORT_USB));
  fptr.applySingleSettings;

  // ���������� � ���
  fptr.open;
  // ��������� ���������� � �������������� ����������
  fptr.setParam(fptr.LIBFPTR_PARAM_FN_DATA_TYPE, fptr.LIBFPTR_FNDT_OFD_EXCHANGE_STATUS);
  // ��������� �����, ������ ���,
  fptr.fnQueryData;

  mmAtolLog.Clear;
  mmAtolLog.Lines.Add('Unsent documents count = ' + IntToStr(fptr.getParamInt(fptr.LIBFPTR_PARAM_DOCUMENTS_COUNT)));
  mmAtolLog.Lines.Add('First unsent document number = ' + IntToStr(fptr.getParamInt(fptr.LIBFPTR_PARAM_DOCUMENT_NUMBER)));
  mmAtolLog.Lines.Add('First unsent document date = ' + DateTimeToStr(fptr.getParamDateTime(fptr.LIBFPTR_PARAM_DATE_TIME)));

  fptr.close;
  CoUninitialize();
end;

procedure TfmKKM.bbDobriyDenClick(Sender: TObject);
Var
  TextJSON,ssOtwet:String;
  newSS:TStringStream;
begin
  Screen.Cursor:=crHourGlass;
  mmInfo.Clear;

  bbOpenSessionRabClick(Sender);   // ������� ������
  try
    TextJSON:='{"sessionKey": "'+sessionKey+'", "command": "PrintText", "text": "'+UTF8Encode('������ ����!')+'" }';

    Http2:=TIdHTTP.Create(nil);
    HTTP2.Request.ContentType:='application/json; charset=utf-8';
    HTTP2.ReadTimeout:=10000;

    PostDataJSON:=TStringStream.Create;
    PostDataJSON.WriteString(TextJSON);
    //ssOtwet:=HTTP2.Post(ssWebRestKKM,PostDataJSON);
    newSS:=TStringStream.Create;
    HTTP2.Post(ssWebRestKKM,PostDataJSON,newSS);
    ssOtwet:=UTF8Decode(newSS.DataString);

    mmInfo.Lines.Add(ssOtwet );

    mmInfo.Lines.Add('*****************************************************************************************');
    mmInfo.Lines.Add('������������ ����� � ��� ����������� �������!');
    mmInfo.Lines.Add('�� ������ ���������� ����������� "������ ����!"');
    mmInfo.Lines.Add('���� ����������� ������������� �� ���, �� �������� ����� � ������!');
    mmInfo.Lines.Add('*****************************************************************************************');

    Http2.Free;
  except
    on E:Exception do
    begin
      Screen.Cursor:=crDefault;
      mmInfo.Lines.Add('������: '+E.Message);
      ShowMessage('������: '+E.Message);
      Exit;
    end;
  end;

  bbCloseSessionRabClick(Sender);  // ������� ������
  Screen.Cursor:=crDefault;
end;

procedure TfmKKM.bbClearMarkingCodeAtolClick(Sender: TObject);
Var
  DateTime:tDateTime;
  sDateTime:ShortString;
  sDate,stime:ShortString;
  number,state:Longint;
  i:Word;
begin
  CoInitialize(nil);
//  fptr := CreateOleObject('AddIn.Fptr10');
//  fptr.setSingleSetting(fptr.LIBFPTR_SETTING_PORT, IntToStr(fptr.LIBFPTR_PORT_USB));
//  fptr.applySingleSettings;

  sDate:=formatDateTime('yyyy/mm/dd',date);
  sTime:=TimetoSTR(Time);
  sSmenaAtol:='-------';

  mmAtolLog.Clear;

  mmAtolLog.Lines.Add(sTire99);
  mmAtolLog.Lines.Add('����: '+sDate+'  '+sTime+'    ������ �� ������� ������ ��� �������� �����.');
  mmAtolLog.Lines.Add(sTire99);

  mmAtolLog.Lines.Add('���������� ������� ����....');

  fptr:=CreateOleObject('AddIn.Fptr10');  // ���������� �������

  mmAtolLog.Lines.Add('������� ���� ��������� �������.');
  mmAtolLog.Lines.Add('������������� ���������� � ��� ����...');
  fptr.open;                              // ��������� ���������� � ���
  mmAtolLog.Lines.Add('���������� ������ �������!');

  mmAtolLog.Lines.Add('���������� ������ �� ������� ������ ��� �������� �����...');

  mmAtolLog.Lines.Add('������� ������ ��� �������� ����� ������ �������.');
  mmAtolLog.Lines.Add('��������� ���������� � ��� ����...');
  fptr.close;                            // ���������� ���������� � ���
  mmAtolLog.Lines.Add('���������� ��������� �������!');

  if FileExists(si1+'kkm_atol_log_new.api') then
  begin
    AssignFile(F,si1+'kkm_atol_log_new.api');
      append(F);
      for i:=0 to mmAtolLog.Lines.Count-1 do
      begin
        Writeln(F,mmAtolLog.Lines.Strings[i]);
      end;
    CloseFile(F);
  end
  else
  begin
     mmAtolLog.Lines.SaveToFile(si1+'kkm_atol_log_new.api');
  end;

  CoUninitialize();
end;

procedure TfmKKM.bbClearMarkingCodeMercClick(Sender: TObject);
Var
  TextJSON,ssOtwet,ssUIDmark:String;

  ssIsCompleted:ShortString;

  Utf8:UTF8String;
  newSS:TStringStream;
  cod:Integer;
begin
  Screen.Cursor:=crHourGlass;
  //mmInfo.Lines.DefaultEncoding:=mmInfo.Lines.Encoding.UTF8;

  mmInfoMercChZnak.Lines.Clear;
  mmInfoMercChZnak.Lines.Add('*****************************************************************************************');

  fmKKM.bbOpenSessionRabClick(Sender);

  mmInfoMercChZnak.Lines.Add('������� ������');  // ������� ������
  mmInfoMercChZnak.Lines.Add('-----------------------------------------------------------------------------------------');
  mmInfoMercChZnak.Lines.Add('�����:'+JsonValue.ToJSON );
  mmInfoMercChZnak.Lines.Add('key:'+ssJSONkey);
  mmInfoMercChZnak.Lines.Add('rezult:'+ssJSONrezult);
  mmInfoMercChZnak.Lines.Add('description:'+ssJSONdescription);

  //1
  mmInfoMercChZnak.Lines.Add('-----------------------------------------------------------------------------------------');
  mmInfoMercChZnak.Lines.Add('������� ����������� ���������� �������� "ClearMarkingCodeValidationTable"');
  mmInfoMercChZnak.Lines.Add('-----------------------------------------------------------------------------------------');

  newSS:=TStringStream.Create;

  try
    TextJSON:='{"sessionKey": "'+ssJSONkey+'", "command": "ClearMarkingCodeValidationTable" }';

    Http2:=TIdHTTP.Create(nil);
    HTTP2.Request.ContentType:='application/json; charset=utf-8';
    HTTP2.ReadTimeout:=10000;

    PostDataJSON:=TStringStream.Create;
    PostDataJSON.WriteString(TextJSON);
    HTTP2.Post(ssWebRestKKM,PostDataJSON,newSS);
    ssOtwet:=UTF8Decode(newSS.DataString);

    mmInfoMercChZnak.Lines.Add('�����:'+ssOtwet);
    mmInfoMercChZnak.Lines.Add('-----------------------------------------------------------------------------------------');
    mmInfoMercChZnak.Lines.Add('������� ����������� ���������� ���������');
    mmInfoMercChZnak.Lines.Add('-----------------------------------------------------------------------------------------');

    Http2.Free;
  except
    on E:Exception do
    begin
      Screen.Cursor:=crDefault;

      mmInfoMercChZnak.Lines.Add('������:'+E.Message);
      mmInfoMercChZnak.Lines.Add('-----------------------------------------------------------------------------------------');
      //ShowMessage('������:'+E.Message);
      Exit;
    end;
  end;

  Screen.Cursor:=crDefault;
end;

procedure TfmKKM.bbCloseSessionRabClick(Sender: TObject);
Var
  TextJSON,ssOtwet:String;
  ssDate,ssTime:ShortString;
  newSS:TStringStream;

  kDlin,i,iK,iM:Word;
  Fin:Byte;
begin
  if (sessionKey<>'')and(ssResultKKM='0') then
  begin
  try
    TextJSON:='{"sessionKey": "'+sessionKey+'","command": "CloseSession"}';
    mmInfo.Lines.Add('�������� ������ ������: '+TextJSON);

    Http2:=TIdHTTP.Create(nil);
    HTTP2.Request.ContentType:='application/json; charset=utf-8';
    HTTP2.ReadTimeout:=10000;

    PostDataJSON:=TStringStream.Create;
    PostDataJSON.WriteString(TextJSON);

    //ssOtwet:=HTTP2.Post(ssWebRestKKM,PostDataJSON);
    newSS:=TStringStream.Create;
    HTTP2.Post(ssWebRestKKM,PostDataJSON,newSS);
    ssOtwet:=UTF8Decode(newSS.DataString);

    Http2.Free;

    //IdTCP1.Socket.Write(length(TextJSON));
    //IdTCP1.Socket.Write(TextJSON);
    //Stream:=TStringStream.Create('');
    //IdTCP1.Socket.ReadStream(Stream);

    mmInfo.Lines.Add('�������� ������ ����� �� INECRMAN: '+ssOtwet);

    iK:=0;Fin:=0;
    kdlin:=Length(ssOtwet);
    for i:=1 to kDlin do
    begin
      if Copy(ssOtwet,i,6)='result' then
      begin
        iK:=i+8;
        Fin:=1;
        break;
      end;
      if Fin=1 then break;
    end;

    ssResultKKM:=Copy(ssOtwet,iK,1);
    mmInfo.Lines.Add('Result CloseSession:'+ssResultKKM);
    mmInfo.Lines.Add('-----------------------------------------------------------------------------------');
    Time2:=Time;DecodeTime((Time2-Time1),h1,m1,s1,ms1);

    ssDate:=formatDateTime('yyyy/mm/dd',date);
    ssTime:=TimetoSTR(Time);

    mmInfo.Lines.Add(ssDate+' / '+ssTime+'  ��: '+intToStr(s1)+','+intToStr(ms1)+' s.');
    mmInfo.Lines.Add('-----------------------------------------------------------------------------------');

    mmInfo.Lines.SaveToFile(si1+'kkm_merc_log_json.api');
    mmMerkTowar.Lines.SaveToFile(si1+'kkm_merc_log_json_towar.api');

    if FileExists(si1+'kkm_merc_log_json_tot.api') then
    begin
      AssignFile(F,si1+'kkm_merc_log_json_tot.api');
        append(F);
        for i:=0 to mmInfo.Lines.Count-1 do
        begin
          Writeln(F,mmInfo.Lines.Strings[i]);
        end;
      CloseFile(F);
    end
    else
    begin
      mmInfo.Lines.SaveToFile(si1+'kkm_merc_log_json_tot.api');
    end;

  except
    on E:Exception do
    begin
      Screen.Cursor:=crDefault;
      mmInfo.Lines.Add('������:'+E.Message);
      ShowMessage('������:'+E.Message);
      Exit;
    end;
  end;
  end;
end;

Procedure GetErrorFR;
var
  ResultCode:Integer;
  ResultCodeDescription: string;
begin
  ResultCode:=DrvFR.ResultCode;
  ResultCodeDescription := DrvFR.ResultCodeDescription;
  ShowMessage('������:'+Format('(%d) %s', [ResultCode, ResultCodeDescription]));
  //WriteLogToFile('������ ����������� ������������: '+Format('(%d) %s', [ResultCode, ResultCodeDescription]));
  //Application.MessageBox(PAnsiChar('������ ����������� ������������!'+#13+Format('(%d) %s', [ResultCode, ResultCodeDescription])),'������ ���',MB_ICONSTOP);
end;

procedure TfmKKM.Button3Click(Sender: TObject);
var
  ss1:string;
begin
  DrvFR:=CreateOleObject('AddIn.DrvFR');
  if DrvFR.Connect=0 then
  begin
    DrvFR.Password:=30;
    DrvFR.TableNumber:=2;
    DrvFR.RowNumber:=30;
    DrvFR.FieldNumber:=2;
    DrvFR.ValueOfFieldString:='������ '+'��� ������';
    DrvFR.WriteTable;
    //FWait.Close;
  end
  else
  begin
    GetErrorFR;
  end;

  if DrvFR.GetShortECRStatus=0 then ShowMessage('����� ���: '+DrvFR.ECRModeDescription+#13+'�������� ���:'+DrvFR.ECRAdvancedModeDescription)
  else
  begin
    GetErrorFR;
  end;

  DrvFR.Disconnect;
end;

procedure TfmKKM.bbSaveKKMClick(Sender: TObject);
Var
  ssNomerWint:ShortString;
  Buffer:array [0..255] of char;
  SerialNum:dword;
  a,b:dword;
begin
  if GetVolumeInformation('c:\',Buffer,SizeOf(Buffer),@SerialNum,a,b,nil,0) then ssNomerWint:=IntToStr(SerialNum);  // ����� �����

  ssKKM_nomerWinta:=ssNomerWint;

  ssKKM_kassir:=edFIOKassir.Text;
  ssKKM_kassir_INN:=edINNKassir.Text;
  ssKKM_str1:=edStr1.Text;
  ssKKM_str2:=edStr2.Text;
  ssKKM_str3:=edStr3.Text;
  ssKKM_str4:=edStr4.Text;

  ssKKM_tip:='no kkm';

  case rgTipKKM.ItemIndex of
    0:begin ssKKM_tip:='no kkm'; ssNameKKM:='';end;
    1:begin ssKKM_tip:='atol'; ssNameKKM:='����';end;
    2:begin ssKKM_tip:='shtrih'; ssNameKKM:='�����-�';end;
    3:begin ssKKM_tip:='evator'; ssNameKKM:='������';end;
    4:begin ssKKM_tip:='merkuriy'; ssNameKKM:='��������';end;
    5:begin ssKKM_tip:='atolNew'; ssNameKKM:='����';end;
  end;

  ssKKM_pusk:='no pusk';
  case rgKKMpusk.ItemIndex of
    0:ssKKM_pusk:='no pusk';
    1:ssKKM_pusk:='pusk';
    2:ssKKM_pusk:='pusk wib';
  end;

  ssKKM_emulaytor:='emulaytor_yes';

  if cbKKMemulaytor.Checked=True then
  begin
    ssKKM_emulaytor:='emulaytor_yes';
  end
  else
  begin
    ssKKM_emulaytor:='emulaytor_no';
  end;

  ssKKM_nalog:='';
  case rgKKMNalog.ItemIndex of
    0:begin ssKKM_nalog:='DOH'; ssMerkNalog:='1'; end;
    1:begin ssKKM_nalog:='DOHRASH'; ssMerkNalog:='2' ;end;
    2:begin ssKKM_nalog:='PATENT'; ssMerkNalog:='5'; end;
    3:begin ssKKM_nalog:='OSN'; ssMerkNalog:='0';end;
    4:begin ssKKM_nalog:='ENVD'; ssMerkNalog:='3';end;
  end;

  ssKKM_ffd:='1.05';
  case rgKKMffd.ItemIndex of
    0:ssKKM_ffd:='1.05';
    1:ssKKM_ffd:='1.20';
  end;

  ssKKM_kodEvator:=edEvatorKod.Text;

  ssKKM_PrintFil:='PrintFil_no';
  if cbKKMprintFilial.Checked=True then ssKKM_PrintFil:='PrintFil_yes'
                                   else ssKKM_PrintFil:='PrintFil_no';

  Val(edKolSimbolov.Text,KolSimvolowKKM,code);
  if KolSimvolowKKM>50 then KolSimvolowKKM:=50;
  if KolSimvolowKKM<20 then KolSimvolowKKM:=20;

  ssKKM_KolSimwolov:=intTostr(KolSimvolowKKM);
  edKolSimbolov.Text:=ssKKM_KolSimwolov;

  ssKKM_Merc_Model:='119F';
  if cbMerc_model.ItemIndex=0 then ssKKM_Merc_Model:='119F';
  if cbMerc_model.ItemIndex=1 then ssKKM_Merc_Model:='185F';

  ssKKM_Merc_ComPort:=del_probel('COM'+edMerc_ComPort.Text);

  ssKKM_NDS:='nds_no';
  Case rgKKM_NDS.ItemIndex of
    0:ssKKM_NDS:='nds_no';
    1:ssKKM_NDS:='nds_0';
    2:ssKKM_NDS:='nds_10';
    3:ssKKM_NDS:='nds_20';
  End;

  ssKKM_Postaw_Name:=edPostaw_Name.Text;
  ssKKM_Postaw_INN:=edPostaw_INN.Text;
  ssKKM_Postaw_Tel:=edPostaw_Tel.Text;

  ssKKM_Postaw_Nalog:='';
  case cbPostaw_nalog.ItemIndex of
    0:begin ssKKM_Postaw_Nalog:='OSN';end;
  end;

  ssKKM_Agent_Kod:='5';
  case cbAgent_Kod.ItemIndex of
    0:begin ssKKM_Agent_Kod:='0';end;
    1:begin ssKKM_Agent_Kod:='1';end;
    2:begin ssKKM_Agent_Kod:='2';end;
    3:begin ssKKM_Agent_Kod:='3';end;
    4:begin ssKKM_Agent_Kod:='4';end;
    5:begin ssKKM_Agent_Kod:='5';end;
    6:begin ssKKM_Agent_Kod:='6';end;
  end;

  ssKKM_Agent_Blok:='agent_no';
  if cbKKM_Agent_Blok.Checked=True then ssKKM_Agent_Blok:='agent_yes'
                                   else ssKKM_Agent_Blok:='agent_no';

  AssignFile(F,si1+'param_kkm.api');
  Rewrite(F);
    writeln(F,ssKKM_tip);     // ��� ��� ���� ��� �����-�
    writeln(F,ssKKM_kassir);
    writeln(F,ssKKM_kassir_INN);
    writeln(F,ssKKM_str1);
    writeln(F,ssKKM_str2);
    writeln(F,ssKKM_str3);
    writeln(F,ssKKM_str4);
    writeln(F,ssKKM_pusk);   // ������ ������� ���������
    writeln(F,ssKKM_emulaytor);
    writeln(F,ssKKM_nalog);
    writeln(F,ssKKM_ffd);
    writeln(F,ssKKM_kodEvator);
    writeln(F,ssNomerWint);
    writeln(F,ssKKM_PrintFil);
    writeln(F,ssKKM_KolSimwolov);
    writeln(F,ssKKM_Merc_Model);
    writeln(F,ssKKM_Merc_ComPort);
    writeln(F,ssKKM_NDS);
    writeln(F,ssKKM_Postaw_Name);
    writeln(F,ssKKM_Postaw_INN);
    writeln(F,ssKKM_Postaw_Tel);
    writeln(F,ssKKM_Postaw_Nalog);
    writeln(F,ssKKM_Agent_Kod);
    writeln(F,ssKKM_Agent_Blok);

  CloseFile(F);

  ShowMessage('��������� ��� ������ ��������� ���� ��������� �������!');
end;

procedure TfmKKM.bbTestShtrihClick(Sender: TObject);
var
 i:integer;
begin
  mmInfoAtolShtrih.Lines.Clear;

  glKasAdmPassFK:='30';
  glKasKassirPassFK:='1';
  try
    shrih_glDrvFR:=CreateOleObject('AddIn.DrvFR');
  except
    mmInfoAtolShtrih.Lines.Add('������ ������������� AddIn.DrvFR')
  end;

  shrih_glDrvFR.Password:=glKasAdmPassFK;

  if shrih_glDrvFR.Beep<>0 then mmInfoAtolShtrih.Lines.Add(''+shrih_glDrvFR.ResultCodeDescription);

  mmInfoAtolShtrih.Lines.Add('������� �������� ��������....');
  shrih_glDrvFR.ShowProperties;

  //mminfoAtol.Lines.Add('���� �������� �������� �� ������� �� ��� �� ������, ��� � ��� ���� �����....');

  {
  mminfoAtol.Lines.Add('������� ����������� �� ��� �����...');

  for i:=0 to 3 do begin
    shrih_glDrvFR.Password:=glKasAdmPassFK;
    shrih_glDrvFR.UseReceiptRibbon:=true; //������ �� ����
    shrih_glDrvFR.UseJournalRibbon:=true;//�� �������� � ������������ �������
    shrih_glDrvFR.StringForPrinting:='test-apimlm_'+intToStr(i);

    if shrih_glDrvFR.PrintString<>0 then mmInfo.Lines.Add(''+shrih_glDrvFR.ResultCodeDescription);
  end;
  shrih_glDrvFR.StringForPrinting:='---------------------------';
  }
end;

procedure TfmKKM.bbTestShtrihMClick(Sender: TObject);
begin
  if (FileExists(sZapNew)=True) then
  begin
  Screen.Cursor:=crHourGlass;

  sZapNew:=si2+'kkm\FR_Atol_Shtrih.exe';

  AssignFile(F,si2+'\kkm\example.txt');
  Rewrite(F);
  Writeln(F,'      ************');
  Writeln(F,'      ������ ����!');
  Writeln(F,'      ************');
  Writeln(F,'');
  Writeln(F,'');
  Writeln(F,'');
  Writeln(F,'');
  Writeln(F,'');
  CloseFile(F);

  sleep(100);

  AssignFile(F,si2+'kkm\cmd.ini');
  rewrite(F);
  Writeln(F,'PrintTxtFile='+si2+'kkm\example.txt');
  CloseFile(F);

  mmInfoShtrih.Lines.Clear;
  mmInfoShtrih.Lines.Add('*****************************************************************************************');
  mmInfoShtrih.Lines.Add('������������ ����� � ��� ����������� �������!');
  mmInfoShtrih.Lines.Add('�� ������ ���������� ����������� "������ ����!"');
  mmInfoShtrih.Lines.Add('���� ����������� ������������� �� ���, �� ���������� ������ � ������!');
  mmInfoShtrih.Lines.Add('*****************************************************************************************');

  if ssKKM_tip='shtrih' then
  begin
    ShellExecute(Application.handle, 'open', PChar(sZapNew), PChar( '/shtrih' ), nil, sw_Show);
  end;

  if ssKKM_tip='atol' then
  begin
    ShellExecute(Application.handle, 'open', PChar(sZapNew), PChar( '/atol' ), nil, sw_Show);
  end;
  Screen.Cursor:=crDefault;
  end
  else
  begin
    ShowMessage(' �� ������ ����: '+sZapNew);
  end;
end;

procedure TfmKKM.bbTestShtrihPrintClick(Sender: TObject);
var
 i:integer;
begin
  mmInfoAtolShtrih.Lines.Clear;

  glKasAdmPassFK:='30';
  glKasKassirPassFK:='1';
  try
    shrih_glDrvFR:=CreateOleObject('AddIn.DrvFR');
  except
    mmInfoAtolShtrih.Lines.Add('������ ������������� AddIn.DrvFR')
  end;

  shrih_glDrvFR.Password:=glKasAdmPassFK;

  if shrih_glDrvFR.Beep<>0 then mmInfoAtolShtrih.Lines.Add(''+shrih_glDrvFR.ResultCodeDescription);
    mmInfoAtolShtrih.Lines.Add('�������� �������� ������....');
  //shrih_glDrvFR.ShowProperties;

  for i:=0 to 6 do begin
    shrih_glDrvFR.Password:=glKasAdmPassFK;
    shrih_glDrvFR.UseReceiptRibbon:=true; //������ �� ����
    shrih_glDrvFR.UseJournalRibbon:=true;//�� �������� � ������������ �������
    //shrih_glDrvFR.StringForPrinting:='test-apimlm_'+intToStr(i);
    shrih_glDrvFR.StringForPrinting:='����-������_'+intToStr(i);
    shrih_glDrvFR.PrintString;
    //if shrih_glDrvFR.PrintString<>0 then mmInfo.Lines.Add(''+shrih_glDrvFR.ResultCodeDescription);
    shrih_glDrvFR.StringForPrinting:='---------------------------';
    shrih_glDrvFR.PrintString;
    //if shrih_glDrvFR.PrintString<>0 then mmInfo.Lines.Add(''+shrih_glDrvFR.ResultCodeDescription);
  end;

  shrih_glDrvFR.BarCode:='�������� ���������!';
  shrih_glDrvFR.PrintBarCode;

  shrih_glDrvFR.Disconnect;
end;

procedure TfmKKM.bbXotchetClick(Sender: TObject);
Var
  TextJSON,ssOtwet:String;
  newSS:TStringStream;
begin
  IF MessageDlg('������������� ���������� �������� ������ �� �����?',
  mtConfirmation,[mbYes, mbNo],0) = mrYes then
  begin
    Screen.Cursor:=crHourGlass;
    mmInfoMerc.Lines.Clear;
    bbOpenSessionRabClick(Sender);   // ������� ������

    if (sessionKey<>'')and(ssResultKKM='0') then
    begin
      TextJSON:='{"sessionKey": "'+sessionKey+'", "command": "PrintReport", "reportCode": 1 }';
      mmInfo.Lines.Add('����� ����� �� ����� ������: '+UTF8Decode(TextJSON));
      try
        Http2:=TIdHTTP.Create(nil);
        HTTP2.Request.ContentType:='application/json; charset=utf-8';
        HTTP2.ReadTimeout:=10000;

        PostDataJSON:=TStringStream.Create;
        PostDataJSON.WriteString(TextJSON);
        //ssOtwet:=HTTP2.Post(ssWebRestKKM,PostDataJSON);
        newSS:=TStringStream.Create;
        HTTP2.Post(ssWebRestKKM,PostDataJSON,newSS);
        ssOtwet:=UTF8Decode(newSS.DataString);
        mmInfo.Lines.Add('����� ����� �� ����� �����: '+ssOtwet);
        mmInfo.Lines.Add('-----------------------------------------------------------------------------------');

        Http2.Free;

        bbCloseSessionRabClick(Sender);  // ������� ������

        mmInfoMerc.Lines.Add('����� ����� �� ����� ����������� �������!');

        Screen.Cursor:=crDefault;
        ShowMessage('����� ����� �� ����� ����������� �������!');
      except
        on E:Exception do
        begin
          Screen.Cursor:=crDefault;
          mmInfo.Lines.Add('������: '+E.Message);
          mmInfoMerc.Lines.Add('����� ����� �� ����� ��������� ������: '+E.Message);
          Screen.Cursor:=crDefault;
          ShowMessage('������: '+E.Message);
          Exit;
        end;
      end;
    end
    else
    begin
      Screen.Cursor:=crDefault;
      ShowMessage('�� ������� ���� ������ �� ��� "'+ssNameKKM+'"!'+#13+'��� ����������� ����� � ��� "'+ssNameKKM+'"!');
    end;
  end;
end;

procedure TfmKKM.bbXotchetStrihMClick(Sender: TObject);
begin
  if (FileExists(sZapNew)=True) then
  begin
  IF MessageDlg('������������� ���������� �������� X-������?',
  mtConfirmation,[mbYes, mbNo],0) = mrYes then
  begin
    Screen.Cursor:=crHourGlass;

    AssignFile(F,si2+'kkm\cmd.ini');
    rewrite(F);
    Writeln(F,'XOTCHET');
    CloseFile(F);

    sleep(100);

    mmInfoShtrih.Lines.Clear;
    mmInfoShtrih.Lines.Add('*****************************************************************************************');
    mmInfoShtrih.Lines.Add('������� ��������� X-����� ���������� �� ���');
    mmInfoShtrih.Lines.Add('*****************************************************************************************');

    if ssKKM_tip='shtrih' then
    begin
      ShellExecute(Application.handle, 'open', PChar(sZapNew), PChar( '/shtrih' ), nil, sw_Show);
    end;

    if ssKKM_tip='atol' then
    begin
      ShellExecute(Application.handle, 'open', PChar(sZapNew), PChar( '/atol' ), nil, sw_Show);
    end;

    ShowMessage('������� ��������� X-����� ���������� �� ��� �������!');
    Screen.Cursor:=crDefault;
  end
  end
  else
  begin
    ShowMessage(' �� ������ ����: '+sZapNew);
  end;
end;

procedure TfmKKM.Button4Click(Sender: TObject);
var
 Drv: TDrvFR;
begin
  Drv := TDrvFR.Create(nil); // �������� ������� ��������
  try
    Drv.ConnectionType := 0; // ����������� ����� TCP socket
    // Drv.ProtocolType := 0; // ����������� ��������
    Drv.IPAddress := '192.168.0.2'; // IP ����� ���
    Drv.UseIPAddress := True; // ���������� �������� IPAddress
  // ��� �������� ������ ���
  // (� ��������� ������ �����
  // �������������� ��������
  // ComputerName)
   Drv.TCPPort := 7778; // TCP ���� ���
   Drv.Timeout := 5000; // ������� � ��
   Drv.Password := 30; // ������ ���������� ��������������
  //������� ��� ������ 4.15
  //�55�
   if Drv.Connect <> 0 then // ��������� �����������
   raise Exception.Create(Drv.ResultCodeDescription);
   // ��������� �������
   Drv.CheckType := 1; // �������� - ������
   Drv.Price := 44.4; // ���� �� ������� ������
   // � ������ ������
   Drv.Quantity := 4; // ����������
   // Drv.Summ1Enabled := True; // ���������, ���
   // ���� ������������ ����
   Drv.Summ1 := 177.61; // ����� ������� � ������ ������
   // Drv.TaxValueEnabled := False; // ����� �� �� ������������
   Drv.Tax1 := 1; // ��� 18%
   Drv.Department := 1; // ����� ������
   // Drv.PaymentTypeSign := 4; // ������� ������� ������� (������ ������)
   // ��������� ��� ��� 1.05
   // Drv.PaymentItemSign := 1; // ������� �������� ������� (�����)
   // ��������� ��� ��� 1.05
   Drv.StringForPrinting := '�����'; // ������������ ������
   // if Drv.FNOperation <> 0 then // ��������� �������
   // raise Exception.Create(Drv.ResultCodeDescription);
   // ��������� �������� ����
   Drv.Summ1 := 177.61; // ��������
   Drv.Summ2 := 0; // ��������� ���� ������ �������,
   // �� �� ���������� ���������
   Drv.Summ3 := 0;
   Drv.Summ4 := 0;
   // Drv.Summ5 := 0;
   // Drv.Summ6 := 0;
   // Drv.Summ7 := 0;
   // Drv.Summ8 := 0;
   // Drv.Summ9 := 0;
   // Drv.Summ10 := 0;
   // Drv.Summ11 := 0;
   // Drv.Summ12 := 0;
   // Drv.Summ13 := 0;
   // Drv.Summ14 := 0;
   // Drv.Summ15 := 0;
   // Drv.Summ16 := 0;
   // Drv.RoundingSumm := 0; // ����� ����������
   // Drv.TaxValue1 := 0; // ������ �� �� �������
   // Drv.TaxValue2 := 0;
   // Drv.TaxValue3 := 0;
   // Drv.TaxValue4 := 0;
   // Drv.TaxValue5 := 0;
   // Drv.TaxValue6 := 0;
   // Drv.TaxType := 1; // �������� ������� ���������������
   Drv.StringForPrinting := '';
   // if Drv.FNCloseCheckEx <> 0 then
   // raise Exception.Create(Drv.ResultCodeDescription);
  finally
  //����������� ������������
  //�56�
   Drv.Free; // ����������� ������ ��������
  end;
end;

procedure TfmKKM.Button5Click(Sender: TObject);
Var
  Driver: TDrvFR;

procedure print_reklama(prnt: Boolean);
begin
  if prnt then
  begin
    Driver.Password := 30;
    Driver.TableNumber := 1;
    Driver.FieldNumber := 4;
    Driver.RowNumber := 1;
    Driver.ValueOfFieldInteger := 1;
    Driver.GetFieldStruct;
    Driver.WriteTable;
  end
  else
  begin
    Driver.Password := 30;
    Driver.TableNumber := 1;
    Driver.FieldNumber := 4;
    Driver.RowNumber := 1;
    Driver.ValueOfFieldInteger := 0;
    Driver.GetFieldStruct;
    Driver.WriteTable;

    Driver.Password := 30;
    Driver.TableNumber := 4;
    Driver.FieldNumber := 1;
    Driver.RowNumber := 2;
    Driver.ValueOfFieldString := '';
    Driver.GetFieldStruct;
    Driver.WriteTable;

    Driver.Password := 30;
    Driver.TableNumber := 4;
    Driver.FieldNumber := 1;
    Driver.RowNumber := 3;
    Driver.ValueOfFieldString := '';
    Driver.GetFieldStruct;
    Driver.WriteTable;
  end;
end;

begin
  Driver := TDrvFR.Create(nil); // �������� ������� ��������

  Driver.ConnectionType := 0; // ����������� ����� TCP socket
// Drv.ProtocolType := 0; // ����������� ��������
 Driver.IPAddress := '192.168.0.2'; // IP ����� ���
 Driver.UseIPAddress := True; // ���������� �������� IPAddress
 // ��� �������� ������ ���
// (� ��������� ������ �����
 // �������������� ��������
 // ComputerName)
 Driver.TCPPort := 7778; // TCP ���� ���
 Driver.Timeout := 1000; // ������� � ��
 Driver.Password := 30; // ������ ���������� ��������������
//������� ��� ������ 4.15
//�55�
 if Driver.Connect <> 0 then // ��������� �����������
 raise Exception.Create(Driver.ResultCodeDescription);

 print_reklama(true);
end;

function TfmKKM.GetDriver:OleVariant;
begin
  if VarIsEmpty(FDriver) then
    FDriver := CreateOleObject('Addin.DrvFR');
  Result := FDriver;
end;

procedure TfmKKM.rgTipKKMClick(Sender: TObject);
begin
  if rgTipKKM.ItemIndex=3 then panEvator.Enabled:=True
                          else panEvator.Enabled:=False;

  if rgTipKKM.ItemIndex=4 then panMerkuriy.Enabled:=True
                          else panMerkuriy.Enabled:=False;
end;

procedure TfmKKM.Button6Click(Sender: TObject);
begin
  FDriver := CreateOleObject('Addin.DrvFR');

  mmAtolLog.Lines.Add('1');


  Fdriver.Timeout := 1000; // ������� � ��
  Fdriver.Password := 30; // ������ ���������� ��������������
  Fdriver.CheckType :=1;

  Fdriver.OpenCheck;

  FDriver.StringforPrinting := '==================================================';
  FDriver.DrvFR.PrintString;

  mmAtolLog.Lines.Add('2');
  Fdriver.CloseCheck;
  mmAtolLog.Lines.Add('3');
end;

procedure TfmKKM.Button7Click(Sender: TObject);
var
 i:integer;
begin
  mmInfo.Lines.Clear;
  glKasAdmPassFK:='30';
  glKasKassirPassFK:='1';
  try
    shrih_glDrvFR:=CreateOleObject('AddIn.DrvFR');
  except
    mmInfo.Lines.Add('������ ������������� AddIn.DrvFR')
  end;

  shrih_glDrvFR.Password:=glKasAdmPassFK;
  if shrih_glDrvFR.Beep<>0 then
    mmInfo.Lines.Add(''+shrih_glDrvFR.ResultCodeDescription);
    mmInfo.Lines.Add('������� �������� ��������....');
  //shrih_glDrvFR.ShowProperties;

  mmInfo.Lines.Add('���� �������� �������� �� ������� �� ��� �� ������, ��� � ��� ���� �����....');
  mmInfo.Lines.Add('������� ����������� �� ��� �����...');

  for i:=0 to 3 do begin
    shrih_glDrvFR.Password:=glKasAdmPassFK;
    shrih_glDrvFR.UseReceiptRibbon:=true; //������ �� ����
    shrih_glDrvFR.UseJournalRibbon:=true;//�� �������� � ������������ �������
    shrih_glDrvFR.StringForPrinting:='test-apimlm_'+intToStr(i);

    if shrih_glDrvFR.PrintString<>0 then mmInfo.Lines.Add(''+shrih_glDrvFR.ResultCodeDescription);
  end;
  shrih_glDrvFR.StringForPrinting:='---------------------------';
end;


procedure TfmKKM.Button8Click(Sender: TObject);
//uses ActiveX, Dialogs, SysUtils, ComObj;
var
  fptr: OleVariant;
begin
    CoInitialize(nil);

    fptr := CreateOleObject('AddIn.Fptr10');
    fptr.setSingleSetting(fptr.LIBFPTR_SETTING_PORT, IntToStr(fptr.LIBFPTR_PORT_USB));
    fptr.applySingleSettings;

    // ���������� � ���
    fptr.open;

    // ����������� �������
    fptr.setParam(1021, '������ �.�.');
    fptr.setParam(1203, '500100732259');
    fptr.operatorLogin;

    // �������� ���� (� ��������� �������� ����������)
    fptr.setParam(fptr.LIBFPTR_PARAM_RECEIPT_TYPE, fptr.LIBFPTR_RT_SELL);
    fptr.setParam(1008, '+79161234567');
    fptr.openReceipt;

    // ����������� �������
    fptr.setParam(fptr.LIBFPTR_PARAM_COMMODITY_NAME, '����� LAYS');
    fptr.setParam(fptr.LIBFPTR_PARAM_PRICE, 73.99);
    fptr.setParam(fptr.LIBFPTR_PARAM_QUANTITY, 5);
    fptr.setParam(fptr.LIBFPTR_PARAM_TAX_TYPE, fptr.LIBFPTR_TAX_VAT10);
    fptr.setParam(1212, 1);
    fptr.setParam(1214, 7);
    fptr.registration;

    // ����������� ����� (����������� �������)
    fptr.setParam(fptr.LIBFPTR_PARAM_SUM, 369.0);
    fptr.receiptTotal;

    // ������ ���������
    fptr.setParam(fptr.LIBFPTR_PARAM_PAYMENT_TYPE, fptr.LIBFPTR_PT_CASH);
    fptr.setParam(fptr.LIBFPTR_PARAM_PAYMENT_SUM, 1000);
    fptr.payment;

    // �������� ����
    fptr.closeReceipt;
    showmessage(fptr.errorDescription);
    While fptr.checkDocumentClosed < 0 do
    begin
        // �� ������� ��������� ��������� ���������. ������� ������������ ����� ������, ��������� ��������� ��������� � ��������� ������
        showmessage(fptr.errorDescription);
        Continue;
    end;

    if not fptr.getParamBool(fptr.LIBFPTR_PARAM_DOCUMENT_CLOSED) then
    begin
        // �������� �� ��������. ��������� ��� �������� (���� ��� ���) � ������������ ������
        fptr.cancelReceipt;
        Exit;
    end;

    if not fptr.getParamBool(fptr.LIBFPTR_PARAM_DOCUMENT_PRINTED) then
    begin
        // ����� ����� ������� ����� ������������� ���������, �� ���������� � �������, ���� ��� ����������
        While fptr.continuePrint < 0 do
        begin
            // ���� �� ������� ���������� �������� - �������� ������������ ������ � ����������� ��� ���.
            showmessage('�� ������� ���������� �������� (������ "' + fptr.errorDescription + '"). ��������� ��������� � ���������.');
            Continue;
        end;
    end;

    // ������ ���������� � �������� ����
    fptr.setParam(fptr.LIBFPTR_PARAM_FN_DATA_TYPE, fptr.LIBFPTR_FNDT_LAST_DOCUMENT);
    fptr.fnQueryData;
    showmessage('Fiscal Sign = ' + fptr.getParamString(fptr.LIBFPTR_PARAM_FISCAL_SIGN));
    showmessage('Fiscal Document Number = ' + IntToStr(fptr.getParamInt(fptr.LIBFPTR_PARAM_DOCUMENT_NUMBER)));

    // ������������ ����� �����
    fptr.beginNonfiscalDocument;

    fptr.setParam(fptr.LIBFPTR_PARAM_TEXT, '���: 111111111111 ���: 222222222');
    fptr.setParam(fptr.LIBFPTR_PARAM_ALIGNMENT, fptr.LIBFPTR_ALIGNMENT_CENTER);
    fptr.printText;

    fptr.setParam(fptr.LIBFPTR_PARAM_TEXT, '�����: 1               �����: 11');
    fptr.setParam(fptr.LIBFPTR_PARAM_ALIGNMENT, fptr.LIBFPTR_ALIGNMENT_CENTER);
    fptr.printText;

    fptr.setParam(fptr.LIBFPTR_PARAM_TEXT, '���: 314  ����: 20.11.2017 15:39');
    fptr.setParam(fptr.LIBFPTR_PARAM_ALIGNMENT, fptr.LIBFPTR_ALIGNMENT_CENTER);
    fptr.printText;

    fptr.setParam(fptr.LIBFPTR_PARAM_BARCODE, 'https://check.egais.ru?id=cf1b1096-3cbc-11e7-b3c1-9b018b2ba3f7');
    fptr.setParam(fptr.LIBFPTR_PARAM_BARCODE_TYPE, fptr.LIBFPTR_BT_QR);
    fptr.setParam(fptr.LIBFPTR_PARAM_ALIGNMENT, fptr.LIBFPTR_ALIGNMENT_CENTER);
    fptr.setParam(fptr.LIBFPTR_PARAM_SCALE, 5);
    fptr.printBarcode;

    fptr.printText;

    fptr.setParam(fptr.LIBFPTR_PARAM_TEXT, 'https://check.egais.ru?id=cf1b1096-3cbc-11e7-b3c1-9b018b2ba3f7');
    fptr.setParam(fptr.LIBFPTR_PARAM_ALIGNMENT, fptr.LIBFPTR_ALIGNMENT_CENTER);
    fptr.setParam(fptr.LIBFPTR_PARAM_TEXT_WRAP, fptr.LIBFPTR_TW_CHARS);
    fptr.printText;

    fptr.printText;

    fptr.setParam(fptr.LIBFPTR_PARAM_TEXT,
            '10 58 1c 85 bb 80 99 84 40 b1 4f 35 8a 35 3f 7c ' +
            '78 b0 0a ff cd 37 c1 8e ca 04 1c 7e e7 5d b4 85 ' +
            'ff d2 d6 b2 8d 7f df 48 d2 5d 81 10 de 6a 05 c9 ' +
            '81 74');
    fptr.setParam(fptr.LIBFPTR_PARAM_ALIGNMENT, fptr.LIBFPTR_ALIGNMENT_CENTER);
    fptr.setParam(fptr.LIBFPTR_PARAM_TEXT_WRAP, fptr.LIBFPTR_TW_WORDS);
    fptr.printText;

    fptr.endNonfiscalDocument;

    // ����� � �������� �����
    fptr.setParam(fptr.LIBFPTR_PARAM_REPORT_TYPE, fptr.LIBFPTR_RT_CLOSE_SHIFT);
    fptr.report;

    // ��������� ���������� � �������������� ����������
    fptr.setParam(fptr.LIBFPTR_PARAM_FN_DATA_TYPE, fptr.LIBFPTR_FNDT_OFD_EXCHANGE_STATUS);
    fptr.fnQueryData;
    showmessage('Unsent documents count = ' + IntToStr(fptr.getParamInt(fptr.LIBFPTR_PARAM_DOCUMENTS_COUNT)));
    showmessage('First unsent document number = ' + IntToStr(fptr.getParamInt(fptr.LIBFPTR_PARAM_DOCUMENT_NUMBER)));
    showmessage('First unsent document date = ' + DateTimeToStr(fptr.getParamDateTime(fptr.LIBFPTR_PARAM_DATE_TIME)));

    // ���������� ������
    fptr.close;
    CoUninitialize();
end;

procedure TfmKKM.bbOformMercClick(Sender: TObject);
Var
  PrNaim,ssCenaMerc:ShortString;
  i,koltow:Word;

begin
  ssMcInfo:='';
  mmInfoMercChZnak.Lines.Add('������������ �������� "mcInfo" ��� ���������� � "AddGoods"');
  mmInfoMercChZnak.Lines.Add('-----------------------------------------------------------------------------------------');

  ssMcInfo:=',"mcInfo":{"mc":"'+ssUIDmarkCodeBaza64+'","processingMode":0,"plannedStatus":1}';

  mmInfoMercChZnak.Lines.Add('������������ �������� "mcInfo" ��� ���������� � "AddGoods" ������ �������!');
  mmInfoMercChZnak.Lines.Add('-----------------------------------------------------------------------------------------');
  mmInfoMercChZnak.Lines.Add('mcInfo:'+ssMcInfo);
  mmInfoMercChZnak.Lines.Add('-----------------------------------------------------------------------------------------');
  mmInfoMercChZnak.Lines.Add('��������� �������� �� � ��� � ��������� ���');
  mmInfoMercChZnak.Lines.Add('����� ��������������� �������� �������: OpenSession,OpenCheck,AddGoods,CloseCheck,CloseSession');
  mmInfoMercChZnak.Lines.Add('-----------------------------------------------------------------------------------------');

  // ������������� �������� �������� �� ������
  Kol_ed_KKM_merc:=1;
  ssCenaMerc:='1';
  ssTaxCode:='6';  // ��� ���
  koltow:=1;
  PrNaim:='��Ġ����������';

  ssJSONmerk[1]:='"productName": "'+newS5(del_probel_sc(Copy(del_probel2(PrNaim),1,KolSimvolowKKM)))+'", "qty": '+intTostr(koltow*10000)+' , "taxCode": '+ssTaxCode+', "price": '+ssCenaMerc+' }';

  mmInfoMercChZnak.Lines.Add('��������  productName:'+ssJSONmerk[1]);
  mmInfoMercChZnak.Lines.Add('-----------------------------------------------------------------------------------------');


  fmKKM.bbOpenChekClick(Sender);

  if FileExists(si1+'kkm_merc_log_CHZ_tot.api') then
  begin
    AssignFile(F,si1+'kkm_merc_log_CHZ_tot.api');
      append(F);
      for i:=0 to mmInfoMercChZnak.Lines.Count-1 do
      begin
        Writeln(F,mmInfoMercChZnak.Lines.Strings[i]);
      end;
    CloseFile(F);
  end
  else
  begin
    mmInfoMercChZnak.Lines.SaveToFile(si1+'kkm_merc_log_CHZ_tot.api');
  end;
end;

procedure TfmKKM.bbGetMarkingCodeCheckResultMercClick(Sender: TObject);
Var
  TextJSON,ssOtwet:String;
  ssJSONonlineCheck,ssJSONisCompleted:String;
  ssIsCompleted:ShortString;

  //Utf8:UTF8String;
  newSS:TStringStream;
  //cod:Integer;
begin
  //3
  Screen.Cursor:=crHourGlass;
  ssJSONmcCheckResult:='';
  mmInfoMercChZnak.Lines.Add('����������� ��������� �������� �� �������� "GetMarkingCodeCheckResult"');
  mmInfoMercChZnak.Lines.Add('-----------------------------------------------------------------------------------------');

  newSS:=TStringStream.Create;
  try
    TextJSON:='{"sessionKey": "'+ssJSONkey+'", "command": "GetMarkingCodeCheckResult" }';

    Http2:=TIdHTTP.Create(nil);
    HTTP2.Request.ContentType:='application/json; charset=utf-8';
    HTTP2.ReadTimeout:=10000;

    PostDataJSON:=TStringStream.Create;
    PostDataJSON.WriteString(TextJSON);
    HTTP2.Post(ssWebRestKKM,PostDataJSON,newSS);
    ssOtwet:=UTF8Decode(newSS.DataString);

    mmInfoMercChZnak.Lines.Add('�����:'+ssOtwet);
    mmInfoMercChZnak.Lines.Add('-----------------------------------------------------------------------------------------');
    JsonValue:=TJSonObject.ParseJSONValue(ssOtwet);
    mmInfoMercChZnak.Lines.Add('�����:'+JsonValue.ToJSON);
    mmInfoMercChZnak.Lines.Add('-----------------------------------------------------------------------------------------');
    ssJSONrezult:=JsonValue.GetValue<string>('result');
    mmInfoMercChZnak.Lines.Add('rezult:'+ssJSONrezult);
    mmInfoMercChZnak.Lines.Add('-----------------------------------------------------------------------------------------');

    if ssJSONrezult='0' then
    begin
      ssJSONisCompleted:=JsonValue.GetValue<string>('isCompleted');
      mmInfoMercChZnak.Lines.Add('isCompleted:'+ssJSONisCompleted);
      ssJSONonlineCheck:=JsonValue.GetValue<string>('onlineCheck'); //������ ���� ������������ � ������ ������ � ������ ���������� �������� ������ �������� �� (���� isCompleted ����� �������� true).
      mmInfoMercChZnak.Lines.Add('onlineCheck:'+ssJSONonlineCheck);
      ssJSONmcCheckResult:=JsonValue.GetValue<string>('onlineCheck.mcCheckResult'); //��������� �������� �� ��: true � �������������, false � ������������� (���: ��� 2005)
      mmInfoMercChZnak.Lines.Add('mcCheckResult:'+ssJSONmcCheckResult);
      mmInfoMercChZnak.Lines.Add('-----------------------------------------------------------------------------------------');
      //st:='{"data":{"results":[{"Branch":"ACCT590003"}]}}';
      //JsonValue:=TJSonObject.ParseJSONValue(st);
      //Branch:=JsonValue.GetValue<string>('data.results[0].Branch');
      //{"result":0,"isCompleted":true,"onlineCheck":{"result":0,"processingResult":0,"plannedStatusCheckResult":1,"mcCheckResultRaw":15,"mcCheckResult":true}}
      //Branch:=JsonValue.GetValue<string>('onlineCheck.results[0].Branch');
    end;

    Http2.Free;
  except
    on E:Exception do
    begin
      Screen.Cursor:=crDefault;
      mmInfoMercChZnak.Lines.Add('������:'+E.Message);
      mmInfoMercChZnak.Lines.Add('-----------------------------------------------------------------------------------------');
      //ShowMessage('������: '+E.Message);
      Exit;
    end;
  end;

  // ����� �������
  // isCompleted true � �������� ���������, false � �������� ��� �����������
  // mcCheckResult (boolean, ������.) � ��������� �������� �� ��: true � �������������, false � ������������� (���: ��� 2005).

  Screen.Cursor:=crDefault;
end;

procedure TfmKKM.bbAcceptMarkingMercClick(Sender: TObject);
Var
  TextJSON,ssOtwet:String;
//  ssIsCompleted:ShortString;
  //Utf8:UTF8String;
  newSS:TStringStream;
  //cod:Integer;
begin
  //4
  ssJSONmcCheckResult:='True';
  if ssJSONmcCheckResult='True' then
  begin
    Screen.Cursor:=crHourGlass;
    mmInfoMercChZnak.Lines.Add('������������ �� ��������: "AcceptMarkingCode"');
    mmInfoMercChZnak.Lines.Add('-----------------------------------------------------------------------------------------');

    newSS:=TStringStream.Create;
    try
      TextJSON:='{"sessionKey": "'+ssJSONkey+'", "command": "AcceptMarkingCode" }';

      Http2:=TIdHTTP.Create(nil);
      HTTP2.Request.ContentType:='application/json; charset=utf-8';
      HTTP2.ReadTimeout:=10000;

      PostDataJSON:=TStringStream.Create;
      PostDataJSON.WriteString(TextJSON);
      HTTP2.Post(ssWebRestKKM,PostDataJSON,newSS);
      ssOtwet:=UTF8Decode(newSS.DataString);

      mmInfoMercChZnak.Lines.Add('�����:'+ssOtwet);
      mmInfoMercChZnak.Lines.Add('-----------------------------------------------------------------------------------------');
      JsonValue:=TJSonObject.ParseJSONValue(ssOtwet);
      mmInfoMercChZnak.Lines.Add('�����:'+JsonValue.ToJSON );
      mmInfoMercChZnak.Lines.Add('-----------------------------------------------------------------------------------------');
      ssJSONrezult:=JsonValue.GetValue<string>('result');
      mmInfoMercChZnak.Lines.Add('rezult:'+ssJSONrezult);
      ssJSONdescription:=JsonValue.GetValue<string>('description');
      mmInfoMercChZnak.Lines.Add('description:'+ssJSONdescription);
      mmInfoMercChZnak.Lines.Add('-----------------------------------------------------------------------------------------');

      Http2.Free;
    except
      on E:Exception do
       begin
         Screen.Cursor:=crDefault;
         mmInfoMercChZnak.Lines.Add('������:'+E.Message);
         mmInfoMercChZnak.Lines.Add('-----------------------------------------------------------------------------------------');
         //ShowMessage('������:'+E.Message);
         Exit;
       end;
    end;
    Screen.Cursor:=crDefault;
  end;
end;

procedure TfmKKM.bbCheckMarkingCodeMercClick(Sender: TObject);
Var
  TextJSON,ssOtwet,ssUIDmark,ssDecode:String;

  ssIsCompleted:ShortString;

  Utf8:UTF8String;
  newSS:TStringStream;
  cod:Integer;
begin
  //2
  Screen.Cursor:=crHourGlass;

  //ssUIDmark:='69812a13-8279-11ec-80f6-ac1f6bbce08b';
  //ssUIDmark:='Njk4MTJhMTMtODI3OS0xMWVjLTgwZjYtYWMxZjZiYmNlMDhi';

  ssUIDmark:=edKodMarkMerc.Text;
  // ����� ������������ ����������� ������� ��� ����������� � �������������� Base64
  ssUIDmarkCodeBaza64:=TNetEncoding.URL.Base64.Encode(ssUIDmark);
  ssDecode:=TNetEncoding.URL.Base64.Decode(ssUIDmarkCodeBaza64);

  mmInfoMercChZnak.Lines.Add('�������� �� � Base64:');
  mmInfoMercChZnak.Lines.Add('-----------------------------------------------------------------------------------------');
  mmInfoMercChZnak.Lines.Add('�������� ��������:'+ssUIDmark);
  mmInfoMercChZnak.Lines.Add('-----------------------------------------------------------------------------------------');
  mmInfoMercChZnak.Lines.Add('�������������� ��������:'+ssUIDmarkCodeBaza64);
  mmInfoMercChZnak.Lines.Add('-----------------------------------------------------------------------------------------');
  mmInfoMercChZnak.Lines.Add('��� �������� �������������:'+ssDecode);
  mmInfoMercChZnak.Lines.Add('-----------------------------------------------------------------------------------------');
  mmInfoMercChZnak.Lines.Add('���������� �������� �� �������� "CheckMarkingCode"');
  mmInfoMercChZnak.Lines.Add('� ������������ ���������� "plannedStatus":1');
  mmInfoMercChZnak.Lines.Add('� ������������ ���������� "measureUnit":0');
  mmInfoMercChZnak.Lines.Add('� �������������� ���������� "timeout":10');
  mmInfoMercChZnak.Lines.Add('-----------------------------------------------------------------------------------------');

  newSS:=TStringStream.Create;
  try
    TextJSON:='{"sessionKey": "'+ssJSONkey+'", "command": "CheckMarkingCode", "mc": "'+ssUIDmarkCodeBaza64+'", "plannedStatus": 1, "qty": 10000, "measureUnit": 0, "timeout":10 }';

    Http2:=TIdHTTP.Create(nil);
    HTTP2.Request.ContentType:='application/json; charset=utf-8';
    HTTP2.ReadTimeout:=10000;

    PostDataJSON:=TStringStream.Create;
    PostDataJSON.WriteString(TextJSON);
    HTTP2.Post(ssWebRestKKM,PostDataJSON,newSS);
    ssOtwet:=UTF8Decode(newSS.DataString);

    mmInfoMercChZnak.Lines.Add(ssOtwet);
    mmInfoMercChZnak.Lines.Add('-----------------------------------------------------------------------------------------');
    JsonValue:=TJSonObject.ParseJSONValue(ssOtwet);
    mmInfoMercChZnak.Lines.Add('�����:'+JsonValue.ToJSON );
    mmInfoMercChZnak.Lines.Add('-----------------------------------------------------------------------------------------');
    ssJSONrezult:=JsonValue.GetValue<string>('result');
    mmInfoMercChZnak.Lines.Add('rezult:'+ssJSONrezult);
    ssJSONdescription:=JsonValue.GetValue<string>('description');
    mmInfoMercChZnak.Lines.Add('description:'+ssJSONdescription);
    mmInfoMercChZnak.Lines.Add('-----------------------------------------------------------------------------------------');

    Http2.Free;
  except
    on E:Exception do
    begin
      Screen.Cursor:=crDefault;
      mmInfoMercChZnak.Lines.Add('������:'+E.Message);
      mmInfoMercChZnak.Lines.Add('-----------------------------------------------------------------------------------------');
      //ShowMessage('������: '+E.Message);
      Exit;
    end;
  end;
  Screen.Cursor:=crDefault;
end;

procedure TfmKKM.bbTestMercClick(Sender: TObject);
begin
  bbDobriyDenClick(Sender);
  mmInfoMerc.Lines.Clear;
  mmInfoMerc.Lines.Add('*****************************************************************************************');
  mmInfoMerc.Lines.Add('������������ ����� � ��� ����������� �������!');
  mmInfoMerc.Lines.Add('�� ������ ���������� ����������� "������ ����!"');
  mmInfoMerc.Lines.Add('���� ����������� ������������� �� ���, �� �������� ����� � ������!');
  mmInfoMerc.Lines.Add('*****************************************************************************************');
  Screen.Cursor:=crDefault;
end;

procedure TfmKKM.edKolSimbolovKeyPress(Sender: TObject; var Key: Char);
begin
  kodSim:=Ord(key);
  if kodSim<>8 then
  begin
    if ((kodSim>=48)and(kodSim<=57))  // �����
    then
    begin
    end
    else key:=#0;
  end;
end;


procedure TfmKKM.edPostaw_innKeyPress(Sender: TObject; var Key: Char);
begin
  kodSim:=Ord(key);
  if kodSim<>8 then   // "8" - ��������
  begin
    if ((kodSim>=48)and(kodSim<=57))or(kodSim=22)  // �����  "22" - ctr-V
    then
    begin
    end
    else
    begin
      key:=#0;
    end;
  end
end;

procedure TfmKKM.edPostaw_telKeyPress(Sender: TObject; var Key: Char);
begin
  kodSim:=Ord(key);
  if kodSim<>8 then   // "8" - ��������
  begin
    if ((kodSim>=48)and(kodSim<=57))or(kodSim=22)  // �����  "22" - ctr-V
    then
    begin
    end
    else
    begin
      if not (key in ['0'..'9','-','(',')','+']) then key:=#0;
    end;
  end
end;

procedure TfmKKM.bbGetCommonInfoClick(Sender: TObject);
Var
  TextJSON{,ssOtwet}:String;
  Stream:TStringStream;
  ssOtwet:UTF8String;
begin
  //����������  ������� ��������� ����� ����������
  Screen.Cursor:=crHourGlass;
  mmInfo.Clear;
  bbOpenSessionRabClick(Sender);   // ������� ������

  if (sessionKey<>'')and(ssResultKKM='0') then
  begin
  try
    TextJSON:='{"sessionKey": "'+sessionKey+'","command": "GetCommonInfo"}';
    mmInfo.Lines.Add('����� ���������� � ��� �������� ������: '+TextJSON);

    Http2:=TIdHTTP.Create(nil);
    HTTP2.Request.ContentType:='application/json; charset=utf-8';
    HTTP2.ReadTimeout:=10000;

    Stream:=TStringStream.Create(HTTP2.Post(ssWebRestKKM,PostDataJSON));

    PostDataJSON:=TStringStream.Create;
    PostDataJSON.WriteString(TextJSON);
    ssOtwet:=HTTP2.Post(ssWebRestKKM,PostDataJSON);

    //Stream:=TStringStream.Create('',TEncoding.UTF8);

    //Stream.WriteString(HTTP2.Post(ssWebRestKKM,PostDataJSON));

    //Stream:=TStringStream.Create(HTTP2.Post(ssWebRestKKM,PostDataJSON),TEncoding.UTF8);

    //AssignFile(F,si2+'temp\utf_01.txt', CP_UTF8);
    //SetTextCodePage(F, 65001);
    //Rewrite(F);
    //Writeln(F,Stream.DataString);
    //CloseFile(F);

    Http2.Free;

    //mmInfo.Lines.DefaultEncoding:=mmInfo.Lines.Encoding.UTF8;

    mmInfo.Lines.Add('����� ���������� � ��� �������� �����:');
    mmInfo.Lines.Add('*****************************************************************************************');
    mmInfo.Lines.Add(ssOtwet);
    //mmInfo.Lines.Add(utf8toAnsi(Stream.DataString));
    //mmInfo.Lines.Add(Stream.DataString);

    mmInfo.Lines.Add('*****************************************************************************************');
    mmInfo.Lines.Add('�������:');
    mmInfo.Lines.Add('*****************************************************************************************');
    mmInfo.Lines.Add('��������� ����� ���: '+Parsing_JSON(ssOtwet,'kktNum'));
    mmInfo.Lines.Add('������ ��� �� : '+Parsing_JSON(ssOtwet,'ffdFnVer'));
    mmInfo.Lines.Add('������ ��� ���: '+Parsing_JSON(ssOtwet,'ffdKktVer'));
    mmInfo.Lines.Add('�������� ������ ��� (�� ������� �������� ���): '+Parsing_JSON(ssOtwet,'ffdTotalVer'));
    mmInfo.Lines.Add('���� ������� �������������� ���: '+Parsing_JSON(ssOtwet,'programDate'));
    mmInfo.Lines.Add('������� ���� � �����, ������������� � ���.: '+Parsing_JSON(ssOtwet,'dateTime'));
    mmInfo.Lines.Add('*****************************************************************************************');
    mmInfo.Lines.Add('���� � ������ �� ������������ "result":0", �� ������ ��������� ���������!');
    mmInfo.Lines.Add('*****************************************************************************************');

    //mmInfo.Text:=Stream.DataString;
    //mmInfo.Lines.LoadFromStream(Stream, TEncoding.UTF8);

    bbCloseSessionRabClick(Sender);  // ������� ������
  except
    on E:Exception do
    begin
      bbCloseSessionRabClick(Sender);  // ������� ������
      Screen.Cursor:=crDefault;
      mmInfo.Lines.Add('������: '+E.Message);
      ShowMessage('������: '+E.Message);
      Exit;
    end;
  end;
  end
  else
  begin
    Screen.Cursor:=crDefault;
    ShowMessage('�� ������� ���� ������ �� ��� "'+ssNameKKM+'"!'+#13+'��� ����������� ����� � ��� "'+ssNameKKM+'"!');
  end;
  Screen.Cursor:=crDefault;
end;

procedure TfmKKM.bbGetDriverClick(Sender: TObject);
Var
  TextJSON,ssOtwet:String;
begin
  Screen.Cursor:=crHourGlass;
  mmInfo.Clear;
  try
    TextJSON:='{"command": "GetDriverInfo"}';
    mmInfo.Lines.Add('�������� ������ INECRMAN ������: '+TextJSON);

    Http2:=TIdHTTP.Create(nil);
    HTTP2.Request.ContentType:='application/json; charset=utf-8';
    HTTP2.ReadTimeout:=10000;

    PostDataJSON:=TStringStream.Create;
    PostDataJSON.WriteString(TextJSON);
    ssOtwet:=HTTP2.Post(ssWebRestKKM,PostDataJSON);

    mmInfo.Lines.Add('�������� ������ INECRMAN �����: '+ssOtwet);

    mmInfo.Lines.Add('*****************************************************************************************');
    mmInfo.Lines.Add('���� � ������ �� INECRMAN ������������ "result":0", �� ������ ��������� ���������!');
    mmInfo.Lines.Add('*****************************************************************************************');

    Http2.Free;

  except
    on E:Exception do
    begin
      mmInfo.Lines.Add('������: '+E.Message);
      Screen.Cursor:=crDefault;
      ShowMessage('������: '+E.Message);
      Exit;
    end;
  end;

  Screen.Cursor:=crDefault;
end;


procedure TfmKKM.bbGetStatusClick(Sender: TObject);
Var
  TextJSON,ssOtwet:String;
begin
  //����������  ������� ������
  Screen.Cursor:=crHourGlass;
  mmInfo.Clear;

  bbOpenSessionRabClick(Sender);   // ������� ������

  if (sessionKey<>'')and(ssResultKKM='0') then
  begin
  try
    TextJSON:='{"sessionKey": "'+sessionKey+'","command": "GetStatus"}';
    mmInfo.Lines.Add('�������� ������� ��� �������� ������: '+TextJSON);

    Http2:=TIdHTTP.Create(nil);
    HTTP2.Request.ContentType:='application/json; charset=utf-8';
    HTTP2.ReadTimeout:=10000;

    PostDataJSON:=TStringStream.Create;
    PostDataJSON.WriteString(TextJSON);
    ssOtwet:=HTTP2.Post(ssWebRestKKM,PostDataJSON);

    //AssignFile(F,si2+'temp\utf_01.txt', CP_UTF8);
    //Rewrite(F);
    //Writeln(F,HTTP2.Post(ssWebRestKKM,PostDataJSON));
    //CloseFile(F);

    Http2.Free;

    mmInfo.Lines.Add('�������� ������� ��� �������� �����:');
    mmInfo.Lines.Add('*****************************************************************************************');
    mmInfo.Lines.Add(ssOtwet);
    mmInfo.Lines.Add('*****************************************************************************************');
    mmInfo.Lines.Add('�������:');
    mmInfo.Lines.Add('*****************************************************************************************');
    mmInfo.Lines.Add('�������� �����: '+Parsing_JSON(ssOtwet,'isOpen'));
    mmInfo.Lines.Add('24-������� �������� ����� �������� ����� (�����): '+Parsing_JSON(ssOtwet,'is24Expired'));
    mmInfo.Lines.Add('������� ������� ������: '+Parsing_JSON(ssOtwet,'paperPresence'));
    mmInfo.Lines.Add('���� � ����� �������� �����: '+Parsing_JSON(ssOtwet,'lastOpen'));
    mmInfo.Lines.Add('*****************************************************************************************');
    mmInfo.Lines.Add('���� � ������ �� ������������ "result":0", �� ������ ��������� ���������!');
    mmInfo.Lines.Add('*****************************************************************************************');
    bbCloseSessionRabClick(Sender);  // ������� ������
  except
    on E:Exception do
    begin
      bbCloseSessionRabClick(Sender);  // ������� ������
      Screen.Cursor:=crDefault;
      mmInfo.Lines.Add('������: '+E.Message);
      ShowMessage('������: '+E.Message);
      Exit;
    end;
  end;
  end
  else
  begin
    Screen.Cursor:=crDefault;
    ShowMessage('�� ������� ���� ������ �� ��� "'+ssNameKKM+'"!'+#13+'��� ����������� ����� � ��� "'+ssNameKKM+'"!');
  end;

  Screen.Cursor:=crDefault;
end;

procedure TfmKKM.FormActivate(Sender: TObject);
begin
  IF (fmPolz.edParolPol.Text=strParol)or(FileExists(si1+'rest.txt')) then
  begin
    tsChZnak.Enabled:=True;

  end
  else
  begin
    tsChZnak.Enabled:=False;

  end;

  lbInfo2.Caption:='������� ��� ��������� ��������� FR_ATOL_SHTRIH.EXE �� ����� ��������� ������: '+si2+'kkm';
end;

procedure TfmKKM.FormCreate(Sender: TObject);
Var
  ssNomerWint:ShortString;
  Buffer:array [0..255] of char;
  SerialNum:dword;
  a,b:dword;
  ik:Word;
begin
  if GetVolumeInformation('c:\',Buffer,SizeOf(Buffer),@SerialNum,a,b,nil,0) then ssNomerWint:=IntToStr(SerialNum);  // ����� �����

  width:=1200;
  height:=800;


  ssWebRestKKM:='http://localhost:50010/api.json';

  sTire70:='';
  sTire99:='';
  for ik:=0 to 180 do
  begin
    if ik<70 then sTire70:=sTire70+'-';
    if ik<100 then sTire99:=sTire99+'*';
  end;

  pcMerc.Align:=alClient;
  mmInfoMerc.Align:=alClient;mmInfoMerc.Clear;
  mmMerkTowar.Align:=alClient;mmMerkTowar.Clear;

  pcAtolDop.Align:=alClient;
  mmAtolLog.Align:=alClient;mmAtolLog.Clear;
  mmAtolTowar.Align:=alClient;mmAtolTowar.Clear;

  mmInfo.Align:=alClient;mmInfo.Clear;
  mmInfoAtolShtrih.Align:=alClient;mmInfoAtolShtrih.Clear;
  mmInfoShtrih.Align:=alClient;mmInfoShtrih.Clear;

  mmInfoMercChZnak.Align:=alClient;mmInfoMercChZnak.Clear;

  pcKKM.Align:=alClient;
  pcKKM.ActivePage:=tsNastroi;

  pcTestDraivKKM.Align:=alClient;
  pcTestDraivKKM.ActivePage:=tsAtolParam;

  mmAtolInfo.Align:=alClient;
  mmAtolInfo.Clear;
  mmAtolInfo.Lines.Add('1. ���������� ���������� ������� ���� � ������� �� ���� 10.10.0.0.');
  mmAtolInfo.Lines.Add('   ������� ������ ���� ��� 32-� ��������� ������. ������ ������� ����������.');
  mmAtolInfo.Lines.Add('2. ��� ���� ������ ���� ������� � ��������� � ���������� ����� USB-����.');
  mmAtolInfo.Lines.Add('3. ��� ���� ���������� ��������� � ������ �� (���������� �����������).');
  mmAtolInfo.Lines.Add('4. ��� ���� ������ ����� ����������� �������� � �������� ��� ������ � ��� 1.2.');

  forcedirectories(si2+'kkm');

  if FileExists(si1+'param_kkm.api')=True then
  begin
    AssignFile(F,si1+'param_kkm.api');
    Reset(F);
    readln(F,ssKKM_tip);   // ��� ��� ���� ��� �����-�
    readln(F,ssKKM_kassir);
    readln(F,ssKKM_kassir_INN);
    readln(F,ssKKM_str1);
    readln(F,ssKKM_str2);
    readln(F,ssKKM_str3);
    readln(F,ssKKM_str4);
    readln(F,ssKKM_pusk);  // ������ ������� ���������
    readln(F,ssKKM_emulaytor);
    readln(F,ssKKM_nalog);
    readln(F,ssKKM_ffd);
    readln(F,ssKKM_kodEvator);
    readln(F,ssKKM_nomerWinta);
    readln(F,ssKKM_PrintFil);
    readln(F,ssKKM_KolSimwolov);
    readln(F,ssKKM_Merc_Model);
    readln(F,ssKKM_Merc_ComPort);
    readln(F,ssKKM_NDS);

    readln(F,ssKKM_Postaw_Name);
    readln(F,ssKKM_Postaw_INN);
    readln(F,ssKKM_Postaw_Tel);
    readln(F,ssKKM_Postaw_Nalog);
    readln(F,ssKKM_Agent_Kod);
    readln(F,ssKKM_Agent_Blok);

    CloseFile(F);
  end
  else
  begin
    ssKKM_tip:='no kkm';
    ssKKM_kassir:='';
    ssKKM_kassir_INN:='';
    ssKKM_str1:='';ssKKM_str2:='';ssKKM_str3:='';ssKKM_str4:='';
    ssKKM_pusk:='no pusk';
    ssKKM_emulaytor:='emulaytor_no';
    ssKKM_nalog:='';
    ssKKM_ffd:='1.05';
    ssKKM_kodEvator:='';
    ssKKM_nomerWinta:='';
    ssKKM_PrintFil:='';
    ssKKM_KolSimwolov:='32';
    ssKKM_Merc_Model:='185F';
    ssKKM_Merc_ComPort:='COM3';
    ssKKM_PrintFil:='PrintFil_no';
    ssKKM_NDS:='nds_no';

    ssKKM_Postaw_Name:='��� "���������"';
    ssKKM_Postaw_INN:='5906034336';
    ssKKM_Postaw_Tel:='';
    ssKKM_Postaw_Nalog:='OSN';
    ssKKM_Agent_Kod:='5';
    ssKKM_Agent_Blok:='agent_no';
  end;

  if ssKKM_Agent_Blok='agent_yes' then cbKKM_Agent_Blok.Checked:=True
                                  else cbKKM_Agent_Blok.Checked:=False;

  if ssKKM_Postaw_Name='' then ssKKM_Postaw_Name:='��� "���������"';
  if ssKKM_Postaw_INN='' then ssKKM_Postaw_INN:='5906034336';

  IF ssKKM_Postaw_Nalog='OSN' then cbPostaw_nalog.ItemIndex:=0;

  IF ssKKM_Agent_Kod='0' then cbAgent_Kod.ItemIndex:=0;
  IF ssKKM_Agent_Kod='1' then cbAgent_Kod.ItemIndex:=1;
  IF ssKKM_Agent_Kod='2' then cbAgent_Kod.ItemIndex:=2;
  IF ssKKM_Agent_Kod='3' then cbAgent_Kod.ItemIndex:=3;
  IF ssKKM_Agent_Kod='4' then cbAgent_Kod.ItemIndex:=4;
  IF ssKKM_Agent_Kod='5' then cbAgent_Kod.ItemIndex:=5;
  IF ssKKM_Agent_Kod='6' then cbAgent_Kod.ItemIndex:=6;

  edPostaw_Name.Text:=ssKKM_Postaw_Name;
  edPostaw_INN.Text:=ssKKM_Postaw_INN;
  edPostaw_Tel.Text:=ssKKM_Postaw_Tel;

  IF ssKKM_NDS='nds_no' then rgKKM_NDS.ItemIndex:=0;
  IF ssKKM_NDS='nds_0' then rgKKM_NDS.ItemIndex:=1;
  IF ssKKM_NDS='nds_10' then rgKKM_NDS.ItemIndex:=2;
  IF ssKKM_NDS='nds_20' then rgKKM_NDS.ItemIndex:=3;

  if (ssKKM_nomerWinta<>ssNomerWint)and(sett=0) then  // ���� ��������� �� �������, �� ��������� � ��������
  begin
    ssKKM_kodEvator:='';
  end;

  edFIOKassir.Text:=ssKKM_kassir;
  edINNKassir.Text:=ssKKM_kassir_INN;
  edStr1.Text:=ssKKM_str1;
  edStr2.Text:=ssKKM_str2;
  edStr3.Text:=ssKKM_str3;
  edStr4.Text:=ssKKM_str4;

  rgTipKKM.ItemIndex:=0;panEvator.Enabled:=False;panMerkuriy.Enabled:=False;

  if ssKKM_tip='no kkm' then begin ssNameKKM:=''; rgTipKKM.ItemIndex:=0;end;
  if ssKKM_tip='atol' then begin ssNameKKM:='����'; rgTipKKM.ItemIndex:=1;end;
  if ssKKM_tip='shtrih' then begin ssNameKKM:='�����-�'; rgTipKKM.ItemIndex:=2;end;
  if ssKKM_tip='atolNew' then begin rgTipKKM.ItemIndex:=5;ssNameKKM:='����';end;

  if ssKKM_tip='evator' then
  begin
    rgTipKKM.ItemIndex:=3;
    panEvator.Enabled:=True;
    ssNameKKM:='������';
  end;

  if ssKKM_tip='merkuriy' then
  begin
    rgTipKKM.ItemIndex:=4;
    panMerkuriy.Enabled:=True;
    ssNameKKM:='��������';
  end;

  edEvatorKod.Text:=ssKKM_kodEvator;  // ������ ��� ����

  rgKKMpusk.ItemIndex:=0;
  if ssKKM_pusk='no pusk' then rgKKMpusk.ItemIndex:=0;
  if ssKKM_pusk='pusk' then rgKKMpusk.ItemIndex:=1;
  if ssKKM_pusk='pusk wib' then rgKKMpusk.ItemIndex:=2;

  if ssKKM_emulaytor='emulaytor_yes' then cbKKMemulaytor.Checked:=True
                                     else cbKKMemulaytor.Checked:=False;
  ssMerkNalog:='0';
  rgKKMNalog.ItemIndex:=0;
  if ssKKM_nalog='DOH' then begin ssMerkNalog:='1'; rgKKMNalog.ItemIndex:=0;end;          // ����������
  if ssKKM_nalog='DOHRASH' then begin ssMerkNalog:='2'; rgKKMNalog.ItemIndex:=1;end;      // ������ -�������
  if ssKKM_nalog='PATENT' then begin ssMerkNalog:='5'; rgKKMNalog.ItemIndex:=2;end;       // ������
  if ssKKM_nalog='OSN' then begin ssMerkNalog:='0'; rgKKMNalog.ItemIndex:=3;end;          // ����� �������
  if ssKKM_nalog='ENVD' then begin ssMerkNalog:='3'; rgKKMNalog.ItemIndex:=4;end;          // ����

  rgKKMffd.ItemIndex:=0;
  if ssKKM_ffd='1.05' then rgKKMffd.ItemIndex:=0;
  if ssKKM_ffd='1.20' then rgKKMffd.ItemIndex:=1;

  if ssKKM_PrintFil='PrintFil_yes' then cbKKMprintFilial.Checked:=True
                                   else cbKKMprintFilial.Checked:=False;

  if ssKKM_KolSimwolov='' then ssKKM_KolSimwolov:='20';

  Val(ssKKM_KolSimwolov,KolSimvolowKKM,code);

  if KolSimvolowKKM>50 then KolSimvolowKKM:=50;
  if KolSimvolowKKM<20 then KolSimvolowKKM:=20;

  ssKKM_KolSimwolov:=intTostr(KolSimvolowKKM);
  edKolSimbolov.Text:=ssKKM_KolSimwolov;

  if ssKKM_Merc_Model='119F' then cbMerc_model.ItemIndex:=0;
  if ssKKM_Merc_Model='185F' then cbMerc_model.ItemIndex:=1;

  edMerc_ComPort.Text:=del_probel(Copy(ssKKM_Merc_ComPort,4,2));

  if FileExists(si1+'rest.txt') then
  begin
    //tsDop.Enabled:=True;
  end
  else
  begin
  end;

  ssIPkomp:=GetIP;
  edIP.Text:=ssIPkomp;

  sZapNew:=si2+'kkm\FR_Atol_Shtrih.exe';
end;

//� ���� ����������� �� 115� � �� 185�.
//������, ������, ��� ��� ���� ����������� ������ ���� ��������� ���� "����� ����������� ����� ��� ������� ����������", ������������ ��� �������� ����.

end.

{
����� �������� ������������ ���� ��� ����
-------------------------------------------------------------------
������������ ���� ������� �� ��������� ��������:

�������� ���� � �������� ���������� ����;
����������� �������, ������ ������������ ������ (�����, ���������, �����������);
����������� ����� (�������������� ����� - ���� ����������� ����� �� ��������, �� ������������� ������������ �� ����� ���� �������);
����������� ������� �� ��� (�������������� ����� - ������ ����� ���� ��������� �� ������� � �����������);
����������� �����;
�������� ����;
�������� ��������� ����.

------------------------------------------------------------------
������������ ���� ��������� (��� 1.05) ������� �� ��������� ��������:
------------------------------------------------------------------
�������� ���� � �������� ���������� ����;
����������� �����;
����������� ������� �� ��� (�������������� �����);
����������� ����� (�������������� �����);
�������� ����;
�������� ��������� ����.
-------------------------------------------------------------------
�������� ��� �������� ����:
1055	����������� ������� ��������������� (���)	int
LIBFPTR_TT_OSN - �����;
LIBFPTR_TT_USN_INCOME - ���������� �����;
LIBFPTR_TT_USN_INCOME_OUTCOME - ���������� ����� ����� ������;
LIBFPTR_TT_ESN - ������ �������������������� �����;
LIBFPTR_TT_PATENT - ��������� ������� ���������������.


�����:
� ��� ���� - � ����� ��� ������ ���� �������� ������� �� ������� ������ � ������� ����. ��� ������. ������ ��� ����� ������ �� �������.


}
