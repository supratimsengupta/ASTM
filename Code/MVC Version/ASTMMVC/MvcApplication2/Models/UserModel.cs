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
    public class UserViewModel
    {
       
        public Users User { get; set; }
        public IList<Role> Roles { get; set; }
        public IList<Role> RolesSelected { get; set; }
        public string[] SelectedRoles { get; set; }
       
    }
    public class UserContext : DbContext
    {
        public UserContext()
            : base()
        {
        }
        public UserContext(string ASTMConnection) : base(ASTMConnection)
        {
            Database.SetInitializer<UserContext>(null);
        }
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Configurations.Add(new UserConfiguration());
            modelBuilder.Configurations.Add(new UserRolesConfiguration());
            base.OnModelCreating(modelBuilder);
        }
    
        public DbSet<Users> UserProfiles { get; set; }
        public DbSet<UserRole> UserRoles { get; set; }
    }
    

    [Table("Users")]
    public class Users
    {
        [Key]
       [DatabaseGeneratedAttribute(DatabaseGeneratedOption.Identity)]
        public int UserID { get; set; }
        [Required]
        public string UserName { get; set; }
        [Required]
        [DataType(DataType.Password)]
        public string Password { get; set; }
        public string ModificationType { get; set; }
        public string ModifiedBy { get; set; }
        public DateTime ModifiedDate { get; set; }
        public IList<UserRole> UserRoles { get; set; }
        public Users()
        {
            UserRoles = new List<UserRole>();
        }

    }
    
   

    [Table("UserRole")]
    public class UserRole
    {
        [Key]
        [DatabaseGeneratedAttribute(DatabaseGeneratedOption.Identity)]
        public int UserRoleID { get; set; }
        
        public int UserID { get; set; }
        public int RoleID { get; set; }
        public UserRole()
        {
        }
        public UserRole(int userID,int roleID,string modificationType,string modifiedBy,DateTime modifiedDate)
        {
           // UserRoleID = 0;
            UserID = userID;
            RoleID = roleID;
           
        }

    }



    public class UserConfiguration : EntityTypeConfiguration<Users>
    {

        public UserConfiguration()
            : base()
        {

            HasKey(p => p.UserID);
            Property(p => p.UserID).HasColumnName("UserID").HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity).IsRequired();
            Property(p => p.UserName).HasColumnName("UserName");
            Property(p => p.Password).HasColumnName("Password");
            Property(p => p.ModificationType).HasColumnName("ModificationType");
            Property(p => p.ModifiedBy).HasColumnName("ModifiedBy");
            Property(p => p.ModifiedDate).HasColumnName("ModifiedDate");
            
            ToTable("Users");
        }

    }
   
    public class UserRolesConfiguration : EntityTypeConfiguration<UserRole>
    {

        public UserRolesConfiguration()
            : base()
        {

            HasKey(p => p.UserRoleID);
            Property(p => p.UserRoleID).HasColumnName("UserRoleID").HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity).IsRequired();
            Property(p => p.UserID).HasColumnName("UserID");
            Property(p => p.RoleID).HasColumnName("RoleID");
            
            ToTable("UserRole");
        }

    }
}




        

    
    