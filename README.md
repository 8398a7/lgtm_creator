# lgtm_creator
You can easily create LGTM image from gif animation.

![](https://cloud.githubusercontent.com/assets/8043276/12905143/1cdb5638-cf18-11e5-9efb-4f13614700cb.gif)

## Requires

- Ruby
- ImageMagick

## Example

```sh
$ git clone https://github.com/8398a7/lgtm_creator.git
$ cd lgtm_creator/before_convert
$ curl -O http://img.gifmagazine.net/gifmagazine/images/32438/original.gif
$ cd ../
$ ruby convert.rb
$ open after_convert/original.gif
```