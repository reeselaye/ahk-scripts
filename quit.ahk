; Copyright (c) 2016 the Institute of Power System Optimization, Guangxi University (the iPso)
; and original author(s). This file is licensed to you under the Apache License, Version 
; 2.0 (the"License"); you may not use this file except in compliance with the License. You 
; may obtain a copy of the License at
; 
;      http://www.apache.org/licenses/LICENSE-2.0
; 
; Unless required by applicable law or agreed to in writing, software distributed under the
; License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND,
; either express or implied. See the License for the specific language governing permissions
; and limitations under the License.

; Created by Beicun Li (John Resse) at 2015-10-21 21:12. Contact mister.resse@outlook.com.

; close current window - long press Esc



#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Esc::
	KeyWait Esc, T0.5
	if ErrorLevel{
		CloseActiveWin()
		return	
	}
	Send {Esc}
return

;RButton::
;	KeyWait RButton, T0.5
;	if ErrorLevel{
;		Send {RButton}
;		return
;	} else {
;		KeyWait RButton, T0.5
;		if ErrorLevel{
;			Send {RButton}
;			return
;		} else {
;			WinGetActiveTitle, Title
;			CloseActiveWin()
;			return	
;		}
;	}
;	Send {RButton}
;	return
;return
	


CloseActiveWin(){
	WinGetClass, class, A
	IfInString, class, Chat
	{
	    send !{F4}
	    return
	}
	WinGetActiveTitle, Title
	IfInString, Title, Firefox
	{
	    send ^w
	    return
	}
	IfInString, Title, AutoHotkey
	{
	    send {esc}
	    return
	}
	else
	WinClose, %Title%
	return 
}




