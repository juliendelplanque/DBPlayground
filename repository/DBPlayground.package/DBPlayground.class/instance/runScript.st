running script
runScript
	| results |
	self connectionsList selectedConnectionDescription ifNil: [ 
		UIManager default alert: 'Please select a connection in the list.' title: 'Error'.
		^ self ].
	
	results := self connectionsList selectedConnectionDescription
					execute: self textEditor text asString.
	results isError
		ifTrue: [ 
			UIManager default alert: results errorResponse title: 'Error in script'.
			^ self ].

	resultsList
		items: (results rows collect: [ :row | row collect: #asString ])