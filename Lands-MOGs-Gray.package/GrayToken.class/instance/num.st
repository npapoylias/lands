asl
num
	
	^ RBLiteralValueNode
			value: (Number readFrom: self string)
			start: self start
			stop: self stop