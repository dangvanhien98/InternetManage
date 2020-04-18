package spring.mvc.service;

import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spring.mvc.connection.ConnectSQL;
import spring.mvc.model.May;
import spring.mvc.repository.MayRepository;

@Service
public class MayService {
	@Autowired
	MayRepository mayRepository;

	public ArrayList<May> findAll() {
		try (ConnectSQL connectSQL = new ConnectSQL()) {
			return mayRepository.findAll();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}

	public May findByID(String id) {
		try (ConnectSQL connectSQL = new ConnectSQL()) {
			return mayRepository.findByID(id);
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}

	public Boolean insert(May may) {
		try (ConnectSQL connectSQL = new ConnectSQL()) {
			return mayRepository.insert(may);
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return false;
	}

	public void update(May may) {
		try (ConnectSQL connectSQL = new ConnectSQL()) {
			mayRepository.update(may);
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	public ArrayList<May> getMayDK(){
		try (ConnectSQL connectSQL = new ConnectSQL()){			
			return mayRepository.getMayDK();
		} catch (SQLException e) {
			// TODO: handle exception
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		return null;
	}
	
	public void updateMay(String mm){
		try (ConnectSQL connectSQL = new ConnectSQL()){
			mayRepository.updateMay(mm);
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	public void deleteMay(String mm){
		try (ConnectSQL connectSQL = new ConnectSQL()){
			mayRepository.deleteMay(mm);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
