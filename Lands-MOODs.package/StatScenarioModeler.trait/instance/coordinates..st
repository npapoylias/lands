as yet unclassified
coordinates: cDict
	
	"Latitude"
	self assert: ((cDict at: #N) between: -90.0 and: 90.0).
	self assert: ((cDict at: #S) between: -90.0 and: 90.0).
	self assert: (cDict at: #N) > (cDict at: #S).
	"Longtitude"
	self assert: ((cDict at: #W) between: -180.0 and: 180.0).
	self assert: ((cDict at: #E) between: -180.0 and: 180.0).
	self assert: (cDict at: #E) > (cDict at: #W).