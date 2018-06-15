#Login
Login-AzureRmAccount
Select-AzureRmSubscription -Subscription "SubscriptionName"

$DeploymentParametersBuildVM = @{
    TemplateUri = 'https://raw.githubusercontent.com/rkyttle/DeployingAzure/master/IISVirtualMachine.json'
    Verbose     = $true
    Timestamp   = [system.DateTime]::Now.ToString("MM/dd/yyyy H:mm:ss tt")
}
New-AzureRmResourceGroupDeployment @DeploymentParametersBuildVM