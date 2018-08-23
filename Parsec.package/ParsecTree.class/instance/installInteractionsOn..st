visual-nodes
installInteractionsOn: el
	el when: TRMouseClick do: [ :evt | el color: el color negated ].
	"el @ self defaultPopUp."
	el when: TRMouseEnter do: [ :evt | el color: el color negated ].
	el when: TRMouseLeave do: [ :evt | el color: el color negated ]