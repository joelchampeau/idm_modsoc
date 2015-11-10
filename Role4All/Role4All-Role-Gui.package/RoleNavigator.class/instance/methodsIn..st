drawing
methodsIn: constructor 
	"Displays the method implemented in roles or in DynamicAdapter."
	constructor list
		title: 'Role features';
		display: [ :class | class selectors sorted].