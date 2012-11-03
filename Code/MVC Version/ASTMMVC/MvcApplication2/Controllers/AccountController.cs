using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MvcApplication2.Models;
using System.Web.Security;
namespace MvcApplication2.Controllers
{
    public class AccountController : Controller
    {
        //
        // GET: /Account/

        public ActionResult Login(string returnUrl)
        {
            ViewBag.ReturnUrl = returnUrl;
            return View();
        }
        [HttpPost]
        [AllowAnonymous]
        
        public ActionResult Login(AccountModel.LoginModel model, string returnUrl)
        {
            if (ModelState.IsValid && model.UserName =="admin" && model.Password=="admin")
            {
                FormsAuthentication.SetAuthCookie(model.UserName,false);
                
                if (Url.IsLocalUrl(returnUrl))
                {
                    return Redirect(returnUrl);
                }
                else
                {
                    return RedirectToAction("Index", "Course");
                }
                
            }

            // If we got this far, something failed, redisplay form
            
            return View(model);
        }

    }
}
