specs
defaultSpec
	^ SpecLayout composed
		newColumn: [ :mainColumn |
			mainColumn
				newRow: #menu height: self toolbarHeight;
				newRow: [ :mainRow |
					mainRow
						newColumn: #connectionsList;
						addSplitter;
						newColumn: [ :editorColumn | 
							editorColumn
								newRow: #textEditor;
								addSplitter;
								newRow: #resultsList height: self toolbarHeight * 3 ] ] ]