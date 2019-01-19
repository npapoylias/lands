accessing
at: anIndex ifAbsentPut: aBlock
	
	"self halt." "some erratic behaviour on profiling concerning the block value, inlined"
	
	anIndex > totalSize ifTrue: [ self grow. ^ self at: anIndex ifAbsentPut: aBlock ].
	
	^ (self at: anIndex) "no nil collection" 
		ifNil: [ self at: anIndex put: aBlock value ]