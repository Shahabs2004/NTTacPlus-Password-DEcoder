unit Unit1;

interface

uses
   SysUtils,  Forms,
   StrUtils, bsSkinCtrls, Classes, Controls, StdCtrls, BusinessSkinForm,
  DsFancyButton,  Mask, bsSkinBoxCtrls;

type
  TForm1 = class(TForm)
    bsSkinLinkLabel1: TbsSkinLinkLabel;
    bsSkinStdLabel1: TbsSkinStdLabel;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    EncodedPassword: TbsSkinEdit;
    DecodedPassword: TbsSkinEdit;
    Decoder: TDsFancyButton;
    procedure DecoderClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
Function Decode(Pass:String):String;stdcall;
var Codetable : array[1..95] of String[32];
    lettertable:Array[1..95] of String[2];
    PassLen,RowCounter,ColCounter : integer;
    TempStr:String[32];
    ExPass,ExRow:String;
begin
          Result:='';
          if MidStr(Pass,1,2)<>'+@' then
               Begin
                   Result:=Pass;
                   Exit;
               End;
          if Pass = '+@' Then Exit;
          lettertable[1]:= '`';lettertable[2]:= 'a';lettertable[3]:= 'b';lettertable[4]:= 'c';lettertable[5]:= 'd';lettertable[6]:= 'e';
          lettertable[7]:= 'f';lettertable[8]:= 'g';lettertable[9]:= 'h';lettertable[10]:='i';lettertable[11]:='j';lettertable[12]:='k';
          lettertable[13]:='l';lettertable[14]:='m';lettertable[15]:='n';lettertable[16]:='o';lettertable[17]:='p';lettertable[18]:='q';
          lettertable[19]:='r';lettertable[20]:='s';lettertable[21]:='t';lettertable[22]:='u';lettertable[23]:='v';lettertable[24]:='w';
          lettertable[25]:='x';lettertable[26]:='y';lettertable[27]:='z';lettertable[28]:='{';lettertable[29]:='|';lettertable[30]:='}';
          lettertable[31]:='~';lettertable[32]:='@';lettertable[33]:='A';lettertable[34]:='B';lettertable[35]:='C';lettertable[36]:='D';
          lettertable[37]:='E';lettertable[38]:='F';lettertable[39]:='G';lettertable[40]:='H';lettertable[41]:='I';lettertable[42]:='J';
          lettertable[43]:='K';lettertable[44]:='L';lettertable[45]:='M';lettertable[46]:='N';lettertable[47]:='O';lettertable[48]:='P';
          lettertable[49]:='Q';lettertable[50]:='R';lettertable[51]:='S';lettertable[52]:='T';lettertable[53]:='U';lettertable[54]:='V';
          lettertable[55]:='W';lettertable[56]:='X';lettertable[57]:='Y';lettertable[58]:='Z';lettertable[59]:='[';lettertable[60]:='\';
          lettertable[61]:=']';lettertable[62]:='^';lettertable[63]:='_';lettertable[64]:=' ';lettertable[65]:='!';lettertable[66]:='"';
          lettertable[67]:='#';lettertable[68]:='$';lettertable[69]:='%';lettertable[70]:='&';lettertable[71]:='''';lettertable[72]:='(';
          lettertable[73]:=')';lettertable[74]:='*';lettertable[75]:='+';lettertable[76]:=',';lettertable[77]:='-';lettertable[78]:='.';
          lettertable[79]:='/';lettertable[80]:='0';lettertable[81]:='1';lettertable[82]:='2';lettertable[83]:='3';lettertable[84]:='4';
          lettertable[85]:='5';lettertable[86]:='6';lettertable[87]:='7';lettertable[88]:='8';lettertable[89]:='9';lettertable[90]:=':';
          lettertable[91]:=';';lettertable[92]:='<';lettertable[93]:='=';lettertable[94]:='>';lettertable[95]:='?';


          Codetable[1]:= ('86CB22EB9E3FD5E3CE1665C5776F101A');Codetable[2]:= ('87CA23EA9F3ED4E2CF1764C4766E111B');Codetable[3]:= ('84C920E99C3DD7E1CC1467C7756D1218');Codetable[4]:= ('85C821E89D3CD6E0CD1566C6746C1319');
          Codetable[5]:= ('82CF26EF9A3BD1E7CA1261C1736B141E');Codetable[6]:= ('83CE27EE9B3AD0E6CB1360C0726A151F');Codetable[7]:= ('80CD24ED9839D3E5C81063C37169161C');Codetable[8]:= ('81CC25EC9938D2E4C91162C27068171D');
          Codetable[9]:= ('8EC32AE39637DDEBC61E6DCD7F671812');Codetable[10]:=('8FC22BE29736DCEAC71F6CCC7E661913');Codetable[11]:=('8CC128E19435DFE9C41C6FCF7D651A10');Codetable[12]:=('8DC029E09534DEE8C51D6ECE7C641B11');
          Codetable[13]:=('8AC72EE79233D9EFC21A69C97B631C16');Codetable[14]:=('8BC62FE69332D8EEC31B68C87A621D17');Codetable[15]:=('88C52CE59031DBEDC0186BCB79611E14');Codetable[16]:=('89C42DE49130DAECC1196ACA78601F15');
          Codetable[17]:=('96DB32FB8E2FC5F3DE0675D5677F000A');Codetable[18]:=('97DA33FA8F2EC4F2DF0774D4667E010B');Codetable[19]:=('94D930F98C2DC7F1DC0477D7657D0208');Codetable[20]:=('95D831F88D2CC6F0DD0576D6647C0309');
          Codetable[21]:=('92DF36FF8A2BC1F7DA0271D1637B040E');Codetable[22]:=('93DE37FE8B2AC0F6DB0370D0627A050F');Codetable[23]:=('90DD34FD8829C3F5D80073D36179060C');Codetable[24]:=('91DC35FC8928C2F4D90172D26078070D');
          Codetable[25]:=('9ED33AF38627CDFBD60E7DDD6F770802');Codetable[26]:=('9FD23BF28726CCFAD70F7CDC6E760903');Codetable[27]:=('9CD138F18425CFF9D40C7FDF6D750A00');Codetable[28]:=('9DD039F08524CEF8D50D7EDE6C740B01');
          Codetable[29]:=('9AD73EF78223C9FFD20A79D96B730C06');Codetable[30]:=('9BD63FF68322C8FED30B78D86A720D07');Codetable[31]:=('98D53CF58021CBFDD0087BDB69710E04');Codetable[32]:=('A6EB02CBBE1FF5C3EE3645E5574F303A');
          Codetable[33]:=('A7EA03CABF1EF4C2EF3744E4564E313B');Codetable[34]:=('A4E900C9BC1DF7C1EC3447E7554D3238');Codetable[35]:=('A5E801C8BD1CF6C0ED3546E6544C3339');Codetable[36]:=('A2EF06CFBA1BF1C7EA3241E1534B343E');
          Codetable[37]:=('A3EE07CEBB1AF0C6EB3340E0524A353F');Codetable[38]:=('A0ED04CDB819F3C5E83043E35149363C');Codetable[39]:=('A1EC05CCB918F2C4E93142E25048373D');Codetable[40]:=('AEE30AC3B617FDCBE63E4DED5F473832');
          Codetable[41]:=('AFE20BC2B716FCCAE73F4CEC5E463933');Codetable[42]:=('ACE108C1B415FFC9E43C4FEF5D453A30');Codetable[43]:=('ADE009C0B514FEC8E53D4EEE5C443B31');Codetable[44]:=('AAE70EC7B213F9CFE23A49E95B433C36');
          Codetable[45]:=('ABE60FC6B312F8CEE33B48E85A423D37');Codetable[46]:=('A8E50CC5B011FBCDE0384BEB59413E34');Codetable[47]:=('A9E40DC4B110FACCE1394AEA58403F35');Codetable[48]:=('B6FB12DBAE0FE5D3FE2655F5475F202A');
          Codetable[49]:=('B7FA13DAAF0EE4D2FF2754F4465E212B');Codetable[50]:=('B4F910D9AC0DE7D1FC2457F7455D2228');Codetable[51]:=('B5F811D8AD0CE6D0FD2556F6445C2329');Codetable[52]:=('B2FF16DFAA0BE1D7FA2251F1435B242E');
          Codetable[53]:=('B3FE17DEAB0AE0D6FB2350F0425A252F');Codetable[54]:=('B0FD14DDA809E3D5F82053F34159262C');Codetable[55]:=('B1FC15DCA908E2D4F92152F24058272D');Codetable[56]:=('BEF31AD3A607EDDBF62E5DFD4F572822');
          Codetable[57]:=('BFF21BD2A706ECDAF72F5CFC4E562923');Codetable[58]:=('BCF118D1A405EFD9F42C5FFF4D552A20');Codetable[59]:=('BDF019D0A504EED8F52D5EFE4C542B21');Codetable[60]:=('BAF71ED7A203E9DFF22A59F94B532C26');
          Codetable[61]:=('BBF61FD6A302E8DEF32B58F84A522D27');Codetable[62]:=('B8F51CD5A001EBDDF0285BFB49512E24');Codetable[63]:=('B9F41DD4A100EADCF1295AFA48502F25');Codetable[64]:=('C68B62ABDE7F95A38E562585372F505A');
          Codetable[65]:=('C78A63AADF7E94A28F572484362E515B');Codetable[66]:=('C48960A9DC7D97A18C542787352D5258');Codetable[67]:=('C58861A8DD7C96A08D552686342C5359');Codetable[68]:=('C28F66AFDA7B91A78A522181332B545E');
          Codetable[69]:=('C38E67AEDB7A90A68B532080322A555F');Codetable[70]:=('C08D64ADD87993A5885023833129565C');Codetable[71]:=('C18C65ACD97892A4895122823028575D');Codetable[72]:=('CE836AA3D6779DAB865E2D8D3F275852');
          Codetable[73]:=('CF826BA2D7769CAA875F2C8C3E265953');Codetable[74]:=('CC8168A1D4759FA9845C2F8F3D255A50');Codetable[75]:=('CD8069A0D5749EA8855D2E8E3C245B51');Codetable[76]:=('CA876EA7D27399AF825A29893B235C56');
          Codetable[77]:=('CB866FA6D37298AE835B28883A225D57');Codetable[78]:=('C8856CA5D0719BAD80582B8B39215E54');Codetable[79]:=('C9846DA4D1709AAC81592A8A38205F55');Codetable[80]:=('D69B72BBCE6F85B39E463595273F404A');
          Codetable[81]:=('D79A73BACF6E84B29F473494263E414B');Codetable[82]:=('D49970B9CC6D87B19C443797253D4248');Codetable[83]:=('D59871B8CD6C86B09D453696243C4349');Codetable[84]:=('D29F76BFCA6B81B79A423191233B444E');
          Codetable[85]:=('D39E77BECB6A80B69B433090223A454F');Codetable[86]:=('D09D74BDC86983B5984033932139464C');Codetable[87]:=('D19C75BCC96882B4994132922038474D');Codetable[88]:=('DE937AB3C6678DBB964E3D9D2F374842');
          Codetable[89]:=('DF927BB2C7668CBA974F3C9C2E364943');Codetable[90]:=('DC9178B1C4658FB9944C3F9F2D354A40');Codetable[91]:=('DD9079B0C5648EB8954D3E9E2C344B41');Codetable[92]:=('DA977EB7C26389BF924A39992B334C46');
          Codetable[93]:=('DB967FB6C36288BE934B38982A324D47');Codetable[94]:=('D8957CB5C0618BBD90483B9B29314E44');Codetable[95]:=('D9947DB4C1608ABC91493A9A28304F45');

          PassLen:= StrLen(pchar(Pass))-2;
          PassLen:=PassLen Div 2;
          Pass:= MidStr(Pass,3,200);
          ColCounter:=0;
          while True do
          begin
              ExPass:= midstr(Pass,ColCounter*2+1,2);
              For RowCounter:= 1 to 95 Do
                  Begin
                      TempStr:=CodeTable[RowCounter];
                      ExRow:=MidStr(tempstr,ColCounter*2+1,2);
                      if ExPass=ExRow then
                          begin
                              Result:=Result + lettertable[RowCounter];
                              Break;
                          End;
                  End;
              inc(colCounter);
              if ColCounter > $f Then ColCounter := 1;

              Dec(PassLen);
              if PassLen = 0 then Exit;
          end;
End;



procedure TForm1.DecoderClick(Sender: TObject);
begin
 DecodedPassword.Text:=Decode(EncodedPassword.Text);
end;

end.
