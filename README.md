# Structure and Interpretation of Computer Programs
计算机程序的构造和解释
-----

### 目录：
- Ch1 构造过程抽象
    - 1.1 程序设计的基本元素
        - 1.1.1 表达式
        - 1.1.2 命名和环境
        - 1.1.3 组合式的求值
        - 1.1.4 复合过程
        - 1.1.5 过程应用的代换模型：[Ex1.1](https://github.com/CN-DXTZ/SICP/blob/master/answer/Ch1/1_1.scm), [Ex1.2](https://github.com/CN-DXTZ/SICP/blob/master/answer/Ch1/1_2.scm), [Ex1.3](https://github.com/CN-DXTZ/SICP/blob/master/answer/Ch1/1_3.scm), [Ex1.4](https://github.com/CN-DXTZ/SICP/blob/master/answer/Ch1/1_4.scm), [Ex1.5](https://github.com/CN-DXTZ/SICP/blob/master/answer/Ch1/1_5.scm)
        - 1.1.6 条件表达式和谓词
        - 1.1.7 实例： 采用牛顿法求平方根：[Ex1.6](https://github.com/CN-DXTZ/SICP/blob/master/answer/Ch1/1_6.scm), [Ex1.7](https://github.com/CN-DXTZ/SICP/blob/master/answer/Ch1/1_7.scm), [Ex1.8](https://github.com/CN-DXTZ/SICP/blob/master/answer/Ch1/1_8.scm)
        - 1.1.8 过程作为黑箱抽象
    - 1.2 过程与它们所产生的计算 
        - 1.2.1 线性的递归和迭代：[Ex1.9](https://github.com/CN-DXTZ/SICP/blob/master/answer/Ch1/1_9.scm), [Ex1.10](https://github.com/CN-DXTZ/SICP/blob/master/answer/Ch1/1_10.scm)
        - 1.2.2 树形递归：[Ex1.11](https://github.com/CN-DXTZ/SICP/blob/master/answer/Ch1/1_11.scm), [Ex1.12](https://github.com/CN-DXTZ/SICP/blob/master/answer/Ch1/1_12.scm)
        - 1.2.3 增长的阶：[Ex1.14](https://github.com/CN-DXTZ/SICP/blob/master/answer/Ch1/1_14.scm), [Ex1.15](https://github.com/CN-DXTZ/SICP/blob/master/answer/Ch1/1_15.scm)
        - 1.2.4 求幂：[Ex1.16](https://github.com/CN-DXTZ/SICP/blob/master/answer/Ch1/1_16.scm), [Ex1.17](https://github.com/CN-DXTZ/SICP/blob/master/answer/Ch1/1_17.scm), [Ex1.18](https://github.com/CN-DXTZ/SICP/blob/master/answer/Ch1/1_18.scm), [Ex1.19](https://github.com/CN-DXTZ/SICP/blob/master/answer/Ch1/1_19.scm)
        - 1.2.5 最大公约数：[Ex1.20](https://github.com/CN-DXTZ/SICP/blob/master/answer/Ch1/1_20.scm)
        - 1.2.6 实例： 素数检测：[Ex1.21](https://github.com/CN-DXTZ/SICP/blob/master/answer/Ch1/1_21.scm), [Ex1.22](https://github.com/CN-DXTZ/SICP/blob/master/answer/Ch1/1_22.scm), [Ex1.23](https://github.com/CN-DXTZ/SICP/blob/master/answer/Ch1/1_23.scm), [Ex1.24](https://github.com/CN-DXTZ/SICP/blob/master/answer/Ch1/1_24.scm), [Ex1.25](https://github.com/CN-DXTZ/SICP/blob/master/answer/Ch1/1_25.scm), [Ex1.26](https://github.com/CN-DXTZ/SICP/blob/master/answer/Ch1/1_26.scm), [Ex1.27](https://github.com/CN-DXTZ/SICP/blob/master/answer/Ch1/1_27.scm), [Ex1.28](https://github.com/CN-DXTZ/SICP/blob/master/answer/Ch1/1_28.scm)
    - 1.3 用高阶函数做抽象
        - 1.3.1 过程作为参数：[Ex1.29](https://github.com/CN-DXTZ/SICP/blob/master/answer/Ch1/1_29.scm), [Ex1.30](https://github.com/CN-DXTZ/SICP/blob/master/answer/Ch1/1_30.scm), [Ex1.31](https://github.com/CN-DXTZ/SICP/blob/master/answer/Ch1/1_31.scm), [Ex1.32](https://github.com/CN-DXTZ/SICP/blob/master/answer/Ch1/1_32.scm), [Ex1.33](https://github.com/CN-DXTZ/SICP/blob/master/answer/Ch1/1_33.scm)
        - 1.3.2 用 lambda 构造过程：[Ex1.34](https://github.com/CN-DXTZ/SICP/blob/master/answer/Ch1/1_34.scm)
        - 1.3.3 过程作为一般性的方法：[Ex1.35](https://github.com/CN-DXTZ/SICP/blob/master/answer/Ch1/1_35.scm), [Ex1.36](https://github.com/CN-DXTZ/SICP/blob/master/answer/Ch1/1_36.scm), [Ex1.37](https://github.com/CN-DXTZ/SICP/blob/master/answer/Ch1/1_37.scm), [Ex1.38](https://github.com/CN-DXTZ/SICP/blob/master/answer/Ch1/1_38.scm), [Ex1.39](https://github.com/CN-DXTZ/SICP/blob/master/answer/Ch1/1_39.scm)
        - 1.3.4 过程作为返回值：[Ex1.40](https://github.com/CN-DXTZ/SICP/blob/master/answer/Ch1/1_40.scm), [Ex1.41](https://github.com/CN-DXTZ/SICP/blob/master/answer/Ch1/1_41.scm), [Ex1.42](https://github.com/CN-DXTZ/SICP/blob/master/answer/Ch1/1_42.scm), [Ex1.43](https://github.com/CN-DXTZ/SICP/blob/master/answer/Ch1/1_43.scm), [Ex1.44](https://github.com/CN-DXTZ/SICP/blob/master/answer/Ch1/1_44.scm), [Ex1.45](https://github.com/CN-DXTZ/SICP/blob/master/answer/Ch1/1_45.scm), [Ex1.46](https://github.com/CN-DXTZ/SICP/blob/master/answer/Ch1/1_46.scm)
- Ch2 构造数据抽象
    - 2.1 数据抽象导引
        - 2.1.1 实例： 有理数的算术运算
        - 2.1.2 抽象屏障
        - 2.1.3 数据意味着什么
        - 2.1.4 扩展练习： 区间算术
    - 2.2 层次性数据和闭包性质
        - 2.2.1 序列的表示
        - 2.2.2 层次性结构
        - 2.2.3 序列作为一种约定的界面
        - 2.2.4 实例： 一个图形语言
    - 2.3 符号数据
        - 2.3.1 引号
        - 2.3.2 实例： 符号求导
        - 2.3.3 实例： 集合的表示
        - 2.3.4 实例： Huffman 编码树
    - 2.4 抽象数据的多重表示
        - 2.4.1 复数的表示
        - 2.4.2 带标志数据
        - 2.4.3 数据导向的程序设计的可加性
    - 2.5 带有通用型操作的系统
        - 2.5.1 通用型算术运算
        - 2.5.2 不同类型数据的组合
        - 2.5.3 实例： 符号代数
- Ch3 模块化、对象和状态
    - 3.1 赋值和局部状态
        - 3.1.1 局部状态变量
        - 3.1.2 引进赋值带来的利益
        - 3.1.3 引进赋值的代价
    - 3.2 求值的环境模型
        - 3.2.1 求值规则
        - 3.2.2 简单过程的应用
        - 3.2.3 将框架看作局部状态的展台
        - 3.2.4 内部定义
    - 3.3 用变动数据做模拟
        - 3.3.1 变动的表结构
        - 3.3.2 队列的表示
        - 3.3.3 表格的表示
        - 3.3.4 数字电路的模拟器
        - 3.3.5 约束的传播
    - 3.4 并发：时间是一个本质问题
        - 3.4.1 并发系统中时间的性质
        - 3.4.2 控制并发的机制
    - 3.5 流
        - 3.5.1 流作为延时的表
        - 3.5.2 无穷流
        - 3.5.3 流计算模式的使用
        - 3.5.4 流和延时求值
        - 3.5.5 函数式程序的模块化和对象的模块化
- Ch4 元语言抽象
    - 4.1 元循环求值器
        - 4.1.1 求值器的内核
        - 4.1.2 表达式的表示
        - 4.1.3 求值器数据结构
        - 4.1.4 作为程序运行这个求值器
        - 4.1.5 将数据作为程序
        - 4.1.6 内部表示
        - 4.1.7 将语法分析和执行分离
    - 4.2 Scheme 的变形 —— 惰性求值
        - 4.2.1 正则序和应用序
        - 4.2.2 一个采用惰性求值的解释器
        - 4.2.3 将流作为惰性的表
    - 4.3 Scheme 的变形 —— 非确定性求值
        - 4.3.1 amb 和搜索
        - 4.3.2 非确定性程序的实例
        - 4.3.3 实现 amb 求值器
    - 4.4 逻辑程序设计
        - 4.4.1 演绎信息检索
        - 4.4.2 查询系统如何工作
        - 4.4.3 逻辑程序设计是数理逻辑吗
        - 4.4.4 查询系统的实现
- Ch5 寄存器机器里的计算
    - 5.1 寄存器机器的设计
        - 5.1.1 一种描述寄存器机器的语言
        - 5.1.2 机器设计的抽象
        - 5.1.3 子程序
        - 5.1.4 采用堆栈实现递归
        - 5.1.5 指令总结
    - 5.2 一个寄存器机器模拟器
        - 5.2.1 机器模型
        - 5.2.2 汇编程序
        - 5.2.3 为指令生成执行过程
        - 5.2.4 监视机器执行
    - 5.3 存储分配和废料收集
        - 5.3.1 将存储看作向量
        - 5.3.2 维持一种无穷存储的假象
    - 5.4 显式控制的求值器
        - 5.4.1 显式控制求值器的内核
        - 5.4.2 序列的求值和尾递归
        - 5.4.3 条件、赋值和定义
        - 5.4.4 求值器的运行
    - 5.5 编译
        - 5.5.1 编译器的结构
        - 5.5.2 表达式的编译
        - 5.5.3 组合式的编译
        - 5.5.4 指令序列的组合
        - 5.5.5 编译代码的实例
        - 5.5.6 词法地址
        - 5.5.7 编译代码和求值器的互连


### 注：
1. 本文暂未完成，但所有已完成代码均经过 Chez Scheme Version 9.5 测试，若有错误欢迎指正
1. 受学习进程限制，之前的代码并未应用后续学习的更简洁明了高效的语法格式
1. 只记录了编程题和文字分析题，作图题等少数题目并未记录
1. 与题目无关：
    - display部分只是为了打印输出，验证结果
    - exit部分只是为了自动退出，与题目无关