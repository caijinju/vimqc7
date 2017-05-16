" Vim syntax file
" Language:	Q-Code
" Maintainer:	caijinju <517402802@qq.com>
" Last Change:	2017 03 30


" quit when a syntax file was already loaded
"if exists("b:current_syntax")
"  finish
"endif

let s:cpo_save = &cpo
set cpo&vim

" 查看当前语法高亮可使用 :syntax
" 查看当前语法某项高亮可使用 :syntax list {groupName}
" 清理语法
"syntax clear


" 忽略关键字大小写
syn case ignore

""""""""""""""""""""""""""""""""""""""""""""""""""
" add by cjj
""""""""""""""""""""""""""""""""""""""""""""""""""
" Q-Code 指令
" 跳转指令 jump command
syn keyword qcode7JmpCmd vol chused voice pausev melody pausem delay action pausea pwmio pausepwm checksum randoml randomh switch
" 路径指令 path command
syn keyword qcode7PathCmd asm bg bg1 bg2 break stopfg stopbg stopbg1 stopbg2 subroutine label macro
" 语音指令 voice command
syn keyword qcode7VoiceCmd playv playvs voicename waitvn pausev resumev stopv fre qch v_chx_vol
" 句子指令 sentence command
syn keyword qcode7StcCmd plays waitsn pauses resumes stops
" SPI play 指令 SPI play command
syn keyword qcode7SpiPlayCmd spiplay spiplays spiwaitn spistop spipause spiresume spivol spireadindex
" MIDI 指令 midi command
syn keyword qcode7MidiCmd playm playms waitmn pausem resumem stopmm instrument m_chx_vol tempo temporst readtempo mute_on mute_off okon_on okon_off okon_play dynamicon dynamicoff
" 键盘指令 keyboard command
syn keyword qcode7KbdCmd instnoteon instnoteoff drumnoteon drumnoteoff notevibrato gliss maxsinglenote
" 音量指令 volume command
syn keyword qcode7VolCmd vol_max vol_min
" 查表指令 table command
syn keyword qcode7TabCmd tablel tablem tableh table 
" 红外指令 IR command
syn keyword qcode7IrCmd tx rx_on rx_off rx
" 串行数据接收指令 serial control command
syn keyword qcode7ScCmd sc_rx_on sc_rx_off sc_rx
" 脉冲调变IO指令 PWMIO command
syn keyword qcode7PwmIoCmd pwmout pwmouts waitpn stoppwm pausepwm resumepwm
" 时间延迟指令 delay command
syn keyword qcode7DlyCmd delay waitdn stopd paused resumed sdelay
" 动作指令 action command
syn keyword qcode7ActCmd playa playas waitan pausea resumea stopa
" QFID指令 QFID command
syn keyword qcode7QFIDCmd qfid_taagid qfid_taginput qfid_on qfid_off
" 一般指令 MISC command
syn keyword qcode7MiscCmd action_mark_state input_state melodymark_state noteon_state key_clr key_on key_off stop pause resume readchannel audio_on audio_off audiomode noisefilter_on noisefilter_off rampup rampdown wdt_clr repeat slow slowoff end readrollingcode chmode direct_debounce maxtrix_debounce debounce

""""""""""""""""""""""""""""""""""""""""""""""""""
" 操作符
syn match qcode7OprIns 	display	"[-+\*%=/,?.!^><\[\]|&:]" 
" 寄存器变量
syn match qcode7Reg4bit 	display	"\<[rR]\d\+\>"
syn match qcode7Reg8bit 	display	"\<[xX]\d\+\>"
" IO口
" 由于忽略了大小写，所以就只写小写
syn match qcode7Port 	display	"\<p[abcdef]\>" 
" 标号
syn match qcode7Label		/[A-Za-z_@][A-Za-z0-9_@]*\s*:/me=e-1
"syn match asmIdentifier		"[a-z_@][a-z0-9_@]*"

syn match decNumber		"\<[dD]'[1-9]\d*'\>"
syn match decNumber		"\<[1-9]\d*\>"
syn match decNumber		"\<\d\+\>"
syn match hexNumber		"\<0[xX][0-9a-fA-F]\+\>"
syn match hexNumber		"\<[hH]'[0-9a-fA-F]\+'\>"
syn match hexNumber		"\<[0-9a-fA-F]\+[hH]\>"
syn match octNumber		"\<[oO]'[0-7][0-7]\+'\>"
syn match binNumber		"\<[bB]'[0-1]\+'\>"

syn region qcode7String   	start=+"+    end=+"+	 skip=+\\"+
syn match qcode7Comment		";.*"

syn case match

""""""""""""""""""""""""""""""""""""""""""""""""""
"	高亮设置
""""""""""""""""""""""""""""""""""""""""""""""""""
"hi def link asmMacro	Macro
"hi def link asmIdentifier	Identifier
"hi def link othIns	Directory
"hi def link conIns	SpecialKey
"hi def link audIns	Statement
"hi def link othIns	ModeMsg
"hi def link specInst	PreCondit
"hi def link condInst	MoreMsg
"hi def link dataInst	Type
"hi def link specInst	Special

hi def link qcode7Label		Question
hi def link qcode7Comment	Comment
hi def link qcode7String	String

hi def link hexNumber	Number
hi def link decNumber	Number
hi def link octNumber	Number
hi def link binNumber	Number

hi def link qcode7OprIns	Type

hi def link qcode7Port	 	Directory
hi def link qcode7Reg4bit	Directory
hi def link qcode7Reg8bit	Directory

hi def link qcode7JmpCmd	Directory
hi def link qcode7PathCmd 	Directory
hi def link qcode7VoiceCmd 	Directory
hi def link qcode7StcCmd 	Directory
hi def link qcode7SpiPlayCmd 	Directory
hi def link qcode7MidiCmd 	Directory
hi def link qcode7KbdCmd 	Directory
hi def link qcode7VolCmd 	Directory
hi def link qcode7TabCmd 	Directory
hi def link qcode7IrCmd 	Directory
hi def link qcode7ScCmd 	Directory
hi def link qcode7PwmIoCmd 	Directory
hi def link qcode7DlyCmd 	Directory
hi def link qcode7ActCmd 	Directory
hi def link qcode7QFIDCmd 	Directory
hi def link qcode7MiscCmd 	Directory



""""""""""""""""""""""""""""""""""""""""""""""""""

"let b:current_syntax = "qcode7"

let &cpo = s:cpo_save
unlet s:cpo_save

" vim: ts=8

