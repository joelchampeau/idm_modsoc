tests
testRoleCreation
	|categoryArray|
	Role named: 'RoleTest' inCategory: 'JPS-Role-Test'.
	categoryArray := Smalltalk globals organization categoriesMatching: 'JPS-Role-Test'.
	self deny: categoryArray isEmpty .
	self assert: categoryArray size = 1.
	self deny: (Smalltalk at: #RoleTest ifAbsent: nil) = nil.