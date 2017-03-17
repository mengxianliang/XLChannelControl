# XLChannelControl
## 说明
iOS 仿照腾讯新闻客户端实现的频道管理功能，参考了今日头条和网易新闻客户端的频道管理功能，觉得腾讯的逻辑和操作还是比较清晰的，所以仿照这腾讯新闻的客户端做了一个这个频道管理的功能；
<br>
主要逻辑就是正常点击频道按钮进行增加/删除的操作；在"我的频道"中按住拖拽可以对我的频道进行排序操作；实现原理是利用UICollectionView+UIGestureRecognizer实现的。
<br>
## 显示效果

| 正常显示 | 点击删除/增加 | 拖拽排序 |
| ---- | ---- | ---- |
|![image](https://github.com/mengxianliang/XLChannelControl/blob/master/GIF/1.gif)| ![image](https://github.com/mengxianliang/XLChannelControl/blob/master/GIF/2.gif)| ![image](https://github.com/mengxianliang/XLChannelControl/blob/master/GIF/3.gif)|
<br>
## 使用方法

```objc
    [[XLChannelControl shareControl] showChannelViewWithInUseTitles:titleArr1 unUseTitles:titleArr2 finish:^(NSArray *inUseTitles, NSArray *unUseTitles) {
        //处理后续问题
    }];
```
<br>

### 实现原理请参考[我的博文](http://blog.csdn.net/u013282507/article/details/54374952)
### 我之前用ScrollView实现的版本[戳这里](http://code.cocoachina.com/view/133979)
