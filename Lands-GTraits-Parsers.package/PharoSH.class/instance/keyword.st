accessing
keyword

	^ super keyword ==> [ :token | self region: token color: Color green; region: token emphasis: #italic; region: token emphasis: #bold  ]