accessing
invKeyword

	^ super invKeyword ==> [ :token | self token: token color: Color orange; token: token emphasis: #italic; token: token emphasis: #bold  ]