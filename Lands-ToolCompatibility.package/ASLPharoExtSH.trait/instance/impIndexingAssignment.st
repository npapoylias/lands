accessing
impIndexingAssignment

	^ super impIndexingAssignment ==> [ :values | 
			self token: values second color: Color orange;
				token: values second emphasis: #bold.
	].