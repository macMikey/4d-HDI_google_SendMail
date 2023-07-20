var $google : cs:C1710.NetKit.Google
var $status : Object
var $mail : Object

If (Form:C1466.trace)
	TRACE:C157
End if 

If ((Form:C1466.mail.to#"") && (Form:C1466.mail.from#""))
	Form:C1466.mail.sender:=Form:C1466.mail.from
	// Creates a provider to send an email in Google format
	$google:=cs:C1710.NetKit.Google.new(Form:C1466.oAuth2; New object:C1471("mailType"; "JMAP"))
	
	// Send the email
	$status:=$google.mail.send(Form:C1466.mail)
	
	If ($status.success)
		ALERT:C41("Email sent")
	Else 
		ALERT:C41("Error: "+$status.statusText)
	End if 
Else 
	ALERT:C41("Fields \"from\" and \"to\" must be filled.")
End if 