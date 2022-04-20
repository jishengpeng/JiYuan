package top.jiyuan.jiyuan_springboot.controller;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.fasterxml.jackson.databind.util.JSONPObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import top.jiyuan.jiyuan_springboot.domain.User;
import top.jiyuan.jiyuan_springboot.service.UserService;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;


//Spring MVC Controller

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    //根据条件查询用户
    //param kw 查询关键字
    //param pageable 分页对象
    //param model 模型对象，也是视图的上下文环境对象
    //return 字符串，代表界面文件
    @RequestMapping("/listusers")
    public String list(String kw, Model model, Pageable pageable) {
        if(kw!=null&&kw.length()>0)
            kw = "%"+kw+"%";
        else
            kw = "%%";
        Page<User> ppu = userService.findAll(kw, pageable);//默认分页从0开始，每页20条
        model.addAttribute("pages", ppu);
        return "listusers";//返回界面名称
    }

    @GetMapping({"/edituser","/edituser/{userid}"})
    public String edit(@PathVariable(name = "userid", required = false) Integer userid, Model model) {
        User u = new User();
        if (userid != null && userid > 0) {
            u = userService.findById(userid);
        }
        model.addAttribute("user", u);
        return "edituser";
    }

    @PostMapping("/saveuser")
    public String save(@Valid User user, BindingResult result) {
        try {
            if(result.hasErrors()){
                return "redirect:/edituser";
            }
            userService.save(user);
            return "redirect:/listusers";
        } catch (Exception e) {
            return "redirect:/edituser";
        }
    }

    @GetMapping("/deleteuser/{userid}")
    public String delete(@PathVariable("userid") Integer userid) {
        userService.deleteById(userid);
        return "redirect:/listusers";
    }

    @GetMapping("/deleteusers/{userids}")
    public String delete(@PathVariable("userids") String userids) {
        List<User> users = new ArrayList<>();
        JSONObject json = JSONObject.parseObject(userids);
        JSONArray arr = json.getJSONArray("userids");//前端传递时使用userids作为key
        for (int i = 0; i < arr.size(); i++) {
            users.add(userService.findById(arr.getInteger(i)));
        }
        userService.deletes(users);
        return "redirect:/listusers";
    }

    @GetMapping("/validuser/{userid}")
    public String validuser(@PathVariable("userid") Integer userid) {
        User user = userService.findById(userid);
        if(user.getValidState()==0){
            user.setValidState(1);
        }
        else{
            user.setValidState(0);
        }
        return "redirect:/listusers";
    }
}
