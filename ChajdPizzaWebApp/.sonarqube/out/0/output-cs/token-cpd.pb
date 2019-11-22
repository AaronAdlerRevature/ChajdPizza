Ö	
tC:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Areas\Identity\IdentityHostingStartup.cs
[

 
assembly

 	
:

	 

HostingStartup

 
(

 
typeof

  
(

  !
ChajdPizzaWebApp

! 1
.

1 2
Areas

2 7
.

7 8
Identity

8 @
.

@ A"
IdentityHostingStartup

A W
)

W X
)

X Y
]

Y Z
	namespace 	
ChajdPizzaWebApp
 
. 
Areas  
.  !
Identity! )
{ 
public 

class "
IdentityHostingStartup '
:( )
IHostingStartup* 9
{ 
public 
void 
	Configure 
( 
IWebHostBuilder -
builder. 5
)5 6
{ 	
builder 
. 
ConfigureServices %
(% &
(& '
context' .
,. /
services0 8
)8 9
=>: <
{= >
} 
) 
; 
} 	
} 
} ⁄
C:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Areas\Identity\Pages\Account\AccessDenied.cshtml.cs
	namespace 	
ChajdPizzaWebApp
 
. 
Areas  
.  !
Identity! )
.) *
Pages* /
./ 0
Account0 7
{ 
public		 

class		 
AccessDeniedModel		 "
:		# $
	PageModel		% .
{

 
public 
void 
OnGet 
( 
) 
{ 	
} 	
} 
} ﬂ
C:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Areas\Identity\Pages\Account\ConfirmEmail.cshtml.cs
	namespace 	
ChajdPizzaWebApp
 
. 
Areas  
.  !
Identity! )
.) *
Pages* /
./ 0
Account0 7
{ 
[ 
AllowAnonymous 
] 
public 

class 
ConfirmEmailModel "
:# $
	PageModel% .
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
public 
ConfirmEmailModel  
(  !
UserManager! ,
<, -
IdentityUser- 9
>9 :
userManager; F
)F G
{ 	
_userManager 
= 
userManager &
;& '
} 	
[ 	
TempData	 
] 
public 
string 
StatusMessage #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
async 
Task 
< 
IActionResult '
>' (

OnGetAsync) 3
(3 4
string4 :
userId; A
,A B
stringC I
codeJ N
)N O
{ 	
if 
( 
userId 
== 
null 
|| !
code" &
==' )
null* .
). /
{ 
return 
RedirectToPage %
(% &
$str& .
). /
;/ 0
}   
var"" 
user"" 
="" 
await"" 
_userManager"" )
."") *
FindByIdAsync""* 7
(""7 8
userId""8 >
)""> ?
;""? @
if## 
(## 
user## 
==## 
null## 
)## 
{$$ 
return%% 
NotFound%% 
(%%  
$"%%  ")
Unable to load user with ID '%%" ?
{%%? @
userId%%@ F
}%%F G
'.%%G I
"%%I J
)%%J K
;%%K L
}&& 
code(( 
=(( 
Encoding(( 
.(( 
UTF8((  
.((  !
	GetString((! *
(((* +
WebEncoders((+ 6
.((6 7
Base64UrlDecode((7 F
(((F G
code((G K
)((K L
)((L M
;((M N
var)) 
result)) 
=)) 
await)) 
_userManager)) +
.))+ ,
ConfirmEmailAsync)), =
())= >
user))> B
,))B C
code))D H
)))H I
;))I J
StatusMessage** 
=** 
result** "
.**" #
	Succeeded**# ,
?**- .
$str**/ U
:**V W
$str**X v
;**v w
return++ 
Page++ 
(++ 
)++ 
;++ 
},, 	
}-- 
}.. ß$
ÖC:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Areas\Identity\Pages\Account\ConfirmEmailChange.cshtml.cs
	namespace 	
ChajdPizzaWebApp
 
. 
Areas  
.  !
Identity! )
.) *
Pages* /
./ 0
Account0 7
{ 
[ 
AllowAnonymous 
] 
public 

class #
ConfirmEmailChangeModel (
:) *
	PageModel+ 4
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
public #
ConfirmEmailChangeModel &
(& '
UserManager' 2
<2 3
IdentityUser3 ?
>? @
userManagerA L
,L M
SignInManagerN [
<[ \
IdentityUser\ h
>h i
signInManagerj w
)w x
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
} 	
[ 	
TempData	 
] 
public 
string 
StatusMessage #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
async 
Task 
< 
IActionResult '
>' (

OnGetAsync) 3
(3 4
string4 :
userId; A
,A B
stringC I
emailJ O
,O P
stringQ W
codeX \
)\ ]
{ 	
if 
( 
userId 
== 
null 
|| !
email" '
==( *
null+ /
||0 2
code3 7
==8 :
null; ?
)? @
{   
return!! 
RedirectToPage!! %
(!!% &
$str!!& .
)!!. /
;!!/ 0
}"" 
var$$ 
user$$ 
=$$ 
await$$ 
_userManager$$ )
.$$) *
FindByIdAsync$$* 7
($$7 8
userId$$8 >
)$$> ?
;$$? @
if%% 
(%% 
user%% 
==%% 
null%% 
)%% 
{&& 
return'' 
NotFound'' 
(''  
$"''  ")
Unable to load user with ID '''" ?
{''? @
userId''@ F
}''F G
'.''G I
"''I J
)''J K
;''K L
}(( 
code** 
=** 
Encoding** 
.** 
UTF8**  
.**  !
	GetString**! *
(*** +
WebEncoders**+ 6
.**6 7
Base64UrlDecode**7 F
(**F G
code**G K
)**K L
)**L M
;**M N
var++ 
result++ 
=++ 
await++ 
_userManager++ +
.+++ ,
ChangeEmailAsync++, <
(++< =
user++= A
,++A B
email++C H
,++H I
code++J N
)++N O
;++O P
if,, 
(,, 
!,, 
result,, 
.,, 
	Succeeded,, !
),,! "
{-- 
StatusMessage.. 
=.. 
$str..  7
;..7 8
return// 
Page// 
(// 
)// 
;// 
}00 
var44 
setUserNameResult44 !
=44" #
await44$ )
_userManager44* 6
.446 7
SetUserNameAsync447 G
(44G H
user44H L
,44L M
email44N S
)44S T
;44T U
if55 
(55 
!55 
setUserNameResult55 "
.55" #
	Succeeded55# ,
)55, -
{66 
StatusMessage77 
=77 
$str77  ;
;77; <
return88 
Page88 
(88 
)88 
;88 
}99 
await;; 
_signInManager;;  
.;;  !
RefreshSignInAsync;;! 3
(;;3 4
user;;4 8
);;8 9
;;;9 :
StatusMessage<< 
=<< 
$str<< I
;<<I J
return== 
Page== 
(== 
)== 
;== 
}>> 	
}?? 
}@@ “o
ÄC:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Areas\Identity\Pages\Account\ExternalLogin.cshtml.cs
	namespace 	
ChajdPizzaWebApp
 
. 
Areas  
.  !
Identity! )
.) *
Pages* /
./ 0
Account0 7
{ 
[ 
AllowAnonymous 
] 
public 

class 
ExternalLoginModel #
:$ %
	PageModel& /
{ 
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
IEmailSender %
_emailSender& 2
;2 3
private 
readonly 
ILogger  
<  !
ExternalLoginModel! 3
>3 4
_logger5 <
;< =
public 
ExternalLoginModel !
(! "
SignInManager 
< 
IdentityUser &
>& '
signInManager( 5
,5 6
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
ILogger 
< 
ExternalLoginModel &
>& '
logger( .
,. /
IEmailSender 
emailSender $
)$ %
{   	
_signInManager!! 
=!! 
signInManager!! *
;!!* +
_userManager"" 
="" 
userManager"" &
;""& '
_logger## 
=## 
logger## 
;## 
_emailSender$$ 
=$$ 
emailSender$$ &
;$$& '
}%% 	
['' 	
BindProperty''	 
]'' 
public(( 

InputModel(( 
Input(( 
{((  !
get((" %
;((% &
set((' *
;((* +
}((, -
public** 
string** 
LoginProvider** #
{**$ %
get**& )
;**) *
set**+ .
;**. /
}**0 1
public,, 
string,, 
	ReturnUrl,, 
{,,  !
get,," %
;,,% &
set,,' *
;,,* +
},,, -
[.. 	
TempData..	 
].. 
public// 
string// 
ErrorMessage// "
{//# $
get//% (
;//( )
set//* -
;//- .
}/// 0
public11 
class11 

InputModel11 
{22 	
[33 
Required33 
]33 
[44 
EmailAddress44 
]44 
public55 
string55 
Email55 
{55  !
get55" %
;55% &
set55' *
;55* +
}55, -
}66 	
public88 
IActionResult88 

OnGetAsync88 '
(88' (
)88( )
{99 	
return:: 
RedirectToPage:: !
(::! "
$str::" +
)::+ ,
;::, -
};; 	
public== 
IActionResult== 
OnPost== #
(==# $
string==$ *
provider==+ 3
,==3 4
string==5 ;
	returnUrl==< E
===F G
null==H L
)==L M
{>> 	
var@@ 
redirectUrl@@ 
=@@ 
Url@@ !
.@@! "
Page@@" &
(@@& '
$str@@' 8
,@@8 9
pageHandler@@: E
:@@E F
$str@@G Q
,@@Q R
values@@S Y
:@@Y Z
new@@[ ^
{@@_ `
	returnUrl@@a j
}@@k l
)@@l m
;@@m n
varAA 

propertiesAA 
=AA 
_signInManagerAA +
.AA+ ,5
)ConfigureExternalAuthenticationPropertiesAA, U
(AAU V
providerAAV ^
,AA^ _
redirectUrlAA` k
)AAk l
;AAl m
returnBB 
newBB 
ChallengeResultBB &
(BB& '
providerBB' /
,BB/ 0

propertiesBB1 ;
)BB; <
;BB< =
}CC 	
publicEE 
asyncEE 
TaskEE 
<EE 
IActionResultEE '
>EE' (
OnGetCallbackAsyncEE) ;
(EE; <
stringEE< B
	returnUrlEEC L
=EEM N
nullEEO S
,EES T
stringEEU [
remoteErrorEE\ g
=EEh i
nullEEj n
)EEn o
{FF 	
	returnUrlGG 
=GG 
	returnUrlGG !
??GG" $
UrlGG% (
.GG( )
ContentGG) 0
(GG0 1
$strGG1 5
)GG5 6
;GG6 7
ifHH 
(HH 
remoteErrorHH 
!=HH 
nullHH #
)HH# $
{II 
ErrorMessageJJ 
=JJ 
$"JJ !*
Error from external provider: JJ! ?
{JJ? @
remoteErrorJJ@ K
}JJK L
"JJL M
;JJM N
returnKK 
RedirectToPageKK %
(KK% &
$strKK& /
,KK/ 0
newKK1 4
{KK5 6
	ReturnUrlKK6 ?
=KK@ A
	returnUrlKKB K
}KKL M
)KKM N
;KKN O
}LL 
varMM 
infoMM 
=MM 
awaitMM 
_signInManagerMM +
.MM+ ,%
GetExternalLoginInfoAsyncMM, E
(MME F
)MMF G
;MMG H
ifNN 
(NN 
infoNN 
==NN 
nullNN 
)NN 
{OO 
ErrorMessagePP 
=PP 
$strPP J
;PPJ K
returnQQ 
RedirectToPageQQ %
(QQ% &
$strQQ& /
,QQ/ 0
newQQ1 4
{QQ5 6
	ReturnUrlQQ7 @
=QQA B
	returnUrlQQC L
}QQM N
)QQN O
;QQO P
}RR 
varUU 
resultUU 
=UU 
awaitUU 
_signInManagerUU -
.UU- .$
ExternalLoginSignInAsyncUU. F
(UUF G
infoUUG K
.UUK L
LoginProviderUUL Y
,UUY Z
infoUU[ _
.UU_ `
ProviderKeyUU` k
,UUk l
isPersistentUUm y
:UUy z
false	UU{ Ä
,
UUÄ Å
bypassTwoFactor
UUÇ ë
:
UUí ì
true
UUî ò
)
UUò ô
;
UUô ö
ifVV 
(VV 
resultVV 
.VV 
	SucceededVV  
)VV  !
{WW 
_loggerXX 
.XX 
LogInformationXX &
(XX& '
$strXX' X
,XXX Y
infoXXZ ^
.XX^ _
	PrincipalXX_ h
.XXh i
IdentityXXi q
.XXq r
NameXXr v
,XXv w
infoXXx |
.XX| }
LoginProvider	XX} ä
)
XXä ã
;
XXã å
returnYY 
LocalRedirectYY $
(YY$ %
	returnUrlYY% .
)YY. /
;YY/ 0
}ZZ 
if[[ 
([[ 
result[[ 
.[[ 
IsLockedOut[[ "
)[[" #
{\\ 
return]] 
RedirectToPage]] %
(]]% &
$str]]& 1
)]]1 2
;]]2 3
}^^ 
else__ 
{`` 
	ReturnUrlbb 
=bb 
	returnUrlbb %
;bb% &
LoginProvidercc 
=cc 
infocc  $
.cc$ %
LoginProvidercc% 2
;cc2 3
ifdd 
(dd 
infodd 
.dd 
	Principaldd "
.dd" #
HasClaimdd# +
(dd+ ,
cdd, -
=>dd. 0
cdd1 2
.dd2 3
Typedd3 7
==dd8 :

ClaimTypesdd; E
.ddE F
EmailddF K
)ddK L
)ddL M
{ee 
Inputff 
=ff 
newff 

InputModelff  *
{gg 
Emailhh 
=hh 
infohh  $
.hh$ %
	Principalhh% .
.hh. /
FindFirstValuehh/ =
(hh= >

ClaimTypeshh> H
.hhH I
EmailhhI N
)hhN O
}ii 
;ii 
}jj 
returnkk 
Pagekk 
(kk 
)kk 
;kk 
}ll 
}mm 	
publicoo 
asyncoo 
Taskoo 
<oo 
IActionResultoo '
>oo' (#
OnPostConfirmationAsyncoo) @
(oo@ A
stringooA G
	returnUrlooH Q
=ooR S
nullooT X
)ooX Y
{pp 	
	returnUrlqq 
=qq 
	returnUrlqq !
??qq" $
Urlqq% (
.qq( )
Contentqq) 0
(qq0 1
$strqq1 5
)qq5 6
;qq6 7
varss 
infoss 
=ss 
awaitss 
_signInManagerss +
.ss+ ,%
GetExternalLoginInfoAsyncss, E
(ssE F
)ssF G
;ssG H
iftt 
(tt 
infott 
==tt 
nulltt 
)tt 
{uu 
ErrorMessagevv 
=vv 
$strvv ^
;vv^ _
returnww 
RedirectToPageww %
(ww% &
$strww& /
,ww/ 0
newww1 4
{ww5 6
	ReturnUrlww7 @
=wwA B
	returnUrlwwC L
}wwM N
)wwN O
;wwO P
}xx 
ifzz 
(zz 

ModelStatezz 
.zz 
IsValidzz "
)zz" #
{{{ 
var|| 
user|| 
=|| 
new|| 
IdentityUser|| +
{||, -
UserName||. 6
=||7 8
Input||9 >
.||> ?
Email||? D
,||D E
Email||F K
=||L M
Input||N S
.||S T
Email||T Y
}||Z [
;||[ \
var}} 
result}} 
=}} 
await}} "
_userManager}}# /
.}}/ 0
CreateAsync}}0 ;
(}}; <
user}}< @
)}}@ A
;}}A B
if~~ 
(~~ 
result~~ 
.~~ 
	Succeeded~~ $
)~~$ %
{ 
result
ÄÄ 
=
ÄÄ 
await
ÄÄ "
_userManager
ÄÄ# /
.
ÄÄ/ 0
AddLoginAsync
ÄÄ0 =
(
ÄÄ= >
user
ÄÄ> B
,
ÄÄB C
info
ÄÄD H
)
ÄÄH I
;
ÄÄI J
if
ÅÅ 
(
ÅÅ 
result
ÅÅ 
.
ÅÅ 
	Succeeded
ÅÅ (
)
ÅÅ( )
{
ÇÇ 
await
ÉÉ 
_signInManager
ÉÉ ,
.
ÉÉ, -
SignInAsync
ÉÉ- 8
(
ÉÉ8 9
user
ÉÉ9 =
,
ÉÉ= >
isPersistent
ÉÉ? K
:
ÉÉK L
false
ÉÉM R
)
ÉÉR S
;
ÉÉS T
_logger
ÑÑ 
.
ÑÑ  
LogInformation
ÑÑ  .
(
ÑÑ. /
$str
ÑÑ/ _
,
ÑÑ_ `
info
ÑÑa e
.
ÑÑe f
LoginProvider
ÑÑf s
)
ÑÑs t
;
ÑÑt u
var
ÜÜ 
userId
ÜÜ "
=
ÜÜ# $
await
ÜÜ% *
_userManager
ÜÜ+ 7
.
ÜÜ7 8
GetUserIdAsync
ÜÜ8 F
(
ÜÜF G
user
ÜÜG K
)
ÜÜK L
;
ÜÜL M
var
áá 
code
áá  
=
áá! "
await
áá# (
_userManager
áá) 5
.
áá5 61
#GenerateEmailConfirmationTokenAsync
áá6 Y
(
ááY Z
user
ááZ ^
)
áá^ _
;
áá_ `
code
àà 
=
àà 
WebEncoders
àà *
.
àà* +
Base64UrlEncode
àà+ :
(
àà: ;
Encoding
àà; C
.
ààC D
UTF8
ààD H
.
ààH I
GetBytes
ààI Q
(
ààQ R
code
ààR V
)
ààV W
)
ààW X
;
ààX Y
var
ââ 
callbackUrl
ââ '
=
ââ( )
Url
ââ* -
.
ââ- .
Page
ââ. 2
(
ââ2 3
$str
ää 3
,
ää3 4
pageHandler
ãã '
:
ãã' (
null
ãã) -
,
ãã- .
values
åå "
:
åå" #
new
åå$ '
{
åå( )
area
åå* .
=
åå/ 0
$str
åå1 ;
,
åå; <
userId
åå= C
=
ååD E
userId
ååF L
,
ååL M
code
ååN R
=
ååS T
code
ååU Y
}
ååZ [
,
åå[ \
protocol
çç $
:
çç$ %
Request
çç& -
.
çç- .
Scheme
çç. 4
)
çç4 5
;
çç5 6
await
èè 
_emailSender
èè *
.
èè* +
SendEmailAsync
èè+ 9
(
èè9 :
Input
èè: ?
.
èè? @
Email
èè@ E
,
èèE F
$str
èèG [
,
èè[ \
$"
êê 6
(Please confirm your account by <a href='
êê F
{
êêF G
HtmlEncoder
êêG R
.
êêR S
Default
êêS Z
.
êêZ [
Encode
êê[ a
(
êêa b
callbackUrl
êêb m
)
êêm n
}
êên o#
'>clicking here</a>.êêo É
"êêÉ Ñ
)êêÑ Ö
;êêÖ Ü
return
íí 
LocalRedirect
íí ,
(
íí, -
	returnUrl
íí- 6
)
íí6 7
;
íí7 8
}
ìì 
}
îî 
foreach
ïï 
(
ïï 
var
ïï 
error
ïï "
in
ïï# %
result
ïï& ,
.
ïï, -
Errors
ïï- 3
)
ïï3 4
{
ññ 

ModelState
óó 
.
óó 
AddModelError
óó ,
(
óó, -
string
óó- 3
.
óó3 4
Empty
óó4 9
,
óó9 :
error
óó; @
.
óó@ A
Description
óóA L
)
óóL M
;
óóM N
}
òò 
}
ôô 
LoginProvider
õõ 
=
õõ 
info
õõ  
.
õõ  !
LoginProvider
õõ! .
;
õõ. /
	ReturnUrl
úú 
=
úú 
	returnUrl
úú !
;
úú! "
return
ùù 
Page
ùù 
(
ùù 
)
ùù 
;
ùù 
}
ûû 	
}
üü 
}†† â$
ÅC:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Areas\Identity\Pages\Account\ForgotPassword.cshtml.cs
	namespace 	
ChajdPizzaWebApp
 
. 
Areas  
.  !
Identity! )
.) *
Pages* /
./ 0
Account0 7
{ 
[ 
AllowAnonymous 
] 
public 

class 
ForgotPasswordModel $
:% &
	PageModel' 0
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
IEmailSender %
_emailSender& 2
;2 3
public 
ForgotPasswordModel "
(" #
UserManager# .
<. /
IdentityUser/ ;
>; <
userManager= H
,H I
IEmailSenderJ V
emailSenderW b
)b c
{ 	
_userManager 
= 
userManager &
;& '
_emailSender 
= 
emailSender &
;& '
} 	
[ 	
BindProperty	 
] 
public 

InputModel 
Input 
{  !
get" %
;% &
set' *
;* +
}, -
public 
class 

InputModel 
{   	
[!! 
Required!! 
]!! 
["" 
EmailAddress"" 
]"" 
public## 
string## 
Email## 
{##  !
get##" %
;##% &
set##' *
;##* +
}##, -
}$$ 	
public&& 
async&& 
Task&& 
<&& 
IActionResult&& '
>&&' (
OnPostAsync&&) 4
(&&4 5
)&&5 6
{'' 	
if(( 
((( 

ModelState(( 
.(( 
IsValid(( "
)((" #
{)) 
var** 
user** 
=** 
await**  
_userManager**! -
.**- .
FindByEmailAsync**. >
(**> ?
Input**? D
.**D E
Email**E J
)**J K
;**K L
if++ 
(++ 
user++ 
==++ 
null++  
||++! #
!++$ %
(++% &
await++& +
_userManager++, 8
.++8 9!
IsEmailConfirmedAsync++9 N
(++N O
user++O S
)++S T
)++T U
)++U V
{,, 
return.. 
RedirectToPage.. )
(..) *
$str..* H
)..H I
;..I J
}// 
var33 
code33 
=33 
await33  
_userManager33! -
.33- .+
GeneratePasswordResetTokenAsync33. M
(33M N
user33N R
)33R S
;33S T
code44 
=44 
WebEncoders44 "
.44" #
Base64UrlEncode44# 2
(442 3
Encoding443 ;
.44; <
UTF844< @
.44@ A
GetBytes44A I
(44I J
code44J N
)44N O
)44O P
;44P Q
var55 
callbackUrl55 
=55  !
Url55" %
.55% &
Page55& *
(55* +
$str66 ,
,66, -
pageHandler77 
:77  
null77! %
,77% &
values88 
:88 
new88 
{88  !
area88" &
=88' (
$str88) 3
,883 4
code885 9
}88: ;
,88; <
protocol99 
:99 
Request99 %
.99% &
Scheme99& ,
)99, -
;99- .
await;; 
_emailSender;; "
.;;" #
SendEmailAsync;;# 1
(;;1 2
Input<< 
.<< 
Email<< 
,<<  
$str== $
,==$ %
$">> 3
'Please reset your password by <a href='>> =
{>>= >
HtmlEncoder>>> I
.>>I J
Default>>J Q
.>>Q R
Encode>>R X
(>>X Y
callbackUrl>>Y d
)>>d e
}>>e f 
'>clicking here</a>.>>f z
">>z {
)>>{ |
;>>| }
return@@ 
RedirectToPage@@ %
(@@% &
$str@@& D
)@@D E
;@@E F
}AA 
returnCC 
PageCC 
(CC 
)CC 
;CC 
}DD 	
}EE 
}FF ¨
çC:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Areas\Identity\Pages\Account\ForgotPasswordConfirmation.cshtml.cs
	namespace 	
ChajdPizzaWebApp
 
. 
Areas  
.  !
Identity! )
.) *
Pages* /
./ 0
Account0 7
{ 
[		 
AllowAnonymous		 
]		 
public

 

class

 &
ForgotPasswordConfirmation

 +
:

, -
	PageModel

. 7
{ 
public 
void 
OnGet 
( 
) 
{ 	
} 	
} 
} ä
zC:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Areas\Identity\Pages\Account\Lockout.cshtml.cs
	namespace 	
ChajdPizzaWebApp
 
. 
Areas  
.  !
Identity! )
.) *
Pages* /
./ 0
Account0 7
{		 
[

 
AllowAnonymous

 
]

 
public 

class 
LockoutModel 
: 
	PageModel  )
{ 
public 
void 
OnGet 
( 
) 
{ 	
} 	
} 
} ‡T
xC:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Areas\Identity\Pages\Account\Login.cshtml.cs
	namespace 	
ChajdPizzaWebApp
 
. 
Areas  
.  !
Identity! )
.) *
Pages* /
./ 0
Account0 7
{ 
[ 
AllowAnonymous 
] 
public 

class 

LoginModel 
: 
	PageModel '
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
ILogger  
<  !

LoginModel! +
>+ ,
_logger- 4
;4 5
private 
readonly 
IEmailSender %
_emailSender& 2
;2 3
public 

LoginModel 
( 
SignInManager '
<' (
IdentityUser( 4
>4 5
signInManager6 C
,C D
ILogger 
< 

LoginModel 
> 
logger  &
,& '
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
IEmailSender 
emailSender $
)$ %
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
_emailSender   
=   
emailSender   &
;  & '
_logger!! 
=!! 
logger!! 
;!! 
}"" 	
[$$ 	
BindProperty$$	 
]$$ 
public%% 

InputModel%% 
Input%% 
{%%  !
get%%" %
;%%% &
set%%' *
;%%* +
}%%, -
public'' 
IList'' 
<''  
AuthenticationScheme'' )
>'') *
ExternalLogins''+ 9
{'': ;
get''< ?
;''? @
set''A D
;''D E
}''F G
public)) 
string)) 
	ReturnUrl)) 
{))  !
get))" %
;))% &
set))' *
;))* +
})), -
[++ 	
TempData++	 
]++ 
public,, 
string,, 
ErrorMessage,, "
{,,# $
get,,% (
;,,( )
set,,* -
;,,- .
},,/ 0
public.. 
class.. 

InputModel.. 
{// 	
[00 
Required00 
]00 
[11 
EmailAddress11 
]11 
public22 
string22 
Email22 
{22  !
get22" %
;22% &
set22' *
;22* +
}22, -
[44 
Required44 
]44 
[55 
DataType55 
(55 
DataType55 
.55 
Password55 '
)55' (
]55( )
public66 
string66 
Password66 "
{66# $
get66% (
;66( )
set66* -
;66- .
}66/ 0
[88 
Display88 
(88 
Name88 
=88 
$str88 *
)88* +
]88+ ,
public99 
bool99 

RememberMe99 "
{99# $
get99% (
;99( )
set99* -
;99- .
}99/ 0
}:: 	
public<< 
async<< 
Task<< 

OnGetAsync<< $
(<<$ %
string<<% +
	returnUrl<<, 5
=<<6 7
null<<8 <
)<<< =
{== 	
if>> 
(>> 
!>> 
string>> 
.>> 
IsNullOrEmpty>> %
(>>% &
ErrorMessage>>& 2
)>>2 3
)>>3 4
{?? 

ModelState@@ 
.@@ 
AddModelError@@ (
(@@( )
string@@) /
.@@/ 0
Empty@@0 5
,@@5 6
ErrorMessage@@7 C
)@@C D
;@@D E
}AA 
	returnUrlCC 
=CC 
	returnUrlCC !
??CC" $
UrlCC% (
.CC( )
ContentCC) 0
(CC0 1
$strCC1 5
)CC5 6
;CC6 7
awaitFF 
HttpContextFF 
.FF 
SignOutAsyncFF *
(FF* +
IdentityConstantsFF+ <
.FF< =
ExternalSchemeFF= K
)FFK L
;FFL M
ExternalLoginsHH 
=HH 
(HH 
awaitHH #
_signInManagerHH$ 2
.HH2 31
%GetExternalAuthenticationSchemesAsyncHH3 X
(HHX Y
)HHY Z
)HHZ [
.HH[ \
ToListHH\ b
(HHb c
)HHc d
;HHd e
	ReturnUrlJJ 
=JJ 
	returnUrlJJ !
;JJ! "
}KK 	
publicMM 
asyncMM 
TaskMM 
<MM 
IActionResultMM '
>MM' (
OnPostAsyncMM) 4
(MM4 5
stringMM5 ;
	returnUrlMM< E
=MMF G
nullMMH L
)MML M
{NN 	
	returnUrlOO 
=OO 
	returnUrlOO !
??OO" $
UrlOO% (
.OO( )
ContentOO) 0
(OO0 1
$strOO1 5
)OO5 6
;OO6 7
ifQQ 
(QQ 

ModelStateQQ 
.QQ 
IsValidQQ "
)QQ" #
{RR 
varUU 
resultUU 
=UU 
awaitUU "
_signInManagerUU# 1
.UU1 2
PasswordSignInAsyncUU2 E
(UUE F
InputUUF K
.UUK L
EmailUUL Q
,UUQ R
InputUUS X
.UUX Y
PasswordUUY a
,UUa b
InputUUc h
.UUh i

RememberMeUUi s
,UUs t
lockoutOnFailure	UUu Ö
:
UUÖ Ü
true
UUá ã
)
UUã å
;
UUå ç
ifVV 
(VV 
resultVV 
.VV 
	SucceededVV $
)VV$ %
{WW 
_loggerXX 
.XX 
LogInformationXX *
(XX* +
$strXX+ <
)XX< =
;XX= >
returnYY 
LocalRedirectYY (
(YY( )
	returnUrlYY) 2
)YY2 3
;YY3 4
}ZZ 
if[[ 
([[ 
result[[ 
.[[ 
RequiresTwoFactor[[ ,
)[[, -
{\\ 
return]] 
RedirectToPage]] )
(]]) *
$str]]* :
,]]: ;
new]]< ?
{]]@ A
	ReturnUrl]]B K
=]]L M
	returnUrl]]N W
,]]W X

RememberMe]]Y c
=]]d e
Input]]f k
.]]k l

RememberMe]]l v
}]]w x
)]]x y
;]]y z
}^^ 
if__ 
(__ 
result__ 
.__ 
IsLockedOut__ &
)__& '
{`` 
_loggeraa 
.aa 

LogWarningaa &
(aa& '
$straa' A
)aaA B
;aaB C
returnbb 
RedirectToPagebb )
(bb) *
$strbb* 5
)bb5 6
;bb6 7
}cc 
elsedd 
{ee 

ModelStateff 
.ff 
AddModelErrorff ,
(ff, -
stringff- 3
.ff3 4
Emptyff4 9
,ff9 :
$strff; S
)ffS T
;ffT U
returngg 
Pagegg 
(gg  
)gg  !
;gg! "
}hh 
}ii 
returnll 
Pagell 
(ll 
)ll 
;ll 
}mm 	
publicoo 
asyncoo 
Taskoo 
<oo 
IActionResultoo '
>oo' (,
 OnPostSendVerificationEmailAsyncoo) I
(ooI J
)ooJ K
{pp 	
ifqq 
(qq 
!qq 

ModelStateqq 
.qq 
IsValidqq #
)qq# $
{rr 
returnss 
Pagess 
(ss 
)ss 
;ss 
}tt 
varvv 
uservv 
=vv 
awaitvv 
_userManagervv )
.vv) *
FindByEmailAsyncvv* :
(vv: ;
Inputvv; @
.vv@ A
EmailvvA F
)vvF G
;vvG H
ifww 
(ww 
userww 
==ww 
nullww 
)ww 
{xx 

ModelStateyy 
.yy 
AddModelErroryy (
(yy( )
stringyy) /
.yy/ 0
Emptyyy0 5
,yy5 6
$stryy7 j
)yyj k
;yyk l
}zz 
var|| 
userId|| 
=|| 
await|| 
_userManager|| +
.||+ ,
GetUserIdAsync||, :
(||: ;
user||; ?
)||? @
;||@ A
var}} 
code}} 
=}} 
await}} 
_userManager}} )
.}}) */
#GenerateEmailConfirmationTokenAsync}}* M
(}}M N
user}}N R
)}}R S
;}}S T
var~~ 
callbackUrl~~ 
=~~ 
Url~~ !
.~~! "
Page~~" &
(~~& '
$str '
,' (
pageHandler
ÄÄ 
:
ÄÄ 
null
ÄÄ !
,
ÄÄ! "
values
ÅÅ 
:
ÅÅ 
new
ÅÅ 
{
ÅÅ 
userId
ÅÅ $
=
ÅÅ% &
userId
ÅÅ' -
,
ÅÅ- .
code
ÅÅ/ 3
=
ÅÅ4 5
code
ÅÅ6 :
}
ÅÅ; <
,
ÅÅ< =
protocol
ÇÇ 
:
ÇÇ 
Request
ÇÇ !
.
ÇÇ! "
Scheme
ÇÇ" (
)
ÇÇ( )
;
ÇÇ) *
await
ÉÉ 
_emailSender
ÉÉ 
.
ÉÉ 
SendEmailAsync
ÉÉ -
(
ÉÉ- .
Input
ÑÑ 
.
ÑÑ 
Email
ÑÑ 
,
ÑÑ 
$str
ÖÖ $
,
ÖÖ$ %
$"
ÜÜ 6
(Please confirm your account by <a href='
ÜÜ :
{
ÜÜ: ;
HtmlEncoder
ÜÜ; F
.
ÜÜF G
Default
ÜÜG N
.
ÜÜN O
Encode
ÜÜO U
(
ÜÜU V
callbackUrl
ÜÜV a
)
ÜÜa b
}
ÜÜb c"
'>clicking here</a>.
ÜÜc w
"
ÜÜw x
)
ÜÜx y
;
ÜÜy z

ModelState
àà 
.
àà 
AddModelError
àà $
(
àà$ %
string
àà% +
.
àà+ ,
Empty
àà, 1
,
àà1 2
$str
àà3 f
)
ààf g
;
ààg h
return
ââ 
Page
ââ 
(
ââ 
)
ââ 
;
ââ 
}
ää 	
}
ãã 
}åå €;
C:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Areas\Identity\Pages\Account\LoginWith2fa.cshtml.cs
	namespace 	
ChajdPizzaWebApp
 
. 
Areas  
.  !
Identity! )
.) *
Pages* /
./ 0
Account0 7
{ 
[ 
AllowAnonymous 
] 
public 

class 
LoginWith2faModel "
:# $
	PageModel% .
{ 
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
ILogger  
<  !
LoginWith2faModel! 2
>2 3
_logger4 ;
;; <
public 
LoginWith2faModel  
(  !
SignInManager! .
<. /
IdentityUser/ ;
>; <
signInManager= J
,J K
ILoggerL S
<S T
LoginWith2faModelT e
>e f
loggerg m
)m n
{ 	
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
[ 	
BindProperty	 
] 
public 

InputModel 
Input 
{  !
get" %
;% &
set' *
;* +
}, -
public 
bool 

RememberMe 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
	ReturnUrl 
{  !
get" %
;% &
set' *
;* +
}, -
public!! 
class!! 

InputModel!! 
{"" 	
[## 
Required## 
]## 
[$$ 
StringLength$$ 
($$ 
$num$$ 
,$$ 
ErrorMessage$$ )
=$$* +
$str$$, j
,$$j k
MinimumLength$$l y
=$$z {
$num$$| }
)$$} ~
]$$~ 
[%% 
DataType%% 
(%% 
DataType%% 
.%% 
Text%% #
)%%# $
]%%$ %
[&& 
Display&& 
(&& 
Name&& 
=&& 
$str&& 0
)&&0 1
]&&1 2
public'' 
string'' 
TwoFactorCode'' '
{''( )
get''* -
;''- .
set''/ 2
;''2 3
}''4 5
[)) 
Display)) 
()) 
Name)) 
=)) 
$str)) 3
)))3 4
]))4 5
public** 
bool** 
RememberMachine** '
{**( )
get*** -
;**- .
set**/ 2
;**2 3
}**4 5
}++ 	
public-- 
async-- 
Task-- 
<-- 
IActionResult-- '
>--' (

OnGetAsync--) 3
(--3 4
bool--4 8

rememberMe--9 C
,--C D
string--E K
	returnUrl--L U
=--V W
null--X \
)--\ ]
{.. 	
var00 
user00 
=00 
await00 
_signInManager00 +
.00+ ,/
#GetTwoFactorAuthenticationUserAsync00, O
(00O P
)00P Q
;00Q R
if22 
(22 
user22 
==22 
null22 
)22 
{33 
throw44 
new44 %
InvalidOperationException44 3
(443 4
$"444 6:
.Unable to load two-factor authentication user.446 d
"44d e
)44e f
;44f g
}55 
	ReturnUrl77 
=77 
	returnUrl77 !
;77! "

RememberMe88 
=88 

rememberMe88 #
;88# $
return:: 
Page:: 
(:: 
):: 
;:: 
};; 	
public== 
async== 
Task== 
<== 
IActionResult== '
>==' (
OnPostAsync==) 4
(==4 5
bool==5 9

rememberMe==: D
,==D E
string==F L
	returnUrl==M V
===W X
null==Y ]
)==] ^
{>> 	
if?? 
(?? 
!?? 

ModelState?? 
.?? 
IsValid?? #
)??# $
{@@ 
returnAA 
PageAA 
(AA 
)AA 
;AA 
}BB 
	returnUrlDD 
=DD 
	returnUrlDD !
??DD" $
UrlDD% (
.DD( )
ContentDD) 0
(DD0 1
$strDD1 5
)DD5 6
;DD6 7
varFF 
userFF 
=FF 
awaitFF 
_signInManagerFF +
.FF+ ,/
#GetTwoFactorAuthenticationUserAsyncFF, O
(FFO P
)FFP Q
;FFQ R
ifGG 
(GG 
userGG 
==GG 
nullGG 
)GG 
{HH 
throwII 
newII %
InvalidOperationExceptionII 3
(II3 4
$"II4 6:
.Unable to load two-factor authentication user.II6 d
"IId e
)IIe f
;IIf g
}JJ 
varLL 
authenticatorCodeLL !
=LL" #
InputLL$ )
.LL) *
TwoFactorCodeLL* 7
.LL7 8
ReplaceLL8 ?
(LL? @
$strLL@ C
,LLC D
stringLLE K
.LLK L
EmptyLLL Q
)LLQ R
.LLR S
ReplaceLLS Z
(LLZ [
$strLL[ ^
,LL^ _
stringLL` f
.LLf g
EmptyLLg l
)LLl m
;LLm n
varNN 
resultNN 
=NN 
awaitNN 
_signInManagerNN -
.NN- .-
!TwoFactorAuthenticatorSignInAsyncNN. O
(NNO P
authenticatorCodeNNP a
,NNa b

rememberMeNNc m
,NNm n
InputNNo t
.NNt u
RememberMachine	NNu Ñ
)
NNÑ Ö
;
NNÖ Ü
ifPP 
(PP 
resultPP 
.PP 
	SucceededPP  
)PP  !
{QQ 
_loggerRR 
.RR 
LogInformationRR &
(RR& '
$strRR' T
,RRT U
userRRV Z
.RRZ [
IdRR[ ]
)RR] ^
;RR^ _
returnSS 
LocalRedirectSS $
(SS$ %
	returnUrlSS% .
)SS. /
;SS/ 0
}TT 
elseUU 
ifUU 
(UU 
resultUU 
.UU 
IsLockedOutUU '
)UU' (
{VV 
_loggerWW 
.WW 

LogWarningWW "
(WW" #
$strWW# P
,WWP Q
userWWR V
.WWV W
IdWWW Y
)WWY Z
;WWZ [
returnXX 
RedirectToPageXX %
(XX% &
$strXX& 1
)XX1 2
;XX2 3
}YY 
elseZZ 
{[[ 
_logger\\ 
.\\ 

LogWarning\\ "
(\\" #
$str\\# d
,\\d e
user\\f j
.\\j k
Id\\k m
)\\m n
;\\n o

ModelState]] 
.]] 
AddModelError]] (
(]]( )
string]]) /
.]]/ 0
Empty]]0 5
,]]5 6
$str]]7 T
)]]T U
;]]U V
return^^ 
Page^^ 
(^^ 
)^^ 
;^^ 
}__ 
}`` 	
}aa 
}bb ∆2
àC:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Areas\Identity\Pages\Account\LoginWithRecoveryCode.cshtml.cs
	namespace 	
ChajdPizzaWebApp
 
. 
Areas  
.  !
Identity! )
.) *
Pages* /
./ 0
Account0 7
{ 
[ 
AllowAnonymous 
] 
public 

class &
LoginWithRecoveryCodeModel +
:, -
	PageModel. 7
{ 
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
ILogger  
<  !&
LoginWithRecoveryCodeModel! ;
>; <
_logger= D
;D E
public &
LoginWithRecoveryCodeModel )
() *
SignInManager* 7
<7 8
IdentityUser8 D
>D E
signInManagerF S
,S T
ILoggerU \
<\ ]&
LoginWithRecoveryCodeModel] w
>w x
loggery 
)	 Ä
{ 	
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
[ 	
BindProperty	 
] 
public 

InputModel 
Input 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
	ReturnUrl 
{  !
get" %
;% &
set' *
;* +
}, -
public 
class 

InputModel 
{   	
[!! 
BindProperty!! 
]!! 
["" 
Required"" 
]"" 
[## 
DataType## 
(## 
DataType## 
.## 
Text## #
)### $
]##$ %
[$$ 
Display$$ 
($$ 
Name$$ 
=$$ 
$str$$ +
)$$+ ,
]$$, -
public%% 
string%% 
RecoveryCode%% &
{%%' (
get%%) ,
;%%, -
set%%. 1
;%%1 2
}%%3 4
}&& 	
public(( 
async(( 
Task(( 
<(( 
IActionResult(( '
>((' (

OnGetAsync(() 3
(((3 4
string((4 :
	returnUrl((; D
=((E F
null((G K
)((K L
{)) 	
var++ 
user++ 
=++ 
await++ 
_signInManager++ +
.+++ ,/
#GetTwoFactorAuthenticationUserAsync++, O
(++O P
)++P Q
;++Q R
if,, 
(,, 
user,, 
==,, 
null,, 
),, 
{-- 
throw.. 
new.. %
InvalidOperationException.. 3
(..3 4
$"..4 6:
.Unable to load two-factor authentication user...6 d
"..d e
)..e f
;..f g
}// 
	ReturnUrl11 
=11 
	returnUrl11 !
;11! "
return33 
Page33 
(33 
)33 
;33 
}44 	
public66 
async66 
Task66 
<66 
IActionResult66 '
>66' (
OnPostAsync66) 4
(664 5
string665 ;
	returnUrl66< E
=66F G
null66H L
)66L M
{77 	
if88 
(88 
!88 

ModelState88 
.88 
IsValid88 #
)88# $
{99 
return:: 
Page:: 
(:: 
):: 
;:: 
};; 
var== 
user== 
=== 
await== 
_signInManager== +
.==+ ,/
#GetTwoFactorAuthenticationUserAsync==, O
(==O P
)==P Q
;==Q R
if>> 
(>> 
user>> 
==>> 
null>> 
)>> 
{?? 
throw@@ 
new@@ %
InvalidOperationException@@ 3
(@@3 4
$"@@4 6:
.Unable to load two-factor authentication user.@@6 d
"@@d e
)@@e f
;@@f g
}AA 
varCC 
recoveryCodeCC 
=CC 
InputCC $
.CC$ %
RecoveryCodeCC% 1
.CC1 2
ReplaceCC2 9
(CC9 :
$strCC: =
,CC= >
stringCC? E
.CCE F
EmptyCCF K
)CCK L
;CCL M
varEE 
resultEE 
=EE 
awaitEE 
_signInManagerEE -
.EE- .,
 TwoFactorRecoveryCodeSignInAsyncEE. N
(EEN O
recoveryCodeEEO [
)EE[ \
;EE\ ]
ifGG 
(GG 
resultGG 
.GG 
	SucceededGG  
)GG  !
{HH 
_loggerII 
.II 
LogInformationII &
(II& '
$strII' `
,II` a
userIIb f
.IIf g
IdIIg i
)IIi j
;IIj k
returnJJ 
LocalRedirectJJ $
(JJ$ %
	returnUrlJJ% .
??JJ/ 1
UrlJJ2 5
.JJ5 6
ContentJJ6 =
(JJ= >
$strJJ> B
)JJB C
)JJC D
;JJD E
}KK 
ifLL 
(LL 
resultLL 
.LL 
IsLockedOutLL "
)LL" #
{MM 
_loggerNN 
.NN 

LogWarningNN "
(NN" #
$strNN# P
,NNP Q
userNNR V
.NNV W
IdNNW Y
)NNY Z
;NNZ [
returnOO 
RedirectToPageOO %
(OO% &
$strOO& 1
)OO1 2
;OO2 3
}PP 
elseQQ 
{RR 
_loggerSS 
.SS 

LogWarningSS "
(SS" #
$strSS# _
,SS_ `
userSSa e
.SSe f
IdSSf h
)SSh i
;SSi j

ModelStateTT 
.TT 
AddModelErrorTT (
(TT( )
stringTT) /
.TT/ 0
EmptyTT0 5
,TT5 6
$strTT7 W
)TTW X
;TTX Y
returnUU 
PageUU 
(UU 
)UU 
;UU 
}VV 
}WW 	
}XX 
}YY ≈
yC:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Areas\Identity\Pages\Account\Logout.cshtml.cs
	namespace 	
ChajdPizzaWebApp
 
. 
Areas  
.  !
Identity! )
.) *
Pages* /
./ 0
Account0 7
{ 
[ 
AllowAnonymous 
] 
public 

class 
LogoutModel 
: 
	PageModel (
{ 
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
ILogger  
<  !
LogoutModel! ,
>, -
_logger. 5
;5 6
public 
LogoutModel 
( 
SignInManager (
<( )
IdentityUser) 5
>5 6
signInManager7 D
,D E
ILoggerF M
<M N
LogoutModelN Y
>Y Z
logger[ a
)a b
{ 	
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
public 
void 
OnGet 
( 
) 
{ 	
} 	
public 
async 
Task 
< 
IActionResult '
>' (
OnPost) /
(/ 0
string0 6
	returnUrl7 @
=A B
nullC G
)G H
{ 	
await 
_signInManager  
.  !
SignOutAsync! -
(- .
). /
;/ 0
_logger   
.   
LogInformation   "
(  " #
$str  # 5
)  5 6
;  6 7
if!! 
(!! 
	returnUrl!! 
!=!! 
null!! !
)!!! "
{"" 
return## 
LocalRedirect## $
(##$ %
	returnUrl##% .
)##. /
;##/ 0
}$$ 
else%% 
{&& 
return'' 
RedirectToPage'' %
(''% &
)''& '
;''' (
}(( 
})) 	
}** 
}++ ·>
àC:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Areas\Identity\Pages\Account\Manage\ChangePassword.cshtml.cs
	namespace

 	
ChajdPizzaWebApp


 
.

 
Areas

  
.

  !
Identity

! )
.

) *
Pages

* /
.

/ 0
Account

0 7
.

7 8
Manage

8 >
{ 
public 

class 
ChangePasswordModel $
:% &
	PageModel' 0
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
ILogger  
<  !
ChangePasswordModel! 4
>4 5
_logger6 =
;= >
public 
ChangePasswordModel "
(" #
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
SignInManager 
< 
IdentityUser &
>& '
signInManager( 5
,5 6
ILogger 
< 
ChangePasswordModel '
>' (
logger) /
)/ 0
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
[ 	
BindProperty	 
] 
public 

InputModel 
Input 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
TempData	 
] 
public   
string   
StatusMessage   #
{  $ %
get  & )
;  ) *
set  + .
;  . /
}  0 1
public"" 
class"" 

InputModel"" 
{## 	
[$$ 
Required$$ 
]$$ 
[%% 
DataType%% 
(%% 
DataType%% 
.%% 
Password%% '
)%%' (
]%%( )
[&& 
Display&& 
(&& 
Name&& 
=&& 
$str&& .
)&&. /
]&&/ 0
public'' 
string'' 
OldPassword'' %
{''& '
get''( +
;''+ ,
set''- 0
;''0 1
}''2 3
[)) 
Required)) 
])) 
[** 
StringLength** 
(** 
$num** 
,** 
ErrorMessage** +
=**, -
$str**. l
,**l m
MinimumLength**n {
=**| }
$num**~ 
)	** Ä
]
**Ä Å
[++ 
DataType++ 
(++ 
DataType++ 
.++ 
Password++ '
)++' (
]++( )
[,, 
Display,, 
(,, 
Name,, 
=,, 
$str,, *
),,* +
],,+ ,
public-- 
string-- 
NewPassword-- %
{--& '
get--( +
;--+ ,
set--- 0
;--0 1
}--2 3
[// 
DataType// 
(// 
DataType// 
.// 
Password// '
)//' (
]//( )
[00 
Display00 
(00 
Name00 
=00 
$str00 2
)002 3
]003 4
[11 
Compare11 
(11 
$str11 "
,11" #
ErrorMessage11$ 0
=111 2
$str113 m
)11m n
]11n o
public22 
string22 
ConfirmPassword22 )
{22* +
get22, /
;22/ 0
set221 4
;224 5
}226 7
}33 	
public55 
async55 
Task55 
<55 
IActionResult55 '
>55' (

OnGetAsync55) 3
(553 4
)554 5
{66 	
var77 
user77 
=77 
await77 
_userManager77 )
.77) *
GetUserAsync77* 6
(776 7
User777 ;
)77; <
;77< =
if88 
(88 
user88 
==88 
null88 
)88 
{99 
return:: 
NotFound:: 
(::  
$"::  ")
Unable to load user with ID '::" ?
{::? @
_userManager::@ L
.::L M
	GetUserId::M V
(::V W
User::W [
)::[ \
}::\ ]
'.::] _
"::_ `
)::` a
;::a b
};; 
var== 
hasPassword== 
=== 
await== #
_userManager==$ 0
.==0 1
HasPasswordAsync==1 A
(==A B
user==B F
)==F G
;==G H
if>> 
(>> 
!>> 
hasPassword>> 
)>> 
{?? 
return@@ 
RedirectToPage@@ %
(@@% &
$str@@& 5
)@@5 6
;@@6 7
}AA 
returnCC 
PageCC 
(CC 
)CC 
;CC 
}DD 	
publicFF 
asyncFF 
TaskFF 
<FF 
IActionResultFF '
>FF' (
OnPostAsyncFF) 4
(FF4 5
)FF5 6
{GG 	
ifHH 
(HH 
!HH 

ModelStateHH 
.HH 
IsValidHH #
)HH# $
{II 
returnJJ 
PageJJ 
(JJ 
)JJ 
;JJ 
}KK 
varMM 
userMM 
=MM 
awaitMM 
_userManagerMM )
.MM) *
GetUserAsyncMM* 6
(MM6 7
UserMM7 ;
)MM; <
;MM< =
ifNN 
(NN 
userNN 
==NN 
nullNN 
)NN 
{OO 
returnPP 
NotFoundPP 
(PP  
$"PP  ")
Unable to load user with ID 'PP" ?
{PP? @
_userManagerPP@ L
.PPL M
	GetUserIdPPM V
(PPV W
UserPPW [
)PP[ \
}PP\ ]
'.PP] _
"PP_ `
)PP` a
;PPa b
}QQ 
varSS  
changePasswordResultSS $
=SS% &
awaitSS' ,
_userManagerSS- 9
.SS9 :
ChangePasswordAsyncSS: M
(SSM N
userSSN R
,SSR S
InputSST Y
.SSY Z
OldPasswordSSZ e
,SSe f
InputSSg l
.SSl m
NewPasswordSSm x
)SSx y
;SSy z
ifTT 
(TT 
!TT  
changePasswordResultTT %
.TT% &
	SucceededTT& /
)TT/ 0
{UU 
foreachVV 
(VV 
varVV 
errorVV "
inVV# % 
changePasswordResultVV& :
.VV: ;
ErrorsVV; A
)VVA B
{WW 

ModelStateXX 
.XX 
AddModelErrorXX ,
(XX, -
stringXX- 3
.XX3 4
EmptyXX4 9
,XX9 :
errorXX; @
.XX@ A
DescriptionXXA L
)XXL M
;XXM N
}YY 
returnZZ 
PageZZ 
(ZZ 
)ZZ 
;ZZ 
}[[ 
await]] 
_signInManager]]  
.]]  !
RefreshSignInAsync]]! 3
(]]3 4
user]]4 8
)]]8 9
;]]9 :
_logger^^ 
.^^ 
LogInformation^^ "
(^^" #
$str^^# N
)^^N O
;^^O P
StatusMessage__ 
=__ 
$str__ =
;__= >
returnaa 
RedirectToPageaa !
(aa! "
)aa" #
;aa# $
}bb 	
}cc 
}dd ˆ3
åC:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Areas\Identity\Pages\Account\Manage\DeletePersonalData.cshtml.cs
	namespace		 	
ChajdPizzaWebApp		
 
.		 
Areas		  
.		  !
Identity		! )
.		) *
Pages		* /
.		/ 0
Account		0 7
.		7 8
Manage		8 >
{

 
public 

class #
DeletePersonalDataModel (
:) *
	PageModel+ 4
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
ILogger  
<  !#
DeletePersonalDataModel! 8
>8 9
_logger: A
;A B
public #
DeletePersonalDataModel &
(& '
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
SignInManager 
< 
IdentityUser &
>& '
signInManager( 5
,5 6
ILogger 
< #
DeletePersonalDataModel +
>+ ,
logger- 3
)3 4
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
[ 	
BindProperty	 
] 
public 

InputModel 
Input 
{  !
get" %
;% &
set' *
;* +
}, -
public 
class 

InputModel 
{ 	
[   
Required   
]   
[!! 
DataType!! 
(!! 
DataType!! 
.!! 
Password!! '
)!!' (
]!!( )
public"" 
string"" 
Password"" "
{""# $
get""% (
;""( )
set""* -
;""- .
}""/ 0
}## 	
public%% 
bool%% 
RequirePassword%% #
{%%$ %
get%%& )
;%%) *
set%%+ .
;%%. /
}%%0 1
public'' 
async'' 
Task'' 
<'' 
IActionResult'' '
>''' (
OnGet'') .
(''. /
)''/ 0
{(( 	
var)) 
user)) 
=)) 
await)) 
_userManager)) )
.))) *
GetUserAsync))* 6
())6 7
User))7 ;
))); <
;))< =
if** 
(** 
user** 
==** 
null** 
)** 
{++ 
return,, 
NotFound,, 
(,,  
$",,  ")
Unable to load user with ID ',," ?
{,,? @
_userManager,,@ L
.,,L M
	GetUserId,,M V
(,,V W
User,,W [
),,[ \
},,\ ]
'.,,] _
",,_ `
),,` a
;,,a b
}-- 
RequirePassword// 
=// 
await// #
_userManager//$ 0
.//0 1
HasPasswordAsync//1 A
(//A B
user//B F
)//F G
;//G H
return00 
Page00 
(00 
)00 
;00 
}11 	
public33 
async33 
Task33 
<33 
IActionResult33 '
>33' (
OnPostAsync33) 4
(334 5
)335 6
{44 	
var55 
user55 
=55 
await55 
_userManager55 )
.55) *
GetUserAsync55* 6
(556 7
User557 ;
)55; <
;55< =
if66 
(66 
user66 
==66 
null66 
)66 
{77 
return88 
NotFound88 
(88  
$"88  ")
Unable to load user with ID '88" ?
{88? @
_userManager88@ L
.88L M
	GetUserId88M V
(88V W
User88W [
)88[ \
}88\ ]
'.88] _
"88_ `
)88` a
;88a b
}99 
RequirePassword;; 
=;; 
await;; #
_userManager;;$ 0
.;;0 1
HasPasswordAsync;;1 A
(;;A B
user;;B F
);;F G
;;;G H
if<< 
(<< 
RequirePassword<< 
)<<  
{== 
if>> 
(>> 
!>> 
await>> 
_userManager>> '
.>>' (
CheckPasswordAsync>>( :
(>>: ;
user>>; ?
,>>? @
Input>>A F
.>>F G
Password>>G O
)>>O P
)>>P Q
{?? 

ModelState@@ 
.@@ 
AddModelError@@ ,
(@@, -
string@@- 3
.@@3 4
Empty@@4 9
,@@9 :
$str@@; P
)@@P Q
;@@Q R
returnAA 
PageAA 
(AA  
)AA  !
;AA! "
}BB 
}CC 
varEE 
resultEE 
=EE 
awaitEE 
_userManagerEE +
.EE+ ,
DeleteAsyncEE, 7
(EE7 8
userEE8 <
)EE< =
;EE= >
varFF 
userIdFF 
=FF 
awaitFF 
_userManagerFF +
.FF+ ,
GetUserIdAsyncFF, :
(FF: ;
userFF; ?
)FF? @
;FF@ A
ifGG 
(GG 
!GG 
resultGG 
.GG 
	SucceededGG !
)GG! "
{HH 
throwII 
newII %
InvalidOperationExceptionII 3
(II3 4
$"II4 6=
1Unexpected error occurred deleting user with ID 'II6 g
{IIg h
userIdIIh n
}IIn o
'.IIo q
"IIq r
)IIr s
;IIs t
}JJ 
awaitLL 
_signInManagerLL  
.LL  !
SignOutAsyncLL! -
(LL- .
)LL. /
;LL/ 0
_loggerNN 
.NN 
LogInformationNN "
(NN" #
$strNN# P
,NNP Q
userIdNNR X
)NNX Y
;NNY Z
returnPP 
RedirectPP 
(PP 
$strPP  
)PP  !
;PP! "
}QQ 	
}RR 
}SS Œ(
ÑC:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Areas\Identity\Pages\Account\Manage\Disable2fa.cshtml.cs
	namespace

 	
ChajdPizzaWebApp


 
.

 
Areas

  
.

  !
Identity

! )
.

) *
Pages

* /
.

/ 0
Account

0 7
.

7 8
Manage

8 >
{ 
public 

class 
Disable2faModel  
:! "
	PageModel# ,
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
ILogger  
<  !
Disable2faModel! 0
>0 1
_logger2 9
;9 :
public 
Disable2faModel 
( 
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
ILogger 
< 
Disable2faModel #
># $
logger% +
)+ ,
{ 	
_userManager 
= 
userManager &
;& '
_logger 
= 
logger 
; 
} 	
[ 	
TempData	 
] 
public 
string 
StatusMessage #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
async 
Task 
< 
IActionResult '
>' (
OnGet) .
(. /
)/ 0
{ 	
var 
user 
= 
await 
_userManager )
.) *
GetUserAsync* 6
(6 7
User7 ;
); <
;< =
if 
( 
user 
== 
null 
) 
{   
return!! 
NotFound!! 
(!!  
$"!!  ")
Unable to load user with ID '!!" ?
{!!? @
_userManager!!@ L
.!!L M
	GetUserId!!M V
(!!V W
User!!W [
)!![ \
}!!\ ]
'.!!] _
"!!_ `
)!!` a
;!!a b
}"" 
if$$ 
($$ 
!$$ 
await$$ 
_userManager$$ #
.$$# $$
GetTwoFactorEnabledAsync$$$ <
($$< =
user$$= A
)$$A B
)$$B C
{%% 
throw&& 
new&& %
InvalidOperationException&& 3
(&&3 4
$"&&4 61
%Cannot disable 2FA for user with ID '&&6 [
{&&[ \
_userManager&&\ h
.&&h i
	GetUserId&&i r
(&&r s
User&&s w
)&&w x
}&&x y-
 ' as it's not currently enabled.	&&y ô
"
&&ô ö
)
&&ö õ
;
&&õ ú
}'' 
return)) 
Page)) 
()) 
))) 
;)) 
}** 	
public,, 
async,, 
Task,, 
<,, 
IActionResult,, '
>,,' (
OnPostAsync,,) 4
(,,4 5
),,5 6
{-- 	
var.. 
user.. 
=.. 
await.. 
_userManager.. )
...) *
GetUserAsync..* 6
(..6 7
User..7 ;
)..; <
;..< =
if// 
(// 
user// 
==// 
null// 
)// 
{00 
return11 
NotFound11 
(11  
$"11  ")
Unable to load user with ID '11" ?
{11? @
_userManager11@ L
.11L M
	GetUserId11M V
(11V W
User11W [
)11[ \
}11\ ]
'.11] _
"11_ `
)11` a
;11a b
}22 
var44 
disable2faResult44  
=44! "
await44# (
_userManager44) 5
.445 6$
SetTwoFactorEnabledAsync446 N
(44N O
user44O S
,44S T
false44U Z
)44Z [
;44[ \
if55 
(55 
!55 
disable2faResult55 !
.55! "
	Succeeded55" +
)55+ ,
{66 
throw77 
new77 %
InvalidOperationException77 3
(773 4
$"774 6F
:Unexpected error occurred disabling 2FA for user with ID '776 p
{77p q
_userManager77q }
.77} ~
	GetUserId	77~ á
(
77á à
User
77à å
)
77å ç
}
77ç é
'.
77é ê
"
77ê ë
)
77ë í
;
77í ì
}88 
_logger:: 
.:: 
LogInformation:: "
(::" #
$str::# N
,::N O
_userManager::P \
.::\ ]
	GetUserId::] f
(::f g
User::g k
)::k l
)::l m
;::m n
StatusMessage;; 
=;; 
$str;; m
;;;m n
return<< 
RedirectToPage<< !
(<<! "
$str<<" =
)<<= >
;<<> ?
}== 	
}>> 
}?? ä"
éC:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Areas\Identity\Pages\Account\Manage\DownloadPersonalData.cshtml.cs
	namespace 	
ChajdPizzaWebApp
 
. 
Areas  
.  !
Identity! )
.) *
Pages* /
./ 0
Account0 7
.7 8
Manage8 >
{ 
public 

class %
DownloadPersonalDataModel *
:+ ,
	PageModel- 6
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
ILogger  
<  !%
DownloadPersonalDataModel! :
>: ;
_logger< C
;C D
public %
DownloadPersonalDataModel (
(( )
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
ILogger 
< %
DownloadPersonalDataModel -
>- .
logger/ 5
)5 6
{ 	
_userManager 
= 
userManager &
;& '
_logger 
= 
logger 
; 
} 	
public 
async 
Task 
< 
IActionResult '
>' (
OnPostAsync) 4
(4 5
)5 6
{ 	
var 
user 
= 
await 
_userManager )
.) *
GetUserAsync* 6
(6 7
User7 ;
); <
;< =
if 
( 
user 
== 
null 
) 
{ 
return   
NotFound   
(    
$"    ")
Unable to load user with ID '  " ?
{  ? @
_userManager  @ L
.  L M
	GetUserId  M V
(  V W
User  W [
)  [ \
}  \ ]
'.  ] _
"  _ `
)  ` a
;  a b
}!! 
_logger## 
.## 
LogInformation## "
(##" #
$str### [
,##[ \
_userManager##] i
.##i j
	GetUserId##j s
(##s t
User##t x
)##x y
)##y z
;##z {
var&& 
personalData&& 
=&& 
new&& "

Dictionary&&# -
<&&- .
string&&. 4
,&&4 5
string&&6 <
>&&< =
(&&= >
)&&> ?
;&&? @
var'' 
personalDataProps'' !
=''" #
typeof''$ *
(''* +
IdentityUser''+ 7
)''7 8
.''8 9
GetProperties''9 F
(''F G
)''G H
.''H I
Where''I N
(''N O
prop((  
=>((! #
	Attribute(($ -
.((- .
	IsDefined((. 7
(((7 8
prop((8 <
,((< =
typeof((> D
(((D E!
PersonalDataAttribute((E Z
)((Z [
)(([ \
)((\ ]
;((] ^
foreach)) 
()) 
var)) 
p)) 
in)) 
personalDataProps)) /
)))/ 0
{** 
personalData++ 
.++ 
Add++  
(++  !
p++! "
.++" #
Name++# '
,++' (
p++) *
.++* +
GetValue+++ 3
(++3 4
user++4 8
)++8 9
?++9 :
.++: ;
ToString++; C
(++C D
)++D E
??++F H
$str++I O
)++O P
;++P Q
},, 
Response.. 
... 
Headers.. 
... 
Add..  
(..  !
$str..! 6
,..6 7
$str..8 `
)..` a
;..a b
return// 
new// 
FileContentResult// (
(//( )
Encoding//) 1
.//1 2
UTF8//2 6
.//6 7
GetBytes//7 ?
(//? @
JsonConvert//@ K
.//K L
SerializeObject//L [
(//[ \
personalData//\ h
)//h i
)//i j
,//j k
$str//l w
)//w x
;//x y
}00 	
}11 
}22 ˇ^
C:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Areas\Identity\Pages\Account\Manage\Email.cshtml.cs
	namespace 	
ChajdPizzaWebApp
 
. 
Areas  
.  !
Identity! )
.) *
Pages* /
./ 0
Account0 7
.7 8
Manage8 >
{ 
public 

partial 
class 

EmailModel #
:$ %
	PageModel& /
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
IEmailSender %
_emailSender& 2
;2 3
public 

EmailModel 
( 
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
SignInManager 
< 
IdentityUser &
>& '
signInManager( 5
,5 6
IEmailSender 
emailSender $
)$ %
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
_emailSender 
= 
emailSender &
;& '
} 	
public   
string   
Username   
{    
get  ! $
;  $ %
set  & )
;  ) *
}  + ,
public"" 
string"" 
Email"" 
{"" 
get"" !
;""! "
set""# &
;""& '
}""( )
public$$ 
bool$$ 
IsEmailConfirmed$$ $
{$$% &
get$$' *
;$$* +
set$$, /
;$$/ 0
}$$1 2
[&& 	
TempData&&	 
]&& 
public'' 
string'' 
StatusMessage'' #
{''$ %
get''& )
;'') *
set''+ .
;''. /
}''0 1
[)) 	
BindProperty))	 
])) 
public** 

InputModel** 
Input** 
{**  !
get**" %
;**% &
set**' *
;*** +
}**, -
public,, 
class,, 

InputModel,, 
{-- 	
[.. 
Required.. 
].. 
[// 
EmailAddress// 
]// 
[00 
Display00 
(00 
Name00 
=00 
$str00 '
)00' (
]00( )
public11 
string11 
NewEmail11 "
{11# $
get11% (
;11( )
set11* -
;11- .
}11/ 0
}22 	
private44 
async44 
Task44 
	LoadAsync44 $
(44$ %
IdentityUser44% 1
user442 6
)446 7
{55 	
var66 
email66 
=66 
await66 
_userManager66 *
.66* +
GetEmailAsync66+ 8
(668 9
user669 =
)66= >
;66> ?
Email77 
=77 
email77 
;77 
Input99 
=99 
new99 

InputModel99 "
{:: 
NewEmail;; 
=;; 
email;;  
,;;  !
}<< 
;<< 
IsEmailConfirmed>> 
=>> 
await>> $
_userManager>>% 1
.>>1 2!
IsEmailConfirmedAsync>>2 G
(>>G H
user>>H L
)>>L M
;>>M N
}?? 	
publicAA 
asyncAA 
TaskAA 
<AA 
IActionResultAA '
>AA' (

OnGetAsyncAA) 3
(AA3 4
)AA4 5
{BB 	
varCC 
userCC 
=CC 
awaitCC 
_userManagerCC )
.CC) *
GetUserAsyncCC* 6
(CC6 7
UserCC7 ;
)CC; <
;CC< =
ifDD 
(DD 
userDD 
==DD 
nullDD 
)DD 
{EE 
returnFF 
NotFoundFF 
(FF  
$"FF  ")
Unable to load user with ID 'FF" ?
{FF? @
_userManagerFF@ L
.FFL M
	GetUserIdFFM V
(FFV W
UserFFW [
)FF[ \
}FF\ ]
'.FF] _
"FF_ `
)FF` a
;FFa b
}GG 
awaitII 
	LoadAsyncII 
(II 
userII  
)II  !
;II! "
returnJJ 
PageJJ 
(JJ 
)JJ 
;JJ 
}KK 	
publicMM 
asyncMM 
TaskMM 
<MM 
IActionResultMM '
>MM' ("
OnPostChangeEmailAsyncMM) ?
(MM? @
)MM@ A
{NN 	
varOO 
userOO 
=OO 
awaitOO 
_userManagerOO )
.OO) *
GetUserAsyncOO* 6
(OO6 7
UserOO7 ;
)OO; <
;OO< =
ifPP 
(PP 
userPP 
==PP 
nullPP 
)PP 
{QQ 
returnRR 
NotFoundRR 
(RR  
$"RR  ")
Unable to load user with ID 'RR" ?
{RR? @
_userManagerRR@ L
.RRL M
	GetUserIdRRM V
(RRV W
UserRRW [
)RR[ \
}RR\ ]
'.RR] _
"RR_ `
)RR` a
;RRa b
}SS 
ifUU 
(UU 
!UU 

ModelStateUU 
.UU 
IsValidUU #
)UU# $
{VV 
awaitWW 
	LoadAsyncWW 
(WW  
userWW  $
)WW$ %
;WW% &
returnXX 
PageXX 
(XX 
)XX 
;XX 
}YY 
var[[ 
email[[ 
=[[ 
await[[ 
_userManager[[ *
.[[* +
GetEmailAsync[[+ 8
([[8 9
user[[9 =
)[[= >
;[[> ?
if\\ 
(\\ 
Input\\ 
.\\ 
NewEmail\\ 
!=\\ !
email\\" '
)\\' (
{]] 
var^^ 
userId^^ 
=^^ 
await^^ "
_userManager^^# /
.^^/ 0
GetUserIdAsync^^0 >
(^^> ?
user^^? C
)^^C D
;^^D E
var__ 
code__ 
=__ 
await__  
_userManager__! -
.__- .)
GenerateChangeEmailTokenAsync__. K
(__K L
user__L P
,__P Q
Input__R W
.__W X
NewEmail__X `
)__` a
;__a b
var`` 
callbackUrl`` 
=``  !
Url``" %
.``% &
Page``& *
(``* +
$straa 1
,aa1 2
pageHandlerbb 
:bb  
nullbb! %
,bb% &
valuescc 
:cc 
newcc 
{cc  !
userIdcc" (
=cc) *
userIdcc+ 1
,cc1 2
emailcc3 8
=cc9 :
Inputcc; @
.cc@ A
NewEmailccA I
,ccI J
codeccK O
=ccP Q
codeccR V
}ccW X
,ccX Y
protocoldd 
:dd 
Requestdd %
.dd% &
Schemedd& ,
)dd, -
;dd- .
awaitee 
_emailSenderee "
.ee" #
SendEmailAsyncee# 1
(ee1 2
Inputff 
.ff 
NewEmailff "
,ff" #
$strgg (
,gg( )
$"hh 4
(Please confirm your account by <a href='hh >
{hh> ?
HtmlEncoderhh? J
.hhJ K
DefaulthhK R
.hhR S
EncodehhS Y
(hhY Z
callbackUrlhhZ e
)hhe f
}hhf g 
'>clicking here</a>.hhg {
"hh{ |
)hh| }
;hh} ~
StatusMessagejj 
=jj 
$strjj  b
;jjb c
returnkk 
RedirectToPagekk %
(kk% &
)kk& '
;kk' (
}ll 
StatusMessagenn 
=nn 
$strnn 6
;nn6 7
returnoo 
RedirectToPageoo !
(oo! "
)oo" #
;oo# $
}pp 	
publicrr 
asyncrr 
Taskrr 
<rr 
IActionResultrr '
>rr' (,
 OnPostSendVerificationEmailAsyncrr) I
(rrI J
)rrJ K
{ss 	
vartt 
usertt 
=tt 
awaittt 
_userManagertt )
.tt) *
GetUserAsynctt* 6
(tt6 7
Usertt7 ;
)tt; <
;tt< =
ifuu 
(uu 
useruu 
==uu 
nulluu 
)uu 
{vv 
returnww 
NotFoundww 
(ww  
$"ww  ")
Unable to load user with ID 'ww" ?
{ww? @
_userManagerww@ L
.wwL M
	GetUserIdwwM V
(wwV W
UserwwW [
)ww[ \
}ww\ ]
'.ww] _
"ww_ `
)ww` a
;wwa b
}xx 
ifzz 
(zz 
!zz 

ModelStatezz 
.zz 
IsValidzz #
)zz# $
{{{ 
await|| 
	LoadAsync|| 
(||  
user||  $
)||$ %
;||% &
return}} 
Page}} 
(}} 
)}} 
;}} 
}~~ 
var
ÄÄ 
userId
ÄÄ 
=
ÄÄ 
await
ÄÄ 
_userManager
ÄÄ +
.
ÄÄ+ ,
GetUserIdAsync
ÄÄ, :
(
ÄÄ: ;
user
ÄÄ; ?
)
ÄÄ? @
;
ÄÄ@ A
var
ÅÅ 
email
ÅÅ 
=
ÅÅ 
await
ÅÅ 
_userManager
ÅÅ *
.
ÅÅ* +
GetEmailAsync
ÅÅ+ 8
(
ÅÅ8 9
user
ÅÅ9 =
)
ÅÅ= >
;
ÅÅ> ?
var
ÇÇ 
code
ÇÇ 
=
ÇÇ 
await
ÇÇ 
_userManager
ÇÇ )
.
ÇÇ) *1
#GenerateEmailConfirmationTokenAsync
ÇÇ* M
(
ÇÇM N
user
ÇÇN R
)
ÇÇR S
;
ÇÇS T
code
ÉÉ 
=
ÉÉ 
WebEncoders
ÉÉ 
.
ÉÉ 
Base64UrlEncode
ÉÉ .
(
ÉÉ. /
Encoding
ÉÉ/ 7
.
ÉÉ7 8
UTF8
ÉÉ8 <
.
ÉÉ< =
GetBytes
ÉÉ= E
(
ÉÉE F
code
ÉÉF J
)
ÉÉJ K
)
ÉÉK L
;
ÉÉL M
var
ÑÑ 
callbackUrl
ÑÑ 
=
ÑÑ 
Url
ÑÑ !
.
ÑÑ! "
Page
ÑÑ" &
(
ÑÑ& '
$str
ÖÖ '
,
ÖÖ' (
pageHandler
ÜÜ 
:
ÜÜ 
null
ÜÜ !
,
ÜÜ! "
values
áá 
:
áá 
new
áá 
{
áá 
area
áá "
=
áá# $
$str
áá% /
,
áá/ 0
userId
áá1 7
=
áá8 9
userId
áá: @
,
áá@ A
code
ááB F
=
ááG H
code
ááI M
}
ááN O
,
ááO P
protocol
àà 
:
àà 
Request
àà !
.
àà! "
Scheme
àà" (
)
àà( )
;
àà) *
await
ââ 
_emailSender
ââ 
.
ââ 
SendEmailAsync
ââ -
(
ââ- .
email
ää 
,
ää 
$str
ãã $
,
ãã$ %
$"
åå 6
(Please confirm your account by <a href='
åå :
{
åå: ;
HtmlEncoder
åå; F
.
ååF G
Default
ååG N
.
ååN O
Encode
ååO U
(
ååU V
callbackUrl
ååV a
)
ååa b
}
ååb c"
'>clicking here</a>.
ååc w
"
ååw x
)
ååx y
;
ååy z
StatusMessage
éé 
=
éé 
$str
éé O
;
ééO P
return
èè 
RedirectToPage
èè !
(
èè! "
)
èè" #
;
èè# $
}
êê 	
}
ëë 
}íí ƒd
çC:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Areas\Identity\Pages\Account\Manage\EnableAuthenticator.cshtml.cs
	namespace 	
ChajdPizzaWebApp
 
. 
Areas  
.  !
Identity! )
.) *
Pages* /
./ 0
Account0 7
.7 8
Manage8 >
{ 
public 

class $
EnableAuthenticatorModel )
:* +
	PageModel, 5
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
ILogger  
<  !$
EnableAuthenticatorModel! 9
>9 :
_logger; B
;B C
private 
readonly 

UrlEncoder #
_urlEncoder$ /
;/ 0
private 
const 
string "
AuthenticatorUriFormat 3
=4 5
$str6 m
;m n
public $
EnableAuthenticatorModel '
(' (
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
ILogger 
< $
EnableAuthenticatorModel ,
>, -
logger. 4
,4 5

UrlEncoder 

urlEncoder !
)! "
{ 	
_userManager 
= 
userManager &
;& '
_logger 
= 
logger 
; 
_urlEncoder 
= 

urlEncoder $
;$ %
}   	
public"" 
string"" 
	SharedKey"" 
{""  !
get""" %
;""% &
set""' *
;""* +
}"", -
public$$ 
string$$ 
AuthenticatorUri$$ &
{$$' (
get$$) ,
;$$, -
set$$. 1
;$$1 2
}$$3 4
[&& 	
TempData&&	 
]&& 
public'' 
string'' 
['' 
]'' 
RecoveryCodes'' %
{''& '
get''( +
;''+ ,
set''- 0
;''0 1
}''2 3
[)) 	
TempData))	 
])) 
public** 
string** 
StatusMessage** #
{**$ %
get**& )
;**) *
set**+ .
;**. /
}**0 1
[,, 	
BindProperty,,	 
],, 
public-- 

InputModel-- 
Input-- 
{--  !
get--" %
;--% &
set--' *
;--* +
}--, -
public// 
class// 

InputModel// 
{00 	
[11 
Required11 
]11 
[22 
StringLength22 
(22 
$num22 
,22 
ErrorMessage22 )
=22* +
$str22, j
,22j k
MinimumLength22l y
=22z {
$num22| }
)22} ~
]22~ 
[33 
DataType33 
(33 
DataType33 
.33 
Text33 #
)33# $
]33$ %
[44 
Display44 
(44 
Name44 
=44 
$str44 /
)44/ 0
]440 1
public55 
string55 
Code55 
{55  
get55! $
;55$ %
set55& )
;55) *
}55+ ,
}66 	
public88 
async88 
Task88 
<88 
IActionResult88 '
>88' (

OnGetAsync88) 3
(883 4
)884 5
{99 	
var:: 
user:: 
=:: 
await:: 
_userManager:: )
.::) *
GetUserAsync::* 6
(::6 7
User::7 ;
)::; <
;::< =
if;; 
(;; 
user;; 
==;; 
null;; 
);; 
{<< 
return== 
NotFound== 
(==  
$"==  ")
Unable to load user with ID '==" ?
{==? @
_userManager==@ L
.==L M
	GetUserId==M V
(==V W
User==W [
)==[ \
}==\ ]
'.==] _
"==_ `
)==` a
;==a b
}>> 
await@@ *
LoadSharedKeyAndQrCodeUriAsync@@ 0
(@@0 1
user@@1 5
)@@5 6
;@@6 7
returnBB 
PageBB 
(BB 
)BB 
;BB 
}CC 	
publicEE 
asyncEE 
TaskEE 
<EE 
IActionResultEE '
>EE' (
OnPostAsyncEE) 4
(EE4 5
)EE5 6
{FF 	
varGG 
userGG 
=GG 
awaitGG 
_userManagerGG )
.GG) *
GetUserAsyncGG* 6
(GG6 7
UserGG7 ;
)GG; <
;GG< =
ifHH 
(HH 
userHH 
==HH 
nullHH 
)HH 
{II 
returnJJ 
NotFoundJJ 
(JJ  
$"JJ  ")
Unable to load user with ID 'JJ" ?
{JJ? @
_userManagerJJ@ L
.JJL M
	GetUserIdJJM V
(JJV W
UserJJW [
)JJ[ \
}JJ\ ]
'.JJ] _
"JJ_ `
)JJ` a
;JJa b
}KK 
ifMM 
(MM 
!MM 

ModelStateMM 
.MM 
IsValidMM #
)MM# $
{NN 
awaitOO *
LoadSharedKeyAndQrCodeUriAsyncOO 4
(OO4 5
userOO5 9
)OO9 :
;OO: ;
returnPP 
PagePP 
(PP 
)PP 
;PP 
}QQ 
varTT 
verificationCodeTT  
=TT! "
InputTT# (
.TT( )
CodeTT) -
.TT- .
ReplaceTT. 5
(TT5 6
$strTT6 9
,TT9 :
stringTT; A
.TTA B
EmptyTTB G
)TTG H
.TTH I
ReplaceTTI P
(TTP Q
$strTTQ T
,TTT U
stringTTV \
.TT\ ]
EmptyTT] b
)TTb c
;TTc d
varVV 
is2faTokenValidVV 
=VV  !
awaitVV" '
_userManagerVV( 4
.VV4 5%
VerifyTwoFactorTokenAsyncVV5 N
(VVN O
userWW 
,WW 
_userManagerWW "
.WW" #
OptionsWW# *
.WW* +
TokensWW+ 1
.WW1 2&
AuthenticatorTokenProviderWW2 L
,WWL M
verificationCodeWWN ^
)WW^ _
;WW_ `
ifYY 
(YY 
!YY 
is2faTokenValidYY  
)YY  !
{ZZ 

ModelState[[ 
.[[ 
AddModelError[[ (
([[( )
$str[[) 5
,[[5 6
$str[[7 V
)[[V W
;[[W X
await\\ *
LoadSharedKeyAndQrCodeUriAsync\\ 4
(\\4 5
user\\5 9
)\\9 :
;\\: ;
return]] 
Page]] 
(]] 
)]] 
;]] 
}^^ 
await`` 
_userManager`` 
.`` $
SetTwoFactorEnabledAsync`` 7
(``7 8
user``8 <
,``< =
true``> B
)``B C
;``C D
varaa 
userIdaa 
=aa 
awaitaa 
_userManageraa +
.aa+ ,
GetUserIdAsyncaa, :
(aa: ;
useraa; ?
)aa? @
;aa@ A
_loggerbb 
.bb 
LogInformationbb "
(bb" #
$strbb# g
,bbg h
userIdbbi o
)bbo p
;bbp q
StatusMessagedd 
=dd 
$strdd G
;ddG H
ifff 
(ff 
awaitff 
_userManagerff "
.ff" ##
CountRecoveryCodesAsyncff# :
(ff: ;
userff; ?
)ff? @
==ffA C
$numffD E
)ffE F
{gg 
varhh 
recoveryCodeshh !
=hh" #
awaithh$ )
_userManagerhh* 6
.hh6 72
&GenerateNewTwoFactorRecoveryCodesAsynchh7 ]
(hh] ^
userhh^ b
,hhb c
$numhhd f
)hhf g
;hhg h
RecoveryCodesii 
=ii 
recoveryCodesii  -
.ii- .
ToArrayii. 5
(ii5 6
)ii6 7
;ii7 8
returnjj 
RedirectToPagejj %
(jj% &
$strjj& ;
)jj; <
;jj< =
}kk 
elsell 
{mm 
returnnn 
RedirectToPagenn %
(nn% &
$strnn& A
)nnA B
;nnB C
}oo 
}pp 	
privaterr 
asyncrr 
Taskrr *
LoadSharedKeyAndQrCodeUriAsyncrr 9
(rr9 :
IdentityUserrr: F
userrrG K
)rrK L
{ss 	
varuu 
unformattedKeyuu 
=uu  
awaituu! &
_userManageruu' 3
.uu3 4$
GetAuthenticatorKeyAsyncuu4 L
(uuL M
useruuM Q
)uuQ R
;uuR S
ifvv 
(vv 
stringvv 
.vv 
IsNullOrEmptyvv $
(vv$ %
unformattedKeyvv% 3
)vv3 4
)vv4 5
{ww 
awaitxx 
_userManagerxx "
.xx" #&
ResetAuthenticatorKeyAsyncxx# =
(xx= >
userxx> B
)xxB C
;xxC D
unformattedKeyyy 
=yy  
awaityy! &
_userManageryy' 3
.yy3 4$
GetAuthenticatorKeyAsyncyy4 L
(yyL M
useryyM Q
)yyQ R
;yyR S
}zz 
	SharedKey|| 
=|| 
	FormatKey|| !
(||! "
unformattedKey||" 0
)||0 1
;||1 2
var~~ 
email~~ 
=~~ 
await~~ 
_userManager~~ *
.~~* +
GetEmailAsync~~+ 8
(~~8 9
user~~9 =
)~~= >
;~~> ?
AuthenticatorUri 
= 
GenerateQrCodeUri 0
(0 1
email1 6
,6 7
unformattedKey8 F
)F G
;G H
}
ÄÄ 	
private
ÇÇ 
string
ÇÇ 
	FormatKey
ÇÇ  
(
ÇÇ  !
string
ÇÇ! '
unformattedKey
ÇÇ( 6
)
ÇÇ6 7
{
ÉÉ 	
var
ÑÑ 
result
ÑÑ 
=
ÑÑ 
new
ÑÑ 
StringBuilder
ÑÑ *
(
ÑÑ* +
)
ÑÑ+ ,
;
ÑÑ, -
int
ÖÖ 
currentPosition
ÖÖ 
=
ÖÖ  !
$num
ÖÖ" #
;
ÖÖ# $
while
ÜÜ 
(
ÜÜ 
currentPosition
ÜÜ "
+
ÜÜ# $
$num
ÜÜ% &
<
ÜÜ' (
unformattedKey
ÜÜ) 7
.
ÜÜ7 8
Length
ÜÜ8 >
)
ÜÜ> ?
{
áá 
result
àà 
.
àà 
Append
àà 
(
àà 
unformattedKey
àà ,
.
àà, -
	Substring
àà- 6
(
àà6 7
currentPosition
àà7 F
,
ààF G
$num
ààH I
)
ààI J
)
ààJ K
.
ààK L
Append
ààL R
(
ààR S
$str
ààS V
)
ààV W
;
ààW X
currentPosition
ââ 
+=
ââ  "
$num
ââ# $
;
ââ$ %
}
ää 
if
ãã 
(
ãã 
currentPosition
ãã 
<
ãã  !
unformattedKey
ãã" 0
.
ãã0 1
Length
ãã1 7
)
ãã7 8
{
åå 
result
çç 
.
çç 
Append
çç 
(
çç 
unformattedKey
çç ,
.
çç, -
	Substring
çç- 6
(
çç6 7
currentPosition
çç7 F
)
ççF G
)
ççG H
;
ççH I
}
éé 
return
êê 
result
êê 
.
êê 
ToString
êê "
(
êê" #
)
êê# $
.
êê$ %
ToLowerInvariant
êê% 5
(
êê5 6
)
êê6 7
;
êê7 8
}
ëë 	
private
ìì 
string
ìì 
GenerateQrCodeUri
ìì (
(
ìì( )
string
ìì) /
email
ìì0 5
,
ìì5 6
string
ìì7 =
unformattedKey
ìì> L
)
ììL M
{
îî 	
return
ïï 
string
ïï 
.
ïï 
Format
ïï  
(
ïï  !$
AuthenticatorUriFormat
ññ &
,
ññ& '
_urlEncoder
óó 
.
óó 
Encode
óó "
(
óó" #
$str
óó# 5
)
óó5 6
,
óó6 7
_urlEncoder
òò 
.
òò 
Encode
òò "
(
òò" #
email
òò# (
)
òò( )
,
òò) *
unformattedKey
ôô 
)
ôô 
;
ôô  
}
öö 	
}
õõ 
}úú ÍM
àC:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Areas\Identity\Pages\Account\Manage\ExternalLogins.cshtml.cs
	namespace

 	
ChajdPizzaWebApp


 
.

 
Areas

  
.

  !
Identity

! )
.

) *
Pages

* /
.

/ 0
Account

0 7
.

7 8
Manage

8 >
{ 
public 

class 
ExternalLoginsModel $
:% &
	PageModel' 0
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
public 
ExternalLoginsModel "
(" #
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
SignInManager 
< 
IdentityUser &
>& '
signInManager( 5
)5 6
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
} 	
public 
IList 
< 
UserLoginInfo "
>" #
CurrentLogins$ 1
{2 3
get4 7
;7 8
set9 <
;< =
}> ?
public 
IList 
<  
AuthenticationScheme )
>) *
OtherLogins+ 6
{7 8
get9 <
;< =
set> A
;A B
}C D
public 
bool 
ShowRemoveButton $
{% &
get' *
;* +
set, /
;/ 0
}1 2
[ 	
TempData	 
] 
public   
string   
StatusMessage   #
{  $ %
get  & )
;  ) *
set  + .
;  . /
}  0 1
public"" 
async"" 
Task"" 
<"" 
IActionResult"" '
>""' (

OnGetAsync"") 3
(""3 4
)""4 5
{## 	
var$$ 
user$$ 
=$$ 
await$$ 
_userManager$$ )
.$$) *
GetUserAsync$$* 6
($$6 7
User$$7 ;
)$$; <
;$$< =
if%% 
(%% 
user%% 
==%% 
null%% 
)%% 
{&& 
return'' 
NotFound'' 
(''  
$"''  ")
Unable to load user with ID '''" ?
{''? @
_userManager''@ L
.''L M
	GetUserId''M V
(''V W
User''W [
)''[ \
}''\ ]
'.''] _
"''_ `
)''` a
;''a b
}(( 
CurrentLogins** 
=** 
await** !
_userManager**" .
.**. /
GetLoginsAsync**/ =
(**= >
user**> B
)**B C
;**C D
OtherLogins++ 
=++ 
(++ 
await++  
_signInManager++! /
.++/ 01
%GetExternalAuthenticationSchemesAsync++0 U
(++U V
)++V W
)++W X
.,, 
Where,, 
(,, 
auth,, 
=>,, 
CurrentLogins,, ,
.,,, -
All,,- 0
(,,0 1
ul,,1 3
=>,,4 6
auth,,7 ;
.,,; <
Name,,< @
!=,,A C
ul,,D F
.,,F G
LoginProvider,,G T
),,T U
),,U V
.-- 
ToList-- 
(-- 
)-- 
;-- 
ShowRemoveButton.. 
=.. 
user.. #
...# $
PasswordHash..$ 0
!=..1 3
null..4 8
||..9 ;
CurrentLogins..< I
...I J
Count..J O
>..P Q
$num..R S
;..S T
return// 
Page// 
(// 
)// 
;// 
}00 	
public22 
async22 
Task22 
<22 
IActionResult22 '
>22' ("
OnPostRemoveLoginAsync22) ?
(22? @
string22@ F
loginProvider22G T
,22T U
string22V \
providerKey22] h
)22h i
{33 	
var44 
user44 
=44 
await44 
_userManager44 )
.44) *
GetUserAsync44* 6
(446 7
User447 ;
)44; <
;44< =
if55 
(55 
user55 
==55 
null55 
)55 
{66 
return77 
NotFound77 
(77  
$"77  ")
Unable to load user with ID '77" ?
{77? @
_userManager77@ L
.77L M
	GetUserId77M V
(77V W
User77W [
)77[ \
}77\ ]
'.77] _
"77_ `
)77` a
;77a b
}88 
var:: 
result:: 
=:: 
await:: 
_userManager:: +
.::+ ,
RemoveLoginAsync::, <
(::< =
user::= A
,::A B
loginProvider::C P
,::P Q
providerKey::R ]
)::] ^
;::^ _
if;; 
(;; 
!;; 
result;; 
.;; 
	Succeeded;; !
);;! "
{<< 
StatusMessage== 
=== 
$str==  E
;==E F
return>> 
RedirectToPage>> %
(>>% &
)>>& '
;>>' (
}?? 
awaitAA 
_signInManagerAA  
.AA  !
RefreshSignInAsyncAA! 3
(AA3 4
userAA4 8
)AA8 9
;AA9 :
StatusMessageBB 
=BB 
$strBB =
;BB= >
returnCC 
RedirectToPageCC !
(CC! "
)CC" #
;CC# $
}DD 	
publicFF 
asyncFF 
TaskFF 
<FF 
IActionResultFF '
>FF' ( 
OnPostLinkLoginAsyncFF) =
(FF= >
stringFF> D
providerFFE M
)FFM N
{GG 	
awaitII 
HttpContextII 
.II 
SignOutAsyncII *
(II* +
IdentityConstantsII+ <
.II< =
ExternalSchemeII= K
)IIK L
;IIL M
varLL 
redirectUrlLL 
=LL 
UrlLL !
.LL! "
PageLL" &
(LL& '
$strLL' 9
,LL9 :
pageHandlerLL; F
:LLF G
$strLLH [
)LL[ \
;LL\ ]
varMM 

propertiesMM 
=MM 
_signInManagerMM +
.MM+ ,5
)ConfigureExternalAuthenticationPropertiesMM, U
(MMU V
providerMMV ^
,MM^ _
redirectUrlMM` k
,MMk l
_userManagerMMm y
.MMy z
	GetUserId	MMz É
(
MMÉ Ñ
User
MMÑ à
)
MMà â
)
MMâ ä
;
MMä ã
returnNN 
newNN 
ChallengeResultNN &
(NN& '
providerNN' /
,NN/ 0

propertiesNN1 ;
)NN; <
;NN< =
}OO 	
publicQQ 
asyncQQ 
TaskQQ 
<QQ 
IActionResultQQ '
>QQ' ('
OnGetLinkLoginCallbackAsyncQQ) D
(QQD E
)QQE F
{RR 	
varSS 
userSS 
=SS 
awaitSS 
_userManagerSS )
.SS) *
GetUserAsyncSS* 6
(SS6 7
UserSS7 ;
)SS; <
;SS< =
ifTT 
(TT 
userTT 
==TT 
nullTT 
)TT 
{UU 
returnVV 
NotFoundVV 
(VV  
$"VV  ")
Unable to load user with ID 'VV" ?
{VV? @
_userManagerVV@ L
.VVL M
	GetUserIdVVM V
(VVV W
UserVVW [
)VV[ \
}VV\ ]
'.VV] _
"VV_ `
)VV` a
;VVa b
}WW 
varYY 
infoYY 
=YY 
awaitYY 
_signInManagerYY +
.YY+ ,%
GetExternalLoginInfoAsyncYY, E
(YYE F
awaitYYF K
_userManagerYYL X
.YYX Y
GetUserIdAsyncYYY g
(YYg h
userYYh l
)YYl m
)YYm n
;YYn o
ifZZ 
(ZZ 
infoZZ 
==ZZ 
nullZZ 
)ZZ 
{[[ 
throw\\ 
new\\ %
InvalidOperationException\\ 3
(\\3 4
$"\\4 6T
HUnexpected error occurred loading external login info for user with ID '\\6 ~
{\\~ 
user	\\ É
.
\\É Ñ
Id
\\Ñ Ü
}
\\Ü á
'.
\\á â
"
\\â ä
)
\\ä ã
;
\\ã å
}]] 
var__ 
result__ 
=__ 
await__ 
_userManager__ +
.__+ ,
AddLoginAsync__, 9
(__9 :
user__: >
,__> ?
info__@ D
)__D E
;__E F
if`` 
(`` 
!`` 
result`` 
.`` 
	Succeeded`` !
)``! "
{aa 
StatusMessagebb 
=bb 
$strbb  |
;bb| }
returncc 
RedirectToPagecc %
(cc% &
)cc& '
;cc' (
}dd 
awaitgg 
HttpContextgg 
.gg 
SignOutAsyncgg *
(gg* +
IdentityConstantsgg+ <
.gg< =
ExternalSchemegg= K
)ggK L
;ggL M
StatusMessageii 
=ii 
$strii ;
;ii; <
returnjj 
RedirectToPagejj !
(jj! "
)jj" #
;jj# $
}kk 	
}ll 
}mm Î/
èC:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Areas\Identity\Pages\Account\Manage\GenerateRecoveryCodes.cshtml.cs
	namespace

 	
ChajdPizzaWebApp


 
.

 
Areas

  
.

  !
Identity

! )
.

) *
Pages

* /
.

/ 0
Account

0 7
.

7 8
Manage

8 >
{ 
public 

class &
GenerateRecoveryCodesModel +
:, -
	PageModel. 7
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
ILogger  
<  !&
GenerateRecoveryCodesModel! ;
>; <
_logger= D
;D E
public &
GenerateRecoveryCodesModel )
() *
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
ILogger 
< &
GenerateRecoveryCodesModel .
>. /
logger0 6
)6 7
{ 	
_userManager 
= 
userManager &
;& '
_logger 
= 
logger 
; 
} 	
[ 	
TempData	 
] 
public 
string 
[ 
] 
RecoveryCodes %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
[ 	
TempData	 
] 
public 
string 
StatusMessage #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
async 
Task 
< 
IActionResult '
>' (

OnGetAsync) 3
(3 4
)4 5
{   	
var!! 
user!! 
=!! 
await!! 
_userManager!! )
.!!) *
GetUserAsync!!* 6
(!!6 7
User!!7 ;
)!!; <
;!!< =
if"" 
("" 
user"" 
=="" 
null"" 
)"" 
{## 
return$$ 
NotFound$$ 
($$  
$"$$  ")
Unable to load user with ID '$$" ?
{$$? @
_userManager$$@ L
.$$L M
	GetUserId$$M V
($$V W
User$$W [
)$$[ \
}$$\ ]
'.$$] _
"$$_ `
)$$` a
;$$a b
}%% 
var'' 
isTwoFactorEnabled'' "
=''# $
await''% *
_userManager''+ 7
.''7 8$
GetTwoFactorEnabledAsync''8 P
(''P Q
user''Q U
)''U V
;''V W
if(( 
((( 
!(( 
isTwoFactorEnabled(( #
)((# $
{)) 
var** 
userId** 
=** 
await** "
_userManager**# /
.**/ 0
GetUserIdAsync**0 >
(**> ?
user**? C
)**C D
;**D E
throw++ 
new++ %
InvalidOperationException++ 3
(++3 4
$"++4 6=
1Cannot generate recovery codes for user with ID '++6 g
{++g h
userId++h n
}++n o4
'' because they do not have 2FA enabled.	++o ñ
"
++ñ ó
)
++ó ò
;
++ò ô
},, 
return.. 
Page.. 
(.. 
).. 
;.. 
}// 	
public11 
async11 
Task11 
<11 
IActionResult11 '
>11' (
OnPostAsync11) 4
(114 5
)115 6
{22 	
var33 
user33 
=33 
await33 
_userManager33 )
.33) *
GetUserAsync33* 6
(336 7
User337 ;
)33; <
;33< =
if44 
(44 
user44 
==44 
null44 
)44 
{55 
return66 
NotFound66 
(66  
$"66  ")
Unable to load user with ID '66" ?
{66? @
_userManager66@ L
.66L M
	GetUserId66M V
(66V W
User66W [
)66[ \
}66\ ]
'.66] _
"66_ `
)66` a
;66a b
}77 
var99 
isTwoFactorEnabled99 "
=99# $
await99% *
_userManager99+ 7
.997 8$
GetTwoFactorEnabledAsync998 P
(99P Q
user99Q U
)99U V
;99V W
var:: 
userId:: 
=:: 
await:: 
_userManager:: +
.::+ ,
GetUserIdAsync::, :
(::: ;
user::; ?
)::? @
;::@ A
if;; 
(;; 
!;; 
isTwoFactorEnabled;; #
);;# $
{<< 
throw== 
new== %
InvalidOperationException== 3
(==3 4
$"==4 6=
1Cannot generate recovery codes for user with ID '==6 g
{==g h
userId==h n
}==n o/
"' as they do not have 2FA enabled.	==o ë
"
==ë í
)
==í ì
;
==ì î
}>> 
var@@ 
recoveryCodes@@ 
=@@ 
await@@  %
_userManager@@& 2
.@@2 32
&GenerateNewTwoFactorRecoveryCodesAsync@@3 Y
(@@Y Z
user@@Z ^
,@@^ _
$num@@` b
)@@b c
;@@c d
RecoveryCodesAA 
=AA 
recoveryCodesAA )
.AA) *
ToArrayAA* 1
(AA1 2
)AA2 3
;AA3 4
_loggerCC 
.CC 
LogInformationCC "
(CC" #
$strCC# b
,CCb c
userIdCCd j
)CCj k
;CCk l
StatusMessageDD 
=DD 
$strDD D
;DDD E
returnEE 
RedirectToPageEE !
(EE! "
$strEE" 7
)EE7 8
;EE8 9
}FF 	
}GG 
}HH ﬂ7
C:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Areas\Identity\Pages\Account\Manage\Index.cshtml.cs
	namespace

 	
ChajdPizzaWebApp


 
.

 
Areas

  
.

  !
Identity

! )
.

) *
Pages

* /
.

/ 0
Account

0 7
.

7 8
Manage

8 >
{ 
public 

partial 
class 

IndexModel #
:$ %
	PageModel& /
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
public 

IndexModel 
( 
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
SignInManager 
< 
IdentityUser &
>& '
signInManager( 5
)5 6
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
} 	
public 
string 
Username 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
TempData	 
] 
public 
string 
StatusMessage #
{$ %
get& )
;) *
set+ .
;. /
}0 1
[ 	
BindProperty	 
] 
public 

InputModel 
Input 
{  !
get" %
;% &
set' *
;* +
}, -
public!! 
class!! 

InputModel!! 
{"" 	
[## 
Phone## 
]## 
[$$ 
Display$$ 
($$ 
Name$$ 
=$$ 
$str$$ *
)$$* +
]$$+ ,
public%% 
string%% 
PhoneNumber%% %
{%%& '
get%%( +
;%%+ ,
set%%- 0
;%%0 1
}%%2 3
}&& 	
private(( 
async(( 
Task(( 
	LoadAsync(( $
((($ %
IdentityUser((% 1
user((2 6
)((6 7
{)) 	
var** 
userName** 
=** 
await**  
_userManager**! -
.**- .
GetUserNameAsync**. >
(**> ?
user**? C
)**C D
;**D E
var++ 
phoneNumber++ 
=++ 
await++ #
_userManager++$ 0
.++0 1
GetPhoneNumberAsync++1 D
(++D E
user++E I
)++I J
;++J K
Username-- 
=-- 
userName-- 
;--  
Input// 
=// 
new// 

InputModel// "
{00 
PhoneNumber11 
=11 
phoneNumber11 )
}22 
;22 
}33 	
public55 
async55 
Task55 
<55 
IActionResult55 '
>55' (

OnGetAsync55) 3
(553 4
)554 5
{66 	
var77 
user77 
=77 
await77 
_userManager77 )
.77) *
GetUserAsync77* 6
(776 7
User777 ;
)77; <
;77< =
if88 
(88 
user88 
==88 
null88 
)88 
{99 
return:: 
NotFound:: 
(::  
$"::  ")
Unable to load user with ID '::" ?
{::? @
_userManager::@ L
.::L M
	GetUserId::M V
(::V W
User::W [
)::[ \
}::\ ]
'.::] _
"::_ `
)::` a
;::a b
};; 
await== 
	LoadAsync== 
(== 
user==  
)==  !
;==! "
return>> 
Page>> 
(>> 
)>> 
;>> 
}?? 	
publicAA 
asyncAA 
TaskAA 
<AA 
IActionResultAA '
>AA' (
OnPostAsyncAA) 4
(AA4 5
)AA5 6
{BB 	
varCC 
userCC 
=CC 
awaitCC 
_userManagerCC )
.CC) *
GetUserAsyncCC* 6
(CC6 7
UserCC7 ;
)CC; <
;CC< =
ifDD 
(DD 
userDD 
==DD 
nullDD 
)DD 
{EE 
returnFF 
NotFoundFF 
(FF  
$"FF  ")
Unable to load user with ID 'FF" ?
{FF? @
_userManagerFF@ L
.FFL M
	GetUserIdFFM V
(FFV W
UserFFW [
)FF[ \
}FF\ ]
'.FF] _
"FF_ `
)FF` a
;FFa b
}GG 
ifII 
(II 
!II 

ModelStateII 
.II 
IsValidII #
)II# $
{JJ 
awaitKK 
	LoadAsyncKK 
(KK  
userKK  $
)KK$ %
;KK% &
returnLL 
PageLL 
(LL 
)LL 
;LL 
}MM 
varOO 
phoneNumberOO 
=OO 
awaitOO #
_userManagerOO$ 0
.OO0 1
GetPhoneNumberAsyncOO1 D
(OOD E
userOOE I
)OOI J
;OOJ K
ifPP 
(PP 
InputPP 
.PP 
PhoneNumberPP !
!=PP" $
phoneNumberPP% 0
)PP0 1
{QQ 
varRR 
setPhoneResultRR "
=RR# $
awaitRR% *
_userManagerRR+ 7
.RR7 8
SetPhoneNumberAsyncRR8 K
(RRK L
userRRL P
,RRP Q
InputRRR W
.RRW X
PhoneNumberRRX c
)RRc d
;RRd e
ifSS 
(SS 
!SS 
setPhoneResultSS #
.SS# $
	SucceededSS$ -
)SS- .
{TT 
varUU 
userIdUU 
=UU  
awaitUU! &
_userManagerUU' 3
.UU3 4
GetUserIdAsyncUU4 B
(UUB C
userUUC G
)UUG H
;UUH I
throwVV 
newVV %
InvalidOperationExceptionVV 7
(VV7 8
$"VV8 :M
AUnexpected error occurred setting phone number for user with ID 'VV: {
{VV{ |
userId	VV| Ç
}
VVÇ É
'.
VVÉ Ö
"
VVÖ Ü
)
VVÜ á
;
VVá à
}WW 
}XX 
awaitZZ 
_signInManagerZZ  
.ZZ  !
RefreshSignInAsyncZZ! 3
(ZZ3 4
userZZ4 8
)ZZ8 9
;ZZ9 :
StatusMessage[[ 
=[[ 
$str[[ ;
;[[; <
return\\ 
RedirectToPage\\ !
(\\! "
)\\" #
;\\# $
}]] 	
}^^ 
}__ õ"
ÅC:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Areas\Identity\Pages\Account\Manage\ManageNavPages.cs
	namespace 	
ChajdPizzaWebApp
 
. 
Areas  
.  !
Identity! )
.) *
Pages* /
./ 0
Account0 7
.7 8
Manage8 >
{ 
public		 

static		 
class		 
ManageNavPages		 &
{

 
public 
static 
string 
Index "
=># %
$str& -
;- .
public 
static 
string 
Email "
=># %
$str& -
;- .
public 
static 
string 
ChangePassword +
=>, .
$str/ ?
;? @
public 
static 
string 
ExternalLogins +
=>, .
$str/ ?
;? @
public 
static 
string 
PersonalData )
=>* ,
$str- ;
;; <
public 
static 
string #
TwoFactorAuthentication 4
=>5 7
$str8 Q
;Q R
public 
static 
string 
IndexNavClass *
(* +
ViewContext+ 6
viewContext7 B
)B C
=>D F
PageNavClassG S
(S T
viewContextT _
,_ `
Indexa f
)f g
;g h
public 
static 
string 
EmailNavClass *
(* +
ViewContext+ 6
viewContext7 B
)B C
=>D F
PageNavClassG S
(S T
viewContextT _
,_ `
Emaila f
)f g
;g h
public 
static 
string "
ChangePasswordNavClass 3
(3 4
ViewContext4 ?
viewContext@ K
)K L
=>M O
PageNavClassP \
(\ ]
viewContext] h
,h i
ChangePasswordj x
)x y
;y z
public 
static 
string "
ExternalLoginsNavClass 3
(3 4
ViewContext4 ?
viewContext@ K
)K L
=>M O
PageNavClassP \
(\ ]
viewContext] h
,h i
ExternalLoginsj x
)x y
;y z
public 
static 
string  
PersonalDataNavClass 1
(1 2
ViewContext2 =
viewContext> I
)I J
=>K M
PageNavClassN Z
(Z [
viewContext[ f
,f g
PersonalDatah t
)t u
;u v
public!! 
static!! 
string!! +
TwoFactorAuthenticationNavClass!! <
(!!< =
ViewContext!!= H
viewContext!!I T
)!!T U
=>!!V X
PageNavClass!!Y e
(!!e f
viewContext!!f q
,!!q r$
TwoFactorAuthentication	!!s ä
)
!!ä ã
;
!!ã å
private## 
static## 
string## 
PageNavClass## *
(##* +
ViewContext##+ 6
viewContext##7 B
,##B C
string##D J
page##K O
)##O P
{$$ 	
var%% 

activePage%% 
=%% 
viewContext%% (
.%%( )
ViewData%%) 1
[%%1 2
$str%%2 >
]%%> ?
as%%@ B
string%%C I
??&& 
System&& 
.&& 
IO&& 
.&& 
Path&& !
.&&! "'
GetFileNameWithoutExtension&&" =
(&&= >
viewContext&&> I
.&&I J
ActionDescriptor&&J Z
.&&Z [
DisplayName&&[ f
)&&f g
;&&g h
return'' 
string'' 
.'' 
Equals''  
(''  !

activePage''! +
,''+ ,
page''- 1
,''1 2
StringComparison''3 C
.''C D
OrdinalIgnoreCase''D U
)''U V
?''W X
$str''Y a
:''b c
null''d h
;''h i
}(( 	
})) 
}** ÷
ÜC:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Areas\Identity\Pages\Account\Manage\PersonalData.cshtml.cs
	namespace 	
ChajdPizzaWebApp
 
. 
Areas  
.  !
Identity! )
.) *
Pages* /
./ 0
Account0 7
.7 8
Manage8 >
{ 
public		 

class		 
PersonalDataModel		 "
:		# $
	PageModel		% .
{

 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
ILogger  
<  !
PersonalDataModel! 2
>2 3
_logger4 ;
;; <
public 
PersonalDataModel  
(  !
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
ILogger 
< 
PersonalDataModel %
>% &
logger' -
)- .
{ 	
_userManager 
= 
userManager &
;& '
_logger 
= 
logger 
; 
} 	
public 
async 
Task 
< 
IActionResult '
>' (
OnGet) .
(. /
)/ 0
{ 	
var 
user 
= 
await 
_userManager )
.) *
GetUserAsync* 6
(6 7
User7 ;
); <
;< =
if 
( 
user 
== 
null 
) 
{ 
return 
NotFound 
(  
$"  ")
Unable to load user with ID '" ?
{? @
_userManager@ L
.L M
	GetUserIdM V
(V W
UserW [
)[ \
}\ ]
'.] _
"_ `
)` a
;a b
} 
return 
Page 
( 
) 
; 
} 	
}   
}!! ∫#
åC:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Areas\Identity\Pages\Account\Manage\ResetAuthenticator.cshtml.cs
	namespace

 	
ChajdPizzaWebApp


 
.

 
Areas

  
.

  !
Identity

! )
.

) *
Pages

* /
.

/ 0
Account

0 7
.

7 8
Manage

8 >
{ 
public 

class #
ResetAuthenticatorModel (
:) *
	PageModel+ 4
{ 
UserManager 
< 
IdentityUser  
>  !
_userManager" .
;. /
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
ILogger 
< #
ResetAuthenticatorModel '
>' (
_logger) 0
;0 1
public #
ResetAuthenticatorModel &
(& '
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
SignInManager 
< 
IdentityUser &
>& '
signInManager( 5
,5 6
ILogger 
< #
ResetAuthenticatorModel +
>+ ,
logger- 3
)3 4
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
[ 	
TempData	 
] 
public 
string 
StatusMessage #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
async 
Task 
< 
IActionResult '
>' (
OnGet) .
(. /
)/ 0
{   	
var!! 
user!! 
=!! 
await!! 
_userManager!! )
.!!) *
GetUserAsync!!* 6
(!!6 7
User!!7 ;
)!!; <
;!!< =
if"" 
("" 
user"" 
=="" 
null"" 
)"" 
{## 
return$$ 
NotFound$$ 
($$  
$"$$  ")
Unable to load user with ID '$$" ?
{$$? @
_userManager$$@ L
.$$L M
	GetUserId$$M V
($$V W
User$$W [
)$$[ \
}$$\ ]
'.$$] _
"$$_ `
)$$` a
;$$a b
}%% 
return'' 
Page'' 
('' 
)'' 
;'' 
}(( 	
public** 
async** 
Task** 
<** 
IActionResult** '
>**' (
OnPostAsync**) 4
(**4 5
)**5 6
{++ 	
var,, 
user,, 
=,, 
await,, 
_userManager,, )
.,,) *
GetUserAsync,,* 6
(,,6 7
User,,7 ;
),,; <
;,,< =
if-- 
(-- 
user-- 
==-- 
null-- 
)-- 
{.. 
return// 
NotFound// 
(//  
$"//  ")
Unable to load user with ID '//" ?
{//? @
_userManager//@ L
.//L M
	GetUserId//M V
(//V W
User//W [
)//[ \
}//\ ]
'.//] _
"//_ `
)//` a
;//a b
}00 
await22 
_userManager22 
.22 $
SetTwoFactorEnabledAsync22 7
(227 8
user228 <
,22< =
false22> C
)22C D
;22D E
await33 
_userManager33 
.33 &
ResetAuthenticatorKeyAsync33 9
(339 :
user33: >
)33> ?
;33? @
_logger44 
.44 
LogInformation44 "
(44" #
$str44# d
,44d e
user44f j
.44j k
Id44k m
)44m n
;44n o
await66 
_signInManager66  
.66  !
RefreshSignInAsync66! 3
(663 4
user664 8
)668 9
;669 :
StatusMessage77 
=77 
$str	77 ç
;
77ç é
return99 
RedirectToPage99 !
(99! "
$str99" 9
)999 :
;99: ;
}:: 	
};; 
}<< Ø6
ÖC:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Areas\Identity\Pages\Account\Manage\SetPassword.cshtml.cs
	namespace

 	
ChajdPizzaWebApp


 
.

 
Areas

  
.

  !
Identity

! )
.

) *
Pages

* /
.

/ 0
Account

0 7
.

7 8
Manage

8 >
{ 
public 

class 
SetPasswordModel !
:" #
	PageModel$ -
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
public 
SetPasswordModel 
(  
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
SignInManager 
< 
IdentityUser &
>& '
signInManager( 5
)5 6
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
} 	
[ 	
BindProperty	 
] 
public 

InputModel 
Input 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
TempData	 
] 
public 
string 
StatusMessage #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
class 

InputModel 
{   	
[!! 
Required!! 
]!! 
["" 
StringLength"" 
("" 
$num"" 
,"" 
ErrorMessage"" +
="", -
$str"". l
,""l m
MinimumLength""n {
=""| }
$num""~ 
)	"" Ä
]
""Ä Å
[## 
DataType## 
(## 
DataType## 
.## 
Password## '
)##' (
]##( )
[$$ 
Display$$ 
($$ 
Name$$ 
=$$ 
$str$$ *
)$$* +
]$$+ ,
public%% 
string%% 
NewPassword%% %
{%%& '
get%%( +
;%%+ ,
set%%- 0
;%%0 1
}%%2 3
['' 
DataType'' 
('' 
DataType'' 
.'' 
Password'' '
)''' (
]''( )
[(( 
Display(( 
((( 
Name(( 
=(( 
$str(( 2
)((2 3
]((3 4
[)) 
Compare)) 
()) 
$str)) "
,))" #
ErrorMessage))$ 0
=))1 2
$str))3 m
)))m n
]))n o
public** 
string** 
ConfirmPassword** )
{*** +
get**, /
;**/ 0
set**1 4
;**4 5
}**6 7
}++ 	
public-- 
async-- 
Task-- 
<-- 
IActionResult-- '
>--' (

OnGetAsync--) 3
(--3 4
)--4 5
{.. 	
var// 
user// 
=// 
await// 
_userManager// )
.//) *
GetUserAsync//* 6
(//6 7
User//7 ;
)//; <
;//< =
if00 
(00 
user00 
==00 
null00 
)00 
{11 
return22 
NotFound22 
(22  
$"22  ")
Unable to load user with ID '22" ?
{22? @
_userManager22@ L
.22L M
	GetUserId22M V
(22V W
User22W [
)22[ \
}22\ ]
'.22] _
"22_ `
)22` a
;22a b
}33 
var55 
hasPassword55 
=55 
await55 #
_userManager55$ 0
.550 1
HasPasswordAsync551 A
(55A B
user55B F
)55F G
;55G H
if77 
(77 
hasPassword77 
)77 
{88 
return99 
RedirectToPage99 %
(99% &
$str99& 8
)998 9
;999 :
}:: 
return<< 
Page<< 
(<< 
)<< 
;<< 
}== 	
public?? 
async?? 
Task?? 
<?? 
IActionResult?? '
>??' (
OnPostAsync??) 4
(??4 5
)??5 6
{@@ 	
ifAA 
(AA 
!AA 

ModelStateAA 
.AA 
IsValidAA #
)AA# $
{BB 
returnCC 
PageCC 
(CC 
)CC 
;CC 
}DD 
varFF 
userFF 
=FF 
awaitFF 
_userManagerFF )
.FF) *
GetUserAsyncFF* 6
(FF6 7
UserFF7 ;
)FF; <
;FF< =
ifGG 
(GG 
userGG 
==GG 
nullGG 
)GG 
{HH 
returnII 
NotFoundII 
(II  
$"II  ")
Unable to load user with ID 'II" ?
{II? @
_userManagerII@ L
.IIL M
	GetUserIdIIM V
(IIV W
UserIIW [
)II[ \
}II\ ]
'.II] _
"II_ `
)II` a
;IIa b
}JJ 
varLL 
addPasswordResultLL !
=LL" #
awaitLL$ )
_userManagerLL* 6
.LL6 7
AddPasswordAsyncLL7 G
(LLG H
userLLH L
,LLL M
InputLLN S
.LLS T
NewPasswordLLT _
)LL_ `
;LL` a
ifMM 
(MM 
!MM 
addPasswordResultMM "
.MM" #
	SucceededMM# ,
)MM, -
{NN 
foreachOO 
(OO 
varOO 
errorOO "
inOO# %
addPasswordResultOO& 7
.OO7 8
ErrorsOO8 >
)OO> ?
{PP 

ModelStateQQ 
.QQ 
AddModelErrorQQ ,
(QQ, -
stringQQ- 3
.QQ3 4
EmptyQQ4 9
,QQ9 :
errorQQ; @
.QQ@ A
DescriptionQQA L
)QQL M
;QQM N
}RR 
returnSS 
PageSS 
(SS 
)SS 
;SS 
}TT 
awaitVV 
_signInManagerVV  
.VV  !
RefreshSignInAsyncVV! 3
(VV3 4
userVV4 8
)VV8 9
;VV9 :
StatusMessageWW 
=WW 
$strWW 9
;WW9 :
returnYY 
RedirectToPageYY !
(YY! "
)YY" #
;YY# $
}ZZ 	
}[[ 
}\\ õ
ãC:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Areas\Identity\Pages\Account\Manage\ShowRecoveryCodes.cshtml.cs
	namespace

 	
ChajdPizzaWebApp


 
.

 
Areas

  
.

  !
Identity

! )
.

) *
Pages

* /
.

/ 0
Account

0 7
.

7 8
Manage

8 >
{ 
public 

class "
ShowRecoveryCodesModel '
:( )
	PageModel* 3
{ 
[ 	
TempData	 
] 
public 
string 
[ 
] 
RecoveryCodes %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
[ 	
TempData	 
] 
public 
string 
StatusMessage #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
IActionResult 
OnGet "
(" #
)# $
{ 	
if 
( 
RecoveryCodes 
==  
null! %
||& (
RecoveryCodes) 6
.6 7
Length7 =
==> @
$numA B
)B C
{ 
return 
RedirectToPage %
(% &
$str& A
)A B
;B C
} 
return 
Page 
( 
) 
; 
} 	
} 
} î-
ëC:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Areas\Identity\Pages\Account\Manage\TwoFactorAuthentication.cshtml.cs
	namespace

 	
ChajdPizzaWebApp


 
.

 
Areas

  
.

  !
Identity

! )
.

) *
Pages

* /
.

/ 0
Account

0 7
.

7 8
Manage

8 >
{ 
public 

class (
TwoFactorAuthenticationModel -
:. /
	PageModel0 9
{ 
private 
const 
string !
AuthenicatorUriFormat 2
=3 4
$str5 c
;c d
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
ILogger  
<  !(
TwoFactorAuthenticationModel! =
>= >
_logger? F
;F G
public (
TwoFactorAuthenticationModel +
(+ ,
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
SignInManager 
< 
IdentityUser &
>& '
signInManager( 5
,5 6
ILogger 
< (
TwoFactorAuthenticationModel 0
>0 1
logger2 8
)8 9
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
public 
bool 
HasAuthenticator $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public   
int   
RecoveryCodesLeft   $
{  % &
get  ' *
;  * +
set  , /
;  / 0
}  1 2
["" 	
BindProperty""	 
]"" 
public## 
bool## 
Is2faEnabled##  
{##! "
get### &
;##& '
set##( +
;##+ ,
}##- .
public%% 
bool%% 
IsMachineRemembered%% '
{%%( )
get%%* -
;%%- .
set%%/ 2
;%%2 3
}%%4 5
['' 	
TempData''	 
]'' 
public(( 
string(( 
StatusMessage(( #
{(($ %
get((& )
;(() *
set((+ .
;((. /
}((0 1
public** 
async** 
Task** 
<** 
IActionResult** '
>**' (
OnGet**) .
(**. /
)**/ 0
{++ 	
var,, 
user,, 
=,, 
await,, 
_userManager,, )
.,,) *
GetUserAsync,,* 6
(,,6 7
User,,7 ;
),,; <
;,,< =
if-- 
(-- 
user-- 
==-- 
null-- 
)-- 
{.. 
return// 
NotFound// 
(//  
$"//  ")
Unable to load user with ID '//" ?
{//? @
_userManager//@ L
.//L M
	GetUserId//M V
(//V W
User//W [
)//[ \
}//\ ]
'.//] _
"//_ `
)//` a
;//a b
}00 
HasAuthenticator22 
=22 
await22 $
_userManager22% 1
.221 2$
GetAuthenticatorKeyAsync222 J
(22J K
user22K O
)22O P
!=22Q S
null22T X
;22X Y
Is2faEnabled33 
=33 
await33  
_userManager33! -
.33- .$
GetTwoFactorEnabledAsync33. F
(33F G
user33G K
)33K L
;33L M
IsMachineRemembered44 
=44  !
await44" '
_signInManager44( 6
.446 7,
 IsTwoFactorClientRememberedAsync447 W
(44W X
user44X \
)44\ ]
;44] ^
RecoveryCodesLeft55 
=55 
await55  %
_userManager55& 2
.552 3#
CountRecoveryCodesAsync553 J
(55J K
user55K O
)55O P
;55P Q
return77 
Page77 
(77 
)77 
;77 
}88 	
public:: 
async:: 
Task:: 
<:: 
IActionResult:: '
>::' (
OnPost::) /
(::/ 0
)::0 1
{;; 	
var<< 
user<< 
=<< 
await<< 
_userManager<< )
.<<) *
GetUserAsync<<* 6
(<<6 7
User<<7 ;
)<<; <
;<<< =
if== 
(== 
user== 
==== 
null== 
)== 
{>> 
return?? 
NotFound?? 
(??  
$"??  ")
Unable to load user with ID '??" ?
{??? @
_userManager??@ L
.??L M
	GetUserId??M V
(??V W
User??W [
)??[ \
}??\ ]
'.??] _
"??_ `
)??` a
;??a b
}@@ 
awaitBB 
_signInManagerBB  
.BB  !&
ForgetTwoFactorClientAsyncBB! ;
(BB; <
)BB< =
;BB= >
StatusMessageCC 
=CC 
$str	CC î
;
CCî ï
returnDD 
RedirectToPageDD !
(DD! "
)DD" #
;DD# $
}EE 	
}FF 
}GG ÙL
{C:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Areas\Identity\Pages\Account\Register.cshtml.cs
	namespace 	
ChajdPizzaWebApp
 
. 
Areas  
.  !
Identity! )
.) *
Pages* /
./ 0
Account0 7
{ 
[ 
AllowAnonymous 
] 
public 

class 
RegisterModel 
:  
	PageModel! *
{ 
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
ILogger  
<  !
RegisterModel! .
>. /
_logger0 7
;7 8
private 
readonly 
IEmailSender %
_emailSender& 2
;2 3
public 
RegisterModel 
( 
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
SignInManager 
< 
IdentityUser &
>& '
signInManager( 5
,5 6
ILogger 
< 
RegisterModel !
>! "
logger# )
,) *
IEmailSender 
emailSender $
)$ %
{   	
_userManager!! 
=!! 
userManager!! &
;!!& '
_signInManager"" 
="" 
signInManager"" *
;""* +
_logger## 
=## 
logger## 
;## 
_emailSender$$ 
=$$ 
emailSender$$ &
;$$& '
}%% 	
['' 	
BindProperty''	 
]'' 
public(( 

InputModel(( 
Input(( 
{((  !
get((" %
;((% &
set((' *
;((* +
}((, -
public** 
string** 
	ReturnUrl** 
{**  !
get**" %
;**% &
set**' *
;*** +
}**, -
public,, 
IList,, 
<,,  
AuthenticationScheme,, )
>,,) *
ExternalLogins,,+ 9
{,,: ;
get,,< ?
;,,? @
set,,A D
;,,D E
},,F G
public.. 
class.. 

InputModel.. 
{// 	
[00 
Required00 
]00 
[11 
EmailAddress11 
]11 
[22 
Display22 
(22 
Name22 
=22 
$str22 #
)22# $
]22$ %
public33 
string33 
Email33 
{33  !
get33" %
;33% &
set33' *
;33* +
}33, -
[55 
Required55 
]55 
[66 
StringLength66 
(66 
$num66 
,66 
ErrorMessage66 +
=66, -
$str66. l
,66l m
MinimumLength66n {
=66| }
$num66~ 
)	66 Ä
]
66Ä Å
[77 
DataType77 
(77 
DataType77 
.77 
Password77 '
)77' (
]77( )
[88 
Display88 
(88 
Name88 
=88 
$str88 &
)88& '
]88' (
public99 
string99 
Password99 "
{99# $
get99% (
;99( )
set99* -
;99- .
}99/ 0
[;; 
DataType;; 
(;; 
DataType;; 
.;; 
Password;; '
);;' (
];;( )
[<< 
Display<< 
(<< 
Name<< 
=<< 
$str<< .
)<<. /
]<</ 0
[== 
Compare== 
(== 
$str== 
,==  
ErrorMessage==! -
===. /
$str==0 f
)==f g
]==g h
public>> 
string>> 
ConfirmPassword>> )
{>>* +
get>>, /
;>>/ 0
set>>1 4
;>>4 5
}>>6 7
}?? 	
publicAA 
asyncAA 
TaskAA 

OnGetAsyncAA $
(AA$ %
stringAA% +
	returnUrlAA, 5
=AA6 7
nullAA8 <
)AA< =
{BB 	
	ReturnUrlCC 
=CC 
	returnUrlCC !
;CC! "
ExternalLoginsDD 
=DD 
(DD 
awaitDD #
_signInManagerDD$ 2
.DD2 31
%GetExternalAuthenticationSchemesAsyncDD3 X
(DDX Y
)DDY Z
)DDZ [
.DD[ \
ToListDD\ b
(DDb c
)DDc d
;DDd e
}EE 	
publicGG 
asyncGG 
TaskGG 
<GG 
IActionResultGG '
>GG' (
OnPostAsyncGG) 4
(GG4 5
stringGG5 ;
	returnUrlGG< E
=GGF G
nullGGH L
)GGL M
{HH 	
	returnUrlII 
=II 
	returnUrlII !
??II" $
UrlII% (
.II( )
ContentII) 0
(II0 1
$strII1 5
)II5 6
;II6 7
ExternalLoginsJJ 
=JJ 
(JJ 
awaitJJ #
_signInManagerJJ$ 2
.JJ2 31
%GetExternalAuthenticationSchemesAsyncJJ3 X
(JJX Y
)JJY Z
)JJZ [
.JJ[ \
ToListJJ\ b
(JJb c
)JJc d
;JJd e
ifKK 
(KK 

ModelStateKK 
.KK 
IsValidKK "
)KK" #
{LL 
varMM 
userMM 
=MM 
newMM 
IdentityUserMM +
{MM, -
UserNameMM. 6
=MM7 8
InputMM9 >
.MM> ?
EmailMM? D
,MMD E
EmailMMF K
=MML M
InputMMN S
.MMS T
EmailMMT Y
}MMZ [
;MM[ \
varNN 
resultNN 
=NN 
awaitNN "
_userManagerNN# /
.NN/ 0
CreateAsyncNN0 ;
(NN; <
userNN< @
,NN@ A
InputNNB G
.NNG H
PasswordNNH P
)NNP Q
;NNQ R
ifOO 
(OO 
resultOO 
.OO 
	SucceededOO $
)OO$ %
{PP 
_loggerQQ 
.QQ 
LogInformationQQ *
(QQ* +
$strQQ+ V
)QQV W
;QQW X
varSS 
codeSS 
=SS 
awaitSS $
_userManagerSS% 1
.SS1 2/
#GenerateEmailConfirmationTokenAsyncSS2 U
(SSU V
userSSV Z
)SSZ [
;SS[ \
codeTT 
=TT 
WebEncodersTT &
.TT& '
Base64UrlEncodeTT' 6
(TT6 7
EncodingTT7 ?
.TT? @
UTF8TT@ D
.TTD E
GetBytesTTE M
(TTM N
codeTTN R
)TTR S
)TTS T
;TTT U
varUU 
callbackUrlUU #
=UU$ %
UrlUU& )
.UU) *
PageUU* .
(UU. /
$strVV /
,VV/ 0
pageHandlerWW #
:WW# $
nullWW% )
,WW) *
valuesXX 
:XX 
newXX  #
{XX$ %
areaXX& *
=XX+ ,
$strXX- 7
,XX7 8
userIdXX9 ?
=XX@ A
userXXB F
.XXF G
IdXXG I
,XXI J
codeXXK O
=XXP Q
codeXXR V
}XXW X
,XXX Y
protocolYY  
:YY  !
RequestYY" )
.YY) *
SchemeYY* 0
)YY0 1
;YY1 2
await[[ 
_emailSender[[ &
.[[& '
SendEmailAsync[[' 5
([[5 6
Input[[6 ;
.[[; <
Email[[< A
,[[A B
$str[[C W
,[[W X
$"\\ 4
(Please confirm your account by <a href='\\ B
{\\B C
HtmlEncoder\\C N
.\\N O
Default\\O V
.\\V W
Encode\\W ]
(\\] ^
callbackUrl\\^ i
)\\i j
}\\j k 
'>clicking here</a>.\\k 
"	\\ Ä
)
\\Ä Å
;
\\Å Ç
if^^ 
(^^ 
_userManager^^ $
.^^$ %
Options^^% ,
.^^, -
SignIn^^- 3
.^^3 4#
RequireConfirmedAccount^^4 K
)^^K L
{__ 
return`` 
RedirectToPage`` -
(``- .
$str``. D
,``D E
new``F I
{``J K
email``L Q
=``R S
Input``T Y
.``Y Z
Email``Z _
}``` a
)``a b
;``b c
}aa 
elsebb 
{cc 
awaitdd 
_signInManagerdd ,
.dd, -
SignInAsyncdd- 8
(dd8 9
userdd9 =
,dd= >
isPersistentdd? K
:ddK L
falseddM R
)ddR S
;ddS T
returnee 
LocalRedirectee ,
(ee, -
	returnUrlee- 6
)ee6 7
;ee7 8
}ff 
}gg 
foreachhh 
(hh 
varhh 
errorhh "
inhh# %
resulthh& ,
.hh, -
Errorshh- 3
)hh3 4
{ii 

ModelStatejj 
.jj 
AddModelErrorjj ,
(jj, -
stringjj- 3
.jj3 4
Emptyjj4 9
,jj9 :
errorjj; @
.jj@ A
DescriptionjjA L
)jjL M
;jjM N
}kk 
}ll 
returnoo 
Pageoo 
(oo 
)oo 
;oo 
}pp 	
}qq 
}rr ä#
áC:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Areas\Identity\Pages\Account\RegisterConfirmation.cshtml.cs
	namespace

 	
ChajdPizzaWebApp


 
.

 
Areas

  
.

  !
Identity

! )
.

) *
Pages

* /
.

/ 0
Account

0 7
{ 
[ 
AllowAnonymous 
] 
public 

class %
RegisterConfirmationModel *
:+ ,
	PageModel- 6
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
IEmailSender %
_sender& -
;- .
public %
RegisterConfirmationModel (
(( )
UserManager) 4
<4 5
IdentityUser5 A
>A B
userManagerC N
,N O
IEmailSenderP \
sender] c
)c d
{ 	
_userManager 
= 
userManager &
;& '
_sender 
= 
sender 
; 
} 	
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
bool %
DisplayConfirmAccountLink -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
public 
string  
EmailConfirmationUrl *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
async 
Task 
< 
IActionResult '
>' (

OnGetAsync) 3
(3 4
string4 :
email; @
)@ A
{ 	
if   
(   
email   
==   
null   
)   
{!! 
return"" 
RedirectToPage"" %
(""% &
$str""& .
)"". /
;""/ 0
}## 
var%% 
user%% 
=%% 
await%% 
_userManager%% )
.%%) *
FindByEmailAsync%%* :
(%%: ;
email%%; @
)%%@ A
;%%A B
if&& 
(&& 
user&& 
==&& 
null&& 
)&& 
{'' 
return(( 
NotFound(( 
(((  
$"((  ",
 Unable to load user with email '((" B
{((B C
email((C H
}((H I
'.((I K
"((K L
)((L M
;((M N
})) 
Email++ 
=++ 
email++ 
;++ %
DisplayConfirmAccountLink-- %
=--& '
true--( ,
;--, -
if.. 
(.. %
DisplayConfirmAccountLink.. )
)..) *
{// 
var00 
userId00 
=00 
await00 "
_userManager00# /
.00/ 0
GetUserIdAsync000 >
(00> ?
user00? C
)00C D
;00D E
var11 
code11 
=11 
await11  
_userManager11! -
.11- ./
#GenerateEmailConfirmationTokenAsync11. Q
(11Q R
user11R V
)11V W
;11W X
code22 
=22 
WebEncoders22 "
.22" #
Base64UrlEncode22# 2
(222 3
Encoding223 ;
.22; <
UTF822< @
.22@ A
GetBytes22A I
(22I J
code22J N
)22N O
)22O P
;22P Q 
EmailConfirmationUrl33 $
=33% &
Url33' *
.33* +
Page33+ /
(33/ 0
$str44 +
,44+ ,
pageHandler55 
:55  
null55! %
,55% &
values66 
:66 
new66 
{66  !
area66" &
=66' (
$str66) 3
,663 4
userId665 ;
=66< =
userId66> D
,66D E
code66F J
=66K L
code66M Q
}66R S
,66S T
protocol77 
:77 
Request77 %
.77% &
Scheme77& ,
)77, -
;77- .
}88 
return:: 
Page:: 
(:: 
):: 
;:: 
};; 	
}<< 
}== ï.
ÄC:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Areas\Identity\Pages\Account\ResetPassword.cshtml.cs
	namespace 	
ChajdPizzaWebApp
 
. 
Areas  
.  !
Identity! )
.) *
Pages* /
./ 0
Account0 7
{ 
[ 
AllowAnonymous 
] 
public 

class 
ResetPasswordModel #
:$ %
	PageModel& /
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
public 
ResetPasswordModel !
(! "
UserManager" -
<- .
IdentityUser. :
>: ;
userManager< G
)G H
{ 	
_userManager 
= 
userManager &
;& '
} 	
[ 	
BindProperty	 
] 
public 

InputModel 
Input 
{  !
get" %
;% &
set' *
;* +
}, -
public 
class 

InputModel 
{ 	
[ 
Required 
] 
[ 
EmailAddress 
] 
public   
string   
Email   
{    !
get  " %
;  % &
set  ' *
;  * +
}  , -
["" 
Required"" 
]"" 
[## 
StringLength## 
(## 
$num## 
,## 
ErrorMessage## +
=##, -
$str##. l
,##l m
MinimumLength##n {
=##| }
$num##~ 
)	## Ä
]
##Ä Å
[$$ 
DataType$$ 
($$ 
DataType$$ 
.$$ 
Password$$ '
)$$' (
]$$( )
public%% 
string%% 
Password%% "
{%%# $
get%%% (
;%%( )
set%%* -
;%%- .
}%%/ 0
['' 
DataType'' 
('' 
DataType'' 
.'' 
Password'' '
)''' (
]''( )
[(( 
Display(( 
((( 
Name(( 
=(( 
$str(( .
)((. /
]((/ 0
[)) 
Compare)) 
()) 
$str)) 
,))  
ErrorMessage))! -
=)). /
$str))0 f
)))f g
]))g h
public** 
string** 
ConfirmPassword** )
{*** +
get**, /
;**/ 0
set**1 4
;**4 5
}**6 7
public,, 
string,, 
Code,, 
{,,  
get,,! $
;,,$ %
set,,& )
;,,) *
},,+ ,
}-- 	
public// 
IActionResult// 
OnGet// "
(//" #
string//# )
code//* .
=/// 0
null//1 5
)//5 6
{00 	
if11 
(11 
code11 
==11 
null11 
)11 
{22 
return33 

BadRequest33 !
(33! "
$str33" O
)33O P
;33P Q
}44 
else55 
{66 
Input77 
=77 
new77 

InputModel77 &
{88 
Code99 
=99 
Encoding99 #
.99# $
UTF899$ (
.99( )
	GetString99) 2
(992 3
WebEncoders993 >
.99> ?
Base64UrlDecode99? N
(99N O
code99O S
)99S T
)99T U
}:: 
;:: 
return;; 
Page;; 
(;; 
);; 
;;; 
}<< 
}== 	
public?? 
async?? 
Task?? 
<?? 
IActionResult?? '
>??' (
OnPostAsync??) 4
(??4 5
)??5 6
{@@ 	
ifAA 
(AA 
!AA 

ModelStateAA 
.AA 
IsValidAA #
)AA# $
{BB 
returnCC 
PageCC 
(CC 
)CC 
;CC 
}DD 
varFF 
userFF 
=FF 
awaitFF 
_userManagerFF )
.FF) *
FindByEmailAsyncFF* :
(FF: ;
InputFF; @
.FF@ A
EmailFFA F
)FFF G
;FFG H
ifGG 
(GG 
userGG 
==GG 
nullGG 
)GG 
{HH 
returnJJ 
RedirectToPageJJ %
(JJ% &
$strJJ& C
)JJC D
;JJD E
}KK 
varMM 
resultMM 
=MM 
awaitMM 
_userManagerMM +
.MM+ ,
ResetPasswordAsyncMM, >
(MM> ?
userMM? C
,MMC D
InputMME J
.MMJ K
CodeMMK O
,MMO P
InputMMQ V
.MMV W
PasswordMMW _
)MM_ `
;MM` a
ifNN 
(NN 
resultNN 
.NN 
	SucceededNN  
)NN  !
{OO 
returnPP 
RedirectToPagePP %
(PP% &
$strPP& C
)PPC D
;PPD E
}QQ 
foreachSS 
(SS 
varSS 
errorSS 
inSS !
resultSS" (
.SS( )
ErrorsSS) /
)SS/ 0
{TT 

ModelStateUU 
.UU 
AddModelErrorUU (
(UU( )
stringUU) /
.UU/ 0
EmptyUU0 5
,UU5 6
errorUU7 <
.UU< =
DescriptionUU= H
)UUH I
;UUI J
}VV 
returnWW 
PageWW 
(WW 
)WW 
;WW 
}XX 	
}YY 
}ZZ Ø
åC:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Areas\Identity\Pages\Account\ResetPasswordConfirmation.cshtml.cs
	namespace 	
ChajdPizzaWebApp
 
. 
Areas  
.  !
Identity! )
.) *
Pages* /
./ 0
Account0 7
{		 
[

 
AllowAnonymous

 
]

 
public 

class *
ResetPasswordConfirmationModel /
:0 1
	PageModel2 ;
{ 
public 
void 
OnGet 
( 
) 
{ 	
} 	
} 
} ñ
pC:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Areas\Identity\Pages\Error.cshtml.cs
	namespace 	
ChajdPizzaWebApp
 
. 
Areas  
.  !
Identity! )
.) *
Pages* /
{ 
[ 
AllowAnonymous 
] 
[		 
ResponseCache		 
(		 
Duration		 
=		 
$num		 
,		  
Location		! )
=		* +!
ResponseCacheLocation		, A
.		A B
None		B F
,		F G
NoStore		H O
=		P Q
true		R V
)		V W
]		W X
public

 

class

 

ErrorModel

 
:

 
	PageModel

 '
{ 
public 
string 
	RequestId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
bool 
ShowRequestId !
=>" $
!% &
string& ,
., -
IsNullOrEmpty- :
(: ;
	RequestId; D
)D E
;E F
public 
void 
OnGet 
( 
) 
{ 	
	RequestId 
= 
Activity  
.  !
Current! (
?( )
.) *
Id* ,
??- /
HttpContext0 ;
.; <
TraceIdentifier< K
;K L
} 	
} 
} Ø∞
YC:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\BL\OrderBl.cs
	namespace		 	
ChajdPizzaWebApp		
 
.		 
BL		 
{

 
public 

class 
OrderBl 
{ 
public 
Object 
GetPizzaOrder #
(# $
string$ *
Username+ 3
,3 4
int5 8
?8 9
id: <
)< =
{ 	
var 
taskResponse 
= 
GetPizzaOrderTask 0
(0 1
Username1 9
,9 :
id; =
)= >
;> ?
var 
result 
= 
taskResponse %
.% &
Result& ,
;, -
return 
result 
; 
} 	
	protected 
async 
Task 
< 
Object #
># $
GetPizzaOrderTask% 6
(6 7
string7 =
Username> F
,F G
intH K
?K L
idM O
)O P
{ 	
Customer 
customer 
= 
new  #
Customer$ ,
(, -
)- .
;. /
Orders 
order 
= 
new 
Orders %
(% &
)& '
;' (
SpecialtyPizza 
specialtyPizza )
=* +
new, /
SpecialtyPizza0 >
(> ?
)? @
;@ A
OrderDetail 
orderDetail #
=$ %
new& )
OrderDetail* 5
(5 6
)6 7
;7 8
using 
( 
var 
client 
= 
new  #

HttpClient$ .
(. /
)/ 0
)0 1
{   
client!! 
.!! 
BaseAddress!! "
=!!# $
new!!% (
Uri!!) ,
(!!, -
$str!!- X
)!!X Y
;!!Y Z
client$$ 
.$$ !
DefaultRequestHeaders$$ ,
.$$, -
Clear$$- 2
($$2 3
)$$3 4
;$$4 5
client%% 
.%% !
DefaultRequestHeaders%% ,
.%%, -
Accept%%- 3
.%%3 4
Add%%4 7
(&& 
new&& +
MediaTypeWithQualityHeaderValue&& 8
(&&8 9
$str&&9 K
)&&K L
)&&L M
;&&M N
HttpResponseMessage'' #
ResC''$ (
='') *
await''+ 0
client''1 7
.''7 8
GetAsync''8 @
(''@ A
$str''A W
+''X Y
Username''Z b
)''b c
;''c d
if)) 
()) 
ResC)) 
.)) 
IsSuccessStatusCode)) ,
))), -
{** 
var++ 
customerRes++ #
=++$ %
ResC++& *
.++* +
Content+++ 2
.++2 3
ReadAsStringAsync++3 D
(++D E
)++E F
.++F G
Result++G M
;++M N
customer-- 
=-- 
JsonConvert-- *
.--* +
DeserializeObject--+ <
<--< =
Customer--= E
>--E F
(--F G
customerRes--G R
)--R S
;--S T
}.. 
else// 
if// 
(// 
!// 
ResC// 
.// 
IsSuccessStatusCode// 2
)//2 3
{//4 5
return//6 <
(//= >
new//> A
	Exception//B K
(//K L
$str//L f
)//f g
)//g h
;//h i
}//j k
var11 
custId11 
=11 
customer11 %
.11% &
Id11& (
;11( )
client44 
.44 !
DefaultRequestHeaders44 ,
.44, -
Clear44- 2
(442 3
)443 4
;444 5
client55 
.55 !
DefaultRequestHeaders55 ,
.55, -
Accept55- 3
.553 4
Add554 7
(66 
new66 +
MediaTypeWithQualityHeaderValue66 8
(668 9
$str669 K
)66K L
)66L M
;66M N
HttpResponseMessage77 #
ResCh77$ )
=77* +
await77, 1
client772 8
.778 9
GetAsync779 A
(77A B
$str77B ^
+77_ `
custId77a g
)77g h
;77h i
var88 
isMult88 
=88 
$num88 
;88 
if99 
(99 
ResCh99 
.99 
IsSuccessStatusCode99 -
)99- .
{:: 
var;; 
CheckRes;;  
=;;! "
ResCh;;# (
.;;( )
Content;;) 0
.;;0 1
ReadAsStringAsync;;1 B
(;;B C
);;C D
.;;D E
Result;;E K
;;;K L
isMult== 
=== 
JsonConvert== (
.==( )
DeserializeObject==) :
<==: ;
int==; >
>==> ?
(==? @
CheckRes==@ H
)==H I
;==I J
}>> 
else?? 
if?? 
(?? 
!?? 
ResCh?? 
.??  
IsSuccessStatusCode??  3
)??3 4
{??5 6
return??7 =
new??> A
	Exception??B K
(??K L
$str??L d
)??d e
;??e f
}??g h
if@@ 
(@@ 
isMult@@ 
>@@ 
$num@@ 
)@@ 
{@@  !
return@@" (
new@@) ,
	Exception@@- 6
(@@6 7
$str@@7 j
)@@j k
;@@k l
}@@m n
ifCC 
(CC 
isMultCC 
==CC 
$numCC 
)CC  
{DD 
orderEE 
.EE 

CustomerIdEE $
=EE% &
custIdEE' -
;EE- .
orderFF 
.FF 
isCompletedFF %
=FF& '
falseFF( -
;FF- .
clientHH 
.HH !
DefaultRequestHeadersHH 0
.HH0 1
ClearHH1 6
(HH6 7
)HH7 8
;HH8 9
clientII 
.II !
DefaultRequestHeadersII 0
.II0 1
AcceptII1 7
.II7 8
AddII8 ;
(JJ 
newJJ +
MediaTypeWithQualityHeaderValueJJ <
(JJ< =
$strJJ= O
)JJO P
)JJP Q
;JJQ R
varLL 
newDataLL 
=LL  !
JsonConvertLL" -
.LL- .
SerializeObjectLL. =
(LL= >
orderLL> C
)LLC D
;LLD E
varMM 

newContentMM "
=MM# $
newMM% (
StringContentMM) 6
(MM6 7
newDataMM7 >
,MM> ?
EncodingMM@ H
.MMH I
UTF8MMI M
,MMM N
$strMMO a
)MMa b
;MMb c
HttpResponseMessageNN '
ResPostNN( /
=NN0 1
awaitNN2 7
clientNN8 >
.NN> ?
	PostAsyncNN? H
(NNH I
$strNNI T
,NNT U

newContentNNV `
)NN` a
;NNa b
ifPP 
(PP 
!PP 
ResPostPP  
.PP  !
IsSuccessStatusCodePP! 4
)PP4 5
{PP6 7
returnPP8 >
newPP? B
	ExceptionPPC L
(PPL M
$strPPM i
)PPi j
;PPj k
}PPl m
}QQ 
clientTT 
.TT !
DefaultRequestHeadersTT ,
.TT, -
ClearTT- 2
(TT2 3
)TT3 4
;TT4 5
clientUU 
.UU !
DefaultRequestHeadersUU ,
.UU, -
AcceptUU- 3
.UU3 4
AddUU4 7
(VV 
newVV +
MediaTypeWithQualityHeaderValueVV 8
(VV8 9
$strVV9 K
)VVK L
)VVL M
;VVM N
HttpResponseMessageWW #
ResOWW$ (
=WW) *
awaitWW+ 0
clientWW1 7
.WW7 8
GetAsyncWW8 @
(WW@ A
$strWWA T
+WWU V
custIdWWW ]
)WW] ^
;WW^ _
ifYY 
(YY 
ResOYY 
.YY 
IsSuccessStatusCodeYY ,
)YY, -
{ZZ 
var[[ 
	ordersRes[[ !
=[[" #
ResO[[$ (
.[[( )
Content[[) 0
.[[0 1
ReadAsStringAsync[[1 B
([[B C
)[[C D
.[[D E
Result[[E K
;[[K L
order]] 
=]] 
JsonConvert]] '
.]]' (
DeserializeObject]]( 9
<]]9 :
Orders]]: @
>]]@ A
(]]A B
	ordersRes]]B K
)]]K L
;]]L M
}^^ 
else__ 
if__ 
(__ 
!__ 
ResO__ 
.__ 
IsSuccessStatusCode__ 2
)__2 3
{__4 5
return__6 <
new__= @
	Exception__A J
(__J K
$str__K b
)__b c
;__c d
}__e f
ifcc 
(cc 
!cc 
(cc 
idcc 
iscc 
nullcc  
)cc  !
)cc! "
{dd 
clientff 
.ff !
DefaultRequestHeadersff 0
.ff0 1
Clearff1 6
(ff6 7
)ff7 8
;ff8 9
clientgg 
.gg !
DefaultRequestHeadersgg 0
.gg0 1
Acceptgg1 7
.gg7 8
Addgg8 ;
(hh 
newhh +
MediaTypeWithQualityHeaderValuehh <
(hh< =
$strhh= O
)hhO P
)hhP Q
;hhQ R
HttpResponseMessageii '
ResPii( ,
=ii- .
awaitii/ 4
clientii5 ;
.ii; <
GetAsyncii< D
(iiD E
$striiE ]
+ii^ _
idii` b
)iib c
;iic d
ifkk 
(kk 
ResPkk 
.kk 
IsSuccessStatusCodekk 0
)kk0 1
{ll 
varmm 

SpecialResmm &
=mm' (
ResPmm) -
.mm- .
Contentmm. 5
.mm5 6
ReadAsStringAsyncmm6 G
(mmG H
)mmH I
.mmI J
ResultmmJ P
;mmP Q
specialtyPizzaoo &
=oo' (
JsonConvertoo) 4
.oo4 5
DeserializeObjectoo5 F
<ooF G
SpecialtyPizzaooG U
>ooU V
(ooV W

SpecialResooW a
)ooa b
;oob c
}pp 
elseqq 
ifqq 
(qq 
!qq 
ResPqq "
.qq" #
IsSuccessStatusCodeqq# 6
)qq6 7
{qq8 9
returnqq: @
newqqA D
	ExceptionqqE N
(qqN O
$strqqO x
)qqx y
;qqy z
}qq{ |
orderDetailss 
.ss  
Pricess  %
=ss& '
specialtyPizzass( 6
.ss6 7
Pricess7 <
;ss< =
orderDetailtt 
.tt  
SizeIdtt  &
=tt' (
$numtt) *
;tt* +
orderDetailuu 
.uu  
ToppingsSelecteduu  0
=uu1 2
specialtyPizzauu3 A
.uuA B
DescriptionuuB M
;uuM N
orderDetailvv 
.vv  
Idvv  "
=vv# $
specialtyPizzavv% 3
.vv3 4
IDvv4 6
;vv6 7
}ww 
orderDetailyy 
.yy 
OrdersIdyy $
=yy% &
orderyy' ,
.yy, -
Idyy- /
;yy/ 0
returnzz 
orderDetailzz "
;zz" #
}{{ 
}}} 	
public
ÄÄ 
Object
ÄÄ 
PostPizzaOrder
ÄÄ $
(
ÄÄ$ %
OrderDetail
ÄÄ% 0
orderDetail
ÄÄ1 <
)
ÄÄ< =
{
ÅÅ 	
var
ÇÇ 
taskResponse
ÇÇ 
=
ÇÇ  
PostPizzaOrderTask
ÇÇ 1
(
ÇÇ1 2
orderDetail
ÇÇ2 =
)
ÇÇ= >
;
ÇÇ> ?
var
ÉÉ 
result
ÉÉ 
=
ÉÉ 
taskResponse
ÉÉ %
.
ÉÉ% &
Result
ÉÉ& ,
;
ÉÉ, -
return
ÑÑ 
result
ÑÑ 
;
ÑÑ 
}
ÖÖ 	
	protected
áá 
async
áá 
Task
áá 
<
áá 
Object
áá #
>
áá# $ 
PostPizzaOrderTask
áá% 7
(
áá7 8
OrderDetail
áá8 C
orderDetail
ááD O
)
ááO P
{
àà 	
using
ââ 
(
ââ 
var
ââ 
client
ââ 
=
ââ 
new
ââ  #

HttpClient
ââ$ .
(
ââ. /
)
ââ/ 0
)
ââ0 1
{
ää 
client
ãã 
.
ãã 
BaseAddress
ãã "
=
ãã# $
new
ãã% (
Uri
ãã) ,
(
ãã, -
$str
ãã- X
)
ããX Y
;
ããY Z
client
éé 
.
éé #
DefaultRequestHeaders
éé ,
.
éé, -
Clear
éé- 2
(
éé2 3
)
éé3 4
;
éé4 5
client
èè 
.
èè #
DefaultRequestHeaders
èè ,
.
èè, -
Accept
èè- 3
.
èè3 4
Add
èè4 7
(
êê 
new
êê -
MediaTypeWithQualityHeaderValue
êê 8
(
êê8 9
$str
êê9 K
)
êêK L
)
êêL M
;
êêM N
orderDetail
íí 
.
íí 
Id
íí 
=
íí  
$num
íí! "
;
íí" #
var
îî 
newData
îî 
=
îî 
JsonConvert
îî )
.
îî) *
SerializeObject
îî* 9
(
îî9 :
orderDetail
îî: E
)
îîE F
;
îîF G
var
ïï 

newContent
ïï 
=
ïï  
new
ïï! $
StringContent
ïï% 2
(
ïï2 3
newData
ïï3 :
,
ïï: ;
Encoding
ïï< D
.
ïïD E
UTF8
ïïE I
,
ïïI J
$str
ïïK ]
)
ïï] ^
;
ïï^ _!
HttpResponseMessage
ññ #
ResPost
ññ$ +
=
ññ, -
await
ññ. 3
client
ññ4 :
.
ññ: ;
	PostAsync
ññ; D
(
ññD E
$str
ññE V
,
ññV W

newContent
ññX b
)
ññb c
;
ññc d
if
óó 
(
óó 
!
óó 
ResPost
óó 
.
óó !
IsSuccessStatusCode
óó 0
)
óó0 1
{
óó2 3
return
óó4 :
new
óó; >
	Exception
óó? H
(
óóH I
$stróóI ú
)óóú ù
;óóù û
}óóü †
else
òò 
{
ôô 
Orders
õõ 
order
õõ  
=
õõ! "
new
õõ# &
Orders
õõ' -
(
õõ- .
)
õõ. /
;
õõ/ 0
client
úú 
.
úú #
DefaultRequestHeaders
úú 0
.
úú0 1
Clear
úú1 6
(
úú6 7
)
úú7 8
;
úú8 9
client
ùù 
.
ùù #
DefaultRequestHeaders
ùù 0
.
ùù0 1
Accept
ùù1 7
.
ùù7 8
Add
ùù8 ;
(
ûû 
new
ûû -
MediaTypeWithQualityHeaderValue
ûû <
(
ûû< =
$str
ûû= O
)
ûûO P
)
ûûP Q
;
ûûQ R!
HttpResponseMessage
üü '
ResO
üü( ,
=
üü- .
await
üü/ 4
client
üü5 ;
.
üü; <
GetAsync
üü< D
(
üüD E
$str
üüE Q
+
üüR S
orderDetail
üüT _
.
üü_ `
OrdersId
üü` h
)
üüh i
;
üüi j
if
°° 
(
°° 
ResO
°° 
.
°° !
IsSuccessStatusCode
°° 0
)
°°0 1
{
¢¢ 
var
££ 
orderRes
££ $
=
££% &
ResO
££' +
.
££+ ,
Content
££, 3
.
££3 4
ReadAsStringAsync
££4 E
(
££E F
)
££F G
.
££G H
Result
££H N
;
££N O
order
•• 
=
•• 
JsonConvert
••  +
.
••+ ,
DeserializeObject
••, =
<
••= >
Orders
••> D
>
••D E
(
••E F
orderRes
••F N
)
••N O
;
••O P
}
¶¶ 
else
ßß 
if
ßß 
(
ßß 
!
ßß 
ResO
ßß "
.
ßß" #!
IsSuccessStatusCode
ßß# 6
)
ßß6 7
{
®® 
client
™™ 
.
™™ #
DefaultRequestHeaders
™™ 4
.
™™4 5
Clear
™™5 :
(
™™: ;
)
™™; <
;
™™< =
client
´´ 
.
´´ #
DefaultRequestHeaders
´´ 4
.
´´4 5
Accept
´´5 ;
.
´´; <
Add
´´< ?
(
¨¨ 
new
¨¨  -
MediaTypeWithQualityHeaderValue
¨¨! @
(
¨¨@ A
$str
¨¨A S
)
¨¨S T
)
¨¨T U
;
¨¨U V!
HttpResponseMessage
ÆÆ +
ResDel
ÆÆ, 2
=
ÆÆ3 4
await
ÆÆ5 :
client
ÆÆ; A
.
ÆÆA B
DeleteAsync
ÆÆB M
(
ÆÆM N
$str
ÆÆN `
+
ÆÆa b
orderDetail
ÆÆc n
.
ÆÆn o
Id
ÆÆo q
)
ÆÆq r
;
ÆÆr s
if
ØØ 
(
ØØ 
!
ØØ 
ResDel
ØØ #
.
ØØ# $!
IsSuccessStatusCode
ØØ$ 7
)
ØØ7 8
{
ØØ9 :
return
ØØ; A
new
ØØB E
	Exception
ØØF O
(
ØØO P
$str
ØØP v
)
ØØv w
;
ØØw x
}
ØØy z
return
∞∞ 
new
∞∞ "
	Exception
∞∞# ,
(
∞∞, -
$str
∞∞- ]
)
∞∞] ^
;
∞∞^ _
}
±± 
order
µµ 
.
µµ 
NetPrice
µµ "
=
µµ# $
order
µµ% *
.
µµ* +
NetPrice
µµ+ 3
+
µµ4 5
orderDetail
µµ6 A
.
µµA B
Price
µµB G
;
µµG H
client
∂∂ 
.
∂∂ #
DefaultRequestHeaders
∂∂ 0
.
∂∂0 1
Clear
∂∂1 6
(
∂∂6 7
)
∂∂7 8
;
∂∂8 9
client
∑∑ 
.
∑∑ #
DefaultRequestHeaders
∑∑ 0
.
∑∑0 1
Accept
∑∑1 7
.
∑∑7 8
Add
∑∑8 ;
(
∏∏ 
new
∏∏ -
MediaTypeWithQualityHeaderValue
∏∏ <
(
∏∏< =
$str
∏∏= O
)
∏∏O P
)
∏∏P Q
;
∏∏Q R
newData
∫∫ 
=
∫∫ 
JsonConvert
∫∫ )
.
∫∫) *
SerializeObject
∫∫* 9
(
∫∫9 :
order
∫∫: ?
)
∫∫? @
;
∫∫@ A

newContent
ªª 
=
ªª  
new
ªª! $
StringContent
ªª% 2
(
ªª2 3
newData
ªª3 :
,
ªª: ;
Encoding
ªª< D
.
ªªD E
UTF8
ªªE I
,
ªªI J
$str
ªªK ]
)
ªª] ^
;
ªª^ _!
HttpResponseMessage
ºº '
ResPut
ºº( .
=
ºº/ 0
await
ºº1 6
client
ºº7 =
.
ºº= >
PutAsync
ºº> F
(
ººF G
$str
ººG S
+
ººT U
order
ººV [
.
ºº[ \
Id
ºº\ ^
,
ºº^ _

newContent
ºº` j
)
ººj k
;
ººk l
if
ΩΩ 
(
ΩΩ 
!
ΩΩ 
ResPut
ΩΩ 
.
ΩΩ  !
IsSuccessStatusCode
ΩΩ  3
)
ΩΩ3 4
{
ΩΩ5 6
return
ΩΩ7 =
new
ΩΩ> A
	Exception
ΩΩB K
(
ΩΩK L
$str
ΩΩL r
)
ΩΩr s
;
ΩΩs t
}
ΩΩu v
}
ææ 
return
¿¿ 
orderDetail
¿¿ "
;
¿¿" #
}
¡¡ 
}
¬¬ 	
public
≈≈ 
Object
≈≈ 
GetSecretFormula
≈≈ &
(
≈≈& '
)
≈≈' (
{
∆∆ 	
var
«« 
taskResponse
«« 
=
«« "
GetSecretFormulaTask
«« 3
(
««3 4
)
««4 5
;
««5 6
var
»» 
result
»» 
=
»» 
taskResponse
»» %
.
»»% &
Result
»»& ,
;
»», -
return
…… 
result
…… 
;
…… 
}
   	
	protected
ÃÃ 
async
ÃÃ 
Task
ÃÃ 
<
ÃÃ 
Object
ÃÃ #
>
ÃÃ# $"
GetSecretFormulaTask
ÃÃ% 9
(
ÃÃ9 :
)
ÃÃ: ;
{
ÕÕ 	
using
ŒŒ 
(
ŒŒ 
var
ŒŒ 
client
ŒŒ 
=
ŒŒ 
new
ŒŒ  #

HttpClient
ŒŒ$ .
(
ŒŒ. /
)
ŒŒ/ 0
)
ŒŒ0 1
{
œœ 
client
–– 
.
–– 
BaseAddress
–– "
=
––# $
new
––% (
Uri
––) ,
(
––, -
$str
––- X
)
––X Y
;
––Y Z
client
““ 
.
““ #
DefaultRequestHeaders
““ ,
.
““, -
Clear
““- 2
(
““2 3
)
““3 4
;
““4 5
client
”” 
.
”” #
DefaultRequestHeaders
”” ,
.
””, -
Accept
””- 3
.
””3 4
Add
””4 7
(
‘‘ 
new
‘‘ -
MediaTypeWithQualityHeaderValue
‘‘ 8
(
‘‘8 9
$str
‘‘9 K
)
‘‘K L
)
‘‘L M
;
‘‘M N!
HttpResponseMessage
’’ #
ResSF
’’$ )
=
’’* +
await
’’, 1
client
’’2 8
.
’’8 9
GetAsync
’’9 A
(
’’A B
$str
’’B \
)
’’\ ]
;
’’] ^
if
◊◊ 
(
◊◊ 
ResSF
◊◊ 
.
◊◊ !
IsSuccessStatusCode
◊◊ -
)
◊◊- .
{
ÿÿ 
var
ŸŸ 
secretFormula
ŸŸ %
=
ŸŸ& '
ResSF
ŸŸ( -
.
ŸŸ- .
Content
ŸŸ. 5
.
ŸŸ5 6
ReadAsStringAsync
ŸŸ6 G
(
ŸŸG H
)
ŸŸH I
.
ŸŸI J
Result
ŸŸJ P
;
ŸŸP Q
decimal
€€ 
sFormula
€€ $
=
€€% &
JsonConvert
€€' 2
.
€€2 3
DeserializeObject
€€3 D
<
€€D E
Decimal
€€E L
>
€€L M
(
€€M N
secretFormula
€€N [
)
€€[ \
;
€€\ ]
return
‹‹ 
sFormula
‹‹ #
;
‹‹# $
}
›› 
else
ﬁﬁ 
{
ﬁﬁ 
return
ﬁﬁ 
(
ﬁﬁ 
new
ﬁﬁ !
	Exception
ﬁﬁ" +
(
ﬁﬁ+ ,
$str
ﬁﬁ, E
)
ﬁﬁE F
)
ﬁﬁF G
;
ﬁﬁG H
}
ﬁﬁI J
}
·· 
}
‚‚ 	
}
„„ 
}‰‰ ›3
qC:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Controllers\CustomersApiController.cs
	namespace		 	
ChajdPizzaWebApp		
 
.		 
Controllers		 &
{

 
[ 

EnableCors 
] 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class "
CustomersApiController '
:( )
ControllerBase* 8
{ 
private 
readonly 
ICustomerRepo &
_context' /
;/ 0
public "
CustomersApiController %
(% &
ICustomerRepo& 3
context4 ;
); <
{ 	
_context 
= 
context 
; 
} 	
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
ActionResult &
<& '
IEnumerable' 2
<2 3
Customer3 ;
>; <
>< =
>= >
GetCustomer? J
(J K
)K L
{ 	
return 
await 
_context !
.! "
	SelectAll" +
(+ ,
), -
;- .
} 	
[ 	
HttpGet	 
( 
$str 
) 
] 
public   
async   
Task   
<   
ActionResult   &
<  & '
Customer  ' /
>  / 0
>  0 1
GetCustomer  2 =
(  = >
int  > A
id  B D
)  D E
{!! 	
var"" 
customer"" 
="" 
await""  
_context""! )
."") *

SelectById""* 4
(""4 5
id""5 7
)""7 8
;""8 9
if$$ 
($$ 
customer$$ 
==$$ 
null$$  
)$$  !
{%% 
return&& 
NotFound&& 
(&&  
)&&  !
;&&! "
}'' 
return)) 
customer)) 
;)) 
}** 	
[,, 	
HttpGet,,	 
(,, 
$str,, $
),,$ %
],,% &
public-- 
async-- 
Task-- 
<-- 
ActionResult-- &
<--& '
Customer--' /
>--/ 0
>--0 1
GetCustomerByUser--2 C
(--C D
string--D J
Username--K S
)--S T
{.. 	
var// 
customer// 
=// 
await//  
_context//! )
.//) *
SelectByUser//* 6
(//6 7
Username//7 ?
)//? @
;//@ A
if11 
(11 
customer11 
==11 
null11  
)11  !
{22 
return33 
NotFound33 
(33  
)33  !
;33! "
}44 
return66 
customer66 
;66 
}77 	
[<< 	
HttpPut<<	 
(<< 
$str<< 
)<< 
]<< 
public== 
async== 
Task== 
<== 
IActionResult== '
>==' (
PutCustomer==) 4
(==4 5
int==5 8
id==9 ;
,==; <
Customer=== E
customer==F N
)==N O
{>> 	
if?? 
(?? 
id?? 
!=?? 
customer?? 
.?? 
Id?? !
)??! "
{@@ 
returnAA 

BadRequestAA !
(AA! "
)AA" #
;AA# $
}BB 
tryEE 
{FF 
awaitGG 
_contextGG 
.GG 
PutGG "
(GG" #
customerGG# +
)GG+ ,
;GG, -
}HH 
catchII 
(II (
DbUpdateConcurrencyExceptionII /
)II/ 0
{JJ 
ifKK 
(KK 
!KK 
CustomerExistsKK #
(KK# $
idKK$ &
)KK& '
)KK' (
{LL 
returnMM 
NotFoundMM #
(MM# $
)MM$ %
;MM% &
}NN 
elseOO 
{PP 
throwQQ 
;QQ 
}RR 
}SS 
returnUU 
	NoContentUU 
(UU 
)UU 
;UU 
}VV 	
[[[ 	
HttpPost[[	 
][[ 
public\\ 
async\\ 
Task\\ 
<\\ 
ActionResult\\ &
<\\& '
Customer\\' /
>\\/ 0
>\\0 1
PostCustomer\\2 >
(\\> ?
Customer\\? G
customer\\H P
)\\P Q
{]] 	
await^^ 
_context^^ 
.^^ 
Add^^ 
(^^ 
customer^^ '
)^^' (
;^^( )
returnaa 
CreatedAtActionaa "
(aa" #
$straa# 0
,aa0 1
newaa2 5
{aa6 7
idaa8 :
=aa; <
customeraa= E
.aaE F
IdaaF H
}aaI J
,aaJ K
customeraaL T
)aaT U
;aaU V
}bb 	
[ee 	

HttpDeleteee	 
(ee 
$stree 
)ee 
]ee 
publicff 
asyncff 
Taskff 
<ff 
ActionResultff &
<ff& '
Customerff' /
>ff/ 0
>ff0 1
DeleteCustomerff2 @
(ff@ A
intffA D
idffE G
)ffG H
{gg 	
varhh 
customerhh 
=hh 
awaithh  
_contexthh! )
.hh) *

SelectByIdhh* 4
(hh4 5
idhh5 7
)hh7 8
;hh8 9
ifii 
(ii 
customerii 
==ii 
nullii  
)ii  !
{jj 
returnkk 
NotFoundkk 
(kk  
)kk  !
;kk! "
}ll 
awaitnn 
_contextnn 
.nn 
Removenn !
(nn! "
customernn" *
)nn* +
;nn+ ,
returnpp 
customerpp 
;pp 
}qq 	
privatess 
boolss 
CustomerExistsss #
(ss# $
intss$ '
idss( *
)ss* +
{tt 	
returnuu 
_contextuu 
.uu 
CustomerExistsuu *
(uu* +
iduu+ -
)uu- .
;uu. /
}vv 	
}ww 
}xx ·[
nC:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Controllers\CustomersController.cs
	namespace		 	
ChajdPizzaWebApp		
 
.		 
Controllers		 &
{

 
public 

class 
CustomersController $
:% &

Controller' 1
{ 
private 
readonly  
ApplicationDbContext -
_context. 6
;6 7
public 
CustomersController "
(" # 
ApplicationDbContext# 7
context8 ?
)? @
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
IActionResult '
>' (
Index) .
(. /
)/ 0
{ 	
var  
applicationDbContext $
=% &
_context' /
./ 0
Customer0 8
.8 9
Include9 @
(@ A
cA B
=>C E
cF G
.G H
StateH M
)M N
;N O
return 
View 
( 
await  
applicationDbContext 2
.2 3
ToListAsync3 >
(> ?
)? @
)@ A
;A B
} 	
public 
async 
Task 
< 
IActionResult '
>' (
Details) 0
(0 1
int1 4
?4 5
id6 8
)8 9
{ 	
if 
( 
id 
== 
null 
) 
{ 
return   
NotFound   
(    
)    !
;  ! "
}!! 
var## 
customer## 
=## 
await##  
_context##! )
.##) *
Customer##* 2
.$$ 
Include$$ 
($$ 
c$$ 
=>$$ 
c$$ 
.$$  
State$$  %
)$$% &
.%% 
FirstOrDefaultAsync%% $
(%%$ %
m%%% &
=>%%' )
m%%* +
.%%+ ,
Id%%, .
==%%/ 1
id%%2 4
)%%4 5
;%%5 6
if&& 
(&& 
customer&& 
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
return++ 
View++ 
(++ 
customer++  
)++  !
;++! "
},, 	
public// 
IActionResult// 
Create// #
(//# $
)//$ %
{00 	
ViewData11 
[11 
$str11 
]11 
=11  !
new11" %

SelectList11& 0
(110 1
_context111 9
.119 :
Set11: =
<11= >
State11> C
>11C D
(11D E
)11E F
,11F G
$str11H L
,11L M
$str11N T
)11T U
;11U V
return22 
View22 
(22 
)22 
;22 
}33 	
[88 	
HttpPost88	 
]88 
[99 	$
ValidateAntiForgeryToken99	 !
]99! "
public:: 
async:: 
Task:: 
<:: 
IActionResult:: '
>::' (
Create::) /
(::/ 0
[::0 1
Bind::1 5
(::5 6
$str::6 d
)::d e
]::e f
Customer::g o
customer::p x
)::x y
{;; 	
if<< 
(<< 

ModelState<< 
.<< 
IsValid<< "
)<<" #
{== 
_context>> 
.>> 
Add>> 
(>> 
customer>> %
)>>% &
;>>& '
await?? 
_context?? 
.?? 
SaveChangesAsync?? /
(??/ 0
)??0 1
;??1 2
return@@ 
RedirectToAction@@ '
(@@' (
nameof@@( .
(@@. /
Index@@/ 4
)@@4 5
)@@5 6
;@@6 7
}AA 
ViewDataBB 
[BB 
$strBB 
]BB 
=BB  !
newBB" %

SelectListBB& 0
(BB0 1
_contextBB1 9
.BB9 :
SetBB: =
<BB= >
StateBB> C
>BBC D
(BBD E
)BBE F
,BBF G
$strBBH L
,BBL M
$strBBN R
,BBR S
customerBBT \
.BB\ ]
StateIDBB] d
)BBd e
;BBe f
returnCC 
ViewCC 
(CC 
customerCC  
)CC  !
;CC! "
}DD 	
publicGG 
asyncGG 
TaskGG 
<GG 
IActionResultGG '
>GG' (
EditGG) -
(GG- .
intGG. 1
?GG1 2
idGG3 5
)GG5 6
{HH 	
ifII 
(II 
idII 
==II 
nullII 
)II 
{JJ 
returnKK 
NotFoundKK 
(KK  
)KK  !
;KK! "
}LL 
varNN 
customerNN 
=NN 
awaitNN  
_contextNN! )
.NN) *
CustomerNN* 2
.NN2 3
	FindAsyncNN3 <
(NN< =
idNN= ?
)NN? @
;NN@ A
ifOO 
(OO 
customerOO 
==OO 
nullOO  
)OO  !
{PP 
returnQQ 
NotFoundQQ 
(QQ  
)QQ  !
;QQ! "
}RR 
ViewDataSS 
[SS 
$strSS 
]SS 
=SS  !
newSS" %

SelectListSS& 0
(SS0 1
_contextSS1 9
.SS9 :
SetSS: =
<SS= >
StateSS> C
>SSC D
(SSD E
)SSE F
,SSF G
$strSSH L
,SSL M
$strSSN R
,SSR S
customerSST \
.SS\ ]
StateIDSS] d
)SSd e
;SSe f
returnTT 
ViewTT 
(TT 
customerTT  
)TT  !
;TT! "
}UU 	
[ZZ 	
HttpPostZZ	 
]ZZ 
[[[ 	$
ValidateAntiForgeryToken[[	 !
][[! "
public\\ 
async\\ 
Task\\ 
<\\ 
IActionResult\\ '
>\\' (
Edit\\) -
(\\- .
int\\. 1
id\\2 4
,\\4 5
[\\6 7
Bind\\7 ;
(\\; <
$str\\< j
)\\j k
]\\k l
Customer\\m u
customer\\v ~
)\\~ 
{]] 	
if^^ 
(^^ 
id^^ 
!=^^ 
customer^^ 
.^^ 
Id^^ !
)^^! "
{__ 
return`` 
NotFound`` 
(``  
)``  !
;``! "
}aa 
ifcc 
(cc 

ModelStatecc 
.cc 
IsValidcc "
)cc" #
{dd 
tryee 
{ff 
_contextgg 
.gg 
Updategg #
(gg# $
customergg$ ,
)gg, -
;gg- .
awaithh 
_contexthh "
.hh" #
SaveChangesAsynchh# 3
(hh3 4
)hh4 5
;hh5 6
}ii 
catchjj 
(jj (
DbUpdateConcurrencyExceptionjj 3
)jj3 4
{kk 
ifll 
(ll 
!ll 
CustomerExistsll '
(ll' (
customerll( 0
.ll0 1
Idll1 3
)ll3 4
)ll4 5
{mm 
returnnn 
NotFoundnn '
(nn' (
)nn( )
;nn) *
}oo 
elsepp 
{qq 
throwrr 
;rr 
}ss 
}tt 
returnuu 
RedirectToActionuu '
(uu' (
nameofuu( .
(uu. /
Indexuu/ 4
)uu4 5
)uu5 6
;uu6 7
}vv 
ViewDataww 
[ww 
$strww 
]ww 
=ww  !
newww" %

SelectListww& 0
(ww0 1
_contextww1 9
.ww9 :
Setww: =
<ww= >
Stateww> C
>wwC D
(wwD E
)wwE F
,wwF G
$strwwH L
,wwL M
$strwwN R
,wwR S
customerwwT \
.ww\ ]
StateIDww] d
)wwd e
;wwe f
returnxx 
Viewxx 
(xx 
customerxx  
)xx  !
;xx! "
}yy 	
public|| 
async|| 
Task|| 
<|| 
IActionResult|| '
>||' (
Delete||) /
(||/ 0
int||0 3
?||3 4
id||5 7
)||7 8
{}} 	
if~~ 
(~~ 
id~~ 
==~~ 
null~~ 
)~~ 
{ 
return
ÄÄ 
NotFound
ÄÄ 
(
ÄÄ  
)
ÄÄ  !
;
ÄÄ! "
}
ÅÅ 
var
ÉÉ 
customer
ÉÉ 
=
ÉÉ 
await
ÉÉ  
_context
ÉÉ! )
.
ÉÉ) *
Customer
ÉÉ* 2
.
ÑÑ 
Include
ÑÑ 
(
ÑÑ 
c
ÑÑ 
=>
ÑÑ 
c
ÑÑ 
.
ÑÑ  
State
ÑÑ  %
)
ÑÑ% &
.
ÖÖ !
FirstOrDefaultAsync
ÖÖ $
(
ÖÖ$ %
m
ÖÖ% &
=>
ÖÖ' )
m
ÖÖ* +
.
ÖÖ+ ,
Id
ÖÖ, .
==
ÖÖ/ 1
id
ÖÖ2 4
)
ÖÖ4 5
;
ÖÖ5 6
if
ÜÜ 
(
ÜÜ 
customer
ÜÜ 
==
ÜÜ 
null
ÜÜ  
)
ÜÜ  !
{
áá 
return
àà 
NotFound
àà 
(
àà  
)
àà  !
;
àà! "
}
ââ 
return
ãã 
View
ãã 
(
ãã 
customer
ãã  
)
ãã  !
;
ãã! "
}
åå 	
[
èè 	
HttpPost
èè	 
,
èè 

ActionName
èè 
(
èè 
$str
èè &
)
èè& '
]
èè' (
[
êê 	&
ValidateAntiForgeryToken
êê	 !
]
êê! "
public
ëë 
async
ëë 
Task
ëë 
<
ëë 
IActionResult
ëë '
>
ëë' (
DeleteConfirmed
ëë) 8
(
ëë8 9
int
ëë9 <
id
ëë= ?
)
ëë? @
{
íí 	
var
ìì 
customer
ìì 
=
ìì 
await
ìì  
_context
ìì! )
.
ìì) *
Customer
ìì* 2
.
ìì2 3
	FindAsync
ìì3 <
(
ìì< =
id
ìì= ?
)
ìì? @
;
ìì@ A
_context
îî 
.
îî 
Customer
îî 
.
îî 
Remove
îî $
(
îî$ %
customer
îî% -
)
îî- .
;
îî. /
await
ïï 
_context
ïï 
.
ïï 
SaveChangesAsync
ïï +
(
ïï+ ,
)
ïï, -
;
ïï- .
return
ññ 
RedirectToAction
ññ #
(
ññ# $
nameof
ññ$ *
(
ññ* +
Index
ññ+ 0
)
ññ0 1
)
ññ1 2
;
ññ2 3
}
óó 	
private
ôô 
bool
ôô 
CustomerExists
ôô #
(
ôô# $
int
ôô$ '
id
ôô( *
)
ôô* +
{
öö 	
return
õõ 
_context
õõ 
.
õõ 
Customer
õõ $
.
õõ$ %
Any
õõ% (
(
õõ( )
e
õõ) *
=>
õõ+ -
e
õõ. /
.
õõ/ 0
Id
õõ0 2
==
õõ3 5
id
õõ6 8
)
õõ8 9
;
õõ9 :
}
úú 	
}
ùù 
}ûû Œî
iC:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Controllers\HomeController.cs
	namespace 	
ChajdPizzaWebApp
 
. 
Controllers &
{ 
public 

class 
HomeController 
:  !

Controller" ,
{ 
static 
string 
_url 
= 
$str D
;D E
private 
readonly 
ILogger  
<  !
HomeController! /
>/ 0
_logger1 8
;8 9
UserManager 
< 
IdentityUser  
>  !
_userManager" .
;. /
OrderBl 

Orderlogic 
= 
new  
OrderBl! (
(( )
)) *
;* +
public 
HomeController 
( 
ILogger %
<% &
HomeController& 4
>4 5
logger6 <
,< =
UserManager> I
<I J
IdentityUserJ V
>V W
userManagerX c
)c d
{ 	
_logger 
= 
logger 
; 
_userManager 
= 
null 
;  
} 	
public   
IActionResult   
Index   "
(  " #
)  # $
{!! 	
CheckIfUserLoggedIn"" 
(""  
)""  !
;""! "
return## 
View## 
(## 
)## 
;## 
}$$ 	
public&& 
IActionResult&& 
Deals&& "
(&&" #
)&&# $
{'' 	
CheckIfUserLoggedIn(( 
(((  
)((  !
;((! "
return)) 
View)) 
()) 
))) 
;)) 
}** 	
[++ 	
HttpGet++	 
]++ 
public,, 
async,, 
Task,, 
<,, 
IActionResult,, '
>,,' (
CustomPizza,,) 4
(,,4 5
),,5 6
{-- 	
var.. 
Username.. 
=.. 
User.. 
...  
Identity..  (
...( )
Name..) -
;..- .
var// 
ApiResponse// 
=// 

Orderlogic// (
.//( )
GetPizzaOrder//) 6
(//6 7
Username//7 ?
,//? @
null//A E
)//E F
;//F G
if11 
(11 
ApiResponse11 
is11 
	Exception11 (
)11( )
{22 
return33 
View33 
(33 
$str33 5
,335 6
ApiResponse337 B
)33B C
;33C D
}44 
else55 
{66 
return77 
View77 
(77 
ApiResponse77 (
)77( )
;77) *
}88 
}:: 	
[;; 	
HttpPost;;	 
];; 
public<< 
async<< 
Task<< 
<<< 
IActionResult<< '
><<' (
CustomPizza<<) 4
(<<4 5
OrderDetail<<5 @
model<<A F
)<<F G
{== 	
CheckIfUserLoggedIn>> 
(>>  
)>>  !
;>>! "
var?? 
SecFormGrab?? 
=?? 

Orderlogic?? (
.??( )
GetSecretFormula??) 9
(??9 :
)??: ;
;??; <
if@@ 
(@@ 
SecFormGrab@@ 
is@@ 
	Exception@@ (
)@@( )
{AA 
returnBB 
ViewBB 
(BB 
$strBB 5
,BB5 6
SecFormGrabBB7 B
)BBB C
;BBC D
}CC 
modelDD 
.DD 
PriceDD 
=DD 
modelDD 
.DD  
PriceDD  %
+DD& '
(DD( )
modelDD) .
.DD. /
ToppingsCountDD/ <
*DD= >
(DD? @
decimalDD@ G
)DDG H
SecFormGrabDDH S
)DDS T
;DDT U
ifGG 
(GG 

ModelStateGG 
.GG 
IsValidGG "
)GG" #
{HH 
varJJ 
ApiResponseJJ 
=JJ  !

OrderlogicJJ" ,
.JJ, -
PostPizzaOrderJJ- ;
(JJ; <
modelJJ< A
)JJA B
;JJB C
ifLL 
(LL 
ApiResponseLL #
isLL$ &
	ExceptionLL' 0
)LL0 1
{MM 
returnNN 
ViewNN #
(NN# $
$strNN$ =
,NN= >
ApiResponseNN? J
)NNJ K
;NNK L
}OO 
elsePP 
{QQ 
returnRR 
ViewRR #
(RR# $
$strRR$ A
,RRA B
ApiResponseRRC N
)RRN O
;RRO P
}SS 
}TT 
returnUU 
ViewUU 
(UU 
$strUU 9
,UU9 :
modelUU; @
)UU@ A
;UUA B
}VV 	
publicWW 
IActionResultWW 
MenuWW !
(WW! "
)WW" #
{XX 	
CheckIfUserLoggedInYY 
(YY  
)YY  !
;YY! "
returnZZ 
ViewZZ 
(ZZ 
)ZZ 
;ZZ 
}[[ 	
public\\ 
IActionResult\\ 
Privacy\\ $
(\\$ %
)\\% &
{]] 	
CheckIfUserLoggedIn^^ 
(^^  
)^^  !
;^^! "
return__ 
View__ 
(__ 
)__ 
;__ 
}`` 	
[bb 	
ResponseCachebb	 
(bb 
Durationbb 
=bb  !
$numbb" #
,bb# $
Locationbb% -
=bb. /!
ResponseCacheLocationbb0 E
.bbE F
NonebbF J
,bbJ K
NoStorebbL S
=bbT U
truebbV Z
)bbZ [
]bb[ \
publiccc 
IActionResultcc 
Errorcc "
(cc" #
)cc# $
{dd 	
returnee 
Viewee 
(ee 
newee 
ErrorViewModelee *
{ee+ ,
	RequestIdee- 6
=ee7 8
Activityee9 A
.eeA B
CurrenteeB I
?eeI J
.eeJ K
IdeeK M
??eeN P
HttpContexteeQ \
.ee\ ]
TraceIdentifieree] l
}eem n
)een o
;eeo p
}ff 	
privatehh 
voidhh 
CheckIfUserLoggedInhh (
(hh( )
)hh) *
{ii 	
ifjj 
(jj 
_userManagerjj 
!=jj 
nulljj  $
)jj$ %
{kk 
ifll 
(ll 
Userll 
.ll 
Identityll !
.ll! "
IsAuthenticatedll" 1
)ll1 2
{mm 
ifnn 
(nn 
Requestnn 
.nn  
Cookiesnn  '
.nn' (
ContainsKeynn( 3
(nn3 4
$strnn4 =
)nn= >
)nn> ?
{oo 
stringrr 
guestIDrr &
=rr' (
Requestrr) 0
.rr0 1
Cookiesrr1 8
[rr8 9
$strrr9 B
]rrB C
;rrC D
Responsess  
.ss  !
Cookiesss! (
.ss( )
Deletess) /
(ss/ 0
$strss0 9
)ss9 :
;ss: ;
Responsett  
.tt  !
Cookiestt! (
.tt( )
Deletett) /
(tt/ 0
$strtt0 ;
)tt; <
;tt< =
stringww 
SPSww "
=ww# $
_userManagerww% 1
.ww1 2
GetUserNameww2 =
(ww= >
Userww> B
)wwB C
;wwC D
intxx 
userIDxx "
=xx# $
$numxx% &
;xx& '
tryzz 
{{{ 

HttpClient}} &
customerAPI}}' 2
=}}3 4
new}}5 8

HttpClient}}9 C
(}}C D
)}}D E
;}}E F
customerAPI~~ '
.~~' (!
DefaultRequestHeaders~~( =
.~~= >
Accept~~> D
.~~D E
Clear~~E J
(~~J K
)~~K L
;~~L M
customerAPI '
.' (!
DefaultRequestHeaders( =
.= >
Accept> D
.D E
AddE H
(H I
new
ÄÄ  #-
MediaTypeWithQualityHeaderValue
ÄÄ$ C
(
ÄÄC D
$str
ÄÄD V
)
ÄÄV W
)
ÄÄW X
;
ÄÄX Y
string
ÇÇ "
api
ÇÇ# &
=
ÇÇ' (
$str
ÇÇ) C
;
ÇÇC D
var
ÑÑ  
customerStringTask
ÑÑ  2
=
ÑÑ3 4
customerAPI
ÑÑ5 @
.
ÑÑ@ A
GetStringAsync
ÑÑA O
(
ÑÑO P
_url
ÑÑP T
+
ÑÑU V
api
ÑÑW Z
+
ÑÑ[ \
guestID
ÑÑ] d
)
ÑÑd e
;
ÑÑe f 
customerStringTask
ÖÖ .
.
ÖÖ. /
Wait
ÖÖ/ 3
(
ÖÖ3 4
)
ÖÖ4 5
;
ÖÖ5 6
var
ÜÜ  
customerHttpResult
ÜÜ  2
=
ÜÜ3 4 
customerStringTask
ÜÜ5 G
.
ÜÜG H
Result
ÜÜH N
;
ÜÜN O
var
áá 
currentCustomer
áá  /
=
áá0 1
JsonConvert
áá2 =
.
áá= >
DeserializeObject
áá> O
<
ááO P
Customer
ááP X
>
ááX Y
(
ááY Z 
customerHttpResult
ááZ l
)
áál m
;
áám n
userID
àà "
=
àà# $
currentCustomer
àà% 4
.
àà4 5
Id
àà5 7
;
àà7 8

HttpClient
ãã &
orderAPI
ãã' /
=
ãã0 1
new
ãã2 5

HttpClient
ãã6 @
(
ãã@ A
)
ããA B
;
ããB C
orderAPI
åå $
.
åå$ %#
DefaultRequestHeaders
åå% :
.
åå: ;
Accept
åå; A
.
ååA B
Clear
ååB G
(
ååG H
)
ååH I
;
ååI J
orderAPI
çç $
.
çç$ %#
DefaultRequestHeaders
çç% :
.
çç: ;
Accept
çç; A
.
ççA B
Add
ççB E
(
ççE F
new
éé  #-
MediaTypeWithQualityHeaderValue
éé$ C
(
ééC D
$str
ééD V
)
ééV W
)
ééW X
;
ééX Y
api
êê 
=
êê  !
$str
êê" 9
;
êê9 :
var
íí 

stringTask
íí  *
=
íí+ ,
orderAPI
íí- 5
.
íí5 6
GetStringAsync
íí6 D
(
ííD E
_url
ííE I
+
ííJ K
api
ííL O
+
ííP Q
guestID
ííR Y
)
ííY Z
;
ííZ [

stringTask
ìì &
.
ìì& '
Wait
ìì' +
(
ìì+ ,
)
ìì, -
;
ìì- .
var
îî 

httpResult
îî  *
=
îî+ ,

stringTask
îî- 7
.
îî7 8
Result
îî8 >
;
îî> ?
var
ïï 
currentOrder
ïï  ,
=
ïï- .
JsonConvert
ïï/ :
.
ïï: ;
DeserializeObject
ïï; L
<
ïïL M
Orders
ïïM S
>
ïïS T
(
ïïT U

httpResult
ïïU _
)
ïï_ `
;
ïï` a
currentOrder
òò (
.
òò( )

CustomerId
òò) 3
=
òò4 5
userID
òò6 <
;
òò< =
orderAPI
õõ $
=
õõ% &
new
õõ' *

HttpClient
õõ+ 5
(
õõ5 6
)
õõ6 7
;
õõ7 8
orderAPI
úú $
.
úú$ %#
DefaultRequestHeaders
úú% :
.
úú: ;
Accept
úú; A
.
úúA B
Clear
úúB G
(
úúG H
)
úúH I
;
úúI J
orderAPI
ùù $
.
ùù$ %#
DefaultRequestHeaders
ùù% :
.
ùù: ;
Accept
ùù; A
.
ùùA B
Add
ùùB E
(
ùùE F
new
ûû  #-
MediaTypeWithQualityHeaderValue
ûû$ C
(
ûûC D
$str
ûûD V
)
ûûV W
)
ûûW X
;
ûûX Y
api
†† 
=
††  !
$str
††" 2
;
††2 3
var
°° 
newData
°°  '
=
°°( )
JsonConvert
°°* 5
.
°°5 6
SerializeObject
°°6 E
(
°°E F
currentOrder
°°F R
)
°°R S
;
°°S T
var
¢¢ 

newContent
¢¢  *
=
¢¢+ ,
new
¢¢- 0
StringContent
¢¢1 >
(
¢¢> ?
newData
¢¢? F
,
¢¢F G
Encoding
¢¢H P
.
¢¢P Q
UTF8
¢¢Q U
,
¢¢U V
$str
¢¢W i
)
¢¢i j
;
¢¢j k
orderAPI
§§ $
.
§§$ %
PutAsync
§§% -
(
§§- .
_url
§§. 2
+
§§3 4
api
§§5 8
+
§§9 :
guestID
§§; B
,
§§B C

newContent
§§D N
)
§§N O
;
§§O P
}
•• 
catch
¶¶ 
(
¶¶ 
	Exception
¶¶ (
WTF
¶¶) ,
)
¶¶, -
{
ßß 
Console
©© #
.
©©# $
	WriteLine
©©$ -
(
©©- .
WTF
©©. 1
)
©©1 2
;
©©2 3
}
™™ 
}
´´ 
}
¨¨ 
else
≠≠ 
{
ÆÆ 
if
∞∞ 
(
∞∞ 
Request
∞∞ 
.
∞∞  
Cookies
∞∞  '
.
∞∞' (
ContainsKey
∞∞( 3
(
∞∞3 4
$str
∞∞4 ?
)
∞∞? @
)
∞∞@ A
{
±± 
}
≥≥ 
else
¥¥ 
{
µµ 
var
∑∑ 
inte
∑∑  
=
∑∑! "
_userManager
∑∑# /
.
∑∑/ 0
Users
∑∑0 5
.
∑∑5 6
Where
∑∑6 ;
(
∑∑; <
u
∑∑< =
=>
∑∑> @
u
∑∑A B
.
∑∑B C
UserName
∑∑C K
.
∑∑K L

StartsWith
∑∑L V
(
∑∑V W
$str
∑∑W ^
)
∑∑^ _
)
∑∑_ `
.
∑∑` a
Count
∑∑a f
(
∑∑f g
)
∑∑g h
;
∑∑h i
IdentityUser
∫∫ $
z
∫∫% &
=
∫∫' (
new
∫∫) ,
IdentityUser
∫∫- 9
(
∫∫9 :
string
∫∫: @
.
∫∫@ A
Format
∫∫A G
(
∫∫G H
$str
∫∫H R
,
∫∫R S
inte
∫∫T X
.
∫∫X Y
ToString
∫∫Y a
(
∫∫a b
)
∫∫b c
)
∫∫c d
)
∫∫d e
;
∫∫e f
var
ªª 
query
ªª !
=
ªª" #
_userManager
ªª$ 0
.
ªª0 1
CreateAsync
ªª1 <
(
ªª< =
z
ªª= >
,
ªª> ?
$str
ªª@ L
)
ªªL M
;
ªªM N
query
ºº 
.
ºº 
Wait
ºº "
(
ºº" #
)
ºº# $
;
ºº$ %
var
ΩΩ 
qResult
ΩΩ #
=
ΩΩ$ %
query
ΩΩ& +
.
ΩΩ+ ,
Result
ΩΩ, 2
;
ΩΩ2 3
if
ææ 
(
ææ 
qResult
ææ #
.
ææ# $
	Succeeded
ææ$ -
)
ææ- .
{
øø 
Response
¡¡ $
.
¡¡$ %
Cookies
¡¡% ,
.
¡¡, -
Append
¡¡- 3
(
¡¡3 4
$str
¡¡4 ?
,
¡¡? @
z
¡¡A B
.
¡¡B C
UserName
¡¡C K
)
¡¡K L
;
¡¡L M
Customer
ƒƒ $
guestCustomer
ƒƒ% 2
=
ƒƒ3 4
new
ƒƒ5 8
Customer
ƒƒ9 A
(
ƒƒA B
)
ƒƒB C
{
≈≈ 
Id
∆∆  "
=
∆∆# $
$num
∆∆% &
,
∆∆& '
Name
««  $
=
««% &
string
««' -
.
««- .
Format
««. 4
(
««4 5
$str
««5 ?
,
««? @
inte
««A E
.
««E F
ToString
««F N
(
««N O
)
««O P
)
««P Q
,
««Q R
UserName
»»  (
=
»») *
string
»»+ 1
.
»»1 2
Format
»»2 8
(
»»8 9
$str
»»9 C
,
»»C D
inte
»»E I
.
»»I J
ToString
»»J R
(
»»R S
)
»»S T
)
»»T U
,
»»U V
StateID
……  '
=
……( )
$num
……* +
,
……+ ,
ZipCode
    '
=
  ( )
$num
  * /
,
  / 0
}
ÀÀ 
;
ÀÀ 

HttpClient
ŒŒ &
newGuestRequest
ŒŒ' 6
=
ŒŒ7 8
new
ŒŒ9 <

HttpClient
ŒŒ= G
(
ŒŒG H
)
ŒŒH I
;
ŒŒI J
newGuestRequest
œœ +
.
œœ+ ,#
DefaultRequestHeaders
œœ, A
.
œœA B
Accept
œœB H
.
œœH I
Clear
œœI N
(
œœN O
)
œœO P
;
œœP Q
newGuestRequest
–– +
.
––+ ,#
DefaultRequestHeaders
––, A
.
––A B
Accept
––B H
.
––H I
Add
––I L
(
––L M
new
––M P-
MediaTypeWithQualityHeaderValue
––Q p
(
––p q
$str––q É
)––É Ñ
)––Ñ Ö
;––Ö Ü
string
‘‘ "
api
‘‘# &
=
‘‘' (
$str
‘‘) ;
;
‘‘; <
var
◊◊ 
newData
◊◊  '
=
◊◊( )
JsonConvert
◊◊* 5
.
◊◊5 6
SerializeObject
◊◊6 E
(
◊◊E F
guestCustomer
◊◊F S
)
◊◊S T
;
◊◊T U
var
ÿÿ 

newContent
ÿÿ  *
=
ÿÿ+ ,
new
ÿÿ- 0
StringContent
ÿÿ1 >
(
ÿÿ> ?
newData
ÿÿ? F
,
ÿÿF G
Encoding
ÿÿH P
.
ÿÿP Q
UTF8
ÿÿQ U
,
ÿÿU V
$str
ÿÿW i
)
ÿÿi j
;
ÿÿj k
var
ŸŸ 
response
ŸŸ  (
=
ŸŸ) *
newGuestRequest
ŸŸ+ :
.
ŸŸ: ;
	PostAsync
ŸŸ; D
(
ŸŸD E
_url
ŸŸE I
+
ŸŸJ K
api
ŸŸL O
,
ŸŸO P

newContent
ŸŸQ [
)
ŸŸ[ \
;
ŸŸ\ ]
response
⁄⁄ $
.
⁄⁄$ %
Wait
⁄⁄% )
(
⁄⁄) *
)
⁄⁄* +
;
⁄⁄+ ,
var
€€ 

httpResult
€€  *
=
€€+ ,
response
€€- 5
.
€€5 6
Result
€€6 <
;
€€< =
var
‹‹ 
newID
‹‹  %
=
‹‹& '

httpResult
‹‹( 2
.
‹‹2 3
Headers
‹‹3 :
.
‹‹: ;
Location
‹‹; C
.
‹‹C D
ToString
‹‹D L
(
‹‹L M
)
‹‹M N
.
‹‹N O
	Substring
‹‹O X
(
‹‹X Y

httpResult
‹‹Y c
.
‹‹c d
Headers
‹‹d k
.
‹‹k l
Location
‹‹l t
.
‹‹t u
ToString
‹‹u }
(
‹‹} ~
)
‹‹~ 
.‹‹ Ä
LastIndexOf‹‹Ä ã
(‹‹ã å
$char‹‹å è
)‹‹è ê
+‹‹ë í
$num‹‹ì î
)‹‹î ï
;‹‹ï ñ
Response
ﬂﬂ $
.
ﬂﬂ$ %
Cookies
ﬂﬂ% ,
.
ﬂﬂ, -
Append
ﬂﬂ- 3
(
ﬂﬂ3 4
$str
ﬂﬂ4 =
,
ﬂﬂ= >
newID
ﬂﬂ? D
)
ﬂﬂD E
;
ﬂﬂE F
}
‡‡ 
}
·· 
}
‚‚ 
}
„„ 
}
‰‰ 	
}
ÂÂ 
}ÊÊ «5
tC:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Controllers\OrderDetailsApiController.cs
	namespace		 	
ChajdPizzaWebApp		
 
.		 
Controllers		 &
{

 
[ 

EnableCors 
] 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class %
OrderDetailsApiController *
:+ ,
ControllerBase- ;
{ 
private 
readonly 
IOrderDetailsRepo *
_repo+ 0
;0 1
public %
OrderDetailsApiController (
(( )
IOrderDetailsRepo) :
repo; ?
)? @
{ 	
_repo 
= 
repo 
; 
} 	
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
ActionResult &
<& '
IEnumerable' 2
<2 3
OrderDetail3 >
>> ?
>? @
>@ A
GetOrderDetailsB Q
(Q R
)R S
{ 	
return 
await 
_repo 
. 
	SelectAll (
(( )
)) *
;* +
} 	
[ 	
HttpGet	 
( 
$str 
) 
] 
public   
async   
Task   
<   
ActionResult   &
<  & '
OrderDetail  ' 2
>  2 3
>  3 4
GetOrderDetail  5 C
(  C D
int  D G
id  H J
)  J K
{!! 	
var"" 
orderDetail"" 
="" 
await"" #
_repo""$ )
."") *

SelectById""* 4
(""4 5
id""5 7
)""7 8
;""8 9
if$$ 
($$ 
orderDetail$$ 
==$$ 
null$$ #
)$$# $
{%% 
return&& 
NotFound&& 
(&&  
)&&  !
;&&! "
}'' 
return)) 
orderDetail)) 
;)) 
}** 	
[,, 	
HttpGet,,	 
(,, 
$str,, +
),,+ ,
],,, -
public.. 
async.. 
Task.. 
<.. 
ActionResult.. &
<..& '
List..' +
<..+ ,
OrderDetail.., 7
>..7 8
>..8 9
>..9 :
GetDetailsOfAnOrder..; N
(..N O
int..O R
orderId..S Z
)..Z [
{// 	
var00 
orderDetails00 
=00 
await00 $
_repo00% *
.00* +!
SelectOrderAllDetails00+ @
(00@ A
orderId00A H
)00H I
;00I J
if11 
(11 
orderDetails11 
==11 
null11  $
)11$ %
{22 
return33 
NotFound33 
(33  
)33  !
;33! "
}44 
return55 
orderDetails55 
;55  
}66 	
[;; 	
HttpPut;;	 
(;; 
$str;; 
);; 
];; 
public<< 
async<< 
Task<< 
<<< 
IActionResult<< '
><<' (
PutOrderDetail<<) 7
(<<7 8
int<<8 ;
id<<< >
,<<> ?
[<<@ A
Bind<<A E
(<<E F
$str<<F Q
)<<Q R
]<<R S
OrderDetail<<T _
orderDetail<<` k
)<<k l
{== 	
if>> 
(>> 
id>> 
!=>> 
orderDetail>> !
.>>! "
Id>>" $
)>>$ %
{?? 
return@@ 

BadRequest@@ !
(@@! "
)@@" #
;@@# $
}AA 
tryDD 
{EE 
awaitFF 
_repoFF 
.FF 
UpdateFF "
(FF" #
orderDetailFF# .
)FF. /
;FF/ 0
}GG 
catchHH 
(HH (
DbUpdateConcurrencyExceptionHH /
)HH/ 0
{II 
ifJJ 
(JJ 
!JJ 
OrderDetailExistsJJ &
(JJ& '
idJJ' )
)JJ) *
)JJ* +
{KK 
returnLL 
NotFoundLL #
(LL# $
)LL$ %
;LL% &
}MM 
elseNN 
{OO 
throwPP 
;PP 
}QQ 
}RR 
returnTT 
	NoContentTT 
(TT 
)TT 
;TT 
}UU 	
[ZZ 	
HttpPostZZ	 
]ZZ 
public[[ 
async[[ 
Task[[ 
<[[ 
ActionResult[[ &
<[[& '
OrderDetail[[' 2
>[[2 3
>[[3 4
PostOrderDetail[[5 D
([[D E
OrderDetail[[E P
orderDetail[[Q \
)[[\ ]
{\\ 	
await]] 
_repo]] 
.]] 
Add]] 
(]] 
orderDetail]] '
)]]' (
;]]( )
return`` 
CreatedAtAction`` "
(``" #
$str``# 3
,``3 4
new``5 8
{``9 :
id``; =
=``> ?
orderDetail``@ K
.``K L
Id``L N
}``O P
,``P Q
orderDetail``R ]
)``] ^
;``^ _
}aa 	
[dd 	

HttpDeletedd	 
(dd 
$strdd 
)dd 
]dd 
publicee 
asyncee 
Taskee 
<ee 
ActionResultee &
<ee& '
OrderDetailee' 2
>ee2 3
>ee3 4
DeleteOrderDetailee5 F
(eeF G
inteeG J
ideeK M
)eeM N
{ff 	
vargg 
orderDetailgg 
=gg 
awaitgg #
_repogg$ )
.gg) *

SelectByIdgg* 4
(gg4 5
idgg5 7
)gg7 8
;gg8 9
ifhh 
(hh 
orderDetailhh 
==hh 
nullhh #
)hh# $
{ii 
returnjj 
NotFoundjj 
(jj  
)jj  !
;jj! "
}kk 
awaitmm 
_repomm 
.mm 
Removemm 
(mm 
orderDetailmm *
)mm* +
;mm+ ,
returnoo 
orderDetailoo 
;oo 
}pp 	
privaterr 
boolrr 
OrderDetailExistsrr &
(rr& '
intrr' *
idrr+ -
)rr- .
{ss 	
returntt 
_repott 
.tt 
OrderDetailExiststt *
(tt* +
idtt+ -
)tt- .
;tt. /
}uu 	
}vv 
}ww £v
qC:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Controllers\OrderDetailsController.cs
	namespace 	
ChajdPizzaWebApp
 
. 
Controllers &
{ 
public 

class "
OrderDetailsController '
:( )

Controller* 4
{ 
private 
readonly 
IOrderDetailsRepo *
_repo+ 0
;0 1
public "
OrderDetailsController %
(% &
IOrderDetailsRepo& 7
repo8 <
)< =
{ 	
_repo 
= 
repo 
; 
} 	
public 
async 
Task 
< 
IActionResult '
>' (
Index) .
(. /
)/ 0
{ 	
var 
orderDetails 
= 
await $
_repo% *
.* +
	SelectAll+ 4
(4 5
)5 6
;6 7
return 
View 
( 
orderDetails $
)$ %
;% &
} 	
public 
async 
Task 
< 
IActionResult '
>' (
Details) 0
(0 1
int1 4
?4 5
id6 8
)8 9
{ 	
if   
(   
id   
==   
null   
)   
{!! 
return"" 
NotFound"" 
(""  
)""  !
;""! "
}## 
var%% 
orderDetail%% 
=%% 
await%% #
_repo%%$ )
.%%) *!
SelectOrderAllDetails%%* ?
(%%? @
id%%@ B
)%%B C
;%%C D
if&& 
(&& 
orderDetail&& 
==&& 
null&& #
)&&# $
{'' 
return(( 
NotFound(( 
(((  
)((  !
;((! "
})) 
return++ 
View++ 
(++ 
orderDetail++ #
)++# $
;++$ %
},, 	
public// 
async// 
Task// 
<// 
IActionResult// '
>//' (
DetailsOfOrder//) 7
(//7 8
)//8 9
{00 	
string22 
	returnUrl22 
=22 
Url22 "
.22" #
Content22# *
(22* +
$str22+ /
)22/ 0
;220 1
if33 
(33 
User33 
.33 
Identity33 
.33 
Name33 "
!=33# %
null33& *
)33* +
{44 
ViewBag55 
.55 
OrderId55 
=55  !
await55" '
ReturnOrderId55( 5
(555 6
User556 :
.55: ;
Identity55; C
.55C D
Name55D H
)55H I
;55I J
return66 
View66 
(66 
)66 
;66 
}88 
else99 
if99 
(99 
Request99 
.99 
Cookies99 $
.99$ %
ContainsKey99% 0
(990 1
$str991 <
)99< =
)99= >
{:: 
string;; 
	guestName;;  
=;;! "
Request;;# *
.;;* +
Cookies;;+ 2
[;;2 3
$str;;3 >
];;> ?
;;;? @
ViewBag<< 
.<< 
OrderId<< 
=<<  !
await<<" '
ReturnOrderId<<( 5
(<<5 6
	guestName<<6 ?
)<<? @
;<<@ A
return== 
View== 
(== 
)== 
;== 
}>> 
else?? 
{@@ 
returnAA 
LocalRedirectAA $
(AA$ %
	returnUrlAA% .
)AA. /
;AA/ 0
}BB 
}CC 	
privateEE 
asyncEE 
TaskEE 
<EE 
intEE 
>EE 
ReturnOrderIdEE  -
(EE- .
stringEE. 4
usernameEE5 =
)EE= >
{FF 	
CustomerGG 
customerGG 
=GG 
newGG  #
CustomerGG$ ,
(GG, -
)GG- .
;GG. /
OrdersHH 
orderHH 
=HH 
newHH 
OrdersHH %
(HH% &
)HH& '
;HH' (
usingJJ 
(JJ 
varJJ 
clientJJ 
=JJ 
newJJ  #

HttpClientJJ$ .
(JJ. /
)JJ/ 0
)JJ0 1
{KK 
clientLL 
.LL 
BaseAddressLL "
=LL# $
newLL% (
UriLL) ,
(LL, -
$strLL- X
)LLX Y
;LLY Z
clientNN 
.NN !
DefaultRequestHeadersNN ,
.NN, -
ClearNN- 2
(NN2 3
)NN3 4
;NN4 5
clientOO 
.OO !
DefaultRequestHeadersOO ,
.OO, -
AcceptOO- 3
.OO3 4
AddOO4 7
(PP 
newPP +
MediaTypeWithQualityHeaderValuePP 8
(PP8 9
$strPP9 K
)PPK L
)PPL M
;PPM N
HttpResponseMessageQQ #
customerInfoQQ$ 0
=QQ1 2
awaitQQ3 8
clientQQ9 ?
.QQ? @
GetAsyncQQ@ H
(QQH I
$strQQI _
+QQ` a
usernameQQb j
)QQj k
;QQk l
ifRR 
(RR 
customerInfoRR  
.RR  !
IsSuccessStatusCodeRR! 4
)RR4 5
{SS 
varTT 
customerResTT #
=TT$ %
customerInfoTT& 2
.TT2 3
ContentTT3 :
.TT: ;
ReadAsStringAsyncTT; L
(TTL M
)TTM N
.TTN O
ResultTTO U
;TTU V
customerVV 
=VV 
JsonConvertVV *
.VV* +
DeserializeObjectVV+ <
<VV< =
CustomerVV= E
>VVE F
(VVF G
customerResVVG R
)VVR S
;VVS T
}WW 
elseXX 
ifXX 
(XX 
!XX 
customerInfoXX &
.XX& '
IsSuccessStatusCodeXX' :
)XX: ;
{XX< =
returnXX> D
$numXXE F
;XXF G
}XXH I
varYY 
custIdYY 
=YY 
customerYY %
.YY% &
IdYY& (
;YY( )
client[[ 
.[[ !
DefaultRequestHeaders[[ ,
.[[, -
Clear[[- 2
([[2 3
)[[3 4
;[[4 5
client\\ 
.\\ !
DefaultRequestHeaders\\ ,
.\\, -
Accept\\- 3
.\\3 4
Add\\4 7
(]] 
new]] +
MediaTypeWithQualityHeaderValue]] 8
(]]8 9
$str]]9 K
)]]K L
)]]L M
;]]M N
HttpResponseMessage^^ '
	orderInfo^^( 1
=^^2 3
await^^4 9
client^^: @
.^^@ A
GetAsync^^A I
(^^I J
$str^^J ]
+^^^ _
custId^^` f
)^^f g
;^^g h
if__ 
(__ 
	orderInfo__ 
.__ 
IsSuccessStatusCode__ 0
)__0 1
{`` 
varaa 
orderResaa  
=aa! "
	orderInfoaa# ,
.aa, -
Contentaa- 4
.aa4 5
ReadAsStringAsyncaa5 F
(aaF G
)aaG H
.aaH I
ResultaaI O
;aaO P
orderbb 
=bb 
JsonConvertbb '
.bb' (
DeserializeObjectbb( 9
<bb9 :
Ordersbb: @
>bb@ A
(bbA B
orderResbbB J
)bbJ K
;bbK L
}cc 
elsedd 
ifdd 
(dd 
!dd 
	orderInfodd #
.dd# $
IsSuccessStatusCodedd$ 7
)dd7 8
{dd9 :
returndd; A
$numddB C
;ddC D
}ddE F
intff 
orderIdff 
=ff 
orderff #
.ff# $
Idff$ &
;ff& '
returnhh 
orderIdhh 
;hh 
}ii 
}kk 	
publicnn 
IActionResultnn 
Createnn #
(nn# $
)nn$ %
{oo 	
returnuu 
Viewuu 
(uu 
)uu 
;uu 
}vv 	
[{{ 	
HttpPost{{	 
]{{ 
[|| 	$
ValidateAntiForgeryToken||	 !
]||! "
public}} 
async}} 
Task}} 
<}} 
IActionResult}} '
>}}' (
Create}}) /
(}}/ 0
[}}0 1
Bind}}1 5
(}}5 6
$str}}6 ~
)}}~ 
]	}} Ä
OrderDetail
}}Å å
orderDetail
}}ç ò
)
}}ò ô
{~~ 	
if 
( 

ModelState 
. 
IsValid "
)" #
{
ÄÄ 
await
ÅÅ 
_repo
ÅÅ 
.
ÅÅ 
Add
ÅÅ 
(
ÅÅ  
orderDetail
ÅÅ  +
)
ÅÅ+ ,
;
ÅÅ, -
return
ÉÉ 
RedirectToAction
ÉÉ '
(
ÉÉ' (
nameof
ÉÉ( .
(
ÉÉ. /
Index
ÉÉ/ 4
)
ÉÉ4 5
)
ÉÉ5 6
;
ÉÉ6 7
}
ÑÑ 
return
áá 
View
áá 
(
áá 
orderDetail
áá #
)
áá# $
;
áá$ %
}
àà 	
public
ãã 
async
ãã 
Task
ãã 
<
ãã 
IActionResult
ãã '
>
ãã' (
Edit
ãã) -
(
ãã- .
int
ãã. 1
?
ãã1 2
id
ãã3 5
)
ãã5 6
{
åå 	
if
çç 
(
çç 
id
çç 
==
çç 
null
çç 
)
çç 
{
éé 
return
èè 
NotFound
èè 
(
èè  
)
èè  !
;
èè! "
}
êê 
var
íí 
orderDetail
íí 
=
íí 
await
íí #
_repo
íí$ )
.
íí) *

SelectById
íí* 4
(
íí4 5
id
íí5 7
)
íí7 8
;
íí8 9
if
ìì 
(
ìì 
orderDetail
ìì 
==
ìì 
null
ìì #
)
ìì# $
{
îî 
return
ïï 
NotFound
ïï 
(
ïï  
)
ïï  !
;
ïï! "
}
ññ 
return
ôô 
View
ôô 
(
ôô 
orderDetail
ôô #
)
ôô# $
;
ôô$ %
}
öö 	
[
üü 	
HttpPost
üü	 
]
üü 
[
†† 	&
ValidateAntiForgeryToken
††	 !
]
††! "
public
°° 
async
°° 
Task
°° 
<
°° 
IActionResult
°° '
>
°°' (
Edit
°°) -
(
°°- .
int
°°. 1
id
°°2 4
,
°°4 5
[
°°6 7
Bind
°°7 ;
(
°°; <
$str°°< Ñ
)°°Ñ Ö
]°°Ö Ü
OrderDetail°°á í
orderDetail°°ì û
)°°û ü
{
¢¢ 	
if
££ 
(
££ 
id
££ 
!=
££ 
orderDetail
££ !
.
££! "
Id
££" $
)
££$ %
{
§§ 
return
•• 
NotFound
•• 
(
••  
)
••  !
;
••! "
}
¶¶ 
if
®® 
(
®® 

ModelState
®® 
.
®® 
IsValid
®® "
)
®®" #
{
©© 
try
™™ 
{
´´ 
await
¨¨ 
_repo
¨¨ 
.
¨¨  
Update
¨¨  &
(
¨¨& '
orderDetail
¨¨' 2
)
¨¨2 3
;
¨¨3 4
}
ÆÆ 
catch
ØØ 
(
ØØ *
DbUpdateConcurrencyException
ØØ 3
)
ØØ3 4
{
∞∞ 
if
±± 
(
±± 
!
±± 
OrderDetailExists
±± *
(
±±* +
orderDetail
±±+ 6
.
±±6 7
Id
±±7 9
)
±±9 :
)
±±: ;
{
≤≤ 
return
≥≥ 
NotFound
≥≥ '
(
≥≥' (
)
≥≥( )
;
≥≥) *
}
¥¥ 
else
µµ 
{
∂∂ 
throw
∑∑ 
;
∑∑ 
}
∏∏ 
}
ππ 
return
∫∫ 
RedirectToAction
∫∫ '
(
∫∫' (
nameof
∫∫( .
(
∫∫. /
Index
∫∫/ 4
)
∫∫4 5
)
∫∫5 6
;
∫∫6 7
}
ªª 
return
ææ 
View
ææ 
(
ææ 
orderDetail
ææ #
)
ææ# $
;
ææ$ %
}
øø 	
public
¬¬ 
async
¬¬ 
Task
¬¬ 
<
¬¬ 
IActionResult
¬¬ '
>
¬¬' (
Delete
¬¬) /
(
¬¬/ 0
int
¬¬0 3
?
¬¬3 4
id
¬¬5 7
)
¬¬7 8
{
√√ 	
if
ƒƒ 
(
ƒƒ 
id
ƒƒ 
==
ƒƒ 
null
ƒƒ 
)
ƒƒ 
{
≈≈ 
return
∆∆ 
NotFound
∆∆ 
(
∆∆  
)
∆∆  !
;
∆∆! "
}
«« 
var
»» 
orderDetail
»» 
=
»» 
await
»» #
_repo
»»$ )
.
»») *

SelectById
»»* 4
(
»»4 5
id
»»5 7
)
»»7 8
;
»»8 9
if
…… 
(
…… 
orderDetail
…… 
==
…… 
null
…… #
)
……# $
{
   
return
ÀÀ 
NotFound
ÀÀ 
(
ÀÀ  
)
ÀÀ  !
;
ÀÀ! "
}
ÃÃ 
return
ŒŒ 
View
ŒŒ 
(
ŒŒ 
orderDetail
ŒŒ #
)
ŒŒ# $
;
ŒŒ$ %
}
œœ 	
[
““ 	
HttpPost
““	 
,
““ 

ActionName
““ 
(
““ 
$str
““ &
)
““& '
]
““' (
[
”” 	&
ValidateAntiForgeryToken
””	 !
]
””! "
public
‘‘ 
async
‘‘ 
Task
‘‘ 
<
‘‘ 
IActionResult
‘‘ '
>
‘‘' (
DeleteConfirmed
‘‘) 8
(
‘‘8 9
int
‘‘9 <
id
‘‘= ?
)
‘‘? @
{
’’ 	
var
÷÷ 
orderDetail
÷÷ 
=
÷÷ 
await
÷÷ #
_repo
÷÷$ )
.
÷÷) *

SelectById
÷÷* 4
(
÷÷4 5
id
÷÷5 7
)
÷÷7 8
;
÷÷8 9
await
◊◊ 
_repo
◊◊ 
.
◊◊ 
Remove
◊◊ 
(
◊◊ 
orderDetail
◊◊ *
)
◊◊* +
;
◊◊+ ,
return
ŸŸ 
RedirectToAction
ŸŸ #
(
ŸŸ# $
nameof
ŸŸ$ *
(
ŸŸ* +
Index
ŸŸ+ 0
)
ŸŸ0 1
)
ŸŸ1 2
;
ŸŸ2 3
}
⁄⁄ 	
private
‹‹ 
bool
‹‹ 
OrderDetailExists
‹‹ &
(
‹‹& '
int
‹‹' *
id
‹‹+ -
)
‹‹- .
{
›› 	
return
ﬁﬁ 
_repo
ﬁﬁ 
.
ﬁﬁ 
OrderDetailExists
ﬁﬁ *
(
ﬁﬁ* +
id
ﬁﬁ+ -
)
ﬁﬁ- .
;
ﬁﬁ. /
}
ﬂﬂ 	
}
‡‡ 
}·· ß=
nC:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Controllers\OrdersApiController.cs
	namespace		 	
ChajdPizzaWebApp		
 
.		 
Controllers		 &
{

 
[ 

EnableCors 
] 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class 
OrdersApiController $
:% &
ControllerBase' 5
{ 
private 
readonly 
IOrdersRepo $
_repo% *
;* +
public 
OrdersApiController "
(" #
IOrdersRepo# .
repo/ 3
)3 4
{ 	
_repo 
= 
repo 
; 
} 	
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
ActionResult &
<& '
IEnumerable' 2
<2 3
Orders3 9
>9 :
>: ;
>; <
	GetOrders= F
(F G
)G H
{ 	
return 
await 
_repo 
. 
	SelectAll (
(( )
)) *
;* +
} 	
[ 	
HttpGet	 
( 
$str 
) 
] 
public   
async   
Task   
<   
ActionResult   &
<  & '
Orders  ' -
>  - .
>  . /
	GetOrders  0 9
(  9 :
int  : =
id  > @
)  @ A
{!! 	
var"" 
order"" 
="" 
await"" 
_repo"" #
.""# $

SelectById""$ .
("". /
id""/ 1
)""1 2
;""2 3
if$$ 
($$ 
order$$ 
==$$ 
null$$ 
)$$ 
{%% 
return&& 
NotFound&& 
(&&  
)&&  !
;&&! "
}'' 
return)) 
order)) 
;)) 
}** 	
[,, 	
HttpGet,,	 
(,, 
$str,, 
),, 
],,  
public-- 
async-- 
Task-- 
<-- 
ActionResult-- &
<--& '
Orders--' -
>--- .
>--. /
GetOrderByCust--0 >
(--> ?
int--? B
id--C E
)--E F
{.. 	
var// 
order// 
=// 
await// 
_repo// #
.//# $
SelectByCustId//$ 2
(//2 3
id//3 5
)//5 6
;//6 7
if11 
(11 
order11 
==11 
null11 
)11 
{22 
return33 
NotFound33 
(33  
)33  !
;33! "
}44 
return66 
order66 
;66 
}77 	
[88 	
HttpGet88	 
(88 
$str88 '
)88' (
]88( )
public99 
async99 
Task99 
<99 
ActionResult99 &
<99& '
int99' *
>99* +
>99+ ,
CheckMultOpenOrders99- @
(99@ A
int99A D
id99E G
)99G H
{:: 	
var;; 
order;; 
=;; 
await;; 
_repo;; #
.;;# $
SelectByCustId;;$ 2
(;;2 3
id;;3 5
);;5 6
;;;6 7
if== 
(== 
order== 
==== 
null== 
)== 
{>> 
return?? 
$num?? 
;?? 
}@@ 
varBB 
	multOrderBB 
=BB 
awaitBB !
_repoBB" '
.BB' (
SelectMultByCustIdBB( :
(BB: ;
idBB; =
,BB= >
orderBB? D
.BBD E
IdBBE G
)BBG H
;BBH I
ifCC 
(CC 
	multOrderCC 
isCC 
nullCC !
)CC! "
{DD 
returnEE 
$numEE 
;EE 
}FF 
elseGG 
{GG 
returnGG 
$numGG 
;GG 
}GG 
}HH 	
[PP 	
HttpPutPP	 
(PP 
$strPP 
)PP 
]PP 
publicQQ 
asyncQQ 
TaskQQ 
<QQ 
IActionResultQQ '
>QQ' (
PutOrderQQ) 1
(QQ1 2
intQQ2 5
idQQ6 8
,QQ8 9
OrdersQQ: @
orderQQA F
)QQF G
{RR 	
ifSS 
(SS 
idSS 
!=SS 
orderSS 
.SS 
IdSS 
)SS 
{TT 
returnUU 

BadRequestUU !
(UU! "
)UU" #
;UU# $
}VV 
tryXX 
{YY 
awaitZZ 
_repoZZ 
.ZZ 
UpdateZZ "
(ZZ" #
orderZZ# (
)ZZ( )
;ZZ) *
}[[ 
catch\\ 
(\\ (
DbUpdateConcurrencyException\\ /
)\\/ 0
{]] 
if^^ 
(^^ 
!^^ 
OrderExists^^  
(^^  !
id^^! #
)^^# $
)^^$ %
{__ 
return`` 
NotFound`` #
(``# $
)``$ %
;``% &
}aa 
elsebb 
{cc 
throwdd 
;dd 
}ee 
}ff 
returnhh 
	NoContenthh 
(hh 
)hh 
;hh 
}ii 	
[nn 	
HttpPostnn	 
]nn 
publicoo 
asyncoo 
Taskoo 
<oo 
ActionResultoo &
<oo& '
Ordersoo' -
>oo- .
>oo. /
	PostOrderoo0 9
(oo9 :
Ordersoo: @
orderooA F
)ooF G
{pp 	
awaitqq 
_repoqq 
.qq 
Addqq 
(qq 
orderqq !
)qq! "
;qq" #
returnss 
CreatedAtActionss "
(ss" #
$strss# 3
,ss3 4
newss5 8
{ss9 :
idss; =
=ss> ?
orderss@ E
.ssE F
IdssF H
}ssI J
,ssJ K
orderssL Q
)ssQ R
;ssR S
}tt 	
[ww 	

HttpDeleteww	 
(ww 
$strww 
)ww 
]ww 
publicxx 
asyncxx 
Taskxx 
<xx 
ActionResultxx &
<xx& '
Ordersxx' -
>xx- .
>xx. /
DeleteOrderxx0 ;
(xx; <
intxx< ?
idxx@ B
)xxB C
{yy 	
varzz 
orderzz 
=zz 
awaitzz 
_repozz #
.zz# $

SelectByIdzz$ .
(zz. /
idzz/ 1
)zz1 2
;zz2 3
if{{ 
({{ 
order{{ 
=={{ 
null{{ 
){{ 
{|| 
return}} 
NotFound}} 
(}}  
)}}  !
;}}! "
}~~ 
await
ÄÄ 
_repo
ÄÄ 
.
ÄÄ 
Remove
ÄÄ 
(
ÄÄ 
order
ÄÄ $
)
ÄÄ$ %
;
ÄÄ% &
return
ÉÉ 
order
ÉÉ 
;
ÉÉ 
}
ÑÑ 	
private
ÜÜ 
bool
ÜÜ 
OrderExists
ÜÜ  
(
ÜÜ  !
int
ÜÜ! $
id
ÜÜ% '
)
ÜÜ' (
{
áá 	
return
àà 
_repo
àà 
.
àà 
OrderExists
àà $
(
àà$ %
id
àà% '
)
àà' (
;
àà( )
}
ââ 	
}
ää 
}ãã Ì•
rC:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Controllers\PizzaTypesApiController.cs
	namespace

 	
ChajdPizzaWebApp


 
.

 
Controllers

 &
{ 
[ 

EnableCors 
] 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class #
PizzaTypesAPIController (
:) *
ControllerBase+ 9
{ 
private 
readonly 
IPizzaTypesRepo (
_repo) .
;. /
public #
PizzaTypesAPIController &
(& '
IPizzaTypesRepo' 6
repo7 ;
); <
{ 	
_repo 
= 
repo 
; 
} 	
[ 	
HttpGet	 
( 
$str 
) 
] 
public 
async 
Task 
< 
ActionResult &
<& '
IEnumerable' 2
<2 3
Size3 7
>7 8
>8 9
>9 :
GetSizes; C
(C D
)D E
{ 	
try 
{ 
var 
result 
= 
await "
_repo# (
.( )
GetPizzaSizes) 6
(6 7
)7 8
;8 9
if   
(   
result   
==   
null   "
)  " #
{!! 
return"" 
NotFound"" #
(""# $
)""$ %
;""% &
}## 
return%% 
result%% 
.%% 
ToList%% $
(%%$ %
)%%% &
;%%& '
}&& 
catch'' 
('' 
	Exception'' 
WTF''  
)''  !
{(( 
Console** 
.** 
	WriteLine** !
(**! "
WTF**" %
)**% &
;**& '
return++ 
NotFound++ 
(++  
)++  !
;++! "
},, 
}-- 	
[00 	
HttpGet00	 
(00 
$str00 
)00 
]00 
public11 
async11 
Task11 
<11 
ActionResult11 &
<11& '
Size11' +
>11+ ,
>11, -
GetSize11. 5
(115 6
int116 9
id11: <
)11< =
{22 	
try33 
{44 
var55 
size55 
=55 
await55  
_repo55! &
.55& '
GetPizzaSize55' 3
(553 4
id554 6
)556 7
;557 8
if77 
(77 
size77 
==77 
null77  
)77  !
{88 
return99 
NotFound99 #
(99# $
)99$ %
;99% &
}:: 
return<< 
size<< 
;<< 
}== 
catch>> 
(>> 
	Exception>> 
WTF>>  
)>>  !
{?? 
ConsoleAA 
.AA 
	WriteLineAA !
(AA! "
WTFAA" %
)AA% &
;AA& '
returnBB 
NotFoundBB 
(BB  
)BB  !
;BB! "
}CC 
}DD 	
[GG 	
HttpGetGG	 
(GG 
$strGG "
)GG" #
]GG# $
publicHH 
asyncHH 
TaskHH 
<HH 
ActionResultHH &
<HH& '
stringHH' -
>HH- .
>HH. /
GetSizeNameHH0 ;
(HH; <
intHH< ?
idHH@ B
)HHB C
{II 	
tryJJ 
{KK 
varLL 
sizeLL 
=LL 
awaitLL  
_repoLL! &
.LL& '
GetPizzaSizeNameLL' 7
(LL7 8
idLL8 :
)LL: ;
;LL; <
ifNN 
(NN 
sizeNN 
==NN 
nullNN  
)NN  !
{OO 
returnPP 
NotFoundPP #
(PP# $
)PP$ %
;PP% &
}QQ 
returnSS 
sizeSS 
;SS 
}TT 
catchUU 
(UU 
	ExceptionUU 
WTFUU  
)UU  !
{VV 
ConsoleXX 
.XX 
	WriteLineXX !
(XX! "
WTFXX" %
)XX% &
;XX& '
returnYY 
NotFoundYY 
(YY  
)YY  !
;YY! "
}ZZ 
}[[ 	
[^^ 	
HttpGet^^	 
(^^ 
$str^^ #
)^^# $
]^^$ %
public__ 
async__ 
Task__ 
<__ 
ActionResult__ &
<__& '
decimal__' .
>__. /
>__/ 0
GetSizePrice__1 =
(__= >
int__> A
id__B D
)__D E
{`` 	
tryaa 
{bb 
varcc 
sizecc 
=cc 
awaitcc  
_repocc! &
.cc& '
GetPizzaSizePricecc' 8
(cc8 9
idcc9 ;
)cc; <
;cc< =
ifee 
(ee 
sizeee 
<ee 
$numee 
)ee 
{ff 
returngg 
NotFoundgg #
(gg# $
)gg$ %
;gg% &
}hh 
returnjj 
sizejj 
;jj 
}kk 
catchll 
(ll 
	Exceptionll 
WTFll  
)ll  !
{mm 
Consoleoo 
.oo 
	WriteLineoo !
(oo! "
WTFoo" %
)oo% &
;oo& '
returnpp 
NotFoundpp 
(pp  
)pp  !
;pp! "
}qq 
}rr 	
[uu 	
HttpGetuu	 
(uu 
$struu 
)uu 
]uu 
publicvv 
asyncvv 
Taskvv 
<vv 
ActionResultvv &
<vv& '
IEnumerablevv' 2
<vv2 3
SpecialtyPizzavv3 A
>vvA B
>vvB C
>vvC D
GetSpecialtyPizzasvvE W
(vvW X
)vvX Y
{ww 	
tryxx 
{yy 
varzz 
resultzz 
=zz 
awaitzz "
_repozz# (
.zz( )
GetSpecialtyPizzaszz) ;
(zz; <
)zz< =
;zz= >
if|| 
(|| 
result|| 
==|| 
null|| "
)||" #
{}} 
return~~ 
NotFound~~ #
(~~# $
)~~$ %
;~~% &
} 
return
ÅÅ 
result
ÅÅ 
.
ÅÅ 
ToList
ÅÅ $
(
ÅÅ$ %
)
ÅÅ% &
;
ÅÅ& '
}
ÇÇ 
catch
ÉÉ 
(
ÉÉ 
	Exception
ÉÉ 
WTF
ÉÉ  
)
ÉÉ  !
{
ÑÑ 
Console
ÜÜ 
.
ÜÜ 
	WriteLine
ÜÜ !
(
ÜÜ! "
WTF
ÜÜ" %
)
ÜÜ% &
;
ÜÜ& '
return
áá 
NotFound
áá 
(
áá  
)
áá  !
;
áá! "
}
àà 
}
ââ 	
[
åå 	
HttpGet
åå	 
(
åå 
$str
åå 
)
åå  
]
åå  !
public
çç 
async
çç 
Task
çç 
<
çç 
ActionResult
çç &
<
çç& '
SpecialtyPizza
çç' 5
>
çç5 6
>
çç6 7
GetSpecialtyPizza
çç8 I
(
ççI J
int
ççJ M
id
ççN P
)
ççP Q
{
éé 	
try
èè 
{
êê 
var
ëë 
result
ëë 
=
ëë 
await
ëë "
_repo
ëë# (
.
ëë( )
GetSpecialtyPizza
ëë) :
(
ëë: ;
id
ëë; =
)
ëë= >
;
ëë> ?
if
ìì 
(
ìì 
result
ìì 
==
ìì 
null
ìì "
)
ìì" #
{
îî 
return
ïï 
NotFound
ïï #
(
ïï# $
)
ïï$ %
;
ïï% &
}
ññ 
return
òò 
result
òò 
;
òò 
}
ôô 
catch
öö 
(
öö 
	Exception
öö 
WTF
öö  
)
öö  !
{
õõ 
Console
ùù 
.
ùù 
	WriteLine
ùù !
(
ùù! "
WTF
ùù" %
)
ùù% &
;
ùù& '
return
ûû 
NotFound
ûû 
(
ûû  
)
ûû  !
;
ûû! "
}
üü 
}
†† 	
[
££ 	
HttpGet
££	 
(
££ 
$str
££ %
)
££% &
]
££& '
public
§§ 
async
§§ 
Task
§§ 
<
§§ 
ActionResult
§§ &
<
§§& '
decimal
§§' .
>
§§. /
>
§§/ 0$
GetSpecialtyPizzaPrice
§§1 G
(
§§G H
int
§§H K
id
§§L N
)
§§N O
{
•• 	
try
¶¶ 
{
ßß 
var
®® 
result
®® 
=
®® 
await
®® "
_repo
®®# (
.
®®( )$
GetSpecialtyPizzaPrice
®®) ?
(
®®? @
id
®®@ B
)
®®B C
;
®®C D
if
™™ 
(
™™ 
result
™™ 
<
™™ 
$num
™™ 
)
™™ 
{
´´ 
return
¨¨ 
NotFound
¨¨ #
(
¨¨# $
)
¨¨$ %
;
¨¨% &
}
≠≠ 
return
ØØ 
Convert
ØØ 
.
ØØ 
	ToDecimal
ØØ (
(
ØØ( )
result
ØØ) /
)
ØØ/ 0
;
ØØ0 1
}
∞∞ 
catch
±± 
(
±± 
	Exception
±± 
WTF
±±  
)
±±  !
{
≤≤ 
Console
¥¥ 
.
¥¥ 
	WriteLine
¥¥ !
(
¥¥! "
WTF
¥¥" %
)
¥¥% &
;
¥¥& '
return
µµ 
NotFound
µµ 
(
µµ  
)
µµ  !
;
µµ! "
}
∂∂ 
}
∑∑ 	
[
∫∫ 	
HttpGet
∫∫	 
(
∫∫ 
$str
∫∫ $
)
∫∫$ %
]
∫∫% &
public
ªª 
async
ªª 
Task
ªª 
<
ªª 
ActionResult
ªª &
<
ªª& '
string
ªª' -
>
ªª- .
>
ªª. /#
GetSpecialtyPizzaName
ªª0 E
(
ªªE F
int
ªªF I
id
ªªJ L
)
ªªL M
{
ºº 	
try
ΩΩ 
{
ææ 
var
øø 
result
øø 
=
øø 
await
øø "
_repo
øø# (
.
øø( )#
GetSpecialtyPizzaName
øø) >
(
øø> ?
id
øø? A
)
øøA B
;
øøB C
if
¡¡ 
(
¡¡ 
result
¡¡ 
==
¡¡ 
null
¡¡ "
)
¡¡" #
{
¬¬ 
return
√√ 
NotFound
√√ #
(
√√# $
)
√√$ %
;
√√% &
}
ƒƒ 
return
∆∆ 
result
∆∆ 
;
∆∆ 
}
«« 
catch
»» 
(
»» 
	Exception
»» 
WTF
»»  
)
»»  !
{
…… 
Console
ÀÀ 
.
ÀÀ 
	WriteLine
ÀÀ !
(
ÀÀ! "
WTF
ÀÀ" %
)
ÀÀ% &
;
ÀÀ& '
return
ÃÃ 
NotFound
ÃÃ 
(
ÃÃ  
)
ÃÃ  !
;
ÃÃ! "
}
ÕÕ 
}
ŒŒ 	
[
—— 	
HttpGet
——	 
(
—— 
$str
—— $
)
——$ %
]
——% &
public
““ 
async
““ 
Task
““ 
<
““ 
ActionResult
““ &
<
““& '
string
““' -
>
““- .
>
““. /*
GetSpecialtyPizzaDescription
““0 L
(
““L M
int
““M P
id
““Q S
)
““S T
{
”” 	
try
‘‘ 
{
’’ 
var
÷÷ 
result
÷÷ 
=
÷÷ 
await
÷÷ "
_repo
÷÷# (
.
÷÷( )*
GetSpecialtyPizzaDescription
÷÷) E
(
÷÷E F
id
÷÷F H
)
÷÷H I
;
÷÷I J
if
ÿÿ 
(
ÿÿ 
result
ÿÿ 
==
ÿÿ 
null
ÿÿ "
)
ÿÿ" #
{
ŸŸ 
return
⁄⁄ 
NotFound
⁄⁄ #
(
⁄⁄# $
)
⁄⁄$ %
;
⁄⁄% &
}
€€ 
return
›› 
result
›› 
;
›› 
}
ﬁﬁ 
catch
ﬂﬂ 
(
ﬂﬂ 
	Exception
ﬂﬂ 
WTF
ﬂﬂ  
)
ﬂﬂ  !
{
‡‡ 
Console
‚‚ 
.
‚‚ 
	WriteLine
‚‚ !
(
‚‚! "
WTF
‚‚" %
)
‚‚% &
;
‚‚& '
return
„„ 
NotFound
„„ 
(
„„  
)
„„  !
;
„„! "
}
‰‰ 
}
ÂÂ 	
[
ËË 	
HttpGet
ËË	 
(
ËË 
$str
ËË 
)
ËË 
]
ËË 
public
ÈÈ 
async
ÈÈ 
Task
ÈÈ 
<
ÈÈ 
ActionResult
ÈÈ &
<
ÈÈ& '
IEnumerable
ÈÈ' 2
<
ÈÈ2 3
Toppings
ÈÈ3 ;
>
ÈÈ; <
>
ÈÈ< =
>
ÈÈ= >
GetToppings
ÈÈ? J
(
ÈÈJ K
)
ÈÈK L
{
ÍÍ 	
try
ÎÎ 
{
ÏÏ 
var
ÌÌ 
result
ÌÌ 
=
ÌÌ 
await
ÌÌ "
_repo
ÌÌ# (
.
ÌÌ( )
GetToppings
ÌÌ) 4
(
ÌÌ4 5
)
ÌÌ5 6
;
ÌÌ6 7
if
ÔÔ 
(
ÔÔ 
result
ÔÔ 
==
ÔÔ 
null
ÔÔ "
)
ÔÔ" #
{
 
return
ÒÒ 
NotFound
ÒÒ #
(
ÒÒ# $
)
ÒÒ$ %
;
ÒÒ% &
}
ÚÚ 
return
ÙÙ 
result
ÙÙ 
.
ÙÙ 
ToList
ÙÙ $
(
ÙÙ$ %
)
ÙÙ% &
;
ÙÙ& '
}
ıı 
catch
ˆˆ 
(
ˆˆ 
	Exception
ˆˆ 
WTF
ˆˆ  
)
ˆˆ  !
{
˜˜ 
Console
˘˘ 
.
˘˘ 
	WriteLine
˘˘ !
(
˘˘! "
WTF
˘˘" %
)
˘˘% &
;
˘˘& '
return
˙˙ 
NotFound
˙˙ 
(
˙˙  
)
˙˙  !
;
˙˙! "
}
˚˚ 
}
¸¸ 	
[
ˇˇ 	
HttpGet
ˇˇ	 
(
ˇˇ 
$str
ˇˇ  
)
ˇˇ  !
]
ˇˇ! "
public
ÄÄ 
async
ÄÄ 
Task
ÄÄ 
<
ÄÄ 
ActionResult
ÄÄ &
<
ÄÄ& '
Toppings
ÄÄ' /
>
ÄÄ/ 0
>
ÄÄ0 1

GetTopping
ÄÄ2 <
(
ÄÄ< =
int
ÄÄ= @
id
ÄÄA C
)
ÄÄC D
{
ÅÅ 	
try
ÇÇ 
{
ÉÉ 
var
ÑÑ 
result
ÑÑ 
=
ÑÑ 
await
ÑÑ "
_repo
ÑÑ# (
.
ÑÑ( )

GetTopping
ÑÑ) 3
(
ÑÑ3 4
id
ÑÑ4 6
)
ÑÑ6 7
;
ÑÑ7 8
if
ÜÜ 
(
ÜÜ 
result
ÜÜ 
==
ÜÜ 
null
ÜÜ "
)
ÜÜ" #
{
áá 
return
àà 
NotFound
àà #
(
àà# $
)
àà$ %
;
àà% &
}
ââ 
return
ãã 
result
ãã 
;
ãã 
}
åå 
catch
çç 
(
çç 
	Exception
çç 
WTF
çç  
)
çç  !
{
éé 
Console
êê 
.
êê 
	WriteLine
êê !
(
êê! "
WTF
êê" %
)
êê% &
;
êê& '
return
ëë 
NotFound
ëë 
(
ëë  
)
ëë  !
;
ëë! "
}
íí 
}
ìì 	
[
ññ 	
HttpGet
ññ	 
(
ññ 
$str
ññ %
)
ññ% &
]
ññ& '
public
óó 
async
óó 
Task
óó 
<
óó 
ActionResult
óó &
<
óó& '
string
óó' -
>
óó- .
>
óó. /
GetToppingName
óó0 >
(
óó> ?
int
óó? B
id
óóC E
)
óóE F
{
òò 	
try
ôô 
{
öö 
var
õõ 
result
õõ 
=
õõ 
await
õõ "
_repo
õõ# (
.
õõ( )
GetToppingName
õõ) 7
(
õõ7 8
id
õõ8 :
)
õõ: ;
;
õõ; <
if
ùù 
(
ùù 
result
ùù 
==
ùù 
null
ùù "
)
ùù" #
{
ûû 
return
üü 
NotFound
üü #
(
üü# $
)
üü$ %
;
üü% &
}
†† 
return
¢¢ 
result
¢¢ 
;
¢¢ 
}
££ 
catch
§§ 
(
§§ 
	Exception
§§ 
WTF
§§  
)
§§  !
{
•• 
Console
ßß 
.
ßß 
	WriteLine
ßß !
(
ßß! "
WTF
ßß" %
)
ßß% &
;
ßß& '
return
®® 
NotFound
®® 
(
®®  
)
®®  !
;
®®! "
}
©© 
}
™™ 	
[
≠≠ 	
HttpGet
≠≠	 
(
≠≠ 
$str
≠≠ 
)
≠≠ 
]
≠≠ 
public
ÆÆ 
async
ÆÆ 
Task
ÆÆ 
<
ÆÆ 
ActionResult
ÆÆ &
<
ÆÆ& '
IEnumerable
ÆÆ' 2
<
ÆÆ2 3
SecretFormula
ÆÆ3 @
>
ÆÆ@ A
>
ÆÆA B
>
ÆÆB C
GetSecretFormulas
ÆÆD U
(
ÆÆU V
)
ÆÆV W
{
ØØ 	
try
∞∞ 
{
±± 
var
≤≤ 
result
≤≤ 
=
≤≤ 
await
≤≤ "
_repo
≤≤# (
.
≤≤( )
GetSecretFormulas
≤≤) :
(
≤≤: ;
)
≤≤; <
;
≤≤< =
if
¥¥ 
(
¥¥ 
result
¥¥ 
==
¥¥ 
null
¥¥ "
)
¥¥" #
{
µµ 
return
∂∂ 
NotFound
∂∂ #
(
∂∂# $
)
∂∂$ %
;
∂∂% &
}
∑∑ 
return
ππ 
result
ππ 
.
ππ 
ToList
ππ $
(
ππ$ %
)
ππ% &
;
ππ& '
}
∫∫ 
catch
ªª 
(
ªª 
	Exception
ªª 
WTF
ªª  
)
ªª  !
{
ºº 
Console
ææ 
.
ææ 
	WriteLine
ææ !
(
ææ! "
WTF
ææ" %
)
ææ% &
;
ææ& '
return
øø 
NotFound
øø 
(
øø  
)
øø  !
;
øø! "
}
¿¿ 
}
¡¡ 	
[
ƒƒ 	
HttpGet
ƒƒ	 
(
ƒƒ 
$str
ƒƒ 
)
ƒƒ 
]
ƒƒ 
public
≈≈ 
async
≈≈ 
Task
≈≈ 
<
≈≈ 
ActionResult
≈≈ &
<
≈≈& '
SecretFormula
≈≈' 4
>
≈≈4 5
>
≈≈5 6
GetSecretFormula
≈≈7 G
(
≈≈G H
int
≈≈H K
id
≈≈L N
)
≈≈N O
{
∆∆ 	
try
«« 
{
»» 
var
…… 
result
…… 
=
…… 
await
…… "
_repo
……# (
.
……( )
GetSecretFormula
……) 9
(
……9 :
id
……: <
)
……< =
;
……= >
if
ÀÀ 
(
ÀÀ 
result
ÀÀ 
==
ÀÀ 
null
ÀÀ "
)
ÀÀ" #
{
ÃÃ 
return
ÕÕ 
NotFound
ÕÕ #
(
ÕÕ# $
)
ÕÕ$ %
;
ÕÕ% &
}
ŒŒ 
return
–– 
result
–– 
;
–– 
}
—— 
catch
““ 
(
““ 
	Exception
““ 
WTF
““  
)
““  !
{
”” 
Console
’’ 
.
’’ 
	WriteLine
’’ !
(
’’! "
WTF
’’" %
)
’’% &
;
’’& '
return
÷÷ 
NotFound
÷÷ 
(
÷÷  
)
÷÷  !
;
÷÷! "
}
◊◊ 
}
ÿÿ 	
[
€€ 	
HttpGet
€€	 
(
€€ 
$str
€€  
)
€€  !
]
€€! "
public
‹‹ 
async
‹‹ 
Task
‹‹ 
<
‹‹ 
ActionResult
‹‹ &
<
‹‹& '
decimal
‹‹' .
>
‹‹. /
>
‹‹/ 0#
GetSecretFormulaPrice
‹‹1 F
(
‹‹F G
int
‹‹G J
id
‹‹K M
)
‹‹M N
{
›› 	
try
ﬁﬁ 
{
ﬂﬂ 
var
‡‡ 
result
‡‡ 
=
‡‡ 
await
‡‡ "
_repo
‡‡# (
.
‡‡( )#
GetSecretFormulaPrice
‡‡) >
(
‡‡> ?
id
‡‡? A
)
‡‡A B
;
‡‡B C
if
‚‚ 
(
‚‚ 
result
‚‚ 
<
‚‚ 
$num
‚‚ 
)
‚‚ 
{
„„ 
return
‰‰ 
NotFound
‰‰ #
(
‰‰# $
)
‰‰$ %
;
‰‰% &
}
ÂÂ 
return
ÁÁ 
result
ÁÁ 
;
ÁÁ 
}
ËË 
catch
ÈÈ 
(
ÈÈ 
	Exception
ÈÈ 
WTF
ÈÈ  
)
ÈÈ  !
{
ÍÍ 
Console
ÏÏ 
.
ÏÏ 
	WriteLine
ÏÏ !
(
ÏÏ! "
WTF
ÏÏ" %
)
ÏÏ% &
;
ÏÏ& '
return
ÌÌ 
NotFound
ÌÌ 
(
ÌÌ  
)
ÌÌ  !
;
ÌÌ! "
}
ÓÓ 
}
ÔÔ 	
}
 
}ÒÒ ò
sC:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Controllers\SpecialtyPizzaController.cs
	namespace 	
ChajdPizzaWebApp
 
. 
Controllers &
{ 
public 

class $
SpecialtyPizzaController )
:* +

Controller, 6
{ 
OrderBl 

Orderlogic 
= 
new  
OrderBl! (
(( )
)) *
;* +
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
IActionResult '
>' (
Order) .
(. /
int/ 2
?2 3
id4 6
)6 7
{ 	
if 
( 
id 
is 
null 
) 
{ 
return 
NotFound 
(  
)  !
;! "
} 
var 
Username 
= 
User 
.  
Identity  (
.( )
Name) -
;- .
var 
ApiResponse 
= 

Orderlogic (
.( )
GetPizzaOrder) 6
(6 7
Username7 ?
,? @
idA C
)C D
;D E
if 
( 
ApiResponse 
is 
	Exception '
)' (
{ 
return 
View 
( 
$str 5
,5 6
ApiResponse7 B
)B C
;C D
}   
else!! 
{"" 
return## 
View## 
(## 
$str## ;
,##; <
ApiResponse##= H
)##H I
;##I J
}$$ 
}%% 	
['' 	
HttpPost''	 
,'' (
AutoValidateAntiforgeryToken'' /
]''/ 0
public(( 
async(( 
Task(( 
<(( 
IActionResult(( '
>((' (
OrderSubmit(() 4
(((4 5
[((5 6
Bind((6 :
(((: ;
$str	((; É
)
((É Ñ
]
((Ñ Ö
OrderDetail
((Ü ë
orderDetail
((í ù
)
((ù û
{)) 	
if** 
(** 

ModelState** 
.** 
IsValid** "
)**" #
{++ 
var-- 
ApiResponse-- 
=--  !

Orderlogic--" ,
.--, -
PostPizzaOrder--- ;
(--; <
orderDetail--< G
)--G H
;--H I
if// 
(// 
ApiResponse// 
is//  "
	Exception//# ,
)//, -
{00 
return11 
View11 
(11  
$str11  9
,119 :
ApiResponse11; F
)11F G
;11G H
}22 
else33 
{44 
return55 
View55 
(55  
$str55  =
,55= >
ApiResponse55? J
)55J K
;55K L
}66 
}77 
return88 
View88 
(88 
$str88 1
,881 2
new883 6
	Exception887 @
(88@ A
$str	88A ï
)
88ï ñ
)
88ñ ó
;
88ó ò
}99 	
}:: 
};; ò-
mC:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Controllers\StateApiController.cs
	namespace 	
ChajdPizzaWebApp
 
. 
Controllers &
{ 
[ 

EnableCors 
] 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class 
StateApiController #
:$ %
ControllerBase& 4
{ 
private 
readonly 

IStateRepo #
_repo$ )
;) *
public 
StateApiController !
(! "

IStateRepo" ,
repo- 1
)1 2
{ 	
_repo 
= 
repo 
; 
} 	
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
ActionResult &
<& '
IEnumerable' 2
<2 3
State3 8
>8 9
>9 :
>: ;
	GetStates< E
(E F
)F G
{ 	
try 
{ 
var 
result 
= 
await "
_repo# (
.( )
	GetStates) 2
(2 3
)3 4
;4 5
if!! 
(!! 
result!! 
==!! 
null!! "
)!!" #
{"" 
return## 
NotFound## #
(### $
)##$ %
;##% &
}$$ 
return&& 
result&& 
.&& 
ToList&& $
(&&$ %
)&&% &
;&&& '
}'' 
catch(( 
((( 
	Exception(( 
WTF((  
)((  !
{)) 
Console++ 
.++ 
	WriteLine++ !
(++! "
WTF++" %
)++% &
;++& '
return,, 
NotFound,, 
(,,  
),,  !
;,,! "
}-- 
}.. 	
[11 	
HttpGet11	 
(11 
$str11 
)11 
]11 
public22 
async22 
Task22 
<22 
ActionResult22 &
<22& '
State22' ,
>22, -
>22- .
GetState22/ 7
(227 8
int228 ;
id22< >
)22> ?
{33 	
try44 
{55 
var66 
state66 
=66 
await66 !
_repo66" '
.66' (
GetState66( 0
(660 1
id661 3
)663 4
;664 5
if88 
(88 
state88 
==88 
null88 !
)88! "
{99 
return:: 
NotFound:: #
(::# $
)::$ %
;::% &
};; 
return== 
state== 
;== 
}>> 
catch?? 
(?? 
	Exception?? 
WTF??  
)??  !
{@@ 
ConsoleBB 
.BB 
	WriteLineBB !
(BB! "
WTFBB" %
)BB% &
;BB& '
returnCC 
NotFoundCC 
(CC  
)CC  !
;CC! "
}DD 
}EE 	
[HH 	
HttpGetHH	 
(HH 
$strHH 
)HH 
]HH 
publicII 
asyncII 
TaskII 
<II 
ActionResultII &
<II& '
stringII' -
>II- .
>II. /
GetStateNameII0 <
(II< =
intII= @
idIIA C
)IIC D
{JJ 	
tryKK 
{LL 
varMM 
sizeMM 
=MM 
awaitMM  
_repoMM! &
.MM& '
GetStateNameMM' 3
(MM3 4
idMM4 6
)MM6 7
;MM7 8
ifOO 
(OO 
sizeOO 
==OO 
nullOO  
)OO  !
{PP 
returnQQ 
NotFoundQQ #
(QQ# $
)QQ$ %
;QQ% &
}RR 
returnTT 
sizeTT 
;TT 
}UU 
catchVV 
(VV 
	ExceptionVV 
WTFVV  
)VV  !
{WW 
ConsoleYY 
.YY 
	WriteLineYY !
(YY! "
WTFYY" %
)YY% &
;YY& '
returnZZ 
NotFoundZZ 
(ZZ  
)ZZ  !
;ZZ! "
}[[ 
}\\ 	
[__ 	
HttpGet__	 
(__ 
$str__ 
)__ 
]__ 
public`` 
async`` 
Task`` 
<`` 
ActionResult`` &
<``& '
string``' -
>``- .
>``. /
GetStateAbbrevation``0 C
(``C D
int``D G
id``H J
)``J K
{aa 	
trybb 
{cc 
vardd 
sizedd 
=dd 
awaitdd  
_repodd! &
.dd& '
GetStateAbbrevationdd' :
(dd: ;
iddd; =
)dd= >
;dd> ?
ifff 
(ff 
sizeff 
==ff 
nullff  
)ff  !
{gg 
returnhh 
NotFoundhh #
(hh# $
)hh$ %
;hh% &
}ii 
returnkk 
sizekk 
;kk 
}ll 
catchmm 
(mm 
	Exceptionmm 
WTFmm  
)mm  !
{nn 
Consolepp 
.pp 
	WriteLinepp !
(pp! "
WTFpp" %
)pp% &
;pp& '
returnqq 
NotFoundqq 
(qq  
)qq  !
;qq! "
}rr 
}ss 	
}tt 
}uu ü€
hC:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Data\ApplicationDbContext.cs
	namespace 	
ChajdPizzaWebApp
 
. 
Data 
{ 
public 

class  
ApplicationDbContext %
:& '
IdentityDbContext( 9
{ 
public		  
ApplicationDbContext		 #
(		# $
DbContextOptions		$ 4
<		4 5 
ApplicationDbContext		5 I
>		I J
options		K R
)		R S
:

 
base

 
(

 
options

 
)

 
{ 	
} 	
	protected 
override 
void 
OnModelCreating  /
(/ 0
ModelBuilder0 <
modelBuilder= I
)I J
{ 	
base 
. 
OnModelCreating  
(  !
modelBuilder! -
)- .
;. /
modelBuilder 
. 
Entity 
<  
State  %
>% &
(& '
)' (
.( )
HasData) 0
(0 1
new1 4
State5 :
(: ;
); <
{= >
ID? A
=B C
$numD E
,E F
NameG K
=L M
$strN W
,W X
AbbreviationY e
=f g
$strh l
}m n
)n o
;o p
modelBuilder 
. 
Entity 
<  
State  %
>% &
(& '
)' (
.( )
HasData) 0
(0 1
new1 4
State5 :
(: ;
); <
{= >
ID? A
=B C
$numD E
,E F
NameG K
=L M
$strN V
,V W
AbbreviationX d
=e f
$strg k
}l m
)m n
;n o
modelBuilder 
. 
Entity 
<  
State  %
>% &
(& '
)' (
.( )
HasData) 0
(0 1
new1 4
State5 :
(: ;
); <
{= >
ID? A
=B C
$numD E
,E F
NameG K
=L M
$strN W
,W X
AbbreviationY e
=f g
$strh l
}m n
)n o
;o p
modelBuilder 
. 
Entity 
<  
State  %
>% &
(& '
)' (
.( )
HasData) 0
(0 1
new1 4
State5 :
(: ;
); <
{= >
ID? A
=B C
$numD E
,E F
NameG K
=L M
$strN X
,X Y
AbbreviationZ f
=g h
$stri m
}n o
)o p
;p q
modelBuilder 
. 
Entity 
<  
State  %
>% &
(& '
)' (
.( )
HasData) 0
(0 1
new1 4
State5 :
(: ;
); <
{= >
ID? A
=B C
$numD E
,E F
NameG K
=L M
$strN Z
,Z [
Abbreviation\ h
=i j
$strk o
}p q
)q r
;r s
modelBuilder 
. 
Entity 
<  
State  %
>% &
(& '
)' (
.( )
HasData) 0
(0 1
new1 4
State5 :
(: ;
); <
{= >
ID? A
=B C
$numD E
,E F
NameG K
=L M
$strN X
,X Y
AbbreviationZ f
=g h
$stri m
}n o
)o p
;p q
modelBuilder 
. 
Entity 
<  
State  %
>% &
(& '
)' (
.( )
HasData) 0
(0 1
new1 4
State5 :
(: ;
); <
{= >
ID? A
=B C
$numD E
,E F
NameG K
=L M
$strN [
,[ \
Abbreviation] i
=j k
$strl p
}q r
)r s
;s t
modelBuilder 
. 
Entity 
<  
State  %
>% &
(& '
)' (
.( )
HasData) 0
(0 1
new1 4
State5 :
(: ;
); <
{= >
ID? A
=B C
$numD E
,E F
NameG K
=L M
$strN X
,X Y
AbbreviationZ f
=g h
$stri m
}n o
)o p
;p q
modelBuilder 
. 
Entity 
<  
State  %
>% &
(& '
)' (
.( )
HasData) 0
(0 1
new1 4
State5 :
(: ;
); <
{= >
ID? A
=B C
$numD E
,E F
NameG K
=L M
$strN W
,W X
AbbreviationY e
=f g
$strh l
}m n
)n o
;o p
modelBuilder 
. 
Entity 
<  
State  %
>% &
(& '
)' (
.( )
HasData) 0
(0 1
new1 4
State5 :
(: ;
); <
{= >
ID? A
=B C
$numD F
,F G
NameH L
=M N
$strO X
,X Y
AbbreviationZ f
=g h
$stri m
}n o
)o p
;p q
modelBuilder 
. 
Entity 
<  
State  %
>% &
(& '
)' (
.( )
HasData) 0
(0 1
new1 4
State5 :
(: ;
); <
{= >
ID? A
=B C
$numD F
,F G
NameH L
=M N
$strO W
,W X
AbbreviationY e
=f g
$strh l
}m n
)n o
;o p
modelBuilder 
. 
Entity 
<  
State  %
>% &
(& '
)' (
.( )
HasData) 0
(0 1
new1 4
State5 :
(: ;
); <
{= >
ID? A
=B C
$numD F
,F G
NameH L
=M N
$strO V
,V W
AbbreviationX d
=e f
$strg k
}l m
)m n
;n o
modelBuilder 
. 
Entity 
<  
State  %
>% &
(& '
)' (
.( )
HasData) 0
(0 1
new1 4
State5 :
(: ;
); <
{= >
ID? A
=B C
$numD F
,F G
NameH L
=M N
$strO Y
,Y Z
Abbreviation[ g
=h i
$strj n
}o p
)p q
;q r
modelBuilder 
. 
Entity 
<  
State  %
>% &
(& '
)' (
.( )
HasData) 0
(0 1
new1 4
State5 :
(: ;
); <
{= >
ID? A
=B C
$numD F
,F G
NameH L
=M N
$strO X
,X Y
AbbreviationZ f
=g h
$stri m
}n o
)o p
;p q
modelBuilder   
.   
Entity   
<    
State    %
>  % &
(  & '
)  ' (
.  ( )
HasData  ) 0
(  0 1
new  1 4
State  5 :
(  : ;
)  ; <
{  = >
ID  ? A
=  B C
$num  D F
,  F G
Name  H L
=  M N
$str  O U
,  U V
Abbreviation  W c
=  d e
$str  f j
}  k l
)  l m
;  m n
modelBuilder!! 
.!! 
Entity!! 
<!!  
State!!  %
>!!% &
(!!& '
)!!' (
.!!( )
HasData!!) 0
(!!0 1
new!!1 4
State!!5 :
(!!: ;
)!!; <
{!!= >
ID!!? A
=!!B C
$num!!D F
,!!F G
Name!!H L
=!!M N
$str!!O W
,!!W X
Abbreviation!!Y e
=!!f g
$str!!h l
}!!m n
)!!n o
;!!o p
modelBuilder"" 
."" 
Entity"" 
<""  
State""  %
>""% &
(""& '
)""' (
.""( )
HasData"") 0
(""0 1
new""1 4
State""5 :
("": ;
)""; <
{""= >
ID""? A
=""B C
$num""D F
,""F G
Name""H L
=""M N
$str""O Y
,""Y Z
Abbreviation""[ g
=""h i
$str""j n
}""o p
)""p q
;""q r
modelBuilder## 
.## 
Entity## 
<##  
State##  %
>##% &
(##& '
)##' (
.##( )
HasData##) 0
(##0 1
new##1 4
State##5 :
(##: ;
)##; <
{##= >
ID##? A
=##B C
$num##D F
,##F G
Name##H L
=##M N
$str##O Z
,##Z [
Abbreviation##\ h
=##i j
$str##k o
}##p q
)##q r
;##r s
modelBuilder$$ 
.$$ 
Entity$$ 
<$$  
State$$  %
>$$% &
($$& '
)$$' (
.$$( )
HasData$$) 0
($$0 1
new$$1 4
State$$5 :
($$: ;
)$$; <
{$$= >
ID$$? A
=$$B C
$num$$D F
,$$F G
Name$$H L
=$$M N
$str$$O V
,$$V W
Abbreviation$$X d
=$$e f
$str$$g k
}$$l m
)$$m n
;$$n o
modelBuilder%% 
.%% 
Entity%% 
<%%  
State%%  %
>%%% &
(%%& '
)%%' (
.%%( )
HasData%%) 0
(%%0 1
new%%1 4
State%%5 :
(%%: ;
)%%; <
{%%= >
ID%%? A
=%%B C
$num%%D F
,%%F G
Name%%H L
=%%M N
$str%%O Y
,%%Y Z
Abbreviation%%[ g
=%%h i
$str%%j n
}%%o p
)%%p q
;%%q r
modelBuilder&& 
.&& 
Entity&& 
<&&  
State&&  %
>&&% &
(&&& '
)&&' (
.&&( )
HasData&&) 0
(&&0 1
new&&1 4
State&&5 :
(&&: ;
)&&; <
{&&= >
ID&&? A
=&&B C
$num&&D F
,&&F G
Name&&H L
=&&M N
$str&&O ^
,&&^ _
Abbreviation&&` l
=&&m n
$str&&o s
}&&t u
)&&u v
;&&v w
modelBuilder'' 
.'' 
Entity'' 
<''  
State''  %
>''% &
(''& '
)''' (
.''( )
HasData'') 0
(''0 1
new''1 4
State''5 :
('': ;
)''; <
{''= >
ID''? A
=''B C
$num''D F
,''F G
Name''H L
=''M N
$str''O Y
,''Y Z
Abbreviation''[ g
=''h i
$str''j n
}''o p
)''p q
;''q r
modelBuilder(( 
.(( 
Entity(( 
<((  
State((  %
>((% &
(((& '
)((' (
.((( )
HasData(() 0
(((0 1
new((1 4
State((5 :
(((: ;
)((; <
{((= >
ID((? A
=((B C
$num((D F
,((F G
Name((H L
=((M N
$str((O Z
,((Z [
Abbreviation((\ h
=((i j
$str((k o
}((p q
)((q r
;((r s
modelBuilder)) 
.)) 
Entity)) 
<))  
State))  %
>))% &
())& '
)))' (
.))( )
HasData))) 0
())0 1
new))1 4
State))5 :
()): ;
))); <
{))= >
ID))? A
=))B C
$num))D F
,))F G
Name))H L
=))M N
$str))O \
,))\ ]
Abbreviation))^ j
=))k l
$str))m q
}))r s
)))s t
;))t u
modelBuilder** 
.** 
Entity** 
<**  
State**  %
>**% &
(**& '
)**' (
.**( )
HasData**) 0
(**0 1
new**1 4
State**5 :
(**: ;
)**; <
{**= >
ID**? A
=**B C
$num**D F
,**F G
Name**H L
=**M N
$str**O Y
,**Y Z
Abbreviation**[ g
=**h i
$str**j n
}**o p
)**p q
;**q r
modelBuilder++ 
.++ 
Entity++ 
<++  
State++  %
>++% &
(++& '
)++' (
.++( )
HasData++) 0
(++0 1
new++1 4
State++5 :
(++: ;
)++; <
{++= >
ID++? A
=++B C
$num++D F
,++F G
Name++H L
=++M N
$str++O X
,++X Y
Abbreviation++Z f
=++g h
$str++i m
}++n o
)++o p
;++p q
modelBuilder,, 
.,, 
Entity,, 
<,,  
State,,  %
>,,% &
(,,& '
),,' (
.,,( )
HasData,,) 0
(,,0 1
new,,1 4
State,,5 :
(,,: ;
),,; <
{,,= >
ID,,? A
=,,B C
$num,,D F
,,,F G
Name,,H L
=,,M N
$str,,O Y
,,,Y Z
Abbreviation,,[ g
=,,h i
$str,,j n
},,o p
),,p q
;,,q r
modelBuilder-- 
.-- 
Entity-- 
<--  
State--  %
>--% &
(--& '
)--' (
.--( )
HasData--) 0
(--0 1
new--1 4
State--5 :
(--: ;
)--; <
{--= >
ID--? A
=--B C
$num--D F
,--F G
Name--H L
=--M N
$str--O W
,--W X
Abbreviation--Y e
=--f g
$str--h l
}--m n
)--n o
;--o p
modelBuilder.. 
... 
Entity.. 
<..  
State..  %
>..% &
(..& '
)..' (
...( )
HasData..) 0
(..0 1
new..1 4
State..5 :
(..: ;
)..; <
{..= >
ID..? A
=..B C
$num..D F
,..F G
Name..H L
=..M N
$str..O ^
,..^ _
Abbreviation..` l
=..m n
$str..o s
}..t u
)..u v
;..v w
modelBuilder// 
.// 
Entity// 
<//  
State//  %
>//% &
(//& '
)//' (
.//( )
HasData//) 0
(//0 1
new//1 4
State//5 :
(//: ;
)//; <
{//= >
ID//? A
=//B C
$num//D F
,//F G
Name//H L
=//M N
$str//O [
,//[ \
Abbreviation//] i
=//j k
$str//l p
}//q r
)//r s
;//s t
modelBuilder00 
.00 
Entity00 
<00  
State00  %
>00% &
(00& '
)00' (
.00( )
HasData00) 0
(000 1
new001 4
State005 :
(00: ;
)00; <
{00= >
ID00? A
=00B C
$num00D F
,00F G
Name00H L
=00M N
$str00O [
,00[ \
Abbreviation00] i
=00j k
$str00l p
}00q r
)00r s
;00s t
modelBuilder11 
.11 
Entity11 
<11  
State11  %
>11% &
(11& '
)11' (
.11( )
HasData11) 0
(110 1
new111 4
State115 :
(11: ;
)11; <
{11= >
ID11? A
=11B C
$num11D F
,11F G
Name11H L
=11M N
$str11O Y
,11Y Z
Abbreviation11[ g
=11h i
$str11j n
}11o p
)11p q
;11q r
modelBuilder22 
.22 
Entity22 
<22  
State22  %
>22% &
(22& '
)22' (
.22( )
HasData22) 0
(220 1
new221 4
State225 :
(22: ;
)22; <
{22= >
ID22? A
=22B C
$num22D F
,22F G
Name22H L
=22M N
$str22O _
,22_ `
Abbreviation22a m
=22n o
$str22p t
}22u v
)22v w
;22w x
modelBuilder33 
.33 
Entity33 
<33  
State33  %
>33% &
(33& '
)33' (
.33( )
HasData33) 0
(330 1
new331 4
State335 :
(33: ;
)33; <
{33= >
ID33? A
=33B C
$num33D F
,33F G
Name33H L
=33M N
$str33O ]
,33] ^
Abbreviation33_ k
=33l m
$str33n r
}33s t
)33t u
;33u v
modelBuilder44 
.44 
Entity44 
<44  
State44  %
>44% &
(44& '
)44' (
.44( )
HasData44) 0
(440 1
new441 4
State445 :
(44: ;
)44; <
{44= >
ID44? A
=44B C
$num44D F
,44F G
Name44H L
=44M N
$str44O U
,44U V
Abbreviation44W c
=44d e
$str44f j
}44k l
)44l m
;44m n
modelBuilder55 
.55 
Entity55 
<55  
State55  %
>55% &
(55& '
)55' (
.55( )
HasData55) 0
(550 1
new551 4
State555 :
(55: ;
)55; <
{55= >
ID55? A
=55B C
$num55D F
,55F G
Name55H L
=55M N
$str55O Y
,55Y Z
Abbreviation55[ g
=55h i
$str55j n
}55o p
)55p q
;55q r
modelBuilder66 
.66 
Entity66 
<66  
State66  %
>66% &
(66& '
)66' (
.66( )
HasData66) 0
(660 1
new661 4
State665 :
(66: ;
)66; <
{66= >
ID66? A
=66B C
$num66D F
,66F G
Name66H L
=66M N
$str66O W
,66W X
Abbreviation66Y e
=66f g
$str66h l
}66m n
)66n o
;66o p
modelBuilder77 
.77 
Entity77 
<77  
State77  %
>77% &
(77& '
)77' (
.77( )
HasData77) 0
(770 1
new771 4
State775 :
(77: ;
)77; <
{77= >
ID77? A
=77B C
$num77D F
,77F G
Name77H L
=77M N
$str77O ]
,77] ^
Abbreviation77_ k
=77l m
$str77n r
}77s t
)77t u
;77u v
modelBuilder88 
.88 
Entity88 
<88  
State88  %
>88% &
(88& '
)88' (
.88( )
HasData88) 0
(880 1
new881 4
State885 :
(88: ;
)88; <
{88= >
ID88? A
=88B C
$num88D F
,88F G
Name88H L
=88M N
$str88O ]
,88] ^
Abbreviation88_ k
=88l m
$str88n r
}88s t
)88t u
;88u v
modelBuilder99 
.99 
Entity99 
<99  
State99  %
>99% &
(99& '
)99' (
.99( )
HasData99) 0
(990 1
new991 4
State995 :
(99: ;
)99; <
{99= >
ID99? A
=99B C
$num99D F
,99F G
Name99H L
=99M N
$str99O _
,99_ `
Abbreviation99a m
=99n o
$str99p t
}99u v
)99v w
;99w x
modelBuilder:: 
.:: 
Entity:: 
<::  
State::  %
>::% &
(::& '
)::' (
.::( )
HasData::) 0
(::0 1
new::1 4
State::5 :
(::: ;
)::; <
{::= >
ID::? A
=::B C
$num::D F
,::F G
Name::H L
=::M N
$str::O ]
,::] ^
Abbreviation::_ k
=::l m
$str::n r
}::s t
)::t u
;::u v
modelBuilder;; 
.;; 
Entity;; 
<;;  
State;;  %
>;;% &
(;;& '
);;' (
.;;( )
HasData;;) 0
(;;0 1
new;;1 4
State;;5 :
(;;: ;
);;; <
{;;= >
ID;;? A
=;;B C
$num;;D F
,;;F G
Name;;H L
=;;M N
$str;;O Z
,;;Z [
Abbreviation;;\ h
=;;i j
$str;;k o
};;p q
);;q r
;;;r s
modelBuilder<< 
.<< 
Entity<< 
<<<  
State<<  %
><<% &
(<<& '
)<<' (
.<<( )
HasData<<) 0
(<<0 1
new<<1 4
State<<5 :
(<<: ;
)<<; <
{<<= >
ID<<? A
=<<B C
$num<<D F
,<<F G
Name<<H L
=<<M N
$str<<O V
,<<V W
Abbreviation<<X d
=<<e f
$str<<g k
}<<l m
)<<m n
;<<n o
modelBuilder== 
.== 
Entity== 
<==  
State==  %
>==% &
(==& '
)==' (
.==( )
HasData==) 0
(==0 1
new==1 4
State==5 :
(==: ;
)==; <
{=== >
ID==? A
===B C
$num==D F
,==F G
Name==H L
===M N
$str==O U
,==U V
Abbreviation==W c
===d e
$str==f j
}==k l
)==l m
;==m n
modelBuilder>> 
.>> 
Entity>> 
<>>  
State>>  %
>>>% &
(>>& '
)>>' (
.>>( )
HasData>>) 0
(>>0 1
new>>1 4
State>>5 :
(>>: ;
)>>; <
{>>= >
ID>>? A
=>>B C
$num>>D F
,>>F G
Name>>H L
=>>M N
$str>>O X
,>>X Y
Abbreviation>>Z f
=>>g h
$str>>i m
}>>n o
)>>o p
;>>p q
modelBuilder?? 
.?? 
Entity?? 
<??  
State??  %
>??% &
(??& '
)??' (
.??( )
HasData??) 0
(??0 1
new??1 4
State??5 :
(??: ;
)??; <
{??= >
ID??? A
=??B C
$num??D F
,??F G
Name??H L
=??M N
$str??O Y
,??Y Z
Abbreviation??[ g
=??h i
$str??j n
}??o p
)??p q
;??q r
modelBuilder@@ 
.@@ 
Entity@@ 
<@@  
State@@  %
>@@% &
(@@& '
)@@' (
.@@( )
HasData@@) 0
(@@0 1
new@@1 4
State@@5 :
(@@: ;
)@@; <
{@@= >
ID@@? A
=@@B C
$num@@D F
,@@F G
Name@@H L
=@@M N
$str@@O [
,@@[ \
Abbreviation@@] i
=@@j k
$str@@l p
}@@q r
)@@r s
;@@s t
modelBuilderAA 
.AA 
EntityAA 
<AA  
StateAA  %
>AA% &
(AA& '
)AA' (
.AA( )
HasDataAA) 0
(AA0 1
newAA1 4
StateAA5 :
(AA: ;
)AA; <
{AA= >
IDAA? A
=AAB C
$numAAD F
,AAF G
NameAAH L
=AAM N
$strAAO ^
,AA^ _
AbbreviationAA` l
=AAm n
$strAAo s
}AAt u
)AAu v
;AAv w
modelBuilderBB 
.BB 
EntityBB 
<BB  
StateBB  %
>BB% &
(BB& '
)BB' (
.BB( )
HasDataBB) 0
(BB0 1
newBB1 4
StateBB5 :
(BB: ;
)BB; <
{BB= >
IDBB? A
=BBB C
$numBBD F
,BBF G
NameBBH L
=BBM N
$strBBO Z
,BBZ [
AbbreviationBB\ h
=BBi j
$strBBk o
}BBp q
)BBq r
;BBr s
modelBuilderCC 
.CC 
EntityCC 
<CC  
StateCC  %
>CC% &
(CC& '
)CC' (
.CC( )
HasDataCC) 0
(CC0 1
newCC1 4
StateCC5 :
(CC: ;
)CC; <
{CC= >
IDCC? A
=CCB C
$numCCD F
,CCF G
NameCCH L
=CCM N
$strCCO X
,CCX Y
AbbreviationCCZ f
=CCg h
$strCCi m
}CCn o
)CCo p
;CCp q
}DD 	
publicFF 
DbSetFF 
<FF 
OrdersFF 
>FF 
OrdersFF #
{FF$ %
getFF& )
;FF) *
setFF+ .
;FF. /
}FF0 1
publicGG 
DbSetGG 
<GG 
SecretFormulaGG "
>GG" #
SecretFormulaGG$ 1
{GG2 3
getGG4 7
;GG7 8
setGG9 <
;GG< =
}GG> ?
publicHH 
DbSetHH 
<HH 
SizeHH 
>HH 
SizeHH 
{HH  !
getHH" %
;HH% &
setHH' *
;HH* +
}HH, -
publicII 
DbSetII 
<II 
SpecialtyPizzaII #
>II# $
SpecialtyPizzasII% 4
{II5 6
getII7 :
;II: ;
setII< ?
;II? @
}IIA B
publicJJ 
DbSetJJ 
<JJ 
ToppingsJJ 
>JJ 
ToppingsJJ '
{JJ( )
getJJ* -
;JJ- .
setJJ/ 2
;JJ2 3
}JJ4 5
publicKK 
DbSetKK 
<KK 
ChajdPizzaWebAppKK %
.KK% &
ModelsKK& ,
.KK, -
CustomerKK- 5
>KK5 6
CustomerKK7 ?
{KK@ A
getKKB E
;KKE F
setKKG J
;KKJ K
}KKL M
publicMM 
DbSetMM 
<MM 
OrderDetailMM  
>MM  !
OrderDetailsMM" .
{MM/ 0
getMM1 4
;MM4 5
setMM6 9
;MM9 :
}MM; <
publicOO 
DbSetOO 
<OO 
StateOO 
>OO 
StateOO !
{OO" #
getOO$ '
;OO' (
setOO) ,
;OO, -
}OO. /
}RR 
}SS ˘ò
qC:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Migrations\20191120212957_ordersid.cs
	namespace 	
ChajdPizzaWebApp
 
. 

Migrations %
{ 
public 

partial 
class 
ordersid !
:" #
	Migration$ -
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{		 	
migrationBuilder

 
.

 
CreateTable

 (
(

( )
name 
: 
$str #
,# $
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
string& ,
>, -
(- .
nullable. 6
:6 7
false8 =
)= >
,> ?
Name 
= 
table  
.  !
Column! '
<' (
string( .
>. /
(/ 0
	maxLength0 9
:9 :
$num; >
,> ?
nullable@ H
:H I
trueJ N
)N O
,O P
NormalizedName "
=# $
table% *
.* +
Column+ 1
<1 2
string2 8
>8 9
(9 :
	maxLength: C
:C D
$numE H
,H I
nullableJ R
:R S
trueT X
)X Y
,Y Z
ConcurrencyStamp $
=% &
table' ,
., -
Column- 3
<3 4
string4 :
>: ;
(; <
nullable< D
:D E
trueF J
)J K
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% 5
,5 6
x7 8
=>9 ;
x< =
.= >
Id> @
)@ A
;A B
} 
) 
; 
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str #
,# $
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
string& ,
>, -
(- .
nullable. 6
:6 7
false8 =
)= >
,> ?
UserName 
= 
table $
.$ %
Column% +
<+ ,
string, 2
>2 3
(3 4
	maxLength4 =
:= >
$num? B
,B C
nullableD L
:L M
trueN R
)R S
,S T
NormalizedUserName &
=' (
table) .
.. /
Column/ 5
<5 6
string6 <
>< =
(= >
	maxLength> G
:G H
$numI L
,L M
nullableN V
:V W
trueX \
)\ ]
,] ^
Email 
= 
table !
.! "
Column" (
<( )
string) /
>/ 0
(0 1
	maxLength1 :
:: ;
$num< ?
,? @
nullableA I
:I J
trueK O
)O P
,P Q
NormalizedEmail   #
=  $ %
table  & +
.  + ,
Column  , 2
<  2 3
string  3 9
>  9 :
(  : ;
	maxLength  ; D
:  D E
$num  F I
,  I J
nullable  K S
:  S T
true  U Y
)  Y Z
,  Z [
EmailConfirmed!! "
=!!# $
table!!% *
.!!* +
Column!!+ 1
<!!1 2
bool!!2 6
>!!6 7
(!!7 8
nullable!!8 @
:!!@ A
false!!B G
)!!G H
,!!H I
PasswordHash""  
=""! "
table""# (
.""( )
Column"") /
<""/ 0
string""0 6
>""6 7
(""7 8
nullable""8 @
:""@ A
true""B F
)""F G
,""G H
SecurityStamp## !
=##" #
table##$ )
.##) *
Column##* 0
<##0 1
string##1 7
>##7 8
(##8 9
nullable##9 A
:##A B
true##C G
)##G H
,##H I
ConcurrencyStamp$$ $
=$$% &
table$$' ,
.$$, -
Column$$- 3
<$$3 4
string$$4 :
>$$: ;
($$; <
nullable$$< D
:$$D E
true$$F J
)$$J K
,$$K L
PhoneNumber%% 
=%%  !
table%%" '
.%%' (
Column%%( .
<%%. /
string%%/ 5
>%%5 6
(%%6 7
nullable%%7 ?
:%%? @
true%%A E
)%%E F
,%%F G 
PhoneNumberConfirmed&& (
=&&) *
table&&+ 0
.&&0 1
Column&&1 7
<&&7 8
bool&&8 <
>&&< =
(&&= >
nullable&&> F
:&&F G
false&&H M
)&&M N
,&&N O
TwoFactorEnabled'' $
=''% &
table''' ,
.'', -
Column''- 3
<''3 4
bool''4 8
>''8 9
(''9 :
nullable'': B
:''B C
false''D I
)''I J
,''J K

LockoutEnd(( 
=((  
table((! &
.((& '
Column((' -
<((- .
DateTimeOffset((. <
>((< =
(((= >
nullable((> F
:((F G
true((H L
)((L M
,((M N
LockoutEnabled)) "
=))# $
table))% *
.))* +
Column))+ 1
<))1 2
bool))2 6
>))6 7
())7 8
nullable))8 @
:))@ A
false))B G
)))G H
,))H I
AccessFailedCount** %
=**& '
table**( -
.**- .
Column**. 4
<**4 5
int**5 8
>**8 9
(**9 :
nullable**: B
:**B C
false**D I
)**I J
}++ 
,++ 
constraints,, 
:,, 
table,, "
=>,,# %
{-- 
table.. 
... 

PrimaryKey.. $
(..$ %
$str..% 5
,..5 6
x..7 8
=>..9 ;
x..< =
...= >
Id..> @
)..@ A
;..A B
}// 
)// 
;// 
migrationBuilder11 
.11 
CreateTable11 (
(11( )
name22 
:22 
$str22 %
,22% &
columns33 
:33 
table33 
=>33 !
new33" %
{44 
Id55 
=55 
table55 
.55 
Column55 %
<55% &
int55& )
>55) *
(55* +
nullable55+ 3
:553 4
false555 :
)55: ;
.66 

Annotation66 #
(66# $
$str66$ 8
,668 9
$str66: @
)66@ A
,66A B
Price77 
=77 
table77 !
.77! "
Column77" (
<77( )
decimal77) 0
>770 1
(771 2
type772 6
:776 7
$str778 G
,77G H
nullable77I Q
:77Q R
false77S X
)77X Y
}88 
,88 
constraints99 
:99 
table99 "
=>99# %
{:: 
table;; 
.;; 

PrimaryKey;; $
(;;$ %
$str;;% 7
,;;7 8
x;;9 :
=>;;; =
x;;> ?
.;;? @
Id;;@ B
);;B C
;;;C D
}<< 
)<< 
;<< 
migrationBuilder>> 
.>> 
CreateTable>> (
(>>( )
name?? 
:?? 
$str?? 
,?? 
columns@@ 
:@@ 
table@@ 
=>@@ !
new@@" %
{AA 
IdBB 
=BB 
tableBB 
.BB 
ColumnBB %
<BB% &
intBB& )
>BB) *
(BB* +
nullableBB+ 3
:BB3 4
falseBB5 :
)BB: ;
.CC 

AnnotationCC #
(CC# $
$strCC$ 8
,CC8 9
$strCC: @
)CC@ A
,CCA B
BaseSizeDD 
=DD 
tableDD $
.DD$ %
ColumnDD% +
<DD+ ,
stringDD, 2
>DD2 3
(DD3 4
nullableDD4 <
:DD< =
falseDD> C
)DDC D
,DDD E
S_PriceEE 
=EE 
tableEE #
.EE# $
ColumnEE$ *
<EE* +
decimalEE+ 2
>EE2 3
(EE3 4
typeEE4 8
:EE8 9
$strEE: I
,EEI J
nullableEEK S
:EES T
falseEEU Z
)EEZ [
}FF 
,FF 
constraintsGG 
:GG 
tableGG "
=>GG# %
{HH 
tableII 
.II 

PrimaryKeyII $
(II$ %
$strII% .
,II. /
xII0 1
=>II2 4
xII5 6
.II6 7
IdII7 9
)II9 :
;II: ;
}JJ 
)JJ 
;JJ 
migrationBuilderLL 
.LL 
CreateTableLL (
(LL( )
nameMM 
:MM 
$strMM '
,MM' (
columnsNN 
:NN 
tableNN 
=>NN !
newNN" %
{OO 
IDPP 
=PP 
tablePP 
.PP 
ColumnPP %
<PP% &
intPP& )
>PP) *
(PP* +
nullablePP+ 3
:PP3 4
falsePP5 :
)PP: ;
.QQ 

AnnotationQQ #
(QQ# $
$strQQ$ 8
,QQ8 9
$strQQ: @
)QQ@ A
,QQA B
NameRR 
=RR 
tableRR  
.RR  !
ColumnRR! '
<RR' (
stringRR( .
>RR. /
(RR/ 0
nullableRR0 8
:RR8 9
trueRR: >
)RR> ?
,RR? @
PriceSS 
=SS 
tableSS !
.SS! "
ColumnSS" (
<SS( )
decimalSS) 0
>SS0 1
(SS1 2
typeSS2 6
:SS6 7
$strSS8 G
,SSG H
nullableSSI Q
:SSQ R
falseSSS X
)SSX Y
,SSY Z
DescriptionTT 
=TT  !
tableTT" '
.TT' (
ColumnTT( .
<TT. /
stringTT/ 5
>TT5 6
(TT6 7
nullableTT7 ?
:TT? @
trueTTA E
)TTE F
}UU 
,UU 
constraintsVV 
:VV 
tableVV "
=>VV# %
{WW 
tableXX 
.XX 

PrimaryKeyXX $
(XX$ %
$strXX% 9
,XX9 :
xXX; <
=>XX= ?
xXX@ A
.XXA B
IDXXB D
)XXD E
;XXE F
}YY 
)YY 
;YY 
migrationBuilder[[ 
.[[ 
CreateTable[[ (
([[( )
name\\ 
:\\ 
$str\\ 
,\\ 
columns]] 
:]] 
table]] 
=>]] !
new]]" %
{^^ 
ID__ 
=__ 
table__ 
.__ 
Column__ %
<__% &
int__& )
>__) *
(__* +
nullable__+ 3
:__3 4
false__5 :
)__: ;
.`` 

Annotation`` #
(``# $
$str``$ 8
,``8 9
$str``: @
)``@ A
,``A B
Nameaa 
=aa 
tableaa  
.aa  !
Columnaa! '
<aa' (
stringaa( .
>aa. /
(aa/ 0
nullableaa0 8
:aa8 9
trueaa: >
)aa> ?
,aa? @
Abbreviationbb  
=bb! "
tablebb# (
.bb( )
Columnbb) /
<bb/ 0
stringbb0 6
>bb6 7
(bb7 8
	maxLengthbb8 A
:bbA B
$numbbC D
,bbD E
nullablebbF N
:bbN O
truebbP T
)bbT U
}cc 
,cc 
constraintsdd 
:dd 
tabledd "
=>dd# %
{ee 
tableff 
.ff 

PrimaryKeyff $
(ff$ %
$strff% /
,ff/ 0
xff1 2
=>ff3 5
xff6 7
.ff7 8
IDff8 :
)ff: ;
;ff; <
}gg 
)gg 
;gg 
migrationBuilderii 
.ii 
CreateTableii (
(ii( )
namejj 
:jj 
$strjj  
,jj  !
columnskk 
:kk 
tablekk 
=>kk !
newkk" %
{ll 
Idmm 
=mm 
tablemm 
.mm 
Columnmm %
<mm% &
intmm& )
>mm) *
(mm* +
nullablemm+ 3
:mm3 4
falsemm5 :
)mm: ;
.nn 

Annotationnn #
(nn# $
$strnn$ 8
,nn8 9
$strnn: @
)nn@ A
,nnA B
Nameoo 
=oo 
tableoo  
.oo  !
Columnoo! '
<oo' (
stringoo( .
>oo. /
(oo/ 0
nullableoo0 8
:oo8 9
falseoo: ?
)oo? @
}pp 
,pp 
constraintsqq 
:qq 
tableqq "
=>qq# %
{rr 
tabless 
.ss 

PrimaryKeyss $
(ss$ %
$strss% 2
,ss2 3
xss4 5
=>ss6 8
xss9 :
.ss: ;
Idss; =
)ss= >
;ss> ?
}tt 
)tt 
;tt 
migrationBuildervv 
.vv 
CreateTablevv (
(vv( )
nameww 
:ww 
$strww (
,ww( )
columnsxx 
:xx 
tablexx 
=>xx !
newxx" %
{yy 
Idzz 
=zz 
tablezz 
.zz 
Columnzz %
<zz% &
intzz& )
>zz) *
(zz* +
nullablezz+ 3
:zz3 4
falsezz5 :
)zz: ;
.{{ 

Annotation{{ #
({{# $
$str{{$ 8
,{{8 9
$str{{: @
){{@ A
,{{A B
RoleId|| 
=|| 
table|| "
.||" #
Column||# )
<||) *
string||* 0
>||0 1
(||1 2
nullable||2 :
:||: ;
false||< A
)||A B
,||B C
	ClaimType}} 
=}} 
table}}  %
.}}% &
Column}}& ,
<}}, -
string}}- 3
>}}3 4
(}}4 5
nullable}}5 =
:}}= >
true}}? C
)}}C D
,}}D E

ClaimValue~~ 
=~~  
table~~! &
.~~& '
Column~~' -
<~~- .
string~~. 4
>~~4 5
(~~5 6
nullable~~6 >
:~~> ?
true~~@ D
)~~D E
} 
, 
constraints
ÄÄ 
:
ÄÄ 
table
ÄÄ "
=>
ÄÄ# %
{
ÅÅ 
table
ÇÇ 
.
ÇÇ 

PrimaryKey
ÇÇ $
(
ÇÇ$ %
$str
ÇÇ% :
,
ÇÇ: ;
x
ÇÇ< =
=>
ÇÇ> @
x
ÇÇA B
.
ÇÇB C
Id
ÇÇC E
)
ÇÇE F
;
ÇÇF G
table
ÉÉ 
.
ÉÉ 

ForeignKey
ÉÉ $
(
ÉÉ$ %
name
ÑÑ 
:
ÑÑ 
$str
ÑÑ F
,
ÑÑF G
column
ÖÖ 
:
ÖÖ 
x
ÖÖ  !
=>
ÖÖ" $
x
ÖÖ% &
.
ÖÖ& '
RoleId
ÖÖ' -
,
ÖÖ- .
principalTable
ÜÜ &
:
ÜÜ& '
$str
ÜÜ( 5
,
ÜÜ5 6
principalColumn
áá '
:
áá' (
$str
áá) -
,
áá- .
onDelete
àà  
:
àà  !
ReferentialAction
àà" 3
.
àà3 4
Cascade
àà4 ;
)
àà; <
;
àà< =
}
ââ 
)
ââ 
;
ââ 
migrationBuilder
ãã 
.
ãã 
CreateTable
ãã (
(
ãã( )
name
åå 
:
åå 
$str
åå (
,
åå( )
columns
çç 
:
çç 
table
çç 
=>
çç !
new
çç" %
{
éé 
Id
èè 
=
èè 
table
èè 
.
èè 
Column
èè %
<
èè% &
int
èè& )
>
èè) *
(
èè* +
nullable
èè+ 3
:
èè3 4
false
èè5 :
)
èè: ;
.
êê 

Annotation
êê #
(
êê# $
$str
êê$ 8
,
êê8 9
$str
êê: @
)
êê@ A
,
êêA B
UserId
ëë 
=
ëë 
table
ëë "
.
ëë" #
Column
ëë# )
<
ëë) *
string
ëë* 0
>
ëë0 1
(
ëë1 2
nullable
ëë2 :
:
ëë: ;
false
ëë< A
)
ëëA B
,
ëëB C
	ClaimType
íí 
=
íí 
table
íí  %
.
íí% &
Column
íí& ,
<
íí, -
string
íí- 3
>
íí3 4
(
íí4 5
nullable
íí5 =
:
íí= >
true
íí? C
)
ííC D
,
ííD E

ClaimValue
ìì 
=
ìì  
table
ìì! &
.
ìì& '
Column
ìì' -
<
ìì- .
string
ìì. 4
>
ìì4 5
(
ìì5 6
nullable
ìì6 >
:
ìì> ?
true
ìì@ D
)
ììD E
}
îî 
,
îî 
constraints
ïï 
:
ïï 
table
ïï "
=>
ïï# %
{
ññ 
table
óó 
.
óó 

PrimaryKey
óó $
(
óó$ %
$str
óó% :
,
óó: ;
x
óó< =
=>
óó> @
x
óóA B
.
óóB C
Id
óóC E
)
óóE F
;
óóF G
table
òò 
.
òò 

ForeignKey
òò $
(
òò$ %
name
ôô 
:
ôô 
$str
ôô F
,
ôôF G
column
öö 
:
öö 
x
öö  !
=>
öö" $
x
öö% &
.
öö& '
UserId
öö' -
,
öö- .
principalTable
õõ &
:
õõ& '
$str
õõ( 5
,
õõ5 6
principalColumn
úú '
:
úú' (
$str
úú) -
,
úú- .
onDelete
ùù  
:
ùù  !
ReferentialAction
ùù" 3
.
ùù3 4
Cascade
ùù4 ;
)
ùù; <
;
ùù< =
}
ûû 
)
ûû 
;
ûû 
migrationBuilder
†† 
.
†† 
CreateTable
†† (
(
††( )
name
°° 
:
°° 
$str
°° (
,
°°( )
columns
¢¢ 
:
¢¢ 
table
¢¢ 
=>
¢¢ !
new
¢¢" %
{
££ 
LoginProvider
§§ !
=
§§" #
table
§§$ )
.
§§) *
Column
§§* 0
<
§§0 1
string
§§1 7
>
§§7 8
(
§§8 9
	maxLength
§§9 B
:
§§B C
$num
§§D G
,
§§G H
nullable
§§I Q
:
§§Q R
false
§§S X
)
§§X Y
,
§§Y Z
ProviderKey
•• 
=
••  !
table
••" '
.
••' (
Column
••( .
<
••. /
string
••/ 5
>
••5 6
(
••6 7
	maxLength
••7 @
:
••@ A
$num
••B E
,
••E F
nullable
••G O
:
••O P
false
••Q V
)
••V W
,
••W X!
ProviderDisplayName
¶¶ '
=
¶¶( )
table
¶¶* /
.
¶¶/ 0
Column
¶¶0 6
<
¶¶6 7
string
¶¶7 =
>
¶¶= >
(
¶¶> ?
nullable
¶¶? G
:
¶¶G H
true
¶¶I M
)
¶¶M N
,
¶¶N O
UserId
ßß 
=
ßß 
table
ßß "
.
ßß" #
Column
ßß# )
<
ßß) *
string
ßß* 0
>
ßß0 1
(
ßß1 2
nullable
ßß2 :
:
ßß: ;
false
ßß< A
)
ßßA B
}
®® 
,
®® 
constraints
©© 
:
©© 
table
©© "
=>
©©# %
{
™™ 
table
´´ 
.
´´ 

PrimaryKey
´´ $
(
´´$ %
$str
´´% :
,
´´: ;
x
´´< =
=>
´´> @
new
´´A D
{
´´E F
x
´´G H
.
´´H I
LoginProvider
´´I V
,
´´V W
x
´´X Y
.
´´Y Z
ProviderKey
´´Z e
}
´´f g
)
´´g h
;
´´h i
table
¨¨ 
.
¨¨ 

ForeignKey
¨¨ $
(
¨¨$ %
name
≠≠ 
:
≠≠ 
$str
≠≠ F
,
≠≠F G
column
ÆÆ 
:
ÆÆ 
x
ÆÆ  !
=>
ÆÆ" $
x
ÆÆ% &
.
ÆÆ& '
UserId
ÆÆ' -
,
ÆÆ- .
principalTable
ØØ &
:
ØØ& '
$str
ØØ( 5
,
ØØ5 6
principalColumn
∞∞ '
:
∞∞' (
$str
∞∞) -
,
∞∞- .
onDelete
±±  
:
±±  !
ReferentialAction
±±" 3
.
±±3 4
Cascade
±±4 ;
)
±±; <
;
±±< =
}
≤≤ 
)
≤≤ 
;
≤≤ 
migrationBuilder
¥¥ 
.
¥¥ 
CreateTable
¥¥ (
(
¥¥( )
name
µµ 
:
µµ 
$str
µµ '
,
µµ' (
columns
∂∂ 
:
∂∂ 
table
∂∂ 
=>
∂∂ !
new
∂∂" %
{
∑∑ 
UserId
∏∏ 
=
∏∏ 
table
∏∏ "
.
∏∏" #
Column
∏∏# )
<
∏∏) *
string
∏∏* 0
>
∏∏0 1
(
∏∏1 2
nullable
∏∏2 :
:
∏∏: ;
false
∏∏< A
)
∏∏A B
,
∏∏B C
RoleId
ππ 
=
ππ 
table
ππ "
.
ππ" #
Column
ππ# )
<
ππ) *
string
ππ* 0
>
ππ0 1
(
ππ1 2
nullable
ππ2 :
:
ππ: ;
false
ππ< A
)
ππA B
}
∫∫ 
,
∫∫ 
constraints
ªª 
:
ªª 
table
ªª "
=>
ªª# %
{
ºº 
table
ΩΩ 
.
ΩΩ 

PrimaryKey
ΩΩ $
(
ΩΩ$ %
$str
ΩΩ% 9
,
ΩΩ9 :
x
ΩΩ; <
=>
ΩΩ= ?
new
ΩΩ@ C
{
ΩΩD E
x
ΩΩF G
.
ΩΩG H
UserId
ΩΩH N
,
ΩΩN O
x
ΩΩP Q
.
ΩΩQ R
RoleId
ΩΩR X
}
ΩΩY Z
)
ΩΩZ [
;
ΩΩ[ \
table
ææ 
.
ææ 

ForeignKey
ææ $
(
ææ$ %
name
øø 
:
øø 
$str
øø E
,
øøE F
column
¿¿ 
:
¿¿ 
x
¿¿  !
=>
¿¿" $
x
¿¿% &
.
¿¿& '
RoleId
¿¿' -
,
¿¿- .
principalTable
¡¡ &
:
¡¡& '
$str
¡¡( 5
,
¡¡5 6
principalColumn
¬¬ '
:
¬¬' (
$str
¬¬) -
,
¬¬- .
onDelete
√√  
:
√√  !
ReferentialAction
√√" 3
.
√√3 4
Cascade
√√4 ;
)
√√; <
;
√√< =
table
ƒƒ 
.
ƒƒ 

ForeignKey
ƒƒ $
(
ƒƒ$ %
name
≈≈ 
:
≈≈ 
$str
≈≈ E
,
≈≈E F
column
∆∆ 
:
∆∆ 
x
∆∆  !
=>
∆∆" $
x
∆∆% &
.
∆∆& '
UserId
∆∆' -
,
∆∆- .
principalTable
«« &
:
««& '
$str
««( 5
,
««5 6
principalColumn
»» '
:
»»' (
$str
»») -
,
»»- .
onDelete
……  
:
……  !
ReferentialAction
……" 3
.
……3 4
Cascade
……4 ;
)
……; <
;
……< =
}
   
)
   
;
   
migrationBuilder
ÃÃ 
.
ÃÃ 
CreateTable
ÃÃ (
(
ÃÃ( )
name
ÕÕ 
:
ÕÕ 
$str
ÕÕ (
,
ÕÕ( )
columns
ŒŒ 
:
ŒŒ 
table
ŒŒ 
=>
ŒŒ !
new
ŒŒ" %
{
œœ 
UserId
–– 
=
–– 
table
–– "
.
––" #
Column
––# )
<
––) *
string
––* 0
>
––0 1
(
––1 2
nullable
––2 :
:
––: ;
false
––< A
)
––A B
,
––B C
LoginProvider
—— !
=
——" #
table
——$ )
.
——) *
Column
——* 0
<
——0 1
string
——1 7
>
——7 8
(
——8 9
	maxLength
——9 B
:
——B C
$num
——D G
,
——G H
nullable
——I Q
:
——Q R
false
——S X
)
——X Y
,
——Y Z
Name
““ 
=
““ 
table
““  
.
““  !
Column
““! '
<
““' (
string
““( .
>
““. /
(
““/ 0
	maxLength
““0 9
:
““9 :
$num
““; >
,
““> ?
nullable
““@ H
:
““H I
false
““J O
)
““O P
,
““P Q
Value
”” 
=
”” 
table
”” !
.
””! "
Column
””" (
<
””( )
string
””) /
>
””/ 0
(
””0 1
nullable
””1 9
:
””9 :
true
””; ?
)
””? @
}
‘‘ 
,
‘‘ 
constraints
’’ 
:
’’ 
table
’’ "
=>
’’# %
{
÷÷ 
table
◊◊ 
.
◊◊ 

PrimaryKey
◊◊ $
(
◊◊$ %
$str
◊◊% :
,
◊◊: ;
x
◊◊< =
=>
◊◊> @
new
◊◊A D
{
◊◊E F
x
◊◊G H
.
◊◊H I
UserId
◊◊I O
,
◊◊O P
x
◊◊Q R
.
◊◊R S
LoginProvider
◊◊S `
,
◊◊` a
x
◊◊b c
.
◊◊c d
Name
◊◊d h
}
◊◊i j
)
◊◊j k
;
◊◊k l
table
ÿÿ 
.
ÿÿ 

ForeignKey
ÿÿ $
(
ÿÿ$ %
name
ŸŸ 
:
ŸŸ 
$str
ŸŸ F
,
ŸŸF G
column
⁄⁄ 
:
⁄⁄ 
x
⁄⁄  !
=>
⁄⁄" $
x
⁄⁄% &
.
⁄⁄& '
UserId
⁄⁄' -
,
⁄⁄- .
principalTable
€€ &
:
€€& '
$str
€€( 5
,
€€5 6
principalColumn
‹‹ '
:
‹‹' (
$str
‹‹) -
,
‹‹- .
onDelete
››  
:
››  !
ReferentialAction
››" 3
.
››3 4
Cascade
››4 ;
)
››; <
;
››< =
}
ﬁﬁ 
)
ﬁﬁ 
;
ﬁﬁ 
migrationBuilder
‡‡ 
.
‡‡ 
CreateTable
‡‡ (
(
‡‡( )
name
·· 
:
·· 
$str
··  
,
··  !
columns
‚‚ 
:
‚‚ 
table
‚‚ 
=>
‚‚ !
new
‚‚" %
{
„„ 
Id
‰‰ 
=
‰‰ 
table
‰‰ 
.
‰‰ 
Column
‰‰ %
<
‰‰% &
int
‰‰& )
>
‰‰) *
(
‰‰* +
nullable
‰‰+ 3
:
‰‰3 4
false
‰‰5 :
)
‰‰: ;
.
ÂÂ 

Annotation
ÂÂ #
(
ÂÂ# $
$str
ÂÂ$ 8
,
ÂÂ8 9
$str
ÂÂ: @
)
ÂÂ@ A
,
ÂÂA B
UserName
ÊÊ 
=
ÊÊ 
table
ÊÊ $
.
ÊÊ$ %
Column
ÊÊ% +
<
ÊÊ+ ,
string
ÊÊ, 2
>
ÊÊ2 3
(
ÊÊ3 4
nullable
ÊÊ4 <
:
ÊÊ< =
true
ÊÊ> B
)
ÊÊB C
,
ÊÊC D
Name
ÁÁ 
=
ÁÁ 
table
ÁÁ  
.
ÁÁ  !
Column
ÁÁ! '
<
ÁÁ' (
string
ÁÁ( .
>
ÁÁ. /
(
ÁÁ/ 0
nullable
ÁÁ0 8
:
ÁÁ8 9
true
ÁÁ: >
)
ÁÁ> ?
,
ÁÁ? @
Street
ËË 
=
ËË 
table
ËË "
.
ËË" #
Column
ËË# )
<
ËË) *
string
ËË* 0
>
ËË0 1
(
ËË1 2
nullable
ËË2 :
:
ËË: ;
true
ËË< @
)
ËË@ A
,
ËËA B
City
ÈÈ 
=
ÈÈ 
table
ÈÈ  
.
ÈÈ  !
Column
ÈÈ! '
<
ÈÈ' (
string
ÈÈ( .
>
ÈÈ. /
(
ÈÈ/ 0
nullable
ÈÈ0 8
:
ÈÈ8 9
true
ÈÈ: >
)
ÈÈ> ?
,
ÈÈ? @
StateID
ÍÍ 
=
ÍÍ 
table
ÍÍ #
.
ÍÍ# $
Column
ÍÍ$ *
<
ÍÍ* +
int
ÍÍ+ .
>
ÍÍ. /
(
ÍÍ/ 0
nullable
ÍÍ0 8
:
ÍÍ8 9
false
ÍÍ: ?
)
ÍÍ? @
,
ÍÍ@ A
ZipCode
ÎÎ 
=
ÎÎ 
table
ÎÎ #
.
ÎÎ# $
Column
ÎÎ$ *
<
ÎÎ* +
int
ÎÎ+ .
>
ÎÎ. /
(
ÎÎ/ 0
nullable
ÎÎ0 8
:
ÎÎ8 9
false
ÎÎ: ?
)
ÎÎ? @
}
ÏÏ 
,
ÏÏ 
constraints
ÌÌ 
:
ÌÌ 
table
ÌÌ "
=>
ÌÌ# %
{
ÓÓ 
table
ÔÔ 
.
ÔÔ 

PrimaryKey
ÔÔ $
(
ÔÔ$ %
$str
ÔÔ% 2
,
ÔÔ2 3
x
ÔÔ4 5
=>
ÔÔ6 8
x
ÔÔ9 :
.
ÔÔ: ;
Id
ÔÔ; =
)
ÔÔ= >
;
ÔÔ> ?
table
 
.
 

ForeignKey
 $
(
$ %
name
ÒÒ 
:
ÒÒ 
$str
ÒÒ 9
,
ÒÒ9 :
column
ÚÚ 
:
ÚÚ 
x
ÚÚ  !
=>
ÚÚ" $
x
ÚÚ% &
.
ÚÚ& '
StateID
ÚÚ' .
,
ÚÚ. /
principalTable
ÛÛ &
:
ÛÛ& '
$str
ÛÛ( /
,
ÛÛ/ 0
principalColumn
ÙÙ '
:
ÙÙ' (
$str
ÙÙ) -
,
ÙÙ- .
onDelete
ıı  
:
ıı  !
ReferentialAction
ıı" 3
.
ıı3 4
Cascade
ıı4 ;
)
ıı; <
;
ıı< =
}
ˆˆ 
)
ˆˆ 
;
ˆˆ 
migrationBuilder
¯¯ 
.
¯¯ 
CreateTable
¯¯ (
(
¯¯( )
name
˘˘ 
:
˘˘ 
$str
˘˘ 
,
˘˘ 
columns
˙˙ 
:
˙˙ 
table
˙˙ 
=>
˙˙ !
new
˙˙" %
{
˚˚ 
Id
¸¸ 
=
¸¸ 
table
¸¸ 
.
¸¸ 
Column
¸¸ %
<
¸¸% &
int
¸¸& )
>
¸¸) *
(
¸¸* +
nullable
¸¸+ 3
:
¸¸3 4
false
¸¸5 :
)
¸¸: ;
.
˝˝ 

Annotation
˝˝ #
(
˝˝# $
$str
˝˝$ 8
,
˝˝8 9
$str
˝˝: @
)
˝˝@ A
,
˝˝A B

CustomerId
˛˛ 
=
˛˛  
table
˛˛! &
.
˛˛& '
Column
˛˛' -
<
˛˛- .
int
˛˛. 1
>
˛˛1 2
(
˛˛2 3
nullable
˛˛3 ;
:
˛˛; <
false
˛˛= B
)
˛˛B C
,
˛˛C D
NetPrice
ˇˇ 
=
ˇˇ 
table
ˇˇ $
.
ˇˇ$ %
Column
ˇˇ% +
<
ˇˇ+ ,
decimal
ˇˇ, 3
>
ˇˇ3 4
(
ˇˇ4 5
type
ˇˇ5 9
:
ˇˇ9 :
$str
ˇˇ; J
,
ˇˇJ K
nullable
ˇˇL T
:
ˇˇT U
false
ˇˇV [
)
ˇˇ[ \
,
ˇˇ\ ]
isCompleted
ÄÄ 
=
ÄÄ  !
table
ÄÄ" '
.
ÄÄ' (
Column
ÄÄ( .
<
ÄÄ. /
bool
ÄÄ/ 3
>
ÄÄ3 4
(
ÄÄ4 5
nullable
ÄÄ5 =
:
ÄÄ= >
false
ÄÄ? D
)
ÄÄD E
,
ÄÄE F

TimePlaced
ÅÅ 
=
ÅÅ  
table
ÅÅ! &
.
ÅÅ& '
Column
ÅÅ' -
<
ÅÅ- .
DateTime
ÅÅ. 6
>
ÅÅ6 7
(
ÅÅ7 8
nullable
ÅÅ8 @
:
ÅÅ@ A
false
ÅÅB G
)
ÅÅG H
,
ÅÅH I
DeliveryAddress
ÇÇ #
=
ÇÇ$ %
table
ÇÇ& +
.
ÇÇ+ ,
Column
ÇÇ, 2
<
ÇÇ2 3
string
ÇÇ3 9
>
ÇÇ9 :
(
ÇÇ: ;
nullable
ÇÇ; C
:
ÇÇC D
true
ÇÇE I
)
ÇÇI J
}
ÉÉ 
,
ÉÉ 
constraints
ÑÑ 
:
ÑÑ 
table
ÑÑ "
=>
ÑÑ# %
{
ÖÖ 
table
ÜÜ 
.
ÜÜ 

PrimaryKey
ÜÜ $
(
ÜÜ$ %
$str
ÜÜ% 0
,
ÜÜ0 1
x
ÜÜ2 3
=>
ÜÜ4 6
x
ÜÜ7 8
.
ÜÜ8 9
Id
ÜÜ9 ;
)
ÜÜ; <
;
ÜÜ< =
table
áá 
.
áá 

ForeignKey
áá $
(
áá$ %
name
àà 
:
àà 
$str
àà =
,
àà= >
column
ââ 
:
ââ 
x
ââ  !
=>
ââ" $
x
ââ% &
.
ââ& '

CustomerId
ââ' 1
,
ââ1 2
principalTable
ää &
:
ää& '
$str
ää( 2
,
ää2 3
principalColumn
ãã '
:
ãã' (
$str
ãã) -
,
ãã- .
onDelete
åå  
:
åå  !
ReferentialAction
åå" 3
.
åå3 4
Cascade
åå4 ;
)
åå; <
;
åå< =
}
çç 
)
çç 
;
çç 
migrationBuilder
èè 
.
èè 
CreateTable
èè (
(
èè( )
name
êê 
:
êê 
$str
êê $
,
êê$ %
columns
ëë 
:
ëë 
table
ëë 
=>
ëë !
new
ëë" %
{
íí 
Id
ìì 
=
ìì 
table
ìì 
.
ìì 
Column
ìì %
<
ìì% &
int
ìì& )
>
ìì) *
(
ìì* +
nullable
ìì+ 3
:
ìì3 4
false
ìì5 :
)
ìì: ;
.
îî 

Annotation
îî #
(
îî# $
$str
îî$ 8
,
îî8 9
$str
îî: @
)
îî@ A
,
îîA B
OrdersId
ïï 
=
ïï 
table
ïï $
.
ïï$ %
Column
ïï% +
<
ïï+ ,
int
ïï, /
>
ïï/ 0
(
ïï0 1
nullable
ïï1 9
:
ïï9 :
false
ïï; @
)
ïï@ A
,
ïïA B
SizeId
ññ 
=
ññ 
table
ññ "
.
ññ" #
Column
ññ# )
<
ññ) *
int
ññ* -
>
ññ- .
(
ññ. /
nullable
ññ/ 7
:
ññ7 8
false
ññ9 >
)
ññ> ?
,
ññ? @
ToppingsSelected
óó $
=
óó% &
table
óó' ,
.
óó, -
Column
óó- 3
<
óó3 4
string
óó4 :
>
óó: ;
(
óó; <
nullable
óó< D
:
óóD E
true
óóF J
)
óóJ K
,
óóK L
ToppingsCount
òò !
=
òò" #
table
òò$ )
.
òò) *
Column
òò* 0
<
òò0 1
int
òò1 4
>
òò4 5
(
òò5 6
nullable
òò6 >
:
òò> ?
false
òò@ E
)
òòE F
,
òòF G
Price
ôô 
=
ôô 
table
ôô !
.
ôô! "
Column
ôô" (
<
ôô( )
decimal
ôô) 0
>
ôô0 1
(
ôô1 2
type
ôô2 6
:
ôô6 7
$str
ôô8 G
,
ôôG H
nullable
ôôI Q
:
ôôQ R
false
ôôS X
)
ôôX Y
,
ôôY Z
SpecialRequest
öö "
=
öö# $
table
öö% *
.
öö* +
Column
öö+ 1
<
öö1 2
string
öö2 8
>
öö8 9
(
öö9 :
nullable
öö: B
:
ööB C
true
ööD H
)
ööH I
}
õõ 
,
õõ 
constraints
úú 
:
úú 
table
úú "
=>
úú# %
{
ùù 
table
ûû 
.
ûû 

PrimaryKey
ûû $
(
ûû$ %
$str
ûû% 6
,
ûû6 7
x
ûû8 9
=>
ûû: <
x
ûû= >
.
ûû> ?
Id
ûû? A
)
ûûA B
;
ûûB C
table
üü 
.
üü 

ForeignKey
üü $
(
üü$ %
name
†† 
:
†† 
$str
†† ?
,
††? @
column
°° 
:
°° 
x
°°  !
=>
°°" $
x
°°% &
.
°°& '
OrdersId
°°' /
,
°°/ 0
principalTable
¢¢ &
:
¢¢& '
$str
¢¢( 0
,
¢¢0 1
principalColumn
££ '
:
££' (
$str
££) -
,
££- .
onDelete
§§  
:
§§  !
ReferentialAction
§§" 3
.
§§3 4
Cascade
§§4 ;
)
§§; <
;
§§< =
table
•• 
.
•• 

ForeignKey
•• $
(
••$ %
name
¶¶ 
:
¶¶ 
$str
¶¶ ;
,
¶¶; <
column
ßß 
:
ßß 
x
ßß  !
=>
ßß" $
x
ßß% &
.
ßß& '
SizeId
ßß' -
,
ßß- .
principalTable
®® &
:
®®& '
$str
®®( .
,
®®. /
principalColumn
©© '
:
©©' (
$str
©©) -
,
©©- .
onDelete
™™  
:
™™  !
ReferentialAction
™™" 3
.
™™3 4
Cascade
™™4 ;
)
™™; <
;
™™< =
}
´´ 
)
´´ 
;
´´ 
migrationBuilder
≠≠ 
.
≠≠ 

InsertData
≠≠ '
(
≠≠' (
table
ÆÆ 
:
ÆÆ 
$str
ÆÆ 
,
ÆÆ 
columns
ØØ 
:
ØØ 
new
ØØ 
[
ØØ 
]
ØØ 
{
ØØ  
$str
ØØ! %
,
ØØ% &
$str
ØØ' 5
,
ØØ5 6
$str
ØØ7 =
}
ØØ> ?
,
ØØ? @
values
∞∞ 
:
∞∞ 
new
∞∞ 
object
∞∞ "
[
∞∞" #
,
∞∞# $
]
∞∞$ %
{
±± 
{
≤≤ 
$num
≤≤ 
,
≤≤ 
$str
≤≤ 
,
≤≤ 
$str
≤≤ (
}
≤≤) *
,
≤≤* +
{
≥≥ 
$num
≥≥ 
,
≥≥ 
$str
≥≥ 
,
≥≥ 
$str
≥≥  (
}
≥≥) *
,
≥≥* +
{
¥¥ 
$num
¥¥ 
,
¥¥ 
$str
¥¥ 
,
¥¥ 
$str
¥¥  /
}
¥¥0 1
,
¥¥1 2
{
µµ 
$num
µµ 
,
µµ 
$str
µµ 
,
µµ 
$str
µµ  ,
}
µµ- .
,
µµ. /
{
∂∂ 
$num
∂∂ 
,
∂∂ 
$str
∂∂ 
,
∂∂ 
$str
∂∂  ,
}
∂∂- .
,
∂∂. /
{
∑∑ 
$num
∑∑ 
,
∑∑ 
$str
∑∑ 
,
∑∑ 
$str
∑∑  *
}
∑∑+ ,
,
∑∑, -
{
∏∏ 
$num
∏∏ 
,
∏∏ 
$str
∏∏ 
,
∏∏ 
$str
∏∏  0
}
∏∏1 2
,
∏∏2 3
{
ππ 
$num
ππ 
,
ππ 
$str
ππ 
,
ππ 
$str
ππ  .
}
ππ/ 0
,
ππ0 1
{
∫∫ 
$num
∫∫ 
,
∫∫ 
$str
∫∫ 
,
∫∫ 
$str
∫∫  &
}
∫∫' (
,
∫∫( )
{
ªª 
$num
ªª 
,
ªª 
$str
ªª 
,
ªª 
$str
ªª  *
}
ªª+ ,
,
ªª, -
{
ºº 
$num
ºº 
,
ºº 
$str
ºº 
,
ºº 
$str
ºº  (
}
ºº) *
,
ºº* +
{
ΩΩ 
$num
ΩΩ 
,
ΩΩ 
$str
ΩΩ 
,
ΩΩ 
$str
ΩΩ  .
}
ΩΩ/ 0
,
ΩΩ0 1
{
ææ 
$num
ææ 
,
ææ 
$str
ææ 
,
ææ 
$str
ææ  .
}
ææ/ 0
,
ææ0 1
{
øø 
$num
øø 
,
øø 
$str
øø 
,
øø 
$str
øø  0
}
øø1 2
,
øø2 3
{
¿¿ 
$num
¿¿ 
,
¿¿ 
$str
¿¿ 
,
¿¿ 
$str
¿¿  .
}
¿¿/ 0
,
¿¿0 1
{
¡¡ 
$num
¡¡ 
,
¡¡ 
$str
¡¡ 
,
¡¡ 
$str
¡¡  +
}
¡¡, -
,
¡¡- .
{
¬¬ 
$num
¬¬ 
,
¬¬ 
$str
¬¬ 
,
¬¬ 
$str
¬¬  '
}
¬¬( )
,
¬¬) *
{
√√ 
$num
√√ 
,
√√ 
$str
√√ 
,
√√ 
$str
√√  &
}
√√' (
,
√√( )
{
ƒƒ 
$num
ƒƒ 
,
ƒƒ 
$str
ƒƒ 
,
ƒƒ 
$str
ƒƒ  )
}
ƒƒ* +
,
ƒƒ+ ,
{
≈≈ 
$num
≈≈ 
,
≈≈ 
$str
≈≈ 
,
≈≈ 
$str
≈≈  *
}
≈≈+ ,
,
≈≈, -
{
∆∆ 
$num
∆∆ 
,
∆∆ 
$str
∆∆ 
,
∆∆ 
$str
∆∆  ,
}
∆∆- .
,
∆∆. /
{
«« 
$num
«« 
,
«« 
$str
«« 
,
«« 
$str
««  /
}
««0 1
,
««1 2
{
»» 
$num
»» 
,
»» 
$str
»» 
,
»» 
$str
»»  *
}
»»+ ,
,
»», -
{
…… 
$num
…… 
,
…… 
$str
…… 
,
…… 
$str
……  )
}
……* +
,
……+ ,
{
   
$num
   
,
   
$str
   
,
   
$str
    *
}
  + ,
,
  , -
{
ÀÀ 
$num
ÀÀ 
,
ÀÀ 
$str
ÀÀ 
,
ÀÀ 
$str
ÀÀ  -
}
ÀÀ. /
,
ÀÀ/ 0
{
ÃÃ 
$num
ÃÃ 
,
ÃÃ 
$str
ÃÃ 
,
ÃÃ 
$str
ÃÃ '
}
ÃÃ( )
,
ÃÃ) *
{
ÕÕ 
$num
ÕÕ 
,
ÕÕ 
$str
ÕÕ 
,
ÕÕ 
$str
ÕÕ (
}
ÕÕ) *
,
ÕÕ* +
{
ŒŒ 
$num
ŒŒ 
,
ŒŒ 
$str
ŒŒ 
,
ŒŒ 
$str
ŒŒ )
}
ŒŒ* +
,
ŒŒ+ ,
{
œœ 
$num
œœ 
,
œœ 
$str
œœ 
,
œœ 
$str
œœ +
}
œœ, -
,
œœ- .
{
–– 
$num
–– 
,
–– 
$str
–– 
,
–– 
$str
–– )
}
––* +
,
––+ ,
{
—— 
$num
—— 
,
—— 
$str
—— 
,
—— 
$str
—— ,
}
——- .
,
——. /
{
““ 
$num
““ 
,
““ 
$str
““ 
,
““ 
$str
““ )
}
““* +
,
““+ ,
{
”” 
$num
”” 
,
”” 
$str
”” 
,
”” 
$str
”” (
}
””) *
,
””* +
{
‘‘ 
$num
‘‘ 
,
‘‘ 
$str
‘‘ 
,
‘‘ 
$str
‘‘  )
}
‘‘* +
,
‘‘+ ,
{
’’ 
$num
’’ 
,
’’ 
$str
’’ 
,
’’ 
$str
’’  (
}
’’) *
,
’’* +
{
÷÷ 
$num
÷÷ 
,
÷÷ 
$str
÷÷ 
,
÷÷ 
$str
÷÷  +
}
÷÷, -
,
÷÷- .
{
◊◊ 
$num
◊◊ 
,
◊◊ 
$str
◊◊ 
,
◊◊ 
$str
◊◊  '
}
◊◊( )
,
◊◊) *
{
ÿÿ 
$num
ÿÿ 
,
ÿÿ 
$str
ÿÿ 
,
ÿÿ 
$str
ÿÿ  )
}
ÿÿ* +
,
ÿÿ+ ,
{
ŸŸ 
$num
ŸŸ 
,
ŸŸ 
$str
ŸŸ 
,
ŸŸ 
$str
ŸŸ  &
}
ŸŸ' (
,
ŸŸ( )
{
⁄⁄ 
$num
⁄⁄ 
,
⁄⁄ 
$str
⁄⁄ 
,
⁄⁄ 
$str
⁄⁄  (
}
⁄⁄) *
,
⁄⁄* +
{
€€ 
$num
€€ 
,
€€ 
$str
€€ 
,
€€ 
$str
€€  *
}
€€+ ,
,
€€, -
{
‹‹ 
$num
‹‹ 
,
‹‹ 
$str
‹‹ 
,
‹‹ 
$str
‹‹  +
}
‹‹, -
,
‹‹- .
{
›› 
$num
›› 
,
›› 
$str
›› 
,
›› 
$str
››  '
}
››( )
,
››) *
{
ﬁﬁ 
$num
ﬁﬁ 
,
ﬁﬁ 
$str
ﬁﬁ 
,
ﬁﬁ 
$str
ﬁﬁ  *
}
ﬁﬁ+ ,
,
ﬁﬁ, -
{
ﬂﬂ 
$num
ﬂﬂ 
,
ﬂﬂ 
$str
ﬂﬂ 
,
ﬂﬂ 
$str
ﬂﬂ  /
}
ﬂﬂ0 1
,
ﬂﬂ1 2
{
‡‡ 
$num
‡‡ 
,
‡‡ 
$str
‡‡ 
,
‡‡ 
$str
‡‡  *
}
‡‡+ ,
,
‡‡, -
{
·· 
$num
·· 
,
·· 
$str
·· 
,
·· 
$str
··  +
}
··, -
,
··- .
{
‚‚ 
$num
‚‚ 
,
‚‚ 
$str
‚‚ 
,
‚‚ 
$str
‚‚  *
}
‚‚+ ,
,
‚‚, -
{
„„ 
$num
„„ 
,
„„ 
$str
„„ 
,
„„ 
$str
„„  )
}
„„* +
}
‰‰ 
)
‰‰ 
;
‰‰ 
migrationBuilder
ÊÊ 
.
ÊÊ 
CreateIndex
ÊÊ (
(
ÊÊ( )
name
ÁÁ 
:
ÁÁ 
$str
ÁÁ 2
,
ÁÁ2 3
table
ËË 
:
ËË 
$str
ËË )
,
ËË) *
column
ÈÈ 
:
ÈÈ 
$str
ÈÈ  
)
ÈÈ  !
;
ÈÈ! "
migrationBuilder
ÎÎ 
.
ÎÎ 
CreateIndex
ÎÎ (
(
ÎÎ( )
name
ÏÏ 
:
ÏÏ 
$str
ÏÏ %
,
ÏÏ% &
table
ÌÌ 
:
ÌÌ 
$str
ÌÌ $
,
ÌÌ$ %
column
ÓÓ 
:
ÓÓ 
$str
ÓÓ (
,
ÓÓ( )
unique
ÔÔ 
:
ÔÔ 
true
ÔÔ 
,
ÔÔ 
filter
 
:
 
$str
 6
)
6 7
;
7 8
migrationBuilder
ÚÚ 
.
ÚÚ 
CreateIndex
ÚÚ (
(
ÚÚ( )
name
ÛÛ 
:
ÛÛ 
$str
ÛÛ 2
,
ÛÛ2 3
table
ÙÙ 
:
ÙÙ 
$str
ÙÙ )
,
ÙÙ) *
column
ıı 
:
ıı 
$str
ıı  
)
ıı  !
;
ıı! "
migrationBuilder
˜˜ 
.
˜˜ 
CreateIndex
˜˜ (
(
˜˜( )
name
¯¯ 
:
¯¯ 
$str
¯¯ 2
,
¯¯2 3
table
˘˘ 
:
˘˘ 
$str
˘˘ )
,
˘˘) *
column
˙˙ 
:
˙˙ 
$str
˙˙  
)
˙˙  !
;
˙˙! "
migrationBuilder
¸¸ 
.
¸¸ 
CreateIndex
¸¸ (
(
¸¸( )
name
˝˝ 
:
˝˝ 
$str
˝˝ 1
,
˝˝1 2
table
˛˛ 
:
˛˛ 
$str
˛˛ (
,
˛˛( )
column
ˇˇ 
:
ˇˇ 
$str
ˇˇ  
)
ˇˇ  !
;
ˇˇ! "
migrationBuilder
ÅÅ 
.
ÅÅ 
CreateIndex
ÅÅ (
(
ÅÅ( )
name
ÇÇ 
:
ÇÇ 
$str
ÇÇ "
,
ÇÇ" #
table
ÉÉ 
:
ÉÉ 
$str
ÉÉ $
,
ÉÉ$ %
column
ÑÑ 
:
ÑÑ 
$str
ÑÑ )
)
ÑÑ) *
;
ÑÑ* +
migrationBuilder
ÜÜ 
.
ÜÜ 
CreateIndex
ÜÜ (
(
ÜÜ( )
name
áá 
:
áá 
$str
áá %
,
áá% &
table
àà 
:
àà 
$str
àà $
,
àà$ %
column
ââ 
:
ââ 
$str
ââ ,
,
ââ, -
unique
ää 
:
ää 
true
ää 
,
ää 
filter
ãã 
:
ãã 
$str
ãã :
)
ãã: ;
;
ãã; <
migrationBuilder
çç 
.
çç 
CreateIndex
çç (
(
çç( )
name
éé 
:
éé 
$str
éé +
,
éé+ ,
table
èè 
:
èè 
$str
èè !
,
èè! "
column
êê 
:
êê 
$str
êê !
)
êê! "
;
êê" #
migrationBuilder
íí 
.
íí 
CreateIndex
íí (
(
íí( )
name
ìì 
:
ìì 
$str
ìì 0
,
ìì0 1
table
îî 
:
îî 
$str
îî %
,
îî% &
column
ïï 
:
ïï 
$str
ïï "
)
ïï" #
;
ïï# $
migrationBuilder
óó 
.
óó 
CreateIndex
óó (
(
óó( )
name
òò 
:
òò 
$str
òò .
,
òò. /
table
ôô 
:
ôô 
$str
ôô %
,
ôô% &
column
öö 
:
öö 
$str
öö  
)
öö  !
;
öö! "
migrationBuilder
úú 
.
úú 
CreateIndex
úú (
(
úú( )
name
ùù 
:
ùù 
$str
ùù ,
,
ùù, -
table
ûû 
:
ûû 
$str
ûû 
,
ûû  
column
üü 
:
üü 
$str
üü $
)
üü$ %
;
üü% &
}
†† 	
	protected
¢¢ 
override
¢¢ 
void
¢¢ 
Down
¢¢  $
(
¢¢$ %
MigrationBuilder
¢¢% 5
migrationBuilder
¢¢6 F
)
¢¢F G
{
££ 	
migrationBuilder
§§ 
.
§§ 
	DropTable
§§ &
(
§§& '
name
•• 
:
•• 
$str
•• (
)
••( )
;
••) *
migrationBuilder
ßß 
.
ßß 
	DropTable
ßß &
(
ßß& '
name
®® 
:
®® 
$str
®® (
)
®®( )
;
®®) *
migrationBuilder
™™ 
.
™™ 
	DropTable
™™ &
(
™™& '
name
´´ 
:
´´ 
$str
´´ (
)
´´( )
;
´´) *
migrationBuilder
≠≠ 
.
≠≠ 
	DropTable
≠≠ &
(
≠≠& '
name
ÆÆ 
:
ÆÆ 
$str
ÆÆ '
)
ÆÆ' (
;
ÆÆ( )
migrationBuilder
∞∞ 
.
∞∞ 
	DropTable
∞∞ &
(
∞∞& '
name
±± 
:
±± 
$str
±± (
)
±±( )
;
±±) *
migrationBuilder
≥≥ 
.
≥≥ 
	DropTable
≥≥ &
(
≥≥& '
name
¥¥ 
:
¥¥ 
$str
¥¥ $
)
¥¥$ %
;
¥¥% &
migrationBuilder
∂∂ 
.
∂∂ 
	DropTable
∂∂ &
(
∂∂& '
name
∑∑ 
:
∑∑ 
$str
∑∑ %
)
∑∑% &
;
∑∑& '
migrationBuilder
ππ 
.
ππ 
	DropTable
ππ &
(
ππ& '
name
∫∫ 
:
∫∫ 
$str
∫∫ '
)
∫∫' (
;
∫∫( )
migrationBuilder
ºº 
.
ºº 
	DropTable
ºº &
(
ºº& '
name
ΩΩ 
:
ΩΩ 
$str
ΩΩ  
)
ΩΩ  !
;
ΩΩ! "
migrationBuilder
øø 
.
øø 
	DropTable
øø &
(
øø& '
name
¿¿ 
:
¿¿ 
$str
¿¿ #
)
¿¿# $
;
¿¿$ %
migrationBuilder
¬¬ 
.
¬¬ 
	DropTable
¬¬ &
(
¬¬& '
name
√√ 
:
√√ 
$str
√√ #
)
√√# $
;
√√$ %
migrationBuilder
≈≈ 
.
≈≈ 
	DropTable
≈≈ &
(
≈≈& '
name
∆∆ 
:
∆∆ 
$str
∆∆ 
)
∆∆ 
;
∆∆  
migrationBuilder
»» 
.
»» 
	DropTable
»» &
(
»»& '
name
…… 
:
…… 
$str
…… 
)
…… 
;
…… 
migrationBuilder
ÀÀ 
.
ÀÀ 
	DropTable
ÀÀ &
(
ÀÀ& '
name
ÃÃ 
:
ÃÃ 
$str
ÃÃ  
)
ÃÃ  !
;
ÃÃ! "
migrationBuilder
ŒŒ 
.
ŒŒ 
	DropTable
ŒŒ &
(
ŒŒ& '
name
œœ 
:
œœ 
$str
œœ 
)
œœ 
;
œœ 
}
–– 	
}
—— 
}““ è
rC:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Migrations\20191122170232_updateall.cs
	namespace 	
ChajdPizzaWebApp
 
. 

Migrations %
{ 
public 

partial 
class 
	updateall "
:# $
	Migration% .
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
}

 	
	protected 
override 
void 
Down  $
($ %
MigrationBuilder% 5
migrationBuilder6 F
)F G
{ 	
} 	
} 
} ¿
^C:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Models\Customer.cs
	namespace 	
ChajdPizzaWebApp
 
. 
Models !
{ 
public 

class 
Customer 
{ 
[ 	
Required	 
, 
Key 
] 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public

 
string

 
UserName

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Street 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
City 
{ 
get  
;  !
set" %
;% &
}' (
public 
int 
StateID 
{ 
get  
;  !
set" %
;% &
}' (
public 
State 
State 
{ 
get  
;  !
set" %
;% &
}' (
public 
int 
ZipCode 
{ 
get  
;  !
set" %
;% &
}' (
} 
} ∂
dC:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Models\ErrorViewModel.cs
	namespace 	
ChajdPizzaWebApp
 
. 
Models !
{ 
public 

class 
ErrorViewModel 
{ 
public 
string 
	RequestId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
bool 
ShowRequestId !
=>" $
!% &
string& ,
., -
IsNullOrEmpty- :
(: ;
	RequestId; D
)D E
;E F
} 
}		 ú
aC:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Models\OrderDetail.cs
	namespace 	
ChajdPizzaWebApp
 
. 
Models !
{ 
public 

class 
OrderDetail 
{ 
public		 
int		 
Id		 
{		 
get		 
;		 
set		  
;		  !
}		" #
[ 	
Required	 
] 
public 
int 
OrdersId 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
Required	 
] 
public 
int 
SizeId 
{ 
get 
;  
set! $
;$ %
}& '
[ 	
Display	 
( 
Name 
= 
$str +
)+ ,
], -
public 
string 
ToppingsSelected &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
[ 	
Display	 
( 
Name 
= 
$str ,
), -
]- .
public 
int 
ToppingsCount  
{! "
get# &
;& '
set( +
;+ ,
}- .
[ 	
Column	 
( 
TypeName 
= 
$str *
)* +
]+ ,
[ 	
Range	 
( 
$num 
, 
$num 
) 
] 
public 
decimal 
Price 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
SpecialRequest $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
Orders 
Orders 
{ 
get "
;" #
set$ '
;' (
}) *
public 
Size 
Sizes 
{ 
get 
;  
set! $
;$ %
}& '
}   
}!! À
\C:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Models\Orders.cs
	namespace 	
ChajdPizzaWebApp
 
. 
Models !
{ 
public 

class 
Orders 
{		 
public

 
int

 
Id

 
{

 
get

 
;

 
set

  
;

  !
}

" #
[ 	
Required	 
] 
public 
int 

CustomerId 
{ 
get  #
;# $
set% (
;( )
}* +
[ 	
Column	 
( 
TypeName 
= 
$str *
)* +
]+ ,
[ 	
Range	 
( 
$num 
, 
$num 
) 
] 
public 
decimal 
NetPrice 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
Required	 
] 
public 
bool 
isCompleted 
{  !
get" %
;% &
set' *
;* +
}, -
public 
DateTime 

TimePlaced "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
DeliveryAddress %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
virtual 
Customer 
Customer  (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
List 
< 
OrderDetail 
>  
OrderDetails! -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
} 
} ¬
cC:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Models\SecretFormula.cs
	namespace 	
ChajdPizzaWebApp
 
. 
Models !
{ 
public 

class 
SecretFormula 
{ 
[ 	
Required	 
] 
public		 
int		 
Id		 
{		 
get		 
;		 
set		  
;		  !
}		" #
[

 	
Required

	 
,

 
Column

 
(

 
TypeName

 "
=

# $
$str

% 4
)

4 5
]

5 6
public 
decimal 
Price 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} Ç
ZC:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Models\Size.cs
	namespace 	
ChajdPizzaWebApp
 
. 
Models !
{ 
public 

class 
Size 
{ 
[ 	
Required	 
] 
public		 
int		 
Id		 
{		 
get		 
;		 
set		  
;		  !
}		" #
[

 	
Required

	 
]

 
public 
string 
BaseSize 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
Required	 
, 
Column 
( 
TypeName "
=# $
$str% 4
)4 5
]5 6
public 
decimal 
S_Price 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} §	
dC:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Models\SpecialtyPizza.cs
	namespace 	
ChajdPizzaWebApp
 
. 
Models !
{ 
public 

class 
SpecialtyPizza 
{ 
public		 
int		 
ID		 
{		 
get		 
;		 
set		  
;		  !
}		" #
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
Column	 
( 
TypeName 
= 
$str *
)* +
]+ ,
[ 	
Range	 
( 
$num 
, 
$num 
) 
] 
public 
decimal 
Price 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} á
[C:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Models\State.cs
	namespace 	
ChajdPizzaWebApp
 
. 
Models !
{ 
public 

class 
State 
{ 
[ 	
Key	 
] 
public 
int 
ID 
{ 
get 
; 
set  
;  !
}" #
public

 
string

 
Name

 
{

 
get

  
;

  !
set

" %
;

% &
}

' (
[ 	
StringLength	 
( 
$num 
) 
] 
public 
string 
Abbreviation "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
} ﬁ
^C:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Models\Toppings.cs
	namespace 	
ChajdPizzaWebApp
 
. 
Models !
{ 
public 

class 
Toppings 
{ 
[ 	
Required	 
, 
Key 
] 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
[		 	
Required			 
]		 
public

 
string

 
Name

 
{

 
get

  
;

  !
set

" %
;

% &
}

' (
} 
} ¥

VC:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Program.cs
	namespace 	
ChajdPizzaWebApp
 
{ 
public 

class 
Program 
{ 
public 
static 
void 
Main 
(  
string  &
[& '
]' (
args) -
)- .
{		 	
CreateHostBuilder

 
(

 
args

 "
)

" #
.

# $
Build

$ )
(

) *
)

* +
.

+ ,
Run

, /
(

/ 0
)

0 1
;

1 2
} 	
public 
static 
IHostBuilder "
CreateHostBuilder# 4
(4 5
string5 ;
[; <
]< =
args> B
)B C
=>D F
Host 
.  
CreateDefaultBuilder %
(% &
args& *
)* +
. $
ConfigureWebHostDefaults )
() *

webBuilder* 4
=>5 7
{ 

webBuilder 
. 

UseStartup )
<) *
Startup* 1
>1 2
(2 3
)3 4
;4 5
} 
) 
; 
} 
} ê(
hC:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Repositories\CustomerRepo.cs
	namespace		 	
ChajdPizzaWebApp		
 
.		 
Repositories		 '
{

 
public 

class 
CustomerRepo 
: 
ICustomerRepo  -
{ 
private  
ApplicationDbContext $
_context% -
;- .
public 
CustomerRepo 
(  
ApplicationDbContext 0
ctx1 4
)4 5
{ 	
_context 
= 
ctx 
; 
} 	
public 
async 
Task 
< 
Customer "
>" #

SelectById$ .
(. /
int/ 2
?2 3
id4 6
)6 7
{ 	
var 
account 
= 
await 
_context  (
.( )
Customer) 1
.1 2
FirstOrDefaultAsync2 E
(E F
oF G
=>H J
oK L
.L M
IdM O
==P R
idS U
)U V
;V W
return 
account 
; 
} 	
public 
async 
Task 
< 
Customer "
>" #
SelectByUser$ 0
(0 1
string1 7
Username8 @
)@ A
{ 	
var 
account 
= 
await 
_context  (
.( )
Customer) 1
.1 2
FirstOrDefaultAsync2 E
(E F
oF G
=>H J
oK L
.L M
UserNameM U
==V X
UsernameY a
)a b
;b c
return 
account 
; 
} 	
public 
async 
Task 
< 
List 
< 
Customer '
>' (
>( )
	SelectAll* 3
(3 4
)4 5
{ 	
var   
	customers   
=   
await   !
_context  " *
.  * +
Customer  + 3
.  3 4
ToListAsync  4 ?
(  ? @
)  @ A
;  A B
return!! 
	customers!! 
;!! 
}"" 	
public## 
async## 
Task## 
<## 
bool## 
>## 
Add##  #
(### $
Customer##$ ,
customer##- 5
)##5 6
{$$ 	
_context&& 
.&& 
Add&& 
(&& 
customer&& !
)&&! "
;&&" #
await'' 
_context'' 
.'' 
SaveChangesAsync'' +
(''+ ,
)'', -
;''- .
return(( 
true(( 
;(( 
})) 	
public** 
async** 
Task** 
<** 
bool** 
>** 
Put**  #
(**# $
Customer**$ ,
customer**- 5
)**5 6
{++ 	
_context,, 
.,, 
Entry,, 
(,, 
customer,, #
),,# $
.,,$ %
State,,% *
=,,+ ,
EntityState,,- 8
.,,8 9
Modified,,9 A
;,,A B
await-- 
_context-- 
.-- 
SaveChangesAsync-- +
(--+ ,
)--, -
;--- .
return.. 
true.. 
;.. 
}// 	
public00 
async00 
Task00 
<00 
bool00 
>00 
Update00  &
(00& '
Customer00' /
customer000 8
)008 9
{11 	
_context22 
.22 
Update22 
(22 
customer22 $
)22$ %
;22% &
await33 
_context33 
.33 
SaveChangesAsync33 +
(33+ ,
)33, -
;33- .
return44 
true44 
;44 
}55 	
public66 
async66 
Task66 
<66 
bool66 
>66 
Remove66  &
(66& '
Customer66' /
customer660 8
)668 9
{77 	
_context88 
.88 
Remove88 
(88 
customer88 $
)88$ %
;88% &
await99 
_context99 
.99 
SaveChangesAsync99 +
(99+ ,
)99, -
;99- .
return:: 
true:: 
;:: 
};; 	
public>> 
bool>> 
CustomerExists>> "
(>>" #
int>># &
id>>' )
)>>) *
{?? 	
return@@ 
_context@@ 
.@@ 
Customer@@ $
.@@$ %
Any@@% (
(@@( )
e@@) *
=>@@+ -
e@@. /
.@@/ 0
Id@@0 2
==@@3 5
id@@6 8
)@@8 9
;@@9 :
}AA 	
}BB 
}CC ı
tC:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Repositories\Interfaces\ICustomerRepo.cs
	namespace 	
ChajdPizzaWebApp
 
. 
Repositories '
.' (

Interfaces( 2
{ 
public 

	interface 
ICustomerRepo "
{ 
public		 
Task		 
<		 
Customer		 
>		 

SelectById		 (
(		( )
int		) ,
?		, -
id		. 0
)		0 1
;		1 2
public 
Task 
< 
Customer 
> 
SelectByUser *
(* +
string+ 1
Username2 :
): ;
;; <
public 
Task 
< 
List 
< 
Customer !
>! "
>" #
	SelectAll$ -
(- .
). /
;/ 0
public 
Task 
< 
bool 
> 
Add 
( 
Customer &
customer' /
)/ 0
;0 1
public 
Task 
< 
bool 
> 
Put 
( 
Customer &
customer' /
)/ 0
;0 1
public 
Task 
< 
bool 
> 
Update  
(  !
Customer! )
customer* 2
)2 3
;3 4
public 
Task 
< 
bool 
> 
Remove  
(  !
Customer! )
customer* 2
)2 3
;3 4
public 
bool 
CustomerExists "
(" #
int# &
id' )
)) *
;* +
} 
} ü
xC:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Repositories\Interfaces\IOrderDetailsRepo.cs
	namespace 	
ChajdPizzaWebApp
 
. 
Repositories '
.' (

Interfaces( 2
{ 
public 

	interface 
IOrderDetailsRepo &
{ 
public		 
Task		 
<		 
OrderDetail		 
>		  

SelectById		! +
(		+ ,
int		, /
?		/ 0
id		1 3
)		3 4
;		4 5
public 
Task 
< 
List 
< 
OrderDetail $
>$ %
>% &
	SelectAll' 0
(0 1
)1 2
;2 3
public 
Task 
< 
List 
< 
OrderDetail $
>$ %
>% &!
SelectOrderAllDetails' <
(< =
int= @
?@ A
orderIdB I
)I J
;J K
public 
Task 
< 
bool 
> 
Add 
( 
OrderDetail )
orderDetail* 5
)5 6
;6 7
public 
Task 
< 
bool 
> 
Update  
(  !
OrderDetail! ,
orderDetail- 8
)8 9
;9 :
public 
Task 
< 
bool 
> 
Remove  
(  !
OrderDetail! ,
orderDetail- 8
)8 9
;9 :
public 
bool 
OrderDetailExists %
(% &
int& )
id* ,
), -
;- .
} 
} ß
rC:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Repositories\Interfaces\IOrdersRepo.cs
	namespace 	
ChajdPizzaWebApp
 
. 
Repositories '
.' (

Interfaces( 2
{ 
public 

	interface 
IOrdersRepo  
{ 
public		 
Task		 
<		 
Orders		 
>		 

SelectById		 &
(		& '
int		' *
?		* +
id		, .
)		. /
;		/ 0
public 
Task 
< 
Orders 
> 
SelectByCustId *
(* +
int+ .
?. /
id0 2
)2 3
;3 4
public 
Task 
< 
Orders 
> 
SelectMultByCustId .
(. /
int/ 2
?2 3
id4 6
,6 7
int8 ;
Oid< ?
)? @
;@ A
public 
Task 
< 
List 
< 
Orders 
>  
>  !
	SelectAll" +
(+ ,
), -
;- .
public 
Task 
< 
bool 
> 
Add 
( 
Orders $
order% *
)* +
;+ ,
public 
Task 
< 
bool 
> 
Update  
(  !
Orders! '
order( -
)- .
;. /
public 
Task 
< 
bool 
> 
Remove  
(  !
Orders! '
order( -
)- .
;. /
public 
bool 
OrderExists 
(  
int  #
id$ &
)& '
;' (
} 
} ˝
vC:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Repositories\Interfaces\IPizzaTypesRepo.cs
	namespace 	
ChajdPizzaWebApp
 
. 
Repositories '
.' (

Interfaces( 2
{ 
public 

	interface 
IPizzaTypesRepo $
{ 
public		 
Task		 
<		 
IEnumerable		 
<		  
SecretFormula		  -
>		- .
>		. /
GetSecretFormulas		0 A
(		A B
)		B C
;		C D
public 
Task 
< 
SecretFormula !
>! "
GetSecretFormula# 3
(3 4
int4 7
id8 :
): ;
;; <
public 
Task 
< 
decimal 
> !
GetSecretFormulaPrice 2
(2 3
int3 6
id7 9
)9 :
;: ;
public 
Task 
< 
IEnumerable 
<  
Size  $
>$ %
>% &
GetPizzaSizes' 4
(4 5
)5 6
;6 7
public 
Task 
< 
Size 
> 
GetPizzaSize &
(& '
int' *
id+ -
)- .
;. /
public 
Task 
< 
string 
> 
GetPizzaSizeName ,
(, -
int- 0
id1 3
)3 4
;4 5
public 
Task 
< 
decimal 
> 
GetPizzaSizePrice .
(. /
int/ 2
id3 5
)5 6
;6 7
public 
Task 
< 
IEnumerable 
<  
SpecialtyPizza  .
>. /
>/ 0
GetSpecialtyPizzas1 C
(C D
)D E
;E F
public 
Task 
< 
SpecialtyPizza "
>" #
GetSpecialtyPizza$ 5
(5 6
int6 9
id: <
)< =
;= >
public 
Task 
< 
decimal 
> "
GetSpecialtyPizzaPrice 3
(3 4
int4 7
id8 :
): ;
;; <
public 
Task 
< 
string 
> !
GetSpecialtyPizzaName 1
(1 2
int2 5
id6 8
)8 9
;9 :
public 
Task 
< 
string 
> (
GetSpecialtyPizzaDescription 8
(8 9
int9 <
id= ?
)? @
;@ A
public!! 
Task!! 
<!! 
IEnumerable!! 
<!!  
Toppings!!  (
>!!( )
>!!) *
GetToppings!!+ 6
(!!6 7
)!!7 8
;!!8 9
public## 
Task## 
<## 
Toppings## 
>## 

GetTopping## (
(##( )
int##) ,
id##- /
)##/ 0
;##0 1
public%% 
Task%% 
<%% 
string%% 
>%% 
GetToppingName%% *
(%%* +
int%%+ .
id%%/ 1
)%%1 2
;%%2 3
}&& 
}'' Ö	
qC:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Repositories\Interfaces\IStateRepo.cs
	namespace 	
ChajdPizzaWebApp
 
. 
Repositories '
.' (

Interfaces( 2
{ 
public		 

	interface		 

IStateRepo		 
{

 
public 
Task 
< 
IEnumerable 
<  
State  %
>% &
>& '
	GetStates( 1
(1 2
)2 3
;3 4
public 
Task 
< 
State 
> 
GetState #
(# $
int$ '
id( *
)* +
;+ ,
public 
Task 
< 
string 
> 
GetStateName (
(( )
int) ,
id- /
)/ 0
;0 1
public 
Task 
< 
string 
> 
GetStateAbbrevation /
(/ 0
int0 3
id4 6
)6 7
;7 8
} 
} Ê$
lC:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Repositories\OrderDetailsRepo.cs
	namespace		 	
ChajdPizzaWebApp		
 
.		 
Repositories		 '
{

 
public 

class 
OrderDetailsRepo !
:" #
IOrderDetailsRepo$ 5
{ 
private  
ApplicationDbContext $
_context% -
;- .
public 
OrderDetailsRepo 
(   
ApplicationDbContext  4
ctx5 8
)8 9
{ 	
_context 
= 
ctx 
; 
} 	
public 
async 
Task 
< 
OrderDetail %
>% &

SelectById' 1
(1 2
int2 5
?5 6
id7 9
)9 :
{ 	
var 
orderDetail 
= 
await #
_context$ ,
., -
OrderDetails- 9
.9 :
FirstOrDefaultAsync: M
(M N
oN O
=>P R
oS T
.T U
IdU W
==X Z
id[ ]
)] ^
;^ _
return 
orderDetail 
; 
} 	
public 
async 
Task 
< 
List 
< 
OrderDetail *
>* +
>+ ,
	SelectAll- 6
(6 7
)7 8
{ 	
var 
orderDetails 
= 
await $
_context% -
.- .
OrderDetails. :
.: ;
ToListAsync; F
(F G
)G H
;H I
return 
orderDetails 
;  
} 	
public 
async 
Task 
< 
List 
< 
OrderDetail *
>* +
>+ ,!
SelectOrderAllDetails- B
(B C
intC F
?F G
orderIdH O
)O P
{   	
var!! 
orderDetails!! 
=!! 
await!! $
_context!!% -
.!!- .
OrderDetails!!. :
.!!: ;
Where!!; @
(!!@ A
i!!A B
=>!!C E
i!!F G
.!!G H
OrdersId!!H P
==!!Q S
orderId!!T [
)!![ \
.!!\ ]
ToListAsync!!] h
(!!h i
)!!i j
;!!j k
return"" 
orderDetails"" 
;""  
}## 	
public%% 
async%% 
Task%% 
<%% 
bool%% 
>%% 
Add%%  #
(%%# $
OrderDetail%%$ /
orderDetail%%0 ;
)%%; <
{&& 	
_context(( 
.(( 
Add(( 
((( 
orderDetail(( $
)(($ %
;((% &
await)) 
_context)) 
.)) 
SaveChangesAsync)) +
())+ ,
))), -
;))- .
return** 
true** 
;** 
}++ 	
public,, 
async,, 
Task,, 
<,, 
bool,, 
>,, 
Update,,  &
(,,& '
OrderDetail,,' 2
orderDetail,,3 >
),,> ?
{-- 	
_context.. 
... 
Update.. 
(.. 
orderDetail.. '
)..' (
;..( )
await// 
_context// 
.// 
SaveChangesAsync// +
(//+ ,
)//, -
;//- .
return00 
true00 
;00 
}11 	
public22 
async22 
Task22 
<22 
bool22 
>22 
Remove22  &
(22& '
OrderDetail22' 2
orderDetail223 >
)22> ?
{33 	
_context44 
.44 
Remove44 
(44 
orderDetail44 '
)44' (
;44( )
await55 
_context55 
.55 
SaveChangesAsync55 +
(55+ ,
)55, -
;55- .
return66 
true66 
;66 
}77 	
public88 
bool88 
OrderDetailExists88 %
(88% &
int88& )
id88* ,
)88, -
{99 	
return:: 
_context:: 
.:: 
OrderDetails:: (
.::( )
Any::) ,
(::, -
e::- .
=>::/ 1
e::2 3
.::3 4
Id::4 6
==::7 9
id::: <
)::< =
;::= >
};; 	
}<< 
}== º*
fC:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Repositories\OrdersRepo.cs
	namespace		 	
ChajdPizzaWebApp		
 
.		 
Repositories		 '
{

 
public 

class 

OrdersRepo 
: 
IOrdersRepo )
{ 
private  
ApplicationDbContext $
_context% -
;- .
public 

OrdersRepo 
(  
ApplicationDbContext .
ctx/ 2
)2 3
{ 	
_context 
= 
ctx 
; 
} 	
public 
async 
Task 
< 
Orders  
>  !

SelectById" ,
(, -
int- 0
?0 1
id2 4
)4 5
{ 	
var 
account 
= 
await 
_context  (
.( )
Orders) /
./ 0
FirstOrDefaultAsync0 C
(C D
oD E
=>F H
oI J
.J K
IdK M
==N P
idQ S
)S T
;T U
return 
account 
; 
} 	
public 
async 
Task 
< 
Orders  
>  !
SelectByCustId" 0
(0 1
int1 4
?4 5
id6 8
)8 9
{ 	
var 
Order 
= 
await 
_context &
.& '
Orders' -
.- .
FirstOrDefaultAsync. A
(A B
oB C
=>D F
oG H
.H I

CustomerIdI S
==T V
idW Y
&&Z \
o] ^
.^ _
isCompleted_ j
==k m
falsen s
)s t
;t u
return 
Order 
; 
} 	
public!! 
async!! 
Task!! 
<!! 
Orders!!  
>!!  !
SelectMultByCustId!!" 4
(!!4 5
int!!5 8
?!!8 9
id!!: <
,!!< =
int!!> A
Oid!!B E
)!!E F
{"" 	
var## 
Order## 
=## 
await## 
_context## &
.##& '
Orders##' -
.##- .
FirstOrDefaultAsync##. A
(##A B
o##B C
=>##D F
o##G H
.##H I

CustomerId##I S
==##T V
id##W Y
&&##Z \
o##] ^
.##^ _
isCompleted##_ j
==##k m
false##n s
&&##t v
o##w x
.##x y
Id##y {
!=##| ~
Oid	## Ç
)
##Ç É
;
##É Ñ
return%% 
Order%% 
;%% 
}&& 	
public(( 
async(( 
Task(( 
<(( 
List(( 
<(( 
Orders(( %
>((% &
>((& '
	SelectAll((( 1
(((1 2
)((2 3
{)) 	
var** 
orders** 
=** 
await** 
_context** '
.**' (
Orders**( .
.**. /
ToListAsync**/ :
(**: ;
)**; <
;**< =
return++ 
orders++ 
;++ 
},, 	
public.. 
async.. 
Task.. 
<.. 
bool.. 
>.. 
Add..  #
(..# $
Orders..$ *
order..+ 0
)..0 1
{// 	
_context11 
.11 
Add11 
(11 
order11 
)11 
;11  
await22 
_context22 
.22 
SaveChangesAsync22 +
(22+ ,
)22, -
;22- .
return33 
true33 
;33 
}44 	
public66 
async66 
Task66 
<66 
bool66 
>66 
Update66  &
(66& '
Orders66' -
order66. 3
)663 4
{77 	
_context88 
.88 
Update88 
(88 
order88 !
)88! "
;88" #
await99 
_context99 
.99 
SaveChangesAsync99 +
(99+ ,
)99, -
;99- .
return:: 
true:: 
;:: 
};; 	
public== 
async== 
Task== 
<== 
bool== 
>== 
Remove==  &
(==& '
Orders==' -
order==. 3
)==3 4
{>> 	
_context?? 
.?? 
Remove?? 
(?? 
order?? !
)??! "
;??" #
await@@ 
_context@@ 
.@@ 
SaveChangesAsync@@ +
(@@+ ,
)@@, -
;@@- .
returnAA 
trueAA 
;AA 
}BB 	
publicDD 
boolDD 
OrderExistsDD 
(DD  
intDD  #
idDD$ &
)DD& '
{EE 	
returnFF 
_contextFF 
.FF 
OrdersFF "
.FF" #
AnyFF# &
(FF& '
eFF' (
=>FF) +
eFF, -
.FF- .
IdFF. 0
==FF1 3
idFF4 6
)FF6 7
;FF7 8
}GG 	
}HH 
}II ú™
jC:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Repositories\PizzaTypesRepo.cs
	namespace		 	
ChajdPizzaWebApp		
 
.		 
Data		 
{

 
public 

class 
PizzaTypesRepo 
:  !
IPizzaTypesRepo" 1
{ 
readonly  
ApplicationDbContext %
_context& .
;. /
public 
PizzaTypesRepo 
( 
) 
{ 	
} 	
public 
PizzaTypesRepo 
(  
ApplicationDbContext 2
ctx3 6
)6 7
{ 	
_context 
= 
ctx 
; 
} 	
public 
async 
Task 
< 
IEnumerable %
<% &
SecretFormula& 3
>3 4
>4 5
GetSecretFormulas6 G
(G H
)H I
{ 	
IEnumerable 
< 
SecretFormula %
>% &
result' -
=. /
null0 4
;4 5
var 
query 
= 
_context  
.  !
SecretFormula! .
.. /
Where/ 4
(4 5
c5 6
=>7 9
c: ;
.; <
Id< >
==? A
cB C
.C D
IdD F
)F G
;G H
if 
( 
query 
. 
Count 
( 
) 
> 
$num  !
)! "
{ 
result   
=   
await   
query   $
.  $ %
ToListAsync  % 0
(  0 1
)  1 2
;  2 3
}!! 
else"" 
{## 
throw$$ 
new$$ "
NullReferenceException$$ 0
($$0 1
$str$$1 Q
)$$Q R
;$$R S
}%% 
return'' 
result'' 
;'' 
}(( 	
public** 
async** 
Task** 
<** 
SecretFormula** '
>**' (
GetSecretFormula**) 9
(**9 :
int**: =
id**> @
)**@ A
{++ 	
SecretFormula,, 
result,,  
=,,! "
null,,# '
;,,' (
var.. 
query.. 
=.. 
_context..  
...  !
SecretFormula..! .
.... /
Where../ 4
(..4 5
c..5 6
=>..7 9
c..: ;
...; <
Id..< >
==..? A
id..B D
)..D E
;..E F
if// 
(// 
query// 
.// 
Count// 
(// 
)// 
>// 
$num//  !
)//! "
{00 
result11 
=11 
await11 
query11 $
.11$ %
FirstOrDefaultAsync11% 8
(118 9
)119 :
;11: ;
}22 
else33 
{44 
throw55 
new55 "
NullReferenceException55 0
(550 1
$str551 Q
)55Q R
;55R S
}66 
return88 
result88 
;88 
}99 	
public;; 
async;; 
Task;; 
<;; 
decimal;; !
>;;! "!
GetSecretFormulaPrice;;# 8
(;;8 9
int;;9 <
id;;= ?
);;? @
{<< 	
decimal== 
result== 
=== 
-== 
$num== 
;==  
var?? 
query?? 
=?? 
_context??  
.??  !
SecretFormula??! .
.??. /
Where??/ 4
(??4 5
c??5 6
=>??7 9
c??: ;
.??; <
Id??< >
==??? A
id??B D
)??D E
;??E F
if@@ 
(@@ 
query@@ 
.@@ 
Count@@ 
(@@ 
)@@ 
>@@ 
$num@@  !
)@@! "
{AA 
varBB 
itemBB 
=BB 
awaitBB  
queryBB! &
.BB& '
FirstOrDefaultAsyncBB' :
(BB: ;
)BB; <
;BB< =
resultCC 
=CC 
itemCC 
.CC 
PriceCC #
;CC# $
}DD 
elseEE 
{FF 
throwGG 
newGG "
NullReferenceExceptionGG 0
(GG0 1
$strGG1 Q
)GGQ R
;GGR S
}HH 
returnJJ 
resultJJ 
;JJ 
}KK 	
publicMM 
asyncMM 
TaskMM 
<MM 
IEnumerableMM %
<MM% &
SizeMM& *
>MM* +
>MM+ ,
GetPizzaSizesMM- :
(MM: ;
)MM; <
{NN 	
IEnumerableOO 
<OO 
SizeOO 
>OO 
resultOO $
=OO% &
nullOO' +
;OO+ ,
varQQ 
queryQQ 
=QQ 
_contextQQ  
.QQ  !
SizeQQ! %
.QQ% &
WhereQQ& +
(QQ+ ,
cQQ, -
=>QQ. 0
cQQ1 2
.QQ2 3
IdQQ3 5
==QQ6 8
cQQ9 :
.QQ: ;
IdQQ; =
)QQ= >
;QQ> ?
ifRR 
(RR 
queryRR 
.RR 
CountRR 
(RR 
)RR 
>RR 
$numRR  !
)RR! "
{SS 
resultTT 
=TT 
awaitTT 
queryTT $
.TT$ %
ToListAsyncTT% 0
(TT0 1
)TT1 2
;TT2 3
}UU 
elseVV 
{WW 
throwXX 
newXX "
NullReferenceExceptionXX 0
(XX0 1
$strXX1 M
)XXM N
;XXN O
}YY 
return[[ 
result[[ 
;[[ 
}\\ 	
public^^ 
async^^ 
Task^^ 
<^^ 
Size^^ 
>^^ 
GetPizzaSize^^  ,
(^^, -
int^^- 0
id^^1 3
)^^3 4
{__ 	
Size`` 
result`` 
=`` 
null`` 
;`` 
varbb 
querybb 
=bb 
_contextbb  
.bb  !
Sizebb! %
.bb% &
Wherebb& +
(bb+ ,
cbb, -
=>bb. 0
cbb1 2
.bb2 3
Idbb3 5
==bb6 8
idbb9 ;
)bb; <
;bb< =
ifcc 
(cc 
querycc 
.cc 
Countcc 
(cc 
)cc 
>cc 
$numcc  !
)cc! "
{dd 
resultee 
=ee 
awaitee 
queryee $
.ee$ %
FirstOrDefaultAsyncee% 8
(ee8 9
)ee9 :
;ee: ;
}ff 
elsegg 
{hh 
throwii 
newii "
NullReferenceExceptionii 0
(ii0 1
$strii1 M
)iiM N
;iiN O
}jj 
returnll 
resultll 
;ll 
}mm 	
publicoo 
asyncoo 
Taskoo 
<oo 
stringoo  
>oo  !
GetPizzaSizeNameoo" 2
(oo2 3
intoo3 6
idoo7 9
)oo9 :
{pp 	
stringqq 
resultqq 
=qq 
nullqq  
;qq  !
varss 
queryss 
=ss 
_contextss  
.ss  !
Sizess! %
.ss% &
Wheress& +
(ss+ ,
css, -
=>ss. 0
css1 2
.ss2 3
Idss3 5
==ss6 8
idss9 ;
)ss; <
;ss< =
iftt 
(tt 
querytt 
.tt 
Counttt 
(tt 
)tt 
>tt 
$numtt  !
)tt! "
{uu 
varvv 
itemvv 
=vv 
awaitvv  
queryvv! &
.vv& '
FirstOrDefaultAsyncvv' :
(vv: ;
)vv; <
;vv< =
resultww 
=ww 
itemww 
.ww 
BaseSizeww &
;ww& '
}xx 
elseyy 
{zz 
throw{{ 
new{{ "
NullReferenceException{{ 0
({{0 1
$str{{1 M
){{M N
;{{N O
}|| 
return~~ 
result~~ 
;~~ 
} 	
public
ÅÅ 
async
ÅÅ 
Task
ÅÅ 
<
ÅÅ 
decimal
ÅÅ !
>
ÅÅ! "
GetPizzaSizePrice
ÅÅ# 4
(
ÅÅ4 5
int
ÅÅ5 8
id
ÅÅ9 ;
)
ÅÅ; <
{
ÇÇ 	
decimal
ÉÉ 
result
ÉÉ 
=
ÉÉ 
-
ÉÉ 
$num
ÉÉ 
;
ÉÉ  
var
ÖÖ 
query
ÖÖ 
=
ÖÖ 
_context
ÖÖ  
.
ÖÖ  !
Size
ÖÖ! %
.
ÖÖ% &
Where
ÖÖ& +
(
ÖÖ+ ,
c
ÖÖ, -
=>
ÖÖ. 0
c
ÖÖ1 2
.
ÖÖ2 3
Id
ÖÖ3 5
==
ÖÖ6 8
id
ÖÖ9 ;
)
ÖÖ; <
;
ÖÖ< =
if
ÜÜ 
(
ÜÜ 
query
ÜÜ 
.
ÜÜ 
Count
ÜÜ 
(
ÜÜ 
)
ÜÜ 
>
ÜÜ 
$num
ÜÜ  !
)
ÜÜ! "
{
áá 
var
àà 
item
àà 
=
àà 
await
àà  
query
àà! &
.
àà& '!
FirstOrDefaultAsync
àà' :
(
àà: ;
)
àà; <
;
àà< =
result
ââ 
=
ââ 
item
ââ 
.
ââ 
S_Price
ââ %
;
ââ% &
}
ää 
else
ãã 
{
åå 
throw
çç 
new
çç $
NullReferenceException
çç 0
(
çç0 1
$str
çç1 M
)
ççM N
;
ççN O
}
éé 
return
êê 
result
êê 
;
êê 
}
ëë 	
public
ìì 
async
ìì 
Task
ìì 
<
ìì 
IEnumerable
ìì %
<
ìì% &
SpecialtyPizza
ìì& 4
>
ìì4 5
>
ìì5 6 
GetSpecialtyPizzas
ìì7 I
(
ììI J
)
ììJ K
{
îî 	
IEnumerable
ïï 
<
ïï 
SpecialtyPizza
ïï &
>
ïï& '
result
ïï( .
=
ïï/ 0
null
ïï1 5
;
ïï5 6
var
óó 
query
óó 
=
óó 
_context
óó  
.
óó  !
SpecialtyPizzas
óó! 0
.
óó0 1
Where
óó1 6
(
óó6 7
c
óó7 8
=>
óó9 ;
c
óó< =
.
óó= >
ID
óó> @
==
óóA C
c
óóD E
.
óóE F
ID
óóF H
)
óóH I
;
óóI J
if
òò 
(
òò 
query
òò 
.
òò 
Count
òò 
(
òò 
)
òò 
>
òò 
$num
òò  !
)
òò! "
{
ôô 
result
öö 
=
öö 
await
öö 
query
öö $
.
öö$ %
ToListAsync
öö% 0
(
öö0 1
)
öö1 2
;
öö2 3
}
õõ 
else
úú 
{
ùù 
throw
ûû 
new
ûû $
NullReferenceException
ûû 0
(
ûû0 1
$str
ûû1 R
)
ûûR S
;
ûûS T
}
üü 
return
°° 
result
°° 
;
°° 
}
¢¢ 	
public
§§ 
async
§§ 
Task
§§ 
<
§§ 
SpecialtyPizza
§§ (
>
§§( )
GetSpecialtyPizza
§§* ;
(
§§; <
int
§§< ?
id
§§@ B
)
§§B C
{
•• 	
SpecialtyPizza
¶¶ 
result
¶¶ !
=
¶¶" #
null
¶¶$ (
;
¶¶( )
var
®® 
query
®® 
=
®® 
_context
®®  
.
®®  !
SpecialtyPizzas
®®! 0
.
®®0 1
Where
®®1 6
(
®®6 7
c
®®7 8
=>
®®9 ;
c
®®< =
.
®®= >
ID
®®> @
==
®®A C
id
®®D F
)
®®F G
;
®®G H
if
©© 
(
©© 
query
©© 
.
©© 
Count
©© 
(
©© 
)
©© 
>
©© 
$num
©©  !
)
©©! "
{
™™ 
result
´´ 
=
´´ 
await
´´ 
query
´´ $
.
´´$ %!
FirstOrDefaultAsync
´´% 8
(
´´8 9
)
´´9 :
;
´´: ;
}
¨¨ 
else
≠≠ 
{
ÆÆ 
throw
ØØ 
new
ØØ $
NullReferenceException
ØØ 0
(
ØØ0 1
$str
ØØ1 R
)
ØØR S
;
ØØS T
}
∞∞ 
return
≤≤ 
result
≤≤ 
;
≤≤ 
}
≥≥ 	
public
µµ 
async
µµ 
Task
µµ 
<
µµ 
decimal
µµ !
>
µµ! "$
GetSpecialtyPizzaPrice
µµ# 9
(
µµ9 :
int
µµ: =
id
µµ> @
)
µµ@ A
{
∂∂ 	
decimal
∑∑ 
result
∑∑ 
=
∑∑ 
$num
∑∑ 
;
∑∑ 
var
ππ 
query
ππ 
=
ππ 
_context
ππ  
.
ππ  !
SpecialtyPizzas
ππ! 0
.
ππ0 1
Where
ππ1 6
(
ππ6 7
c
ππ7 8
=>
ππ9 ;
c
ππ< =
.
ππ= >
ID
ππ> @
==
ππA C
id
ππD F
)
ππF G
;
ππG H
if
∫∫ 
(
∫∫ 
query
∫∫ 
.
∫∫ 
Count
∫∫ 
(
∫∫ 
)
∫∫ 
>
∫∫ 
$num
∫∫  !
)
∫∫! "
{
ªª 
var
ºº 
item
ºº 
=
ºº 
await
ºº  
query
ºº! &
.
ºº& '!
FirstOrDefaultAsync
ºº' :
(
ºº: ;
)
ºº; <
;
ºº< =
result
ΩΩ 
=
ΩΩ 
item
ΩΩ 
.
ΩΩ 
Price
ΩΩ #
;
ΩΩ# $
}
ææ 
else
øø 
{
¿¿ 
throw
¡¡ 
new
¡¡ $
NullReferenceException
¡¡ 0
(
¡¡0 1
$str
¡¡1 R
)
¡¡R S
;
¡¡S T
}
¬¬ 
return
ƒƒ 
result
ƒƒ 
;
ƒƒ 
}
≈≈ 	
public
«« 
async
«« 
Task
«« 
<
«« 
string
««  
>
««  !#
GetSpecialtyPizzaName
««" 7
(
««7 8
int
««8 ;
id
««< >
)
««> ?
{
»» 	
string
…… 
result
…… 
=
…… 
$str
…… 
;
…… 
var
ÀÀ 
query
ÀÀ 
=
ÀÀ 
_context
ÀÀ  
.
ÀÀ  !
SpecialtyPizzas
ÀÀ! 0
.
ÀÀ0 1
Where
ÀÀ1 6
(
ÀÀ6 7
c
ÀÀ7 8
=>
ÀÀ9 ;
c
ÀÀ< =
.
ÀÀ= >
ID
ÀÀ> @
==
ÀÀA C
id
ÀÀD F
)
ÀÀF G
;
ÀÀG H
if
ÃÃ 
(
ÃÃ 
query
ÃÃ 
.
ÃÃ 
Count
ÃÃ 
(
ÃÃ 
)
ÃÃ 
>
ÃÃ 
$num
ÃÃ  !
)
ÃÃ! "
{
ÕÕ 
var
ŒŒ 
item
ŒŒ 
=
ŒŒ 
await
ŒŒ  
query
ŒŒ! &
.
ŒŒ& '!
FirstOrDefaultAsync
ŒŒ' :
(
ŒŒ: ;
)
ŒŒ; <
;
ŒŒ< =
result
œœ 
=
œœ 
item
œœ 
.
œœ 
Name
œœ "
;
œœ" #
}
–– 
else
—— 
{
““ 
throw
”” 
new
”” $
NullReferenceException
”” 0
(
””0 1
$str
””1 R
)
””R S
;
””S T
}
‘‘ 
return
÷÷ 
result
÷÷ 
;
÷÷ 
}
◊◊ 	
public
ŸŸ 
async
ŸŸ 
Task
ŸŸ 
<
ŸŸ 
string
ŸŸ  
>
ŸŸ  !*
GetSpecialtyPizzaDescription
ŸŸ" >
(
ŸŸ> ?
int
ŸŸ? B
id
ŸŸC E
)
ŸŸE F
{
⁄⁄ 	
string
€€ 
result
€€ 
=
€€ 
$str
€€ 
;
€€ 
var
›› 
query
›› 
=
›› 
_context
››  
.
››  !
SpecialtyPizzas
››! 0
.
››0 1
Where
››1 6
(
››6 7
c
››7 8
=>
››9 ;
c
››< =
.
››= >
ID
››> @
==
››A C
id
››D F
)
››F G
;
››G H
if
ﬁﬁ 
(
ﬁﬁ 
query
ﬁﬁ 
.
ﬁﬁ 
Count
ﬁﬁ 
(
ﬁﬁ 
)
ﬁﬁ 
>
ﬁﬁ 
$num
ﬁﬁ  !
)
ﬁﬁ! "
{
ﬂﬂ 
var
‡‡ 
item
‡‡ 
=
‡‡ 
await
‡‡  
query
‡‡! &
.
‡‡& '!
FirstOrDefaultAsync
‡‡' :
(
‡‡: ;
)
‡‡; <
;
‡‡< =
result
·· 
=
·· 
item
·· 
.
·· 
Description
·· )
;
··) *
}
‚‚ 
else
„„ 
{
‰‰ 
throw
ÂÂ 
new
ÂÂ $
NullReferenceException
ÂÂ 0
(
ÂÂ0 1
$str
ÂÂ1 R
)
ÂÂR S
;
ÂÂS T
}
ÊÊ 
return
ËË 
result
ËË 
;
ËË 
}
ÈÈ 	
public
ÎÎ 
async
ÎÎ 
Task
ÎÎ 
<
ÎÎ 
IEnumerable
ÎÎ %
<
ÎÎ% &
Toppings
ÎÎ& .
>
ÎÎ. /
>
ÎÎ/ 0
GetToppings
ÎÎ1 <
(
ÎÎ< =
)
ÎÎ= >
{
ÏÏ 	
IEnumerable
ÌÌ 
<
ÌÌ 
Toppings
ÌÌ  
>
ÌÌ  !
result
ÌÌ" (
=
ÌÌ) *
null
ÌÌ+ /
;
ÌÌ/ 0
var
ÔÔ 
query
ÔÔ 
=
ÔÔ 
_context
ÔÔ  
.
ÔÔ  !
Toppings
ÔÔ! )
.
ÔÔ) *
Where
ÔÔ* /
(
ÔÔ/ 0
c
ÔÔ0 1
=>
ÔÔ2 4
c
ÔÔ5 6
.
ÔÔ6 7
Id
ÔÔ7 9
==
ÔÔ: <
c
ÔÔ= >
.
ÔÔ> ?
Id
ÔÔ? A
)
ÔÔA B
;
ÔÔB C
if
 
(
 
query
 
.
 
Count
 
(
 
)
 
>
 
$num
  !
)
! "
{
ÒÒ 
result
ÚÚ 
=
ÚÚ 
await
ÚÚ 
query
ÚÚ $
.
ÚÚ$ %
ToListAsync
ÚÚ% 0
(
ÚÚ0 1
)
ÚÚ1 2
;
ÚÚ2 3
}
ÛÛ 
else
ÙÙ 
{
ıı 
throw
ˆˆ 
new
ˆˆ $
NullReferenceException
ˆˆ 0
(
ˆˆ0 1
$str
ˆˆ1 K
)
ˆˆK L
;
ˆˆL M
}
˜˜ 
return
˘˘ 
result
˘˘ 
;
˘˘ 
}
˙˙ 	
public
¸¸ 
async
¸¸ 
Task
¸¸ 
<
¸¸ 
Toppings
¸¸ "
>
¸¸" #

GetTopping
¸¸$ .
(
¸¸. /
int
¸¸/ 2
id
¸¸3 5
)
¸¸5 6
{
˝˝ 	
Toppings
˛˛ 
result
˛˛ 
=
˛˛ 
null
˛˛ "
;
˛˛" #
var
ÄÄ 
query
ÄÄ 
=
ÄÄ 
_context
ÄÄ  
.
ÄÄ  !
Toppings
ÄÄ! )
.
ÄÄ) *
Where
ÄÄ* /
(
ÄÄ/ 0
c
ÄÄ0 1
=>
ÄÄ2 4
c
ÄÄ5 6
.
ÄÄ6 7
Id
ÄÄ7 9
==
ÄÄ: <
id
ÄÄ= ?
)
ÄÄ? @
;
ÄÄ@ A
if
ÅÅ 
(
ÅÅ 
query
ÅÅ 
.
ÅÅ 
Count
ÅÅ 
(
ÅÅ 
)
ÅÅ 
>
ÅÅ 
$num
ÅÅ  !
)
ÅÅ! "
{
ÇÇ 
var
ÉÉ 
item
ÉÉ 
=
ÉÉ 
await
ÉÉ  
query
ÉÉ! &
.
ÉÉ& '!
FirstOrDefaultAsync
ÉÉ' :
(
ÉÉ: ;
)
ÉÉ; <
;
ÉÉ< =
result
ÑÑ 
=
ÑÑ 
item
ÑÑ 
;
ÑÑ 
}
ÖÖ 
else
ÜÜ 
{
áá 
throw
àà 
new
àà $
NullReferenceException
àà 0
(
àà0 1
$str
àà1 K
)
ààK L
;
ààL M
}
ââ 
return
ãã 
result
ãã 
;
ãã 
}
åå 	
public
éé 
async
éé 
Task
éé 
<
éé 
string
éé  
>
éé  !
GetToppingName
éé" 0
(
éé0 1
int
éé1 4
id
éé5 7
)
éé7 8
{
èè 	
string
êê 
result
êê 
=
êê 
null
êê  
;
êê  !
var
íí 
query
íí 
=
íí 
_context
íí  
.
íí  !
Toppings
íí! )
.
íí) *
Where
íí* /
(
íí/ 0
c
íí0 1
=>
íí2 4
c
íí5 6
.
íí6 7
Id
íí7 9
==
íí: <
id
íí= ?
)
íí? @
;
íí@ A
if
ìì 
(
ìì 
query
ìì 
.
ìì 
Count
ìì 
(
ìì 
)
ìì 
>
ìì 
$num
ìì  !
)
ìì! "
{
îî 
var
ïï 
item
ïï 
=
ïï 
await
ïï  
query
ïï! &
.
ïï& '!
FirstOrDefaultAsync
ïï' :
(
ïï: ;
)
ïï; <
;
ïï< =
result
ññ 
=
ññ 
item
ññ 
.
ññ 
Name
ññ "
;
ññ" #
}
óó 
else
òò 
{
ôô 
throw
öö 
new
öö $
NullReferenceException
öö 0
(
öö0 1
$str
öö1 K
)
ööK L
;
ööL M
}
õõ 
return
ùù 
result
ùù 
;
ùù 
}
ûû 	
}
üü 
}†† ¶/
eC:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Repositories\StateRepo.cs
	namespace		 	
ChajdPizzaWebApp		
 
.		 
Data		 
{

 
public 

class 
	StateRepo 
: 

IStateRepo '
{ 
readonly  
ApplicationDbContext %
_context& .
;. /
public 
	StateRepo 
( 
) 
{ 	
} 	
public 
	StateRepo 
(  
ApplicationDbContext -
ctx. 1
)1 2
{ 	
_context 
= 
ctx 
; 
} 	
public 
async 
Task 
< 
IEnumerable %
<% &
State& +
>+ ,
>, -
	GetStates. 7
(7 8
)8 9
{ 	
IEnumerable 
< 
State 
> 
result %
=& '
null( ,
;, -
var 
query 
= 
_context  
.  !
State! &
.& '
Where' ,
(, -
s- .
=>/ 1
s2 3
.3 4
ID4 6
==7 9
s: ;
.; <
ID< >
)> ?
;? @
if 
( 
query 
. 
Count 
( 
) 
> 
$num  !
)! "
{ 
result   
=   
await   
query   $
.  $ %
ToListAsync  % 0
(  0 1
)  1 2
;  2 3
}!! 
else"" 
{## 
throw$$ 
new$$ "
NullReferenceException$$ 0
($$0 1
$str$$1 M
)$$M N
;$$N O
}%% 
return'' 
result'' 
;'' 
}(( 	
public** 
async** 
Task** 
<** 
State** 
>**  
GetState**! )
(**) *
int*** -
id**. 0
)**0 1
{++ 	
State,, 
result,, 
=,, 
null,, 
;,,  
var.. 
query.. 
=.. 
_context..  
...  !
State..! &
...& '
Where..' ,
(.., -
s..- .
=>../ 1
s..2 3
...3 4
ID..4 6
==..7 9
id..: <
)..< =
;..= >
if// 
(// 
query// 
.// 
Count// 
(// 
)// 
>// 
$num//  !
)//! "
{00 
result11 
=11 
await11 
query11 $
.11$ %
FirstOrDefaultAsync11% 8
(118 9
)119 :
;11: ;
}22 
else33 
{44 
throw55 
new55 "
NullReferenceException55 0
(550 1
$str551 M
)55M N
;55N O
}66 
return88 
result88 
;88 
}99 	
public;; 
async;; 
Task;; 
<;; 
string;;  
>;;  !
GetStateName;;" .
(;;. /
int;;/ 2
id;;3 5
);;5 6
{<< 	
State== 
temp== 
=== 
null== 
;== 
string>> 
result>> 
=>> 
null>>  
;>>  !
var@@ 
query@@ 
=@@ 
_context@@  
.@@  !
State@@! &
.@@& '
Where@@' ,
(@@, -
s@@- .
=>@@/ 1
s@@2 3
.@@3 4
ID@@4 6
==@@7 9
id@@: <
)@@< =
;@@= >
ifAA 
(AA 
queryAA 
.AA 
CountAA 
(AA 
)AA 
>AA 
$numAA  !
)AA! "
{BB 
tempCC 
=CC 
awaitCC 
queryCC "
.CC" #
FirstOrDefaultAsyncCC# 6
(CC6 7
)CC7 8
;CC8 9
resultDD 
=DD 
tempDD 
.DD 
NameDD "
;DD" #
}EE 
elseFF 
{GG 
throwHH 
newHH "
NullReferenceExceptionHH 0
(HH0 1
$strHH1 M
)HHM N
;HHN O
}II 
returnKK 
resultKK 
;KK 
}LL 	
publicNN 
asyncNN 
TaskNN 
<NN 
stringNN  
>NN  !
GetStateAbbrevationNN" 5
(NN5 6
intNN6 9
idNN: <
)NN< =
{OO 	
StatePP 
tempPP 
=PP 
nullPP 
;PP 
stringQQ 
resultQQ 
=QQ 
nullQQ  
;QQ  !
varSS 
querySS 
=SS 
_contextSS  
.SS  !
StateSS! &
.SS& '
WhereSS' ,
(SS, -
sSS- .
=>SS/ 1
sSS2 3
.SS3 4
IDSS4 6
==SS7 9
idSS: <
)SS< =
;SS= >
ifTT 
(TT 
queryTT 
.TT 
CountTT 
(TT 
)TT 
>TT 
$numTT  !
)TT! "
{UU 
tempVV 
=VV 
awaitVV 
queryVV "
.VV" #
FirstOrDefaultAsyncVV# 6
(VV6 7
)VV7 8
;VV8 9
resultWW 
=WW 
tempWW 
.WW 
AbbreviationWW *
;WW* +
}XX 
elseYY 
{ZZ 
throw[[ 
new[[ "
NullReferenceException[[ 0
([[0 1
$str[[1 M
)[[M N
;[[N O
}\\ 
return^^ 
result^^ 
;^^ 
}__ 	
}`` 
}aa ™.
VC:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\Startup.cs
	namespace 	
ChajdPizzaWebApp
 
{ 
public 

class 
Startup 
{ 
public 
Startup 
( 
IConfiguration %
configuration& 3
)3 4
{ 	
Configuration 
= 
configuration )
;) *
} 	
public 
IConfiguration 
Configuration +
{, -
get. 1
;1 2
}3 4
public 
void 
ConfigureServices %
(% &
IServiceCollection& 8
services9 A
)A B
{ 	
services 
. 
AddDbContext !
<! " 
ApplicationDbContext" 6
>6 7
(7 8
options8 ?
=>@ B
options 
. 
UseSqlServer $
($ %
Configuration !
.! "
GetConnectionString" 5
(5 6
$str6 I
)I J
)J K
)K L
;L M
services 
. 
AddDefaultIdentity '
<' (
IdentityUser( 4
>4 5
(5 6
options6 =
=>> @
optionsA H
.H I
SignInI O
.O P#
RequireConfirmedAccountP g
=h i
truej n
)n o
. $
AddEntityFrameworkStores )
<) * 
ApplicationDbContext* >
>> ?
(? @
)@ A
;A B
services   
.   #
AddControllersWithViews   ,
(  , -
)  - .
;  . /
services!! 
.!! 
AddRazorPages!! "
(!!" #
)!!# $
;!!$ %
services## 
.## 
AddTransient## !
<##! "
IOrdersRepo##" -
,##- .

OrdersRepo##/ 9
>##9 :
(##: ;
)##; <
;##< =
services$$ 
.$$ 
AddTransient$$ !
<$$! "
ICustomerRepo$$" /
,$$/ 0
CustomerRepo$$1 =
>$$= >
($$> ?
)$$? @
;$$@ A
services%% 
.%% 
AddTransient%% !
<%%! "
IOrderDetailsRepo%%" 3
,%%3 4
OrderDetailsRepo%%5 E
>%%E F
(%%F G
)%%G H
;%%H I
services&& 
.&& 
AddTransient&& !
<&&! "
IPizzaTypesRepo&&" 1
,&&1 2
PizzaTypesRepo&&3 A
>&&A B
(&&B C
)&&C D
;&&D E
services'' 
.'' 
AddTransient'' !
<''! "

IStateRepo''" ,
,'', -
	StateRepo''. 7
>''7 8
(''8 9
)''9 :
;'': ;
services** 
.** 
AddCors** 
(** 
options** $
=>**% '
{++ 
options,, 
.,, 
AddDefaultPolicy,, (
(,,( )
builder-- 
=>-- 
{.. 
builder// 
.//  
AllowAnyOrigin//  .
(//. /
)/// 0
;//0 1
builder00 
.00  
AllowAnyHeader00  .
(00. /
)00/ 0
;000 1
}11 
)22 
;22 
}33 
)44 
;44 
services66 
.66 
AddMvc66 
(66 
)66 
;66 
services99 
.99 
AddSingleton99 !
<99! "
ITempDataProvider99" 3
,993 4"
CookieTempDataProvider995 K
>99K L
(99L M
)99M N
;99N O
}:: 	
public== 
void== 
	Configure== 
(== 
IApplicationBuilder== 1
app==2 5
,==5 6
IWebHostEnvironment==7 J
env==K N
)==N O
{>> 	
if?? 
(?? 
env?? 
.?? 
IsDevelopment?? !
(??! "
)??" #
)??# $
{@@ 
appAA 
.AA %
UseDeveloperExceptionPageAA -
(AA- .
)AA. /
;AA/ 0
appBB 
.BB  
UseDatabaseErrorPageBB (
(BB( )
)BB) *
;BB* +
}CC 
elseDD 
{EE 
appFF 
.FF 
UseExceptionHandlerFF '
(FF' (
$strFF( 5
)FF5 6
;FF6 7
appHH 
.HH 
UseHstsHH 
(HH 
)HH 
;HH 
}II 
appJJ 
.JJ 
UseHttpsRedirectionJJ #
(JJ# $
)JJ$ %
;JJ% &
appKK 
.KK 
UseStaticFilesKK 
(KK 
)KK  
;KK  !
appNN 
.NN 
UseCorsNN 
(NN 
)NN 
;NN 
appOO 
.OO 

UseRoutingOO 
(OO 
)OO 
;OO 
appQQ 
.QQ 
UseAuthenticationQQ !
(QQ! "
)QQ" #
;QQ# $
appRR 
.RR 
UseAuthorizationRR  
(RR  !
)RR! "
;RR" #
appUU 
.UU 
UseEndpointsUU 
(UU 
	endpointsUU &
=>UU' )
{VV 
	endpointsWW 
.WW 
MapControllerRouteWW ,
(WW, -
nameXX 
:XX 
$strXX #
,XX# $
patternYY 
:YY 
$strYY E
)YYE F
;YYF G
	endpointsZZ 
.ZZ 
MapRazorPagesZZ '
(ZZ' (
)ZZ( )
;ZZ) *
}[[ 
)[[ 
;[[ 
}^^ 	
}__ 
}`` ˘
oC:\Users\Henri\Revature\Workarea\Project2\ChajdPizzaWebApp\ChajdPizzaWebApp\ViewModels\CreateCustomViewModel.cs
	namespace 	
ChajdPizzaWebApp
 
. 

ViewModels %
{ 
public 

class !
CreateCustomViewModel &
{ 
public 
List 
< 
Size 
> 
Sizes 
{  !
get" %
;% &
set' *
;* +
}, -
public		 
List		 
<		 
Toppings		 
>		 
Toppings		 &
{		' (
get		) ,
;		, -
set		. 1
;		1 2
}		3 4
public 
int 
sizeId 
{ 
get 
;  
set! $
;$ %
}& '
} 
} 