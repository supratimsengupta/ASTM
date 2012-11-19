using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
namespace MvcApplication2.Models
{
    public class RoleRepository:IRoleRepository,IDisposable
    {
        private RoleContext userContext = new RoleContext("ASTMConnection");
        #region IRoleRepository Members

        public void CreateNewRole(Role role)
        {
            userContext.Roles.Add(role);
            userContext.SaveChanges();
        }
        public void UpdateRole(Role role)
        {
            userContext.Entry(role).State = EntityState.Modified;
            userContext.SaveChanges();
        }

        public void DeleteRole(int id)
        {
            Role roles = userContext.Roles.Find(id);
            userContext.Roles.Remove(roles);
            userContext.SaveChanges();
 
        }

        public Role GetRoleByID(int id)
        {
            return(userContext.Roles.Find(id));
        }

        public IEnumerable<Role> GetAllRoles()
        {
            return (userContext.Roles.ToList());
        }

        public int SaveChanges()
        {
           return(userContext.SaveChanges());
        }

        #endregion

        #region IDisposable Members

        public void Dispose()
        {
            if (userContext != null)
                userContext.Dispose();
            userContext = null;
        }

        #endregion
    }
}