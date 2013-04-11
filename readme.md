# FlashCookie.js

JavaScript interface library to manage persistent cross-browser Flash cookies.

## Example

Not yet working, maybe someday...

```html
<script type="text/javascript" src="flash-cookie.js"></script>
<script type="text/javascript">
    FlashCookie.set("key1", "value1");
    FlashCookie.set("key2", "value2");    
    FlashCookie.get("key1");             // "value1"    
    FlashCookie.remove("key1");    
    FlashCookie.get("key1");             // undefined
    FlashCookie.get("key2");             // "value2"    
    FlashCookie.clear();    
    FlashCookie.get("key2");             // undefined
</script>
```

## License

MIT License

Copyright © 2013 Faisalman <<fyzlman@gmail.com>>