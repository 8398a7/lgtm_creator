# lgtm_creater
You can easily create LGTM image from gif animation.

![](https://github.com/8398a7/lgtm_creater/blob/master/example.gif?raw=true)

## Requires

- Ruby
- ImageMagick

## Example

```sh
$ git clone https://github.com/8398a7/lgtm_creater.git
$ cd lgtm_creater/before_convert
$ curl -O http://img.gifmagazine.net/gifmagazine/images/32438/original.gif
$ cd ../
$ ruby convert.rb
$ open after_convert/original.gif
```
