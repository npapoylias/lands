accessing
specialForm

	^ super specialForm ==> [ :values | values at: 1 put: (values at: 1) symbol; yourself ]