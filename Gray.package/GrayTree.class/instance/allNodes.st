accessing
allNodes

	^ self allChildrenNodesFor: modelRoot in: { modelRoot } asOrderedCollection "asSet" "we are already checking for inclusion, preserves adding order"