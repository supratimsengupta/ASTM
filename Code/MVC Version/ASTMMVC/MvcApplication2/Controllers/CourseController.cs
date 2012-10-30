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
    public class CourseController : Controller
    {
        private ASTMEntities db = new ASTMEntities();

        //
        // GET: /Course/

        public ActionResult Index()
        {
            return View(db.Courses.Where(c=>(!c.ModificationType.Contains("DELETED"))).ToList());
        }

        //
        // GET: /Course/Details/5

        public ActionResult Details(string id = "")
        {
            Course course = db.Courses.Single(c => (c.CourseID == id && (!c.ModificationType.Contains("DELETED"))));
            if (course == null)
            {
                return HttpNotFound();
            }
            return View(course);
        }

        //
        // GET: /Course/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Course/Create

        [HttpPost]
        public ActionResult Create(Course course)
        {
            course.ModificationType = "CREATED";
            course.ModifiedBy = "U001";
            course.ModifiedDate = DateTime.Now;
            if (ModelState.IsValid)
            {
                db.Courses.AddObject(course);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(course);
        }

        //
        // GET: /Course/Edit/5

        public ActionResult Edit(int id = 0)
        {
            Course course = db.Courses.Single(c => (c.ID == id));
            if (course == null)
            {
                return HttpNotFound();
            }
            return View(course);
        }

        //
        // POST: /Course/Edit/5

        [HttpPost]
      
        public ActionResult Edit(Course course)
        {
            course.ModificationType = "UPDATED";
            course.ModifiedBy = "U001";
            course.ModifiedDate = DateTime.Now;
            
           if (ModelState.IsValid)
            {
                db.Courses.Attach(course);
                db.ObjectStateManager.ChangeObjectState(course, EntityState.Modified);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(course);
        }

        //
        // GET: /Course/Delete/5

        public ActionResult Delete(string id = "")
        {
            Course course = db.Courses.Single(c => (c.CourseID == id && (!c.ModificationType.Contains("DELETED"))));
            if (course == null)
            {
                return HttpNotFound();
            }
            course.ModificationType = "DELETED";
            return View(course);
        }

        //
        // POST: /Course/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(string id = "")
        {
            Course course = db.Courses.Single(c => (c.CourseID == id && (!c.ModificationType.Contains("DELETED"))));
            db.Courses.DeleteObject(course);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}