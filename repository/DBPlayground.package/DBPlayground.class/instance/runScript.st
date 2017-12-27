running script
runScript
	| results rows |
	self connectionsList selectedConnectionDescription ifNil: [ 
		UIManager default alert: 'Please select a connection in the list.' title: 'Error'.
		^ self ].
	
	results := self connectionsList selectedConnectionDescription
					execute: self textEditor text asString.
	results isError
		ifTrue: [ 
			UIManager default alert: results errorResponse title: 'Error in script'.
			^ self ].
	rows := results rows.
	resultsList
		items: { rows first description columnDescriptions collect: #fieldName } , (rows collect: [ :row | row collect: #asString ])