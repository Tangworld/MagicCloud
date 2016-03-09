package service;

import dao.SearchPersonDao;
import domain.User;

/**
 * Created by hadoop on 16-2-25.
 */
public class SearchPersonService {
    public static User FindUserByName(String username){
        User user = SearchPersonDao.FindUserByName(username);
        return user;
    }
}
