package egovframework.ddit.post.service;

import java.util.List;

import egovframework.ddit.post.PostVO;

public interface EgovPostService {
	String insertPost(PostVO vo) throws Exception;
	void updatePost(PostVO vo) throws Exception;
	void deletePost(PostVO vo) throws Exception;
	PostVO selectPost(PostVO vo) throws Exception;
	List<?> selectPostList() throws Exception;
	int selectPostListTotCnt();
}
