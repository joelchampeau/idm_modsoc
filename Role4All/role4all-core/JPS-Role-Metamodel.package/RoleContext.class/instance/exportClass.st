export
exportClass
	|classDef|
	classDef := 'RoleContext subclass: #', (self className), String cr, String tab.
	classDef := classDef, 'instanceVariableNames: '' '''.
	classDef := '''', classDef, String cr, String tab, 'classVariableNames: '' ''', String cr, String tab, 'category: '''.
	classDef := classDef, self class category, '''.', String cr, String cr.
	^classDef.