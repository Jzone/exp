1.直接使用字符编码
(1):h i_CTRL-V_digit
:h ga 
-假设我们想插入大写的字母A，他的ANSI字符编码是65（十进制）,因此我们需要输入<C-v>065。（<C-v>表示ctrl+v）
-然而如果我们想要插入超过3位字符的Unicode字符怎么办呢？解决方法是用4位十六进制编码来输入这些字符，
 即输入<C-v>u{1234}，注意数字前面的u。比如要输入倒的问号，其unicode字符编码为00bf，只要在插入模式中输入<C-v>u00bf
(2) 在插入模式中，只需输入<C-k>{char1}{char2}即可
 :h  digraph-table查看
2.road vimrc
:source ~/.vimrc
-Run that from inside vim, that will apply your .vimrc
-Alternately
:source $MYVIMRC
:so %
if currently editing .vimrc
3.vim 排序
:'<,'>!sort -n -k 2
:h filter
:sort /.*\%2v/
:sort n /.*\s/
－sort by second column
(visual + !sort) 
－sort by third column
sort -k 3 
－or
:sort /.*\%3v/
－Or
－select the lines you wish to sort using the Capital V command. Then enter
!sort -k 3n
－or
－the below code tells VIM to skip the first two words in every line and to sort on whatever follows:
:%sort /^\S\+\s\+\S\+\s\+/ 
－or
－i.e. sort by 8th line
:sort /.*\%55v/
－The 'virtual' specification is the absolute column number, which treats spaces and tabs as a single character (in other words, it does NOT count tabs as 8 spaces (or whatever your tab settings are). 
－sort by the last column
:%sort /\<\S\+\>$/ r
