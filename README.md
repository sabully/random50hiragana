# random50hiragana
shell脚本写的五十音练习,自用

先给random50hiragana.sh添加执行权限:
`chmod u+x random50hiragana.sh`

**用法:**
- 随机产生12个a行的字符(平假名和片假名)

`./random50hiragana -a`
- 指定产生随机的30个a行的字符
  
`./random50hiragana -a 30`

- 随机产生a行和k行的字符,a行默认产生12个字符,k行指定产生18个字符,输出的结果显示两行,第一行为a行的字符,第二行为k行的字符
  
`./random50hiragana -a -k 18`

- 随机混合产生a行和k行的字符,a行和k行总共输出18个字符,如果没有指定个数,则默认为12个

`./random50hiragana -ak 18`

上面的a和k可以换成:`a,k,s,t,n,h,m,y,r,w,N`中的任何一个字母,也可以不添加`-`
其中的N是ん行

比如:`./random50hiragana -a`可以写成`./random50hiragana a`

脚本文件开头有一个default_num的变量,修改它的值可以修改默认产生的字符个数
