package nautilida.opsticals {
	import flash.display.MovieClip;
	import flash.events.Event;
	
	public class Opstical extends MovieClip {
		protected var xdirection:Number = 0;
		protected var xoffset:Number = 0;
		protected var xspeed:Number = 1;

		protected var maxX:Number = 0;
		protected var minX:Number = 0;
		
		protected var ydirection:Number = 0;
		protected var yoffset:Number = 0;
		protected var yspeed:Number = 1;

		protected var maxY:Number = 0;
		protected var minY:Number = 0;
		
		public function Opstical() {
			addEventListener(Event.ADDED,onAdded);
		}
		protected function onAdded(event:Event):void {
			if(xdirection < 0) {
				maxX = x;
				minX = x-xoffset;
			}
			else if(xdirection > 0) {
				minX = x;
				maxX = x+xoffset;
			}
			
			if(ydirection < 0) {
				maxY = y;
				minY = y-yoffset;
			}
			else if(ydirection > 0) {
				minY = y;
				maxY = y+yoffset;
			}
			
			addEventListener(Event.ENTER_FRAME,onEnterFrame);
		}
		protected function onEnterFrame(event:Event):void {
			if(xdirection) {
				x += xdirection*xspeed;
				if(x > maxX) { xdirection = -1; }
				else if(x < minX) { xdirection = 1; }
			}
			
			if(ydirection) {
				y += ydirection*yspeed;
				if(y > maxY) { ydirection = -1; }
				else if(y < minY) { ydirection = 1; }
			}
		}
	}
}