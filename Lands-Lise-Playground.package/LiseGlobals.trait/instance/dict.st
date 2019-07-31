as yet unclassified
(define dict (:

	[ :l | 
| d |
d := Dictionary new.
l do:
	[ :litem | "tuple list" d at: litem first put: litem second ].
d ]))