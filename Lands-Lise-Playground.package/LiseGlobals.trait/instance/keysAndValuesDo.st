as yet unclassified
(define keysAndValuesDo (:

	[ :l | 
l first
	keysAndValuesDo: [ :key :value | 
		l second
			apply:
				{key.
				value} ] ]))