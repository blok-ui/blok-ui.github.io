import blok.bridge.Bridge;
import blok.bridge.CoreExtensions;
import blok.site.Site;

function main() {
	Bridge.start({
		version: '0.0.1',
		outputPath: './dist'
	})
		.use(
			generateStaticHtml(NamedHtmlFile),
			generateClientApp({
				dependencies: UseHxml('build-client.hxml')
			}),
			// outputRobotsTxt(),
			visitNotFoundPage(),
			linkAssets([
				CssAsset('/assets/styles.css')
			]),
			#if debug
			useLogging()
			#end
		)
		.generate(() -> Site.node({}))
		.inspect(_ -> Sys.println('Site generated'))
		.inspectError(e -> Sys.println(e.message))
		.eager();
}
