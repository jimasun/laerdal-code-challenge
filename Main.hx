class Main {
	static function main():Void {
		trace("instantiationg the classes...");

		var Sender = new Sender();
		var Adder = new Adder();
		var Divider = new Divider();
		var Writer = new Writer();

		trace("initialization...");

		Sender.initialize((value:Int) -> {
			Adder.receiveInt(value);
			Divider.receiveInt(value);
		});

		Adder.initialize((value:Int) -> {
			Divider.receiveInt(value);
			Writer.receiveInt(value);
		});

		Divider.initialize((value:Int) -> {
			Writer.receiveInt(value);
		});

		for (i in 0...4) {
			Sender.tick(i);
		}
	}
}
