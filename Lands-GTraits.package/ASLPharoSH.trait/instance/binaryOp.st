accessing
binaryOp

	^ super binaryOp ==> [ :token | self region: token color: Color yellow emphasis: #bold ]