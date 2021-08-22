package kr.pcolor.idol;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.pcolor.domain.ItemVO;
import kr.pcolor.domain.resultVO;
import kr.pcolor.mapper.PcolorMapper;

@Controller
public class pcolorController {
	@Inject
	private PcolorMapper pcolorMapper;
	
	@RequestMapping("/pcolor.do")
	public void pcolor() {
	}
	
	/*
	 * @RequestMapping("/pcolorResult1.do") public void pcolorResult1(int pc_idx,
	 * Model model) { ItemVO vo = pcolorMapper.pcolorResult1(pc_idx);
	 * model.addAttribute("vo", vo); }
	 */
	@RequestMapping("/pcolorResult1_1.do")
	public void pcolorResult1_1(Model model) {
		List<ItemVO> list = pcolorMapper.pcolorResult1();
		model.addAttribute("list", list);
	}
	
	@RequestMapping("/pcolorResult2_1.do")
	public void pcolorResult2_1(Model model) {
		List<ItemVO> list = pcolorMapper.pcolorResult2();
		model.addAttribute("list", list);
	}
	@RequestMapping("/pcolorResult4_1.do")
	public void pcolorResult4_1(Model model) {
		List<ItemVO> list = pcolorMapper.pcolorResult4();
		model.addAttribute("list", list);
	}
	
	@RequestMapping("/pcolorResult1.do")
	public void pcolorResult1(Model model) {
		List<ItemVO> list = pcolorMapper.pcolorResult1();
		model.addAttribute("list", list);
	}
	
	@RequestMapping("/pcolorResult2.do")
	public void pcolorResult2(Model model) {
		List<ItemVO> list = pcolorMapper.pcolorResult2();
		model.addAttribute("list", list);
	}
	@RequestMapping("/pcolorResult3.do")
	public void pcolorResult3(Model model) {
		List<ItemVO> list = pcolorMapper.pcolorResult3();
		model.addAttribute("list", list);
	}
	@RequestMapping("/pcolorResult3_1.do")
	public void pcolorResult3_1(Model model) {
		List<ItemVO> list = pcolorMapper.pcolorResult3();
		model.addAttribute("list", list);
	}
	@RequestMapping("/pcolorResult4.do")
	public void pcolorResult4(Model model) {
		List<ItemVO> list = pcolorMapper.pcolorResult4();
		model.addAttribute("list", list);
	}
	
	@RequestMapping("/pcolorCheck.do")
	public void pcolorCheck() {
	}
	
	@RequestMapping("/pcolorCheck2.do")
	public void pcolorCheck2() {
	}
	
	@RequestMapping("/home.do")
	public void home() {
	}
	@RequestMapping("/fashionResult1.do")
	public void fashionResult1() {
	}
	@RequestMapping("/fashionResult2.do")
	public void fashionResult2() {
	}
	@RequestMapping("/fashionResult3.do")
	public void fashionResult3() {
	}
	@RequestMapping("/fashionResult4.do")
	public void fashionResult4() {
	}
	@RequestMapping("/fashionCheck.do")
	public void fashionCheck() {
	}

}
