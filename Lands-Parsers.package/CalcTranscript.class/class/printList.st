accessing
printList

	^ printList ifNil: [ printList := OrderedCollection new ]