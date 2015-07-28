;This script saves the three most fragments of text copied to the clipboard

;Instructions: 
;	ctrl+v: pastes most recent text copied
;	ctrl+alt+v: pastes 2nd to last text copied
;	ctrl+alt+v+v: pastes 3rd to last text copied

OnClipboardChange:	;runs after detecting changes to clipboard
	clipboardC:=clipboardB	;discards data saved in clipboardC
	sleep 25
	clipboardB:=clipboardA	;shifts data from clipboardA to clipboardB
	sleep 25
	clipboardA:=clipboard	
	return
^!v::
	HowFar:=""				
	Input,HowFar,T1,,v		;get next input
	if(HowFar="")
		SendInput, %clipboardB%	;paste 2nd to last copied data
	else if(HowFar="v")
		SendInput, %clipboardC%	;paste 3rd to last copied data
	return