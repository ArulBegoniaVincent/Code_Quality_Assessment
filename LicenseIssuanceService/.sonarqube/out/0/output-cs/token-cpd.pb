ú
]D:\Web API & Microservice Assessment\LicenseIssuanceService\LicenseIssuanceService\Program.cs
var 
builder 
= 
WebApplication 
. 
CreateBuilder *
(* +
args+ /
)/ 0
;0 1
builder 
. 
Services 
. 
AddControllers 
(  
)  !
;! "
builder

 
.

 
Services

 
.

 #
AddEndpointsApiExplorer

 (
(

( )
)

) *
;

* +
builder 
. 
Services 
. 
AddDbContext 
< 
AppDBContext *
>* +
(+ ,
options, 3
=>4 6
options7 >
.> ?
UseMySql? G
(G H
builderH O
.O P
ConfigurationP ]
.] ^
GetConnectionString^ q
(q r
$str	r …
)
… †
,
† ‡
ServerVersion
ˆ •
.
• –

AutoDetect
–  
(
  ¡
builder
¡ ¨
.
¨ ©
Configuration
© ¶
.
¶ ·!
GetConnectionString
· Ê
(
Ê Ë
$str
Ë Þ
)
Þ ß
)
ß à
)
à á
)
á â
;
â ã
builder 
. 
Services 
. 
AddSwaggerGen 
( 
)  
;  !
var 
app 
= 	
builder
 
. 
Build 
( 
) 
; 
if 
( 
app 
. 
Environment 
. 
IsDevelopment !
(! "
)" #
)# $
{ 
app 
. 

UseSwagger 
( 
) 
; 
app 
. 
UseSwaggerUI 
( 
c 
=> 
{ 
c 	
.	 

SwaggerEndpoint
 
( 
$str 4
,4 5
$str6 O
)O P
;P Q
} 
) 
; 
} 
app 
. 
UseHttpsRedirection 
( 
) 
; 
app 
. 
UseAuthorization 
( 
) 
; 
app 
. 
MapControllers 
( 
) 
; 
app   
.   
Run   
(   
)   	
;  	 
Ü
kD:\Web API & Microservice Assessment\LicenseIssuanceService\LicenseIssuanceService\Model\LicenseIssuance.cs
	namespace 	"
LicenseIssuanceService
  
.  !
Model! &
{ 
public 

class 
LicenseIssuance  
{ 
[ 	
Key	 
] 
public		 
int		 
LicenseIssuanceID		 $
{		% &
get		' *
;		* +
set		, /
;		/ 0
}		1 2
[ 	
Required	 
] 
public 
string 
? 
LicenseIssuerName (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
[ 	
Required	 
] 
public 
DateTime !
LicenseExpirationDate -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
} 
} ’
}D:\Web API & Microservice Assessment\LicenseIssuanceService\LicenseIssuanceService\Migrations\20250710044725_InitialCreate.cs
	namespace 	"
LicenseIssuanceService
  
.  !

Migrations! +
{ 
public

 

partial

 
class

 
InitialCreate

 &
:

' (
	Migration

) 2
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder 
. 
AlterDatabase *
(* +
)+ ,
. 

Annotation 
( 
$str +
,+ ,
$str- 6
)6 7
;7 8
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str '
,' (
columns 
: 
table 
=> !
new" %
{ 
LicenseIssuanceID %
=& '
table( -
.- .
Column. 4
<4 5
int5 8
>8 9
(9 :
type: >
:> ?
$str@ E
,E F
nullableG O
:O P
falseQ V
)V W
. 

Annotation #
(# $
$str$ C
,C D(
MySqlValueGenerationStrategyE a
.a b
IdentityColumnb p
)p q
,q r
LicenseIssuerName %
=& '
table( -
.- .
Column. 4
<4 5
string5 ;
>; <
(< =
type= A
:A B
$strC M
,M N
nullableO W
:W X
falseY ^
)^ _
. 

Annotation #
(# $
$str$ 3
,3 4
$str5 >
)> ?
,? @!
LicenseExpirationDate )
=* +
table, 1
.1 2
Column2 8
<8 9
DateTime9 A
>A B
(B C
typeC G
:G H
$strI V
,V W
nullableX `
:` a
falseb g
)g h
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% 9
,9 :
x; <
=>= ?
x@ A
.A B
LicenseIssuanceIDB S
)S T
;T U
} 
) 
.   

Annotation   
(   
$str   +
,  + ,
$str  - 6
)  6 7
;  7 8
}!! 	
	protected$$ 
override$$ 
void$$ 
Down$$  $
($$$ %
MigrationBuilder$$% 5
migrationBuilder$$6 F
)$$F G
{%% 	
migrationBuilder&& 
.&& 
	DropTable&& &
(&&& '
name'' 
:'' 
$str'' '
)''' (
;''( )
}(( 	
})) 
}** è
gD:\Web API & Microservice Assessment\LicenseIssuanceService\LicenseIssuanceService\Data\AppDBContext.cs
	namespace 	"
LicenseIssuanceService
  
.  !
Data! %
{ 
public 

class 
AppDBContext 
: 
	DbContext  )
{ 
public 
AppDBContext 
( 
DbContextOptions ,
<, -
AppDBContext- 9
>9 :
options; B
)B C
:D E
baseF J
(J K
optionsK R
)R S
{T U
}V W
public		 
DbSet		 
<		 
LicenseIssuance		 $
>		$ %
LicenseIssuance		& 5
{		6 7
get		8 ;
;		; <
set		= @
;		@ A
}		B C
}

 
} ƒ1
{D:\Web API & Microservice Assessment\LicenseIssuanceService\LicenseIssuanceService\Controllers\LicenseIssuanceController.cs
	namespace 	"
LicenseIssuanceService
  
.  !
Controllers! ,
{ 
[		 
Route		 

(		
 
$str		 
)		 
]		 
[

 
ApiController

 
]

 
public 

class %
LicenseIssuanceController *
:+ ,
ControllerBase- ;
{ 
private 
readonly 
AppDBContext %
_context& .
;. /
public %
LicenseIssuanceController (
(( )
AppDBContext) 5
context6 =
)= >
{ 	
_context 
= 
context 
; 
} 	
[ 	
HttpPost	 
] 
public 
async 
Task 
< 
IActionResult '
>' (
Create) /
(/ 0
[0 1
FromBody1 9
]9 :
LicenseIssuance; J
licenseIssuanceK Z
)Z [
{ 	
_context 
. 
LicenseIssuance $
.$ %
Add% (
(( )
licenseIssuance) 8
)8 9
;9 :
await 
_context 
. 
SaveChangesAsync +
(+ ,
), -
;- .
return 
CreatedAtAction "
(" #
nameof# )
() *
Create* 0
)0 1
,1 2
licenseIssuance3 B
)B C
;C D
} 	
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
IActionResult '
>' (
GetAll) /
(/ 0
)0 1
{ 	
var 
licenses 
= 
await  
_context! )
.) *
LicenseIssuance* 9
.9 :
ToListAsync: E
(E F
)F G
;G H
return 
Ok 
( 
licenses 
) 
;  
}   	
["" 	
HttpGet""	 
("" 
$str"" 
)"" 
]"" 
public## 
async## 
Task## 
<## 
IActionResult## '
>##' (
Get##) ,
(##, -
int##- 0
id##1 3
)##3 4
{$$ 	
var%% 
licenses%% 
=%% 
await%%  
_context%%! )
.%%) *
LicenseIssuance%%* 9
.%%9 :
	FindAsync%%: C
(%%C D
id%%D F
)%%F G
;%%G H
if&& 
(&& 
licenses&& 
==&& 
null&&  
)&&  !
{'' 
return(( 
NotFound(( 
(((  
)((  !
;((! "
})) 
return** 
Ok** 
(** 
licenses** 
)** 
;**  
}++ 	
[-- 	
HttpPut--	 
(-- 
$str-- 
)-- 
]-- 
public.. 
async.. 
Task.. 
<.. 
IActionResult.. '
>..' (
Update..) /
(../ 0
int..0 3
id..4 6
,..6 7
LicenseIssuance..8 G
licenseIssuance..H W
)..W X
{// 	
if00 
(00 
id00 
!=00 
licenseIssuance00 %
.00% &
LicenseIssuanceID00& 7
)007 8
{11 
return22 

BadRequest22 !
(22! "
$str22" /
)22/ 0
;220 1
}33 
var55 
existingItem55 
=55 
await55 $
_context55% -
.55- .
LicenseIssuance55. =
.55= >
	FindAsync55> G
(55G H
id55H J
)55J K
;55K L
if66 
(66 
existingItem66 
==66 
null66  $
)66$ %
{77 
return88 
NotFound88 
(88  
)88  !
;88! "
}99 
existingItem:: 
.:: 
LicenseIssuanceID:: *
=::+ ,
licenseIssuance::- <
.::< =
LicenseIssuanceID::= N
;::N O
existingItem;; 
.;; 
LicenseIssuerName;; *
=;;+ ,
licenseIssuance;;- <
.;;< =
LicenseIssuerName;;= N
;;;N O
existingItem<< 
.<< !
LicenseExpirationDate<< .
=<<. /
licenseIssuance<<0 ?
.<<? @!
LicenseExpirationDate<<@ U
;<<U V
await>> 
_context>> 
.>> 
SaveChangesAsync>> +
(>>+ ,
)>>, -
;>>- .
return@@ 
	NoContent@@ 
(@@ 
)@@ 
;@@ 
}AA 	
[DD 	

HttpDeleteDD	 
(DD 
$strDD 
)DD 
]DD 
publicEE 
asyncEE 
TaskEE 
<EE 
IActionResultEE '
>EE' (
DeleteEE) /
(EE/ 0
intEE0 3
idEE4 6
)EE6 7
{FF 	
varGG 
licensesGG 
=GG 
awaitGG  
_contextGG! )
.GG) *
LicenseIssuanceGG* 9
.GG9 :
	FindAsyncGG: C
(GGC D
idGGD F
)GGF G
;GGG H
ifHH 
(HH 
licensesHH 
==HH 
nullHH  
)HH  !
returnHH" (
NotFoundHH) 1
(HH1 2
)HH2 3
;HH3 4
_contextII 
.II 
LicenseIssuanceII $
.II$ %
RemoveII% +
(II+ ,
licensesII, 4
)II4 5
;II5 6
awaitJJ 
_contextJJ 
.JJ 
SaveChangesAsyncJJ +
(JJ+ ,
)JJ, -
;JJ- .
returnKK 
	NoContentKK 
(KK 
)KK 
;KK 
}LL 	
}MM 
}NN 