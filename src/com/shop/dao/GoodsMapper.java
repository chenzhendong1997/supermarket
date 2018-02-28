package com.shop.dao;

import java.util.List;

import com.shop.pojo.Goods;

public interface GoodsMapper {

	public List<Goods> getGoodById(Goods goods);

	public List<Goods> getAll();

	public List<Goods> getGoodByName(String goods);

	public int delete(Goods goods);

	public int update(Goods goods);

	public int insert(Goods goods);

}
