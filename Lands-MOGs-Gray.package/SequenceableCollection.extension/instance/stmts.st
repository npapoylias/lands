*Lands-MOGs-Gray
stmts
	|stmts|
	stmts := self deepFlatten select: [ :i | i isVar not and: [i isPragma not and: [i isToken not] ] ].
	self deepFlatten nodes last isVar ifTrue: [ stmts := (stmts asOrderedCollection addLast: self deepFlatten nodes last) asArray ]. "only case where single var expr has side effects,
	as last expr in blocks"
	^ stmts