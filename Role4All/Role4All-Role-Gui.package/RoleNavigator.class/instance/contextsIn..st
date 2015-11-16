drawing
contextsIn: constructor
	"Displays the categories containing role classes."
	constructor list 
		title: 'Role contexts';
		display: [ :organizer | self organizer collect: [:each | each]];
		format: #asString;
		updateOn: GLMItemAdded  from: #yourself.