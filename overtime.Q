[General]
SyntaxVersion=2
BeginHotkey=121
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=ca4bce18-61ae-4814-b857-16752a46aaa5
Description=我的脚本1
Enable=1
AutoRun=0
[Repeat]
Type=0
Number=1
[SetupUI]
Type=2
QUI=
[Relative]
SetupOCXFile=
[Comment]

[Script]
RunApp "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
Delay 1000
//遍历所有窗口返回包含关键字的窗口句柄
HwndEx = Plugin.Window.Search("Chrome")
//定一个个数组
dim MyArray   
MyArray = Split(HwndEx, "|") //返回一个由字符串分割而成的一维数组
Call Plugin.Window.Max(MyArray(i))
