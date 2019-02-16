initialization
transformMorph

	^ morph submorphs detect: [ :m | m isKindOf: TransformMorph ]