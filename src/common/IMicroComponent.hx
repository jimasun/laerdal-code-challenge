package common;

interface IMicroComponent {
	// The sendFunc is to be invoked when the component wants to output data
	function initialize(sendFunc:Int->Void):Void;
	function receiveInt(value:Int):Void;
	function tick(timeStep:Int):Void;
}
