asl
num
	
	^ RBLiteralValueNode
			value: (Number readFrom: self value)
			start: self start
			stop: self stop