changing suspended state
complete: aState
	"super complete: aState."

	((self check: aState rule follow at: aState to) or: [ aState rule isEof ])
		ifTrue: [super complete: aState]