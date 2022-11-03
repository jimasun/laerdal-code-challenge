package common;

import common.IMicroComponent;

class Operation implements IOperation implements IMicroComponent {
	var sendFunc:(sum:Int) -> Void;
	var values:Array<Int> = [];
	var aCount:Int;

	public function initialize(sendFunc:Int->Void):Void {
		this.sendFunc = sendFunc;
	}

	public function receiveInt(value:Int):Void {
		this.values[this.aCount] = value;

		if (this.aCount == 1) {
			var result:Int = this.operation(this.values[0], this.values[1]);
			this.sendFunc(result);
		}

		cycleArray();
	}

	public function tick(timeStep:Int):Void {}

	private function cycleArray():Void {
		this.aCount >= 1 ? this.aCount = 0 : this.aCount++;
	}

	private function operation(a:Int, b:Int):Int {
		throw new haxe.exceptions.NotImplementedException();
	}
}
