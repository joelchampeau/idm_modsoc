templates
elementTemplate
	^(
	'<html>
		<head>
			<title>{{ elementName }} Description</title>
		</head>
		<body>
			<h1>{{ elementName }}</h1>
			<h2>Properties</h2>
			<ul>
			{{# properties }}
				<li>{{ propertyName }}: {{#hasValue}}{{ propertyValue }}{{/hasValue}}</li>
			{{/ properties }}
		</body>
	</html>'
	).