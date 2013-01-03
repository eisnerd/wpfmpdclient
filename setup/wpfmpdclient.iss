; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{FF7AD932-3C06-4925-B3F4-DEF0B3608339}
AppName=WpfMpdClient
AppVerName=WpfMpdClient
DefaultDirName={pf}\WpfMpdClient
DefaultGroupName=WpfMpdClient
AllowNoIcons=yes
OutputDir=.\
OutputBaseFilename=setup
Compression=lzma
SolidCompression=yes
ChangesAssociations=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "..\WpfMpdClient\bin\release\WpfMpdClient.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\WpfMpdClient\bin\release\CsUpdater.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\WpfMpdClient\bin\release\LICENSE.TXT"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\WpfMpdClient\bin\release\mpd_icon.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\WpfMpdClient\bin\release\Images\cover.png"; DestDir: "{app}\Images"; Flags: ignoreversion
Source: "..\WpfMpdClient\bin\release\Images\next.png"; DestDir: "{app}\Images"; Flags: ignoreversion
Source: "..\WpfMpdClient\bin\release\Images\pause.png"; DestDir: "{app}\Images"; Flags: ignoreversion
Source: "..\WpfMpdClient\bin\release\Images\play.png"; DestDir: "{app}\Images"; Flags: ignoreversion
Source: "..\WpfMpdClient\bin\release\Images\previous.png"; DestDir: "{app}\Images"; Flags: ignoreversion
Source: "..\WpfMpdClient\bin\release\Images\repeat.png"; DestDir: "{app}\Images"; Flags: ignoreversion
Source: "..\WpfMpdClient\bin\release\Images\shuffle.png"; DestDir: "{app}\Images"; Flags: ignoreversion
Source: "..\WpfMpdClient\bin\release\Images\quit.png"; DestDir: "{app}\Images"; Flags: ignoreversion

; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\WpfMpdClient"; Filename: "{app}\WpfMpdClient.exe"; WorkingDir: "{app}"
Name: "{group}\{cm:UninstallProgram,WpfMpdClient}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\WpfMpdClient"; Filename: "{app}\WpfMpdClient.exe"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\WpfMpdClient"; Filename: "{app}\WpfMpdClient.exe"; Tasks: quicklaunchicon

[Registry]
Root: HKCR; Subkey: ".prj"; ValueType: string; ValueName: ""; ValueData: "WpfMpdClientProject"; Flags: uninsdeletevalue
Root: HKCR; Subkey: "WpfMpdClientProject"; ValueType: string; ValueName: ""; ValueData: "WpfMpdClient Project"; Flags: uninsdeletekey
Root: HKCR; Subkey: "WpfMpdClient\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\WpfMpdClient.exe,0"
Root: HKCR; Subkey: "WpfMpdClient\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\WpfMpdClient.exe"" ""%1"""

[Run]
Filename: "{app}\WpfMpdClient.exe"; Description: "{cm:LaunchProgram,WpfMpdClient}"; Flags: nowait postinstall skipifsilent

