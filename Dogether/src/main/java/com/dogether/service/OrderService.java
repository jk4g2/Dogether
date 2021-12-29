package com.dogether.service;

import java.util.HashMap;
import java.util.List;
import com.dogether.domain.OrderVO;

public interface OrderService {
	List<OrderVO> getOrderList();
	List<HashMap<String,Object>> getMyOrderList(String memberID);
	void updatebuyingConfirm(OrderVO vo);
}
