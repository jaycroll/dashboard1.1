
package com.dashboard.controller;

//Models
import com.dashboard.model.User;
import com.dashboard.model.RolesPrivileges;
//Services
import com.dashboard.service.RolesPrivilegesService;
import com.dashboard.service.UserService;
//JAVA
import java.beans.IntrospectionException;
import java.beans.PropertyDescriptor;
import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
//Spring
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
//javax
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
//hibernate
import org.hibernate.Session;
import org.hibernate.Query;

@Controller
public class DefaultController {
    
    @Autowired 
    private UserService userService;
    @Autowired
    private RolesPrivilegesService rolesPrivilegesService;
    
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView user() {
      return new ModelAndView("index", "command", new User());
   }
    @RequestMapping(value="login",method = RequestMethod.POST)
    public ModelAndView login(@ModelAttribute("user") User user,@ModelAttribute("rolesprivileges") RolesPrivileges rolesprivileges,BindingResult bindingResult,ModelMap map,HttpSession session){
        String username = user.getUsername();
        String password = user.getPassword();
        //String rolePrivilege = "";
        List<User> selectedUser = userService.checkifExists(username, password);
       if(selectedUser.isEmpty()){
           map.put("error","Invalid Username or Password");
           return new ModelAndView("index", "command", new User());
       }
       else{

           String RolesAllowed = "Allowed Actions";
           String PrivilegeAllowed = "Privilege Allowed";
           int roleId=0;
           for (User item : selectedUser) {
  
                
                map.put("roleid",item.getRoleid());

            }

         List<RolesPrivileges> userRoles = rolesPrivilegesService.getPrivilege(1);       
               if(!userRoles.isEmpty()){
                   map.put("roles",userRoles);
               }
               else{
                   map.put("roles","empty roles!");
               }
                  
               
       return new ModelAndView("login", "command", new User());
           
       }
        
     }

    /*
     * Determine the primary key name or the
     * name of the property which has the @Id annotation (javax.persistence.Id)
     * The @Id annotation may be on the property or the method
     * 
     * Returns null if the bean does not have an @Id annotation
     */

}
