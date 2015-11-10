model loading
load
	"Opens a FileDialog and load the model contained in the choosen file."
	|fd|
	fd := FileDialogWindow basicNew 
		previewType: nil;
		initialize ;
		title: 'Choose model file';
		answerPathName .
	^self load: ((World openModal: fd) answer).