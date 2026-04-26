package;

import flixel.text.FlxText;
import flixel.FlxState;

/**
 * The main game state.
 */
class PlayState extends FlxState
{
	public var text:String = 'Hello World';

	public function new(?text:String = 'Hello World')
	{
		super();
		this.text = text;
	}
	override public function create():Void
	{
		super.create();

		var text:FlxText = new FlxText(0, 0, 0, text, 64);
		text.screenCenter();
		add(text);
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}
}
