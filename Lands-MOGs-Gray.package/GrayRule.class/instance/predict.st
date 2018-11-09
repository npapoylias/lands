filtering
predict

	^ predict ifNil: [self computePredict]
		
	