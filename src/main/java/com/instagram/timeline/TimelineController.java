package com.instagram.timeline;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import ch.qos.logback.core.model.Model;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/timeline")
public class TimelineController {
	/**
	 * 타임라인 화면
	 * @return
	 */
	@RequestMapping("/timeline_view")
	public String timelineView(
			HttpSession session,
			Model model) {
		return "timeline/timeline";
	}
}
