﻿package nautilida.environments {	import flash.display.Sprite;		public class Environment extends Sprite {		public var speedLeft:Number = 0;		public var speedRight:Number = 0;		public var speedUp:Number = 0;		public var speedDown:Number = 0;				public var breakLeft:Number = 1;		public var breakRight:Number = 1;		public var breakUp:Number = 1;		public var breakDown:Number = 1;				public var accLeft:Number = 5;		public var accRight:Number = 5;		public var accUp:Number = 27;		public var accDown:Number = 5;				public var gravity:Number = 10;		public var jumps:Number = 0;		public var maxJumps:Number = 1;				public function Environment() {		}	}}