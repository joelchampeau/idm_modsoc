drawing
diagIn: constructor
	"Defines the diagramming part of the role browser."
	constructor roassal2
		title: 'Model Representation';
		initializeView: [ RTMondrianViewBuilder new ];
		painting: [ :view :contexts |
			|compositeRoles els |
			view shape label.
			els :=  view nodes: contexts.
			view treeLayout .
			view edgesFrom: [ :each | ((each isKindOf: Role) and: [ each playRelation notNil  ]) ifTrue: [ each playRelation player  ]  ].
			compositeRoles := RoleOrganizer uniqueInstance players select: [ :elem | (elem isKindOf: Role) and: [ elem containedRoles isEmpty not ] ].
			"view shape: (RTLine new add: (RTDiamond new))."
			
			compositeRoles do: [ :aCompositeRole | 
				"view edgesFromAssociations: (self resolveDependencies: aCompositeRole )."
				RTEdge buildEdgesFromAssociations: (self resolveDependencies: aCompositeRole)
					using: ((RTLine new attachPoint: RTShorterDistanceAttachPoint new; color: Color veryDarkGray))
					inView: (view view).
			].
			"view edgesFromAssociations: [ :each | (each isKindOf: Role) ifTrue: [ self resolveDependencies: each  ] ]."
			view treeLayout .
			"RTHorizontalTreeLayout new on: els."
			view applyLayout .
		];
		updateOn: GLMItemAdded from: #yourself;
		act: [ :b | RoleModelExporter new exportGraphViz .] icon: (GLMUIThemeExtraIcons glamorousDown) on: $e entitled: 'Export role model'.