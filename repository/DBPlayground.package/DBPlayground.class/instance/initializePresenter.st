initialization
initializePresenter
	super initializePresenter.
	
	self menu
		addGroup: [ :group | 
			group
				addItem: [ :item | 
					item
						name: 'Run script';
						icon: (self iconNamed: #glamorousGo);
						action: [ self runScript ] ] ].
	
	self connectionsListLabel
		label: 'Connections:' translated.
	
	self textEditorLabel
		label: 'Query editor:' translated.
	self textEditor
		autoAccept: true;
		acceptBlock: [ :text | self syntaxHighlighter applyOn: text ].
		
	self resultsListLabel
		label: 'Results:' translated.
	self resultsList
		displayBlock: [ :row | row collect: #asString ];
		items: #(('')).
		
	self inspectResultsButton
		icon: (Smalltalk ui iconNamed: #glamorousInspect)