accessing
createChapter: chapter from: ancestor
	| children c |
	c := (Smalltalk globals at: (self classNameFor: ancestor) asSymbol)
		subclass: (self classNameFor: chapter) asSymbol
		instanceVariableNames: ''
		classVariableNames: ''
		package: packageName.
	children := self childrenOfChapter: chapter.
	children isEmpty
		ifTrue: [ self compileTabOnClass: c for: chapter	"can use ASL here" ]
		ifFalse: [  
			ancestor = #BookChapter
				ifTrue: [ self compileManagerOnClass: c for: chapter with: children ]
				ifFalse: [ self compileTabbedManagerOnClass: c for: chapter with: children ]
		].
	children do: [ :child | self createChapter: child from: chapter ]