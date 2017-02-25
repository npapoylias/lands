action
alternativesAddChildren: children

	1 to: alternativeSelf size do: [ :i | (alternativeSelf at: i) childrenStates addAll: children ]

