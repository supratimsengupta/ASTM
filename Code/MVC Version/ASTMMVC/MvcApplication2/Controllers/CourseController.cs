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
       ICourseRepository _repository;
        public CourseController() : this(new CourseRepository()) { }
        public CourseController(ICourseRepository repository)
        {
            _repository = repository;
        }


        //
        // GET: /Course/

        public ActionResult Index()
        {
            return View(_repository.GetAllCourses());
        }

        //
        // GET: /Course/Details/5

        public ActionResult Details(int id = 0)
        {
            Course course = _repository.GetCourseByID(id);
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
            if (ModelState.IsValid)
            {
                CreateModificationDetails(course);
                _repository.CreateNewCourse(course);
                return RedirectToAction("Index");
            }

            return View(course);
        }

        //
        // GET: /Course/Edit/5

        public ActionResult Edit(int id = 0)
        {
            Course course = _repository.GetCourseByID(id);
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
            if (ModelState.IsValid)
            {
                UpdateModificationDetails(course);
                _repository.UpdateCourse(course);
                return RedirectToAction("Index");
            }
            return View(course);
        }

        //
        // GET: /Course/Delete/5

        public ActionResult Delete(int id = 0)
        {
            Course courses = _repository.GetCourseByID(id);
            if (courses == null)
            {
                return HttpNotFound();
            }
            return View(courses);
        }

        //
        // POST: /Course/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            _repository.DeleteCourse(id);
            return RedirectToAction("Index");
        }
        public void UpdateModificationDetails(Course course)
        {
            course.ModificationType = "Updated";
            ModificationDetails(course);
        }
        public void CreateModificationDetails(Course course)
        {
            course.ModificationType = "Created";
            ModificationDetails(course);
        }
        public void ModificationDetails(Course course)
        {
            course.ModifiedDate = DateTime.Now;
            course.ModifiedBy = Convert.ToString(Session["UserID"]);

        }
        protected override void Dispose(bool disposing)
        {
           // db.Dispose();
            base.Dispose(disposing);
        }
    }
}