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
            if (ModelState.IsValid)
            {

                using (UsersRepository usersRepository = new UsersRepository())
                {
                    Users user = usersRepository.GetUserByLoginModel(model);
                    if ( user== null)
                        ModelState.AddModelError("LogOnError", "The user name or password provided is incorrect.");
                    else
                    {
                        FormsAuthentication.SetAuthCookie(model.UserName, model.RememberMe);
                        Session["UserID"] = user.UserID;
                        Session["MyMenu"] = null;
                        if (Url.IsLocalUrl(returnUrl) && returnUrl.Length > 1 && returnUrl.StartsWith("/")
                           && !returnUrl.StartsWith("//") && !returnUrl.StartsWith("/\\"))
                        {
                            return Redirect(returnUrl);
                        }
                        else
                        {
                            //Redirect to default page
                            return RedirectToAction("RedirectToDefault");
                        }
                    }
                }
                
            }

            // If we got this far, something failed, redisplay form
            
            return View(model);
        }
        public ActionResult RedirectToDefault()
        {

            String[] roles = Roles.GetRolesForUser();
            if (roles.Contains("Administrator"))
            {
                return RedirectToAction("Index", "Admin");
            }
            else if (roles.Contains("Dealer"))
            {
                return RedirectToAction("Index", "Dealer");
            }
            else if (roles.Contains("PublicUser"))
            {
                return RedirectToAction("Index", "PublicUser");
            }
            else
            {
                return RedirectToAction("Index","Users");
            }
        }

    }
}
