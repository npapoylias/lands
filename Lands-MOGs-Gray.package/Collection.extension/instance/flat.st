*Lands-MOGs-Gray
flat
	
	| stream |
	self isEmpty ifTrue: [ ^ self copy ].
	stream := (self species new: 0) writeStream.
	self do: [ :each | each isString 
		ifTrue: [stream nextPut: each] 
		ifFalse: [stream nextPutAll: each] ].
	^ stream contents