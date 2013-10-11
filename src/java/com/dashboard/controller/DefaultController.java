
package com.dashboard.controller;

import com.dashboard.service.TestService;
import com.dashboard.service.UserService;
import java.beans.IntrospectionException;
import java.beans.PropertyDescriptor;
import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DefaultController {
    
    @Autowired
    private TestService testService;
    @Autowired 
    private UserService userService;
    
    @RequestMapping("/")
    public String test(ModelMap map) {
        /*
         * A few tests
         * Try each of these in turn
         */
        //map.put("list", testService.list());
        //map.put("list", testService.range(0, 3));
        //map.put("list", testService.rangeOrderFirstAsc(0, 3));
        //map.put("list", testService.rangeOrderFirstDesc(0, 3));
        //map.put("list", testService.rangeOrderFirstAscUnarchivedOnly(0, 3));
        //map.put("list", testService.pageByPageSize(0, 1));
        //map.put("list", testService.pageByPageSizeOrderAsc(0, 4));
        //map.put("list", testService.pageByPageSizeOrderDesc(0, 4));
        //map.put("list", testService.findPageArchivedOnlyOrderFirst(0,5));
        //map.put("list",testService.findPageArchivedOnlyOrderFirst(0,1,"jaycroll"));
        map.put("list",userService.checkifExists("admin", "abcd1234"));
        return "index";
    }
    
    
    /*
     * Determine the primary key name or the
     * name of the property which has the @Id annotation (javax.persistence.Id)
     * The @Id annotation may be on the property or the method
     * 
     * Returns null if the bean does not have an @Id annotation
     */

}
