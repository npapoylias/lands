*Lands-MOGs-Gray
optAt: key ifAbsentPut: aBlock

	|element start finish assoc |
	finish := array size.
	start := (key hash \\ finish) + 1.

	"Search from (hash mod size) to the end."
	start to: finish do:
		[:index | 
			(element := array at: index) == nil
				ifTrue: [ 
					array at: index put: (assoc := Association key: key value: aBlock value).
					tally := tally + 1.
					array size - tally < (array size // 4 max: 1)
							ifTrue: [self grow].
					^ assoc value.
				]
				ifFalse: [  
					element key = key 
						ifTrue: [ ^ (array at: index) value ]
				]
		].
	
	"Search from 1 to where we started."
	1 to: start-1 do:
		[:index | 
			(element := array at: index) == nil
				ifTrue: [ 
					array at: index put: (assoc := Association key: key value: aBlock value).
					tally := tally + 1.
					array size - tally < (array size // 4 max: 1)
						ifTrue: [self grow].
					^ assoc value.
				]
				ifFalse: [  
					element key = key 
						ifTrue: [ ^ (array at: index) value ]
				]
		].
