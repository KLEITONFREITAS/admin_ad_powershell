Import-Csv "d:\projetos.csv" | ForEach-Object {
New-ADGroup -Name $_.Nome -Path $_.Caminho -GroupScope $_.Escopo
}