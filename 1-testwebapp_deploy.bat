@echo off
if (%1)==() goto :usage
if (%2)==() goto :usage
if (%3)==() goto :usage
aptcmd.exe -deploy -project_file_path "C:\Program Files\Aptitude Software\Aptitude 19.1.1\DeployedPackages\gitupload\1-testwebapp.brd" -config_file_path "C:\Program Files\Aptitude Software\Aptitude 19.1.1\DeployedPackages\gitupload\1-testwebapp.brd.config" -folder %1 -deployment_type "normal" -redeployment_type "full" -leave_configuration "no" -start_after_deployment "no" -host "127.0.0.1" -port "2000" -login %2 -password %3
goto :end
:usage
echo Usage: 1-testwebapp_deploy.bat ^<FOLDER^> ^<LOGIN^> ^<PASSWORD^>
:end
