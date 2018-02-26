package;

import kha.*;

class Main {
	public static function main() {
		System.init({title: "Project", width: 1024, height: 768}, function () {
			new Main();
		});
	}

	function new() {
		Assets.loadImageFromPath('https://d2u64t73ywlwt4.cloudfront.net/weekly-client/1511869755.geres.png', false, function( image: Image ) {
			this.image = image;
			System.notifyOnRender(render);
		});
	}

	var image: Image;

	function render( fb: Framebuffer ) {
		var g2 = fb.g2;
		g2.begin(true, Color.Black);
			g2.drawScaledImage(image, 0, 0, System.windowWidth(), System.windowHeight());
		g2.end();
	}
}
