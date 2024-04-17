package egovframework.ddit.post.web;

import javax.annotation.Resource;

import org.egovframe.rte.fdl.property.EgovPropertyService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.support.SessionStatus;

import egovframework.ddit.post.PostVO;
import egovframework.ddit.post.service.EgovPostService;

@Controller
public class EgovPostController {
	
	private final static Logger LOGGER = LoggerFactory.getLogger(EgovPostController.class);
	
	@Resource(name="postService")
	private EgovPostService postService;
	
	@Resource(name="propertiesService")
	private EgovPropertyService propertyService;
	
	@GetMapping("/addPost.do")
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
			SessionStatus status
	) throws Exception {
		postService.insertPost(postVO);
		status.setComplete();
		return "forword:/addPost.do";
	}
}
