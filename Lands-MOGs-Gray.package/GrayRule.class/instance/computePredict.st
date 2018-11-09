filtering
"protocol: filtering"
computePredict

	^ predict := self firsts 
		collect: [ :f | 
			(f anySatisfy: [ :r | r isEmpty ])
				ifTrue: [ (f select: [ :r | r isEmpty not ]) union: follow ]
			 	ifFalse: [ f ]
		]
		
	
	