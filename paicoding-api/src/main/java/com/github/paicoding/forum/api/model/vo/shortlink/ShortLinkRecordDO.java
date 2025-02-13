package com.github.paicoding.forum.api.model.vo.shortlink;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

/**
 * 短链接记录数据库对象
 *
 * @author betasecond
 * @date 2025-02-13
 */
@Data
@TableName("short_link_record")
public class ShortLinkRecordDO {

    private static final long serialVersionUID = 1L;

    /**
     * 短链接ID
     */
    private Long shortLinkId;

    /**
     * 用户ID
     */
    private String userId;

    /**
     * 访问时间
     */
    private Long accessTime;

    /**
     * IP地址
     */
    private String ipAddress;

    /**
     * 登录方式 （如：微信、QQ、微博等）。
     */
    private String loginMethod;

    /**
     * 访问来源（如：网页、移动端等）。
     */
    private String accessSource;
}