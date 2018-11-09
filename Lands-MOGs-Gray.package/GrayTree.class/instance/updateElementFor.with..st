accessing
updateElementFor: n with: c 

	(elements at: n ifAbsentPut: [ { n } asOrderedCollection ]) add: c