using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MvcApplication2.Models
{
    public interface ICourseRepository
    {
        void CreateNewCourse(Course course);
        void UpdateCourse(Course course);
        void DeleteCourse(int id);
        Course GetCourseByID(int id);
        IEnumerable<Course> GetAllCourses();
        int SaveChanges();
    }
}