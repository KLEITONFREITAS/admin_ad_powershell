#Adicionando usuários em lote.
Import-Csv “d:\usersAD.csv” | ForEach-Object {
New-ADUser -GivenName $_.PrimeiroNome -Surname $_.Sobrenome -Name $_.Exibicao -DisplayName $_.NomeCompletoIniciar -Department $_.Setor -Title $_.Cargo -Path $_.Caminho -SamAccountName $_.SamAccountName -UserPrincipalName $_.UserPrincipalName -AccountPassword (ConvertTo-SecureString abc@123 -AsPlainText -Force) -ChangePasswordAtLogon $false -Enabled $true -EmailAddress $_.”Email”
}