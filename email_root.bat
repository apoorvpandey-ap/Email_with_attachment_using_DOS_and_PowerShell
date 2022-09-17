SET GmailAccount=apoorvcreate@gmail.com
SET GmailPassword=kADvTBGYrnd8tH5f
SET Attachment=D:\Users\apoor\Downloads\vdoxx.zip
SET SMTPServer=smtp-relay.sendinblue.com
SET PowerShellDir=C:\Windows\System32\WindowsPowerShell\v1.0
SET SmtpServerPort=587
SET EmailTo=apoorvcreate@gmail.com
SET EmailFrom=rupesh.ucer@gmail.com
SET Subject=Monthly report
SET Body=Test

CD /D "%PowerShellDir%" 
Powershell -ExecutionPolicy Bypass -Command "& 'C:\Users\apoor\OneDrive\Desktop\SendEmail.ps1' '%GmailAccount%' '%GmailPassword%' '%Attachment%' '%SMTPServer%' '%SmtpServerPort%' '%EmailTo%' '%EmailFrom%' '%Subject%' '%Body%'"