package  
{
	import adobe.utils.CustomActions;
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Loader;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.TextEvent;
	import flash.text.TextField;
	/**
	 * ...
	 * @author Typhoonlordgrief
	 */
	public class primaryStatDisplay extends Sprite {
		//Stat
		private var stats:characterStats;
		
		//Stat Pics
		private var strengthIcon:Bitmap = 	new assets.strengthPic();
		private var physiqueIcon:Bitmap = 	new assets.physiquePic();
		private var instinctIcon:Bitmap = 	new assets.instinctPic();
		private var acunemIcon:Bitmap = 	new assets.acunemPic();
		private var disciplineIcon:Bitmap = new assets.disciplinePic();
		private var zealIcon:Bitmap = 		new assets.zealPic();
		
		
		//Text
		private var strengthTextField:	TextField;
		private var physiqueTextField:	TextField;
		private var instinctTextField:	TextField;
		private var acunemTextField:	TextField;
		private var disciplineTextField:TextField;
		private var zealTextField:		TextField;
		
		//Menu Background
		private var menuBackground: 		Sprite;
		private var menuCOLOR:				uint = 0xd9b071;
		
		
		public function primaryStatDisplay():void {
			addEventListener(Event.ADDED_TO_STAGE, activation);
		}
		
		private function activation(e:Event):void {
			removeEventListener(Event.ADDED_TO_STAGE, activation);
			menuBackground = panelMaking(menuCOLOR, 800, 150, 0, 0);
			addChild(menuBackground);
			
			placement(strengthIcon,   10,  10, .5, .5);
			placement(physiqueIcon,   10,  40, .5, .5);
			placement(instinctIcon,   10,  70, .5, .5);
			placement(acunemIcon,     10, 100, .5, .5);
			placement(disciplineIcon, 10, 130, .5, .5);
			placement(zealIcon,       10, 160, .5, .5);
			
			textPlacement(strengthTextField, 	false, 250, 25, characterStats.strength.toString(),  40, 10);
			textPlacement(physiqueTextField, 	false, 250, 25, characterStats.physique.toString(),  40, 40);
			textPlacement(instinctTextField, 	false, 250, 25, characterStats.instinct.toString(),  40, 70);
			textPlacement(acunemTextField,		false, 250, 25, characterStats.acunem.toString(),	 40, 100);
			textPlacement(disciplineTextField,	false, 250, 25, characterStats.discipline.toString(),40, 130);
			textPlacement(zealTextField,		false, 250, 25, characterStats.zeal.toString(),		 40, 160);
			
			
			/* var strengthTextField:TextField = new TextField();
			strengthTextField.selectable = false;
			strengthTextField.width = 250;
			strengthTextField.height = 25;
			strengthTextField.text = "Fuck fuck fuck shit fuck shit fuck damn.";
			addChild(strengthTextField);
			strengthTextField.x = 40;
			strengthTextField.y = 10; */
			
			/*addChild(physiqueIcon);
			physiqueIcon.y = 10;
			physiqueIcon.x = 10;
			physiqueIcon.scaleX = .5;
			physiqueIcon.scaleY = .5; */
		}
		
		private function panelMaking(mColor:uint, height:int, width:int, X:int, Y:int):Sprite {
			var panelMaking:Sprite = new Sprite();
			panelMaking.graphics.beginFill(mColor)
			panelMaking.graphics.lineStyle(1, 0x000000, .6);
			panelMaking.graphics.drawRect(X, Y, width, height);
			
			return panelMaking;
		}
		
		private function placement(pic:Bitmap, X:int, Y:int, SizeX:int = 1, SizeY:int = 1):void {
			addChild(pic);
			pic.y = Y;
			pic.x = X;
			pic.scaleX = .5;
			pic.scaleY = .5;
		}
		
		private function textPlacement(textbox:TextField, select:Boolean, width:int, height:int, text:String, X:int, Y:int):void {
			var textbox:TextField = new TextField();
			textbox.selectable = select;
			textbox.width = width;
			textbox.height = height;
			textbox.text = text;
			addChild(textbox);
			textbox.x = X;
			textbox.y = Y;
		}
		
		
	}

}