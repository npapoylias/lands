accessing
identifier

	^ super identifier ==> [ :token | self token: token color: Color distinctTenStrongColors fourth ]