accessing
methodDeclaration

	^ super methodDeclaration ==> [ :values | self token: values size: 15; token: values emphasis: #underlined  ]