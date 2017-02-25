copying
if: added update: newState with: aState
	
	"ignore temporary states in back-pointers, preserve nesting {{}} for single rules in case of action"
	
	"newState previousStates add: aState."
	
	(newState isSubRule and: [ aState isSubRule ])
						ifFalse: [ newState childrenStates add: aState. newState alternativesAddChild: aState ]
						ifTrue: [ newState childrenStates addAll: aState childrenStates. newState alternativesAddChildren: aState childrenStates ].
	
	added == newState 
		ifFalse: [ added alternativeSelf add: (newState alternativeSelf: nil) ].