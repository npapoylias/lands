initialization
initialize
	super initialize.
	failures := GrayCollection basicNew initialize: 128. "should auto-grow"