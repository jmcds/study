基本地址 
- http://dev.cloudchain.cn/ 开发
- http://www.cloudchain.cn/ 生产

### 查询任务对应题目列表
- 请求地址 qc/api/quest/Subject.do?method=getSubjects
- 参数 {"quest_id":1,"subject_id":1,"subject_type":"0","group_type":"1","create_user":"","rows":10,"token":"xxxx"}
- 参数说明

名称 | 类型 | 非空 | 备注
---  | --- | ---  | ---
quest_id | int  | √ |  任务id
token | string  | √ |  token/全局令牌
subject_id | int  |   |  题目id
subject_type | string  |   |  题目类型;0 考题; 1 调查; 2 投票
group_type | string  |   |  业务类型：1：官方，2：企业，3：政府
create_user | string  |   |  userid/用户ID
rows | int  |   |  行数

JavaScript 实例
```
var param={
		"cur_page":"1",
		"token":"201801260933000000006B9E8FF94DEEEC54",
		"quest_id":9,
		"subject_id":0,
		"subject_type":"0",
		"group_type":"1",
		"create_user":"",
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
