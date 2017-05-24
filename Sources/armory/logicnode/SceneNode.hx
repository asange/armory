package armory.logicnode;

import armory.Scene;

class SceneNode extends LogicNode {

	public var property0:String;

	public function new(tree:LogicTree) {
		super(tree);
	}

	override function get(from:Int):Dynamic { 
		return property0;
	}

	override function set(value:Dynamic) {
		this.property0 = value;
	}
}