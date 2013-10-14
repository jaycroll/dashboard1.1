
package com.dashboard.controller;


import com.dashboard.model.User;
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
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class DefaultController {
    
    @Autowired 
    private UserService userService;
    
    @RequestMapping("/")
    public String index(ModelMap map) {
        return "index";
    }
    
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView student() {
      return new ModelAndView("user", "command", new User());
   }
    @RequestMapping(value="/loginform",method = RequestMethod.POST)
    public String login(@ModelAttribute("user") User user,BindingResult bindingResult, HttpServletRequest request,ModelMap map){
        
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
