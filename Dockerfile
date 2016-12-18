# escape=`
FROM windowsservercore_java_git:latest

SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]

RUN New-LocalUser -Name '"jenkins"' -NoPassword -AccountNeverExpires -Description '"Jenkins User"' -FullName '"Jenkins"' -UserMayNotChangePassword
#need docker 1.13 for USER command
USER jenkins
SHELL ["powershell"]
