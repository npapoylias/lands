filtering
predict

	^ predict ifNil: [predict := self computePredict]
		
	