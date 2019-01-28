accessing
newTabOn: c for: chapter
	c
		compileSilently:
			('tab 
				^ tab ifNil: [ 
					tab := self newTab.
					tab 
						label: ''{1}'';
						closeable: false;
						icon: (self appIcon: #{2} size: 28@28).
					tab model: self tabContents. tab ]'
				format:
					{(self titleFor: chapter) doubleQuote.
					(self iconFor: chapter)})	"can use ASL here"