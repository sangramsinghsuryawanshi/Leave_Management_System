package com.project.DP.Controler;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.DP.Model.Employess;
import com.project.DP.Repo.DemoRepo;
class InsufficientLeaveException extends Exception
{
	public InsufficientLeaveException(String msg) 
	{
		super(msg);
	}
}
@Controller
public class DemoController 
{
	@Autowired
	private DemoRepo DR;
	
	@RequestMapping("/")
	public String isLand()
	{
		return "AddData.jsp";
	}
	@RequestMapping("/Le")
	public String isLE()
	{
		return "AddData.jsp";
	}
	@RequestMapping("/LB")
	public String isLB()
	{
		return "LeaveBal.jsp";
	}
	@RequestMapping("/Ad")
	public String isAD(@ModelAttribute Employess E,Model m)
	{
		int tl=E.getTotal_leaves();
		int lt=E.getLeaves_taken();
		int total=tl-lt;
		Employess Emp = new Employess();
		if(tl<lt)
		{
			try
			{
				throw new InsufficientLeaveException("InsufficientLeaveException");
			}
			catch(Exception e)
			{
				m.addAttribute("m", e);
				return "/Le";
			}
		}
		else
		{
			Emp.setName(E.getName());
			Emp.setTotal_leaves(total);
			Emp.setLeaves_taken(E.getLeaves_taken());
			DR.save(Emp);
			m.addAttribute("m", "apply Successfully.!");
			return "/Le";
		}
	}
	@RequestMapping("/Fe")
	public String isFe(Model m)
	{
		List<Employess> lm = DR.findAll();
		m.addAttribute("l", lm);
		return "FetchData.jsp";
	}
	@RequestMapping("/find")
	public String isFind(Model m,@ModelAttribute Employess e)
	{
		Employess E= DR.findByName(e.getName());
		m.addAttribute("count", E.getTotal_leaves());
		return "/LB";
	}
	@RequestMapping("/{id}")
	public String isDel(@PathVariable int id)
	{
		DR.deleteById(id);
		return "/Fe";
	}
}
