file support
suggestedFileName
	"If the workspace has an associated fileName use that, otherwise derive a reasonable file-name from the window label"
	
	self fileName ifNotNil: [ :f | ^ f ].
						
	^ (self containingWindow 
		ifNil: ['Untitled']
		ifNotNil:	[ :window |  window label ]), '.ws'