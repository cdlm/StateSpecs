tests
testValidateSuccessful2
	| spec1 spec2 stateSpec result |
	spec1 := SpecOfEquality requiredValue: 2.
	spec2 := SpecOfObjectSuperclass requiredClass: String.
	
	stateSpec := SpecOfOrDisjunction of: spec1 and: spec2.
	result := stateSpec validate: 'someString'.
	
	self assert: result isSuccess