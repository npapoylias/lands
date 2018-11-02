accessing
syntax
	|t|
	t := Trait named: self name, 'Syntax' ; uses: {  }; category: self category.
	t classTrait compile: 'parserClass ^ ' , self name.
	^ t