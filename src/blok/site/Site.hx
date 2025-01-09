package blok.site;

import blok.router.Router;
import blok.site.error.*;
import blok.site.home.*;

class Site extends Component {
	function render():Child {
		return Router.node({
			routes: [
				HomeRoute.route(_ -> HomeView.node({})),
				ErrorRoute.route(_ -> ErrorView.node({code: NotFound, children: 'Page not found'}))
			]
		});
	}
}
