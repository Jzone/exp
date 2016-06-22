1.直接使用字符编码
:h i_CTRL-V_digit
:h ga 
-假设我们想插入大写的字母A，他的ANSI字符编码是65（十进制）,因此我们需要输入<C-v>065。（<C-v>表示ctrl+v）
-然而如果我们想要插入超过3位字符的Unicode字符怎么办呢？解决方法是用4位十六进制编码来输入这些字符，
 即输入<C-v>u{1234}，注意数字前面的u。比如要输入倒的问号，其unicode字符编码为00bf，只要在插入模式中输入<C-v>u00bf
2.road vimrc
:source ~/.vimrc
-Run that from inside vim, that will apply your .vimrc
-Alternately
:source $MYVIMRC
