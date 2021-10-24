#Adicionando usuários em lote.
Import-Csv “d:\usersAD2.csv” | ForEach-Object {
New-ADUser -GivenName $_.PrimeiroNome -Surname $_.Sobrenome -Name $_.Exibicao -Department $_.Setor -Title $_.Cargo -Path $_.Caminho -SamAccountName $_.SamAccountName -UserPrincipalName $_.UserPrincipalName -AccountPassword (ConvertTo-SecureString abc@123 -AsPlainText -Force) -ChangePasswordAtLogon $false -Enabled $true -EmailAddress $_.”Email”
}
Import-Csv “d:\usersAD2.csv” | ForEach-Object {
Add-ADGroupMember -Identity $_.Grupo -Members $_.SamAccountName
}