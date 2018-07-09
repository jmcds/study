查询指定用户的power,奖金记录流水情况

基本地址 
- http://dev.cloudchain.cn/ 开发
- http://www.cloudchain.cn/ 生产

### 查询任务对应题目列表
- 请求地址 qc/api/quest/Answer.do?method=getUserAnswer
- 参数 {"cur_page":1,"rows":10,"token":"xxxxx"}
- 参数说明

名称 | 类型 | 非空 | 备注
---  | --- | ---  | ---
token | string  | √ |  token/全局令牌
cur_page | int  |  |  当前页
rows | int  |   |  行数

JavaScript 实例

```
var param={
		"cur_page":"1",
		"token":"201801260933000000006B9E8FF94DEEEC54",
		"rows":10
	};
```
  
### 返回结果

```
{
	"page": "1",
	"SUCCESS": "true",
	"RESULT_CODE": "0000",
	"RESULT_MSG": "获取成功",
	"rows": [{
		"QUEST_ID": 9,
		"GROUP_TYPE": "1",
		"SUBJECT_NAME": "第一个",
		"SUBJECT_TYPE": "0",
		"SUBJECT_ID": 1,
		"SUBJECT_NOTE": "测试下",
		"SEQ": 1
	},
	{
		"QUEST_ID": 9,
		"IMG_URL": "",
		"GROUP_TYPE": "1",
		"SUBJECT_NAME": "第二个",
		"SUBJECT_TYPE": "0",
		"SUBJECT_ID": 2,
		"SUBJECT_NOTE": "测试下",
		"SEQ": 1
	}],
	"total": 1,
	"records": 2
}
```
