# FlashCookie.js

JavaScript interface library to manage persistent cross-browser Flash cookies.

## Method

* get(key)
* set(key, value)
* remove(key)
* clear()

## Example

```html
<script type="text/javascript" src="flash-cookie.min.js"></script>
<script type="text/javascript">
    FlashCookie.onReady(function (cookie) {
        cookie.set("key1", "value1");
        cookie.set("key2", "value2");

        console.log(cookie.get("key1"));    // "value1"

        cookie.remove("key1");

        console.log(cookie.get("key1"));    // undefined
        console.log(cookie.get("key2"));    // "value2"

        cookie.clear();

        console.log(cookie.get("key2"));    // undefined
    });
</script>
```

## License

MIT License

Copyright © 2013 Faisalman <<fyzlman@gmail.com>>