initialization
buildPager

	| treeMorph |
	model := LandsPaginatedMorphTreeModel itemsList: items.
	model wrapBlockOrSelector: #yourself.
	treeMorph := model defaultTreeMorph.
	treeMorph pageSize: 1.
	treeMorph buildContents.
	"model expandItemPath: { 1 }."
	^ treeMorph