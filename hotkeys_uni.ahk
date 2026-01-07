;Hotstrings

^#h::Suspend

#Hotstring C * ?

;---Greek-Alphabet---
::\alpha::{U+03B1}
::\Alpha::{U+0391}
::\beta::{U+03B2}
::\Beta::{U+0392}
::\gamma::{U+03B3}
::\Gamma::{U+0393}
::\delta::{U+03B4}
::\Delta::{U+0394}

::\epsilon::{U+03B5}
::\Epsilon::{U+0395}
::\zeta::{U+03B6}
::\Zeta::{U+0396}
::\eta::{U+03B7}
::\Eta::{U+0397}
::\theta::{U+03B8}
::\Theta::{U+0398}

::\iota::{U+03B9}
::\Iota::{U+0399}
::\kappa::{U+03BA}
::\Kappa::{U+039A}
::\lambda::{U+03BB}
::\Lambda::{U+039B}
::\mu::{U+03BC}
::\Mu::{U+039C}

::\nu::{U+03BD}
::\Nu::{U+039D}
::\xi::{U+03BE}
::\Xi::{U+039E}
::\omicron::{U+03BF}
::\Omicron::{U+039F}
::\pi::{U+03C0}
::\Pi::{U+03A0}

::\rho::{U+03C1}
::\Rho::{U+03A1}
::\sigma::{U+03C3}
::\Sigma::{U+03A3}
::\tau::{U+03C4}
::\Tau::{U+03A4}
::\upsilon::{U+03C5}
::\Upsilon::{U+03A5}

::\phi::{U+03C6}
::\Phi::{U+03A6}
::\chi::{U+03C7}
::\Chi::{U+03A7}
::\psi::{U+03C8}
::\Psi::{U+03A8}
::\omega::{U+03C9}
::\Omega::{U+03A9}

;--------------------


;---SUPERSCRIPT---
::\^^0::{U+2070}
::\^^1::{U+00B9}
::\^^2::{U+00B2}
::\^^3::{U+00B3}
::\^^4::{U+2074}
::\^^5::{U+2075}
::\^^6::{U+2076}
::\^^7::{U+2077}
::\^^8::{U+2078}
::\^^9::{U+2079}

::\^^+::{U+207A}
::\^^-::{U+207B}
::\^^=::{U+207C}
::\^^(::{U+207D}
::\^^)::{U+207E}
::\^^n::{U+207F}

::\^^'::{U+0307}
::\^^"::{U+0308}

;";---SUBSCRIPT---
::\_0::{U+2080}
::\_1::{U+2081}
::\_2::{U+2082}
::\_3::{U+2083}
::\_4::{U+2084}
::\_5::{U+2085}
::\_6::{U+2086}
::\_7::{U+2087}
::\_8::{U+2088}
::\_9::{U+2089}

::\_+::{U+208A}
::\_-::{U+208B}
::\_=::{U+208C}
::\_(::{U+208D}
::\_)::{U+208E}

::\__::{U+0332}

;----------------
::\sum::{U+2211}
::\product::{U+220F}
::\int::{U+222B}
::\part::{U+2202}
::\nabla::{U+2207}
::\nabl2::{U+25BD}
::\cross::{U+00D7}
::\dot::{U+00B7}
::\cdot::{U+00B7} ; same as dot
::\unit::{U+0302}

::\tint::{U+2320} ; top half integral
::\bint::{U+2321} ; bottom half integral

::\--::{U+2212}      ; Minus sign
::\min::{U+2212}     ; Minus sign
::\endash::{U+2013}  ; En Dash
::\emdash::{U+2014}  ; Em Dash
::\+-::{U+00B1}
::\-+::{U+2213}
::\=/::{U+2260}
::\==::{U+2261}
::\~=::{U+2248}
::\<=::{U+2264}
::\>=::{U+2265}
::\<<::{U+226A}
::\>>::{U+226B}
::\<|::{U+27e8}
::\>|::{U+27e9}
::\bra::{U+27E8}
::\ket::{U+27E9}


::\sqrt::{U+221A}
::\deg::{U+00B0}
::\inf::{U+221E}
::\hbar::{U+0127}
::\angstrom::{U+00C5}
::\micro::{U+00B5}
::\um::{U+00B5}m
::\prop::{U+221d}

::\arrowleft::{U+2190}
::\arrowup::{U+2191}
::\arrowright::{U+2192}
::\arrowdown::{U+2193}

::\trianleft::{U+25C0}
::\trianup::{U+25B2}
::\trianright::{U+25B6}
::\triandown::{U+25BC}

::\section::{U+00A7}
::\paragraph::{U+00B6}
::\dagger::{U+2020}
::\doubledagger::{U+2021}
::\check::{U+2713}
::\uncheck::{U+2717}
::\star::{U+2605}
::\vertdots::{U+22EE}
::\tm::{U+2122}

#Hotstring *0 ?0 C0


;-------------------------------

; Reload this script
^#r::
{
	Reload
}

; Volume
^#NumpadAdd::Volume_Up
^#NumpadSub::Volume_Down
^#Numpad0::Volume_Mute

; Media keys
#F9::Media_Play_Pause
#F10::Volume_Mute
#F11::Volume_Down
#F12::Volume_Up

; Minimize active window with Ctrl+Windowskey+M
^#m::WinMinimize "A"

;; Eject HDDaniel external hard drive
;^#e::Run D:\Programs\USBDiskEjector1.3.0.6\USB_Disk_Eject.exe /REMOVELABEL HDDaniel


; ---------- Terminals -----------
; --- Windows Native Terminals ---
^#t::				; Run Powershell terminal
{
	homedir := EnvGet("USERPROFILE")
	Run "powershell", homedir
}

^#y::				; Run cmd terminal
{
	homedir := EnvGet("USERPROFILE")
	Run "cmd", homedir
}

^#+t::				; Run Powershell terminal as admin
{
	psadmincommand := "PowerShell -windowstyle hidden -Command `"Start-Process powershell -ArgumentList '-NoExit', '-Command cd $env:userprofile' -Verb RunAs`""
	Run psadmincommand
}

^#+y::				; Run cmd terminal as admin
{
	homedir := EnvGet("USERPROFILE")
	psadmincommand := "PowerShell -windowstyle hidden -Command `"Start-Process cmd -ArgumentList '/k cd %userprofile%' -Verb RunAs`""
	Run psadmincommand
}


; --- Unix-like terminals ---
^!t::				; Run Git Bash terminal
{
	Run "C:\Program Files\Git\git-bash.exe --cd-to-home"
}


^!+t::				; Run Git Bash terminal as admin
{
	homedir := EnvGet("USERPROFILE")
	psadmincommand := "PowerShell -windowstyle hidden -Command `"Start-Process 'C:\Program Files\Git\git-bash.exe' -Verb RunAs`""
	Run psadmincommand, homedir
}




; === Shutdown & Sleep/Hibernate ===
^#+Backspace::
{
	Run "DisplaySwitch.exe /internal"
	Sleep 1500
	Run "shutdown -p"
}

^#+SC02B::Run "shutdown -h"


; === Multi Monitor ===
^#Numpad7::
{
	Run "DisplaySwitch.exe /internal"
}

^#Numpad8::
{
	Run "DisplaySwitch.exe /extend"
}

^#Numpad9::
{
	Run "DisplaySwitch.exe /external"
}


; If Windows Explorer is open, use the menu to open Powershell in current folder instead
#HotIf WinActive("ahk_class CabinetWClass")
^#t::SendInput "!fr"
^#+t::SendInput "!fsa"


; ---------- Adobe Reader - Hand Tool, Enable Scrolling and Read Mode ----------
; Tip: Open Navigation Pane with F4
#HotIf WinActive("ahk_class AcrobatSDIWindow")
!+#a Up::
{
	Sleep 100
	Send "{AppsKey}n" 		; Hand Tool
	Sleep 100
	Send "!vpc"				; Enable Scrolling
	Sleep 100
	Send "^h"				; Read Mode
;	Sleep 200
;	Send {F9}

}
