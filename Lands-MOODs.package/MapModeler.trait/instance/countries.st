traits
countries

	^ super countries ==> [ :values | values odds allButFirst collect: [ :c | c symbol ] ]