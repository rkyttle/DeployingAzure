Configuration InstallIIS
{
    param(
        [Parameter(HelpMessage='Timestamp used solely as a mechanism to force ARM to redeply DSC resources because the parameters have changed.')]
        [string]$Timestamp
        )
        
    Import-DSCResource -ModuleName 'PSDesiredStateConfiguration'
    
    Node localhost
    {
        # Install the IIS role
        WindowsFeature IIS
        {
            Ensure          = "Present"
            Name            = "Web-Server"
        }

        # Install the ASP .NET 4.5 role
        WindowsFeature AspNet45
        {
            Ensure          = "Present"
            Name            = "Web-Asp-Net45"
        }
        
    }
}