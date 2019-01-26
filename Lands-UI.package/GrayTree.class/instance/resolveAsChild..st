as yet unclassified
resolveAsChild: n
	| nEl |
	nEl := (elements at: n). 
	^ nEl size == 1
		ifTrue: [ nEl first]
		ifFalse: [ self resolveAsChild: nEl second "embeding is recursive el at: n has max 2""self embededNodesOn: nEl" ]
 
	