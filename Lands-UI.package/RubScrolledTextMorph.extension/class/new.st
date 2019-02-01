*Lands-UI
new

	^ self == RubScrolledTextMorph "i.e not subclasses"
		ifTrue: [ LandsEditor basicNew initialize ]
		ifFalse: [ self basicNew initialize ]