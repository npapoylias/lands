copying
updateChildrenWaitingFor: aState withNewState: newState andStateAdded: stateAdded
	| childrenDict |

	childrenDict := stateAdded childrenStates.	"will return either the newState or the identical pre-existing"

	childrenDict ~= newState childrenStates
		ifTrue: [ newState childrenStates
				keysAndValuesDo: [ :k :values | 
					values
						do: [ :v | 
								| col |
								col := childrenDict
									at: k
									ifAbsent: [ childrenDict at: k put: OrderedCollection new ].
								col detect: [ :p | p equalTo: v ] ifNone: [ col add: v ] ] ] ].	"already exists transfer children"

	^ (childrenDict
			at: aState from
			ifAbsent: [ childrenDict at: aState from put: OrderedCollection new ]) add: aState	"children from multiple trees"