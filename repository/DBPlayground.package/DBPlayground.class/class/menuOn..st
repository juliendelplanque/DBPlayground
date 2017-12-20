menu
menuOn: aBuilder
	<worldMenu>
	(aBuilder item: #'DB Playground')
		iconName: #glamorousGo;
		parent: #DBTools;
		action: [ 
			self new
				adaptToConnectionsManager: DBConnectionsManager current;
				openWithSpec ].
		
	aBuilder withSeparatorAfter