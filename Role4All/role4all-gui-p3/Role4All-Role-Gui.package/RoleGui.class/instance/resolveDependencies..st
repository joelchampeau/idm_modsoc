private
resolveDependencies: aCompositeRole 
	"Creates a collection containing associations between a composite role and its subroles for display purpose."
	|result|
	result := OrderedCollection new.
	aCompositeRole containedRoles do: [ :aRole |
		result addLast: (aCompositeRole -> aRole).
	].
	^(Array withAll: result).