package com.shop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.dao.GoodsMapper;
import com.shop.pojo.Goods;

@Service("goodsServiceImpl")
public class GoodsServiceImpl {
	
	@Autowired
	private GoodsMapper goodsMapper;
	
	public List<Goods> getGoodById(Goods goods) {
		return goodsMapper.getGoodById(goods);
	}

	public List<Goods> getAll() {
		return goodsMapper.getAll();
	}

	public List<Goods> getGoodByName(String goods) {
		return goodsMapper.getGoodByName(goods);
	}

	public int delete(Goods goods) {
		return goodsMapper.delete(goods);
	}

	public int update(Goods goods) {
		return goodsMapper.update(goods);
	}

	public int insert(Goods goods) {
		return goodsMapper.insert(goods);
	}
	
	

}
