# #Function without parameter


# function Show-message{
#     Write-Host "This is a sample message" -ForegroundColor Green
#     Get-Service -Name WinRM
# }

# Show-message

# #Function with parameter
# function Dynamic-Fun{

#     param(
#         $message,
#         $service
#     )

#     Write-Host "$message" -ForegroundColor Blue
#     Get-Service -Name $service

# }

# Dynamic-Fun -message "THE NEW MESSAGE :)" -service "BITS"



function greet-user{
    param(
     
     $UserName,
     $UserAge

    )
    Write-Host "Hi $UserName , You are $UserAge years old" -ForegroundColor Blue
}

greet-user -UserName "Aman" -UserAge 22