; This AutoHotKey Script will enable shortcut(Ctrl+shift+v) to paste in plain text formart on any application. 
; Much useful for apps which don't have shortcut keys like Outlook, Onenote etc. 
;===============
; Code
;===============
::.p::                      ; Trigger : type .p
^+v::                        ; Text–only paste from ClipBoard Trigger: Ctrl+Shift+V
;^#v::                       ; Text–only paste from ClipBoard Ctrl+Win+V
  Clip0 = %ClipBoardAll%
  ClipBoard = %ClipBoard%   ; Convert to text
  Send ^v                   ; For best compatibility: SendPlay
  Sleep 50                  ; Don't change clipboard while it is pasted!
                                 ; (Sleep > 0)
  ClipBoard = %Clip0%       ; Restore original ClipBoard
  VarSetCapacity(Clip0, 0)  ; Free memory
Return
