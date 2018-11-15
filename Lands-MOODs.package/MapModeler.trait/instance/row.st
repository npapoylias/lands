traits
row

	^ super row ==> [ :values | (values copyFrom: 2 to: values size - 1) collect: [ :t | t value ] ] 