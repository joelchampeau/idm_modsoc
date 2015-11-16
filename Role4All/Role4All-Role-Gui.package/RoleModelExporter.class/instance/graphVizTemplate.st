template definitions
graphVizTemplate
	"comment stating purpose of message"

	|template|
	template := 'digraph {', String cr,'{{> elements }}', String cr,'{{> relations }}', String cr, '}'.
	^(template asMustacheTemplate ).