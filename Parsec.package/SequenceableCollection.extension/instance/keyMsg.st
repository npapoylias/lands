*Parsec
keyMsg
	|keywords positions arguments|
	keywords := WriteStream on: String new.
	positions := OrderedCollection new.
	arguments := OrderedCollection new.
	self do: [ :pair | 
		keywords nextPutAll: pair first string.
		positions add: pair first from.
		arguments add: pair second.
	].
	^ RBMessageNode
		receiver: nil "will be supplied later"
		selector: keywords asSymbol
		keywordsPositions: positions
		arguments: arguments.