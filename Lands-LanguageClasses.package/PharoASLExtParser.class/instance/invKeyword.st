Parsec-LanguageClasses
invKeyword

	^ super invKeyword ==> [:token | (token string allButFirst , ':') token <-> token ]