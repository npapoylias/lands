visual-nodes
embededNodesOn: objects 

	| surroundingElement embededElements |
	surroundingElement := RTEllipse new color: Color transparent; "self defaultNodeShape" elementOn: objects first.
	"surroundingElement @ (RTLabel new color: Color white; fontSize: 7; text: [ :entry | self labelForElement: entry ]; view: v)."
	embededElements := (objects allButFirst collect: [:o | self visualElementFor: o"self simpleNodeOn: o"]) asOrderedCollection.
	embededElements 
		addFirst: (RTLabel new 
			color: Color white; 
			"height: 7;" 
			elementOn: (self labelForElement: objects first)) . 
	surroundingElement embed: embededElements vertically: 0.
	^ surroundingElement "allElements"
	