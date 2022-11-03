package;

import common.IMicroComponent;

class Writer implements IMicroComponent {
	public function new() {}

	public function initialize(sendFunc:Int->Void) {}

	public function receiveInt(value:Int) {
		trace(value);
	}

	public function tick(timeStep:Int) {}
}
