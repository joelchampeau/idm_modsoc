visiting
generateCodeForParameter: anOppParameter
	|res|
	res := (self treatOppParameterType: (anOppParameter parameterType )), ' '.
	res := res, (anOppParameter parameterName ), ';', String cr.
	^res.