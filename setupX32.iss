; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Persepolis Download Manager"
#define MyAppVersion "3.2.0.0"
#define MyAppPublisher "Persepolis Team"
#define MyAppURL "https://persepolisdm.github.io"
#define MyAppExeName "Persepolis Download Manager.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{395C9C40-EA8B-4A46-B39F-CA3D60E7F179}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={commonpf}\{#MyAppName}
DisableDirPage=yes
DisableProgramGroupPage=yes
; The [Icons] "quicklaunchicon" entry uses {userappdata} but its [Tasks] entry has a proper IsAdminInstallMode Check.
UsedUserAreasWarning=no
LicenseFile=C:\Users\mosta\Desktop\persepolisarea\installer\LICENSE.txt
InfoAfterFile=C:\Users\mosta\Desktop\persepolisarea\installer\afterinstallation.txt
OutputDir=C:\Users\mosta\Desktop\persepolisarea\installer\Output
OutputBaseFilename=persepolis_3.2.0.0_windows_32bit
SetupIconFile=C:\Users\mosta\Desktop\persepolisarea\installer\persepolis.ico
UninstallDisplayIcon=C:\Users\mosta\Desktop\persepolisarea\installer\persepolis.ico
Compression=lzma2/ultra64
SolidCompression=yes
CloseApplications=force
ArchitecturesAllowed=x86
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 6.1; Check: not IsAdminInstallMode

[Files]
Source: "C:\Users\mosta\Desktop\persepolisarea\installer\bin\32\Persepolis Download Manager.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\mosta\Desktop\persepolisarea\installer\aria2\32\aria2c.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\mosta\Desktop\persepolisarea\installer\ffmpeg\32\ffmpeg.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\mosta\Desktop\persepolisarea\installer\LICENSE.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\mosta\Desktop\persepolisarea\installer\README.md"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

