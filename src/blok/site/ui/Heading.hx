package blok.site.ui;

import blok.debug.Debug;
import blok.html.HtmlEvents;

enum abstract HeadingType(Int) {
	final Primary = 1;
	final Secondary = 2;
	final Tertiary = 3;
}

class Heading extends Component {
	@:attribute final level:Int;
	@:attribute final styles:ClassName = null;
	@:attribute final onClick:EventListener = null;
	@:attribute final role:String = null;
	@:children @:attribute final children:Children;

	function render() {
		var factory = getFactory(level);
		return factory({
			className: Breeze.compose(
				styles,
				// Typography.font('title'),
				Typography.fontWeight('bold'),
				switch level {
					case 1:
						Typography.fontSize('3xl');
					default:
						Typography.fontSize('xl');
				}
			),
			onClick: onClick,
			role: role
		}, ...children.toArray());
	}

	function getFactory(level:Int) {
		assert(level > 0 && level < 6);
		return switch level {
			case 1: Html.h1;
			case 2: Html.h2;
			case 3: Html.h3;
			case 4: Html.h4;
			case 5: Html.h5;
			default: Html.h6;
		}
	}
}