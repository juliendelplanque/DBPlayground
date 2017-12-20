initialization
initializeWidgets
	menu := self instantiate: MenuModel.

	connectionsList := self instantiate: DBConnectionDescriptionsListWidget.
	
	textEditor := self newText.
	
	resultsList := self newMultiColumnList