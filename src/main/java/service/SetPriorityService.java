package service;

import dao.SetPriorityDao;
import domain.User;

/**
 * Created by hadoop on 16-2-24.
 */
public class SetPriorityService {
    public static void update(User user){
        SetPriorityDao.update(user);
    }
}
