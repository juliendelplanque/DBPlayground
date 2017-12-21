initialization
initializeWidgets
	menu := self instantiate: MenuModel.
	
	connectionsListLabel := self newLabel.
	connectionsList := self instantiate: DBConnectionDescriptionsListWidget.
	
	textEditorLabel := self newLabel.
	textEditor := self newText.
	
	resultsListLabel := self newLabel.
	resultsList := self newMultiColumnList.
	inspectResultsButton := self newButton