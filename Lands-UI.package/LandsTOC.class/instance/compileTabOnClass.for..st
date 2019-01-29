accessing
compileTabOnClass: c for: chapter
	self newTabOn: c for: chapter.	"can use ASL here"
	c compileSilently: 'tabContents 
	^ tabContents 
		ifNil: [tabContents := self contents]'