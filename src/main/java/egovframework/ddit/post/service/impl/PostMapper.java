package egovframework.ddit.post.service.impl;

import java.util.List;

import org.egovframe.rte.psl.dataaccess.mapper.Mapper;

import egovframework.ddit.post.BoardVO;
import egovframework.ddit.post.PostVO;

@Mapper("postMapper")
public interface PostMapper {
	void insertPost(PostVO vo) throws Exception;
	void updatePost(PostVO vo) throws Exception;
	void deletePost(PostVO vo) throws Exception;
	PostVO selectPost(PostVO vo) throws Exception;
	List<?> selectPostList(BoardVO vo) throws Exception;
	int selectPostListTotCnt(BoardVO vo);
}
