Write-Host("The Purge has Begun...")


Start-Process -FilePath  C:\Users\WardJe\Desktop\ClearUnusedRAM.lnk

# Date 24-May-2012 
 
# Funcationality : Flush DNS , Release IP Address | Register Ip Address | Register DNS  
 
# Flush the DNS Cache  
ipconfig /flushDns | Out-Null 
Write-Host "DNS Cache Flushed" -ForegroundColor Green 
 
# Release the Ip-Address 
 
ipconfig /release | Out-Null 
Write-Host  "Ip-Addresses Flushed  now Renewing the Ip-Adress" -ForegroundColor Green 
 
# Sleep for 4 Seconds 
 
sleep 4 
 
# Renew the Ip-Address 
 
ipconfig /renew | Out-Null 
Write-Host "Ip-Address Renewed" -ForegroundColor Green 
 
 
# Register the DNS 
ipconfig /registerdns | Out-Null 
Write-Host "DNS Regsitered" -ForegroundColor Green 
 
 
# End of Script ## Aman Dhallya 


Write-Host("Purge is Complete")
