# 2023年积累的编程技巧

## 2023-07

### 2023-07-14

1. Bash 参数扩展

```sh
${parameter:-word}
  # Use Default Values. If parameter is unset or null, the expansion of word is substituted. Otherwise, the value of parameter is substituted.
  # 记忆方法：- 代表不用赋值，并且代表“负、反”，即 parameter 与 word 是互补关系，有我无你，无我有你。结合三目运算符，上述表达式可以理解为：`parameter ? word : parameter`

${parameter:=word}
  # Assign Default Values. If parameter is unset or null, the expansion of word is assigned to parameter. The value of parameter is then substituted.
  # 记忆方法：= 代表赋值，再结合三目运算符，上述表达式可以理解为：`parameter ? parameter = word : do nothing`

${parameter:offset}
${parameter:offset:length}
  # Substring Expansion. Expands to up to length characters of parameter starting at the character specified by offset.

${#parameter}
  # Parameter length.

${parameter#word}
${parameter##word}
  # Remove matching prefix pattern.
  # `#` means the shortest matching pattern, `##` means the longest matching pattern.
  # 记忆方法：# 一般用在开头，所以代表前缀

${parameter%word}
${parameter%%word}
  # Remove matching suffix pattern.
  # 记忆方法：% 是求余符号，剩下的，所以代表后缀

${parameter/pattern/string}
  # Pattern substitution. Parameter is expanded and the longest match of pattern against its value is replaced with string.
  # If pattern begins with /, all matches of pattern are replaced with string. Normally only the first match is replaced.
  # 记忆方法：/ 在 vim 里面是搜索所有指定字符串，因此加了 / 代表替换所有。
```
