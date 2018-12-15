.386
.model	flat, stdcall
option	casemap :none

include		bones.inc

.code
start:
	invoke	GetModuleHandle, NULL
	mov	hInstance, eax
	invoke	InitCommonControls
	invoke	DialogBoxParam, hInstance, IDD_MAIN, 0, offset DlgProc, 0
	invoke	ExitProcess, eax

DlgProc proc hWin:DWORD,uMsg:DWORD,wParam:DWORD,lParam:DWORD
	mov	eax,uMsg
	
	.if	eax == WM_INITDIALOG
		invoke	LoadIcon,hInstance,200
		invoke	SendMessage, hWin, WM_SETICON, 1, eax
	.elseif eax == WM_COMMAND
		mov	eax,wParam
		.if	eax == IDC_1
			invoke PlaySound,101,hInstance,SND_ASYNC or SND_RESOURCE

		.elseif	eax == IDC_2
			invoke PlaySound,102,hInstance,SND_ASYNC or SND_RESOURCE

		.elseif	eax == IDC_3
			invoke PlaySound,103,hInstance,SND_ASYNC or SND_RESOURCE

		.elseif	eax == IDC_4
			invoke PlaySound,104,hInstance,SND_ASYNC or SND_RESOURCE

		.elseif	eax == IDC_5
			invoke PlaySound,105,hInstance,SND_ASYNC or SND_RESOURCE

		.elseif	eax == IDC_6
			invoke PlaySound,106,hInstance,SND_ASYNC or SND_RESOURCE

		.elseif	eax == IDC_7
			invoke PlaySound,107,hInstance,SND_ASYNC or SND_RESOURCE

		.elseif	eax == IDC_8
			invoke PlaySound,108,hInstance,SND_ASYNC or SND_RESOURCE

		.elseif	eax == IDC_9
			invoke PlaySound,109,hInstance,SND_ASYNC or SND_RESOURCE

		.elseif	eax == IDC_0
			invoke PlaySound,100,hInstance,SND_ASYNC or SND_RESOURCE

		.elseif	eax == IDC_STAR
			invoke PlaySound,111,hInstance,SND_ASYNC or SND_RESOURCE

		.elseif	eax == IDC_POUND
			invoke PlaySound,112,hInstance,SND_ASYNC or SND_RESOURCE
			
		.elseif	eax == IDC_NICKEL
			invoke PlaySound,118,hInstance,SND_ASYNC or SND_RESOURCE
	
		.elseif	eax == IDC_DIME
			invoke PlaySound,119,hInstance,SND_ASYNC or SND_RESOURCE
			
		.elseif	eax == IDC_QUARTER
			invoke PlaySound,120,hInstance,SND_ASYNC or SND_RESOURCE
			
		.elseif	eax == IDC_COLLECT
			invoke PlaySound,122,hInstance,SND_ASYNC or SND_RESOURCE
	
		.elseif	eax == IDC_RETURN
			invoke PlaySound,123,hInstance,SND_ASYNC or SND_RESOURCE
			
		.elseif	eax == IDC_RINGBACK
			invoke PlaySound,124,hInstance,SND_ASYNC or SND_RESOURCE	
		
		.elseif	eax == IDC_ORANGE
			invoke PlaySound,125,hInstance,SND_ASYNC or SND_RESOURCE	
			
		.elseif	eax == IDC_2600
			invoke PlaySound,126,hInstance,SND_ASYNC or SND_RESOURCE	
		
		.elseif	eax == IDC_2600LONG
			invoke PlaySound,127,hInstance,SND_ASYNC or SND_RESOURCE
					
		.elseif	eax == IDC_2400
			invoke PlaySound,134,hInstance,SND_ASYNC or SND_RESOURCE
					
		.elseif	eax == IDC_A
			invoke PlaySound,130,hInstance,SND_ASYNC or SND_RESOURCE
					
		.elseif	eax == IDC_B
			invoke PlaySound,131,hInstance,SND_ASYNC or SND_RESOURCE
					
		.elseif	eax == IDC_C
			invoke PlaySound,132,hInstance,SND_ASYNC or SND_RESOURCE
					
		.elseif	eax == IDC_D
			invoke PlaySound,133,hInstance,SND_ASYNC or SND_RESOURCE
								
		;################### BLUE BOX BUTTONS#######################
		.elseif	eax == IDC_1036 ;kp
			invoke PlaySound,136,hInstance,SND_ASYNC or SND_RESOURCE
								
		.elseif	eax == IDC_1037 ;2600 tone
			invoke PlaySound,126,hInstance,SND_ASYNC or SND_RESOURCE
								
		.elseif	eax == IDC_1038 ;ST
			invoke PlaySound,138,hInstance,SND_ASYNC or SND_RESOURCE
								
		.elseif	eax == IDC_1040 ;MF
			invoke PlaySound,140,hInstance,SND_ASYNC or SND_RESOURCE
								
		.elseif	eax == IDC_1041 ;MF
			invoke PlaySound,141,hInstance,SND_ASYNC or SND_RESOURCE
								
		.elseif	eax == IDC_1042 ;MF
			invoke PlaySound,142,hInstance,SND_ASYNC or SND_RESOURCE
								
		.elseif	eax == IDC_1043 ;MF
			invoke PlaySound,143,hInstance,SND_ASYNC or SND_RESOURCE
								
		.elseif	eax == IDC_1044 ;MF
			invoke PlaySound,144,hInstance,SND_ASYNC or SND_RESOURCE
								
		.elseif	eax == IDC_1045 ;MF
			invoke PlaySound,145,hInstance,SND_ASYNC or SND_RESOURCE
								
		.elseif	eax == IDC_1046 ;MF
			invoke PlaySound,146,hInstance,SND_ASYNC or SND_RESOURCE
								
		.elseif	eax == IDC_1047 ;MF
			invoke PlaySound,147,hInstance,SND_ASYNC or SND_RESOURCE
											
		.elseif	eax == IDC_1048 ;MF
			invoke PlaySound,148,hInstance,SND_ASYNC or SND_RESOURCE
											
		.elseif	eax == IDC_1049 ;MF
			invoke PlaySound,149,hInstance,SND_ASYNC or SND_RESOURCE
				
			

		.endif
	.elseif	eax == WM_CLOSE
		invoke	EndDialog, hWin, 0
	.endif

	xor	eax,eax
	ret
DlgProc endp

end start