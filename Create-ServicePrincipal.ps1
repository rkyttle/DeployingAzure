az login
az account list --output table
az account set --subscription "SubscriptionName"

<#
Create service principal
https://docs.microsoft.com/en-us/cli/azure/create-an-azure-service-principal-azure-cli?view=azure-cli-latest
https://docs.microsoft.com/en-us/cli/azure/ad/sp?view=azure-cli-latest#create-for-rbac

Use az ad sp create-for-rbac and the --password parameter to create the service principal with a password. 
When you do not provide a role or scope, it defaults to the Contributor role for the current subscription.
If you create a service principal without using either the --password or --cert parameter, password authentication is used and a password is generated for you.
#>

#The command below will create a new Azure Service Principal in AzureAD that has contributor rights to the entire subscription that was selected on line 3
az ad sp create-for-rbac --name SPSubContributor

#The command below will create a new Azure Service Principal in AzureAD that has contributor rights on a resource group
az ad sp create-for-rbac --name SPRGContributor --role contributor --scopes /subscriptions/00000000-1111-2222-2222-333333333333/resourceGroups/ResourceGroupName