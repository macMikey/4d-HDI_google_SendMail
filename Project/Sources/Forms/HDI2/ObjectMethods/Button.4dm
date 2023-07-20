var $office365 : cs:C1710.NetKit.Google
var $user : Object

If (Form:C1466.trace)
	TRACE:C157
End if 

Form:C1466.oAuth2:=SignedInProvider
Form:C1466.oAuth2.getToken()

// Inits the office365 object
$office365:=cs:C1710.NetKit.Google.new(Form:C1466.oAuth2; New object:C1471("mailType"; "JMAP"))

EnableObjects(True:C214)

