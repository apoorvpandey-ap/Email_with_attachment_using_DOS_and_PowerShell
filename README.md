# SMTP_For_Windows
## [Video Link](https://youtu.be/R1zIU2HXq9c)

### Step .0 - Create an account on sendinblue.com for SMTP server 
![image](https://user-images.githubusercontent.com/66588814/190573724-b16c6349-8679-4da5-ae95-dfb8763615f0.png)

#

### Step .1 - Create a file with extension **.ps1** with code inside it --
```
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
```
#

### Step  .2 - Create one more filewith extesnion **.bat**
```
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
```
#
### Step .3 - Create other file with extension **.txt** for attachment purpose 
message - test SMTP
#
### Step .4 - Run a bat command 
`file_name.bat`
