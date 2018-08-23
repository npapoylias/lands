visual-nodes
embededNodesOn: objects 

	| surroundingElement embededElements |
	surroundingElement := "RTBox new color: Color transparent; element."self defaultNodeShape element.
	embededElements := (objects collect: [:o | self simpleNodeOn: o]) asOrderedCollection.
	surroundingElement eqEmbed: embededElements vertically: 2.
	^ surroundingElement "allElements"
	