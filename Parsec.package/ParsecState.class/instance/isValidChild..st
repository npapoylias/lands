action
isValidChild: childOrChildren
	^ (((childrenStates keys includes: childOrChildren to)
		and: [ childOrChildren to < self to ])
		or: [ childOrChildren rule name == self endRule name ])
		or: [ self canBeEndRule: childOrChildren rule ]