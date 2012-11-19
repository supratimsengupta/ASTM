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
    public class RoleContext : DbContext
    {
        public RoleContext()
            : base()
        {
        }
        public RoleContext(string ASTMConnection)
            : base(ASTMConnection)
        {
            Database.SetInitializer<RoleContext>(null);
        }
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {

            modelBuilder.Configurations.Add(new RolesConfiguration());
            base.OnModelCreating(modelBuilder);
        }


        public DbSet<Role> Roles { get; set; }

    }
    [Table("Roles")]
    public class Role
    {
        [Key]
        public int RoleID { get; set; }
        public string RoleName { get; set; }
        public string ModificationType { get; set; }
        public string ModifiedBy { get; set; }
        public DateTime ModifiedDate { get; set; }

    }
    public class RolesConfiguration : EntityTypeConfiguration<Role>
    {

        public RolesConfiguration()
            : base()
        {

            HasKey(p => p.RoleID);
            Property(p => p.RoleID).HasColumnName("RoleID").HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity).IsRequired();
            Property(p => p.RoleName).HasColumnName("RoleName");
            Property(p => p.ModificationType).HasColumnName("ModificationType");
            Property(p => p.ModifiedBy).HasColumnName("ModifiedBy");
            Property(p => p.ModifiedDate).HasColumnName("ModifiedDate");

            ToTable("Roles");
        }

    }
}