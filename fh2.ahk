    ;To change keysbinds go to lines 583,666,743 to change F to whatever key you want and lines 633,709,786 to change E
    #SingleInstance,Force
    #InstallKeybdHook
    #UseHook On
    #InstallMouseHook
    #NoEnv
    #KeyHistory 0
    CoordMode,Mouse,Screen
    CoordMode,Pixel,Screen
    PID := DllCall("GetCurrentProcessId")
    Process, Priority, %PID%, Realtime
    ListLines, Off
    SetBatchLines, -1
    SetWinDelay,-1
    SetControlDelay,-1
    SetDefaultMouseSpeed,0
    setformat,float,0.1
    SetKeyDelay,30
    ubp:=0
    pbp:=1
     
        Gui, Show, w550 h410, Good Luck!
        Gui, Font, cWhite
        Gui, Color, cWhite
     
        Gui Add, GroupBox, cWhite x10 y10 w180 h125, Characters
            Gui Add, CheckBox, x20 y30 w100 h20 vWarden, Warden
            Gui Add, CheckBox, x20 y50 w100 h20 vBlackprior, Blackprior
    	Gui Add, CheckBox, x20 y70 w80 h20 vActive18, Sharman 
    	Gui Add, CheckBox, x20 y90 w80 h20 vActive19, Orochi 
    	Gui Add, CheckBox, x20 y110 w100 h20 vAll_Others, All Others
     
        Gui Add, GroupBox, cWhite x10 y135 w180 h105, Auto features for 1x1/2x2/4x4/
            Gui Add, CheckBox, x20 y155 w160 h20 vActive1, Dodge Bashes/Unblockables
            Gui Add, CheckBox, x20 y175 w80 h20 vActive2, Auto Block
    	Gui Add, CheckBox, x20 y195 w80 h20 vActive15, Light Bash
    	Gui Add, CheckBox, x20 y215 w80 h20 vActive20,JJ/Nobu
    	
     
        Gui Add, GroupBox, cWhite x10 y240 w180 h165, For Button - [F]
            Gui Add, CheckBox, x20 y260 w80 h20 vActive3, Auto Parry
            Gui Add, CheckBox, x20 y280 w80 h20 vActive4, Auto Flip
            Gui Add, CheckBox, x20 y300 w80 h20 vActive13, Musha
            Gui Add, CheckBox, x20 y320 w80 h20 vActive14, Warlord
    	Gui Add, CheckBox, x20 y340 w80 h20 vActive16, Sharman
    	Gui Add, CheckBox, x20 y360 w80 h20 vActive17, Orochi
    	Gui Add, CheckBox, x20 y380 w80 h20 vActive21, JJ/Nobu
     
        Gui Add, GroupBox, cWhite x200 y250 w170 h85, For Button - [E]
            Gui Add, CheckBox, x210 y270 w80 h20 vActive9, Auto Parry
            Gui Add, CheckBox, x210 y290 w80 h20 vActive11, Auto CC
            Gui Add, CheckBox, x210 y310 w80 h20 vActive12, Auto Deflect
     
        Gui Add, GroupBox, cWhite x200 y340 w170 h65, Make Your Own
     	Gui Add, CheckBox, x210 y360 w80 h20 vActive22, Custom
    	Gui Add, CheckBox, x210 y380 w80 h20 vActive23, Custom
    	
    	
     
       Gui Add, GroupBox, cWhite x200 y10 w170 h55, Resolution (ingame)
            Gui Add, Text, x205 y34 w35 h20, X:
            Gui Add, Edit, c390202 x220 y32 w45 h20 Center vres1, 0
            Gui Add, Text, x272 y34 w35 h20, Y:
            Gui Add, Edit, c390202 x287 y32 w45 h20 Center vres2, 0
            Gui Add, Button, x339 y34 w20 h16 gButtonOK, ok
     
        Gui Add, GroupBox, cWhite x200 y65 w170 h185, Delays
            Gui Add, Text, x210 y85 w120 h20, Dodge Delay in ms:
            Gui Add, Edit, c390202 x310 y85 w27 h17 vPause, 0
            Gui Add, Text, x210 y105 w120 h20, Feints Check Delay:
            Gui Add, Edit, c390202 x310 y105 w27 h17 vPause1, 0
            Gui Add, Text, x210 y125 w120 h20, Block Delay in ms:
            Gui Add, Edit, c390202 x310 y125 w27 h17 vPause3, 0
            Gui Add, CheckBox, x210 y145 w155 h20 vActive5, RMouse Button after dodge
            Gui Add, CheckBox, x210 y165 w155 h20 vActive6, LMouse Button after dodge
            Gui Add, Text, x210 y185 w130 h20, L/RMouse Delay in ms:
            Gui Add, Edit, c390202 x325 y185 w27 h17 vPause2, 0
            Gui Add, Edit, c390202 x345 y205 w20 h17 vLeft, 0
            Gui Add, Edit, c390202 x345 y225 w20 h17 vRight, 0
            Gui Add, Text, x210 y205 w128 h20, Delay on left deflect in ms:
            Gui Add, Text, x210 y225 w130 h20, Delay on right deflect in ms
     
     
            Gui Add, GroupBox, cWhite x380 y10 w160 h135, Hotkeys
            Gui, Add, Text, x390 y25 w150 h20, [Dodges On/Off]  - F2
            Gui, Add, Text, x390 y45 w150 h20, [Parry Orange On/Off]  -  F5
    	Gui, Add, Text, x390 y65 w150 h20, [Pause/Resume]  -  Z
            Gui, Add, Text, x390 y85 w150 h20, [Parry/Button 1]  -  C
            Gui, Add, Text, x390 y105 w150 h20, [Parry/Button 2]  -  E
            Gui, Add, Text, x390 y125 w150 h60, [Flip/Button]  -  W
     
         Gui Add, GroupBox, cWhite x380 y145 w160 h112, Help and Settings
            Gui Add, Button, x390 y163 w140 h19 gButtonH1, How to use
            Gui Add, Button, x390 y185 w140 h19 gButtonH2, Load Settings
            Gui Add, Button, x390 y207 w140 h19 gButtonH3, Save Settings
            Gui Add, Button, x390 y229 w140 h19 gButtonH4, Apply Settings
     
         Gui Add, GroupBox, cWhite x380 y260 w160 h80, Controls
            Gui Add, Button, x390 y283 w140 h20 gButtonH7, Reload
            Gui Add, Button, x390 y306 w140 h20 gButtonH5, Start
     
        Gui Add, GroupBox, cWhite x380 y345 w160 h60, Credits
            Gui Add, Text, cGreen x390 y360 w135 h50, HappyBot v3.4 - Developed by XEAHT#3193 and FlorasSecret#9666
     
        
     
    SetWorkingDir %A_ScriptDir%
    return
     
    ButtonH5:
    SoundBeep
    GuiControlget, Warden
    GuiControlget, Blackprior
    GuiControlget, All_Others
    GuiControlget, Active1
    GuiControlget, Active2
    GuiControlget, Active3
    GuiControlget, Active4
    GuiControlget, Active5
    GuiControlget, Active6
    GuiControlget, Active7
    GuiControlget, Active9
    GuiControlget, Active11
    GuiControlget, Active12
    GuiControlget, Active13
    GuiControlget, Active14
    GuiControlget, Active15
    GuiControlget, Active16
    GuiControlget, Active17
    GuiControlget, Active18
    GuiControlget, Active19
    GuiControlget, Active20
    GuiControlget, Active21
    GuiControlget, Active22
    GuiControlget, Pause
    GuiControlget, Pause1
    GuiControlget, Pause2
    GuiControlget, Pause3
    GuiControlget, Left
    GuiControlget, Right
    GuiControlget, res1
    GuiControlget, res2
    x8 := (res1 / 1920) * 860
    y8 := (res2 / 1080) * 80
    x9 := (res1 / 1920) * 1075
    y9 := (res2 / 1080) * 425
    x18 := (res1 / 1920) * 670
    y18 := (res2 / 1080) * 300
    x19 := (res1 / 1920) * 820
    y19 := (res2 / 1080) * 510
    B55 := res1/1920
    Y55 := res2/1080
    GoSub Start
    return
     
    ButtonH7:
    Reload
    return
     
    ButtonH1:
    {
    Msgbox,0, How To Use? 1) Open game and go into display settings, set feild of view on 81, contrast 55 -< without 55 contrast script not gonna work 2) In graphics settings - disable shadows, Motion Blur, Ambient Occlusion, Dynamic Reflections, Dynamic Shadows 3) keymapping(bind all in secondary slots unless say primary) bind arrows on movements , arrow up - forward, arrow down - backward, arrow left - left, arrow right - right, For parry you need use right mouse button, For Flips - Numpad 9 in secondary for light attack and fullblock, For autoblock - Numpad 4 at left guard, Numpad 6 - at right guard, Numpad 8 at top guard 4,For Other characters you need full block - C(in primary key),And bind GB to Numpad 5. When all keybinds ready you can start script, select characters on which you playing, tick in menu features which u want use(one per section but always have auto blockticked) put ur resolution where X and Y - like x=1920 y=1080. (resolution in script gui and in game should be the same) and press small ok button, now you can start script for that press Start Button, now go back in game and test it, all features working automaticly all u can do thats parry - for that you need hold E or F, before enemy started an attack, when enemy doing heavy feint very important let E or F go every time! for refresh parry and block direction. Script working in any game mode with borderless windowed mode or fullscreen, - Not working in windowed mode! Best working on 1920x1080 fov 81 FPS - 120 (minimum) Monitor Hz 120 (minimum) my discord if u have questions XEAHT#3193
    }
    return
     
    ButtonH2:
    {
    IniRead, Left, %A_WorkingDir%\Config.ini, Options, Left
    GuiControl,,Left, %Left%
    IniRead, Right, %A_WorkingDir%\Config.ini, Options, Right
    GuiControl,,Right, %Right%
    IniRead, Pause, %A_WorkingDir%\Config.ini, Options, Pause
    GuiControl,,Pause, %Pause%
    IniRead, Pause1, %A_WorkingDir%\Config.ini, Options, Pause1
    GuiControl,,Pause1, %Pause1%
    IniRead, Pause2, %A_WorkingDir%\Config.ini, Options, Pause2
    GuiControl,,Pause2, %Pause2%
    IniRead, Pause3, %A_WorkingDir%\Config.ini, Options, Pause3
    GuiControl,,Pause3, %Pause3%
    IniRead, res1, %A_WorkingDir%\Config.ini, Options, res1
    GuiControl,,res1, %res1%
    IniRead, res2, %A_WorkingDir%\Config.ini, Options, res2
    GuiControl,,res2, %res2%
    IniRead, Active1, %A_WorkingDir%\Config.ini, Options, Active1
    GuiControl,,Active1, %Active1%
    IniRead, Active2, %A_WorkingDir%\Config.ini, Options, Active2
    GuiControl,,Active2, %Active2%
    IniRead, Active3, %A_WorkingDir%\Config.ini, Options, Active3
    GuiControl,,Active3, %Active3%
    IniRead, Active4, %A_WorkingDir%\Config.ini, Options, Active4
    GuiControl,,Active4, %Active4%
    IniRead, Active5, %A_WorkingDir%\Config.ini, Options, Active5
    GuiControl,,Active5, %Active5%
    IniRead, Active6, %A_WorkingDir%\Config.ini, Options, Active6
    GuiControl,,Active6, %Active6%
    IniRead, Active7, %A_WorkingDir%\Config.ini, Options, Active7
    GuiControl,,Active7, %Active7%
    IniRead, Active9, %A_WorkingDir%\Config.ini, Options, Active9
    GuiControl,,Active9, %Active9%
    IniRead, Active11, %A_WorkingDir%\Config.ini, Options, Active11
    GuiControl,,Active11, %Active11%
    IniRead, Active12, %A_WorkingDir%\Config.ini, Options, Active12
    GuiControl,,Active12, %Active12%
    IniRead, Active13, %A_WorkingDir%\Config.ini, Options, Active13
    GuiControl,,Active13, %Active13%
    IniRead, Active14, %A_WorkingDir%\Config.ini, Options, Active14
    GuiControl,,Active14, %Active14%
    IniRead, Active15, %A_WorkingDir%\Config.ini, Options, Active15
    GuiControl,,Active15, %Active15%
    IniRead, Active16, %A_WorkingDir%\Config.ini, Options, Active16
    GuiControl,,Active16, %Active16%
    IniRead, Active17, %A_WorkingDir%\Config.ini, Options, Active17
    GuiControl,,Active17, %Active17%
    IniRead, Active18, %A_WorkingDir%\Config.ini, Options, Active18
    GuiControl,,Active18, %Active18%
    IniRead, Active19, %A_WorkingDir%\Config.ini, Options, Active19
    GuiControl,,Active19, %Active19%
    IniRead, Active20, %A_WorkingDir%\Config.ini, Options, Active20
    GuiControl,,Active20, %Active20%
    IniRead, Active21, %A_WorkingDir%\Config.ini, Options, Active21
    GuiControl,,Active21, %Active21%
    IniRead, Active22, %A_WorkingDir%\Config.ini, Options, Active22
    GuiControl,,Active22, %Active22%
    IniRead, Warden, %A_WorkingDir%\Config.ini, Options, Warden
    GuiControl,,Warden, %Warden%
    IniRead, Blackprior, %A_WorkingDir%\Config.ini, Options, Blackprior
    GuiControl,,Blackprior, %Blackprior%
    IniRead, All_Others, %A_WorkingDir%\Config.ini, Options, All_Others
    GuiControl,,All_Others, %All_Others%
    msgbox,0, Successfully, Settings successfully loaded!
    }
    return
     
    ButtonH3:
    {
    IniWrite, %Left%, %A_WorkingDir%\Config.ini, Options, Left
    IniWrite, %Right%, %A_WorkingDir%\Config.ini, Options, Right
    IniWrite, %Pause%, %A_WorkingDir%\Config.ini, Options, Pause
    IniWrite, %Pause1%, %A_WorkingDir%\Config.ini, Options, Pause1
    IniWrite, %Pause2%, %A_WorkingDir%\Config.ini, Options, Pause2
    IniWrite, %Pause3%, %A_WorkingDir%\Config.ini, Options, Pause3
    IniWrite, %res1%, %A_WorkingDir%\Config.ini, Options, res1
    IniWrite, %res2%, %A_WorkingDir%\Config.ini, Options, res2
    IniWrite, %Active1%, %A_WorkingDir%\Config.ini, Options, Active1
    IniWrite, %Active2%, %A_WorkingDir%\Config.ini, Options, Active2
    IniWrite, %Active3%, %A_WorkingDir%\Config.ini, Options, Active3
    IniWrite, %Active4%, %A_WorkingDir%\Config.ini, Options, Active4
    IniWrite, %Active5%, %A_WorkingDir%\Config.ini, Options, Active5
    IniWrite, %Active6%, %A_WorkingDir%\Config.ini, Options, Active6
    IniWrite, %Active7%, %A_WorkingDir%\Config.ini, Options, Active7
    IniWrite, %Active9%, %A_WorkingDir%\Config.ini, Options, Active9
    IniWrite, %Active11%, %A_WorkingDir%\Config.ini, Options, Active11
    IniWrite, %Active12%, %A_WorkingDir%\Config.ini, Options, Active12
    IniWrite, %Active13%, %A_WorkingDir%\Config.ini, Options, Active13
    IniWrite, %Active14%, %A_WorkingDir%\Config.ini, Options, Active14
    IniWrite, %Active15%, %A_WorkingDir%\Config.ini, Options, Active15
    IniWrite, %Active16%, %A_WorkingDir%\Config.ini, Options, Active16
    IniWrite, %Active17%, %A_WorkingDir%\Config.ini, Options, Active17
    IniWrite, %Active18%, %A_WorkingDir%\Config.ini, Options, Active18
    IniWrite, %Active19%, %A_WorkingDir%\Config.ini, Options, Active19
    IniWrite, %Active19%, %A_WorkingDir%\Config.ini, Options, Active20
    IniWrite, %Active19%, %A_WorkingDir%\Config.ini, Options, Active21
    IniWrite, %Active19%, %A_WorkingDir%\Config.ini, Options, Active22
    IniWrite, %Warden%, %A_WorkingDir%\Config.ini, Options, Warden
    IniWrite, %Blackprior%, %A_WorkingDir%\Config.ini, Options, Blackprior
    IniWrite, %All_Others%, %A_WorkingDir%\Config.ini, Options, All_Others
    msgbox,0, Successfully, Settings successfully saved!
    }
    return
     
    ButtonH4:
    {
    GuiControlget, Warden
    GuiControlget, Blackprior
    GuiControlget, All_Others
    GuiControlget, Active1
    GuiControlget, Active2
    GuiControlget, Active3
    GuiControlget, Active4
    GuiControlget, Active5
    GuiControlget, Active6
    GuiControlget, Active7
    GuiControlget, Active8
    GuiControlget, Active9
    GuiControlget, Active10
    GuiControlget, Active11
    GuiControlget, Active12
    GuiControlget, Active13
    GuiControlget, Active14
    GuiControlget, Active15
    GuiControlget, Active16
    GuiControlget, Active17
    GuiControlget, Active18
    GuiControlget, Active19
    GuiControlget, Active20
    GuiControlget, Active21
    GuiControlget, Active22
    GuiControlget, Pause
    GuiControlget, Pause1
    GuiControlget, Pause2
    GuiControlget, Pause3
    GuiControlget, res1
    GuiControlget, res2
    GuiControlget, Left
    GuiControlget, Right
    }
    msgbox,0, Successfully, Settings successfully updated!
    return
     
    ButtonOK:
    {
    GuiControlget, res1
    GuiControlget, res2
    x8 := (res1 / 1920) * 860
    y8 := (res2 / 1080) * 80
    x9 := (res1 / 1920) * 1075
    y9 := (res2 / 1080) * 425
    x18 := (res1 / 1920) * 670
    y18 := (res2 / 1080) * 300
    x19 := (res1 / 1920) * 820
    y19 := (res2 / 1080) * 510
    if(res1=0||res2=0){
    Msgbox, Resolution cant be %res1% x %res2%
    reload
    }
    if(res1<res2){
    Msgbox, Resolution cant be %res1% x %res2%
    reload
    }
    if(res1>res2){
    Msgbox, Resolution updated, new resolution %res1% x %res2%
    }
    }
    return
     
    Guiclose:
       exitapp
    return
     
    Start:
    Loop{
    GoSub Calculate
    GoSub SearchBot
    GoSub AutoBlock
    }
    Calculate:
    PixelSearch,Bx,By,x18,y18,x19,y19,0x058341,0,Fast|RGB
    if(ErrorLevel=0)
    box:=1
    if(ErrorLevel=1)
    box:=2
    PixelSearch,Ax,Ay,x8,y8,x9,y9,0x058341,0,Fast|RGB
    if(ErrorLevel=0&&box=2){
    x2 := Ax-200*B55
    y2 := Ay+20*Y55
    x3 := Ax+160*B55
    y3 := Ay+170*Y55
    x4 := Ax+5*B55
    y4 := Ay+195*Y55
    x5 := Ax+160*B55
    y5 := Ay+430*Y55
    x6 := Ax-200*B55
    y6 := Ay+195*Y55
    x7 := Ax-30*B55
    y7 := Ay+430*Y55
    x16 := Ax-200*B55
    y16 := Ay+20*Y55
    x17 := Ax+160*B55
    y17 := Ay+430*Y55
    }
    if(ErrorLevel=0&&box=1){
    x2 := Ax-100*B55
    y2 := Ay+10*B55
    x3 := Ax+80*Y55
    y3 := Ay+85*Y55
    x4 := Ax+2.5*B55
    y4 := Ay+97.5*Y55
    x5 := Ax+80*B55
    y5 := Ay+227.7*Y55
    x6 := Ax-100*B55
    y6 := Ay+97.5*Y55
    x7 := Ax-15*B55
    y7 := Ay+227.7*Y55
    x16 := Ax-117.6*B55
    y16 := Ay+10*Y55
    x17 := Ax+94.11*B55
    y17 := Ay+227.7*Y55
    }
    if(ErrorLevel=1){
    PixelSearch,Ax,Ay,x8,y8,x9,y9,0xFFFF0A,0,Fast|RGB
    if(ErrorLevel=0&&box=2){
    x2 := Ax-175*B55
    y2 := Ay+65*Y55
    x3 := Ax+185*B55
    y3 := Ay+185*Y55
    x4 := Ax+30*B55
    y4 := Ay+215*Y55
    x5 := Ax+185*B55
    y5 := Ay+430*Y55
    x6 := Ax-175*B55
    y6 := Ay+215*Y55
    x7 := Ax-5*B55
    y7 := Ay+430*Y55
    x16 := Ax-175*B55
    y16 := Ay+65*Y55
    x17 := Ax+185*B55
    y17 := Ay+430*Y55
    }
    if(ErrorLevel=0&&box=1){
    x2 := Ax-87.5*B55
    y2 := Ay+35*B55
    x3 := Ax+92.5*Y55
    y3 := Ay+92.5*Y55
    x4 := Ax+15*B55
    y4 := Ay+107.5*Y55
    x5 := Ax+92.5*B55
    y5 := Ay+215*Y55
    x6 := Ax-87.5*B55
    y6 := Ay+107.5*Y55
    x7 := Ax-2.5*B55
    y7 := Ay+215*Y55
    x16 := Ax-87.5*B55
    y16 := Ay+35*Y55
    x17 := Ax+92.5*B55
    y17 := Ay+215*Y55
    }
    }
    SearchBot:
            PixelSearch,vx,vy,x16,y16,x17,y17,0xF66208,0,Fast|RGB
            if(ErrorLevel=0){
            PixelSearch,px,py,x16,y16,x17,y17,0xFF221C,3,Fast|RGB
            if(ErrorLevel=0){
            ubp:=1
            SetTimer, Release, -1000
            GoSub ubparry
            return
    }
            if(ErrorLevel=1&&Blackprior=1){
            GoSub Dodge1
    }
            if(ErrorLevel=1&&Blackprior=0){
            GoSub Dodge2
    }
      	if(ErrorLevel=1&&Active15=1){
            GoSub Dodge3
    }
    if(ErrorLevel=1&&Active20=1){
            GoSub Dodge4
    }
    }
    return
     
    AutoBlock:
          PixelSearch,zx,zy,x16,y16,x17,y17,0xFF3129,2,Fast|RGB
          if(Errorlevel = 0){
          if(zx > x4 and zy > y4)
          {
          GoSub RGT
          return
          }
          if(zx < x7 and zy > y4)
          {
          GoSub LFT
          return
          }
          if(zy > y2 and zy < y3)
          {
          GoSub TOP
          return
          }
    }
    return
     
    ubparry:
          While,(ubp=1){
          PixelSearch,px,py,x16,y16,x17,y17,0xFF221C,3,Fast|RGB
          if(ErrorLevel=1){
          Sleep, Pause1
          PixelSearch,px,py,x16,y16,x17,y17,0xF66208,0,Fast|RGB
          if(ErrorLevel=0&&Active1=1){
          while, getkeystate("W"){
          if(Blackprior=1){
          Send, {Numpad9 down}{Numpad9 Up}
          Sleep, 2300
          return
    }
          if(Blackprior=0){
          SetKeyDelay,1
          BlockInput, On
          Send, {Down down}{Space Down}{Space Up}{Down Up}
          BlockInput, Off
          SetKeyDelay,30
          Sleep, 700
          return
    }
    }
          if(pbp=0){
          Send, {RButton}
          }
          if(pbp=1){
          Send, {Space Down}{Space Up}
    }
          Sleep, 700
    }
    }
    }
    return
     
    Dodge1:
            if(Active1=1){
            Sleep, Pause
            while, getkeystate("W"){
            Send, {Numpad9 Down}{Numpad9 Up}
            Sleep, 2000
            return
    }
            Send, {Space Down}{Space Up}
            Sleep, 700
    }
    return
     
     
    Dodge2:
            if(Active1=1){
            Sleep, Pause
            while, getkeystate("W"){
            SetKeyDelay,1
            BlockInput, On
            Send, {Down down}{Space Down}{Space Up}{Down Up}
            BlockInput, Off
            SetKeyDelay,30
            Sleep, 700
            return
    }
    	Send, {Space Down}{Space Up}
            if(Active6=1){
            Sleep, Pause2
            Send, {Space Down}{Space Up}{LButton}
    }
            if(Active5=1){
            Sleep, Pause2
            Send, {Space Down}{Space Up}{RButton}
    }
    	if(Active18=1){
            Sleep, Pause2
    	Send,{Space Down}{Space Up}{Numpad5 Down}{Numpad5 Up}
    }
    	if(Active19=1){
            Sleep, Pause2
    	Send,{Space Down}{Space Up}{LButton}
    }
    	if(Active15=1){
            Sleep, Pause2
    	Send,{LButton}
    }
     
     
    	Sleep, 700
            return
    }
    return
     
    Dodge3:
    	if(Active15=1){
            Sleep, Pause2
            Send, {LButton}
    }
    return
     
    Dodge4:
    	if(Active20=1){
            Sleep, Pause2
            Send, {C Down}{C Up}
    }
    return
     
    Release:
    ubp:=0
    return
     
    TOP:
    Sleep, Pause3
    Send, {Numpad8 Down}{Numpad8 Up}
    While, GetKeyState("F"){
          PixelSearch,px,py,x16,y16,x17,y17,0xFF2922,0,Fast|RGB
          if(ErrorLevel = 1){
          PixelSearch,px,py,x16,y16,x17,y17,0xFF9A8D,0,Fast|RGB
          if(ErrorLevel = 0){
    if(Active3=1&&Warden=0){
    Send, {RButton}
    Sleep, 850
    return
    }
    if(Active3=1&&Warden=1){
    Send, {LButton}
    Sleep, 500
    Send, {LButton}
    Sleep, 850
    return
    }
    if(Active4=1){
    Send, {Numpad9 down}{Numpad9 Up}
    Sleep, 2000
    return
    }
    if(Active13=1){
    Send, {C down}{C Up}{RButton}
    Sleep, 850
    return
    }
    if(Active14=1){
    Send, {C down}{C Up}{LButton}
    Sleep, 250
    return
    }
    if(Active16=1){
    Send,{Space Down}{Space Up}{Numpad5 Down}{Numpad5 Up}
    Sleep, 250
    return
    }
    if(Active17=1){
    Send,{Space Down}{Space Up}{Numpad9 Down}{Numpad9 Up}
    Sleep, 500
    return
    }
    if(Active21=1){
    Send, {F down}{F Up}
    Sleep, 250
    return
    }
    }
    }
    }
    While, GetKeyState("E"){
          PixelSearch,px,py,x16,y16,x17,y17,0xFF2922,0,Fast|RGB
          if(ErrorLevel = 1){
          PixelSearch,px,py,x16,y16,x17,y17,0xFF9A8D,0,Fast|RGB
          if(ErrorLevel = 0){
    if(Active9=1){
    Send, {RButton}
    Sleep, 850
    return
    }
    if(Active11=1){
    Send, {LButton}
    Sleep, 1200
    return
    }
    if(Active12=1){
    SetKeyDelay,1
    BlockInput, On
    Send, {W Up}{S Up}{A Up}{D Up}
    Send, {Up Down}{Space Down}{Space Up}{Up Up}
    BlockInput, Off
    SetKeyDelay,30
    Sleep, 1200
    return
    }
    }
    }
    }
    return
     
    LFT:
    Sleep, Pause3
    Send, {Numpad4 Down}{Numpad4 Up}
    While, GetKeyState("F"){
          PixelSearch,px,py,x16,y16,x17,y17,0xFF2922,0,Fast|RGB
          if(ErrorLevel = 1){
          PixelSearch,px,py,x16,y16,x17,y17,0xFF9A8D,0,Fast|RGB
          if(ErrorLevel = 0){
    if(Active3=1){
    Send, {RButton}
    Sleep, 850
    return
    }
    if(Active4=1){
    Send, {Numpad9 down}{Numpad9 Up}
    Sleep, 2000
    return
    }
    if(Active13=1){
    Send, {C down}{C Up}{RButton}
    Sleep, 850
    return
    }
    if(Active14=1){
    Send, {C down}{C Up}{LButton}
    Sleep, 250
    return
    }
    if(Active16=1){
    Send,{Space Down}{Space Up}{Numpad5 Down}{Numpad5 Up}
    Sleep, 250
    return
    }
    if(Active17=1){
    Send,{Space Down}{Space Up}{Numpad9 Down}{Numpad9 Up}
    Sleep, 500
    return
    }
    if(Active21=1){
    Send, {F down}{F Up}
    Sleep, 250
    return
    }
    }
    }
    }
    While, GetKeyState("E"){
          PixelSearch,px,py,x16,y16,x17,y17,0xFF2922,0,Fast|RGB
          if(ErrorLevel = 1){
          PixelSearch,px,py,x16,y16,x17,y17,0xFF9A8D,0,Fast|RGB
          if(ErrorLevel = 0){
    if(Active9=1){
    Send, {RButton}
    Sleep, 850
    return
    }
    if(Active11=1){
    Send, {LButton}
    Sleep, 1200
    return
    }
    if(Active12=1){
    SetKeyDelay,1
    BlockInput, On
    Send, {W Up}{S Up}{A Up}{D Up}
    Sleep, Left
    Send, {Left Down}{Space Down}{Space Up}{Left Up}
    BlockInput, Off
    SetKeyDelay,30
    Sleep, 1200
    return
    }
    }
    }
    }
    return
     
    RGT:
    Sleep, Pause3
    Send, {Numpad6 Down}{Numpad6 Up}
    While, GetKeyState("F"){
          PixelSearch,px,py,x16,y16,x17,y17,0xFF2922,0,Fast|RGB
          if(ErrorLevel = 1){
          PixelSearch,px,py,x16,y16,x17,y17,0xFF9A8D,0,Fast|RGB
          if(ErrorLevel = 0){
    if(Active3=1){
    Send, {RButton}
    Sleep, 850
    return
    }
    if(Active4=1){
    Send, {Numpad9 down}{Numpad9 Up}
    Sleep, 2000
    return
    }
    if(Active13=1){
    Send, {C down}{C Up}{RButton}
    Sleep, 850
    return
    }
    if(Active14=1){
    Send, {C down}{C Up}{LButton}
    Sleep, 250
    return
    }
    if(Active16=1){
    Send,{Space Down}{Space Up}{Numpad5 Down}{Numpad5 Up}
    Sleep, 250
    return
    }
    if(Active17=1){
    Send,{Space Down}{Space Up}{Numpad9 Down}{Numpad9 Up}
    Sleep, 500
    return
    }
    if(Active21=1){
    Send, {F down}{F Up}
    Sleep, 250
    return
    }
    }
    }
    }
    While, GetKeyState("E"){
          PixelSearch,px,py,x16,y16,x17,y17,0xFF2922,0,Fast|RGB
          if(ErrorLevel = 1){
          PixelSearch,px,py,x16,y16,x17,y17,0xFF9A8D,0,Fast|RGB
          if(ErrorLevel = 0){
    if(Active9=1){
    Send, {RButton}
    Sleep, 850
    return
    }
    if(Active11=1){
    Send, {LButton}
    Sleep, 1200
    return
    }
    if(Active12=1){
    SetKeyDelay,1
    BlockInput, On
    Send, {W Up}{S Up}{A Up}{D Up}
    Sleep, Right
    Send, {Right Down}{Space Down}{Space Up}{Right Up}
    BlockInput, Off
    SetKeyDelay,30
    Sleep, 1200
    return
    }
    }
    }
    }
    return
     
    ~LShift::
    if(Active12=1){
    OutVar:=GetKeyState("LShift")
    if(OutVar=1){
    Send, {Numpad3 Down}{Numpad3 Up}
    }
    }
    return
     
    ~F5::
    if(pbp=1){
    pbp:=0
    SoundPlay, %A_WorkingDir%\buttonclick.wav
    return
    }
    if(pbp=0){
    pbp:=1
    SoundPlay, %A_WorkingDir%\buttonunclick.wav
    return
    }
    return
     
    ~R::
    Active1:=0
            SetTimer, Rele, -9000
    return
     
    Rele:
    Active1:=1
    return
     
    ~F1::
    if(Pause=0){
    Pause:=80
    SoundPlay, %A_WorkingDir%\buttonclick.wav
    return
    }
    if(Pause=80){
    Pause:=0
    SoundPlay, %A_WorkingDir%\buttonunclick.wav
    return
    }
    return
     
    ~F3::
    if(Active3=1){
    Active3:=0
    Active4:=1
    GuiControl,,Active3, 0
    GuiControl,,Active4, 1
    SoundPlay, %A_WorkingDir%\buttonclick.wav
    return
    }
    if(Active4=1){
    Active3:=1
    Active4:=0
    GuiControl,,Active3, 1
    GuiControl,,Active4, 0
    SoundPlay, %A_WorkingDir%\buttonclick.wav
    return
    }
    return
     
    ~F2::
    if(Active1=1){
    Active1:=0
    GuiControl,,Active1, 0
    SoundPlay, %A_WorkingDir%\buttonunclick.wav
    return
    }
    if(Active1=0){
    Active1:=1
    GuiControl,,Active1, 1
    SoundPlay, %A_WorkingDir%\buttonclick.wav
    return
    }
     
    ~Z::
        pause
        SoundPlay, %A_WorkingDir%\buttonclick.wav
    return
     
    ~F4::
    nMode++
    if nMode = 1
    {
    Active9:=1
    Active11:=0
    Active12:=0
    GuiControl,,Active9, 1
    GuiControl,,Active11, 0
    GuiControl,,Active12, 0
    SoundPlay, %A_WorkingDir%\buttonclick.wav
    }
    if nMode = 2
    {
    Active9:=0
    Active11:=1
    Active12:=0
    GuiControl,,Active9, 0
    GuiControl,,Active11, 1
    GuiControl,,Active12, 0
    SoundPlay, %A_WorkingDir%\buttonclick.wav
    }
    if nMode = 3
    {
    Active9:=0
    Active11:=0
    Active12:=1
    GuiControl,,Active9, 0
    GuiControl,,Active11, 0
    GuiControl,,Active12, 1
    SoundPlay, %A_WorkingDir%\buttonclick.wav
    nMode = 0
    }
    return