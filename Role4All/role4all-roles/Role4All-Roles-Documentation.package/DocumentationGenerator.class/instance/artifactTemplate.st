templates
artifactTemplate
	^(
	'<html>
		<head>
			<title>{{ artifactName }} Description</title>
		</head>
		<body>
			<h1>{{ artifactName }}</h1>
			<h2>Elements</h2>
			<ul>
				{{# elements }}
				<li><a href="{{ elementPage }}.html">{{ elementName }}</a></li>
				{{/ elements }}
			</ul>
		</body>
	</html>'
	).