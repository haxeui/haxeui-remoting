package haxe.ui.remoting.client.calls;

class Call {
    public function new() {

    }

    public function execute(details:Dynamic):Dynamic {
        throw "Not implemented";
    }

    public static function create(name:String):Call {
        switch (name) {
            case "components.list":
                return new ListComponents();
            case "component.highlight":
                return new HighlightComponent();
            case "component.removeAllChildren":
                return new RemoveAllChildComponents();
            case "component.create":
                return new CreateComponent();
        }

        return null;
    }

}