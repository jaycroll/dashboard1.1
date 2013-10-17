
package com.dashboard.controller;


import com.dashboard.model.User;
import com.dashboard.service.UserService;
import java.beans.IntrospectionException;
import java.beans.PropertyDescriptor;
import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hibernate.Session;
import org.hibernate.Query;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class DefaultController {
    
    @Autowired 
    private UserService userService;
    
    
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView user() {
      return new ModelAndView("index", "command", new User());
   }
    @RequestMapping(value="loginform",method = RequestMethod.POST)
    public ModelAndView login(@ModelAttribute("user") User user,BindingResult bindingResult,ModelMap map,HttpSession session){
        String username = user.getUsername();
        String password = user.getPassword();
        List<User> selectedUser = userService.checkifExists(username, password);
       if(selectedUser.isEmpty()){
           map.addAttribute("error","nothing found");
       }
       else{
           //map.put("list",userService.checkifExists(username, password));
           session.setAttribute("user", selectedUser);
           //String thisUser = selectedUser.get(0).toString();
           //map.put("thisUser",thisUser);
           //map.put("username",userService.returnUser(username));
           //map.put("roleid",userService.getRid(username, password));
           
       }
        return new ModelAndView("index", "command", new User());
        }

    /*
     * Determine the primary key name or the
     * name of the property which has the @Id annotation (javax.persistence.Id)
     * The @Id annotation may be on the property or the method
     * 
     * Returns null if the bean does not have an @Id annotation
     */

}
