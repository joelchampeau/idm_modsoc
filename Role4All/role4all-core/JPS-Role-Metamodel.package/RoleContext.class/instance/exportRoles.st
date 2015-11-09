export
exportRoles
	|rolesDef|
	rolesDef := ''.
	roles do: [ :each |
		rolesDef := rolesDef, (self className ), ' addRole: ', (each printString), String cr.
	].
	rolesDef := rolesDef, String cr.