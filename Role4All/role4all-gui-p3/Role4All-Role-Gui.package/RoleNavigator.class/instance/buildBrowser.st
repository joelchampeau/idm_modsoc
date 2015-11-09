initialize-release
buildBrowser
	"Defines a navigator on role classes."
	browser := GLMTabulator new.
	browser
		column: #roleContexts;
		column: #roleClasses;
		column: #roleMethods.
		
	browser transmit to: #roleContexts; andShow: [ :a | self contextsIn: a].
	browser transmit from: #roleContexts; to: #roleClasses; andShow: [ :a | self rolesIn: a].
	browser transmit from: #roleClasses; to: #roleMethods; andShow: [ :a | self methodsIn: a ].
	^browser.