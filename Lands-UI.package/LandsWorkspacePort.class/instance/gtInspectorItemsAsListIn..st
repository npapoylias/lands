lands-extentions
gtInspectorItemsAsListIn: composite
	<gtInspectorPresentationOrder: 10>
	composite spec
		title: 'LandsEditor';
		display: [ :elt | |p|
			p := self bringThePane. 
			p hResizing: #spaceFill.
			p vResizing: #spaceFill.
			p asSpecAdapter 
		]