accessing
generateBookHierarchy
	packageName := self contents key , '-Book'.
	classPreFix := self contents key , 'Book'.
	contents value do: [ :chapter | self createChapter: chapter from: #BookChapter ]