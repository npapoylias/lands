accessing
identifier

	^ super identifier ==> [ :token | self region: token color: #cyan emphasis: #italic ]