## 总体情况

- 时间 2018-7-5 19:30:49
- 马队晚上简单介绍情况 
- 发币APP v1 需要上线功能

## 个人简要分析时间点
* 功能表设计大概1,2天
* 开发3,4天
* 联调 1,2天
* 预估`累计需要5-8天`


## 功能分析
> 有以下2种截然不同思路

1. 和任务相关
    * 如何关联:   通过任务关联
    * 怎么关联:   一个任务对应多少道题目
    * 前期通过固定参数值获取任务对应的题目
    * 后续映射表查询数据
      

2. <del>单独功能点,今天晨会已经否
    - <del>维护题目,答案等信息
    - <del>记录用户信息 
    

## 数据结构

### 题目任务映射表 ( SUBJECT_QUEST_MAP )
定义某个答题任务中包含了哪些题目。同一个题目也可以在不同任务间复用。

名称 |类型(长度) |非空 | 主键 | 备注
--- |--- |--- |--- |---  |--- 
MAP_ID     | INTEGER   | √  | √ | 自动增加的流水号 
QUEST_ID   | INTEGER | √  |  | 关联任务id
SUBJECT_ID | INTEGER   | √  |  | 关联题目id
SEQ   | INTEGER       |    |  | 排序号,影响题目顺序，越小越靠前

双字段索引QUEST_ID，SUBJECT_ID
### 题目信息表( SUBJECT )

名称 |类型(长度) |非空 | 主键 | 备注
--- |--- |--- |--- |--- |--- 
SUBJECT_ID    | INTEGER | √ | √ | 题目id，自动增长 
SUBJECT_NAME  | VARCHAR(64) |   |   | 题目名称
CREATE_USER   | VARCHAR(30) |   |   | 创建人
CREATE_TIME   | TIMESTAMP   |   |   | 创建时间
SUBJECT_TYPE  | CHAR(1)     |   |   | 类型; 0 考题; 1 调查; 2 投票;
GROUP_TYPE    | CHAR(1)     |   |   | 业务类型：1：官方，2：企业，3：政府
SUBJECT_NOTE  | VARCHAR(256)|   |   | 题目说明
IMG_URL       | VARCHAR(128)|   |   | 图片
SCORE   | INTEGER | | | 分数，答对得多少分
NOTE        | VARCHAR(64) |   |   | 备注

### 题目选项表 ( SUBJECT_OPTION  )

名称 |类型(长度) |非空 | 主键 | 备注
--- |--- |--- |--- |--- |--- 
OPTION_ID    | INTEGER  | √ | √ | 选项id , 自动增长 
SUBJECT_ID   | INTEGER  | √  |   | 对应题目id
OPTION_TITLE | VARCHAR(512) |   |   | 选项标题
IS_ANSWER    | BOOLEAN  |   |   | 是否答案，考题用于指出单选或多选的答案 
OPTION_IMG   | VARCHAR(128)  |   |   | 选项图片 
NOTE         | VARCHAR(64) |   |   | 备注 

索引 SUBJECT_ID
### 答题记录结果表 ( SUBJECT_ANSWER  )
这个表可以视为“任务回答”（QUEST_ANSWER）表的扩展表，大部分字段是从任务回答表中冗余过来的，除了总分数、正确题目个数等。

名称 |类型(长度) |非空 | 主键 | 备注
--- |--- |--- |--- |--- |--- 
ANSWER_ID    | INTEGER | √ | √ | 任务回答的id，紧耦合到任务回答表 
CREATE_TIME  | TIMESTAMP   |   |   | 提交时间，与任务回答表中有相同字段，冗余
USER_ID      | VARCHAR(64) |   |   | 提交者
RIGHT_NUMBER | INTEGER     |   |   | 正确题目个数
SCORE   | INTEGER | | | 总分数
STATUS       | CHAR(1)     |   |   | 状态; 0:部分提交,1:全部提交
NOTE         | VARCHAR(64) |   |   | 备注 
 
### 回答记录行表 ( SUBJECT_ANSWER_OPTION  )

名称 |类型(长度) |非空 | 主键 | 备注
--- |--- |--- |--- |--- |--- 
ANSWER_OPTION_ID | INTEGER  | √ | √ | 答案行，自动增长 
ANSWER_ID      | INTEGER  |  √ |   | 任务回答id 
SUBJECT_ID     | INTEGER  | √  |   | 题目id
OPTION_ID    | INTEGER  | √ |  | 选项id，多选题时同一个SUBJECT有多个OPTION
NOTE           | VARCHAR(512)  |   |   | 备注，可以保存主观题的答案
 
