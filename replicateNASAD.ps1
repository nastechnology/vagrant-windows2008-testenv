Import-Module ActiveDirectory

New-ADOrganizationalUnit -Name "NASUsers" -Path "DC=nacs,DC=dev"

New-ADOrganizationalUnit -Name "Students" -Path "OU=NASUsers,DC=nacs,DC=dev"

New-ADOrganizationalUnit -Name "2015" -Path "OU=Students,OU=NASUsers,DC=nacs,DC=dev"

New-ADOrganizationalUnit -Name "2016" -Path "OU=Students,OU=NASUsers,DC=nacs,DC=dev"

New-ADOrganizationalUnit -Name "2017" -Path "OU=Students,OU=NASUsers,DC=nacs,DC=dev"

New-ADOrganizationalUnit -Name "2018" -Path "OU=Students,OU=NASUsers,DC=nacs,DC=dev"

New-ADOrganizationalUnit -Name "2019" -Path "OU=Students,OU=NASUsers,DC=nacs,DC=dev"

New-ADOrganizationalUnit -Name "2020" -Path "OU=Students,OU=NASUsers,DC=nacs,DC=dev"

New-ADOrganizationalUnit -Name "2021" -Path "OU=Students,OU=NASUsers,DC=nacs,DC=dev"

New-ADOrganizationalUnit -Name "2022" -Path "OU=Students,OU=NASUsers,DC=nacs,DC=dev"

New-ADOrganizationalUnit -Name "2023" -Path "OU=Students,OU=NASUsers,DC=nacs,DC=dev"

New-ADOrganizationalUnit -Name "2024" -Path "OU=Students,OU=NASUsers,DC=nacs,DC=dev"

New-ADOrganizationalUnit -Name "2025" -Path "OU=Students,OU=NASUsers,DC=nacs,DC=dev"

New-ADOrganizationalUnit -Name "2026" -Path "OU=Students,OU=NASUsers,DC=nacs,DC=dev"

New-ADOrganizationalUnit -Name "2027" -Path "OU=Students,OU=NASUsers,DC=nacs,DC=dev"

New-ADOrganizationalUnit -Name "2028" -Path "OU=Students,OU=NASUsers,DC=nacs,DC=dev"

New-ADGroup -Name "nhs_students" -SamAccountName nhs_students -GroupCategory Security -GroupScope Global -Path "OU=NASUsers,DC=nacs,DC=dev"

New-ADGroup -Name "nms_students" -SamAccountName nms_students -GroupCategory Security -GroupScope Global -Path "OU=NASUsers,DC=nacs,DC=dev"

New-ADGroup -Name "ces_students" -SamAccountName ces_students -GroupCategory Security -GroupScope Global -Path "OU=NASUsers,DC=nacs,DC=dev"

New-ADGroup -Name "wes_students" -SamAccountName wes_students -GroupCategory Security -GroupScope Global -Path "OU=NASUsers,DC=nacs,DC=dev"

New-ADGroup -Name "cdb_students" -SamAccountName cdb_students -GroupCategory Security -GroupScope Global -Path "OU=NASUsers,DC=nacs,DC=dev"
