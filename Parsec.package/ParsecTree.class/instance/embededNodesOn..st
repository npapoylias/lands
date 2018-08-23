visual-nodes
embededNodesOn: objects 

	| surroundingElement embededElements |
	surroundingElement := "RTBox new color: Color transparent; element."self defaultNodeShape elementOn: objects first.
	surroundingElement @ (RTLabeled new color: Color white; text: [ :entry | self labelForElement: entry ]; view: v).
	embededElements := (objects allButFirst collect: [:o | self visualElementFor: o"self simpleNodeOn: o"]) asOrderedCollection.
	surroundingElement eqEmbed: embededElements vertically: 2.
	^ surroundingElement "allElements"
	