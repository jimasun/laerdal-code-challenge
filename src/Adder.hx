package;

import common.Operation;

class Adder extends Operation {
	public function new():Void {}

	private override function operation(a:Int, b:Int):Int {
		return a + b;
	}
}
