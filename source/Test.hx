package;

import flixel.text.FlxText;
import flixel.FlxState;
#if (android || ios)
import extension.videoview.VideoView;
#end

/**
 * The main game state.
 */
class Test extends FlxState
{
	override public function create():Void
	{
		super.create();

		#if (android || ios)
		VideoView.playVideo(Paths.video(name)); // the video can be in any format (e.g., .webm, .mkv, .etc)
		VideoView.onCompletion = function()
		{
			FlxG.switchState(PlayState.new);
		}
		#end
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}
}
