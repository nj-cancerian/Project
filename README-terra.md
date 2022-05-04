az login 
az account list
az account list |  grep -oP '(?<="id": ")[^"]*'
#creating Contributor Service Principal — enough permissions to create and delete resources.
az ad sp create-for-rbac --role="Contributor"  --scopes="/subscriptions/<subscription id>"
Make a note of the appId, password, and tenant. You need those to set up Terraform.

export ARM_CLIENT_ID=<insert the appId from above>
export ARM_SUBSCRIPTION_ID=<insert your subscription id>
export ARM_TENANT_ID=<insert the tenant from above>
export ARM_CLIENT_SECRET=<insert the password from above>

export ARM_CLIENT_ID=9440d16a-d0a9-4458-9d51-588e611a11b4
export ARM_SUBSCRIPTION_ID=4c61b90d-4e9c-41ec-89e7-e7b3d4c9e3b0
export ARM_TENANT_ID=c79aac3a-5f8e-47cb-95af-19246eb1b096
export ARM_CLIENT_SECRET=xY_bPQD5v74~GfPQlj-bzNFblcDW7guqw9