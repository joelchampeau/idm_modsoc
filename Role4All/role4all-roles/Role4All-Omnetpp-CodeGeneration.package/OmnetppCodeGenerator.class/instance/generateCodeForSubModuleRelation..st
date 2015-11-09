visiting
generateCodeForSubModuleRelation: anOppSubModuleRelation
	imports := imports, ('import modules.'), (anOppSubModuleRelation module moduleName ), ';', String cr.
	submodules := submodules, String tab, String tab, (anOppSubModuleRelation subModuleName ), ': ', (anOppSubModuleRelation module moduleName) . 
	submodules := submodules , ';', String cr.