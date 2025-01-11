package blok.site.layouts;

class MainLayout extends Component {
	@:attribute final title:Null<String> = null;
	@:children @:attribute final children:Children;

	function render() {
		return Html.view(<html>
			<head>
				// Etc
				<title>"Blok"</title>
			</head>
			<body className={Breeze.compose(
				Sizing.width('max', '900px'),
				Spacing.margin('auto')
			)}>
				<main className={Breeze.compose(
					Spacing.margin('y', 10)
				)}>
					// Site header here
					children
				</main>
			</body>
		</html>);
	}
}
