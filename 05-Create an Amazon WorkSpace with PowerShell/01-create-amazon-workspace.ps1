# Find commands in the Amazon WorkSpaces module
Get-Command -Module AWS.Tools.Workspaces

help New-WKSWorkspace

# API Reference for Amazon WorkSpaces: https://docs.aws.amazon.com/workspaces/latest/api/welcome.html

$WKSRequest = [Amazon.WorkSpaces.Model.WorkspaceRequest]::new()

New-WKSWorkspace -Workspace $WKSRequest

# Error: New-WKSWorkspace: The request is invalid.

$WKSRequest.UserName = 'Administrator'
New-WKSWorkspace -Workspace $WKSRequest

Get-WKSWorkspaceDirectories
$WKSRequest.DirectoryId = 'd-92670dabe7'
New-WKSWorkspace -Workspace $WKSRequest

# Let's try setting the Bundle ID
Get-WKSWorkspaceBundle -Owner Amazon | Select-Object -Property BundleId, LastUpdatedTime, Description | Sort-Object -Property LastUpdatedTime
$WKSRequest.BundleId = 'wsb-362t3gdrt'
New-WKSWorkspace -Workspace $WKSRequest

$WKSRequest.WorkspaceProperties.ComputeTypeName = [Amazon.WorkSpaces.Compute]