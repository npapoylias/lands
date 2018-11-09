accessing
bareKeyword

	^ super bareKeyword ==> [:token | (token string , ':') token <-> token ]