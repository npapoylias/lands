*Lands-MOGs-Gray
odds

	|odds|
	odds := self class new.
	self doWithIndex: [ :item :i | i % 2 == 1 ifTrue: [ odds add: item ] ].
	^ odds