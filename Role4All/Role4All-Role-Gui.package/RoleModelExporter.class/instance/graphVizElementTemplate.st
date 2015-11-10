template definitions
graphVizElementTemplate
	"comment stating purpose of message"

	|template|
	template := '{{# players }}{{ playerId }};', String crlf, '{{/ players }}'.
	^(template asMustacheTemplate ).