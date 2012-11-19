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
    public class RolesController : Controller
    {
        IRoleRepository _repository;
        public RolesController() : this(new RoleRepository()) { }
        public RolesController(IRoleRepository repository)
        {
            _repository = repository;
        }

        //
        // GET: /Roles/

        public ActionResult Index()
        {
            return View(_repository.GetAllRoles());
        }

        //
        // GET: /Roles/Details/5

        public ActionResult Details(int id = 0)
        {
            Role role = _repository.GetRoleByID(id);
            if (role == null)
            {
                return HttpNotFound();
            }
            return View(role);
        }

        //
        // GET: /Roles/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Roles/Create

        [HttpPost]
        public ActionResult Create(Role role)
        {
            if (ModelState.IsValid)
            {
                CreateModificationDetails(role);
                _repository.CreateNewRole(role);
                return RedirectToAction("Index");
            }

            return View(role);
        }

        //
        // GET: /Roles/Edit/5

        public ActionResult Edit(int id = 0)
        {
            Role role = _repository.GetRoleByID(id);
            if (role == null)
            {
                return HttpNotFound();
            }
            return View(role);
        }

        //
        // POST: /Roles/Edit/5

        [HttpPost]
        public ActionResult Edit(Role role)
        {
            if (ModelState.IsValid)
            {
                UpdateModificationDetails(role);
                _repository.UpdateRole(role);
                return RedirectToAction("Index");
            }
            return View(role);
        }

        //
        // GET: /Roles/Delete/5

        public ActionResult Delete(int id = 0)
        {
            Role roles = _repository.GetRoleByID(id);
            if (roles == null)
            {
                return HttpNotFound();
            }
            return View(roles);
        }

        //
        // POST: /Roles/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            _repository.DeleteRole(id);
            return RedirectToAction("Index");
        }
        public void UpdateModificationDetails(Role role)
        {
            role.ModificationType = "Updated";
            ModificationDetails(role);
        }
        public void CreateModificationDetails(Role role)
        {
            role.ModificationType = "Created";
            ModificationDetails(role);
        }
        public void ModificationDetails(Role role)
        {
            role.ModifiedDate = DateTime.Now;
            role.ModifiedBy = Convert.ToString(Session["UserID"]);

        }
        protected override void Dispose(bool disposing)
        {
            //db.Dispose();
            base.Dispose(disposing);
        }

    }
}