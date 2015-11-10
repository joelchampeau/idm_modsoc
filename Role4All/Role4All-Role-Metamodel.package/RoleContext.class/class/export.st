export
export
	|fd|
	fd := FileDialogWindow basicNew
		previewType: nil;
		initialize;
		title: 'Choose File where to export';
		answerSaveFile  .
	^self exportTo: ((World openModal: fd ) answer).