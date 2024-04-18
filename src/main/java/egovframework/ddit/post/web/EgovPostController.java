package egovframework.ddit.post.web;

import java.util.List;

import javax.annotation.Resource;

import org.egovframe.rte.fdl.property.EgovPropertyService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;
import org.springmodules.validation.commons.DefaultBeanValidator;

import egovframework.ddit.post.PostVO;
import egovframework.ddit.post.service.EgovPostService;
import egovframework.example.sample.service.SampleDefaultVO;
import egovframework.example.sample.service.SampleVO;

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
	
	@RequestMapping("/postList.do")
	public String getPostList(
			ModelMap model
	) throws Exception {
		
		List<?> postList = postService.selectPostList();
		model.addAttribute("postList", postList);
		
		int totCnt = postService.selectPostListTotCnt();
		LOGGER.info("post 개수 : " + totCnt);
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
