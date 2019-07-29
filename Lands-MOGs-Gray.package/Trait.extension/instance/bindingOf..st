*Lands-MOGs-Gray
bindingOf: varName
	"Answer the binding of some variable resolved in the scope of the receiver, or nil
	if variable with such name is not defined"

	"The lookup recurses up to superclasses looking inside their class and shared pools,
	but not the environment, since two classes, even if they have ancestry relationship,
	could use different environments.
	That's why we doing an environment lookup only as a last step of symbol lookup 
	and taking only the environment of receiver only, not any of it's superclass(es) "
	
	| aSymbol |
	aSymbol := varName asSymbol.

	(self traitComposition includesTrait: LiseModuleSystem)
		ifTrue: [  
			self methods 
				detect: [ :m | m selector = varName ]
				ifFound: [ :m | ^ varName ->(m valueWithReceiver: nil arguments: #()) ]
		].
		
	^ (self innerBindingOf: aSymbol) ifNil: [
		 self environment bindingOf: aSymbol
	]