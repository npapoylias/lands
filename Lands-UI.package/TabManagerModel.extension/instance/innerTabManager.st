*Lands-UI
innerTabManager

	^ (self selectedTab spec instance widget morph model isKindOf: self class)
			ifTrue: [ self selectedTab spec instance widget morph model innerTabManager ]
			ifFalse: [ self ] 