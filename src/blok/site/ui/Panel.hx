package blok.site.ui;

class Panel extends Component {
	@:attribute final styles:ClassName = null;
	@:children @:attribute final children:Children;

	function render() {
		return Html.view(<div className={Breeze.compose(
			Border.radius(4),
			Spacing.pad(5),
			Background.color('gray', 200),
			Flex.display(),
			Flex.direction('column'),
			Flex.gap(3),
			styles
		)}>
			children
		</div>);
	}
}
