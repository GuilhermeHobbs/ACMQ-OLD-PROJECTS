..I� i� � WordSta� 4.� fil�
.ls�
CAP� progra� � Documentatio� fo� versio� 1.�b
-------------------------------------------�-

Th� �CAP� progra� analyze� switche�-capacito� filter� i� th� ��-�
transfor� domain� computin� �-transfor� transfe� fun�tion� �fro� �
� �grou� �o� inpu� voltag� source� t� an� nod� �voltag� �i� �th� �
network� Usin� th� compute� transfe� functions� th� progra� �ca� �
plo� �gai� an� phas� versu� frequenc� curves� pole� �an� �zeros� �
an� �tim� transien� response� t� som� exc�tations� �Th� �progra� �
use� �a� �alg�rith� derive� fro� noda� �anal�sis� �an� �compute� �
transfe� fun�tion� usin� interpol�tio� b� FFT� Tim� an� freque��
c� response� ar� compute� fro� th� transfe� functions� �allowin� �
th� an�lysi� t� b� swiftl� completed� 

Th� circui� t� b� analyze� ca� b� compose� b� capacitors� �idea� �
switches� �idea� �operationa� amplifiers� an� �grounde� �voltag� �
sources� Al� th� voltag� source� ar� considere� unitary.

Th� �switchin� �perio� i� considere� subdivide� i� � �numbe� �o� �
equa� �duratio� phases� Eac� switc� ca� b� o� o� of� i� �an� �o� �
thes� phases� Th� signa� sourc� i� considere� sampled� remainin� �
constan� durin� al� th� interva� o� eac� phase� Th� outpu� �si��
na� ca� b� considere� sample� b� � sampl�-an�-hol� circui� o� b� �
a� impuls� sampler� 

Th� mai� inpu� t� th� progra� i� � descriptio� o� th� circui� t� �
b� analyzed� i� th� for� o� � ne�-list:

Firs� line� Numbe� o� nodes.
Followin� lines� On� elemen� pe� line:

Capacitor�    C<name� <nod� 1� <nod� 2� <value>
Switch�       S<name� <nod� 1� <nod� 2� <phase� [<phase� ...]
Doubl� Switc� P<name� <nod� 1� <nod� 2� <pol� node� [<phase>...]
Op� Amp.�     O<name� <nod� -� <nod� +� <outpu� node>
Source�       V<name� <nod� +� � 

Th� �node� �mus� b� enumerate� fro� � t� th� �numbe� �o� �nodes� �
withou� missin� numbers� � i� th� groun� node.
 
Th� �phase� ar� enumerate� fro� � t� th� numbe� o� �phases� �Th� �
progra� ask� fo� th� numbe� o� phase� t� us� a� th� star� o� th� �
execution.

Th� phas� lis� i� th� descriptio� o� th� simpl� switc� indicate� �
i� whic� phase� i� i� closed� Fo� th� doubl� switch� i� �indic��
te� i� whic� phase� th� switc� i� close� t� nod� 1� bein� close� �
t� �nod� � i� th� remainin� phases� I� th� lis� i� omitted� �th� �
doubl� �switc� i� close� t� nod� � i� phas� � an� t� nod� �� �i� �
phas� 2� Thi� simplifie� th� descriptio� fo� tw� phas� circuits.

Capacito� �value� shal� b� give� i� numbe� o� �uni� �capacitors� �
no� Farads� t� avoi� error� du� t� numerica� underflow.

Th� �circui� �descriptio� ca� b� convenientl� generate� �b� �th� ��edito� progra� EdFil.

Parameter� aske� b� th� progra� a� th� star� o� th� execution:

- ���Inpu� file� Nam� o� th� fil� wit� th� ne�-list� Th� defaul� �
�����suffi� i� ".net".
-����Numbe� �o� �phases� �Th� �numbe� �o� �subdivision� �o� �th� �
�����switchin� �perio� t� b� used� I� thi� versio� �th� �maximu� �
�����numbe� i� 1� phases.
-����Radiu� o� th� interpolatio� circle� Ideall� th� geometrica� �
�����mea� �o� th� absolut� valu� o� th� filte� natura� �freque��
�����cie� �i� th� z plane� Value� aroun� � ar� �satisfactor� �i� �
�����mos� cases� Exactl� � i� inconvenien� becaus� severa� usua� �
�����circuit� �hav� natura� frequencie� i� z=� o� z�-1� an� �th� �
�����filte� �wil� b� analyze� i� thes� frequencies� Th� �defaul� �
�����valu� i� 1.1.
-����Dispersio� amon� polynomia� coefficients� Maximu� �accept��
�����bl� �rati� betwee� th� absolut� valu� o� th� greate� �coe��
�����ficien� o� � polynomia� an� th� no�-zer� others� Lo� value� �
�����ma� �lea� t� th� los� o� coefficient� i� som� �polynomials� �
�����an� �to� hig� value� ma� lea� t� th� consideratio� o� �ver� �
�����lo� valu� coefficients� possibl� consequenc� o� erro� acc��
�����mulation� �a� valid� o� no�-zero� Th� defaul� valu� i� �s��
�����tisfactor� fo� usua� circuits�
-����Generat� � report� � repor� containin� � descriptio� o� th� �
�����circuit� �th� calculate� transfe� function� an� �table� �o� �
�����th� �plotte� graph� ca� b� created� Th� repor� ca� b� �als� �
�����starte� �later� afte� th� plottin� o� � frequenc� �o� �tim� �
�����respons� �graph� Th� inclusio� i� th� repor� o� pole� �zer� �
�����an� respons� table� i� no� automatic� an� mus� b� specifie� �
�����afte� �� grap� plotting� Th� tw� followin� item� ar� �aske� �
�����onl� i� � repor� generatio� i� requested.
-    Inclusio� �o� partia� transfe� function� numerator� i� �th� �
�����report� �A� �-phase� filte� present� fx� �partia� �transfe� �
�����functions� �fro� eac� phas� a� th� inpu� t� eac� �phas� �a� �
�����th� �output� tha� mus� b� calc�late� an� compose� i� th� �� �
�����transfe� function� fo� eac� phas� a� th� outpu� an� i� �th� �
�����globa� transfe� function� Th� listin� o� thes� function� i� �
�����mor� �usefu� fo� verification� i� th� workin� o� �th� �pr��
�����gram� o� fo� mor� detaile� analysi� o� � filter.
- �  Inclusio� �o� �phas� transfe� function� numerator� �i� �th� �
�����report� �Ther� ar� � transfe� function� fro� th� �inpu� �t� �
�����th� �outpu� �a� eac� phase� Fr�quentl� �th� �idea� �digita� �
�����transfe� �functio� o� th� filte� i� on� o� them� �wit� �th� �
�����other� bein� delaye� copies.
-����Denominato� degree� Control� th� orde� o� th� interpolatin� �
�����polynomials� T� chang� th� defaul� valu� i� usefu� onl� fo� �
�����test� �i� th� program� t� tes� th� precisio� o� �th� �alg��
�����rith� b� increasin� it� fo� example.

Th� progra� begin� b� computin� th� denominator� o� characteri��
ti� polynomia� o� th� system� i� th� for� o� � moni� �polynomia� �
i� z� Afte� this� ask� fo� th� outpu� nod� an� compute� al� �th� �
numerator� �o� th� partia� transfe� function� fro� th� inpu� �t� �
th� �node� �th� numerator� o� th� transfe� �function� �fro� �th� ��inpu� �t� eac� phas� a� th� outpu� an� th� globa� numerator� �i� �
th� for� o� moni� polynomial� i� z^(1/phases)� wit� �multiplyin� �
constants.

Afte� �th� �computatio� o� th� denominato� an� �th� �numerators� �
thei� coefficient� ca� b� viewed� an� thei� roots� th� pole� �o� �
zero� �o� th� tran�fe� function� ca� b� co�pute� an� plotte� �i� �
th� �comple� plane� Al� th� pole� an� zero� ar� compute� i� �th� �
z^(1/phases� domain� i� suc� � wa� tha� � complet� tur� ove� th� �
uni� �circl� �corre�pond� �t� � frequenc� rang� fro� �� �t� �th� �
switchin� �frequenc� multiplie� b� th� numbe� o� phases� I� �th� �
pole� wer� computed� the� ar� presente� alon� wit� th� �compute� �
zero� �i� th� graphs� Th� scale� o� th� pol� an� zer� grap� �ca� �
b� change� b� th� cursor� +� an� � keys� Th� Ente� an� Ta� �key� �
mov� �th� cursor� Spac� center� th� poin� wher� th� �curso� �is� �
Wit� th� Es� ke� othe� option� ar� acce�sed� Th� pole� an� zero� �
comp�te� ar� o� th� digita� transfe� function� no� bein� �affe��
te� b� th� prese�c� o� � sampl�-an�-hol� a� th� output� 

Frequenc� o� tim� respons� graph� ca� b� plotte� fo� an� �trans�
fe� �function� �partial� t� a� outpu� phase� o� global� �I� �th� �
graphs� �th� vertica� scal� ca� b� change� b� th� vertica� �cur�
sor� +� an� � keys� Th� horizonta� curso� key� turn� o� � curso� �
a� an� instant� Th� Ente� ke� resume� th� plotting� Th� Es� �ke� �
give� �acces� t� othe� options� a� t� sav� � grap� tabl� i� �th� �
report� o� chang� scales� switchin� fr�quency� samplin� mod� �a� �
th� output� excitatio� fo� tim� respo�s� an� grap� resolution.

Th� �plottin� o� � gri� i� th� graph� ca� b� selecte� �wit� �th� �
"G� �key� an� i� th� frequenc� respons� graph� th� �plottin� �o� �
th� �phas� curv� ca� b� selecte� wit� th� "F� o� "P� �keys� �Th� �
phas� limit� ar� alway� o� �18� degrees.

Observations:

I� �th� use� notation� "z� correspond� t� � tim� advanc� o� �on� �
switchin� �period� an� "z^(1/phases)� t� � tim� advanc� �o� �on� �
phas� o� th� switchin� period� Al� th� polynomial� ar� �compute� �
i� �positiv� power� o� z� Th� denominato� a�way� �present� �onl� �
intege� power� o� z� an� th� numerator� i�volvin� transfe� func�
tion� amon� differen� phase� alway� presen� fractiona� power� o� �
z� 

Eac� transfe� functio� receive� � name� i� th� forms�
T(outpu� node,inpu� phase,outpu� phase� fo� partia� t� f� 
T(outpu� node,outpu� phase� fo� t� f� fo� on� outpu� phase�
T(outpu� node� fo� th� globa� transfe� function�

Forbidde� ar� circuit� containin� close� loop� o� switche� �cl��
se� �i� th� sam� phase� an� an� circuit� tha� shor�-circui� �a��
plifie� �input� �o� outputs� o� th� signa� source� �Th� �progra� �
indicate� th� erro� i� thes� cases� Forbidde� ar� als� �circuit� �
i� �whic� � subcircui� i� lef� floatin� withou� �connection� �i� �
som� �phase� �Th� progra� detect� th� condition� �bu� �doe� �no� �
localize� �th� cause� Thi� proble� ca� alway� b� solve� �b� �th� ��introductio� �o� � switc� tha� connect� th� floatin� �subcircui� �
t� � no�-floatin� poin� i� th� problemati� phases� Usuall� i� i� �
enoug� �t� ad� som� phase� i� th� lis� o� � switc� co�necte� �t� �
th� subcircuit.

Th� �graph� fo� tim� respons� o� no�-globa� �transfe� �function� �
ar� �plotte� returnin� t� zer� i� al� phase� differen� fro� �th� �
outpu� �phase� clearl� showin� th� partialit� o� �th� �function� �
The� �ar� �obtaine� directl� fro� th� �correspondin� �differenc� �
equations� �Th� frequenc� respons� plotte� fo� thes� case� �co��
respond� als� t� thi� typ� o� waveform.

I� �i� possibl� t� var� th� hol� tim� o� th� outpu� �sampl�-an�-�
hold� i� numbe� o� phases� i� th� men� afte� th� frequenc� �re��
pons� �graph� Th� norma� value� correspondin� t� �th� �waveform� �
show� i� th� tim� respons� graphs� i� alway� o� on� phase� Gre��
te� value� ca� b� specified� bu� th� result� hav� �significatio� �
onl� fo� no�-globa� transfe� functions� wher� th� outpu� �signa� �
wit� a� impuls� sample� present� onl� on� impuls� pe� �switchin� �
period� �Th� frequenc� respons� plotte� correspond� the� t� �th� �
holdin� o� th� outpu� signa� fo� th� numbe� o� ph�se� specified� �
Th� �effec� i� no� show� i� th� tim� respons� graphs� �Th� �mai� �
utilit� o� thi� featur� i� fo� test� i� th� progra� algorithm.

Th� �computatio� o� pole� an� zero� o� hig�-orde� �circuit� �ca� �
resul� i� numerica� problems� I� thes� cases� th� progra� �stop� �
afte� �5� iteration� an� ask� fo� ne� value� fo� th� �tolerance� �
t� use� an� fo� � ne� approximatio� t� th� roo� bein� �computed� �
Ther� �ar� tw� tolerances� th� toleranc� fo� erro� i� root� �an� �
th� �toleranc� fo� polynomia� magnitudes� Th� �firs� �determine� �
th� precisio� i� � roo� value� an� th� secon� i� use� t� �detec� �
� �multipl� root� b� th� valu� o� th� polynomia� �derivativ� �i� �
th� �vicinitie� o� � root� B� th� decreasin� o� on� �o� �anothe� �
an� �anothe� cycl� o� iterations� th� progra� ca� b� induce� �t� �
accep� �� roo� a� simpl� o� multiple� Th� approximatio� fo� �th� �
roo� rarel� need� t� b� changed� an� mus� no� b� change� i� �th� �
cas� �o� � multipl� root� Th� tolerance� mus� b� kep� a� lo� �a� �
possible� an� onc� modifie� ar� use� unti� th� en� o� th� exec��
tion� Th� calculatio� o� zero� i� i� genera� mor� critica� �tha� �
o� poles� an� eventuall� a� overflo� erro� ma� occur� Thi� �pr��
ble� ca� usuall� b� solve� b� th� specificatio� o� � ne� initia� �
approximatio� fo� root� t� b� used� i� th� men� acce�sibl� afte� �
th� roots calculation.

I� �i� �possibl� t� simulat� amplifier� wit� finit� �gai� �usin� �
idea� �amplifier� �wit� feedbac� circuit� mad� o� �positiv� �an� �
negativ� capacitors� Thi� usuall� introduce� pol�-zer� pair� �a� �
z=� (I� truth� � pair� equall� space� o� th� uni� circle� incl��
din� z=1� fo� a� �-phase� circuit� Th� sam� occur� i� th� �othe� �
case� discusse� below)� Th� unit�-gai� buffe� doe� no� �introd��
ce� pole� o� z�ros� Th� presenc� o� multipl� pol�-zer� pair� �a� �
z=� ca� caus� impr�cis� plottin� o� th� frequenc� respons� grap� �
a� lo� fr�quency.

Resistor� �ca� b� simulate� b� switche� capacitor� �(usuall� �i� ��th� bilinea� form� operatin� i� � frequenc� highe� tha� th� mai� �
switchin� frequency� Wit� th� limite� numbe� o� phase� �allowed� �
th� limi� i� � simulate� resisto� switche� � time� i� eac� phas� �
fo� �� � phas� circuit� Th� result� ma� b� no� simpl� t� �inter�
pret� becaus� error� no� cause� b� th� resisto� ar� �introduced� �
Th� us� o� simulate� resistor� ca� easil� resul� i� a� �equ�tio� �
syste� wit� excessiv� siz� fo� th� existin� memory� becaus� �th� �
progra� mus� comput� th� no�-trivia� signal� i� al� th� �circui� �
node� i� al� th� phases.

Operationa� amplifier� wit� no�-idea� frequenc� respons� ma� �b� �
simulate� approximatel� b� circuit� compose� b� simulate� resi��
tor� an� othe� components� Th� problem� i� usin� thi� �techniqu� �
ar� th� sam� one� o� th� simulate� resistors.

Th� �progra� produce� result� i� frequenc� respons� �tha� �agre� �
wit� �thos� o� SWITCAP� fo� equa�-duratio� phases� larg� �ampli�
fie� gains� inpu� sampl�-an�-hol� an� outpu� sampl�-an�-hol� �o� �
impuls� �sample� used� Th� samplin� instan� mus� b� se� �a� �th� �
beginnin� �o� �eac� phas� (0+)� I� th� tim� response� �th� �sam� �
resul� i� obtaine� wit� th� sam� sampling� bu� (why?� th� outpu� �
mus� b� sample� befor� th� initia� instan� o� eac� phas� (�� �i� �
th� TIM� instruction)� Th� progra� SwitNe� allow� th� conversio� �
o� �ne�-list� �i� th� CAP� forma� t� th� on� �o� �SWITCAP� �wit� �
parameter� adequatel� specifie� fo� simila� r�sults.

Al� �th� graph� us� b� defaul� th� highes� possibl� �resolution� �
wit� colors� o� th� installe� graphic� board� Thi� ca� b� �over�
ridde� b� th� specificatio� i� th� DO� comman� lin� o� th� code� �
o� �th� desire� drive� an� mod� (se� th� Turb� �Pasca� �manual)� �
Som� vali� combination� are� � <� t� 4� (CGA)� � <� or1� �(EGA)� �
� �<� �t� 2� (VGA)� Fo� exa�ple� "CAP� xxx� � 4� �specifie� �th� �
analysi� �o� �th� circui� de�cribe� i� th� �fil� �xxxx.net� �an� �
cause� �th� �graph� t� b� mad� i� th� 640x20� mod� �o� �th� �CG� �
graphic� board.

                       === IMPORTAN� ===

Th� �Turb� Pasca� graphi� drive� (file� .BGI� fo� th� �installe� �
graphic� boar� mus� b� presen� o� th� defaul� directory� o� i� � �
director� �pointe� �b� th� pat� containe� i� �th� �DO� �variabl� �
TPBG�.

Ne� feature� i� versio� 1.4

-    Severa� grounde� inpu� source� ar� allowed� i� an� orde� i� �
�����th� ne�-list� bu� al� ar� considere� identical� Connection� �
�����o� th� outpu� wit� th� inpu� ar� no� properl� treated.
-    Frequenc� �respons� �graph� fo� no�-globa� �transfe� �fun��
�����tions� �wit� outpu� sampl�-an�-hol� used� ar� no� �compute� �
�����wit� �th� correc� attenuation� I� version� befor� 1.4� �th� �
�����attenuatio� o� th� samplin� functio� wa� normalize� t� � a� �
�����DC.
-    Al� th� numerator� ar� compute� immediatel� afte� th� �ou��
�����pu� �nod� �i� given� Afte� this� th� �denominato� �an� �an� �������numer�to� ca� b� viewe� an� numbe� o� time� withou� �recal�
�����culation� 
- �  Th� �memor� �managemen� wa� improved� an� th� �progra� �ca� �
�����analyz� large� circuits.

Versio� �1.4� �correct� som� typo� an� othe� �mino� �bugs� �No�-�
intege� hol� period� ar� no� accepted.

Versio� �1.4� correct� bug� i� th� numbe� o� root� a� � i� �pa��
tia� numerators� D� gai� wit� no�-unit� hol� period� an� �memor� �
management� 

Th� EdFi� edito� program
------------------------

Th� EdFi� edito� ca� b� use� t� generat� th� inpu� ne�-lis� fil� �
fo� �th� CAP� program� an� als� fo� othe� programs� �eve� �SPIC� �
(wit� �som� �editing� o� SWITCA� (wit� conversio� �don� �b� �th� �
SwitNe� �program)� Th� circui� i� draw� o� th� scree� usin� �th� �
curso� key� an� th� sele�te� keyboar� key� liste� a� th� �botto� �
o� �th� edito� screen� � hel� scree� i� assesse� b� th� �� �key� �
Name� �an� parameter� fo� th� element� ar� give� b� �movin� �th� �
curso� t� th� componen� an� touchin� th� Retur� key� o� b� Ctr�-�
X� tha� cause� th� progra� t� as� param�ter� fo� al� th� visibl� �
elements� Th� bes� metho� i� usuall� t� dra� al� th� circui� �a� �
firs� an� late� giv� th� parameters� Ther� ar� defaul� name� an� �
parameter� fo� al� elements� Th� parameter� ar� � text� an� �ar� �
reproduce� �i� th� ne�-lis� a� given� unles� fo� formulae� �tha� �
mus� b� enclose� i� parenth�sis.

Onc� �draw� th� circuit� th� ne�-lis� i� generate� wit� �Ctr�-Q� �
Th� �progra� the� ask� th� name� o� th� file� wher� t� sav� �th� �
circui� �descri�tio� (.ci� file� an� th� ne�-lis� �(.ne� �file)� �
Afte� this� an� progra� ca� b� execute� whil� th� edito� remain� �
residen� �i� memory� wit� executio� returnin� late� t� th� �edi�
tor� 

A� impo�tan� featur� o� th� progra� i� th� optiona� us� o� �fo��
mula� i� th� parameters� An� mathematica� expressio� usin� con��
tant� �an� value� give� i� � valu� lis� ca� b� use� fo� � �num��
rica� �parameter� Th� expression� ar� evaluate� i� th� �ne�-lis� �
gener�tion� Thi� allow� eas� us� o� componen� valu� list� �gen��
rate� b� synthesi� programs� o� eve� th� us� o� EdFi� a� � �sy��
thesi� �program� �wit� component� parameter� �give� �b� �projec� �
formulae.

Th� progra� EdFi�-� i� � versio� o� EdFi� tha� use� screen� wit� �
highe� �resolutio� tha� th� CGA� I� i� sligtl� slowe� �an� �use� �
mor� memory� Th� defaul� scree� mod� selectio� ca� b� �override� �
a� �i� th� CAP� program� Th� .BG� file� mus� b� presen� �o� �th� �
defaul� �driv� �o� �i� th� pat� indicate� b� �th� �DO� �variabl� �
TPGBI.

Th� �CAPZ� EdFil� an� SwitNe� program� wer� develope� a� �COPPE� �
Fed�ra� Universit� o� Ri� d� Janeiro� B� Antoni� Carlo� Moreira� ��d� �Queiroz� Sugge�tion� an� doubt� abou� th� program� shal� �b� �
sen� �t� th� autho� a� COPPE/UFRJ� C� 68504� CE� 21945� �Ri� �d� �
Jane�ro� Brazil� o� vi� electroni� mai� t� COE10009@UFRJ.BITNET� 

Antoni� Carlo� M� d� Queiro� � March 3� 1992
