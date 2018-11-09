as yet unclassified
invKeyword

	^ super invKeyword ==> [:token | (token string allButFirst , ':') token <-> token ]