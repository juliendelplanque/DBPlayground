syntax highlighting
syntaxHighlighter
	^ syntaxHighlighter ifNil: [ syntaxHighlighter := DBPostgreSQLDBMS new syntaxHighlighter ]