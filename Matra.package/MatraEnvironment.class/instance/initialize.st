initialization
initialize

	super initialize.
	location := self class defaultLocation / UUID new asString.
	WeakRegistry default add: self