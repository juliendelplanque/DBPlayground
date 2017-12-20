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
				
	self textEditor
		autoAccept: true.
		
	self resultsList
		displayBlock: [ :row | row collect: #asString ];
		items: #((''))