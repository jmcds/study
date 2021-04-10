mysql 删除表数据细节点
```
在删除sql语句中，写法如下：DELETE FROM ueb_logistics_rule_logs WHERE type=0 LIMIT 100; 凡是这样，delete带有where条件的，都不是真删除，只是MySQL给记录加了个删除标识，自然这样操作后表数据占有空间也不会变小了

注意：DELETE FROM ueb_logistics_rule_logs; 这条sql语句执行后，就清空了表数据，占有空间就变为0了
```

-- 清理空间占用

OPTIMIZE TABLE `base_log`;
