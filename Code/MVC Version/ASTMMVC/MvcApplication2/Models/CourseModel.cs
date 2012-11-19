using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.Data.Entity;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MvcApplication2.Models
{
    public class CourseContext : DbContext
    {
        public CourseContext()
            : base()
        {
        }
        public CourseContext(string ASTMConnection)
            : base(ASTMConnection)
        {
            Database.SetInitializer<CourseContext>(null);
        }
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {

            modelBuilder.Configurations.Add(new CourseConfiguration());
            base.OnModelCreating(modelBuilder);
        }


        public DbSet<Course> Courses { get; set; }

    }

    [Table("Course")]
    public class Course
    {
        [Key]
        public int ID { get; set; }
        public string CourseID { get; set; }
        public string CourseName { get; set; }
        public string Description { get; set; }
        public int Duration { get; set; }
        public Decimal Fees { get; set; }
        public string ModificationType { get; set; }
        public string ModifiedBy { get; set; }
        public DateTime ModifiedDate { get; set; }

    }


    public class CourseConfiguration : EntityTypeConfiguration<Course>
    {

        public CourseConfiguration()
            : base()
        {

            HasKey(p => p.ID);
            Property(p => p.ID).HasColumnName("ID").HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity).IsRequired();
            Property(p => p.CourseID).HasColumnName("CourseID");
            Property(p => p.CourseName).HasColumnName("CourseName");
            Property(p => p.Description).HasColumnName("Description");
            Property(p => p.Duration).HasColumnName("Duration");
            Property(p => p.Fees).HasColumnName("Fees");
            Property(p => p.ModificationType).HasColumnName("ModificationType");
            Property(p => p.ModifiedBy).HasColumnName("ModifiedBy");
            Property(p => p.ModifiedDate).HasColumnName("ModifiedDate");

            ToTable("Course");
        }

    }
}