
package com.outbottle.genericdao.model.dao;

import com.outbottle.genericdao.model.entities.Test;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository; 

@Repository("testDao")
public class TestDao extends Dao<Test> {

    public TestDao() {
        super(Test.class);
    }
    
    
    public List<Test> rangeOrderFirstUnarchivedOnly(int begin, int end, boolean asc) {
        Criteria c = getCurrentSession().createCriteria(Test.class).add(Restrictions.eq("archived","n"));
        return findRangeOrderFirst(c, begin, end, "name", asc);
    }
    
    public List<Test> findPageArchivedOnlyOrderFirst(int pageNumber, int pageSize,String username) {
        Criteria c = getCurrentSession().createCriteria(Test.class).add(Restrictions.eq("username",username));
        return findPageOrderFirst(c, pageNumber, pageSize, "username", true);
    }

}
