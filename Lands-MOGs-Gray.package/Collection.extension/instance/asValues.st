*Lands-MOGs-Gray
asValues

	|result|

	result := self copy.

	1 to: self size do: [:i | 
		
		|senderCtx receiver item|
		item := self at: i.
		
		item isString "true for symbol as well"
			ifFalse: [ result at: i put: item ] "when you just want to pass a literal, or a pre-computed object" "see tests"
			ifTrue: [  
				senderCtx := thisContext sender sender.
				receiver := senderCtx receiver.
				"Transcript show: senderCtx; cr; show: receiver; cr."
				result at: i put: (Smalltalk compiler evaluate: item in: senderCtx to: receiver)	
			]
	].


	^ result