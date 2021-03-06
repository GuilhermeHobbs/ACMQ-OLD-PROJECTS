..Imprimir com Wordstar 4.0�
.pl66
.ls1
.rm64
.pc32�
                        � Programa IFFԂ 

� � Introdu��o

   � program� IFF� calcul� numericament� transformada� d� Lapl��
c� �da� �tens�e� nodai� d� circuito� lineare� � �inv�riante� �n� �
tempo� �n� �form� d� raz�e� d� polin�mio� d� "s"� �utilizand� �� �
m�tod� d� an�lis� noda� co� interpola��� d� polin�mio� po� "Fas� �
Fourie� �Transform"� Co� excita��e� convenientes� esta� �tens�e� �
pode� se� inte�pretada� com� fun��e� d� transfer�nci� o� imit���
cias� c�racterizand� � comportament� C� d� circuit� analisado� � �
parti� da� fu���e� calculada� pode� se� obtido� p�lo� � zeros� � �
di�grama� d� re�post� e� freq��nci� pode� se� plotado� � �comp��
rado� co� o�tro� previament� calculados.

   � program� �� �ti� principalment� par� � r�pid� verif�ca��� d� �
projet� d� filtros� permitind� inclusiv� � clar� visualiza��� d� �
posi��� d� p�lo� � zero� secund�rios� Pod� se� usad� tamb�� com� �
ferrament� �par� � estud� n� dom�ni� d� freq��nci� d� �problema� �
ligado� �� �sistema� lineares� com� compensa��� d� �respost� �e� �
freq��nci� � sistema� d� controle.

� � Par�metro� d� entrad� par� � programa

   � �descri��� d� circuit� � analisa� dev� esta� e� u� �arquiv� �
d� texto� n� form� abaixo� 

- 1a� linha� numer� d� n�s.

- Linha� seguintes� Descri��� d� circuito� u� element� po� l�nh� �
��(Semelhant� a� format� SPICE� par� quas� todo� o� elementos).

- Resisto� co� resist�nci� �:
  R<nome> <n��> <n��> <�>
- Induto� co� indut�nci� �:
  L<nome> <n��> <n��> <L>
- Capacito� co� capacit�nci� �:
  C<nome> <n��> <n��> <C>
- Transformado� �co� indut�ncia� L11� L22� M1� � M2� (M2� �� �op�
��cional� s� fo� diferent� d� M12):
  N<nome� <n�1+� <n��-� <n�2+� <n��-� <L11� <L22� <M12� <M21� 
- Girador� co� resist�nci� d� gira��� R�:
  Y<nome� �<n�1+� �<n��-� <n�2+� <n��-� <R�>
- Font� �d� �corrent� �controlad� � tens�� �(VCC� �o� �OT� �
��ideal� co� tran�condut�nci� Gm:
  G<nome� <n�I+� <n��-� <n�V+� <n��-� <Gm>
- Amplificado� �operacional� co� ganh� GB/� (G� e� rad/s� � �re�
��sist�nci� d� sa�d� Ro:
  A<nome� �<n��-� <n�+� <n�� sa�da� <G¾ <Ro>
- Amplificado� operaciona� ideal� model� �nullato�-norato� �
��O<nome� <n�� entr� 1� <n�� entr� 2� <n�� sa�da>
� Transisto� bipolar� model� h�brid� � completo
  Q<nome� <n�c� <n�b� <n�e� <hfe� <hie� <hre� <hoe>
� Transisto� MOS:
  M<nome� <n�d� <n�g� <n�s� <Gm� <Gds>�� Font� d� corrente:
� I<nome� <n�+� <n�-� <corrent�>
- Font� d� tens�o co� resisto� em s�ri� Rs:
  Z<nome� <n��-� <n�+� <Rs� [<tens�o>]

  Toda� a� unidade� e� Ohms� Mhos� Farads� Henrys� Volt� � Amp��
res� � nom� dever�� possui� d� � � � caracteres� i�cluind� � in��
cial� � n�� d� terr� �� � 0� � � numera��� do� n�� dev� se� cont���
nua� d� � a� n�mer� d� n�s� � orde� do� el�mento� � d� numera��� �
pod� se� qualquer� � arquiv� co� � descr���� dever�� te� � sufix� �
(default� �.net � pod� se� gerad� aut�matic�ment� pel� �program� �
edito� EDFIL.

   A� �fonte� d� tens�� s�� considerada� com� d� 1� s� � �tens�� �
(opcional� �n�� �fo� dada� � a� d� corre�t� co� �� �valo� �dado� �
impulsionai� par� a� tran�formada� � co�seno�dai� par� � respos�
t� �e� freq��ncia� Usualment� desej�-s� � c�lcul� d� fun��e� �d� �
transfer�nci� �o� �imped�ncias� � exist� apena� �um� �fonte� �d� �
valo� unit��rio.

   Ante� �d� �an�lise� � program� ped� �algun� �par�metros� �qu� �
controla� � precis�� d� resultado� 

   Dispers�� �entr� coeficiente� d� polin�mio� � � m�xim� �raz�� �
aceit�ve� �entr� �m�dulo� d� maio� � d� �meno� �coefic�ent� �do� �
polin�mio� �d� numerado� � denominado� d� fun��� d� �transfer���
cia� normalizado� pel� fato� d� normaliza��� e� freq��nci� �us��
do� �� usad� pel� program� d� seguint� forma� � interpola��� �po� �
FF� �sempr� �ger� polin�mio� (n�meradore� �� �denominadore� �da� �
transformada� interpoladas� co� gra� igua� �� pot�nci� d� � �im��
diatament� �sup�rio� �a� gra� d� complexidad� �estimad� �par� �� �
rede� �meno� �1� S� � gra� rea� d� u� polin�mi� �fo� �meno� �qu� �
este� �o� coef�ciente� d� maio� gra� calculado� ser�� apena� �u� �
pequen� res�duo� idealme�t� nulo� Par� distingui� at�� ond� va� � �
polin�mi� �real� � pr�gram� pr�cur� qua� � coeficient� d� �maio� �
m�d�l� �d� polin�mio� divid� se� m�dul� pel� dispe�s�� �dada� �� �
compar� � m�dul� do� demai� co�ficiente� co� est� valor� zerand� �
todo� �o� �qu� fore� menores� E� circu�to� d� orde� �elevada� �� �
acumula��� �d� err� num�ric� pod� torna� � d�termina��� d� �di��
pers�� �corret� �n�� trivial� raz�� pel� qua� �su� �escolh� �fo� �
deixad� a� usu�rio� � dispers�� pod� se� alterad� ap�� � c�lcul� �
d� �cad� polin��mio� s� nece�s�rio� � qu� permit� qu� �� �usu�ri� �
corrij� u� gra� calc�lad� erradament� par� � valo� correto� Cas� �
� �gra� �corret� n�� sej� conhecido� um� inspe��� �d� �polin�mi� �
obtid� co� um� dispe�s�� d� valo� elevado� d� mod� qu� todo� �o� �
co�ficiente� seja� listados� pod� se� �ti� par� determin��-lo� E� �
caso� �assim� especia� cuidad� dev� se� dad� a� corret� us� �do� �
fatore� d� normaliza��o.

   Fato� �d� normaliza��� e� freq��ncia� �� u� fato� �usad� �par� �
no�maliza� � red� e� freq��ncia� melhorand� � prec�s�� �num�ric� �
d� algor�tmo� Dev� se� colocad� e� torn� d� m�di� geom�tric� da� �
freq��ncia� �nat�rai� �d� rede� e� rad/s� � �program� �indic� �� �
fato� idea� par� cad� polin�mi� calculad� (� valo� qu� fari� co� �
qu� �o� coeficiente� d� maio� � meno� grau� d� polin�mi� �fosse� ���guais)� Par� melhore� resultados� � fato� usad� dev� se� pr�x��
m� d� valo� ideal� o� a� meno� d� mesm� orde� d� grandeza� �Par� �
muda� �� fato� durant� � processamento� � necess�ri� �ref�ze� �� �
interp�la��o� 

   Fato� �d� normaliza��� e� imped�ncia� �� u� fato� �usad� �par� �
no�maliza� � red� e� imped�ncia� evitand� "overflows� � �"unde��
flows� qu� pode� ocorre� s� � n�ve� d� imped�nci� d� red� anal��
sad� �fo� �baix� demai� o� alt� demai� (cons�q��nci� d� �us� �d� �
an�lis� �noda� pel� programa)� Se� valo� dev� fica� e� torn� �d� �
n�ve� d� imp�d�nci� d� red� n� freq��nci� d� fato� d� norm�liz��
��� e� fr�q��nci� (e� rad/s)� � valo� idea� qu� � program� �cal�
c�la� par� cad� polin��mio� �� � qu� fari� co� qu� � polin�mi� i��
terpolad� �foss� m�nico� Valore� muit� maiore� qu� � �nece�s�ri� �
pode� �causa� �"overflow"� Valore� muit� �menore� �pode� �causa� �
"underflow"� gerand� polin�mio� nulo� (� program� emit� u� avis� �
nest� �caso)� � valo� usad� afet� apena� � precis�� num�ric� �d� �
resultado� se� outra� conseq��ncias� poi� a� fonte� d� sina� s�� �
tamb�� �norm�lizadas� Par� altera� � fator� �� tamb�� �necess�ri� �
ref�ze� � interpola��o.

   Normaliza��� do� resultado� e� freq��ncia� �� recomend�d� �qu� �
sej� usad� sempr� qu� � red� � analisa� n�� estive� �normalizad� �
e� freq���ci� (p�lo� � zero� distand� aprox�madament� � rad/� d� �
origem)� �Nest� �caso� todo� o� resu�tado� �(polin��mios� �p�los� �
zero� �� gr�ficos� est�r�� norm�lizado� pel� fato� �d� �normal��
za��� e� fr�q��nci� usado� S� n�� fo� usada� problema� d� "over�
flow� � "underflow� pode� ocorrer.

   Orde� d� complexidad� estimad� d� rede� � program� �determin� �
� �orde� d� complexidad� d� red� atrav�� d� um� ��rvor� �normal� �
listad� �ap�� � netlist� Est� �� � orde� corret� �par� �circuito� �
normais� �S� �� orde� rea� diferente� est� �par�metr� �pod� �se� �
alterado� S� co� ist� � orde� d� FF� (meno� pot�nci� d� � �acim� �
d� orde� estimada� usad� fo� reduzida� � precis�� do� resultado� �
ser�� maior� Observ�-s� qu� freq��ncia� naturai� e� � deve� �sem�
pr� se� contadas� assi� com� p�lo� cancelado� po� zeros.

� � Opera��� d� programa

   � program� analis� � circuit� pel� m�tod� do� n�� n� �dom�ni� �
d� freq��nci� e� u� n�mer� d� ponto� (pot�nci� d� 2� �igualment� �
espa�ado� �� parti� d� eix� rea� sobr� u� c�rcul� n� plan� �com�
plex� d� rai� igua� a� fato� d� norm�liza��� e� freq��nci� �usa�
do� �calc�land� par� cad� pont� � determinant� d� matri� d� �ad�
mit��ci� do� n�s� denominado� d� toda� da� fun��e� � interpolar� �
� �o� num�radore� d� toda� a� tens�e� nodais� Com� � circuit� ��� �
real� ponto� no� quadrante� inferiore� gera� resultado� �comple�
xo� co�jugado� do� resultado� no� quadrante� superiores� � �ist� �
�� usad� par� reduzi� � computa��o� Denominado� � numer�dore� s�� �
multiplicado� �po� "s� elevad� a� n�mer� d� el�mento� �ind�tivo� �
(� � GB)� par� qu� o� valore� ca�cul�do� corre�ponda� � �avalia�
��e� d� polin�mio� co� pot��cia� positiva� d� "s"� Um� FF� dire�
t� pod� ent�� se� usad� par� recupera� o� polin�mios� seguid� d� �
verifica��� d� dispers�� � d� desnormaliza��� e� freq��ncia� �s� ��fo� � caso� � no�maliz���� e� imped�nci� �� feit� dura�t� � �mon�
tage� d� sistem� nodal� � n�� precis� se� desfeita� 
 
   � �program� calcul� imediatament� � polin�mi� �caract�ristic� �
d� �circuito� �qu� �� � denominado� d� toda� a� fu���e� �� �cuja� �
ra�ze� �s�� �a� freq��ncia� naturai� (o� p��los)� �� �seguir� �o� �
numeradore� desejado� pode� se� rap�dament� calcul�do� � �parti� �
do� �valore� �obtido� na� an�l�se� iniciais� O� �polin�mio� �s�� �
apresentado� n� form� m�nica� Ap�� � c�lcul� d� denominado� � d� �
cad� numerador� sua� raize� (p�lo� o� zeros� pode� se� �calcul��
da� � plot�da� n� plan� complexo� S� o� p�lo� fore� �ca�culados� �
ser�� plotado� junt� co� todo� o� zero� qu� fore� ped�dos� �Ap�� �
� c�lcul� d� cad� numerador� diagrama� d� respost� e� freq��nci� �
d� tens�� n� n�� pode� se� plotados.

Comando� aceito� no gr�fico de p�los e zeros:

Esc� Terminar.
"+","-"� Ampliar/reduzir.
Cursores� Mover.
Tab, Backspace� Move� � cursor.

   Todo� �o� resultado� calculado� pode� se� armazenado� e� �a��
qu�vos� �� usado� po� outro� programas� par� � c�lcul� �d� �re��
posta� n� dom�ni� d� temp� (ANATRAN)� sensibilidade� d� p�lo� �� �
zero� (SENSI)� Gr�fico� diferentes� etc.

   � program� plot� gr�fico� d� ganh� e� decib�is� fas� e� grau� �
� atras� d� grup� e� segundo� e� fun��� d� freq���ci� (e� H� �o� �
rad/s)� e� escal� linea� o� logar�tmica.

Comando� �aceito� durant� � plotage� d� gr�fico� d� respo�t� �e� �
freq��ncia:

Esc� Termina� o� muda� escalas.
"G"� Ligar/desliga� desenh� d� grade.
"F"� Ligar/desliga� plotage� d� fase.
"T"� Ligar/desliga� plotage� d� atras� d� grupo.
"L"� Ligar/desliga� � escal� logar�tmica.
"A","R"� Amplia�/reduzir horizontalmente.
"<",">"� Move� horizontalmente.
"+","-"� Ampliar/reduzi� verticalment� (ganh� apenas).
Curso� vertical� Move� verticalment� (ganh� apenas).
Curso� horizontal� Cursor� Move-s� mai� r�pid� co� Ctrl.
Tab� Backspace� Muda� � curso� d� curva.
"C"� Muda� � crit�ri� d� colora��� da� curvas.
Return� Continua� u� tra�ad� interrompid� pel� acionament� �
d� cursor.

   A� �escala� d� freq��ncia� � d� ganh� s�� graduadas� �� �gr��
dua��� �� inteligente� a� linha� mostrada� marca� apena� �valore� �
co� �termina��� inteira� Po� exemplo� Co� limite� d� �freq��nci� �
entr� 0.341� � 0.344� Hz� linha� s�� tr��ada� par� 0.342� �0.34� �
� �0.34� �Hz� E� escal� linea� at�� � linha� s�� tra�adas� �� �e� �
escal� �logar��mic� toda� a� pot��cia� inteira� d� 1� s�� �ind���cada� po� co� dif�re�te� co� � linha� entr� elas.

   O� �limite� �d� ganh� listado� sempr� �corresponde� ��� �curv� �
apontad� �pel� cursor� A� linha� d� grad� tamb�m� ma� � �gr��fic� �
dev� �se� �redes�nhad� par� su� alt�ra��o� O� �gr��fico� �usa� �� �
m�xim� �resolu��� poss�ve� � core� co� � plac� gr��fic� usada� ��� �
poss�ve� �for�a� �� utiliz���� d� outro� modo� �gr��ficos� �s� �� �
program� �fo� chamad� � � pa�ti� d� DOS� por� IFF� �<arquiv� �d� �
entrada� <pl�ca� <modo>� ond� o� doi� �ltimo� par��metro� especi�
fica� �o� n��mero� d� "dr�ver� � usa� � d� mod� gr��fic� (ve� �ma�
nua� t� Turb� Pasca� 5.5)� Po� exemplo� IFF� <arqu�vo� � � espe�
c�fic� � mod� d� 640x20� d� CGA� 

   Rotina� �d� impress�� d� tel� e� impressora� tip� �EPSO� �s�� �
acess�vei� tocand�-s� "I� o� "P� na� tela� gr�ficas� ma� �apena� �
quand� � plac� CG� �� usada� � impress�� pod� se� imediat� o� �e� �
arquivo� �e� doi� formatos� � pod� se� �interrompid� �tocand�-s� �
qualque� tecla� � tab�l� d� val�re� gerad� n� gr�f�c� d� respos�
t� e� freq��nci� � a� li�ta� d� p�lo� � zeros� si�ple� �arquivo� �
d� texto� pode� se� usada� par� plotagen� co� outro� programas� 

   A� curva� d� respost� e� freq��nci� d� circuit� send� �anal��
sad� �poder�� se� plotada� e� conjunt� co� outras� �usand�-s� �� �
op��� d� inclu�� outr� curv� n� gr�fico� (t�cl� "I� n� menu)� �� �
denominado� � � num�rado� d� fun��� � inclu�� pode� se� lido� d� �
arquivo� �o� copi�do� d� �ltim� fun��� calculada� At�� tr�� �fun�
��e� pode� se� pl�tada� e� conjunt� co� � fun��� atual� Cad� um� �
receb� �u� �n�mer� d� � � 4� send� � fun��� n�mer� �� �sempr� �� �
fun��� atual� � �lt�m� fun��� incluid� pod� se� eliminad� �usan�
d�-s� �� op��� d� el�mina� um� curv� (tecl� "E� n� �menu)� �Cad� �
fun��� �pod� se� plotad� co� escal� d� ganh� dif�rent� �da� �de�
mais� 

   � �qualque� momento� o� valore� associado� � cad� �comp�nent� �
pode� se� modificado� (tecl� "M� n� menu)� � � ci�cuit� analisa�
d� nov�mente� � efe�t� d� modifica��� n� respost� e� �freq��nci� �
pod� �se� observad� s� � fun��� d� transfer�nci� origina� �tive� �
sid� inclu�d� n� gr�fico� 

� � Observa��es

   Algun� problema� comun� qu� pode� causa� dificuldade� s�o:

   Resist�ncia� �� �indut�ncia� n�� pode� se� nulas� �devid� �a� �
sistem� d� an�lis� noda� usado� Tamb�� po� isto� e� u� transfo��
mador� �L11*L2� dev� se� diferent� d� M12*M21� S� ist� �n�� �fo� �
obedecido� � program� par� po� divis�� po� zero.

   Gr�fico� d� respost� e� freq��nci� e� escal� logar�tm�c� �n�� �
pode� �i� at�� freq��nci� zer� o� negativa� E� escal� linea� �n�� �
h�� �restr���o� �Se� � grade� � program� aceit� �qu� �o� �limite� �
horizontai� � verticai� seja� invertidos� 

   S� �� red� analisad� n�� estive� normalizad� e� freq���ci� �� �
imped�ncia� �� o� fatore� d� normaliza��� n�� fore� �usados� �o� ��resultado� calculado� poder�� se� se� sentid� devid� � �acumul��
��� d� err� num�rico� � process� mai� segur� d� obte� resultado� �
consistente� ��� preve� quanto� p�lo� � quanto� zero� � �circuit� �
possui� �� qua� � orde� d� grandez� deles� ante� d� �an�l�se� �� �
procura� obte� este� n�mero� ajustand� o� fatore� d� �normaliz��
��� �� � dispe�s�o� O� fatore� correto� pode� se� buscado� �ex��
minand�-s� �o� valore� rec�mendado� pel� program� �com� �ideais� �
Quand� ele� n�� mudare� mai� par� v�rio� fatore� d� normaliza��� �
(e� freq��ncia� princ�palmente� dentr� d� mesm� orde� d� grand��
za� �� �an�lis� dev� esta� correta� � dispe�s�� idea� �pod� �se� �
achad� examina�d�-s� o� polin�mio� calculado� co� um� �dispers�� �
inicia� grand� � polin�mio� normalizado� e� freq��ncia� � �ver��
ficand�-s� �qua� �� dispers�� qu� elimin� termo� acim� �d� �gra� �
correto.

   � circuit� n�� pod� possui� freq��ncia� naturai� na� freq����
cia� qu� � program� analis� par� � interpola��o� � problem� mai� �
comu� ocorr� co� p�lo� reai� d� m�dul� igua� a� fato� d� �norm��
liza��� e� freq��ncia.

   Poder�� �ocorre� "overflow� s� � grafic� d� m�dul� � fas� �fo� �
pedid� e� freq��ncia� muit� elevadas� � problem� �� comu� �quand� �
� circuit� n�� est�� normalizad� e� freq��nci� � � op��� d� apr��
senta� resultado� normalizado� n�� �� utilizada� 

   S� n� fun��� d� transfer�nci� calculad� ocorrere� ca�celame��
to� p�l�-zero� ele� n�� ser�� considerados� send� o� �polin�mio� �
apr�sentado� �co� raize� comun� n� num�rado� � denominador� �No� �
gr�fico� �d� �p�lo� � z�ros� o� cancel�mento� �ser�� �clar�ment� �
vis�veis� �Ist� �� d� gra�d� util�dad� n� an�lis� d� sistema� �e� �
qu� p�lo� n�� observ�vei� pode� ocorrer� Todo� o� p�lo� d� �sis�
tem� s�� sempr� apr�sent�do� no� gr�ficos.

   S� �u� polin�mi� calculad� possui� raize� m�ltiplas� � �alg��
ritm� usad� par� c�lcul� d� ra�ze� n�� conseguir�� defin�-la� co� �
gra�d� precis�o� � mesm� pod� ocorre� co� polin�mio� co� �ra�ze� �
diferind� po� muita� orden� d� gra�deza� o� excessivament� �pr���
ximas� �Eventualment� pod� oco�re� "overflow� durant� � �c�lcul� �
d� ra�ze� devid� � dive�g�nci� crescent� n� algor�tm� d� �c�lc��
lo� �Um� �mudan�� n� fato� d� normaliza��� �e� �freq��nci� �pod� �
resolve� � pr�blema� S� � problem� persistir� � solu��� �� salva� �
� �pol�n�mio� � calcula� sua� ra�ze� co� outr� programa� � �pr��
gram� �H� utiliz� u� algor�tm� mai� sofisticad� par� c�lc�l� �d� �
ra�zes� � pod� se� usad� co� est� finalidade.

   Circuito� co� muito� amplificadore� operacionai� reai� �("A"� �
� �outro� circuito� realimentados� pode� gera� s��rio� �problema� �
num�ricos� �devid� � presenc� d� grupo� d� fr�q��ncia� �naturai� �
distand� d� v�ria� orden� d� magnit�de� A� freq��ncia� �naturai� �
d� circuit� idea� � a� o�tra� secund�ria� gerada� pelo� a�plifi�
cadores� Atrav�� d� cu�d�dos� ajust� do� fatore� d� normaliza��� �
� d� dispers�o� �� poss��ve� obte� an�lise� precisa� par� � �maio� �
part� do� circuito� usuais� ma� s� � dist�nci� entr� freq��ncia� �
naturai� �principai� �� s�cund��ria� fo� muit� �grande� �� �form� �
recomendad� par� � o�ten��� co� algum� precis�� desta� �freq��n��cia� ��� usa� u� fato� d� norm�liza��� e� freq��nci� �baix� �par� �
obte� �a� freq��ncia� nat�rai� pri�cipais� � u� fato� mai� �alt� �
par� obte� a� secund�rias� � fato� d� normaliza��� e� imped�nci� �
dev� se� ajustad� tamb�m� poi� � n�ve� d� imped�nci� d� u� �cir�
cuit� �assi� �pod� se� sub�tancia�ment� diferent� �e� �baixa� �� �
alta� �freq��ncias� �E� qua�que� caso� � �precisa� �do� �valore� �
calculado� pod� se� av�liad� obse�vand� s� muda� apreci�valvent� �
quand� o� fatore� d� norm�liza��� s�� variados� � dispe�s�� dev� �
se� ajustad� par� qu� � gra� do� polin�mio� estej� sempr� corre�
to� par� meno� erro� Par� evita� pr�bl�ma� (� tamb�� acelera� �� �
c�lculo� �poi� cad� amplific�do� idea� elimin� u� n�� d� �circui�
to)� sempr� qu� po�s�ve� amplif�cadore� ideai� deve� se� �util��
zados� 

   Fun��e� � sere� comparada� n� mesm� gr�fic� deve� se� �calc��
lada� co� � mesm� fato� d� normaliza��� e� freq���cia� o� �ent�� �
co� �� apresenta��� d� resultado� normaliz�do� �desligada� �par� �
qu� a� escala� d� freq��nci� seja� corretas.

   Algun� recurso� �tei� s�o:

   Fonte� �ideai� d� tens�o� S� suspensas� us�-s� um� font� �"Z� �
e� �s�ri� �co� u� resisto� d� mesm� valo� qu� � �d� �fo�te� �ma� �
negativo� S� aterrada� � melho� coloca� u� "bu�fer� co� amplif��
cado� operaciona� idea� e� s�ri� co� um� font� "Z".

   Outra� fonte� controlada� al�� d� VCCS� 

��VCVS� Us�-s� um� VCC� co� � sa�d� e� paralel� co� u� �resi�to� �
��d� � Oh� � co� u� resisto� d� -� Oh� e� s�rie.
��CCCS� Us�-s� um� VCC� co� � entrad� e� paralel� co� u� �resis�
��to� d� � Oh� � co� u� resisto� d� -� Oh� e� s�rie.
��CCVS� Us�-s� o� doi� recurso� acima.

   Sempr� �qu� �� sa�d� fo� e� tens�� � estive� aterrad� �d� �u� �
lado� u� buffe� co� amp� op� idea� � melho� qu� � r�sisto� neg��
tivo.

   Amp� �op� co� resist�nci� d� sa�d� nula� Coloc�-s� u� �buffe� �
co� amp� op� idea� e� s�ri� co� � sa�da� �� melho� ist� qu� col��
ca� u� resisto� negativ� e� s�rie.
�
   Corrent� e� u� ramo� Coloc�-s� e� s�ri� co� � ram� u� �resi��
to� d� � Oh� � u� d� -� Ohm� � corrent� �� � tens�� sobr� � d� �� �
Ohm� �S� el� n�� estive� aterrado� pod�-s� copia� � tens�� �par� �
outr� n�� usand� um� VCC� � u� resi�to� aterrado.

   Corrent� �d� sa�d� d� u� OTA� Colc�-s� u� outr� OT� �id�ntic� �
a� �OT� � medi� co� � entrad� e� paralel� co� � deste� ligad� �� �
u� �resisto� d� � Oh� aterrado� � corrent� d� sa�d� d� OT� �ger� �
um� tens�� numericament� igua� � el� nest� n�.

   Imped�nci� �d� n�� Excit�-s� � n�� desejad� co� �um� �co�rent� �
unit�ria� � tens�� noda� �� � imped�nci� desejada.
�   Admit�nci� �d� n�� Excit�-s� � n�� desejad� co� um� �font� �d� �
tens�� co� u� resisto� s�ri� d� � Ohm� Entr� � termina� d� font� �
qu� �iri� �� terr� � � terr� coloc�-s� u� resisto� d� -� �Ohm� �� �
tens�� sobr� el� �� � admit�nci� desejada.

   Documenta��� v�lid� par� � vers�� 5.6.

(� �program� IFF� fo� substituid� pel� X_IFFT� mai� �poderos� �� �
co� melho� interface� � Vers�� 5.� fo� criad� apena� par� manter
compatibilidade.)

Ant�ni� Carlo� M� d� Queiro� (COE10009@UFRJ.BITNET)

22/10/1992
