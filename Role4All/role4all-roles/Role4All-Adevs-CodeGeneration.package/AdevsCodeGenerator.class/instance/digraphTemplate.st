template definitions
digraphTemplate
	^'
	Digraph digraphNetwork = new Digraph();
	{{# devsComponents }}
	{{ moduleType }} {{ moduleName }} = new {{ moduleType }}("{{ moduleName }}");
	digraphNetwork.add({{ moduleName }});
 	{{/ devsComponents }}
	
	{{# routes }}
	digraphNetwork.couple({{ sourceModule }}, {{ sourceModuleType }}.{{ sourcePort }}, {{ targetModule }}, {{ targetModuleType }}.{{ targetPort }});
	{{/ routes }}
	'