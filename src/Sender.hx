package;

import common.IMicroComponent;

class Sender implements IMicroComponent {
	var sendFunc:(timeStep:Int) -> Void;

	public function new():Void {}

	public function initialize(sendFunc:Int->Void):Void {
		this.sendFunc = sendFunc;
	}

	public function receiveInt(value:Int):Void {}

	public function tick(timeStep:Int):Void {
		this.sendFunc(timeStep);
	}
}
