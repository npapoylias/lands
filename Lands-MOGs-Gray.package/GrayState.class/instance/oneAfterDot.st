accessing
oneAfterDot

	^ dotPosition + 2 <= dRefRightHand size
			ifTrue: [ dRefRightHand at: dotPosition + 2 ]
			ifFalse: [ nil ]