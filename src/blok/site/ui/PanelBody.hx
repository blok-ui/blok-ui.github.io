package blok.site.ui;

class PanelBody extends Component {
	@:attribute final styles:ClassName = null;
	@:children @:attribute final children:Children;

	function render() {
		return Html.view(<div className=styles>
			children	
		</div>);
	}
}