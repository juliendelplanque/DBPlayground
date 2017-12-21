initialization
initializePresenter
	super initializePresenter.
	
	self menu
		addGroup: [ :group | 
			group
				addItem: [ :item | 
					item
						name: 'Run script' translated;
						icon: (self iconNamed: #glamorousGo);
						action: [ self runScript ] ] ].
				
	self connectionsListLabel
		label: self class connectionsListLabel.
	
	self textEditorLabel
		label: 'Query editor:' translated.
	self textEditor
		autoAccept: true.
	
	self resultsListLabel
		label: 'Query results:' translated.
	self resultsList
		displayBlock: [ :row | row collect: #asString ];
		items: #(('')).
		
	self inspectResultsButton
		"label: 'Inspect results' translated;"
		icon: (Smalltalk ui iconNamed: #glamorousInspect);
		action: [ self resultsList getList inspect ]