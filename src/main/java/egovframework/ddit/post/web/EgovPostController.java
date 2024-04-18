package egovframework.ddit.post.web;

import java.util.List;

import javax.annotation.Resource;

import org.egovframe.rte.fdl.property.EgovPropertyService;
import org.egovframe.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;
import org.springmodules.validation.commons.DefaultBeanValidator;

import egovframework.ddit.post.BoardVO;
import egovframework.ddit.post.PostVO;
import egovframework.ddit.post.service.EgovPostService;

@Controller
public class EgovPostController {
	
	private final static Logger LOGGER = LoggerFactory.getLogger(EgovPostController.class);
	
	@Resource(name="postService")
	private EgovPostService postService;
	
	@Resource(name="propertiesService")
	private EgovPropertyService propertyService;
	
	@Resource(name="beanValidator")
	private DefaultBeanValidator beanValidator;
	
	@PostMapping("/addPostView.do")
	public String addPostView(
			Model model
	) {
		model.addAttribute("postVO", new PostVO());
		return "post/editPost";
	}
	
	@PostMapping("/addPost.do")
	public String addPost(
			PostVO postVO,
			Model model,
			BindingResult bindingResult,
			SessionStatus status
	) throws Exception {
		
		beanValidator.validate(postVO, bindingResult);
		
		if (bindingResult.hasErrors()) {
			model.addAttribute("postVO", postVO);
			return "post/editPost";
		}
		
		postService.insertPost(postVO);
		status.setComplete();
		return "forward:/postList.do";
	}
	
	@PostMapping("/updatePostView.do")
	public String updatePostView(
			@RequestParam("postId") String id,
			Model model
	) throws Exception {
		PostVO savedPost = postService.selectPost(new PostVO(id));
		model.addAttribute("postVO", savedPost);
		return "post/editPost";
	}
	
	@PostMapping("/updatePost.do")
	public String updatePost(
			PostVO postVO,
			Model model,
			BindingResult bindingResult,
			SessionStatus status
	) throws Exception {
		
		beanValidator.validate(postVO, bindingResult);
		
		if (bindingResult.hasErrors()) {
			model.addAttribute("postVO", postVO);
			return "post/editPost";
		}
		
		postService.updatePost(postVO);
		status.setComplete();
		return "forward:/postList.do";
	}
	
	@RequestMapping(value="/postList.do", method={RequestMethod.GET, RequestMethod.POST})
	public String getPostList(
			@ModelAttribute("boardVO") BoardVO boardVO,
			ModelMap model
	) throws Exception {
		
		boardVO.setPageUnit(propertyService.getInt("pageUnit"));
		boardVO.setPageSize(propertyService.getInt("pageSize"));
		
		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(boardVO.getPageIndex());
		paginationInfo.setRecordCountPerPage(boardVO.getPageUnit());
		paginationInfo.setPageSize(boardVO.getPageSize());
		
		boardVO.setFirstPage(paginationInfo.getFirstRecordIndex());
		boardVO.setLastPage(paginationInfo.getLastRecordIndex());
		boardVO.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());
		
		List<?> postList = postService.selectPostList(boardVO);
		model.addAttribute("postList", postList);
		
		int totCnt = postService.selectPostListTotCnt(boardVO);
		paginationInfo.setTotalRecordCount(totCnt);
		model.addAttribute("paginationInfo", paginationInfo);
		
		return "post/postList";
	}

	@PostMapping("/deletePost.do")
	public String deletePost(
			PostVO postVO,
			SessionStatus status
	) throws Exception {
		postService.deletePost(postVO);
		status.setComplete();
		return "forward:/postList.do";
	}
}
