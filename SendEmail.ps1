$Username      = $args[0]
$EmailPassword = $args[1]
$Attachment    = $args[2]
$SMTPServer	   = $args[3]
$SmtpServerPort= $args[4]
$EmailTo       = $args[5]
$EmailFrom     = $args[6]
$Subject       = $args[7]
$Body          = $args[8]

$Username = $Username
#$EmailTo = "apoorvcreate@gmail.com" 
#$EmailFrom = "rupesh.ucer@gmail.com"
#$Subject = "Monthly report"
#$Body = "Test"
# $SMTPServer = "smtp-relay.sendinblue.com" 
$SMTPMessage = New-Object System.Net.Mail.MailMessage($EmailFrom, $EmailTo, $Subject, $Body)
$Attachment = New-Object System.Net.Mail.Attachment($Attachment)
$SMTPMessage.Attachments.Add($Attachment)
$SMTPClient = New-Object Net.Mail.SmtpClient($SmtpServer, $SmtpServerPort) 
$SMTPClient.EnableSsl = $true 
$SMTPClient.Credentials = New-Object System.Net.NetworkCredential($Username, $EmailPassword); 
$SMTPClient.Send($SMTPMessage)