package egovframework.ddit.post.service.impl;

import java.sql.Date;
import java.time.Instant;
import java.util.List;

import javax.annotation.Resource;

import org.egovframe.rte.fdl.cmmn.EgovAbstractServiceImpl;
import org.egovframe.rte.fdl.idgnr.EgovIdGnrService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import egovframework.ddit.post.PostVO;
import egovframework.ddit.post.service.EgovPostService;

@Service("postService")
public class EgovPostServiceImpl extends EgovAbstractServiceImpl implements EgovPostService {
	
	private final static Logger LOGGER = LoggerFactory.getLogger(EgovPostServiceImpl.class);
	
	@Resource(name="postMapper")
	private PostMapper postDAO;
	
	@Resource(name="egovIdGnrService")
	private EgovIdGnrService egovIdGnrService;
	
	@Override
	public String insertPost(PostVO vo) throws Exception {
		String id = egovIdGnrService.getNextStringId();
		vo.setId(id);
		postDAO.insertPost(vo);
		return id;
	}

	@Override
	public void updatePost(PostVO vo) throws Exception {
		vo.setUpdatedAt(Date.from(Instant.now()));
		postDAO.updatePost(vo);
	}

	@Override
	public void deletePost(PostVO vo) throws Exception {
		postDAO.deletePost(vo);
	}

	@Override
	public PostVO selectPost(PostVO vo) throws Exception {
		PostVO postVO = postDAO.selectPost(vo);
		if (postVO == null) {
			throw processException("info.nodata.msg");
		}
		return postVO;
	}

	@Override
	public List<?> selectPostList() throws Exception {
		return postDAO.selectPostList();
	}

	@Override
	public int selectPostListTotCnt() {
		return postDAO.selectPostListTotCnt();
	}
}
