package com.lfq.generate;

import com.lfq.generate.SortArticle;
import org.apache.ibatis.annotations.Param;

public interface SortArticleMapper {
    int insert(SortArticle record);

    int insertSelective(@Param("sort_id")String sort_id,@Param("art_id") String art_id);
}