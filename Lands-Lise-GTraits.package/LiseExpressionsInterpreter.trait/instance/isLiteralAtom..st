syntactic-tests
isLiteralAtom: anAtomOrList

	^ (anAtomOrList class = ByteString) or: [ anAtomOrList isKindOf: Number ]