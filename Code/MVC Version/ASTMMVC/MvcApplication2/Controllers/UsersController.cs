using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MvcApplication2.Models;

namespace MvcApplication2.Controllers
{
    
    public class UsersController : Controller
    {
        IUsersRepository _repository;
        IRoleRepository _repositoryRole;

        public UsersController() : this(new UsersRepository()) { _repositoryRole = new RoleRepository(); }
        public UsersController(IUsersRepository repository)
        {
            _repository = repository;
            _repositoryRole = new RoleRepository();
        }

        public UsersController(IUsersRepository repository,IRoleRepository repositoryRole)
        {
            _repository = repository;
            _repositoryRole = repositoryRole;
        }


        //
        // GET: /Users/

        public ActionResult Index()
        {
            
            return View(_repository.GetAllUsers());
        }

        //
        // GET: /Users/Details/5

        public ActionResult Details(int id = 0)
        {
            Users users = _repository.GetUserByID(id);
            if (users == null)
            {
                return HttpNotFound();
            }
            
            return View(users);
        }

        //
        // GET: /Users/Create

        public ActionResult Create()
        {
            UserViewModel userViewModel = new UserViewModel();
            userViewModel.Roles = _repositoryRole.GetAllRoles().ToList();
            return View(userViewModel);
        }

        //
        // POST: /Users/Create

        [HttpPost]
        public ActionResult Create(UserViewModel users)
        {
            if (ModelState.IsValid)
            {
                if(users.SelectedRoles !=null)
                foreach (string strRoleID in users.SelectedRoles)
                    users.User.UserRoles.Add(new UserRole(users.User.UserID, Convert.ToInt32(strRoleID), users.User.ModificationType, users.User.ModifiedBy, users.User.ModifiedDate));
                CreateModificationDetails(users.User);
                _repository.CreateNewUser(users.User);
                return RedirectToAction("Index");
            }
            users.Roles = _repositoryRole.GetAllRoles().ToList();
            return View(users);
        }

        //
        // GET: /Users/Edit/5

        public ActionResult Edit(int id = 0)
        {
            UserViewModel userViewModel = new UserViewModel();
            userViewModel.User = _repository.GetUserByID(id);
            userViewModel.Roles = _repositoryRole.GetAllRoles().ToList();
            var userrole = userViewModel.User.UserRoles.Select(x=>x.RoleID).ToList();
            userViewModel.RolesSelected = (from e in userViewModel.Roles where userrole.Contains(e.RoleID) select e).ToList();
            if (userViewModel.User == null)
            {
                return HttpNotFound();
            }
            return View(userViewModel);
        }

        //
        // POST: /Users/Edit/5

        [HttpPost]
        public ActionResult Edit(UserViewModel users)
        {
            if (ModelState.IsValid)
            {
                users.User.UserRoles.Clear();
                if (users.SelectedRoles != null)
                    foreach (string strRoleID in users.SelectedRoles)
                        users.User.UserRoles.Add(new UserRole(users.User.UserID, Convert.ToInt32(strRoleID), users.User.ModificationType, users.User.ModifiedBy, users.User.ModifiedDate));
                 UpdateModificationDetails(users.User); 
                _repository.UpdateUser(users.User);
                return RedirectToAction("Index");
            }
            return View(users);
        }

        //
        // GET: /Users/Delete/5

        public ActionResult Delete(int id = 0)
        {
            Users users = _repository.GetUserByID(id);
            if (users == null)
            {
                return HttpNotFound();
            }
            return View(users);
        }

        //
        // POST: /Users/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            _repository.DeleteUser(id);
            return RedirectToAction("Index");
            
        }
        public void UpdateModificationDetails(Users user)
        {
            user.ModificationType = "Updated";
            ModificationDetails(user);
        }
        public void CreateModificationDetails(Users user)
        {
            user.ModificationType = "Created";
            ModificationDetails(user);
        }
        public void ModificationDetails(Users user)
        {
            user.ModifiedDate = DateTime.Now;
            user.ModifiedBy = Convert.ToString(Session["UserID"]);

        }
        protected override void Dispose(bool disposing)
        {
            //db.Dispose();
            base.Dispose(disposing);
        }
    }
}