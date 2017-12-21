specs
defaultSpec
	^ SpecLayout composed
		newColumn: [ :mainColumn |
			mainColumn
				newRow: #menu height: self toolbarHeight;
				newRow: [ :mainRow |
					mainRow
						newColumn: [ :connectionColumn |
							connectionColumn
								newRow: #connectionsListLabel height: StandardFonts defaultFont height;
								newRow: #connectionsList ] width: (StandardFonts defaultFont widthOfString: self connectionsListLabel);
						newColumn: [ :editorColumn | 
							editorColumn
								newRow: #textEditorLabel height: StandardFonts defaultFont height;
								newRow: #textEditor;
								addSplitter;
								newRow: [ :row |
									row
										newColumn: #resultsListLabel;
										newColumn: #inspectResultsButton width: 25
								 ] height: self buttonHeight;
								newRow: #resultsList height: self toolbarHeight * 3 ] ] ]