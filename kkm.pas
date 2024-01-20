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
  System.NetEncoding,  // Кодировка в Base64
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
  IF MessageDlg('Действительно произвести Закрытие Смены?',
  mtConfirmation,[mbYes, mbNo],0) = mrYes then
  begin
    Screen.Cursor:=crHourGlass;

    mmInfoMerc.Lines.Clear;

    bbOpenSessionRabClick(Sender);   // Открыли сессию

    if (sessionKey<>'')and(ssResultKKM='0') then
    begin
      TextJSON:='{"sessionKey": "'+sessionKey+'", "command": "CloseShift", "printDoc": true, "cashierInfo": {"cashierName": "'+UTF8Encode(newS5(ssKKM_kassir))+'", "cashierINN": "'+ssKKM_kassir_INN+'"} }';
      mmInfo.Lines.Add('Закрытие Смены запрос: '+UTF8Decode(TextJSON));
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

        mmInfo.Lines.Add('Закрытие Смены ответ: '+ssOtwet);
        mmInfo.Lines.Add('-----------------------------------------------------------------------------------');
        Http2.Free;

        bbCloseSessionRabClick(Sender);  // Закрыли сессию

        Screen.Cursor:=crDefault;

        mmInfoMerc.Lines.Add('Закрытие смены произведено успешно!');
        ShowMessage('Закрытие смены произведено успешно!');
      except
        on E:Exception do
        begin
          Screen.Cursor:=crDefault;
          mmInfo.Lines.Add('Ошибка: '+E.Message);
          mmInfoMerc.Lines.Add('Закрытие смены произошла ошибка: '+E.Message);
          ShowMessage('Ошибка: '+E.Message);
          Exit;
        end;
      end;
    end
    else
    begin
      Screen.Cursor:=crDefault;
      ShowMessage('Не получен Ключ Сессии от ККТ "'+ssNameKKM+'"!'+#13+'Или отсутствует связь с ККТ "'+ssNameKKM+'"!');
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
      mmAtolLog.Lines.Add('Отключение драйвера произведено успешно!');

    except
      on E: Exception do
      begin
        podklKKM:=4;
        mmAtolLog.Lines.Add('Ошибка при отключении драйвера:');
        mmAtolLog.Lines.Add(E.Message);

        ShowMessage('Ошибка при отключении драйвера: '+E.Message);
      end;
    end;
  end
  else
  begin
     mmAtolLog.Lines.Add('Отключение драйвера возможно только после его успешного подключения!');
     ShowMessage('Отключение драйвера возможно только после его успешного подключения!');
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
  mmAtolLog.Lines.Add('Дата: '+sDate+'  '+sTime+'    Отправка Чека на ККТ Атол.');
  mmAtolLog.Lines.Add(sTire99);

  mmAtolLog.Lines.Add('Подключаем драйвер Атол....');
  fptr := CreateOleObject('AddIn.Fptr10');
  fptr.setSingleSetting(fptr.LIBFPTR_SETTING_PORT, IntToStr(fptr.LIBFPTR_PORT_USB));
  fptr.applySingleSettings;

  mmAtolLog.Lines.Add('Драйвер Атол подключен успешно.');
  mmAtolLog.Lines.Add('Устанавливаем соединение с ККТ Атол...');

  fptr.open;                                                                    // Соединение с ККТ

  mmAtolLog.Lines.Add('Соединение прошло успешно!');
  mmAtolLog.Lines.Add('Регистрация кассира...');

  // Регистрация кассира
  fptr.setParam(1021, 'Кассир '+UTF8Encode(newS5(ssKKM_kassir)));
  fptr.setParam(1203, ssKKM_kassir_INN);
  fptr.operatorLogin;                                                           // Регистрация кассира

  mmAtolLog.Lines.Add('Регистрация кассира прошла успешно.');
  mmAtolLog.Lines.Add('Запускается Открытие Чека...');
  // Открытие чека
  // fptr.LIBFPTR_RT_SELL - Чек прихода
  // fptr.LIBFPTR_RT_SELL_RETURN - чек возврата прихода (продажи);
  // fptr.LIBFPTR_PARAM_RECEIPT_ELECTRONICALLY значение true - чтобы чек не печатался

  // Параметр ssTipKKMdel задается в форме fmZak(Оформление товара)
  // ssTipKKMdel:='0'; // Чек прихода
  // ssTipKKMdel:='1'; // Чек возврата

  // Необходим тег 2108
  // FR.setParam(1212, 32);
  //Обязательный параметр для ФФД 1.2!!! 32 - товар не имеющий код маркировки, 33 - товар имеющий код маркировки

  //ssTipKKMdel:='1';  // Для тестирования возврата

  if ssTipKKMdel='0' then fptr.setParam(fptr.LIBFPTR_PARAM_RECEIPT_TYPE, fptr.LIBFPTR_RT_SELL)
                     else fptr.setParam(fptr.LIBFPTR_PARAM_RECEIPT_TYPE, fptr.LIBFPTR_RT_SELL_RETURN);

  fptr.openReceipt;                                                             // Открытие чека

  mmAtolLog.Lines.Add('Открытие Чека прошла успешно.');
  mmAtolLog.Lines.Add('Запускается регистрация позиций...');

  // Регистрация позиции
  // fptr.LIBFPTR_TAX_VAT20 - НДС 20 %
  // LIBFPTR_PARAM_POSITION_SUM - полная сумма позиции. Может отличаться от произведения цены на количество.
  // В этом случае ККТ разобьет позицию на две, распределив получившуюся разницу (скидку или надбавку) между позициями.

  for i:=1 to Kol_ed_KKM_atolNew do
  begin
    //Тип налога (LIBFPTR_PARAM_TAX_TYPE) может принимать следующие значения:
    //LIBFPTR_TAX_VAT10 - НДС 10%;
    //LIBFPTR_TAX_VAT110 - НДС рассчитанный 10/110;
    //LIBFPTR_TAX_VAT0 - НДС 0%;
    //LIBFPTR_TAX_NO - не облагается;
    //LIBFPTR_TAX_VAT20 - НДС 20%;
    //LIBFPTR_TAX_VAT120 - НДС рассчитанный 20/120.

    IF ssKKM_NDS='nds_no' then fptr.setParam(fptr.LIBFPTR_PARAM_TAX_TYPE, fptr.LIBFPTR_TAX_NO);
    IF ssKKM_NDS='nds_0'  then fptr.setParam(fptr.LIBFPTR_PARAM_TAX_TYPE, fptr.LIBFPTR_TAX_VAT0);
    IF ssKKM_NDS='nds_10' then fptr.setParam(fptr.LIBFPTR_PARAM_TAX_TYPE, fptr.LIBFPTR_TAX_VAT10);
    IF ssKKM_NDS='nds_20' then fptr.setParam(fptr.LIBFPTR_PARAM_TAX_TYPE, fptr.LIBFPTR_TAX_VAT20);

    sNameTowar:=newS5(del_probel_sc(Copy(del_probel2(PrNaim[i]),1,KolSimvolowKKM)));

    fptr.setParam(fptr.LIBFPTR_PARAM_COMMODITY_NAME, sNameTowar);       // Наименование товара
    fptr.setParam(fptr.LIBFPTR_PARAM_PRICE, CenNew[i]);                    // Цена
    fptr.setParam(fptr.LIBFPTR_PARAM_QUANTITY, kol[i]);                 // Кол-во

    fptr.setParam(1212, 1);      // признак предмета расчета   - 1-товар;2-акцизный товар;3-работа;4-услуга;
    fptr.setParam(1214, 4);      // способ расчета             - 1-полная предоплата; 4(fullPayment) - полный расчет по умолчанию
    fptr.setParam(2108, 0);      // Мера количества предмета расчета - 0-штуки;10-грамм;12-тонна;20-см;71-час
    fptr.setParam(1212, 32);     // Обязательный параметр для ФФД 1.2! 32-товар не имеющий код маркировки, 33-товар имеющий код маркировки
    fptr.registration;                                                            // Регистрация товаров

  end;

  mmAtolLog.Lines.Add('Регистрация Позиций прошла успешно.');
  mmAtolLog.Lines.Add('Запускается регистрация оплаты...');

  // Регистрация итога (отбрасываем копейки)   // Метод не является обязательным. Если его не использовать, сумма чека будет посчитана автоматически, без округлений копеек.
  // fptr.setParam(fptr.LIBFPTR_PARAM_SUM, 1.0);
  // fptr.receiptTotal;

  // Оплата
  //LIBFPTR_PT_CASH - наличными;
  //LIBFPTR_PT_ELECTRONICALLY - безналичными;

  summaOplatAtol:=strToInt(ssSummaKKM);

  fptr.setParam(fptr.LIBFPTR_PARAM_PAYMENT_TYPE, fptr.LIBFPTR_PT_CASH);
  fptr.setParam(fptr.LIBFPTR_PARAM_PAYMENT_SUM, summaOplatAtol);
  fptr.payment;                                                                 // Оплата

  mmAtolLog.Lines.Add('Регистрация Оплаты прошла успешно.');
  mmAtolLog.Lines.Add('Запускается Закрытие Чека...');

  fptr.closeReceipt;                                                            // Закрытие чека

  mmAtolLog.Lines.Add('Запускается проверка на ошибки при Закрытие Чека...');

  mmAtolLog.Lines.Add('fptr.errorDescription: '+fptr.errorDescription);
  //showmessage(fptr.errorDescription);
  While fptr.checkDocumentClosed < 0 do
  begin
      // Не удалось проверить состояние документа. Вывести пользователю текст ошибки, попросить устранить неполадку и повторить запрос
      showmessage(fptr.errorDescription);
      Continue;
  end;

  if not fptr.getParamBool(fptr.LIBFPTR_PARAM_DOCUMENT_CLOSED) then
  begin
      // Документ не закрылся. Требуется его отменить (если это чек) и сформировать заново
      fptr.cancelReceipt;
      Exit;
  end;

  if not fptr.getParamBool(fptr.LIBFPTR_PARAM_DOCUMENT_PRINTED) then
  begin
      // Можно сразу вызвать метод допечатывания документа, он завершится с ошибкой, если это невозможно
      While fptr.continuePrint < 0 do
      begin
          // Если не удалось допечатать документ - показать пользователю ошибку и попробовать еще раз.
          showmessage('Не удалось напечатать документ (Ошибка "' + fptr.errorDescription + '"). Устраните неполадку и повторите.');
          Continue;
      end;
  end;

  mmAtolLog.Lines.Add('Закрытие Чека прошло успешно.');
  mmAtolLog.Lines.Add('Запускается проверка информации о Закрытие Чека...');

  // Запрос информации о закрытом чеке
  fptr.setParam(fptr.LIBFPTR_PARAM_FN_DATA_TYPE, fptr.LIBFPTR_FNDT_LAST_DOCUMENT);
  fptr.fnQueryData;

  mmAtolLog.Lines.Add('Fiscal Sign = ' + fptr.getParamString(fptr.LIBFPTR_PARAM_FISCAL_SIGN));
  mmAtolLog.Lines.Add('Fiscal Document Number = ' + IntToStr(fptr.getParamInt(fptr.LIBFPTR_PARAM_DOCUMENT_NUMBER)));

  //mmAtolLog.Lines.Add('Запускается отрезка Чека.');
  //fptr.endNonfiscalDocument;       // Отрезка чека

  // Отчет о закрытии смены
  //fptr.setParam(fptr.LIBFPTR_PARAM_REPORT_TYPE, fptr.LIBFPTR_RT_CLOSE_SHIFT);
  //fptr.report;

  // Получение информации о неотправленных документах
  mmAtolLog.Lines.Add('Запускается проверка о неотправленных документах...');
  fptr.setParam(fptr.LIBFPTR_PARAM_FN_DATA_TYPE, fptr.LIBFPTR_FNDT_OFD_EXCHANGE_STATUS);
  fptr.fnQueryData;

  mmAtolLog.Lines.Add('Unsent documents count = ' + IntToStr(fptr.getParamInt(fptr.LIBFPTR_PARAM_DOCUMENTS_COUNT)));
  mmAtolLog.Lines.Add('First unsent document number = ' + IntToStr(fptr.getParamInt(fptr.LIBFPTR_PARAM_DOCUMENT_NUMBER)));
  mmAtolLog.Lines.Add('First unsent document date = ' + DateTimeToStr(fptr.getParamDateTime(fptr.LIBFPTR_PARAM_DATE_TIME)));

  // Завершение работы
  mmAtolLog.Lines.Add(sTire70);
  mmAtolLog.Lines.Add('Запуск завершения соединения с ККТ...');
  fptr.close;

  mmAtolLog.Lines.Add('Завершение соединения с ККТ произведено!');

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
  mmAtolLog.Lines.Add('Дата: '+sDate+'  '+sTime+'    Отправка Чека на ККТ Атол.');
  mmAtolLog.Lines.Add(sTire99);

  mmAtolLog.Lines.Add('Подключаем драйвер Атол....');
  fptr := CreateOleObject('AddIn.Fptr10');
  fptr.setSingleSetting(fptr.LIBFPTR_SETTING_PORT, IntToStr(fptr.LIBFPTR_PORT_USB));
  fptr.applySingleSettings;

  mmAtolLog.Lines.Add('Драйвер Атол подключен успешно.');
  mmAtolLog.Lines.Add('Устанавливаем соединение с ККТ Атол...');

  fptr.open;                                                                    // Соединение с ККТ

  mmAtolLog.Lines.Add('Соединение прошло успешно!');
  mmAtolLog.Lines.Add('Регистрация кассира...');

  // Регистрация кассира
  fptr.setParam(1021, 'Кассир '+UTF8Encode(newS5(ssKKM_kassir)));
  fptr.setParam(1203, ssKKM_kassir_INN);
  fptr.operatorLogin;                                                           // Регистрация кассира

  mmAtolLog.Lines.Add('Регистрация кассира прошла успешно.');
  mmAtolLog.Lines.Add('Запускается Открытие Чека...');
  // Открытие чека
  // fptr.LIBFPTR_RT_SELL - Чек прихода
  // fptr.LIBFPTR_RT_SELL_RETURN - чек возврата прихода (продажи);
  // fptr.LIBFPTR_PARAM_RECEIPT_ELECTRONICALLY значение true - чтобы чек не печатался

  ssTipKKMdel:='0'; // Чек прихода
  //ssTipKKMdel:='1'; // Чек возврата

  // Необходим тег 2108
  // FR.setParam(1212, 32);
  //Обязательный параметр для ФФД 1.2!!! 32 - товар не имеющий код маркировки, 33 - товар имеющий код маркировки

  if ssTipKKMdel='0' then fptr.setParam(fptr.LIBFPTR_PARAM_RECEIPT_TYPE, fptr.LIBFPTR_RT_SELL)
                     else fptr.setParam(fptr.LIBFPTR_PARAM_RECEIPT_TYPE, fptr.LIBFPTR_RT_SELL_RETURN);

  fptr.openReceipt;                                                             // Открытие чека

  mmAtolLog.Lines.Add('Открытие Чека прошла успешно.');
  mmAtolLog.Lines.Add('Запускается регистрация позиций...');

  // Регистрация позиции
  // fptr.LIBFPTR_TAX_VAT20 - НДС 20 %
  // LIBFPTR_PARAM_POSITION_SUM - полная сумма позиции. Может отличаться от произведения цены на количество.
  // В этом случае ККТ разобьет позицию на две, распределив получившуюся разницу (скидку или надбавку) между позициями.

  fptr.setParam(fptr.LIBFPTR_PARAM_COMMODITY_NAME, 'Этикетка Малая');
  fptr.setParam(fptr.LIBFPTR_PARAM_PRICE, 1.00);                       // Цена
  fptr.setParam(fptr.LIBFPTR_PARAM_QUANTITY, 1);                       // Кол-во
  fptr.setParam(fptr.LIBFPTR_PARAM_TAX_TYPE, fptr.LIBFPTR_TAX_VAT20);  // НДС-20%
  fptr.setParam(1212, 1);      // признак предмета расчета   - 1-товар;2-акцизный товар;3-работа;4-услуга;
  fptr.setParam(1214, 4);      // способ расчета             - 1-полная предоплата; 4(fullPayment) - полный расчет по умолчанию
  fptr.setParam(2108, 0);      // Мера количества предмета расчета - 0-штуки;10-грамм;12-тонна;20-см;71-час
  fptr.setParam(1212, 32);     // Обязательный параметр для ФФД 1.2! 32-товар не имеющий код маркировки, 33-товар имеющий код маркировки
  fptr.registration;                                                            // Регистрация товаров

  fptr.setParam(fptr.LIBFPTR_PARAM_COMMODITY_NAME, 'Этикетка Большая');
  fptr.setParam(fptr.LIBFPTR_PARAM_PRICE, 2.00);                       // Цена
  fptr.setParam(fptr.LIBFPTR_PARAM_QUANTITY, 1);                       // Кол-во
  fptr.setParam(fptr.LIBFPTR_PARAM_TAX_TYPE, fptr.LIBFPTR_TAX_VAT20);  // НДС-20%
  fptr.setParam(1212, 1);      // признак предмета расчета   - 1-товар;2-акцизный товар;3-работа;4-услуга;
  fptr.setParam(1214, 4);      // способ расчета             - 1-полная предоплата; 4(fullPayment) - полный расчет по умолчанию
  fptr.setParam(2108, 0);      // Мера количества предмета расчета - 0-штуки;10-грамм;12-тонна;20-см;71-час
  fptr.setParam(1212, 32);     // Обязательный параметр для ФФД 1.2! 32-товар не имеющий код маркировки, 33-товар имеющий код маркировки
  fptr.registration;                                                            // Регистрация товаров

  mmAtolLog.Lines.Add('Регистрация Позиций прошла успешно.');
  mmAtolLog.Lines.Add('Запускается регистрация оплаты...');

  // Регистрация итога (отбрасываем копейки)   // Метод не является обязательным. Если его не использовать, сумма чека будет посчитана автоматически, без округлений копеек.
  // fptr.setParam(fptr.LIBFPTR_PARAM_SUM, 1.0);
  // fptr.receiptTotal;

  // Оплата наличными

  //LIBFPTR_PT_CASH - наличными;
  //LIBFPTR_PT_ELECTRONICALLY - безналичными;

  fptr.setParam(fptr.LIBFPTR_PARAM_PAYMENT_TYPE, fptr.LIBFPTR_PT_CASH);
  fptr.setParam(fptr.LIBFPTR_PARAM_PAYMENT_SUM, 3);
  fptr.payment;                                                                 // Оплата

  mmAtolLog.Lines.Add('Регистрация Оплаты прошла успешно.');
  mmAtolLog.Lines.Add('Запускается Закрытие Чека...');

  fptr.closeReceipt;                                                            // Закрытие чека

  mmAtolLog.Lines.Add('Запускается проверка на ошибки при Закрытие Чека...');

  mmAtolLog.Lines.Add('fptr.errorDescription: '+fptr.errorDescription);
  //showmessage(fptr.errorDescription);
  While fptr.checkDocumentClosed < 0 do
  begin
      // Не удалось проверить состояние документа. Вывести пользователю текст ошибки, попросить устранить неполадку и повторить запрос
      showmessage(fptr.errorDescription);
      Continue;
  end;

  if not fptr.getParamBool(fptr.LIBFPTR_PARAM_DOCUMENT_CLOSED) then
  begin
      // Документ не закрылся. Требуется его отменить (если это чек) и сформировать заново
      fptr.cancelReceipt;
      Exit;
  end;

  if not fptr.getParamBool(fptr.LIBFPTR_PARAM_DOCUMENT_PRINTED) then
  begin
      // Можно сразу вызвать метод допечатывания документа, он завершится с ошибкой, если это невозможно
      While fptr.continuePrint < 0 do
      begin
          // Если не удалось допечатать документ - показать пользователю ошибку и попробовать еще раз.
          showmessage('Не удалось напечатать документ (Ошибка "' + fptr.errorDescription + '"). Устраните неполадку и повторите.');
          Continue;
      end;
  end;

  mmAtolLog.Lines.Add('Закрытие Чека прошло успешно.');
  mmAtolLog.Lines.Add('Запускается проверка информации о Закрытие Чека...');

  // Запрос информации о закрытом чеке
  fptr.setParam(fptr.LIBFPTR_PARAM_FN_DATA_TYPE, fptr.LIBFPTR_FNDT_LAST_DOCUMENT);
  fptr.fnQueryData;

  mmAtolLog.Lines.Add('Fiscal Sign = ' + fptr.getParamString(fptr.LIBFPTR_PARAM_FISCAL_SIGN));
  mmAtolLog.Lines.Add('Fiscal Document Number = ' + IntToStr(fptr.getParamInt(fptr.LIBFPTR_PARAM_DOCUMENT_NUMBER)));

  //fptr.beginNonfiscalDocument;

  {
  // Формирование слипа ЕГАИС
  mmAtolLog.Lines.Add('Запускается формирование слипа ЕГАИС...');
  fptr.setParam(fptr.LIBFPTR_PARAM_TEXT, 'ИНН: 111111111111 КПП: 222222222');
  fptr.setParam(fptr.LIBFPTR_PARAM_ALIGNMENT, fptr.LIBFPTR_ALIGNMENT_CENTER);
  fptr.printText;

  fptr.setParam(fptr.LIBFPTR_PARAM_TEXT, 'КАССА: 1               СМЕНА: 11');
  fptr.setParam(fptr.LIBFPTR_PARAM_ALIGNMENT, fptr.LIBFPTR_ALIGNMENT_CENTER);
  fptr.printText;

  fptr.setParam(fptr.LIBFPTR_PARAM_TEXT, 'ЧЕК: 314  ДАТА: 20.11.2017 15:39');
  fptr.setParam(fptr.LIBFPTR_PARAM_ALIGNMENT, fptr.LIBFPTR_ALIGNMENT_CENTER);
  fptr.printText;

  fptr.setParam(fptr.LIBFPTR_PARAM_BARCODE, 'https://check.egais.ru?id=cf1b1096-3cbc-11e7-b3c1-9b018b2ba3f7');
  fptr.setParam(fptr.LIBFPTR_PARAM_BARCODE_TYPE, fptr.LIBFPTR_BT_QR);
  fptr.setParam(fptr.LIBFPTR_PARAM_ALIGNMENT, fptr.LIBFPTR_ALIGNMENT_CENTER);
  fptr.setParam(fptr.LIBFPTR_PARAM_SCALE, 5);
  fptr.printBarcode;

  fptr.printText;

  mmAtolLog.Lines.Add('Формирование слипа ЕГАИС завершено успешно.');

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

  //mmAtolLog.Lines.Add('Запускается отрезка Чека.');
  //fptr.endNonfiscalDocument;       // Отрезка чека

  // Отчет о закрытии смены
  //fptr.setParam(fptr.LIBFPTR_PARAM_REPORT_TYPE, fptr.LIBFPTR_RT_CLOSE_SHIFT);
  //fptr.report;

  // Получение информации о неотправленных документах
  mmAtolLog.Lines.Add('Запускается проверка о неотправленных документах...');
  fptr.setParam(fptr.LIBFPTR_PARAM_FN_DATA_TYPE, fptr.LIBFPTR_FNDT_OFD_EXCHANGE_STATUS);
  fptr.fnQueryData;

  mmAtolLog.Lines.Add('Unsent documents count = ' + IntToStr(fptr.getParamInt(fptr.LIBFPTR_PARAM_DOCUMENTS_COUNT)));
  mmAtolLog.Lines.Add('First unsent document number = ' + IntToStr(fptr.getParamInt(fptr.LIBFPTR_PARAM_DOCUMENT_NUMBER)));
  mmAtolLog.Lines.Add('First unsent document date = ' + DateTimeToStr(fptr.getParamDateTime(fptr.LIBFPTR_PARAM_DATE_TIME)));

  // Завершение работы
  mmAtolLog.Lines.Add(sTire70);
  mmAtolLog.Lines.Add('Запуск завершения соединения с ККТ...');
  fptr.close;
  mmAtolLog.Lines.Add('Завершение соединения с ККТ произведено!');

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
  mmAtolLog.Lines.Add('Дата: '+sDate+'  '+sTime+'    Печать "Добрый день!".');
  mmAtolLog.Lines.Add(sTire99);

  mmAtolLog.Lines.Add('Подключаем драйвер Атол....');

  fptr:=CreateOleObject('AddIn.Fptr10');  // Подключаем драйвер

  mmAtolLog.Lines.Add('Драйвер Атол подключен успешно.');
  mmAtolLog.Lines.Add('Устанавливаем соединение с ККТ Атол...');
  fptr.open;                              // Установка соединения с ККТ
  mmAtolLog.Lines.Add('Соединение прошло успешно!');

  mmAtolLog.Lines.Add('Отправляем запрос на получение статуса ККТ Атол"...');

  fptr.setParam(fptr.LIBFPTR_PARAM_DATA_TYPE, fptr.LIBFPTR_DT_SHIFT_STATE);  // Запросс Состояния Смены ККТ
  fptr.queryData;

  state       := fptr.getParamInt(fptr.LIBFPTR_PARAM_SHIFT_STATE);
  number      := fptr.getParamInt(fptr.LIBFPTR_PARAM_SHIFT_NUMBER);
  DateTime    := fptr.getParamDateTime(fptr.LIBFPTR_PARAM_DATE_TIME);
  sDateTime:=formatDateTime('c',dateTime);
  if state=1 then sSmenaAtol:='Открыта';
  if state=0 then sSmenaAtol:='Закрыта';

  mmAtolLog.Lines.Add('Статус ККТ Атол" получен успешно:');
  mmAtolLog.Lines.Add('Статус: Смена '+sSmenaAtol);
  mmAtolLog.Lines.Add('Номер смены: '+intToStr(number));
  mmAtolLog.Lines.Add('Дата и время истечения текущей смены: '+sDateTime);

  mmAtolLog.Lines.Add('Отправляем на печать "Добрый день!"...');

  fptr.setParam(fptr.LIBFPTR_PARAM_TEXT, '****************************************');fptr.printText;

  fptr.setParam(fptr.LIBFPTR_PARAM_ALIGNMENT,fptr.LIBFPTR_ALIGNMENT_CENTER);
  fptr.setParam(fptr.LIBFPTR_PARAM_TEXT, 'Добрый День!   Смена '+sSmenaAtol);fptr.printText;

  fptr.setParam(fptr.LIBFPTR_PARAM_TEXT, '****************************************');fptr.printText;
  fptr.setParam(fptr.LIBFPTR_PARAM_TEXT, '');fptr.printText;
  fptr.setParam(fptr.LIBFPTR_PARAM_TEXT, '');fptr.printText;
  fptr.setParam(fptr.LIBFPTR_PARAM_TEXT, '');fptr.printText;

  mmAtolLog.Lines.Add('Печать "Добрый день!" прошла успешно.');
  mmAtolLog.Lines.Add('Завершаем соединение с ККТ Атол...');
  fptr.close;                            // Завершение соединения с ККТ
  mmAtolLog.Lines.Add('Соединение завершено успешно!');

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

    mmAtolLog.Lines.Add('Драйвер Атол подключен успешно!');
    mmAtolLog.Lines.Add('Версия драйвера: '+ssVersion);
    podklKKM:=1;

    mmAtolLog.Lines.Add('Проверка настроек драйвера Атол:');
    settings:= fptr.getSettings;
    mmAtolLog.Lines.Add(settings);

  except
    on E: Exception do
    begin
      podklKKM:=2;
      mmAtolLog.Lines.Add('Ошибка при подключении к драйверу Атол:');
      mmAtolLog.Lines.Add(E.Message);
      mmAtolLog.Lines.Add('Необходимо повторить подключение драйвера ККМ!');

      ShowMessage('Ошибка при подключении к драйверу Атол: '+E.Message+#13+#13+'Необходимо повторить подключение драйвера ККМ!');
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
  Writeln(F,'NumCheck=Пробная печать');
  Writeln(F,'AuthorName=КАССИР');
  Writeln(F,'AuthorINN='+ssKKM_kassir_inn);
  Writeln(F,'AuthorCaption='+ssKKM_kassir);
  Writeln(F,'VERSION_FFD=1.05');
  Writeln(F,'Oplata=');
  Writeln(F,'Name=0');
  Writeln(F,'CHECKSHAPKA1=        Компания Тенториум');
  Writeln(F,'CHECKSHAPKA2=          Сервисный Центр');
  Writeln(F,'CHECKSHAPKA3=        Спасибо за покупку!');
  Writeln(F,'CHECKSHAPKA4=           Ждем Вас еще!');
  Writeln(F,'PRINTQRCODE=Компания Тенториум!');

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
  Writeln(F,'Пробная печать товар 1');
  Writeln(F,'1');
  Writeln(F,'50');
  Writeln(F,'-1');
  Writeln(F,'Пробная печать товар 2');
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
      ShowMessage('Необходимо обязательно выбрать "Тип ККМ" на предыдущей страничке "Атол" или "Штрих-М"!');
    end;

    Screen.Cursor:=crDefault;
  end
  else
  begin
    Screen.Cursor:=crDefault;
    ShowMessage('Отсутствует программа для работы с ККМ !'+#13+sZapNew);
  end;
end;

procedure TfmKKM.bbAtolInformationClick(Sender: TObject);
Var
  isOpened: LongBool;         //Проверка состояния логического соединения
  sIsOpened:ShortString;

  shiftState:Longint;     // состояние смены
  serialNumber:String;    // Серийный номер:
  modelName:String;       // Название ККТ
  firmwareVersion:String; // Версия ПО ККТ
  sVersion:String;        // Версия Драйвера

  firmwareVersionKKT:String; // Версия прошивки

  state:Longint;          // Состояние смены
  number:Longint;         // Номер смены
  dateTime:TDateTime;     // Дата и время истечения текущей смены
  sDateTime,sDate,sTime,stateStr:ShortString;
  i:Word;
begin
  Screen.Cursor:=crHourGlass;

  CoInitialize(nil);

  sDate:=formatDateTime('yyyy/mm/dd',date);
  sTime:=TimetoSTR(Time);

  mmAtolLog.Clear;

  mmAtolLog.Lines.Add(sTire99);
  mmAtolLog.Lines.Add('Дата: '+sDate+'  '+sTime+'    Вывод информации о ККТ Атол".');
  mmAtolLog.Lines.Add(sTire99);

  mmAtolLog.Lines.Add('Подключаем драйвер Атол....');
  fptr:=CreateOleObject('AddIn.Fptr10');  // Подключаем драйвер
  mmAtolLog.Lines.Add('Драйвер Атол подключен успешно.');
  mmAtolLog.Lines.Add('Устанавливаем соединение с ККТ Атол...');
  fptr.open;                              // Установка соединения с ККТ
  //mmAtolLog.Lines.Add('Соединение прошло успешно!');

  isOpened:=fptr.isOpened;    //Проверка состояния логического соединения
  if isOpened=true then sIsOpened:='Соединение Установлено (true)';
  if isOpened=false then sIsOpened:='Соединение Неустановлено (false)';
  mmAtolLog.Lines.Add(sIsOpened);

  if isOpened=true then
  begin
    // Получаем версию Драйвера
    sVersion:= fptr.version;
    mmAtolLog.Lines.Add(sTire70);
    mmAtolLog.Lines.Add('Версия драйвера Атол: '+sVersion);

    // Получаем общую информацию и статус
    //----------------------------------------------------------
    fptr.setParam(fptr.LIBFPTR_PARAM_DATA_TYPE, fptr.LIBFPTR_DT_STATUS);
    fptr.queryData;

    shiftState      := fptr.getParamInt(fptr.LIBFPTR_PARAM_SHIFT_STATE);
    serialNumber    := fptr.getParamString(fptr.LIBFPTR_PARAM_SERIAL_NUMBER);
    modelName       := fptr.getParamString(fptr.LIBFPTR_PARAM_MODEL_NAME);
    firmwareVersion := fptr.getParamString(fptr.LIBFPTR_PARAM_UNIT_VERSION);

    mmAtolLog.Lines.Add(sTire70);
    //mmAtolLog.Lines.Add('Статус :'+intToStr(shiftState));
    mmAtolLog.Lines.Add('Версия ПО ККТ: '+firmwareVersion);
    mmAtolLog.Lines.Add('Название ККТ: '+modelName);
    mmAtolLog.Lines.Add('Серийный номер: '+serialNumber);

    // Получаем версию прошивки
    //----------------------------------------------------------
    fptr.setParam(fptr.LIBFPTR_PARAM_DATA_TYPE, fptr.LIBFPTR_DT_UNIT_VERSION);
    fptr.setParam(fptr.LIBFPTR_PARAM_UNIT_TYPE, fptr.LIBFPTR_UT_FIRMWARE);
    fptr.queryData;
    firmwareVersionKKT:= fptr.getParamString(fptr.LIBFPTR_PARAM_UNIT_VERSION);
    mmAtolLog.Lines.Add(sTire70);
    mmAtolLog.Lines.Add('Версия прошивки: '+firmwareVersionKKT);
    // Получаем информацию с состояние смены
    //----------------------------------------------------------
    fptr.setParam(fptr.LIBFPTR_PARAM_DATA_TYPE, fptr.LIBFPTR_DT_SHIFT_STATE);
    fptr.queryData;

    state       := fptr.getParamInt(fptr.LIBFPTR_PARAM_SHIFT_STATE);
    stateStr    := fptr.getParamInt(fptr.LIBFPTR_PARAM_SHIFT_STATE);
    number      := fptr.getParamInt(fptr.LIBFPTR_PARAM_SHIFT_NUMBER);
    dateTime    := fptr.getParamDateTime(fptr.LIBFPTR_PARAM_DATE_TIME);
    sDateTime:=formatDateTime('c',dateTime);

    if state=1 then sSmenaAtol:='Открыта';
    if state=0 then sSmenaAtol:='Закрыта';

    mmAtolLog.Lines.Add(sTire70);
    mmAtolLog.Lines.Add('Состояние Смены: '+sSmenaAtol+' (параметр state='+intToStr(state)+') ');
    mmAtolLog.Lines.Add('Номер смены: '+intToStr(number));
    mmAtolLog.Lines.Add('Дата и время истечения текущей смены: '+sDateTime);

    // Получение информации о неотправленных документах
    fptr.setParam(fptr.LIBFPTR_PARAM_FN_DATA_TYPE, fptr.LIBFPTR_FNDT_OFD_EXCHANGE_STATUS);
    fptr.fnQueryData;

    mmAtolLog.Lines.Add(sTire70);
    mmAtolLog.Lines.Add('Количество неотправленных документов: ' + IntToStr(fptr.getParamInt(fptr.LIBFPTR_PARAM_DOCUMENTS_COUNT)));
    mmAtolLog.Lines.Add('Номер первого неотправленного документа: ' + IntToStr(fptr.getParamInt(fptr.LIBFPTR_PARAM_DOCUMENT_NUMBER)));
    mmAtolLog.Lines.Add('Дата и время первого неотправленного документа: ' + DateTimeToStr(fptr.getParamDateTime(fptr.LIBFPTR_PARAM_DATE_TIME)));
    mmAtolLog.Lines.Add(sTire70);

    mmAtolLog.Lines.Add('Завершения соединения с ККТ...');

    fptr.close;                 // Завершение соединения с ККТ

    isOpened:=fptr.isOpened;    //Проверка состояния логического соединения
    if isOpened=true then sIsOpened:='Соединение Установлено (параметр isOpened=true)';
    if isOpened=false then sIsOpened:='Соединение Завершено (параметр isOpened=false)';

    mmAtolLog.Lines.Add(sIsOpened);
  end
  else
  begin
    mmAtolLog.Lines.Add(' - Кассовый аппарат Атол должен быть включен и подключен к компьютреу через USB-порт.');
    mmAtolLog.Lines.Add(' - Кассовый аппарат Атол должен должен работать в режиме ФР (фискальный регистратор).');
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
  isOpened: LongBool;         //Проверка состояния логического соединения
  sIsOpened:ShortString;
  sDate,sTime:ShortString;
  i:Word;

begin
  CoInitialize(nil);

  sDate:=formatDateTime('yyyy/mm/dd',date);
  sTime:=TimetoSTR(Time);

  mmAtolLog.Clear;

  mmAtolLog.Lines.Add(sTire99);
  mmAtolLog.Lines.Add('Дата: '+sDate+'  '+sTime+'    Закрываем Смену:"');
  mmAtolLog.Lines.Add(sTire99);

  mmAtolLog.Lines.Add('Подключаем драйвер Атол....');
  fptr:=CreateOleObject('AddIn.Fptr10');  // Подключаем драйвер
  mmAtolLog.Lines.Add('Драйвер Атол подключен успешно.');
  mmAtolLog.Lines.Add('Устанавливаем соединение с ККТ Атол...');
  fptr.open;                              // Установка соединения с ККТ
  mmAtolLog.Lines.Add('Соединение прошло успешно!');

  isOpened:=fptr.isOpened;    //Проверка состояния логического соединения
  if isOpened=true then sIsOpened:='Соединение Установлено (true)';
  if isOpened=false then sIsOpened:='Соединение Неустановлено (false)';
  mmAtolLog.Lines.Add(sIsOpened);

  fptr.setParam(1021, 'Кассир '+UTF8Encode(newS5(ssKKM_kassir)));
  fptr.setParam(1203, ssKKM_kassir_INN);
  fptr.operatorLogin;

  fptr.setParam(fptr.LIBFPTR_PARAM_REPORT_TYPE, fptr.LIBFPTR_RT_CLOSE_SHIFT);
  fptr.setParam(Fptr.LIBFPTR_PARAM_REPORT_ELECTRONICALLY, 1);  // Это чтобы не печатать отчет о зарытиии смены
  fptr.report;    // Закрытие смены

  fptr.checkDocumentClosed;

  if fptr.checkDocumentClosed=0 then mmAtolLog.Lines.Add('Смена закрыта успешно.');
  mmAtolLog.Lines.Add(fptr.errorDescription);

  While fptr.checkDocumentClosed <> 0 do
  begin
    // Не удалось проверить состояние документа. Вывести пользователю текст ошибки, попросить устранить неполадку и повторить запрос
    showmessage(fptr.errorDescription);
    Continue;
  end;

  mmAtolLog.Lines.Add(sTire70);
  mmAtolLog.Lines.Add('Запуск завершения соединения с ККТ...');
  fptr.close;                 // Завершение соединения с ККТ
  mmAtolLog.Lines.Add('Завершение соединения с ККТ произведено!');

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
  isOpened: LongBool;         //Проверка состояния логического соединения
  sIsOpened:ShortString;
  sDate,sTime:ShortString;
  i:Word;

begin
  CoInitialize(nil);

  sDate:=formatDateTime('yyyy/mm/dd',date);
  sTime:=TimetoSTR(Time);

  mmAtolLog.Clear;

  mmAtolLog.Lines.Add(sTire99);
  mmAtolLog.Lines.Add('Дата: '+sDate+'  '+sTime+'    X-Отчет:"');
  mmAtolLog.Lines.Add(sTire99);

  mmAtolLog.Lines.Add('Подключаем драйвер Атол....');
  fptr:=CreateOleObject('AddIn.Fptr10');  // Подключаем драйвер
  mmAtolLog.Lines.Add('Драйвер Атол подключен успешно.');
  mmAtolLog.Lines.Add('Устанавливаем соединение с ККТ Атол...');
  fptr.open;                              // Установка соединения с ККТ
  mmAtolLog.Lines.Add('Соединение прошло успешно!');

  isOpened:=fptr.isOpened;    //Проверка состояния логического соединения
  if isOpened=true then sIsOpened:='Соединение Установлено (true)';
  if isOpened=false then sIsOpened:='Соединение Неустановлено (false)';
  mmAtolLog.Lines.Add(sIsOpened);

  mmAtolLog.Lines.Add('Запуск X-Отчёта...');
  fptr.setParam(fptr.LIBFPTR_PARAM_REPORT_TYPE, fptr.LIBFPTR_RT_X);
  fptr.report;
  mmAtolLog.Lines.Add('X-Отчёт выполнен успешно!');

  mmAtolLog.Lines.Add(sTire70);
  mmAtolLog.Lines.Add('Запуск завершения соединения с ККТ...');
  fptr.close;                 // Завершение соединения с ККТ
  mmAtolLog.Lines.Add('Завершение соединения с ККТ произведено!');

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
  IF MessageDlg('Действительно произвести Открытие Смены?',
  mtConfirmation,[mbYes, mbNo],0) = mrYes then
  begin
    mmInfoMerc.Lines.Clear;
    Screen.Cursor:=crHourGlass;

    bbOpenSessionRabClick(Sender);   // Открыли сессию

    if (sessionKey<>'')and(ssResultKKM='0') then
    begin
      TextJSON:='{"sessionKey": "'+sessionKey+'", "command": "OpenShift", "printDoc": true, "cashierInfo": {"cashierName": "'+UTF8Encode(newS5(ssKKM_kassir))+'", "cashierINN": "'+ssKKM_kassir_INN+'"} }';
      mmInfo.Lines.Add('Открытие Смены запрос: '+UTF8Decode(TextJSON));
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

        mmInfo.Lines.Add('Открытие Смены ответ: '+ssOtwet);
        mmInfo.Lines.Add('-----------------------------------------------------------------------------------');

        bbCloseSessionRabClick(Sender);  // Закрыли сессию

        Screen.Cursor:=crDefault;
        mmInfoMerc.Lines.Add('Открытие Смены произведено успешно!');
        ShowMessage('Открытие Смены произведено успешно!');
      except
        on E:Exception do
        begin
          Screen.Cursor:=crDefault;
          mmInfo.Lines.Add('Ошибка: '+E.Message);
          mmInfoMerc.Lines.Add('Открытие Смены произошла ошибка: '+E.Message);
          ShowMessage('Ошибка: '+E.Message);
          Exit;
        end;
      end;
    end
    else
    begin
      Screen.Cursor:=crDefault;
      ShowMessage('Не получен Ключ Сессии от ККТ "'+ssNameKKM+'"!'+#13+'Или отсутствует связь с ККТ "'+ssNameKKM+'"!');
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

  bbOpenSessionRabClick(Sender);   // Открыли сессию
  try
    TextJSON1:='{"sessionKey": "'+sessionKey+'", "command": "PrintText", "text": "АаБбВвГгДдEeЁёЖжЗзИиИйКкЛлМмНнОо" }';
    TextJSON2:='{"sessionKey": "'+sessionKey+'", "command": "PrintText", "text": "ПпРрСсТтУуФфХхЦцЧчШшЩщъыьЭэЮюЯя" }';
    TextJSON3:='{"sessionKey": "'+sessionKey+'", "command": "PrintText", "text": "Аа_Бб_Вв_Гг_Дд_Ee_Ёё_Жж_Зз_Ии_Ий_Кк_Лл_Мм_Нн_Оо_Пп_Рр_Сс_Тт_Уу_Фф_Хх_Цц_Чч_Шш_Щщ_Ъъ_Ыы_ЬьЭэ_Юю_Яя" }';
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
    mmInfo.Lines.Add('На печать отправлен текст "'+edSimbol.Text+'"');
    mmInfo.Lines.Add('*****************************************************************************************');

    Http2.Free;

  except
    on E:Exception do
    begin
      Screen.Cursor:=crDefault;
      mmInfo.Lines.Add('Ошибка: '+E.Message);
      ShowMessage('Ошибка: '+E.Message);
      Exit;
    end;
  end;

  bbCloseSessionRabClick(Sender);  // Закрыли сессию
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

  bbOpenSessionRabClick(Sender);   // Открыли сессию

  if (sessionKey<>'')and(ssResultKKM='0') then
  begin
    TextJSON:='{"sessionKey": "'+sessionKey+'", "command": "OpenCheck", "checkType": '+ssTipKKMdel+', "taxSystem": '+ssMerkNalog+ssPrintKKT+', "cashierInfo": {"cashierName": "'+UTF8Encode(newS5(ssKKM_kassir))+'", "cashierINN": "'+ssKKM_kassir_INN+'"}}';
    newssInfoPrix:=TStringStream.Create(TextJSON);
    ssMcInfo:='';

    try
      mmInfo.Lines.Add('Открытие Чека запрос: '+UTF8Decode(TextJSON));

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
      mmInfo.Lines.Add('Открытие Чека ответ: '+ssOtwet);

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

      // Добавляем товарные позиции
      mmInfo.Lines.Add('формируем товар:');

      ssResultKKM:='0';

      if (ssResultKKM='0') then
      begin
        Http2:=TIdHTTP.Create(nil);
        HTTP2.Request.ContentType:='application/json; charset=utf-8';
        HTTP2.ReadTimeout:=10000;

        //ssTaxCode:='6';  // Без НДС
        //ssTaxCode:='1';  // 20% НДС

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

      // Отправляем Чек

      if ssTipNalKKM='nal' then
      begin
        ssCash:='cash';     // Наличные
      end;

      if ssTipNalKKM='beznal' then
      begin
        ssCash:='ecash';   // Безналичные
      end;

      TextJSON:='{"sessionKey": "'+sessionKey+'", "command": "CloseCheck"'+ssEmailKKT+', "payment": { "'+ssCash+'": '+ssSummaKKM+' } }';


      mmInfo.Lines.Add('Закрытие Чека запрос: '+TextJSON);

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
      mmInfo.Lines.Add('Закрытие Чека ответ: '+ssOtwet);

      bbCloseSessionRabClick(Sender);  // Закрыли сессию

      mmInfo.Lines.Add('Обслуживание товара произведено успешно!');

      ssEmailKKT:='';
      ssPrintKKT:=', "printDoc": true';

      Screen.Cursor:=crDefault;
    except
      on E:Exception do
      begin
        Screen.Cursor:=crDefault;
        mmInfo.Lines.Add('Ошибка:'+E.Message);
        Screen.Cursor:=crDefault;
        ShowMessage('Ошибка:'+E.Message);
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
    ShowMessage('Не получен Ключ Сессии от ККТ "'+ssNameKKM+'"!'+#13+'Или отсутствует связь с ККТ "'+ssNameKKM+'"!');
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
    mmInfo.Lines.Add('Ошибка инициализации AddIn.DrvFR')
  end;

  v.Password:=30;

  v.ConnectionType:=0;

  //v.ConnectionType:=5;  Эмуляция

  v.CheckType:=0;

  v.Quantity:=1000;
  v.Price:=1.56;
  v.Department:=1;

  v.Tax1:=1;
  v.Tax2:=2;
  v.Tax3:=0;
  v.Tax4:=0;
  v.StringForPrinting:= 'Спичечный коробок';
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
  ShowMessage('Успешно!');
end;

procedure TfmKKM.bbZakKKMClick(Sender: TObject);
begin
  close;
end;

procedure TfmKKM.bbZakSesiyMercClick(Sender: TObject);
begin
  mmInfoMercChZnak.Lines.Add('Закрываем сессию, дальше надо подумать над закрытием сессии при добавлении нескольких товаров в ЧЗ');
  fmKKM.bbCloseSessionRabClick(Sender);
  mmInfoMercChZnak.Lines.Add('Сесиия закрыта');
  mmInfoMercChZnak.Lines.Add('-----------------------------------------------------------------------------------------');
end;

procedure TfmKKM.bbZotchetClick(Sender: TObject);
Var
  TextJSON,ssOtwet:String;
  newSS:TStringStream;
begin
  IF MessageDlg('Действительно произвести отправку отчёта о Текущем Состоянии?',
  mtConfirmation,[mbYes, mbNo],0) = mrYes then
  begin
    Screen.Cursor:=crHourGlass;
    mmInfoMerc.Lines.Clear;
    bbOpenSessionRabClick(Sender);   // Открыли сессию

    if (sessionKey<>'')and(ssResultKKM='0') then
    begin
      TextJSON:='{"sessionKey": "'+sessionKey+'", "command": "ReportStatusOfSettlements", "cashierInfo": {"cashierName": "'+UTF8Encode(newS5(ssKKM_kassir))+'", "cashierINN": "'+ssKKM_kassir_INN+'"} }';
      mmInfo.Lines.Add('Отчёт о Текущем Состоянии запрос: '+UTF8Decode(TextJSON));
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

        mmInfo.Lines.Add('Отчёт о Текущем Состоянии ответ: '+TextJSON);
        mmInfo.Lines.Add('-----------------------------------------------------------------------------------');

        bbCloseSessionRabClick(Sender);  // Закрыли сессию

        mmInfoMerc.Lines.Add('Отчёт о Текущем Cостоянии сформирован успешно!');
        Screen.Cursor:=crDefault;
        ShowMessage('Отчёт о Текущем Состоянии сформирован успешно!');
      except
        on E:Exception do
        begin
          Screen.Cursor:=crDefault;
          mmInfo.Lines.Add('Ошибка: '+E.Message);
          mmInfoMerc.Lines.Add('Отчёт о Текущем состоянии произошла Ошибка: '+E.Message);
          ShowMessage('Ошибка: '+E.Message);
          Exit;
        end;
      end;
    end
    else
    begin
      Screen.Cursor:=crDefault;
      ShowMessage('Не получен Ключ Сессии от ККТ "'+ssNameKKM+'"!'+#13+'Или отсутствует связь с ККТ "'+ssNameKKM+'"!');
    end;
  end;
end;

procedure TfmKKM.bbZotchetStrihMClick(Sender: TObject);
begin
  if (FileExists(sZapNew)=True) then
  begin
  IF MessageDlg('Действительно произвести отправку Z-Отчёта?',
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
    mmInfoShtrih.Lines.Add('Команда выполнить Z-Отчёт отправлена на ККТ');
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
    ShowMessage('Команда выполнить Z-Отчёт отправлена на ККТ успешно!');
  end;
  end
  else
  begin
    ShowMessage(' Не найден файл: '+sZapNew);
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
    mmInfo.Lines.Add('Открытие Cессии запрос: '+TextJSON);

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

    mmInfo.Lines.Add('Открытие Cессии ответ от INECRMAN: '+ssOtwet);

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
      mmInfo.Lines.Add('Ошибка:'+E.Message);
      ShowMessage('Ошибка:'+E.Message);
      Exit;
    end;
  end;
end;

procedure TfmKKM.Button21Click(Sender: TObject);
Var
  TextJSON,ssOtwet:String;
begin
  IF MessageDlg('Действительно произвести отмену Кассового Чека при зависании программы?',
  mtConfirmation,[mbYes, mbNo],0) = mrYes then
  begin
    mmInfo.Clear;
    Screen.Cursor:=crHourGlass;

    bbOpenSessionRabClick(Sender);   // Открыли сессию

    if (sessionKey<>'')and(ssResultKKM='0') then
    begin
      TextJSON:='{"sessionKey": "'+sessionKey+'","command": "ResetCheck"}';
      mmInfo.Lines.Add('Отмена Чека запрос: '+TextJSON);
      try
        Http2:=TIdHTTP.Create(nil);
        HTTP2.Request.ContentType:='application/json; charset=utf-8';
        HTTP2.ReadTimeout:=10000;

        PostDataJSON:=TStringStream.Create;
        PostDataJSON.WriteString(TextJSON);
        ssOtwet:=HTTP2.Post(ssWebRestKKM,PostDataJSON);

        Http2.Free;

        bbCloseSessionRabClick(Sender);  // Закрыли сессию

        mmInfo.Lines.Add('Отмена Чека ответ: '+ssOtwet);
        Screen.Cursor:=crDefault;
        ShowMessage('Отмена Чека произведена успешно!');
      except
        on E:Exception do
        begin
          Screen.Cursor:=crDefault;
          mmInfo.Lines.Add('Ошибка: '+E.Message);
          ShowMessage('Ошибка: '+E.Message);
          Exit;
        end;
      end;
    end
    else
    begin
      Screen.Cursor:=crDefault;
      ShowMessage('Не получен Ключ Сессии!'+#13+'Или не произошла свяь с ККТ!');
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

  // Соединение с ККТ
  fptr.open;
  // Получение информации о неотправленных документах
  fptr.setParam(fptr.LIBFPTR_PARAM_FN_DATA_TYPE, fptr.LIBFPTR_FNDT_OFD_EXCHANGE_STATUS);
  // состояние смены, Версия ККТ,
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

  bbOpenSessionRabClick(Sender);   // Открыли сессию
  try
    TextJSON:='{"sessionKey": "'+sessionKey+'", "command": "PrintText", "text": "'+UTF8Encode('Добрый день!')+'" }';

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
    mmInfo.Lines.Add('Тестирование связи с ККТ произведено успешно!');
    mmInfo.Lines.Add('На печать отправлено приветствие "Добрый день!"');
    mmInfo.Lines.Add('Если приветствие распечаталось на ККТ, то Меркурий готов к работе!');
    mmInfo.Lines.Add('*****************************************************************************************');

    Http2.Free;
  except
    on E:Exception do
    begin
      Screen.Cursor:=crDefault;
      mmInfo.Lines.Add('Ошибка: '+E.Message);
      ShowMessage('Ошибка: '+E.Message);
      Exit;
    end;
  end;

  bbCloseSessionRabClick(Sender);  // Закрыли сессию
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
  mmAtolLog.Lines.Add('Дата: '+sDate+'  '+sTime+'    Запрос на Очистку данных для Честного Знака.');
  mmAtolLog.Lines.Add(sTire99);

  mmAtolLog.Lines.Add('Подключаем драйвер Атол....');

  fptr:=CreateOleObject('AddIn.Fptr10');  // Подключаем драйвер

  mmAtolLog.Lines.Add('Драйвер Атол подключен успешно.');
  mmAtolLog.Lines.Add('Устанавливаем соединение с ККТ Атол...');
  fptr.open;                              // Установка соединения с ККТ
  mmAtolLog.Lines.Add('Соединение прошло успешно!');

  mmAtolLog.Lines.Add('Отправляем запрос на Очистку данных для Честного Знака...');

  mmAtolLog.Lines.Add('Очистку данных для Честного Знака прошла успешно.');
  mmAtolLog.Lines.Add('Завершаем соединение с ККТ Атол...');
  fptr.close;                            // Завершение соединения с ККТ
  mmAtolLog.Lines.Add('Соединение завершено успешно!');

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

  mmInfoMercChZnak.Lines.Add('Открыть сессию');  // Открыли сессию
  mmInfoMercChZnak.Lines.Add('-----------------------------------------------------------------------------------------');
  mmInfoMercChZnak.Lines.Add('Ответ:'+JsonValue.ToJSON );
  mmInfoMercChZnak.Lines.Add('key:'+ssJSONkey);
  mmInfoMercChZnak.Lines.Add('rezult:'+ssJSONrezult);
  mmInfoMercChZnak.Lines.Add('description:'+ssJSONdescription);

  //1
  mmInfoMercChZnak.Lines.Add('-----------------------------------------------------------------------------------------');
  mmInfoMercChZnak.Lines.Add('Очистка фискального накопителя командой "ClearMarkingCodeValidationTable"');
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

    mmInfoMercChZnak.Lines.Add('Ответ:'+ssOtwet);
    mmInfoMercChZnak.Lines.Add('-----------------------------------------------------------------------------------------');
    mmInfoMercChZnak.Lines.Add('Очистка фискального накопителя завершена');
    mmInfoMercChZnak.Lines.Add('-----------------------------------------------------------------------------------------');

    Http2.Free;
  except
    on E:Exception do
    begin
      Screen.Cursor:=crDefault;

      mmInfoMercChZnak.Lines.Add('Ошибка:'+E.Message);
      mmInfoMercChZnak.Lines.Add('-----------------------------------------------------------------------------------------');
      //ShowMessage('Ошибка:'+E.Message);
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
    mmInfo.Lines.Add('Закрытие Сессии запрос: '+TextJSON);

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

    mmInfo.Lines.Add('Закрытие Сессии ответ от INECRMAN: '+ssOtwet);

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

    mmInfo.Lines.Add(ssDate+' / '+ssTime+'  За: '+intToStr(s1)+','+intToStr(ms1)+' s.');
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
      mmInfo.Lines.Add('Ошибка:'+E.Message);
      ShowMessage('Ошибка:'+E.Message);
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
  ShowMessage('Ошибка:'+Format('(%d) %s', [ResultCode, ResultCodeDescription]));
  //WriteLogToFile('Ошибка фискального регистратора: '+Format('(%d) %s', [ResultCode, ResultCodeDescription]));
  //Application.MessageBox(PAnsiChar('Ошибка фискального регистратора!'+#13+Format('(%d) %s', [ResultCode, ResultCodeDescription])),'Ошибка ККМ',MB_ICONSTOP);
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
    DrvFR.ValueOfFieldString:='КАССИР '+'ФИО Кассир';
    DrvFR.WriteTable;
    //FWait.Close;
  end
  else
  begin
    GetErrorFR;
  end;

  if DrvFR.GetShortECRStatus=0 then ShowMessage('Режим ККМ: '+DrvFR.ECRModeDescription+#13+'Подрежим ККМ:'+DrvFR.ECRAdvancedModeDescription)
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
  if GetVolumeInformation('c:\',Buffer,SizeOf(Buffer),@SerialNum,a,b,nil,0) then ssNomerWint:=IntToStr(SerialNum);  // номер винта

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
    1:begin ssKKM_tip:='atol'; ssNameKKM:='Атол';end;
    2:begin ssKKM_tip:='shtrih'; ssNameKKM:='Штрих-М';end;
    3:begin ssKKM_tip:='evator'; ssNameKKM:='Эвотор';end;
    4:begin ssKKM_tip:='merkuriy'; ssNameKKM:='Меркурий';end;
    5:begin ssKKM_tip:='atolNew'; ssNameKKM:='Атол';end;
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
    writeln(F,ssKKM_tip);     // Тип ККМ Атол или Штрих-М
    writeln(F,ssKKM_kassir);
    writeln(F,ssKKM_kassir_INN);
    writeln(F,ssKKM_str1);
    writeln(F,ssKKM_str2);
    writeln(F,ssKKM_str3);
    writeln(F,ssKKM_str4);
    writeln(F,ssKKM_pusk);   // Запуск внешней программы
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

  ShowMessage('Параметры для печати Кассового Чека сохранены успешно!');
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
    mmInfoAtolShtrih.Lines.Add('Ошибка инициализации AddIn.DrvFR')
  end;

  shrih_glDrvFR.Password:=glKasAdmPassFK;

  if shrih_glDrvFR.Beep<>0 then mmInfoAtolShtrih.Lines.Add(''+shrih_glDrvFR.ResultCodeDescription);

  mmInfoAtolShtrih.Lines.Add('Покажем свойства драйвера....');
  shrih_glDrvFR.ShowProperties;

  //mminfoAtol.Lines.Add('Если свойства драйвера Вы увидели то это не значит, что с ККМ есть связь....');

  {
  mminfoAtol.Lines.Add('попытка распечатать на ККМ ШТРИХ...');

  for i:=0 to 3 do begin
    shrih_glDrvFR.Password:=glKasAdmPassFK;
    shrih_glDrvFR.UseReceiptRibbon:=true; //Печать на чеке
    shrih_glDrvFR.UseJournalRibbon:=true;//Не печатать в операционном журнале
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
  Writeln(F,'      Добрый день!');
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
  mmInfoShtrih.Lines.Add('Тестирование связи с ККТ произведено успешно!');
  mmInfoShtrih.Lines.Add('На печать отправлено приветствие "Добрый день!"');
  mmInfoShtrih.Lines.Add('Если приветствие распечаталось на ККТ, то устройство готово к работе!');
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
    ShowMessage(' Не найден файл: '+sZapNew);
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
    mmInfoAtolShtrih.Lines.Add('Ошибка инициализации AddIn.DrvFR')
  end;

  shrih_glDrvFR.Password:=glKasAdmPassFK;

  if shrih_glDrvFR.Beep<>0 then mmInfoAtolShtrih.Lines.Add(''+shrih_glDrvFR.ResultCodeDescription);
    mmInfoAtolShtrih.Lines.Add('Запущена тестовая печать....');
  //shrih_glDrvFR.ShowProperties;

  for i:=0 to 6 do begin
    shrih_glDrvFR.Password:=glKasAdmPassFK;
    shrih_glDrvFR.UseReceiptRibbon:=true; //Печать на чеке
    shrih_glDrvFR.UseJournalRibbon:=true;//Не печатать в операционном журнале
    //shrih_glDrvFR.StringForPrinting:='test-apimlm_'+intToStr(i);
    shrih_glDrvFR.StringForPrinting:='Тест-АпиМлм_'+intToStr(i);
    shrih_glDrvFR.PrintString;
    //if shrih_glDrvFR.PrintString<>0 then mmInfo.Lines.Add(''+shrih_glDrvFR.ResultCodeDescription);
    shrih_glDrvFR.StringForPrinting:='---------------------------';
    shrih_glDrvFR.PrintString;
    //if shrih_glDrvFR.PrintString<>0 then mmInfo.Lines.Add(''+shrih_glDrvFR.ResultCodeDescription);
  end;

  shrih_glDrvFR.BarCode:='Компания Тенториум!';
  shrih_glDrvFR.PrintBarCode;

  shrih_glDrvFR.Disconnect;
end;

procedure TfmKKM.bbXotchetClick(Sender: TObject);
Var
  TextJSON,ssOtwet:String;
  newSS:TStringStream;
begin
  IF MessageDlg('Действительно произвести отправку Отчёта за Смену?',
  mtConfirmation,[mbYes, mbNo],0) = mrYes then
  begin
    Screen.Cursor:=crHourGlass;
    mmInfoMerc.Lines.Clear;
    bbOpenSessionRabClick(Sender);   // Открыли сессию

    if (sessionKey<>'')and(ssResultKKM='0') then
    begin
      TextJSON:='{"sessionKey": "'+sessionKey+'", "command": "PrintReport", "reportCode": 1 }';
      mmInfo.Lines.Add('Общий Отчёт за Смену запрос: '+UTF8Decode(TextJSON));
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
        mmInfo.Lines.Add('Общий Отчёт за Смену ответ: '+ssOtwet);
        mmInfo.Lines.Add('-----------------------------------------------------------------------------------');

        Http2.Free;

        bbCloseSessionRabClick(Sender);  // Закрыли сессию

        mmInfoMerc.Lines.Add('Общий Отчёт за Смену сформирован успешно!');

        Screen.Cursor:=crDefault;
        ShowMessage('Общий Отчёт за Смену сформирован успешно!');
      except
        on E:Exception do
        begin
          Screen.Cursor:=crDefault;
          mmInfo.Lines.Add('Ошибка: '+E.Message);
          mmInfoMerc.Lines.Add('Общий Отчёт за смену произошла ошибка: '+E.Message);
          Screen.Cursor:=crDefault;
          ShowMessage('Ошибка: '+E.Message);
          Exit;
        end;
      end;
    end
    else
    begin
      Screen.Cursor:=crDefault;
      ShowMessage('Не получен Ключ Сессии от ККТ "'+ssNameKKM+'"!'+#13+'Или отсутствует связь с ККТ "'+ssNameKKM+'"!');
    end;
  end;
end;

procedure TfmKKM.bbXotchetStrihMClick(Sender: TObject);
begin
  if (FileExists(sZapNew)=True) then
  begin
  IF MessageDlg('Действительно произвести отправку X-Отчёта?',
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
    mmInfoShtrih.Lines.Add('Команда выполнить X-Отчёт отправлена на ККТ');
    mmInfoShtrih.Lines.Add('*****************************************************************************************');

    if ssKKM_tip='shtrih' then
    begin
      ShellExecute(Application.handle, 'open', PChar(sZapNew), PChar( '/shtrih' ), nil, sw_Show);
    end;

    if ssKKM_tip='atol' then
    begin
      ShellExecute(Application.handle, 'open', PChar(sZapNew), PChar( '/atol' ), nil, sw_Show);
    end;

    ShowMessage('Команда выполнить X-Отчёт отправлена на ККТ успешно!');
    Screen.Cursor:=crDefault;
  end
  end
  else
  begin
    ShowMessage(' Не найден файл: '+sZapNew);
  end;
end;

procedure TfmKKM.Button4Click(Sender: TObject);
var
 Drv: TDrvFR;
begin
  Drv := TDrvFR.Create(nil); // Создание объекта драйвера
  try
    Drv.ConnectionType := 0; // подключение через TCP socket
    // Drv.ProtocolType := 0; // Стандартный протокол
    Drv.IPAddress := '192.168.0.2'; // IP адрес ККТ
    Drv.UseIPAddress := True; // Используем свойство IPAddress
  // для указания адреса ККТ
  // (в противном случае будет
  // использоваться свойство
  // ComputerName)
   Drv.TCPPort := 7778; // TCP Порт ККТ
   Drv.Timeout := 5000; // Таймаут в мс
   Drv.Password := 30; // Пароль системного администратора
  //Драйвер ККТ версия 4.15
  //–55–
   if Drv.Connect <> 0 then // Проверяем подключение
   raise Exception.Create(Drv.ResultCodeDescription);
   // Формируем продажу
   Drv.CheckType := 1; // Операция - приход
   Drv.Price := 44.4; // Цена за единицу товара
   // с учетом скидок
   Drv.Quantity := 4; // Количество
   // Drv.Summ1Enabled := True; // Указываем, что
   // сами рассчитываем цену
   Drv.Summ1 := 177.61; // Сумма позиции с учетом скидок
   // Drv.TaxValueEnabled := False; // Налог мы не рассчитываем
   Drv.Tax1 := 1; // НДС 18%
   Drv.Department := 1; // Номер отдела
   // Drv.PaymentTypeSign := 4; // Признак способа расчета (Полный расчет)
   // Необходим для ФФД 1.05
   // Drv.PaymentItemSign := 1; // Признак предмета расчета (Товар)
   // Необходим для ФФД 1.05
   Drv.StringForPrinting := 'Товар'; // Наименование товара
   // if Drv.FNOperation <> 0 then // Пробиваем позицию
   // raise Exception.Create(Drv.ResultCodeDescription);
   // Формируем закрытие чека
   Drv.Summ1 := 177.61; // Наличные
   Drv.Summ2 := 0; // Остальные типы оплаты нулевые,
   // но их необходимо заполнить
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
   // Drv.RoundingSumm := 0; // Сумма округления
   // Drv.TaxValue1 := 0; // Налоги мы не считаем
   // Drv.TaxValue2 := 0;
   // Drv.TaxValue3 := 0;
   // Drv.TaxValue4 := 0;
   // Drv.TaxValue5 := 0;
   // Drv.TaxValue6 := 0;
   // Drv.TaxType := 1; // Основная система налогообложения
   Drv.StringForPrinting := '';
   // if Drv.FNCloseCheckEx <> 0 then
   // raise Exception.Create(Drv.ResultCodeDescription);
  finally
  //Руководство программиста
  //–56–
   Drv.Free; // Освобождаем объект драйвера
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
  Driver := TDrvFR.Create(nil); // Создание объекта драйвера

  Driver.ConnectionType := 0; // подключение через TCP socket
// Drv.ProtocolType := 0; // Стандартный протокол
 Driver.IPAddress := '192.168.0.2'; // IP адрес ККТ
 Driver.UseIPAddress := True; // Используем свойство IPAddress
 // для указания адреса ККТ
// (в противном случае будет
 // использоваться свойство
 // ComputerName)
 Driver.TCPPort := 7778; // TCP Порт ККТ
 Driver.Timeout := 1000; // Таймаут в мс
 Driver.Password := 30; // Пароль системного администратора
//Драйвер ККТ версия 4.15
//–55–
 if Driver.Connect <> 0 then // Проверяем подключение
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


  Fdriver.Timeout := 1000; // Таймаут в мс
  Fdriver.Password := 30; // Пароль системного администратора
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
    mmInfo.Lines.Add('Ошибка инициализации AddIn.DrvFR')
  end;

  shrih_glDrvFR.Password:=glKasAdmPassFK;
  if shrih_glDrvFR.Beep<>0 then
    mmInfo.Lines.Add(''+shrih_glDrvFR.ResultCodeDescription);
    mmInfo.Lines.Add('Покажем свойства драйвера....');
  //shrih_glDrvFR.ShowProperties;

  mmInfo.Lines.Add('Если свойства драйвера Вы увидели то это не значит, что с ККМ есть связь....');
  mmInfo.Lines.Add('попытка распечатать на ККМ ШТРИХ...');

  for i:=0 to 3 do begin
    shrih_glDrvFR.Password:=glKasAdmPassFK;
    shrih_glDrvFR.UseReceiptRibbon:=true; //Печать на чеке
    shrih_glDrvFR.UseJournalRibbon:=true;//Не печатать в операционном журнале
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

    // Соединение с ККТ
    fptr.open;

    // Регистрация кассира
    fptr.setParam(1021, 'Иванов И.И.');
    fptr.setParam(1203, '500100732259');
    fptr.operatorLogin;

    // Открытие чека (с передачей телефона получателя)
    fptr.setParam(fptr.LIBFPTR_PARAM_RECEIPT_TYPE, fptr.LIBFPTR_RT_SELL);
    fptr.setParam(1008, '+79161234567');
    fptr.openReceipt;

    // Регистрация позиции
    fptr.setParam(fptr.LIBFPTR_PARAM_COMMODITY_NAME, 'Чипсы LAYS');
    fptr.setParam(fptr.LIBFPTR_PARAM_PRICE, 73.99);
    fptr.setParam(fptr.LIBFPTR_PARAM_QUANTITY, 5);
    fptr.setParam(fptr.LIBFPTR_PARAM_TAX_TYPE, fptr.LIBFPTR_TAX_VAT10);
    fptr.setParam(1212, 1);
    fptr.setParam(1214, 7);
    fptr.registration;

    // Регистрация итога (отбрасываем копейки)
    fptr.setParam(fptr.LIBFPTR_PARAM_SUM, 369.0);
    fptr.receiptTotal;

    // Оплата наличными
    fptr.setParam(fptr.LIBFPTR_PARAM_PAYMENT_TYPE, fptr.LIBFPTR_PT_CASH);
    fptr.setParam(fptr.LIBFPTR_PARAM_PAYMENT_SUM, 1000);
    fptr.payment;

    // Закрытие чека
    fptr.closeReceipt;
    showmessage(fptr.errorDescription);
    While fptr.checkDocumentClosed < 0 do
    begin
        // Не удалось проверить состояние документа. Вывести пользователю текст ошибки, попросить устранить неполадку и повторить запрос
        showmessage(fptr.errorDescription);
        Continue;
    end;

    if not fptr.getParamBool(fptr.LIBFPTR_PARAM_DOCUMENT_CLOSED) then
    begin
        // Документ не закрылся. Требуется его отменить (если это чек) и сформировать заново
        fptr.cancelReceipt;
        Exit;
    end;

    if not fptr.getParamBool(fptr.LIBFPTR_PARAM_DOCUMENT_PRINTED) then
    begin
        // Можно сразу вызвать метод допечатывания документа, он завершится с ошибкой, если это невозможно
        While fptr.continuePrint < 0 do
        begin
            // Если не удалось допечатать документ - показать пользователю ошибку и попробовать еще раз.
            showmessage('Не удалось напечатать документ (Ошибка "' + fptr.errorDescription + '"). Устраните неполадку и повторите.');
            Continue;
        end;
    end;

    // Запрос информации о закрытом чеке
    fptr.setParam(fptr.LIBFPTR_PARAM_FN_DATA_TYPE, fptr.LIBFPTR_FNDT_LAST_DOCUMENT);
    fptr.fnQueryData;
    showmessage('Fiscal Sign = ' + fptr.getParamString(fptr.LIBFPTR_PARAM_FISCAL_SIGN));
    showmessage('Fiscal Document Number = ' + IntToStr(fptr.getParamInt(fptr.LIBFPTR_PARAM_DOCUMENT_NUMBER)));

    // Формирование слипа ЕГАИС
    fptr.beginNonfiscalDocument;

    fptr.setParam(fptr.LIBFPTR_PARAM_TEXT, 'ИНН: 111111111111 КПП: 222222222');
    fptr.setParam(fptr.LIBFPTR_PARAM_ALIGNMENT, fptr.LIBFPTR_ALIGNMENT_CENTER);
    fptr.printText;

    fptr.setParam(fptr.LIBFPTR_PARAM_TEXT, 'КАССА: 1               СМЕНА: 11');
    fptr.setParam(fptr.LIBFPTR_PARAM_ALIGNMENT, fptr.LIBFPTR_ALIGNMENT_CENTER);
    fptr.printText;

    fptr.setParam(fptr.LIBFPTR_PARAM_TEXT, 'ЧЕК: 314  ДАТА: 20.11.2017 15:39');
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

    // Отчет о закрытии смены
    fptr.setParam(fptr.LIBFPTR_PARAM_REPORT_TYPE, fptr.LIBFPTR_RT_CLOSE_SHIFT);
    fptr.report;

    // Получение информации о неотправленных документах
    fptr.setParam(fptr.LIBFPTR_PARAM_FN_DATA_TYPE, fptr.LIBFPTR_FNDT_OFD_EXCHANGE_STATUS);
    fptr.fnQueryData;
    showmessage('Unsent documents count = ' + IntToStr(fptr.getParamInt(fptr.LIBFPTR_PARAM_DOCUMENTS_COUNT)));
    showmessage('First unsent document number = ' + IntToStr(fptr.getParamInt(fptr.LIBFPTR_PARAM_DOCUMENT_NUMBER)));
    showmessage('First unsent document date = ' + DateTimeToStr(fptr.getParamDateTime(fptr.LIBFPTR_PARAM_DATE_TIME)));

    // Завершение работы
    fptr.close;
    CoUninitialize();
end;

procedure TfmKKM.bbOformMercClick(Sender: TObject);
Var
  PrNaim,ssCenaMerc:ShortString;
  i,koltow:Word;

begin
  ssMcInfo:='';
  mmInfoMercChZnak.Lines.Add('Формирование атрибута "mcInfo" для добавления в "AddGoods"');
  mmInfoMercChZnak.Lines.Add('-----------------------------------------------------------------------------------------');

  ssMcInfo:=',"mcInfo":{"mc":"'+ssUIDmarkCodeBaza64+'","processingMode":0,"plannedStatus":1}';

  mmInfoMercChZnak.Lines.Add('Формирование атрибута "mcInfo" для добавления в "AddGoods" прошло успешно!');
  mmInfoMercChZnak.Lines.Add('-----------------------------------------------------------------------------------------');
  mmInfoMercChZnak.Lines.Add('mcInfo:'+ssMcInfo);
  mmInfoMercChZnak.Lines.Add('-----------------------------------------------------------------------------------------');
  mmInfoMercChZnak.Lines.Add('Запускаем отправку КМ в Чек и оформляем Чек');
  mmInfoMercChZnak.Lines.Add('Будут последовательно запущены команды: OpenSession,OpenCheck,AddGoods,CloseCheck,CloseSession');
  mmInfoMercChZnak.Lines.Add('-----------------------------------------------------------------------------------------');

  // Устонавливаем Тестовые значения по товару
  Kol_ed_KKM_merc:=1;
  ssCenaMerc:='1';
  ssTaxCode:='6';  // Без НДС
  koltow:=1;
  PrNaim:='БАД Апикрасота';

  ssJSONmerk[1]:='"productName": "'+newS5(del_probel_sc(Copy(del_probel2(PrNaim),1,KolSimvolowKKM)))+'", "qty": '+intTostr(koltow*10000)+' , "taxCode": '+ssTaxCode+', "price": '+ssCenaMerc+' }';

  mmInfoMercChZnak.Lines.Add('Тестовый  productName:'+ssJSONmerk[1]);
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
  mmInfoMercChZnak.Lines.Add('Запрашиваем результат проверку КМ командой "GetMarkingCodeCheckResult"');
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

    mmInfoMercChZnak.Lines.Add('Ответ:'+ssOtwet);
    mmInfoMercChZnak.Lines.Add('-----------------------------------------------------------------------------------------');
    JsonValue:=TJSonObject.ParseJSONValue(ssOtwet);
    mmInfoMercChZnak.Lines.Add('Ответ:'+JsonValue.ToJSON);
    mmInfoMercChZnak.Lines.Add('-----------------------------------------------------------------------------------------');
    ssJSONrezult:=JsonValue.GetValue<string>('result');
    mmInfoMercChZnak.Lines.Add('rezult:'+ssJSONrezult);
    mmInfoMercChZnak.Lines.Add('-----------------------------------------------------------------------------------------');

    if ssJSONrezult='0' then
    begin
      ssJSONisCompleted:=JsonValue.GetValue<string>('isCompleted');
      mmInfoMercChZnak.Lines.Add('isCompleted:'+ssJSONisCompleted);
      ssJSONonlineCheck:=JsonValue.GetValue<string>('onlineCheck'); //Данный ключ присутствует в ответе только в случае завершения процесса онлайн проверки КМ (ключ isCompleted имеет значение true).
      mmInfoMercChZnak.Lines.Add('onlineCheck:'+ssJSONonlineCheck);
      ssJSONmcCheckResult:=JsonValue.GetValue<string>('onlineCheck.mcCheckResult'); //результат проверки КП КМ: true – положительный, false – отрицательный (ФФД: тег 2005)
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
      mmInfoMercChZnak.Lines.Add('Ошибка:'+E.Message);
      mmInfoMercChZnak.Lines.Add('-----------------------------------------------------------------------------------------');
      //ShowMessage('Ошибка: '+E.Message);
      Exit;
    end;
  end;

  // Нужен парсинг
  // isCompleted true – проверка завершена, false – проверка еще выполняется
  // mcCheckResult (boolean, необяз.) – результат проверки КП КМ: true – положительный, false – отрицательный (ФФД: тег 2005).

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
    mmInfoMercChZnak.Lines.Add('Подтверждаем КМ командой: "AcceptMarkingCode"');
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

      mmInfoMercChZnak.Lines.Add('Ответ:'+ssOtwet);
      mmInfoMercChZnak.Lines.Add('-----------------------------------------------------------------------------------------');
      JsonValue:=TJSonObject.ParseJSONValue(ssOtwet);
      mmInfoMercChZnak.Lines.Add('Ответ:'+JsonValue.ToJSON );
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
         mmInfoMercChZnak.Lines.Add('Ошибка:'+E.Message);
         mmInfoMercChZnak.Lines.Add('-----------------------------------------------------------------------------------------');
         //ShowMessage('Ошибка:'+E.Message);
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
  // Решил использовать стандартную утилиту для кодирования и раскодирования Base64
  ssUIDmarkCodeBaza64:=TNetEncoding.URL.Base64.Encode(ssUIDmark);
  ssDecode:=TNetEncoding.URL.Base64.Decode(ssUIDmarkCodeBaza64);

  mmInfoMercChZnak.Lines.Add('Кодируем КМ в Base64:');
  mmInfoMercChZnak.Lines.Add('-----------------------------------------------------------------------------------------');
  mmInfoMercChZnak.Lines.Add('Исходное значение:'+ssUIDmark);
  mmInfoMercChZnak.Lines.Add('-----------------------------------------------------------------------------------------');
  mmInfoMercChZnak.Lines.Add('Закодированное значение:'+ssUIDmarkCodeBaza64);
  mmInfoMercChZnak.Lines.Add('-----------------------------------------------------------------------------------------');
  mmInfoMercChZnak.Lines.Add('Для проверки декодирование:'+ssDecode);
  mmInfoMercChZnak.Lines.Add('-----------------------------------------------------------------------------------------');
  mmInfoMercChZnak.Lines.Add('Инициируем проверку КМ командой "CheckMarkingCode"');
  mmInfoMercChZnak.Lines.Add('С обязательным параметром "plannedStatus":1');
  mmInfoMercChZnak.Lines.Add('С обязательным параметром "measureUnit":0');
  mmInfoMercChZnak.Lines.Add('С необязательным параметром "timeout":10');
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
    mmInfoMercChZnak.Lines.Add('Ответ:'+JsonValue.ToJSON );
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
      mmInfoMercChZnak.Lines.Add('Ошибка:'+E.Message);
      mmInfoMercChZnak.Lines.Add('-----------------------------------------------------------------------------------------');
      //ShowMessage('Ошибка: '+E.Message);
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
  mmInfoMerc.Lines.Add('Тестирование связи с ККТ произведено успешно!');
  mmInfoMerc.Lines.Add('На печать отправлено приветствие "Добрый день!"');
  mmInfoMerc.Lines.Add('Если приветствие распечаталось на ККТ, то Меркурий готов к работе!');
  mmInfoMerc.Lines.Add('*****************************************************************************************');
  Screen.Cursor:=crDefault;
end;

procedure TfmKKM.edKolSimbolovKeyPress(Sender: TObject; var Key: Char);
begin
  kodSim:=Ord(key);
  if kodSim<>8 then
  begin
    if ((kodSim>=48)and(kodSim<=57))  // цифры
    then
    begin
    end
    else key:=#0;
  end;
end;


procedure TfmKKM.edPostaw_innKeyPress(Sender: TObject; var Key: Char);
begin
  kodSim:=Ord(key);
  if kodSim<>8 then   // "8" - удаление
  begin
    if ((kodSim>=48)and(kodSim<=57))or(kodSim=22)  // цифры  "22" - ctr-V
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
  if kodSim<>8 then   // "8" - удаление
  begin
    if ((kodSim>=48)and(kodSim<=57))or(kodSim=22)  // цифры  "22" - ctr-V
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
  //Выполнение  запроса получение общей информации
  Screen.Cursor:=crHourGlass;
  mmInfo.Clear;
  bbOpenSessionRabClick(Sender);   // Открыли сессию

  if (sessionKey<>'')and(ssResultKKM='0') then
  begin
  try
    TextJSON:='{"sessionKey": "'+sessionKey+'","command": "GetCommonInfo"}';
    mmInfo.Lines.Add('Общая информация о ККТ Меркурий запрос: '+TextJSON);

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

    mmInfo.Lines.Add('Общая информация о ККТ Меркурий ответ:');
    mmInfo.Lines.Add('*****************************************************************************************');
    mmInfo.Lines.Add(ssOtwet);
    //mmInfo.Lines.Add(utf8toAnsi(Stream.DataString));
    //mmInfo.Lines.Add(Stream.DataString);

    mmInfo.Lines.Add('*****************************************************************************************');
    mmInfo.Lines.Add('Парсинг:');
    mmInfo.Lines.Add('*****************************************************************************************');
    mmInfo.Lines.Add('Заводской номер ККТ: '+Parsing_JSON(ssOtwet,'kktNum'));
    mmInfo.Lines.Add('Версия ФФД ФН : '+Parsing_JSON(ssOtwet,'ffdFnVer'));
    mmInfo.Lines.Add('Версия ФФД ККТ: '+Parsing_JSON(ssOtwet,'ffdKktVer'));
    mmInfo.Lines.Add('Итоговая версия ФФД (по которой работает ККТ): '+Parsing_JSON(ssOtwet,'ffdTotalVer'));
    mmInfo.Lines.Add('Дата выпуска микропрограммы ККТ: '+Parsing_JSON(ssOtwet,'programDate'));
    mmInfo.Lines.Add('Текущие дата и время, установленные в ККТ.: '+Parsing_JSON(ssOtwet,'dateTime'));
    mmInfo.Lines.Add('*****************************************************************************************');
    mmInfo.Lines.Add('Если в ответе от присутствует "result":0", то служба настроена корректно!');
    mmInfo.Lines.Add('*****************************************************************************************');

    //mmInfo.Text:=Stream.DataString;
    //mmInfo.Lines.LoadFromStream(Stream, TEncoding.UTF8);

    bbCloseSessionRabClick(Sender);  // Закрыли сессию
  except
    on E:Exception do
    begin
      bbCloseSessionRabClick(Sender);  // Закрыли сессию
      Screen.Cursor:=crDefault;
      mmInfo.Lines.Add('Ошибка: '+E.Message);
      ShowMessage('Ошибка: '+E.Message);
      Exit;
    end;
  end;
  end
  else
  begin
    Screen.Cursor:=crDefault;
    ShowMessage('Не получен Ключ Сессии от ККТ "'+ssNameKKM+'"!'+#13+'Или отсутствует связь с ККТ "'+ssNameKKM+'"!');
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
    mmInfo.Lines.Add('Проверка службы INECRMAN запрос: '+TextJSON);

    Http2:=TIdHTTP.Create(nil);
    HTTP2.Request.ContentType:='application/json; charset=utf-8';
    HTTP2.ReadTimeout:=10000;

    PostDataJSON:=TStringStream.Create;
    PostDataJSON.WriteString(TextJSON);
    ssOtwet:=HTTP2.Post(ssWebRestKKM,PostDataJSON);

    mmInfo.Lines.Add('Проверка службы INECRMAN ответ: '+ssOtwet);

    mmInfo.Lines.Add('*****************************************************************************************');
    mmInfo.Lines.Add('Если в ответе от INECRMAN присутствует "result":0", то служба настроена корректно!');
    mmInfo.Lines.Add('*****************************************************************************************');

    Http2.Free;

  except
    on E:Exception do
    begin
      mmInfo.Lines.Add('Ошибка: '+E.Message);
      Screen.Cursor:=crDefault;
      ShowMessage('Ошибка: '+E.Message);
      Exit;
    end;
  end;

  Screen.Cursor:=crDefault;
end;


procedure TfmKKM.bbGetStatusClick(Sender: TObject);
Var
  TextJSON,ssOtwet:String;
begin
  //Выполнение  запроса статус
  Screen.Cursor:=crHourGlass;
  mmInfo.Clear;

  bbOpenSessionRabClick(Sender);   // Открыли сессию

  if (sessionKey<>'')and(ssResultKKM='0') then
  begin
  try
    TextJSON:='{"sessionKey": "'+sessionKey+'","command": "GetStatus"}';
    mmInfo.Lines.Add('Проверка статуса ККТ Меркурий запрос: '+TextJSON);

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

    mmInfo.Lines.Add('Проверка статуса ККТ Меркурий ответ:');
    mmInfo.Lines.Add('*****************************************************************************************');
    mmInfo.Lines.Add(ssOtwet);
    mmInfo.Lines.Add('*****************************************************************************************');
    mmInfo.Lines.Add('Парсинг:');
    mmInfo.Lines.Add('*****************************************************************************************');
    mmInfo.Lines.Add('Открытие Смены: '+Parsing_JSON(ssOtwet,'isOpen'));
    mmInfo.Lines.Add('24-часовой интервал после Открытия Смены (истек): '+Parsing_JSON(ssOtwet,'is24Expired'));
    mmInfo.Lines.Add('Признак наличия бумаги: '+Parsing_JSON(ssOtwet,'paperPresence'));
    mmInfo.Lines.Add('Дата и Время Открытие Смены: '+Parsing_JSON(ssOtwet,'lastOpen'));
    mmInfo.Lines.Add('*****************************************************************************************');
    mmInfo.Lines.Add('Если в ответе от присутствует "result":0", то служба настроена корректно!');
    mmInfo.Lines.Add('*****************************************************************************************');
    bbCloseSessionRabClick(Sender);  // Закрыли сессию
  except
    on E:Exception do
    begin
      bbCloseSessionRabClick(Sender);  // Закрыли сессию
      Screen.Cursor:=crDefault;
      mmInfo.Lines.Add('Ошибка: '+E.Message);
      ShowMessage('Ошибка: '+E.Message);
      Exit;
    end;
  end;
  end
  else
  begin
    Screen.Cursor:=crDefault;
    ShowMessage('Не получен Ключ Сессии от ККТ "'+ssNameKKM+'"!'+#13+'Или отсутствует связь с ККТ "'+ssNameKKM+'"!');
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

  lbInfo2.Caption:='Каталог для установки программы FR_ATOL_SHTRIH.EXE на вашем Сервисном Центре: '+si2+'kkm';
end;

procedure TfmKKM.FormCreate(Sender: TObject);
Var
  ssNomerWint:ShortString;
  Buffer:array [0..255] of char;
  SerialNum:dword;
  a,b:dword;
  ik:Word;
begin
  if GetVolumeInformation('c:\',Buffer,SizeOf(Buffer),@SerialNum,a,b,nil,0) then ssNomerWint:=IntToStr(SerialNum);  // номер винта

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
  mmAtolInfo.Lines.Add('1. Необходимо установить драйвер Атол с версией не ниже 10.10.0.0.');
  mmAtolInfo.Lines.Add('   Драйвер должен быть для 32-х разрядной версии. Данный драйвер бесплатный.');
  mmAtolInfo.Lines.Add('2. ККТ Атол должен быть включен и подключен к компьютреу через USB-порт.');
  mmAtolInfo.Lines.Add('3. ККТ Атол необходимо перевести в режиме ФР (фискальный регистратор).');
  mmAtolInfo.Lines.Add('4. ККТ Атол должен иметь необходимые прошивки и лицензии для работы с ФФД 1.2.');

  forcedirectories(si2+'kkm');

  if FileExists(si1+'param_kkm.api')=True then
  begin
    AssignFile(F,si1+'param_kkm.api');
    Reset(F);
    readln(F,ssKKM_tip);   // Тип ККМ Атол или Штрих-М
    readln(F,ssKKM_kassir);
    readln(F,ssKKM_kassir_INN);
    readln(F,ssKKM_str1);
    readln(F,ssKKM_str2);
    readln(F,ssKKM_str3);
    readln(F,ssKKM_str4);
    readln(F,ssKKM_pusk);  // Запуск внешней программы
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

    ssKKM_Postaw_Name:='ООО "Тенториум"';
    ssKKM_Postaw_INN:='5906034336';
    ssKKM_Postaw_Tel:='';
    ssKKM_Postaw_Nalog:='OSN';
    ssKKM_Agent_Kod:='5';
    ssKKM_Agent_Blok:='agent_no';
  end;

  if ssKKM_Agent_Blok='agent_yes' then cbKKM_Agent_Blok.Checked:=True
                                  else cbKKM_Agent_Blok.Checked:=False;

  if ssKKM_Postaw_Name='' then ssKKM_Postaw_Name:='ООО "Тенториум"';
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

  if (ssKKM_nomerWinta<>ssNomerWint)and(sett=0) then  // Если Компьютер не сетевой, то проверяем и обнуляем
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
  if ssKKM_tip='atol' then begin ssNameKKM:='Атол'; rgTipKKM.ItemIndex:=1;end;
  if ssKKM_tip='shtrih' then begin ssNameKKM:='Штрих-М'; rgTipKKM.ItemIndex:=2;end;
  if ssKKM_tip='atolNew' then begin rgTipKKM.ItemIndex:=5;ssNameKKM:='Атол';end;

  if ssKKM_tip='evator' then
  begin
    rgTipKKM.ItemIndex:=3;
    panEvator.Enabled:=True;
    ssNameKKM:='Эвотор';
  end;

  if ssKKM_tip='merkuriy' then
  begin
    rgTipKKM.ItemIndex:=4;
    panMerkuriy.Enabled:=True;
    ssNameKKM:='Меркурий';
  end;

  edEvatorKod.Text:=ssKKM_kodEvator;  // Читаем для всех

  rgKKMpusk.ItemIndex:=0;
  if ssKKM_pusk='no pusk' then rgKKMpusk.ItemIndex:=0;
  if ssKKM_pusk='pusk' then rgKKMpusk.ItemIndex:=1;
  if ssKKM_pusk='pusk wib' then rgKKMpusk.ItemIndex:=2;

  if ssKKM_emulaytor='emulaytor_yes' then cbKKMemulaytor.Checked:=True
                                     else cbKKMemulaytor.Checked:=False;
  ssMerkNalog:='0';
  rgKKMNalog.ItemIndex:=0;
  if ssKKM_nalog='DOH' then begin ssMerkNalog:='1'; rgKKMNalog.ItemIndex:=0;end;          // Упрощенная
  if ssKKM_nalog='DOHRASH' then begin ssMerkNalog:='2'; rgKKMNalog.ItemIndex:=1;end;      // Доходы -Расходы
  if ssKKM_nalog='PATENT' then begin ssMerkNalog:='5'; rgKKMNalog.ItemIndex:=2;end;       // Патент
  if ssKKM_nalog='OSN' then begin ssMerkNalog:='0'; rgKKMNalog.ItemIndex:=3;end;          // Общая система
  if ssKKM_nalog='ENVD' then begin ssMerkNalog:='3'; rgKKMNalog.ItemIndex:=4;end;          // ЕНВД

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

//У меня срабатывает на 115Ф и на 185Ф.
//Только, учтите, что при этом обязательно должно быть заполнено поле "адрес электронной почты или телефон покупателя", используемое при закрытии чека.

end.

{
Общий алгоритм формирования чека для Атол
-------------------------------------------------------------------
Формирование чека состоит из следующих операций:

открытие чека и передача реквизитов чека;
регистрация позиций, печать нефискальных данных (текст, штрихкоды, изображения);
регистрация итога (необязательный пункт - если регистрацию итога не провести, он автоматически рассчитается из суммы всех позиций);
регистрация налогов на чек (необязательный пункт - налоги могут быть подтянуты из позиций и суммированы);
регистрация оплат;
закрытие чека;
проверка состояния чека.

------------------------------------------------------------------
Формирование чека коррекции (ФФД 1.05) состоит из следующих операций:
------------------------------------------------------------------
открытие чека и передача реквизитов чека;
регистрация итога;
регистрация налогов на чек (необязательный пункт);
регистрация оплат (необязательный пункт);
закрытие чека;
проверка состояния чека.
-------------------------------------------------------------------
Реквизит при открытии чека:
1055	Применяемая система налогообложения (СНО)	int
LIBFPTR_TT_OSN - общая;
LIBFPTR_TT_USN_INCOME - упрощенная доход;
LIBFPTR_TT_USN_INCOME_OUTCOME - упрощенная доход минус расход;
LIBFPTR_TT_ESN - единый сельскохозяйственный доход;
LIBFPTR_TT_PATENT - патентная система налогообложения.


Важно:
И еще одно - с вашим офд должен быть заключен договор на отсылку данных в Честный знак. Это платно. Просто так касса ничего не отошлет.


}
