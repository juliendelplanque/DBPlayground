*DBPlayground
syntaxHighlighter
	| keywordsRegex |
	keywordsRegex := '(^|\W)(' , ((self keywords collect: [ :s | s ]) joinUsing: '|') , ')($|\W)'.
	
	^ SSHRegexSyntaxHighlighter new
		addRegex: keywordsRegex withAttribute: TextEmphasis bold;
		addRegex: '\d+|\d+\.\d*(e(\+|-)?\d+)?|\d*\.\d+(e(\+|-)?\d+)?|\d+e(\+|-)?\d' withAttribute: (TextColor color: Color green darker);
		yourself