accessing
generateBookHierarchy
	"self generateBookHierarchy"
	BookChapter withAllSubclassesDo: [ :c | c reset ].
	^ self default generateBookHierarchy