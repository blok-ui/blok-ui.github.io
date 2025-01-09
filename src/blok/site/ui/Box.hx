package blok.site.ui;

class Box extends Component {
	@:attribute final styles:ClassName;
	@:children @:attribute final children:Children;

	function render() {
		return Html.view(<div className=styles>
			children	
		</div>);
	}
}
