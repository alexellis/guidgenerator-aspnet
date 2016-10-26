FROM microsoft/iis:10.0.14393.206
SHELL ["powershell"]

RUN Install-WindowsFeature NET-Framework-45-ASPNET ; \
    Install-WindowsFeature Web-Asp-Net45

COPY GuidGenerator GuidGenerator
RUN Remove-WebSite -Name 'Default Web Site'
RUN New-Website -Name 'guidgenerator' -Port 80 \
    -PhysicalPath 'c:\GuidGenerator' -ApplicationPool '.NET v4.5'
EXPOSE 80

CMD Write-Host IIS Started... ; \
    while ($true) { Start-Sleep -Seconds 3600 }

