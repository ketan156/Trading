package model
{
	public class TradeData
	{
		public var pair : String;
		public var buy : String;
		public var sell : String;
		
		public var isGreen:Boolean = true;
		
		public function getBuyFirst():String
		{
			return buy.substr(0,4);
		}
		
		public function getSellFirst():String
		{
			return sell.substr(0,4);
		}
		
		public function getBuySecond():String
		{
			var strBuySecond:String = getString(buy);
			return strBuySecond.substr(4,2);
		}
		
		public function getSellSecond():String
		{
			var strSellSecond:String = getString(sell);
			return strSellSecond.substr(4,2);
		}
		
		public function getBuyThird():String
		{
			var strBuySecond:String = getString(buy);
			return strBuySecond.substr(6,1);
		}
		
		public function getSellThird():String
		{
			var strSellSecond:String = getString(sell);
			return strSellSecond.substr(6,1);
		}
		
		private function getString(strData:String):String{
			if(strData.length < 7){
				if(strData.length == 5){
					strData += "00";
				} else if(strData.length == 6){
					strData += "0";
				}
				return strData;
			} else {
				return strData;
			}
		}
	}
}