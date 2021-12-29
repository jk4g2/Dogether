package com.dogether.dao;

import java.util.HashMap;
import java.util.List;
import com.dogether.domain.OrderVO;

public interface OrderDAO {
	public List<OrderVO> getOrderList();
	public List<HashMap<String,Object>> getMyOrderList(String memberID);
	public void updatebuyingConfirm(OrderVO vo);
}
