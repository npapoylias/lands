eval
eval: anAtomOrList in: anEnvironment

	"could do with ddispatch, using syntactic test for readability"

	^ (self isLiteralAtom: anAtomOrList)
			ifTrue: [ anAtomOrList ] "number or string"
			ifFalse: [ 
				(self isIdentifier: anAtomOrList) "variable"  
					ifTrue: [ anEnvironment at: anAtomOrList ] 
					ifFalse: [ "proc-call"
						(self isKeyword: anAtomOrList) "special forms"
							ifTrue: [ self evalKeyword: anAtomOrList in: anEnvironment ] 
							ifFalse: [ "procedure"									
								(self eval: anAtomOrList first in: anEnvironment) "user-defined or primitive proc"
									apply: (anAtomOrList allButFirst "this is apply" 
												collect: [ :arg | self eval: arg in: anEnvironment ])
							] 
					]	 
			]	 
		
	