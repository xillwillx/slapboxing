include		windows.inc
include		user32.inc
include		kernel32.inc
include		comctl32.inc	;windows common controls

includelib	user32.lib
includelib	kernel32.lib
includelib	comctl32.lib	;windows common controls

include winmm.inc
includelib winmm.lib 

DlgProc		PROTO	:DWORD,:DWORD,:DWORD,:DWORD

.const
IDD_MAIN	equ	1000
IDC_1	equ	1
IDC_2	equ	2
IDC_3	equ	3
IDC_4	equ	4
IDC_5	equ	5
IDC_6	equ	6
IDC_7	equ	7
IDC_8	equ	8
IDC_9	equ	9
IDC_0	equ	0
IDC_STAR		equ	10
IDC_POUND		equ	12

IDC_NICKEL		equ	1018
IDC_DIME		equ	1019
IDC_QUARTER		equ	1020

IDC_COLLECT		equ	1022
IDC_RETURN		equ	1023
IDC_RINGBACK	equ	1024

IDC_ORANGE		equ	1025
IDC_2600		equ	1026
IDC_2600LONG	equ	1027
IDC_2400		equ	1034

IDC_A			equ	1030
IDC_B			equ	1031
IDC_C			equ	1032
IDC_D			equ	1033

IDC_1036		equ	1036
IDC_1037		equ	1037
IDC_1038		equ	1038
IDC_1040		equ	1040
IDC_1041		equ	1041
IDC_1042		equ	1042
IDC_1043		equ	1043
IDC_1044		equ	1044
IDC_1045		equ	1045
IDC_1046		equ	1046
IDC_1047		equ	1047
IDC_1048		equ	1048
IDC_1049		equ	1049

.data


.data?
hInstance	dd	?