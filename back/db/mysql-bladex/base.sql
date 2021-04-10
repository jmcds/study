-- bladex 建表公共字段
  `status` int(2) DEFAULT '1' COMMENT '状态',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_user` bigint(64) NOT NULL COMMENT '创建人',
  `create_dept` bigint(64) NOT NULL COMMENT '创建部门',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_user` bigint(64) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `is_deleted` int(2) NOT NULL DEFAULT '0' COMMENT '是否已删除',