package com.faisalman.FlashCookie 
{
    import flash.display.Sprite;
    import flash.net.SharedObject;
 
    public class FlashCookie extends Sprite 
    {
        protected var cookie:SharedObject = SharedObject.getLocal("FlashCookie", "/");
        
        public function clear():void {
            this.cookie.clear();
        }
        
        public function remove(key:String):void {
            delete this.cookie.data[key];
            this.flush();
        }
        
        private function flush():void {
            this.cookie.flush();
        }
        
        public function get(key:String):* {
            return this.cookie.data[key];
        }
        
        public function set(key:String, value:*):void {
            this.cookie.data[key] = value;
            this.flush();
        }
    }
}
