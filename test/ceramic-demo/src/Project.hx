package;

import ceramic.Color;
import ceramic.Entity;
import ceramic.InitSettings;

class Project extends Entity {

    function new(settings:InitSettings) {

        super();

        settings.antialiasing = 1;
        settings.background = Color.fromRGB(40, 44, 52);
        settings.targetWidth = 1024;
        settings.targetHeight = 720;
        settings.scaling = RESIZE;
        settings.resizable = true;

        app.onceReady(this, ready);

    }

    function ready() {

        app.scenes.main = new MainScene();

    }

}
