accessing
invKeyword

	^ super invKeyword ==> [ :token | self region: token color: Color orange; region: token emphasis: #italic; region: token emphasis: #bold  ]