package blok.site.home;

import blok.site.layouts.MainLayout;
import blok.site.ui.*;

class HomeView extends Component {
	function render():Child {
		return Html.view(<MainLayout title="Home">
			<Panel>
				<PanelHeader>
					<Heading level={1}>"Blok"</Heading>
				</PanelHeader>
				<PanelBody>	
					<p>"Coming soon"</p>
				</PanelBody>
			</Panel>
		</MainLayout>);
	}
}
