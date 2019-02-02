*Lands-UI-Editor
new

	^ "self == RubScrolledTextMorph" "i.e not subclasses"
		"ifTrue: [ LandsScrolledTextMorph basicNew initialize ]"
		"ifFalse: [" self basicNew initialize "]"