lands-extentions
editMorph

	^ editMorph ifNil: [editMorph := pluggableTextMorph allMorphs detect: [ :m | m class = TextMorphForEditView ]]