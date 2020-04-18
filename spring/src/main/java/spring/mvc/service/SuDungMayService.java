package spring.mvc.service;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spring.mvc.connection.ConnectSQL;
import spring.mvc.model.SuDungMay;
import spring.mvc.repository.SuDungMayRepository;

@Service
public class SuDungMayService {
	@Autowired
	SuDungMayRepository suDungMayRepository;
	public Boolean insert(SuDungMay sd){
		try (ConnectSQL connectSQL = new ConnectSQL()){
			return suDungMayRepository.insert(sd);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return false;
	}
}
