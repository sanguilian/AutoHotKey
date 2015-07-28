;This script saves the three most fragments of text copied to the clipboard

;Instructions: 
	;ctrl+v: pastes most recent text copied
	;ctrl+2: pastes 2nd to last text copied
	;ctrl+3: pastes 3rd to last text copied

;Adjustments:
	;To adjust time script waits before pasting as usual, change "T.4" (.4 second wait) to something else like T.5.
	

OnClipboardChange:	;runs after detecting changes to clipboard
	clipboardC:=clipboardB	;discards data saved in clipboardC
	sleep 25
	clipboardB:=clipboardA	;shifts data from clipboardA to clipboardB
	sleep 25
	clipboardA:=clipboard	
	return
^v::
	CBVer:=""				
	Input,CBVer,L1 T.4,,		;get next input
	if(CBVer="")
		SendInput, %clipboardA%	;paste most recent clipboard
	else if(CBVer="2")
		SendInput, %clipboardB%	;paste 2nd to last copied data
	else if(CBVer="3")
		SendInput, %clipboardC%	;paste 3rd to last copied data
	return