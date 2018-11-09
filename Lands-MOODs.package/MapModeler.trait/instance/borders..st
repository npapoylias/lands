accessing
borders: aTable

	self assert: aTable deepFlatten asSet = #(0 1) asSet.
	aTable doWithIndex: [ :row :index | 
		self assert: (row at: index) = 0
	].