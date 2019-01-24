accessing
impIndexingAssignment

	^ super impIndexingAssignment ==> [ :values | 
			self region: values second color: Color orange;
				region: values second emphasis: #bold.
	].