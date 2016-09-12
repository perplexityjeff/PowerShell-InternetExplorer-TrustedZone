function Remove-IETrustedWebsite ([string]$website) 
{
    #Declares
    $path = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\'
    $pathRemove = $path + $website

    #Check if the registry key already exists
    $pathExists = Test-Path $pathRemove
    if ($pathExists)
    {
        #Remove an entry recursive
        Remove-Item -Path $pathRemove -Recurse
    }
}