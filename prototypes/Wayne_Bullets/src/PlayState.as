package
{

	import org.flixel.*;

	public class PlayState extends FlxState
	{
		var shotsPerSecond = 0.25;
		
		var enemyCount = 0;
		var enemyMax = 50;
		var player;
		var timeSinceLastShot = 0;
		
		override public function create():void
		{			
			FlxG.bgColor = 0xff333333;
			
			player = new GitShip();
			add(player);
		}
		
		override public function update():void
		{
			if (timeSinceLastShot >= shotsPerSecond && FlxG.keys.SPACE)
			{
				var shot = new Shot();
				shot.x = player.x;
				shot.y = player.y;
				add(shot);
				
				timeSinceLastShot = 0;
			}
			
			timeSinceLastShot += FlxG.elapsed;
			
			super.update();
		}
	}
	
}

