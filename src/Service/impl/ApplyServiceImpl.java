package Service.impl;

import Bean.Applience;
import Bean.User;
import Service.ApplyService;
import dao.ApplyDao;
import dao.UserDao;
import dao.UserDaoImpl.ApplyDaoImpl;

import java.io.IOException;

public class ApplyServiceImpl implements ApplyService {
    ApplyDao applyDao = new ApplyDaoImpl();

    @Override
    public void applyComputerByBean(Applience applience) throws IOException, InterruptedException {
        applyDao.applyComputerByBean(applience);
    }
}
