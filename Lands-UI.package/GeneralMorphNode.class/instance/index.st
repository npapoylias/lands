accessing
index

	^ self parentNode  
		ifNotNil: [:a | a childrenItems indexOf: self item]
		ifNil: [ 0 ]
