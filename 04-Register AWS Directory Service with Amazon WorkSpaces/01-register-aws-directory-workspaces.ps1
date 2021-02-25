Get-Command -Module AWS.Tools.DirectoryService
Get-Command -Module AWS.Tools.Workspaces

# Register Amazon WorkSpaces with the directory
Register-WKSWorkspaceDirectory -DirectoryId d-92670d5451

# We need to specify the directory ID

# Find your AWS Directory Service ID
Get-DSDirectory
Register-WKSWorkspaceDirectory -DirectoryId d-92670dabe7 -EnableWorkDoc $false

# Create the Amazon WorkSpaces default IAM Role

$RoleParams = @{
  AssumeRolePolicyDocument = @'
{
    "Statement": [
      {
        "Effect": "Allow",
        "Principal": {
          "Service": "workspaces.amazonaws.com"
        },
        "Action": "sts:AssumeRole"
      }
    ]
  }
'@
  RoleName = 'workspaces_DefaultRole'
}
New-IAMRole @RoleParams

Get-IAMPolicyList | Select-Object -Property Arn | ? Arn -match worksp

# Attach managed policies for Amazon WorkSpaces to IAM role
Register-IAMRolePolicy -RoleName $RoleParams.RoleName -PolicyArn arn:aws:iam::aws:policy/AmazonWorkSpacesServiceAccess
Register-IAMRolePolicy -RoleName $RoleParams.RoleName -PolicyArn arn:aws:iam::aws:policy/AmazonWorkSpacesSelfServiceAccess

# Retry registering the AWS Directory Service instance
Register-WKSWorkspaceDirectory -DirectoryId d-92670dabe7 -EnableWorkDoc $false