# commonly-used-script
Some common script, reduce duplication of artificial operation

## imageBuilder description
一般电商网站在PLP页显示的商品图片会有两张一张显示正面一张背面，这个批处理就是为了开发过程中方便快速构建商品图片创建的

## imageBuilder 操作文档
* 1、自行编辑copayImage.bat文件进行图片拷贝
* 2、点击copayImage.bat，拷贝图片
* 3、点击autoBuildImage.bat开始构建打包打包完的zip包都在zip下面
* 4、点击clearFiles.bat清空目录

## imageBuilder note:
* 1、images1、images2这两个目录只能存放jpg格式的图片，图片命名格式为[itemCode]* .jpg。
* 2、images1目录只能存放正向的图片，images2目录只能存放反向的图片
* 3、假如有itemCode为tommytest000的商品正向图片放在了images1目录中，则必须有一个此商品的反向图片放在images2目录中


