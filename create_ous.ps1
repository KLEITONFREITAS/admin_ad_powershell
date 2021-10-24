#CRIAR OUs;
Import-Module ActiveDirectory
Import-Csv “D:\ous.csv” | ForEach-Object {
New-ADOrganizationalUnit -Name $_.OU –path $_.Caminho
}