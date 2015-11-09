examples
seafloorObservatoryIt
	|readEntry1 readEntry2 readEntry3 computeDtoa dataEntry1 dataEntry2 dataEntry3 l1 l2 l3 l4 andOperator mainBranch|
	readEntry1 := EffbdFunction new functionName: 'Read Entry 1'.
	readEntry2 := EffbdFunction new functionName: 'Read Entry 2'.
	readEntry3 := EffbdFunction new functionName: 'Read Entry 3'.
	computeDtoa := EffbdFunction new functionName: 'Compute DTOA'.
	dataEntry1 := EffbdFlow new flowName: 'dataEntry1'; sourceFunction: readEntry1 ; targetFunction: computeDtoa .
	dataEntry2 := EffbdFlow new flowName: 'dataEntry2'; sourceFunction: readEntry2 ; targetFunction: computeDtoa .
	dataEntry3 := EffbdFlow new flowName: 'dataEntry3'; sourceFunction: readEntry3 ; targetFunction: computeDtoa .
	readEntry1 addOutputFlow: dataEntry1 .
	readEntry2 addOutputFlow: dataEntry2 .
	readEntry3 addOutputFlow: dataEntry3 .
	computeDtoa addInputFlow: dataEntry1 ; addInputFlow: dataEntry2 ; addInputFlow: dataEntry3 .
	l1 := EffbdLoopOperator new effbdLoopedBranch: (EffbdBranch new addEffbdElement: readEntry1 ).
	l2 := EffbdLoopOperator new effbdLoopedBranch: (EffbdBranch new addEffbdElement: readEntry2 ).
	l3 := EffbdLoopOperator new effbdLoopedBranch: (EffbdBranch new addEffbdElement: readEntry3 ).
	l4 := EffbdLoopOperator new effbdLoopedBranch: (EffbdBranch new addEffbdElement: computeDtoa ).
	andOperator := EffbdAndOperator new addEffbdParallelBranch: (EffbdBranch new addEffbdElement: l1).
	andOperator addEffbdParallelBranch: (EffbdBranch new addEffbdElement: l2).
	andOperator addEffbdParallelBranch: (EffbdBranch new addEffbdElement: l3).
	andOperator addEffbdParallelBranch: (EffbdBranch new addEffbdElement: l4).
	mainBranch := EffbdBranch new addEffbdElement: andOperator.
	^mainBranch .