lands-extentions
forceAttribute: anAttribute in: interval
	|selection hs shoutStyler action |
	selection := interval.
	hs := (self text copyFrom: interval first to: interval last) string hash.
	shoutStyler := self textArea shoutStyler. 
	action := PostStyleAction new
		attribute: anAttribute;
		interval: selection;
		selectionHash: hs.
			"[ :text | 
				(text string copyFrom: selection first to: selection last) hash = hs
					ifTrue: [ text addAttribute: anAttribute from: selection first to: selection last. true ]
					ifFalse: [ false ]
				]."
	shoutStyler 
		ifNotNil: [ shoutStyler styler postStyleActions add: action. shoutStyler styler privateStyle: self text ]
		ifNil: [ action value: self text ]