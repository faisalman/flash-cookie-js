package com.faisalman.FlashCookie 
{
    import flash.display.Sprite;
    import flash.external.ExternalInterface;
    import flash.net.SharedObject;
    import flash.text.TextField;
 
    public class FlashCookie extends Sprite 
    {
        protected var cookie:SharedObject;
        protected var console:TextField;
        
        public function FlashCookie() {
            this.cookie = SharedObject.getLocal("FlashCookie", "/");
            // draw custom console for debugging
            this.console = new TextField();
            this.console.text = "begin";
            this.console.width = 1000;
            this.addChild(this.console);            
            try {
                ExternalInterface.addCallback("clear", this.clear);
                ExternalInterface.addCallback("remove", this.remove);
                ExternalInterface.addCallback("get", this.get);
                ExternalInterface.addCallback("set", this.set);
            } catch (error:Error) {
                if (error.errorID == 2060) {
                    this.console.text = "Add " + this.loaderInfo.loaderURL + " to trusted location in http://www.macromedia.com/support/documentation/en/flashplayer/help/settings_manager04.html";
                }
            }
        }
        
        public function clear():void {
            this.cookie.clear();
        }
        
        private function flush():void {
            this.cookie.flush();
        }
        
        public function get(key:String):* {
            return this.cookie.data[key];
        }
        
        public function remove(key:String):void {
            delete this.cookie.data[key];
            this.flush();
        }
        
        public function set(key:String, value:*):void {
            this.cookie.data[key] = value;
            this.flush();
        }
    }
}
