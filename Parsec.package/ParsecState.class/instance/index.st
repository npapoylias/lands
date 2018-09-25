accessing
index

	^ rule isOrdered
			ifTrue: [ rightHandIndex  ]
			ifFalse: [ rule parent indexOf: rule ] 