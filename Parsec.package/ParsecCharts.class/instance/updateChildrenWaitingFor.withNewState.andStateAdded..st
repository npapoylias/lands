copying
updateChildrenWaitingFor: aState withNewState: newState andStateAdded: stateAdded
	| childrenDict col|

	childrenDict := stateAdded childrenStates.	"will return either the newState or the identical pre-existing"

	childrenDict ~= newState childrenStates
		ifTrue: [ newState childrenStates
				keysAndValuesDo: [ :k :values | 
					values
						do: [ :v | 
								col := childrenDict
									at: k
									ifAbsent: [ OrderedCollection new ].
								col detect: [ :p | p equalTo: v ] ifNone: [ v isEmpty not ifTrue: [  col add: v ]].
								col isEmpty not ifTrue: [ childrenDict at: k put: col ]. 
						]]].	"already exists transfer children"

	^ aState 
		ifNil: [nil] 
		ifNotNil: [
			(childrenDict
				at: aState from
				ifAbsent: [ col := OrderedCollection new ]) 
				detect: [ :p | p equalTo: aState ] 
				ifNone: [ aState isEmpty not ifTrue: [(childrenDict at: aState from ifAbsentPut: [ col ] ) add: aState]]]	"children from multiple trees"