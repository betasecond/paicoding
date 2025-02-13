-- 短链接表
CREATE TABLE `short_link` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
    `original_url` VARCHAR(2048) NOT NULL COMMENT '原始URL',
    `short_code` VARCHAR(255) NOT NULL COMMENT '短链接代码',
    `create_time` BIGINT NOT NULL COMMENT '创建时间',
    `update_time` BIGINT NOT NULL COMMENT '更新时间',
    `deleted` TINYINT DEFAULT 0 NOT NULL comment '是否删除',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='短链接表';

-- 短链接记录表
CREATE TABLE `short_link_record` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
    `short_link_id` BIGINT UNSIGNED NOT NULL COMMENT '短链接ID',
    `user_id` VARCHAR(255) COMMENT '用户ID',
    `access_time` BIGINT NOT NULL COMMENT '访问时间',
    `ip_address` VARCHAR(255) COMMENT 'IP地址',
    `login_method` VARCHAR(255) COMMENT '登录方式',
    `access_source` VARCHAR(255) COMMENT '访问来源',
    PRIMARY KEY (`id`),
    KEY `idx_short_link_id` (`short_link_id`),
    CONSTRAINT `fk_short_link_id` FOREIGN KEY (`short_link_id`) REFERENCES `short_link` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='短链接记录表';