*Parsec
args

	^ (statements collect: [ :s | s value var ]) asOrderedCollection 