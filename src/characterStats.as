package  
{
	import adobe.utils.CustomActions;
	/**
	 * ...
	 * @author Typhoonlordgrief
	 */
	public class characterStats {
		//Primary Stats
		public static var strength:	int = 10;
		public static var physique:	int = 10;
		public static var instinct:	int = 10;
		public static var acunem:		int = 10;
		public static var discipline:	int = 10;
		public static var zeal:		int = 10;
		
		//Secondary/Derived Stats
		public var health:		int = 1 + characterStats.physique;
		
		//Inventory stuff
		public var tender:		int = 250;
		
		public function characterStats() 
		{
			
		}
		
	}

}