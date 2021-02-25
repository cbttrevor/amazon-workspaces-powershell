# docker run -it microsoft/powershell

$ModuleList = Find-Module -Name AWS*

$ModuleList | ? Name -match dir
$ModuleList | ? Name -match works
$ModuleList | ? Name -match iden

Install-Module -Name AWS.Tools.EC2, AWS.Tools.WorkSpaces, AWS.Tools.IdentityManagement, AWS.Tools.DirectoryService