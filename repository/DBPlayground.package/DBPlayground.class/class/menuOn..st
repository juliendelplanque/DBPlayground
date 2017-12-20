menu
menuOn: aBuilder
	<worldMenu>
	(aBuilder item: #'DB Playground')
		iconName: #glamorousGo;
		parent: #'MooSQL';
		action: [ 
			self new
				adaptToConnectionsManager: DBConnectionsManager current;
				openWithSpec ].