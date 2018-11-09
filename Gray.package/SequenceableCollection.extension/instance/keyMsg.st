*Gray
keyMsg
	|keywords positions arguments|
	keywords := WriteStream on: String new.
	positions := OrderedCollection new.
	arguments := OrderedCollection new.
	self deepFlatten doWithIndex: [ :item :index |
		index % 2 == 1
			ifTrue: [ keywords nextPutAll: item string. positions add: item from ]
			ifFalse: [ 	arguments add: (item isNode ifTrue: [ item ] ifFalse: [ item lit ]) ]
	].
	^ RBMessageNode
		receiver: nil lit "will be supplied later"
		selector: keywords contents asSymbol
		keywordsPositions: positions
		arguments: arguments.