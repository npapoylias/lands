accessing
compileTabbedManagerOnClass: c for: chapter with: children
	|s|
	self newTabOn: c for: chapter.	"can use ASL here"
	s := WriteStream on: String new.
	s nextPutAll: 'tabContents
	^ tabContents ifNil: [ 
	tabContents := self newTabManager.'.
	children do: [:child |
			s
				nextPut: Character cr; 
				nextPut: Character tab;
				nextPut: Character tab;  
				nextPutAll: ('tabContents addTab: {1} default tab.' format: { self classNameFor: child }) 
	].
	s nextPutAll: ' tabContents ].'.
	c compileSilently: s contents.