package blok.site.error;

import kit.Error;
import blok.site.layouts.MainLayout;

class ErrorView extends Component {
	@:attribute final code:ErrorCode = InternalError;
	@:children @:attribute final children:Children;

	function render():Child {
		var title = Std.string(code);
		return Html.view(<MainLayout title=title>
			<div>
				<p>'okl'</p>
				<h1>title</h1>
				<p>children</p>
			</div>
		</MainLayout>);
	}
}
