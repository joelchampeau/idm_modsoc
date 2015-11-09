template definitions
graphVizRelationsTemplate
	"comment stating purpose of message"

	|template|
	template := '{{# relations}}{{ source }} -> {{ target }};', String crlf , '{{/ relations}}'.
	^(template asMustacheTemplate ).