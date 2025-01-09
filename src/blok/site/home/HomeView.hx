package blok.site.home;

import blok.site.layouts.MainLayout;

class HomeView extends Component {
	function render():Child {
		return Html.view(<MainLayout title="Home">
			<h1>"Blok"</h1>
			<p>"Coming soon"</p>
		</MainLayout>);
	}
}
