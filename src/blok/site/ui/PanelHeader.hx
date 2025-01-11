package blok.site.ui;

class PanelHeader extends Component {
	@:attribute final styles:ClassName = null;
	@:children @:attribute final children:Children;

	function render() {
		return Html.view(<header className={Breeze.compose(
			Flex.display(),
			Flex.align('center'),
			styles
		)}>
			children
		</header>);
	}
}
