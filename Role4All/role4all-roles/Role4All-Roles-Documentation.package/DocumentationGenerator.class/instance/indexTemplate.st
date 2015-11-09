templates
indexTemplate
	^(
	'<html>
		<head>
			<title>Documentation</title>
		</head>
		<body>
			<h1>System documentation</h1>
			<h2>Artifacts</h2>
			<ul>
				{{# artifacts }}
				<li><a href="{{ artifactPage }}.html">{{ artifactName }}</a></li>
				{{ / artifacts }}
			</ul>
		</body>
	</html>').