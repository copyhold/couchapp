; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{0CDA65F1-9FD8-42C5-8DD0-F65F7E8B7304}
AppName=Couchapp
AppVerName=Couchapp 0.8.0
AppPublisher=Benoit Chesneau
AppPublisherURL=http://github.com/couchapp/couchapp
AppSupportURL=http://github.com/couchapp/couchapp
AppUpdatesURL=http://github.com/couchapp/couchapp
DefaultDirName={pf}\Couchapp
DefaultGroupName=Couchapp
LicenseFile=LICENSE
InfoAfterFile=resources\win32\postinstall.txt
OutputBaseFilename=couchapp-0.8.0
Compression=lzma
SolidCompression=yes
SourceDir=..\..

[Languages]
Name: english; MessagesFile: compiler:Default.isl

[Tasks]
Name: desktopicon; Description: {cm:CreateDesktopIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked

[Files]
Source: dist\couchapp.exe; DestDir: {app}; Flags: ignoreversion
Source: dist\library.zip; DestDir: {app}; Flags: ignoreversion
Source: dist\w9xpopen.exe; DestDir: {app}; Flags: ignoreversion
Source: dist\couchapp\*; DestDir: {app}; Flags: ignoreversion recursesubdirs createallsubdirs
Source: dist\add_path.exe; DestDir: {app}
Source: dist\python27.dll; DestDir: {app}
Source: dist\*.dll; DestDir: {app}
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: {group}\Couchapp; Filename: {app}\couchapp.exe
Name: {commondesktop}\Couchapp; Filename: {app}\couchapp.exe; Tasks: desktopicon

[Run]
Filename: {app}\add_path.exe; Parameters: {app}; Description: Add the installation path to the search path; Flags: postinstall

[UninstallRun]
Filename: {app}\add_path.exe; Parameters: /del {app}
