# Query for a list of WorkSpaces
Get-WKSWorkspace

# Delete Amazon WorkSpaces
Remove-WKSWorkspace -WorkspaceId ws-g6mjwpy0p -Force

Get-IAMRoleList | ? RoleName -match works
Remove-IAMRole -Force -RoleName workspaces_DefaultRole

Get-WKSWorkspaceDirectories
Unregister-WKSWorkspaceDirectory -DirectoryId d-92670dabe7 -Force
Remove-DSDirectory -