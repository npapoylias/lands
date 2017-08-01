accessing
exampleSlider

 "see RTBundleExample>>exampleClusterBezierAndSlider"

	| b lb |
	
	b := RTBundleBuilder new.
	b from: (Array with: TRObject with: TRTest) using: #subclasses.
	b edges shape line color: Color black.
	b bezier color: (Color blue alpha: 0.5).
	b useBezierlineWith: #dependentClasses.
	b build.
	lb := RTLegendBuilder new.
	lb
		view: b view;
		right.
	lb addText: 'RTBundleBuilder: TRObject and TRTest subclasses'.
	lb addColor: Color black text: 'Hierarchy'.
	lb
		addColor:
			(Color
				r: 0
				g: 120
				b: 0
				range: 255)
		text: 'Dependent classes'.
	lb addColor: Color red text: 'Senders'.
	lb build.
	^ b view