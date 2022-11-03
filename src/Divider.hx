package;

import common.Operation;

class Divider extends Operation {
	public function new():Void {}

	private override function operation(a:Int, b:Int):Int {
		a == 0 ? return 0 : return cast(b / a, Int);
	}
}
