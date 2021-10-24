$Folders = Import-Csv "D:\projetos.csv" 
Foreach($Folder in $Folders) {
    $nameFolder = $Folder.Nome
    $path = "D:\Puga_share\Repo\$nameFolder"

    New-Item -Path $path -ItemType Directory
    
}