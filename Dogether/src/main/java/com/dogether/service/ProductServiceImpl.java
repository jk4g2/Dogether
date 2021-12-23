package com.dogether.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dogether.dao.ProductDAO;
import com.dogether.domain.MemberVO;
import com.dogether.domain.OrderVO;
import com.dogether.domain.ProductsVO;
import com.dogether.domain.Shopping_cartVO;

@Service("productsService")
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDAO productsDAO;
	
	@Override
	public List<ProductsVO> getProductsList() {
		return productsDAO.getProductsList();
	}

	@Override
	public ProductsVO detailProduct(ProductsVO vo) {
		return productsDAO.detailProduct(vo);
	}

	@Override
	public int insertIntoCart(Shopping_cartVO vo) {
		return productsDAO.insertIntoCart(vo);
	}

	@Override
	public List<HashMap<String, String>> getShoppingCartList(MemberVO vo) {
		return productsDAO.getShoppingCartList(vo);
	}

	@Override
	public int deleteFromCart(Shopping_cartVO vo) {
		return productsDAO.deleteFromCart(vo);
	}

	@Override
	public Shopping_cartVO productCheck(Shopping_cartVO vo) {
		return productsDAO.productCheck(vo);
	}

	@Override
	public int updateFromCart(String productID[], int productQuantity[],String memberID) {
		return productsDAO.updateFromCart(productID,productQuantity,memberID);
	}

	@Override
	public MemberVO showUserInfo(MemberVO vo) {
		return productsDAO.showUserInfo(vo);
	}

	@Override
	public int insertOrderList(List<Shopping_cartVO> vo,String OrderID) {
		return productsDAO.insertOrderList(vo,OrderID);
	}

	@Override
	public List<Shopping_cartVO> afterGetShoppingCartList(String memberid) {
		return productsDAO.afterGetShoppingCartList(memberid);
	}

	@Override
	public List<ProductsVO> bestProductsList() {
		return productsDAO.bestProductsList();
	}



}
