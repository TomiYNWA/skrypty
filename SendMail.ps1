$from = "test@gmail.com"
$to = "test@gmail.com"
$subject = "Wiadomość testowa"
$body = "Urządzenie o IP 192.168.0.11 jest już online"
$stmpServer = "smtp.gmail.com"
$smtpPort = "587"
$utf8 = New-Object System.Text.UTF8Encoding
$credential = Get-Credential

do
{
    $ping = Test-Connection 192.168.0.11 -Quiet
}
until ($ping -eq $true)


Send-MailMessage -From $from -To $to -Subject $subject -Body $body -SmtpServer $stmpServer -Port $smtpPort -UseSsl -Credential $credential -Encoding $utf8