accessing
table

	^ super table ==> [ :values | values copyFrom: 2 to: values size - 1 ]