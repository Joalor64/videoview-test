package;

import flixel.FlxG;
import flixel.text.FlxText;
import flixel.FlxState;
#if android
import extension.videoview.VideoView;
#end
#if ios
import iosvideo.IOSVideo;
#end

/**
 * The main game state.
 */
class Test extends FlxState
{
	override public function create():Void
	{
		super.create();

		#if android
		VideoView.playVideo(Paths.video('test')); // the video can be in any format (e.g., .webm, .mkv, .etc)
		VideoView.onCompletion = function()
		{
			FlxG.switchState(new PlayState());
		};
		#else #if ios
		IOSVideo.play(Paths.video('test'));
		IOSVideo.onComplete = function()
		{
			FlxG.switchState(new PlayState());
		};
		#else
		FlxG.switchState(new PlayState());
		#end
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}
}
