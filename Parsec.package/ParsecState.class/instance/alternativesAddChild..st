action
alternativesAddChild: aChild

	1 to: alternativeSelf size do: [ :i | (alternativeSelf at: i) childrenStates add: aChild ]

