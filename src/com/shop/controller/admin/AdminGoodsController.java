package com.shop.controller.admin;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.shop.pojo.Goods;
import com.shop.service.GoodsServiceImpl;

@Controller
@RequestMapping("/adminGood")
public class AdminGoodsController {

	@Autowired
	private GoodsServiceImpl goodsServiceImpl;
	
	/**
	 * 查询商品列表
	 * @return
	 */
	@RequestMapping("/list")
	public String list(HttpServletRequest request){
		List<Goods> listgoods=goodsServiceImpl.getAll();
		request.getSession().setAttribute("listgoods", listgoods);
		return "/admin/goodsList";
	}
	
	/**
	 * 搜索
	 * @return
	 */
	@RequestMapping("/fuzzy")
	public String fuzzy(HttpServletRequest request){
		String goods=request.getParameter("goods");
		List<Goods> listgoods=goodsServiceImpl.getGoodByName("%"+goods+"%");
		request.getSession().setAttribute("listgoods", listgoods);
		return "/admin/goodsList";
	}
	
	
	/**
	 * 根据id删除
	 * @return
	 * @throws UnsupportedEncodingException 
	 */
	@RequestMapping("/del")
	public String del(HttpServletRequest request) throws UnsupportedEncodingException{
		
		BigInteger id=new BigInteger(request.getParameter("id"));
		Goods goods=new Goods();
		goods.setProductid(id);
		int result=goodsServiceImpl.delete(goods);
		if(result==1){
			request.setAttribute("success", "删除成功！");
			return "redirect:/adminGood/list";
		}else{
			request.setAttribute("error", "删除失败！");
			return "redirect:/adminGood/list";
		}
	}
	
	
	@RequestMapping("/updateGoods")
	public String updateGoods(HttpServletRequest request){
		BigInteger id=new BigInteger(request.getParameter("id"));
		Goods goods = new Goods();
		goods.setProductid(id);
		List<Goods> listgoods=goodsServiceImpl.getGoodById(goods);
		request.getSession().setAttribute("adminGood", listgoods.get(0));
		return "/admin/updateGoods";
	}
//	
//	
	@RequestMapping("/insertGoods")
	public String insertGoods(HttpServletRequest request){
		return "/admin/insertGoods";
	}
//	
//	
	/**
	 * 修改商品
	 * @return
	 * @throws UnsupportedEncodingException 
	 */
	@RequestMapping("/update")
	public String update(HttpServletRequest request) throws UnsupportedEncodingException{
		
		Goods goods=new Goods();
		BigInteger id=new BigInteger(request.getParameter("id"));
		goods.setProductid(id);
		goods.setName(request.getParameter("name"));
		BigDecimal bg=new BigDecimal(request.getParameter("price"));
		goods.setShowprice(bg);
		goods.setPagetitle(request.getParameter("title"));
		goods.setPicimg(request.getParameter("img"));
		goods.setIntroduce(request.getParameter("introduce"));
		goods.setPagedescription(request.getParameter("description"));
		int result=goodsServiceImpl.update(goods);
		if(result==1){
			request.setAttribute("success", "修改信息成功！");
			return "redirect:/adminGood/list";
	    }else{
	    	request.setAttribute("error", "修改信息失败！");
	    	return "redirect:/adminGood/list";
		}
	}
	
	/**
	 * 添加商品
	 * @return
	 */
	@RequestMapping("/insert")
	public String insert(HttpServletRequest request,@RequestParam("file") CommonsMultipartFile file)throws IOException{
			Goods goods=new Goods();
			BigInteger bn=new BigInteger(request.getParameter("number"));
			goods.setProductnumber(bn);
			goods.setName(request.getParameter("name"));
			BigDecimal bg=new BigDecimal(request.getParameter("price"));
			goods.setShowprice(bg);
			goods.setIntroduce(request.getParameter("number"));
			goods.setPagetitle(request.getParameter("title"));
			goods.setPagedescription(request.getParameter("description"));
			String img ="images/goods/20170226/"+new Date().getTime()+file.getOriginalFilename();
			goods.setPicimg(img);
			@SuppressWarnings("unused")
			long  startTime=System.currentTimeMillis();
		    String path="E:/eclipse/dongshop/WebContent/uploads/images/goods/20170226/"+new Date().getTime()+file.getOriginalFilename();
		    File newFile=new File(path);
		    file.transferTo(newFile);
		    @SuppressWarnings("unused")
			long  endTime=System.currentTimeMillis();
			int result=goodsServiceImpl.insert(goods);
			if(result==1){
				request.setAttribute("success", "添加商品成功！");
			}
		return "redirect:/adminGood/list";
	}
	
}
