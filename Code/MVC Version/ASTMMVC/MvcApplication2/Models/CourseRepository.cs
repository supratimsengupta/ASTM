using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace MvcApplication2.Models
{
    public class CourseRepository : ICourseRepository, IDisposable
    {
        private CourseContext courseContext = new CourseContext("ASTMConnection");
        #region ICourseRepository Members

        public void CreateNewCourse(Course course)
        {
          var test= courseContext.Courses.Max(z =>  z.CourseID.Substring(2));
          course.CourseID = "CR" + (Convert.ToInt32(test)+1);
            courseContext.Courses.Add(course);
            courseContext.SaveChanges();
        }

        public void UpdateCourse(Course course)
        {
            courseContext.Entry(course).State = EntityState.Modified;
            courseContext.SaveChanges();
        }

        public void DeleteCourse(int id)
        {
            Course course = courseContext.Courses.Find(id);
            courseContext.Courses.Remove(course);
            courseContext.SaveChanges();
 
        }

        public Course GetCourseByID(int id)
        {
            return (courseContext.Courses.Find(id));
        }

        public IEnumerable<Course> GetAllCourses()
        {
            return (courseContext.Courses.ToList());
        }

        public int SaveChanges()
        {
            return (courseContext.SaveChanges());
        }

        #endregion
        #region IDisposable Members

        public void Dispose()
        {
            if (courseContext != null)
                courseContext.Dispose();
            courseContext = null;
        }

        #endregion
    }
}