function Ver-StatusPerfil{ 
        param([Parameter(Mandatory=$false)] [ValidateSet("Public","Private")] [string] $perfil) 

        $opd = Read-Host "Elige una opcion para ver:
        [1]Public
        [2]Private
        "
        switch($opd){
            1{
                $perfil = "Public"
                break
            }
            2{
                $perfil = "Private"
                break
            }
        }

         $status = Get-NetFirewallProfile -Name $perfil 
         Write-Host "Perfil:" $perfil 
         if($status.enabled){ 
         Write-Host "Status: Activado" 
         } else{ 
         Write-Host "Status: Desactivado" 
         } 
        } 

Ver-StatusPerfil