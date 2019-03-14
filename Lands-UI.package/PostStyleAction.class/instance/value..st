accessing
value: text

	"position based mixed auto / manual styling, remove if changed"
	^ (text string copyFrom: interval first to: ((interval last) min: text size)) hash = hash
		ifTrue: [ text addAttribute: attribute from: interval first to: interval last. true ]
		ifFalse: [ false ]
				