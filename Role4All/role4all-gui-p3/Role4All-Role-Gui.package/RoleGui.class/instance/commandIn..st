drawing
commandIn: constructor 
	"Defines the code editing part of the role browser."
	constructor smalltalkCode 
		title: 'Editor';
		display: [ '' ];
		act: [ :presentation | Compiler evaluate: (presentation text) ] icon: (GLMUIThemeExtraIcons glamorousPlay ) on: $d entitled: 'Do';
		act: [ :presentation | Compiler evaluate: (presentation text) ] icon: (GLMUIThemeExtraIcons glamorousAccept ) on: $d entitled: 'Save';
		act: [ :b | ModelLoader load . ] icon: GLMUIThemeExtraIcons glamorousOpen on: $o entitled: 'Load model'.