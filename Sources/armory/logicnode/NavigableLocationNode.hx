package armory.logicnode;

import armory.math.Vec4;
import armory.trait.internal.Navigation;

class NavigableLocationNode extends Node {

	var loc:Vec4;

	public function new(tree:LogicTree) {
		super(tree);

		armory.Scene.active.notifyOnInit(function() {
			get();
		});
	}

	override function get(from:Int):Dynamic {
#if arm_navigation
		// Assume navmesh exists..
		Navigation.active.navMeshes[0].getRandomPoint(function(p:Vec4) {
			loc = p;
		});
#end
		return loc;
	}
}