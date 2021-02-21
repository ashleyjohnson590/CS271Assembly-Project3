TITLE Data Validation, Looping, and Constants Project 3

; Author: Ashley Johnson
; Last Modified: 2/2/2021
; OSU email address: johnsas8@oregonstate.edu
; Course number/section:   CS271 Section 400
; Project Number:   3              Due Date:2/7/2021
; Description: This file repeatedly asks user to enter a number between [-200, -100] or 
;[-50, -1] and displays the count, sum, maximum, minimum, and average of valid numbers 
;entered. 

INCLUDE Irvine32.inc
; initialize constant range limits
   upperLimit1 = -200
   upperLimit2 = -50
   lowerLimit1 = -100
   lowerLimit2 = -1
.data
   progTitle BYTE   "Data Validation, Looping, and Constants   ", 0
   printName BYTE   "by Ashley Johnson ", 0
   askName	BYTE	"What is your name? ", 0
   userName BYTE 21 DUP(0)
   countBytes	DWORD	?

   displayName	BYTE	"Hello there, ", 0
   instructions BYTE   "Please enter numbers in [-200, -100] or [-50, -1].", 0
   instructions2	BYTE	"Enter a non-negative number when you are finished to see results.", 0
   inputnum   BYTE   "Enter number: ", 0
   errorMessage BYTE    "Number Invalid! ", 0
   numEnteredMessage1    BYTE    "You entered ",0
   totalsum	SDWORD	?	
   calcmax	SDWORD	?
   calcmin	SDWORD	?
   calcmean	SDWORD	?
   quotient	SDWORD	?
   remainder	SDWORD	?
   totalcount	DWORD	0
   numEnteredMessage2   BYTE    " valid numbers.",0
   maximumMessage       BYTE    "The maximum valid number is ", 0
   minimumMessage       BYTE    "The minimum valid number is ", 0
   specialMessage		BYTE	"You entered no valid numbers. ", 0
   sumMessage       BYTE    "The sum of your valid numbers is ", 0
   averageMessage   BYTE    "The rounded average is ", 0
   numEntered	SDWORD	?	; numbers user enters
	goodbye  BYTE   "We have to stop meeting like this. Farewell, " ,0

.code
main PROC

  
	mov edx, OFFSET progTitle  ;print program title
	call WriteString

	mov   edx, OFFSET printName    ;print my name
	call WriteString
	call CrLf

;ask for user's name
	mov edx, OFFSET askName
	call WriteString

	mov edx, OFFSET userName
	mov ecx, SIZEOF userName
	call ReadString
	mov countBytes, eax

;greet user
	mov edx, OFFSET DisplayName
	call WriteString
	mov edx, OFFSET userName
	call WriteString
	call CrLf
	call CrLf
	call CrLf
	call CrLf

;print instructions
	mov edx, OFFSET instructions    
	call   WriteString
	call   CrLf

;print second line instructions
	mov edx, OFFSET instructions2
	call WriteString
	call CrLf

;get number from user
_getNum:
	mov edx, OFFSET inputnum 
	call WriteString
	call ReadInt
	mov numEntered, eax

;check if number is non negative
_checkpositive:
	mov eax, numEntered
	cmp eax, 0
	jge _theEnd

;check if number is greater than -200
_less200:
	cmp eax, upperLimit1
	jl	_invalidNum


;check if number is greater than -100 AND less than -50
_between50and100:
	cmp eax, lowerLimit1
	jg	_checkless50
	jmp _validNum

_checkless50:
	cmp eax, upperLimit2
	jl	_invalidNum
	jmp _validNum


;print invalid number message
_invalidNum:
	mov edx, OFFSET errorMessage
	call WriteString
	jmp _getNum

;sum valid numbers entered
_validNum:
	mov eax, totalcount
	cmp eax, 0

jg _continue
	mov eax, numEntered
	mov calcmin, eax
	mov calcmax, eax
	mov totalsum, eax
	mov calcmean, eax
	mov totalcount, 1
	jmp _getNum

_continue:
	mov eax, totalcount
	add eax, 1
	mov totalcount, eax

;compare input number to current minimum
_calcmin:
	mov eax, calcmin
	mov ebx, numEntered
	cmp ebx, eax
	jg _calcmax

;change current minimum
_changemin:
	mov eax, numEntered
	mov calcmin, eax

;compare input number to current maximum
_calcmax:
	mov eax, numEntered
	cmp eax, calcmax
	jl _calcsum

;change current maximum
_changemax:
	mov eax, numEntered
	mov calcmax, eax
	jmp _calcsum

;calculate sum
_calcsum:	
	mov eax, totalsum
	add eax, numEntered
	mov totalsum, eax
	jmp _getNum

_theEnd:

;check if user enters more than 1 number
	mov eax, totalcount
	cmp eax, 0
	je _specialend

;display numbers and average entered
	mov edx, OFFSET numEnteredMessage1
	call WriteString
	mov eax, totalcount
	call WriteInt

;print number of valid numbers
	mov edx, OFFSET numEnteredMessage2
	call WriteString
	call CrLf

;print maximum number
	mov edx, OFFSET maximumMessage
	call WriteString
	mov eax, calcmax
	call WriteInt
	call Crlf

;print minimum number
	mov edx, OFFSET minimumMessage
	call WriteString
	mov eax, calcmin
	call WriteInt
	call Crlf

;print sum
	mov edx, OFFSET sumMessage
	call WriteString
	mov eax, totalsum
	call WriteInt
	call crlf


	;calculate average
_calcmean:
	mov edx, 0
	mov eax, totalsum
	mov ebx, totalcount
	cdq
	idiv ebx
	mov quotient, eax
	mov remainder, edx
	imul edx, -1
	add edx, edx
	.if edx > totalcount
	dec eax
	
	.endif
	mov calcmean, eax

;print average
	mov edx, OFFSET averageMessage
	call WriteString
	mov eax, calcmean
	call WriteInt
	call CrLf
	jmp endProgram

;print special message if no numbers are entered.
_specialend:
	mov edx, OFFSET specialMessage
	call WriteString
	call CrLf

  
endProgram:
	call CrLf	;print goodbye message
	mov edx, OFFSET goodbye
	call WriteString

;display user name
	mov edx, OFFSET userName
	call WriteString
	call CrLf

	Invoke exitProcess,0	;exit to operating system
main ENDP

END main