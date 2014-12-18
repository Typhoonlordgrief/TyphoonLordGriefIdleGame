package  
{
	import flash.display.Sprite;
	import flash.events.Event;
	/**
	 * ...
	 * @author Typhoonlordgrief
	 */
	public class gymFrame extends Sprite
	{
		private var menuBackground: 		Sprite;
		private var menuCOLOR:				uint = 0xd9b071;
		
		public function gymFrame():void{
			addEventListener(Event.ADDED_TO_STAGE, activation);
		}
		
		private function activation(e:Event):void {
			removeEventListener(Event.ADDED_TO_STAGE, activation);
			menuBackground = panelMaking(menuCOLOR, 800, 700, 150, 0);
			addChild(menuBackground);
		}
		
		private function panelMaking(mColor:uint, height:int, width:int, X:int, Y:int):Sprite {
			var panelMaking:Sprite = new Sprite();
			panelMaking.graphics.beginFill(mColor)
			panelMaking.graphics.lineStyle(1, 0x000000, .6);
			panelMaking.graphics.drawRect(X, Y, width, height);
			
			return panelMaking;
		}
		
		
	}

}