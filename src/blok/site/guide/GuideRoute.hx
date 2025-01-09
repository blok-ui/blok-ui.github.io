package blok.site.guide;

import blok.router.Route;

typedef GuideRoute = Route<'/guide/{version:String}/{chapter:String}'>;
