# Find PowerShell commands in AWS Directory Service

# Examine the input parameters for this PowerShell command
help New-DSDirectory

New-DSDirectory

# We get prompted for a name, so let's specify one

New-DSDirectory -Name cbtnuggets

# Next we are prompted for a password, so let's specify one

New-DSDirectory -Name cbtnuggets -Password 'Sup3rPassword)'

# Next we are prompted for a size, so let's specify one

New-DSDirectory -Name cbtnuggets -Password 'Sup3rPassword)' -Size Small

# Now we receive a validation error on the -Name parameter

New-DSDirectory -Name cbt.local -Password 'Sup3rPassword)' -Size Small

# Now we receive an error saying that VPC settings must be specified

Get-EC2Vpc # Find the VPCs inside your AWS account
New-DSDirectory -Name cbt.local -Password 'Sup3rPassword)' -Size Small -VpcSettings_VpcId vpc-23523b5b

# Now we receive an error saying that VPC subnets must be specified

Get-EC2Subnet | Format-Table -AutoSize -Property VpcId, SubnetId, AvailabilityZone, CidrBlock
New-DSDirectory -Name cbt.local -Password 'Sup3rPassword)' -Size Small -VpcSettings_VpcId vpc-23523b5b -VpcSettings_SubnetId subnet-c0fd07b8, subnet-df06d382

# SUCCESS: Our new AWS Directory Service has been created!