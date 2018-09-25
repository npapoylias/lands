adding
currentAdd: aState

	"optimized version without anySatisfy.. where are my macros"
	
	|prev|
	
	self updateLastSeenForAddOn: aState. 
	
	1 to: current size do: [ :i | ((current at: i) equalTo: aState) ifTrue: [ ^ false ]  ].
	prev := self previous.
	1 to: prev size do: [ :i | ((prev at: i) equalTo: aState) ifTrue: [ ^ false ]  ].
	current add: aState. ^ true
